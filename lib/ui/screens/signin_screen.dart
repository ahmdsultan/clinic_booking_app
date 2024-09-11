import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../widgets/button.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custombutton.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = 40;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors['blue'],
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 400,
          ),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                icon: Icons.person,
                hintText: 'User Name',
              ),
              SizedBox(
                height: height,
              ),
              CustomTextField(
                hintText: 'Password',
                icon: Icons.key,
                isSecure: true,
              ),
              SizedBox(
                height: height,
              ),
              CustomButton(
                // عند استدعاء الكلاس نقوم بتمرير المتغيرات كالتالي
                text: 'Sign In ', //النص الذي سوف يظهر على الزر

                onPressed: () {
                  //الاكشن الذي سوف يقوم به الزر
                  //هنا يتم اضافة الاكشن المحدد عند الضغط على الزر
                  //مثل استدعاء دالة الانتقالة لصفحة وهكذا
                },
                buttonType: ButtonType.elevated,//نوع الزر الذي تريدونه تستدعونه بهذه الطريقة 
                //هناك المزيد من الميزات يمكنكم التعديل عليها كما تريدون 
              ),
              CustomButton(
                textColor: Colors.black,
                onPressed: () {},
                text: 'Don\'t have an account? Register',
                buttonType: ButtonType.text,
              )
            ],
          ),
        ),
      ),
    );
  }
}
