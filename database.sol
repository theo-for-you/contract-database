// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;



contract Database {

    mapping(string => address) owners;
    mapping(string => address) contracts;
    mapping(address => string) abis;



    function getContractByName(string calldata name) public view returns(address, string memory) {

        address addr = contracts[name];

        return (addr, abis[addr]);
    }

    function setAddress(string calldata name, address addr) public {
        require(owners[name] == msg.sender || owners[name] == address(0));

        if(owners[name] == address(0)) owners[name] = msg.sender;

        contracts[name] = addr;
    }

    function setAbi(string calldata name, string calldata abi_data) public {
        require(owners[name] == msg.sender);

        abis[contracts[name]] = abi_data;
    }


}
