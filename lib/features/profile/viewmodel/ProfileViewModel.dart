import 'package:shared_preferences/shared_preferences.dart';

class ProfileViewModel {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  String _keyName = "developer_name";
  String _keyContact = "developer_contact";

  Future<bool> update(String name, String contact) async {
    final SharedPreferences pref = await this._prefs;
    bool nameSuccess = await pref.setString(this._keyName, name).then((success) {
      return success;
    });

    bool contactSuccess = await pref.setString(this._keyContact, contact).then((success) {
      return success;
    });

    return nameSuccess && contactSuccess;
  }

  Future<String> getDeveloperName() async {
    return _prefs.then((pref) {
      var name = pref.getString(this._keyName);
      name = name == null || name.isEmpty == true ? "Yovi Eka Putra" : name;
      return name;
    });
  }

  Future<String> getDeveloperContact() async {
    return _prefs.then((pref) {
      var contact = pref.getString(this._keyContact);
      contact = contact == null || contact.isEmpty == true ? "https://github.com/yovi-ep" : contact;
      return contact;
    });
  }
}