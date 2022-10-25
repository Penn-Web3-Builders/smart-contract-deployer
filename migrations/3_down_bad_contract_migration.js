// eslint-disable-next-line no-undef
const DownBadContract = artifacts.require("DownBadContract");

module.exports = function (deployer) {
  deployer.deploy(DownBadContract);
};
