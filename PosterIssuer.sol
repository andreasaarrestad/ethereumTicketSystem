
// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/token/ERC721/Extensions/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PosterIssuer is ERC721, Ownable {

    constructor () ERC721("Poster", "PSTR");
    
    function mint (address recepient, uint256 tokenID) public onlyOwner {
        _safeMint(recepient, tokenID);
    }
    
    function exists (uint256 tokenID) public view returns (bool) {
        return _exists(tokenID);
    }
  
}