import 'package:flutter/cupertino.dart';

import '../theme/app_theme.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _dailySummary = true;
  bool _weatherAlerts = true;
  bool _feedbackReminders = false;
  bool _hapticHints = true;
  bool _adaptiveSuggestions = true;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = CupertinoDynamicColor.resolve(
      AppColors.background,
      context,
    );

    return CupertinoPageScaffold(
      backgroundColor: backgroundColor,
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Settings'),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: AppSpacing.md),
              child: CupertinoListSection.insetGrouped(
                backgroundColor: backgroundColor,
                children: [
                  CupertinoListTile(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.md,
                      vertical: AppSpacing.md,
                    ),
                    leadingSize: 64,
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: AppColors.primary.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: const Center(
                        child: Text(
                          'AJ',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primary,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      'Ava Johnson',
                      style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: CupertinoDynamicColor.resolve(
                              AppColors.textPrimary,
                              context,
                            ),
                          ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text(
                        'Apple ID, iCloud, Media & Purchases',
                        style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                              fontSize: 14,
                              color: CupertinoDynamicColor.resolve(
                                AppColors.textSecondary,
                                context,
                              ),
                            ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    trailing: const CupertinoListTileChevron(),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: CupertinoListSection.insetGrouped(
              hasLeading: false,
              backgroundColor: backgroundColor,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.sm,
                    vertical: AppSpacing.sm,
                  ),
                  child: _AddBabyCard(onPressed: () {}),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: AppSpacing.md),
              child: CupertinoListSection.insetGrouped(
                backgroundColor: backgroundColor,
                header: _buildHeader(context, 'Baby Profiles'),
                children: [
                  CupertinoListTile(
                    leading: _buildIconContainer(
                      CupertinoIcons.person_crop_circle_badge_checkmark,
                    ),
                    title: _buildTitle(context, 'Noah Johnson'),
                    subtitle: _buildSubtitle(context, 'Active · 6 months · 18 lbs'),
                    trailing: const CupertinoListTileChevron(),
                    onTap: () {},
                  ),
                  CupertinoListTile(
                    leading: _buildIconContainer(
                      CupertinoIcons.person_crop_circle,
                    ),
                    title: _buildTitle(context, 'Emma Johnson'),
                    subtitle: _buildSubtitle(context, '2 years · 28 lbs'),
                    trailing: const CupertinoListTileChevron(),
                    onTap: () {},
                  ),
                  CupertinoListTile(
                    leading: _buildIconContainer(CupertinoIcons.cube_box),
                    title: _buildTitle(context, 'Wardrobe Planner'),
                    subtitle: _buildSubtitle(
                      context,
                      'Manage sizes & seasonal items',
                    ),
                    trailing: const CupertinoListTileChevron(),
                    onTap: () {},
                  ),
                  CupertinoListTile(
                    leading: _buildIconContainer(CupertinoIcons.timer),
                    title: _buildTitle(context, 'Laundry Rhythm'),
                    subtitle: _buildSubtitle(context, 'Remind me every 3 days'),
                    trailing: const CupertinoListTileChevron(),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: AppSpacing.md),
              child: CupertinoListSection.insetGrouped(
                backgroundColor: backgroundColor,
                header: _buildHeader(context, 'Notifications'),
                children: [
                  CupertinoListTile(
                    leading: _buildIconContainer(CupertinoIcons.bell_fill),
                    title: _buildTitle(context, 'Morning Summary'),
                    subtitle: _buildSubtitle(
                      context,
                      'Daily outfit overview at 7:30 AM',
                    ),
                    trailing: CupertinoSwitch(
                      value: _dailySummary,
                      onChanged: (value) => setState(() => _dailySummary = value),
                    ),
                  ),
                  CupertinoListTile(
                    leading: _buildIconContainer(CupertinoIcons.cloud_rain_fill),
                    title: _buildTitle(context, 'Weather Shift Alerts'),
                    subtitle: _buildSubtitle(
                      context,
                      'Let me know when temps swing by 5°',
                    ),
                    trailing: CupertinoSwitch(
                      value: _weatherAlerts,
                      onChanged: (value) => setState(() => _weatherAlerts = value),
                    ),
                  ),
                  CupertinoListTile(
                    leading: _buildIconContainer(
                      CupertinoIcons.hand_thumbsup_fill,
                    ),
                    title: _buildTitle(context, 'Comfort Feedback'),
                    subtitle: _buildSubtitle(
                      context,
                      'Nudge me after stroller sessions',
                    ),
                    trailing: CupertinoSwitch(
                      value: _feedbackReminders,
                      onChanged: (value) =>
                          setState(() => _feedbackReminders = value),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: AppSpacing.md),
              child: CupertinoListSection.insetGrouped(
                backgroundColor: backgroundColor,
                header: _buildHeader(context, 'Preferences'),
                children: [
                  CupertinoListTile(
                    leading: _buildIconContainer(CupertinoIcons.waveform),
                    title: _buildTitle(context, 'Haptic Hints'),
                    subtitle: _buildSubtitle(
                      context,
                      'Light taps confirm saved changes',
                    ),
                    trailing: CupertinoSwitch(
                      value: _hapticHints,
                      onChanged: (value) => setState(() => _hapticHints = value),
                    ),
                  ),
                  CupertinoListTile(
                    leading: _buildIconContainer(CupertinoIcons.sparkles),
                    title: _buildTitle(context, 'Adaptive Suggestions'),
                    subtitle: _buildSubtitle(
                      context,
                      'Learn from your feedback',
                    ),
                    trailing: CupertinoSwitch(
                      value: _adaptiveSuggestions,
                      onChanged: (value) =>
                          setState(() => _adaptiveSuggestions = value),
                    ),
                  ),
                  CupertinoListTile(
                    leading: _buildIconContainer(CupertinoIcons.paintbrush_fill),
                    title: _buildTitle(context, 'Accent Colour'),
                    subtitle: _buildSubtitle(context, 'System Blue'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                              color: CupertinoDynamicColor.resolve(
                                AppColors.separator,
                                context,
                              ),
                              width: 1,
                            ),
                          ),
                        ),
                        const SizedBox(width: AppSpacing.sm),
                        const CupertinoListTileChevron(),
                      ],
                    ),
                    onTap: () {},
                  ),
                  CupertinoListTile(
                    leading: _buildIconContainer(CupertinoIcons.globe),
                    title: _buildTitle(context, 'Language'),
                    subtitle: _buildSubtitle(context, 'English (US)'),
                    trailing: const CupertinoListTileChevron(),
                    onTap: () {},
                  ),
                  CupertinoListTile(
                    leading: _buildIconContainer(CupertinoIcons.thermometer),
                    title: _buildTitle(context, 'Temperature Unit'),
                    subtitle: _buildSubtitle(context, 'Fahrenheit'),
                    trailing: const CupertinoListTileChevron(),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: AppSpacing.md),
              child: CupertinoListSection.insetGrouped(
                backgroundColor: backgroundColor,
                header: _buildHeader(context, 'Support'),
                children: [
                  CupertinoListTile(
                    leading: _buildIconContainer(
                      CupertinoIcons.question_circle_fill,
                    ),
                    title: _buildTitle(context, 'Help Centre'),
                    trailing: const CupertinoListTileChevron(),
                    onTap: () {},
                  ),
                  CupertinoListTile(
                    leading: _buildIconContainer(
                      CupertinoIcons.bubble_left_bubble_right_fill,
                    ),
                    title: _buildTitle(context, 'Share Feedback'),
                    trailing: const CupertinoListTileChevron(),
                    onTap: () {},
                  ),
                  CupertinoListTile(
                    leading: _buildIconContainer(CupertinoIcons.info_circle_fill),
                    title: _buildTitle(context, 'About Baby Outfit'),
                    subtitle: _buildSubtitle(context, 'Version 1.0.0 (42)'),
                    trailing: const CupertinoListTileChevron(),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          const SliverPadding(padding: EdgeInsets.only(bottom: AppSpacing.xl)),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(left: AppSpacing.md, bottom: 6),
      child: Text(
        text.toUpperCase(),
        style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.8,
              color: CupertinoDynamicColor.resolve(
                AppColors.textSecondary,
                context,
              ),
            ),
      ),
    );
  }

  Widget _buildIconContainer(IconData icon) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(icon, color: AppColors.primary, size: 18),
    );
  }

  Widget _buildTitle(BuildContext context, String text) {
    return Text(
      text,
      style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: CupertinoDynamicColor.resolve(AppColors.textPrimary, context),
          ),
    );
  }

  Widget _buildSubtitle(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Text(
        text,
        style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
              fontSize: 14,
              color: CupertinoDynamicColor.resolve(AppColors.textSecondary, context),
            ),
      ),
    );
  }
}

class _AddBabyCard extends StatelessWidget {
  const _AddBabyCard({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final cardColor = CupertinoDynamicColor.resolve(AppColors.card, context);
    final textPrimary = CupertinoDynamicColor.resolve(
      AppColors.textPrimary,
      context,
    );
    final textSecondary = CupertinoDynamicColor.resolve(
      AppColors.textSecondary,
      context,
    );
    final shadowColor = CupertinoDynamicColor.resolve(
      AppColors.subtleShadow,
      context,
    );

    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 12,
            offset: const Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Icon(
                  CupertinoIcons.add_circled,
                  color: AppColors.primary,
                  size: 26,
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Add Baby',
                      style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: textPrimary,
                          ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Create a profile to tailor outfit suggestions for each child.',
                      style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                            fontSize: 14,
                            color: textSecondary,
                            height: 1.3,
                          ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: onPressed,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  'Add Baby',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: CupertinoColors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}