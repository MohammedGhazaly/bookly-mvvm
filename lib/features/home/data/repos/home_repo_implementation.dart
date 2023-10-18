import 'package:bookly_mvvm/core/errors/failures.dart';
import 'package:bookly_mvvm/core/services/api_service.dart';
import 'package:bookly_mvvm/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_mvvm/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
        endPoint:
            "volumes?Filtering=free-ebooks&sorting=newest&q=subject:programming",
      );
      List<BookModel> books = [];
      for (var book in data["items"]) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } on Exception catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
