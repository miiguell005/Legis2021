angular.module('Cinte')
    .factory('SVoto', SVoto);

function SVoto($resource, userService) {
    var urlService = userService.urlService;

    return $resource(urlService + "Api/Votacion/:IdVoto", { IdVoto: "@IdVoto" },
        {
            PostVoto: {
                method: 'POST', url: urlService + "Api/Votacion/Voto", isArray: false
            }
        });
}
