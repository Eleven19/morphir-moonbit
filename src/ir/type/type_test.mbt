test "can_create_variable_with_attributes" {
  let attrs = custom_type_attributes(@json.parse("{\"key\": \"value\"}"))
  let typeWithAttrs = variable_with_attributes("foo", attributes=attrs)

  assert_eq(typeWithAttrs, Variable(Some(Custom(@json.parse("{\"key\": \"value\"}"))), "foo"))
}