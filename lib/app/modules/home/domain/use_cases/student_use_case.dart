import 'package:dartz/dartz.dart';
import 'package:mockap/app/modules/home/domain/repositories/interfaces/student_repository_interface.dart';

class StudentUseCase
//implements UseCase<StudentDataModel, List<StudentModel>>
{
  final IStudentRepository repository;

  StudentUseCase(this.repository);

//   @override
//   Future<Either<Object, List<StudentModel>>> call(
//       {required StudentDataModel params}) async {
//         try{

//     final result = await repository.getAll();
//     return right(result)
//         }catch(e){
// return left(e)
//         }

//   }

  Either<String, String> verifyStatusCode() {
    if (repository.hashCode == 200) {
      return right("Sucesso");
    } else if (repository.hashCode == 404) {
      return left("o servidor não encontrou o recurso socicitado");
    } else if (repository.hashCode == 400) {
      return left(
          " o Internet Explorer foi capaz de se conectar ao servidor Web, mas a página da Web não pôde ser encontrada devido a um problema com o endereço");
    } else {
      return left('falha desconhecida');
    }
  }
}
