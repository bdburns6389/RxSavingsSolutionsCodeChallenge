using Microsoft.EntityFrameworkCore;
using RxSavingsSolutionsCodeChallenge.Domain.Models;

namespace RxSavingsSolutionsCodeChallenge.Domain
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {

        }

        public DbSet<Pharmacy> Pharmacies {get; set;}

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Pharmacy>().ToTable("Pharmacy");
        }
    }
}
