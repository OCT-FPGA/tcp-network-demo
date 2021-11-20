# Check if XILINXD_LICENSE_FILE environment variable is set
if ! [ -v "XILINXD_LICENSE_FILE" ]; then
	echo "Please set XILINXD_LICENSE_FILE environment variable to point to the license server."
	exit 1
fi
if [ "$#" -ne 3 ]; then
	echo "Syntax: run_build.sh <build_sender=(1 or 0)> <build_receiver=1 or 0> <sender interface=0 or 1> <receiver interface=0 or 1>"
    	exit 1
fi
if [ "$3" -ne "0" ] || ["$3" -ne "1" ]
	echo "Syntax: run_build.sh <build_sender=(1 or 0)> <build_receiver=1 or 0> <sender interface=0 or 1> <receiver interface=0 or 1>"
	exit 1
fi
if [ "$1" == "1" ]; then
	echo "Building the sender"
	make all USER_KRNL=hls_send_krnl INTERFACE=$3
elif [ "$1" == "0" ]; then
	echo "Not building the sender"
else
	echo "Syntax: run_build.sh <build_sender=(1 or 0)> <build_receiver=1 or 0> <sender interface=0 or 1> <receiver interface=0 or 1>"
	exit 1
fi
if [ "$2" == "1" ]; then
	echo "Buildng the receiver"
	make all USER_KRNL=hls_recv_krnl INTERFACE=$4
elif [ "$2" == "0" ]; then
        echo "Not building the receiver"
else
        echo "Syntax: run_build.sh <build_sender=(1 or 0)> <build_receiver=1 or 0> <sender interface=0 or 1> <receiver interface=0 or 1>"
	exit 1
fi

