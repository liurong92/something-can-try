jest.dontMock('lodash');
jest.dontMock('../src/baseparkingboy');
jest.dontMock('../src/parkinglot');
jest.dontMock('../src/parkingmanager');
jest.dontMock('../src/parkingboy');
jest.dontMock('../src/smartparkingboy');
jest.dontMock('../src/car');

describe('ParkingManager', function() {
  var ParkingManager, ParkingLot, ParkingBoy, SmartParkingBoy, Car;
  var generalParkingBoy, smartParkingBoy;
  beforeEach(function() {
    ParkingManager = require('../src/parkingmanager');
    ParkingBoy = require('../src/parkingboy');
    SmartParkingBoy = require('../src/smartparkingboy');
    ParkingLot = require('../src/parkinglot');
    Car = require('../src/car');

    generalParkingBoy = new ParkingBoy([new ParkingLot(3)]);
    smartParkingBoy = new SmartParkingBoy([new ParkingLot(2), new ParkingLot(1)]);
  });

  it('should park one car by himself', function() {
    var parkingManager = new ParkingManager([new ParkingLot(1)]);
    var car = new Car();

    var ticket = parkingManager.park(car);
    expect(parkingManager.pick(ticket)).toBe(car);
  });

  it('should pick car by parking manager when smart parking boy park car', function() {
    var parkingManager = new ParkingManager([smartParkingBoy]);
    var car = new Car();

    var ticket = parkingManager.park(car);
    expect(smartParkingBoy.pick(ticket)).toBe(car);
  });

  it('should pick car by generak parking boy when manager park the car', function() {
    var parkingManager = new ParkingManager([new ParkingLot(1), generalParkingBoy, smartParkingBoy]);
    var ford = new Car();
    var benz = new Car();

    var fordTicket = parkingManager.park(ford);
    var benzTicket = parkingManager.park(benz);
    expect(generalParkingBoy.pick(benzTicket)).toBe(benz);
  });

  it('should report M 1 3\n  B 1 3\n    P 1 3\n when this parking manager only have one parking boy with one parking lot', function() {
    var parkingManager = new ParkingManager([generalParkingBoy]);

    parkingManager.park(new Car());
    var report = parkingManager.report();
    expect(report).toBe('M 1 3\n  B 1 3\n    P 1 3\n');
  });

  it('should report M 1 6\n  B 1 3\n    P 1 3\n  B 0 3\n    P 0 2\n    P 0 1\n when this parking manager have two parking boy', function() {
    var parkingManager = new ParkingManager([generalParkingBoy, smartParkingBoy]);

    parkingManager.park(new Car());
    var report = parkingManager.report();
    expect(report).toBe('M 1 6\n  B 1 3\n    P 1 3\n  B 0 3\n    P 0 2\n    P 0 1\n');
  });
});
