pragma solidity ^0.8.6;

import "./Token.sol";

contract slab {
    Token public tok;

    function t_deploy() public {
        tok = new Token();
    }

    uint256 _amount;

    //setting the total amount of totalsupply and the balances
    constructor(uint256 amount) {
        _amount = amount;
    }

    function sendPayment(address _to, uint256 _amounts) public {
        tok.transfer(_to, _amounts);
    }

    function acceptpayment(address _from, address _to) public {
        tok.transfer2(_from, _to, _amount);
    }

    function enquireslab() public view returns (string memory) {
        if (_amount <= 500 * 1e18) {
            return "slab4";
        } else if (_amount >= 500 * 1e18 && _amount <= 900 * 1e18) {
            return "slab3";
        } else if (_amount >= 900 * 1e18 && _amount <= 1200 * 1e18) {
            return "slab2";
        } else if (_amount >= 1200 * 1e18 && _amount <= 1400 * 1e18) {
            return "slab1";
        } else if (_amount >= 1400 * 1e18 && _amount <= 1500 * 1e18) {
            return "slab0";
        } else {
            return "The slab limit is reached";
        }
    } //000000000000000000
}
