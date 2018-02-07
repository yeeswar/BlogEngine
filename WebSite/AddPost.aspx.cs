using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class AddPost : System.Web.UI.Page
{
    BLL.BlogPosts objBlog = new BLL.BlogPosts();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        objBlog.AddPost(txtTitle.Text, txtCont.Text, txtAuth.Text);
    }
}