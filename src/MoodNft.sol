// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MoodNft is ERC721 {
    uint256 private s_tokenCounter;
    string private s_sadSVGImageUri;
    string private s_happySVGImageUri;

    mapping(uint256 => Mood) private s_tokenIdToMood;

    enum Mood {
        Happy,
        Sad
    }

    constructor(
        string memory sadSvgImageUri,
        string memory happySvgImageUri
    ) ERC721("MoodNFT", "MN") {
        s_sadSVGImageUri = sadSvgImageUri;
        s_happySVGImageUri = happySvgImageUri;
        s_tokenCounter = 0;
    }
}
