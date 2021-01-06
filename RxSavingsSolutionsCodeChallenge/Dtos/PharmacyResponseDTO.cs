namespace RxSavingsSolutionsCodeChallenge.Dtos
{
    public class PharmacyResponseDTO
    {
        public string Name { get; set; }
        public string Address { get; set; }
        public double Distance { get; set; }
        public string City { get; set; }
        public string State { get; set; }

        public PharmacyResponseDTO(PharmacyDTO pharmacy)
        {
            Name = pharmacy.Name;
            Address = pharmacy.Address;
            City = pharmacy.City;
            State = pharmacy.State;
            Distance = pharmacy.Distance;
        }
    }
}
