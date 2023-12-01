use ./cargo_common.nu *
def "when" [] {
  ["auto", "always", "never", "Auto", "Always", "Never"]
}

def "types" [] {
  ["Tests", "Doctests", "Benchmarks", "Examples", "Lib", "Bins", "AllTargets"]
}

def "output format" [] {
  ["Json", "Stdout", "Xml", "Html", "Lcov"]
}

def "engine" [] {
  ["Auto", "Ptrace", "Llvm"]
}

def "command" [] {
  ["Test", "Build"]
}


# 查看代码覆盖率
export extern "cargo tarpaulin" [
  --print-rust-flags
  --print-rustdoc-flags
  --color: string@"when"
  --debug
  --verbose(-v)
  --dump-traces
  --run-types: string@"types"
  --benches
  --doc
  --all-targets
  --lib
  --bins
  --examples
  --tests
  --config: string
  --ignore-config
  --bin: string@"nu-complete cargo bins"
  --example: string@"nu-complete cargo examples"
  --test: string@"nu-complete cargo tests"
  --bench: string@"nu-complete cargo benches"
  --no-fail-fast
  --profile: string@"nu-complete cargo profiles"
  --no-dead-code
  --include-tests
  --ignore-panics
  --count
  --ignored(-i)
  --line(-l)
  --skip-clean
  --force-clean
  --fail-under: number
  --branch(-b)
  --forward(-f)
  --coveralls: string
  --report-uri: string
  --no-default-features
  --features: string
  --all-features
  --all
  --workspace
  --packages(-p): string@"nu-complete cargo packages"
  --exclude(-e): string@"nu-complete cargo packages"
  --exclude-files: string
  --timeout(-t): number
  --post-test-delay: number
  --follow-exec
  --release
  --no-run
  --implicit-test-threads
  --locked
  --frozen
  --target: string@"nu-complete cargo triple"
  --target-dir: string
  --offline
  --avoid-cfg-tarpaulin
  --jobs(-j): number
  --rustflags: string
  --objects: string
  --out(-o): string@"output format"
  --engine: string@"engine"
  --output-dir: string
  --command: string@"command"
  --root(-r): string
  --manifest-path: string
  --ciserver: string
  --fail-immediately
  --version(-V)
  # 输出版本信息
  --help(-h)
  # 输出帮助信息
]
