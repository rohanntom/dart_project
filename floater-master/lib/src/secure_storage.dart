import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'defensive.dart';
import 'extensions.dart';

abstract class SecureStorageService {
  Future<void> store(String key, String value);
  Future<String?> retrieve(String key);
  Future<void> delete(String key);
  Future<bool> contains(String key);
}

class FloaterSecureStorageService implements SecureStorageService {
  final _secureStorage = const FlutterSecureStorage();

  @override
  Future<void> store(String key, String value) async {
    given(key, "key").ensure((t) => key.isNotEmptyOrWhiteSpace);
    // given(value, "value").ensureHasValue();

    await this._secureStorage.write(key: key.trim(), value: value);
  }

  @override
  Future<String?> retrieve(String key) async {
    given(key, "key").ensure((t) => key.isNotEmptyOrWhiteSpace);

    return await this._secureStorage.read(key: key.trim());
  }

  @override
  Future<void> delete(String key) async {
    given(key, "key").ensure((t) => key.isNotEmptyOrWhiteSpace);

    await this._secureStorage.delete(key: key.trim());
  }

  Future<bool> contains(String key) async {
    given(key, "key").ensure((t) => key.isNotEmptyOrWhiteSpace);

    return this._secureStorage.containsKey(key: key);
  }
}
