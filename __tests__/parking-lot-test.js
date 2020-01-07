jest.dontMock('lodash');
jest.dontMock('../src/parkinglot');
jest.dontMock('../src/car');

describe('ParkingLot', function() {
  var ParkingLot, Car;
  beforeEach(function() {
    ParkingLot = require('../src/parkinglot');
    Car = require('../src/car');
  });

  it('should park and pick the car', function() {
    var parkingLot = new ParkingLot(1);
    var car = new Car();
    var ticket = parkingLot.park(car);

    expect(parkingLot.pick(ticket)).toBe(car);
  });

  it('should pick first car when park two cars', function() {
    var parkingLot = new ParkingLot(2);
    var firstCar = new Car();
    var secondCar = new Car();
    var firstStub = parkingLot.park(firstCar);
    var secondStub = parkingLot.park(secondCar);

    expect(parkingLot.pick(firstStub)).toBe(firstCar);
  });

  it('should get parking lot is full message', function() {
    var parkingLot = new ParkingLot(1);
    var firstCar = new Car();
    var secondCar = new Car();
    var firstStub = parkingLot.park(firstCar);

    expect(parkingLot.park(secondCar)).toEqual('The parking lot is full.');
  });

  it('should return a message when given other parking lot ticket', function() {
    var parkingLot = new ParkingLot(1);
    var myCar = new Car();
    var myTicket = parkingLot.park(myCar);

    expect(parkingLot.pick('other parking lot ticket')).toEqual('The car is not here.');
  });

  it('should return parking space', function() {
    var parkingLot = new ParkingLot(1);

    expect(parkingLot.getSurplusParkingSpace()).toEqual(1);
  });

  it('should return parking space when parking one car with this parking lot just has one parking space', function() {
    var parkingLot = new ParkingLot(1);
    var myCar = new Car();
    var myTicket = parkingLot.park(myCar);

    expect(parkingLot.getSurplusParkingSpace()).toEqual(0);
  });

  it('should return parking space when parking one car with this parking lot has two parking space', function() {
    var parkingLot = new ParkingLot(2);
    var myCar = new Car();
    var myTicket = parkingLot.park(myCar);

    expect(parkingLot.getSurplusParkingSpace()).toEqual(1);
  });
});
