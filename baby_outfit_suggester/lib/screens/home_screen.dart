import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

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
    _ContextOption('Play', CupertinoIcons.game_controller_solid),
  ];

  static const _outfitItems = [
    _OutfitItem(
      title: 'Organic Cotton Bodysuit',
      subtitle: 'Long-sleeve · Size 6M',
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuAJXFeHlVZWIo_dadYjWO10rncOAJBNg4A9uzYeSuUbObgXMGI1c_Cl8Kt5ycHLwyyzuuLMhMBUgNwWvAJFdC3Xsnl64BaiMoCI2BvD3Vi0gsOs6qrBhZMtMzgvQNcy7fHAkqlY2C-jVMXYMXCwU7TIblJWa0kymALlOK0fhAhehP_eOlLDiLfj92SyPdedy9jFvMO_XlSOha1hsoCtDpgwVu2Rs-oz-R8QS6owlkT2KwBZhf8OaS5Jt61gq2wpZkgVyXfLKmoSDWI',
    ),
    _OutfitItem(
      title: 'Soft Cotton Pants',
      subtitle: 'Elastic waist · Size 6M',
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuBtU0MnO-95-Q7dUCTwpvxj-kLRNAXVwD9zUnFvnMhpYZLdBCuxrdz3l_7pWUdsX-jmN8jx3eIe0732rmcTaL3xhe-DkkQdQkqZeXctq4ciTuPM0H_Tx3eaFHWPg3UD4K8MX5F4UEIy-hCC4tPCGKTmMaurJqlUhvkp93_g5T7MdDuicNp_KDW-7n-FKTXe9OSHxa4O08GeJSWi3cJkRBx3JUUsJodt-IrTBn228meixGtUeXtRHvBhcXltl5SYfwAM8A7R0RbUoH4',
    ),
    _OutfitItem(
      title: 'Warm Socks',
      subtitle: 'Non-slip · 3 pairs',
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
      subtitle: 'Zip-up · Size 6M',
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuAJXFeHlVZWIo_dadYjWO10rncOAJBNg4A9uzYeSuUbObgXMGI1c_Cl8Kt5ycHLwyyzuuLMhMBUgNwWvAJFdC3Xsnl64BaiMoCI2BvD3Vi0gsOs6qrBhZMtMzgvQNcy7fHAkqlY2C-jVMXYMXCwU7TIblJWa0kymALlOK0fhAhehP_eOlLDiLfj92SyPdedy9jFvMO_XlSOha1hsoCtDpgwVu2Rs-oz-R8QS6owlkT2KwBZhf8OaS5Jt61gq2wpZkgVyXfLKmoSDWI',
    ),
    _OutfitItem(
      title: 'Comfortable Onesie',
      subtitle: 'Snap closure · Size 6M',
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuBtU0MnO-95-Q7dUCTwpvxj-kLRNAXVwD9zUnFvnMhpYZLdBCuxrdz3l_7pWUdsX-jmN8jx3eIe0732rmcTaL3xhe-DkkQdQkqZeXctq4ciTuPM0H_Tx3eaFHWPg3UD4K8MX5F4UEIy-hCC4tPCGKTmMaurJqlUhvkp93_g5T7MdDuicNp_KDW-7n-FKTXe9OSHxa4O08GeJSWi3cJkRBx3JUUsJodt-IrTBn228meixGtUeXtRHvBhcXltl5SYfwAM8A7R0RbUoH4',
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
          SliverToBoxAdapter(child: _buildWeatherCard(context)),
          SliverToBoxAdapter(
            child: _buildSectionHeader(context, 'Choose a context'),
          ),
          SliverToBoxAdapter(child: _buildContextChips(context)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: _buildSectionHeader(context, 'Today’s Suggested Outfit'),
            ),
          ),
          _buildOutfitGrid(context),
          SliverToBoxAdapter(child: _buildFeedbackSection(context)),
          const SliverPadding(padding: EdgeInsets.only(bottom: 24)),
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
                  'Updated 2 min ago',
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
                      const SizedBox(height: 4),
                      Text(
                        'Sunny',
                        style: CupertinoTheme.of(context).textTheme.textStyle
                            .copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: textPrimary,
                            ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'H: 75°',
                            style: CupertinoTheme.of(context).textTheme.textStyle
                                .copyWith(fontSize: 15, color: textSecondary),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            'L: 60°',
                            style: CupertinoTheme.of(context).textTheme.textStyle
                                .copyWith(fontSize: 15, color: textSecondary),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.primary.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          'Perfect for light layers',
                          style: CupertinoTheme.of(context).textTheme.textStyle
                              .copyWith(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primary,
                              ),
                        ),
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
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
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
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          final option = _contextOptions[index];
          final isSelected = index == _selectedContextIndex;
          return GestureDetector(
            onTap: () {
              HapticFeedback.selectionClick();
              setState(() => _selectedContextIndex = index);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOutCubic,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : cardColor,
                borderRadius: BorderRadius.circular(18),
                boxShadow: isSelected
                    ? [
                        BoxShadow(
                          color: AppColors.primary.withOpacity(0.3),
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                          spreadRadius: 0,
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
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate((context, index) {
          final item = _outfitItems[index];
          return GestureDetector(
            onTap: () {
              HapticFeedback.lightImpact();
            },
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
                            color: cardColor,
                            child: const Center(
                              child: CupertinoActivityIndicator(),
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
                const SizedBox(height: 2),
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
          mainAxisSpacing: 16,
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
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
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
        child: Column(
          children: [
            Text(
              'How does this feel?',
              style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w700,
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
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(4),
              child: CupertinoSlidingSegmentedControl<ComfortPreference>(
                backgroundColor: CupertinoColors.transparent,
                thumbColor: AppColors.primary,
                groupValue: _comfortPreference,
                padding: const EdgeInsets.all(2),
                children: {
                  for (final option in ComfortPreference.values)
                    option: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 8,
                      ),
                      child: Text(
                        option.label,
                        style: CupertinoTheme.of(context).textTheme.textStyle
                            .copyWith(
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
                    HapticFeedback.selectionClick();
                    setState(() => _comfortPreference = value);
                  }
                },
              ),
            ),
            const SizedBox(height: 12),
            Text(
              _comfortPreference.description,
              textAlign: TextAlign.center,
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
        width: 34,
        height: 34,
        decoration: BoxDecoration(
          color: AppColors.primary.withOpacity(0.12),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Icon(
          CupertinoIcons.person_crop_circle,
          color: AppColors.primary,
          size: 26,
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
        return 'We’ll add a cozy layer next time.';
      case ComfortPreference.neutral:
        return 'Great! We’ll keep similar outfits coming.';
      case ComfortPreference.warmer:
        return 'We’ll suggest lighter layers tomorrow.';
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
