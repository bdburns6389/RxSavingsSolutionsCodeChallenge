using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using RxSavingsSolutionsCodeChallenge.Domain;
using RxSavingsSolutionsCodeChallenge.Dtos;
using RxSavingsSolutionsCodeChallenge.Helpers;

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
            return "Hello World";
        }

        [HttpPost]
        public PharmacyResponseDTO Post(RequestCoordinates requestCoordinates)
        {
            var pharmacies = _context.Pharmacies.ToList();
            var response = PharmacyHelper.FindClosestPharmacy(pharmacies, requestCoordinates);
            return response;
        }
    }
}
