class QuerryParam {
  const QuerryParam._();

  static Map<String, String> apiQuerry(
          {required String apiKey, required String country}) =>
      {
        'country': country,
        'apiKey': apiKey,
      };
}
