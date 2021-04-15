




;20181111写坐标速度
(defun c:ff()
  (progn  (princ gff) (princ "\n"))
  (setq gff (getreal "速度:F="))
  (princ)
)

;20181111写坐标
(defun c:ww()

(setq p (getpoint "x y z 坐标:") )
(setq x (car p))
(setq y (cadr p))
(setq z (caddr p))
(setq f (getreal "速度:F="))
(if (= f nil) (setq f gff) (progn (princ f) (setq gff f)) )
  
(setq str (strcat "G00 " "x=" (rtos x 2 4) " y=" (rtos y 2 4) " z=" (rtos z 2 4) " F=" (rtos f 2 4) ))


(setq f1 (open "c:\\temp\\l.txt" "a"))  
(write-line str f1 )

(close f1)

(princ str)
(princ)

)



(defun c:cdcl()
(setq cm (getvar "cmdecho"))
(setvar "cmdecho" 0)
(while (setq ent (car (entsel "\n选取多段线<回车结束>:")))
(setq dxf (entget ent)
nam (cdr (assoc 0 dxf))
)
(if (wcmatch nam "LINE,*POLYLINE,SPLINE,ARC,CIRCLE,ELLIPSE")
(progn
(command "_lengthen" ent "")
(setq cd (getvar "PERIMETER"))
(princ (strcat "\n所选取图元的长度为" (rtos cd 2 3)))
)
)
)