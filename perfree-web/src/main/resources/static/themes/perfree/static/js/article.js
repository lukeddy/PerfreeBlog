initViewer();
initComment();
hljs.initHighlightingOnLoad();
/**
 * 初始化图片查看
 */
function initViewer() {
    const articleContentDetail = document.getElementById('a-article-content-detail');
    if (articleContentDetail){
        new Viewer(articleContentDetail, {
            url: 'src'
        });
    }
}

/**
 * 初始化数学公式
 */
function initMatch() {
    renderMathInElement(document.body,
        {
            delimiters: [
                {left: "$$", right: "$$", display: true},
                {left: "$", right: "$", display: false}
            ]
        }
    );
}
/**
 * 初始化评论
 */
function initComment() {
    layui.config({
        base: '/static/public/libs/layuiComponents/'
    }).extend({
        notice: 'notice/notice'
    })
    // 评论框初始化
    layui.use(['form','notice','layer'], function(){
        const form=layui.form,notice = layui.notice,layer=layui.layer;
        notice.options = {
            closeButton:true,//显示关闭按钮
            debug:false,//启用debug
            positionClass:"toast-top-right",//弹出的位置,
            showDuration:"300",//显示的时间
            hideDuration:"1000",//消失的时间
            timeOut:"2000",//停留的时间
            extendedTimeOut:"1000",//控制时间
            showEasing:"swing",//显示时的动画缓冲方式
            hideEasing:"linear",//消失时的动画缓冲方式
            iconClass: 'toast-info', // 自定义图标，有内置，如不需要则传空 支持layui内置图标/自定义iconfont类名
            onclick: null, // 点击关闭回调
        };

        //监听form提交
        form.on('submit(comment)', function(data){
            let content = $("#comment-edit").val();
            if(content == null || content === "" || content === undefined){
                notice.error("请填写评论内容");
                return false;
            }
            let loadIndex = layer.load();
            $.ajax({
                type: "POST",
                url: "/comment/submitComment",
                contentType: "application/json",
                data: JSON.stringify(data.field),
                success: function (res) {
                    if (res.code === 200) {
                        notice.success("评论成功");
                        $("#pid").val('');
                        $("input[name='userName']").val('');
                        $("input[name='email']").val('');
                        $("input[name='website']").val('');
                        $("#comment-edit").val('');
                        $(".m-comment-box-title").after($("#m-comment-edit"));
                        $(".m-comment-tip").show();
                        $(".m-comment-cancel-revert").hide();
                        $("#commentsBox").load("/article/"+data.field.articleId+" #comments",null,function(){
                            location.hash = "#comment-"+ res.data.id;
                            layer.close(loadIndex);
                        });
                    } else {
                        layer.close(loadIndex);
                        notice.error(res.msg);
                    }
                },
                error: function () {
                    layer.close(loadIndex);
                    notice.error("评论失败");
                }
            });
            return false;
        });
    });

    // 回复按钮点击事件
    $('#commentsBox').on('click','.m-comment-detail-revert-btn',function() {
        $(this).parent().parent().append($("#m-comment-edit"));
        $(".m-comment-tip").hide();
        $(".m-comment-cancel-revert").show();
        $("#pid").val($(this).attr('data-id'));
    });

    // 取消回复
    $('#commentsBox').on('click','.m-comment-cancel-revert',function() {
        $(".m-comment-box-title").after($("#m-comment-edit"));
        $(".m-comment-tip").show();
        $(".m-comment-cancel-revert").hide();
        $("#pid").val('');
    });
}