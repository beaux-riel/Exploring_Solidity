pragma solidity ^0.4.17;

contract Inbox {
    string public message;

    function Inbox(string initialMessage) public {
        message = initialMessage;
    }

    function setMessage(string newMessage) public {
        message = newMessage;
    }

    function getMessage() public view returns (string) {
        return message;
    }
}



// Some changes required due to new language rules (eg. using "constructor")
// pragma solidity ^0.4.17;

// contract Inbox {
//     string public message;
    
//     constructor(string initialMessage) public {
//         message = initialMessage;
//     }
    
//     function setMessage(string newMessage) public {
//         message = newMessage;
//     }
    
//     function getMessage() public view returns (string) {
//         return message;
//     }
// }