jest.dontMock('lodash');
jest.dontMock('../src/baseparkingboy');
jest.dontMock('../src/parkinglot');
jest.dontMock('../src/parkingboy');
jest.dontMock('../src/car');

describe('ParkingBoy', function() {
  var ParkingLot, ParkingBoy, Car;
  beforeEach(function() {
    ParkingBoy = require('../src/parkingboy');
    ParkingLot = require('../src/parkinglot');
    Car = require('../src/car');
  });

  it('should park the car', function() {
    var parkingLot = new ParkingLot(1);
    var parkingBoy = new ParkingBoy([parkingLot]);
    var car = new Car();

    var ticket = parkingBoy.park(car);
    expect(parkingLot.pick(ticket)).toBe(car);
  });

  it('should park to second parking lot when first parking lot is full', function() {
    var parkingLot1 = new ParkingLot(1);
    var parkingLot2 = new ParkingLot(2);
    var parkingBoy = new ParkingBoy([parkingLot1, parkingLot2]);
    var car1 = new Car();
    var car2 = new Car();

    var ticket1 = parkingBoy.park(car1);
    var ticket2 = parkingBoy.park(car2);
    expect(parkingLot2.pick(ticket2)).toBe(car2);
  });

  it('should not be able to park car when both parking lots do not has parking space', function() {
    var parkingLot1 = new ParkingLot(1);
    var parkingLot2 = new ParkingLot(1);
    var parkingBoy = new ParkingBoy([parkingLot1, parkingLot2]);
    var car1 = new Car();
    var car2 = new Car();
    var car3 = new Car();

    var ticket1 = parkingBoy.park(car1);
    var ticket2 = parkingBoy.park(car2);
    expect(parkingBoy.park(car3)).toBe('The parking lot is full.');
  });
});
