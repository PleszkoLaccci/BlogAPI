using BlogAPI.Models;
using BlogAPI.Models.DTOs;
using Microsoft.AspNetCore.Mvc;
using MySqlConnector;
using System.Security.Cryptography;

namespace BlogAPI.Controllers
{
    [Route("bloggers")]
    [ApiController]
    public class BloggerController : ControllerBase
    {
        string ConnectionString = "Server=localhost;database=blog;User Id=root;password=;";
        [HttpGet("All")]
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

        [HttpGet("ById")]
        public object GetBloggerById(int id)
        {
            var connector = new MySqlConnection(ConnectionString);
            connector.Open();

            MySqlCommand command = new MySqlCommand("SELECT * FROM blogger WHERE Id = @id", connector);
            command.Parameters.AddWithValue("@id", id);
            MySqlDataReader reader = command.ExecuteReader();

            if (!reader.Read())
            {
                connector.Close();
                return new { message = "Nincs ilyen felhasználó" };
            }

            var blogger = new Blogger
            {
                Id = reader.GetInt32(0),
                Name = reader.GetString(1),
                Email = reader.GetString(2),
                Age = reader.GetInt32(3),
                Password = reader.GetString(4),
                RegistrationDate = reader.GetDateTime(5)
            };
            connector.Close();
            return blogger;
        }
        [HttpPost("Add")]
        public object AddBlogger(AddNewBloggerDTO addNewBlogger)
        {

            var connector = new MySqlConnection(ConnectionString);
            connector.Open();
            MySqlCommand command = new MySqlCommand("INSERT INTO blogger (Name, Email, Age, Password, RegistrationTime) VALUES (@name, @email, @age, @password, @registrationTime)", connector);

            command.Parameters.AddWithValue("@name", addNewBlogger.Name);
            command.Parameters.AddWithValue("@email", addNewBlogger.Email);
            command.Parameters.AddWithValue("@age", addNewBlogger.Age);
            command.Parameters.AddWithValue("@password", addNewBlogger.Password);
            command.Parameters.AddWithValue("@registrationTime", DateTime.Now);
            command.ExecuteNonQuery();
            connector.Close();
            return new { message = "Sikeres Hozzáadás", addNewBlogger = addNewBlogger };
        }

        [HttpPost("Login")]
        public object Login(LoginBloggerDTO login)
        {
            var connector = new MySqlConnection(ConnectionString);
            connector.Open();
            MySqlCommand command = new MySqlCommand("SELECT * FROM blogger WHERE Email = @email AND Password = @password", connector);
            command.Parameters.AddWithValue("@email", login.Email);
            command.Parameters.AddWithValue("@password", login.Password);
            MySqlDataReader reader = command.ExecuteReader();

            if (reader.Read())
            {
                var blogger = new Blogger
                {
                    Id = reader.GetInt32(0),
                    Name = reader.GetString(1),
                    Email = reader.GetString(2),
                    Age = reader.GetInt32(3),
                    Password = reader.GetString(4),
                    RegistrationDate = reader.GetDateTime(5)
                };
                connector.Close();
                return new { message = "Sikeres Bejelentkezés", blogger = blogger };
            }
            else
            {
                connector.Close();
                return new { message = "Hibás Email vagy Jelszó" };
            }
        }

        [HttpDelete("DeleteById")]
        public object DeleteBlogger(int id)
        {
            var connector = new MySqlConnection(ConnectionString);
            connector.Open();
            MySqlCommand command = new MySqlCommand("DELETE FROM `blogger` WHERE Id = @id", connector);
            command.Parameters.AddWithValue("@id", id);

            if (command.ExecuteNonQuery() > 0)
            {
                connector.Close();
                return new { message = "Sikeres Törlés" };
            }
            else
            {
                connector.Close();
                return new { message = "Nincs ilyen felhasználó" };
            }
        }

        [HttpPut("UpdateById")]
        public object UpdateById([FromQuery] int id, [FromBody] UpdateBloggerDTO blogger)
        {
            var connector = new MySqlConnection(ConnectionString);
            connector.Open();
            MySqlCommand command = new MySqlCommand("UPDATE `blogger` SET Name = @name, Email = @email, Age = @age, Password = @password WHERE Id = @id", connector);

            command.Parameters.AddWithValue("@id", id);
            command.Parameters.AddWithValue("@name", blogger.Name);
            command.Parameters.AddWithValue("@email", blogger.Email);
            command.Parameters.AddWithValue("@age", blogger.Age);
            command.Parameters.AddWithValue("@password", blogger.Password);

            if (command.ExecuteNonQuery() > 0)
            {
                connector.Close();
                return new { message = "Sikeres Frissítés" };
            }
            else
            {
                connector.Close();
                return new { message = "Nincs ilyen felhasználó" };
            }
        }

        [HttpGet("NumberOfPeople")]
        public object NumberOfPeople()
        {
            var connector = new MySqlConnection(ConnectionString);
            connector.Open();
            MySqlCommand command = new MySqlCommand("SELECT COUNT(*) FROM blogger", connector);
            int count = Convert.ToInt32(command.ExecuteScalar());
            connector.Close();
            return new
            {
                numberOfPeople = count
            };
        }

        [HttpGet("PeopleA-Z")]
        public object PeopleA_Z()
        {
            var connector = new MySqlConnection(ConnectionString);
            connector.Open();

            MySqlCommand command = new MySqlCommand("SELECT * FROM blogger ORDER BY Name ASC", connector);
            MySqlDataReader reader = command.ExecuteReader();
            List<Blogger> bloggers = new List<Blogger>();
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
            