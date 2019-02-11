<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LeftNav.ascx.cs" Inherits="ProspectiveHireTest.Controls.LeftNav" %>
<asp:Repeater ID="LinkRepeater" runat="server">
    <ItemTemplate>
        <asp:HyperLink ID="LeftNavHyperLink" runat="server"></asp:HyperLink><br />
    </ItemTemplate>
</asp:Repeater>
