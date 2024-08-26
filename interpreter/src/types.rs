#[derive(Debug, Clone)]
pub struct Function {
    pub name: String,
    pub args: Vec<Argument>,
    pub body: String,
}

#[derive(Debug, Clone)]
pub struct Argument {
    pub name: String,
    pub ty: Type,
}

pub type SimplePath = Vec<String>;

#[derive(Debug, Clone)]
pub struct Type {
    pub path: SimplePath,
    pub generics: Vec<Type>,
}
