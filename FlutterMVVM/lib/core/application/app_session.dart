class AppSession {
  static AppSession? _instance;

  static AppSession? get instance {
    _instance ??= AppSession();
    return _instance;
  }

  bool _ornekData = false;

  void setOrnekData(bool val){
    _ornekData = val;
  }

  bool get getOrnekData => _ornekData;
}
