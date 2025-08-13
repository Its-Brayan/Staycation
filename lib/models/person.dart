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
      fullname:json['fullname'] ?? '',
      email:json['email'] ?? '',
      phone_number:json['phone_number'] ?? '',
      governmentId:json['governmentId'] ?? '',
    );
    }

Map<String,dynamic> toJson(){
 return{
   'fullname':fullname,
   'email':email,
   'phone_number':phone_number,
   'govenmentId':governmentId,
 };
}
// @override
//   String toString(){
//     return'person{fullname:$fullname,email:$email,phone_number:$phone_number,governmentId:$governmentId}';
// }
  }
