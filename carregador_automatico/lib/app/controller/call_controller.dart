import 'package:flutter_phone_state/flutter_phone_state.dart';

class CallController {
  fazerChamada(String numero) {
    var phoneCall = FlutterPhoneState.startPhoneCall(numero);
    phoneCall.eventStream.listen((event) {
      if (event.call.isComplete) {
        print('Camada Terminada...');
      }
      if (event.status == PhoneCallStatus.dialing)
    });
  }
}
