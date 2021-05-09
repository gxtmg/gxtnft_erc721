// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "../.deps/github/OpenZeppelin/openzeppelin-contracts/contracts/access/Ownable.sol";
import "../.deps/github/OpenZeppelin/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol/ERC721.sol";
import "../.deps/github/OpenZeppelin/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol/ERC721Burnable.sol";

contract GXTNFT is ERC721, ERC721Burnable, Ownable {
    constructor() ERC721("GEM Exchange & Trade Non-Fungible Token", "GXT NFT") public {
    }
    
    function mint(address to, uint256 tokenid) 
    public onlyOwner {

        _safeMint(to, tokenid);
    }
    
    function setTokenURI(uint256 tokenId, string memory _tokenURI) public onlyOwner {
        _setTokenURI(tokenId, _tokenURI);
    }
    
    function setBaseURI(string memory baseURI_) public onlyOwner {
        _setBaseURI(baseURI_);
    }
}


../.deps/github/OpenZeppelin/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol