using Legis.Entity.Negocio;
using Legis.LogicLayer.Sufragante;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Legis.Api.Controllers
{
    public class SufraganteController : ApiController
    {
        [HttpPost]
        [Route("Crear")]
        public Sufragante CrearSufragante(Sufragante sufragante)
        {
            using (SufraganteBLL moduloS = new SufraganteBLL())
            {
                return moduloS.CrearSufragante(sufragante);
            }
        }

    }
}
