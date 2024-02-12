import '../../electrum_adapter.dart';

class ServerVersion {
  String name;
  String protocol;
  ServerVersion(this.name, this.protocol);
}

extension ServerVersionMethod on FiroElectrumClient {
  Future<ServerVersion> serverVersion({
    String clientName = 'FiroElectrumClient',
    String protocolVersion = '1.9',
  }) async {
    var proc = 'server.version';
    var response = await request(proc, [clientName, protocolVersion]);
    return ServerVersion(response[0], response[1]);
  }
}
