# 鍒嗘敮绛栫暐 鈥?asapp-thirdparty-prebuilt

## 闀挎湡鍒嗘敮

| 鍒嗘敮 | 鐢ㄩ€?|
|------|------|
| `main` | 宸插彂甯冨埗鍝侊紱涓庢寮?tag 瀵归綈 |
| `develop` | 瀹屾暣鐭╅樀锛坰tatic/shared 脳 debug/release锛夐泦鎴愬垎鏀紝渚?CI/搴撶鐞嗘帹閫佹柊鍒囩墖 |
| `release/shared-release` | **AsApp 娑堣垂鍒嗘敮**锛氫粎淇濈暀 `*-shared-release` 鍒囩墖锛堝 `linux-x64-shared-release`銆乣windows-x86-shared-release`锛?|

## Tag锛堟潈濞佹秷璐圭偣锛?
| Tag | 鍚箟 |
|-----|------|
| `deps-bootstrap` | 浠撻鏋?+ 棣栨壒璇曠偣鍒囩墖 |
| `deps-YYYY.MM.DD` | 姝ｅ紡渚濊禆闆嗗彂甯?|
| `deps-YYYY.MM.DD-N` | 鍚屾棩淇 |

- AsApp **蹇呴』 pin `deps-*` tag**锛屼笖搴旀寚鍚?`release/shared-release` 涓婄殑鎻愪氦锛堟垨浠庤鍒嗘敮鎵撳嚭鐨?tag锛夈€?- 涓氬姟 submodule **蹇呴』閿?tag 鎴栬 commit**锛屽嬁杩芥诞鍔?`develop`銆?
## 宸ヤ綔娴?
```text
婧愮爜浠撴瀯寤?鈫?鍚屾鍒版湰浠?develop锛堝叏鐭╅樀锛夆啋 闂ㄧ 鈫?鍚堝苟 main + 鎵?deps-* tag
         鈫?鎸夐渶瑁佸壀鎺ㄩ€佸埌 release/shared-release锛堜粎 shared-release锛夆啋 鎵?deps-* tag 渚?AsApp pin
```

## 绂佹

- 瑕嗙洊宸插彂 tag  
- 鏈崌 tag 闈欓粯鏇挎崲鍚岃矾寰勪簩杩涘埗  
- 鎻愪氦绗笁鏂瑰畬鏁存簮鐮佹爲  
- MinGW ABI 瑕嗙洊榛樿 MSVC ABI 鍒囩墖  
