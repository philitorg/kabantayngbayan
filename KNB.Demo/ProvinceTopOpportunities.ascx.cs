using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KNB.Demo
{
    public partial class ProvinceTopOpportunities : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
             * http://philgeps.cloudapp.net:5000/api/action/datastore_search_sql?sql=SELECT bid_info.classification,bid_info.noofbidnotices,bid_info.abc,award.noofawards,award.contractamt FROM(select b.classification, count(b.ref_id) noofbidnotices, sum(b.approved_budget) abc from "9c74991c-a5e6-4489-8413-c20a8a181d90" b where EXTRACT(YEAR from b.publish_date) = EXTRACT(YEAR from NOW()) and b.tender_status not in('In-Preparation','Pending') group by b.classification) as bid_infoleft join(select b.classification, count(a.ref_id) noofawards, sum(a.contract_amt) contractamt from "9c74991c-a5e6-4489-8413-c20a8a181d90" b left join "314aa773-e6e4-4554-80ce-4f588212e0d1" a on (b.ref_id = a.ref_id) where EXTRACT(YEAR from b.publish_date) = EXTRACT(YEAR from NOW()) and b.tender_status not in ('In-Preparation','Pending')and a.award_status in ('Posted', 'Updated') group by b.classification) award on (bid_info.classification = award.classification)
            */
        }
    }
}