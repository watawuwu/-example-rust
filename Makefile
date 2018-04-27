target := x86_64-unknown-linux-musl

test:
	cargo test

run:
	cargo run

release:
	cargo build --release --target $(target)

.PHONY: test run release
.DEFAULT_GOAL := run
