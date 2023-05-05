// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AdminData {
    struct Admin {
        string username;
        string email;
        string phoneNumber;
        string companyName;
        string cin;
        string companyAddress;
        string walletId;
    }
    
    mapping(address => Admin) public admins;
    
    function addAdmin(string memory _username, string memory _email, string memory _phone, string memory _company, string memory _cin, string memory _address, string memory _walletId) public {
        admins[msg.sender] = Admin(_username, _email, _phone, _company, _cin, _address, _walletId);
    }
    
    function getAdmin(address _adminAddress) public view returns (string memory, string memory, string memory, string memory, string memory, string memory, string memory) {
        Admin memory admin = admins[_adminAddress];
        return (admin.username, admin.email, admin.phoneNumber, admin.companyName, admin.cin, admin.companyAddress, admin.walletId);
    }
}
