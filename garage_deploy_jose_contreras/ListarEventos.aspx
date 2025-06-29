<%@ Page Title="Lista de Eventos" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="ListarEventos.aspx.cs" Inherits="Garage_UI.ListarEventos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="max-width: 900px; margin: auto; padding: 20px;">
        <h2 style="color: #333; border-bottom: 2px solid #444;">Listado de Eventos</h2>

        <asp:Label ID="lblMensaje" runat="server" ForeColor="Green" Font-Bold="true" />

        <asp:GridView ID="gvEventos" runat="server" AutoGenerateColumns="False" 
                      DataKeyNames="Id" CssClass="tableEventos" 
                      GridLines="None" OnSelectedIndexChanged="gvEventos_SelectedIndexChanged">
            <HeaderStyle BackColor="#444" ForeColor="White" Font-Bold="True" />
            <RowStyle BackColor="#f9f9f9" />
            <AlternatingRowStyle BackColor="#e9e9e9" />
            <SelectedRowStyle BackColor="#cce5ff" Font-Bold="True" />
            <Columns>
                <asp:BoundField DataField="Nombre" HeaderText="Nombre del Evento" />
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="Direccion" HeaderText="Dirección" />
                <asp:BoundField DataField="Precio" HeaderText="Precio ($)" DataFormatString="{0:C}" />
                <asp:CommandField ShowSelectButton="True" SelectText="🔍 Ver Detalle" ButtonType="Link" />
            </Columns>
        </asp:GridView>
    </div>

    <style>
        .tableEventos {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            font-family: Arial;
        }

        .tableEventos th, .tableEventos td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .tableEventos tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</asp:Content>
