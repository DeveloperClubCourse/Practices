let swamp: [Character] = ["_", "_", "_", "x", "_", "_", "x", "_"]
//:                        ^(i-2)^(i-1) ^i
let n = swamp.count

var dp = Array(repeating: 0, count: n)

// dp[i] - максимальное количество прыжков чтобы добраться до i кувшинки

dp[0] = 1
dp[1] = 2

for i in 2 ..< n {
    if swamp[i] == "x" {
        continue
    }
    
    dp[i] = dp[i - 2] + dp[i - 1]
}

print(dp)
