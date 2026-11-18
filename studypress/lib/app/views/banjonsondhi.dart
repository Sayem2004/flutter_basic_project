import 'package:flutter/material.dart';
import 'common/back_header.dart';
import 'common/button.dart';
import 'common/boldText.dart';
import 'common/lightText.dart';
import 'bangla.dart';

class Banjonsondhi extends StatefulWidget {
  const Banjonsondhi({super.key});

  @override
  State<Banjonsondhi> createState() => _BanjonsondhiState();
}

class _BanjonsondhiState extends State<Banjonsondhi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15,8,12,0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // দুই প্রান্তে সমানভাবে ভাগ করবে
                  children: [
                    const Expanded(
                      child: BackHeader(title: "বাংলাবর্ণ · 3 of 5"),
                    ),
                    const SizedBox(width: 10),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CommonActionButton(
                          title: "Focus",
                          buttonWidth: 80,
                          backgroundColor: Color.fromRGBO(0, 0, 0, 1),
                          textColor: Color.fromRGBO(255, 255, 255, 1),
                          margin: EdgeInsets.zero,
                          onPressed: () {},
                        ),
                        const SizedBox(width: 10),
                        CommonActionButton(
                          title: "A+a",
                          backgroundColor: Color.fromRGBO(0, 0, 0, 1),
                          textColor: Color.fromRGBO(255, 255, 255, 1),
                          buttonWidth: 80,
                          margin: EdgeInsets.zero,
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Stack(
                children: [
                  Container(
                    height: 2,
                    width: double.infinity,
                    color: const Color.fromRGBO(238, 240, 245, 1),
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.6,
                    child: Container(
                      height: 2,
                      color: const Color.fromRGBO(232, 165, 0, 1),
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonBoldText(title: "ব্যঞ্জনসন্ধি", fontSize: 24,height: 1.4,letterSpacing: -0.12,),
                    const SizedBox(height: 10,),
                    CommonLightText(title: "প্রায় ৬ মিনিট পড়া · BCS-এ গড়ে ২টি প্রশ্ন", fontSize: 12.5,color: Color.fromRGBO(148, 163, 184,1),),
                    const SizedBox(height: 20,),
                    CommonLightText(title: "ব্যঞ্জনধ্বনির সঙ্গে স্বরধ্বনি বা ব্যঞ্জনধ্বনির মিলনে যে সন্ধি হয়, তাকে ব্যঞ্জনসন্ধি বলে। বাংলা ব্যাকরণে এটি সন্ধির দ্বিতীয় প্রধান শ্রেণি।", fontSize: 18,height: 1.95,color: Color.fromRGBO(31, 41, 55, 1),),
                    const SizedBox(height: 18,),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 18),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(252, 245, 228, 1),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonBoldText(title: "পরীক্ষায় গুরুত্বপূর্ণ", fontSize: 11, fontWeight: FontWeight.w600,letterSpacing: 1.08,),
                          const SizedBox(height: 10,),
                          CommonLightText(title: "সৎ + জন = সজ্জন · উৎ + শ্বাস = উচ্ছ্বাস · তৎ + কাল = তৎকাল", fontSize: 15,fontWeight: FontWeight.w500,height: 1.8,),
                        ],
                      ),
                    ),
                    const SizedBox(height: 18,),
                    CommonLightText(title: "স্বরের পরে ব্যঞ্জন এলে অথবা ব্যঞ্জনের পরে স্বর এলে ধ্বনির পরিবর্তন ঘটে। এই পরিবর্তন তিন ভাগে বিশ্লেষণ করা হয় — সমীভবন, বিষমীভবন এবং লোপ।", fontSize: 18,height: 1.9,color: Color.fromRGBO(31, 41, 55, 1),),
                    const SizedBox(height: 16,),
                    CommonLightText(title: "উদাহরণস্বরূপ, ‘উৎ + চারণ’ যুক্ত হয়ে ‘উচ্চারণ’ হয়। এখানে ত্‌ ধ্বনি পরবর্তী চ্‌ ধ্বনির প্রভাবে পরিবর্তিত হয়েছে, যাকে পরাগত সমীভবন বলা হয়।", fontSize: 18,height: 1.9,color: Color.fromRGBO(31, 41, 55, 1),),
                    const SizedBox(height: 24,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CommonActionButton(
                          title: "Highlighted",
                          buttonWidth: 120,
                          backgroundColor: Color.fromRGBO(0, 0, 0, 1),
                          textColor: Color.fromRGBO(255, 255, 255, 1),
                          margin: EdgeInsets.zero,
                          onPressed: () {},
                        ),
                        const SizedBox(width: 10),
                        CommonActionButton(
                          title: "A+a",
                          buttonWidth: 80,
                          backgroundColor: Color.fromRGBO(0, 0, 0, 1),
                          textColor: Color.fromRGBO(255, 255, 255, 1),
                          margin: EdgeInsets.zero,
                          onPressed: () {},
                        ),
                        const SizedBox(width: 10),
                        CommonActionButton(
                          title: "A+a",
                          buttonWidth: 80,
                          backgroundColor: Color.fromRGBO(0, 0, 0, 1),
                          textColor: Color.fromRGBO(255, 255, 255, 1),
                          margin: EdgeInsets.zero,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 16,),
                    Center(
                      child: CommonActionButton(
                        title: "Practise this topic. 12 questions",
                        buttonWidth: 280,
                        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
                        textColor: Color.fromRGBO(255, 255, 255, 1),
                        margin: EdgeInsets.zero,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Revision(),),);
                        },
                      ),
                    ),
                    const SizedBox(height: 16,),
                    Center(child: CommonLightText(title: "Next: বিসর্গসন্ধি →", fontSize: 13,fontWeight: FontWeight.w500,color: Color.fromRGBO(100, 116, 139, 1),)),




                  ],
                ),
              ),
              
              
              
              
            ],
          ),
        ),
      ),
    );
  }
}