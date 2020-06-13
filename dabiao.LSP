;圆打标20190910 (归档于rsth)
(defun c:cxx()
;判断板厚是否存在
(if (not tbh) (setq tbh (getreal "\n板厚:")))
(setq ssl 200) 
(repeat ssl  
(cdx)
)
  )

;圆打标20190910
(defun  cdx() 

  ;判断板厚是否存在
  ;(if (not tbh) (setq tbh (getreal "\n板厚:")))
;
;获取圆对象
(setvar "osmode" 16383);;启动捕捉
(setq ent_cff (entget (car (entsel ))) )
(setq ent_cf ent_cff)
;获取圆半径
(setq c_r (cdr (assoc 40 ent_cf )))
;转圆直径
(setq c_d (* c_r 2))

  

;获取圆心点
(setq c_p (cdr (assoc 10 ent_cf )))
;判断圆是否小于板厚
(if (< c_d tbh) (progn
(setq cdl (/ tbh 2))
;打标最小值Jianpf20190910
(if (< cdl 5) (setq cdl 2.5))
  (setq ppx (car c_p))
  (setq ppy (cadr c_p))
;画横线(x1,y1)(x2,y2)
(setq fp1 (list (- ppx cdl) ppy))
(setq fp2 (list (+ ppx cdl) ppy))
(setq fp3 (list ppx (- ppy cdl))) 
(setq fp4 (list ppx (+ ppy cdl)))
(setvar "osmode" 0);;关闭捕捉
   ;;取得当前颜色为#os6
;线条变色
  (setq  os6 (getvar "Cecolor"))
  (setvar "cecolor" "6");改变当前颜色为
;画横线(x1,y1)(x2,y2)
  (command  "line"  fp1  fp2  "")
;画纵线(xx1,yy1)(xx2,yy2)
  (command  "line"  fp3  fp4  "")
(setvar "Cecolor" os6);颜色还原
(setvar "osmode" 16383);;启动捕捉
) )
  (princ (strcat  "\n板厚="(rtos tbh)  " 直径=" (rtos c_d)))
  (princ)
)


(defun c:rgb()
   ;;取得当前颜色为#os6
  (setq  os6 (getvar "Cecolor"))
	(setvar "cecolor" "1");改变当前颜色为
  (setvar "Cecolor" os6);颜色还原
  ;改变层颜色(T:真彩色RGB)
 ;(COMMAND "-COLOR" "T" "255,0,0")
  ;改变线型
 ;(COMMAND "-LINETYPE" "S" "CENTER2" "")
  ;修改图元颜色为红色
  (setq ent (entlast))
  (command "_.chprop" ent "" "color" 1 "")
 )


;Jianpf20190912z设置圆环圆心位置scar
(defun scar()
;设置圆心位置
 (setq carpit (getpoint (list 0 0 0) "\n圆心:"))
)
;设置圆环圆心位置scar快捷键
(defun c:ccdss()
(scar)
)
;设置圆环圆心位置cars快捷键
(defun c:ccds()
(scar)
(carx)  
)
;继续画圆环cars快捷键
(defun c:ccdd()
(carx)  
)

;画圆环 Jianpf20190912z
(defun carx()
;设置圆心位置
(if   (not carpit) (setq carpit (getpoint (list 0 0 0) "\n圆心:")))
(repeat 100  
  (princ "圆环直径:")
(setq cardd (getreal))
  ;画圆
   (command "circle" carpit (/ cardd 2) )
  )
)



;正圆圆锥管漏斗JianPF20191004x
(defun c:cds()



  )





;20190317x外部尺寸字符串20190325x
(defun c:rwstt()
 
(setq str (strcat "rrrrrrr")) 
(setq f1 (open "c:\\temp\\wst.txt" "r"))  
(setq str (read-line  f1 ))

(close f1)

(princ str)
(princ)

  
(if (not rsth) (setq rsth 60))

(setq txtpit (getpoint "\n粘贴 单行文本位置:"))
  
(princ rstext)


(command "text" txtpit  rsth 0 str )
(princ )



(setq slen (strlen str))
(setq slen0 1)
  
(while (< slen0 slen)
;开始循环体
(progn
(setq slen0 (+ slen0 1))
(setq slen0out slen0)
(if (= " "  (substr str 5 1))
;跳出处理开始
(progn
;截取长度+1
(setq slen0out (+ 1 slen0out))
;截取板厚值转数值
(setq tbhs (atof (substr str 2 slen0out)))
;结束总循环值
(setq slen0 slen))
);跳出处理结束

));结束循环体
;最后输出
(princ tbhs)
)


;(if (= " "  (substr str 5 1)) (print "sssss")) 



(Defun C:Test ()
(setq en0 (car (entsel)))
;;此处请选有属性定义的图块
(setq vn0 (vlax-ename->vla-object en0))
(setq lstVar (vla-getattributes vn0))
(setq lstAttrs (vlax-safeArray->list (vlax-variant-value lstVar)))
(setq TextString nil)
(foreach attr lstAttrs
(setq TagString (vla-get-TagString attr))
(if (equal TagString "length") ;此处为你想要的元素
(setq TextString (vla-get-TextString attr))
)
)
(if TextString
(princ (strcat "The content of length = " TextString))
(princ "没有找到length ")
)
(prin1)
)



(defun c:asc()
  
(setq ents (ssget ))
;setq ents (entsel))
(setq entp (getpoint "pppppp"))
(command "scale" " " "L"  )
  )





(defun c:ooo()
  ;20200304x
  (setvar "osmode" 0);;关闭捕捉20190520
(command  "offset" "t" ent_bz "m" "10" "20" "30" "40" "50" "60")
   (setvar "osmode" 16383);;捕捉20190520
)




(defun ssetxtx(x)
(ssetxt 33333333)
  )


(defun ssetxt(x)

(print x)
  )