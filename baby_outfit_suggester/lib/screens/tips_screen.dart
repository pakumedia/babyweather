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
              'Choose cotton or bamboo bodysuits to regulate temperature and prevent overheating.',
          icon: CupertinoIcons.wind,
          badges: ['Everyday', '0-12 months'],
        ),
        Tip(
          title: 'Add one cozy mid-layer',
          description:
              'Light sweaters or rompers help trap warmth without bulky padding.',
          icon: CupertinoIcons.layers_alt_fill,
          badges: ['Mild Days'],
        ),
        Tip(
          title: 'Finish with an adjustable layer',
          description:
              'Keep a zip-up hoodie or blanket handy for stroller naps or cold breezes.',
          icon: CupertinoIcons.cloud_sun_fill,
          badges: ['On the go'],
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
              'Place two fingers on baby’s chest or back to gauge true body temperature.',
          icon: CupertinoIcons.hand_raised_fill,
          badges: ['Quick Check'],
        ),
        Tip(
          title: 'Pack a weather kit',
          description:
              'Include spare socks, a lightweight hat, and a breathable blanket in the diaper bag.',
          icon: CupertinoIcons.bag_fill,
          badges: ['Travel Ready'],
        ),
        Tip(
          title: 'Refresh sunscreen every 2 hours',
          description:
              'SPF 30+ mineral sunscreen keeps delicate skin protected on sunny days.',
          icon: CupertinoIcons.sun_dust_fill,
          badges: ['Sunny Weather'],
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
              'Aim for 68°–72°F (20°–22°C) and adjust layers instead of thermostat swings.',
          icon: CupertinoIcons.thermometer,
          badges: ['Nursery'],
        ),
        Tip(
          title: 'Swap to sleep sacks',
          description:
              'Replace loose blankets with TOG-rated sleep sacks to reduce overheating risks.',
          icon: CupertinoIcons.moon_stars_fill,
          badges: ['Safe Sleep'],
        ),
        Tip(
          title: 'Prep tomorrow’s outfit at night',
          description:
              'Lay out layers based on the forecast so mornings stay calm and responsive.',
          icon: CupertinoIcons.calendar_badge_plus,
          badges: ['Evening Routine'],
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
          const CupertinoSliverNavigationBar(largeTitle: Text('Tips')),
          SliverToBoxAdapter(child: _buildHeroCard(context)),
          for (final section in _sections) ...[
            SliverPadding(
              padding: const EdgeInsets.only(top: 24, bottom: 12),
              sliver: SliverToBoxAdapter(
                child: _SectionHeader(section: section),
              ),
            ),
            SliverToBoxAdapter(
              child: CupertinoListSection.insetGrouped(
                hasLeading: false,
                backgroundColor: backgroundColor,
                dividerMargin: 54,
                header: const SizedBox.shrink(),
                children: [
                  for (final tip in section.tips) _TipListTile(tip: tip),
                ],
              ),
            ),
          ],
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 32),
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
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      child: Container(
        padding: const EdgeInsets.all(20),
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
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(
                CupertinoIcons.lightbulb_fill,
                color: AppColors.primary,
                size: 28,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Smart layering keeps babies comfy',
                    style: CupertinoTheme.of(context).textTheme.textStyle
                        .copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: textPrimary,
                          height: 1.2,
                        ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Check the forecast, pick two core layers, then add or remove based on their cues.',
                    style: CupertinoTheme.of(context).textTheme.textStyle
                        .copyWith(
                          fontSize: 15,
                          color: textSecondary,
                          height: 1.3,
                        ),
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

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: CupertinoDynamicColor.resolve(
              AppColors.subtleShadow,
              context,
            ),
            blurRadius: 24,
            offset: const Offset(0, 16),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Need personalised guidance?',
            style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: textPrimary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Track feedback for a few days and we’ll refine outfit picks around nap schedules, routines, and your climate.',
            style: CupertinoTheme.of(
              context,
            ).textTheme.textStyle.copyWith(fontSize: 15, color: textSecondary),
          ),
          const SizedBox(height: 16),
          CupertinoButton(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
            borderRadius: BorderRadius.circular(16),
            color: AppColors.primary,
            onPressed: () {},
            child: const Text(
              'Enable Adaptive Suggestions',
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
      padding: const EdgeInsets.symmetric(horizontal: 16),
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
          const SizedBox(height: 6),
          Text(
            section.description,
            style: CupertinoTheme.of(
              context,
            ).textTheme.textStyle.copyWith(
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
    final accent = AppColors.primary.withOpacity(0.12);

    return CupertinoListTile(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      leadingSize: 52,
      leading: Container(
        width: 44,
        height: 44,
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
          const SizedBox(height: 6),
          Text(
            tip.description,
            style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
              fontSize: 15,
              color: textSecondary,
              height: 1.3,
            ),
          ),
          if (tip.badges.isNotEmpty) ...[
            const SizedBox(height: 10),
            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: tip.badges
                  .map(
                    (badge) => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withOpacity(0.1),
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
