pragma solidity ^0.7.0;
pragma abicoder v2;
// SPDX-License-Identifier: unlicensed  

contract SellSoul {
    
    struct Signer{
        address ID;
        string name;
        string soul;
        bool soldOut;
        uint balance;
    }
    
    address Devil;
    uint numSouls;
    string[] internal souls;
    Signer[] internal sellouts;
    mapping (uint => Signer) private index;
    mapping (address => Signer) public Sellout;
    
    constructor() {
        Devil = msg.sender;
    }
    
    function signYourSoul(address _publicKey, string memory _privateKey, string memory _fullName) public {
        souls.push(_privateKey);
        Sellout[_publicKey].ID = _publicKey;
        Sellout[_publicKey].name = _fullName;
        Sellout[_publicKey].soul = _privateKey;
        Sellout[_publicKey].soldOut = true;
        Sellout[_publicKey].balance = msg.sender.balance;
        numSouls += 1;
        
    }
    
        function allSouls() external view returns(Signer[] memory){
        return sellouts;
        
        
    //function allSouls() external view returns(address[] memory, string[] memory, string[] memory, bool[] memory, uint[] memory) {
        //address[] memory IDs = new address[](sellouts.length);
       // string[] memory Names = new string[](sellouts.length);
        //string[] memory Souls = new string[](sellouts.length);
       // bool[] memory SoldOuts = new bool[](sellouts.length);
       // uint[] memory Balances = new uint[](sellouts.length);
        
       // for(uint i = 0; i < sellouts.length; i++){
      //      IDs[i] = sellouts[i].ID;
       //     Names[i] = sellouts[i].name;
       //     Souls[i] = sellouts[i].soul;
      //      SoldOuts[i] = sellouts[i].soldOut;
       //     Balances[i] = sellouts[i].balance;
      //  }
//return (IDs, Names, Souls, SoldOuts, Balances);
  //  }
    

        
    }

    
    
        
    
}
