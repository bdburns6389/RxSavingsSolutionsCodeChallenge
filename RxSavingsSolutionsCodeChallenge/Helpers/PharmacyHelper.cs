using RxSavingsSolutionsCodeChallenge.Domain.Models;
using RxSavingsSolutionsCodeChallenge.Dtos;
using System.Collections.Generic;
using System.Linq;

namespace RxSavingsSolutionsCodeChallenge.Helpers
{
    public static class PharmacyHelper
    {
        public static PharmacyResponseDTO FindClosestPharmacy(List<Pharmacy> pharmacies, RequestCoordinates requestCoordinates)
        {
            var inputLatitude = requestCoordinates.Latitude;
            var inputLongitude = requestCoordinates.Longitude;

            var pharmaciesDtos = new List<PharmacyDTO>();
            // Go through each pharmacy and find distance, adding that to a DTO with distance
            foreach (var pharmacy in pharmacies)
            {
                // Find distance from input coordinates
                var distance = HaversineFormula.DistanceBetween(inputLatitude, inputLongitude, (double)pharmacy.Latitude, (double)pharmacy.Longitude);
                // Create DTO and add distance
                var pharmacyDto = new PharmacyDTO(pharmacy, distance);
                // Add dto to list
                pharmaciesDtos.Add(pharmacyDto);
            }

            // Find minimum distance in pharmacy dto list
            var smallestDistance = pharmaciesDtos.Select(c => c.Distance).Min();
            var closestPharmacy = pharmaciesDtos.FirstOrDefault(c => c.Distance == smallestDistance);

            // Return pharmacy with minimum miles distance.
            var response = new PharmacyResponseDTO(closestPharmacy);

            return response;
        }
    }
}
