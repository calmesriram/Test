pragma solidity ^0.4.0;
contract ERC20
{
  string name = "token";
  uint256 decimal = 18;
  uint256 symbol = 3;
    
  uint256 public totalsupply = 10000;
  mapping (address => uint256) map;
 
 
 
  function transfer(address to,uint256 value)public payable returns(uint256)
 {
     map[to] += value;
     map[msg.sender] -=value;
     return(map[msg.sender]);
 }

  function mint(uint256 amount) public  payable returns(uint256)
  {
    
     if(totalsupply >= amount && map[msg.sender]+amount<=totalsupply )
       {
         map[msg.sender] += amount;    
       }
     else
       {
        revert();    
       }
     return(map[msg.sender])  ;
       
 }
 function bal()public  constant returns(uint256)
 {
     return(map[msg.sender]);
 }
   
 
  

