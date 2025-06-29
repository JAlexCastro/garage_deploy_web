<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Garage_UI.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align: center; padding: 60px 20px; background-color: #ffffff;">
        <h1 style="font-size: 36px; color: #333;">Bienvenido a <span style="color: #2c3e50;">Garage Eventos</span></h1>
        <p style="font-size: 18px; color: #666; margin-top: 20px;">
            Administra tus eventos de manera sencilla y eficiente.
        </p>

        <div style="margin-top: 40px;">
            <asp:Button ID="btnCrearEvento" runat="server" Text="Crear Nuevo Evento" PostBackUrl="~/AgregarEvento.aspx"
                CssClass="landing-button" />
            <asp:Button ID="btnVerEventos" runat="server" Text="Ver Eventos" PostBackUrl="~/ListarEventos.aspx"
                CssClass="landing-button" />
        </div>
    </div>

    <style>
        .landing-button {
            background-color: #2c3e50;
            color: white;
            border: none;
            padding: 14px 28px;
            margin: 10px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }

        .landing-button:hover {
            background-color: #1a242f;
        }
    </style>
</asp:Content>
