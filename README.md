#Introduction of 2015WCM

問題: gitbook editor 好像目前無法在 Ubuntu 環境下的 Firefox 使用

在 Ubuntu 中使用 google-chrome-stable 啟動的瀏覽器則可以啟用 Gitbook 線上編輯.

處理方法: 只能與 Github 倉儲設定同步後, 在 Github 倉儲中進行內容編輯

SUMMARY.md 格式

    # Summary

    * [Introduction](README.md)
    
在 Markdown 格式中, 若要保留代碼原有格式, 只要在各行前面以 4 個空白縮排即可.
上述的 SUMMARY.md 格式內容的呈現就是範例.
而多用戶直接在 Github 倉儲中執行電子書內容的協同編輯, 必須要克服資料內容所可能產生的衝突, 假如是在 Gitbook 網際編輯器中, 則可利用所見即所得的方式進行編輯, 但是若有多名用戶, 同時在 Gitbook 與 Github 倉儲中執行內容修改, 則仍可能衍生資料丟失.
