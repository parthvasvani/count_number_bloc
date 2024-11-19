import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<IncrementEvent>((event, emit) {
      emit(super.state + 1);
    });

    on<DecrementEvent>(
      (event, emit) {
        if (state < 1) {
          return;
        }
        emit(super.state - 1);
      },
    );

    on<MultiplyEvent>(
      (event, emit) {
        emit(super.state * 2);
      },
    );

    on<DivideEvent>(
          (event, emit) {

        emit((super.state / 2).toInt());
      },
    );
  }
}
