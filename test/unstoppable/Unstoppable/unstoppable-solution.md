# UNSOPPABLE v4 SOLUTION

> ⚠ **DANGER:**  
> UnstoppableVault.flashLoan() reverts if convertToShares(totalSupply) != balanceBefore, which is easily achieved by forcing the smart contract to receive tokens without deposit, or when depositting not causing a shares mint due to low volume in Solidity division.