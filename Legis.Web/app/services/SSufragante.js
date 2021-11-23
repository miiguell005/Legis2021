angular.module('Cinte')
    .factory('SSufragante', SSufragante);

function SSufragante($resource, userService) {
    var urlService = userService.urlService;

    return $resource(urlService + "Api/Sufragante/:IdSufragante", { IdSufragante: "@IdSufragante" },
        {
            postSufragante: {
                method: 'POST', url: urlService + "Api/Sufragante/Crear", isArray: false
            }
        });
}
