import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_ecommarce/model/list.dart';
import 'package:music_ecommarce/model/style.dart';
import 'package:music_ecommarce/order_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final productList = ProductList.productList();
  final accesoriesList = AccesoriesList.accesoriesList();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 30.h, left: 15.w, right: 15.w, bottom: 30.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kGrey,
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 17.w,
                        color: Colors.grey,
                      ),
                    ),

                    Container(
                      alignment: Alignment.center,
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.1),),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Icon(
                        Icons.search,
                        size: 23.w,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              
              Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 20.h),
                child: Text("Hi-Fi Shop & Service", style: myStyle(30.sp, Colors.black, FontWeight.bold),),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15.w),
                child: Text("The audio shop is Rustaveli Ave 57.", style: myStyle(14.sp, kBlack,),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.h, left: 15.w, right: 15.w, bottom: 40.h),
                child: Text("This shop offers both products and services", style: myStyle(14.sp, kBlack,),),
              ),

              Padding(
                padding:  EdgeInsets.only(left: 15.w, right: 15.w, bottom: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Products',
                        style: myStyle(20.sp, kNevy, FontWeight.w700),
                        children:  <TextSpan>[
                          TextSpan(text: ' 41', style: myStyle(20.sp, kBlack, FontWeight.w700)),
                        ],
                      ),
                    ),
                    Text("Show all", style: myStyle(16.sp, kBlue, FontWeight.w500),),
                  ],
                ),
              ),

              Expanded(
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => SizedBox(width: 0.w,),
                    itemCount: productList.length,
                  itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(left: 15.w, ),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> OrderDetails()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Container(
                              //padding: EdgeInsets.only(top: 20.h, left: 35.w, right: 35.w, bottom: 20.h),
                            height: 150.h,
                            width: 240.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10.r),),
                              color: kGrey,
                            ),
                            child: Image.asset(productList[index].img, width: 20.w,),
                          ),

                              Text(productList[index].title, style: myStyle(16.sp, kNevy, FontWeight.w600),),
                              Text(productList[index].category, style: myStyle(14.sp, kNevy, FontWeight.w600),),
                              Text("${productList[index].price}", style: myStyle(16.sp, kBlack, FontWeight.w400),),
                            ],
                          ),
                        ),
                      );
                  },
                ),
              ),

              Padding(
                padding:  EdgeInsets.only(left: 15.w, right: 15.w, bottom: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Accessories',
                        style: myStyle(20.sp, kNevy, FontWeight.w700),
                        children:  <TextSpan>[
                          TextSpan(text: ' 19', style: myStyle(20.sp, kBlack, FontWeight.w700)),
                        ],
                      ),
                    ),
                    Text("Show all", style: myStyle(16.sp, kBlue, FontWeight.w500),),
                  ],
                ),
              ),

              Expanded(
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(width: 0.w,),
                  itemCount: accesoriesList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 15.w, ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            //padding: EdgeInsets.only(top: 20.h, left: 35.w, right: 35.w, bottom: 20.h),
                            height: 150.h,
                            width: 240.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10.r),),
                              color: kGrey,
                            ),
                            child: Image.asset(accesoriesList[index].img, width: 20.w,),
                          ),

                          Text(accesoriesList[index].title, style: myStyle(14.sp, kNevy, FontWeight.w600),),
                          Text(accesoriesList[index].stock, style: myStyle(14.sp, Colors.tealAccent, FontWeight.w600),),
                          Text(accesoriesList[index].price, style: myStyle(16.sp, kBlack, FontWeight.w400),),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
