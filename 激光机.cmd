@rem 20181017jianpf
@echo off
@title %1 "发送中..."
@color c
@rem 发送到位置 C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\SendTo
set sendto=\\Pc201703201122\共享文件
set log.txt=E:\Work\Temp\sendto.log.txt


for /f %%i in ('date /t') do set odate=%%i
for /f %%i in ('time /t') do set otime=%%i
set odt=%odate% %otime%
echo %odt% %1
echo ...   

copy %1 %sendto%  && echo %odate% %otime% %1 >%log.txt%.tmp && color a
type %log.txt%>>%log.txt%.tmp
type %log.txt%.tmp>%log.txt%
pause 
echo %odt% 发送时间  
more %log.txt%
echo %odt% 发送时间  
pause