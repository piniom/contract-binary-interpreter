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
    // core::internal::require_implicit::<System>();
    let a = 297;
    core::option::OptionTraitImpl::expect(core::gas::withdraw_gas(), 'Out of gas');
    let b = a * a;
    let mut i = 0_u32;
    let mut r = 0;
    while i < 11 {
        i += 1;
        core::gas::withdraw_gas().unwrap();
        // r += fun(i.into());
    };
    fun(2);
    core::option::OptionTraitImpl::expect(Option::Some(()), 'Out of gas');
    array![a, b, r]
}

fn fun(n: felt252) -> felt252 {
    if n == 0 {
        return 0;
    }
    core::option::OptionTraitImpl::expect(core::gas::withdraw_gas(), 'Out of gas');
    fun(n - 1) + n
}
