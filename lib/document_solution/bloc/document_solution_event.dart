part of 'document_solution_bloc.dart';

// At high level,  it will be responding to user input (scrolling)
// and fetching more solutions in order for the presentation layer to display them
abstract class DocumentSolutionEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class DocumentSolutionFetched extends DocumentSolutionEvent {}

class DocumentSolutionRefreshed extends DocumentSolutionEvent {}

class DocumentSolutionJustAdded extends DocumentSolutionEvent {}
