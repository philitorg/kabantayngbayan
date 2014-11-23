<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Province.aspx.cs" Inherits="KNB.Demo.Province" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

       <script language="javascript" type="text/javascript">
           $(document).ready(function () {
               $.ajax({
                   type: "POST",
                   contentType: "application/json; charset=utf-8",
                   url: "http://philgeps.cloudapp.net:5000/api/action/datastore_search_sql?sql=SELECT%20distinct%20province%20from%20%22ec10e1c4-4eb3-4f29-97fe-f09ea950cdf1%22%20WHERE%20country_code%20=%20%27PH%27%20order%20by%20province",
                   data: {},
                   dataType: "json",
                   success: function (data) {
                       var records = data.result.records;
                       $.each(records, function (key, value) {
                           $("#uxProvince").append($("<option></option>").val(value.province).html(value.province));
                       });
                   },
                   error: function ajaxError(response) {
                       alert(response.status + ' ' + response.statusText);
                   }
               });
           });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <select id="uxProvince">
    </select>
</asp:Content>
