class Operation{

  double calcIbmOperation(double weight,double height){
    double result = weight / (height * height);
    return result;

  }

  int numberSwitch(double ibm){
    if (ibm <= 18.5) {
      return 1;
    }else if(ibm > 18.5 && ibm <= 24.9){
      return 2;
    }else if(ibm >= 25.0 && ibm <= 29.9){
      return 3;
    }else{
      return 4;
    }
  }
}