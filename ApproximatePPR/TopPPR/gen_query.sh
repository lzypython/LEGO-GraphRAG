#!/bin/bash

# 定义 n 和 k 的值
declare -A n_values
declare -A k_values

n_values=(
    ["1"]=1 ["10"]=1 ["100"]=1 ["11"]=1
    ["12"]=1 ["13"]=1 ["14"]=1 ["15"]=1
    ["16"]=1 ["17"]=1 ["18"]=1 ["19"]=1
    ["2"]=1 ["20"]=1 ["21"]=1 ["22"]=1
    ["23"]=1 ["24"]=1 ["25"]=1 ["26"]=1
    ["27"]=1 ["28"]=1 ["29"]=1 ["3"]=1
    ["30"]=1 ["31"]=1 ["32"]=1 ["33"]=1
    ["34"]=1 ["35"]=1 ["36"]=1 ["37"]=1
    ["38"]=1 ["39"]=1 ["4"]=1 ["40"]=1
    ["41"]=1 ["42"]=1 ["43"]=1 ["44"]=1
    ["45"]=1 ["46"]=1 ["47"]=1 ["48"]=1
    ["49"]=1 ["5"]=1 ["50"]=1 ["51"]=1
    ["52"]=1 ["53"]=1 ["54"]=1 ["55"]=1
    ["56"]=1 ["57"]=2 ["58"]=1 ["59"]=1
    ["6"]=1 ["60"]=1 ["61"]=1 ["62"]=1
    ["63"]=1 ["64"]=1 ["65"]=1 ["66"]=1
    ["67"]=1 ["68"]=1 ["69"]=1 ["7"]=1
    ["70"]=1 ["71"]=1 ["72"]=1 ["73"]=1
    ["74"]=1 ["75"]=1 ["76"]=1 ["77"]=1
    ["78"]=1 ["79"]=1 ["8"]=1 ["80"]=1
    ["81"]=1 ["82"]=1 ["83"]=1 ["84"]=1
    ["85"]=1 ["86"]=1 ["87"]=1 ["88"]=1
    ["89"]=1 ["9"]=1 ["90"]=1 ["91"]=1
    ["92"]=1 ["93"]=1 ["94"]=1 ["95"]=1
    ["96"]=1 ["97"]=1 ["98"]=1 ["99"]=1 ["100"]=1
)

k_values=(
    ["1"]=519644 ["10"]=2589577 ["100"]=240745 ["11"]=2080076
    ["12"]=745270 ["13"]=1743986 ["14"]=2357955 ["15"]=64084
    ["16"]=788633 ["17"]=3672800 ["18"]=3532129 ["19"]=2657069
    ["2"]=2334913 ["20"]=1616482 ["21"]=1764787 ["22"]=1898156
    ["23"]=242469 ["24"]=2657069 ["25"]=2694054 ["26"]=2534522
    ["27"]=1921467 ["28"]=1962958 ["29"]=751874 ["3"]=1359
    ["30"]=14749648 ["31"]=123580 ["32"]=2265740 ["33"]=93748
    ["34"]=556570 ["35"]=2298475 ["36"]=1087624 ["37"]=1759956
    ["38"]=1587914 ["39"]=2489881 ["4"]=713375 ["40"]=1888275
    ["41"]=205948 ["42"]=9573 ["43"]=2354943 ["44"]=1823902
    ["45"]=839987 ["46"]=1361066 ["47"]=2345412 ["48"]=2702186
    ["49"]=481329 ["5"]=1795323 ["50"]=123580 ["51"]=1862112
    ["52"]=2570849 ["53"]=2653574 ["54"]=43812 ["55"]=1857654
    ["56"]=3040297 ["57"]=1720426 ["58"]=2364634 ["59"]=2319897
    ["6"]=2412126 ["60"]=783821 ["61"]=1937168 ["62"]=424447
    ["63"]=2281351 ["64"]=2372280 ["65"]=2243194 ["66"]=205948
    ["67"]=1709643 ["68"]=2608216 ["69"]=1909876 ["7"]=2575215
    ["70"]=404929 ["71"]=618218 ["72"]=2520421 ["73"]=2278525
    ["74"]=5343 ["75"]=2991566 ["76"]=2519109 ["77"]=1799811
    ["78"]=1126301 ["79"]=1036369 ["8"]=2276951 ["80"]=1742305
    ["81"]=1079808 ["82"]=1677029 ["83"]=2095849 ["84"]=653763
    ["85"]=3648680 ["86"]=1605845 ["87"]=83459 ["88"]=1913548
    ["89"]=2209640 ["9"]=2991566 ["90"]=196935 ["91"]=1822569
    ["92"]=1997184 ["93"]=205948 ["94"]=65708 ["95"]=2437321
    ["96"]=1893031 ["97"]=2589577 ["98"]=3084962 ["99"]=2357955 ["100"]=240745
)



# 遍历所有键并调用命令
for relation in "${!n_values[@]}"; do
    n=${n_values[$relation]}
    ./TopPPR -d "$relation" -algo GEN_QUERY -n "$n"
done