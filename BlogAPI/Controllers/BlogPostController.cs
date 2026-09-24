using BlogAPI.Models;
using BlogAPI.Models.DTOs;
using Microsoft.AspNetCore.Mvc;
using MySqlConnector;

namespace BlogAPI.Controllers
{
    [Route("blogpost")]
    [ApiController]

    public class BlogPostController : ControllerBase
    {
        string ConnectionString = "Server=localhost;database=blog;User Id=root;password=;";


        [HttpGet("All")]
        public object GetBlogPosts()
        {
            List<BlogPost> blogPosts = new List<BlogPost>();

            var connector = new MySqlConnection(ConnectionString);
            connector.Open();

            MySqlCommand command = new MySqlCommand("SELECT * FROM blogpost", connector);
            MySqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                BlogPost blogPost = new BlogPost();
                blogPost.Id = reader.GetInt32("Id");
                blogPost.Title = reader.GetString("Title");
                blogPost.Content = reader.GetString("Content");
                blogPost.PostTime = reader.GetDateTime("PostTime");
                blogPost.UpdateTime = reader.GetDateTime("UpdateTime");
                blogPost.BlogId = reader.GetInt32("BlogId");
                blogPosts.Add(blogPost);
            }

            connector.Close();

            return blogPosts;
        }

        [HttpPost("Add")]
        public object AddBlogger(AddNewBlogPostDTO addnewblogPost)
        {

            var connector = new MySqlConnection(ConnectionString);
            connector.Open();
            MySqlCommand command = new MySqlCommand("INSERT INTO blogpost (Title, Content, PostTime, UpdateTime, BlogId) VALUES (@title, @content, @postTime, @updateTime, @blogId)", connector);

            command.Parameters.AddWithValue("@title", addnewblogPost.Title);
            command.Parameters.AddWithValue("@content", addnewblogPost.Content);
            command.Parameters.AddWithValue("@postTime", DateTime.Now);
            command.Parameters.AddWithValue("@updateTime", DateTime.Now);
            command.Parameters.AddWithValue("@blogId", addnewblogPost.BlogId);
            command.ExecuteNonQuery();
            connector.Close();
            return new { message = "Sikeres Hozzáadás", addnewblogPost = addnewblogPost };
        }


        [HttpDelete("DeleteBlogPostById")]
        public object DeleteBlogPostById(int id)
        {
            var connector = new MySqlConnection(ConnectionString);
            connector.Open();
            MySqlCommand command = new MySqlCommand("DELETE FROM `blogpost` WHERE Id = @id", connector);
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

        [HttpPut("UpdateBlogPostById")]
        public object UpdateBlogPostById([FromQuery] int id, [FromBody] UpdateBlogPostDTO blogPost)
        {
            var connector = new MySqlConnection(ConnectionString);
            connector.Open();
            MySqlCommand command = new MySqlCommand("UPDATE `blogpost` SET Title = @title, Content = @content, UpdateTime = @updateTime, BlogId = @blogId WHERE Id = @id", connector);

            command.Parameters.AddWithValue("@id", id);
            command.Parameters.AddWithValue("@Title", blogPost.Title);
            command.Parameters.AddWithValue("@Content", blogPost.Content);
            command.Parameters.AddWithValue("@UpdateTime", blogPost.UpdateTime);
            command.Parameters.AddWithValue("@BlogId", blogPost.BlogId);

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
    }
}
