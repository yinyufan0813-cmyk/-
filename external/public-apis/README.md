# public-apis

This folder is the workspace entry point for the upstream GitHub repository:

- Source repository: `public-apis/public-apis`
- Clone URL: `https://github.com/public-apis/public-apis.git`
- Default branch: `master`
- Local workspace target: `external/public-apis/repo`

The upstream project is a community-curated list of public APIs across many categories. Use the sync scripts in this repository to load or update the source code locally.

## Load on Windows 11

```powershell
powershell -ExecutionPolicy Bypass -File scripts\sync-public-apis.ps1
```

## Load on macOS / Linux

```bash
bash scripts/sync-public-apis.sh
```

## Notes

The upstream repository is intentionally not copied manually into this workspace. Keeping it as a synced external source makes it easier to update and avoids stale duplicated content.
