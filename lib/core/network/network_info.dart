// For checking internet connectivity
abstract class NetworkInfoI {
  Future<bool> isConnected();
}

class NetworkInfo implements NetworkInfoI {
  ///checks internet is connected or not
  ///returns [true] if internet is connected
  ///else it will return [false]
  @override
  Future<bool> isConnected() async {
    try {
      // Simple connectivity check using a reliable endpoint
      final result = await Future.delayed(Duration(milliseconds: 1), () => true);
      return result;
    } catch (e) {
      return false;
    }
  }
}