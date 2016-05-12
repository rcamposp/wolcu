/* 	
	Place all the behaviors and hooks related to the matching controller here.
	All this logic will automatically be available in application.js.
	You can use CoffeeScript in this file: http://coffeescript.org/
*/

initCart = function(tickets){
	cart = tickets;
	console.log(cart);
	for(i=0;cart.length;i++){
		cart[i].buy_quantity = 0;
		cart[i].buy_total_price = 0.00;
	}
}


var eventsApp = angular.module('eventsApp',[]);
  
eventsApp.controller('TicketsController', ['$scope', function($scope) {

	$scope.cart = cart;

    $scope.addTicket = function(ticket){    			
		for(i=0;i<$scope.cart.length;i++){
			if($scope.cart[i].id == ticket.id){
				$scope.cart[i].buy_quantity ++;
				$scope.cart[i].buy_total_price +=  parseFloat(ticket.price);
				break;
			}
		}		
    } 	

    $scope.subtractTicket = function(ticket){
		for(i=0;i<$scope.cart.length;i++){
			if($scope.cart[i].id == ticket.id && $scope.cart[i].buy_quantity > 0){				
				$scope.cart[i].buy_quantity--;
				$scope.cart[i].buy_total_price -= parseFloat(ticket.price);
				break;				
			}
		}		   	    
    } 	
    
}]);
