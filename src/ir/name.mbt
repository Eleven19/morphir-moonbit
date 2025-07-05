pub(all) type Name String derive(Eq, Show)

///|
fn[T] decode_error(path : @json.JsonPath, msg : String) -> T raise @json.JsonDecodeError {
  raise @json.JsonDecodeError((path, msg))
}

pub impl ToJson for Name with to_json(self) {
  let Name(str) = self
  Json::string(str)
}

pub impl @json.FromJson for Name with from_json(json,path) {
  guard json is String(name) else {
    decode_error(path, "Name::from_json: expected string")
  }
  Name(name)
}