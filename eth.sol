// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract MyToken {

    // public variables here
    string public  token_name="meta" ;
    string public token_abbrv="MTA";
    uint public total_supply=0;

    // mapping variable here
    mapping (address=>uint)public balances;
    // mint function
   function mint (address _address, uint _value) public {
    total_supply += _value;
    balances[_address] += _value;
   }
    // burn function
    function burn (address _address, uint _value) public {
    if(balances[_address]>=_value){
        total_supply -= _value;
       balances[_address] -= _value;
}
}
}
