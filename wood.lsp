;ľ��20210415w
 
;-------------------------------------------
;20190330x-20210415w
;�����(���㹤����2.81>ģ�߹���>�����)-����
(defun c:qbch()
(if (not rsth) (setq rsth 60));rsttth��������߶�
(if (= qbxht nil) (setq qbxht ""))
(if (= qbxhtt nil) (setq qbxhtt ""))
(if (= qbxh nil) (setq qbxh 1))
(if (not qbxh) (setq qbxh 1))
(repeat 100
(setq txtpit (getpoint (strcat  "\n���� �����λ��:"  (rtos qbxh 2 3) ">"  )))
(setq rstext (strcat  qbxht " " (rtos qbxh 2 3) " " qbxhtt   ))
(command "text" "j" "MC" txtpit  rsth 0 rstext   )
(setq cname1 (entlast))
(command "circle" txtpit "d" (* rsth 2))
(setq cname2 (entlast))
(command "group" "c" "*" "*" cname1 cname2 "")
(setq qbxh (+ qbxh 1))
(princ)
)
)
;-------------------------------------------
;20190330x-20210415w
;�����(���㹤����2.81>ģ�߹���>�����)-ͼ��
(defun c:qbth()
(if (not rsth) (setq rsth 60))
(if (= qbxht nil) (setq qbxht ""))
(if (= qbxhtt nil) (setq qbxhtt ""))
(if (= qbxh nil) (setq qbxh 1))
(if (not qbxh) (setq qbxh 1))
(repeat 100
(setq txtpit (getpoint (strcat  "\n���� ���ͼ��λ��:"  (rtos qbxh 2 3) ">"  )))
(setq rstext (strcat  qbxht " ͼ" (rtos qbxh 2 3) " " qbxhtt   ))
(command "text" "j" "MC" txtpit  (* 3 rsth) 0 rstext   )
(setq qbxh (+ qbxh 1))
(princ)
)
)

;�����˳�jianpf20190512x20210417w
(defun c:qsc()
  (command "_qsave" "");��������ƾ��ǵ�ǰ�ļ���
  (command "close" "y" "n");(command "close") "y" "n" �������ڱ��� )
(princ)
)
;���ٱ����˳��ж��Ƿ�δ���洰��(DXF����)JianPF20210418x
(defun c:qsc()
  (if (= 1 (getvar "DWGTITLED"));�ж��Ƿ񱣴������
    (progn (qsclose "qsclose"));��������˳�
    (progn (qsname "qsname"));�������沢�˳����˳�
  ) 
(princ)
)
;���沢�˳�ͼֽJianPF20210418x
(defun qsclose(refstr )
  (print refstr)
  (setvar "THUMBSAVE" 1);��������ͼRASTERPREVIEW(��)
  (command "_qsave" "");��������ƾ��ǵ�ǰ�ļ���
  (command "close" "y"  );��������˳�
)
;���洰�ڲ��˳�ͼֽJianPF20210418x 
(defun qsname(refstr  )
  (print refstr)
  (setvar "THUMBSAVE" 1)
  (command "_save" "~" ""  )
    (print (getvar "DBMOD"))
  (if (= 0 (getvar "DBMOD"));�������沢�˳����˳�
  (command "close" "y" );��ֹȡ���˳�δ����
  )
)


;KJJ--<------------------------------
;�������ADEE��ݼ�JianPF20210418s
(defun c:adee()
  (command "_dimcontinue" )
(princ)
)
;��׼�������ADCC��ݼ�JianPF20210418s
(defun c:adcc()
  (command "_dimbaseline" )
(princ)
)
;KJJ-->------------------------------