# TRUSTER v4 SOLUTION

> [!DANGER]
> TrusterLenderPool's flashloan function allows anyone to execute an arbitrary function call with data parameters, which can call approve() as the token follows ERC20 standards, to approve the address of the attacker to spend the entire liquidity in the pool. 