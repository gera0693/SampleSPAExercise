using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Configuration;
using System.Text.Json;


namespace SampleSPAExercise.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class UserController : ControllerBase
    {
        private readonly ILogger<UserController> _logger;

        public UserController(ILogger<UserController> logger)
        {
            _logger = logger;
        }

        [HttpPost("login")]
        public User LoginUser(User request)
        {
            List<User> items;

            using (StreamReader r = new StreamReader("users.json"))
            {
                string json = r.ReadToEnd();
                items = JsonConvert.DeserializeObject<List<User>>(json);
                
            }

            var response = items.Find(r => r.Username == request.Username && r.Password == request.Password);
            return response;
        }

        [HttpGet]
        public IEnumerable<User> List()
        {
            using (StreamReader r = new StreamReader("users.json"))
            {
                string json = r.ReadToEnd();
                List<User> items = JsonConvert.DeserializeObject<List<User>>(json);
                return items;
            }       
        }

        [HttpPost]
        public bool Post(User request)
        {
            List<User> items;

            using (StreamReader r = new StreamReader("users.json"))
            {
                string json = r.ReadToEnd();
                items = JsonConvert.DeserializeObject<List<User>>(json);
                items.Add(new User
                {
                    Username = request.Username,
                    Password = request.Password
                });                
            }

            var options = new JsonSerializerOptions { WriteIndented = true };
            string jsonString = System.Text.Json.JsonSerializer.Serialize(items, options);
            System.IO.File.WriteAllText("users.json", jsonString);

            return true;
        }
    }
}