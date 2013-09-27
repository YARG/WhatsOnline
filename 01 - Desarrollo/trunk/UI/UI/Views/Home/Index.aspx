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
            <td colspan="2"><span><% ViewData["Mensaje"].ToString(); %></span></td>
        </tr>
        <tr>
            <td valign="top"><input type="text" ID="txtNumeroTelefono" runat="server" name="txtNumeroTelefono" class="text-box" style="height:32px;" placeholder="Numero de teléfono" /></td>
            <td>
                <div class="alert alert-success"  style="height:23px;">
                    <p>Ingrese el número con código de país y provincia. Ej: 541122438347</p>
                </div>
            </td>
        </tr>
        <tr>
            <%--<td colspan="2" align="center"><input type="button" ID="btnAceptar" class="btn-success btn-large" Value="Consultar" /></td>--%>
            <td colspan="2" align="center"><%: Html.ActionLink("Consultar", "Index", "Home", new { id = Request["txtNumeroTelefono"] }, new { @class = "btn-success btn-large" })%></td>
        </tr>
    </table>
</asp:Content>
