using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication2.Connection
{
    public class Connectivity
    {
        public static SqlConnection getConnection()
        {
            string Windowsauthentication = string.Empty;
            SqlConnection Connection;
            Windowsauthentication = "Data Source=chn-srv-db;Initial Catalog=Demo;Integrated Security=SSPI";
            Connection = new SqlConnection(Windowsauthentication);
            Connection.Open();
            return Connection;
        }
    }
}

