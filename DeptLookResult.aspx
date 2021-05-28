<%@ Page Language="C#" AutoEventWireup="true" %>

<%@ Register Assembly="WebControls" Namespace="OA.Web.UI.WebControls" TagPrefix="cc1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="">
<head>
    <script src="/static/js/perf/stub.js"></script>
    <title>部门选择</title>
    <meta http-equiv="PRAGMA" content="NO-CACHE" />
    <script src="/jslibrary/sfdc/main.js"></script>
    <script src="/jslibrary/jslabels/zh_CN.js"></script>
    <script src="/jslibrary/sfdc/SearchOnly.js"></script>
    <script>        window.sfdcPage = new GenericSfdcPage();
        UserContext.initialize({
            "networkId": "", "labelLastModified": "1415916830000", "locale": "zh_CN",
            "isDefaultNetwork": true, "timeFormat": "ah:mm", "today": "2014-11-21 上午10:24", "orgPreferences": [{ "index": 257, "name": "TabOrganizer", "value": true }], "userPreferences": [{ "index": 112, "name": "HideInlineEditSplash", "value": false }, { "index": 114, "name": "OverrideTaskSendNotification", "value": false }, { "index": 115, "name": "DefaultTaskSendNotification", "value": false }, { "index": 119, "name": "HideUserLayoutStdFieldInfo", "value": false }, { "index": 116, "name": "HideRPPWarning", "value": false }, { "index": 87, "name": "HideInlineSchedulingSplash", "value": false }, { "index": 88, "name": "HideCRUCNotification", "value": false }, { "index": 89, "name": "HideNewPLESplash", "value": false }, { "index": 90, "name": "HideNewPLEWarnIE6", "value": false }, { "index": 122, "name": "HideOverrideSharingMessage", "value": false }, { "index": 91, "name": "HideProfileILEWarn", "value": false }, { "index": 93, "name": "HideProfileElvVideo", "value": false }, { "index": 97, "name": "ShowPicklistEditSplash", "value": false }, { "index": 92, "name": "HideDataCategorySplash", "value": false }, { "index": 128, "name": "ShowDealView", "value": false }, { "index": 129, "name": "HideDealViewGuidedTour", "value": false }, { "index": 132, "name": "HideKnowledgeFirstTimeSetupMsg", "value": false }, { "index": 104, "name": "DefaultOffEntityPermsMsg", "value": false }, { "index": 135, "name": "HideNewCsnSplash", "value": false }, { "index": 101, "name": "HideBrowserWarning", "value": false }, { "index": 139, "name": "HideDashboardBuilderGuidedTour", "value": false }, { "index": 140, "name": "HideSchedulingGuidedTour", "value": false }, { "index": 180, "name": "HideReportBuilderGuidedTour", "value": false }, { "index": 183, "name": "HideAssociationQueueCallout", "value": false }, { "index": 194, "name": "HideQTEBanner", "value": false }, { "index": 193, "name": "HideChatterOnboardingSplash", "value": true }, { "index": 195, "name": "HideSecondChatterOnboardingSplash", "value": false }, { "index": 270, "name": "HideIDEGuidedTour", "value": false }, { "index": 282, "name": "HideQueryToolGuidedTour", "value": false }, { "index": 196, "name": "HideCSIGuidedTour", "value": false }, { "index": 271, "name": "HideFewmetGuidedTour", "value": false }, { "index": 272, "name": "HideEditorGuidedTour", "value": false }, { "index": 205, "name": "HideApexTestGuidedTour", "value": false }, { "index": 206, "name": "HideSetupProfileHeaderTour", "value": false }, { "index": 207, "name": "HideSetupProfileObjectsAndTabsTour", "value": false }, { "index": 213, "name": "DefaultOffArticleTypeEntityPermMsg", "value": false }, { "index": 214, "name": "HideSelfInfluenceGetStarted", "value": true }, { "index": 215, "name": "HideOtherInfluenceGetStarted", "value": false }, { "index": 216, "name": "HideFeedToggleGuidedTour", "value": false }, { "index": 268, "name": "ShowChatterTab178GuidedTour", "value": false }, { "index": 275, "name": "HidePeopleTabDeprecationMsg", "value": false }, { "index": 276, "name": "HideGroupTabDeprecationMsg", "value": false }, { "index": 224, "name": "HideUnifiedSearchGuidedTour", "value": false }, { "index": 226, "name": "ShowDevContextMenu", "value": true }, { "index": 227, "name": "HideWhatRecommenderForActivityQueues", "value": false }, { "index": 228, "name": "HideLiveAgentFirstTimeSetupMsg", "value": false }, { "index": 232, "name": "HideGroupAllowsGuestsMsgOnMemberWidget", "value": false }, { "index": 233, "name": "HideGroupAllowsGuestsMsg", "value": false }, { "index": 234, "name": "HideWhatAreGuestsMsg", "value": false }, { "index": 235, "name": "HideNowAllowGuestsMsg", "value": false }, { "index": 236, "name": "HideSocialAccountsAndContactsGuidedTour", "value": false }, { "index": 237, "name": "HideAnalyticsHomeGuidedTour", "value": false }, { "index": 238, "name": "ShowQuickCreateGuidedTour", "value": false }, { "index": 245, "name": "HideFilePageGuidedTour", "value": false }, { "index": 250, "name": "HideForecastingGuidedTour", "value": false }, { "index": 251, "name": "HideBucketFieldGuide", "value": false }, { "index": 263, "name": "HideSmartSearchCallOut", "value": false }, { "index": 265, "name": "HideSocialProfilesKloutSplashScreen", "value": false }, { "index": 273, "name": "ShowForecastingQuotaAttainment", "value": false }, { "index": 280, "name": "HideForecastingQuotaColumn", "value": false }, { "index": 301, "name": "HideManyWhoGuidedTour", "value": false }, { "index": 284, "name": "HideExternalSharingModelGuidedTour", "value": false }, { "index": 298, "name": "HideFileSyncBannerMsg", "value": false }, { "index": 299, "name": "HideTestConsoleGuidedTour", "value": false }, { "index": 302, "name": "HideManyWhoInlineEditTip", "value": false }, { "index": 303, "name": "HideSetupV2WelcomeMessage", "value": false }, { "index": 312, "name": "ForecastingShowQuantity", "value": false }, { "index": 313, "name": "HideDataImporterIntroMsg", "value": false }, { "index": 314, "name": "HideEnvironmentHubLightbox", "value": false }, { "index": 316, "name": "HideSetupV2GuidedTour", "value": false }, { "index": 317, "name": "HideFileSyncMobileDownloadDialog", "value": false }, { "index": 321, "name": "HideCustomEntityQuickActionCallout", "value": false }, { "index": 322, "name": "HideEnhancedProfileHelpBubble", "value": true }, { "index": 328, "name": "ForecastingHideZeroRows", "value": false }, { "index": 330, "name": "HideEmbeddedComponentsFeatureCallout", "value": false }, { "index": 341, "name": "HideDedupeMatchResultCallout", "value": false }, { "index": 340, "name": "HideS1BrowserUI", "value": false }, { "index": 346, "name": "HideS1Banner", "value": true }], "startOfWeek": "1", "isAccessibleMode": false, "ampm": ["上午", "下午"], "renderMode": "RETRO", "userId": "0059000000390Wh", "dateTimeFormat": "yyyy-M-d ah:mm", "dateFormat": "yyyy-M-d", "uiSkin": "Theme3", "language": "zh_CN", "siteUrlPrefix": ""
        });
    </script>
    <link href="/sCSS/31/sprites/Theme3/zh/base/zen-componentsCompatible.css" rel="stylesheet"
    type="text/css" />
    <link href="/sCSS/31/sprites/Theme3/zh/base/elements.css" rel="stylesheet" type="text/css" />
    <link href="/sCSS/31/sprites/Theme3/zh/base/common.css" rel="stylesheet" type="text/css" />
    <link href="/sCSS/31/sprites/Theme3/base/dStandard.css" rel="stylesheet" type="text/css" />
    <link href="/sCSS/31/sprites/Theme3/base/dCustom0.css" rel="stylesheet" type="text/css" />
    <link href="/sCSS/31/sprites/Theme3/zh/base/extended.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        //<![CDATA[
        try { (function () { var w = self, l, p, o; if (w && top) { for (; w !== top && (p = w.parent) && p !== w && (o = p.location) && o.protocol === (l = w.location).protocol && (o.host === l.host || (p.document && p.document.domain === w.document.domain)) ; w = p); if (w !== top) throw ""; } ({ f: function () { document.documentElement ? document.documentElement.style.display = "" : (!this.a && (this.a = 10), this.a < 1E5 && (window.sfdcRetryShowWindow = this) && setTimeout("sfdcRetryShowWindow.f()", this.a), this.a *= 2) } }.f()) })(); } catch (e) { if (top !== self) top.location = location; else throw e; }//]]></script>
    <link rel="shortcut icon" href="https://ap1..com/favicon.ico" />
    <script src="/jslibrary/sfdc/Security.js"></script>
    <script>        //  ClientHash.prototype.needsClientHash('sid_Client', '000000390Wh0000000yvHG', '124.202.191.9', '/servlet/servlet.ClientHashValidator?ResponseRequestedURL=%2F_ui%2Fcommon%2Fdata%2FLookupResultsFrame%3F_CONFIRMATIONTOKEN%3D74tklwJ1kpbiYkV_VMefjRpQMnNNXsNw7DZcPc4N32mDwN1iWtYerm5o4LluLbzzZC6lszXR2Vlqlnt8GHJxmAXEY8nJh.25XzeADpHcoCAdtgYsEBGJryRJ0PAm0jAcNcqYN9cN_jwY0AL8GXMMUXMlu3tQtgYHrU0xkr8Ff48GGP1yr16mA5IiiiRPNoqUN7V_TQ%253D%253D%26igdp%3D0%26lkenhmd%3DSEARCH_NAME%26lkfm%3DeditPage%26lknm%3Dcon4%26lksrch%3DEdge%2BCommunications%26lktp%3D001%262%3DEdge%2BCommunications%26country%3D%26zip%3D%26state%3D%26city%3D%26street%3D%2610%3D%2611%3D%2612%3D%26cancel%3D%2B%25E5%258F%2596%25E6%25B6%2588%2B');</script>
    <style>
        .hasMotif {
            margin:0;
        }
    * {
        margin: 0;
        padding: 0;
    }

    body, html {
        color: #333;
        height: 100%;
    }

    .clear {
        clear: both;
    }

    .head {
        background-color: #f2f2f2;
        height: 50px;
        line-height: 50px;
        border-bottom: 1px solid #dedede;
        position: absolute;
        width: 100%;
    }

        .head img {
            float: left;
            width: 30px;
            margin: 0 20px;
            margin-top: 10px;
        }

    .nav-item {
        float: left;
        height: 50px;
        line-height: 50px;
        padding: 0 20px;
        cursor: pointer;
    }

        .nav-item.active {
            color: #2db7f5;
            border-bottom: 3px solid #2db7f5;
        }

    .body-nav {
        float: left;
    }

    .body-search {
        float: right;
        margin-top: 10px;
    }

    .left {
        float: left;
    }

    .search-btn {
        border: 1px solid #dedede;
        padding: 0px 20px;
        height: 30px;
        line-height: 30px;
        cursor: pointer;
    }

    .search-input {
        height: 30px;
        border: 1px solid #dedede;
        border-right: 1px;
    }

        .search-input input {
            border: 0;
            outline: none;
            height: 28px;
            width: 100%;
        }

    .body-top {
        border-bottom: 1px solid #dedede;
        padding-right: 15px;
    }

    .main-item img {
        width: 40px;
        height: 40px;
    }

    .right {
        float: right;
    }

    .main-item {
        border-bottom: 1px solid #dedede;
        padding: 0px 20px;
    }

    .item-mi {
        margin-left: 20px;
        font-size:14px;
        line-height:40px;
        width:150px;
    }

    .item-right img {
        display: none;
    }

    .main-item.active img {
        display: block;
    }

    .main-item.active {
        background-color: #f2f2f2;
    }

    .main-item:hover {
        background-color: #f2f2f2;
        cursor: pointer;
    }

    .main {
        display: none;
    }

    .foot {
        border-top: 1px solid #dedede;
        position: absolute;
        bottom: 0px;
        width: 100%;
        padding-top: 20px;
        padding-bottom: 20px;
        z-index: 2;
        background-color: white;
    }

        .foot > div {
            float: right;
        }

            .foot > div > div {
                border: 1px solid #dedede;
                border-radius: 4px;
                float: left;
                margin-right: 15px;
                padding: 5px 15px;
                cursor: pointer;
            }

                .foot > div > div:hover {
                    background-color: #f2f2f2;
                }

    .shur {
        background-color: #0094ff;
        color: white;
    }

        .shur:hover {
            background-color: #20699c !important;
        }

    .body {
        float: left;
        width: 100%;
        padding-top: 51px;
        box-sizing: border-box;
        height: 100%;
        padding-bottom: 74px;
    }

    .body-right {
        float: left;
        width: 20%;
        border-left: 1px solid #dedede;
        box-sizing: border-box;
        padding: 51px 20px;
        height: 100%;
    }

        .body-right img {
            width: 14px;
            float: right;
            margin-top: 3px;
            margin-right: 8px;
            cursor: pointer;
        }

    .checked-item {
        border: 1px solid #dedede;
        border-radius: 4px;
        padding: 5px 0;
        padding-left: 10px;
        margin-top: 10px;
    }

        .checked-item:hover {
            background-color: #f2f2f2;
        }

    .main-item-group {
        border-bottom: 1px solid #dedede;
        padding: 5px 0;
        cursor: pointer;
    }

        .main-item-group:hover {
            background-color: #f2f2f2;
        }

    .body-main {
        overflow-y: auto;
        height: 100%;
        box-sizing: border-box;
        padding-bottom: 48px;
    }

    .panel-header {
        border-top: 0 !important;
    }

    #treePanel {
        border-bottom: 0 !important;
    }

    .panel.panel-htop {
        float: left;
    }

    .zuzhijiegou-people,.changyongzu-people {
        float: left;
        box-sizing: border-box;
        height: 100%;
        overflow-y: auto;
    }

    #zuzhijiegou,#changyongzu{
        height: 100%;
        width: 100%;
    }
    #changyongzutree {
        border-right:1px solid #dedede;
        float:left;
        overflow:auto;
        height: 100%;
        box-sizing:border-box;
    }
    .main-item .name {
        color:blue;
    }
    #new{
        height:100%;
    }
    .hightsearch-head{
        padding:20px;
        border-bottom:1px solid #dedede;
    }
    .hightsearch-head>div{
        padding:0 20px;
        height:50px;
        line-height:50px;
    }
    .search-btn.active{
        background-color:#0094ff;
        color:white;
    }
    .search-name{
        display:inline-block;
        width:60px;
    }
    .hightsearch-head .search-input{
        border-right:1px solid #dedede;
        width:300px;
    }
    .hightsearch-head>div>div{
        padding:0 20px;
    }
    .hightsearch-footbtn{
        border-bottom:1px solid #dedede;
        height:65px;
        padding:15px 0;
        box-sizing:border-box;
    }
    .hightsearch-footbtn>div{
        width:300px;
        margin:0 auto;
        height:50px;

    }
    .hightsearch-footbtn>div div{
        border: 1px solid #dedede;
        border-radius: 4px;
        float: left;
        margin-right: 15px;
        padding: 8px 25px;
        cursor: pointer;
    }
    .hightsearch-footbtn>div div:hover{
        background-color:#f2f2f2;
    }
    .hightsearch-footbtn .hightsearch-shur{
        background-color: #0094ff;
        color:white;
    }
    .hightsearch-footbtn .hightsearch-shur:hover{
        background-color: #20699c;
    }
    .hightsearch-people{
        overflow:auto;
    }
    .hightsearch{
        display:none;
    }
    .list-head{
        border-bottom:1px solid #dedede;
        padding-left:20px;
        font-size:16px;
        background-color:#ddefff;
        position:absolute;
        width:100%;
        box-sizing:border-box;
    }
    .list-body{
        overflow:auto;
    }
</style>
</head>
<body onload="if(this.bodyOnLoad)bodyOnLoad();" onunload="if(this.bodyOnUnload)bodyOnUnload();"
    class="hasMotif lookupTab  LookupResultsFrame" onfocus="if(this.bodyOnFocus)bodyOnFocus();"
    onbeforeunload="if(this.bodyOnBeforeUnload){var s=bodyOnBeforeUnload();if(s)return s;}">
    <!-- Main Body Starts Here -->
    <input type="hidden" name="lkenhmd" id="lkenhmd" value="SEARCH_NAME" />
    <input type="hidden" name="lkfm" id="lkfm" value="<%=Request["lkfm"]%>" />
    <input type="hidden" name="lknm" id="lknm" value="<%=Request["lknm"]%>" />
    <input type="hidden" name="lktp" id="lktp" value="<%=Request["lktp"]%>" />
    <input type="hidden" name="lksrch" id="lksrch" value="<%=Request["lksrch"]%>" />            
    
               <div class="head">
        <img src="/img/images/Personal1.png" alt="部门" />
        <span>部门</span>
    </div>
    <div class="body">
        <div class="body-top">
            <div class="body-nav">
                <div class="nav-item active">组织结构</div>
                <div class="nav-item">列表</div>
                <div class="clear"></div>
            </div>
            <div class="body-search">
                <div class="search-input left">
                    <input type="type" name="name" value="" /></div>
                <div class="search-btn left lsearch">搜索</div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="body-main">
            <div class="maincontent">
                <div id="zuzhijiegou" class="main" style="display: block;"> 
                    <div id="treePanel" class="easyui-panel" title="组织结构" style="width: 100%; min-height: 0!important;">
                        <ul class="easyui-tree" id="organizationTree" style="display: block;">
                            <li></li>
                        </ul>
                    </div>
                    <div class="zuzhijiegou-people"></div>
                </div>
                <div id="latestusediv" class="main">
                    <div class="list-head">
                        <div class="item-mi left"><div>部门</div></div>
                        <div class="item-mi left"><div>上级部门</div></div>
                        <div class="clear"></div>
                    </div>
                    <div style="height:40px;"></div>
                    <div class="list-body">

                    </div>
                </div>
                <div id="searchpeoplediv" class="main">
                    <div class="list-head">
                        <div class="item-mi left"><div>部门</div></div>
                        <div class="item-mi left"><div>上级部门</div></div>
                        <div class="clear"></div>
                    </div>
                    <div style="height:40px;"></div>
                    <div class="list-body">

                    </div>
                </div>
            </div>
            <div class="hightsearch">
                <div class="hightsearch-head">
                    <div>
                        <div class="left">
                            <span class="search-name">用户名:</span>
                            <input class="search-input" type="" name="UserName" value="" />
                        </div>
                        <div class="left">
                            <span class="search-name">姓名:</span>
                            <input class="search-input" type="" id="FullName" name="FullName" value="" />
                        </div>
                    </div>
                    <div>
                        <div class="left">
                            <span class="search-name">工号:</span>
                            <input class="search-input" type="" id="EmployeeId" name="EmployeeId" value="" />
                        </div>
                        <div class="left">
                            <span class="search-name">岗位:</span>
                            <select class="search-input" type="" id="PostId" name="PostId" value="" />
                                <option value="">无</option>
                                <option value="123">123</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="hightsearch-footbtn">
                    <div>
                        <div class="hightsearch-shur">搜 索</div>
                        <div class="hightsearch-clear">重 置</div>
                        <div class="hightsearch-quite">取 消</div>
                    </div>
                    
                </div>
                <div class="hightsearch-people">
                    <div class="list-head">
                        <div class="item-mi left"><div>部门</div></div>
                        <div class="item-mi left"><div>上级部门</div></div>
                        <div class="clear"></div>
                    </div>
                    <div style="height:40px;"></div>
                    <div class="list-body">

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="foot">
        <div>
            <%--<div class="clearchook">清除</div>--%>
            <div class="quite">取消</div>
            <div class="shur">确定</div>
        </div>
    </div>
    
    <script src="/js/jquery/1.7.1/jquery.min.js"></script>
    <script src="/js/CommonUtils.js"></script>
    <link href="/easyui/themes/bootstrap/easyui.css" rel="stylesheet" />
    <link href="/easyui/themes/icon.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/easyui/js/treeLoader.js"></script>
    <script type="text/javascript" src="/easyui/js/GridEasy.js"></script>
    <script type="text/javascript" src="/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="/easyui/locale/easyui-lang-zh_CN.js"></script>
    <script>

        //头部导航
        $('.nav-item').click(function () {
            if ($(this).html() == '组织结构' || $(this).html() == '小组') {
                $('.body-main').css('overflow', 'hidden')
            } else {
                $('.body-main').css('overflow', 'auto')
            }
            $('.nav-item').removeClass('active');
            $(this).addClass('active');
            $('.main').hide();
            $('.main').eq($(this).index()).show();
            $('.main-item').removeClass('active')
            for (var i = 0; i < peoplename.length; i++) {
                $('.main-item[valueid=' + peoplename[i].valueId + ']').addClass('active')
            }
        })
        //列表
        searchpeople()
        //选人
        var peoplename = []
        function checkpeople() {
            $('.main-item').off()
            $('.main-item').click(function () {
                var EmployeeId = $(this).attr('EmployeeId')
                var name = $(this).find('.name').html()
                lookupControlPick(EmployeeId, name)
                window.close();

            })
        }
      
        //删除人
        function deletepeople() {
            
        }
        $('.clearchook').click(function () {
            $('.main-item').removeClass('active');
            peoplename = [];
        })
        //部门
        $(document).ready(function () {
            treeNode = new treeLoader("organizationTree", "organizationtree", treeItemClick);
            treeNode.init();
            var screenHeight = getClientHeight();
            $("#treePanel").height(screenHeight - 210);
            $('.zuzhijiegou-people').width($('.body').width() - 241)
            $('.changyongzu-people').width($('.body').width() - 241)
        })
        function treeItemClick(node) {
            var businessUnitId = node.id;
        }
        $('.search-input input').bind('keydown', function (e) {
          if (e.keyCode == 13) {
            $('.main').hide();
            $('#latestusediv').show();
            searchpeople()
          }
        })
        //搜索人
        function searchpeople(UserName, FullName, EmployeeId, PostId, type) {
            $('.body-main').css('overflow', 'auto')
            
            var search = $('.search-input input').val();
            var d = {
                search: search
            }
            if (UserName) {
                d.UserName = UserName
            }
            if (FullName) {
                d.FullName = FullName
            }
            if (EmployeeId) {
                d.EmployeeId = EmployeeId
            }
            if (PostId) {
                d.PostId = PostId
            }
            if (type == 1) {
              d.search = ''
            }
            ajaxMethodGetData('sys.businessunit.search', d, function (data) {
                $('#latestusediv .main-item').remove()
                for (var i = 0; i < data.length; i++) {
                    var res = data[i]
                    var imgurl = '/img/cal/1.png'
                    if (res.PhotoUrl && res.PhotoUrl != '') {
                        imgurl = res.PhotoUrl
                    }
                    
                    if (res.userName) {
                        var userName = res.userName
                    } else {
                        var userName = ''
                    }
                        var EmployeeId = res.id
                    
                    
                        $('#latestusediv .list-body').append('<div class="main-item" valueId="' + res.id + '"BusinessUnitIdName="' + res.BusinessUnitIdName + '"EmployeeId="' + EmployeeId + '">'
                        + '<div class="item-mi left">'
                            + '<div class="name">' + res.text + '</div>'
                        + '</div>'
                        + '<div class="clear"></div>'
                    + '</div>')
                }
                checkpeople();
            })
        }

        ////高级搜索
        //$('.search-btn').click(function () {
        //    if ($(this).hasClass('active')) {
        //        $('.hightsearch').hide()
        //        $('.maincontent').show()
        //        $(this).removeClass('active')
        //    } else {
        //        $('.hightsearch').show()
        //        $('.maincontent').hide()
        //        $(this).addClass('active')
        //    }
        //})

        $('.hightsearch-clear').click(function () {
            $('.hightsearch input').val('')
            $('.hightsearch option[value=""]').attr("selected", "selected");
        })
        $('.hightsearch-quite').click(function () {
            $('.hightsearch').hide()
            $('.maincontent').show()
            $('.search-btn').removeClass('active')
        })
        $('.hightsearch-shur').click(function () {
            var UserName = $('input[name="UserName"]').val()
            var FullName = $('input[name="FullName"]').val()
            var EmployeeId = $('input[name="EmployeeId"]').val()
            var PostId = $('select[name="PostId"]').val()
            searchpeople(UserName, FullName, EmployeeId, PostId, 1)
        })




        $('.lsearch').click(function () {
            $('.main').hide();
            $('#latestusediv').show();
            searchpeople()

        })
        $(window).resize(function () {
            window.location.reload()
        })
        $('.quite').click(function () {
            window.close();
        })
        $('.shur').click(function () {
            if ($('.nav-item').eq(0).hasClass('active')) {
                var data = $('#organizationTree').tree('getSelected')
                lookupControlPick(data.id, data.text)

            }
        })

        $('.hightsearch-people').height($(window).height() - 379)
        $('.maincontent .list-body').height($(window).height() - 213)
        $('.hightsearch .list-body').height($(window).height() - 419)
    </script> 
    <!-- Body events -->
   <script type="text/javascript">
       /*选择值用这个*/
       function lookupControlPick(valId, valName) {
           var controlName = document.getElementById("lknm").value;
           var formName = document.getElementById("lkfm").value;

           //this.SearchForm, this.SearchFieldControl, entity.ID, entity.Name
           window.opener.lookupPick(formName, controlName + "_lkid", controlName, '', valId, valName, 'null', '')
           window.close()
       }
    </script>
    <script type="text/javascript">        function bodyOnLoad() { if (typeof (startSessionTimer) != 'undefined') { startSessionTimer(); }; if (window.PreferenceBits) { window.PreferenceBits.prototype.csrfToken = ""; }; } function bodyOnBeforeUnload() { } function bodyOnFocus() { } function bodyOnUnload() { }</script>
</body>
</html>
