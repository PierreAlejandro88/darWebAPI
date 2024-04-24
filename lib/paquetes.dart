import 'package:http/http.dart' as http;
import 'package:paquetes/classes/response_class.dart';

void getServiceExample (){

Uri url =  Uri.https('reqres.in','/api/users?page=2');

  http.get(url).then((response) {

    ResponseClass map =responseClassFromJson(response.body);
    print(' page : ${ map.page }');

  });
}

