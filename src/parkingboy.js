var _ = require('lodash');
var BaseParkingBoy = require('./baseparkingboy');

function ParkingBoy(parkingLots) {
  BaseParkingBoy.call(this, parkingLots);
}

ParkingBoy.prototype = Object.create(BaseParkingBoy.prototype);
ParkingBoy.prototype.construct = ParkingBoy;

ParkingBoy.prototype.park = function(car) {
  var ticket = '';
  _.forEach(this.parkingLots, function(parkingLot) {
    if(parkingLot.getSurplusParkingSpace() <= parkingLot.getParkingSpace()) {
      ticket = parkingLot.park(car)
    }
  });

  return ticket;
};

module.exports = ParkingBoy;
