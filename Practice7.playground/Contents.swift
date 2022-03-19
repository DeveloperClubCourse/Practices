
func binary_search(a: [Int], n: Int) -> Int? {
    var l = 0, r = a.count
    while r - l > 1 {
        let m = (l + r) / 2
        
        if a[m] > n {
            r = m
        } else {
            l = m
        }
    }
    return a[l] == n ? l : nil
}

var a = [Int]()

a = [Int].init(0 ..< 1000000)


//let a = [1, 3, 5, 6, 8, 9, 11, 12, 15, 20]

print(binary_search(a: a, n: 6))
