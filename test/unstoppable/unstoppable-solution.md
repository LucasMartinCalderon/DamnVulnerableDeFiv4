# UNSTOPPABLE v4 SOLUTION

> ⚠ **DANGER:**  
> UnstoppableVault.flashLoan() if checks require that convertToShares(totalSupply) != balanceBefore be the same for the flashloan to work. However, by adding ERC20 tokens without receiving shares (either from too small shares in the solidity division or by forcing the smart contract to receive tokens from sender) will create an accounting mismatch and always revert. 