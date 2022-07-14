struct testStruct {
    var param1: Int
    var param2: Int
}

func testFunction() -> testStruct {
    return testStruct(param1:1,param2:2)
}

func main0() {
    let n = testFunction()
}