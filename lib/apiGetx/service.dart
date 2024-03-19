
import 'package:http/http.dart'as http;

import 'model.dart';

class Newservice{

  var url="https://fakestoreapi.com/carts?userId=1";


  Future<List<UserModels>?>fetchdata()async{

    var response=await http.get(Uri.parse(url));
    if(response.statusCode==200){

      return userModelsFromJson(response.body);
    }
    else{
      return null;
    }

  }

}