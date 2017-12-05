using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Newtonsoft.Json;

namespace MovieReviews
{
    /// <summary>
    /// Summary description for MoviesWebService
    /// </summary>
    [WebService(Namespace = "http://upcomingmovies.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class MoviesWebService : System.Web.Services.WebService
    {

        [WebMethod]
        public DataSet UpcomingMoviesInXML(string month, int year)
        {
            try{
                //string sql = "select * from movie where release_date like '" + month + "%' and release_year='" + year + "';";
                string sql = "select movie_name from movie where release_date like '" + month + "%' and release_year='" + year + "';";
                SqlDataAdapter da = new SqlDataAdapter(sql, ConfigurationManager.ConnectionStrings["Connection"].ToString());
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
                }
            catch(Exception e)
            {
                string exception = Convert.ToString(e);
                Console.WriteLine(exception);
                return exception;
}           }

        }

        [WebMethod]
        public string UpcomingMoviesInJSON(string month, int year)
        {
            try
            {
                string sql = "select * from movie where release_date like '" + month + "%' and release_year='" + year + "';";
                SqlDataAdapter da = new SqlDataAdapter(sql, ConfigurationManager.ConnectionStrings["Connection"].ToString());
                DataSet ds = new DataSet();
                da.Fill(ds);
                return JsonConvert.SerializeObject(ds, Newtonsoft.Json.Formatting.Indented);
            }
            catch(Exception e)
            {
                string exception = Convert.ToString(e);
                Console.WriteLine("Some error occured - " +exception);
                return exception;
            }
        }
    }
}
