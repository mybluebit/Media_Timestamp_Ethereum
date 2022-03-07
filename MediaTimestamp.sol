// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Stamp is Ownable{
// Stores hash and timeblock of content, along with optional link to the content to be viewed publicly
    struct HashData{
        string contentHash;
        string contentLink;
        uint blockStoredAt;
    }
// Maps each of the HashData structs to addresses
    mapping(address => HashData[]) public allStoredContent; 

//Event emitted for front end when a piece is successfully stamped
    event Stamped(address indexed _by, string indexed _hash,string indexed _contentLink, uint256 _blockNumber, uint256 _blocktimestamp);

//Accepts the SHA256 hash and public link to the content, and stores in the mapping allocated to the address called this functions by
// Then emits Stamped to notify frontend
    function timestampContentPublic(string calldata _contentHash, string calldata _contentLink) external {
        allStoredContent[msg.sender].push(HashData(_contentHash,_contentLink, block.timestamp));
        emit Stamped(msg.sender,_contentHash,_contentLink,block.number,block.timestamp);
    }
//Accepts the SHA256 hash and public link to the content, and stores in the mapping allocated to the address called this functions by
// Then emits Stamped to notify frontend
    function timestampContentPrivate(string calldata _contentHash) external {
        allStoredContent[msg.sender].push(HashData(_contentHash,"_", block.timestamp));
        emit Stamped(msg.sender,_contentHash,"_",block.number,block.timestamp);
    }
//Recieves an address and finds all content hashes and links allocated to it
    function getHashesUnderAddress(address _address) external view returns(HashData[] memory){
        return allStoredContent[_address];
    }


}