<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title>意见</title>
	<meta charset="utf-8" />
    <link rel="stylesheet" href="/cdn/vant_index.css" />
    <style>
        *{
            margin:0;
            padding:0;
        }
        .wrap .title{
            font-size:16px;
            font-weight:bold;
            background:#f4f4f4;
            padding:10px 10px;
            box-sizing:border-box;
        }
        .center .row{
            display:flex;
            padding:10px;
            border-bottom:1px solid #e2e3e5;
        }
        .center  .label{
            width:60px;
            font-size:14px;
            padding-right:10px;
        }
        .center .label span{
            color:red;
        }
        .center .row input{
            flex:1;
            width:100%;
            border:none;
            outline:0;
        }
        .textWrap{
            padding:10px;
            border-bottom:1px solid #e2e3e5;
        }
        .textWrap textarea{
            width:100%;
            height:200px;
            outline:0;
            padding:5px 10px;
            box-sizing:border-box;
            border:1px solid #e2e3e5;
            overflow:auto;
            border:none;
        }
        .footer{
            width:100%;
            position:fixed;
            bottom:20px;
            text-align:center;
        }
        .footer .btn{
            width:300px;
            line-height:40px;
            border-radius:5px;
            text-align:center;
            background:#3399ff;
            border:none;
            outline:0;
            color:#fff;
        }
    </style>
</head>
<body>
    <div id="vueApp">
        <div class="wrap">
            <div class="title">意见信息</div>
            <div class="center">
                <div class="row">
                    <p class="label">
                        <span>*</span>
                        接收人
                    </p>
                    <input type="type" name="name" value="李新华101651，赵永生190100，郑红宣101879" disabled="true" />
                </div>
                <div class="row">
                    <p class="label">
                        <span>*</span>
                        标题
                    </p>
                    <input type="text" name="name" v-model="subject" placeholder="请输入标题" />
                </div>
                <div class="textWrap">
                    <p class="label">
                        <span>*</span>
                        内容
                    </p>
                    <textarea placeholder="请输入内容" v-model="CommentText"></textarea>
                </div>
            </div>
            <div class="footer">
                <button class="btn" @click="getSubmit">确定</button>
            </div>
        </div>
    </div>
</body>
<script src="/js/vue/vue.js"></script>
<script src='/cdn/jquery.min.js'></script>
<script src=' /mui/dist/js/sm.js'></script>
<script src=' /mui/dist/js/sm-extend.js'></script>
<script src="/cdn/vue.min.js"></script>
<script src="/cdn/vant.min.js"></script>
<script src="/cdn/axios.min.js"></script>
<script src="/cdn/qs.min.js"></script>
<script>
    var vue = new Vue({
        el: '#vueApp',
        data() {
            return  {
                sessionKey: '',
                subject:'',
                CommentText:''
            }
        },
        created(){
            this.sessionKey = this.getQueryVariable('sessionKey');
        },
        methods: {
            getSubmit() {
                axios({
                    method: 'get',
                    url: '/rest?method=' + 'chatter.status.update&sessionKey=' + this.sessionKey + '&status=' + this.CommentText + '&visible=3&groupid=' + 'ffebfe04-1fb7-4f16-ab04-6384175a5f5e'
                }).then(res => {
                    console.log(res);
                    this.subject = '';
                    this.CommentText = '';
                    if (res.data.status == 1) {
                        this.$toast('发送成功');
                    }
                })
            },
            getQueryVariable(variable) {
                var query = window.location.search.substring(1);
                var vars = query.split("&");
                for (var i = 0; i < vars.length; i++) {
                    var pair = vars[i].split("=");
                    if (pair[0] == variable) { return pair[1]; }
                }
                return (false);
            }
        }
    })
    Vue.use(vant.Toast);
</script>
</html>
