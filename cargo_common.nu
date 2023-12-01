def "nu-complete cargo targets" [type: string] {
  ^cargo metadata --format-version=1 --offline --no-deps | from json | get packages.targets | flatten | where ($type in $it.kind) | get name
}

export def "nu-complete cargo bins" [] { nu-complete cargo targets bin }

export def "nu-complete cargo examples" [] { nu-complete cargo targets example }

export def "nu-complete cargo tests" [] { nu-complete cargo targets test }

export def "nu-complete cargo benches" [] { nu-complete cargo targets bench }

export def "nu-complete cargo profiles" [] {
  open Cargo.toml | get profile | transpose | get column0
}

export def "nu-complete cargo triple" [] {
  rustup target list --installed | lines
}

export def "nu-complete cargo packages" [] {
  let metadata = (^cargo metadata --format-version=1 --offline --no-deps)
  if $metadata == '' {
    []
  } else {
    $metadata | from json | get workspace_members | split column ' ' | get column1
  }
}
