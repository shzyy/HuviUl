<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Osalejad.aspx.cs" Inherits="HuviUl.Osalejad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OsalejaID" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="OsalejaID" HeaderText="OsalejaID" InsertVisible="False" ReadOnly="True" SortExpression="OsalejaID" />
        <asp:BoundField DataField="Eesnimi" HeaderText="Eesnimi" SortExpression="Eesnimi" />
        <asp:BoundField DataField="Perekonnanimi" HeaderText="Perekonnanimi" SortExpression="Perekonnanimi" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HuviringidUlConnectionString %>" SelectCommand="SELECT [OsalejaID], [Eesnimi], [Perekonnanimi], [Email] FROM [OsalejaSet]" DeleteCommand="DELETE FROM [OsalejaSet] WHERE [OsalejaID] = @OsalejaID" InsertCommand="INSERT INTO [OsalejaSet] ([Eesnimi], [Perekonnanimi], [Email]) VALUES (@Eesnimi, @Perekonnanimi, @Email)" UpdateCommand="UPDATE [OsalejaSet] SET [Eesnimi] = @Eesnimi, [Perekonnanimi] = @Perekonnanimi, [Email] = @Email WHERE [OsalejaID] = @OsalejaID">
    <DeleteParameters>
        <asp:Parameter Name="OsalejaID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Eesnimi" Type="String" />
        <asp:Parameter Name="Perekonnanimi" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Eesnimi" Type="String" />
        <asp:Parameter Name="Perekonnanimi" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="OsalejaID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="OsalejaID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
    <Fields>
        <asp:BoundField DataField="OsalejaID" HeaderText="OsalejaID" InsertVisible="False" ReadOnly="True" SortExpression="OsalejaID" />
        <asp:BoundField DataField="Eesnimi" HeaderText="Eesnimi" SortExpression="Eesnimi" />
        <asp:BoundField DataField="Perekonnanimi" HeaderText="Perekonnanimi" SortExpression="Perekonnanimi" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
<asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px">
</asp:DetailsView>
</asp:Content>
