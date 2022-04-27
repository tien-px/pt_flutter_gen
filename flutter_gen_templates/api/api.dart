import 'package:pt_flutter_architecture/pt_api_service.dart';
import 'package:pt_flutter_object_mapper/pt_flutter_object_mapper.dart';

import '../api_input.dart';
import '../api_output.dart';
import '../api_services.dart';
import '../api_urls.dart';

extension {{ name }}API on API {
  Future<{{ name }}Output> get{{ name }}({{ name }}Input input) {
    return requestFuture(input);
  }
}

class {{ name }}Input extends APIInput {
  {{ name }}Input({
    required String something,
  }) : super(APIUrls.endpoint,
            params: {
              "something": something,
            },
            httpMethod: HttpMethod.get);
}

class {{ name }}Output extends APIOutput {
  String something = "";

  @override
  void mapping(Mapper map) {
    super.mapping(map);
    map("something", something, (v) => something = v);
  }
}
