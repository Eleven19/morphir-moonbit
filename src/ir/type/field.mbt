pub struct Field {
  name: @ir.Name
  field_type: Type
} derive(Eq, Show, ToJson, FromJson)

pub fn field(name : @ir.Name, field_type : Type) -> Field {
  { name, field_type }
}

test "field should serialize as expected" {
  let myField = field("myField", variable("MyType") )
  let field_json = myField.to_json()
  println(field_json)
  // @json.inspect(myField, content={
  //     "name": "myField",
  //     "field_type": { "kind": "Variable", "name": "MyType" },
  //   },
  // )
}