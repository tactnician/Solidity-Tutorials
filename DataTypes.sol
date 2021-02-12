// SPDX-License-Identifier: MIT

pragma solidity >=0.5.1;

contract DataTypes {
    string public constant value = "myValue";
    bool public myBool = true;
    int public myInt = 1;
    uint public myUint = 1;
    uint256 public myUint256 = 9999;
    uint8 public myUint8 = 8;

    uint256 public peopleCount;

    enum State {Waiting, Ready, Active }
    State public state; 

    struct Person {
        string _firstName;
        string _lastName;
    }

    Person[] public people; 

    constructor () {
        state = State.Waiting;

    }

    function activate() public {
        state = State.Active;
    }

    function isActive() public view returns(bool) {
            return state == State.Active;
    }

    function addPerson(string memory _firstName, string memory _lastName) public{
        people.push(Person(_firstName, _lastName));
        peopleCount += 1;
    }

}