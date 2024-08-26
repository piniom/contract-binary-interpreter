// use HelloStarknet::IHelloStarknet;

// #[starknet::contract]
// mod HelloStarknet {
//     #[storage]
//     struct Storage {
//         balance: felt252,
//     }

//     #[starknet::interface]
//     pub trait IHelloStarknet<TContractState> {
//         fn get_balance(self: @TContractState) -> Array<felt252>;
//     }

//     #[abi(embed_v0)]
//     impl HelloStarknetImpl of IHelloStarknet<ContractState> {
//         fn get_balance(self: @ContractState) -> Array<felt252> {
//             array![1337]
//         }
//     }
// }

fn main(input: Array<felt252>) -> Array<felt252> {
    core::option::OptionTraitImpl::expect(core::gas::withdraw_gas(), 'Out of gas');
    array![]
}
