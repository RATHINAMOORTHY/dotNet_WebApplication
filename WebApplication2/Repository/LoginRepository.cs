using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WebApplication2.Connection;

namespace WebApplication2.Repository
{
    public class LoginRepository
    {
        public static int GetLoginInfo(Models.Login login)
        {
            
            SqlConnection Connection = Connectivity.getConnection();            
            SqlCommand ac = new SqlCommand();
            ac.Connection = Connection;
            ac.CommandType = System.Data.CommandType.Text;
            ac.CommandText = "Select count(*) from Login Where username = @username and [Password] = @password";
            ac.Parameters.Add(new SqlParameter("@username", login.UserName));
            ac.Parameters.Add(new SqlParameter("@password", login.PassWord));
            return Convert.ToInt32(ac.ExecuteScalar());
        }

    }
}