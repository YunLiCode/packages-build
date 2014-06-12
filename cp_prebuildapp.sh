#!/bin/bash
#此脚本用来 DIY ROM 用
#制作者：陈云
#写于2014年3月 窝窝
#写于2014年4月 深圳语信公司
#写于2014年6月 深圳语信公司
PATH=/bin:/sbin:/usr/bin:usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin:~/yun
export PATH

device=$1
echo "copy titaniumbackup...."
cp packages/TitaniumBackup/TitaniumBackup.apk out/$device/system/app/TitaniumBackup.apk
echo "copy input...."
cp packages/input/baiduinput.apk out/$device/system/app/baiduinput.apk
echo "copy RE...."
cp packages/RE/out/RE.apk out/$device/system/app/RE.apk







echo "copy private resource"
echo "copy phone...."
cp vendor/$device/system/app/Phone.apk out/$device/system/app/Phone.apk

