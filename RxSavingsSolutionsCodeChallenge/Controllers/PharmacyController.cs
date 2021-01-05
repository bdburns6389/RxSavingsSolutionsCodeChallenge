using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using RxSavingsSolutionsCodeChallenge.Domain;
using RxSavingsSolutionsCodeChallenge.Dtos;

namespace RxSavingsSolutionsCodeChallenge.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class PharmacyController : ControllerBase
    {
        private readonly ApplicationDbContext _context;
        private readonly ILogger<PharmacyController> _logger;

        public PharmacyController(ILogger<PharmacyController> logger, ApplicationDbContext context)
        {
            _logger = logger;
            _context = context;
        }

        [HttpGet]
        public string Get()
        {
            var test = _context.Pharmacies.ToList();
            return "Hello World";
        }

        [HttpPost]
        public string Post(RequestCoordinates requestCoordinates)
        {
            var inputLatitude = requestCoordinates.Latitude;
            var inputLongitude = requestCoordinates.Longitude;
            return "Post";
        }
    }
}
