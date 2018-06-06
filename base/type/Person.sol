pragma solidity ^0.4.4;
/*
pragma 版本声明
solidity 开发语言
0.4.4 当前合约版本，0.4代表主版本，.4代表bug的升级版
^ 向上兼容 0.4.4 ~ 0.4.9
*/

// 声明一个Person类 -> 合约
// class Person extends contract
contract Person {
  // 无符号整型
  uint _height;
  uint _age;
  // 地址 代表合约的拥有者
  address _owner

  // 构造函数 方法名和合约名相同时就属于构造函数，在创建对象时，构造函数会自动最先被调用
  function Person() {
    _height = 180;
    _age = 24;
    _owner = msg.sender;
  }

  function owner() constant returns(address) {
    return _owner;
  }

  // set 方法标准写法, 往合约中写入数据时需要花费一定的 gas(手续费)
  function setHeight(uint height) {
    _height = height;
  }
  // get 方法, constant 代表方法只读
  function height() constant returns(uint){
    return _height;
  }

  function setAge(uint age) {
    _age = age;
  }
  function age() constant returns(uint) {
    return _age;
  }

  // 销毁合约, constant 调用时不写入数据也可以加上constant
  function kill() constant{
    if (_owner == msg.sender) {
      // 析构函数
      selfdestruct(msg.sender)
    }
  }
}
