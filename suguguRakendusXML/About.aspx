<%@ Page Title="Elisaveta II Sugupuu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="suguguRakendusXML.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <div>
            <asp:Xml runat="server"
                DocumentSource="~/ElizavetaSugupuu.xml"
                TransformSource="~/sugupuuParing.xslt"></asp:Xml>
        </div>
    </main>
</asp:Content>
