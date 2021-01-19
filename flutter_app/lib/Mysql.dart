import 'package:mysql1/mysql1.dart';

class Mysql {
  static String host = 'restore01.cxehoroxwwb2.us-east-1.rds.amazonaws.com',
      user = 'gameparadise13',
      password = 'gamep1234m',
      db = 'jseaattackios';
  static int port = 3306;

  Mysql();

  Future<MySqlConnection> getConnection() async {
    var settings = new ConnectionSettings(
        host: host,
        port: port,
        user: user,
        password: password,
        db: db
    );
    return await MySqlConnection.connect(settings);
  }
}