angular.module("App", ['ngRoute']).
  config(['$routeProvider', function($routeProvider) {
  $routeProvider.
  
      when('/adicionar_usuario', {templateUrl: 'templates/adicionar_usuario.html', controller: AddCtrl}).
      when('/editar/:id', {templateUrl: 'templates/editar.html', controller: EditCtrl}).
      otherwise({redirectTo: '/'});
}]);




function AddCtrl($scope, $http, $location) {
  $scope.master = {};
  $scope.activePath = null;

  $scope.add_new = function(usuario, AddNewForm) {

    $http.post('api/adicionar_usuario', usuario).success(function(){
      $scope.reset();
      $scope.activePath = $location.path('/');
    });

    $scope.reset = function() {
      $scope.user = angular.copy($scope.master);
    };

    $scope.reset();

  };
}

function EditCtrl($scope, $http, $location, $routeParams) {
  var id = $routeParams.id;
  $scope.activePath = null;

  $http.get('api/usuario/'+id).success(function(dados) {
    $scope.usuario = dados;
  });

  $scope.update = function(usuario){
    $http.put('api/usuario/'+id, usuario).success(function(dados) {
      $scope.usuario = dados;
      $scope.activePath = $location.path('/');
    });
  };

  $scope.delete = function(usuario) {
    console.log(usuario);

    var deleteUser = confirm('Deseja Realmente Deletar?');
    if (deleteUser) {
      $http.delete('usuario/'+usuario.id);
      $scope.activePath = $location.path('/');
    }
  };
}
