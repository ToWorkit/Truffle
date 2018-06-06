pragma solidity ^0.4.4;

// public > internal > private  大于
contract Access {
  // internal 是合约属性默认的访问权限
  uint internal _age;
  uint _weight;
  uint private _height;
  uint public _money;

  // public 相当于自动生成 get函数
  /* function _money() public view returns(uint) {
    return _money;
  } */

  // 如果自定义，将会覆盖自动生成的get函数
  function _money() public view returns(uint) {
    return 100;
  }
}
