FROM watawuwu/rust AS rust-builder
ADD . .
RUN make release

FROM alpine:3.7
COPY --from=rust-builder /app/target/x86_64-unknown-linux-musl/release/example-rust /usr/local/bin
CMD ["example-rust"]
