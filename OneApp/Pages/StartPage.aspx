<%@ Page Language="C#" MasterPageFile="~masterurl/default.master" Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <SharePoint:ScriptLink Name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
    <script type="text/javascript" src="../Scripts/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="../Scripts/App.js"></script>
</asp:Content>

<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">
    <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" ID="WebPartZone1" Title="loc:full" />
    <h1>Ny Startsida</h1>

    <style>
        p {
            min-width: 300px;
            display: block;
        }

        .hrLine {
            min-width: 300px;
            display: none;
        }

        .formTable {
            margin: 0 auto;
        }

        input[type=text],
        input[type=tel],
        input[type=number],
        input[type=email],
        input[type=date] {
            color: #222222;
            padding: 5px 5px 5px 10px;
            height: 30px;
            width: 300px;
        }

        input[type=button] {
            margin-left: 0;
            margin-right: 10px;
        }
    </style>

    <div class="formTable">
        <p>
            <input name="Förnamn" placeholder="Fyll i ditt förnamn" id="txtForNamn" type="text" />
        </p>
        <p>
            <input name="Efternamn" placeholder="Fyll i ditt efterrnamn" id="txtEfterNamn" type="text" />
        </p>
        <p>
            <input name="E-post" placeholder="Fyll i din epost adress" id="txtEPost" type="email" />
        </p>
        <hr class="hrLine" />
        <p>
            <input name="Adress" placeholder="Fyll i din adress" id="txtAdress" type="text" />
        </p>
        <p>
            <input name="Postnummer" placeholder="Fyll i ditt postnummer" id="txtPostNummer" type="text" />
        </p>
        <p>
            <input name="Ort" placeholder="Fyll i din ort" id="txtOrt" type="text" />
        </p>
        <hr class="hrLine" />
        <p>
            <input name="Telnummer" placeholder="Fyll i ditt nummer" id="txtNummer" type="number" />
        </p>
        <hr class="hrLine" />
        <p>
            <input name="Startdatum" placeholder="Datum för önskad start" id="txtDatum" type="date" />
        </p>
        <p>
            <span>
                <input type="button" id="btnSkickaKnapp" name="OK" value="Submit" onclick="alertUser()" />
            </span>
            <span>
                <input type="button" id="btnClearKnapp" name="Ta bort" value="Rensa" onclick="clearInput()" />
            </span>
        </p>
    </div>
</asp:Content>
