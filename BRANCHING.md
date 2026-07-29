# 分支策略 — asapp-thirdparty-prebuilt

## 长期分支

| 分支 | 用途 |
|------|------|
| `main` | 已发布制品；与正式 tag 对齐 |
| `develop` | 完整矩阵（static/shared × debug/release）集成分支，供 CI/库管理推送新切片 |
| `release/shared-release` | **AsApp 消费分支**：仅保留 `*-shared-release` 切片（如 `linux-x64-shared-release`、`windows-x86-shared-release`） |

## Tag（权威消费点）

| Tag | 含义 |
|-----|------|
| `deps-bootstrap` | 仓骨架 + 首批试点切片 |
| `deps-YYYY.MM.DD` | 正式依赖集发布 |
| `deps-YYYY.MM.DD-N` | 同日修订 |

- AsApp **必须 pin `deps-*` tag**，且应指向 `release/shared-release` 上的提交（或从该分支打出的 tag）。
- 业务 submodule **必须锁 tag 或该 commit**，勿追浮动 `develop`。

## 工作流

```text
源码仓构建 → 同步到本仓 develop（全矩阵）→ 门禁 → 合并 main + 打 deps-* tag
         ↘ 按需裁剪推送到 release/shared-release（仅 shared-release）→ 打 deps-* tag 供 AsApp pin
```

## 禁止

- 覆盖已发 tag  
- 未升 tag 静默替换同路径二进制  
- 提交第三方完整源码树  
- MinGW ABI 覆盖默认 MSVC ABI 切片  