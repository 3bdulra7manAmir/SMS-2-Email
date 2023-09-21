// ignore_for_file: avoid_print
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:sms2email_v1_1/consts/consts.dart';

void emailSender() async{

  final smtpServer = gmail(Consts().username, Consts().password);
  final message = Message()

    ..from = Address(Consts().username, 'ShadowOf-1160')
    ..recipients.add(Consts.receiverEmail)
    //..ccRecipients.addAll(['destCc1@example.com', 'destCc2@example.com'])
    //..bccRecipients.add(Address('bccAddress@example.com'))
    ..subject = 'I have brought Your Required SMS Message :: 😀 :: ${DateTime.now()}'
    ..text = 'This is the plain text.\nThis is line 2 of the text part.'
    ..html = "<h1>Your Message Text is: <br>$sms <br>Message Sender is: <br>$sender <br>Message time is: $time</h1>\n<p></p>";

  try{
    final sendReport = await send(message, smtpServer);
    print('Message sent: $sendReport');
    }
  on MailerException catch (e)
  {
    print('Message not sent.');
    for (var p in e.problems)
    {
      print('Problem: ${p.code}: ${p.msg}');
    }
  }
}
