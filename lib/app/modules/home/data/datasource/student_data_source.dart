import 'package:dio/dio.dart';
import 'package:mockap/app/modules/home/data/data_models/aluno_model.dart';
import 'package:mockap/app/modules/home/data/datasource/interfaces/student_data_source_interface.dart';

class StudentDataSource implements IStudentDataSource {
  final Dio client;
  StudentDataSource({required this.client});
  @override
  Future<List<StudentDataModel>> load() async {
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
