// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Function {
    // functions can return multiple values
    function returnMany() public pure returns (uint, bool, uint) {
        return (1, true, 2);
    }

    // return values can be named
    function named() public pure returns (uint x, bool y, uint z) {
        return (1, true, 2);
    }

    // return values can be assigned to their name
    // in this case the return statement can be omitted
    function assigned() public pure returns (uint x, bool y, uint z) {
        x = 1;
        y = true;
        z = 2;
    }

    // use destructuring assugnment when calling another
    // function that returns multiple values
    function destructuringAssignments()
        public
        pure
        returns (uint, bool, uint, uint, uint)
    {
        (uint i, bool b, uint j) = returnMany();

        // values can be left out
        (uint x, , uint y) = (4, 5, 6);

        return (i, b, j, x, y);
    }

    // cannot use map for either input or output

    // can use array for input
    function arrayInput(uint[] memory _arr) public {}

    // can use array to output 
    uint[] public arr;

    function arrayOutput() public view returns (uint[] memory) {
        return arr;
    }

    // Call function with key-value inputs
contract XYZ {
    function someFuncWithManyInputs(
        uint x,
        uint y,
        uint z,
        address a,
        bool b,
        string memory c
    ) public pure returns (uint) {}

    function callFunc() external pure returns (uint) {
        return someFuncWithManyInputs(1, 2, 3, address(0), true, "c");
    }

    function callFuncWithKeyValue() external pure returns (uint) {
        return
            someFuncWithManyInputs({a: address(0), b: true, c: "c", x: 1, y: 2, z: 3});
    }
}
