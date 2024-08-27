import 'package:clean_ease/common/widgets/appbar/appbar.dart';
import 'package:clean_ease/common/widgets/images/app_circular_image.dart';
import 'package:clean_ease/common/widgets/texts/section_heading.dart';
import 'package:clean_ease/features/personalization/screens/profile/widget/profile_menu.dart';
import 'package:clean_ease/utils/constants/image_strings.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppsBar(showBackArrow: true, title: Text('Profile')),

      //body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.defaultSpace),
          child: Column(
            children: [
              // Profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const AppCircularImage(
                        image: AppImages.lightAppLogo, width: 80, height: 80),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              // Details
              const SizedBox(height: AppSize.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: AppSize.spaceBtwItems),

              // Heading
              const AppSectionHeading(
                  title: 'Profile Information', showActionButton: false),
              const SizedBox(height: AppSize.spaceBtwItems),

              //
              AppProfileMenu(
                title: 'Name',
                value: 'Galih Agus',
                onPressed: () {},
              ),
              AppProfileMenu(
                title: 'Username',
                value: 'galih_agus',
                onPressed: () {},
              ),

              const SizedBox(height: AppSize.spaceBtwItems),
              const Divider(),
              const SizedBox(height: AppSize.spaceBtwItems),

              //Heading personal info
              const AppSectionHeading(
                  title: 'Personal Information', showActionButton: false),
              const SizedBox(height: AppSize.spaceBtwItems),

              AppProfileMenu(
                title: 'User Id',
                value: '458796',
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              AppProfileMenu(
                title: 'E-mail',
                value: 'galih_agus',
                onPressed: () {},
              ),
              AppProfileMenu(
                title: 'Phone Number',
                value: '0847596060',
                onPressed: () {},
              ),
              AppProfileMenu(
                title: 'Gender',
                value: 'Male',
                onPressed: () {},
              ),
              AppProfileMenu(
                title: 'Date of Birth',
                value: '10 Agustus 1998',
                onPressed: () {},
              ),
              const Divider(),
              const SizedBox(height: AppSize.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Close Account',
                      style: TextStyle(color: Colors.red)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
