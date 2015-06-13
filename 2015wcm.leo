<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<?xml-stylesheet ekr_test ?>
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
<v t="amd.20150331230554.1"><vh>@button new to wp</vh></v>
<v t="amd.20150331230609.1"><vh>@button edit to wp</vh></v>
<v t="2015.20150413160156.1"><vh>@button get from wp</vh>
<v t="2015.20150413160156.2"><vh>程式設計考量</vh></v>
</v>
<v t="amd.20150311153738.71" a="E"><vh>Leo Editor 專案</vh>
<v t="amd.20150311153738.72"><vh>edit 節點指令不能使用子節點</vh></v>
</v>
<v t="amd.20150311153738.45" a="E"><vh>Gitbook 電子書</vh>
<v t="amd.20150311153738.70"><vh>結合 disqus 留言功能</vh></v>
<v t="amd.20150311153738.46" a="E"><vh>@path ./</vh>
<v t="amd.20150311153738.47"><vh>@edit SUMMARY.md</vh></v>
<v t="2015.20150613142625.1"><vh>@edit 2015wcm_g8_w15.md</vh></v>
<v t="2015.20150514233407.1"><vh>@edit 2015wcm.md</vh></v>
<v t="2015.20150513093949.1"><vh>@edit 2015wcm_g8_w11.md</vh></v>
<v t="2015.20150602215642.1"><vh>@edit 2015wcm_g9.md</vh></v>
<v t="2015.20150513093816.1"><vh>@edit 2015wcm_g8.md</vh></v>
<v t="2015.20150602215921.1"><vh>@edit 2015wcm_g8_w13.md</vh></v>
<v t="2015.20150517110624.1"><vh>@edit 2015wcm_g8_w12.md</vh></v>
<v t="2015.20150610233515.1"><vh>@edit 2015wcm_g8_w14.md</vh></v>
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
<v t="amd.20150311153738.57"><vh>OpenShift 網站程式</vh>
<v t="amd.20150311153738.59" a="E"><vh>@path ./</vh>
<v t="amd.20150311153738.60" a="E"
expanded="amd.20150311153738.62,"><vh>@file wsgi.py</vh></v>
<v t="amd.20150311153738.69"><vh>@edit setup.py</vh></v>
</v>
</v>
<v t="amd.20150331230020.1" a="E"><vh>利用 Leo Editor 作為 Wordpress client</vh>
<v t="amd.20150331231546.1"><vh>下方節點標題為網誌網址, 內容則為帳號與密碼所在路徑</vh></v>
<v t="2015.20150413160349.1"><vh>Windows 下的帳號密碼檔案</vh></v>
<v t="amd.20150331230020.3" a="E"><vh>demo-2015course.rhcloud.com</vh>
<v t="amd.20150331230825.1"><vh>使用 @url</vh></v>
<v t="amd.20150331230324.1"><vh>@url demo 網站</vh></v>
<v t="amd.20150331230218.1"><vh>寫網誌的格式</vh></v>
<v t="amd.20150331231100.1"><vh>如何送出網誌</vh></v>
<v t="amd.20150331231122.1"><vh>如何編輯網誌</vh></v>
<v t="amd.20150331230020.4" a="E"><vh>已經都第六週了</vh>
<v t="amd.20150331231451.1"><vh>文章 id</vh></v>
</v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="2015.20150413160156.1">@language python
#coding: utf-8
import xmlrpc.client
# 導入 html 模組, 使用 html.unescape 轉換 html 特殊符號
import html
 
#################################
# Open a file
fo = open(p.parent().b, "r+")
data = []
for line in fo.readlines():
    data.append(line)
fo.close()

# 從網誌節點的 parent().h 取得 wp_url
# 從網誌節點的 parent().b 取得帳號與密碼對應的文字檔案路徑
wp_url = "https://"+p.parent().h+"/xmlrpc.php"
wp_username = data[0]
wp_password = data[1]
#################################

server = xmlrpc.client.ServerProxy(wp_url)

# 設法透過上述網誌網址, 帳號與密碼, 以及文章 id, 取回 categories, tags, 文章標題, 文章內容等資

# 從最後的 child 節點來取 post_id
origin_post = p.getLastChild()
post_id = origin_post.b
# 取回與 post_id 對應的網誌文章內容
blog_content = server.metaWeblog.getPost (post_id, wp_username, wp_password)
title = blog_content["title"]
# 這裡要利用 html.unescape 轉回特殊符號
description = html.unescape(blog_content["description"])
mt_text_more = html.unescape(blog_content["mt_text_more"])
if mt_text_more != "":
    post_content = description + "\n&lt;!--more--&gt;\n"+mt_text_more
else:
    post_content = description
# 所取回的 categories 為 list
categories = blog_content["categories"]
# 索取回的 tags 為以逗點隔開的字串
mt_keywords = blog_content["mt_keywords"]
p.h = title
categories_str = ""
for category in categories:
    # 假如不是最後一個
    if category != categories[len(categories)-1]:
        categories_str += category + ", "
    else:
        # 這是最後一個
        categories_str += category
p.b = "categories:"+categories_str+"\ntags:"+mt_keywords+"\n"+post_content
# 因為節點資料更新, commander 必須 redraw
c.redraw() 
g.es("資料已經取回")


</t>
<t tx="2015.20150413160156.2">俱備取回資料的權限

透過子節點的文章 id 與網誌網址, 以 xmlrpc 協定進行連線

取回 categories, tags, 文章標題與文章內容, 還有作者帳號?

分別按照格式, 將取回的資料放入對應節點

</t>
<t tx="2015.20150413160349.1">必須修改 /home/amd/Desktop/demo-2015course.txt

為 Windows 放置能夠修改 Wordpress 網誌內容的帳號與密碼對應檔案</t>
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
<t tx="amd.20150311153738.71">研究 Leo Editor 從以下四個 .leo 檔案入手:

leo/scripts/scripts.leo

leo/doc/LeoDocs.leo

leo/doc/quickstart.leo

leo/dist/leoDist.leo</t>
<t tx="amd.20150311153738.72"></t>
<t tx="amd.20150331230020.1">首節點標題為 Wordpress site 的 domain name, 程式會加上 https:// 頭與 /xmlrpc.php 尾

首節點對應的 body 內容為儲存發佈訊息的帳號密碼檔案的存放路徑

新增 post 結束後, 程式會在訊息發佈節點的下屬, 新增一個"文章 id" 內文存放該對應內容的 post_id, 當 post 對應節點內容更動後, 就是透過此一 id 執行資料更新

將 new-to-wp 與 edit-to-wp 設為 buttons

記得在 WP 新增一個 author 帳號, 以便與 Leo Editor 中的 buttons 程式配合, 不要使用 site administrator 帳號.

為了配合網誌更新流程中, 使用者在瀏覽器中更新既有的網誌文章, 然後再透過 Leo Editor 對應專案進行改版, 此時使用者必須先從網誌取下特定文章的內容之後, 才能根據最新文章加以改版. 換言之, 這裡需要一個 update-from-wp 透過"文章 id" 取下文章的最新內容, 而非使用 Leo Editor 中的舊內容進行改版.</t>
<t tx="amd.20150331230020.3">/home/amd/Desktop/demo-2015course.txt</t>
<t tx="amd.20150331230020.4">category:Uncategorized
tags:python, 測試
這是第1週的摘要內容
[python]
for i in range(5):
    可以 = 5
    print (i,":",可以)
[/python]
這個程式的真正用途說明
這筆資料從 Leo Editor 送出.
再執行編輯
</t>
<t tx="amd.20150331230218.1">category:文章類別
tags:標籤用逗點隔開
第3行開始就是文章內容

目前的 categories 有:

</t>
<t tx="amd.20150331230324.1">http://demo-2015course.rhcloud.com</t>
<t tx="amd.20150331230554.1">@language python
#coding: utf-8
import xmlrpc.client
import datetime
import os

def get_cat_tag_content(data):
    data_list = data.split("\n")
    # 只有一項資料的 category 型別為字串
    category = data_list[0]
    # 只有一項資料的 tags 型別為字串
    tags = data_list[1]
    # 有多項資料的 content 型別為數列
    # 再將第3行之後的資料數列串回成以跳行隔開的資料
    content = "\n".join(data_list[2:])
    return category, tags, content
    
os.environ['TZ'] = 'Asia/Taipei'

#################################
# Open a file
fo = open(p.parent().b, "r+")
data = []
for line in fo.readlines():
    data.append(line)
    #print(line)
#print(data[0])
 
# Close opend file
fo.close()
 
# 從網誌節點的 parent().h 取得 wp_url
# 從網誌節點的 parent().b 取得帳號與密碼對應的文字檔案路徑
wp_url = "https://"+p.parent().h+"/xmlrpc.php"
wp_username = data[0]
wp_password = data[1]
#################################
wp_blogid = "0"
 
status_draft = 0
status_published = 1
 
server = xmlrpc.client.ServerProxy(wp_url)
 
title = p.h
#content = p.b
category_str, tags_str, content = get_cat_tag_content(p.b)
# 指定時間出版
'''
date_created = xmlrpc.client.DateTime(datetime.datetime.strptime("2013-01-01 00:00",
"%Y-%m-%d %H:%M"))
'''
# 以現在時間出版, 考慮與 Server 時間差八個小時 (480 分鐘), 因此要在 8 個小時前發表
date_created = xmlrpc.client.DateTime(datetime.datetime.strptime((datetime.datetime.now()- \
datetime.timedelta(minutes=480)).strftime('%Y-%m-%d %H:%M'),"%Y-%m-%d %H:%M"))
#categories = ["Uncategorized"]
#tags = ["python", "測試"]
categories = [category_str.split(":")[1]]
# 請注意, 因為 tags 用逗點隔開, 因此必須透過 split() 再分開成為 list 資料
tags = tags_str.split(":")[1].split(",")
data = {'title': title, 'description': content, 'dateCreated': date_created, 'categories': categories, 'mt_keywords': tags}
 
post_id = server.metaWeblog.newPost(wp_blogid, wp_username, wp_password, data, status_published)
# 利用最後的 child 節點來儲存 post_id
to_save_post_id = p.insertAsLastChild()    
to_save_post_id.b = post_id
to_save_post_id.h = "文章 id"
# 因為新增節點, commander 必須 redraw
c.redraw() 

g.es("post_id 為", post_id)
g.es("已經送出資料!")
'''
其他 metaWeblog 的用法:
metaWeblog.newPost (blogid, username, password, struct, publish) returns string(postid)
metaWeblog.editPost (postid, username, password, struct, publish) returns true
metaWeblog.getPost (postid, username, password) returns struct(blog content)
'''</t>
<t tx="amd.20150331230609.1">@language python
#coding: utf-8
import xmlrpc.client
import datetime
import os

def get_cat_tag_content(data):
    data_list = data.split("\n")
    # 只有一項資料的 category 型別為字串
    category = data_list[0]
    # 只有一項資料的 tags 型別為字串
    tags = data_list[1]
    # 有多項資料的 content 型別為數列
    # 再將第3行之後的資料數列串回成以跳行隔開的資料
    content = "\n".join(data_list[2:])
    return category, tags, content
    
os.environ['TZ'] = 'Asia/Taipei'
 
#################################
# Open a file
fo = open(p.parent().b, "r+")
data = []
for line in fo.readlines():
    data.append(line)
    #print(line)
#print(data[0])
 
# Close opend file
fo.close()

# 從網誌節點的 parent().h 取得 wp_url
# 從網誌節點的 parent().b 取得帳號與密碼對應的文字檔案路徑
wp_url = "https://"+p.parent().h+"/xmlrpc.php"
wp_username = data[0]
wp_password = data[1]
#################################
wp_blogid = "0"
 
status_draft = 0
status_published = 1
 
server = xmlrpc.client.ServerProxy(wp_url)
 
title = p.h
#content = p.b
category_str, tags_str, content = get_cat_tag_content(p.b)
# 指定時間出版
'''
date_created = xmlrpc.client.DateTime(datetime.datetime.strptime("2013-01-01 00:00",
"%Y-%m-%d %H:%M"))
'''
# 以現在時間出版, 考慮與 Server 時間差八個小時 (480 分鐘), 因此要在 8 個小時前發表
date_created = xmlrpc.client.DateTime(datetime.datetime.strptime((datetime.datetime.now()- \
datetime.timedelta(minutes=480)).strftime('%Y-%m-%d %H:%M'),"%Y-%m-%d %H:%M"))
#categories = ["Uncategorized"]
#tags = ["python", "測試"]
categories = [category_str.split(":")[1]]
# 請注意, 因為 tags 用逗點隔開, 因此必須透過 split() 再分開成為 list 資料
tags = tags_str.split(":")[1].split(",")
data = {'title': title, 'description': content, 'dateCreated': date_created, 'categories': categories, 'mt_keywords': tags}

# 設法取得原 post 的 id
origin_post = p.getLastChild()
post_id = origin_post.b
status = server.metaWeblog.editPost(post_id, wp_username, wp_password, data, status_published)

if status:
    g.es("資料已經更新!")
else:
    g.es("有問題, 資料沒有更新!")
'''
其他 metaWeblog 的用法:
metaWeblog.newPost (blogid, username, password, struct, publish) returns string(postid)
metaWeblog.editPost (postid, username, password, struct, publish) returns true
metaWeblog.getPost (postid, username, password) returns struct(blog content)
'''</t>
<t tx="amd.20150331230825.1">滑鼠點選 @url 所在節點, 接著
按住 Ctrl+Alt 然後按滑鼠左鍵</t>
<t tx="amd.20150331231100.1">滑鼠先選擇要送出的網誌節點, 然後再利用滑鼠按下上方的 new-to-wp 按鈕</t>
<t tx="amd.20150331231122.1">滑鼠先選擇要送出的網誌節點, 然後再利用滑鼠按下上方的 edit-to-wp 按鈕</t>
<t tx="amd.20150331231451.1">224</t>
<t tx="amd.20150331231546.1">帳號
密碼</t>
</tnodes>
</leo_file>
