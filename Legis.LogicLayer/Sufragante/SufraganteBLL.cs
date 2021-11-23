using Legis.Entity.Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Legis.LogicLayer.Sufragante
{
    public class SufraganteBLL: IDisposable
    {
        private LegisEntities db = new LegisEntities();

        public Legis.Entity.Negocio.Sufragante CrearSufragante(Legis.Entity.Negocio.Sufragante sufragante)
        {
            try
            {
                db.Sufragante.Add(sufragante);
                db.SaveChanges();
                return sufragante;
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
