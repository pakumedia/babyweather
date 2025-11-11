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
              'Choose cotton or bamboo bodysuits to regulate temperature and prevent overheating. These materials allow air circulation and wick moisture away from baby\'s skin.',
          icon: CupertinoIcons.wind,
          badges: ['Everyday', '0-12 months'],
        ),
        Tip(
          title: 'Add one cozy mid-layer',
          description:
              'Light sweaters or rompers help trap warmth without bulky padding. Perfect for transitioning between indoor and outdoor temperatures.',
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
              'Feel baby\'s neck or back to gauge temperature. Hands and feet can be cooler naturally.',
          icon: CupertinoIcons.hand_point_left_fill,
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
              'Place two fingers on baby\'s chest or back to gauge true body temperature. This is more accurate than checking hands or feet.',
          icon: CupertinoIcons.hand_raised_fill,
          badges: ['Quick Check'],
        ),
        Tip(
          title: 'Pack a weather kit',
          description:
              'Include spare socks, a lightweight hat, and a breathable blanket in the diaper bag. Be prepared for unexpected temperature changes.',
          icon: CupertinoIcons.bag_fill,
          badges: ['Travel Ready'],
        ),
        Tip(
          title: 'Refresh sunscreen every 2 hours',
          description:
              'SPF 30+ mineral sunscreen keeps delicate skin protected on sunny days. Reapply after swimming or excessive sweating.',
          icon: CupertinoIcons.sun_dust_fill,
          badges: ['Sunny Weather'],
        ),
        Tip(
          title: 'Watch for overheating signs',
          description:
              'Flushed cheeks, rapid breathing, or damp hair can indicate baby is too warm. Remove a layer and find shade.',
          icon: CupertinoIcons.thermometer_sun,
          badges: ['Safety'],
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
              'Aim for 68°–72°F (20°–22°C) and adjust layers instead of thermostat swings. Consistent room temp helps regulate sleep cycles.',
          icon: CupertinoIcons.thermometer,
          badges: ['Nursery'],
        ),
        Tip(
          title: 'Swap to sleep sacks',
          description:
              'Replace loose blankets with TOG-rated sleep sacks to reduce overheating risks. Choose the right TOG for your room temperature.',
          icon: CupertinoIcons.moon_stars_fill,
          badges: ['Safe Sleep'],
        ),
        Tip(
          title: 'Prep tomorrow\'s outfit at night',
          description:
              'Lay out layers based on the forecast so mornings stay calm and responsive. Check the weather app before bed.',
          icon: CupertinoIcons.calendar_badge_plus,
          badges: ['Evening Routine'],
        ),
        Tip(
          title: 'One more layer than you',
          description:
              'As a general rule, babies need one more layer than adults. Adjust based on your baby\'s individual comfort.',
          icon: CupertinoIcons.person_2_fill,
          badges: ['General Rule'],
        ),
      ],
    ),
    TipSection(
      title: 'Seasonal Adjustments',
      description:
          'Adapt your approach as seasons change and baby grows.',
      tips: [
        Tip(
          title: 'Summer: Light and loose',
          description:
              'Choose lightweight, loose-fitting clothes in light colors. Cotton and linen are ideal for hot weather.',
          icon: CupertinoIcons.sun_max_fill,
          badges: ['Summer'],
        ),
        Tip(
          title: 'Winter: Layer strategically',
          description:
              'Start with a base layer, add insulation, then finish with a windproof outer layer. Don\'t forget hats and mittens.',
          icon: CupertinoIcons.snow,
          badges: ['Winter'],
        ),
        Tip(
          title: 'Spring/Fall: Be flexible',
          description:
              'Weather can change quickly. Dress in layers that are easy to add or remove throughout the day.',
          icon: CupertinoIcons.cloud_sun,
          badges: ['Transition'],
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
                top: AppSpacing.lg,
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
                dividerMargin: 60,
                header: const SizedBox.shrink(),
                children: [
                  for (final tip in section.tips) _TipListTile(tip: tip),
                ],
              ),
            ),
          ],
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.md,
              AppSpacing.lg,
              AppSpacing.md,
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
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
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
              spreadRadius: 0,
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
                    style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                          color: textPrimary,
                        ),
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  Text(
                    'Check the forecast, pick two core layers, then add or remove based on their cues.',
                    style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                          fontSize: 15,
                          color: textSecondary,
                          height: 1.3,
                        ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
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
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: AppColors.accentGreen.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  CupertinoIcons.sparkles,
                  color: AppColors.accentGreen,
                  size: 24,
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Need personalised guidance?',
                      style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                            fontSize: 19,
                            fontWeight: FontWeight.w700,
                            color: textPrimary,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            'Track feedback for a few days and we\'ll refine outfit picks around nap schedules, routines, and your climate.',
            style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                  fontSize: 15,
                  color: textSecondary,
                  height: 1.4,
                ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: AppSpacing.md),
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: AppSpacing.sm,
                horizontal: AppSpacing.md,
              ),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  'Enable Adaptive Suggestions',
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
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
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
          const SizedBox(height: AppSpacing.xs),
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
        horizontal: AppSpacing.md,
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
      title: Padding(
        padding: const EdgeInsets.only(bottom: AppSpacing.xs),
        child: Text(
          tip.title,
          style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: textPrimary,
              ),
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
              spacing: AppSpacing.sm,
              runSpacing: AppSpacing.xs,
              children: tip.badges
                  .map(
                    (badge) => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.sm,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        badge,
                        style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
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