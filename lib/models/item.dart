class Item {
  String SubjectName;
  String imgPath;
  String NameDoctor;
  Item({required this.SubjectName,required this.imgPath,required this.NameDoctor});
}

final List<Item> items = [
  //الفرقة الاولي
  Item(SubjectName: "صيانة التقارير العلمية والفنية",NameDoctor:"محي هدهود ", imgPath: "images/s4.jpg"),
  Item(SubjectName: "تراكيب محددة",NameDoctor:"اسامة عبالرؤوف", imgPath: "images/s3.jpg"),
  Item(SubjectName: "اشباه مواصلات",NameDoctor:" اشرف السيسي", imgPath: "images/s5.jpg"),
  Item(SubjectName: "رياضيات 1",NameDoctor:"جمال فاروق ", imgPath: "images/s5.jpg"),
  Item(SubjectName: "رياضيات 0",NameDoctor:"جمال فاروق ", imgPath: "images/s7.jpg"),
  Item(SubjectName: "اخلاقيات المهنة", NameDoctor:"خالد امين ",imgPath: "images/s5.jpg"),
 Item(SubjectName: "مقدمة في الحاسبات", NameDoctor:"عربي كشك",imgPath: "images/s4.jpg"),
//   //الفرقة الثانية
//   Item(SubjectName: "تصميم وتطوير الويب",NameDoctor:"اميرة عبدالعاطي ", imgPath: "images/s6.jpg"),
//   Item(SubjectName: " تحليل وتصميم نظم1",NameDoctor:"اسماء هارون", imgPath: "images/s3.jpg"),
//   Item(SubjectName: "مقدمة في بحوث العمليات",NameDoctor:"احمد كفافي", imgPath: "images/s5.jpg"),
//   Item(SubjectName: "وسائط متعددة1",NameDoctor:"سامح الظريف ", imgPath: "images/s6.jpg"),
//   Item(SubjectName: "هياكل البيانات",NameDoctor:"عفاف سمير", imgPath: "images/s7.jpg"),
//   Item(SubjectName: "برمجة حاسبات1", NameDoctor:"احمد موسي",imgPath: "images/s9.jpg"),
// //الفرقة 3 علوم حاسب
//   Item(SubjectName: "الحوسبة السحابية",NameDoctor:"احمد صقر", imgPath: "images/s3.jpg"),
//   Item(SubjectName: "نظم تشغيل2",NameDoctor:"اشرف السيسي", imgPath: "images/s5.jpg"),
//   Item(SubjectName: "برمجة حاسبات3",NameDoctor:"ايمان المصيلحي", imgPath: "images/s6.jpg"),
//   Item(SubjectName: "ذكاء اصطناعي",NameDoctor:"شريف العتربي", imgPath: "images/s7.jpg"),
//   Item(SubjectName: "هندسة البرمجيات", NameDoctor:"محمد ملهط",imgPath: "images/s9.jpg"),
//   Item(SubjectName: "نظم قواعد البيانات", NameDoctor:"نادر محمود",imgPath: "images/s9.jpg"),
//   //الفرقة 3 نظم معلومات
//   Item(SubjectName: "تحليل وتصميم نظم2", NameDoctor:"اميرة عبالعاطي",imgPath: "images/s9.jpg"),
//   Item(SubjectName: "بنية الشركات", NameDoctor:"حاتم السيد",imgPath: "images/s9.jpg"),
//   //الفرقة 3 تكنولوجيا المعلومات
//   Item(SubjectName:"شبكات الحاسبات2", NameDoctor:"احمد حماد",imgPath: "images/s9.jpg"),
//   Item(SubjectName: "معالجة الاشارات الرقمية", NameDoctor:"مينا ابراهيم",imgPath: "images/s9.jpg"),
//   // الفرقة الرابعة علوم حاسب
//   Item(SubjectName: "البرمجة المتوازية",NameDoctor:"محمود حسين", imgPath: "images/s5.jpg"),
//   Item(SubjectName: "تنقيب البيانات",NameDoctor:"امجد منير", imgPath: "images/s6.jpg"),
//   Item(SubjectName: "الانظمة المدمجة",NameDoctor:"انس يوسف", imgPath: "images/s7.jpg"),
//   Item(SubjectName: "بناء المترجمات", NameDoctor:"ابراهيم الجندي",imgPath: "images/s9.jpg"),
//   Item(SubjectName: "اتصال الانسان بالحاسب", NameDoctor:"محمد صقر",imgPath: "images/s9.jpg"),
//   //الفرقة الرابعة نظم معلومات
//   Item(SubjectName: "نظم قواعد بيانات2",NameDoctor:"امجد منير", imgPath: "images/s5.jpg"),
//   Item(SubjectName: "ذكاء الاعمال",NameDoctor:"احمد صقر", imgPath: "images/s6.jpg"),
//   Item(SubjectName: "انظمة الشركات",NameDoctor:"اسماء هارون", imgPath: "images/s7.jpg"),
//   Item(SubjectName: "نظم قواعد بيانات الحديثة", NameDoctor:"امجد منير",imgPath: "images/s9.jpg"),
//   //الفرقة الرابعة تكنولوجيا المعلومات
//   Item(SubjectName: "التعرف علي الانماط1",NameDoctor:"سندس مجدي", imgPath: "images/s5.jpg"),
//   Item(SubjectName: "وسائط متعددة2",NameDoctor:"نورا السمري", imgPath: "images/s6.jpg"),
//   Item(SubjectName: "الواقع الافتراضي1",NameDoctor:"هيام موسي", imgPath: "images/s7.jpg"),
//   Item(SubjectName: "تطبيقات تكنولوجيا المعلومات", NameDoctor:"محمد عادل",imgPath: "images/s9.jpg"),
//   Item(SubjectName: "ادارو وتحليل الشبكات", NameDoctor:"تامر غانم",imgPath: "images/s9.jpg"),
// //الفرقة التانية معلومات حيوية
//   Item(SubjectName: "برمجة2",NameDoctor:" امينة المحلاوي", imgPath: "images/s5.jpg"),
//   Item(SubjectName: "وسائط متعددة2",NameDoctor:"نورا السمري", imgPath: "images/s6.jpg"),
//   Item(SubjectName: "الواقع الافتراضي1",NameDoctor:"هيام موسي", imgPath: "images/s7.jpg"),
//   Item(SubjectName: "تطبيقات تكنولوجيا المعلومات", NameDoctor:"محمد عادل",imgPath: "images/s9.jpg"),
//   Item(SubjectName: "ادارو وتحليل الشبكات", NameDoctor:"تامر غانم",imgPath: "images/s9.jpg"),
];