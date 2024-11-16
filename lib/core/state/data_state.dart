// data_state.dart

class DataState<T> {
  final T? data;
  final String? error;
  final bool isLoading;

  DataState._({
    this.data,
    this.error,
    this.isLoading = false,
  });

  // Success state
  factory DataState.success(T data) {
    return DataState._(
      data: data,
      error: null,
      isLoading: false,
    );
  }

  // Loading state
  factory DataState.loading() {
    return DataState._(
      data: null,
      error: null,
      isLoading: true,
    );
  }

  // Error state
  factory DataState.error(String error) {
    return DataState._(
      data: null,
      error: error,
      isLoading: false,
    );
  }

  bool get isSuccess => data != null && error == null;
  bool get isError => error != null;
}
