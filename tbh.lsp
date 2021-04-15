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

;移动捷键ww
(defun c:w()
  (command  "move"  )
)
;移动捷键ww
(defun c:ww()
  (command  "move"  )
)

;偏移快捷键fte板厚的1半弧形用jianpf20190704
(defun c:fte()
  (princ "半弧形偏移板厚:")
  (princ (strcat  (rtos tbh) "/2=" (rtos (/ tbh 2))))
  
  ;(princ "\n")
  (command  "offset" (/ tbh 2) )
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



;---
;20200722sJPF
;获取标注值再画矩形
(defun c:reca(/ ppsx ppsy ppsz)
  ;(setq tbh (getreal "设置实际板厚度(mm):"))
  ;判断板厚是否存在
  (setvar "osmode" 16383);;启动捕捉
  ;(if (not tbh) (setq tbh (getreal "\n板厚:")))
  (setq ww (getreal "平板折好宽度(mm):"))
  (if ww () (setq ww (raval)))
  (setq hh (getreal "平板折好高度(mm):"))
  (if hh () (setq hh (raval)))
  (setq pps (getpoint "中心点:"))
  (setq ppsx (car pps))
  (setq ppsy (cadr pps))
  (setq ppsz (caddr pps))
  (setq ppsx (+ ppsx (/ ww 2)))
  (setq ppsy (- ppsy (/ hh 2)))
  (setq ppss (list ppsx ppsy ppsz))
  (command "rectang" ppss "d" ww hh )
  )
;20200722sJPF
;获取标注值再画矩形重画recar
(defun c:recc()
  (recarr)
)
(defun c:rreca()
  (recarr)
)
(defun recarr(/ ppsx ppsy ppsz)
  (setvar "osmode" 16383);;启动捕捉
  (setq pps (getpoint "中心点:"))
  (setq ppsx (car pps))
  (setq ppsy (cadr pps))
  (setq ppsz (caddr pps))
  (setq ppsx (- ppsx (/ ww 2)))
  (setq ppsy (+ ppsy (/ hh 2)))
  (setq ppss (list ppsx ppsy ppsz))
  (command "rectang" ppss "d" ww hh )
)
;---


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

;偏移快捷键fE---20180902JPF
;(defun c:fe()
;(princ "对称总长度:")
;(setq fedcc (getreal))
;  (setq fedc (/ fedcc 2))
;  (princ "减半:")
;  (princ fedc )
;  (command  "offset" fedc ) 
;)

;---------20190520jianpf
;读取标注值jianpf20190530w
(defun raval()
(progn
(setq cent (entget (car (entsel (strcat "获取标注值:" )))))
;获取标注值
(setq rvale (cdr (assoc 42 cent)))
)  
)
;结束读取标注值

;偏移快捷键fE--20180902JPF--JianPF20200508s
(defun c:fe()
(princ "对称总长度:>选择标注")
(setq fedcc (getreal))
;raval是读取标注值函数20200508
(if fedcc () (setq fedcc (raval)))
  (setq fedc (/ fedcc 2))
  (princ "减半:")
  (princ fedc )
  (command  "offset" fedc ) 
)
;偏移快捷键fEA--20180902JPF--JianPF20200508s
(defun c:fea()
(princ "对称总长度:>标注")
(setq fedcc (raval))
  (setq fedc (/ fedcc 2))
  (princ "减半:")
  (princ fedc )
  (command  "offset" fedc ) 
)

;偏移快捷键t
(defun c:t()
  (princ "板厚:")
  (princ tbh)
  (princ (strcat "\n偏移长度:" "板厚=" (rtos tbh)) )
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
-a    ad:线性标注  adh 快速斜边标注   add:直径标注  art:折好高度1个板厚(artt:2个板厚 artt:3个板厚)
      rat:ratt:rattt:前一次标注负-厚偏移
-b bb:全局比例查看校对
-c    cc:复制  ce:cee圆槽  cdd:修改圆直径  cddd:编辑圆直径  cm:梅花孔(水平孔距,水平孔距中点偏上垂直孔距,
      阵列孔距水平和垂直孔距的2倍) cxx:圆打标  ccds:同心圆环  ccdss设置圆环圆心(2019.09.13)
      crec:半圆转正四边形  ccr:半圆转圆(2020.05.08)
-d    dft:半径圆和矩形剪线5次删除圆  dfx:dfxx点方向(折痕)  ddx:缺口<>  dff:dds:ddd:dde:快速折痕
      div:平分段系统命令   dfg:dfge:dfgg:dfggs:dfggd:线两端(折痕) dar:(dimarc系统弧长)
-e    ee:镜像  ega:清除组
-f    fa:直线  fe:fea:总对称偏移  fs:偏移  ft:偏移1个板厚 fte:1半板厚  fsa:;获取标注值再偏移(标注值)
      fatttw:rfat:rfatt:rfattt:先获取标注分别三连偏移(Z钣金件2020.3) fdra:圆角延伸(2020.8.22)
-t    tbh:设置板厚值   trt:剪线快捷键
      t:长度-1*板厚值(fat:获取标注值后-1*板厚值偏移)
      tt:长度-2板厚(fatt:获取标注值后-2*板厚值偏移)
      ttt:长度-3板厚(fattt:获取标注值后-3*板厚值偏移)
-r    rt(20190116x旧名jjt):模拟折弯1次 前长度=折弯长度+1*板厚值(jjat:标注值) rrf:rrfa:rrfsxy:余料减法
      rtt(jjtt):模拟折弯2次 前长度=折弯长度+2*板厚值(jjatt:标注值)
      rttt(jjttt):模拟折弯3次 前长度=折弯长度+3*板厚值(jjattt:标注值) rst12345:设置字体大小
-j    jbox:jjbox:简单盒子jh:jjh:盒子折弯线jbtxt:重新文本
-ucs w 恢复世界坐标
-s    s:拉伸   sc:缩放 (scs:缩0.5  scd:放大2倍) szt:sztt:sztt:设置字体宋体   scr:scrr:缩放到新尺寸(开发中2019.3-2020.8.25)
      szf(simplex.shx):szff(txt):szfff(宋体) sdes:sde设置捕捉全部:中心垂直点
      stds:统计刀数 stdss:重置刀数
      SELECTSIMILAR:(CAD)选择同类对象  stdst:累积刀数文件 stssf:插入文件名
-w    wst:存储板厚材料数量比例  rfn:stssf:当前文件名
-r    rwst:读取板厚材料数量比例 rsc:读取比例缩放 rar:比例计算 reca:recc:获取值再中心矩形(20200722s) 
-z    zzf:中心线
-l    lspjgf:加载报价命令ggf:行程激光费ccf:材料费

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
不锈钢不能百叶孔20190622
13-滚圆,开料整圆,只能 圆环+圆环 (不能 半环+半环)20190909x
14-铝板内5mm厚,孔3.5mm可以切
15-按件算取大半整数,批量按小整数20191022
16-T10铁孔边到折高要30mm,离折痕要20mm(否则打标转孔)20191223x
17-T6铁开始用50槽折,折痕要25mm,否则打标20191223x  T6T8铁30槽18孔边离折痕14有点变形20200320x
18-顶刀原理:外折痕和最近内折痕等边三角形圆理就不好折弯
19-T2正反刀中间要至少15mm,后面刀也要看下膜槽的宽度(15或100mm)20200110s
20-T1.2 T2 用10mm曹折弯,折痕和孔边至少6才能上槽(12的大半)
21-封板原理,短做封板焊接就少点20200113s
22-铁T20 不锈钢T10 铝T5 20200331x
23-补偿单边0.025增值,比如T10厚孔直径10的单边0.35,孔直径切出来是10.7孔(20200514s)
24-折弯刀上膜长10mm 20mm 30mm 60mm 100mm


T10 切通孔8mm直径
T6  切通孔3mm直径
T2  切通孔0.2点穿

T1.1厚冷板 480*2500长约有200件预料 20201009记录


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
 4       3.5                 8             7.2                    3
 5       4.5                 10            9.5
 6       5.5                 12            11
.                              16            16
.10                          18
.                              20
.                              0.8           0.8
                              14	    13.6

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


;半圆弧转圆ccr--JianPF20200508x
(defun c:ccr()
;开始循环体
(repeat 100 
(progn
;获取对象
(setq ent_ty (nth 0 (entsel)))
(setq cent (entget ent_ty ))
;(setq cent(entget (car (entsel))))
;获取圆半径值
(setq i (cdr (assoc 40 cent)))
(progn (princ "\n圆直径:") (princ (* 2(cdr (assoc 40 cent)))))
(setq pit (cdr (assoc 10 cent)))
(command "circle" pit i)
(command "erase" ent_ty "" )
(princ)
)
);结束循环体
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
   (setvar "osmode" 0);;关闭捕捉
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
  (setvar "osmode" 16383);;关闭捕捉
  (princ)
)

;圆槽(腰孔)偏移快捷键cee JianPF20200918s
(defun c:cee()
  (progn
   ;设置圆心位置
   (setq pit (getpoint (list 0 0 0) "圆边顶点位置:"))
   ;设置圆半径实数
   (princ "圆直径:")
   (setq r (getreal))
   ;判断是否输入,没有就默认设置成5
   (if (not r) (setq r 5))
   ;(setq pit (list (+ (car pit) (/ r 2)) (- (cadr pit)  (/ r 2)) (caddr pit) ));位移半径
   (setq pit (list (+ (car pit) (/ r 2))  (cadr pit)  (caddr pit) ));位移半径
   ;圆命令,位置,半径
   (command "circle" pit "d" r)
   ;记下最后执行操作的对象名称(圆用完可能要删除)
   (setq cname (entlast))

   ;设置圆槽孔到孔实数长度
   (setq rk (getreal))
   (setq rk (- rk r));减1个圆直径JianPF20200918s
   (setq rkx  (list (+ (car pit) rk) (+ (cadr pit) 0) 0)  )
   (setq rky (list (car pit) (- (cadr pit) rk ) 0))
   ;圆命令,位置,半径
   (command "circle" rkx "d" r)
   (setvar "osmode" 0);;关闭捕捉
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
   (setq pit (list (- (car pit) (/ r 2))  (- (cadr pit) (/ r 2))  (caddr pit) ));位移半径
   (command "circle" pit "d" r);重画圆20200918s
   (setq rky (list (car pit) (- (cadr pit) rk ) 0))
   (command "circle" rky "d" r);重画下圆20200918s
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
  (setvar "osmode" 16383);;关闭捕捉
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

;ega解组清除组20190609
(defun c:ega()
(command  "UNGROUP" "a" )
)

;缩放到新尺寸--JianPF20200825x
(defun c:scr()
(prompt "\n获取缩放对象并缩放:")
(setq ent (ssget ))
(if (not bl) (setq bl (getreal "缩放比例值:")))
(if (not bl) (setq bl (getreal "请输入缩放值:")))
(princ bl)
;(setq pit (getpoint "\缩放基准点bai:"))
(command "_scale" ent "" pause bl)
)
;设置缩放到新尺寸--JianPF20200825x
(defun c:scrr()
(prompt "\n;获取缩放对象并设置值:")
(setq ent (ssget ))
(setq pit (getpoint "\缩放基准点bai:"))
(setq bl (getreal "设置缩放值:"))
(command "_scale" ent "" pit bl)
)


;缩放快捷键scs--JianPF20200825
(defun c:scs()
(setq ent (ssget ))
(command "_scale" ent "" pause 0.5)
)
;缩放快捷键scss--JianPF20200825
(defun c:scss()
(setq ent (ssget ))
(command "_scale" ent "" pause 0.25)
)
;放大快捷键scd--JianPF20200825
(defun c:scsd()
(setq ent (ssget ))
(command "_scale" ent "" pause 2)
)
;放大快捷键scd--JianPF20200825
(defun c:scd()
(setq ent (ssget ))
(command "_scale" ent "" pause 2)
)
;放大快捷键scd--JianPF20200825
(defun c:scdd()
(setq ent (ssget ))
(command "_scale" ent "" pause 4)
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

;--------------
;点上方向线JianPF20200515x
(defun c:dfee() 
;设置圆心位置
 (setq pit (getpoint (list 0 0 0) "\n圆心:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 5)
 (setq d 20)
 (setq d (+ r d))

 (setq ep1 pit)
 (setq ep2 (list x (+ y d) ))
(setvar "osmode" 0);;关闭捕捉20190520
 (progn  (command  "line"  ep1  ep2  "") (princ "\n  ^E:上 \n"))
 (setvar "osmode" 16383);;捕捉20190520
  ;默认输出为空
  (princ)
)

;点下方向线JianPF20200515x
(defun c:dfdd() 
;设置圆心位置
 (setq pit (getpoint (list 0 0 0) "\n圆心:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 5)
 (setq d 20)
 (setq d (+ r d))

 (setq dp1 pit )
 (setq dp2 (list x (- y d) ))

(setvar "osmode" 0);;关闭捕捉20190520
 ;(progn  (command  "line"  ep1  ep2  "") (princ "\n  ^E:上 \n")) 
 (progn  (command  "line"  dp1  dp2  "") (princ "\n  vD:下 \n")) 
 ;(progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:左 \n")) 
 ;(progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:右 \n")) 
 (setvar "osmode" 16383);;捕捉20190520
  ;默认输出为空
  (princ)
)

;点左方向线JianPF20200515x
(defun c:dfss() 
;设置圆心位置
 (setq pit (getpoint (list 0 0 0) "\n圆心:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 5)
 (setq d 20)
 (setq d (+ r d))


 (setq sp1 pit )
 (setq sp2 (list (- x d) y ))
  
(setvar "osmode" 0);;关闭捕捉20190520
 (progn  (command  "line"  sp1  sp2  "") (princ "\n  <S:左 \n")) 
 (setvar "osmode" 16383);;捕捉20190520
  ;默认输出为空
  (princ)
)

;点右方向线JianPF20200515x
(defun c:dfff() 
;设置圆心位置
 (setq pit (getpoint (list 0 0 0) "\n圆心:"))
 (setq x (car pit))
 (setq y (cadr pit))
 (setq r 5)
 (setq d 20)
 (setq d (+ r d))

 (setq fp1 pit )
 (setq fp2 (list (+ x d) y ))
(setvar "osmode" 0);;关闭捕捉20190520 
 (progn  (command  "line"  fp1  fp2  "") (princ "\n  >F:右 \n")) 
 (setvar "osmode" 16383);;捕捉20190520w
  ;默认输出为空
  (princ)
)

;半圆转正四边形JianPF20200516w
(defun c:crec() 
;获取圆对象
(setvar "osmode" 16383);;启动捕捉
(setq ent_cff (entget (car (entsel ))) )
(setq ent_cf ent_cff)
;获取圆半径
(setq c_r (cdr (assoc 40 ent_cf )))
;转圆直径
;(setq c_d (* c_r 2))
;获取圆心点
(setq c_p (cdr (assoc 10 ent_cf )))
(command "_rectang" c_p "D" c_r   c_r   )
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
 (setq r 0.5)
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
 (setq r 0.5)
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
 (setq r 0.5)
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
 (setq r 0.5)
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
(defun c:ddxx() 
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
(defun c:ddx() 
  ;设置圆心位置
 (setq pitx (getpoint (list 0 0 0) "\n折痕点:"))

 (setvar "osmode" 0);;关闭捕捉20190520
  ;分辨率处理
   (command "circle" pitx 5 )
  ;记下最后执行操作的对象名称(圆用完可能要删除)
  (setq cname (entlast))
  (setvar "osmode" 16383);;开启捕捉20190530
  (setq pit (getpoint (list 0 0 0) "\n缺角位置:"))
  ;;jianpf20190612x修复bug,xy位置
 (setq x (car pit))
 (setq y (cadr pit))
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
;adrh 快速角度标注  jpf20191127x
(defun c:adrh() 
(command "dimangular")
)

;隐藏图层灯  jpf20191204x
(defun c:aff() 
(command "layoff")
)

;--------------------

;创建字体  20200301w
(defun c:szt() 
(command "-style" "Standard" "宋体" "" "" "" "" "")
)
;创建字体  20200301w
(defun c:sztt() 
(command "-style" "Standard" "txt" "" "" "" "" "" "")
);创建字体  20200301w
(defun c:szt() 
(command "-style" "Standard" "宋体" "" "" "" "" "")
)
;创建字体  20200301w
(defun c:szttt() 
(command "-style" "Standard" "仿宋" "" "" "" "" "")
)
;创建字体  20200320x
(defun c:szf() 
(command  "FONTALT"  "simplex.shx")
)
;创建字体  20200320x
(defun c:szff() 
(command  "FONTALT"  "txt")
)
;创建字体  20200320x
(defun c:szfff() 
(command  "FONTALT"  "宋体")
)
;jianpf 20200301
;设置板厚tbh
(defun c:tbd5()
(princ "设置板厚:")
(setq tbh 0.5);
)
(defun c:tbd8()
(princ "设置板厚:")
(setq tbh 0.8);
)
(defun c:tb1d()
(princ "设置板厚:")
(setq tbh 1);
)
(defun c:tb1d2()
(princ "设置板厚:")
(setq tbh 1.2);
)
(defun c:tb1d3()
(princ "设置板厚:")
(setq tbh 1.3);
)
(defun c:tb1d5()
(princ "设置板厚:")
(setq tbh 1.5);
)
(defun c:tb1d8()
(princ "设置板厚:")
(setq tbh 1.8);
)
(defun c:tb2()
(princ "设置板厚:")
(setq tbh 2);
)
(defun c:tb2d8()
(princ "设置板厚:")
(setq tbh 2.8);
)
(defun c:tb3d5()
(princ "设置板厚:")
(setq tbh 3.5);
)
(defun c:tb4d5()
(princ "设置板厚:")
(setq tbh 4.5);
(princ)
)
(defun c:tb5d5()
(princ "设置板厚:")
(setq tbh 5.5);
)
(defun c:tb7d2()
(princ "设置板厚:")
(setq tbh 7.2);
)
(defun c:tb9d5()
(princ "设置板厚:")
(setq tbh 9.5);
)
(defun c:tb11()
(princ "设置板厚:")
(setq tbh 11);
)

;20200229JPF
;创建线线的中心线
(defun c:zzf()
(progn (princ "\n创建--中心线:")) 
(progn
;选择直线1
(setq ent_l1 (entget (nth 0 (entsel)) ))
;线1端点p1的xyz值
(setq p1 (cdr(assoc 10 ent_l1 )))
(setq x1 (car p1))
(setq y1 (cadr p1))
(setq z1 (caddr p1))
;线1端点p2的xyz值
(setq p2 (cdr(assoc 11 ent_l1 )))
(setq x2 (car p2))
(setq y2 (cadr p2))
(setq z2 (caddr p2))
;计算中点坐标值
(setq px (/ (+ x1 x2) 2))
(setq py (/ (+ y1 y2) 2))
(setq pz (/ (+ z1 z2) 2))

(setq pp1 (list px py pz))
;----
;选择直线2
(setq ent_l1 (entget (nth 0 (entsel)) ))
;线1端点p1的xyz值
(setq p1 (cdr(assoc 10 ent_l1 )))
(setq x1 (car p1))
(setq y1 (cadr p1))
(setq z1 (caddr p1))
;线1端点p2的xyz值
(setq p2 (cdr(assoc 11 ent_l1 )))
(setq x2 (car p2))
(setq y2 (cadr p2))
(setq z2 (caddr p2))
;计算中点坐标值
(setq px (/ (+ x1 x2) 2))
(setq py (/ (+ y1 y2) 2))
(setq pz (/ (+ z1 z2) 2))

(setq pp2 (list px py pz))
;画出中线线
(setvar "osmode" 0);;关闭捕捉20190520
(command  "line"  pp1  pp2  "")
(setvar "osmode" 16383);;捕捉20190520
(princ) 
  );progn
)


;20200229JPF
;创建折痕线--1年5个月的不放弃成果折痕命令突破了
(defun c:dfge()
(dfgggg)
(princ)
(command  "erase" ent_ty "" ) 
(princ)
)
;20200229JPF
;创建折痕线--1年5个月的不放弃成果折痕命令突破了
(defun c:dfg()
(dfgggg)
(princ)
)

;20200229JPF20200414w
;创建折痕线--1年5个月的不放弃成果折痕命令突破了
(defun c:dfgg()
  ;设置圆半径实数
  ;(setq llw (getreal "折痕长于(3000)做短痕:"))
  ;判断是否输入,没有就默认设置成5
  (if (not llw) (setq llw 100))
(dfgx llw)
(princ)
)

;20200229JPF20200414w20200515x
;创建折痕线--1年5个月的不放弃成果折痕命令突破了
(defun c:dfggd()
  ;设置圆半径实数
  ;(setq llw (getreal "折痕长于(3000)做短痕:"))
  ;判断是否输入,没有就默认设置成5
  ;(if (not llw) (setq llw 10000))
(dfgx 20000)
(princ)
)

;20200229JPF20200414w
;创建折痕线--1年5个月的不放弃成果折痕命令突破了
(defun c:dfggs()
  ;设置圆半径实数
  (setq llw (getreal (strcat "折痕长于(" (rtos llw) ")做短痕:") ))
  ;判断是否输入,没有就默认设置成5
  (if (not llw) (setq llw 100))
(dfgx llw)
(princ)
)

;20200229JPF
;创建折痕线--1年5个月的不放弃成果折痕命令突破了
(defun dfgggg()
(progn (princ "\n创建短折痕--选择折痕g:")) 
(progn
;选择直线1
(setq ent_ty (nth 0 (entsel)))
(setq ent_l1 (entget ent_ty ))
;线1端点p1的xyz值
(setq p1 (cdr(assoc 10 ent_l1 )))
(setq x1 (car p1))
(setq y1 (cadr p1))
(setq z1 (caddr p1))
;线1端点p2的xyz值
(setq p2 (cdr(assoc 11 ent_l1 )))
(setq x2 (car p2))
(setq y2 (cadr p2))
(setq z2 (caddr p2))

;线长度
(setq ll (distance p1 p2))
(if (> ll 100) (progn
;线各端点的斜率向量
(setq lla (angle p1 p2))
(setq llb (angle p2 p1))
;折痕线1
(setq pp1 (polar p1 lla 5))
(setq pp2 (polar p1 lla 20))
;折痕线2
(setq pp3 (polar p2 llb 5 ))
(setq pp4 (polar p2 llb 20))
;画2边端点的2条折痕线
(setvar "osmode" 0);;关闭捕捉20190520
;;取得当前颜色为#os6
;线条变色
  (setq  os6 (getvar "Cecolor"))
  (setvar "cecolor" "6");改变当前颜色为JianPF20201008x
;画两边折痕线
(command  "line"  pp1  pp2  "")
(command  "line"  pp3  pp4  "")
(setvar "Cecolor" os6);颜色还原
(setvar "osmode" 16383);;捕捉20190520
(princ " -折痕- ");
  );progn
(princ "折痕小于100mm");
);if
);头progon
(princ)
)


;半圆弧延生fdra--JianPF20200822x
(defun c:fdra()
;开始循环体
(repeat 100 
(progn
;获取对象
(setq ent_ty (nth 0 (entsel "选择重画的圆角:")))
(setq cent (entget ent_ty ))
;获取圆半径值
(setq fdri (cdr (assoc 40 cent)))
;保存半径
(command "fillet" "r" fdri )
(setq ent1 (entsel "\n选择1圆角边:"))
(setq ent2 (entsel "\n选择1圆角边:"))
(command "fillet" ent1 ent2)
(command "erase" ent_ty "" )
(princ)
)
);结束循环体
)
;开启所有捕捉
(defun c:sdes()
(setvar "osmode" 16383);;捕捉20190520
)
;开启所有捕捉
(defun c:sde()
(setvar "osmode" 431);;捕捉20190520
)

;20200229JPF..20200414xw
;创建折痕线--1年5个月的不放弃成果折痕命令突破了
(defun dfgx(llw)
(progn (princ "\n创建短折痕--选择折痕gx:")) 
(progn
;选择直线1
(setq ent_ty (nth 0 (entsel)))
(setq ent_l1 (entget ent_ty ))
;线1端点p1的xyz值
(setq p1 (cdr(assoc 10 ent_l1 )))
(setq x1 (car p1))
(setq y1 (cadr p1))
(setq z1 (caddr p1))
;线1端点p2的xyz值
(setq p2 (cdr(assoc 11 ent_l1 )))
(setq x2 (car p2))
(setq y2 (cadr p2))
(setq z2 (caddr p2))

;线长度
(setq ll (distance p1 p2))
(if (> ll llw) (progn
;线各端点的斜率向量
(setq lla (angle p1 p2))
(setq llb (angle p2 p1))
;折痕线1
(setq pp1 (polar p1 lla 5))
(setq pp2 (polar p1 lla 20))
;折痕线2
(setq pp3 (polar p2 llb 5 ))
(setq pp4 (polar p2 llb 20))
;画2边端点的2条折痕线
(setvar "osmode" 0);;关闭捕捉20190520
;;取得当前颜色为#os6
;线条变色
  (setq  os6 (getvar "Cecolor"))
  (setvar "cecolor" "6");改变当前颜色为
(command  "line"  pp1  pp2  "")
(command  "line"  pp3  pp4  "")
(setvar "Cecolor" os6);颜色还原
(setvar "osmode" 16383);;捕捉20190520
(princ " -折痕- ");
  );progn
(progn
  (princ "折痕小于3100mm");
  (setq lla (angle p1 p2))
(setq llb (angle p2 p1))
;折痕线1
(setq pp1 (polar p1 lla 2)) 
;折痕线2
(setq pp3 (polar p2 llb 2 ))
;(setq cent (subst(cons 10 pp1)(assoc 10 ent_l1)ent_l1))
;(setq cent (subst(cons 11 pp3)(assoc 11 ent_l1)ent_l1))
;开始修改(JianPF20200312)
;(entmod cent)
(setvar "osmode" 0);;关闭捕捉20190520
;;取得当前颜色为#os6
;线条变色
  (setq  os6 (getvar "Cecolor"))
  (setvar "cecolor" "6");改变当前颜色为
(command  "line"  pp1  pp3  "")
(setvar "Cecolor" os6);颜色还原
(setvar "osmode" 16383);;捕捉20190520
;(setq ent_ty (cdr(assoc -1 ent_l1 )))
;删除选择的图元名
;;(command  "erase" ent_ty "" ) 
);else progn
);if
);头progon
  
;总是删除选择的图元名
(command  "erase" ent_ty "" ) 
(princ)
)

;20180902JPF20200302w
;获取标注值再偏移rat
(defun c:rat()
(command  "offset" (- bzz (* tbh 1) ) ) 
(princ) 
  )
;20180902JPF20200302w
;获取标注值再偏移aftt
(defun c:ratt()
(command  "offset" (- bzz (* tbh 2) ) ) 
(princ) 
  )
;20180902JPF20200302w
;获取标注值再偏移afttt
(defun c:rattt()
(command  "offset" (- bzz (* tbh 3) ) ) 
(princ) 
  )

;20200302wJPF
;获取标注值再再再fatttw一次偏移fatttw
(defun c:fatttw()
;判断板厚是否存在
(if (not tbh) (setq tbh (getreal "\n板厚:")))
(progn (princ "\n选择--标注对象1:")) 
(progn
;选择标注对象
(setq ent_bz (entget (nth 0 (entsel "选择-标注1")) ))
;判断点对1是否" "空值
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;空值bzz=实际标注点对42,否则就bzz=手动标注1
(if (= ent_bz1 "") (setq bzz ent_bz42) (setq bzz ent_bz1))
)
(progn (princ "\n选择--标注对象2:")) 
(progn
;选择标注对象
(setq ent_bz (entget (nth 0 (entsel "选择-标注2")) ))
;判断点对1是否" "空值
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;空值bzz=实际标注点对42,否则就bzz=手动标注1
(if (= ent_bz1 "") (setq bzz2 ent_bz42) (setq bzz2 ent_bz1))
)
(progn (princ "\n选择--标注对象3:")) 
(progn
;选择标注对象
(setq ent_bz (entget (nth 0 (entsel "选择-标注3")) ))
;判断点对1是否" "空值
(setq ent_bz1 (cdr(assoc 1 ent_bz )))
(setq ent_bz42 (cdr(assoc 42 ent_bz )))
;空值bzz=实际标注点对42,否则就bzz=手动标注1
(if (= ent_bz1 "") (setq bzz3 ent_bz42) (setq bzz3 ent_bz1))
)
(princ) 
)

;20200302wJPF
;获取标注值一次偏移fatttw再再再rfat
(defun c:rfat()
;判断板厚是否存在
(if (not tbh) (setq tbh (getreal "\n板厚:")))
(princ "\n刀--标注1:")
(command  "offset" (- bzz (* tbh 1) )  ) 
(princ) 
)
;20200302wJPF
;获取标注值一次偏移fatttw再再再ratt
(defun c:rfatt()
;判断板厚是否存在
(if (not tbh) (setq tbh (getreal "\n板厚:")))
(princ "\n刀--标注2:")
(command  "offset" (- bzz2 (* tbh 2) ) ) 
(princ) 
)
;20200302wJPF
;获取标注值一次偏移fatttw再再再rattt
(defun c:rfattt()
;判断板厚是否存在
(if (not tbh) (setq tbh (getreal "\n板厚:")))
(princ "\n刀--标注3:")
(command  "offset" (- bzz3 (* tbh 1) ) ) 
(princ) 
)

;--------------------
;jianPF20200626x切开孔折痕
;切开孔折ddg  jpf20190123x
(defun c:ddg()
(setq p1 (list (getpoint) (getpoint)) )
(setq p2 (list (getpoint) (getpoint)) )
(setq p2 (list (getpoint) (getpoint)) )
;选择直线1
(setq ent_ty (nth 0 (entsel)))
(setq ent_l1 (entget ent_ty ))
;线1端点p1的xyz值
(setq p1 (cdr(assoc 10 ent_l1 )))
(setq x1 (car p1))
(setq y1 (cadr p1))
(setq z1 (caddr p1))
;线1端点p2的xyz值
(setq p2 (cdr(assoc 11 ent_l1 )))
(setq x2 (car p2))
(setq y2 (cadr p2))
(setq z2 (caddr p2))

;线长度
(setq ll (distance p1 p2))
  
)

;标注-预料值JianPF20201009x
(defun c:rrfa()
  (if rrfss () (setq rrfx (getreal "预减值:")))
  (setq ww (getreal "预减标注长度值:"))
  (if ww () (setq ww (raval)))
  (setq rrfse (- ww rrfx ))
  (getreal (strcat  "预减结果 " (rtos ww) " - " (rtos rrfx) " = " (rtos rrfse) ":"))
)
;标注-预料值JianPF20201009x
(defun c:rrf()
  (if rrfx () (setq rrfx (getreal "余料x长度:")))
  (if rrfy () (setq rrfy (getreal "余料y长度:")))
  (setq ww (getreal "零件长度:"))
  (if ww () (setq ww (raval)))
  (setq rrfsx (-  rrfx  ww))
  (setq rrfsy (-  rrfy  ww))
  (getreal (strcat  "余料剩余x: " (rtos rrfx) " - " (rtos ww) " = " (rtos rrfsx) "\n"  "余料剩余y: " (rtos rrfy) " - " (rtos ww) " = " (rtos rrfsy) ))
  (getreal (strcat  ))
)

;标注-预料值 设置值JianPF20201009x
(defun c:rrfsxy()
  (setq rrfx (getreal "余料x长度:"))
  (setq rrfy (getreal "余料y长度:"))
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