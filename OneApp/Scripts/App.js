'use strict';

ExecuteOrDelayUntilScriptLoaded(initializePage, "sp.js");

function initializePage()
{
    var context = SP.ClientContext.get_current();
    var user = context.get_web().get_currentUser();

    // This code runs when the DOM is ready and creates a context object which is needed to use the SharePoint object model
    $(document).ready(function () {
        getUserName();
    });

    // This function prepares, loads, and then executes a SharePoint query to get the current users information
    function getUserName() {
        context.load(user);
        context.executeQueryAsync(onGetUserNameSuccess, onGetUserNameFail);
    }

    // This function is executed if the above call is successful
    // It replaces the contents of the 'message' element with the user name
    function onGetUserNameSuccess() {
        $('#message').text('Hello ' + user.get_title());
    }

    // This function is executed if the above call fails
    function onGetUserNameFail(sender, args) {
        alert('Failed to get user name. Error:' + args.get_message());
    }
}

function alertUser() {
    var forNamn = $("#txtForNamn").val();
    var efterNamn = $("#txtEfterNamn").val();
    var ePost = $("#txtEPost").val();
    var adress = $("#txtAdress").val();
    var postNummer = $("#txtPostNummer").val();
    var ort = $("#txtOrt").val();
    var telNummer = $("#txtNummer").val();
    var datum = $("#txtDatum").val();

    alert("Inskickad Data" + "\r\n" + "\r\n" + "Förnamn: " + forNamn + "\r\n" +
          "Efternamn: " + efterNamn + "\r\n" +
          "E-post: " + ePost + "\r\n" +
          "Adress: " + adress + "\r\n" +
          "Postnummer: " + postNummer + "\r\n" +
          "Ort: " + ort + "\r\n" +
          "Telefon: " + telNummer + "\r\n" +
          "Datum: " + datum);
}

function clearInput() {
    var forNamn = $("#txtForNamn").val("");
    var efterNamn = $("#txtEfterNamn").val("");
    var ePost = $("#txtEPost").val("");
    var adress = $("#txtAdress").val("");
    var postNummer = $("#txtPostNummer").val("");
    var ort = $("#txtOrt").val("");
    var telNummer = $("#txtNummer").val("");
    var datum = $("#txtDatum").val("");
}