<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Download.aspx.cs" Inherits="ProspectiveHireTest.Download" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Download File</title>
</head>
<body>
    <script
        src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var triggerDownloadConfirmation = confirm("Are you sure you want to download the file");
            if (triggerDownloadConfirmation) {
                var clickButton = document.getElementById("<%= btnTriggerFileDownload.ClientID%>");
                clickButton.click();
            }
            else {
                window.top.close();
            }
        });
    </script>
    <form id="form1" runat="server">
        <div style="display:none">
            <asp:Button runat="server" ID="btnTriggerFileDownload" ClientIDMode="Static" OnClick="btnTriggerFileDownload_Click" />
        </div>
    </form>
</body>
</html>
