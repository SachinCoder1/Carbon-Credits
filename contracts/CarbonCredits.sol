// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract CarbonCredits is ERC721URIStorage, AccessControl {
    uint256 private _currentTokenId = 0;
    bytes32 public constant VERIFIER_ROLE = keccak256("VERIFIER_ROLE");

    // Mapping from token ID to its verification status
    mapping(uint256 => bool) private _verified;

    // Event to emit when a token is verified
    event Verified(uint256 tokenId, address verifier);

    constructor() ERC721("Decentralized Carbon Credits", "DCC") {
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _setupRole(VERIFIER_ROLE, msg.sender);
    }

}
