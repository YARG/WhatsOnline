<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Whats Online
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--<h2><%: ViewBag.Message %></h2>--%>

    <br />
    <br />
    <h1>Comprueba si tienes cuenta de WhatsApp</h1>
    <br />
    <table align="center" border="0">
        <tr>
            <td><input type="text" ID="txtNumeroTelefono" placeholder="Numero de teléfono" /></td>
            <td>
                <div class="alert-message success">
                    <p>Ingrese el número con código de país y provincia. Ej: 541122438347</p>
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="button" ID="btnAceptar" class="btn-success btn-large" Value="Consultar" /></td>
        </tr>
    </table>
</asp:Content>
