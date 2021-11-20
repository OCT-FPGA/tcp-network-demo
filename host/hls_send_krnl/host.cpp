/**********
Copyright (c) 2019, Xilinx, Inc.
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors
may be used to endorse or promote products derived from this software
without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**********/
#include "xcl2.hpp"
#include <vector>
#include <chrono>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <fstream>
#include <iostream>

#define DATA_SIZE 62500000
#define BYTES_PER_PACKET 1408
#define MY_IP_ADDR 0xC0A80101
#define THEIR_IP_ADDR 0xC0A80102
#define BOARD_NUMBER 0
#define ARP 0xC0A80101

char *readFile(const char *fileName) {
    FILE *file = fopen(fileName, "r");
    char *code;
    size_t n = 0;
    int c;

    if (file == NULL) return NULL; //could not open file
    fseek(file, 0, SEEK_END);
    long f_size = ftell(file);
    fseek(file, 0, SEEK_SET);
    code = (char*)malloc(f_size);

    while ((c = fgetc(file)) != EOF) {
        code[n++] = (char)c;
    }

    code[n] = '\0';        

    return code;
}

int main(int argc, char **argv) {
    if (argc < 2) {
	    std::cout << "Usage: " << argv[0] << " <XCLBIN File> [<#Tx Pkt>] [<encrypt>] [<My IP>] [<Their IP>]" << std::endl;
	    return EXIT_FAILURE;
    }

    std::string binaryFile = argv[1];

    cl_int err;
    cl::CommandQueue q;
    cl::Context context;
    cl::Kernel user_kernel;
    cl::Kernel network_kernel;

    auto size = DATA_SIZE;
    
    //Allocate Memory in Host Memory
    auto vector_size_bytes = sizeof(int) * size;
    std::vector<int, aligned_allocator<int>> network_ptr0(size);
    std::vector<int, aligned_allocator<int>> network_ptr1(size);

    //OPENCL HOST CODE AREA START
    //Create Program and Kernel
    auto devices = xcl::get_xil_devices();

    // read_binary_file() is a utility API which will load the binaryFile
    // and will return the pointer to file buffer.
    auto fileBuf = xcl::read_binary_file(binaryFile);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};
    int valid_device = 0;
    for (unsigned int i = 0; i < devices.size(); i++) {
        auto device = devices[i];
        // Creating Context and Command Queue for selected Device
        OCL_CHECK(err, context = cl::Context({device}, NULL, NULL, NULL, &err));
        OCL_CHECK(err,
                  q = cl::CommandQueue(
                      context, {device}, CL_QUEUE_PROFILING_ENABLE, &err));

        std::cout << "Trying to program device[" << i
                  << "]: " << device.getInfo<CL_DEVICE_NAME>() << std::endl;
                  cl::Program program(context, {device}, bins, NULL, &err);
        if (err != CL_SUCCESS) {
            std::cout << "Failed to program device[" << i
                      << "] with xclbin file!\n";
        } else {
            std::cout << "Device[" << i << "]: program successful!\n";
            OCL_CHECK(err,
                      network_kernel = cl::Kernel(program, "network_krnl", &err));
            OCL_CHECK(err,
                      user_kernel = cl::Kernel(program, "hls_send_krnl", &err));
            valid_device++;
            break; // we break because we found a valid device
        }
    }
    if (valid_device == 0) {
        std::cout << "Failed to program any device found, exit!\n";
        exit(EXIT_FAILURE);
    }

    uint32_t numPacketWord = 22;
    uint32_t connection = 1;
    uint32_t myIpAddr;
    uint32_t arp;
    uint32_t theirIpAddr;
    uint32_t basePort = 5001; 
    uint32_t delayedCycles = 0;
    uint32_t txPkt = 3200;
    bool enc = false;
    unsigned int packet_size_total;
    
    if(argc >= 3){
        txPkt = strtol(argv[2], NULL, 10);
	packet_size_total = BYTES_PER_PACKET*txPkt; 
    }
    if (argc >=4){
	    if (strcmp(argv[3],"encrypt")==0)
	    {
		    printf("encryption enabled...\n");
		    enc = 1;
	    }
	    else if (strcmp(argv[3],"no-encrypt")==0)
	    {
		    printf("encryption not enabled...\n");
		    enc = 0;
	    }
    }	
    
    if (argc >= 5)
    {
        std::string s = argv[4];
        std::string delimiter = ".";
        int ip [4];
        size_t pos = 0;
        std::string token;
        int i = 0;
        while ((pos = s.find(delimiter)) != std::string::npos) {
            token = s.substr(0, pos);
            ip [i] = stoi(token);
            s.erase(0, pos + delimiter.length());
            i++;
        }
        ip[i] = stoi(s);
        myIpAddr = ip[3] | (ip[2] << 8) | (ip[1] << 16) | (ip[0] << 24);
    }
    else
    {
        myIpAddr = (unsigned int)MY_IP_ADDR;
    }

    arp = myIpAddr;

    if (argc >= 6)
    {
        std::string s = argv[5];
        std::string delimiter = ".";
        int ip [4];
        size_t pos = 0;
        std::string token;
        int i = 0;
        while ((pos = s.find(delimiter)) != std::string::npos) {
            token = s.substr(0, pos);
            ip [i] = stoi(token);
            s.erase(0, pos + delimiter.length());
            i++;
        }
        ip[i] = stoi(s); 
        theirIpAddr = ip[3] | (ip[2] << 8) | (ip[1] << 16) | (ip[0] << 24);
    }	
    else
    {
    	theirIpAddr = (unsigned int)THEIR_IP_ADDR;
    }

    // Set network kernel arguments
    OCL_CHECK(err, err = network_kernel.setArg(0, myIpAddr)); // Default IP :address
    OCL_CHECK(err, err = network_kernel.setArg(1, BOARD_NUMBER)); // Board number
    OCL_CHECK(err, err = network_kernel.setArg(2, arp)); // ARP lookup

    OCL_CHECK(err,
              cl::Buffer buffer_r1(context,
                                   CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                                   vector_size_bytes,
                                   network_ptr0.data(),
                                   &err));
    OCL_CHECK(err,
            cl::Buffer buffer_r2(context,
                                CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                                vector_size_bytes,
                                network_ptr1.data(),
                                &err));

    OCL_CHECK(err, err = network_kernel.setArg(3, buffer_r1));
    OCL_CHECK(err, err = network_kernel.setArg(4, buffer_r2));

    printf("enqueue network kernel...\n");
    OCL_CHECK(err, err = q.enqueueTask(network_kernel));
    OCL_CHECK(err, err = q.finish());

    printf("txPkt:%d, IP:%x, port:%d\n", txPkt, theirIpAddr, basePort);

    double durationUs = 0.0;
    auto packet_size_bytes = sizeof(uint8_t) * packet_size_total;
    std::vector<uint8_t, aligned_allocator<uint8_t>> host_ptr0(packet_size_total);
    OCL_CHECK(err,
              cl::Buffer buffer_packetdata(context,
                                   CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
                                   packet_size_bytes,
                                   host_ptr0.data(),
                                   &err));

    //Set user Kernel Arguments
    OCL_CHECK(err, err = user_kernel.setArg(16, connection));
    OCL_CHECK(err, err = user_kernel.setArg(17, numPacketWord));
    OCL_CHECK(err, err = user_kernel.setArg(18, basePort));
    OCL_CHECK(err, err = user_kernel.setArg(19, txPkt));
    OCL_CHECK(err, err = user_kernel.setArg(20, theirIpAddr));
    OCL_CHECK(err, err = user_kernel.setArg(21, buffer_packetdata));
    OCL_CHECK(err, err = user_kernel.setArg(22, packet_size_total));
    OCL_CHECK(err, err = user_kernel.setArg(23, enc));

    uint8_t *ptr_packetdata = (uint8_t *)q.enqueueMapBuffer(buffer_packetdata, CL_TRUE, CL_MAP_WRITE, 0, packet_size_bytes);
    char *code = readFile("./alice29.txt");
    for (unsigned int i = 0; i < packet_size_total; i++)
    {
	ptr_packetdata[i] = code[i];
    }
    
    q.enqueueMigrateMemObjects({buffer_packetdata},0);
    //Launch the Kernel
    auto start = std::chrono::high_resolution_clock::now();
    printf("enqueue user kernel...\n");
    OCL_CHECK(err, err = q.enqueueTask(user_kernel));
    OCL_CHECK(err, err = q.finish());  
    OCL_CHECK(err, err = q.enqueueUnmapMemObject(buffer_packetdata, ptr_packetdata));
    OCL_CHECK(err, err = q.finish());
    
    printf("Message at the transmitter:\n");
    
    for (unsigned int i = 0; i < packet_size_total; i++)
    {
	printf("%c",ptr_packetdata[i]);
    } 
    printf("\n"); 
    auto end = std::chrono::high_resolution_clock::now();
    durationUs = (std::chrono::duration_cast<std::chrono::nanoseconds>(end-start).count() / 1000.0);
    printf("durationUs:%f\n",durationUs);
    //OPENCL HOST CODE AREA END    

    std::cout << "EXIT recorded" << std::endl;
}
