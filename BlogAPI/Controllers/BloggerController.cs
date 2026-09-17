using BlogAPI.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.AspNetCore.Mvc;
using MySqlConnector;

namespace BlogAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BloggerController : ControllerBase
    {
        string ConnectionString = "Server=localhost;database=blog;User Id=root;password=;";
        [HttpGet]
        public object GetAllBloggers()
        {
            List<Blogger> bloggers = new List<Blogger>();

            var connector = new MySqlConnection(ConnectionString);
            connector.Open();

            MySqlCommand command = new MySqlCommand("SELECT * FROM blogger", connector);
            MySqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Blogger blogger = new Blogger();
                blogger.Id = reader.GetInt32("Id");
                blogger.Name = reader.GetString("Name");
                blogger.Email = reader.GetString("Email");
                blogger.Age = reader.GetInt32("Age");
                blogger.Password = reader.GetString("Password");
                blogger.RegistrationDate = reader.GetDateTime("RegistrationTime");
                bloggers.Add(blogger);
            }

            connector.Close();

            return bloggers;
        }
    }
}
