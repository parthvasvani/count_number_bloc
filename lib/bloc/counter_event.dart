part of 'counter_bloc.dart';

sealed class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class DecrementEvent extends CounterEvent {}

class MultiplyEvent extends CounterEvent {}

class DivideEvent extends CounterEvent {}