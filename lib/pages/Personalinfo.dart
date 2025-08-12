import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stay/providers/userProvider.dart';
class Personalinfo extends StatefulWidget {
  const Personalinfo({super.key});

  @override
  State<Personalinfo> createState() => _PersonalinfoState();
}

class _PersonalinfoState extends State<Personalinfo> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _idController = TextEditingController();


  @override
  void dispose(){
    _fullnameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _idController.dispose();
    super.dispose();
  }
  Future<void> _submitForm() async{
    if(_formKey.currentState!.validate()){
      final userProvider = Provider.of<userprovider>(context,listen: false);
      try{
        final payload = {
          "fullname":_fullnameController.text,
          "email":_emailController.text,
          "phone_number":_phoneController.text,
          "governmentId":_idController.text,
        };
        await userProvider.loadpersons(payload);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Personal info created successfully')),
        );
      }catch(error){
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to create personal info ')),
        );
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Info',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22.0,
          color: Color(0xFF01226F)
        ),
        ),
        centerTitle: true,
      ),
    body: SafeArea(

       
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScUIAcXgRaNDVvwWAkLcM5twP2KbyCMjPaqg&s",
                      width: 80.0,
                      height: 80.0,
                      fit: BoxFit.cover,)
                  ),
                ),
               SizedBox(height: 14),
                TextFormField(
                  controller: _fullnameController,
                 decoration: InputDecoration(
                   border:OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18.0),
                   ),
                   ),
                   labelText: "Fullname",
                 ),
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return 'Please enter your fullname';
                    }
                    return null;
                  }

                ),
                SizedBox(height: 14.0),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18.0),
                      ),
                    ),
                    labelText: "Email"
                  ),
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return 'Please enter your email';
                    }else if(!value.contains('@')){
                      return 'Please enter a valid email';
                    }else{
                      return null;
                    }
                  }
                ),
                SizedBox(height: 14.0),
                TextFormField(
                  controller: _phoneController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18.0)
                      ),
                    ),
                    labelText: "Phone Number",
                  ),
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return 'Please enter your phone number';
                    }else if(value.length<10){
                      return 'Please enter a valid phone number';
                    }else{
                      return null;
                    }
                  }
                ),
                SizedBox(height: 14.0),
                TextFormField(
                  controller: _idController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18.0),
                      ),
                    ),

                    labelText: "GOVERNMENT ID",
                  ),
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return 'Please enter your government id';
                    }else if(value.length<10){
                      return 'Please enter a valid government id';
                    }else{
                      return null;
                    }
                  }
                )
              ],
            ),
          ),
        ),
      ),

    ),
      bottomNavigationBar:Padding(padding: EdgeInsets.fromLTRB(16,0, 16, 50),
      child: ElevatedButton(onPressed: (){
        _submitForm();
      }, child:Text("Done",
      style: TextStyle(color: Color(0xFF01226F)
      ),
      ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey.shade100,
        ),
    ),
    ),

    );
  }
}
