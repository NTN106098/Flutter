import 'package:get/get.dart';
import 'package:day5/utils/app_constants.dart';


class ApiClient extends GetConnect implements GetxService {
    //late String token;
    final String appBaseUrl;
    late String token;
    late Map<String, String> _mainHeaders;

    ApiClient({ required this.appBaseUrl}) {
      baseUrl = appBaseUrl;
      timeout = Duration(seconds: 30);
      token = AppConstants.TOKEN;
      _mainHeaders = {
        'Content-type' : 'application/json; charset=UTF-8',
        'Authorization' : 'Bear $token'
      };
    }
    Future<Response> getData(String uri,) async {
      try{
        Response  response = await get(uri);
        return response;
      }catch(e){
        print("Error from the api client is" +e.toString());
        return Response(statusCode: 1, statusText: e.toString());
      }
    }
}