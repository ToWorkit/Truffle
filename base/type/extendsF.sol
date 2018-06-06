pragma solidity ^0.4.4;

// 声明合约
contract Animal {
  uint _weight;
  uint private _height;
  uint internal _age;
  uint public _money;

  // 方法默认为public
  function test() constant returns(uint) {
    return _weight;
  }

  function test1() public view returns(uint) {
    return _height;
  }

  function test2() internal view returns(uint) {
    return _age;
  }

  function test3() private view returns(uint) {
    return _money;
  }
}

contract Animal_1 {
  uint _sex;
  function Animal_1() {
    _sex = 2;
  }
  function sex() public view returns(uint) {
    return _sex;
  }
}

// 声明合约
contract Dog is Animal, Animal_1 {
  // 只有public类型的方法才会被继承
  // 可以继承public和internal类型的属性

  // 属性操作
  function testWeight() public view returns(uint) {
    return _weight;
  }

  function testHeight() public view returns(uint) {
    return _height;
  }

  function testAge() public view returns(uint) {
    return _age;
  }

  function testMoney() public view returns(uint) {
    return _money;
  }
}
