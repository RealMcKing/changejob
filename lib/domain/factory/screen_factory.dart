import 'package:change_job/ui/screens/generation_resume/generation_resume_screen.dart';
import 'package:change_job/ui/screens/resume_pdf/resume_pdf_screen.dart';
import 'package:change_job/ui/screens/vacancy_details_screen/vacancy_details_screen.dart';
import 'package:flutter/material.dart';

import 'package:change_job/ui/screens/loader/loader_screen.dart';
import 'package:change_job/ui/screens/auth/auth_screen.dart';
import 'package:change_job/ui/screens/login/login_screen.dart';
import 'package:change_job/ui/screens/sign_up/sign_up_screen.dart';
import 'package:change_job/ui/screens/tags/tags_screen.dart';
import 'package:change_job/ui/screens/main/main_screen.dart';
import 'package:change_job/ui/screens/vacancy_list/vacancy_list_screen.dart';
import 'package:change_job/ui/screens/user/user_screen.dart';

class ScreenFactory {
  Widget makeLoader() {
    return const LoaderScreen();
  }

  Widget makeAuth() {
    return const AuthScreen();
  }

  Widget makeLogin() {
    return const LoginScreen();
  }

  Widget makeSignUp() {
    return const SignUpScreen();
  }

  Widget makeTags() {
    return const TagsScreen();
  }

  Widget makeMain() {
    return const MainScreen();
  }

  Widget makeVacancyList() {
    return const VacancyListScreen();
  }

  Widget makeUser() {
    return const UserScreen();
  }

  Widget makeVacancyDetails() {
    return const VacancyDetailsScreen();
  }

  Widget makeGenerationResume(){
    return const GenerationResumeScreen();
  }

  Widget makeResumePDF(){
    return const ResumePDFScreen();
  }
}
