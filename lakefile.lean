import Lake
open Lake DSL

package «final» {
  -- add package configuration options here
}

lean_lib «Final» {
  -- add library configuration options here
}

@[default_target]
lean_exe «final» {
  root := `Main
}
