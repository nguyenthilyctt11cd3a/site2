<%@ Page Title="dat ve" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="About_Contact" %>

<%@ Register Src="~/Controls/ContactForm.ascx" TagPrefix="Dat" TagName="ContactForm" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <Dat:ContactForm runat="server" ID="ContactForm" />

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="HoVaTen" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." style="margin-left: 101px" Width="355px">
    <Columns>
        <asp:BoundField DataField="HoVaTen" HeaderText="HoVaTen" ReadOnly="True" SortExpression="HoVaTen" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
        <asp:BoundField DataField="LoaiVe" HeaderText="LoaiVe" SortExpression="LoaiVe" />
        <asp:BoundField DataField="ChuThich" HeaderText="ChuThich" SortExpression="ChuThich" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Table] WHERE [HoVaTen] = @HoVaTen" InsertCommand="INSERT INTO [Table] ([HoVaTen], [Email], [SDT], [LoaiVe], [ChuThich]) VALUES (@HoVaTen, @Email, @SDT, @LoaiVe, @ChuThich)" ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [HoVaTen], [Email], [SDT], [LoaiVe], [ChuThich] FROM [Table]" UpdateCommand="UPDATE [Table] SET [Email] = @Email, [SDT] = @SDT, [LoaiVe] = @LoaiVe, [ChuThich] = @ChuThich WHERE [HoVaTen] = @HoVaTen">
    <DeleteParameters>
        <asp:Parameter Name="HoVaTen" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="HoVaTen" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="SDT" Type="String" />
        <asp:Parameter Name="LoaiVe" Type="String" />
        <asp:Parameter Name="ChuThich" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="SDT" Type="String" />
        <asp:Parameter Name="LoaiVe" Type="String" />
        <asp:Parameter Name="ChuThich" Type="String" />
        <asp:Parameter Name="HoVaTen" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>

</asp:Content>

