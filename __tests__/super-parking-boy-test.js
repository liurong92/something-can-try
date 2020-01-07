jest.dontMock('lodash');
jest.dontMock('../src/baseparkingboy');
jest.dontMock('../src/parkinglot');
jest.dontMock('../src/superparkingboy');
jest.dontMock('../src/car');

describe('SuperParkingBoy', function() {
  var ParkingLot, SuperParkingBoy, Car;
  beforeEach(function() {
    SuperParkingBoy = require('../src/superparkingboy');
    ParkingLot = require('../src/parkinglot');
    Car = require('../src/car');
  });

  it('should park car to london parking lot when london and china parking lots have same rate', function() {
    var londonPackingLot = new ParkingLot(2);
    var chinaPackingLot = new ParkingLot(3);
    var superparkingBoy = new SuperParkingBoy([londonPackingLot, chinaPackingLot]);
    var benz = new Car();

    var ticket = superparkingBoy.park(benz);
    expect(londonPackingLot.pick(ticket)).toBe(benz);
  });

  it('should park car to high rate parking lot when park a car', function() {
    var lowRatePackingLot = new ParkingLot(2);
    var highRatePackingLot = new ParkingLot(1);
    var ford = new Car();
    lowRatePackingLot.park(ford);

    var superparkingBoy = new SuperParkingBoy([lowRatePackingLot, highRatePackingLot]);
    var benz = new Car();

    var ticket = superparkingBoy.park(benz);
    expect(highRatePackingLot.pick(ticket)).toBe(benz);
  });

  it('should pick the car after park the car', function() {
    var parkingLot = new ParkingLot(2);
    var superParkingBoy = new SuperParkingBoy([parkingLot]);
    var car = new Car();

    var ticket = superParkingBoy.park(car);
    expect(superParkingBoy.pick(ticket)).toBe(car);
  });

  it('should pick the car from china parking lot after park the car in china parking lot', function() {
    var londonPackingLot = new ParkingLot(1);
    var chinaPackingLot = new ParkingLot(1);

    var ford = new Car();
    var ticket = chinaPackingLot.park(ford);

    var superParkingBoy = new SuperParkingBoy([londonPackingLot, chinaPackingLot]);

    expect(superParkingBoy.pick(ticket)).toBe(ford);
  });
});
