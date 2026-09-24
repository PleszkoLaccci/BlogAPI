namespace BlogAPI.Models.DTOs
{
    public class UpdateBlogPostDTO
    {
        public string? Title { get; set; }
        public string? Content { get; set; }
        public DateTime UpdateTime { get; set; }
        public int BlogId { get; set; }

    }
}
