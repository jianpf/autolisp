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

;�ƶ��ݼ�ww
(defun c:w()
  (command  "move"  )
)
;�ƶ��ݼ�ww
(defun c:ww()
  (command  "move"  )
)

;ƫ�ƿ�ݼ�fte����1�뻡����jianpf20190704
(defun c:fte()
  (princ "�뻡��ƫ�ư��:")
  (princ (strcat  (rtos tbh) "/2=" (rtos (/ tbh 2))))
  
  ;(princ "\n")
  (command  "offset" (/ tbh 2) )
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



;---
;20200722sJPF
;��ȡ��עֵ�ٻ�����
(defun c:reca(/ ppsx ppsy ppsz)
  ;(setq tbh (getreal "����ʵ�ʰ���(mm):"))
  ;�жϰ���Ƿ����
  (setvar "osmode" 16383);;������׽
  ;(if (not tbh) (setq tbh (getreal "\n���:")))
  (setq ww (getreal "ƽ���ۺÿ��(mm):"))
  (if ww () (setq ww (raval)))
  (setq hh (getreal "ƽ���ۺø߶�(mm):"))
  (if hh () (setq hh (raval)))
  (setq pps (getpoint "���ĵ�:"))
  (setq ppsx (car pps))
  (setq ppsy (cadr pps))
  (setq ppsz (caddr pps))
  (setq ppsx (+ ppsx (/ ww 2)))
  (setq ppsy (- ppsy (/ hh 2)))
  (setq ppss (list ppsx ppsy ppsz))
  (command "rectang" ppss "d" ww hh )
  )
;20200722sJPF
;��ȡ��עֵ�ٻ������ػ�recar
(defun c:recc()
  (recarr)
)
(defun c:rreca()
  (recarr)
)
(defun recarr(/ ppsx ppsy ppsz)
  (setvar "osmode" 16383);;������׽
  (setq pps (getpoint "���ĵ�:"))
  (setq ppsx (car pps))
  (setq ppsy (cadr pps))
  (setq ppsz (caddr pps))
  (setq ppsx (- ppsx (/ ww 2)))
  (setq ppsy (+ ppsy (/ hh 2)))
  (setq ppss (list ppsx ppsy ppsz))
  (command "rectang" ppss "d" ww hh )
)
;---


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

;ƫ�ƿ�ݼ�fE---20180902JPF
;(defun c:fe()
;(princ "�Գ��ܳ���:")
;(setq fedcc (getreal))
;  (setq fedc (/ fedcc 2))
;  (princ "����:")
;  (princ fedc )
;  (command  "offset" fedc ) 
;)

;---------20190520jianpf
;��ȡ��עֵjianpf20190530w
(defun raval()
(progn
(setq cent (entget (car (entsel (strcat "��ȡ��עֵ:" )))))
;��ȡ��עֵ
(setq rvale (cdr (assoc 42 cent)))
)  
)
;������ȡ��עֵ

;ƫ�ƿ�ݼ�fE--20180902JPF--JianPF20200508s
(defun c:fe()
(princ "�Գ��ܳ���:>ѡ���ע")
(setq fedcc (getreal))
;raval�Ƕ�ȡ��עֵ����20200508
(if fedcc () (setq fedcc (raval)))
  (setq fedc (/ fedcc 2))
  (princ "����:")
  (princ fedc )
  (command  "offset" fedc ) 
)
;ƫ�ƿ�ݼ�fEA--20180902JPF--JianPF20200508s
(defun c:fea()
(princ "�Գ��ܳ���:>��ע")
(setq fedcc (raval))
  (setq fedc (/ fedcc 2))
  (princ "����:")
  (princ fedc )
  (command  "offset" fedc ) 
)

;ƫ�ƿ�ݼ�t
(defun c:t()
  (princ "���:")
  (princ tbh)
  (princ (strcat "\nƫ�Ƴ���:" "���=" (rtos tbh)) )
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
-a    ad:���Ա�ע  adh ����б�߱�ע   add:ֱ����ע  art:�ۺø߶�1�����(artt:2����� artt:3�����)
      rat:ratt:rattt:ǰһ�α�ע��-��ƫ��
-b bb:ȫ�ֱ����鿴У��
-c    cc:����  ce:ceeԲ��  cdd:�޸�Բֱ��  cddd:�༭Բֱ��  cm:÷����(ˮƽ�׾�,ˮƽ�׾��е�ƫ�ϴ�ֱ�׾�,
      ���п׾�ˮƽ�ʹ�ֱ�׾��2��) cxx:Բ���  ccds:ͬ��Բ��  ccdss����Բ��Բ��(2019.09.13)
      crec:��Բת���ı���  ccr:��ԲתԲ(2020.05.08)
-d    dft:�뾶Բ�;��μ���5��ɾ��Բ  dfx:dfxx�㷽��(�ۺ�)  ddx:ȱ��<>  dff:dds:ddd:dde:�����ۺ�
      div:ƽ�ֶ�ϵͳ����   dfg:dfge:dfgg:dfggs:dfggd:������(�ۺ�) dar:(dimarcϵͳ����)
-e    ee:����  ega:�����
-f    fa:ֱ��  fe:fea:�ܶԳ�ƫ��  fs:ƫ��  ft:ƫ��1����� fte:1����  fsa:;��ȡ��עֵ��ƫ��(��עֵ)
      fatttw:rfat:rfatt:rfattt:�Ȼ�ȡ��ע�ֱ�����ƫ��(Z�ӽ��2020.3) fdra:Բ������(2020.8.22)
-t    tbh:���ð��ֵ   trt:���߿�ݼ�
      t:����-1*���ֵ(fat:��ȡ��עֵ��-1*���ֵƫ��)
      tt:����-2���(fatt:��ȡ��עֵ��-2*���ֵƫ��)
      ttt:����-3���(fattt:��ȡ��עֵ��-3*���ֵƫ��)
-r    rt(20190116x����jjt):ģ������1�� ǰ����=���䳤��+1*���ֵ(jjat:��עֵ) rrf:rrfa:rrfsxy:���ϼ���
      rtt(jjtt):ģ������2�� ǰ����=���䳤��+2*���ֵ(jjatt:��עֵ)
      rttt(jjttt):ģ������3�� ǰ����=���䳤��+3*���ֵ(jjattt:��עֵ) rst12345:���������С
-j    jbox:jjbox:�򵥺���jh:jjh:����������jbtxt:�����ı�
-ucs w �ָ���������
-s    s:����   sc:���� (scs:��0.5  scd:�Ŵ�2��) szt:sztt:sztt:������������   scr:scrr:���ŵ��³ߴ�(������2019.3-2020.8.25)
      szf(simplex.shx):szff(txt):szfff(����) sdes:sde���ò�׽ȫ��:���Ĵ�ֱ��
      stds:ͳ�Ƶ��� stdss:���õ���
      SELECTSIMILAR:(CAD)ѡ��ͬ�����  stdst:�ۻ������ļ� stssf:�����ļ���
-w    wst:�洢��������������  rfn:stssf:��ǰ�ļ���
-r    rwst:��ȡ�������������� rsc:��ȡ�������� rar:�������� reca:recc:��ȡֵ�����ľ���(20200722s) 
-z    zzf:������
-l    lspjgf:���ر�������ggf:�г̼����ccf:���Ϸ�

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
����ֲ��ܰ�Ҷ��20190622
13-��Բ,������Բ,ֻ�� Բ��+Բ�� (���� �뻷+�뻷)20190909x
14-������5mm��,��3.5mm������
15-������ȡ�������,������С����20191022
16-T10���ױߵ��۸�Ҫ30mm,���ۺ�Ҫ20mm(������ת��)20191223x
17-T6����ʼ��50����,�ۺ�Ҫ25mm,������20191223x  T6T8��30��18�ױ����ۺ�14�е����20200320x
18-����ԭ��:���ۺۺ�������ۺ۵ȱ�������Բ��Ͳ�������
19-T2�������м�Ҫ����15mm,���浶ҲҪ����Ĥ�۵Ŀ��(15��100mm)20200110s
20-T1.2 T2 ��10mm������,�ۺۺͿױ�����6�����ϲ�(12�Ĵ��)
21-���ԭ��,������庸�Ӿ��ٵ�20200113s
22-��T20 �����T10 ��T5 20200331x
23-��������0.025��ֵ,����T10���ֱ��10�ĵ���0.35,��ֱ���г�����10.7��(20200514s)
24-���䵶��Ĥ��10mm 20mm 30mm 60mm 100mm


T10 ��ͨ��8mmֱ��
T6  ��ͨ��3mmֱ��
T2  ��ͨ��0.2�㴩

T1.1����� 480*2500��Լ��200��Ԥ�� 20201009��¼


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
 4       3.5                 8             7.2                    3
 5       4.5                 10            9.5
 6       5.5                 12            11
.                              16            16
.10                          18
.                              20
.                              0.8           0.8
                              14	    13.6

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


;��Բ��תԲccr--JianPF20200508x
(defun c:ccr()
;��ʼѭ����
(repeat 100 
(progn
;��ȡ����
(setq ent_ty (nth 0 (entsel)))
(setq cent (entget ent_ty ))
;(setq cent(entget (car (entsel))))
;��ȡԲ�뾶ֵ
(setq i (cdr (assoc 40 cent)))
(progn (princ "\nԲֱ��:") (princ (* 2(cdr (assoc 40 cent)))))
(setq pit (cdr (assoc 10 cent)))
(command "circle" pit i)
(command "erase" ent_ty "" )
(princ)
)
);����ѭ����
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
   (setvar "osmode" 0);;�رղ�׽
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
  (setvar "osmode" 16383);;�رղ�׽
  (princ)
)

;Բ��(����)ƫ�ƿ�ݼ�cee JianPF20200918s
(defun c:cee()
  (progn
   ;����Բ��λ��
   (setq pit (getpoint (list 0 0 0) "Բ�߶���λ��:"))
   ;����Բ�뾶ʵ��
   (princ "Բֱ��:")
   (setq r (getreal))
   ;�ж��Ƿ�����,û�о�Ĭ�����ó�5
   (if (not r) (setq r 5))
   ;(setq pit (list (+ (car pit) (/ r 2)) (- (cadr pit)  (/ r 2)) (caddr pit) ));λ�ư뾶
   (setq pit (list (+ (car pit) (/ r 2))  (cadr pit)  (caddr pit) ));λ�ư뾶
   ;Բ����,λ��,�뾶
   (command "circle" pit "d" r)
   ;�������ִ�в����Ķ�������(Բ�������Ҫɾ��)
   (setq cname (entlast))

   ;����Բ�ۿ׵���ʵ������
   (setq rk (getreal))
   (setq rk (- rk r));��1��Բֱ��JianPF20200918s
   (setq rkx  (list (+ (car pit) rk) (+ (cadr pit) 0) 0)  )
   (setq rky (list (car pit) (- (cadr pit) rk ) 0))
   ;Բ����,λ��,�뾶
   (command "circle" rkx "d" r)
   (setvar "osmode" 0);;�رղ�׽
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
   (setq pit (list (- (car pit) (/ r 2))  (- (cadr pit) (/ r 2))  (caddr pit) ));λ�ư뾶
   (command "circle" pit "d" r);�ػ�Բ20200918s
   (setq rky (list (car pit) (- (cadr pit) rk ) 0))
   (command "circle" rky "d" r);�ػ���Բ20200918s
   (setq x1  (- x0 r ))
   (setq y1 (- y0 r2))
   (setq x2 x1)
   (setq y2 (- y1 rk))
   ;(x0,y0+r2)
   (setq line01 (list x1 y1 0) )
   ;(x0+rk,y1)
   (setq line02 (list x2 y2 0 ) )
   (command  "line"  line01  line02  "")
   (setq x1 x0);20200918s
   (setq y1 (- y0 r2))
   (setq x2 x1);20200918s
   (setq y2 (- y1 rk))

   ;(x0,y0+r2)
   (setq line01 (list x1 y1 0) )
   ;(x0+rk,y1)
   (setq line02 (list x2 y2 0 ) )
   (command  "line"  line01  line02  "")
   
  )
  (setvar "osmode" 16383);;�رղ�׽
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

;ega���������20190609
(defun c:ega()
(command  "UNGROUP" "a" )
)

;���ŵ��³ߴ�--JianPF20200825x
(defun c:scr()
(prompt "\n��ȡ���Ŷ�������:")
(setq ent (ssget ))
(if (not bl) (setq bl (getreal "���ű���ֵ:")))
(if (not bl) (setq bl (getreal "����������ֵ:")))
(princ bl)
;(setq pit (getpoint "\���Ż�׼��bai:"))
(command "_scale" ent "" pause bl)
)
;�������ŵ��³ߴ�--JianPF20200825x
(defun c:scrr()
(prompt "\n;��ȡ���Ŷ�������ֵ:")
(setq ent (ssget ))
(setq pit (getpoint "\���Ż�׼��bai:"))
(setq bl (getreal "��������ֵ:"))
(command "_scale" ent "" pit bl)
)


;���ſ�ݼ�scs--JianPF20200825
(defun c:scs()
(setq ent (ssget ))
(command "_scale" ent "" pause 0.5)
)
;���ſ�ݼ�scss--JianPF20200825
(defun c:scss()
(setq ent (ssget ))
(command "_scale" ent "" pause 0.25)
)
;�Ŵ��ݼ�scd--JianPF20200825
(defun c:scsd()
(setq ent (ssget ))
(command "_scale" ent "" pause 2)
)
;�Ŵ��ݼ�scd--JianPF20200825
(defun c:scd()
(setq ent (ssget ))
(command "_scale" ent "" pause 2)
)
;�Ŵ��ݼ�scd--JianPF20200825
(defun c:scdd()
(setq ent (ssget ))
(command "_scale" ent "" pause 4)
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

;--------------
;���Ϸ�����JianPF20200515x
(defun c:dfee() 
;����Բ��λ��
 (setq pit (getpoint (list 0 0 0) "\nԲ��:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 5)
 (setq d 20)
 (setq d (+ r d))

 (setq ep1 pit)
 (setq ep2 (list x (+ y d) ))
(setvar "osmode" 0);;�رղ�׽20190520
 (progn  (command  "line"  ep1  ep2  "") (princ "\n  ^E:�� \n"))
 (setvar "osmode" 16383);;��׽20190520
  ;Ĭ�����Ϊ��
  (princ)
)

;���·�����JianPF20200515x
(defun c:dfdd() 
;����Բ��λ��
 (setq pit (getpoint (list 0 0 0) "\nԲ��:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 5)
 (setq d 20)
 (setq d (+ r d))

 (setq dp1 pit )
 (setq dp2 (list x (- y d) ))

(setvar "osmode" 0);;�رղ�׽20190520
 ;(progn  (command  "line"  ep1  ep2  "") (princ "\n  ^E:�� \n")) 
 (progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:�� \n")) 
 ;(progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:�� \n")) 
 ;(progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:�� \n")) 
 (setvar "osmode" 16383);;��׽20190520
  ;Ĭ�����Ϊ��
  (princ)
)

;��������JianPF20200515x
(defun c:dfss() 
;����Բ��λ��
 (setq pit (getpoint (list 0 0 0) "\nԲ��:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 5)
 (setq d 20)
 (setq d (+ r d))


 (setq sp1 pit )
 (setq sp2 (list (- x d) y ))
  
(setvar "osmode" 0);;�رղ�׽20190520
 (progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:�� \n")) 
 (setvar "osmode" 16383);;��׽20190520
  ;Ĭ�����Ϊ��
  (princ)
)

;���ҷ�����JianPF20200515x
(defun c:dfff() 
;����Բ��λ��
 (setq pit (getpoint (list 0 0 0) "\nԲ��:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 5)
 (setq d 20)
 (setq d (+ r d))

 (setq fp1 pit )
 (setq fp2 (list (+ x d) y ))
(setvar "osmode" 0);;�رղ�׽20190520 
 (progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:�� \n")) 
 (setvar "osmode" 16383);;��׽20190520w
  ;Ĭ�����Ϊ��
  (princ)
)

;��Բת���ı���JianPF20200516w
(defun c:crec() 
;��ȡԲ����
(setvar "osmode" 16383);;������׽
(setq ent_cff (entget (car (entsel ))) )
(setq ent_cf ent_cff)
;��ȡԲ�뾶
(setq c_r (cdr (assoc 40 ent_cf )))
;תԲֱ��
;(setq c_d (* c_r 2))
;��ȡԲ�ĵ�
(setq c_p (cdr (assoc 10 ent_cf )))
(command "_rectang" c_p "D" c_r   c_r   )
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
 (setq r 0.5)
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
 (setq r 0.5)
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
 (setq r 0.5)
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
 (setq r 0.5)
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
(defun c:ddxx() 
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
(defun c:ddx() 
  ;����Բ��λ��
 (setq pitx (getpoint (list 0 0 0) "\n�ۺ۵�:"))

 (setvar "osmode" 0);;�رղ�׽20190520
  ;�ֱ��ʴ���
   (command "circle" pitx 5 )
  ;�������ִ�в����Ķ�������(Բ�������Ҫɾ��)
  (setq cname (entlast))
  (setvar "osmode" 16383);;������׽20190530
  (setq pit (getpoint (list 0 0 0) "\nȱ��λ��:"))
  ;;jianpf20190612x�޸�bug,xyλ��
 (setq x (car pit))
 (setq y (cadr pit))
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
;adrh ���ٽǶȱ�ע  jpf20191127x
(defun c:adrh() 
(command "dimangular")
)

;����ͼ���  jpf20191204x
(defun c:aff() 
(command "layoff")
)

;--------------------

;��������  20200301w
(defun c:szt() 
(command "-style" "Standard" "����" "" "" "" "" "")
)
;��������  20200301w
(defun c:sztt() 
(command "-style" "Standard" "txt" "" "" "" "" "" "")
);��������  20200301w
(defun c:szt() 
(command "-style" "Standard" "����" "" "" "" "" "")
)
;��������  20200301w
(defun c:szttt() 
(command "-style" "Standard" "����" "" "" "" "" "")
)
;��������  20200320x
(defun c:szf() 
(command  "FONTALT"  "simplex.shx")
)
;��������  20200320x
(defun c:szff() 
(command  "FONTALT"  "txt")
)
;��������  20200320x
(defun c:szfff() 
(command  "FONTALT"  "����")
)
;jianpf 20200301
;���ð��tbh
(defun c:tbd5()
(princ "���ð��:")
(setq tbh 0.5);
)
(defun c:tbd8()
(princ "���ð��:")
(setq tbh 0.8);
)
(defun c:tb1d()
(princ "���ð��:")
(setq tbh 1);
)
(defun c:tb1d2()
(princ "���ð��:")
(setq tbh 1.2);
)
(defun c:tb1d3()
(princ "���ð��:")
(setq tbh 1.3);
)
(defun c:tb1d5()
(princ "���ð��:")
(setq tbh 1.5);
)
(defun c:tb1d8()
(princ "���ð��:")
(setq tbh 1.8);
)
(defun c:tb2()
(princ "���ð��:")
(setq tbh 2);
)
(defun c:tb2d8()
(princ "���ð��:")
(setq tbh 2.8);
)
(defun c:tb3d5()
(princ "���ð��:")
(setq tbh 3.5);
)
(defun c:tb4d5()
(princ "���ð��:")
(setq tbh 4.5);
(princ)
)
(defun c:tb5d5()
(princ "���ð��:")
(setq tbh 5.5);
)
(defun c:tb7d2()
(princ "���ð��:")
(setq tbh 7.2);
)
(defun c:tb9d5()
(princ "���ð��:")
(setq tbh 9.5);
)
(defun c:tb11()
(princ "���ð��:")
(setq tbh 11);
)

;20200229JPF
;�������ߵ�������
(defun c:zzf()
(progn (princ "\n����--������:")) 
(progn
;ѡ��ֱ��1
(setq ent_l1 (entget (nth 0 (entsel)) ))
;��1�˵�p1��xyzֵ
(setq p1 (cdr(assoc 10 ent_l1 )))
(setq x1 (car p1))
(setq y1 (cadr p1))
(setq z1 (caddr p1))
;��1�˵�p2��xyzֵ
(setq p2 (cdr(assoc 11 ent_l1 )))
(setq x2 (car p2))
(setq y2 (cadr p2))
(setq z2 (caddr p2))
;�����е�����ֵ
(setq px (/ (+ x1 x2) 2))
(setq py (/ (+ y1 y2) 2))
(setq pz (/ (+ z1 z2) 2))

(setq pp1 (list px py pz))
;----
;ѡ��ֱ��2
(setq ent_l1 (entget (nth 0 (entsel)) ))
;��1�˵�p1��xyzֵ
(setq p1 (cdr(assoc 10 ent_l1 )))
(setq x1 (car p1))
(setq y1 (cadr p1))
(setq z1 (caddr p1))
;��1�˵�p2��xyzֵ
(setq p2 (cdr(assoc 11 ent_l1 )))
(setq x2 (car p2))
(setq y2 (cadr p2))
(setq z2 (caddr p2))
;�����е�����ֵ
(setq px (/ (+ x1 x2) 2))
(setq py (/ (+ y1 y2) 2))
(setq pz (/ (+ z1 z2) 2))

(setq pp2 (list px py pz))
;����������
(setvar "osmode" 0);;�رղ�׽20190520
(command  "line"  pp1  pp2  "")
(setvar "osmode" 16383);;��׽20190520
(princ) 
  );progn
)


;20200229JPF
;�����ۺ���--1��5���µĲ������ɹ��ۺ�����ͻ����
(defun c:dfge()
(dfgggg)
(princ)
(command  "erase" ent_ty "" ) 
(princ)
)
;20200229JPF
;�����ۺ���--1��5���µĲ������ɹ��ۺ�����ͻ����
(defun c:dfg()
(dfgggg)
(princ)
)

;20200229JPF20200414w
;�����ۺ���--1��5���µĲ������ɹ��ۺ�����ͻ����
(defun c:dfgg()
  ;����Բ�뾶ʵ��
  ;(setq llw (getreal "�ۺ۳���(3000)���̺�:"))
  ;�ж��Ƿ�����,û�о�Ĭ�����ó�5
  (if (not llw) (setq llw 100))
(dfgx llw)
(princ)
)

;20200229JPF20200414w20200515x
;�����ۺ���--1��5���µĲ������ɹ��ۺ�����ͻ����
(defun c:dfggd()
  ;����Բ�뾶ʵ��
  ;(setq llw (getreal "�ۺ۳���(3000)���̺�:"))
  ;�ж��Ƿ�����,û�о�Ĭ�����ó�5
  ;(if (not llw) (setq llw 10000))
(dfgx 20000)
(princ)
)

;20200229JPF20200414w
;�����ۺ���--1��5���µĲ������ɹ��ۺ�����ͻ����
(defun c:dfggs()
  ;����Բ�뾶ʵ��
  (setq llw (getreal (strcat "�ۺ۳���(" (rtos llw) ")���̺�:") ))
  ;�ж��Ƿ�����,û�о�Ĭ�����ó�5
  (if (not llw) (setq llw 100))
(dfgx llw)
(princ)
)

;20200229JPF
;�����ۺ���--1��5���µĲ������ɹ��ۺ�����ͻ����
(defun dfgggg()
(progn (princ "\n�������ۺ�--ѡ���ۺ�g:")) 
(progn
;ѡ��ֱ��1
(setq ent_ty (nth 0 (entsel)))
(setq ent_l1 (entget ent_ty ))
;��1�˵�p1��xyzֵ
(setq p1 (cdr(assoc 10 ent_l1 )))
(setq x1 (car p1))
(setq y1 (cadr p1))
(setq z1 (caddr p1))
;��1�˵�p2��xyzֵ
(setq p2 (cdr(assoc 11 ent_l1 )))
(setq x2 (car p2))
(setq y2 (cadr p2))
(setq z2 (caddr p2))

;�߳���
(setq ll (distance p1 p2))
(if (> ll 100) (progn
;�߸��˵��б������
(setq lla (angle p1 p2))
(setq llb (angle p2 p1))
;�ۺ���1
(setq pp1 (polar p1 lla 5))
(setq pp2 (polar p1 lla 20))
;�ۺ���2
(setq pp3 (polar p2 llb 5 ))
(setq pp4 (polar p2 llb 20))
;��2�߶˵��2���ۺ���
(setvar "osmode" 0);;�رղ�׽20190520
;;ȡ�õ�ǰ��ɫΪ#os6
;������ɫ
  (setq  os6 (getvar "Cecolor"))
  (setvar "cecolor" "6");�ı䵱ǰ��ɫΪJianPF20201008x
;�������ۺ���
(command  "line"  pp1  pp2  "")
(command  "line"  pp3  pp4  "")
(setvar "Cecolor" os6);��ɫ��ԭ
(setvar "osmode" 16383);;��׽20190520
(princ " -�ۺ�- ");
  );progn
(princ "�ۺ�С��100mm");
);if
);ͷprogon
(princ)
)


;��Բ������fdra--JianPF20200822x
(defun c:fdra()
;��ʼѭ����
(repeat 100 
(progn
;��ȡ����
(setq ent_ty (nth 0 (entsel "ѡ���ػ���Բ��:")))
(setq cent (entget ent_ty ))
;��ȡԲ�뾶ֵ
(setq fdri (cdr (assoc 40 cent)))
;����뾶
(command "fillet" "r" fdri )
(setq ent1 (entsel "\nѡ��1Բ�Ǳ�:"))
(setq ent2 (entsel "\nѡ��1Բ�Ǳ�:"))
(command "fillet" ent1 ent2)
(command "erase" ent_ty "" )
(princ)
)
);����ѭ����
)
;�������в�׽
(defun c:sdes()
(setvar "osmode" 16383);;��׽20190520
)
;�������в�׽
(defun c:sde()
(setvar "osmode" 431);;��׽20190520
)

;20200229JPF..20200414xw
;�����ۺ���--1��5���µĲ������ɹ��ۺ�����ͻ����
(defun dfgx(llw)
(progn (princ "\n�������ۺ�--ѡ���ۺ�gx:")) 
(progn
;ѡ��ֱ��1
(setq ent_ty (nth 0 (entsel)))
(setq ent_l1 (entget ent_ty ))
;��1�˵�p1��xyzֵ
(setq p1 (cdr(assoc 10 ent_l1 )))
(setq x1 (car p1))
(setq y1 (cadr p1))
(setq z1 (caddr p1))
;��1�˵�p2��xyzֵ
(setq p2 (cdr(assoc 11 ent_l1 )))
(setq x2 (car p2))
(setq y2 (cadr p2))
(setq z2 (caddr p2))

;�߳���
(setq ll (distance p1 p2))
(if (> ll llw) (progn
;�߸��˵��б������
(setq lla (angle p1 p2))
(setq llb (angle p2 p1))
;�ۺ���1
(setq pp1 (polar p1 lla 5))
(setq pp2 (polar p1 lla 20))
;�ۺ���2
(setq pp3 (polar p2 llb 5 ))
(setq pp4 (polar p2 llb 20))
;��2�߶˵��2���ۺ���
(setvar "osmode" 0);;�رղ�׽20190520
;;ȡ�õ�ǰ��ɫΪ#os6
;������ɫ
  (setq  os6 (getvar "Cecolor"))
  (setvar "cecolor" "6");�ı䵱ǰ��ɫΪ
(command  "line"  pp1  pp2  "")
(command  "line"  pp3  pp4  "")
(setvar "Cecolor" os6);��ɫ��ԭ
(setvar "osmode" 16383);;��׽20190520
(princ " -�ۺ�- ");
  );progn
(progn
  (princ "�ۺ�С��3100mm");
  (setq lla (angle p1 p2))
(setq llb (angle p2 p1))
;�ۺ���1
(setq pp1 (polar p1 lla 2)) 
;�ۺ���2
(setq pp3 (polar p2 llb 2 ))
;(setq cent (subst(cons 10 pp1)(assoc 10 ent_l1)ent_l1))
;(setq cent (subst(cons 11 pp3)(assoc 11 ent_l1)ent_l1))
;��ʼ�޸�(JianPF20200312)
;(entmod cent)
(setvar "osmode" 0);;�رղ�׽20190520
;;ȡ�õ�ǰ��ɫΪ#os6
;������ɫ
  (setq  os6 (getvar "Cecolor"))
  (setvar "cecolor" "6");�ı䵱ǰ��ɫΪ
(command  "line"  pp1  pp3  "")
(setvar "Cecolor" os6);��ɫ��ԭ
(setvar "osmode" 16383);;��׽20190520
;(setq ent_ty (cdr(assoc -1 ent_l1 )))
;ɾ��ѡ���ͼԪ��
;;(command  "erase" ent_ty "" ) 
);else progn
);if
);ͷprogon
  
;����ɾ��ѡ���ͼԪ��
(command  "erase" ent_ty "" ) 
(princ)
)

;20180902JPF20200302w
;��ȡ��עֵ��ƫ��rat
(defun c:rat()
(command  "offset" (- bzz (* tbh 1) ) ) 
(princ) 
  )
;20180902JPF20200302w
;��ȡ��עֵ��ƫ��aftt
(defun c:ratt()
(command  "offset" (- bzz (* tbh 2) ) ) 
(princ) 
  )
;20180902JPF20200302w
;��ȡ��עֵ��ƫ��afttt
(defun c:rattt()
(command  "offset" (- bzz (* tbh 3) ) ) 
(princ) 
  )

;20200302wJPF
;��ȡ��עֵ������fatttwһ��ƫ��fatttw
(defun c:fatttw()
;�жϰ���Ƿ����
(if (not tbh) (setq tbh (getreal "\n���:")))
(progn (princ "\nѡ��--��ע����1:")) 
(progn
;ѡ���ע����
(setq ent_bz (entget (nth 0 (entsel "ѡ��-��ע1")) ))
;�жϵ��1�Ƿ�" "��ֵ
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;��ֵbzz=ʵ�ʱ�ע���42,�����bzz=�ֶ���ע1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
(progn (princ "\nѡ��--��ע����2:")) 
(progn
;ѡ���ע����
(setq ent_bz (entget (nth 0 (entsel "ѡ��-��ע2")) ))
;�жϵ��1�Ƿ�" "��ֵ
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;��ֵbzz=ʵ�ʱ�ע���42,�����bzz=�ֶ���ע1
(if (= ent_bz1 "") (setq bzz2 ent_bz42) (setq bzz2 ent_bz1))
)
(progn (princ "\nѡ��--��ע����3:")) 
(progn
;ѡ���ע����
(setq ent_bz (entget (nth 0 (entsel "ѡ��-��ע3")) ))
;�жϵ��1�Ƿ�" "��ֵ
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;��ֵbzz=ʵ�ʱ�ע���42,�����bzz=�ֶ���ע1
(if (= ent_bz1 "") (setq bzz3 ent_bz42) (setq bzz3 ent_bz1))
)
(princ) 
)

;20200302wJPF
;��ȡ��עֵһ��ƫ��fatttw������rfat
(defun c:rfat()
;�жϰ���Ƿ����
(if (not tbh) (setq tbh (getreal "\n���:")))
(princ "\n��--��ע1:")
(command  "offset" (- bzz (* tbh 1) )  ) 
(princ) 
)
;20200302wJPF
;��ȡ��עֵһ��ƫ��fatttw������ratt
(defun c:rfatt()
;�жϰ���Ƿ����
(if (not tbh) (setq tbh (getreal "\n���:")))
(princ "\n��--��ע2:")
(command  "offset" (- bzz2 (* tbh 2) ) ) 
(princ) 
)
;20200302wJPF
;��ȡ��עֵһ��ƫ��fatttw������rattt
(defun c:rfattt()
;�жϰ���Ƿ����
(if (not tbh) (setq tbh (getreal "\n���:")))
(princ "\n��--��ע3:")
(command  "offset" (- bzz3 (* tbh 1) ) ) 
(princ) 
)

;--------------------
;jianPF20200626x�п����ۺ�
;�п�����ddg  jpf20190123x
(defun c:ddg()
(setq p1 (list (getpoint) (getpoint)) )
(setq p2 (list (getpoint) (getpoint)) )
(setq p2 (list (getpoint) (getpoint)) )
;ѡ��ֱ��1
(setq ent_ty (nth 0 (entsel)))
(setq ent_l1 (entget ent_ty ))
;��1�˵�p1��xyzֵ
(setq p1 (cdr(assoc 10 ent_l1 )))
(setq x1 (car p1))
(setq y1 (cadr p1))
(setq z1 (caddr p1))
;��1�˵�p2��xyzֵ
(setq p2 (cdr(assoc 11 ent_l1 )))
(setq x2 (car p2))
(setq y2 (cadr p2))
(setq z2 (caddr p2))

;�߳���
(setq ll (distance p1 p2))
  
)

;��ע-Ԥ��ֵJianPF20201009x
(defun c:rrfa()
  (if rrfss () (setq rrfx (getreal "Ԥ��ֵ:")))
  (setq ww (getreal "Ԥ����ע����ֵ:"))
  (if ww () (setq ww (raval)))
  (setq rrfse (- ww rrfx ))
  (getreal (strcat  "Ԥ����� " (rtos ww) " - " (rtos rrfx) " = " (rtos rrfse) ":"))
)
;��ע-Ԥ��ֵJianPF20201009x
(defun c:rrf()
  (if rrfx () (setq rrfx (getreal "����x����:")))
  (if rrfy () (setq rrfy (getreal "����y����:")))
  (setq ww (getreal "�������:"))
  (if ww () (setq ww (raval)))
  (setq rrfsx (-  rrfx  ww))
  (setq rrfsy (-  rrfy  ww))
  (getreal (strcat  "����ʣ��x: " (rtos rrfx) " - " (rtos ww) " = " (rtos rrfsx) "\n"  "����ʣ��y: " (rtos rrfy) " - " (rtos ww) " = " (rtos rrfsy) ))
  (getreal (strcat  ))
)

;��ע-Ԥ��ֵ ����ֵJianPF20201009x
(defun c:rrfsxy()
  (setq rrfx (getreal "����x����:"))
  (setq rrfy (getreal "����y����:"))
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