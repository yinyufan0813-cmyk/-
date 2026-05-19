# 个人工作环境代码

这个仓库用于存放个人工作环境相关代码、外部项目加载入口和辅助脚本。

## 已加载的外部项目

### public-apis

来源仓库：`public-apis/public-apis`

本仓库已添加：

- `external/public-apis/README.md`：工作区说明
- `external/public-apis/upstream.json`：上游仓库元数据
- `scripts/sync-public-apis.ps1`：Windows 11 / PowerShell 同步脚本
- `scripts/sync-public-apis.sh`：macOS / Linux 同步脚本

### Windows 11 加载 public-apis

```powershell
powershell -ExecutionPolicy Bypass -File scripts\sync-public-apis.ps1
```

### macOS / Linux 加载 public-apis

```bash
bash scripts/sync-public-apis.sh
```

脚本会把上游仓库克隆或更新到：

```text
external/public-apis/repo
```

## 说明

`public-apis/public-apis` 是一个体量较大的社区维护开源项目。这里采用同步脚本加载方式，而不是手动复制全部文件，这样更方便后续更新到上游最新版。
