pragma solidity ^0.4.4;
// 创建合约
contract Person {
    string _name;
    function Person(string name) {
        _name = name;
    }

    function f() {
        modify(_name);
    }
    /*
        默认不写是不改变
        memory  不改变
        storage 改变
        storage下函数必须是internal类型(只能在函数内部被调用)
    修改字符串必须先转为字节数组
    */
    function modify(string storage name) internal {
        bytes(name)[0] = "G";
    }

    function name() constant returns(string) {
        return _name;
    }
}
