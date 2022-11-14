import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_ecommarce/model/style.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  double price = 199;
  double quantity = 1;
  double? totalPrice;
  double tax = 4;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: 50.h, left: 15.w, right: 15.w, bottom: 30.h),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Container(
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
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Order Details",
                          style: myStyle(14.sp, kNevy, FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text("My Cart", style: myStyle(20.sp, kNevy, FontWeight.w700)),
              Padding(
                padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                child: Row(
                  children: [
                    Container(
                      //padding: EdgeInsets.only(top: 20.h, left: 35.w, right: 35.w, bottom: 20.h),
                      height: 120.h,
                      width: 140.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.r),
                        ),
                        color: kGrey,
                      ),
                      child: Image.asset(
                        "images/headphone.png",
                        width: 10.w,
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "AKG N700NCM2 Wireless",
                          style: myStyle(16.sp, kNevy, FontWeight.w700),
                        ),
                        Text(
                          "Headphones",
                          style: myStyle(14.sp, kNevy, FontWeight.w700),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
                          child: Row(
                            children: [
                              Text("\$",
                                  style: myStyle(14.sp, kNevy, FontWeight.w600)),
                              Text(
                                "${price.toStringAsFixed(2)}",
                                style: myStyle(14.sp, kNevy, FontWeight.w600),
                              ),
                              Text(
                                " (+\$${tax.toStringAsFixed(2)} Tax)",
                                style: myStyle(14.sp, kNevy, FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: (() {
                                if (quantity > 0) {
                                  setState(() {
                                    quantity--;
                                    totalPrice = price * quantity;

                                    print("Now price is ${totalPrice}");
                                    getTotalPrice();
                                  });
                                }
                              }),
                              child: Container(
                                alignment: Alignment.center,
                                height: 30.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey.withOpacity(0.4),
                                  ),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Icon(
                                  Icons.remove,
                                  size: 17.w,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 40.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "${quantity}",
                                style: myStyle(16.sp, kBlack, FontWeight.w400),
                              ),
                            ),
                            InkWell(
                              onTap: (() {
                                setState(() {
                                  quantity++;
                                  totalPrice = price * quantity;

                                  print("Now price is ${totalPrice}");
                                  getTotalPrice();
                                });
                              }),
                              child: Container(
                                alignment: Alignment.center,
                                height: 30.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey.withOpacity(0.4),
                                  ),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Icon(
                                  Icons.add,
                                  size: 17.w,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 65.w,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 30.h,
                              width: 30.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: kGrey,
                              ),
                              child: Icon(
                                Icons.delete_outline_rounded,
                                size: 18.w,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Text("Delivery Location",
                  style: myStyle(20.sp, kNevy, FontWeight.w700)),
              Padding(
                padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
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
                            Icons.location_on_outlined,
                            size: 17.w,
                            color: kBlue,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "2 Petre Melikishvilli St.",
                              style:
                              myStyle(14.sp, Colors.black, FontWeight.w700),
                            ),
                            Text("0162, Tbllisi",
                                style: myStyle(14.sp, kBlack, FontWeight.w400)),
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                      size: 18.w,
                    )
                  ],
                ),
              ),
              Text("Payment Method",
                  style: myStyle(20.sp, kNevy, FontWeight.w700)),
              Padding(
                padding: EdgeInsets.only(top: 20.h, bottom: 50.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 40.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kGrey,
                          ),
                          child: Text(
                            "VISA",
                            style: myStyle(14.sp, kBlue, FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "VISA Classic",
                              style:
                              myStyle(14.sp, Colors.black, FontWeight.w700),
                            ),
                            Text("****-0921",
                                style: myStyle(14.sp, kBlack, FontWeight.w400)),
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                      size: 18.w,
                    )
                  ],
                ),
              ),
              Text("Order Info", style: myStyle(20.sp, kNevy, FontWeight.w700)),
              Padding(
                padding: EdgeInsets.only(top: 20.h, bottom: 15.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Subtotal",
                        style: myStyle(14.sp, kBlack, FontWeight.w400)),
                    Row(
                      children: [
                        Text("\$", style: myStyle(14.sp, kNevy, FontWeight.w600)),
                        Text(
                          "${_subTotalprice.toStringAsFixed(2)}",
                          style: myStyle(14.sp, kNevy, FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shipping Cost",
                    style: myStyle(14.sp, kBlack, FontWeight.w400),
                  ),
                  Row(
                    children: [
                      Text(
                        "+\$",
                        style: myStyle(14.sp, kNevy, FontWeight.w600),
                      ),
                      Text(
                        "${shippingCost.toStringAsFixed(2)}",
                        style: myStyle(14.sp, kNevy, FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total", style: myStyle(14.sp, kBlack, FontWeight.w400)),
                    Row(
                      children: [
                        Text(
                          "\$",
                          style: myStyle(20.sp, kNevy, FontWeight.w700),
                        ),
                        Text(
                          "${(_subTotalprice + shippingCost + tax).toStringAsFixed(2)}",
                          style: myStyle(20.sp, kNevy, FontWeight.w700),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: kBlue,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "CHECKOUT (\$ ${(_subTotalprice + shippingCost + tax).toStringAsFixed(2)})",
                        style: myStyle(14.sp, Colors.white, FontWeight.w400)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double _subTotalprice = 0;
  double _checkout = 0;
  double shippingCost = 10;

  getTotalPrice() {
    double total = 0;
    total += totalPrice ?? price;

    setState(() {
      _subTotalprice = total;
    });
  }

  @override
  void initState() {
    getTotalPrice();
    super.initState();
  }
}
