using Legis.Entity.Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Legis.LogicLayer.Sufragante
{
    public class VotacionBLL: IDisposable
    {
        private LegisEntities db = new LegisEntities();

        public Legis.Entity.Negocio.Voto PostVoto(Legis.Entity.Negocio.Voto voto)
        {
            try
            {
                if (voto.Sufragante.Votado == false)
                {
                    voto.Sufragante.Votado = true;

                    db.Voto.Add(voto);
                    db.SaveChanges();
                    return voto;
                }
                else
                    throw new Exception("El Sufragante ya voto");
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
