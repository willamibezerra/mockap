import 'package:mockap/app/modules/home/domain/models/student_model.dart';

class StudentDataModel {
  String? createdAt;
  String? name;
  String? avatar;
  String? id;

  StudentDataModel({this.createdAt, this.name, this.avatar, this.id});

  StudentDataModel.fromJson(Map<String, dynamic> json) {
    createdAt = json['createdAt'];
    name = json['name'];
    avatar = json['avatar'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['createdAt'] = createdAt;
    data['name'] = name;
    data['avatar'] = avatar;
    data['id'] = id;
    return data;
  }
}
