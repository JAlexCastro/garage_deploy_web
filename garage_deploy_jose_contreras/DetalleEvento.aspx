<%@ Page Title="Detalle Evento" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="DetalleEvento.aspx.cs" Inherits="Garage_UI.DetalleEvento" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>🎫 Detalle del Evento</h2>

    <asp:Label ID="lblError" runat="server" CssClass="text-danger" Visible="false" />

    <asp:Panel ID="pnlDetalle" runat="server" Visible="false" CssClass="event-detail-card">
        <table class="table table-bordered">
            <tr>
                <th>Nombre</th>
                <td><asp:Label ID="lblNombre" runat="server" /></td>
            </tr>
            <tr>
                <th>Fecha</th>
                <td><asp:Label ID="lblFecha" runat="server" /></td>
            </tr>
            <tr>
                <th>Dirección</th>
                <td><asp:Label ID="lblDireccion" runat="server" /></td>
            </tr>
            <tr>
                <th>Precio</th>
                <td><asp:Label ID="lblPrecio" runat="server" /></td>
            </tr>
            <tr>
                <th>Tipo</th>
                <td><asp:Label ID="lblTipo" runat="server" /></td>
            </tr>
            <tr>
                <th>Información Extra 1</th>
                <td><asp:Label ID="lblExtra1" runat="server" /></td>
            </tr>
            <tr>
                <th>Información Extra 2</th>
                <td><asp:Label ID="lblExtra2" runat="server" /></td>
            </tr>
        </table>
    </asp:Panel>

    <style>
        .event-detail-card {
    margin-top: 20px;
    border: 1px solid #ccc;
    border-radius: 10px;
    padding: 20px;
    background-color: #fafafa;
    box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
}

h2 {
    margin-bottom: 20px;
}

.table th {
    background-color: #f0f0f0;
    text-align: left;
    width: 200px;
}

.table td {
    font-weight: 500;
}
    </style>
</asp:Content>
