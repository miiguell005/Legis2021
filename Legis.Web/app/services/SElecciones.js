angular.module('Cinte')
    .factory('STipoIdentificacion', STipoIdentificacion);

function STipoIdentificacion($resource, userService) {
    var urlService = userService.urlService;

    return $resource(urlService + "Api/Elecciones/:IdTipoIdentificacion", { IdTipoIdentificacion: "@IdTipoIdentificacion" },
        {
            getElecciones: {
                method: 'GET', url: urlService + "Api/Elecciones/Consultar/:tipoEleccion/:anio", params: { tipoEleccion: "@tipoEleccion", anio: "@anio" }, isArray: true
            }
        });
}
