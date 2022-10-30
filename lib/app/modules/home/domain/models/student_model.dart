import '../../data/data_models/aluno_model.dart';

class StudentModel {
  String? createdAt;
  String? name;
  String? avatar;
  String? id;
  StudentModel({
    this.createdAt,
    this.name,
    this.avatar,
    this.id,
  });
  StudentModel.fromstudentModel(StudentDataModel item) {
    createdAt = item.createdAt;
    name = item.name;
    avatar = item.avatar;
    id = item.id;
  }
}
