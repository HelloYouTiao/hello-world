<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel id="up1" runat="server" RenderMode="Inline" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <asp:FileUpload runat="server" ID="fileupload"/>
            </ContentTemplate>
        </asp:UpdatePanel>
    
        
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
                
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button1" />
            </Triggers>
        </asp:UpdatePanel>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </div>
    </form>
</body>
</html>
