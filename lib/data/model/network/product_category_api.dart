import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:neobis_challenge/core/dio_settings.dart';
import 'package:neobis_challenge/data/model/productCategoryItems.dart';
import 'package:neobis_challenge/data/model/productCategoryModel.dart';
import 'package:neobis_challenge/data/model/productCategoryMotelItem.dart';

class GetProductRepo {
  Future<List<ProductCategoryMotelItem>> getProductCategory() async {
    try {
      final Dio dio = DioSettings().dio;
      final Response response = await dio
          .get("https://neobook.online/ecobak/product-category-list/?json");
      if (response.statusCode == 200) {
        final List<ProductCategoryModel> modelList = (response.data as List)
            .map((json) => ProductCategoryModel.fromJson(json))
            .toList();
        ProductCategoryItems.items = modelList
            .map((model) => ProductCategoryMotelItem(
                  id: model.id ?? 0,
                  name: model.name ?? "error name",
                  image: model.image ?? "error image",
                ))
            .toList();
        return ProductCategoryItems.items;
      } else {
        throw DioException(
            requestOptions: RequestOptions(),
            response: response,
            error: "Не удалось загрузить категорию продуктов");
      }
    } catch (e) {
      debugPrint(e.toString());
      throw e;
    }
  }
}
