using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

/// <summary>
/// Summary description for Comments
/// </summary>
public class Comments
{
    private static string connectionString =
         WebConfigurationManager.ConnectionStrings["SimpleBlog"].ConnectionString;

    public static DataSet GetComments(int post)
    {
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("Blog.displayComments", con);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        cmd.Parameters.Add(new SqlParameter("@PostId", SqlDbType.Int));
        cmd.Parameters["@PostId"].Value = post;

        DataSet dSet = new DataSet();
        try
        {
            con.Open();
            adp.Fill(dSet, "Comments");
        }
        catch (Exception er)
        {
            Console.WriteLine(er.Message);
        }
        finally
        {
            con.Close();
        }
        return dSet;
    }

    public static void addComment(int post, string name, string com)
    {
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("Blog.addComment", con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.Add(new SqlParameter("@postId", SqlDbType.Int));
        cmd.Parameters["@postId"].Value = post;
        cmd.Parameters.Add(new SqlParameter("@cName", SqlDbType.VarChar, 150));
        cmd.Parameters["@cName"].Value = name;
        cmd.Parameters.Add(new SqlParameter("@comment", SqlDbType.NVarChar, -1));
        cmd.Parameters["@comment"].Value = com;

        int added = 0;
        try
        {
            con.Open();
            added = cmd.ExecuteNonQuery();
        }
        catch (Exception er)
        {
            Console.WriteLine(er.Message);
        }
        finally
        {
            con.Close();
        }
    }
}