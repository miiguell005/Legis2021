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
    public class VotacionController : ApiController
    {
        [HttpPost]
        [Route("Votar")]
        public Voto PostVotar(Voto voto)
        {
            using (VotacionBLL moduloV = new VotacionBLL())
            {
                return moduloV.PostVoto(voto);
            }
        }

    }
}
