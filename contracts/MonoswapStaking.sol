pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

import "./utilities/StakingRewardsV2.sol";

/// @title A StakingRewards contract for earning MONO with staked Mono LP tokens
/// @author Curtis Protocol
/// @notice deposited LP tokens will earn MONO over time at a linearly decreasing rate(0.999 decay)
contract MonoswapStaking is StakingRewardsV2{
    constructor(
        address _distributor,
        address _mono,
        address _pair,
        uint256 _duration
    ) public 
      StakingRewardsV2(_distributor, _mono, _pair, _duration) 
    {}
}
