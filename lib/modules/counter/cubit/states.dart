abstract class CounterStates {}

class CounterInitialState extends CounterStates {}

class PlusCounterState extends CounterStates
{
  final int counter;

  PlusCounterState(this.counter);
}
class MinusCounterState extends CounterStates
{
  final int counter;

  MinusCounterState(this.counter);
}
