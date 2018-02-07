using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

/// <summary>
/// Summary description for BlogPosts
/// </summary>
public class BlogPosts
{
    private static string connectionString =
       WebConfigurationManager.ConnectionStrings["SimpleBlog"].ConnectionString;

    public static DataSet getPosts()
    {
        DataSet ds = new DataSet();
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("displayPosts", con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        cmd.CommandType = CommandType.StoredProcedure;
        try
        {
            con.Open();
            adp.Fill(ds, "Posts");
        }
        catch (Exception er)
        {
            Console.WriteLine(er.Message);
        }
        finally
        {
            con.Close();
        }


        return ds;
    }

    public static DataSet getPost(int postident)
    {
        DataSet ds = new DataSet();
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("displayPost", con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@postId", SqlDbType.Int));
        cmd.Parameters["@postId"].Value = postident;
        try
        {
            con.Open();
            adp.Fill(ds, "Post");
        }
        catch (Exception er)
        {
            Console.WriteLine(er.Message);
        }
        finally
        {
            con.Close();
        }


        return ds;
    }

    public static void addPost(string title, string cont, string auth)
    {
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("addPost", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@pTitle", SqlDbType.VarChar, 200));
        cmd.Parameters["@pTitle"].Value = title;
        cmd.Parameters.Add(new SqlParameter("@pContent", SqlDbType.NVarChar, -1));
        cmd.Parameters["@pContent"].Value = cont;
        cmd.Parameters.Add(new SqlParameter("@pAuthor", SqlDbType.VarChar, 150));
        cmd.Parameters["@pAuthor"].Value = auth;
        int added = 0;
        try
        {
            con.Open();
            added = cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
        finally
        {
            con.Close();
        }
    }

    public BlogPosts()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}