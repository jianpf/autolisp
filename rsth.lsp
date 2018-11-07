

;-------------------------------------------
;20181028jianpf
;创建文本
(defun c:st()
 
(if (not rsth) (setq rsth 60))

(setq txtpit (getpoint "\n创建 单行文本位置:"))
  
;厚度
(setq thb (getstring "\n创建 厚度 T:")) 
;材料:
(progn
(initget "0 1 2 3 4 5 6 201 304")
(setq getw (getkword "创建 [冷板(0)/热板(1)/201(2)/304(3)/来料(4)/铁花纹板(5)/镀锌板(6)]" ))	    
(princ getw)
(cond
((= getw "0") (setq cailiao  "冷板"))
((= getw "1") (setq cailiao "热板"))
((= getw "2") (setq cailiao "201"))
((= getw "201") (setq cailiao "201"))
((= getw "3") (setq cailiao "304"))
((= getw "304") (setq cailiao "304"))
((= getw "4") (setq cailiao "来料"))
((= getw "5") (setq cailiao "铁花纹板"))
((= getw "6") (setq cailiao "镀锌板"))
((= getw nil) (setq cailiao  "冷板"))
);end cond
);end progn
;数量
(setq pcs (getstring"\n创建 数量 PCS:"))


  

(setq rstext (strcat "T" thb " " cailiao  " " pcs  "PCS"))

(princ rstext)


(command "text" txtpit  rsth 0 rstext )

;厚度
(setq tbh (getreal "\n实际厚度 Tbh:")) 

(princ)

)


;--------------------------------------------
;20181028jianpf
;重置文本内容
(defun c:rstts()
;厚度
(setq thb (getstring "\n重置 厚度 T:"))
;材料:
(progn
(initget "0 1 2 3 4 5 6 201 304")
(setq getw (getkword "重置 [冷板(0)/热板(1)/201(2)/304(3)/来料(4)/铁花纹板(5)/镀锌板(6)]" ))	    
(princ getw)
(cond
((= getw "0") (setq cailiao  "冷板"))
((= getw "1") (setq cailiao "热板"))
((= getw "2") (setq cailiao "201"))
((= getw "201") (setq cailiao "201"))
((= getw "3") (setq cailiao "304"))
((= getw "304") (setq cailiao "304"))
((= getw "4") (setq cailiao "来料"))
((= getw "5") (setq cailiao "铁花纹板"))
((= getw "6") (setq cailiao "镀锌板"))
((= getw nil) (setq cailiao  "冷板"))
);end cond
);end progn
;数量
(setq pcs (getstring"\n重置 数量 PCS:"))
(setq rstext (strcat "T" thb " " cailiao  " " pcs  "PCS"))

(princ rstext)

;选择文本对象
(setq cent(entget (car (entsel ))))	
;((-1 . <图元名: -1f7cd8>) 
;类型:
;(0 . "MTEXT") ;
;内容:
;(1 . "{\\fSimSun|b0|i0|c134|p2;多行}")
;高度:
;(40 . 20.123) 
;修改文本高度40点对

;获取原来文本值
;(setq ent_oldtxt (cdr(assoc 1 cent )))
;  (princ (cdr(assoc 1 cent )))

;准备替换 
(setq cent (subst(cons 1 rstext)(assoc 1 cent)cent))
;开始修改
(entmod cent)
;(print ">" )(print rstext)

;厚度
(setq tbh (getreal "\n实际厚度 Tbh:")) 
(princ)
  
)

;;-----
;20181028jianpf
;重置文本内容
(defun c:rstt()
;厚度
(setq thb (getstring "\n重置 厚度 T:"))
;材料:
(progn
(initget "0 1 2 3 4 5 6 201 304")
(setq getw (getkword "重置 [冷板(0)/热板(1)/201(2)/304(3)/来料(4)/铁花纹板(5)/镀锌板(6)]" ))	    
(princ getw)
(cond
((= getw "0") (setq cailiao  "冷板"))
((= getw "1") (setq cailiao "热板"))
((= getw "2") (setq cailiao "201"))
((= getw "201") (setq cailiao "201"))
((= getw "3") (setq cailiao "304"))
((= getw "304") (setq cailiao "304"))
((= getw "4") (setq cailiao "来料"))
((= getw "5") (setq cailiao "铁花纹板"))
((= getw "6") (setq cailiao "镀锌板"))
((= getw nil) (setq cailiao  "冷板"))
);end cond
);end progn
;数量
(setq pcs (getstring"\n重置 数量 PCS:"))
(setq rstext (strcat "T" thb " " cailiao  " " pcs  "PCS"))

(princ rstext)


;选择名称集
(setq ss (ssget))
(setq ssn (ssname ss 0))
(setq cent (entget ssn))
;选择文本对象
;(setq cent(entget (car (entsel ))))	
;((-1 . <图元名: -1f7cd8>) 
;类型:
;(0 . "MTEXT") ;
;内容:
;(1 . "{\\fSimSun|b0|i0|c134|p2;多行}")
;高度:
;(40 . 20.123) 
;修改文本高度40点对

;获取原来文本值
;(setq ent_oldtxt (cdr(assoc 1 cent )))
;  (princ (cdr(assoc 1 cent )))

;准备替换 
(setq cent (subst(cons 1 rstext)(assoc 1 cent)cent))
;开始修改
(entmod cent)
;(print ">" )(print rstext)
  
;厚度
(setq tbh (getreal "\n实际厚度 Tbh:")) 
(princ)
)




;-----------

;20181028jianpf
;重置文本高度(支持20个选择)
(defun c:rsttt()
;选择文本对象
;选择名称集
(setq ss (ssget))
;选择名称集的个数
;(setq ssl (sslenth ss))
(setq ssl 20)
(setq ssl0 0)
(repeat ssl
(progn
(setq ssn (ssname ss ssl0))
(setq cent (entget ssn))

(setq ssl0 (+ ssl0 1))
(progn (print ssl0) (princ "修改字体大小为:")(princ rsth))
	
;((-1 . <图元名: -1f7cd8>) 
;类型:
;(0 . "MTEXT") ;
;内容:
;(1 . "{\\fSimSun|b0|i0|c134|p2;多行}")
;高度:
;(40 . 20.123) 

;修改文本高度40点对
(setq cent (subst(cons 40 rsth)(assoc 40 cent)cent))
(entmod cent)
);end progn
);end 循环20次

(princ)

)





;20181028jianpf
;设置文本高度
(defun c:rsth()
(setq rsth (getreal "设置文本高度:"))
  (c:rsttt)
(princ)
)

;设置文本高度
(defun c:rsttth()
(setq rsth (getreal "设置文本高度:"))
  (c:rsttt)
(princ)
)

;设置文本高度
(defun c:rstth()
(setq rsth (getreal "设置文本高度:"))
  (c:rsttt)
(princ)
)


;设置文本高度20
(defun c:rstth2()
(setq rsth 20)
  (c:rsttt)
(princ)
)
;设置文本高度40
(defun c:rstth3()
(setq rsth 40)
   (c:rsttt)
(princ)
)
;设置文本高度80
(defun c:rstth4()
(setq rsth 80)
   (c:rsttt)
(princ)
)