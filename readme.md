# Bitmasking 💯

A mask is a binary number created to focus on specific bits in a number e.g
- Mask to set the third bit (00000100)
- You creat these mask using bitshifting operations (1 << position) to position the 1 bit in the desired location


## ** Setting a bit ** 

```solidity
    // Set a specific bit
    uint256 config;
    function setBit(uint256 bit) external {
        config |= (1 << bit);
    }
```

When you want to set a specific bit (e.g bit 2), the mask is created as 1 << 2.
1 << 2 produce the binary value 00000100
- Then you apply the OR (|) operator

## ** Clearing a Bit **

```solidity
    // Clear a specific bit
    function clearBit(uint256 bit) external {
        config &= ~(1 << bit);
    }
```
To clear a bit, the mask needs to all bits as 1 expect the target bit, which is 0.This is achieved by taking the (~) of 1 << position
e.g to clear the second bit 
- 1 << 2 gives 00000100
- ~(1<<2) gives 11111011
- and then use the AND operation on the mask

## ** Checking a Bit **

```solidity
    // Check if a specific bit is set
    function isBitSet(uint256 bit) external view returns (bool) {
        return (config & (1 << bit)) != 0;
    }
```
When checking a bit the mask is  created with only the desired bit set to 1. e.g To check second bit 
- The mask is 1 << 2 which 00000100∆
