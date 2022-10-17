import 'package:first/202/service/comment_model.dart';
import "package:first/202/service/post_model.dart";
import 'package:dio/dio.dart';
import "dart:io";
import "post_model.dart";

abstract class IPostService {
  Future<bool> addItemToService(PostModel postModel);
  Future<bool> putItemToService(PostModel postModel, int id);
  Future<bool> deleteItemFromService(int id);
  Future<List<PostModel>?> fetchPostItemsAdvanced();
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postId);
}

class PostService implements IPostService {
  late final Dio _dio;

  PostService()
      : _dio =
            Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));

  @override
  Future<bool> addItemToService(PostModel postModel) async {
    final response =
        await _dio.post(_PostServicePaths.posts.name, data: postModel);

    return response.statusCode == HttpStatus.created;
  }

  @override
  Future<List<PostModel>?> fetchPostItemsAdvanced() async {
    final response = await _dio.get(_PostServicePaths.posts.name);

    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;

      if (_datas is List) {
        return _datas.map((e) => PostModel.fromJson(e)).toList();
      } else {
        return null;
      }
    }
    return null;
  }

  @override
  Future<bool> putItemToService(PostModel postModel, int id) async {
    final response =
        await _dio.put("${_PostServicePaths.posts.name}/$id", data: postModel);

    return response.statusCode == HttpStatus.ok;
  }

  @override
  Future<bool> deleteItemFromService(int id) async {
    final response = await _dio.put("${_PostServicePaths.posts.name}/$id");

    return response.statusCode == HttpStatus.ok;
  }

  @override
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postId) async {
    final response = await _dio.get(_PostServicePaths.comments.name,
        queryParameters: {_PostQueryPaths.postId.name: postId});

    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;

      if (_datas is List) {
        return _datas.map((e) => CommentModel.fromJson(e)).toList();
      } else {
        return null;
      }
    }
    return null;
  }
}

enum _PostServicePaths { posts, comments }

enum _PostQueryPaths { postId }
