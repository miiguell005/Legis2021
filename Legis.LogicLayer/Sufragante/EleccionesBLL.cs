using Legis.Entity.Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Legis.LogicLayer.Sufragante
{
    public class EleccionesBLL: IDisposable
    {
        private LegisEntities db = new LegisEntities();

        public EleccionesBLL()
        {

        }
        public EleccionesBLL(bool sinLazy)
        {
            db.Configuration.LazyLoadingEnabled = sinLazy;
        }


        public Legis.Entity.Negocio.CandidatoEleccion[] GetEleccion(string tipoEleccion, string anio)
        {
            try
            {
                var candidatosEleccion = db.CandidatoEleccion.Include("Candidato").Include("Eleccion")
                                    .Where(ce => ce.Anio == anio && ce.Eleccion.Titulo == tipoEleccion).ToArray();

                return candidatosEleccion;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message, ex);
            }
        }

        public void Dispose()
        {
            db.Dispose();
        }
    }
}

