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

'sw������ر�����,�ر�rt
Sub all_close()
Call sw_all_close(1)
End Sub

'sw������ر�����,����rt
Sub all_close()
Call sw_all_close(0)
End Sub

'sw������ر�����,rt=1Ҳ�ر�
Sub sw_all_close(sw_rt)
Dim dx(9) As String

Set swApp = Application.SldWorks
Set swModel = swApp.ActiveDoc
vModels = swApp.GetDocuments '��ȡ���д򿪵��ĵ����ƺ�����
'swApp.RunCommand swCommands_SaveAll, Empty '�������д򿪵��ĵ�
If IsNull(vModels) = True Then
Exit Sub
End If

docCount = 0
For i = 0 To UBound(vModels) '�����嵥
If vModels(i).GetType = swDocDRAWING Or sw_rt Then '�����ĵ����ͣ�����򿪵��ĵ����й���ͼ�ͼ�¼
ReDim Preserve modNames(docCount)
modNames(docCount) = vModels(i).GetTitle
docCount = docCount + 1
dx(i) = vModels(i).GetTitle
End If
Next i


If (Not modNames) = -1 Then '�ж��Ƿ��й���ͼ��Ҫ�ر�
'MsgBox "�޹���ͼ��Ҫ�ر�"
Exit Sub
End If


For i = 0 To UBound(modNames) '�ر����д򿪵Ĺ���ͼ
swApp.CloseDoc (modNames(i))
Next


Erase modNames() '��ʼ�����飬Ϊ���ǲ�Ӱ����һ��ʹ��

End Sub

