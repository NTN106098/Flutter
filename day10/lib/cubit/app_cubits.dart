import 'package:bloc/bloc.dart';
import 'package:day10/cubit/app_cubut_states.dart';
import 'package:day10/model/data_model.dart';
import 'package:day10/services/data_services.dart';

// <CubitState> có trạng thái hoặc các lớp trạng thái, để nói rằng Cubit của tôi có những trạng thái nào để
// dựa trên trạng thái này nó biết chúng đến từ phần khởi tạo đầu
class AppCubits extends Cubit<CubitStates> {
  //khởi tạo trạng thái đầu tiên super
  AppCubits({required this.data}) : super(InitialState()) {
    //khởi tạo và kích hoạt trạng thái
    emit(WellcomeState());
  }

  final DataServices data;

  late final places;

  //biến places sẽ giữ dữ liệu để get.data

  Future<void> getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {}
  }

  detailPage(DataModel data) {
    emit(DetailState(data));
  }
}
