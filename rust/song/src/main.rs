use std::fs;

fn main() { }

fn sing() -> String {
    "To be implemented".to_string()
}

#[cfg(test)]
mod tests {
    // Note this useful idiom: importing names from outer (for mod tests) scope.
    use super::*;

    #[test]
    fn test_sing() {
        let contents = fs::read_to_string("full_song.txt")
            .expect("Something went wrong reading the file");

        assert_eq!(sing(), contents);
    }

}
