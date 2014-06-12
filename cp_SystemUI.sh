#!/bin/bash
#此脚本用来 DIY ROM 用
#制作者：陈云
#写于2014年3月 窝窝
#写于2014年4月 深圳语信公司
#写于2014年6月 深圳语信公司
PATH=/bin:/sbin:/usr/bin:usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin:~/yun
export PATH

device=$1

echo "copy public resource to $device/SystemUI"
cp -rf packages/SystemUI/res vendor/$device/system/app/SystemUI
echo "making SystemUI for $device"
cd vendor/$device/system/app/
b SystemUI
mv out/SystemUI.apk ../../../../out/$device/system/app/SystemUI.apk
cd ../../../../
