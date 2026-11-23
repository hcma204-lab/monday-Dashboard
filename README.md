# monday-Dashboard

RD1~7 角色任務台：依角色顯示 monday 看板的即時待辦，並提供 AI 助理（今日重點、問答、催辦草稿、週報）。

## 三種使用方式

| 方式 | monday 即時資料 | AI 助理 |
|---|---|---|
| claude.ai 的 Artifact（需被分享） | 自動連接 monday 連接器 | 自動使用登入的 Claude |
| 公開頁面（GitHub Pages） | 在「monday 設定」貼自己的個人 token | 需改用下面的本機版 |
| 本機版 `http://127.0.0.1:8788/` | 同上，貼個人 token | 自動綁定 Claude，不用貼連線碼 |

## 本機版安裝（要用 AI 的人）

需求：Node.js 18 以上、已登入的 Claude 桌面 App 或 Claude Code（公司 Claude 帳號）。

1. 按 Code → Download ZIP，解壓縮。
2. 雙擊 `start-claude-bridge.bat`（只想先試用）；想開機自動啟動，改雙擊 `install-bridge-autostart.bat`。
3. 瀏覽器開 `http://127.0.0.1:8788/`。第一次若尚未登入 Claude，按「設定 → 綁定我的 Claude 帳號」，用公司帳號登入一次。

下載的 `.bat` 可能被 Windows SmartScreen 警告，確認來源後選「仍要執行」。
橋接程式只接受本機連線（127.0.0.1），連線碼存在你的使用者資料夾，不會進入這個 repo。
