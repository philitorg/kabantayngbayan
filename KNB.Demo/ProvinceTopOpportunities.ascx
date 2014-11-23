<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProvinceTopOpportunities.ascx.cs" Inherits="KNB.Demo.ProvinceTopOpportunities" %>
       <script language="javascript" type="text/javascript">
           $(document).ready(function () {
               $.ajax({
                   type: "POST",
                   contentType: "application/json; charset=utf-8",
                   url: "http://philgeps.cloudapp.net:5000/api/action/datastore_search_sql?sql=SELECT bid_info.classification,
bid_info.noofbidnotices,
bid_info.abc,
award.noofawards,
award.contractamt
FROM
(
select b.classification, count(b.ref_id) noofbidnotices, sum(b.approved_budget) abc
from "9c74991c-a5e6-4489-8413-c20a8a181d90" b –-bid information table
where b.publish_date between '1/1/2014' and '6/30/2014' and b.tender_status not in('In-Preparation','Pending')
group by b.classification
) as bid_info
left join(select b.classification, count(a.ref_id) noofawards, sum(a.contract_amt) contractamt
from "9c74991c-a5e6-4489-8413-c20a8a181d90" b –-bid information table
left join "314aa773-e6e4-4554-80ce-4f588212e0d1" a –-award table
on (b.ref_id = a.ref_id)
where YEAR(b.publish_date) = YEAR(NOW()) and b.tender_status not in ('In-Preparation','Pending')
and a.award_status in ('Posted', 'Updated')
group by b.classification) award
on (bid_info.classification = award.classification)",
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
    <div>
        Top Opportunities

    </div>