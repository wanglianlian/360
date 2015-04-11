#!/bin/sh
#日志切割　:如果文件大于阈值M,则复制备份access.log并清空源文件重新开始写入
#切割生成文件以时间.log命名
M=1024Byte
filename=access.log
watch ()
{
         if [ $1 -ge $M ]
         then
         echo true
         else 
         echo false
         fi
}
while $(watch $(ls -l $filename))
do
newfilename=$(date +"%F%H%M%S")
cp $filename $newfilename
echo "">$filename
done
