;木工20210415w
 
;-------------------------------------------
;20190330x-20210415w
;球标编号(燕秀工具箱2.81>模具工具>球标编号)-居中
(defun c:qbch()
(if (not rsth) (setq rsth 60));rsttth设置字体高度
(if (= qbxht nil) (setq qbxht ""))
(if (= qbxhtt nil) (setq qbxhtt ""))
(if (= qbxh nil) (setq qbxh 1))
(if (not qbxh) (setq qbxh 1))
(repeat 100
(setq txtpit (getpoint (strcat  "\n创建 球标编号位置:"  (rtos qbxh 2 3) ">"  )))
(setq rstext (strcat  qbxht " " (rtos qbxh 2 3) " " qbxhtt   ))
(command "text" "j" "MC" txtpit  rsth 0 rstext   )
(setq cname1 (entlast))
(command "circle" txtpit "d" (* rsth 2))
(setq cname2 (entlast))
(command "group" "c" "*" "*" cname1 cname2 "")
(setq qbxh (+ qbxh 1))
(princ)
)
)
;-------------------------------------------
;20190330x-20210415w
;球标编号(燕秀工具箱2.81>模具工具>球标编号)-图号
(defun c:qbth()
(if (not rsth) (setq rsth 60))
(if (= qbxht nil) (setq qbxht ""))
(if (= qbxhtt nil) (setq qbxhtt ""))
(if (= qbxh nil) (setq qbxh 1))
(if (not qbxh) (setq qbxh 1))
(repeat 100
(setq txtpit (getpoint (strcat  "\n创建 球标图号位置:"  (rtos qbxh 2 3) ">"  )))
(setq rstext (strcat  qbxht " 图" (rtos qbxh 2 3) " " qbxhtt   ))
(command "text" "j" "MC" txtpit  (* 3 rsth) 0 rstext   )
(setq qbxh (+ qbxh 1))
(princ)
)
)
