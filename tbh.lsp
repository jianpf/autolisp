;jianpf 20180620
;���ð��tbh
(defun c:tbh()
(princ "���ð��:")
(setq tbh (getreal));  
(princ "���:")
(princ tbh)
(princ)
)

;ƫ�ƿ�ݼ�ft
(defun c:ft()
  (princ "ƫ�ư��:")
  (princ tbh)
  
  ;(princ "\n")
  (command  "offset" tbh )
  (princ)
)

;20180902JPF
;��ȡ��עֵ��ƫ��
(defun c:fsa()
(progn (princ "\nѡ��--��ע����:")) 
(progn
;ѡ���ע����
(setq ent_bz (entget (nth 0 (entsel)) ))
;�жϵ��1�Ƿ�" "��ֵ
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;��ֵbzz=ʵ�ʱ�ע���42,�����bzz=�ֶ���ע1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
;ƫ��
(command  "offset" bzz )

(princ) 

  )


;ƫ�ư���ݼ�fst
(defun c:fst()
  (princ "���:")
  (princ tbh)  
       
  (princ "\n    fstƫ��:")
  (princ tbh) 
  (command  "offset" tbh )
  (princ)
)

;ƫ�ƿ�ݼ�fs
(defun c:fs()

  (command  "offset" ) 
)

;ƫ�ƿ�ݼ�fE
(defun c:fe()

(princ "�Գ��ܳ���:")
(setq fedcc (getreal))
  (setq fedc (/ fedcc 2))
  (princ "����:")
  (princ fedc )
  (command  "offset" fedc ) 
)

;ƫ�ƿ�ݼ�t
(defun c:t()
  (princ "���:")
  (princ tbh)
  (princ "\nƫ�Ƴ���:") 
  (setq py (getreal))
  (setq py (- py tbh))

  
  (princ "\n����۳�:")
  (princ tbh )
  
  (princ "\n   tƫ��:")
  (princ py )
  
  (princ "\n")
  (command  "offset" py )
  (princ)
)

;ƫ�ƿ�ݼ�tt
(defun c:tt()
  (princ "���:")
  (princ tbh)
  (princ "\nttƫ�Ƴ���:")
  (setq pyy (getreal))
  ;����۳�2�ΰ��
  (setq pyy (- pyy tbh))
  (setq pyy (- pyy tbh))
     
  (princ "\n����۳�:")
  (princ (* tbh 2))
  
  (princ "\n    ttƫ��:")
  (princ pyy)


  (princ "\n")
  (command  "offset" pyy )
  (princ)
)

;ƫ�ƿ�ݼ�ttt
(defun c:ttt()
  (princ "���:")
  (princ tbh)
  (princ "\ntttƫ�Ƴ���:")
  (setq pyy (getreal))
  ;����۳�3�ΰ��
  (setq pyy (- pyy tbh))
  (setq pyy (- pyy tbh))
  (setq pyy (- pyy tbh))
     
  (princ "\n����۳�:")
  (princ (* tbh 2))
  
  (princ "\n    tttƫ��:")
  (princ pyy)


  (princ "\n")
  (command  "offset" pyy )
  (princ)
)



;�Զ����ݼ�
(defun c:kk()
 
  (setq hhs (getreal "
-a
ad:���Ա�ע  adh ����б�߱�ע
add:ֱ����ע
art:�ۺø߶�1�����(artt:2����� artt:3�����)

-c
cc:����
ce:Բ��
cdd:�޸�Բֱ��
cddd:�༭Բֱ��
cm:÷����(ˮƽ�׾�,ˮƽ�׾��е�ƫ�ϴ�ֱ�׾�,���п׾�ˮƽ�ʹ�ֱ�׾��2��)


-d
dft:�뾶Բ�;��μ���5��ɾ��Բ
dfx:�㷽��(�ۺ�)  ddx:ȱ��><v dff:dds:ddd:dde:�����ۺ�
div:ƽ�ֶ�ϵͳ����

-e
ee:����

-f
fa:ֱ��
fe:�ܶԳ�ƫ��
fs:ƫ��
ft:ƫ��1�����
fsa:;��ȡ��עֵ��ƫ��(��עֵ)

-t
tbh:���ð��ֵ
t:����-1*���ֵ(fat:��ȡ��עֵ��-1*���ֵƫ��)
tt:����-2���(fatt:��ȡ��עֵ��-2*���ֵƫ��)
ttt:����-3���(fattt:��ȡ��עֵ��-3*���ֵƫ��)
trt:���߿�ݼ�

-j
rt(20190116x����jjt):ģ������1�� ǰ����=���䳤��+1*���ֵ(jjat:��עֵ)
rtt(jjtt):ģ������2�� ǰ����=���䳤��+2*���ֵ(jjatt:��עֵ)
rttt(jjttt):ģ������3�� ǰ����=���䳤��+3*���ֵ(jjattt:��עֵ)



-s
s:����
sc:���� (scs:��0.5  scd:�Ŵ�2��)
scr:���ŵ��³ߴ�? 
SELECTSIMILAR:(CAD)ѡ��ͬ�����

-w
wst:�ⲿ�洢strfilename
"))

)

;������hh2018.07.26
(defun c:hh()
 
  (setq hhs (getreal "
ver:20180620-20180912�����

1-չ���ܳ���  ԭ�����     �ı�:�쳤    �ĺ�:����        
2-�׾�>=���   ������(����)
3-�ӽ�����۳�   ʵ�ʺ�� > ����  (���)
4-Ĥ����201.304.�����
5-�����ǵ�һ��ͼ  Բ�Ŀ���Բ̨����ͼ�ĳ���
6-�������� ��������     ��2��:������չ      ������С
7-�ӽ����� ��֤>�۱�>��>���ŷ�>�ۿ�,�������Ĥ��(���:10mm,16mm,22mm)+���ֵ
8-���п�������ı��뿴����ģ���߳���,(�������ģ��С20mm)
9-Բ��ԲͲ��ߴ��1�����ĳ���,�ڵľͲ�Ҫ�۰��
10-���乫ʽ(������С):���*6=��ģ�ۿڴ�С/2=�԰�����(��Сֵ+1=�ײ�����)
11-�������߿�����1-3mm(�����ۻ�����)
12-��������10��,�ȷ������\���,����������
����:
T5���۲���70��20190526
"))
  (princ)
)
;bh2018.10.16s
(defun c:bh()
 
  (setq bhs (getreal ".
.  �����                   ̼��                     ��п��
--------------------------------------------------------------------
 ���    ʵ�ʺ��        ���      ʵ�ʺ��            ���     ʵ�ʺ��
 0.7     0.5                 1             1                      0.2
 0.8     0.6                 1.2           1.2                    0.7
 0.9     0.7                 1.5           1.3                    0.8
 1       0.8                 2             1.8                    0.9
 1.2     1                   2.5           2.3                    1
 1.5     1.3                 3             2.8                    1.2
 2.0     1.8                 4             3.5                    1.5
 2.5     2.3                 5             4.5                    2
 3       2.8                 6             5.5                    2.5
 4       3.5                 8             7.2
 5       4.5                 10            9.5
 6       5.8                 12            11
.                              16
.10                          18
.                              20
.                              0.8           0.8


3 �����ư� 2
"))
  (princ)
)


;20180901-Jianpf

;����Բֱ��cdd
(defun c:cdd()

;�ж��Ƿ���Բֱ��ֵ
(if (not czj) (setq czj (getreal "\nԲֱ��:")))
;���Բֱ��ֵ
(progn (princ "Բֱ��:") (princ czj))
;ѡ�񵥸�Բ����,�޸ĵ�Ե�Բ�뾶ֵΪֱ��ֵ��һ��
(repeat 100  
(progn
(setq cent(entget (car (entsel ))))
(progn (princ "\nԲֱ��:") (princ (* 2(cdr (assoc 40 cent)))) (princ " -> ")(princ czj))
(setq cent (subst(cons 40 (/ czj 2))(assoc 40 cent)cent))
(entmod cent)

(princ)
)
);�˳�ѭ��
)

;��������Բֱ��cddd
(defun c:cddd()
(progn
;��������Բֱ��
(setq i (getreal "\n��������Բֱ��:"))
(if (not i) (setq i  czj))
(setq czj i)
;��ȡ����
(setq cent(entget (car (entsel))))
;���Բֱ��ֵ
(progn (princ "\n��Բֱ��:") (princ czj))
(progn (princ "\nԲֱ��:") (princ (* 2(cdr (assoc 40 cent)))) (princ " -> ")(princ czj))

;�޸�Բֱ����С
(setq cent (subst(cons 40 (/ czj 2))(assoc 40 cent)cent))
(entmod cent)


(princ)
)
)

;20180701JPF
;���ƿ�ݼ�cc
(defun c:cc(/ ent)
  (setq ent (ssget))
  (command "copy" ent "" "m")
  (princ)
)

;ֱ�߿�ݼ�fa
(defun c:fa()
(command  "_line" ) 
)
;�����ݼ�ee
(defun c:ee()
(command  "_mirror"  )
)

;Բ��(����)ƫ�ƿ�ݼ�ce
(defun c:ce()
  (progn
   ;����Բ��λ��
   (setq pit (getpoint (list 0 0 0) "Բ��:"))
   ;����Բ�뾶ʵ��
   (princ "Բֱ��:")
   (setq r (getreal))
   ;�ж��Ƿ�����,û�о�Ĭ�����ó�5
   (if (not r) (setq r 5))
   ;Բ����,λ��,�뾶
   (command "circle" pit "d" r)
   ;�������ִ�в����Ķ�������(Բ�������Ҫɾ��)
   (setq cname (entlast))

   ;����Բ�ۿ׵���ʵ������
   (setq rk (getreal))
   (setq rkx  (list (+ (car pit) rk) (+ (cadr pit) 0) 0)  )
   (setq rky (list (car pit) (- (cadr pit) rk ) 0))
   ;Բ����,λ��,�뾶
   (command "circle" rkx "d" r)
   
;-x

   (setq r2 (/ r 2))
   (setq x0 (car pit))
   (setq y0 (cadr pit))
  
   (setq x1  x0)
   (setq y1 (+ y0 r2))
   (setq x2 (+ x0 rk))
   (setq y2 y1)

   ;(x0,y0+r2)
   (setq line01 (list x1 y1 0) )
   ;(x0+rk,y1)
   (setq line02 (list x2 y2 0 ) )
   (command  "line"  line01  line02  "")

   (setq x1  x0)
   (setq y1 (- y0 r2))
   (setq x2 (+ x0 rk))
   (setq y2 y1)
   
   ;(x0,y0-r2)
   (setq line01 (list x1 y1 0) )
   ;(x0+rk,y1)
   (setq line02 (list x2 y2 0 ) )
   (command  "line"  line01  line02  "")


;-y
   (setq rky (list (car pit) (- (cadr pit) rk ) 0))
   (command "circle" rky "d" r)
   (setq x1  (- x0 r2 ))
   (setq y1 y0)
   (setq x2 x1)
   (setq y2 (- y1 rk))

   ;(x0,y0+r2)
   (setq line01 (list x1 y1 0) )
   ;(x0+rk,y1)
   (setq line02 (list x2 y2 0 ) )
   (command  "line"  line01  line02  "")

   (setq x1  (+ x0 r2 ))
   (setq y1 y0)
   (setq x2 x1)
   (setq y2 (- y1 rk))

   ;(x0,y0+r2)
   (setq line01 (list x1 y1 0) )
   ;(x0+rk,y1)
   (setq line02 (list x2 y2 0 ) )
   (command  "line"  line01  line02  "")
   
  )
  (princ)
)

;���Կ�ݼ�ad
(defun c:ad()
(command  "_dimlinear" )
  
)
;ֱ����ݼ�add
(defun c:add()
 
(command  "_dimdiameter" ) 
)
 



;20180902JPF
;��ȡ��עֵ��ƫ��fsa
(defun c:fsa()
(progn (princ "\nѡ��--��ע����:")) 
(progn
;ѡ���ע����
(setq ent_bz (entget (nth 0 (entsel)) ))
;�жϵ��1�Ƿ�" "��ֵ
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;��ֵbzz=ʵ�ʱ�ע���42,�����bzz=�ֶ���ע1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
(command  "offset" bzz )

(princ) 

  )

;20180902JPF
;��ȡ��עֵ��ƫ��fat
(defun c:fat()
(progn (princ "\nѡ��--��ע����:")) 
(progn
;ѡ���ע����
(setq ent_bz (entget (nth 0 (entsel)) ))
;�жϵ��1�Ƿ�" "��ֵ
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;��ֵbzz=ʵ�ʱ�ע���42,�����bzz=�ֶ���ע1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
;C:t()����-------
  (princ "���:")
  (princ tbh)
  (princ "\nƫ�Ƴ���:") 
  (setq py bzz)
  (setq py (- py tbh))

  
  (princ "\n����۳�:")
  (princ tbh )
  
  (princ "\n   tƫ��:")
  (princ py )
  
  (princ "\n")
  (command  "offset" py )
 

(princ) 

  )
;20180902JPF
;��ȡ��עֵ��ƫ��fatt
(defun c:fatt()
(progn (princ "\nѡ��--��ע����:")) 
(progn
;ѡ���ע����
(setq ent_bz (entget (nth 0 (entsel)) ))
;�жϵ��1�Ƿ�" "��ֵ
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;��ֵbzz=ʵ�ʱ�ע���42,�����bzz=�ֶ���ע1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
;C:tt()����-------
  (princ "���:")
  (princ tbh)
  (princ "\nttƫ�Ƴ���:")
  (setq pyy bzz)
  ;����۳�2�ΰ��
  (setq pyy (- pyy tbh))
  (setq pyy (- pyy tbh))
     
  (princ "\n����۳�:")
  (princ (* tbh 2))
  
  (princ "\n    ttƫ��:")
  (princ pyy)


  (princ "\n")
  (command  "offset" pyy )
  (princ) 

(princ) 

  )
;20180902JPF
;��ȡ��עֵ��ƫ��fattt
(defun c:fattt()
(progn (princ "\nѡ��--��ע����:")) 
(progn
;ѡ���ע����
(setq ent_bz (entget (nth 0 (entsel)) ))
;�жϵ��1�Ƿ�" "��ֵ
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;��ֵbzz=ʵ�ʱ�ע���42,�����bzz=�ֶ���ע1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
;C:ttt()����-------
  (princ "���:")
  (princ tbh)
  (princ "\ntttƫ�Ƴ���:")
  (setq pyy bzz)
  ;����۳�3�ΰ��
  (setq pyy (- pyy tbh))
  (setq pyy (- pyy tbh))
  (setq pyy (- pyy tbh))
     
  (princ "\n����۳�:")
  (princ (* tbh 2))
  
  (princ "\n    tttƫ��:")
  (princ pyy)


  (princ "\n")
  (command  "offset" pyy )
  (princ)

  )

;jjat--------
;20180902JPF
;��ʾ��עֵ+1�����c:jat
(defun c:rt()
(progn (princ "\nѡ��--��ע����:")) 
(progn
;ѡ���ע����
(setq ent_bz (entget (nth 0 (entsel)) ))
;�жϵ��1�Ƿ�" "��ֵ
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;��ֵbzz=ʵ�ʱ�ע���42,�����bzz=�ֶ���ע1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
;C:jjt()����-------
  (princ "���:")
  (princ tbh)
  (princ "\n rtƫ�ƺ󳤶�:")
  (setq pyy bzz)
  ;����۳�2�ΰ��
  (setq pyy (+ pyy tbh)) 
     
  (princ "\n����۳�:")
  (princ (* tbh 2))

  (princ (strcat "\n rt��+1�����(" (rtos tbh 2 3)  "):" ))
  (princ  pyy)
  (setq pyy (getreal))
  (princ)
(princ) 

  )

;jjatt--------
;20180902JPF
;��ʾ��עֵ+2�����c:jjatt
(defun c:rtt()
(progn (princ "\nѡ��--��ע����:")) 
(progn
;ѡ���ע����
(setq ent_bz (entget (nth 0 (entsel)) ))
;�жϵ��1�Ƿ�" "��ֵ
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;��ֵbzz=ʵ�ʱ�ע���42,�����bzz=�ֶ���ע1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
;C:jjtt()����-------
  (princ "���:")
  (princ tbh)
  (princ "\n rttƫ�ƺ󳤶�:")
  (setq pyy bzz)
  ;����۳�2�ΰ��
  (setq pyy (+ pyy tbh)) 
  (setq pyy (+ pyy tbh)) 
     
  (princ "\n����۳�:")
  (princ (* tbh 2))
  
  (princ (strcat "\n rtt��+2�����(" (rtos tbh 2 3)  "):" ))
  (princ pyy)
  (setq pyy (getreal))
  (princ)
(princ) 

  )


;jjattt--------
;20180902JPF
;��ʾ��עֵ+2�����c:jjattt
(defun c:rttt()
(progn (princ "\nѡ��--��ע����:")) 
(progn
;ѡ���ע����
(setq ent_bz (entget (nth 0 (entsel)) ))
;�жϵ��1�Ƿ�" "��ֵ
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;��ֵbzz=ʵ�ʱ�ע���42,�����bzz=�ֶ���ע1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
;C:jjtt()����-------
  (princ "���:")
  (princ tbh)
  (princ "\n rtttƫ�ƺ󳤶�:")
  (setq pyy bzz)
  ;����۳�2�ΰ��
  (setq pyy (+ pyy tbh)) 
  (setq pyy (+ pyy tbh)) 
  (setq pyy (+ pyy tbh)) 
     
  (princ "\n����۳�:")
  (princ (* tbh 2))
  
  (princ (strcat "\n rttt��+3�����(" (rtos tbh 2 3)  "):" ))
  (princ pyy)
  (setq pyy (getreal))
  (princ)
(princ) 

  )

;���κ����
(defun c:dft()
  ;����Բ��λ��
 (setq pit (getpoint (list 0 0 0) "�������:"))
  ;����Բ�뾶ʵ��
  (setq r (getreal "�߳�:"))
  ;�ж��Ƿ�����,û�о�Ĭ�����ó�5
  (if (not r) (setq r 30))
  ;Բ����,λ��,�뾶
  (command "_rectang" pit "d" r r pause)
  (command "circle" pit 5 )
  ;�������ִ�в����Ķ�������(Բ�������Ҫɾ��)
  (setq cname (entlast))
  ;����Բ,ִ�м�������
  (command "trim" "" pause pause pause  pause pause pause)
  ;ɾ����һ�λ��Ķ�������(Բ)
  (entdel cname)
  ;�س�����
  (command "\\" )
  ;Ĭ�����Ϊ��
  (princ)
)

;���߿�ݼ�trt
(defun c:trt()
(command  "_trim" "" )
)

;���ſ�ݼ�scs
(defun c:scs()
(command  "scale" pause "0.5" )
)
;�Ŵ��ݼ�scd
(defun c:scd()
(command  "scale"  pause "2" )
)




;JPF20180914-------- 
;�㷽��
(defun c:dfx()


;����cond�ؼ���
;(initget "E D S F")
  
  ;����Բ��λ��
 (setq pit (getpoint (list 0 0 0) "\nԲ��:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 5)
 (setq d 20)
 (setq d (+ r d))

 (setq ep1 (list x (+ y r) ))
 (setq ep2 (list x (+ y d) ))

 (setq dp1 (list x (- y r) ))
 (setq dp2 (list x (- y d) ))

 (setq sp1 (list (- x r) y ))
 (setq sp2 (list (- x d) y ))
  
 (setq fp1 (list (+ x r) y ))
 (setq fp2 (list (+ x d) y ))

;ѭ������
(repeat 2

  
  ;���÷���
 (setq dfxx (getstring   "����E,D,S,F:") )


;�жϷ���
(cond
((= dfxx "e") (progn  (command  "line"  ep1  ep2  "") (princ "\n  ^E:�� \n")))
((= dfxx "d") (progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:�� \n")))
((= dfxx "s") (progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:�� \n")))
((= dfxx "f") (progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:�� \n")))
)
);end-repeat 4
  

   
  
  ;Ĭ�����Ϊ��
  (princ)
)


;���Ϸ���
(defun c:dfe() 
;����Բ��λ��
 (setq pit (getpoint (list 0 0 0) "\nԲ��:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 5)
 (setq d 20)
 (setq d (+ r d))

 (setq ep1 (list x (+ y r) ))
 (setq ep2 (list x (+ y d) ))

 (setq dp1 (list x (- y r) ))
 (setq dp2 (list x (- y d) ))

 (setq sp1 (list (- x r) y ))
 (setq sp2 (list (- x d) y ))
  
 (setq fp1 (list (+ x r) y ))
 (setq fp2 (list (+ x d) y ))
(setvar "osmode" 0);;�رղ�׽20190520
 (progn  (command  "line"  ep1  ep2  "") (princ "\n  ^E:�� \n")) 
 ;(progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:�� \n")) 
 ;(progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:�� \n")) 
 ;(progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:�� \n")) 
 (setvar "osmode" 16383);;��׽20190520
  ;Ĭ�����Ϊ��
  (princ)
)

;���·���
(defun c:dfd() 
;����Բ��λ��
 (setq pit (getpoint (list 0 0 0) "\nԲ��:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 5)
 (setq d 20)
 (setq d (+ r d))

 (setq ep1 (list x (+ y r) ))
 (setq ep2 (list x (+ y d) ))

 (setq dp1 (list x (- y r) ))
 (setq dp2 (list x (- y d) ))

 (setq sp1 (list (- x r) y ))
 (setq sp2 (list (- x d) y ))
  
 (setq fp1 (list (+ x r) y ))
 (setq fp2 (list (+ x d) y ))
(setvar "osmode" 0);;�رղ�׽20190520
 ;(progn  (command  "line"  ep1  ep2  "") (princ "\n  ^E:�� \n")) 
 (progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:�� \n")) 
 ;(progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:�� \n")) 
 ;(progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:�� \n")) 
 (setvar "osmode" 16383);;��׽20190520
  ;Ĭ�����Ϊ��
  (princ)
)

;������
(defun c:dfs() 
;����Բ��λ��
 (setq pit (getpoint (list 0 0 0) "\nԲ��:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 5)
 (setq d 20)
 (setq d (+ r d))

 (setq ep1 (list x (+ y r) ))
 (setq ep2 (list x (+ y d) ))

 (setq dp1 (list x (- y r) ))
 (setq dp2 (list x (- y d) ))

 (setq sp1 (list (- x r) y ))
 (setq sp2 (list (- x d) y ))
  
 (setq fp1 (list (+ x r) y ))
 (setq fp2 (list (+ x d) y ))
(setvar "osmode" 0);;�رղ�׽20190520
 ;(progn  (command  "line"  ep1  ep2  "") (princ "\n  ^E:�� \n")) 
 ;(progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:�� \n")) 
 (progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:�� \n")) 
 ;(progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:�� \n")) 
 (setvar "osmode" 16383);;��׽20190520
  ;Ĭ�����Ϊ��
  (princ)
)

;���ҷ���
(defun c:dff() 
;����Բ��λ��
 (setq pit (getpoint (list 0 0 0) "\nԲ��:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 5)
 (setq d 20)
 (setq d (+ r d))

 (setq ep1 (list x (+ y r) ))
 (setq ep2 (list x (+ y d) ))

 (setq dp1 (list x (- y r) ))
 (setq dp2 (list x (- y d) ))

 (setq sp1 (list (- x r) y ))
 (setq sp2 (list (- x d) y ))
  
 (setq fp1 (list (+ x r) y ))
 (setq fp2 (list (+ x d) y ))
(setvar "osmode" 0);;�رղ�׽20190520
 ;(progn  (command  "line"  ep1  ep2  "") (princ "\n  ^E:�� \n")) 
 ;(progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:�� \n")) 
 ;(progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:�� \n")) 
 (progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:�� \n")) 
 (setvar "osmode" 16383);;��׽20190520w
  ;Ĭ�����Ϊ��
  (princ)
)

;JPF20180914--------

;ȡ���߿���ʾ
(defun c:dw() 
(progn  (command "lwdisplay"  "off") )
)


;JPF20190120--------
(defun c:sddd()
;��������
;�����ַ���:
(progn
(initget "0 1")
(setq getw (getkword "��ʾȱ��Բ:[��(0)/��(1)]" ))	    
(princ getw)
(cond
((= getw "0") (setq sdddc 0))
((= getw "1") (setq sdddc 1))
);end cond
);end progn
)


;ȱ�ڵ��Ϸ���
(defun c:dde() 
;����Բ��λ��
 (setq pit (getpoint (list 0 0 0) "\nԲ��:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 1)
 ;(setq d 20)
 ;(setq d (+ r d))
(setvar "osmode" 0);;�رղ�׽

    ;�ж�sdddc�Ƿ���ʾȱ��Բ
  (if (= sdddc 1) (progn
  ;�ֱ��ʴ���
   (command "circle" pit 5 )
  ;�������ִ�в����Ķ�������(Բ�������Ҫɾ��)
  (setq cname (entlast))
  (setq pitx (getpoint (list 0 0 0) "\n����:"))
  (entdel cname)
   ))


 (setq ep1 (list x (+ y r) ))
 (setq ep2 (list (- x r) y ))
 (setq ep3 (list (+ x r) y ))
  
 (progn  (command  "line"  ep1  ep2  "") ) 
 (progn  (command  "line"  ep1  ep3  "") (princ "\n  ^E:�� \n"))
 (command  "_trim" "" )
 ;(progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:�� \n")) 
 ;(progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:�� \n")) 
 ;(progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:�� \n")) 
 (setvar "osmode" 16383);;������׽20190520
  ;Ĭ�����Ϊ��
  (princ)
)


;ȱ�ڵ��·���
(defun c:ddd() 
;����Բ��λ��
 (setq pit (getpoint (list 0 0 0) "\nԲ��:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 1)
 ;(setq d 20)
 ;(setq d (+ r d))

(setvar "osmode" 0);;�رղ�׽20190520
    ;�ж�sdddc�Ƿ���ʾȱ��Բ
  (if (= sdddc 1) (progn
  ;�ֱ��ʴ���
   (command "circle" pit 5 )
  ;�������ִ�в����Ķ�������(Բ�������Ҫɾ��)
  (setq cname (entlast))
  (setq pitx (getpoint (list 0 0 0) "\n����:"))
  (entdel cname)
   ))
  
 (setq ep1 (list x (- y r) ))
 (setq ep2 (list (- x r) y ))
 (setq ep3 (list (+ x r) y ))
  
 (progn  (command  "line"  ep1  ep2  "") ) 
 (progn  (command  "line"  ep1  ep3  "") (princ "\n  vD:�� \n"))
 (command  "_trim" "" )
 ;(progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:�� \n")) 
 ;(progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:�� \n")) 
 ;(progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:�� \n")) 
 (setvar "osmode" 16383);;��׽20190520
  ;Ĭ�����Ϊ��
  (princ)
)
;ȱ������
(defun c:dds() 
;����Բ��λ��
 (setq pit (getpoint (list 0 0 0) "\nԲ��:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 1)
 ;(setq d 20)
 ;(setq d (+ r d))

(setvar "osmode" 0);;�رղ�׽20190520
    ;�ж�sdddc�Ƿ���ʾȱ��Բ
  (if (= sdddc 1) (progn
  ;�ֱ��ʴ���
   (command "circle" pit 5 )
  ;�������ִ�в����Ķ�������(Բ�������Ҫɾ��)
  (setq cname (entlast))
  (setq pitx (getpoint (list 0 0 0) "\n����:"))
  (entdel cname)
   ))
  
 (setq ep1 (list (- x r) y ))
 (setq ep2 (list x (+ y r) ))
 (setq ep3 (list x (- y r) ))
  
 (progn  (command  "line"  ep1  ep2  "") ) 
 (progn  (command  "line"  ep1  ep3  "") (princ "\n  vD:�� \n"))
 (command  "_trim" "" )
 ;(progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:�� \n")) 
 ;(progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:�� \n")) 
 ;(progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:�� \n")) 
 (setvar "osmode" 16383);;�رղ�׽20190520
  ;Ĭ�����Ϊ��
  (princ)
)
;ȱ���ҷ���
(defun c:ddf() 
;����Բ��λ��
 (setq pit (getpoint (list 0 0 0) "\nԲ��:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 1)
 ;(setq d 20)
 ;(setq d (+ r d))
  
(setvar "osmode" 0);;�رղ�׽20190520
    ;�ж�sdddc�Ƿ���ʾȱ��Բ
  (if (= sdddc 1) (progn
  ;�ֱ��ʴ���
   (command "circle" pit 5 )
  ;�������ִ�в����Ķ�������(Բ�������Ҫɾ��)
  (setq cname (entlast))
  (setq pitx (getpoint (list 0 0 0) "\n����:"))
  (entdel cname)
   ))
  
 (setq ep1 (list (+ x r) y ))
 (setq ep2 (list x (+ y r) ))
 (setq ep3 (list x (- y r) ))
  (princ ep1)
   (princ ep2)
   (princ ep3)
 (progn  (command  "line"  ep1  ep2  "") ) 
 (progn  (command  "line"  ep1  ep3  "") (princ "\n  vD:�� \n")) 
 (command  "_trim" "" )
 ;(progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:�� \n")) 
 ;(progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:�� \n")) 
 ;(progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:�� \n")) 
 (setvar "osmode" 16383);;�رղ�׽20190520
  ;Ĭ�����Ϊ��
  (princ)
)


;ȱ����ת����
(defun c:ddx() 
;����Բ��λ��
 (setq pit (getpoint (list 0 0 0) "\nԲ��:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 1)
 ;(setq d 20)
 ;(setq d (+ r d))
(setvar "osmode" 0);;�رղ�׽20190520
 ;��ת����
  ;�ֱ��ʴ���
   (command "circle" pit 5 )
  (setvar "osmode" 16383);;��׽20190520
  ;�������ִ�в����Ķ�������(Բ�������Ҫɾ��)
  (setq cname (entlast))
  (setq pitx (getpoint (list 0 0 0) "\n  ����:(��Ŵ�Բռ������ѡ��)"))
  (entdel cname)
 (setvar "osmode" 0);;�رղ�׽20190520
  
 (setq ep1 (list (+ x r) y ))
 (setq ep2 (list x (+ y r) ))
 (setq ep3 (list x (- y r) ))
  (princ ep1)
   (princ ep2)
   (princ ep3)
 (command  "line"  ep1  ep2  "")
(setq l1name (entlast))
  (command  "line"  ep1  ep3  "")
(setq l2name (entlast))
  (princ "\n  vD:�� \n")
;(entdel l1name)
;(entdel l2name)

 ;(progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:�� \n")) 
 ;(progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:�� \n")) 
 ;(progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:�� \n")) 
 (command  "rotate"  l1name l2name "" pit pitx)
  (setvar "osmode" 16383);;�رղ�׽20190520
  ;(command  "_trim" "" )
  
  ;Ĭ�����Ϊ��
 (princ)
)


;ȱ����ת����
(defun c:ddxx() 
  ;����Բ��λ��
 (setq pitx (getpoint (list 0 0 0) "\n�ۺ۵�:"))


 (setvar "osmode" 0);;�رղ�׽20190520
  ;�ֱ��ʴ���
   (command "circle" pitx 5 )
  ;�������ִ�в����Ķ�������(Բ�������Ҫɾ��)
  (setq cname (entlast))
  (setvar "osmode" 16383);;������׽20190530
  (setq pit (getpoint (list 0 0 0) "\nȱ��λ��:"))
  (entdel cname)
 (setvar "osmode" 0);;�رղ�׽20190520
  (setq r 1)
 (setq ep1 (list (+ x r) y ))
 (setq ep2 (list x (+ y r) ))
 (setq ep3 (list x (- y r) ))
  (princ ep1)
   (princ ep2)
   (princ ep3)
 (command  "line"  ep1  ep2  "")
(setq l1name (entlast))
  (command  "line"  ep1  ep3  "")
(setq l2name (entlast))
  (princ "\n  vD:�� \n")
;(entdel l1name)
;(entdel l2name)

 ;(progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:�� \n")) 
 ;(progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:�� \n")) 
 ;(progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:�� \n")) 
 ;����Բ��λ��
  (command  "rotate"  l1name l2name "" pit )
  
  (setvar "osmode" 16383);;��׽20190520
  ;(command  "_trim" "" )
  ;Ĭ�����Ϊ��
 (princ)
)


;���߿�ݼ�trt
(defun c:trt()
(command  "_trim" "" )
)
 

;��2 20190123x
(defun c:dftt() 
;����Բ��λ��
 (setq pit (getpoint (list 0 0 0) "\nԲ��:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 5)
 ;(setq d 20)
 ;(setq d (+ r d))

(setvar "osmode" 0);;�رղ�׽20190520
    ;�ж�sdddc�Ƿ���ʾȱ��Բ
  (if (= sdddc 1) (progn
  ;�ֱ��ʴ���
   (command "circle" pit 5 )
  ;�������ִ�в����Ķ�������(Բ�������Ҫɾ��)
  (setq cname (entlast))
   (setvar "osmode" 16383);;��׽20190520
  (setq pitx (getpoint (list 0 0 0) "\n����:"))
  (entdel cname)
   ))

(setvar "osmode" 0);;�رղ�׽20190520
 (setq ep1 (list x (+ y (+ r 0)) ))
 (setq ep2 (list (- x (+ r 0)) y ))
 (setq ep3 (list x (- y r) ))
 (setq ep4 (list x (- y (+ r 25)) ))
 (setq ep5 (list (+ x r) y ))
 (setq ep6 (list (+ x (+ r 25)) y ))
   
 (progn  (command  "line"  pit  ep1  "") )
  (setq l1name (entlast))
 (progn  (command  "line"  pit  ep2  "") )
  (setq l2name (entlast))
 (progn  (command  "line"  ep3  ep4  "") )
  (setq l3name (entlast))
 (progn  (command  "line"  ep5  ep6  "") )
  (setq l4name (entlast))

  (progn
  ;������ת
 (command  "rotate"  l1name l2name l3name l4name "" pit "r" pit ep2  pause)
  ;����Բ,ִ���ӳ���������
  (command "extend" "" )
 )
  (setvar "osmode" 16383);;��׽20190520
  ;Ĭ�����Ϊ��
  (princ)
)



;��ע��ߴ�art  jpf20190123x
(defun c:art()
;��ȡ����
(setq cent(entget (car (entsel (strcat "art��+1�����(" (rtos tbh 2 3)  "):" ))))) 
(setq i (cdr (assoc 42 cent)))
(setq i (+ i (* 1 tbh)))
(setq i  (strcat ".�ۺ�" (rtos i 2 3)  ))
(princ i)
;�޸ı�עֵ(�滻ֵ,ԭֵ,�����) 
(setq cent (subst(cons 1 i)(assoc 1 cent)cent))
(entmod cent)
(princ)
)
 ;��ע��ߴ�artt  jpf20190123x
(defun c:artt()
;��ȡ����
(setq cent(entget (car (entsel (strcat "artt��+2�����(" (rtos tbh 2 3)  "):" ))))) 
(setq i (cdr (assoc 42 cent)))
(setq i (+ i (* 2 tbh)))
(setq i  (strcat "..�ۺ�" (rtos i 2 3)  ))
(princ i)
;�޸ı�עֵ(�滻ֵ,ԭֵ,�����) 
(setq cent (subst(cons 1 i)(assoc 1 cent)cent))
(entmod cent)
(princ)
)
;��ע��ߴ�rttta  jpf20190123x
(defun c:arttt()
;��ȡ����
(setq cent(entget (car (entsel (strcat "arttt��+3�����(" (rtos tbh 2 3)  "):" ))))) 
(setq i (cdr (assoc 42 cent)))
(setq i (+ i (* 3 tbh)))
(setq i  (strcat "...�ۺ�" (rtos i 2 3)  ))
(princ i)
;�޸ı�עֵ(�滻ֵ,ԭֵ,�����) 
(setq cent (subst(cons 1 i)(assoc 1 cent)cent))
(entmod cent)
(princ)
)

;��ע��ߴ�arts  jpf20190123x
(defun c:arts()
;��ȡ����
(setq cent(entget (car (entsel (strcat "���ñ��(" (rtos tbh 2 3)  "):" ))))) 
(setq i (cdr (assoc 1 cent)))
(princ (strcat "�޸�ǰ:" i ))
(setq i "")
;�޸ı�עֵ(�滻ֵ,ԭֵ,�����) 
(setq cent (subst(cons 1 i)(assoc 1 cent)cent))
(entmod cent)
(princ)
)

;����ƥ��ca  jpf20190313s
(defun c:ca() 
(command "matchprop")
)



;����б��sq  jpf20190307w
(defun c:sq() 
(setq p1 (getpoint))  
(setq p2 (getpoint))
(setq p1x (car p1))
(setq p1y (cadr p1))
(setq p1z (caddr p1))
(setq p2x (car p2))
(setq p2y (cadr p2))
(setq p2z (caddr p2))
(setq p12x (- p2x p1x))
(setq p12y (- p2y p1y))
(setq p12z (- p2z p1z))
(setq q (list p12x p12y p12z))

 ;(command "select"   )
   ;(COMMAND "STRETCH" "C" p4 p5 "" P4 P3)
 ;(command "stretch" "d" "!q" )
 ;(command "stretch" "d")
)

;����б��se  jpf20190307w
(defun c:sw() 
(setq p1 (getpoint))  
(setq p2 (getpoint))
(setq p1x (car p1))
(setq p1y (cadr p1))
(setq p1z (caddr p1))
(setq p2x (car p2))
(setq p2y (cadr p2))
(setq p2z (caddr p2))
(setq p12x (- p2x p1x))
(setq p12y (- p2y p1y))
(setq p12z (- p2z p1z))
(setq w (list p12x p12y p12z)) 
)

;����б��se  jpf20190307w
(defun c:se() 
(setq p1 (getpoint))  
(setq p2 (getpoint))
(setq p1x (car p1))
(setq p1y (cadr p1))
(setq p1z (caddr p1))
(setq p2x (car p2))
(setq p2y (cadr p2))
(setq p2z (caddr p2))
(setq p12x (- p2x p1x))
(setq p12y (- p2y p1y))
(setq p12z (- p2z p1z))
(setq e (list p12x p12y p12z)) 
)


;����б��sqq  jpf20190307w
(defun c:sqq() 
(command "stretch" "p"  P2_1)
)


;adh ����б�߱�ע  jpf20190323s
(defun c:adh() 
(command "dimaligned")
)
;addc ����б�߱�ע  jpf20190323s
(defun c:addc() 
(command "dimarc")
)


















;jianpf20190516s���Դ���

;��ע��ߴ�art  jpf20190123x
(defun c:artf()
  (progn
    (setq p1p2 (list (getpoint) (getpoint)) )
  (command  "_dimlinear" (car p1p2) (cadr p1p2 ) pause)
    )
;��ȡ����
(setq cent(entget (car (entsel (strcat "art��+1�����(" (rtos tbh 2 3)  "):" ))))) 
(setq i (cdr (assoc 42 cent)))
(setq i (+ i (* 1 tbh)))
(setq i  (strcat ".�ۺ�" (rtos i 2 3)  ))
(princ i)
;�޸ı�עֵ(�滻ֵ,ԭֵ,�����) 
(setq cent (subst(cons 1 i)(assoc 1 cent)cent))
(entmod cent)
(princ)
)
 ;��ע��ߴ�artt  jpf20190123x
(defun c:arttf()
  (command  "_dimlinear" )
;��ȡ����
(setq cent(entget (car (entsel (strcat "artt��+2�����(" (rtos tbh 2 3)  "):" ))))) 
(setq i (cdr (assoc 42 cent)))
(setq i (+ i (* 2 tbh)))
(setq i  (strcat "..�ۺ�" (rtos i 2 3)  ))
(princ i)
;�޸ı�עֵ(�滻ֵ,ԭֵ,�����) 
(setq cent (subst(cons 1 i)(assoc 1 cent)cent))
(entmod cent)
(princ)
)
;��ע��ߴ�rttta  jpf20190123x
(defun c:artttf()
  (command  "_dimlinear" )
;��ȡ����
(setq cent(entget (car (entsel (strcat "arttt��+3�����(" (rtos tbh 2 3)  "):" ))))) 
(setq i (cdr (assoc 42 cent)))
(setq i (+ i (* 3 tbh)))
(setq i  (strcat "...�ۺ�" (rtos i 2 3)  ))
(princ i)
;�޸ı�עֵ(�滻ֵ,ԭֵ,�����) 
(setq cent (subst(cons 1 i)(assoc 1 cent)cent))
(entmod cent)
(princ)
)

;jianpf20190516s���Դ�����