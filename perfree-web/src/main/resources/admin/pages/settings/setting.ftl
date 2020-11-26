<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>用户</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"/>
    <meta name="renderer" content="webkit"/>
    <meta name="force-rendering" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <link rel="stylesheet" href="/public/libs/layui-v2.5.6/layui/css/layui.css">
    <link href="/public/libs/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="/admin/static/css/main.css" rel="stylesheet"/>
    <link href="/admin/pages/settings/css/setting.css" rel="stylesheet"/>
</head>
<body class="layui-layout-body">
<div class="p-container">
    <div class="layui-card">
        <div class="layui-card-body">
            <form class="layui-form" action="">
                <div class="layui-form-item">
                    <label class="layui-form-label">网站名称</label>
                    <div class="layui-input-block">
                        <input type="text" name="WEB_NAME" required  lay-verify="required" placeholder="请输入网站名称" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">网站Logo</label>
                    <div class="layui-input-block">
                        <div class="p-upload-box" id="WEB_LOGO">
                                <input type="hidden" name="WEB_LOGO" value="">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">网站域名</label>
                    <div class="layui-input-block">
                            <input type="text" name="WEB_SITE" value="" placeholder="请输入网站域名" autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">网站标题</label>
                    <div class="layui-input-block">
                        <input type="text" name="WEB_TITLE" placeholder="请输入网站标题" autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">网站副标题</label>
                    <div class="layui-input-block">
                        <input type="text" name="WEB_SUB_TITLE" placeholder="请输入网站副标题" autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">META关键字</label>
                    <div class="layui-input-block">
                        <textarea name="WEB_META_KEYWORD" placeholder="请输入META关键字,英文逗号分割" class="layui-textarea"></textarea>
                    </div>
                </div>


                <div class="layui-form-item">
                    <label class="layui-form-label">META描述</label>
                    <div class="layui-input-block">
                        <textarea name="WEB_META_DESC" placeholder="请输入META描述" class="layui-textarea"></textarea>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">版权号</label>
                    <div class="layui-input-block">
                        <input type="text" name="WEB_COPYRIGHT_NUM" placeholder="请输入版权号,中国区网站需要备案号" autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">版权信息</label>
                    <div class="layui-input-block">
                        <textarea name="WEB_COPYRIGHT" placeholder="请输入版权信息" class="layui-textarea"></textarea>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit lay-filter="optionForm">保存设置</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="/public/libs/jquery/jquery-3.5.1.min.js"></script>
<script src="/public/libs/layui-v2.5.6/layui/layui.all.js"></script>
<script src="/public/js/main.js"></script>
<script>
    let layer,form;
    layui.use(['layer','form'], function() {
        layer = layui.layer;
        form = layui.form;
        form.on('submit(optionForm)', function(data){
            $.ajax({
                type: "POST",
                url: "/admin/setting/save",
                contentType:"application/json",
                data: JSON.stringify(data.field),
                success:function(d){
                    if (d.code === 200){
                        parent.layer.msg("保存成功", {icon: 1})
                    } else {
                        layer.msg(d.msg, {icon: 2});
                    }
                },
                error: function (data) {
                    layer.msg("保存失败", {icon: 2});
                }
            });
            return false;
        });
    });
</script>
</body>
</html>