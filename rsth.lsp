

;-------------------------------------------
;20181028jianpf
;�����ı�
(defun c:st()
 
(if (not rsth) (setq rsth 60))

(setq txtpit (getpoint "\n���� �����ı�λ��:"))
  
;���
(setq thb (getstring "\n���� ��� T:")) 
;����:
(progn
(initget "0 1 2 3 4 5 6 201 304")
(setq getw (getkword "���� [���(0)/�Ȱ�(1)/201(2)/304(3)/����(4)/�����ư�(5)/��п��(6)]" ))	    
(princ getw)
(cond
((= getw "0") (setq cailiao  "���"))
((= getw "1") (setq cailiao "�Ȱ�"))
((= getw "2") (setq cailiao "201"))
((= getw "201") (setq cailiao "201"))
((= getw "3") (setq cailiao "304"))
((= getw "304") (setq cailiao "304"))
((= getw "4") (setq cailiao "����"))
((= getw "5") (setq cailiao "�����ư�"))
((= getw "6") (setq cailiao "��п��"))
((= getw nil) (setq cailiao  "���"))
);end cond
);end progn
;����
(setq pcs (getstring"\n���� ���� PCS:"))


  

(setq rstext (strcat "T" thb " " cailiao  " " pcs  "PCS"))

(princ rstext)


(command "text" txtpit  rsth 0 rstext )

;���
(setq tbh (getreal "\nʵ�ʺ�� Tbh:")) 

(princ)

)


;--------------------------------------------
;20181028jianpf
;�����ı�����
(defun c:rstts()
;���
(setq thb (getstring "\n���� ��� T:"))
;����:
(progn
(initget "0 1 2 3 4 5 6 201 304")
(setq getw (getkword "���� [���(0)/�Ȱ�(1)/201(2)/304(3)/����(4)/�����ư�(5)/��п��(6)]" ))	    
(princ getw)
(cond
((= getw "0") (setq cailiao  "���"))
((= getw "1") (setq cailiao "�Ȱ�"))
((= getw "2") (setq cailiao "201"))
((= getw "201") (setq cailiao "201"))
((= getw "3") (setq cailiao "304"))
((= getw "304") (setq cailiao "304"))
((= getw "4") (setq cailiao "����"))
((= getw "5") (setq cailiao "�����ư�"))
((= getw "6") (setq cailiao "��п��"))
((= getw nil) (setq cailiao  "���"))
);end cond
);end progn
;����
(setq pcs (getstring"\n���� ���� PCS:"))
(setq rstext (strcat "T" thb " " cailiao  " " pcs  "PCS"))

(princ rstext)

;ѡ���ı�����
(setq cent(entget (car (entsel ))))	
;((-1 . <ͼԪ��: -1f7cd8>) 
;����:
;(0 . "MTEXT") ;
;����:
;(1 . "{\\fSimSun|b0|i0|c134|p2;����}")
;�߶�:
;(40 . 20.123) 
;�޸��ı��߶�40���

;��ȡԭ���ı�ֵ
;(setq ent_oldtxt (cdr(assoc 1 cent )))
;  (princ (cdr(assoc 1 cent )))

;׼���滻 
(setq cent (subst(cons 1 rstext)(assoc 1 cent)cent))
;��ʼ�޸�
(entmod cent)
;(print ">" )(print rstext)

;���
(setq tbh (getreal "\nʵ�ʺ�� Tbh:")) 
(princ)
  
)

;;-----
;20181028jianpf
;�����ı�����
(defun c:rstt()
;���
(setq thb (getstring "\n���� ��� T:"))
;����:
(progn
(initget "0 1 2 3 4 5 6 201 304")
(setq getw (getkword "���� [���(0)/�Ȱ�(1)/201(2)/304(3)/����(4)/�����ư�(5)/��п��(6)]" ))	    
(princ getw)
(cond
((= getw "0") (setq cailiao  "���"))
((= getw "1") (setq cailiao "�Ȱ�"))
((= getw "2") (setq cailiao "201"))
((= getw "201") (setq cailiao "201"))
((= getw "3") (setq cailiao "304"))
((= getw "304") (setq cailiao "304"))
((= getw "4") (setq cailiao "����"))
((= getw "5") (setq cailiao "�����ư�"))
((= getw "6") (setq cailiao "��п��"))
((= getw nil) (setq cailiao  "���"))
);end cond
);end progn
;����
(setq pcs (getstring"\n���� ���� PCS:"))
(setq rstext (strcat "T" thb " " cailiao  " " pcs  "PCS"))

(princ rstext)


;ѡ�����Ƽ�
(setq ss (ssget))
(setq ssn (ssname ss 0))
(setq cent (entget ssn))
;ѡ���ı�����
;(setq cent(entget (car (entsel ))))	
;((-1 . <ͼԪ��: -1f7cd8>) 
;����:
;(0 . "MTEXT") ;
;����:
;(1 . "{\\fSimSun|b0|i0|c134|p2;����}")
;�߶�:
;(40 . 20.123) 
;�޸��ı��߶�40���

;��ȡԭ���ı�ֵ
;(setq ent_oldtxt (cdr(assoc 1 cent )))
;  (princ (cdr(assoc 1 cent )))

;׼���滻 
(setq cent (subst(cons 1 rstext)(assoc 1 cent)cent))
;��ʼ�޸�
(entmod cent)
;(print ">" )(print rstext)
  
;���
(setq tbh (getreal "\nʵ�ʺ�� Tbh:")) 
(princ)
)




;-----------

;20181028jianpf
;�����ı��߶�(֧��20��ѡ��)
(defun c:rsttt()
;ѡ���ı�����
;ѡ�����Ƽ�
(setq ss (ssget))
;ѡ�����Ƽ��ĸ���
;(setq ssl (sslenth ss))
(setq ssl 20)
(setq ssl0 0)
(repeat ssl
(progn
(setq ssn (ssname ss ssl0))
(setq cent (entget ssn))

(setq ssl0 (+ ssl0 1))
(progn (print ssl0) (princ "�޸������СΪ:")(princ rsth))
	
;((-1 . <ͼԪ��: -1f7cd8>) 
;����:
;(0 . "MTEXT") ;
;����:
;(1 . "{\\fSimSun|b0|i0|c134|p2;����}")
;�߶�:
;(40 . 20.123) 

;�޸��ı��߶�40���
(setq cent (subst(cons 40 rsth)(assoc 40 cent)cent))
(entmod cent)
);end progn
);end ѭ��20��

(princ)

)





;20181028jianpf
;�����ı��߶�
(defun c:rsth()
(setq rsth (getreal "�����ı��߶�:"))
  (c:rsttt)
(princ)
)

;�����ı��߶�
(defun c:rsttth()
(setq rsth (getreal "�����ı��߶�:"))
  (c:rsttt)
(princ)
)

;�����ı��߶�
(defun c:rstth()
(setq rsth (getreal "�����ı��߶�:"))
  (c:rsttt)
(princ)
)

;�����ı��߶�20
(defun c:rst1()
(setq rsth 10)
  (c:rsttt)
(princ)
)
;�����ı��߶�20
(defun c:rst2()
(setq rsth 20)
  (c:rsttt)
(princ)
)
;�����ı��߶�40
(defun c:rst3()
(setq rsth 40)
   (c:rsttt)
(princ)
)
;�����ı��߶�80
(defun c:rst4()
(setq rsth 80)
   (c:rsttt)
(princ)
)




;-------------------------------------------
;20181123jianpf
;�����ı�
(defun c:sts()
 
(if (not rsth) (setq rsth 60))

(setq txtpit (getpoint "\n���� �����ı�λ��:"))
  
 
;�����ַ���:
(progn
(initget "0 1 2 3 4 5 6 7 8 9 a s d f g b l q u y")
(setq getw (getkword "�ı� ���⴦�� [С�״��(0)/�п����ۺ�(1)/�ճ��ۺ�(2)/�д�(3)/��΢��(q)/���ϼӹ�(4)/�����Ű�(5)/�����Ű�(6)/���俪��(7)/�巴������(8)/�Ӳ���(9)/ÿ����(a)/������(s)/������(d)/��������(f)/��������(g)/��ʱ����(b)/��������(l)/����Ҷ(u)/�ȴ���1��(y)]" ))	    
(princ getw)
(cond
((= getw "0") (setq cailiao  "С�״��"))
((= getw "1") (setq cailiao "�п����ۺ�"))
((= getw "2") (setq cailiao "�ճ��ۺ�"))
((= getw "3") (setq cailiao "�д�"))
((= getw "4") (setq cailiao "���ϼӹ�"))
((= getw "5") (setq cailiao "�����Ű�"))
((= getw "6") (setq cailiao "�����Ű�"))
((= getw "7") (setq cailiao "���俪��"))
((= getw "8") (setq cailiao "�巴������"))
((= getw "9") (setq cailiao "�Ӳ���"))
((= getw "a") (setq cailiao "Ԫ/��"))
((= getw "s") (setq cailiao "������"))
((= getw "d") (setq cailiao "������"))
((= getw "f") (setq cailiao "��������"))
((= getw "g") (setq cailiao "��������"))
((= getw "b") (setq cailiao "��ʱ����"))
((= getw "l") (setq cailiao "��������"))
((= getw "q") (setq cailiao "��΢��"))
((= getw "u") (setq cailiao "����Ҷ"))
((= getw "y") (setq cailiao "�ȴ���1��"))
((= getw nil) (setq cailiao  "���⴦��"))
);end cond
);end progn
 
  

(setq rstext (strcat " "cailiao " "  ))

(princ rstext)


(command "text" txtpit  rsth 0 rstext )

 
(princ)

)



;-------------------------------------------
;20181123.20190408jianpf
;�����ı�
(defun c:sts()
 
(if (not rsth) (setq rsth 60))

(setq txtpit (getpoint "\n����ss �����ı�λ��:"))
  
 
;�����ַ���:
(progn
(initget "0 1 2 3 4 5 6 7 8 9 a s d f g b l q u y")
(setq getw (getkword "�ı� ���⴦�� [С�״��(0)/�п����ۺ�(1)/�ճ��ۺ�(2)/�д�(3)/��΢��(q)/���ϼӹ�(4)/�����Ű�(5)/�����Ű�(6)/���俪��(7)/�巴������(8)/�Ӳ���(9)/ÿ����(a)/������(s)/������(d)/��������(f)/��������(g)/��ʱ����(b)/��������(l)]/����Ҷ(u)/�ȴ���1��(y)" ))	    
(princ getw)
(cond
((= getw "0") (setq cailiao  "С�״��"))
((= getw "1") (setq cailiao "�п����ۺ�"))
((= getw "2") (setq cailiao "�ճ��ۺ�"))
((= getw "3") (setq cailiao "�д�"))
((= getw "4") (setq cailiao "���ϼӹ�"))
((= getw "5") (setq cailiao "�����Ű�"))
((= getw "6") (setq cailiao "�����Ű�"))
((= getw "7") (setq cailiao "���俪��"))
((= getw "8") (setq cailiao "�巴������"))
((= getw "9") (setq cailiao "�Ӳ���"))
((= getw "a") (setq cailiao "����:Ԫ/��"))
((= getw "s") (setq cailiao "������"))
((= getw "d") (setq cailiao "������"))
((= getw "f") (setq cailiao "��������"))
((= getw "g") (setq cailiao "��������"))
((= getw "b") (setq cailiao "��ʱ����"))
((= getw "l") (setq cailiao "��������"))
((= getw "q") (setq cailiao "��΢��"))
((= getw "u") (setq cailiao "����Ҷ"))
((= getw "y") (setq cailiao "�ȴ���1��"))
((= getw nil) (setq cailiao  "���⴦��"))
);end cond
);end progn
 
  

(setq rstext (strcat " "cailiao " "  ))

(princ rstext)


(command "text" txtpit  rsth 0 rstext )

 
(princ)

)




;-------------------------------------------
;20181123.20190408jianpf
;�����ı�
(defun c:stss()
 
(if (not rsth) (setq rsth 60))

(setq txtpit (getpoint "\n����ss �����ı�λ��:"))
  
 
;�����ַ���:
(progn
(initget "0 1 2 3 4 5 6 7 8 9 a s d f g b l q u y x")
(setq getw (getkword "�ı� ���⴦�� [ע�ⷴ��(d)/��ӡͼ(g)/ԭͼ�濴������(x)]" ))	    
(princ getw)
(cond
((= getw "0") (setq cailiao ""))
((= getw "1") (setq cailiao ""))
((= getw "2") (setq cailiao ""))
((= getw "3") (setq cailiao ""))
((= getw "4") (setq cailiao ""))
((= getw "5") (setq cailiao ""))
((= getw "6") (setq cailiao ""))
((= getw "7") (setq cailiao ""))
((= getw "8") (setq cailiao ""))
((= getw "9") (setq cailiao ""))
((= getw "a") (setq cailiao ""))
((= getw "s") (setq cailiao ""))
((= getw "d") (setq cailiao "ע�ⷴ��"))
((= getw "f") (setq cailiao ""))
((= getw "g") (setq cailiao "��ӡͼ"))
((= getw "b") (setq cailiao ""))
((= getw "l") (setq cailiao ""))
((= getw "q") (setq cailiao ""))
((= getw "u") (setq cailiao ""))
((= getw "y") (setq cailiao ""))
((= getw "x") (setq cailiao "ԭͼ�濴������"))
((= getw nil) (setq cailiao  "���⴦��"))
);end cond
);end progn
 
  

(setq rstext (strcat " "cailiao " "  ))

(princ rstext)


(command "text" txtpit  rsth 0 rstext )

 
(princ)

)





;�˳�
(defun c:ppp()
 
    (command "close" "y" "n")
(princ)
)
;�����˳���jianpf20190512x
(defun c:bss()
    (command "bclose" "s")
(princ)
)




;-------------------------------------------
;20190330x
;�����(���㹤����2.81>ģ�߹���>�����)
(defun c:qbbh()
 
(if (not rsth) (setq rsth 60))
(if (= qbxh nil) (setq qbxh 1))
(if (not qbxh) (setq qbxh 1))
(repeat 100
(setq txtpit (getpoint (strcat  "\n���� �����λ��:"  (rtos qbxh 2 3) ">"  )))

(setq rstext (strcat "[ " (rtos qbxh 2 3) " ]"  ))


(command "text" txtpit  rsth 0 rstext   )
(setq qbxh (+ qbxh 1))
 
(princ)
)
)



;-------------------------------------------
;20190330x
;�����(���㹤����2.81>ģ�߹���>�����)
(defun c:qbbh()
 
(if (not rsth) (setq rsth 60))
(if (= qbxh nil) (setq qbxh 1))
(if (not qbxh) (setq qbxh 1))
(repeat 100
(setq txtpit (getpoint (strcat  "\n���� �����λ��:"  (rtos qbxh 2 3) ">"  )))

(setq rstext (strcat "[ " (rtos qbxh 2 3) " ]"  ))


(command "text" txtpit  rsth 0 rstext   )
(setq qbxh (+ qbxh 1))
 
(princ)
)
)



;20190330x
;����������
(defun c:sqbbh()

(if (= qbxh nil) (setq qbxh 1))
(if (not qbxh) (setq qbxh 1))
(setq qbxh (getreal (strcat "����������:" (rtos qbxh 2 3) ">"  )))
(princ)
)



;��ͼ�������Զ������
(defun C:tdwgprops (/ App Doc DwgProps)
  (vl-load-com)
(setq App (vlax-Get-Acad-Object)
Doc (vla-Get-ActiveDocument App)
DwgProps (vla-Get-SummaryInfo Doc))
;(vla-AddCustomInfo DwgProps "Sample1" "No Data")
;(vla-AddCustomInfo DwgProps "Sample2" "No Data")
;(vla-SetCustomByIndex DwgProps 0 "Sample1" "Some data")
;(vla-SetCustomByKey DwgProps "Sample2" "2000")
(princ))



 (defun C:fggg()

  (VL-LOAD-COM)

  (setq AcadObject (vlax-get-acad-object))

  (setq      AcadDocument (vla-get-ActiveDocument AcadObject))

    (setq    mSpace (vla-get-ModelSpace AcadDocument))
 
;;; ����AutoCAD�еĵ�ǰ���ļ�

  (setq activeDoc (vla-get-ActiveDocument AcadObject))

(progn
  
  (princ "������ļ���: ")(princ (vla-get-path activeDoc))
(princ)
    (princ "\\") (princ (vla-get-name activeDoc)) 
 (princ)
  
)




 )





;�����ⲿcmd������ļ��ϴ������
(defun c:segg()
;�ⲿcmd�����·��\\+ �ո�
(setq sendto (strcat "C:\\Users\\Administrator\\AppData\\Roaming\\Microsoft\\Windows\\SendTo\\�����.cmd" " "))
;�����ַ���:
(progn
(initget "n s")
(setq getw (getkword "�Ƿ񱣴�->�������:[��(s)/��(n)]" ))
(cond
((= getw "s") (progn
	(command "QSAVE")
;ִ���ⲿ����
(progn
;����ActiveX
  (VL-LOAD-COM)
;����CAD����
  (setq AcadObject (vlax-get-acad-object))
;�����ĵ�����
  (setq      AcadDocument (vla-get-ActiveDocument AcadObject))
;���嵽��ǰ�������
    (setq    mSpace (vla-get-ModelSpace AcadDocument))
;���嵱ǰ�ĵ�
  (setq activeDoc (vla-get-ActiveDocument AcadObject))
;��ȡ�ļ�·�����ļ���
  (setq filepathname (strcat (vla-get-path activeDoc) "\\" (vla-get-name activeDoc)) )

  (startapp sendto filepathname )
  (princ (strcat (menucmd "M=$(edtime,0,YYYY-MO-DD-HH:MM:SS am/pm)") "  " filepathname " -> ���͵������:" ) ))
);����ִ���ⲿ����
);����ѡ��s����
((= getw "n") (princ  "ȡ��������"))
((= getw nil) (princ  "δѡ��"))
);end cond
);end progn
 
;�����ⲿCMD����+�ļ�·�����Ʋ���
;(startapp sendto filepathname )
;��ӡ��ǰʱ��
;(princ (strcat (menucmd "M=$(edtime,0,YYYY-MO-DD-HH:MM:SS am/pm)") "  " filepathname " -> ���͵������:" ) )
(princ)
 
)
;���������ⲿcmd����

;���庯����ȡ�ļ����;���·��str
(defun filename()
(progn
;����ActiveX
  (VL-LOAD-COM)
;����CAD����
  (setq AcadObject (vlax-get-acad-object))
;�����ĵ�����
  (setq      AcadDocument (vla-get-ActiveDocument AcadObject))
;���嵽��ǰ�������
    (setq    mSpace (vla-get-ModelSpace AcadDocument))
;���嵱ǰ�ĵ�
  (setq activeDoc (vla-get-ActiveDocument AcadObject))
;��ȡ�ļ�·�����ļ���
  (setq filepathname (strcat (vla-get-path activeDoc) "\\" (vla-get-name activeDoc)) )
  (setq filenamestr (vla-get-name activeDoc))
  (princ (vla-get-name activeDoc))

  )
)


;20190317x�ⲿ�ߴ��ַ���
(defun c:wst( / bl)

;��ȡ�ļ���
(filename)  
(if (not rsth) (setq rsth 60))

  
;�ı�λ��
  
(setq txtpit (getpoint "\n���� �����ı�λ��:"))


;����
(setq bl (getstring "\n���� bl:")) 
;�ж����볤���Ƿ�Ϊ0�ֽ�,�����ȡ��ע����
(if (= (strlen bl) 0) 
(progn
(setq cent (entget (car (entsel (strcat "��ȡ��עֵ:" )))))
;��ȡ��עֵ
(setq bl (cdr (assoc 42 cent)))
;ת�ַ���
(setq bl (rtos bl 2 3)   ) 
)
;�����ж�
)



  
;���
(setq thb (getstring "\n���� ��� T:")) 
;����:
(progn
(initget "0 1 2 3 4 5 6 201 304")
(setq getw (getkword "���� [���(0)/�Ȱ�(1)/201(2)/304(3)/����(4)/�����ư�(5)/��п��(6)]" ))	    
(princ getw)
(cond
((= getw "0") (setq cailiao  "���"))
((= getw "1") (setq cailiao "�Ȱ�"))
((= getw "2") (setq cailiao "201"))
((= getw "201") (setq cailiao "201"))
((= getw "3") (setq cailiao "304"))
((= getw "304") (setq cailiao "304"))
((= getw "4") (setq cailiao "����"))
((= getw "5") (setq cailiao "�����ư�"))
((= getw "6") (setq cailiao "��п��"))
((= getw nil) (setq cailiao  "���"))
);end cond
);end progn
;����
(setq pcs (getstring"\n���� ���� PCS:")) 


(setq rstext (strcat "T" thb " " cailiao  " " pcs  "PCS"  "     %"  bl " %" filenamestr  ) )

(command "text" txtpit  rsth 0 rstext )


;�ַ��������ⲿ�ļ� 
 
(setq str (strcat rstext ) )
(setq f1 (open "c:\\temp\\wst.txt" "w"))  
(write-line str f1 )

(close f1)

(princ str)
(princ)

)





;;;

;20190317x�ⲿ�ߴ��ַ���20190325x
(defun c:wst( / bl)

;��ȡ�ļ���
(filename)  
(if (not rsth) (setq rsth 60))

  
;�ı�λ��
  
(setq txtpit (getpoint "\n���� �����ı�λ��:"))


;����
(setq bl (getstring "\n���� bl:")) 
;�ж����볤���Ƿ�Ϊ0�ֽ�,�����ȡ��ע����
(if (= (strlen bl) 0) 
(progn
(setq cent (entget (car (entsel (strcat "��ȡ��עֵ:" )))))
;��ȡ��עֵ
(setq bl (cdr (assoc 42 cent)))
;�жϱ�עֵ�Ƿ�Ϊ����
(if (< bl 0) 
(progn
(setq bl (getstring (strcat "\n�����עֵ!!!!:" bl )))
)
;������ע�����ж�
)

;ת�ַ���
(setq bl (rtos bl 2 3)   ) 
)
;�����ж�
)



  
;���
(setq thb (getstring (strcat"\n���� ��� T:"  "\n��עֵ����:" bl ))) 
;����:
(progn
(initget "0 1 2 3 4 5 6 201 304")
(setq getw (getkword "���� [���(0)/�Ȱ�(1)/201(2)/304(3)/����(4)/�����ư�(5)/��п��(6)]" ))	    
(princ getw)
(cond
((= getw "0") (setq cailiao  "���"))
((= getw "1") (setq cailiao "�Ȱ�"))
((= getw "2") (setq cailiao "201"))
((= getw "201") (setq cailiao "201"))
((= getw "3") (setq cailiao "304"))
((= getw "304") (setq cailiao "304"))
((= getw "4") (setq cailiao "����"))
((= getw "5") (setq cailiao "�����ư�"))
((= getw "6") (setq cailiao "��п��"))
((= getw nil) (setq cailiao  "���"))
);end cond
);end progn
;����
(setq pcs (getstring"\n���� ���� PCS:")) 


(setq rstext (strcat "T" thb " " cailiao  " " pcs  "PCS"  "     %"  bl " %" filenamestr  ) )

(command "text" txtpit  rsth 0 rstext )


;�ַ��������ⲿ�ļ� 
 
(setq str (strcat rstext ) )
(setq f1 (open "c:\\temp\\wst.txt" "w"))  
(write-line str f1 )

(close f1)
  
(setq str (strcat bl ) )
(setq f2 (open "c:\\temp\\wstbl.txt" "w"))  
(write-line str f2 )

(close f2)

(setq str (strcat filenamestr ) )
(setq f3 (open "c:\\temp\\wstname.txt" "w"))  
(write-line str f3 )

(close f3)

(princ str)
(princ)

)



;;;


;20190317x�ⲿ�ߴ��ַ���20190325x
(defun c:rwst()
 
(setq str (strcat "rrrrrrr")) 
(setq f1 (open "c:\\temp\\wst.txt" "r"))  
(setq str (read-line  f1 ))

(close f1)

(princ str)
(princ)

  
(if (not rsth) (setq rsth 60))

(setq txtpit (getpoint "\nճ�� �����ı�λ��:"))
  
(princ rstext)


(command "text" txtpit  rsth 0 str )
(princ )



(setq slen (strlen str))
(setq slen0 1)
(while (< slen0 slen)
(progn
(setq slen0 (+ slen0 1))

)
)
  
)




