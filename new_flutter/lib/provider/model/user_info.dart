

class UserInfo {
  String nickName;
  int uid;
  String account;

  UserInfo({String nickName, int uid, String account}):
        this.nickName = nickName ?? '',
        this.uid = uid ?? 0,
        this.account = account ?? '';
}