<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>附件上传</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"/>
    <meta name="renderer" content="webkit"/>
    <meta name="force-rendering" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <link rel="stylesheet" href="/public/libs/layui-v2.5.6/layui/css/layui.css">
    <link href="/public/libs/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="/admin/static/css/main.css" rel="stylesheet"/>
</head>
<body>
<div class="p-container p-add-panel">
    <form class="layui-form" lay-filter="addForm">
        <div class="layui-form-item">
            <label class="layui-form-label">文件:</label>
            <div class="layui-input-block">
                <input type="text" name="file" style="cursor: pointer;" id="file" required readonly  lay-verify="required" placeholder="点击选择文件" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">描述:</label>
            <div class="layui-input-block">
                <textarea placeholder="请输入文件描述" name="desc" id="desc" class="layui-textarea" style="resize: none"></textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">标识:</label>
            <div class="layui-input-block">
                <input type="text" name="flag" id="flag" placeholder="请输入文件标识" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="add-btn-box">
            <button type="button" id="add" class="layui-btn layui-btn-normal p-submit-btn">确定</button>
            <button type="button" class="layui-btn layui-btn-primary p-cancel-btn">取消</button>
        </div>
    </form>
</div>

<script src="/public/libs/jquery/jquery-3.5.1.min.js"></script>
<script src="/public/libs/layui-v2.5.6/layui/layui.all.js"></script>
<script src="/admin/pages/attach/js/attach_upload.js"></script>
</body>
</html>