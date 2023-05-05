const web3 = new Web3(new Web3.providers.HttpProvider('https://ropsten.infura.io/v3/YOUR-PROJECT-ID'));
// const abi = /* load the ABI from the file */
const address = ''; // the address of the deployed contract
const contract = new web3.eth.Contract(abi, address);
const username = 'John Doe';
const email = 'john.doe@example.com';
const phone = '+1 555-555-5555';
const company = 'Acme Inc.';
const cin = '123456789';
const addressData = '123 Main St., Anytown, USA';
const options = { from: web3.eth.defaultAccount };
contract.methods.addAdmin(username, email, phone, company, cin, addressData).send(options)
  .on('transactionHash', function(hash){
    // called when the transaction is first broadcast to the network
  })
  .on('confirmation', function(confirmationNumber, receipt){
    // called when the transaction is confirmed on the network
  })
  .on('error', function(error){
    // called when there's an error with the transaction
  });
  const adminAddress = '0x1234567890123456789012345678901234567890'; // the address of the admin
  const adminData = await contract.methods.getAdmin(adminAddress).call();
  console.log(adminData);
  