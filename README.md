# monday-Dashboard

RD1~7 角色任務台：依角色顯示 monday 看板的即時待辦，並提供 AI 助理（今日重點、問答、催辦草稿、週報）。

## 公開頁面

GitHub Pages 上的版本只有靜態的任務說明。monday 即時資料與 AI 功能需要在 claude.ai 以 Artifact 開啟，才能使用你自己的 monday 連線與 Claude 帳號。

## 本機橋接（只有用檔案或本機網址開啟時才需要）

1. 雙擊 `start-claude-bridge.bat`，黑色視窗會顯示連線碼。
2. 在頁面「AI 助理 → 設定」貼上連線碼。
3. 連線碼存在你的使用者資料夾，不會進入這個 repo。

需求：Node.js 18 以上，並已登入 Claude 桌面 App 或 Claude Code。
