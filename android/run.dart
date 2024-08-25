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

void main(){
  var name = 'Voyager I';
  var year = 2000;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
  ' url': '//path/to/saturn.jpg'
  };

  /*if(year <= 1901){
    print('20th century');
  }
  
  for(final object in flybyObjects){
    print(object);
  }

  while (year < 2016){
    year += 1;
    print(year);
  }

  int fibo(int n){
    if(n ==0 || n == 1 )return n;{
      return fibo(n-1) + fibo(n-2);
    }
  }

  var result = fibo(20);
  print(result);

  flybyObjects.where((name) => name.contains('p')).forEach(print);*/

  var spacelauncher = Spacecraft('Voyager I', DateTime(1997, 9, 5));
  spacelauncher.describe();

}