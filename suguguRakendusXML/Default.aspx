<%@ Page Title="Teooria" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="suguguRakendusXML._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">XML - Extensible Markup Language</h1>
            <p class="lead">XML kirjeldab kuidas andmed on oma vahel seotud.<br />
                XML tuleb deklareerida<br />
                API kastavad XML faile <br />
                RSS-uudised hoiatakse XML-ina<br />
                KML kaardid põhinevad XML'lil<br />
                Kasutame süsteemide andmevahetusel
            </p>
        </section>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">XSLT - Extensible Stylesheet Language Transformations</h1>
            <p class="lead">XSLT muudab andmeid XML failist.<br />
                XML -->XSLT--> HTML --> Veebileht<br />
                XML -->XSLT--> .aspx leht --> Veebileht<br />
                XML -->XSLT--> csv fail --> Excel<br />
                XML -->XSLT--> XML --> teine süsteem
            </p>
            <h2>XSLT funktsioonid</h2>
            <br />count() - arvutab kogus
            <br />substring(nimi, 1, 1) - eraldab nimest 1.täht
            <br />substring(nimi, 1, 3) - eraldab nimest esimesed 3.tähted
            <br />string-length(nimi) - sümboolite arv
        </section>
    </main>

</asp:Content>
