#!/bin/bash
#此脚本用来 DIY ROM 用
#制作者：陈云
#写于2014年3月 窝窝
#写于2014年4月 深圳语信公司

PATH=/bin:/sbin:/usr/bin:usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin:~/yun
export PATH

android_version=$1
device=$2

cd packages/browser/
if [[ "$android_version" == "4.1" ]]; then
	b browser4.1
	mv out/browser4.1.apk ../../out/$device/system/app/browser.apk

elif [[ "$android_version" == "4.2" ]]; then
	b browser4.1

else [[ "$android_version" == "4.3" ]];
	b browser4.3
	mv out/browser4.3.apk ../../out/$device/system/app/browser.apk
fi

cd ../../