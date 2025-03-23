/*
 Temperature Converter
 Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
 Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
 Convert accordingly and return the result.
 */

void main(){


  double result = temperatureConverter(35, 'g');

  if(result == -1){
    print('invalid data');
  }else {
    print(result);
  }
}

double temperatureConverter(num temperature, String unit) {
  if (unit.toUpperCase() == 'C') {
    return (temperature * 9/5) + 32;
  } else if (unit.toUpperCase() == 'F') {
    return (temperature - 32) * 5/9;
  } else {
  return -1;
  }
}