<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="webForms.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>hola</div>

    <asp:Button ID="btnDescargar" OnClick="btnDescargar_Click" Text="submit" runat="server" />

    <asp:GridView ID="gvPerson" runat="server" AutoGenerateColumns="False" BackColor="White"  
BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4"  > 
<RowStyle BackColor="White" ForeColor="#003399" /> 
    <Columns> 
        <asp:CommandField ShowEditButton="True" /> 
        <asp:CommandField ShowDeleteButton="True" /> 



       <asp:BoundField  DataField="Nombre" HeaderText="Nombre" />

   <%--     <asp:TemplateField HeaderText="Date of Joining">
        <ItemTemplate>
            <asp:Label ID="lbFecha" runat="server" Text='<%#  Eval("Fecha") != null ? Convert.ToDateTime(Eval("Fecha")).ToString("MM/dd/yyyy") : "No Date" %>'></asp:Label>
        </ItemTemplate>
       </asp:TemplateField>--%>

       <asp:BoundField  DataField="Fecha" HeaderText="Fecha inscripción" NullDisplayText=" "/>
       <asp:BoundField  DataField="Apellido" HeaderText="apellido" />
    </Columns> 
    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" /> 
    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" /> 
    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" /> 
    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" /> 
</asp:GridView> 

</asp:Content>

