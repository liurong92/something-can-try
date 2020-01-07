var _ = require('lodash');
var ParkingLot = require('./parkinglot');

function ParkingManager(parkingLotAbles) {
  this.parkingLots = parkingLotAbles;
}

ParkingManager.prototype.park = function(car) {
  for (var i = 0; i < this.parkingLots.length; i++) {
    var result = this.parkingLots[i].park(car);
    if(!!Number(result)) {
      return result;
    }
  }
};

ParkingManager.prototype.pick = function(car) {
  for (var i = 0; i < this.parkingLots.length; i++) {
    var result = this.parkingLots[i].pick(car);
    if(_.isObject(result)) {
      return result;
    }
  }
};

ParkingManager.prototype.report = function() {
  var report = 'M ' + this.getCars() + ' ' + this.getParkingSpace() + '\n';
  _.forEach(this.parkingLots, function(parkingLot) {
    report += parkingLot.parkingBoyReport();
  });

  return report;
};

ParkingManager.prototype.getParkingSpace = function() {
  var space = 0
  _.forEach(this.parkingLots, function(parkingLot) {
    space += parkingLot.getParkingSpace();
  });

  return space;
};

ParkingManager.prototype.getCars = function() {
  var cars = 0
  _.forEach(this.parkingLots, function(parkingLot) {
    cars += parkingLot.getCars();
  });

  return cars;
};

module.exports = ParkingManager;
