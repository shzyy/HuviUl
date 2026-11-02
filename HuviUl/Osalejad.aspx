
<%@ Page Title="Osalejad" Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Osalejad.aspx.cs"
    Inherits="HuviUl.Osalejad" %>
<asp:Content ID="Content1"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <h2>Osalejate nimekiri</h2>

    <asp:GridView
        ID="GridView1"
        runat="server"
        AutoGenerateColumns="True"
        DataSourceID="SqlDataSource1"
        DataKeyNames="OsalejaID">
    </asp:GridView>

    <asp:SqlDataSource
        ID="SqlDataSource1"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:HuviringidConnectionString %>"
        ProviderName="System.Data.SqlClient"
        SelectCommand="SELECT * FROM dbo.OsalejaSet">
    </asp:SqlDataSource>

</asp:Content>
