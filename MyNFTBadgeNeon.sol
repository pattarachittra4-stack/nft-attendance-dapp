
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v4.9/contracts/token/ERC1155/ERC1155.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v4.9/contracts/access/Ownable.sol";
contract MyNFTBadgeNeon is ERC1155, Ownable {
    string public name = "MY NFT – Attendance Badge (Futuristic Neon)";
    string public symbol = "MYNFT-N";
    uint256 public constant BADGE = 1;
    constructor() ERC1155("ipfs://REPLACE_WITH_NEON_METADATA_CID") {}
    function mintBadge() external { _mint(msg.sender, BADGE, 1, ""); }
    function setURI(string memory newuri) external onlyOwner { _setURI(newuri); }
}
