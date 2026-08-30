using System;
using System.Text;
using System.Web.UI.WebControls;

namespace pract_4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                StringBuilder dept = new StringBuilder();

                foreach (ListItem item in cblBranch.Items)
                {
                    if (item.Selected)
                    {
                        dept.Append(item.Text + ", ");
                    }
                }

                lblMessage.Text = "Registration Successful!<br/><br/>" +
                                  "Name: " + txtName.Text + "<br/>" +
                                  "Enrollment: " + txtGR.Text + "<br/>" +
                                  "Age: " + txtAge.Text + "<br/>" +
                                  "Event: " + ddlEvent.SelectedItem.Text + "<br/>" +
                                  "Department: " + dept.ToString().TrimEnd(',', ' ') + "<br/>" +
                                  "Gender: " + rblGender.SelectedItem.Text + "<br/>" +
                                  "Date: " + Calendar1.SelectedDate.ToShortDateString();
            }
        }
    }
}