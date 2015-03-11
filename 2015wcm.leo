<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<?xml-stylesheet ekr_test?>
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="amd.20150311153738.42" a="E"><vh>@settings</vh>
<v t="amd.20150311153738.43"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="amd.20150311153738.44"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="amd.20150311153738.40"><vh>2015 網際內容管理</vh></v>
<v t="amd.20150311153738.71" a="E"><vh>Leo Editor 專案</vh>
<v t="amd.20150311153738.72"><vh>edit 節點指令不能使用子節點</vh></v>
</v>
<v t="amd.20150311153738.45" a="E"><vh>Gitbook 電子書</vh>
<v t="amd.20150311153738.70"><vh>結合 disqus 留言功能</vh></v>
<v t="amd.20150311153738.46" a="E"><vh>@path ./</vh>
<v t="amd.20150311153738.47"><vh>@edit SUMMARY.md</vh></v>
<v t="amd.20150311153738.48"><vh>@edit README.md</vh></v>
<v t="amd.20150311153738.49"><vh>@edit Gitbook 簡介.md</vh></v>
<v t="amd.20150311153738.53"><vh>@edit Github Wiki 與 Gitbook.md</vh></v>
<v t="amd.20150311153738.54"><vh>@edit Github Wiki 與 Leo Editor.md</vh></v>
<v t="amd.20150311153738.55"><vh>@edit _內容發佈與時效性.md</vh></v>
<v t="amd.20150311153738.56"><vh>@edit Python 與 markdown.md</vh></v>
<v t="amd.20150311153738.50"><vh>@edit _安裝wordpress.md</vh></v>
<v t="amd.20150311153738.52"><vh>@edit gitbook上的markdown檔案.md</vh></v>
<v t="amd.20150311153738.51"><vh>@edit OpenShift 平台上安裝 WP.md</vh></v>
</v>
</v>
<v t="amd.20150311153738.57" a="E"><vh>OpenShift 網站程式</vh>
<v t="amd.20150311153738.59" a="E"><vh>@path ./</vh>
<v t="amd.20150311153738.60" a="E"
expanded="amd.20150311153738.62,"><vh>@file wsgi.py</vh></v>
<v t="amd.20150311153738.69"><vh>@edit setup.py</vh></v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="amd.20150311153738.40">2015 Spring 網際內容管理課程 Leo 專案

Github 倉儲: https://github.com/coursemdetw/2015wcm

倉儲對應 OpenShift 網站: 將會有 /cmsimply 與 pygroup 等兩個子連結

Gitbook 電子書: http://coursemde.gitbooks.io/2015wcm/

Wordpress 課程網站: http://coursemde.gitbooks.io/2015wcm/

CMSimply 課程網站: http://cd-cadp.rhcloud.com/

Waffle.io 專案管理: https://waffle.io/coursemdetw/2015wcm

</t>
<t tx="amd.20150311153738.42"></t>
<t tx="amd.20150311153738.43">QSplitter::handle {
    background-color: #CAE1FF; /* lightSteelBlue1 */
}

QStackedWidget {
    /* background-color:lightpink; */
    border-color: red;
    padding: 0px;
    /* border-width: 0px; */
    /* background-color: yellow; */
}

QSplitter {
    border-color: white;
    background-color: white;
    border-style: solid;
}

QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="amd.20150311153738.44">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="amd.20150311153738.45">當 Gitbook 電子書與 Github 倉儲設定同步之後, 協同編輯者, 可以利用 Github 倉儲中的 collaborators 設定, 直接在與 Github 倉儲對應的近端 Leo Editor 專案中編輯 Gitbook 電子書的內容, 其中 

SUMMARY.md 為電子書目錄, README.md 則為內定的 Introduction 章節對應檔案.</t>
<t tx="amd.20150311153738.46"></t>
<t tx="amd.20150311153738.57">第1階段直接將  2015cd 的 CherryPy 程式 outline 複製到此, 將要納入 CMSimply 與 PyGroup 等兩套內容管理系統</t>
<t tx="amd.20150311153738.59"></t>
<t tx="amd.20150311153738.70">{
    "plugins": ["disqus"],
    "pluginsConfig": {
        "disqus": {
            "shortName": "your_disqus_short_name"
        }
    }  
}</t>
<t tx="amd.20150311153738.71"></t>
<t tx="amd.20150311153738.72"></t>
</tnodes>
</leo_file>
