using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Anuncios
{
    public partial class Anuncio
    {
        public int IdAnuncio { get; set; }
        public int? IdModelo { get; set; }

        [DisplayFormat(DataFormatString = "{0:0.000}")]
        public decimal? ValorCompra { get; set; }

        [DisplayFormat(DataFormatString = "{0:0.000}")]
        public decimal? ValorVenda { get; set; }
        [DisplayFormat(DataFormatString = "{0:MM/dd/yyyy}")]
        public DateTime? DataVenda { get; set; }

        public virtual Modelo IdModeloNavigation { get; set; }
    }
}
