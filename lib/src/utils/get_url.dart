Uri getUrl(Uri baseUrl, String path, [Map<String, String>? params]) {
  return Uri(
    scheme: baseUrl.scheme,
    host: baseUrl.host,
    port: baseUrl.port,
    path: baseUrl.path + path,
    queryParameters: params,
  );
}
