<%@ Page Title="Kontakt info" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="suguguRakendusXML.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Mariia Posvystak</h3>
        <div>
            <asp:Xml runat="server"
                 DocumentSource="~/Minu_Sugupuu.xml"
                 TransformSource="~/sugupuuParing.xslt"></asp:Xml>
        </div>
        <address>
            Mariia Posvystak poolt proovitud XSLT funktsioonid
        </address>
    </main>
</asp:Content>
