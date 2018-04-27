fn main() {
    println!("{}", hello());
}


fn hello() -> String {
    "hello".to_string()
}

#[cfg(test)]
mod tests {

    use hello;

    #[test]
    fn test_run() {
        let hello = hello();
        assert_eq!(hello, "hello".to_string());
    }
}
