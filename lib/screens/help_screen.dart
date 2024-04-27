import 'package:flutter/material.dart';
import 'package:writable_fl/utils/style_constants.dart';
import 'package:writable_fl/widgets/back_icon.dart';
import 'package:writable_fl/widgets/fancy_title.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackIcon(),
        title: FancyTitle(
          content: "How To Use Writable?",
          fontSize: StyleConstants.screenTitleSize,
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 35.0),
          Text(
            "Welcome to the Novel Writing Planner! This comprehensive tool is designed to assist you in planning and organizing your novel from start to finish. Follow these steps to make the most out of your writing journey:\n\nStep 1: Getting Started\n\nCreate an Account: Sign up for an account with the Novel Writing Planner. This will enable you to access your projects, save your progress, and sync your work across devices.\n\nSet Up Your Profile: Customize your profile by adding your name, bio, and profile picture. This will help you personalize your writing experience.\n\nStep 2: Creating a New Project\n\nClick on \"New Project\" to start a new novel. Give your project a unique name and select the genre or genres that best fit your story.\n\nDefine Your Story: Provide a brief summary or outline of your novel. This will serve as a reference point as you progress through the planning stages.\n\nStep 3: Planning Your Novel\n\nCharacter Creation: Use the character creation tool to develop your main characters. Specify their names, backgrounds, motivations, and key personality traits. This will help you create well-rounded and believable characters.\n\nWorld Building: Dive into the world of your novel by developing its setting, history, and any unique elements that make it stand out. Consider the geography, culture, and rules that govern your fictional world.\n\nPlot Outlining: Utilize the plot outlining tool to structure your story. Break it down into chapters or acts, and summarize the key events and plot points that will drive your narrative forward.\n\nScene Planning: Plan individual scenes within each chapter or act. Detail the location, characters involved, and the purpose of each scene. This will help you maintain a cohesive and engaging storyline.\n\nStep 4: Tracking Progress\n\nWriting Goals: Set specific goals for your writing journey, such as word count targets or completion dates. Use the goal tracker to monitor your progress and stay motivated.\n\nMilestones: Celebrate your achievements by marking significant milestones in your writing process. Record when you complete drafts, reach important plot points, or receive feedback from beta readers.\n\nStep 5: Resources and Support\n\nWriting Resources: Explore the resources section for tips, guides, and inspiration to enhance your writing skills. Discover articles, podcasts, and recommended books that can provide valuable insights.\n\nCommunity Engagement: Connect with fellow writers by joining writing groups or forums within the Novel Writing Planner. Share ideas, seek feedback, and build a supportive network of like-minded individuals.\n\nRemember, the Novel Writing Planner is your creative companion throughout your writing journey. Use it to stay organized, motivated, and inspired as you bring your novel to life.\n\nHappy writing!",
            softWrap: true,
            style: TextStyle(
              fontSize: StyleConstants.largeText,
            ),
          )
        ],
      ),
    );
  }
}
