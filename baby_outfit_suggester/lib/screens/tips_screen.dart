import 'package:flutter/cupertino.dart';

import '../theme/app_theme.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({super.key});

  static final _sections = [
    TipSection(
      title: 'Layering Essentials',
      description:
          'Build a base outfit that adapts to changing rooms and microclimates.',
      tips: [
        Tip(
          title: 'Start with a breathable base',
          description:
              'Choose cotton or bamboo bodysuits to regulate temperature and prevent overheating. Natural fibers allow skin to breathe.',
          icon: CupertinoIcons.wind,
          badges: ['Everyday', '0-12 months'],
        ),
        Tip(
          title: 'Add one cozy mid-layer',
          description:
              'Light sweaters or rompers help trap warmth without bulky padding. Perfect for indoor-outdoor transitions.',
          icon: CupertinoIcons.layers_alt_fill,
          badges: ['Mild Days'],
        ),
        Tip(
          title: 'Finish with an adjustable layer',
          description:
              'Keep a zip-up hoodie or blanket handy for stroller naps or cold breezes. Easy to add or remove as needed.',
          icon: CupertinoIcons.cloud_sun_fill,
          badges: ['On the go'],
        ),
        Tip(
          title: 'Check the neck and back',
          description:
              'Feel baby\'s neck or upper back to gauge temperature. Hands and feet can be cooler without indicating overall comfort.',
          icon: CupertinoIcons.hand_raised_fill,
          badges: ['Quick Check'],
        ),
      ],
    ),
    TipSection(
      title: 'Outdoor Comfort Checks',
      description:
          'Small routines keep your baby comfortable when weather shifts.',
      tips: [
        Tip(
          title: 'Use the hand test',
          description:
              'Place two fingers on baby\'s chest or back to gauge true body temperature. Should feel warm, not hot or cold.',
          icon: CupertinoIcons.hand_raised_fill,
          badges: ['Quick Check'],
        ),
        Tip(
          title: 'Pack a weather kit',
          description:
              'Include spare socks, a lightweight hat, and a breathable blanket in the diaper bag. Be prepared for temperature changes.',
          icon: CupertinoIcons.bag_fill,
          badges: ['Travel Ready'],
        ),
        Tip(
          title: 'Refresh sunscreen every 2 hours',
          description:
              'SPF 30+ mineral sunscreen keeps delicate skin protected on sunny days. Reapply after swimming or sweating.',
          icon: CupertinoIcons.sun_dust_fill,
          badges: ['Sunny Weather'],
        ),
        Tip(
          title: 'Watch for wind chill',
          description:
              'Even mild temperatures can feel colder with wind. Add an extra layer or windbreaker when breezy.',
          icon: CupertinoIcons.wind,
          badges: ['Outdoor Safety'],
        ),
      ],
    ),
    TipSection(
      title: 'Sleep & Wind-Down',
      description:
          'Wind-down routines prepare baby for restful naps and nights.',
      tips: [
        Tip(
          title: 'Check room temperature',
          description:
              'Aim for 68°–72°F (20°–22°C) and adjust layers instead of thermostat swings. Consistent temperature promotes better sleep.',
          icon: CupertinoIcons.thermometer,
          badges: ['Nursery'],
        ),
        Tip(
          title: 'Swap to sleep sacks',
          description:
              'Replace loose blankets with TOG-rated sleep sacks to reduce overheating risks. Choose the right TOG for room temperature.',
          icon: CupertinoIcons.moon_stars_fill,
          badges: ['Safe Sleep'],
        ),
        Tip(
          title: 'Prep tomorrow\'s outfit at night',
          description:
              'Lay out layers based on the forecast so mornings stay calm and responsive. Check weather updates before bed.',
          icon: CupertinoIcons.calendar_badge_plus,
          badges: ['Evening Routine'],
        ),
        Tip(
          title: 'Layer for nap transitions',
          description:
              'Start with lighter layers and add a blanket as baby falls asleep. Body temperature drops during sleep.',
          icon: CupertinoIcons.bed_double_fill,
          badges: ['Nap Time'],
        ),
      ],
    ),
    TipSection(
      title: 'Seasonal Adjustments',
      description:
          'Adapt your approach as seasons change and baby grows.',
      tips: [
        Tip(
          title: 'Summer heat management',
          description:
              'Choose lightweight, moisture-wicking fabrics. Light colors reflect heat. Keep baby in shade during peak sun hours.',
          icon: CupertinoIcons.sun_max_fill,
          badges: ['Summer'],
        ),
        Tip(
          title: 'Winter layering strategy',
          description:
              'Use the three-layer system: base, insulating, and outer shell. Avoid overdressing indoors to prevent overheating.',
          icon: CupertinoIcons.snow,
          badges: ['Winter'],
        ),
        Tip(
          title: 'Transition season tips',
          description:
              'Spring and fall require flexibility. Dress in removable layers and check weather frequently throughout the day.',
          icon: CupertinoIcons.cloud_sun_fill,
          badges: ['Spring & Fall'],
        ),
      ],
    ),
  ];

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
            largeTitle: Text('Tips'),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: AppSpacing.md),
              child: _buildHeroCard(context),
            ),
          ),
          for (final section in _sections) ...[
            SliverPadding(
              padding: const EdgeInsets.only(
                top: AppSpacing.xl,
                bottom: AppSpacing.sm,
              ),
              sliver: SliverToBoxAdapter(
                child: _SectionHeader(section: section),
              ),
            ),
            SliverToBoxAdapter(
              child: CupertinoListSection.insetGrouped(
                hasLeading: false,
                backgroundColor: backgroundColor,
                dividerMargin: 56,
                header: const SizedBox.shrink(),
                children: [
                  for (final tip in section.tips) _TipListTile(tip: tip),
                ],
              ),
            ),
          ],
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.lg,
              AppSpacing.xl,
              AppSpacing.lg,
              AppSpacing.xl,
            ),
            sliver: SliverToBoxAdapter(child: _buildFooterCard(context)),
          ),
        ],
      ),
    );
  }

  Widget _buildHeroCard(BuildContext context) {
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

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.lg),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              blurRadius: 20,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(
                CupertinoIcons.lightbulb_fill,
                color: AppColors.primary,
                size: 32,
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Smart layering keeps babies comfy',
                    style: CupertinoTheme.of(context).textTheme.textStyle
                        .copyWith(
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                          color: textPrimary,
                          height: 1.2,
                        ),
                  ),
                  const SizedBox(height: AppSpacing.xs + 2),
                  Text(
                    'Check the forecast, pick two core layers, then add or remove based on their cues.',
                    style: CupertinoTheme.of(context).textTheme.textStyle
                        .copyWith(fontSize: 15, color: textSecondary, height: 1.3),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFooterCard(BuildContext context) {
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
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Need personalized guidance?',
            style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                  color: textPrimary,
                ),
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            'Track feedback for a few days and we\'ll refine outfit picks around nap schedules, routines, and your climate.',
            style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                  fontSize: 15,
                  color: textSecondary,
                  height: 1.3,
                ),
          ),
          const SizedBox(height: AppSpacing.md),
          CupertinoButton(
            padding: EdgeInsets.zero,
            borderRadius: BorderRadius.circular(12),
            color: AppColors.primary,
            onPressed: () {},
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
              child: const Text(
                'Enable Adaptive Suggestions',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: CupertinoColors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.section});

  final TipSection section;

  @override
  Widget build(BuildContext context) {
    final textPrimary = CupertinoDynamicColor.resolve(
      AppColors.textPrimary,
      context,
    );
    final textSecondary = CupertinoDynamicColor.resolve(
      AppColors.textSecondary,
      context,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            section.title,
            style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.5,
                  color: textPrimary,
                ),
          ),
          const SizedBox(height: AppSpacing.xs + 2),
          Text(
            section.description,
            style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                  fontSize: 15,
                  color: textSecondary,
                  height: 1.3,
                ),
          ),
        ],
      ),
    );
  }
}

class _TipListTile extends StatelessWidget {
  const _TipListTile({required this.tip});

  final Tip tip;

  @override
  Widget build(BuildContext context) {
    final textPrimary = CupertinoDynamicColor.resolve(
      AppColors.textPrimary,
      context,
    );
    final textSecondary = CupertinoDynamicColor.resolve(
      AppColors.textSecondary,
      context,
    );
    final accent = AppColors.primary.withOpacity(0.1);

    return CupertinoListTile(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.md,
      ),
      leadingSize: 56,
      leading: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: accent,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Icon(tip.icon, color: AppColors.primary, size: 22),
      ),
      title: Text(
        tip.title,
        style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: textPrimary,
            ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: AppSpacing.xs),
          Text(
            tip.description,
            style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                  fontSize: 15,
                  color: textSecondary,
                  height: 1.4,
                ),
          ),
          if (tip.badges.isNotEmpty) ...[
            const SizedBox(height: AppSpacing.sm),
            Wrap(
              spacing: AppSpacing.xs,
              runSpacing: AppSpacing.xs,
              children: tip.badges
                  .map(
                    (badge) => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.sm,
                        vertical: AppSpacing.xs,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withOpacity(0.12),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        badge,
                        style: CupertinoTheme.of(context).textTheme.textStyle
                            .copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primary,
                            ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ],
      ),
      trailing: const CupertinoListTileChevron(),
      onTap: () {},
    );
  }
}

class TipSection {
  const TipSection({
    required this.title,
    required this.description,
    required this.tips,
  });

  final String title;
  final String description;
  final List<Tip> tips;
}

class Tip {
  const Tip({
    required this.title,
    required this.description,
    required this.icon,
    this.badges = const [],
  });

  final String title;
  final String description;
  final IconData icon;
  final List<String> badges;
}
