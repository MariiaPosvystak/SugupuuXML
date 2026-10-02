<%@ Page Title="XML reis" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reis.aspx.cs" Inherits="suguguRakendusXML.Reis" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <div>
            <asp:Xml runat="server"
                DocumentSource="~/XML_Reis.xml"
                TransformSource="~/ReisiParingud.xslt"></asp:Xml>
        </div>
    </main>
</asp:Content>
