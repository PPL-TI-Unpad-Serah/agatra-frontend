import 'package:agatra/features/data/models/storage_item.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageService {
  final FlutterSecureStorage _secureStorage;

  StorageService(this._secureStorage);

  Future<void> write(StorageItemModel newItem) async {
    await _secureStorage.write(key: newItem.key, value: newItem.value);
  }

  Future<StorageItemModel?> read(String key) async {
    var value = await _secureStorage.read(key: key);
    return value == null ? null : StorageItemModel(key, value);
  }

  Future<void> delete(StorageItemModel item) async {
    await _secureStorage.delete(key: item.key);
  }

  Future<bool> containsKey(String key) async {
    var containsKey = await _secureStorage.containsKey(key: key);
    return containsKey;
  }

  Future<List<StorageItemModel>> readAll() async {
    var allData = await _secureStorage.readAll();
    List<StorageItemModel> list =
        allData.entries.map((e) => StorageItemModel(e.key, e.value)).toList();
    return list;
  }

  Future<void> deleteAll() async {
    await _secureStorage.deleteAll();
  }
}
