install

    - solc
    
    - truffle
    
    - ganache-cli ( optional )

run 

    '$ ganache' to start sever
    '$ truffle compile' to compile your contract
    '$ truffle create migration your_contract_name' to create migration
    '$ truffle migrate' to deploy contract to local node
    '$ truffle test' to run testcase
  
    '$ truffle develop' to interact with contract

test on testnet

    install metamask extention and create account on Ropsten Testnet
    '$ npm install --save-dev @truffle/hdwallet-provider'
    '$ truffle  truffle migrate --network ropsten'
