import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/features/review/cubit/post_review/post_review_cubit.dart';
import 'package:restaurant_app/features/review/data/review_api_service.dart';
import 'package:restaurant_app/utils/constants/sizes.dart';
import 'package:restaurant_app/utils/styles/spacing_style.dart';

class AddReviewPage extends StatelessWidget {
  const AddReviewPage({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    final keyForm = GlobalKey<FormState>();
    final nameKey = GlobalKey<FormFieldState>();
    final reviewKey = GlobalKey<FormFieldState>();

    return BlocProvider<PostReviewCubit>(
      create: (_) => PostReviewCubit(ReviewApiService()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add Review'),
        ),
        body: Builder(builder: (context) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: TSpacingStyle.paddingApp,
                child: Form(
                  key: keyForm,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(labelText: 'Name'),
                        key: nameKey,
                        validator: (p0) => (p0 == null || p0.isEmpty) ? 'Empty' : null,
                      ),
                      const SizedBox(height: TSizes.spaceBtwItem),
                      TextFormField(
                        decoration: const InputDecoration(labelText: 'Review'),
                        key: reviewKey,
                        validator: (p0) => (p0 == null || p0.isEmpty) ? 'Empty' : null,
                      ),
                      const SizedBox(height: TSizes.spaceBtwItem),
                      SizedBox(
                        width: double.infinity,
                        child: BlocListener<PostReviewCubit, PostReviewState>(
                          listener: (_, state) {
                            state.whenOrNull(
                              success: (data) => Navigator.pop(context),
                            );
                          },
                          child: ElevatedButton(
                            onPressed: () {
                              if (keyForm.currentState?.validate() ?? false) {
                                context.read<PostReviewCubit>().postReview(
                                      id,
                                      nameKey.currentState!.value,
                                      reviewKey.currentState?.value,
                                    );
                              }
                            },
                            child: const Text('Submit'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
