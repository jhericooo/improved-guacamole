// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Nft is ERC721URIStorage {
    uint256 tokenId;

    constructor() ERC721("Barney is a dinasour", "BADI"){}

    function mint() external {
        _safeMint(msg.sender, tokenId);
        _setTokenURI(
            tokenId,
            "ipfs://bafkreifjanfal2mknx4aazj2frpv6vtaqdhxplomyqiqqf5yq6eisxbmui"
        );
    }
}
 