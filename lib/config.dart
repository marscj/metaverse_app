class Environments {
  static const String PRODUCTION = 'prod';
  static const String DEV = 'dev';
  static const String LOCAL = 'local';
}

class ConfigEnvironments {
  static const String _currentEnvironments = Environments.DEV;

  static final List<Map<String, String>> _availableEnvironments = [
    {
      'env': Environments.LOCAL,
      'url': 'http://141.193.158.154:8601/api',
    },
    {
      'env': Environments.DEV,
      'url': 'https://jsonplaceholder.typicode.com',
    },
    {
      'env': Environments.PRODUCTION,
      'url': 'https://api.globalstudioses.com/api',
    },
  ];

  static Map<String, String> getEnvironments() {
    return _availableEnvironments.firstWhere(
      (d) => d['env'] == _currentEnvironments,
    );
  }
}
