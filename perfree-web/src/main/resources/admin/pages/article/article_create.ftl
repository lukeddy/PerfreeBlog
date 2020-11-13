<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>面板</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"/>
    <meta name="renderer" content="webkit"/>
    <meta name="force-rendering" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <link href="/public/libs/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="/public/libs/editormd/css/editormd.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="/public/libs/layui-v2.5.6/layui/css/layui.css">
    <link href="/admin/static/css/main.css" rel="stylesheet"/>
    <link href="/admin/pages/article/css/article_create.css" rel="stylesheet"/>
</head>
<body class="layui-layout-body">
    <div class="p-container">
        <div class="layui-row">
            <form class="layui-form" action="">
                <div class="layui-col-xs12 layui-col-sm12 layui-col-md8">
                    <div class="layui-card">
                        <div class="layui-card-body">

                            <div class="layui-form-item">
                                <span class="p-form-tip">标题:</span>
                                <input type="text" name="title" required  lay-verify="required" placeholder="请输入文章标题" autocomplete="off" class="layui-input">
                            </div>

                            <div class="editor-switch-box">
                                当前正在使用<span id="currEditor">MarkDown</span>编辑器,点击 <a class="editor-switch-btn">切换富文本编辑器</a>
                            </div>
                            <div id="editorBox">
                                <div id="editor"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="layui-col-xs12 layui-col-sm12 layui-col-md4 p-container-right">
                    <div class="layui-card">
                        <div class="layui-card-header">
                            <div class="p-article-btn-box">
                                <button type="button" class="layui-btn layui-btn-normal">发布</button>
                                <button type="button" class="layui-btn layui-btn-primary">保存到草稿箱</button>
                            </div>
                        </div>
                        <div class="layui-card-body">
                            145456456
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <script src="/public/libs/jquery/jquery-3.5.1.min.js"></script>
    <script src="/public/libs/editormd/editormd.js"></script>
    <script src="/public/libs/wangeditor/wangEditor.js"></script>
    <script src="/public/libs/layui-v2.5.6/layui/layui.all.js"></script>
    <script src="/admin/pages/article/js/article_create.js"></script>
</body>
</html>