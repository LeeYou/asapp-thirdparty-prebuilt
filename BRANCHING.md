# 分支策略 — asapp-thirdparty-prebuilt

## 长期分支

| 分支 | 用途 |
|------|------|
| `main` | 已发布制品；与正式 tag 对齐 |
| `develop` | CI/库管理推送新切片的集成分支 |

## Tag（权威消费点）

| Tag | 含义 |
|-----|------|
| `deps-bootstrap` | 仓骨架 + 首批试点切片 |
| `deps-YYYY.MM.DD` | 正式依赖集发布 |
| `deps-YYYY.MM.DD-N` | 同日修订 |

业务 submodule **必须钉 tag 或该 commit**，勿追浮动 `develop`。

## 工作流

```text
源码仓构建 → 同步到本仓 develop → 门禁 → 合并 main + 打 deps-* tag → 业务 bump
```

## 禁止

- 覆盖已发布 tag  
- 未升 tag 静默替换同路径二进制  
- 提交第三方完整源码树  
- MinGW ABI 覆盖默认 MSVC ABI 切片  
