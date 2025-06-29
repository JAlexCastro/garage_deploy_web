<%@ Page Title="Agregar Evento" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="AgregarEvento.aspx.cs" Inherits="Garage_UI.AgregarEvento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="margin-top:20px;">Agregar Nuevo Evento</h2>
    <p>Complete los campos para registrar un nuevo evento.</p>
    
    <fieldset style="border:1px solid #ccc; padding:15px; margin-bottom:20px;">
        <legend><strong>Datos Generales</strong></legend>

        <asp:Label ID="lblNombre" runat="server" Text="Nombre del Evento:" AssociatedControlID="txtNombre" />
        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" />
        <br />

        <asp:Label ID="lblFecha" runat="server" Text="Fecha:" AssociatedControlID="txtFecha" />
        <asp:TextBox ID="txtFecha" runat="server" TextMode="Date" CssClass="form-control" />
        <br />

        <asp:Label ID="lblDireccion" runat="server" Text="Dirección:" AssociatedControlID="txtDireccion" />
        <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control" />
        <br />

        <asp:Label ID="lblPrecio" runat="server" Text="Precio ($):" AssociatedControlID="txtPrecio" />
        <asp:TextBox ID="txtPrecio" runat="server" TextMode="Number" CssClass="form-control" />
        <br />

        <asp:Label ID="lblTipo" runat="server" Text="Tipo de Evento:" AssociatedControlID="ddlTipoEvento" />
        <asp:DropDownList ID="ddlTipoEvento" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlTipoEvento_SelectedIndexChanged" CssClass="form-select">
            <asp:ListItem Text="Seleccionar" Value="" />
            <asp:ListItem Text="Concierto" Value="Concierto" />
            <asp:ListItem Text="Exposición" Value="Exposicion" />
        </asp:DropDownList>
    </fieldset>

    <!-- Campos adicionales para Concierto-->
    <asp:Panel ID="divConcierto" runat="server" Visible="false" CssClass="extra-fields">
        <fieldset style="border:1px dashed #999; padding:10px; margin-bottom:20px;">
            <legend><strong>Detalles del Concierto</strong></legend>

            <asp:Label Text="Artista:" runat="server" AssociatedControlID="txtArtista" />
            <asp:TextBox ID="txtArtista" runat="server" CssClass="form-control" /><br />

            <asp:Label Text="Estilo:" runat="server" AssociatedControlID="txtEstilo" />
            <asp:TextBox ID="txtEstilo" runat="server" CssClass="form-control" /><br />
        </fieldset>
    </asp:Panel>

    <!-- Campos adicionales para Exposición -->
    <asp:Panel ID="divExposicion" runat="server" Visible="false" CssClass="extra-fields">
        <fieldset style="border:1px dashed #999; padding:10px; margin-bottom:20px;">
            <legend><strong>Detalles de la Exposición</strong></legend>

            <asp:Label Text="Expositor:" runat="server" AssociatedControlID="txtExpositor" />
            <asp:TextBox ID="txtExpositor" runat="server" CssClass="form-control" /><br />

            <asp:Label Text="Categoría:" runat="server" AssociatedControlID="txtCategoria" />
            <asp:TextBox ID="txtCategoria" runat="server" CssClass="form-control" /><br />
        </fieldset>
    </asp:Panel>

    <asp:Button ID="btnAgregar" runat="server" Text="Agregar Evento" CssClass="btn btn-primary" OnClick="btnAgregar_Click" />
</asp:Content>
