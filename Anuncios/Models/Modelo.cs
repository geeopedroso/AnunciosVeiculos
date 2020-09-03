using System;
using System.Collections.Generic;

namespace Anuncios
{
    public partial class Modelo
    {
        public Modelo()
        {
            Anuncio = new HashSet<Anuncio>();
        }

        public int IdModelo { get; set; }
        public string Descricao { get; set; }
        public string Ano { get; set; }
        public string Cor { get; set; }
        public string TipoCombustivel { get; set; }
        public int? MarcaId { get; set; }

        public virtual Marca Marca { get; set; }
        public virtual ICollection<Anuncio> Anuncio { get; set; }
    }
}
