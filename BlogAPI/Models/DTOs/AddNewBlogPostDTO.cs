namespace BlogAPI.Models.DTOs
{
    public class AddNewBlogPostDTO
    {
        public string? Title { get; set; }
        public string? Content { get; set; }
        public int BlogId { get; set; }
    }
}
