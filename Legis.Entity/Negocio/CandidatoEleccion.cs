//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Legis.Entity.Negocio
{
    using System;
    using System.Collections.Generic;
    
    public partial class CandidatoEleccion
    {
        public int IdCandidatoEleccion { get; set; }
        public int IdCandidato { get; set; }
        public int IdEleccion { get; set; }
        public string Anio { get; set; }
    
        public virtual Candidato Candidato { get; set; }
        public virtual Eleccion Eleccion { get; set; }
    }
}
