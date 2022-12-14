# Penn W3B Solidity 101 Workshop

----

1. Clone github repo
2. In a terminal, run 

```
cd smart-contract-deployer
npm install 
```

3. create a new file in the root directory named ".env" and paste the following (you can get RPC URL from infura.io and private key from MetaMask): 

``
GOERLI_RPC_URL=
``


``
PRIVATE_KEY=
``

4. And input relevant info next to the equal signs (you can always add more as you add more networks to deploy to)

5. Save everything with ctrl+s and run:

```
truffle migrate --network goerli
```

6. If you want to change the network, follow the same template in truffle-config.js and replace the "goerli" in the terminal line above with the other network's name

7. The contract should be deployed soon. To find it, look for "contract address" under the DownBadContract deployment in your terminal - copy it and search for it on etherscan

8. To verify it on etherscan, select "multi-file solidity" and compiler 0.8.11. Keep everything else the same and when it prompts you to upload files, upload all 3 from your computer: 

```
Migrations.sol
ReentrancyGuard.sol
DownBadContract.sol
```

9. Now you can write to the public functions on Etherscan!

----
