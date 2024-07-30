import 'package:billa_app/model/menu_data.dart';
import 'package:billa_app/view_model/billa_cubit/billa_cubit.dart';
import 'package:billa_app/view_model/billa_cubit/billa_state.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SliderImages extends StatelessWidget {
  const SliderImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BillaCubit, BillaState>(
      builder: (context, state) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.5,
                autoPlayInterval: const Duration(seconds: 3),
                onPageChanged: (index, reason) {
                  context.read<BillaCubit>().slideChange(index);
                },
              ),
              items: listImages
                  .map((image) => Container(
                      width: double.infinity,
                      height: 200,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                        ),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      )))
                  .toList(),
            ),
          );
        
      },
    );
  }
}
