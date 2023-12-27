// import 'package:flutter/material.dart';
// import 'package:restaurant_app/features/restaurant/models/menu_model.dart';
// import 'package:restaurant_app/features/restaurant/models/restaurant_model.dart';
// import 'package:restaurant_app/features/restaurant/presentation/widgets/menu_widget.dart';
// import 'package:restaurant_app/utils/constants/colors.dart';
// import 'package:restaurant_app/utils/constants/sizes.dart';
// import 'package:restaurant_app/utils/constants/text_strings.dart';
// import 'package:restaurant_app/utils/styles/spacing_style.dart';

// class RestaurantDetails extends StatefulWidget {
//   final RestaurantModel? restaurant;

//   const RestaurantDetails({
//     this.restaurant,
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<RestaurantDetails> createState() => _RestaurantDetailsState();
// }

// class _RestaurantDetailsState extends State<RestaurantDetails> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: TSpacingStyle.paddingAppWithBar,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // -- Image
//               SizedBox(
//                 width: MediaQuery.of(context).size.width,
//                 height: 250,
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
//                   child: Image.network(
//                     widget.restaurant!.pictureId,
//                     height: TSizes.imageThumbSize,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),

//               const SizedBox(height: TSizes.spaceBtwItem),

//               // -- Title
//               Text(widget.restaurant!.name, style: Theme.of(context).textTheme.headlineMedium),

//               const SizedBox(height: TSizes.xs),

//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   // -- Place
//                   Row(
//                     children: [
//                       const Icon(Icons.place, size: TSizes.iconSm, color: TColors.darkGrey),
//                       const SizedBox(width: TSizes.xs),
//                       Text(widget.restaurant!.city, style: Theme.of(context).textTheme.bodySmall),
//                     ],
//                   ),
//                   // -- Rating
//                   Row(
//                     children: [
//                       Text('${widget.restaurant!.rating}', style: Theme.of(context).textTheme.bodySmall),
//                       const SizedBox(width: TSizes.xs),
//                       const Icon(Icons.star, size: TSizes.iconSm, color: Colors.orange),
//                     ],
//                   ),
//                 ],
//               ),

//               const SizedBox(height: TSizes.spaceBtwItem),

//               // -- Description
//               Text(TTextStrings.detailsDescription, style: Theme.of(context).textTheme.bodySmall),
//               const SizedBox(height: TSizes.xs),
//               Text(widget.restaurant!.description, style: Theme.of(context).textTheme.bodyMedium),

//               const SizedBox(height: TSizes.spaceBtwSection),

//               // -- Food Menu
//               Text(TTextStrings.detailsFoodMenu, style: Theme.of(context).textTheme.bodySmall),
//               ListView.separated(
//                 padding: const EdgeInsets.symmetric(vertical: TSizes.sm),
//                 physics: const NeverScrollableScrollPhysics(),
//                 shrinkWrap: true,
//                 itemBuilder: (BuildContext context, int index) {
//                   return MenuWidget(
//                     menu: widget.restaurant!.menus!.foods[index],
//                     type: MenuType.food,
//                   );
//                 },
//                 separatorBuilder: (context, index) {
//                   return const SizedBox(height: TSizes.sm);
//                 },
//                 itemCount: widget.restaurant!.menus!.foods.length,
//               ),

//               const SizedBox(height: TSizes.spaceBtwSection),

//               // -- Drinks Menu
//               Text(TTextStrings.detailsDrinkMenu, style: Theme.of(context).textTheme.bodySmall),
//               ListView.separated(
//                 padding: const EdgeInsets.symmetric(vertical: TSizes.sm),
//                 physics: const NeverScrollableScrollPhysics(),
//                 shrinkWrap: true,
//                 itemBuilder: (BuildContext context, int index) {
//                   return MenuWidget(
//                     menu: widget.restaurant!.menus!.drinks[index],
//                     type: MenuType.drink,
//                   );
//                 },
//                 separatorBuilder: (context, index) {
//                   return const SizedBox(height: TSizes.sm);
//                 },
//                 itemCount: widget.restaurant!.menus!.drinks.length,
//               ),

//               const SizedBox(height: TSizes.spaceBtwSection)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
