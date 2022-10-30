import 'package:dio/dio.dart';

import 'modules/home/data/data_models/aluno_model.dart';

class ApiRepository {
  final Dio client;
  ApiRepository({required this.client});
  Future<List<StudentDataModel>> loadApi() async {
    final result = await client
        .get('https://635d121bcb6cf98e56ac2f66.mockapi.io/api/v1/times');
    List<StudentDataModel> apiResult = [];
    for (var item in result.data) {
      var items = StudentDataModel.fromJson(item);
      apiResult.add(items);
    }
    return apiResult;
  }
}
