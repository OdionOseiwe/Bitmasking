  // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BitmaskExample {

    uint256  public config; // 256-bit variable
    uint256 constant FIELD_MASK_A = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000; // Example mask
    uint256 constant FIELD_MASK_B = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF;
    // uint256 constant FIELD_START_BIT_POSITION_A = 0;   // Field starts at bit 0
    //For the FIELD_MASK_A, the start bit is 0 (up to 15), hence no bitshifting is needed
    uint256 constant FIELD_START_BIT_POSITION_B = 16;   // Field starts at bit 16

    function setFieldA(uint256 newValue) public {
        config = (config & ~FIELD_MASK_A) | (newValue );
    }

    function setFieldB(uint256 newValue) public {
        config = (config & ~FIELD_MASK_B) | (newValue << FIELD_START_BIT_POSITION_B);
    }

    function getFieldA() public view returns (uint256) {
        return (config & FIELD_MASK_A);
    }

    function getFieldB() public view returns (uint256) {
        return (config & FIELD_MASK_B) >> FIELD_START_BIT_POSITION_B;
    }

    function checkIfSet() public view returns (bool) {
        return (config & FIELD_MASK_A)  != 0;
    }
}





