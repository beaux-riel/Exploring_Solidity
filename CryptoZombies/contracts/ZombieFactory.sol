// Enter solidity version here
pragma solidity >=0.5.0 <0.6.0;

// Create contract here
contract ZombieFactory {

    // Event
    event NewZombie(uint zombieId, string name, uint dna);

    // Unsigned (positive) integers
    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    // Struct is a more complex structure vs a single variable
    struct Zombie {
        string name;
        uint dna;
    }

    // Public empty Zombie array creation
    Zombie[] public zombies;

    // Create Zombie function
    function _createZombie(string memory _name, uint _dna) private {
        uint id = zombies.push(Zombie(_name, _dna)) - 1;
        emit NewZombie(id, _name, _dna);
    }

    // Generate Rnadom "DNA" based on the input name
    function _generateRandomDna(string memory _str) private view returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus;
    }

    function createRandomZombie(string memory _name) public {
        uint randDna = _generateRandomDna(_name);
        _createZombie(_name, randDna);
    }

}