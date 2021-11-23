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
    public class EleccionesController : ApiController
    {
        [HttpGet]
        [Route("Consultar/{tipoEleccion}/{anio}")]
        public CandidatoEleccion[] GetElecciones(string tipoEleccion, string anio)
        {
            using (EleccionesBLL moduloE = new EleccionesBLL(false))
            {
                return moduloE.GetEleccion(tipoEleccion, anio);
            }
        }

    }
}
