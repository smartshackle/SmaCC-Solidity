auto generated tests
testEtherscanContractLinks224
	|contract|
	contract := self class fetchEtherscanContractFrom: 'https://etherscan.io/address/0x4e0603e2a27a30480e5e3a4fe548e29ef12f64be#code'. 
	SolidityParserTest new parseTest: contract.