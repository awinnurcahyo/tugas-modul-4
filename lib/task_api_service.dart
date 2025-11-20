import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'task_api_model.dart';

part 'task_api_service.g.dart';

@RestApi(baseUrl: 'https://example.com/api/')
abstract class TaskApiService {
  factory TaskApiService(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _TaskApiService;

  // ========================
  // CRUD ENDPOINTS
  // ========================

  @POST('/tasks')
  Future<TaskDto> createTask(@Body() TaskDto task);

  @GET('/tasks')
  Future<List<TaskDto>> getTasks();

  @GET('/tasks/{id}')
  Future<TaskDto> getTaskById(@Path('id') int id);

  @PUT('/tasks/{id}')
  Future<TaskDto> updateTask(@Path('id') int id, @Body() TaskDto task);

  @DELETE('/tasks/{id}')
  Future<void> deleteTask(@Path('id') int id);
}
