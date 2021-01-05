using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace RxSavingsSolutionsCodeChallenge.Helpers
{
    public static class HaversineFormula
    {
        // https://stormconsultancy.co.uk/blog/storm-news/the-haversine-formula-in-c-and-sql/
        public static double DistanceBetween(double inputLatitude, double inputLongitude, double pharmacyLatitude, double pharmacyLongitude)
        {
            // Radius of the Earth
            double R = 3960;

            double dLat = ToRadians(pharmacyLatitude - inputLatitude);
            double dLon = ToRadians(pharmacyLongitude - inputLongitude);
            double a = Math.Sin(dLat / 2) * Math.Sin(dLat / 2) +
                Math.Cos(ToRadians(inputLatitude)) * Math.Cos(ToRadians(pharmacyLatitude)) *
                Math.Sin(dLon / 2) * Math.Sin(dLon / 2);

            double c = 2 * Math.Asin(Math.Min(1, Math.Sqrt(a)));
            double distance = R * c;
            return distance;
        }

        private static double ToRadians(double val)
        {
            return (Math.PI / 180) * val;
        }
    }
}
