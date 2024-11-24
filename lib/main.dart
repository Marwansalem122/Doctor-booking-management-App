import 'package:appointment_booking_app/core/di/dependancy_injection.dart';
import 'package:flutter/material.dart';

import 'core/routing/app_router.dart';
import 'doc_app.dart';

void main() {
  setUpGetIt();
  runApp( DocApp(appRouter: AppRouter()));
}
