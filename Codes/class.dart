class Spacecraft{
  String name;
  DateTime? launchDate;

  //arrow function used when contain a single statement, that's useful when passing anonymous functions as arguments
  int? get launchYear => launchDate?.year;

  Spacecraft(this.name,this.launchDate){

  }

  Spacecraft.unlauched(String name) : this(name, null);

  void describe(){
    print('Spacecraft: $name');

    var launchDate = this.launchDate;
    if(launchDate != null){
      //~/ é um operador de divisão inteira
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    }
    return print('Unlaunched');
  }
}

class Orbiter extends Spacecraft{
  double altitude;

  Orbiter(super.name, DateTime super.launchDate, this.altitude);
}

