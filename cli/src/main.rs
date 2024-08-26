use cairo_lang_starknet_classes::contract_class::ContractClass;

fn main() {
    let contract =
        std::fs::read_to_string("../cairo/target/dev/cairo_ex_HelloStarknet.contract_class.json")
            .unwrap();
    let contract_class: ContractClass = serde_json::from_str(&contract).unwrap();
    let sierra_program = contract_class.extract_sierra_program().unwrap();
    std::fs::write("programs/contract.sierra", sierra_program.to_string()).unwrap();
    std::fs::write(
        "programs/contract.sierra.json",
        serde_json::to_string_pretty(&sierra_program).unwrap(),
    )
    .unwrap();
}
