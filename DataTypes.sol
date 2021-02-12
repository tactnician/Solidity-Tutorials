// SPDX-License-Identifier: MIT

pragma solidity >=0.5.1;

contract DataTypes {
    string public constant value = "myValue";
    bool public myBool = true;
    int public myInt = 1;
    uint public myUint = 1;
    uint256 public myUint256 = 9999;
    uint8 public myUint8 = 8;

    enum State {Waiting, Ready, Active }
    State public state; 

    constructor () {
        state = State.Waiting;

    }

    function activate() public {
        state = State.Active;
    }

    function isActive() public view returns(bool) {
            return state == State.Active;
    }

}