;jianpf 20180620
;设置板厚tbh
(defun c:tbh()
(princ "设置板厚:")
(setq tbh (getreal));  
(princ "板厚:")
(princ tbh)
(princ)
)

;偏移快捷键ft
(defun c:ft()
  (princ "偏移板厚:")
  (princ tbh)
  
  ;(princ "\n")
  (command  "offset" tbh )
  (princ)
)

;20180902JPF
;获取标注值再偏移
(defun c:fsa()
(progn (princ "\n选择--标注对象:")) 
(progn
;选择标注对象
(setq ent_bz (entget (nth 0 (entsel)) ))
;判断点对1是否" "空值
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;空值bzz=实际标注点对42,否则就bzz=手动标注1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
;偏移
(command  "offset" bzz )

(princ) 

  )


;偏移板厚快捷键fst
(defun c:fst()
  (princ "板厚:")
  (princ tbh)  
       
  (princ "\n    fst偏移:")
  (princ tbh) 
  (command  "offset" tbh )
  (princ)
)

;偏移快捷键fs
(defun c:fs()

  (command  "offset" ) 
)

;偏移快捷键fE
(defun c:fe()

(princ "对称总长度:")
(setq fedcc (getreal))
  (setq fedc (/ fedcc 2))
  (princ "减半:")
  (princ fedc )
  (command  "offset" fedc ) 
)

;偏移快捷键t
(defun c:t()
  (princ "板厚:")
  (princ tbh)
  (princ "\n偏移长度:") 
  (setq py (getreal))
  (setq py (- py tbh))

  
  (princ "\n折弯扣除:")
  (princ tbh )
  
  (princ "\n   t偏移:")
  (princ py )
  
  (princ "\n")
  (command  "offset" py )
  (princ)
)

;偏移快捷键tt
(defun c:tt()
  (princ "板厚:")
  (princ tbh)
  (princ "\ntt偏移长度:")
  (setq pyy (getreal))
  ;折弯扣除2次板厚
  (setq pyy (- pyy tbh))
  (setq pyy (- pyy tbh))
     
  (princ "\n折弯扣除:")
  (princ (* tbh 2))
  
  (princ "\n    tt偏移:")
  (princ pyy)


  (princ "\n")
  (command  "offset" pyy )
  (princ)
)

;偏移快捷键ttt
(defun c:ttt()
  (princ "板厚:")
  (princ tbh)
  (princ "\nttt偏移长度:")
  (setq pyy (getreal))
  ;折弯扣除3次板厚
  (setq pyy (- pyy tbh))
  (setq pyy (- pyy tbh))
  (setq pyy (- pyy tbh))
     
  (princ "\n折弯扣除:")
  (princ (* tbh 2))
  
  (princ "\n    ttt偏移:")
  (princ pyy)


  (princ "\n")
  (command  "offset" pyy )
  (princ)
)



;自定义快捷键
(defun c:kk()
 
  (setq hhs (getreal "
-a
ad:线性标注  adh 快速斜边标注
add:直径标注
art:折好高度1个板厚(artt:2个板厚 artt:3个板厚)

-c
cc:复制
ce:圆槽
cdd:修改圆直径
cddd:编辑圆直径
cm:梅花孔(水平孔距,水平孔距中点偏上垂直孔距,阵列孔距水平和垂直孔距的2倍)


-d
dft:半径圆和矩形剪线5次删除圆
dfx:点方向(折痕)  ddx:缺口><v dff:dds:ddd:dde:快速折痕
div:平分段系统命令

-e
ee:镜像

-f
fa:直线
fe:总对称偏移
fs:偏移
ft:偏移1个板厚
fsa:;获取标注值再偏移(标注值)

-t
tbh:设置板厚值
t:长度-1*板厚值(fat:获取标注值后-1*板厚值偏移)
tt:长度-2板厚(fatt:获取标注值后-2*板厚值偏移)
ttt:长度-3板厚(fattt:获取标注值后-3*板厚值偏移)
trt:剪线快捷键

-j
rt(20190116x旧名jjt):模拟折弯1次 前长度=折弯长度+1*板厚值(jjat:标注值)
rtt(jjtt):模拟折弯2次 前长度=折弯长度+2*板厚值(jjatt:标注值)
rttt(jjttt):模拟折弯3次 前长度=折弯长度+3*板厚值(jjattt:标注值)



-s
s:拉伸
sc:缩放 (scs:缩0.5  scd:放大2倍)
scr:缩放到新尺寸? 
SELECTSIMILAR:(CAD)选择同类对象

-w
wst:外部存储strfilename
"))

)

;快快帮助hh2018.07.26
(defun c:hh()
 
  (setq hhs (getreal "
ver:20180620-20180912精简版

1-展开总长度  原来板厚     改薄:伸长    改厚:缩短        
2-孔径>=板厚   否则打标(烧线)
3-钣金折弯扣除   实际厚度 > 浮厚  (查表)
4-膜向上201.304.不锈钢
5-国标是第一视图  圆心靠近圆台侧视图的长边
6-向外折弯 向内折弯     第2折:向外拓展      向内缩小
7-钣金折弯 保证>折边>够>横桥放>槽口,折弯机下膜槽(宽度:10mm,16mm,22mm)+板厚值
8-板中开口折弯的必须看上下模刀具长度,(折弯机下模最小20mm)
9-圆柱圆筒外尺寸扣1个板厚的长度,内的就不要扣板厚
10-折弯公式(刀槽最小):板厚*6=下模槽口大小/2=对半折弯(最小值+1=孔不变形)
11-反刀边线开三角1-3mm(向下折或画线折)
12-数量超过10件,先分类材料\板厚,按名称排序
经验:
T5厚折不到70度20190526
"))
  (princ)
)
;bh2018.10.16s
(defun c:bh()
 
  (setq bhs (getreal ".
.  不锈钢                   碳钢                     镀锌板
--------------------------------------------------------------------
 板厚    实际厚度        板厚      实际厚度            板厚     实际厚度
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


3 含花纹板 2
"))
  (princ)
)


;20180901-Jianpf

;设置圆直径cdd
(defun c:cdd()

;判断是否有圆直径值
(if (not czj) (setq czj (getreal "\n圆直径:")))
;输出圆直径值
(progn (princ "圆直径:") (princ czj))
;选择单个圆对象,修改点对的圆半径值为直径值的一半
(repeat 100  
(progn
(setq cent(entget (car (entsel ))))
(progn (princ "\n圆直径:") (princ (* 2(cdr (assoc 40 cent)))) (princ " -> ")(princ czj))
(setq cent (subst(cons 40 (/ czj 2))(assoc 40 cent)cent))
(entmod cent)

(princ)
)
);退出循环
)

;重新设置圆直径cddd
(defun c:cddd()
(progn
;重新设置圆直径
(setq i (getreal "\n重新设置圆直径:"))
(if (not i) (setq i  czj))
(setq czj i)
;获取对象
(setq cent(entget (car (entsel))))
;输出圆直径值
(progn (princ "\n新圆直径:") (princ czj))
(progn (princ "\n圆直径:") (princ (* 2(cdr (assoc 40 cent)))) (princ " -> ")(princ czj))

;修改圆直径大小
(setq cent (subst(cons 40 (/ czj 2))(assoc 40 cent)cent))
(entmod cent)


(princ)
)
)

;20180701JPF
;复制快捷键cc
(defun c:cc(/ ent)
  (setq ent (ssget))
  (command "copy" ent "" "m")
  (princ)
)

;直线快捷键fa
(defun c:fa()
(command  "_line" ) 
)
;镜像快捷键ee
(defun c:ee()
(command  "_mirror"  )
)

;圆槽(腰孔)偏移快捷键ce
(defun c:ce()
  (progn
   ;设置圆心位置
   (setq pit (getpoint (list 0 0 0) "圆心:"))
   ;设置圆半径实数
   (princ "圆直径:")
   (setq r (getreal))
   ;判断是否输入,没有就默认设置成5
   (if (not r) (setq r 5))
   ;圆命令,位置,半径
   (command "circle" pit "d" r)
   ;记下最后执行操作的对象名称(圆用完可能要删除)
   (setq cname (entlast))

   ;设置圆槽孔到孔实数长度
   (setq rk (getreal))
   (setq rkx  (list (+ (car pit) rk) (+ (cadr pit) 0) 0)  )
   (setq rky (list (car pit) (- (cadr pit) rk ) 0))
   ;圆命令,位置,半径
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

;线性快捷键ad
(defun c:ad()
(command  "_dimlinear" )
  
)
;直径快捷键add
(defun c:add()
 
(command  "_dimdiameter" ) 
)
 



;20180902JPF
;获取标注值再偏移fsa
(defun c:fsa()
(progn (princ "\n选择--标注对象:")) 
(progn
;选择标注对象
(setq ent_bz (entget (nth 0 (entsel)) ))
;判断点对1是否" "空值
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;空值bzz=实际标注点对42,否则就bzz=手动标注1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
(command  "offset" bzz )

(princ) 

  )

;20180902JPF
;获取标注值再偏移fat
(defun c:fat()
(progn (princ "\n选择--标注对象:")) 
(progn
;选择标注对象
(setq ent_bz (entget (nth 0 (entsel)) ))
;判断点对1是否" "空值
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;空值bzz=实际标注点对42,否则就bzz=手动标注1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
;C:t()程序-------
  (princ "板厚:")
  (princ tbh)
  (princ "\n偏移长度:") 
  (setq py bzz)
  (setq py (- py tbh))

  
  (princ "\n折弯扣除:")
  (princ tbh )
  
  (princ "\n   t偏移:")
  (princ py )
  
  (princ "\n")
  (command  "offset" py )
 

(princ) 

  )
;20180902JPF
;获取标注值再偏移fatt
(defun c:fatt()
(progn (princ "\n选择--标注对象:")) 
(progn
;选择标注对象
(setq ent_bz (entget (nth 0 (entsel)) ))
;判断点对1是否" "空值
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;空值bzz=实际标注点对42,否则就bzz=手动标注1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
;C:tt()程序-------
  (princ "板厚:")
  (princ tbh)
  (princ "\ntt偏移长度:")
  (setq pyy bzz)
  ;折弯扣除2次板厚
  (setq pyy (- pyy tbh))
  (setq pyy (- pyy tbh))
     
  (princ "\n折弯扣除:")
  (princ (* tbh 2))
  
  (princ "\n    tt偏移:")
  (princ pyy)


  (princ "\n")
  (command  "offset" pyy )
  (princ) 

(princ) 

  )
;20180902JPF
;获取标注值再偏移fattt
(defun c:fattt()
(progn (princ "\n选择--标注对象:")) 
(progn
;选择标注对象
(setq ent_bz (entget (nth 0 (entsel)) ))
;判断点对1是否" "空值
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;空值bzz=实际标注点对42,否则就bzz=手动标注1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
;C:ttt()程序-------
  (princ "板厚:")
  (princ tbh)
  (princ "\nttt偏移长度:")
  (setq pyy bzz)
  ;折弯扣除3次板厚
  (setq pyy (- pyy tbh))
  (setq pyy (- pyy tbh))
  (setq pyy (- pyy tbh))
     
  (princ "\n折弯扣除:")
  (princ (* tbh 2))
  
  (princ "\n    ttt偏移:")
  (princ pyy)


  (princ "\n")
  (command  "offset" pyy )
  (princ)

  )

;jjat--------
;20180902JPF
;显示标注值+1个板厚c:jat
(defun c:rt()
(progn (princ "\n选择--标注对象:")) 
(progn
;选择标注对象
(setq ent_bz (entget (nth 0 (entsel)) ))
;判断点对1是否" "空值
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;空值bzz=实际标注点对42,否则就bzz=手动标注1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
;C:jjt()程序-------
  (princ "板厚:")
  (princ tbh)
  (princ "\n rt偏移后长度:")
  (setq pyy bzz)
  ;折弯扣除2次板厚
  (setq pyy (+ pyy tbh)) 
     
  (princ "\n折弯扣除:")
  (princ (* tbh 2))

  (princ (strcat "\n rt补+1个板厚(" (rtos tbh 2 3)  "):" ))
  (princ  pyy)
  (setq pyy (getreal))
  (princ)
(princ) 

  )

;jjatt--------
;20180902JPF
;显示标注值+2个板厚c:jjatt
(defun c:rtt()
(progn (princ "\n选择--标注对象:")) 
(progn
;选择标注对象
(setq ent_bz (entget (nth 0 (entsel)) ))
;判断点对1是否" "空值
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;空值bzz=实际标注点对42,否则就bzz=手动标注1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
;C:jjtt()程序-------
  (princ "板厚:")
  (princ tbh)
  (princ "\n rtt偏移后长度:")
  (setq pyy bzz)
  ;折弯扣除2次板厚
  (setq pyy (+ pyy tbh)) 
  (setq pyy (+ pyy tbh)) 
     
  (princ "\n折弯扣除:")
  (princ (* tbh 2))
  
  (princ (strcat "\n rtt补+2个板厚(" (rtos tbh 2 3)  "):" ))
  (princ pyy)
  (setq pyy (getreal))
  (princ)
(princ) 

  )


;jjattt--------
;20180902JPF
;显示标注值+2个板厚c:jjattt
(defun c:rttt()
(progn (princ "\n选择--标注对象:")) 
(progn
;选择标注对象
(setq ent_bz (entget (nth 0 (entsel)) ))
;判断点对1是否" "空值
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;空值bzz=实际标注点对42,否则就bzz=手动标注1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
;C:jjtt()程序-------
  (princ "板厚:")
  (princ tbh)
  (princ "\n rttt偏移后长度:")
  (setq pyy bzz)
  ;折弯扣除2次板厚
  (setq pyy (+ pyy tbh)) 
  (setq pyy (+ pyy tbh)) 
  (setq pyy (+ pyy tbh)) 
     
  (princ "\n折弯扣除:")
  (princ (* tbh 2))
  
  (princ (strcat "\n rttt补+3个板厚(" (rtos tbh 2 3)  "):" ))
  (princ pyy)
  (setq pyy (getreal))
  (princ)
(princ) 

  )

;矩形后剪线
(defun c:dft()
  ;设置圆心位置
 (setq pit (getpoint (list 0 0 0) "矩形起点:"))
  ;设置圆半径实数
  (setq r (getreal "边长:"))
  ;判断是否输入,没有就默认设置成5
  (if (not r) (setq r 30))
  ;圆命令,位置,半径
  (command "_rectang" pit "d" r r pause)
  (command "circle" pit 5 )
  ;记下最后执行操作的对象名称(圆用完可能要删除)
  (setq cname (entlast))
  ;画完圆,执行剪线命令
  (command "trim" "" pause pause pause  pause pause pause)
  ;删除上一次画的对象名称(圆)
  (entdel cname)
  ;回车操作
  (command "\\" )
  ;默认输出为空
  (princ)
)

;剪线快捷键trt
(defun c:trt()
(command  "_trim" "" )
)

;缩放快捷键scs
(defun c:scs()
(command  "scale" pause "0.5" )
)
;放大快捷键scd
(defun c:scd()
(command  "scale"  pause "2" )
)




;JPF20180914-------- 
;点方向
(defun c:dfx()


;定义cond关键字
;(initget "E D S F")
  
  ;设置圆心位置
 (setq pit (getpoint (list 0 0 0) "\n圆心:"))
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

;循环次数
(repeat 2

  
  ;设置方向
 (setq dfxx (getstring   "方向E,D,S,F:") )


;判断方向
(cond
((= dfxx "e") (progn  (command  "line"  ep1  ep2  "") (princ "\n  ^E:上 \n")))
((= dfxx "d") (progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:下 \n")))
((= dfxx "s") (progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:左 \n")))
((= dfxx "f") (progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:右 \n")))
)
);end-repeat 4
  

   
  
  ;默认输出为空
  (princ)
)


;点上方向
(defun c:dfe() 
;设置圆心位置
 (setq pit (getpoint (list 0 0 0) "\n圆心:"))
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
(setvar "osmode" 0);;关闭捕捉20190520
 (progn  (command  "line"  ep1  ep2  "") (princ "\n  ^E:上 \n")) 
 ;(progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:下 \n")) 
 ;(progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:左 \n")) 
 ;(progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:右 \n")) 
 (setvar "osmode" 16383);;捕捉20190520
  ;默认输出为空
  (princ)
)

;点下方向
(defun c:dfd() 
;设置圆心位置
 (setq pit (getpoint (list 0 0 0) "\n圆心:"))
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
(setvar "osmode" 0);;关闭捕捉20190520
 ;(progn  (command  "line"  ep1  ep2  "") (princ "\n  ^E:上 \n")) 
 (progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:下 \n")) 
 ;(progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:左 \n")) 
 ;(progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:右 \n")) 
 (setvar "osmode" 16383);;捕捉20190520
  ;默认输出为空
  (princ)
)

;点左方向
(defun c:dfs() 
;设置圆心位置
 (setq pit (getpoint (list 0 0 0) "\n圆心:"))
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
(setvar "osmode" 0);;关闭捕捉20190520
 ;(progn  (command  "line"  ep1  ep2  "") (princ "\n  ^E:上 \n")) 
 ;(progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:下 \n")) 
 (progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:左 \n")) 
 ;(progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:右 \n")) 
 (setvar "osmode" 16383);;捕捉20190520
  ;默认输出为空
  (princ)
)

;点右方向
(defun c:dff() 
;设置圆心位置
 (setq pit (getpoint (list 0 0 0) "\n圆心:"))
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
(setvar "osmode" 0);;关闭捕捉20190520
 ;(progn  (command  "line"  ep1  ep2  "") (princ "\n  ^E:上 \n")) 
 ;(progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:下 \n")) 
 ;(progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:左 \n")) 
 (progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:右 \n")) 
 (setvar "osmode" 16383);;捕捉20190520w
  ;默认输出为空
  (princ)
)

;JPF20180914--------

;取消线宽显示
(defun c:dw() 
(progn  (command "lwdisplay"  "off") )
)


;JPF20190120--------
(defun c:sddd()
;设置启动
;常用字符串:
(progn
(initget "0 1")
(setq getw (getkword "显示缺口圆:[关(0)/开(1)]" ))	    
(princ getw)
(cond
((= getw "0") (setq sdddc 0))
((= getw "1") (setq sdddc 1))
);end cond
);end progn
)


;缺口点上方向
(defun c:dde() 
;设置圆心位置
 (setq pit (getpoint (list 0 0 0) "\n圆心:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 1)
 ;(setq d 20)
 ;(setq d (+ r d))
(setvar "osmode" 0);;关闭捕捉

    ;判断sdddc是否显示缺口圆
  (if (= sdddc 1) (progn
  ;分辨率处理
   (command "circle" pit 5 )
  ;记下最后执行操作的对象名称(圆用完可能要删除)
  (setq cname (entlast))
  (setq pitx (getpoint (list 0 0 0) "\n方向:"))
  (entdel cname)
   ))


 (setq ep1 (list x (+ y r) ))
 (setq ep2 (list (- x r) y ))
 (setq ep3 (list (+ x r) y ))
  
 (progn  (command  "line"  ep1  ep2  "") ) 
 (progn  (command  "line"  ep1  ep3  "") (princ "\n  ^E:上 \n"))
 (command  "_trim" "" )
 ;(progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:下 \n")) 
 ;(progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:左 \n")) 
 ;(progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:右 \n")) 
 (setvar "osmode" 16383);;开启捕捉20190520
  ;默认输出为空
  (princ)
)


;缺口点下方向
(defun c:ddd() 
;设置圆心位置
 (setq pit (getpoint (list 0 0 0) "\n圆心:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 1)
 ;(setq d 20)
 ;(setq d (+ r d))

(setvar "osmode" 0);;关闭捕捉20190520
    ;判断sdddc是否显示缺口圆
  (if (= sdddc 1) (progn
  ;分辨率处理
   (command "circle" pit 5 )
  ;记下最后执行操作的对象名称(圆用完可能要删除)
  (setq cname (entlast))
  (setq pitx (getpoint (list 0 0 0) "\n方向:"))
  (entdel cname)
   ))
  
 (setq ep1 (list x (- y r) ))
 (setq ep2 (list (- x r) y ))
 (setq ep3 (list (+ x r) y ))
  
 (progn  (command  "line"  ep1  ep2  "") ) 
 (progn  (command  "line"  ep1  ep3  "") (princ "\n  vD:下 \n"))
 (command  "_trim" "" )
 ;(progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:下 \n")) 
 ;(progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:左 \n")) 
 ;(progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:右 \n")) 
 (setvar "osmode" 16383);;捕捉20190520
  ;默认输出为空
  (princ)
)
;缺口左方向
(defun c:dds() 
;设置圆心位置
 (setq pit (getpoint (list 0 0 0) "\n圆心:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 1)
 ;(setq d 20)
 ;(setq d (+ r d))

(setvar "osmode" 0);;关闭捕捉20190520
    ;判断sdddc是否显示缺口圆
  (if (= sdddc 1) (progn
  ;分辨率处理
   (command "circle" pit 5 )
  ;记下最后执行操作的对象名称(圆用完可能要删除)
  (setq cname (entlast))
  (setq pitx (getpoint (list 0 0 0) "\n方向:"))
  (entdel cname)
   ))
  
 (setq ep1 (list (- x r) y ))
 (setq ep2 (list x (+ y r) ))
 (setq ep3 (list x (- y r) ))
  
 (progn  (command  "line"  ep1  ep2  "") ) 
 (progn  (command  "line"  ep1  ep3  "") (princ "\n  vD:左 \n"))
 (command  "_trim" "" )
 ;(progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:下 \n")) 
 ;(progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:左 \n")) 
 ;(progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:右 \n")) 
 (setvar "osmode" 16383);;关闭捕捉20190520
  ;默认输出为空
  (princ)
)
;缺口右方向
(defun c:ddf() 
;设置圆心位置
 (setq pit (getpoint (list 0 0 0) "\n圆心:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 1)
 ;(setq d 20)
 ;(setq d (+ r d))
  
(setvar "osmode" 0);;关闭捕捉20190520
    ;判断sdddc是否显示缺口圆
  (if (= sdddc 1) (progn
  ;分辨率处理
   (command "circle" pit 5 )
  ;记下最后执行操作的对象名称(圆用完可能要删除)
  (setq cname (entlast))
  (setq pitx (getpoint (list 0 0 0) "\n方向:"))
  (entdel cname)
   ))
  
 (setq ep1 (list (+ x r) y ))
 (setq ep2 (list x (+ y r) ))
 (setq ep3 (list x (- y r) ))
  (princ ep1)
   (princ ep2)
   (princ ep3)
 (progn  (command  "line"  ep1  ep2  "") ) 
 (progn  (command  "line"  ep1  ep3  "") (princ "\n  vD:左 \n")) 
 (command  "_trim" "" )
 ;(progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:下 \n")) 
 ;(progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:左 \n")) 
 ;(progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:右 \n")) 
 (setvar "osmode" 16383);;关闭捕捉20190520
  ;默认输出为空
  (princ)
)


;缺口旋转方向
(defun c:ddx() 
;设置圆心位置
 (setq pit (getpoint (list 0 0 0) "\n圆心:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 1)
 ;(setq d 20)
 ;(setq d (+ r d))
(setvar "osmode" 0);;关闭捕捉20190520
 ;旋转必须
  ;分辨率处理
   (command "circle" pit 5 )
  (setvar "osmode" 16383);;捕捉20190520
  ;记下最后执行操作的对象名称(圆用完可能要删除)
  (setq cname (entlast))
  (setq pitx (getpoint (list 0 0 0) "\n  方向:(请放大圆占半屏后选择)"))
  (entdel cname)
 (setvar "osmode" 0);;关闭捕捉20190520
  
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
  (princ "\n  vD:左 \n")
;(entdel l1name)
;(entdel l2name)

 ;(progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:下 \n")) 
 ;(progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:左 \n")) 
 ;(progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:右 \n")) 
 (command  "rotate"  l1name l2name "" pit pitx)
  (setvar "osmode" 16383);;关闭捕捉20190520
  ;(command  "_trim" "" )
  
  ;默认输出为空
 (princ)
)


;缺口旋转方向
(defun c:ddxx() 
  ;设置圆心位置
 (setq pitx (getpoint (list 0 0 0) "\n折痕点:"))


 (setvar "osmode" 0);;关闭捕捉20190520
  ;分辨率处理
   (command "circle" pitx 5 )
  ;记下最后执行操作的对象名称(圆用完可能要删除)
  (setq cname (entlast))
  (setvar "osmode" 16383);;开启捕捉20190530
  (setq pit (getpoint (list 0 0 0) "\n缺角位置:"))
  (entdel cname)
 (setvar "osmode" 0);;关闭捕捉20190520
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
  (princ "\n  vD:左 \n")
;(entdel l1name)
;(entdel l2name)

 ;(progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:下 \n")) 
 ;(progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:左 \n")) 
 ;(progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:右 \n")) 
 ;设置圆心位置
  (command  "rotate"  l1name l2name "" pit )
  
  (setvar "osmode" 16383);;捕捉20190520
  ;(command  "_trim" "" )
  ;默认输出为空
 (princ)
)


;剪线快捷键trt
(defun c:trt()
(command  "_trim" "" )
)
 

;角2 20190123x
(defun c:dftt() 
;设置圆心位置
 (setq pit (getpoint (list 0 0 0) "\n圆心:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 5)
 ;(setq d 20)
 ;(setq d (+ r d))

(setvar "osmode" 0);;关闭捕捉20190520
    ;判断sdddc是否显示缺口圆
  (if (= sdddc 1) (progn
  ;分辨率处理
   (command "circle" pit 5 )
  ;记下最后执行操作的对象名称(圆用完可能要删除)
  (setq cname (entlast))
   (setvar "osmode" 16383);;捕捉20190520
  (setq pitx (getpoint (list 0 0 0) "\n方向:"))
  (entdel cname)
   ))

(setvar "osmode" 0);;关闭捕捉20190520
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
  ;画完旋转
 (command  "rotate"  l1name l2name l3name l4name "" pit "r" pit ep2  pause)
  ;画完圆,执行延长剪线命令
  (command "extend" "" )
 )
  (setvar "osmode" 16383);;捕捉20190520
  ;默认输出为空
  (princ)
)



;标注外尺寸art  jpf20190123x
(defun c:art()
;获取对象
(setq cent(entget (car (entsel (strcat "art补+1个板厚(" (rtos tbh 2 3)  "):" ))))) 
(setq i (cdr (assoc 42 cent)))
(setq i (+ i (* 1 tbh)))
(setq i  (strcat ".折好" (rtos i 2 3)  ))
(princ i)
;修改标注值(替换值,原值,点对中) 
(setq cent (subst(cons 1 i)(assoc 1 cent)cent))
(entmod cent)
(princ)
)
 ;标注外尺寸artt  jpf20190123x
(defun c:artt()
;获取对象
(setq cent(entget (car (entsel (strcat "artt补+2个板厚(" (rtos tbh 2 3)  "):" ))))) 
(setq i (cdr (assoc 42 cent)))
(setq i (+ i (* 2 tbh)))
(setq i  (strcat "..折好" (rtos i 2 3)  ))
(princ i)
;修改标注值(替换值,原值,点对中) 
(setq cent (subst(cons 1 i)(assoc 1 cent)cent))
(entmod cent)
(princ)
)
;标注外尺寸rttta  jpf20190123x
(defun c:arttt()
;获取对象
(setq cent(entget (car (entsel (strcat "arttt补+3个板厚(" (rtos tbh 2 3)  "):" ))))) 
(setq i (cdr (assoc 42 cent)))
(setq i (+ i (* 3 tbh)))
(setq i  (strcat "...折好" (rtos i 2 3)  ))
(princ i)
;修改标注值(替换值,原值,点对中) 
(setq cent (subst(cons 1 i)(assoc 1 cent)cent))
(entmod cent)
(princ)
)

;标注外尺寸arts  jpf20190123x
(defun c:arts()
;获取对象
(setq cent(entget (car (entsel (strcat "重置标尺(" (rtos tbh 2 3)  "):" ))))) 
(setq i (cdr (assoc 1 cent)))
(princ (strcat "修改前:" i ))
(setq i "")
;修改标注值(替换值,原值,点对中) 
(setq cent (subst(cons 1 i)(assoc 1 cent)cent))
(entmod cent)
(princ)
)

;特性匹配ca  jpf20190313s
(defun c:ca() 
(command "matchprop")
)



;拉伸斜点sq  jpf20190307w
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

;拉伸斜点se  jpf20190307w
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

;拉伸斜点se  jpf20190307w
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


;拉伸斜点sqq  jpf20190307w
(defun c:sqq() 
(command "stretch" "p"  P2_1)
)


;adh 快速斜边标注  jpf20190323s
(defun c:adh() 
(command "dimaligned")
)
;addc 快速斜边标注  jpf20190323s
(defun c:addc() 
(command "dimarc")
)


















;jianpf20190516s测试代码

;标注外尺寸art  jpf20190123x
(defun c:artf()
  (progn
    (setq p1p2 (list (getpoint) (getpoint)) )
  (command  "_dimlinear" (car p1p2) (cadr p1p2 ) pause)
    )
;获取对象
(setq cent(entget (car (entsel (strcat "art补+1个板厚(" (rtos tbh 2 3)  "):" ))))) 
(setq i (cdr (assoc 42 cent)))
(setq i (+ i (* 1 tbh)))
(setq i  (strcat ".折好" (rtos i 2 3)  ))
(princ i)
;修改标注值(替换值,原值,点对中) 
(setq cent (subst(cons 1 i)(assoc 1 cent)cent))
(entmod cent)
(princ)
)
 ;标注外尺寸artt  jpf20190123x
(defun c:arttf()
  (command  "_dimlinear" )
;获取对象
(setq cent(entget (car (entsel (strcat "artt补+2个板厚(" (rtos tbh 2 3)  "):" ))))) 
(setq i (cdr (assoc 42 cent)))
(setq i (+ i (* 2 tbh)))
(setq i  (strcat "..折好" (rtos i 2 3)  ))
(princ i)
;修改标注值(替换值,原值,点对中) 
(setq cent (subst(cons 1 i)(assoc 1 cent)cent))
(entmod cent)
(princ)
)
;标注外尺寸rttta  jpf20190123x
(defun c:artttf()
  (command  "_dimlinear" )
;获取对象
(setq cent(entget (car (entsel (strcat "arttt补+3个板厚(" (rtos tbh 2 3)  "):" ))))) 
(setq i (cdr (assoc 42 cent)))
(setq i (+ i (* 3 tbh)))
(setq i  (strcat "...折好" (rtos i 2 3)  ))
(princ i)
;修改标注值(替换值,原值,点对中) 
(setq cent (subst(cons 1 i)(assoc 1 cent)cent))
(entmod cent)
(princ)
)

;jianpf20190516s测试代结束