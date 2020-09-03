using System;
using System.Collections.Generic;

namespace Anuncios
{
    public partial class Marca
    {
        public Marca()
        {
            Modelo = new HashSet<Modelo>();
        }

        public int IdMarca { get; set; }
        public string NomeMarca { get; set; }

        public virtual ICollection<Modelo> Modelo { get; set; }
    }
}
