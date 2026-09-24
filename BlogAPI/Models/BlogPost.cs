namespace BlogAPI.Models
{
    public class BlogPost
    {
        public string? Title { get; set; }
        public string? Content { get; set; }
        public DateTime PostTime { get; set; }
        public DateTime UpdateTime { get; set; } 
    }
}
