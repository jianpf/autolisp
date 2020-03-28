Attribute VB_Name = "Macro3nn1"
' ******************************************************************************
' C:\Users\Administrator\AppData\Local\Temp\swx8116\Macro1.swb - macro recorded on 03/03/20 by Administrator
' ******************************************************************************
Dim swApp As Object

Dim swModel As SldWorks.ModelDoc2
Dim vModels As Variant
Dim modNames() As String
Dim docCount As Integer
Dim swModelName As String
Dim swDocType As Integer
Dim i As Integer

'sw不保存关闭所有,关闭rt
Sub all_close()
Call sw_all_close(1)
End Sub

'sw不保存关闭所有,不关rt
Sub all_close()
Call sw_all_close(0)
End Sub

'sw不保存关闭所有,rt=1也关闭
Sub sw_all_close(sw_rt)
Dim dx(9) As String

Set swApp = Application.SldWorks
Set swModel = swApp.ActiveDoc
vModels = swApp.GetDocuments '获取所有打开的文档名称和类型
'swApp.RunCommand swCommands_SaveAll, Empty '保存所有打开的文档
If IsNull(vModels) = True Then
Exit Sub
End If

docCount = 0
For i = 0 To UBound(vModels) '建立清单
If vModels(i).GetType = swDocDRAWING Or sw_rt Then '查找文档类型，如果打开的文档中有工程图就记录
ReDim Preserve modNames(docCount)
modNames(docCount) = vModels(i).GetTitle
docCount = docCount + 1
dx(i) = vModels(i).GetTitle
End If
Next i


If (Not modNames) = -1 Then '判断是否有工程图需要关闭
'MsgBox "无工程图需要关闭"
Exit Sub
End If


For i = 0 To UBound(modNames) '关闭所有打开的工程图
swApp.CloseDoc (modNames(i))
Next


Erase modNames() '初始化数组，为的是不影响下一次使用

End Sub

