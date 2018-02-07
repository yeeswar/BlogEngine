using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SqlDAL;
using System.Data;

namespace BLL
{
    public class BlogPosts
    {
        SqlDAL.BlogPosts obj = new SqlDAL.BlogPosts();

        public DataSet GetPosts()
        {
            DataSet ds = obj.GetPosts();
            return ds;
        }

        public DataSet GetPost(int postident)
        {
            DataSet ds = obj.GetPost(postident);
            return ds;
        }

        public void AddPost(string title, string cont, string auth)
        {
            obj.AddPost(title, cont, auth);
        }
    }
}
