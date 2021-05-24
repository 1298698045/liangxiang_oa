<%@ Page Language="C#" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title>意见列表</title>
	<meta charset="utf-8" />
    <link rel="stylesheet" href="/cdn/vant_index.css" />
    <style>
        *{
            margin:0;
            padding:0;
        }
        #vueApp{
            min-height:100vh;
            background:#f4f4f4;
            padding-top:1px;
        }
        .avatar{
            width:40px;
            height:40px;
            line-height:40px;
            border-radius:50%;
            background:#3399ff;
            color:#fff;
            text-align:center;
            font-size:12px;
        }
        .panel{
            background:#fff;
            margin-top:20px;
        }
        .panel:first-child{
            margin-top:0;
        }
        .panel .headInfo{
            display:flex;
            align-items:center;
            padding:10px;
        }
        .headInfo .info{
            flex:1;
            margin-left:10px;
        }
        .headInfo .info .name{
            font-size:14px;
            color:#333;
        }
        .headInfo .info .depart{
            color:#999999;
            font-size:12px;
        }
        .cont{
            padding:10px;
        }
        .operation{
            display:flex;
            justify-content:space-around;
            align-items:center;
            border-top:1px solid #e2e3e5;
            font-size:12px;
            padding:12px 0;
        }
    </style>
</head>
<body>
<input type="hidden" id="sessionKey"  name="sessionKey" value="<%=Request["sessionKey"]%>">
    <div id="vueApp">
        <div class="panel" v-for="(item,index) in listData" :key="index" @click="getDetail(item)">
            <div class="headInfo">
                <div class="avatar">{{item.name}}</div>
                <div class="info">
                    <p class="name">{{item.OwningUserName}}</p>
                    <p class="depart">
                        {{item.DeptName}} {{item.CreatedOn}}
                    </p>
                    <p class="more"></p>
                </div>
            </div>
            <div class="cont">
                {{item.Description}}
            </div>
            <div class="operation">
                <p>阅读数量</p>
                <p>评论</p>
                <p @click.stop="getLike(item)">点赞</p>
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
<script src="/js/CommonUtils.js"></script>
<script>
    var vue = new Vue({
        el: '#vueApp',
        data() {
            return {
                listData: [],
                sessionKey:''
            }
        },
        created() {
            this.sessionKey = getQueryVariable('sessionKey');
            this.getQuery();
        },
        methods: {
            getQuery() {
                axios({
                    method: 'get',
                    url: '/rest?method=' + 'chatter.status.search&sessionKey=' + this.sessionKey + '&pageNumber=1&pageNumber=' + '100'
                }).then(res => {
                    this.listData = res.data.listData;
                    this.listData.map(item=> {
                        item.name = setSlice(item.OwningUserName);
                        return item;
                    })
                })
            },
            getDetail(item) {
                window.location.href = '/suggestion/suggestDetail.html?id=' + item.ChatterId + '&sessionKey=' + this.sessionKey
            },
            getLike(item) {
                axios({
                    method: 'get',
                    url: '/rest?method=' + 'object.comment.like&sessionKey=' + this.sessionKey + '&id=' + item.ChatterId + '&action=like&ObjTypeCode=6000'
                }).then(res => {
                    this.$toast('提交成功');
                })
            }
        }
    })
    Vue.use(vant.Toast);
</script>
</html>
