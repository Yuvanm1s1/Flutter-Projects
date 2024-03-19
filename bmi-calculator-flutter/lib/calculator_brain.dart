import 'dart:math';
class CalculatorBrain{
  CalculatorBrain(this.height , this.weight);

  final int height;
  final int weight;
  String calculate(){
    double bmi = weight/pow(height/100,2);
    return bmi.toString();
  }
  String calText(){
    double bmi = weight/pow(height/100,2);
    if(bmi>=25){
      return "Overweight";
    }
    else if(bmi>=18.5){
      return "Normal";
    }
    else{
      return "Underweight";
    }
  }
}