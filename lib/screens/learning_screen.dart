import 'package:flutter/material.dart';
import 'package:jiji_project/core/asset/app_icons.dart';
import 'package:jiji_project/core/asset/app_images.dart';
import 'package:jiji_project/core/helper/validator.dart';
import 'package:jiji_project/widgets/attachment_card.dart';
import 'package:jiji_project/theme/app_colors.dart';
import 'package:jiji_project/widgets/bullet_points.dart';

class LearningScreen extends StatefulWidget {
  static const routeName = 'learning_screen';
  const LearningScreen({super.key});

  @override
  State<LearningScreen> createState() => _LearningScreenState();
}

class _LearningScreenState extends State<LearningScreen> {
  final TextEditingController _textController = TextEditingController();

  //Global Key
  final _formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  children: [
                    Text(
                      'Jiji',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Your AI Friend',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: screenHeight * 0.25,
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 400),
                        child: Image.asset(
                          AppImages.jijiImage,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Form(
                      key: _formkey,
                      child: TextFormField(
                        controller: _textController,
                        cursorColor: AppColors.primaryTeal,
                        validator: (value) {
                          return Validator.validateEntry(value);
                        },

                        decoration: InputDecoration(
                          hintText: "Explain RAG",
                          hintStyle: Theme.of(context).textTheme.headlineMedium!
                              .copyWith(
                                fontWeight: FontWeight.w500,
                                color: AppColors.textBody,
                              ),

                          prefixIcon: Icon(
                            Icons.search,
                            color: AppColors.textGrey,
                            size: 24,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              if (_formkey.currentState!.validate()) {
                                print("Valid input: ${_textController.text}");
                              }
                            },
                            icon: Icon(
                              Icons.send,
                              color: AppColors.primaryTeal,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.inputBackground,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jiji says',
                        style: Theme.of(context).textTheme.headlineMedium!
                            .copyWith(
                              color: AppColors.textPrimary,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.textGrey,
                            width: 0.05,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge
                                    ?.copyWith(color: AppColors.textPrimary),
                                children: [
                                  TextSpan(
                                    text:
                                        'Retrieval-Augmented Generation (RAG) ',
                                  ),
                                  TextSpan(
                                    text:
                                        'combines search with large language models to improve the accuracy of generated answers by providing relevant information from external data sources.',
                                    style: Theme.of(context).textTheme.bodyLarge
                                        ?.copyWith(
                                          color: AppColors.textBody,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            // Bullet points
                            BulletPoints(
                              text: "Retrieves data from external sources",
                            ),
                            BulletPoints(
                              text:
                                  "Uses a language model to generate answers using this data",
                            ),
                            BulletPoints(
                              text: "Enhances the accuracy of responses",
                            ),

                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: AppColors.textGrey,
                                  width: 0.05,
                                ),
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 20),

                                  // Attachments
                                  const AttachmentCard(
                                    title: "Presentation on RAG",
                                    subtitle: "PowerPoint Presentation",
                                    buttonText: "Open",
                                    iconImage: AppIcons.powerPointIcon,
                                    buttonColor: AppColors.primaryTeal,
                                  ),
                                  Divider(
                                    color: AppColors.textGrey,
                                    thickness: 0.05,
                                  ),
                                  const AttachmentCard(
                                    title:
                                        "What is RAG? Retrieval-Augmented Generation (RAG)",
                                    subtitle: "YouTube Video",
                                    buttonText: "Watch",
                                    iconImage: AppIcons.youtubeIcon,
                                    buttonColor: AppColors.secondaryBlue,
                                  ),
                                ],
                              ),
                            ),
                          ],
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
    );
  }
}
