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
          const CupertinoSliverNavigationBar(largeTitle: Text('Settings')),
          SliverToBoxAdapter(
            child: CupertinoListSection.insetGrouped(
              backgroundColor: backgroundColor,
              children: [
                CupertinoListTile(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 14,
                  ),
                  leadingSize: 56,
                  leading: Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: AppColors.primary.withOpacity(0.18),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        'AJ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primary,
                          letterSpacing: -0.2,
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    'Ava Johnson',
                    style: CupertinoTheme.of(context).textTheme.textStyle
                        .copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: CupertinoDynamicColor.resolve(
                            AppColors.textPrimary,
                            context,
                          ),
                        ),
                  ),
                  subtitle: Text(
                    'Apple ID, iCloud, Media & Purchases',
                    style: CupertinoTheme.of(context).textTheme.textStyle
                        .copyWith(
                          fontSize: 14,
                          color: CupertinoDynamicColor.resolve(
                            AppColors.textSecondary,
                            context,
                          ),
                        ),
                  ),
                  trailing: const CupertinoListTileChevron(),
                  onTap: () {},
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: CupertinoListSection.insetGrouped(
              hasLeading: false,
              backgroundColor: backgroundColor,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: _AddBabyCard(onPressed: () {}),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: CupertinoListSection.insetGrouped(
              backgroundColor: backgroundColor,
              header: _buildHeader(context, 'Baby Profiles'),
              children: [
                CupertinoListTile(
                  leading: _buildIconContainer(
                    CupertinoIcons.person_crop_circle_badge_checkmark,
                  ),
                  title: _buildTitle(context, 'Active Baby'),
                  subtitle: _buildSubtitle(context, 'Noah · 6 months'),
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
          SliverToBoxAdapter(
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
                    onChanged: (value) =>
                        setState(() => _weatherAlerts = value),
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
          SliverToBoxAdapter(
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
                  leading: _buildIconContainer(CupertinoIcons.paintbrush_fill),
                  title: _buildTitle(context, 'Accent Colour'),
                  subtitle: _buildSubtitle(context, 'Ocean Blue'),
                  trailing: const CupertinoListTileChevron(),
                  onTap: () {},
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
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
                  subtitle: _buildSubtitle(context, 'Version 1.0.0'),
                  trailing: const CupertinoListTileChevron(),
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SliverPadding(padding: EdgeInsets.only(bottom: 40)),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 6),
      child: Text(
        text.toUpperCase(),
        style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.6,
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
        color: AppColors.primary.withOpacity(0.12),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon, color: AppColors.primary, size: 18),
    );
  }

  Widget _buildTitle(BuildContext context, String text) {
    return Text(
      text,
      style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: CupertinoDynamicColor.resolve(AppColors.textPrimary, context),
      ),
    );
  }

  Widget _buildSubtitle(BuildContext context, String text) {
    return Text(
      text,
      style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
        fontSize: 13,
        color: CupertinoDynamicColor.resolve(AppColors.textSecondary, context),
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

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: CupertinoDynamicColor.resolve(
              AppColors.subtleShadow,
              context,
            ),
            blurRadius: 20,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Icon(
                  CupertinoIcons.add_circled,
                  color: AppColors.primary,
                  size: 24,
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Add Baby',
                      style: CupertinoTheme.of(context).textTheme.textStyle
                          .copyWith(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: textPrimary,
                          ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Create a profile to tailor outfit suggestions for each child.',
                      style: CupertinoTheme.of(context).textTheme.textStyle
                          .copyWith(fontSize: 14, color: textSecondary),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          CupertinoButton(
            padding: const EdgeInsets.symmetric(vertical: 12),
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(16),
            onPressed: onPressed,
            child: const Text(
              'Add Baby',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: CupertinoColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
