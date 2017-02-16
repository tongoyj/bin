define delete_security_group() do
  @security_group = find("security_groups", { "name": "biblestory" })
  delete(@security_group)
end
