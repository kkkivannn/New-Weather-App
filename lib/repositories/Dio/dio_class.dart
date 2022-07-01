// import 'package:dio/dio.dart';

// class HttpService {
//   Dio? _dio;
//   final baseUrl =
//       'https://api.openweathermap.org/data/2.5/weather?q=Moscow&units=metric&appid=4f835643d7ff653f90b1686997a64d12';
//   HttpService() {
//     _dio = Dio(BaseOptions(baseUrl: baseUrl));
//   }

//   initialzeInterceptors() {
//     _dio.interceptors.add(
//       InterceptorsWrapper(
//         onError: (error, handler) => print(error.message),
//         onRequest: (request, hanler) {
          
//         },
//       ),
//     );
//   }
// }
