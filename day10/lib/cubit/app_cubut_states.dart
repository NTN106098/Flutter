import 'package:day10/model/data_model.dart';
import 'package:equatable/equatable.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  @override
  // TODO: implement props
  List<Object?> get props => [
        //chứa dữ liệu cần thay đổi
      ];
}
//Để tốt cho mỗi ứng dụng, chúng ta phải có một trạng thái ban đầu khi lần đầu tiên tạo cubit,
// chúng ta nên chuyển một lớp trạng thái hoặc một hàm trạng thái, vì đó là những gì chúng ta làm ở đây (InitialState)

class WellcomeState extends CubitStates {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
//Khi đã khởi tạo thành công thì chúng ta muốn kích hoạt một trạng thái mới,
//thì (WellcomeState) chịu trách nhiệm hiển thị trang này

class LoadingState extends CubitStates {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoadedState extends CubitStates {
  LoadedState(this.places);

  final List<DataModel> places;

  @override
  // TODO: implement props
  List<Object?> get props => [places];
}

class DetailState extends CubitStates {
  DetailState(this.place);
  final DataModel place;
  @override
  // TODO: implement props
  List<Object?> get props => [place];
}
