pragma solidity ^0.4.4;
// 创建合约
contract Person {
    uint _age;
    function Person(uint age) {
        _age = age;
    }

    function f() {
        modify(_age);
    }

    function modify(uint age) {
        age = 100;
    }

    function age() constant returns(uint) {
        return _age;
    }
}
