import 'package:mockap/app/modules/home/data/datasource/interfaces/student_data_source_interface.dart';

import 'package:dartz/dartz.dart';
import 'package:mockap/app/modules/home/domain/repositories/interfaces/student_repository_interface.dart';

import '../../models/student_model.dart';

class AlunoRepository implements IStudentRepository {
  final IStudentDataSource datasource;
  AlunoRepository({required this.datasource});

  @override
  Future<Either<Object, List<StudentModel>>> getAll() async {
    try {
      List<StudentModel> students = [];
      for (var itens in await datasource.load()) {
        var item = StudentModel.fromstudentModel(itens);
        students.add(item);
      }

      return right(students);
    } catch (e) {
      return left(e.toString());
    }
  }
}
