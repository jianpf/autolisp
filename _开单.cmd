@rem 20181118jianpf
@echo off
@title %1 "������..."
@color c
@rem ����λ�� 
set log.txt=E:\Work\Temp\kaidan.log.txt

@echo %1
@echo "�����뱸ע:(T���,����,�����,�ߴ�,...)"
set /p note0=
set /p note1=
set /p note2=

set note= %note0% %note1% %note2%

for /f %%i in ('date /t') do set odate=%%i
for /f %%i in ('time /t') do set otime=%%i
set odt=%odate% %otime%
echo %odt% %1
echo ...   

echo %odate% %otime% %1 (T%note%) >%log.txt%.tmp && color a
type %log.txt%>>%log.txt%.tmp
type %log.txt%.tmp>%log.txt%
pause 
echo %odt% ����ʱ��  
more %log.txt%
echo %odt% ����ʱ��  
pause