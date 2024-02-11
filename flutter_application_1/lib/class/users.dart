

class user  {
  int id;
  String name;
  String password;
  bool isactive;
  user({required this.id,required this.name,required this.password,required this.isactive});

  void deactive(){
    isactive=false;
  }
}