import 'package:test/test.dart';
import 'package:seek-backend/seek-backend.dart';

/// tests for OrderActivityControllerApi
void main() {
  final instance = SeekBackend().getOrderActivityControllerApi();

  group(OrderActivityControllerApi, () {
    //Future<OrderActivities> getOrderActivities(OrderActivityFilter orderActivityFilter, { String continuation, int size, ActivitySort sort }) async
    test('test getOrderActivities', () async {
      // TODO
    });
  });
}
