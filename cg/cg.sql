SET NAMES UTF8;
drop database if exists cg;
create database cg charset=utf8;
use cg;

#用户表
create table cg_user(
uid INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
uname VARCHAR(32), #用户名
upwd VARCHAR(32),   #用户密码
avatar VARCHAR(128) #头像
);
insert into cg_user
values('1','root','123456','');

#新闻种类表
create table cg_news_family(
fid INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(32) #种类名
);
insert into cg_news_family
values("1","公司新闻");
insert into cg_news_family
values("2","行业新闻");

#新闻表
create table cg_news(
nid INT PRIMARY KEY AUTO_INCREMENT,
family_id INT,  #新闻种类表id
FOREIGN KEY(family_id) REFERENCES cg_news_family(fid),
title VARCHAR(128), #标题
time Date, #发布时间
img VARCHAR(128) #图片
);
insert into cg_news
values("1","1","惠州华润小径湾艾美酒店【现场考察】","2017/04/21","img/index/index_15.jpg");
insert into cg_news
values("2","1","华润大学景观考察【大量细节】","2017-02-19","");
insert into cg_news
values("3","1","三亚亚龙湾洲际EVEN酒店景观设计-仓谷景观","2017-05-23","");
insert into cg_news
values("4","1","深圳南山华润城前脸-深南大道高新园段【仓谷景观】","2017-10-10","");
insert into cg_news
values("5","1","中央一号文件首次提出“田园综合体”是什么？","2017-08-03","");
insert into cg_news
values("6","1","【唐风建筑】在台湾东海大学读书是一种怎样的体验","2016-08-03","");
insert into cg_news
values("7","1","设计师教你正确打开近期爆火的那家【阳朔云庐】","2016-06-28","");
insert into cg_news
values("8","1","街拍日本乡下农村","2016-06-14","");
insert into cg_news
values("9","1","因为金城武，这条大道红遍台湾","2016-06-12","");
insert into cg_news
values("10","1","惠东双月湾-温德姆至尊豪廷景观设计","2016-06-06","");
insert into cg_news
values("11","1","这是大家所说的【掌生谷粒】","2016-05-11","");
insert into cg_news
values("12","1","你见过最丑的设计是什么？","2016-05-11","");
insert into cg_news
values("13","1","珠三角最佳（十字水度假村室内设计篇）-仓谷调研","2016-07-25","");
insert into cg_news
values("14","1","好评如潮的庄园酒店-围观美国西部的Sedona（度假型轻奢酒店）","2016-08-18","");
insert into cg_news
values("15","1","感受全台湾最雅的茶室--紫藤庐","2016-10-10","");
insert into cg_news
values("16","1","东方禅学的食养山房怎么样？(设计调研及饮食研究）","2016-09-09","");
insert into cg_news
values("17","1","百日庐山2017年度广东地区年会","2017-01-15","");
insert into cg_news
values("18","1","完美的景观水体怎样设计","2016-12-28","");
insert into cg_news
values("19","1","国土部：城里人不能够到农村买卖宅基地","2016-11-25","");
insert into cg_news
values("20","2","日本庭院的至高美学-幕府时期的日式庭园与枯山水","2017-10-10","");


#案例种类表
create table cg_case_family(
lid INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(64)
);
insert into cg_case_family
values("1","精品项目");
insert into cg_case_family
values("2","2013");
insert into cg_case_family
values("3","2014");
insert into cg_case_family
values("4","2015");
insert into cg_case_family
values("5","2016");
insert into cg_case_family
values("6","2017");
insert into cg_case_family
values("7","2018");


#案例表
create table cg_case(
cid INT PRIMARY KEY AUTO_INCREMENT,
case_family_id INT,
FOREIGN KEY(case_family_id) REFERENCES cg_case_family(lid),
img VARCHAR(128), #案例图片
title VARCHAR(128), #标题
design_time Date, #设计时间
landscape_area VARCHAR(64), #景观面积
plan VARCHAR(64) #项目进度
);
insert into cg_case
values("1","1","img/case/jp/d2018091010385257.jpg","华润城项目深南大道景观-深圳南山区","2016-03-12","1.9万平方米","即将完工");
insert into cg_case
values("2","1","img/case/jp/d2017081715493911.jpg","豪宅屋顶花园&茶室景观-深圳南山区","2017-06-12","","完工");
insert into cg_case
values("3","1","img/case/jp/d2017081712125951.jpg","亚龙湾洲际EVEN酒店-海南三亚","2016-12-12","","在建");
insert into cg_case
values("4","1","img/case/jp/d2017081717441731.jpg","海岸集团屋顶花园-深圳南山区","2017-12-12","","施工完工");
insert into cg_case
values("5","2","img/case/2013/d2017082115225816.jpg","香蜜湖山语清晖花园-深圳福田","2009-12-12","","完工");
insert into cg_case
values("6","2","img/case/2013/d2017082115113790.jpg","漳州碧湖生态园-福建漳州","2011-12-12","","完工");
insert into cg_case
values("7","2","img/case/2013/d2017011819041236.jpg","金秋华城住宅区景观-河南安阳","2013-06-12","","建成");
insert into cg_case
values("8","2","img/case/2013/d2017011818111986.jpg","党员服务中心-湖北武汉","2013-04-12","","建成");
insert into cg_case
values("9","2","img/case/2013/d2017082114380747.jpg","中粮生态谷展示区景观-北京","2013-04-12","","即将完工");
insert into cg_case
values("10","3","img/case/2014/d2017011817433344.jpg","小南庄新城综合项目-山西晋中","2013-04-12","","即将完工");
insert into cg_case
values("11","3","img/case/2014/d2017081716214516.jpg","嘉信公园大地住宅区-湖南永州","2014-04-12","6万平方米","即将完工");
insert into cg_case
values("12","3","img/case/2014/d2017011817063041.jpg","松滋安纳塔拉温泉度假酒店-湖北荆州","2013-04-12","约6万平方米","即将完工");
insert into cg_case
values("13","3","img/case/2014/d2017081715585956.jpg","南玻天域水岸住宅区景观-湖北宜昌","2014-04-12","","在建");
insert into cg_case
values("14","4","img/case/2015/d2017011819034460.jpg","温德姆至尊豪庭度假酒店-惠州双月湾","2015-04-12","","在建");
insert into cg_case
values("15","4","img/case/2015/d2017011817122935.jpg","东海岸华侨城酒店-海南海口","2015-04-12","约22万平方米","在建");
insert into cg_case
values("16","4","img/case/2015/d2017081716365511.jpg","桂花新村社区公园景观-深圳观澜","2015-04-12","","在建");
insert into cg_case
values("17","5","img/case/2016/d2017081717464272.jpg","亚龙湾洲际EVEN酒店-海南三亚","2016-04-12","","在建");
insert into cg_case
values("18","5","img/case/2016/d2017081718170281.jpg","华润城项目深南大道景观-深圳南山区","2016-04-12","1.9万平方米","在建");
insert into cg_case
values("19","6","img/case/2017/d2017081716255867.jpg","温泉路绿地改造-山东烟台","2017-04-12","","施工完成");
insert into cg_case
values("20","6","img/case/2017/d2017082112290365.jpg","海岸集团屋顶花园-深圳南山区","2017-04-12","","施工完成");
insert into cg_case
values("21","6","img/case/2017/d2017082112242741.jpg","西海湾花园屋顶花园景观-深圳南山区","2017-04-12","","即将完成");
insert into cg_case
values("22","7","img/case/2018/d2018091013180587.jpg","喜之郎总部大楼中庭景观","2018-04-12","","在建");
insert into cg_case
values("23","7","img/case/2018/d2018091012513344.jpg","罗湖区三横四纵景观-罗湖火车站","2018-04-12","","在建");
insert into cg_case
values("24","7","img/case/2018/d2018090901205159.jpg","华侨城东方花园禅意别墅庭院景观","2018-04-12","","在建");
insert into cg_case
values("25","7","img/case/2018/d2018091010472745.jpg","罗湖区三横四纵景观-文锦路","2018-04-12","","在建");
insert into cg_case
values("26","7","img/case/2018/d2018090901211691.jpg","喜之郎梅州锦绣首府1期","2018-04-12","","在建");
insert into cg_case
values("27","7","img/case/2018/d2018091016130661.jpg","海岸城西座茶室景观","2018-04-12","","施工完成");
insert into cg_case
values("28","7","img/case/2018/d2018091011183910.jpg","海口观澜湖九里","2017-04-12","","在建");
insert into cg_case
values("29","7","img/case/2018/d2018091015291825.jpg","海岸集团高层餐厅室外洗手间改造","2017-04-12","","施工完成");
insert into cg_case
values("30","7","img/case/2018/d2018091010295684.jpg","三亚·亚龙湾洲际EVEN酒店展示区","2017-04-12","","施工完成");
insert into cg_case
values("31","7","img/case/2018/d2018090901151793.jpg","喜之郎梅州锦绣首府-展示区","2018-04-12","","建成");



#应聘表
create table cg_apply(
aid INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(128), #职业名称
demand VARCHAR(1024), #任职要求
people TINYINT, #招聘人数
region VARCHAR(64), #工作地区
state_time Date, #开始时间
end_time VARCHAR(64) #时长
);
insert into cg_apply
values("1","项目经理","具有3年以上施工图经验或相当水平；<br/>对项目有综合操作和控制的能力，有较强的沟通协调能力；<br/>能独立进行一般难度的扩初设计；<br/>能独立进行项目汇报、独立处理设计和工程问题，独立进行施工配合、安排工作计划和人员配置；<br/>能与客户顺利沟通，能对设计提出一定合理化意见，参与方案讨论和设计；<br/>对植物设计，材料和施工方法有一定的了解，能给予设计师建议并与设计师协作确定材料。",
"2","深圳","2017-08-18","长期招聘");


#投聘表
create table cg_join(
jid INT PRIMARY KEY AUTO_INCREMENT,
position VARCHAR(64),	#职位
name VARCHAR(64),		#姓名
phone VARCHAR(64),		#电话
email VARCHAR(64),		#邮箱
note VARCHAR(1024),	    #备注
resume VARCHAR(1024)	#简历文件
);


#案例详情表
create table cg_case_details(
did	INT PRIMARY KEY AUTO_INCREMENT,  
case_id	INT,
FOREIGN KEY(case_id) REFERENCES cg_case(cid),
title VARCHAR(128),		#标题
design_time	Date,		#设计时间
address	VARCHAR(128),		#地址
introduce	VARCHAR(1024),   		#项目介绍
small_img 	VARCHAR(1024),            		#小图片路径
big_img 	VARCHAR(1024)            		#大图片路径
);
insert into cg_case_details
values("1","1","华润城项目深南大道景观-深圳南山区","2016-03-12","广东·深圳","作为华润置地在整个大中华区的最重点项目，仓谷景观与纽约高线公园设计大师詹姆斯·科纳共同参与设计，设计在结合沿街建筑立面上连续性较强的折线缎带形式，以软景塑造为主，合理划分商业与住宅区。通过与建筑空间紧密结合的特色乔木，以景观打造深南大道的城市名片与绿色窗口。","img/case_show/jp/2018091010375327.jpg,img/case_show/jp/2018091010375345.jpg,img/case_show/jp/2018091010375363.jpg,img/case_show/jp/2018091010375429.jpg,img/case_show/jp/2018091010375439.jpg","img/case_show/jp/d2018091010375327.jpg,img/case_show/jp/d2018091010375345.jpg,img/case_show/jp/d2018091010375363.jpg,img/case_show/jp/d2018091010375429.jpg,img/case_show/jp/d2018091010375439.jpg");
insert into cg_case_details
values("2","2","豪宅屋顶花园&茶室景观-深圳南山区","2017-06-12","深圳-南山区","项目从室内外使用情况与景观视线两方面着手，以营造现代禅意的休闲空间为导向，通过茶室与屋顶花园休闲区的互动与分隔，在原本有限空间中寻找趣味性，同时在保证室内外材质风格一致的情况下，体现空间整体沉稳、低调又不失贵气的氛围。","img/case_show/jp/2018091011380221.jpg,img/case_show/jp/2018091011380229.jpg,img/case_show/jp/2018091011380273.jpg,img/case_show/jp/2018091011380380.jpg","img/case_show/jp/d2018091011380221.jpg,img/case_show/jp/d2018091011380229.jpg,img/case_show/jp/d2018091011380273.jpg,img/case_show/jp/d2018091011380380.jpg");
insert into cg_case_details
values("3","3","亚龙湾洲际EVEN酒店-海南三亚","2016-06-12","海南·三亚","项目位于亚龙湾国际五星级酒店群，定位为“别墅+酒店俱乐部”。景观设计对应高端客户群体的审美与空间需求，简约大气的景观空间为业主提供明快、惬意的沟通环境。为具有现代感的景观空间注入传统材料的气息，也迎合了高端人士对景观品质的极高要求。","img/case_show/jp/2017071110270186.jpg,img/case_show/jp/2017071110270219.jpg,img/case_show/jp/2017071110432973.jpg,img/case_show/jp/2017081715384984.jpg","img/case_show/jp/d2017071110270186.jpg,img/case_show/jp/d2017071110270219.jpg,img/case_show/jp/d2017071110432973.jpg,img/case_show/jp/d2017081715384984.jpg");
insert into cg_case_details
values("4","4","海岸集团屋顶花园-深圳南山区","2017-06-12","深圳市南山区","作为海岸集团高管层使用的屋顶花园空间，仓谷设计团队通过对现场的考察，了解原场地景观空间的特性，分析景观空间中的不足，结合客户需求与场地实际情况，在尽量减少对原本空间的重建，推进景观提升改造进度的同时，为客户塑造了具有现代禅意的，休闲舒适、生态自然的屋顶花园景观空间。","img/case_show/jp/2017071111572359.jpg,img/case_show/jp/2017081715100647.jpg,img/case_show/jp/2017081715123985.jpg,img/case_show/jp/2017083011033694.jpg","img/case_show/jp/d2017071111572359.jpg,img/case_show/jp/d2017081715100647.jpg,img/case_show/jp/d2017081715123985.jpg,img/case_show/jp/d2017083011033694.jpg");
insert into cg_case_details
values("5","5","香蜜湖山语清晖花园-深圳福田","","深圳市南山区","","img/case_show/2013/2017082115230870.jpg,img/case_show/2013/2017082115230956.jpg,img/case_show/201
3/2017082115231092.jpg,img/case_show/2013/2017082115231187.jpg","img/case_show/2013/d2017082115230870.jpg,img/case_show/2013/d2017082115230956.jpg,img/case_show/201
3/d2017082115231092.jpg,img/case_show/2013/d2017082115231187.jpg");
insert into cg_case_details
values("6","22","喜之郎总部大楼中庭景观","2018-03-12","深圳市南山区","集甲级写字楼、高端商业和生态绿色技术于一体的高品质企业总部，公共空间景观与建筑外立面形式充分结合与呼应，结合绿色生态的主题，将囧哥延伸至建筑内部中庭，","img/case_show/2018/2018091013194816.jpg,img/case_show/2018/2018091013194867.jpg,img/case_show/201
8/2018091013194882.jpg,img/case_show/2018/2018091013194824.jpg","img/case_show/2018/d2018091013194816.jpg,img/case_show/2018/d2018091013194867.jpg,img/case_show/201
8/d2018091013194882.jpg,img/case_show/2018/d2018091013194824.jpg");



#新闻详情表
create table cg_news_details(
wid INT PRIMARY KEY AUTO_INCREMENT,  
news_id	INT,
FOREIGN KEY(news_id) REFERENCES cg_news(nid),
title VARCHAR(128),
details VARCHAR(10240) 
);

insert into cg_news_details
values("1","1","惠州华润小径湾艾美酒店【现场考察】","<p>广东首家国际五星艾美酒店落户！！！<br></p>
<p><img src='img/news_show/gs/20170421/20170421181724_96588.jpg'><br> </p> 
<p>作为起源于法国的酒店品牌，<strong>艾美隶属于全球最大饭店及娱乐休闲集团之一的喜达屋集团。喜达屋集团旗下拥有瑞吉、W、艾美、威斯汀、喜来登等众多国际顶级酒店，遍布全世界</strong>，素来以装修精美，陈设奢华及无与伦比的服务闻名于世。其中艾美酒店向来选址严苛，仅于世界主要城市和度假胜地选址，城市核心地段、最具发展潜力区域、环境优美片区为其必要条件。
</p>
<p><img src='img/news_show/gs/20170421/20170421181750_24957.jpg'> 
</p>
<p>现如今，艾美酒店已经成长为全球性酒店集团，艾美酒店与度假村在全球52个国家拥有120多家豪华星级酒店，主要位于世界顶级城市和度假村区域，覆盖欧洲、美洲、亚太地区、非洲乃至中东各国。<strong>在2005年的奢侈品牌指标调查中，艾美酒店排名于顶级15家豪华酒店品牌之列。</strong> 
</p>
<p><img src='img/news_show/gs/20170421/20170421181801_10571.jpg'> 
</p>
<p>目前国际五星艾美酒店已确定落户华润小径湾，在目前全中国仅七家的艾美酒店中，华润小径湾的是广东首家，而且将成为深圳东唯一国际超五星级度假酒店。<strong>华润小径湾拥有广东首家国际五星艾美酒店，说明该项目在地段、发展潜力以及环境等方面，都已经获得了这一国际顶级酒店品牌的高度认可。</strong> 
</p>
<p><br></p>
<p><img src='img/news_show/gs/20170421/20170421181822_35054.jpg'> 
</p>
<p><br></p>
<p>华润小径湾的艾美酒店由英国Foster+Partners福特斯公司倾力设计，建筑模拟海鸥展翅姿态，唯美、灵动，充分保证室内私密，也创造了拥抱私人沙滩、海景的最佳视野。 
</p>
<p><br></p>
<p><img src='img/news_show/gs/20170421/20170421181845_22167.jpg'> 
</p>
<p> &nbsp; 华润小径湾的艾美酒店景观由泰国的TROP设计完成！ </p>
<p> &nbsp; 注重设计，轻施工造价！ </p>
<p><br></p>
<p> &nbsp; 仔细考察和参观了艾美酒店、小径湾和华润大学【已建成】，这几个项目同为华润开发，项目地址相隔而不远，整体风格上小径湾和艾美更加现代一致，三个项目在种植上最常用的为星花、翠芦莉【含屋顶花园部分】。 
</p>
<p> &nbsp; 乔木主要以鸡蛋花、柚子树、冬青一类造型乔木为主！ </p>
<p> &nbsp; 盐碱地使用的地被为天门冬，灌木常用大片木麻黄【修剪】<br> 
</p>
<p>华润大学及小径湾后续会连载进来！<br> </p>
<p><img src='img/news_show/gs/20170421/20170421181918_90551.jpg'><br></p>
<p><br></p>
<p>海量泳池区的细节奉上！ </p>
<p><br></p>
<p><img src='img/news_show/gs/20170421/20170421181936_16968.jpg'> </p>
<p>水体标高处理细致！<br></p>
<p><img src='img/news_show/gs/20170421/20170421182008_35795.jpg' > 
</p>
<p><br></p>
<p><img src='img/news_show/gs/20170421/20170421182027_51706.jpg'></p>
<p><img src='img/news_show/gs/20170421/20170421182041_81897.jpg'></p>
<p>细节施工到位！<br></p>
<p><img src='img/news_show/gs/20170421/20170421182101_87297.jpg'><br>
</p>
<p><img src='img/news_show/gs/20170421/20170421182110_99011.jpg'> </p>
<p><br></p>
<p>软装选择【直线，现代简约】<br></p>
<p><img src='img/news_show/gs/20170421/20170421182125_67609.jpg'> 
</p>
<p><br></p>
<p>不同材料的搭配【台阶防滑处理、细部倒圆角】 </p>
<p><br></p>
<p><img src='img/news_show/gs/20170421/20170421182152_23103.jpg'> </p>
<p><br></p>
<p>再来看看后院部分的种植区细节！<br></p>
<p><img src='img/news_show/gs/20170421/20170421182206_10222.jpg'><br></p>
<p>  
</p>
<p><img src='img/news_show/gs/20170421/20170421182218_60688.jpg'> </p>
<p><img src='img/news_show/gs/20170421/20170421182231_30923.jpg'> 
</p>
<p><img src='img/news_show/gs/20170421/20170421182256_49009.jpg'> </p>
<p><br></p>
<p>绿色的植物是木麻黄，海滩适用品种！<br></p>
<p><img src='img/news_show/gs/20170421/20170421182307_92317.jpg'> 
</p>
<p><br></p>
<p>粗矿的材料，细致的施工<br></p>
<p><img src='img/news_show/gs/20170421/20170421182336_68856.jpg'> </p>
<p><img src='img/news_show/gs/20170421/20170421182401_11376.jpg'><img src='img/news_show/gs/20170421/20170421182415_50124.jpg'> 
</p>
<p><br></p>
<p>两层植物搭配【下面的星花，上面的是翠芦莉】夜景照明灯会不会稍大了一点！<br></p>
<p><img src='img/news_show/gs/20170421/20170421182451_80587.jpg'><img src='img/news_show/gs/20170421/20170421182453_36128.jpg'><img src='img/news_show/gs/20170421/20170421182456_52574.jpg'></p>
<p ><br>
</p>
<p>石材铺贴真的是笔直啊！<br></p>
<p><img src='img/news_show/gs/20170421/20170421182729_57455.jpg'> 
</p>
<p><br></p>
<p>扶手非常不起眼，还是被我捕捉到了！ 
</p>
<p><br></p>
<p><img src='img/news_show/gs/20170421/20170421182743_94905.jpg'> 
</p>
<p><br></p>
<p>再来一些细节！！！<br></p>
<p><img src='img/news_show/gs/20170421/20170421183114_36990.jpg' ><img src='img/news_show/gs/20170421/20170421183119_90285.jpg'><img src='img/news_show/gs/20170421/20170421183122_28218.jpg'><img src='img/news_show/gs/20170421/20170421183124_36584.jpg'><br></p>
<p><br></p>
<p> 此次考察是带着项目的问号来考察，所以分享的照片细节相对比较多，后续会陆续分享华润大学、小径湾！</p>            
");