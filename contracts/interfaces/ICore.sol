pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

import "./IPermissions.sol";
import "./IFei.sol";

/// @title Core Interface
/// @author Fei Protocol
interface ICore is IPermissions {
    // ----------- Events -----------

    event FeiUpdate(address indexed _fei);
    event MonoUpdate(address indexed _mono);
    event GenesisGroupUpdate(address indexed _genesisGroup);
    event MonoAllocation(address indexed _to, uint256 _amount);
    event GenesisPeriodComplete(uint256 _timestamp);

    // ----------- Governor only state changing api -----------

    function init() external;

    // ----------- Governor only state changing api -----------

    function setFei(address token) external;

    function setMono(address token) external;

    function setGenesisGroup(address _genesisGroup) external;

    function allocateMono(address to, uint256 amount) external;

    // ----------- Genesis Group only state changing api -----------

    function completeGenesisGroup() external;

    // ----------- Getters -----------

    function fei() external view returns (IFei);

    function mono() external view returns (IERC20);

    function genesisGroup() external view returns (address);

    function hasGenesisGroupCompleted() external view returns (bool);
}
