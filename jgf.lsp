
;JianPF20201010��ƽ��չ������������ִ��
;zkj�ۿۼ����
;a3_���ͺ�_����
;s0_�����201_����
;ss_�����304_���
;_aa_�ֶ�����

;����Ѽ۸��
;�г�(��m) (����n) (����λ) (�ۿۼ�k)
(setq zkj 1.1)
(setq zdj 25);������׼�
(setq a3_1    (list 0.9 0.1 0 zkj))
(setq a3_1_2  (list 1.2 0.1 0 zkj))
(setq a3_1_5  (list 1.3 0.2 0 zkj))
(setq a3_2    (list 1.8 0.2 0 zkj))
(setq a3_2_5  (list 2.3 0.2 0 zkj))
(setq a3_3    (list 2.6 0.3 0 zkj))
(setq a3_4    (list 3.2 0.3 0 zkj))
(setq a3_5    (list 3.8 0.4 0 zkj))
(setq a3_6    (list 4.5 0.4 0 zkj))
(setq a3_8    (list 5.5 0.5 0 zkj))
(setq a3_10   (list 6.5 0.6 0 zkj))
(setq a3_12   (list 8   0.9 0 zkj))
(setq a3_14   (list 12  1.2 0 zkj))
(setq a3_16   (list 16  1.5 0 zkj))
(setq a3_18   (list 25  1.8 0 zkj))
(setq a3_20   (list 30  2   0 zkj))
;------------------------------
(setq s0_0_7  (list 0.9  0.1  0  zkj))
(setq s0_0_8  (list 0.9  0.1  0  zkj))
(setq s0_0_9  (list 0.9  0.1  0  zkj))
(setq s0_1    (list 0.9  0.1  0  zkj))
(setq s0_1_2  (list 1.1  0.1  0  zkj))
(setq s0_1_5  (list 1.5  0.2  0  zkj))
(setq s0_2    (list 1.8  0.2  0  zkj))
(setq s0_2_5  (list 2.2  0.22 0  zkj))
(setq s0_3    (list 3    0.3  0  zkj))
(setq s0_4    (list 4    0.35 0  zkj))
(setq s0_5    (list 5.2  0.5  0  zkj))
(setq s0_6    (list 6.5  0.8  0  zkj))
(setq s0_8    (list 9    1    0  zkj))
(setq s0_10   (list 11.5 1.5  0  zkj))
(setq s0_12   (list 13.5 1.8  0  zkj))
;-----------------------------------

;���ϼ۸��
;(ƽ����) (С�����) (�������) (�ۿۼ�)
(setq zkc 1.1)
(setq czdj 5);������׼�
(setq cmdp 0.000001);���Ϻ���ת�׽���
(setq cmd 7.85 );�����ܶ���7.85
(setq ckg 5);���Ϻ��5
(setq ctbh 0);���Ϻ��5
(setq ca3_0_8  (list 45  70 105 zkc))
(setq ca3_1    (list 54  83 126 zkc))
(setq ca3_1_2  (list 64  97 150 zkc))
(setq ca3_1_5  (list 108 115 175 zkc))
(setq ca3_2    (list 125 150 240 zkc))
(setq ca3_2_5  (list 150 135 135 zkc))
(setq ca3_3    (list 160 150 150 zkc))
(setq ca3_4    (list 200 185 185 zkc))
(setq ca3_5    (list 240 225 225 zkc))
(setq ca3_6    (list 280 260 260 zkc))
(setq ca3_8    (list (* 8  (* ckg (* cmd cmdp)) ) 0  0 zkc))
(setq ca3_10   (list (* 10 (* ckg (* cmd cmdp)) ) 0  0 zkc))
(setq ca3_12   (list (* 12 (* ckg (* cmd cmdp)) ) 0  0 zkc))
(setq ca3_14   (list (* 14 (* ckg (* cmd cmdp)) ) 0  0 zkc))
(setq ca3_16   (list (* 16 (* ckg (* cmd cmdp)) ) 0  0 zkc))
(setq ca3_18   (list (* 18 (* ckg (* cmd cmdp)) ) 0  0 zkc))
(setq ca3_20   (list (* 20 (* ckg (* cmd cmdp)) ) 0  0 zkc))
(setq ca3_aa   (list (* ctbh (* ckg (* cmd cmdp)) ) 0  0 zkc))
;------------------------------
;cs01=201
(setq cs01_0_7  (list 60  80 112   zkc))
(setq cs01_0_8  (list 70  90 130   zkc))
(setq cs01_0_9  (list 80  102 150   zkc))
(setq cs01_1    (list 90  115 165   zkc))
(setq cs01_1_2  (list 110 140 202   zkc))
(setq cs01_1_5  (list 150 182 255   zkc))
(setq cs01_2    (list 200 240 355   zkc))
(setq cs01_2_5  (list 270 370 540  zkc))
(setq cs01_3    (list 340 370 540   zkc))
(setq cs01_4    (list 460 545 685  zkc))
(setq cs01_5    (list 590 710 900   zkc))
(setq cs01_6    (list 750 920 1350   zkc))
(setq cs01_8    (list 0000 0000     zkc))
(setq cs01_10   (list 0000 0000   zkc))
(setq cs01_12   (list 0000 0000   zkc))
;------------------------------
;cs04=304
(setq cs04_0_7  (list 85   125 185   zkc))
(setq cs04_0_8  (list 100  135 220   zkc))
(setq cs04_0_9  (list 115  175 258   zkc))
(setq cs04_1    (list 135  200 295   zkc))
(setq cs04_1_2  (list 170  250 368   zkc))
(setq cs04_1_5  (list 240  325 480   zkc))
(setq cs04_2    (list 310  430 635   zkc))
(setq cs04_2_5  (list 450  688 1015  zkc))
(setq cs04_3    (list 530  688 1015   zkc))
(setq cs04_4    (list 700  1250 1775  zkc))
(setq cs04_5    (list 900  0000 0000  zkc))
(setq cs04_6    (list 1060 0000 0000  zkc))
(setq cs04_8    (list 0000 0000 0000  zkc))
(setq cs04_10   (list 0000 0000 0000  zkc))
(setq cs04_12   (list 0000 0000 0000  zkc))

;cd0=��п��1000*2000
(setq cd0_0_45 (list 21  0.4   zkc))
(setq cd0_0_5  (list 22  0.4   zkc))
(setq cd0_0_6  (list 26  0.4   zkc))
(setq cd0_0_7  (list 29  65   zkc))
(setq cd0_0_8  (list 32  70   zkc))
(setq cd0_0_9  (list 36  76   zkc))
(setq cd0_1    (list 41  82   zkc))
(setq cd0_1_2  (list 50  97   zkc))
(setq cd0_1_5  (list 0   112  zkc))
(setq cd0_2    (list 0   160   zkc))
(setq cd0_2_5  (list 0   0000  zkc))
(setq cd0_3    (list 0   0000   zkc))
(setq cd0_4    (list 0   0000  zkc))
(setq cd0_5    (list 0   0000   zkc))
(setq cd0_6    (list 0   0000   zkc))



;(car a3_1)
;(cadr s0_12)
;(caddr s0_12)
;(cadddr s0_12) 

;-------------------------------------------
;20181028jianpf-20201010sJianPF
;����Ѽ���
(defun c:ggf()
(if (not rsth) (setq rsth 60))
;�����г̺ʹ��״���
(setq jgxc (getreal "�����г�(��m)"))
(setq jgcn (getreal "���Ӵ���(����cn)"))
(setq jgfz 0) ;�������
;���
;(setq ctbh (getreal "\n���Ϸ� ��� T:")) 
;����:
(progn
(initget "0 1 2 3 4 5 6 7 8 201 304")
(setq getw (getkword "������� [-���(0)/-A3��(1)/201(2)/304(3)/����(4)/-�����ư�(5)/��п��(6)/���ϲ����(7)/������(8)]" ))	    
(princ getw)
(cond
((= getw "0") (setq cailiao  "���"))
((= getw "1") (setq cailiao "A3��"))
((= getw "2") (setq cailiao "201"))
((= getw "201") (setq cailiao "201"))
((= getw "3") (setq cailiao "304"))
((= getw "304") (setq cailiao "304"))
((= getw "4") (setq cailiao "����"))
((= getw "5") (setq cailiao "�����ư�"))
((= getw "6") (setq cailiao "��п��"))
((= getw "7") (setq cailiao "���ϲ����"))
((= getw "8") (setq cailiao "������"))
((= getw nil) (setq cailiao  "���"))
);end cond
);end progn
;��������JianPF20201011s
;(setq qty (getreal"\n���������QTY:"))
(if (not qty) (setq qty 1))
;�жϲ���
(setq cailiaos 0)
(if (= cailiao "���") (setq cailiaos 1) )
(if (= cailiao "A3��") (setq cailiaos 1) )
(if (= cailiao "�����ư�") (setq cailiaos 1) )
;-----
(if (= cailiao "201") (setq cailiaos 2) )
(if (= cailiao "304") (setq cailiaos 2) )
(if (= cailiao "����") (setq cailiaos 2) )
(if (= cailiao "��п��") (setq cailiaos 2) )
(if (= cailiao "���ϲ����") (setq cailiaos 2) )
(if (= cailiao "������") (setq cailiaos 2) )


;���
(setq ctbh 0) 
;����:
(if  (= cailiaos 1 )    
(progn
(initget "1 1.2 1.5 2 2.5 3 4 5 6 8 10 12 14 16 18 20")
(setq getw (getkword "�� ���:[1(1)/1.2(1.2)/1.5(1.5)/2(2)/2.5(2.5)/3(3)/4(4)/5(5)/6(6)/8(8)/10(10)/12(12)/14(14)/16(16)/18(18)/20(20)]" ))	    
(princ getw)
(cond
((= getw "1") (setq ctbh  1))
((= getw "1.2") (setq ctbh  1.2))
((= getw "1.5") (setq ctbh  1.5))
((= getw "2") (setq ctbh  2))
((= getw "2.5") (setq ctbh  2.5))
((= getw "3") (setq ctbh  3))
((= getw "4") (setq ctbh  4))
((= getw "5") (setq ctbh  5))
((= getw "6") (setq ctbh  6))
((= getw "8") (setq ctbh  8))
((= getw "10") (setq ctbh  10))
((= getw "12") (setq ctbh  12))
((= getw "14") (setq ctbh  14))
((= getw "16") (setq ctbh  16))
((= getw "18") (setq ctbh  18))
((= getw "20") (setq ctbh  20))
);end cond
);end progn
);������if
(if  (= cailiaos 2 )    
(progn
(initget "0.5 0.7 0.8 0.9 1 1.2 1.5 2 2.5 3 4 5 6 8 10 12 14 16 18 20");0.7(0.7)/0.8(0.8)/0.9(0.9)/
(setq getw (getkword "����� ���:[1(1)/1.2(1.2)/1.5(1.5)/2(2)/2.5(2.5)/3(3)/4(4)/5(5)/6(6)/8(8)/10(10)/12(12)/14(14)/16(16)/18(18)/20(20)]" ))	    
(princ getw)
(cond
((= getw "1") (setq ctbh  1))
((= getw "1.2") (setq ctbh  1.2))
((= getw "1.5") (setq ctbh  1.5))
((= getw "2") (setq ctbh  2))
((= getw "2.5") (setq ctbh  2.5))
((= getw "3") (setq ctbh  3))
((= getw "4") (setq ctbh  4))
((= getw "5") (setq ctbh  5))
((= getw "6") (setq ctbh  6))
((= getw "8") (setq ctbh  8))
((= getw "10") (setq ctbh 10))
((= getw "12") (setq ctbh  12))
((= getw "14") (setq ctbh  14))
((= getw "16") (setq ctbh  16))
((= getw "18") (setq ctbh  18))
((= getw "20") (setq ctbh  20))
);end cond
);end progn
);���������if




  
;�жϲ��Ϻͺ��
(if (and (= cailiaos 1 ) (= ctbh 1) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_1) (cadr a3_1) qty (cadddr a3_1)   ))
);����if
(if (and (= cailiaos 1 ) (= ctbh 1.2) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_1_2) (cadr a3_1_2) qty (cadddr a3_1_2)   ))
);����if
(if (and (= cailiaos 1 ) (= ctbh 1.5) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_1_5) (cadr a3_1_5) qty (cadddr a3_1_5)   ))
);����if
(if (and (= cailiaos 1 ) (= ctbh 2) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_2) (cadr a3_2) qty (cadddr a3_2)   ))
);����if
(if (and (= cailiaos 1 ) (= ctbh 2.5) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_2_5) (cadr a3_2_5) qty (cadddr a3_2_5)   ))
);����if
(if (and (= cailiaos 1 ) (= ctbh 3) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_3) (cadr a3_3) qty (cadddr a3_3)   ))
);����if
(if (and (= cailiaos 1 ) (= ctbh 4) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_4) (cadr a3_4) qty (cadddr a3_4)   ))
);����if
(if (and (= cailiaos 1 ) (= ctbh 5) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_5) (cadr a3_5) qty (cadddr a3_5)   ))
);����if
(if (and (= cailiaos 1 ) (= ctbh 6) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_6) (cadr a3_6) qty (cadddr a3_6)   ))
);����if
(if (and (= cailiaos 1 ) (= ctbh 8) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_8) (cadr a3_8) qty (cadddr a3_8)   ))
);����if
(if (and (= cailiaos 1 ) (= ctbh 10) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_10) (cadr a3_10) qty (cadddr a3_10)   ))
);����if
(if (and (= cailiaos 1 ) (= ctbh 12) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_12) (cadr a3_12) qty (cadddr a3_12)   ))
);����if
(if (and (= cailiaos 1 ) (= ctbh 14) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_14) (cadr a3_14) qty (cadddr a3_14)   ))
);����if
(if (and (= cailiaos 1 ) (= ctbh 16) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_16) (cadr a3_16) qty (cadddr a3_16)   ))
);����if
(if (and (= cailiaos 1 ) (= ctbh 18) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_18) (cadr a3_18) qty (cadddr a3_18)   ))
);����if
(if (and (= cailiaos 1 ) (= ctbh 20) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_20) (cadr a3_20) qty (cadddr a3_20)   ))
);����if
;s-------------------
;�жϲ��Ϻͺ��
(if (and (= cailiaos 2 ) (= ctbh 0.7) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_0_7) (cadr s0_0_7) qty (cadddr s0_0_7)   ))
);����if
(if (and (= cailiaos 2 ) (= ctbh 0.8) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_0_8) (cadr s0_0_8) qty (cadddr a3_1_2)   ))
);����if
(if (and (= cailiaos 2 ) (= ctbh 0.9) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_0_9) (cadr s0_0_9) qty (cadddr a3_1_5)   ))
);����if
(if (and (= cailiaos 2 ) (= ctbh 1) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_1) (cadr s0_1) qty (cadddr s0_1)   ))
);����if
(if (and (= cailiaos 2 ) (= ctbh 1.2) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_1_2) (cadr s0_1_2) qty (cadddr s0_1_2)   ))
);����if
(if (and (= cailiaos 2 ) (= ctbh 1.5) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_1_5) (cadr s0_1_5) qty (cadddr s0_1_5)   ))
);����if
(if (and (= cailiaos 2 ) (= ctbh 2) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_2) (cadr s0_2) qty (cadddr s0_2)   ))
);����if
(if (and (= cailiaos 2 ) (= ctbh 2.5) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_2_5) (cadr s0_2_5) qty (cadddr s0_2_5)   ))
);����if
(if (and (= cailiaos 2 ) (= ctbh 3) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_3) (cadr s0_3) qty (cadddr s0_3)   ))
);����if
(if (and (= cailiaos 2 ) (= ctbh 4) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_4) (cadr s0_4) qty (cadddr s0_4)   ))
);����if
(if (and (= cailiaos 2 ) (= ctbh 5) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_5) (cadr s0_5) qty (cadddr s0_5)   ))
);����if
(if (and (= cailiaos 2 ) (= ctbh 6) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_6) (cadr s0_6) qty (cadddr s0_6)   ))
);����if
(if (and (= cailiaos 2 ) (= ctbh 8) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_8) (cadr s0_8) qty (cadddr s0_8)   ))
);����if
(if (and (= cailiaos 2 ) (= ctbh 10) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_10) (cadr s0_10) qty (cadddr s0_10)   ))
);����if
(if (and (= cailiaos 2 ) (= ctbh 12) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_12) (cadr s0_12) qty (cadddr s0_12)   ))
);����if

  
;�ж��𲽼�JianPF20201012x
(setq jgfqbj 25)
(if (< jgfz 25) (setq jgfqbjstr (strcat "	�𲽼�: "(rtos jgfqbj)" Ԫ" )) (setq jgfqbjstr ""))
;����ı�------------
(if (not rsth) (setq rsth 60))
(setq txtpit (getpoint "\nճ�� ������ı�λ��:"))
(setq strt (strcat "T"(rtos ctbh)" "cailiao" " (rtos qty)"�� �����="(rtos jgfz)"Ԫ "jgfqbjstr ))
(if (= jgfz 0) (setq strt (strcat "T"(rtos ctbh)" "cailiao" " (rtos qty)"�� " "  û������ϻ���")))
(command "text" txtpit  rsth 0 strt )
(setq strt (strcat "�г�:"(rtos jgxc)"(��)����:"(rtos jgcn)"(��)" ))
(setq txtpit (list (car txtpit) (- (cadr txtpit) 110)))
(command "text" txtpit  (/ rsth 2) 0 strt )


;(setq txtpit (list (car txtpit) (- (cadr txtpit) 80)))
;(setq str (strcat "������𲽼�: "(rtos jgfqbj)" Ԫ" ))
;(command "text" txtpit  (/ rsth 2) 0 str )
)







;-------------------------------------------
;20181028jianpf-20201010sJianPF
;���ϷѼ���
(defun c:ccft()
;�����г̺ʹ��״���
(setq clcd (getstring "���ϳߴ�(��mm)"))
(setq clkd (getstring "���ϳߴ�(��mm)"))
(setq clcn (getstring "��������(��n)"))
(if (not rsth) (setq rsth 60))
(setq txtpit (getpoint "\nճ�� ���Ϸ��ı�λ��:"))
(setq strt (strcat "���ϳߴ�(����mm): ��*��*�� =:" clcd "*" clkd "*" clcn ))
;(if (= jgfz 0) (setq strt (strcat "T"(rtos ctbh)" "cailiao" " (rtos qty)"�� " "  û������ϻ���")))
(command "text" txtpit  rsth 0 strt )
;(setq strt (strcat "�г�:"(rtos jgxc)"(��)����:"(rtos jgcn)"(��)" ))
;(setq txtpit (list (car txtpit) (- (cadr txtpit) 110)))
;(command "text" txtpit  (/ rsth 2) 0 strt )

)

;-------------------------------------------
;20201012wJianPF
;���ϷѼ���
(defun c:ccf()
;�����г̺ʹ��״���
(setq clcd (getreal "���ϳߴ�(��mm)"))
(setq clkd (getreal "���ϳߴ�(��mm)"))
(setq clcn (getreal"\n��������( 1 ��n):"))
(if (not clcn) (setq clcn 1))
;���Ϻ��
(if (= ctbh 0) (setq ctbh (getreal"\n���Ϻ��:")))
(if (not ctbh ) (setq ctbh (getreal"\n���Ϻ��:")))
;���ϼ���
;(setq cmdp 0.000001);���Ϻ���ת�׽��� ;�����������:����*���mm*��mm*��mm*�������/�ܶ�
(if (and (or (= cailiao "A3��")   (= cailiao "���") (= cailiao "�����ư�"))  (= ctbh 0.8)) (progn
(setq clist ca3_0_8) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3��")   (= cailiao "���") (= cailiao "�����ư�"))  (= ctbh 1)) (progn				 
(setq clist ca3_1) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3��")   (= cailiao "���") (= cailiao "�����ư�"))  (= ctbh 1.2)) (progn				 
(setq clist ca3_1_2) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3��")   (= cailiao "���") (= cailiao "�����ư�"))  (= ctbh 1.5)) (progn				 
(setq clist ca3_1_5) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3��")   (= cailiao "���") (= cailiao "�����ư�"))  (= ctbh 2)) (progn				 
(setq clist ca3_1_5) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3��")   (= cailiao "���") (= cailiao "�����ư�"))  (= ctbh 2.5)) (progn				 
(setq clist ca3_2_5) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3��")   (= cailiao "���") (= cailiao "�����ư�"))  (= ctbh 3)) (progn				 
(setq clist ca3_3) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3��")   (= cailiao "���") (= cailiao "�����ư�"))  (= ctbh 4)) (progn				 
(setq clist ca3_4) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3��")   (= cailiao "���") (= cailiao "�����ư�"))  (= ctbh 5)) (progn				 
(setq clist ca3_5) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3��")   (= cailiao "���") (= cailiao "�����ư�"))  (= ctbh 6)) (progn				 
(setq clist ca3_6) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3��")   (= cailiao "���") (= cailiao "�����ư�"))  (= ctbh 8)) (progn				 
(setq clist ca3_8) (setq clmjf (*  ctbh clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3��")   (= cailiao "���") (= cailiao "�����ư�"))  (= ctbh 10)) (progn				 
(setq clist ca3_10) (setq clmjf (*  ctbh clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3��")   (= cailiao "���") (= cailiao "�����ư�"))  (= ctbh 12)) (progn				 
(setq clist ca3_12) (setq clmjf (*  ctbh clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3��")   (= cailiao "���") (= cailiao "�����ư�"))  (= ctbh 14)) (progn				 
(setq clist ca3_14) (setq clmjf (*  ctbh clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3��")   (= cailiao "���") (= cailiao "�����ư�"))  (= ctbh 16)) (progn				 
(setq clist ca3_16) (setq clmjf (*  ctbh clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3��")   (= cailiao "���") (= cailiao "�����ư�"))  (= ctbh 18)) (progn				 
(setq clist ca3_18) (setq clmjf (*  ctbh clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3��")   (= cailiao "���") (= cailiao "�����ư�"))      (= ctbh 20)) (progn				 
(setq clist ca3_20) (setq clmjf (*  ctbh clcd clkd clcn (car clist) cmdp))))
;�����201���ϷѼ���--------------------------------------------------------------------------------
(if (and (= cailiao "201")  (= ctbh 0.8)) (progn				 
(setq clist cs01_0_8) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (= cailiao "201")  (= ctbh 1)) (progn				 
(setq clist cs01_1) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (= cailiao "201")  (= ctbh 1.2)) (progn				 
(setq clist cs01_1_2) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (= cailiao "201")  (= ctbh 1.5)) (progn				 
(setq clist cs01_1_5) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (= cailiao "201")  (= ctbh 2)) (progn				 
(setq clist cs01_2) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (= cailiao "201")  (= ctbh 2.5)) (progn				 
(setq clist cs01_2_5) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (= cailiao "201")  (= ctbh 3)) (progn				 
(setq clist cs01_3) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (= cailiao "201")  (= ctbh 4)) (progn				 
(setq clist cs01_4) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (= cailiao "201")  (= ctbh 5)) (progn				 
(setq clist cs01_5) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (= cailiao "201")  (= ctbh 6)) (progn				 
(setq clist cs01_6) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (= cailiao "201")  (= ctbh 8)) (progn				 
(setq clist cs01_8) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (= cailiao "201")  (= ctbh 10)) (progn				 
(setq clist cs01_10) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (= cailiao "201")  (= ctbh 12)) (progn				 
(setq clist cs01_12) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
;�����304���ϷѼ���--------------------------------------------------------------------------------
(if (and (= cailiao "304")  (= ctbh 0.8)) (progn				 
(setq clist cs04_0_8)(setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (= cailiao "304")  (= ctbh 1)) (progn				 
(setq clist cs04_1)(setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (= cailiao "304")  (= ctbh 1.2)) (progn				 
(setq clist cs04_1_2)(setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (= cailiao "304")  (= ctbh 1.5)) (progn				 
(setq clist cs04_1_5)(setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (= cailiao "304")  (= ctbh 2)) (progn				 
(setq clist cs04_2)(setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (= cailiao "304")  (= ctbh 2.5)) (progn				 
(setq clist cs04_2_5)(setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (= cailiao "304")  (= ctbh 3)) (progn				 
(setq clist cs04_3)(setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (= cailiao "304")  (= ctbh 4)) (progn				 
(setq clist cs04_4)(setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (= cailiao "304")  (= ctbh 5)) (progn				 
(setq clist cs04_5)(setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (= cailiao "304")  (= ctbh 6)) (progn				 
(setq clist cs04_6)(setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (= cailiao "304")  (= ctbh 8)) (progn				 
(setq clist cs04_8)(setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (= cailiao "304")  (= ctbh 10)) (progn				 
(setq clist cs04_10)(setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (= cailiao "304")  (= ctbh 12)) (progn				 
(setq clist cs01_12) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
;xxx���ϷѼ���--------------------------------------------------------------------------------
(if (not rsth) (setq rsth 60))
(setq txtpit (getpoint (strcat "\nճ�� ���Ϸ��ı�λ��:"(rtos clmjf)" Ԫ")))
(setq strt (strcat  "���:"(rtos (cadr clist))"Ԫ/��" "С��:"(rtos (caddr clist))"Ԫ/��" "���*��*��*��*����� = T"(rtos ctbh) " " cailiao "��*" (rtos clcd) "*" (rtos clkd) "*" (rtos clcn) "��*" (rtos (car clist)) "����" " ���Ϸ�="(rtos clmjf) " Ԫ"))
;(if (= jgfz 0) (setq strt (strcat "T"(rtos ctbh)" "cailiao" " (rtos qty)"�� " "  û������ϻ���")))
(command "text" txtpit  rsth 0 strt )
;(setq strt (strcat "�г�:"(rtos jgxc)"(��)����:"(rtos jgcn)"(��)" ))
;(setq txtpit (list (car txtpit) (- (cadr txtpit) 110)))
;(command "text" txtpit  (/ rsth 2) 0 strt )

)
  


;����Ѽ��㺯��( �г� ������� �г̵��� ���嵥�� ���� �����ۿ�(car a3_1)
(defun jgfz_fun(xc cn xcf cnf  qty jgfzk / )
(setq jgxcf   (* jgxc xcf) );�г��ǵ�λ:��
(setq jgcnf (* jgcn cnf))
(setq jgzf (+ jgxcf jgcnf))
(setq jgfk (* jgzf jgfzk))
(setq jgfz (* jgfk qty))
(print (strcat "���:\n" "�г�*�г̵���=�г̷�\n") )
(print (strcat (rtos jgxc) " * " (rtos xcf) " = " (rtos jgxcf) "\n" ) )
(print (strcat "���:\n" "������*���嵥��=�����\n") )
(print (strcat (rtos jgcn) " * " (rtos cnf) " = " (rtos jgcnf) "\n" ) )
(print (strcat "���:\n" "�г̷�+�����=�����\n") )
(print (strcat (rtos jgxcf) " + " (rtos jgcnf) " = " (rtos jgzf) "\n" ) )
(print (strcat "���:\n" "�����*�ۿ���=�ۿۼ����\n") )
(print (strcat (rtos jgzf) " + " (rtos jgfzk) " = " (rtos jgfk) "\n" ) )
(print (strcat "���:\n" "�ۿ۷�*��������=�ܼ����\n") )
(print (strcat (rtos jgfk) " * " (rtos qty) " = " (rtos jgfz) "\n" ) )
(setq jgfz jgfz )  
);��������

 

;
;(defun tryj (a b c d e f g h i j k / )
;  (princ k)
;)
  
;lisp��������
;(defun tryj(������� / ����ֲ�����)
;(setq b (+ 10 a))
;(princ (+ b 5))
;)

;(setq rstext (strcat "T" thb " " cailiao  " " pcs  "PCS"))

;(princ rstext)


;(setq txtpit (getpoint "\n���� �����ı�λ��:"))
;(command "text" txtpit  rsth 0 rstext )

;���
;(setq tbh (getreal "\nʵ�ʺ�� Tbh:")) 

;(princ)


;----------------------




 

;(defun c:tt (/ ie-obj)
;  (setq ie-obj (vlax-get-or-create-object "Msxml2.xmlhttp"))
;  (vlax-invoke-method ie-obj 'open  "get" "https://www.hao123.com/" 0)  
;  (vlax-invoke-method ie-obj 'setRequestHeader  "If-Modified-Since" "q")
;  (vlax-invoke-method ie-obj "Send")
;  (if (= (vlax-get-property ie-obj "readyState" ) 4)
;    (setq s (vlax-invoke-method ie-obj 'getResponseHeader "Date"))
;    (alert "��ȡ��ҳʧ��!")
;    )  
;  (and s (print s))
;  (vlax-release-object ie-obj)
;  (princ)
;  )


;(defun c:br1 ()  (command "break" pause "f" pause "@"))


;(defun c:LsL ()(setvar "cmdecho" 1)(setq en (ssget (list '(0 . "spline,arc,line,ellipse,LWPOLYLINE"))))(setq i 0)(setq ll 0)(repeat (sslength en)  (setq ss (ssname en i))  (setq endata (entget ss))  (command "lengthen" ss "")  (setq dd (getvar "perimeter"))(setq ll (+ dd ll))  (setq i (1+ i)))  (princ "��ѡ�����ܳ�Ϊ��")(princ ll)(princ))