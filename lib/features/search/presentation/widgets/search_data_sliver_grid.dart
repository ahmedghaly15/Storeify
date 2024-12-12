import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/custom_cached_network_image.dart';
import 'package:store_ify/features/search/data/models/fetch_search_data_response.dart';
import 'package:store_ify/features/search/presentation/cubit/search_cubit.dart';

class SearchDataSliverGrid extends StatelessWidget {
  const SearchDataSliverGrid({
    super.key,
    required this.searchData,
  });

  final List<SearchDataItem> searchData;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 12.h,
      ),
      sliver: SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 55.w,
          mainAxisSpacing: 16.h,
          childAspectRatio: 54 / 15,
        ),
        itemCount: searchData.length,
        itemBuilder: (_, index) => SizedBox.expand(
          child: TextButton.icon(
            style: TextButton.styleFrom(
              alignment: AlignmentDirectional.centerStart,
            ),
            onPressed: () {
              context
                  .read<SearchCubit>()
                  .changeSearchText(searchData[index].name);
              context.read<SearchCubit>().search();
            },
            label: Text(
              searchData[index].name,
              style: AppTextStyles.textStyle12Medium,
            ),
            icon: CustomCachedNetworkImage(
              imageUrl: searchData[index].img,
              imageBuilder: (_, img) => CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: img,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
