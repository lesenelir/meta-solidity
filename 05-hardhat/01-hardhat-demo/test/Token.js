const { expect } = require('chai');
const { ethers } = require('hardhat');

describe("Token", function () {
  let Token, token, owner, address1

  beforeEach(async () => {
    Token = await ethers.getContractFactory('Token')
    token = await Token.deploy()
    ;[owner, address1] = await ethers.getSigners()
  })

  describe('test Deployment', () => {
    it('合约owner正确', async function () {
      expect(await token.owner()).to.equal(owner.address)
    })

    it('部署者拥有所有的代币', async function () {
      const totalSupply = await token.totalSupply()
      expect(await token.balanceOf(owner.address)).to.equal(totalSupply)
    })

  })

})
