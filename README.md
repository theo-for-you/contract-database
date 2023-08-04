

# Contract Database
Easy access contract addresses and ABIs by their names 

Another realisation [ERC-137: Ethereum Domain Name Service - Specification](https://eips.ethereum.org/EIPS/eip-137)

## How to edit
 - Call **setAddress**(string, address) to change or add your contract address, can be called from constructor 
 - Call **setAbi**(string, string) to set ABI for your contract to access

## How to access 
- Call **getContractByName**(string) and get the address and ABI of a contract 

## How it works
 - Replaces proxy contracts, works for every type of a contract
 - No need to constantly change deployed contract address in your code
 - No need to store abis in your code

## Todo
 - Add change history

