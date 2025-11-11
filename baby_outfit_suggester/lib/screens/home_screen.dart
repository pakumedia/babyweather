import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show Colors;

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
    _ContextOption('Sleep', CupertinoIcons.moon_fill),
  ];

  static const _outfitItems = [
    _OutfitItem(
      title: 'Organic Cotton Bodysuit',
      subtitle: 'Long-sleeve · Size 6-9M',
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuAJXFeHlVZWIo_dadYjWO10rncOAJBNg4A9uzYeSuUbObgXMGI1c_Cl8Kt5ycHLwyyzuuLMhMBUgNwWvAJFdC3Xsnl64BaiMoCI2BvD3Vi0gsOs6qrBhZMtMzgvQNcy7fHAkqlY2C-jVMXYMXCwU7TIblJWa0kymALlOK0fhAhehP_eOlLDiLfj92SyPdedy9jFvMO_XlSOha1hsoCtDpgwVu2Rs-oz-R8QS6owlkT2KwBZhf8OaS5Jt61gq2wpZkgVyXfLKmoSDWI',
    ),
    _OutfitItem(
      title: 'Soft Cotton Pants',
      subtitle: 'Elastic waist · Size 6-9M',
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuBtU0MnO-95-Q7dUCTwpvxj-kLRNAXVwD9zUnFvnMhpYZLdBCuxrdz3l_7pWUdsX-jmN8jx3eIe0732rmcTaL3xhe-DkkQdQkqZeXctq4ciTuPM0H_Tx3eaFHWPg3UD4K8MX5F4UEIy-hCC4tPCGKTmMaurJqlUhvkp93_g5T7MdDuicNp_KDW-7n-FKTXe9OSHxa4O08GeJSWi3cJkRBx3JUUsJodt-IrTBn228meixGtUeXtRHvBhcXltl5SYfwAM8A7R0RbUoH4',
    ),
    _OutfitItem(
      title: 'Warm Wool Socks',
      subtitle: 'Non-slip · Size 0-6M',
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuBJxXuCFa-ek0sC2ehizUEIIrxUkBOFMyLVgwjo4Cq4ZibfhsRISUuZgcGmsMXlLZOPG5kCGxq8boKFEhQZQZ6ZxyjNTkLernOiFK-q_faG5WcchlZTvKxTGcDnocLwHNHhgpdsMnocb5TFKH-xEvbOODG1QIfeGxE5U7HX79yWmkd3K-21Ji_sjxTcUgaCVfRRBc8Rj2KFyYgCCSsZ9SjL2fH4U_qnCcRC9Eqv81ejfkupG6GejR5ppMGKoCN1DA3e5aK84iSjqpQ',
    ),
    _OutfitItem(
      title: 'Knit Beanie',
      subtitle: 'Breathable · One size',
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuBk2dzzLqXAin15c6LgzK7PwupHIuK0JQaEBze1Hz_qUk1WA16v_f5nHx7EDsChLPyHm-cXHZz522uCHmm81w0w4NkaBJUvXfkfzUsIu5eIQ3_tYvf_Z4JL2ynmpZ1eTlaeMS6XG1CPXPnZ_5MDQFPvJCzzMvT2H23yFGGaHWVAeRp0AIZPlWEEysyBI7P_xhvPN8S_HOKQqz7-U0EUO1RD3NhDdw0NWMmTfCcxdTSaHRIM1Tr-_TCqiEpCG0nSL4Wj0qB3kU3KkF0',
    ),
    _OutfitItem(
      title: 'Lightweight Cardigan',
      subtitle: 'Zip-up · Size 6-9M',
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuAJXFeHlVZWIo_dadYjWO10rncOAJBNg4A9uzYeSuUbObgXMGI1c_Cl8Kt5ycHLwyyzuuLMhMBUgNwWvAJFdC3Xsnl64BaiMoCI2BvD3Vi0gsOs6qrBhZMtMzgvQNcy7fHAkqlY2C-jVMXYMXCwU7TIblJWa0kymALlOK0fhAhehP_eOlLDiLfj92SyPdedy9jFvMO_XlSOha1hsoCtDpgwVu2Rs-oz-R8QS6owlkT2KwBZhf8OaS5Jt61gq2wpZkgVyXfLKmoSDWI',
    ),
    _OutfitItem(
      title: 'Soft Booties',
      subtitle: 'Indoor/outdoor · Size 0-6M',
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuBJxXuCFa-ek0sC2ehizUEIIrxUkBOFMyLVgwjo4Cq4ZibfhsRISUuZgcGmsMXlLZOPG5kCGxq8boKFEhQZQZ6ZxyjNTkLernOiFK-q_faG5WcchlZTvKxTGcDnocLwHNHhgpdsMnocb5TFKH-xEvbOODG1QIfeGxE5U7HX79yWmkd3K-21Ji_sjxTcUgaCVfRRBc8Rj2KFyYgCCSsZ9SjL2fH4U_qnCcRC9Eqv81ejfkupG6GejR5ppMGKoCN1DA3e5aK84iSjqpQ',
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
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: AppSpacing.md),
              child: _buildWeatherCard(context),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: AppSpacing.lg,
                bottom: AppSpacing.sm,
              ),
              child: _buildSectionHeader(context, 'Choose a context'),
            ),
          ),
          SliverToBoxAdapter(child: _buildContextChips(context)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: AppSpacing.lg,
                bottom: AppSpacing.sm,
              ),
              child: _buildSectionHeader(context, 'Today\'s Suggested Outfit'),
            ),
          ),
          _buildOutfitGrid(context),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: AppSpacing.md),
              child: _buildFeedbackSection(context),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: AppSpacing.md),
              child: _buildQuickStats(context),
            ),
          ),
          const SliverPadding(padding: EdgeInsets.only(bottom: AppSpacing.xl)),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  CupertinoIcons.location_solid,
                  size: 14,
                  color: textSecondary,
                ),
                const SizedBox(width: AppSpacing.xs),
                Text(
                  'San Francisco, CA',
                  style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: textSecondary,
                      ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.sm,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.accentGreen.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Perfect for baby',
                    style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.accentGreen,
                        ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.md),
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
                              fontSize: 56,
                              height: 1.0,
                              fontWeight: FontWeight.w300,
                              color: textPrimary,
                            ),
                      ),
                      const SizedBox(height: AppSpacing.xs),
                      Text(
                        'Sunny',
                        style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              color: textPrimary,
                            ),
                      ),
                      const SizedBox(height: AppSpacing.xs),
                      Text(
                        'High 75° · Low 60°',
                        style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                              fontSize: 15,
                              color: textSecondary,
                            ),
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      Row(
                        children: [
                          _buildWeatherDetail(
                            context,
                            CupertinoIcons.wind,
                            'Light breeze',
                            textSecondary,
                          ),
                          const SizedBox(width: AppSpacing.md),
                          _buildWeatherDetail(
                            context,
                            CupertinoIcons.drop_fill,
                            '45% humidity',
                            textSecondary,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
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
          ],
        ),
      ),
    );
  }

  Widget _buildWeatherDetail(
    BuildContext context,
    IconData icon,
    String text,
    Color color,
  ) {
    return Row(
      children: [
        Icon(icon, size: 14, color: color),
        const SizedBox(width: 4),
        Text(
          text,
          style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                fontSize: 13,
                color: color,
              ),
        ),
      ],
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    final textPrimary = CupertinoDynamicColor.resolve(
      AppColors.textPrimary,
      context,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
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
    final cardColor = CupertinoDynamicColor.resolve(AppColors.card, context);

    return SizedBox(
      height: 56,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.sm,
        ),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (_, __) => const SizedBox(width: AppSpacing.sm),
        itemBuilder: (context, index) {
          final option = _contextOptions[index];
          final isSelected = index == _selectedContextIndex;
          return GestureDetector(
            onTap: () => setState(() => _selectedContextIndex = index),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOutCubic,
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.md,
                vertical: AppSpacing.sm,
              ),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : cardColor,
                borderRadius: BorderRadius.circular(28),
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
                  const SizedBox(width: AppSpacing.sm),
                  Text(
                    option.label,
                    style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: isSelected ? CupertinoColors.white : textPrimary,
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
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
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
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: shadowColor,
                          blurRadius: 12,
                          offset: const Offset(0, 2),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        item.imageUrl,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: AppColors.primary.withOpacity(0.1),
                            child: Icon(
                              CupertinoIcons.photo,
                              color: AppColors.primary,
                              size: 32,
                            ),
                          );
                        },
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Container(
                            color: AppColors.primary.withOpacity(0.05),
                            child: const Center(
                              child: CupertinoActivityIndicator(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  item.title,
                  style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: textPrimary,
                      ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  item.subtitle,
                  style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                        fontSize: 13,
                        color: textSecondary,
                      ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          );
        }, childCount: _outfitItems.length),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: AppSpacing.md,
          mainAxisSpacing: AppSpacing.md,
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

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.lg),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: CupertinoDynamicColor.resolve(
                AppColors.subtleShadow,
                context,
              ),
              blurRadius: 12,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'How does this feel?',
              style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: textPrimary,
                  ),
            ),
            const SizedBox(height: AppSpacing.md),
            Container(
              decoration: BoxDecoration(
                color: CupertinoDynamicColor.resolve(
                  AppColors.separator,
                  context,
                ).withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(4),
              child: CupertinoSlidingSegmentedControl<ComfortPreference>(
                backgroundColor: Colors.transparent,
                thumbColor: AppColors.primary,
                groupValue: _comfortPreference,
                padding: const EdgeInsets.all(2),
                children: {
                  for (final option in ComfortPreference.values)
                    option: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 12,
                      ),
                      child: Text(
                        option.label,
                        style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                              fontSize: 15,
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
            const SizedBox(height: AppSpacing.sm),
            Text(
              _comfortPreference.description,
              style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                    fontSize: 15,
                    color: textSecondary,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickStats(BuildContext context) {
    final cardColor = CupertinoDynamicColor.resolve(AppColors.card, context);
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
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.lg),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: CupertinoDynamicColor.resolve(
                AppColors.subtleShadow,
                context,
              ),
              blurRadius: 12,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'This Week',
              style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: textPrimary,
                  ),
            ),
            const SizedBox(height: AppSpacing.md),
            Row(
              children: [
                Expanded(
                  child: _buildStatItem(
                    context,
                    'Outfits',
                    '12',
                    CupertinoIcons.square_grid_2x2,
                    textPrimary,
                    textSecondary,
                  ),
                ),
                Container(
                  width: 1,
                  height: 40,
                  color: CupertinoDynamicColor.resolve(
                    AppColors.separator,
                    context,
                  ),
                ),
                Expanded(
                  child: _buildStatItem(
                    context,
                    'Feedback',
                    '8',
                    CupertinoIcons.hand_thumbsup,
                    textPrimary,
                    textSecondary,
                  ),
                ),
                Container(
                  width: 1,
                  height: 40,
                  color: CupertinoDynamicColor.resolve(
                    AppColors.separator,
                    context,
                  ),
                ),
                Expanded(
                  child: _buildStatItem(
                    context,
                    'Perfect',
                    '92%',
                    CupertinoIcons.star_fill,
                    textPrimary,
                    textSecondary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(
    BuildContext context,
    String label,
    String value,
    IconData icon,
    Color textPrimary,
    Color textSecondary,
  ) {
    return Column(
      children: [
        Icon(icon, color: AppColors.primary, size: 20),
        const SizedBox(height: AppSpacing.xs),
        Text(
          value,
          style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: textPrimary,
              ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                fontSize: 12,
                color: textSecondary,
              ),
        ),
      ],
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
  });

  final String title;
  final String subtitle;
  final String imageUrl;
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
          size: 24,
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
        return 'We\'ll add a cozy layer next time.';
      case ComfortPreference.neutral:
        return 'Great! We\'ll keep similar outfits coming.';
      case ComfortPreference.warmer:
        return 'We\'ll suggest lighter layers tomorrow.';
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