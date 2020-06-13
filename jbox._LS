;jbox钣金盒子展开外尺寸20190404x ver:0.001-1.0
;jianpf 20190404x
;设置板厚tbh
(defun c:tbhj()
(princ "jbox设置板厚:")
(setq tbh (getreal));  
(princ "板厚:")
(princ tbh)
(princ)
)
 
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


(defun c:jbox()
  ;(setq tbh (getreal "设置实际板厚度(mm):"))
  ;判断板厚是否存在
(if (not tbh) (setq tbh (getreal "\n板厚:")))
  (setq ww (getreal "平板折好宽度(mm):"))
  (if ww () (setq ww (raval)))
  (setq hh (getreal "平板折好高度(mm):"))
  (if hh () (setq hh (raval)))
  (setq t1 (getreal "90度折高(mm):"))
  (if t1 () (setq t1 (raval)))
  
  (setq pps (getpoint "中心点:"))
  
  (setq wwtt (- ww (* 2 tbh) ))
  (setq hhtt (- hh (* 2 tbh) ))
  (setq t1t (- t1 tbh))
  (setq w (/ ww 2))
  (setq h (/ hh 2))
  (setq wt (- w tbh))
  (setq ht (- h tbh))
  (setq ppx (car pps))
  (setq ppy (cadr pps))
  (setq p1 (list (+ wt ppx) (+ ht ppy))) 
  (setq p2 (polar p1 (polarx 180.0) wwtt))
  (setq p3 (polar p2 (polarx 270.0) hhtt))
  (setq p4 (polar p3 (polarx 0.0) wwtt))
  (setvar "osmode" 0);;关闭捕捉
  ;(command "pline" p1 p2 p3 p4  "c")
  (setq pz0 (polar p1 (polarx 90.0) t1t))
  (setq pz1 (polar pz0 (polarx 180.0) wwtt))
  (setq pz2 (polar pz1 (polarx 270.0) t1t))
  (setq pz3 (polar pz2 (polarx 180.0) t1t))
  (setq pz4 (polar pz3 (polarx 270.0) hhtt))
  (setq pz5 (polar pz4 (polarx 0.0) t1t))
  (setq pz6 (polar pz5 (polarx 270.0) t1t))
  (setq pz7 (polar pz6 (polarx 0.0) wwtt))
  (setq pz8 (polar pz7 (polarx 90.0) t1t))
  (setq pz9 (polar pz8 (polarx 0.0) t1t))
  (setq pz10 (polar pz9 (polarx 90.0) hhtt))
  (setq pz11 (polar pz10 (polarx 180.0) t1t))
  (command "pline" p1 pz0 pz1 pz2  pz3 pz4 pz5 pz6 pz7 pz8 pz9 pz10 pz11 "")
  (setvar "osmode" 16383);;启动捕捉

  ;文本位置
  (if (not rsth) (setq rsth 60))
  (setq txtpit (getpoint "\n创建 单行文本位置:"))
  (setq rstext (strcat "T" (rtos tbh) "  wh:" (rtos ww) "*" (rtos hh) "  tt:" (rtos t1)  ))
  (command "text" txtpit  (/ rsth 2) 0 rstext )
  )


;折弯线 经度函数(起点坐标,经度方向)
(defun zwx(zwdp polarxx)
(setq xianchang (+ 5 20))
  (setvar "osmode" 0);;关闭捕捉
  (command "line" (polar zwdp polarxx 5)  (polar zwdp polarxx xianchang) "") 
  )
(defun dzwx ()
  (zwx p1 polars)(zwx p1 polard)
  (zwx p2 polarf)(zwx p2 polard)
  (zwx p3 polare)(zwx p3 polarf)
  (zwx p4 polare)(zwx p4 polars)
  (setvar "osmode" 16383);;关闭捕捉
)
(defun ddzwx ()
  (zwx pz0 polars)
  (zwx pz3 polarf)
  (zwx pz5 polard)
  (zwx pz8 polare)
  (zwx pz10 polarf)
  (zwx pz13 polars)
  (zwx pz15 polare)
  (zwx pz18 polard)
 
  (setvar "osmode" 16383);;关闭捕捉
)

(defun c:jh()
  (dzwx)
  )
(defun c:jjh()
  (ddzwx)
  )
(defun c:jjbox()
  ;(setq tbh (getreal "设置实际板厚度(mm):"))
  ;判断板厚是否存在
  (if (not tbh) (setq tbh (getreal "\n板厚:")))
 
  (setq ww (getreal "平板折好宽度(mm):"))
  (if ww () (setq ww (raval)))
  (setq hh (getreal "平板折好高度(mm):"))
  (if hh () (setq hh (raval)))
  (setq t1 (getreal "90度折高(mm):"))
  (if t1 () (setq t1 (raval)))
  (setq t2 (getreal "90度再内折(mm):"))
  (if t2 () (setq t2 (raval)))
  ;20190702x
  (setq pps (getpoint "中心点:"))
  
  (setq wwtt (- ww (* 2 tbh) ))
  (setq hhtt (- hh (* 2 tbh) ))
  (setq t1t (- t1 (* 2 tbh)))
  (setq t2t (- t2  tbh))
  (setq t245 (/ t2t (sin polart)))
  (setq t245c (* t245 (cos polart)))
  (setq t245c2 (* t245c 2))
  (setq w (/ ww 2))
  (setq h (/ hh 2))
  (setq wt (- w tbh))
  (setq ht (- h tbh))
  (setq ppx (car pps))
  (setq ppy (cadr pps))
  (setq p1 (list (+ wt ppx) (+ ht ppy)))
  (setq p2 (polar p1 (polarx 180.0) wwtt))
  (setq p3 (polar p2 (polarx 270.0) hhtt))
  (setq p4 (polar p3 (polarx 0.0) wwtt))
  (setvar "osmode" 0);;关闭捕捉
  ;(command "pline" p1 p2 p3 p4  "c")
  (setq pz0 (polar p1 (polarx 90.0) t1t))
  (setq pz1 (polar pz0 (polarx 135.0) t245))
  (setq pz2 (polar pz1 (polarx 180) (- wwtt t245c2) ))
  (setq pz3 (polar pz2 (polarx 225) t245 ))
  (setq pz4 (polar pz3 (polarx 270) t1t ))
  (setq pz5 (polar pz4 (polarx 180) t1t ))
  (setq pz6 (polar pz5 (polarx 225) t245 ))
  (setq pz7 (polar pz6 (polarx 270) (- hhtt t245c2) ))
  (setq pz8 (polar pz7 (polarx 315) t245 ))
  (setq pz9 (polar pz8 (polarx 0) t1t ))
  (setq pz10 (polar pz9 (polarx 270) t1t ))
  (setq pz11 (polar pz10 (polarx 315) t245 ))
  (setq pz12 (polar pz11 (polarx 0) (- wwtt t245c2) ))
  (setq pz13 (polar pz12 (polarx 45) t245 ))
  (setq pz14 (polar pz13 (polarx 90) t1t ))
  (setq pz15 (polar pz14 (polarx 0) t1t ))
  (setq pz16 (polar pz15 (polarx 45) t245 ))
  (setq pz17 (polar pz16 (polarx 90) (- hhtt t245c2) ))
  (setq pz18 (polar pz17 (polarx 135) t245 ))
  (setq pz19 (polar pz18 (polarx 180) t1t ))
  (command "pline" p1 pz0 pz1 pz2 pz3 pz4 pz5 pz6
	   pz7 pz8 pz9 pz10 pz11 pz12 pz13 pz14 pz15
	   pz16 pz17 pz18 pz19  "")
  (setvar "osmode" 16383);;启动捕捉
   ;文本位置
  (if (not rsth) (setq rsth 60))
  (setq txtpit (getpoint "\n创建 单行文本位置:"))
  (setq rstext (strcat "T" (rtos tbh) "  wh:" (rtos ww) "*" (rtos hh) "  ttt:" (rtos t1) "  t:" (rtos t2)   ))
  (command "text" txtpit  (/ rsth 2) 0 rstext )
  )
;重新创建文本
(defun jbtxt()
(setq txtpit (getpoint "\n创建 单行文本位置:"))
(command "text" txtpit  (/ rsth 2) 0 rstext )
)

;角度经度数
(defun polarx(pn)
   (* pi (/ pn 180.0))
  )
  (setq polarf 0.0)
  (setq polare (/ pi 2))
  (setq polars pi)
  (setq polard (* pi 1.5))
  (setq polart (* pi (/ 45.0 180)))
  (setq polarw (* pi (/ 135.0 180)))
  (setq polarz (* pi (/ 225.0 180)))
  (setq polarv (* pi (/ 315.0 180)))

