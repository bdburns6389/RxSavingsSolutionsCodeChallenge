using RxSavingsSolutionsCodeChallenge.Domain.Models;

namespace RxSavingsSolutionsCodeChallenge.Dtos
{
    public class PharmacyDTO
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
        public double Latitude { get; set; }
        public double Longitude { get; set; }
        public double Distance { get; set; }

        public PharmacyDTO(Pharmacy pharmacy, double distance)
        {
            Id = pharmacy.Id;
            Name = pharmacy.Name;
            Address = pharmacy.Address;
            City = pharmacy.City;
            State = pharmacy.State;
            Zip = pharmacy.Zip;
            Latitude = (double)pharmacy.Latitude;
            Longitude = (double)pharmacy.Longitude;
            Distance = distance;
        }
    }
}
