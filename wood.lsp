;ľ��20210415w
 
;-------------------------------------------
;20190330x-20210415w
;�����(���㹤����2.81>ģ�߹���>�����)-����
(defun c:qbch()
(if (not rsth) (setq rsth 60));rsttth��������߶�
(if (= qbxht nil) (setq qbxht ""))
(if (= qbxhtt nil) (setq qbxhtt ""))
(if (= qbxh nil) (setq qbxh 1))
(if (not qbxh) (setq qbxh 1))
(repeat 100
(setq txtpit (getpoint (strcat  "\n���� �����λ��:"  (rtos qbxh 2 3) ">"  )))
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
;�����(���㹤����2.81>ģ�߹���>�����)-ͼ��
(defun c:qbth()
(if (not rsth) (setq rsth 60))
(if (= qbxht nil) (setq qbxht ""))
(if (= qbxhtt nil) (setq qbxhtt ""))
(if (= qbxh nil) (setq qbxh 1))
(if (not qbxh) (setq qbxh 1))
(repeat 100
(setq txtpit (getpoint (strcat  "\n���� ���ͼ��λ��:"  (rtos qbxh 2 3) ">"  )))
(setq rstext (strcat  qbxht " ͼ" (rtos qbxh 2 3) " " qbxhtt   ))
(command "text" "j" "MC" txtpit  (* 3 rsth) 0 rstext   )
(setq qbxh (+ qbxh 1))
(princ)
)
)
