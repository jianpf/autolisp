

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

;设置文本高度500.jianpf20190622s
(defun c:rst5()
(setq rsth 500)
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
(setq getw (getkword "文本 特殊处理 [小孔打标(0)/切开孔折痕(1)/烧出折痕(2)/切穿(3)/加微连(q)/来料加工(4)/共边排版(5)/保存排版(6)/车间开单(7)/板反过来切(8)/加补偿(9)/每件价(a)/照线折(s)/画线折(d)/光面在外(f)/光面在内(g)/暂时不做(b)/保留余料(l)/开百叶(u)/先打样1件(y)]" ))	    
(princ getw)
(cond
((= getw "0") (setq cailiao  "小孔打标"))
((= getw "1") (setq cailiao "切开孔折痕"))
((= getw "2") (setq cailiao "烧出折痕"))
((= getw "3") (setq cailiao "切穿"))
((= getw "4") (setq cailiao "来料加工"))
((= getw "5") (setq cailiao "共边排版"))
((= getw "6") (setq cailiao "保存排版"))
((= getw "7") (setq cailiao "车间开单"))
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



;-------------------------------------------
;20181123.20190408jianpf
;创建文本
(defun c:sts()
 
(if (not rsth) (setq rsth 60))

(setq txtpit (getpoint "\n创建ss 单行文本位置:"))
  
 
;常用字符串:
(progn
(initget "0 1 2 3 4 5 6 7 8 9 a s d f g b l q u y")
(setq getw (getkword "文本 特殊处理 [小孔打标(0)/切开孔折痕(1)/烧出折痕(2)/切穿(3)/加微连(q)/来料加工(4)/共边排版(5)/保存排版(6)/车间开单(7)/板反过来切(8)/加补偿(9)/每件价(a)/照线折(s)/画线折(d)/光面在外(f)/光面在内(g)/暂时不做(b)/保留余料(l)]/开百叶(u)/先打样1件(y)" ))	    
(princ getw)
(cond
((= getw "0") (setq cailiao  "小孔打标"))
((= getw "1") (setq cailiao "切开孔折痕"))
((= getw "2") (setq cailiao "烧出折痕"))
((= getw "3") (setq cailiao "切穿"))
((= getw "4") (setq cailiao "来料加工"))
((= getw "5") (setq cailiao "共边排版"))
((= getw "6") (setq cailiao "保存排版"))
((= getw "7") (setq cailiao "车间开单"))
((= getw "8") (setq cailiao "板反过来切"))
((= getw "9") (setq cailiao "加补偿"))
((= getw "a") (setq cailiao "报价:元/件"))
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




;-------------------------------------------
;20181123.20190408jianpf
;创建文本
(defun c:stss()
 
(if (not rsth) (setq rsth 60))

(setq txtpit (getpoint "\n创建ss 单行文本位置:"))
  
 
;常用字符串:
(progn
(initget "0 1 2 3 4 5 6 7 8 9 a s d f g b l q u y x w e r t")
(setq getw (getkword "文本 特殊处理 [注意反刀(d)/封板(f)/打印图(g)/原图面看见虚线(x)/封板缩1-单边缩0.5-(w)/门板缩3-单边缩1.5-(e)/单边缩2(r)/单边缩1板厚(t)]" ))	    
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
((= getw "d") (setq cailiao "注意反刀"))
((= getw "f") (setq cailiao "封板"))
((= getw "g") (setq cailiao "打印图"))
((= getw "b") (setq cailiao ""))
((= getw "t") (setq cailiao "单边缩1板厚"))
((= getw "r") (setq cailiao "单边缩2mm"))
((= getw "e") (setq cailiao "门板缩3-单边缩1.5mm"))
((= getw "w") (setq cailiao "封板缩1-单边缩0.5mm"))
((= getw "x") (setq cailiao "原图面看见虚线"))
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
;保存退出块jianpf20190512x
(defun c:bss()
    (command "bclose" "s")
(princ)
)




;-------------------------------------------
;20190330x
;球标编号(燕秀工具箱2.81>模具工具>球标编号)
(defun c:qbbh()
 
(if (not rsth) (setq rsth 60))
(if (= qbxh nil) (setq qbxh 1))
(if (not qbxh) (setq qbxh 1))
(repeat 100
(setq txtpit (getpoint (strcat  "\n创建 球标编号位置:"  (rtos qbxh 2 3) ">"  )))

(setq rstext (strcat "[ " (rtos qbxh 2 3) " ]"  ))


(command "text" txtpit  rsth 0 rstext   )
(setq qbxh (+ qbxh 1))
 
(princ)
)
)



;-------------------------------------------
;20190330x
;球标编号(燕秀工具箱2.81>模具工具>球标编号)
(defun c:qbbh()
 
(if (not rsth) (setq rsth 60))
(if (= qbxh nil) (setq qbxh 1))
(if (not qbxh) (setq qbxh 1))
(repeat 100
(setq txtpit (getpoint (strcat  "\n创建 球标编号位置:"  (rtos qbxh 2 3) ">"  )))

(setq rstext (strcat "[ " (rtos qbxh 2 3) " ]"  ))


(command "text" txtpit  rsth 0 rstext   )
(setq qbxh (+ qbxh 1))
 
(princ)
)
)



;20190330x
;重置球标序号
(defun c:sqbbh()

(if (= qbxh nil) (setq qbxh 1))
(if (not qbxh) (setq qbxh 1))
(setq qbxh (getreal (strcat "重置球标序号:" (rtos qbxh 2 3) ">"  )))
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

;打标线jianpf20190611a
(defun c:dbx()
(setq dbh "1")
(setq colorh 6)
(princ (strcat "打标号:" dbh))
;选择文本对象
(setq cent(entget (car (entsel ))))
(princ cent)
(princ "\n----\n")
;准备替换 
(setq cent (subst(cons 8 "1")(assoc 8 cent)cent))
  ;开始修改
(entmod cent)
(setq cent (subst(cons 62 colorh)(assoc 62 cent)cent))
  ;开始修改
(entmod cent)

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

;定义函数获取文件名和绝对路径str
(defun filename()
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
  (setq filenamestr (vla-get-name activeDoc))
  (princ (vla-get-name activeDoc))

  )
)
;获取单前文件名
(defun c:rfn()
;获取文件名
(filename)
(setq txtpit (getpoint "\n创建 单行文本位置:"))
(if txtpit () (setq txtpit (list 0 0 0)))
(if (not rsth) (setq rsth 60))
(command "text" txtpit  rsth 0 filenamestr )  
)


;;;
 

;20190317x外部尺寸字符串20190325x-20190715xjianpf
(defun c:wst( / bl)

;获取文件名
(filename)  
(if (not rsth) (setq rsth 60))



;比例
(setq bl (getstring "\n比例 bl:")) 
;判断输入长度是否为0字节,否则获取标注对象
(if (= (strlen bl) 0) 
(progn
(setq cent (entget (car (entsel (strcat "获取标注值:" )))))
;获取标注值
(setq bl (cdr (assoc 42 cent)))
;判断标注值是否为负数
(if (< bl 0) 
(progn
(setq bl (getstring (strcat "\n错误标注值!!!!:" bl )))
)
;结束标注负数判断
)

;转字符串
(setq bl (rtos bl 2 3)   ) 
)
;结束判断
)



  
;厚度
(setq thb (getstring (strcat"\n创建 厚度 T:"  "\n标注值比例:" bl ))) 
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




(setq rstext (strcat "T" thb " " cailiao  " " pcs  "PCS"  "     %"  bl " %" filenamestr  ) )



;字符串保存外部文件 
(setq str (strcat "T" thb " " cailiao  " " pcs  "PCS"   ) )
(setq f0 (open "c:\\temp\\wstt.txt" "w"))  
(write-line str f0 )
(close f0)

  
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
  
;文本位置
  
(setq txtpit (getpoint "\n创建 单行文本位置:"))
(if txtpit () (setq txtpit (list 0 0 0)))
(command "text" txtpit  rsth 0 rstext )  
(princ str)
(princ)
(bbb)
(princ)
)



;;;


;20190317x外部尺寸字符串20190325x
(defun c:rwst()
 
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
(progn
(setq slen0 (+ slen0 1))

)
)
  
)
 


;20190317x外部尺寸字符串20190325x-20190715xjianpf
(defun c:rwst()
 
(setq strt (strcat "rrrrrrr")) 
(setq f1 (open "c:\\temp\\wstt.txt" "r"))  
(setq str (read-line  f1 ))
(close f1)
  
(setq bl (strcat "rrrrrrr")) 
(setq f1 (open "c:\\temp\\wstbl.txt" "r"))  
(setq bl (read-line  f1 ))
(close f1)
  
(setq strname (strcat "rrrrrrr")) 
(setq f1 (open "c:\\temp\\wstname.txt" "r"))  
(setq filenamestr (read-line  f1 ))
(close f1)



(princ str)
(princ)

 (setvar "osmode" 0);;启动捕捉 
(if (not rsth) (setq rsth 60))

(setq txtpit (getpoint "\n粘贴 单行文本位置:"))
  
;(princ rstext)


(command "text" txtpit  rsth 0 str )
(princ )

;20190715jianpf修改成默认放下边
;(setq txtpit (getpoint "\n粘贴 bln单行文本位置:"))
(setq txtpit (list (car txtpit) (- (cadr txtpit) 100)))
(setq str (strcat "%"  bl " %" filenamestr ))
(command "text" txtpit  (/ rsth 2) 0 str )
;

(setvar "osmode" 16383);;启动捕捉


(setq slen (strlen str))
(setq slen0 1)
(setq tbhs 0)  
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
 
;-------------------------------------------
;20190619xjianp
;创建刀数
(defun c:stds()
 
(if (not rsth) (setq rsth 20))
;刀数统计
(if (not dstj) (setq dstj 0))

;刀数
(setq thb (getreal (strcat "\n 统计刀数("(rtos dstj)")+:")))
;数量
(setq pcs (getreal "\n 数量(件) PCS:"))
(if pcs () (setq pcs 1))
(setq rstext (strcat  (rtos thb) "刀" "X " (rtos pcs)  "件=" (rtos (* thb pcs)) "刀"))

(setq txtpit (getpoint (strcat (rtos thb) "刀" "X " (rtos pcs)  "件=" (rtos (* thb pcs)) "刀 放置位置:")))
(if txtpit () (setq txtpit (list 0 0 0)))
(command "text" txtpit  rsth 0 rstext )
  (setq dstj (+ dstj (* thb pcs)))
(setq txtpit (getpoint (strcat "\n统计数  ("(rtos dstj)")刀:") txtpit )) 
;(setq txtpit (getpoint ))

)
;统计折弯累积数-没有用jianPF20190921
(defun c:stdss()
  ;刀数统计
(if (not dstj) (setq dstj 0))
(setq txtpit (getpoint  (strcat "统计数  ("(rtos dstj)")刀:" "位置:")))
(command "text" txtpit  rsth 0 (strcat "统计数 "(rtos dstj)"刀" ))
(getpoint "下一步" txtpit)
(princ   (strcat "刀数统计:" (rtos dstj) " > "  (rtos (setq dstj (getreal  (strcat "\n  设置 (空格归零)\n 统计刀数("(rtos dstj)"):")))) "刀") )
(princ)

  )
(defun c:stdst()
(setq str (strcat "rrrrrrr")) 
(setq f1 (open "c:\\temp\\stdss.txt" "r"))  
(setq str (read-line  f1 ))
(close f1)
(princ str)
(setq str (distof str))
(setq txtpit (getpoint  (strcat "累积刀数"(rtos str)"+"(rtos dstj)"=  ("(rtos (+ str dstj))")刀\n确定保存?")))
(setq str  (+ str dstj))
;字符串保存外部文件 
(setq f0 (open "c:\\temp\\stdss.txt" "w"))  
(write-line (rtos str) f0 )
(close f0) 
(startapp "c:\\temp\\stdss.cmd " (rtos dstj) )

  )


;比例计算rar
(defun c:rar()
  (setq blz (getreal "已知,标注值:"))
  (setq blzs (getreal "已知,标注手测值:"))
  (setq blzss (getreal "求解,手测值:"))
  (setq blzi (/ blz blzs))
  (setq blzj (* blzi blzss)) 
  ;(progn (princ "\n未知标注值=") (print blzj) )
  (princ  (strcat  "\n未知标注值="  (rtos blzj) "\n 比例为:"(rtos blz) "/" (rtos blzs)"="(rtos blzi) "  *=  " (rtos blzss)"=" (rtos blzj)))
  (setq rstext (getreal) ) 
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




;圆打标20190910
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
(if (< cdl 2.5) (setq cdl 2.5))
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




;
;20190921xJianPF 输出文件名
(defun c:stssf()
(if (not rsth) (setq rsth 60)) 
(setq txtpit (getpoint "\n粘贴 单行文本位置:"))
(setq txtstr (filename) )
(setq txtstr (strcat filenamestr "" ) )
(command "text" txtpit  rsth 0 txtstr ) 
)

;显示全局比例因子20191116sJianpf
(defun c:bb()
(bbb)


;比例
;(setq bl (getstring "\n比例 bl:")) 
;判断输入长度是否为0字节,否则获取标注对象
;(if (= (strlen bl) 0) 
;(progn
;(setq cent (entget (car (entsel (strcat "获取标注值:" )))))
;获取标注样式名称
;(setq bl (cdr (assoc 3 cent)))
;判断标注值是否为负数
;(if (< bl 0) 
;(progn
;(setq bl (getstring (strcat "\n错误标注值!!!!:" bl )))
;)
;结束标注负数判断


;;;

;(vl-load-com)
;(setq aa (entsel "\n選擇 "))
;(setq bb (car  aa))      
;(setq cc (vlax-ename->vla-object bb))   
;(setq dd  (vlax-safearray->list  (vlax-variant-value (vla-getattributes cc))))
;(setq mm 0)
;(repeat (length dd)                                                                  
;(setq ee  (nth mm dd))
;(setq ff  (vla-get-TextString ee))
;(princ ff)
;(setq mm (1+ mm))
;)
;(princ)
;;;


;)

;转字符串
;(setq bl (rtos bl 2 3)   ) 
;)
;结束判断
;)
)


;显示全局比例因子20191116sJianpf
(defun bbb()
;此图纸比例
(setq bbyz (getvar "dimscale"))
;标注比例
(setq bbyzz (getvar "dimlfac"))
(setq strbb  (strcat "\n图纸比例: " (rtos bbyz) "\n标注比例SC->" (rtos bbyzz) ) )
(getpoint strbb )
)

