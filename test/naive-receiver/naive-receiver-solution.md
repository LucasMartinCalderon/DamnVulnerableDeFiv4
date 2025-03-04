# NAIVE RECEIVER v4 SOLUTION

> [!VULNERABILITIES IN RECEIVER]
> onFlashLoan() function on the receiver (borrower) not-so-smart contract (FlashLoanReciever) allows for any tx to force receiver to spend at least 1ETH in *fee* every time it is called

> [!VULNERABILITIES IN FLASHLOAN POOL]
> withdraw() function in the NativeReceiverPool smart contract enables any address with existing deposits to withdraw any amount and as per testSetup, deployer and pool addresses are the same.
> Call withdraw() in the context of NaiveReceiverPool with crafted calldata through delegatecall, for which the msg.sender is the forwarder and calldata includes in the last 20 bytes the address of attacker

