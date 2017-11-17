-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-09-25 15:39:05
-- 服务器版本： 5.7.17-log
-- PHP Version: 7.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL COMMENT '主键id自增长',
  `admin_name` char(16) NOT NULL COMMENT '信息管理员姓名',
  `admin_passwd` char(32) NOT NULL COMMENT '管理员密码',
  `admin_tel` char(11) NOT NULL COMMENT '管理员手机号',
  `admin_loginnum` int(11) NOT NULL DEFAULT '0' COMMENT '登录次数',
  `admin_lastlogin` datetime NOT NULL COMMENT '最后一次登录时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员信息表';

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_passwd`, `admin_tel`, `admin_loginnum`, `admin_lastlogin`) VALUES
(1, '超级管理员', 'e10adc3949ba59abbe56e057f20f883e', '18419954050', 0, '2017-09-20 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL COMMENT '主键id，自增长',
  `comment_person_id` int(11) NOT NULL COMMENT '评论者id',
  `news_id` int(11) NOT NULL COMMENT '被评论信息的id（外键）',
  `comment_content` text NOT NULL COMMENT '评论的内容',
  `comment_time` datetime NOT NULL COMMENT '评论的时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论表';

--
-- 转存表中的数据 `comment`
--

INSERT INTO `comment` (`comment_id`, `comment_person_id`, `news_id`, `comment_content`, `comment_time`) VALUES
(1, 1, 6, ' 我坐在水屋下边的平台看着大海，吹着海风，真的是太喜欢了。夜晚有好多小白鲨鱼，好多种鱼。', '2017-09-22 16:07:30'),
(2, 1, 6, '我有一头小毛驴', '2017-09-22 16:08:59'),
(3, 1, 6, '我是某某某', '2017-09-22 17:22:15'),
(4, 1, 6, '而通过如何导入', '2017-09-22 17:40:56'),
(5, 1, 22, '今天真的是好天气哦', '2017-09-22 20:01:05'),
(6, 1, 6, 'fsdayrtyh', '2017-09-25 11:06:25'),
(7, 1, 6, 'wode ', '2017-09-25 11:07:00'),
(8, 1, 12, '我的天哪', '2017-09-25 11:26:20'),
(9, 1, 12, '真的是', '2017-09-25 11:36:38'),
(10, 1, 6, '高大上突然规范化', '2017-09-25 11:53:55'),
(11, 1, 6, '申达股份大红包', '2017-09-25 11:58:38'),
(12, 1, 6, '大哥', '2017-09-25 11:59:26');

-- --------------------------------------------------------

--
-- 表的结构 `mycolumn`
--

CREATE TABLE `mycolumn` (
  `cate_id` int(11) NOT NULL COMMENT '主键id，自增长',
  `user_id` int(11) NOT NULL COMMENT '外键，用户id',
  `cate_name` char(120) NOT NULL COMMENT '栏目名称'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL COMMENT '主键id自增长',
  `user_id` int(11) NOT NULL COMMENT '发布者id(外键)',
  `news_title` char(128) NOT NULL COMMENT '标题',
  `cate_id` int(11) NOT NULL COMMENT '栏目id(外键)',
  `news_create_date` datetime NOT NULL COMMENT '发布时间',
  `news_content_text` text NOT NULL COMMENT '发布的文字内容',
  `news_picture` text NOT NULL COMMENT '图片的URL',
  `news_video` text NOT NULL COMMENT '视频的URL',
  `news_comment_num` int(8) NOT NULL DEFAULT '0' COMMENT '评论的人数',
  `news_share_num` int(8) NOT NULL DEFAULT '0' COMMENT '分享人数',
  `news_type` int(2) NOT NULL DEFAULT '0' COMMENT '0:日志 1:图片 2：视频',
  `recom` int(11) NOT NULL DEFAULT '1' COMMENT '推荐到首页  默认1为推荐到首页'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='动态表';

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`news_id`, `user_id`, `news_title`, `cate_id`, `news_create_date`, `news_content_text`, `news_picture`, `news_video`, `news_comment_num`, `news_share_num`, `news_type`, `recom`) VALUES
(6, 3, '今天星期三', 1, '2017-09-20 14:53:09', '<p>我们一起去玩耍吧<img src="http://img.baidu.com/hi/jx2/j_0007.gif"/></p>', '', '1', 0, 0, 0, 1),
(12, 3, '去吧，皮卡丘', 1, '2017-09-20 19:12:33', '<p><span style="color: rgb(133, 133, 133); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;</span><a target="_blank" href="https://www.duanwenxue.com/article/4641893.html" style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); outline: none; text-decoration-line: none; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">一个人面对外面的世界，需要的是窗子;一个人面对自我时，需要的是镜子。通过窗子能看见世界的明亮，使用镜子能看见自己的污点。其实，窗子或镜子并不重要，重要的是你的心。你的心明亮，世界就明亮;你的心如窗，就看见了世界;你的心如镜，就观照了自我。</a><img src="http://img.baidu.com/hi/face/i_f30.gif"/></p>', 'http://localhost/project/upload/image/20170920/1505905947__null-546a5778d0ca3e62.jpg', '1', 0, 0, 0, 1),
(8, 3, '星期五你要去去干吗？', 1, '2017-09-20 15:44:58', '<p>为何不去出去转转？<img src="http://img.baidu.com/hi/jx2/j_0015.gif"/></p>', 'http://localhost/project/upload/image/20170920/1505893483__QQ图片20170307215725.png', '1', 0, 0, 0, 1),
(9, 3, '星期天你准备好了吗？', 1, '2017-09-20 15:49:15', '<p><span style="background-color: rgb(0, 176, 240);"><strong>约上小伙伴一起去玩耍吧<img src="http://img.baidu.com/hi/jx2/j_0028.gif"/></strong></span></p>', 'http://localhost/project/upload/image/20170920/1505893749__暴风截图20174135395918.jpg', '1', 0, 0, 0, 1),
(10, 3, '梦想还是要有的，万一实现了呢', 1, '2017-09-20 15:54:21', '<p>你长得漂亮说什么都是对的</p>', 'http://localhost/project/upload/image/20170920/1505894057__暴风截图201731945429285.jpg', '1', 0, 0, 0, 1),
(11, 3, '小白鲨', 1, '2017-09-20 16:56:47', '<p>我坐在水屋下边的平台看着大海，吹着海风，真的是太喜欢了。夜晚有好多小白鲨鱼，好多种鱼。</p>', 'http://localhost/project/upload/image/20170920/1505897793__QQ图片20170307215725.png', '1', 0, 0, 0, 1),
(13, 3, '一切皆有可能', 1, '2017-09-20 19:14:46', '<p><span style="color: rgb(133, 133, 133); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;</span><a target="_blank" href="https://www.duanwenxue.com/article/4641892.html" style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); outline: none; text-decoration-line: none; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">锻炼自己钢铁般的意志，挑战“不可能”打垮“做不到”，越是艰难险阻，越是勇往直前。以自己勇敢的精神在任何艰难险阻面前都不退缩。克服恐惧，是我们走向成功的第一步。做到全力以赴，就可以再奋斗中成长，在风险中获得意外的收获。</a><img src="http://img.baidu.com/hi/jx2/j_0028.gif"/></p>', 'http://localhost/project/upload/image/20170920/1505906070__00-12-20-20141118044828734.jpg', '1', 0, 0, 0, 1),
(14, 3, '低调奢华有内涵', 1, '2017-09-20 19:15:35', '<p><span style="color: rgb(133, 133, 133); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;</span><a target="_blank" href="https://www.duanwenxue.com/article/4641889.html" style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); outline: none; text-decoration-line: none; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;这年头，低调才是最大的炫耀。低调可以让人安全。晒幸福容易惹来嫉妒，也容易适得其反。万一有天有个变化，那自己难有台阶下。正如“快乐和痛苦是邻居，快乐如果太大声，会吵着痛苦，而痛苦太大声，却吵不着快乐，因为痛苦是聋子。”同样，如果幸福晒得太早，也容易吵着不幸。</a></p>', '', '1', 0, 0, 0, 1),
(15, 3, '没事儿多说两句', 1, '2017-09-20 19:16:26', '<p><span style="color: rgb(133, 133, 133); font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;</span><a target="_blank" href="https://www.duanwenxue.com/article/4641886.html" style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); outline: none; text-decoration-line: none; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;生活中因为有了沟通，才出现了冰释前嫌、和睦相处、门庭若市??等四字词语，我们的生活才更美好。生活中不能没有了沟通，就像傲视苍穹的红杉不能没有了坚固的根基，芳香四溢的鲜花不能没有给予它自信的阳光。</a></p>', 'http://localhost/project/upload/image/20170920/1505906184__249db185a4fb731f.jpg', '1', 0, 0, 0, 1),
(16, 3, '人丑就要多读书，没事儿就多敲敲代码', 1, '2017-09-20 19:18:28', '<p><a target="_blank" href="https://www.duanwenxue.com/article/4641885.html" style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); outline: none; text-decoration-line: none; font-family: &quot;Microsoft Yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;欣赏生活，是一种豁达，是在不如意的时候为自己找到快乐的出口。东晋著名诗人陶渊明在官朝的种种专制压迫，社会官职给自己带来了巨大压力的情况下毅然决定辞官隐居，从而不再感受世道之乱。他来到了农家田园，从而开始了另一种惬意的生活，他发现了生活的亮点，体验到了官位所不能带给他的快乐。于是后来有了“采菊东篱下，悠然见南山”的千古名句，为世人所传诵。</a></p>', 'http://localhost/project/upload/image/20170920/1505906305__-1d5695da51282310.jpg', '1', 0, 0, 0, 1),
(17, 3, '不断追寻，寻找', 1, '2017-09-21 11:43:41', '<p><span style="font-family: Verdana, Arial, Tahoma; font-size: 14px; background-color: rgb(255, 255, 255);">我来到这个世界为的是看太阳， 和蔚蓝色的田野。 我来到这个世界为的是看太阳， 和连绵的群山。&nbsp;&nbsp;&nbsp; 我来到这个世界为的是看大海， 和百花盛开的峡谷。 我与世界签订了和约， 我是世界的真主。&nbsp;&nbsp;&nbsp; 我战胜了冷漠无言的冰川， 我创造了自己的理想。 我每时每刻都充满了启示， 我时时刻刻都在歌唱。&nbsp;&nbsp;&nbsp; 我的理想来自苦难， 但我因此而受人喜爱。 试问天下谁能与我的歌声媲美？ 无人、无人媲美。&nbsp;&nbsp;&nbsp; 我来到这个世界为的是看太阳， 而一旦天光熄灭， 我也仍将歌唱……歌颂太阳 直到人生的最后时光！ --巴尔蒙特 《为了看看阳光，我来到世上》</span><img src="http://img.baidu.com/hi/youa/y_0040.gif"/></p>', 'http://localhost/project/upload/image/20170921/1505965415__null1700af2d52efda64.jpg', '1', 0, 0, 0, 1),
(18, 3, '坚持多久', 1, '2017-09-21 11:44:57', '<p><span style="font-family: Verdana, Arial, Tahoma; font-size: 14px; background-color: rgb(255, 255, 255);">我们要怀有一种健康而活泼的心情，善待自己的生命！要用自己的热情去呵护，去浇灌自己的生命！要用坚强的信念告慰自己，即使生活的道路困难重重，也要微笑面对，从容走过。</span><img src="http://img.baidu.com/hi/jx2/j_0006.gif"/></p>', 'http://localhost/project/upload/image/20170921/1505965493__null42c20f9c80dcfedd.jpg', '1', 0, 0, 0, 0),
(19, 3, '心情说', 1, '2017-09-21 11:59:20', '<p><span style="font-family: Verdana, Arial, Tahoma; font-size: 14px; background-color: rgb(255, 255, 255);">在前进的旅途中，崎岖而又充满希望，失望而又不满诱惑。亲爱的朋友，不要因惧怕抖落满身的疲惫而失去奋进的勇气;不要因为滂沱泪眼的弥漫而扑灭燃烧的激情;不要因为漂浮不定的思绪而颠覆了追求的真理。知道吗?亲爱的朋友，主宰这一切的并不是客观的外部环境，而需要的是你内心的那份宁静的守侯，拥有了这份宁静的美，一切的一切都灰飞烟灭。</span><img src="http://img.baidu.com/hi/jx2/j_0001.gif"/></p>', 'http://localhost/project/upload/image/20170921/1505966353__2-1501101122170-L.jpg', '1', 0, 0, 0, 1),
(20, 3, '星期四，你好', 1, '2017-09-21 12:00:24', '<p><span style="font-family: Verdana, Arial, Tahoma; font-size: 14px; background-color: rgb(255, 255, 255);">&nbsp;不吃油腻的东西，让身体更清洁;不做不可及的梦，让睡眠更安恬;不穿不合脚的鞋，让步伐更悠闲;不跟无谓的潮流走，让情绪更宁静;不缅怀无法回头的过去，让生活更愉悦用心去爱，真诚去交，不求深刻，只求简单。简单每一天，愉悦每一天。</span></p>', 'http://localhost/project/upload/image/20170921/1505966420__249db185a4fb731f.jpg', '1', 0, 0, 0, 0),
(21, 3, '明天会更好', 1, '2017-09-21 14:16:55', '<p><span style="font-family: Verdana, Arial, Tahoma; font-size: 14px; background-color: rgb(255, 255, 255);">天空是略灰的蓝，楼房是褪色的粉，尽管一切看上去都是那么死寂，但怀揣梦想的心是鲜红的，是跳动的，是充满电的，是不会死的，让电流经过每一个细胞把他们唤醒！</span><img src="http://img.baidu.com/hi/jx2/j_0071.gif"/></p>', 'http://localhost/project/upload/image/20170921/1505974610__Screenshot_2017-02-15-23-20-03-087_com.tencent.qqlive.jpg', '1', 0, 0, 0, 1),
(22, 3, '今天是个好日子', 1, '2017-09-22 19:59:17', '<p>这里是默认信息</p>', 'http://localhost/com/upload/image/20170922/1506081549__6.jpg', '1', 0, 0, 0, 1),
(23, 3, 'Aimee', 1, '2017-09-24 21:41:07', '<p>这里是默认信息</p>', 'http://localhost/project/upload/image/20170924/1506260444__tooopen_sl_175006363154.jpg', '1', 0, 0, 0, 0),
(24, 3, '快要疯掉了', 1, '2017-09-25 11:10:10', '<p>这里是默认信息湿哒哒好一点</p>', 'http://localhost/project/upload/image/20170925/1506309005__5.jpg', '1', 0, 0, 0, 1),
(25, 3, '我的输的', 1, '2017-09-25 11:40:46', '<p>这里是默认信息点撒个人所得</p><p><img src="http://localhost/project/upload/image/20170925/1506310789__5.jpg" title="1506310789__5.jpg"/></p><p><img src="http://localhost/project/upload/image/20170925/1506310789__6.jpg" title="1506310789__6.jpg"/></p><p><br/></p>', '', '1', 0, 0, 0, 1),
(26, 3, '适当私人', 1, '2017-09-25 11:52:35', '<p>这里是默认信多撒好特如虎添翼及京东发货呢挖几个普通人老顾客防守打法差点不会放过大撒高富帅大天狗息</p>', '', '1', 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `praise`
--

CREATE TABLE `praise` (
  `praise_id` int(11) NOT NULL COMMENT '主键id，主键自增长',
  `praise_person_id` int(11) NOT NULL COMMENT '点赞者id',
  `news_id` int(11) NOT NULL COMMENT '被点赞信息的id',
  `praise_time` datetime NOT NULL COMMENT '点赞的时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='点赞表';

--
-- 转存表中的数据 `praise`
--

INSERT INTO `praise` (`praise_id`, `praise_person_id`, `news_id`, `praise_time`) VALUES
(1, 1, 6, '2017-09-22 15:09:13'),
(2, 1, 6, '2017-09-22 15:09:15'),
(3, 1, 6, '2017-09-22 15:09:21'),
(4, 1, 6, '2017-09-22 15:10:28'),
(5, 1, 6, '2017-09-22 16:04:50'),
(6, 1, 6, '2017-09-22 16:09:14'),
(7, 1, 6, '2017-09-22 16:12:47'),
(8, 1, 6, '2017-09-22 16:18:39'),
(9, 1, 6, '2017-09-22 16:20:18'),
(10, 1, 6, '2017-09-22 16:20:58'),
(11, 1, 6, '2017-09-22 16:21:12'),
(12, 1, 6, '2017-09-22 16:24:54'),
(13, 1, 6, '2017-09-22 16:25:31'),
(14, 1, 6, '2017-09-22 17:21:48'),
(15, 1, 6, '2017-09-22 17:21:50'),
(16, 1, 6, '2017-09-22 17:21:58'),
(17, 1, 6, '2017-09-22 17:39:02'),
(18, 1, 22, '2017-09-22 20:00:43'),
(19, 1, 12, '2017-09-22 20:11:20'),
(20, 1, 12, '2017-09-22 20:11:21'),
(21, 1, 6, '2017-09-25 11:01:41'),
(22, 1, 6, '2017-09-25 11:03:08'),
(23, 1, 12, '2017-09-25 11:26:10'),
(24, 1, 12, '2017-09-25 11:26:11'),
(25, 1, 6, '2017-09-25 11:53:44'),
(26, 1, 6, '2017-09-25 11:53:45');

-- --------------------------------------------------------

--
-- 表的结构 `share`
--

CREATE TABLE `share` (
  `share_id` int(11) NOT NULL COMMENT '主键id,自增长',
  `share_person_id` int(11) NOT NULL COMMENT '分享者id',
  `news_id` int(11) NOT NULL COMMENT '被分享信息的id(外键)',
  `share_content` text NOT NULL COMMENT '分享的一句话',
  `share_time` datetime NOT NULL COMMENT '分享的时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分享表';

--
-- 转存表中的数据 `share`
--

INSERT INTO `share` (`share_id`, `share_person_id`, `news_id`, `share_content`, `share_time`) VALUES
(1, 1, 6, '这个真的不错', '2017-09-24 14:15:51'),
(2, 1, 12, '这张图不错', '2017-09-24 14:16:32'),
(3, 1, 8, '小青蛙', '2017-09-24 14:17:11'),
(4, 1, 13, '这个针对而是', '2017-09-24 14:17:51'),
(5, 1, 6, 'sagrst', '2017-09-25 11:08:53'),
(6, 1, 12, '大哥大', '2017-09-25 11:37:49'),
(7, 1, 12, '大哥大', '2017-09-25 11:48:33');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL COMMENT '主键ID,自增长',
  `user_nick` char(32) NOT NULL COMMENT '昵称',
  `user_passwd` char(32) NOT NULL DEFAULT 'MD5加密' COMMENT '用户密码',
  `user_email` text NOT NULL COMMENT '用户邮箱',
  `user_tel` char(11) NOT NULL COMMENT '用户手机号',
  `user_picture` text NOT NULL COMMENT '用户头像',
  `user_logintime` datetime NOT NULL COMMENT '注册时间',
  `user_loginnum` int(11) NOT NULL DEFAULT '0' COMMENT '登录次数',
  `user_ip` char(18) NOT NULL COMMENT '注册IP地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户信息表';

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`user_id`, `user_nick`, `user_passwd`, `user_email`, `user_tel`, `user_picture`, `user_logintime`, `user_loginnum`, `user_ip`) VALUES
(12, '好的', 'e10adc3949ba59abbe56e057f20f883e', '2213998689@qq.com', '18419957632', 'http://localhost/project/upload/image/20170924/1506264493__6.jpg', '2017-09-24 22:48:38', 2, '192.168.1.1'),
(13, '愤怒的小鸟', 'e10adc3949ba59abbe56e057f20f883e', '2568945689@qq.com', '18415684562', 'http://localhost/project/upload/image/20170925/1506301665__1.jpg', '2017-09-25 09:07:49', 2, '192.168.1.1'),
(14, '愤怒的小鸟', '123456', '2568945689@qq.com', '18415684562', 'http://localhost/project/upload/image/20170925/1506301985__4.jpg', '2017-09-25 09:13:13', 2, '192.168.1.1'),
(15, '小小鸟', 'e10adc3949ba59abbe56e057f20f883e', '2658485965@qq.com', '18568596236', 'http://localhost/project/upload/image/20170925/1506303590__9.jpg', '2017-09-25 09:39:55', 2, '192.168.1.1'),
(16, '小熊猫', '123456', '2568947123@qq.com', '18569587456', 'http://localhost/project/upload/image/20170925/1506305272__12.jpg', '2017-09-25 10:08:01', 2, '192.168.1.1'),
(17, '小熊猫', '123456', '2568947123@qq.com', '18569587456', 'http://localhost/project/upload/image/20170925/1506305272__12.jpg', '2017-09-25 10:09:10', 2, '192.168.1.1'),
(18, '加菲猫', '123456', '2568956458@qq.com', '18564236548', 'http://localhost/project/upload/image/20170925/1506305416__014.jpg', '2017-09-25 10:10:20', 2, '192.168.1.1'),
(19, '秋殇', '123456', '2548179546@qq.com', '15846985469', 'http://localhost/project/upload/image/20170925/1506305535__6.jpg', '2017-09-25 10:12:18', 2, '192.168.1.1'),
(20, '夏冬', '123456', '2569874589@qq.com', '15895689574', 'http://localhost/project/upload/image/20170925/1506305632__5.jpg', '2017-09-25 10:13:58', 2, '192.168.1.1'),
(21, '张三', '123456', '2658974568@qq.com', '15487945689', 'http://localhost/project/upload/image/20170925/1506309346__4.jpg', '2017-09-25 11:15:51', 2, '192.168.1.1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `mycolumn`
--
ALTER TABLE `mycolumn`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `praise`
--
ALTER TABLE `praise`
  ADD PRIMARY KEY (`praise_id`);

--
-- Indexes for table `share`
--
ALTER TABLE `share`
  ADD PRIMARY KEY (`share_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id自增长', AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id，自增长', AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `mycolumn`
--
ALTER TABLE `mycolumn`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id，自增长';
--
-- 使用表AUTO_INCREMENT `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id自增长', AUTO_INCREMENT=27;
--
-- 使用表AUTO_INCREMENT `praise`
--
ALTER TABLE `praise`
  MODIFY `praise_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id，主键自增长', AUTO_INCREMENT=27;
--
-- 使用表AUTO_INCREMENT `share`
--
ALTER TABLE `share`
  MODIFY `share_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id,自增长', AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID,自增长', AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
