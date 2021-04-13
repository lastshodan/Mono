pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

import "./ICore.sol";

/// @title CoreRef interface
/// @author Fei Protocol
interface ICoreRef {
    // ----------- Events -----------

    event CoreUpdate(address indexed _core);

    // ----------- Governor only state changing api -----------

    function setCore(address core) external;

    function pause() external;

    function unpause() external;

    // ----------- Getters -----------

    function core() external view returns (ICore);

    function fei() external view returns (IFei);

    function mono() external view returns (IERC20);

    function feiBalance() external view returns (uint256);

    function monoBalance() external view returns (uint256);
}
