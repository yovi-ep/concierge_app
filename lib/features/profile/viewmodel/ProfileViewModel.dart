import 'package:shared_preferences/shared_preferences.dart';

class ProfileViewModel {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  String _keyName = "developer_name";
  String _keyContact = "developer_contact";

  update(String name, String contact) async {
    final SharedPreferences pref = await this._prefs;
    pref.setString(this._keyName, name).then((success) {
      print(success);
    });

    pref.setString(this._keyContact, contact).then((success) {
      print(success);
    });
  }

  Future<String> getDeveloperName() async {
    return _prefs.then((pref) {
      return pref.getString(this._keyName) ?? "Yovi Eka Putra";
    });
  }

  Future<String> getDeveloperContact() async {
    return _prefs.then((pref) {
      return pref.getString(this._keyContact) ?? "https://github.com/yovi-ep";
    });
  }
}