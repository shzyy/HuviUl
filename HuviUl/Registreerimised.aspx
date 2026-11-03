<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registreerimised.aspx.cs" Inherits="HuviUl.Registreerimised" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="RegistreerimineID" DataSourceID="SqlDataSourceRegistreerimine" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="RegistreerimineID" HeaderText="RegistreerimineID" InsertVisible="False" ReadOnly="True" SortExpression="RegistreerimineID" />
            <asp:BoundField DataField="RegistreerimiseKuupaev" HeaderText="RegistreerimiseKuupaev" SortExpression="RegistreerimiseKuupaev" />
            <asp:BoundField DataField="Staatus" HeaderText="Staatus" SortExpression="Staatus" />
            <asp:TemplateField HeaderText="Osaleja_OsalejaID" SortExpression="Osaleja_OsalejaID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Osaleja_OsalejaID") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceOsaleja" DataTextField="Perekonnanimi" DataValueField="OsalejaID" SelectedValue='<%# Bind("Osaleja_OsalejaID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceOsaleja" runat="server" ConnectionString="<%$ ConnectionStrings:HuviringidConnectionString %>" DeleteCommand="DELETE FROM [OsalejaSet] WHERE [OsalejaID] = @OsalejaID" InsertCommand="INSERT INTO [OsalejaSet] ([Eesnimi], [Perekonnanimi]) VALUES (@Eesnimi, @Perekonnanimi)" SelectCommand="SELECT [Eesnimi], [OsalejaID], [Perekonnanimi] FROM [OsalejaSet]" UpdateCommand="UPDATE [OsalejaSet] SET [Eesnimi] = @Eesnimi, [Perekonnanimi] = @Perekonnanimi WHERE [OsalejaID] = @OsalejaID">
                        <DeleteParameters>
                            <asp:Parameter Name="OsalejaID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Eesnimi" Type="String" />
                            <asp:Parameter Name="Perekonnanimi" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Eesnimi" Type="String" />
                            <asp:Parameter Name="Perekonnanimi" Type="String" />
                            <asp:Parameter Name="OsalejaID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Osaleja_OsalejaID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Huviringid_HuviringidID" SortExpression="Huviringid_HuviringidID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Huviringid_HuviringidID") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceHuviringid" DataTextField="Nimi" DataValueField="HuviringidID" SelectedValue='<%# Bind("Huviringid_HuviringidID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceHuviringid" runat="server" ConnectionString="<%$ ConnectionStrings:HuviringidConnectionString %>" DeleteCommand="DELETE FROM [HuviringidSet] WHERE [HuviringidID] = @HuviringidID" InsertCommand="INSERT INTO [HuviringidSet] ([Nimi]) VALUES (@Nimi)" SelectCommand="SELECT [HuviringidID], [Nimi] FROM [HuviringidSet]" UpdateCommand="UPDATE [HuviringidSet] SET [Nimi] = @Nimi WHERE [HuviringidID] = @HuviringidID">
                        <DeleteParameters>
                            <asp:Parameter Name="HuviringidID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Nimi" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Nimi" Type="String" />
                            <asp:Parameter Name="HuviringidID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Huviringid_HuviringidID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSourceRegistreerimine" runat="server" ConnectionString="<%$ ConnectionStrings:HuviringidConnectionString %>" DeleteCommand="DELETE FROM [RegistreerimineSet] WHERE [RegistreerimineID] = @RegistreerimineID" InsertCommand="INSERT INTO [RegistreerimineSet] ([RegistreerimiseKuupaev], [Staatus], [Osaleja_OsalejaID], [Huviringid_HuviringidID]) VALUES (@RegistreerimiseKuupaev, @Staatus, @Osaleja_OsalejaID, @Huviringid_HuviringidID)" SelectCommand="SELECT * FROM [RegistreerimineSet]" UpdateCommand="UPDATE [RegistreerimineSet] SET [RegistreerimiseKuupaev] = @RegistreerimiseKuupaev, [Staatus] = @Staatus, [Osaleja_OsalejaID] = @Osaleja_OsalejaID, [Huviringid_HuviringidID] = @Huviringid_HuviringidID WHERE [RegistreerimineID] = @RegistreerimineID">
        <DeleteParameters>
            <asp:Parameter Name="RegistreerimineID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RegistreerimiseKuupaev" Type="String" />
            <asp:Parameter Name="Staatus" Type="String" />
            <asp:Parameter Name="Osaleja_OsalejaID" Type="Int32" />
            <asp:Parameter Name="Huviringid_HuviringidID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="RegistreerimiseKuupaev" Type="String" />
            <asp:Parameter Name="Staatus" Type="String" />
            <asp:Parameter Name="Osaleja_OsalejaID" Type="Int32" />
            <asp:Parameter Name="Huviringid_HuviringidID" Type="Int32" />
            <asp:Parameter Name="RegistreerimineID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    Registreerimise Tabel
    <br />
</asp:Content>
