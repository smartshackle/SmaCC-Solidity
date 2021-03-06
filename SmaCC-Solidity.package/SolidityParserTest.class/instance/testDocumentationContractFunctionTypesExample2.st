tests - contracts
testDocumentationContractFunctionTypesExample2
	"Example contracts found in the Solidity Documentation v.0.4.12. 
	Function Types page 42-44.
	<https://media.readthedocs.org/pdf/solidity/develop/solidity.pdf>
	"
self parseTest: 
'pragma solidity ^0.4.11;
contract Oracle {
struct Request {
bytes data;
function(bytes memory) external callback;
}
Request[] requests;
event NewRequest(uint);
function query(bytes data, function(bytes memory) external callback) {
requests.push(Request(data, callback));
NewRequest(requests.length - 1);
}
function reply(uint requestID, bytes response) {
// Here goes the check that the reply comes from a trusted source
requests[requestID].callback(response);
}
}
contract OracleUser {
Oracle constant oracle = Oracle(0x1234567); // known contract
function buySomething() {
oracle.query("USD", this.oracleResponse);
}
function oracleResponse(bytes response) {
require(msg.sender == address(oracle));
// Use the data
}
}
'.