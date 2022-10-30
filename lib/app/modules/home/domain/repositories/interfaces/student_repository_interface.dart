import 'package:dartz/dartz.dart';
import '../../models/student_model.dart';

abstract class IStudentRepository {
  Future<Either<Object, List<StudentModel>>> getAll();
}
