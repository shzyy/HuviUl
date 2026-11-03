<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Huviringid.aspx.cs" Inherits="HuviUl.Huviringid1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="HuviringidID" DataSourceID="Huviringid">
    <Columns>
        <asp:BoundField DataField="HuviringidID" HeaderText="HuviringidID" InsertVisible="False" ReadOnly="True" SortExpression="HuviringidID" />
        <asp:BoundField DataField="Nimi" HeaderText="Nimi" SortExpression="Nimi" />
        <asp:BoundField DataField="Vanuseruhm" HeaderText="Vanuseruhm" SortExpression="Vanuseruhm" />
        <asp:BoundField DataField="Kirjeldus" HeaderText="Kirjeldus" SortExpression="Kirjeldus" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="Huviringid" runat="server" ConnectionString="<%$ ConnectionStrings:HuviringidConnectionString %>" DeleteCommand="DELETE FROM [HuviringidSet] WHERE [HuviringidID] = @HuviringidID" InsertCommand="INSERT INTO [HuviringidSet] ([Nimi], [Vanuseruhm], [Kirjeldus]) VALUES (@Nimi, @Vanuseruhm, @Kirjeldus)" SelectCommand="SELECT * FROM [HuviringidSet]" UpdateCommand="UPDATE [HuviringidSet] SET [Nimi] = @Nimi, [Vanuseruhm] = @Vanuseruhm, [Kirjeldus] = @Kirjeldus WHERE [HuviringidID] = @HuviringidID">
    <DeleteParameters>
        <asp:Parameter Name="HuviringidID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Nimi" Type="String" />
        <asp:Parameter Name="Vanuseruhm" Type="String" />
        <asp:Parameter Name="Kirjeldus" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Nimi" Type="String" />
        <asp:Parameter Name="Vanuseruhm" Type="String" />
        <asp:Parameter Name="Kirjeldus" Type="String" />
        <asp:Parameter Name="HuviringidID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="HuviringidID" DataSourceID="Huviringid" DefaultMode="Insert" Height="50px" Width="125px">
    <Fields>
        <asp:BoundField DataField="HuviringidID" HeaderText="HuviringidID" InsertVisible="False" ReadOnly="True" SortExpression="HuviringidID" />
        <asp:BoundField DataField="Nimi" HeaderText="Nimi" SortExpression="Nimi" />
        <asp:BoundField DataField="Vanuseruhm" HeaderText="Vanuseruhm" SortExpression="Vanuseruhm" />
        <asp:BoundField DataField="Kirjeldus" HeaderText="Kirjeldus" SortExpression="Kirjeldus" />
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
</asp:Content>
