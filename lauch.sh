#!/bin/bash
#此脚本用来 DIY ROM 用
#制作者：陈云
#写于2014年3月 窝窝
#写于2014年4月 深圳语信公司
#写于2014年6月 深圳语信公司
PATH=/bin:/sbin:/usr/bin:usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin:~/yun
export PATH
#####变量区#####
device=$1
##########

source ./devices/$device/build.config
#test 
	echo $cpu
	echo $device_name
	echo $android_version
	echo $resolution
	echo $cpu_model