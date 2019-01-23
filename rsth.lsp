

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
(defun c:rst1()
(setq rsth 10)
  (c:rsttt)
(princ)
)
;设置文本高度20
(defun c:rst2()
(setq rsth 20)
  (c:rsttt)
(princ)
)
;设置文本高度40
(defun c:rst3()
(setq rsth 40)
   (c:rsttt)
(princ)
)
;设置文本高度80
(defun c:rst4()
(setq rsth 80)
   (c:rsttt)
(princ)
)




;-------------------------------------------
;20181123jianpf
;创建文本
(defun c:sts()
 
(if (not rsth) (setq rsth 60))

(setq txtpit (getpoint "\n创建 单行文本位置:"))
  
 
;常用字符串:
(progn
(initget "0 1 2 3 4 5 6 7 8 9 a s d f g b l q u y")
(setq getw (getkword "文本 特殊处理 [小孔打标(0)/切开孔折痕(1)/烧出折痕(2)/切穿(3)/加微连(q)/来料加工(4)/共边排版(5)/保存排版(6)/要开单(7)/板反过来切(8)/加补偿(9)/每件价(a)/照线折(s)/画线折(d)/光面在外(f)/光面在内(g)/暂时不做(b)/保留余料(l)]/开百叶(u)/先打样1件(y)" ))	    
(princ getw)
(cond
((= getw "0") (setq cailiao  "小孔打标"))
((= getw "1") (setq cailiao "切开孔折痕"))
((= getw "2") (setq cailiao "烧出折痕"))
((= getw "3") (setq cailiao "切穿"))
((= getw "4") (setq cailiao "来料加工"))
((= getw "5") (setq cailiao "共边排版"))
((= getw "6") (setq cailiao "保存排版"))
((= getw "7") (setq cailiao "要开单"))
((= getw "8") (setq cailiao "板反过来切"))
((= getw "9") (setq cailiao "加补偿"))
((= getw "a") (setq cailiao "元/件"))
((= getw "s") (setq cailiao "照线折"))
((= getw "d") (setq cailiao "画线折"))
((= getw "f") (setq cailiao "光面在外"))
((= getw "g") (setq cailiao "光面在内"))
((= getw "b") (setq cailiao "暂时不做"))
((= getw "l") (setq cailiao "保留余料"))
((= getw "q") (setq cailiao "加微连"))
((= getw "u") (setq cailiao "开百叶"))
((= getw "y") (setq cailiao "先打样1件"))
((= getw nil) (setq cailiao  "特殊处理"))
);end cond
);end progn
 
  

(setq rstext (strcat " "cailiao " "  ))

(princ rstext)


(command "text" txtpit  rsth 0 rstext )

 
(princ)

)





;退出
(defun c:ppp()
 
    (command "close" "y" "n")
(princ)
)




;在图形属性自定义变量
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
 
;;; 返回AutoCAD中的当前的文件

  (setq activeDoc (vla-get-ActiveDocument AcadObject))

(progn
  
  (princ "激活的文件是: ")(princ (vla-get-path activeDoc))
(princ)
    (princ "\\") (princ (vla-get-name activeDoc)) 
 (princ)
  
)




 )





;调用外部cmd程序把文件上传激光机
(defun c:segg()
;外部cmd程序的路径\\+ 空格
(setq sendto (strcat "C:\\Users\\Administrator\\AppData\\Roaming\\Microsoft\\Windows\\SendTo\\激光机.cmd" " "))
;常用字符串:
(progn
(initget "n s")
(setq getw (getkword "是否保存->发激光机:[是(s)/否(n)]" ))
(cond
((= getw "s") (progn
	(command "QSAVE")
;执行外部程序
(progn
;加载ActiveX
  (VL-LOAD-COM)
;定义CAD对象
  (setq AcadObject (vlax-get-acad-object))
;定义文档对象
  (setq      AcadDocument (vla-get-ActiveDocument AcadObject))
;定义到当前激活对象
    (setq    mSpace (vla-get-ModelSpace AcadDocument))
;定义当前文档
  (setq activeDoc (vla-get-ActiveDocument AcadObject))
;获取文件路径和文件名
  (setq filepathname (strcat (vla-get-path activeDoc) "\\" (vla-get-name activeDoc)) )

  (startapp sendto filepathname )
  (princ (strcat (menucmd "M=$(edtime,0,YYYY-MO-DD-HH:MM:SS am/pm)") "  " filepathname " -> 发送到激光机:" ) ))
);结束执行外部程序
);结束选择s操作
((= getw "n") (princ  "取消发送了"))
((= getw nil) (princ  "未选择"))
);end cond
);end progn
 
;调用外部CMD程序+文件路径名称参数
;(startapp sendto filepathname )
;打印当前时间
;(princ (strcat (menucmd "M=$(edtime,0,YYYY-MO-DD-HH:MM:SS am/pm)") "  " filepathname " -> 发送到激光机:" ) )
(princ)
 
)
;结束调用外部cmd程序



