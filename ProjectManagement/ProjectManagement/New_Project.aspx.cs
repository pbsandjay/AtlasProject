using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectManagement
{
    public partial class View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var parameters = EditDataSource.parameters;
                parameters["Project"].DefaultValue = txtbxProject.Text;
                parameters["Purpose"].DefaultValue = txtbxPurpose.Text;
                parameters["ProjectManager"].DefaultValue = txtbxPurpose.Text;
                parameters["Status"].DefaultValue = DdlStatus.SelectedValue;
                parameters["Original_Due_Date"].DefaultValue = txtbxPurpose.Text;
                parameters["Type"].DefaultValue = DdlType.SelectedValue;             

            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtbxProject.Text = "";
            txtbxPurpose.Text = "";
            txtbxProjectManager.Text = "";
            DdlStatus.Text = "";
            txtbxDueDate.Text = "";
            DdlType.Text = "";
        }
    }
}