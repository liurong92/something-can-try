var _ = require('lodash');
var BaseParkingBoy = require('./baseparkingboy');

function SuperParkingBoy(parkingLots) {
  BaseParkingBoy.call(this, parkingLots);
}

SuperParkingBoy.prototype = new BaseParkingBoy();

SuperParkingBoy.prototype.park = function(car) {
  var parkingLots = _.orderBy(this.parkingLots, function(parkingLot) {
    return parkingLot.getParkingLotRate();
  }, ['desc']);

  return parkingLots[0].park(car)
};

module.exports = SuperParkingBoy;
