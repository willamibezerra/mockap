import 'package:mockap/app/modules/home/data/data_models/aluno_model.dart';

abstract class IStudentDataSource {
  Future<List<StudentDataModel>> load();
}
