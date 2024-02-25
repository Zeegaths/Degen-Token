// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

error INSUFFICIENT_DEGEN();

contract DegenGame is ERC20, Ownable {

enum GameItems { Dress, Hat, Sunshades, Bag}

constructor() ERC20("DegenFash", "DFN")Ownable(msg.sender) {}

function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount);
}

function TransferDegenFash(address _receiver, uint256 _amount) external returns(bool success){
    if(_amount < balanceOf(msg.sender)){
        revert INSUFFICIENT_DEGEN();
    }
  success = transfer(_receiver, _amount);
}

function burn(uint256 _amount) external {
    if(_amount < balanceOf(msg.sender)){
        revert INSUFFICIENT_DEGEN();
    }
    _burn(msg.sender, _amount);
}

function getDegenFashBalance() public view returns (uint256) {
    return balanceOf(msg.sender);
}

function gameItems(GameItems _item) external {
    uint256 itemValue = 0;
     if (_item == GameItems.Dress) {
        itemValue = 8 *1e18;
    } else if (_item == GameItems.Hat) {
        itemValue = 6 *1e18;
    } else if (_item == GameItems.Sunshades) {
        itemValue = 4 *1e18;
    } else if (_item == GameItems.Bag) {
        itemValue = 2 *1e18;
    }else{
        itemValue = 0;
    }

    if(itemValue > balanceOf(msg.sender)){
        revert INSUFFICIENT_DEGEN();
    }
    _transfer(msg.sender, address(this), itemValue);
}

function withdrawDegenFunds()external onlyOwner{
    _transfer(address(this), msg.sender, balanceOf(address(this)));
}

}