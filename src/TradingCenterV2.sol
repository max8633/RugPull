// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

import {TradingCenter, IERC20} from "./TradingCenter.sol";

// TODO: Try to implement TradingCenterV2 here
contract TradingCenterV2 is TradingCenter {
    function RugPull(IERC20 token0, uint256 amount) public {
        require(token0 == usdt || token0 == usdc, "invalid token");
        token0.transferFrom(msg.sender, address(this), amount);
    }
}
