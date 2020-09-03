using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace Anuncios
{
    public partial class AnunciosContext : DbContext
    {
        public AnunciosContext()
        {
        }

        public AnunciosContext(DbContextOptions<AnunciosContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Anuncio> Anuncio { get; set; }
        public virtual DbSet<Marca> Marca { get; set; }
        public virtual DbSet<Modelo> Modelo { get; set; }
        public virtual DbSet<Usuario> Usuario { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer("Data Source=DESKTOP-IVSRI85;Initial Catalog=anuncios;Integrated Security=True");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Anuncio>(entity =>
            {
                entity.HasKey(e => e.IdAnuncio);

                entity.Property(e => e.DataVenda)
                    .HasColumnName("dataVenda")
                    .HasColumnType("date");

                entity.Property(e => e.IdModelo).HasColumnName("idModelo");

                entity.Property(e => e.ValorCompra)
                    .HasColumnName("valorCompra")
                    .HasColumnType("decimal(10, 3)");

                entity.Property(e => e.ValorVenda)
                    .HasColumnName("valorVenda")
                    .HasColumnType("decimal(10, 3)");

                entity.HasOne(d => d.IdModeloNavigation)
                    .WithMany(p => p.Anuncio)
                    .HasForeignKey(d => d.IdModelo)
                    .HasConstraintName("FK_AnuncioModelo");
            });

            modelBuilder.Entity<Marca>(entity =>
            {
                entity.HasKey(e => e.IdMarca);

                entity.Property(e => e.NomeMarca)
                    .IsRequired()
                    .HasMaxLength(100)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Modelo>(entity =>
            {
                entity.HasKey(e => e.IdModelo);

                entity.Property(e => e.Ano)
                    .HasColumnName("ano")
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.Cor)
                    .HasColumnName("cor")
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.Descricao)
                    .IsRequired()
                    .HasColumnName("descricao")
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.MarcaId).HasColumnName("marcaId");

                entity.Property(e => e.TipoCombustivel)
                    .HasColumnName("tipoCombustivel")
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.HasOne(d => d.Marca)
                    .WithMany(p => p.Modelo)
                    .HasForeignKey(d => d.MarcaId)
                    .HasConstraintName("FK_ModeloMarca");
            });

            modelBuilder.Entity<Usuario>(entity =>
            {
                entity.HasKey(e => e.IdUsuario);

                entity.Property(e => e.Email)
                    .HasMaxLength(150)
                    .IsUnicode(false);

                entity.Property(e => e.Login)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Nome)
                    .IsRequired()
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.Senha)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
