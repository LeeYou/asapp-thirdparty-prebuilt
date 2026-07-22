# asapp-thirdparty-prebuilt

AsApp / ALS 平台 **第三方依赖制品仓**（业务唯一消费源）。

配套源码仓：[asapp-thirdparty-src](https://github.com/LeeYou/asapp-thirdparty-src)

## 布局（规格）

```text
{os}-{arch}-{linkage}-{config}/{package}/
MANIFEST.yaml
SHA256SUMS
licenses/
sbom/
cmake/AsAppThirdPartyConfig.cmake
```

示例切片：`windows-x64-static-release`

## 消费

业务仓将 `third_party` 指到本仓 **tag**（如 `deps-bootstrap`）或对应 commit。

## 分支

见 [`BRANCHING.md`](BRANCHING.md)。
