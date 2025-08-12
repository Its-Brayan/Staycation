class person{
  final String? fullname;
  final String? email;
  final String? phone_number;
  final String? governmentId;

  person({
    this.fullname,
    this.email,
    this.phone_number,
    this.governmentId
  });
  factory person.fromJson(Map<String,dynamic>json){
    return person(
      fullname:json['fullname'],
      email:json['email'],
      phone_number:json['phone_number'],
      governmentId:json['governmentId'],
    );
    }

  }
