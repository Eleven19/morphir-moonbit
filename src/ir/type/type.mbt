pub(all) enum TypeAttributes {
  Custom(Json)
} derive(Eq, Show, ToJson, FromJson)

pub(all) enum Type {
  Variable(TypeAttributes?, @ir.Name)
  Reference(TypeAttributes?, @ir.FQName)
  Tuple(TypeAttributes?, Array[Type])
  Record(TypeAttributes?, Array[Field])
  ExtensibleRecord(TypeAttributes?, @ir.Name, Array[Field])
  Function(TypeAttributes?, Type, Type)
  Unit(TypeAttributes?)
} derive(Eq, Show, ToJson, FromJson)

pub fn custom_type_attributes(json: Json) -> TypeAttributes {
  Custom(json)
}

pub fn variable_with_attributes(
  name : @ir.Name,
  attributes? : TypeAttributes
) -> Type {
  Variable(attributes, name)
}

pub fn variable(name : @ir.Name) -> Type {
  variable(name)
}
