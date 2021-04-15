# Mono
Mono is a staking pool in which ERC1155 LP tokens are deposited and Mono token is earned over time.
The total reward balance is 42000 Mono released per every 6000 blocks.The rewards distribution rate decreases linearly at 0.999.
Distribution is gated by the MonoRewardsDistributor. It calculates the amount which should be released at any given time and drips it to MonoStakingRewards weekly.
