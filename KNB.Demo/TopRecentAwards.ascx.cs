using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KNB.Demo
{
    public partial class TopRecentAwards : System.Web.UI.UserControl
    {
        //http://philgeps.cloudapp.net:5000/api/action/datastore_search_sql?sql=SELECT%20bid_info.ref_id,%20bid_info.procuring_entity_org,%20bid_info.tender_title%20bid_title,%20bid_info.approved_budget,%20award.award_id,%20award.awardee,%20award.award_title,%20award.award_status,%20award.award_date,%20award.contract_amt%20FROM%20%22539525df-fc9a-4adf-b33d-04747e95f120%22%20award%20INNER%20JOIN%20%22baccd784-45a2-4c0c-82a6-61694cd68c9d%22%20bid_info%20ON%20%28award.ref_id%20=%20bid_info.ref_id%29%20limit%2010
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}