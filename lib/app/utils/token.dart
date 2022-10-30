import 'package:get_server/get_server.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';

class Token {
  static String generate(String email) {
    try {
      final claimSet = JwtClaim(
        maxAge: const Duration(minutes: 5),
        expiry: DateTime.now().add(Duration(days: 3)),
        issuer: 'FlutterServer',
        issuedAt: DateTime.now(),
        subject: email,
      );

      return TokenUtil.generateToken(claim: claimSet);
    } catch (e) {
      throw 'Unable to generate token';
    }
  }

  static String getEmail(ContextRequest req) {
    final email = TokenUtil.getSubjectFromToken(req);
    if (email == null) throw 'Invalid token';
    return email;
  }
}
