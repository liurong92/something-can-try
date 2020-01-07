jest.dontMock('lodash');
jest.dontMock('../src/baseparkingboy');
jest.dontMock('../src/parkinglot');
jest.dontMock('../src/smartparkingboy');
jest.dontMock('../src/car');

describe('SmartParkingBoy', function() {
  var ParkingLot, SmartParkingBoy, Car;
  beforeEach(function() {
    SmartParkingBoy = require('../src/smartparkingboy');
    ParkingLot = require('../src/parkinglot');
    Car = require('../src/car');
  });

  it('should park to second parking lot when second parking lot have more space', function() {
    var parkingLotLessSpace = new ParkingLot(1);
    var parkingLotMoreSpace = new ParkingLot(2);
    var smartparkingBoy = new SmartParkingBoy([parkingLotLessSpace, parkingLotMoreSpace]);
    var car = new Car();

    var ticket = smartparkingBoy.park(car);
    expect(parkingLotMoreSpace.pick(ticket)).toBe(car);
  });

  it('should park when the parking lot have same space', function() {
    var parkingLot1 = new ParkingLot(1);
    var parkingLot2 = new ParkingLot(2);
    var parkingLot3 = new ParkingLot(2);
    var smartparkingBoy = new SmartParkingBoy([parkingLot1, parkingLot2, parkingLot3]);
    var car = new Car();

    var ticket = smartparkingBoy.park(car);
    expect(parkingLot2.pick(ticket)).toBe(car);
  });
});
