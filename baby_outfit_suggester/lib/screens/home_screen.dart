import 'package:flutter/cupertino.dart';

import '../theme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const _contextOptions = [
    _ContextOption('Home', CupertinoIcons.house_fill),
    _ContextOption('Stroller', CupertinoIcons.car_detailed),
    _ContextOption('Outdoors', CupertinoIcons.sun_max_fill),
    _ContextOption('Car Seat', CupertinoIcons.person_2_square_stack),
    _ContextOption('Sleep', CupertinoIcons.moon_stars_fill),
  ];

  static const _outfitItems = [
    _OutfitItem(
      title: 'Organic Cotton Bodysuit',
      subtitle: 'Long-sleeve · Size 6-9M',
      imageUrl:
          'https://images.unsplash.com/photo-1602810318383-e386cc2a3ccf?w=400&h=400&fit=crop',
      color: 'Cream',
    ),
    _OutfitItem(
      title: 'Soft Cotton Pants',
      subtitle: 'Elastic waist · Size 6-9M',
      imageUrl:
          'https://images.unsplash.com/photo-1602810318383-e386cc2a3ccf?w=400&h=400&fit=crop',
      color: 'Beige',
    ),
    _OutfitItem(
      title: 'Warm Wool Socks',
      subtitle: 'Ankle length · Size 0-6M',
      imageUrl:
          'https://images.unsplash.com/photo-1602810318383-e386cc2a3ccf?w=400&h=400&fit=crop',
      color: 'White',
    ),
    _OutfitItem(
      title: 'Knit Beanie',
      subtitle: 'One size · Soft knit',
      imageUrl:
          'https://images.unsplash.com/photo-1602810318383-e386cc2a3ccf?w=400&h=400&fit=crop',
      color: 'Gray',
    ),
  ];

  int _selectedContextIndex = 0;
  ComfortPreference _comfortPreference = ComfortPreference.neutral;

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
            largeTitle: Text('Today'),
            trailing: _ProfileButton(),
            border: null,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: _buildWeatherCard(context),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 8),
              child: _buildSectionHeader(context, 'Choose a context'),
            ),
          ),
          SliverToBoxAdapter(child: _buildContextChips(context)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 8),
              child: _buildSectionHeader(context, 'Today's Suggested Outfit'),
            ),
          ),
          _buildOutfitGrid(context),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: _buildFeedbackSection(context),
            ),
          ),
          const SliverPadding(padding: EdgeInsets.only(bottom: 32)),
        ],
      ),
    );
  }

  Widget _buildWeatherCard(BuildContext context) {
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
      padding: const EdgeInsets.symmetric(horizontal: 16),
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
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'San Francisco, CA',
                  style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: textSecondary,
                      ),
                ),
                Text(
                  'Updated 5 min ago',
                  style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                        fontSize: 13,
                        color: textSecondary,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '72°',
                        style: CupertinoTheme.of(context)
                            .textTheme
                            .navLargeTitleTextStyle
                            .copyWith(
                              fontSize: 64,
                              height: 1,
                              fontWeight: FontWeight.w300,
                              color: textPrimary,
                            ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Sunny',
                        style: CupertinoTheme.of(context).textTheme.textStyle
                            .copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: textPrimary,
                            ),
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          Text(
                            'H: 75°',
                            style: CupertinoTheme.of(context)
                                .textTheme
                                .textStyle
                                .copyWith(fontSize: 15, color: textSecondary),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            'L: 60°',
                            style: CupertinoTheme.of(context)
                                .textTheme
                                .textStyle
                                .copyWith(fontSize: 15, color: textSecondary),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(
                    CupertinoIcons.sun_max_fill,
                    color: AppColors.primary,
                    size: 44,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: AppColors.accentGreen.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    CupertinoIcons.check_mark_circled_solid,
                    color: AppColors.accentGreen,
                    size: 16,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    'Perfect weather for outdoor activities',
                    style: CupertinoTheme.of(context).textTheme.textStyle
                        .copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: AppColors.accentGreen,
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

  Widget _buildSectionHeader(BuildContext context, String title) {
    final textPrimary = CupertinoDynamicColor.resolve(
      AppColors.textPrimary,
      context,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        title,
        style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.5,
              color: textPrimary,
            ),
      ),
    );
  }

  Widget _buildContextChips(BuildContext context) {
    final textPrimary = CupertinoDynamicColor.resolve(
      AppColors.textPrimary,
      context,
    );
    final textSecondary = CupertinoDynamicColor.resolve(
      AppColors.textSecondary,
      context,
    );
    final cardColor = CupertinoDynamicColor.resolve(AppColors.card, context);

    return SizedBox(
      height: 64,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          final option = _contextOptions[index];
          final isSelected = index == _selectedContextIndex;
          return GestureDetector(
            onTap: () => setState(() => _selectedContextIndex = index),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOutCubic,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : cardColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: isSelected
                    ? [
                        BoxShadow(
                          color: AppColors.primary.withOpacity(0.3),
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                        ),
                      ]
                    : null,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    option.icon,
                    color: isSelected ? CupertinoColors.white : textPrimary,
                    size: 18,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    option.label,
                    style: CupertinoTheme.of(context).textTheme.textStyle
                        .copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: isSelected
                              ? CupertinoColors.white
                              : textPrimary,
                        ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: _contextOptions.length,
      ),
    );
  }

  SliverPadding _buildOutfitGrid(BuildContext context) {
    final textPrimary = CupertinoDynamicColor.resolve(
      AppColors.textPrimary,
      context,
    );
    final textSecondary = CupertinoDynamicColor.resolve(
      AppColors.textSecondary,
      context,
    );
    final cardColor = CupertinoDynamicColor.resolve(AppColors.card, context);
    final shadowColor = CupertinoDynamicColor.resolve(
      AppColors.subtleShadow,
      context,
    );

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate((context, index) {
          final item = _outfitItems[index];
          return GestureDetector(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: shadowColor,
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Image.network(
                        item.imageUrl,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: AppColors.primary.withOpacity(0.1),
                            child: Icon(
                              CupertinoIcons.photo,
                              color: AppColors.primary.withOpacity(0.3),
                              size: 40,
                            ),
                          );
                        },
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Container(
                            color: cardColor,
                            child: Center(
                              child: CupertinoActivityIndicator(
                                color: AppColors.primary,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  item.title,
                  style: CupertinoTheme.of(context).textTheme.textStyle
                      .copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: textPrimary,
                      ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  item.subtitle,
                  style: CupertinoTheme.of(context).textTheme.textStyle
                      .copyWith(fontSize: 13, color: textSecondary),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          );
        }, childCount: _outfitItems.length),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.82,
        ),
      ),
    );
  }

  Widget _buildFeedbackSection(BuildContext context) {
    final textPrimary = CupertinoDynamicColor.resolve(
      AppColors.textPrimary,
      context,
    );
    final textSecondary = CupertinoDynamicColor.resolve(
      AppColors.textSecondary,
      context,
    );
    final cardColor = CupertinoDynamicColor.resolve(AppColors.card, context);
    final shadowColor = CupertinoDynamicColor.resolve(
      AppColors.subtleShadow,
      context,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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
            ),
          ],
        ),
        child: Column(
          children: [
            Text(
              'How does this feel?',
              style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: textPrimary,
                  ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: CupertinoDynamicColor.resolve(
                  AppColors.separator,
                  context,
                ).withOpacity(0.1),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(4),
              child: CupertinoSlidingSegmentedControl<ComfortPreference>(
                backgroundColor: CupertinoColors.transparent,
                thumbColor: AppColors.primary,
                groupValue: _comfortPreference,
                padding: const EdgeInsets.all(4),
                children: {
                  for (final option in ComfortPreference.values)
                    option: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 12,
                      ),
                      child: Text(
                        option.label,
                        style: CupertinoTheme.of(context).textTheme.textStyle
                            .copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: option == _comfortPreference
                                  ? CupertinoColors.white
                                  : textSecondary,
                            ),
                      ),
                    ),
                },
                onValueChanged: (value) {
                  if (value != null) {
                    setState(() => _comfortPreference = value);
                  }
                },
              ),
            ),
            const SizedBox(height: 12),
            Text(
              _comfortPreference.description,
              textAlign: TextAlign.center,
              style: CupertinoTheme.of(context).textTheme.textStyle
                  .copyWith(fontSize: 14, color: textSecondary),
            ),
          ],
        ),
      ),
    );
  }
}

class _ContextOption {
  const _ContextOption(this.label, this.icon);

  final String label;
  final IconData icon;
}

class _OutfitItem {
  const _OutfitItem({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.color,
  });

  final String title;
  final String subtitle;
  final String imageUrl;
  final String color;
}

class _ProfileButton extends StatelessWidget {
  const _ProfileButton();

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {},
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: AppColors.primary.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          CupertinoIcons.person_crop_circle,
          color: AppColors.primary,
          size: 22,
        ),
      ),
    );
  }
}

enum ComfortPreference { cooler, neutral, warmer }

extension on ComfortPreference {
  String get description {
    switch (this) {
      case ComfortPreference.cooler:
        return 'We'll add a cozy layer next time.';
      case ComfortPreference.neutral:
        return 'Great! We'll keep similar outfits coming.';
      case ComfortPreference.warmer:
        return 'We'll suggest lighter layers tomorrow.';
    }
  }

  String get label {
    switch (this) {
      case ComfortPreference.cooler:
        return 'Too Cold';
      case ComfortPreference.neutral:
        return 'Just Right';
      case ComfortPreference.warmer:
        return 'Too Warm';
    }
  }
}
