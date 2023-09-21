import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sms2email_v1_1/cubit/states.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(InitialNewsState());

  static NewsCubit get(context) => BlocProvider.of(context);
}
