
;JianPF20201010和平发展互助互进必须执行
;zkj折扣激光费
;a3_铁型号_板厚度
;s0_不锈钢201_板厚度
;ss_不锈钢304_板厚
;_aa_手动材料

;激光费价格表
;行程(米m) (孔数n) (保留位) (折扣价k)
(setq zkj 1.1)
(setq zdj 25);激光最底价
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

;材料价格表
;(平方价) (小整板价) (大整板价) (折扣价)
(setq zkc 1.1)
(setq czdj 5);材料最底价
(setq cmdp 0.000001);材料毫米转米进度
(setq cmd 7.85 );材料密度铁7.85
(setq ckg 5);材料厚度5
(setq ctbh 0);材料厚度5
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

;cd0=镀锌板1000*2000
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
;激光费计算
(defun c:ggf()
(if (not rsth) (setq rsth 60))
;激光行程和穿孔次数
(setq jgxc (getreal "激光行程(米m)"))
(setq jgcn (getreal "穿钣次数(次数cn)"))
(setq jgfz 0) ;激光费总
;厚度
;(setq ctbh (getreal "\n材料费 厚度 T:")) 
;材料:
(progn
(initget "0 1 2 3 4 5 6 7 8 201 304")
(setq getw (getkword "激光材料 [-冷板(0)/-A3铁(1)/201(2)/304(3)/来料(4)/-铁花纹板(5)/镀锌板(6)/来料不锈钢(7)/来料铝(8)]" ))	    
(princ getw)
(cond
((= getw "0") (setq cailiao  "冷板"))
((= getw "1") (setq cailiao "A3铁"))
((= getw "2") (setq cailiao "201"))
((= getw "201") (setq cailiao "201"))
((= getw "3") (setq cailiao "304"))
((= getw "304") (setq cailiao "304"))
((= getw "4") (setq cailiao "来料"))
((= getw "5") (setq cailiao "铁花纹板"))
((= getw "6") (setq cailiao "镀锌板"))
((= getw "7") (setq cailiao "来料不锈钢"))
((= getw "8") (setq cailiao "来料铝"))
((= getw nil) (setq cailiao  "冷板"))
);end cond
);end progn
;激光数量JianPF20201011s
;(setq qty (getreal"\n激光费批数QTY:"))
(if (not qty) (setq qty 1))
;判断材料
(setq cailiaos 0)
(if (= cailiao "冷板") (setq cailiaos 1) )
(if (= cailiao "A3铁") (setq cailiaos 1) )
(if (= cailiao "铁花纹板") (setq cailiaos 1) )
;-----
(if (= cailiao "201") (setq cailiaos 2) )
(if (= cailiao "304") (setq cailiaos 2) )
(if (= cailiao "来料") (setq cailiaos 2) )
(if (= cailiao "镀锌板") (setq cailiaos 2) )
(if (= cailiao "来料不锈钢") (setq cailiaos 2) )
(if (= cailiao "来料铝") (setq cailiaos 2) )


;厚度
(setq ctbh 0) 
;材料:
(if  (= cailiaos 1 )    
(progn
(initget "1 1.2 1.5 2 2.5 3 4 5 6 8 10 12 14 16 18 20")
(setq getw (getkword "铁 厚度:[1(1)/1.2(1.2)/1.5(1.5)/2(2)/2.5(2.5)/3(3)/4(4)/5(5)/6(6)/8(8)/10(10)/12(12)/14(14)/16(16)/18(18)/20(20)]" ))	    
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
);结束铁if
(if  (= cailiaos 2 )    
(progn
(initget "0.5 0.7 0.8 0.9 1 1.2 1.5 2 2.5 3 4 5 6 8 10 12 14 16 18 20");0.7(0.7)/0.8(0.8)/0.9(0.9)/
(setq getw (getkword "不锈钢 厚度:[1(1)/1.2(1.2)/1.5(1.5)/2(2)/2.5(2.5)/3(3)/4(4)/5(5)/6(6)/8(8)/10(10)/12(12)/14(14)/16(16)/18(18)/20(20)]" ))	    
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
);结束不锈钢if




  
;判断材料和厚度
(if (and (= cailiaos 1 ) (= ctbh 1) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_1) (cadr a3_1) qty (cadddr a3_1)   ))
);结束if
(if (and (= cailiaos 1 ) (= ctbh 1.2) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_1_2) (cadr a3_1_2) qty (cadddr a3_1_2)   ))
);结束if
(if (and (= cailiaos 1 ) (= ctbh 1.5) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_1_5) (cadr a3_1_5) qty (cadddr a3_1_5)   ))
);结束if
(if (and (= cailiaos 1 ) (= ctbh 2) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_2) (cadr a3_2) qty (cadddr a3_2)   ))
);结束if
(if (and (= cailiaos 1 ) (= ctbh 2.5) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_2_5) (cadr a3_2_5) qty (cadddr a3_2_5)   ))
);结束if
(if (and (= cailiaos 1 ) (= ctbh 3) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_3) (cadr a3_3) qty (cadddr a3_3)   ))
);结束if
(if (and (= cailiaos 1 ) (= ctbh 4) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_4) (cadr a3_4) qty (cadddr a3_4)   ))
);结束if
(if (and (= cailiaos 1 ) (= ctbh 5) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_5) (cadr a3_5) qty (cadddr a3_5)   ))
);结束if
(if (and (= cailiaos 1 ) (= ctbh 6) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_6) (cadr a3_6) qty (cadddr a3_6)   ))
);结束if
(if (and (= cailiaos 1 ) (= ctbh 8) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_8) (cadr a3_8) qty (cadddr a3_8)   ))
);结束if
(if (and (= cailiaos 1 ) (= ctbh 10) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_10) (cadr a3_10) qty (cadddr a3_10)   ))
);结束if
(if (and (= cailiaos 1 ) (= ctbh 12) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_12) (cadr a3_12) qty (cadddr a3_12)   ))
);结束if
(if (and (= cailiaos 1 ) (= ctbh 14) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_14) (cadr a3_14) qty (cadddr a3_14)   ))
);结束if
(if (and (= cailiaos 1 ) (= ctbh 16) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_16) (cadr a3_16) qty (cadddr a3_16)   ))
);结束if
(if (and (= cailiaos 1 ) (= ctbh 18) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_18) (cadr a3_18) qty (cadddr a3_18)   ))
);结束if
(if (and (= cailiaos 1 ) (= ctbh 20) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car a3_20) (cadr a3_20) qty (cadddr a3_20)   ))
);结束if
;s-------------------
;判断材料和厚度
(if (and (= cailiaos 2 ) (= ctbh 0.7) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_0_7) (cadr s0_0_7) qty (cadddr s0_0_7)   ))
);结束if
(if (and (= cailiaos 2 ) (= ctbh 0.8) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_0_8) (cadr s0_0_8) qty (cadddr a3_1_2)   ))
);结束if
(if (and (= cailiaos 2 ) (= ctbh 0.9) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_0_9) (cadr s0_0_9) qty (cadddr a3_1_5)   ))
);结束if
(if (and (= cailiaos 2 ) (= ctbh 1) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_1) (cadr s0_1) qty (cadddr s0_1)   ))
);结束if
(if (and (= cailiaos 2 ) (= ctbh 1.2) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_1_2) (cadr s0_1_2) qty (cadddr s0_1_2)   ))
);结束if
(if (and (= cailiaos 2 ) (= ctbh 1.5) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_1_5) (cadr s0_1_5) qty (cadddr s0_1_5)   ))
);结束if
(if (and (= cailiaos 2 ) (= ctbh 2) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_2) (cadr s0_2) qty (cadddr s0_2)   ))
);结束if
(if (and (= cailiaos 2 ) (= ctbh 2.5) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_2_5) (cadr s0_2_5) qty (cadddr s0_2_5)   ))
);结束if
(if (and (= cailiaos 2 ) (= ctbh 3) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_3) (cadr s0_3) qty (cadddr s0_3)   ))
);结束if
(if (and (= cailiaos 2 ) (= ctbh 4) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_4) (cadr s0_4) qty (cadddr s0_4)   ))
);结束if
(if (and (= cailiaos 2 ) (= ctbh 5) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_5) (cadr s0_5) qty (cadddr s0_5)   ))
);结束if
(if (and (= cailiaos 2 ) (= ctbh 6) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_6) (cadr s0_6) qty (cadddr s0_6)   ))
);结束if
(if (and (= cailiaos 2 ) (= ctbh 8) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_8) (cadr s0_8) qty (cadddr s0_8)   ))
);结束if
(if (and (= cailiaos 2 ) (= ctbh 10) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_10) (cadr s0_10) qty (cadddr s0_10)   ))
);结束if
(if (and (= cailiaos 2 ) (= ctbh 12) ) 
(setq jgfz (jgfz_fun jgxc jgcn (car s0_12) (cadr s0_12) qty (cadddr s0_12)   ))
);结束if

  
;判断起步价JianPF20201012x
(setq jgfqbj 25)
(if (< jgfz 25) (setq jgfqbjstr (strcat "	起步价: "(rtos jgfqbj)" 元" )) (setq jgfqbjstr ""))
;结果文本------------
(if (not rsth) (setq rsth 60))
(setq txtpit (getpoint "\n粘贴 激光费文本位置:"))
(setq strt (strcat "T"(rtos ctbh)" "cailiao" " (rtos qty)"批 激光费="(rtos jgfz)"元 "jgfqbjstr ))
(if (= jgfz 0) (setq strt (strcat "T"(rtos ctbh)" "cailiao" " (rtos qty)"批 " "  没有这材料或厚度")))
(command "text" txtpit  rsth 0 strt )
(setq strt (strcat "行程:"(rtos jgxc)"(米)穿板:"(rtos jgcn)"(次)" ))
(setq txtpit (list (car txtpit) (- (cadr txtpit) 110)))
(command "text" txtpit  (/ rsth 2) 0 strt )


;(setq txtpit (list (car txtpit) (- (cadr txtpit) 80)))
;(setq str (strcat "激光费起步价: "(rtos jgfqbj)" 元" ))
;(command "text" txtpit  (/ rsth 2) 0 str )
)







;-------------------------------------------
;20181028jianpf-20201010sJianPF
;材料费计算
(defun c:ccft()
;激光行程和穿孔次数
(setq clcd (getstring "下料尺寸(长mm)"))
(setq clkd (getstring "下料尺寸(宽mm)"))
(setq clcn (getstring "下料数量(块n)"))
(if (not rsth) (setq rsth 60))
(setq txtpit (getpoint "\n粘贴 材料费文本位置:"))
(setq strt (strcat "材料尺寸(毫米mm): 长*宽*块 =:" clcd "*" clkd "*" clcn ))
;(if (= jgfz 0) (setq strt (strcat "T"(rtos ctbh)" "cailiao" " (rtos qty)"批 " "  没有这材料或厚度")))
(command "text" txtpit  rsth 0 strt )
;(setq strt (strcat "行程:"(rtos jgxc)"(米)穿板:"(rtos jgcn)"(次)" ))
;(setq txtpit (list (car txtpit) (- (cadr txtpit) 110)))
;(command "text" txtpit  (/ rsth 2) 0 strt )

)

;-------------------------------------------
;20201012wJianPF
;材料费计算
(defun c:ccf()
;激光行程和穿孔次数
(setq clcd (getreal "下料尺寸(长mm)"))
(setq clkd (getreal "下料尺寸(宽mm)"))
(setq clcn (getreal"\n下料数量( 1 块n):"))
(if (not clcn) (setq clcn 1))
;材料厚度
(if (= ctbh 0) (setq ctbh (getreal"\n材料厚度:")))
(if (not ctbh ) (setq ctbh (getreal"\n材料厚度:")))
;材料计算
;(setq cmdp 0.000001);材料毫米转米进度 ;材料面积计算:数量*厚度mm*长mm*宽mm*单价面积/密度
(if (and (or (= cailiao "A3铁")   (= cailiao "冷板") (= cailiao "铁花纹板"))  (= ctbh 0.8)) (progn
(setq clist ca3_0_8) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3铁")   (= cailiao "冷板") (= cailiao "铁花纹板"))  (= ctbh 1)) (progn				 
(setq clist ca3_1) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3铁")   (= cailiao "冷板") (= cailiao "铁花纹板"))  (= ctbh 1.2)) (progn				 
(setq clist ca3_1_2) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3铁")   (= cailiao "冷板") (= cailiao "铁花纹板"))  (= ctbh 1.5)) (progn				 
(setq clist ca3_1_5) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3铁")   (= cailiao "冷板") (= cailiao "铁花纹板"))  (= ctbh 2)) (progn				 
(setq clist ca3_1_5) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3铁")   (= cailiao "冷板") (= cailiao "铁花纹板"))  (= ctbh 2.5)) (progn				 
(setq clist ca3_2_5) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3铁")   (= cailiao "冷板") (= cailiao "铁花纹板"))  (= ctbh 3)) (progn				 
(setq clist ca3_3) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3铁")   (= cailiao "冷板") (= cailiao "铁花纹板"))  (= ctbh 4)) (progn				 
(setq clist ca3_4) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3铁")   (= cailiao "冷板") (= cailiao "铁花纹板"))  (= ctbh 5)) (progn				 
(setq clist ca3_5) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3铁")   (= cailiao "冷板") (= cailiao "铁花纹板"))  (= ctbh 6)) (progn				 
(setq clist ca3_6) (setq clmjf (*    clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3铁")   (= cailiao "冷板") (= cailiao "铁花纹板"))  (= ctbh 8)) (progn				 
(setq clist ca3_8) (setq clmjf (*  ctbh clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3铁")   (= cailiao "冷板") (= cailiao "铁花纹板"))  (= ctbh 10)) (progn				 
(setq clist ca3_10) (setq clmjf (*  ctbh clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3铁")   (= cailiao "冷板") (= cailiao "铁花纹板"))  (= ctbh 12)) (progn				 
(setq clist ca3_12) (setq clmjf (*  ctbh clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3铁")   (= cailiao "冷板") (= cailiao "铁花纹板"))  (= ctbh 14)) (progn				 
(setq clist ca3_14) (setq clmjf (*  ctbh clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3铁")   (= cailiao "冷板") (= cailiao "铁花纹板"))  (= ctbh 16)) (progn				 
(setq clist ca3_16) (setq clmjf (*  ctbh clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3铁")   (= cailiao "冷板") (= cailiao "铁花纹板"))  (= ctbh 18)) (progn				 
(setq clist ca3_18) (setq clmjf (*  ctbh clcd clkd clcn (car clist) cmdp))))
(if (and (or (= cailiao "A3铁")   (= cailiao "冷板") (= cailiao "铁花纹板"))      (= ctbh 20)) (progn				 
(setq clist ca3_20) (setq clmjf (*  ctbh clcd clkd clcn (car clist) cmdp))))
;不锈钢201材料费计算--------------------------------------------------------------------------------
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
;不锈钢304材料费计算--------------------------------------------------------------------------------
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
;xxx材料费计算--------------------------------------------------------------------------------
(if (not rsth) (setq rsth 60))
(setq txtpit (getpoint (strcat "\n粘贴 材料费文本位置:"(rtos clmjf)" 元")))
(setq strt (strcat  "大板:"(rtos (cadr clist))"元/张" "小板:"(rtos (caddr clist))"元/张" "厚度*长*宽*块*面积价 = T"(rtos ctbh) " " cailiao "料*" (rtos clcd) "*" (rtos clkd) "*" (rtos clcn) "块*" (rtos (car clist)) "单价" " 材料费="(rtos clmjf) " 元"))
;(if (= jgfz 0) (setq strt (strcat "T"(rtos ctbh)" "cailiao" " (rtos qty)"批 " "  没有这材料或厚度")))
(command "text" txtpit  rsth 0 strt )
;(setq strt (strcat "行程:"(rtos jgxc)"(米)穿板:"(rtos jgcn)"(次)" ))
;(setq txtpit (list (car txtpit) (- (cadr txtpit) 110)))
;(command "text" txtpit  (/ rsth 2) 0 strt )

)
  


;激光费计算函数( 行程 穿板次数 行程单价 穿板单价 批数 激光折扣(car a3_1)
(defun jgfz_fun(xc cn xcf cnf  qty jgfzk / )
(setq jgxcf   (* jgxc xcf) );行程是单位:米
(setq jgcnf (* jgcn cnf))
(setq jgzf (+ jgxcf jgcnf))
(setq jgfk (* jgzf jgfzk))
(setq jgfz (* jgfk qty))
(print (strcat "冷板:\n" "行程*行程单价=行程费\n") )
(print (strcat (rtos jgxc) " * " (rtos xcf) " = " (rtos jgxcf) "\n" ) )
(print (strcat "冷板:\n" "穿板数*穿板单价=穿板费\n") )
(print (strcat (rtos jgcn) " * " (rtos cnf) " = " (rtos jgcnf) "\n" ) )
(print (strcat "冷板:\n" "行程费+穿板费=激光费\n") )
(print (strcat (rtos jgxcf) " + " (rtos jgcnf) " = " (rtos jgzf) "\n" ) )
(print (strcat "冷板:\n" "激光费*折扣率=折扣激光费\n") )
(print (strcat (rtos jgzf) " + " (rtos jgfzk) " = " (rtos jgfk) "\n" ) )
(print (strcat "冷板:\n" "折扣费*激光批数=总激光费\n") )
(print (strcat (rtos jgfk) " * " (rtos qty) " = " (rtos jgfz) "\n" ) )
(setq jgfz jgfz )  
);结束函数

 

;
;(defun tryj (a b c d e f g h i j k / )
;  (princ k)
;)
  
;lisp函数定义
;(defun tryj(定义参数 / 定义局部变量)
;(setq b (+ 10 a))
;(princ (+ b 5))
;)

;(setq rstext (strcat "T" thb " " cailiao  " " pcs  "PCS"))

;(princ rstext)


;(setq txtpit (getpoint "\n创建 单行文本位置:"))
;(command "text" txtpit  rsth 0 rstext )

;厚度
;(setq tbh (getreal "\n实际厚度 Tbh:")) 

;(princ)


;----------------------




 

;(defun c:tt (/ ie-obj)
;  (setq ie-obj (vlax-get-or-create-object "Msxml2.xmlhttp"))
;  (vlax-invoke-method ie-obj 'open  "get" "https://www.hao123.com/" 0)  
;  (vlax-invoke-method ie-obj 'setRequestHeader  "If-Modified-Since" "q")
;  (vlax-invoke-method ie-obj "Send")
;  (if (= (vlax-get-property ie-obj "readyState" ) 4)
;    (setq s (vlax-invoke-method ie-obj 'getResponseHeader "Date"))
;    (alert "读取网页失败!")
;    )  
;  (and s (print s))
;  (vlax-release-object ie-obj)
;  (princ)
;  )


;(defun c:br1 ()  (command "break" pause "f" pause "@"))


;(defun c:LsL ()(setvar "cmdecho" 1)(setq en (ssget (list '(0 . "spline,arc,line,ellipse,LWPOLYLINE"))))(setq i 0)(setq ll 0)(repeat (sslength en)  (setq ss (ssname en i))  (setq endata (entget ss))  (command "lengthen" ss "")  (setq dd (getvar "perimeter"))(setq ll (+ dd ll))  (setq i (1+ i)))  (princ "所选线条总长为：")(princ ll)(princ))