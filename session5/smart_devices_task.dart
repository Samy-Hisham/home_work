void main() {
  Ac ac = Ac();
  Light light = Light();
  Cameras camera = Cameras();

  DevicesControllar controllar = DevicesControllar();

  controllar.addDevise(ac);
  controllar.addDevise(light);
  controllar.addDevise(camera);

  controllar.turnAllOn();

  ac.setTemperature(22);
  light.brightnessLevel(6);
  camera.motionDetectionState(true);

  controllar.turnAllOff();
}

abstract class SmartDevices {
  void turnOn();

  void turnOff();
}

class Ac extends SmartDevices {
  void setTemperature(int temperature) => print('temperature is $temperature');

  @override
  void turnOff() => print('Air Conditioner is turned OFF.');

  @override
  void turnOn() => print('Air Conditioner is turned ON.');
}

class Cameras extends SmartDevices {
  void motionDetectionState(bool state) => print('Brightness Level is $state');

  @override
  void turnOff() => print('Security Camera is turned OFF.');

  @override
  void turnOn() => print('Security Camera is turned ON.');
}

class Light extends SmartDevices {
  void brightnessLevel(int level) => print('Brightness Level is $level');

  @override
  void turnOff() => print('Light is turned OFF.');

  @override
  void turnOn() => print('Light is turned ON.');
}

class DevicesControllar {
  List<SmartDevices> devices = [];

  void addDevise(SmartDevices device) => devices.add(device);

  void turnAllOn() {
    for (var device in devices) {
      device.turnOn();
    }
  }

  void turnAllOff() {
    for (var device in devices) {
      device.turnOff();
    }
  }
}
