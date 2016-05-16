<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateProgress.aspx.cs" Inherits="TestProj_UpdateProgress" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .divWaiting {
            position: absolute;
            background-color: #f2da7e;
            margin: 50px 0 0 550px;
            z-index: 2147483647 !important;
            opacity: 0.8;
            overflow: hidden;
            text-align: center;
            top: 0;
            left: 0;
            height: 10%;
            width: 20%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <hr />
        <h2>Update Progress Example</h2>
        <asp:UpdateProgress ID="UpdateProgress1" DisplayAfter="10" runat="server" AssociatedUpdatePanelID="upTest">
            <ProgressTemplate>
                <div class="divWaiting" runat="server">
                    <h3><asp:Label ID="lblWait" runat="server" Text="Please Wait... " /></h3>
                    <asp:Image ID="imgWait" runat="server" ImageAlign="Middle" Height="30px" ImageUrl="~/img/sei_chakra.gif" />
                </div>
            </ProgressTemplate>
        </asp:UpdateProgress>
        <asp:UpdatePanel ID="upTest" runat="server">
            <ContentTemplate>
                <asp:Button ID="btnSubmit" OnClick="btnSubmit_Click" Text="Load" runat="server" />
            </ContentTemplate>
        </asp:UpdatePanel>
        <hr />
    </form>
</body>
</html>
