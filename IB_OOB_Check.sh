#!bin/bash
OncCli_Command_item=$1
OneCLi_Command_Setting=$2
USERID_PASSWORD=$3
BMC_IB_IP=$4
OS_USER=$5
OS_PWD=$6


wget ftp://ESQ900:1234@10.32.37.52/BMU/lnvgy_utl_lxce_onecli01d-2.5.0_rhel_x86-64.tgz
cd /root
tar zxvf lnvgy_utl_lxce_onecli01d-2.5.0_rhel_x86-64.tgz
echo "Onecli Download and extract Successful"

if [ "$4" == "" ] ; then
	echo "IB mode"
	string=""
else 
	BMC_IP=$4
	
	if [ "$3" != "" ]; then
		USERID_PASSWORD=$3
	else
		BMC_USER=admin # default
	fi
	
	
	echo "OOB mode  BMC IP: $BMC_IP"
fi






