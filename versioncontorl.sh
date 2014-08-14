#!/bin/bash
#此脚本用来 DIY ROM 用
#制作者：陈云
#写于2014年3月 窝窝
#写于2014年4月 深圳语信公司

PATH=/bin:/sbin:/usr/bin:usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
#####变量区#####
display_version=1.1
##########
#echo "开始打包……"
DATE=`date "+%Y:%m:%d:%H:%M" `
echo "display_version=$display_version" >> ./build/modeversion
source ./build/modeversion
versionold=$mode_version
	#echo $m  $h $s
	#echo $display_version
s=`expr $s + 1`;
if [[ $s == 10 ]]; then
	m=`expr $m + 1`;
	s=`expr $s - 10`;
	sed -i '/m/d' ./build/modeversion
	echo "m=$m" >> ./build/modeversion
fi
if [[ $m == 10 ]]; then
	h=`expr $h + 1`;
	m=`expr $m - 10`;
	sed -i '/h/d' ./build/modeversion
	echo "h=$h" >> ./build/modeversion
	sed -i '/m/d' ./build/modeversion
	echo "m=$m" >> ./build/modeversion
fi
sed -i '/s/d' ./build/modeversion
echo "s=$s" >> ./build/modeversion
mode_version=$h\.$m\.$s
sed -i '/mode_version/d' ./build/modeversion
echo "mode_version=$mode_version" >> ./build/modeversion
echo "mode_version=$mode_version" >> ./build/version
#sed -i '/YunLi/d' Working*/system/build.prop
#echo "ro.build.display.id=YunLi Code V $version" >> Working*/system/build.prop
#sed -i 's/'$versionold'/'$version'/g' Working*/META-INF/com/google/android/updater-script
#read -p "是否需要添加更内容？ 默认不添加啊 （y/n）:"  changlog
#case $changlog in
#	y ) 
#		echo "请输入更新内容： "
#		echo "$DATE 更新内容：" >> 更新内容.xml 
#		echo "" >> 更新内容.xml 
#		echo "" >> 更新内容.xml 
#		echo "" >> 更新内容.xml 
#		echo "" >> 更新内容.xml 
#		echo "========================================" >> 更新内容.xml 
#		gedit 更新内容.xml
#		sed -i '/^================/r 更新内容.xml' ./Working*/system/etc/changelog.xml
#		rm 更新内容.xml 
#		;;
#	n ) echo "本次无更新，开始打包"
#		;;
#esac
#cd Working*
#zip -r ../output/LA2-W_MSM8228_V${version}_BETA_released.zip *
#cd ../
echo "display_version=$display_version" >> ./build/modeversion
#echo "完成，默认退出"
#read

