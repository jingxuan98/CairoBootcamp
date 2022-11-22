from starkware.cairo.common.uint256 import (uint256_add,Uint256)

// Modify both functions so that they increment
// supplied value and return it
func add_one(y: felt) -> (val: felt) {
    return (val = y+1);
}

func add_one_U256{range_check_ptr}(y: Uint256) -> (val: Uint256) {
    let one_as_uint256: Uint256 = Uint256(1, 0);
    let (x,_) = uint256_add(y,one_as_uint256);
    return (val = x);
}
