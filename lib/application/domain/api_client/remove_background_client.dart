import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class RemoveBackgroundApiClient {
  final apiKey = "FFvFEZVCJVgvur5upw2k9gVF";

  final baseUrl = Uri.parse("https://api.remove.bg/v1.0/removebg");

  static final RemoveBackgroundApiClient instance =
      RemoveBackgroundApiClient._();

  RemoveBackgroundApiClient._();

  Future<Uint8List?> removeBg(String imgPath) async {
    final body = {"image_url": imgPath, "size": "auto"};
    final headers = {"X-API-Key": apiKey};
    final response = await http.post(
        Uri.parse('https://api.remove.bg/v1.0/removebg'),
        body: body,
        headers: headers);

    if (response.statusCode == 200) {
      return response.bodyBytes;
    } else {
      throw Exception(
          'Failed to do network requests: Error Code: ${response.statusCode}\nBody: ${response.body}');
    }
  }
  //   var req = http.MultipartRequest("POST", baseUrl);
  //   req.headers.addAll({"X-API-KEY": apiKey});
  //   req.files.add(http.MultipartFile.fromString("image_file", imgPath));

  //   final response = await req.send();
  //   if (response.statusCode == 200) {
  //     final img = await http.Response.fromStream(response);
  //     return img.bodyBytes;
  //   } else {
  //     return null;
  //   }
  // }
}

// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class RemoveBGAPIClient {
//   final String apiKey = "FFvFEZVCJVgvur5upw2k9gVF"; // Ваш API-ключ от Remove.bg

//   Future<String> removeBackgroundFromURL(String imageURL) async {
//     const String apiUrl = 'https://api.remove.bg/v1.0/removebg';

//     try {
//       final response = await http.post(
//         Uri.parse(apiUrl),
//         headers: {
//           'X-Api-Key': apiKey,
//         },
//         body: json.encode({
//           'url': imageURL,
//         }),
//       );

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = json.decode(response.body);
//         final String trimmedImageURL = data['data']['result'];
//         return trimmedImageURL;
//       } else {
//         print('Error removing background: ${response.statusCode}');
//         return null;
//       }
//     } catch (e) {
//       print('Error: $e');
//       return null;
//     }
//   }
// }

