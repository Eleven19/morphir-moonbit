fn main {
  println(@lib.hello())
  let field_name = @ir.Name("myField")
  let variable_name = @ir.Name("MyType")
  println("\{field_name}: \{variable_name}")
  //println("var: \{variable_name.to_json().to_string()}")
  let var_type = @type.variable(variable_name)
  println("var \{var_type}")
  let myField = @type.field(field_name, var_type)
  println(myField)
  let field_json = myField.to_json()
  println(field_json.stringify())
}
