// Note: All exercises were tested at remix.ethereum.org and exported to VS Code

pragma solidity 0.8.4;

contract Inbox {
    string public message;

    constructor(string initialMessage) public {
        message = initialMessage;
    }

    function setMessage(string newMessage) public {
        message = newMessage;
    }

    // This section was in relation to a discussion around gas
    function doMath(int a, int b) {
        a + b;
        b - a;
        a * b;
        a == 0;
    }
}