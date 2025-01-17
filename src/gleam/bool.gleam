import gleam/order.{Order}

/// A type with two possible values, True and False. Used to indicate whether
/// things are... true or false!
///
/// Often is it clearer and offers more type safety to define a custom type
/// than to use Bool. For example, rather than having a `is_teacher: Bool`
/// field consider having a `role: SchoolRole` field where SchoolRole is a custom
/// type that can be either Student or Teacher.
///
pub type Bool =
  Bool

/// Returns the opposite bool value.
///
/// This is the same as the `!` or `not` operators in some other languages.
///
/// ## Examples
///
///    > negate(True)
///    False
///
///    > negate(False)
///    True
///
pub fn negate(bool: Bool) -> Bool {
  case bool {
    True -> False
    False -> True
  }
}

/// Compares two bools and returns the first values Order to the second.
///
/// ## Examples
///
///    > import gleam/order
///    > compare(True, False)
///    order.Gt
///
pub fn compare(a: Bool, with b: Bool) -> Order {
  case a, b {
    True, True -> order.Eq
    True, False -> order.Gt
    False, False -> order.Eq
    False, True -> order.Lt
  }
}

/// Returns True if either bool value is True.
///
/// ## Examples
///
///    > max(True, False)
///    True
///
///    > max(False, True)
///    True
///
///    > max(False, False)
///    False
///
pub fn max(a: Bool, b: Bool) -> Bool {
  case a {
    True -> True
    False -> b
  }
}

/// Returns False if either bool value is False.
///
/// ## Examples
///
///    > max(True, False)
///    False
///
///    > max(False, True)
///    False
///
///    > max(False, False)
///    False
///
pub fn min(a: Bool, b: Bool) -> Bool {
  case a {
    False -> False
    True -> b
  }
}

/// Returns a numeric representation of the given bool.
///
/// ## Examples
///
///    > to_int(True)
///    1
///
///    > to_int(False)
///    0
///
pub fn to_int(bool: Bool) -> Int {
  case bool {
    False -> 0
    True -> 1
  }
}
