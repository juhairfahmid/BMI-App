import 'dart:math';

class Calculation {
  int? res_age;
  int? res_height;
  int? res_weight;

  Calculation({this.res_age, this.res_height, this.res_weight});

  late double bmi;

  String calculateBmi() {
    bmi = res_weight! / pow(res_height! / 100, 2);
    return bmi.toString();
  }

  String result() {
    if (bmi < 18) {
      return "under normal weight";
    } else if (bmi >= 18 && bmi < 25) {
      return "Normal ";
    } else if (bmi >= 25 && bmi < 30) {
      return "OverWeight";
    } else {
      return "More Jaba Vai , Doctor dekhao";
    }
  }

  String info() {
    if (bmi < 18) {
      return "Khodar Murgi";
    } else if (bmi >= 18 && bmi < 25) {
      return "Shukhe thakle vute kilay ? eibar chup kore thak , noris na ";
    } else if (bmi >= 25 && bmi < 30) {
      return "Khodar Khasi";
    } else {
      return "Inna Lillahi Oya Inna Ilaihi Rojiun";
    }
  }
}
