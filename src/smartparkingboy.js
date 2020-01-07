var _ = require('lodash');
var BaseParkingBoy = require('./baseparkingboy');

function SmartParkingBoy(parkingLots) {
  BaseParkingBoy.call(this, parkingLots);
  this.parkingLots = parkingLots;
}

SmartParkingBoy.prototype = new BaseParkingBoy();

SmartParkingBoy.prototype.park = function(car) {
  var parkingLots = _.orderBy(this.parkingLots, function(parkinglot) {
    return parkinglot.getParkingSpace();
  }, ['desc'])

  return parkingLots[0].park(car)
};

module.exports = SmartParkingBoy;
