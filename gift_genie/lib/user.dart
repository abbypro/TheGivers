class User {

  final String name;
  var age;
  var year;
  var month;
  var day;
  var gender;
  var location;
  var email;
  var cellphone;
  var imageUrl;

  User(this.name, this.month, this.day, this.year, this.gender);

  Future getImageUrl() async {
    if(imageUrl != null)
      return;
  }


}