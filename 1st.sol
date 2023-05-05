// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Admin {
    struct AdminData {
        string username;
        string email;
        string phoneNumber;
        string companyName;
        string cin;
        string addressData;
    }

    mapping(address => AdminData) admins;

    function addAdmin(
        string memory _username, 
        string memory _email, 
        string memory _phoneNumber, 
        string memory _companyName,
        string memory _cin, 
        string memory _addressData
    ) public {
        admins[msg.sender] = AdminData(
            _username, 
            _email, 
            _phoneNumber, 
            _companyName, 
            _cin, 
            _addressData
        );
    }

    function getAdmin(address _adminAddress) public view returns (
        string memory username, 
        string memory email, 
        string memory phoneNumber,
        string memory companyName,
        string memory cin,
        string memory addressData
    ) {
        return (
            admins[_adminAddress].username,
            admins[_adminAddress].email,
            admins[_adminAddress].phoneNumber,
            admins[_adminAddress].companyName,
            admins[_adminAddress].cin,
            admins[_adminAddress].addressData
        );
    }
}
