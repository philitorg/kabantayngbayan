<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TopRecentAwards.ascx.cs" Inherits="KNB.Demo.TopRecentAwards" %>
       <script language="javascript" type="text/javascript">
           $(document).ready(function () {
               $.ajax({
                   type: "POST",
                   contentType: "application/json; charset=utf-8",
                   url: "http://philgeps.cloudapp.net:5000/api/action/datastore_search_sql?sql=SELECT%20bid_info.ref_id,%20bid_info.procuring_entity_org,%20bid_info.tender_title%20bid_title,%20bid_info.approved_budget,%20award.award_id,%20award.awardee,%20award.award_title,%20award.award_status,%20award.award_date,%20award.contract_amt%20FROM%20%22539525df-fc9a-4adf-b33d-04747e95f120%22%20award%20INNER%20JOIN%20%22baccd784-45a2-4c0c-82a6-61694cd68c9d%22%20bid_info%20ON%20%28award.ref_id%20=%20bid_info.ref_id%29%20order%20by%20award.award_date%20desc%20limit%2010",
                   data: {},
                   dataType: "json",
                   success: function (data) {
                       var tbl_body = "";
                       var tbl_row = "";
                       var header = data.result.records[0];
                       $.each(header, function (k, v) {
                           tbl_row += "<th>" + k + "</th>";
                       })
                       tbl_body += "<tr>" + tbl_row + "</tr>";

                       var records = data.result.records;
                       
                       $.each(records, function (key, value) {
                           tbl_row = "";
                           $.each(this, function (k, v) {
                               tbl_row += "<td>" + v + "</td>";
                           })
                           tbl_body += "<tr>" + tbl_row + "</tr>";
                       })
                       $("#uxTopRecentAwards").html(tbl_body);
                   },
                   error: function ajaxError(response) {
                       alert(response.status + ' ' + response.statusText);
                   }
               });
           });
    </script>

<div>
<h2>Latest Recent Awards</h2>
<table id="uxTopRecentAwards">

</table>
</div>
