pragma solidity ^0.4.23;

contract HelloWorld {
  //  Warning: Function state mutability can be restricted to pure
  // function test() public returns(string) {
  // ^ (Relevant source part starts here and spans across multiple lines).
  // 加上 pure 就好了
  function test() pure public returns(string) {
    return "Hello World";
  }
}
