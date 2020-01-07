var _ = require('lodash');

function BaseParkingBoy(parkingLots) {
  this.parkingLots = parkingLots;
}

BaseParkingBoy.prototype.pick = function(ticket) {
  var parkingLot = _.find(this.parkingLots, function(parkingLot) {
    return parkingLot.cars[ticket];
  });

  return parkingLot.pick(ticket);
};

BaseParkingBoy.prototype.parkingBoyReport = function() {
  var parkingBoyReport = '  B ' + this.getCars() + ' ' + this.getParkingSpace() + '\n';
  _.forEach(this.parkingLots, function(parkingLot) {
    parkingBoyReport += parkingLot.parkingLotReport();
  });

  return parkingBoyReport;
};

BaseParkingBoy.prototype.getParkingSpace = function() {
  var space = 0
  _.forEach(this.parkingLots, function(parkingLot) {
    space += parkingLot.getParkingSpace();
  });

  return space;
};

BaseParkingBoy.prototype.getCars = function() {
  var cars = 0
  _.forEach(this.parkingLots, function(parkingLot) {
    cars += parkingLot.getCars();
  });

  return cars;
};

module.exports = BaseParkingBoy;
