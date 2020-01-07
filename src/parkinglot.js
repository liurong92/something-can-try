var _ = require('lodash');

function ParkingLot(parkingSpace) {
  this.parkingSpace = parkingSpace;
  this.cars = {};
}

ParkingLot.prototype.getCars = function() {
  return Object.keys(this.cars).length;
};

ParkingLot.prototype.getParkingSpace = function() {
  return this.parkingSpace;
}

ParkingLot.prototype.park = function(car) {
  if (this.getCars() < this.getParkingSpace()) {
    var ticket = _.uniqueId();
    this.cars[ticket] = car;
    return ticket;
  }
  return 'The parking lot is full.'
};

ParkingLot.prototype.pick = function(ticket) {
  var takeCar = this.cars[ticket];

  if (!!takeCar) {
    delete this.cars[ticket];
    return takeCar;
  }
  return 'The car is not here.';
};

ParkingLot.prototype.getSurplusParkingSpace = function () {
  return this.parkingSpace - this.getCars();
};

ParkingLot.prototype.getParkingLotRate = function () {
  return this.getSurplusParkingSpace() / this.getParkingSpace();
};

ParkingLot.prototype.parkingLotReport = function () {
  return '    P ' + this.getCars() + ' ' + this.getParkingSpace() + '\n';
};

module.exports = ParkingLot;
