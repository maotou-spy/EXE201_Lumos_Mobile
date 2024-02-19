import 'dart:convert';

import 'package:exe201_lumos_mobile/api_model/customer/medical_report.dart';
import 'package:http/http.dart' as http;

import 'api_service.dart';

class CallCustomerApi {
  static const apiName = 'customer';
  static const rootApi = ApiService.rootApi;
  final String api = rootApi + apiName;
  // ignore: unused_field
  final String _imgUrl = '';

  //GET: /{id}/medical-report: Get all medical report
  //request: customerId
  //response: List<MedicalReport>
  Future<List<MedicalReport>> getMedicalReport(int customerId) async {
    var url = Uri.parse('$api/$customerId/medical-report');

    try {
      http.Response response =
          await http.get(url, headers: {'Content-Type': 'application/json'});

      if (response.statusCode == 200) {
        final responseBody = json.decode(response.body);
        final responseData = responseBody['data'];
        List<MedicalReport> medicalReports = responseData
            .map<MedicalReport>((item) => MedicalReport.fromJson(item))
            .toList();
        return medicalReports;
      } else {
        throw Exception(
            'Failed to get medical report: ${response.statusCode} - ${response.reasonPhrase}');
      }
    } catch (e) {
      throw Exception('Failed to get medical report: $e');
    }
  }
}