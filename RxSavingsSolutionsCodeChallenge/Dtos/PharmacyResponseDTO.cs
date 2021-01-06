namespace RxSavingsSolutionsCodeChallenge.Dtos
{
    public class PharmacyResponseDTO
    {
        public string Name { get; set; }
        public string Address { get; set; }
        public double Distance { get; set; }

        public PharmacyResponseDTO(PharmacyDTO pharmacy)
        {
            Name = pharmacy.Name;
            Address = pharmacy.Address;
            Distance = pharmacy.Distance;
        }
    }
}
