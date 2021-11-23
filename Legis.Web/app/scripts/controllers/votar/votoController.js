
angular.module('Cinte')
    .controller('VotarController', function (userService, $window, SSufragante) {


        var vm = this;

        vm.sufragante = {};

        vm.titulo = "Crear Sufragante";

        
        vm.sexo = [
            { tipo: "M", nombre: "Masculino" },
            { tipo: "F", nombre: "Femenino" },
        ];

        vm.tipoIdentificacion = [
            { tipo: "CC", nombre: "Cedula de Ciudadania" },
            { tipo: "CE", nombre: "Cedula de Extrangeria" },
        ]

        /**
         * Se ejecuta la iniciar el controller
         */
        vm.init = function () {

        }

        vm.guardarSufragante = function () {
            SSufragante.postSufragante({}, vm.sufragante, function (dataSufragante) {

                if (dataSufragante != null) {
                    toastr.success("Se ha creado el sufragante");
                    toastr.success("Continue con la votación");

                    vm.titulo = ""
                }
                

            }, function (error) {
                vm.manejarExcepciones(error)
            });
            
        }

        vm.init();
    });