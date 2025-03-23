import 'package:flutter/material.dart';

// InheritedWidgets simply hold the state, they are not stateful and do not have ways to set new state, being more useful for static stuff such as themes etc.
// If I were to make this stateful, I'd probably have the layout be a statefulwidget (yeah, that's it, tho that'd be horrible cuz of the huge rebuilds ig)
// This is now being inside ListCounterLayout, which is stateful and passes its state to it, to be accessed by its children
// ListCounterLayout is acting like a React custom provider, which returns the <Context.Provider value={the state}>children</Context.Provider> and controls the state, because it owns it, because in this case ListCounterLayout is stateful
class ListCounterState extends InheritedWidget {
  // This is where we say what "props" or pieces of state we will pass into the InheritedWidget
  const ListCounterState({
    super.key,
    required this.list,
    required this.task,
    required super.child,
  });

  // Cannot be initialized, must be passed via constructor or initiliazed via it
  // I'm passing it via the layout file
  final List<int> list;
  final List task;

  static ListCounterState of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<ListCounterState>();
    // Asserting if result is different than null, if so, we go ahead, otherwise we throw an error with this message
    assert(result != null, 'No ListCounterState found in context');

    return result!;
  }

  @override
  bool updateShouldNotify(ListCounterState oldWidget) => list != oldWidget.list;
}
