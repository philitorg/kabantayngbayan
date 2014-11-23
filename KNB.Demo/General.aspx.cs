using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KNB.Demo
{
    public partial class General : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ////region
            //http://philgeps.cloudapp.net:5000/api/action/datastore_search_sql?sql=SELECT%20distinct%20region%20from%20%22ec10e1c4-4eb3-4f29-97fe-f09ea950cdf1%22%20WHERE%20country_code%20=%20%27PH%27%20order%20by%20region
            ////province 
            //http://philgeps.cloudapp.net:5000/api/action/datastore_search_sql?sql=SELECT%20distinct%20province%20from%20%22ec10e1c4-4eb3-4f29-97fe-f09ea950cdf1%22%20WHERE%20country_code%20=%20%27PH%27%20order%20by%20province
            ////city

            ////buyers
            ////http://philgeps.cloudapp.net:5000/api/action/datastore_search_sql?sql=SELECT%20org_id,%20org_name%20%20from%20%22ec10e1c4-4eb3-4f29-97fe-f09ea950cdf1%22%20WHERE%20member_type_id%20=%202%20limit%2010000

        }
    }
}