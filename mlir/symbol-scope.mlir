module @public_module {
  // This function can be accessed by 'live.user', but cannot be referenced
  // externally; all uses are known to reside within parent regions.
  func.func nested @nested_function()

  // This function cannot be accessed outside of 'public_module'.
  func.func private @private_function()
}

// This function can only be accessed from within the top-level module.
func.func private @private_function()

// This function may be referenced externally.
func.func @public_function()

"live.user"() {uses = [
  @public_module::@nested_function,
  @private_function,
  @public_function
]} : () -> ()
