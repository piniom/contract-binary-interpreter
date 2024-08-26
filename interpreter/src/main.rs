use lalrpop_util::lalrpop_mod;

mod types;

fn main() {
    let input = std::fs::read_to_string("input/function.cairo").unwrap();
    let parsed = grammar::FunctionParser::new().parse(&input).unwrap();
    dbg!(parsed);
}

lalrpop_mod!(pub grammar);
