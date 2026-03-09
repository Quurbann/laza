import 'package:flutter/material.dart';
import 'package:laza/core/Theme/colors.dart';
import 'package:laza/core/widgets/buttons/pr%C4%B1mary_button/primary_button.dart';
import 'package:laza/core/widgets/buttons/toggle_button/toggle_button.dart';
import 'package:laza/core/widgets/buttons/toggle_button/toggle_button_provider.dart';
import 'package:laza/features/auth/presentation/pages/forgot_password.dart';
import 'package:laza/features/auth/presentation/widgets/auth_main_text_field.dart';
import 'package:provider/provider.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Column(
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: AppColors.surfaceDark1,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Please enter your data to continue',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: AppColors.muted,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.16),
                  Column(
                    children: [
                      AuthTextField(text: "Username", obsecureText: false),
                      SizedBox(height: 20),
                      AuthTextField(text: "Password", obsecureText: true),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: .end,
                        children: [
                          TextButton(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ForgotPassword(),
                              ),
                            ),
                            child: Text(
                              "Forgot password?",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffea4335),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Remember me',
                            style: TextStyle(color: AppColors.surfaceDark1),
                          ),
                          ChangeNotifierProvider(
                            create: (BuildContext context) =>
                                ToggleButtonProvider(),
                            child: ToggleButton(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.14),
                  Padding(
                    padding: EdgeInsets.only(left: 14, right: 14),
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return SingleChildScrollView(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 25,
                                    vertical: 60,
                                  ),
                                  
                                  child: Center(
                                    child: Text(
                                      ''''Laza – İstifadə Şərtləri və Qaydalar
Son yenilənmə: 9 Mart 2026

"Laza" mobil tətbiqinə xoş gəlmisiniz! Bu tətbiqdən istifadə etməklə siz aşağıdakı şərtlərlə razılaşdığınızı təsdiq edirsiniz. Xahiş edirik, qaydaları diqqətlə oxuyun.

1. Ümumi Müddəalar
* "Laza" platforması istifadəçilərə müxtəlif məhsulları onlayn sifariş etmək imkanı verən e-ticarət xidmətidir.
* Tətbiqdən istifadə etmək üçün istifadəçinin ən azı 18 yaşı olmalı və ya valideyn himayəsi ilə istifadə etməlidir.

2. Hesabın Yaradılması və Təhlükəsizlik
* Sifariş vermək üçün qeydiyyatdan keçmək tələb oluna bilər.
* İstifadəçi öz hesab məlumatlarının məxfiliyinə və hesabı vasitəsilə həyata keçirilən bütün hərəkətlərə görə şəxsən məsuliyyət daşıyır.
* Yanlış və ya saxta məlumat təqdim edildikdə, "Laza" hesabı bloklamaq hüququnu özündə saxlayır.

3. Sifarişlər və Ödəniş
* Tətbiqdə göstərilən qiymətlərə vergilər daxildir (əgər başqa hal qeyd edilməyibsə).
* Ödənişlər onlayn (kart vasitəsilə) və ya çatdırılma zamanı nağd şəkildə həyata keçirilə bilər.

4. Geri Qaytarma və Ləğv Etmə
* İstehlakçı, qanunvericiliklə müəyyən edilmiş müddət ərzində qablaşdırması pozulmamış və istifadə edilməmiş məhsulu geri qaytara bilər.

5. Məxfilik Siyasəti
* Sizin şəxsi məlumatlarınız yalnız sifarişlərin icrası və xidmət keyfiyyətinin artırılması məqsədilə istifadə olunur.
* Məlumatlar üçüncü tərəflərə (çatdırılma xidməti istisna olmaqla) satılmır və ötürülmür.

6. Məsuliyyətin Məhdudlaşdırılması
* "Laza" texniki nasazlıqlar və ya internet bağlantısı problemlərinə görə birbaşa məsuliyyət daşımır.
* Tətbiq daxilindəki məlumatlarda texniki səhv olarsa, tətbiq rəhbərliyi sifarişi ləğv etmək hüququna malikdir.

7. Əlaqə
Bu şərtlərlə bağlı suallarınız yaranarsa, bizimlə əlaqə saxlaya bilərsiniz:
Email: support@laza-app.com
Ünvan: Bakı şəhəri, Azərbaycan.''',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: AppColors.surfaceDark1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(
                            color: AppColors.muted,
                            fontSize: 14,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  "By connecting your account confirm that you agree with our",
                            ),
                            TextSpan(
                              text: "Term and Condition",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: PrimaryButton(text: 'Login'),
    );
  }
}
