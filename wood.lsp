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

;保存退出jianpf20190512x20210417w
(defun c:qsc()
  (command "_qsave" "");保存空名称就是当前文件名
  (command "close" "y" "n");(command "close") "y" "n" 跳出窗口保存 )
(princ)
)
;快速保存退出判断是否未保存窗口(DXF精度)JianPF20210418x
(defun c:qsc()
  (if (= 1 (getvar "DWGTITLED"));判断是否保存过标题
    (progn (qsclose "qsclose"));保存过并退出
    (progn (qsname "qsname"));创建保存并退出或不退出
  ) 
(princ)
)
;保存并退出图纸JianPF20210418x
(defun qsclose(refstr )
  (print refstr)
  (setvar "THUMBSAVE" 1);更新略缩图RASTERPREVIEW(旧)
  (command "_qsave" "");保存空名称就是当前文件名
  (command "close" "y"  );保存过并退出
)
;保存窗口并退出图纸JianPF20210418x 
(defun qsname(refstr  )
  (print refstr)
  (setvar "THUMBSAVE" 1)
  (command "_save" "~" ""  )
    (print (getvar "DBMOD"))
  (if (= 0 (getvar "DBMOD"));创建保存并退出或不退出
  (command "close" "y" );防止取消退出未保存
  )
)


;KJJ--<------------------------------
;连续编号ADEE快捷键JianPF20210418s
(defun c:adee()
  (command "_dimcontinue" )
(princ)
)
;基准连续编号ADCC快捷键JianPF20210418s
(defun c:adcc()
  (command "_dimbaseline" )
(princ)
)
;KJJ-->------------------------------