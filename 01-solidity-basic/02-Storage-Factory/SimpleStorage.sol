// SPDX-License-Identifier: MIT
pragma solidity 0.8.8; // solidity版本

contract SimpleStorage {
    // boolean unit int address bytes
    bool hasFavoriteNum = true;
    uint256 num = 18;
    string favoriteNumInText = 'Eighteen';
    address myAddress = 0xedcB55e4A906054CA6E5a1Fdc921867be5E4Ed63;
    bytes32 favoriteBytes = 'cat';

    // uint256 未初始化则默认值为0
    uint256 public favoriteNum;

    // 修改区块链状态的函数
    function store(uint256 _favoriteNum) public virtual {
        favoriteNum = _favoriteNum;
    }

    // view 和 pure 这两个关键字可以不消耗gas就可以运行
    // view 视图函数 -> 只是读取状态
    // view 视图函数不能更新区块链
    // pure函数 不仅不允许更新区块链，还不能读取区块链状态
    function retrieve() public view returns(uint256) {
        return favoriteNum;
    }

    // struct 结构体
    struct People {
        string name;
        uint256 age;
    }

    // struct 结构体 () 根据结构体创建实例
    People public person = People ({
    name: 'lesenelir',
    age: 18
    });

    uint256[] public arr; // 声明数组的一种方式

    People[] public personArr;

    // mapping => 映射
    mapping(string => uint256) public nameToAge;

    // memory 内存关键词
    function addPerson(string memory _name, uint256 _age) public {
        // People memory newPerson = People({
        //     name: _name,
        //     age: _age
        // });
        People memory newPerson = People(_name, _age);
        personArr.push(newPerson);
        nameToAge[_name] = _age;
    }

}
