/*
Navicat MySQL Data Transfer

Source Server         : first
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : tingyou

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-02-13 11:16:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `createTime` datetime NOT NULL,
  `browseCount` int(11) NOT NULL,
  `RibbonCount` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user-article` (`userId`),
  CONSTRAINT `user-article` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('2', '2', 'jj', 'oo', '2018-02-08 19:04:43', '7', '0');
INSERT INTO `article` VALUES ('27', '0', '我要和生活平起平坐', '\r\n\r\n  \r\n     李健的声音，感觉很温暖，淡淡的却能够穿透心扉，没有私心裂肺的吼叫，没有那些恐怖的高音，只是淡淡的，淡淡的~~~原来他这个人也如此低调，喜欢低调的人，喜欢没有绯闻的李健，喜欢认真做音乐的李健……\r\n \r\n    自从2010年春晚，王菲以一曲清新小令般的《传奇》叫醒无数人被各种靡靡之音灌得已然麻木的耳朵，这首歌曲的曲作者，音乐人李健似乎又重新回到了主流听众当中——\r\n他的全国巡回演唱会全面启动，他的新专辑即将出版，他为冯小刚电影《唐山大地震》主题曲《23秒，32年》作曲……来势凶猛，宛如新人，而追随他的音乐一路而来的人都知道，在音乐的道路上，他已经走了将近15年。\r\n    这是一个以成败论英雄的年代，一个最大程度追逐名利的年代，一个讲求效率一切求快的年代。而李健，逆向而行，淡淡微笑，快乐歌唱，从容行路，他的成功，来得这样自然悠闲，又似乎是一个必然。\r\n    相约李健，在午后的阳光清风中，谈理想，谈青春，谈音乐人应当有的骄傲 。\r\n\r\n做自己喜欢的音乐才是最重要的\r\n\r\n    很多人提起我，似乎不可避免就要提到“水木年华”。当年，我和卢庚戌因为对音乐的狂热喜爱而走到一起，成立了“水木年华”演唱组。我现在还记得那个时候我们租住在清华附近的一个村子里，整日整夜地写歌、作曲、弹吉他，饿了就啃馒头搭配酱豆腐，困了衣服也不脱就席地而卧。那个时候是我们最充实也是最焦虑的时候，一方面，我们有着无穷无尽的关于音乐的灵感和想法．另一方面，我们又急切渴望一朝成名天下知。\r\n\r\n    很快，随着单曲《一生有你》的走红，我们渴望的一切都逐渐展现在眼前：物质条件的改善，歌迷的崇拜和追随……最令我和小卢开心的，是我们终于可以随心所欲地把自己喜欢的乐器和音碟买回家。记得第一次，我从东四的一家音像店把我觊觎已久的“吉普森”吉他买下，一整夜我都抱着它，像抱着心爱的女孩，不舍得睡去。\r\n\r\n    我们顺利签约了唱片公司，一旦签约公司，你就要屈服于市场规则。也就是说，你做的音乐，哪怕是狗屎，只要能赚钱，就是好的：反之，你做得再好，但是市场反应不好，还是等于零。最令我不能忍受的，是公司会想出各种方法来炒作你。有一次，公司的一个企宣就和我说：“你太干净了，没什么新闻点，这样子不行，你得闹出一点绯闻出来。”然后她就开始和我说：“你找一个女孩子，你们一起去吃饭，吃完饭再邀请她去你的公寓玩。然后我们就找人拍照片，放到网上去，就说是你女朋友，这样肯定能吸引眼球。”这都是什么和什么啊？我不留余地地拒绝了。后来他们又提出来，让我和小卢假装闹矛盾，在餐桌上吃着饭就吵了起来，把桌子给掀了，由他们来发新闻。我说：“你们怎么成天就不盼着我一点好啊？”总之他们是千方百计要你出点事，有话题有爆点。而对我来说，如果我的音乐要靠这么下作的方法去推销，那么我宁可不做音乐。\r\n\r\n    在音乐上，我和唱片公司也很难找到共鸣。《一生有你》红了，他们就希望我乘热打铁，之后的创作也沿袭这种风格，不要冒险去改变去尝试。这在我看来已经不是创作，根本就是工厂的流水线在制造产品，创作不再是一种享受而是煎熬。很多个清晨，我看着自己熬了一夜炮制出的所谓作品，摇摇头，笑一笑，毫不留情地撕毁了。我不能欺骗自己，我知道什么是好作品，更知道什么作品是不好的。我过不了自己那一关。更多的时候，我将自己关在房间里，不断喝水，去卫生间，却写不出一个字来。\r\n\r\n    再也找不回最初的快乐了，最让我焦虑的是这种生活正在一点点毁掉我对音乐的敏感和热爱。有好几次，我坐在条件一流的排练厅里，抱着一流的吉他，却压根不想弹琴，弹来弹去都是那些千篇一律的旋律，我真的都快吐了。我知道，我应该好好想一想接下来的路该怎么去走了。', '2018-02-08 19:04:56', '228', '2');
INSERT INTO `article` VALUES ('28', '0', '为你而来', '阳光下\r\n世界多鲜艳\r\n怎么能 视而不见', '2018-02-08 19:05:00', '12', '0');
INSERT INTO `article` VALUES ('31', '2', '我要和生活平起平坐2', '抉择是艰难的，放弃也是艰难的，但是我只是问了自己一个简单的问题，即：当初我是为了什么而做音乐的？是因为喜欢，肯定不是为了市场对不对?这么一想，我就知道自己应该怎么去做了。有一句话说得好：不要因为走得太远，而忘记了我们是为了什么而出发。\r\n\r\n生活并不能把我怎样\r\n\r\n    我又回到了那种漂泊不定没有保障的日子，都说在北京生存不易，但是那看你要怎么生活了。如果你成天惦记着吃鲍鱼鱼翅，住豪宅开好车，背LV穿PRADA，那当然会觉得生存是一件很有压力的事情，但是你要是像我这样，住在小房子里，出入自行车，穿20块钱一件的纯棉T恤，吃简单健康的饭食，算下来一个月真的花不了什么钱。而且我最近发现了一个理发的好地方，理一次发才5块钱，一点不比那些要几百块钱的手艺差。\r\n    当你对于物质生活的要求越低，你在精神上就越自由，你的心灵生活就越丰富。\r\n    我看现在的年轻人，说实话觉得他们活得太没意思了。怎么说呢？大学一毕业，多么美好的青春时光，可是他们就想着要买房子，买了房子，一大笔贷款就压到身上了，从此你就得为这笔贷款活着了。你不敢去追求自己的梦，不敢轻易辞职，不敢轻易换工作，这样的人生，还有什么乐趣可言？还有那些年轻的女孩子，大学一毕业，就到处征婚，想找个有钱人把自己嫁了，然后过上衣食无忧的寄生虫生活，然后她们就会在那种生活里慢慢枯萎掉了。她们永远都不能体会到，和相爱的人在一起，一起吃苦一起奋斗的那种幸福，那是人生最为宝贵的经历。而一个女孩子的自信、快乐和魅力，不是关在花园洋房里养出来的，而是通过生活的历练和打磨激发出来的，可惜很多女孩子都不懂得这一点。\r\n    韩寒说：“如果我的女朋友对我说，你赶紧去买房子，如果你没有房子我就要和你分手。那我会立即对她说，那你滚吧。”我非常赞同他这个态度，年轻人应该有这种脱俗和骄傲，不要沦为物质的奴隶。\r\n    许多人都把世道艰难、生存不易挂在嘴上，其实都是为自己的物质、拜金在找借口。要说世道艰难、生存不易，哪个年代哪个国家都是如此，没什么两样，关键还是看你自己。归根结底一句话，生活没你想象的那么强悍，生活并不能把你怎么样。\r\n    成为自由人之后，我最大的快乐就是重新焕发了对于音乐的信心和热情。比如说我写歌，我这样写是因为我心里想这样表达，我不会去想这样写会不会受别人欢迎，会不会得到市场认可。写好的歌，能出版就出版，有人买就卖，不能出没人买，我就留着自己唱，也挺开心的。其实在这种状态下，往往能出好作品。\r\n    这些年，我时不时会和音乐圈子里的人聚会，我发现我各方面的状态都是最好的。他们都戏称我是“千年老妖”，意思是时间好像在我身上停止了，总也不显老，走出去说自己是一大学生绝对有人信。而他们，大部分都活得不快乐，吸毒的吸毒，自杀的自杀，得抑郁症的得抑郁症，为什么他们都算是成功人士都算是有钱人了，最后却走上了绝路？我想就是因为，他们从不曾倾听过自己内心真实的声音，不了解自己真正想过的是一种什么样的生活，而是屈服于社会的主流价值观，让名利成为自己的主宰，一直在压抑自己。戴着面具生活，时间长了，人的心理就会出问题了。\r\n\r\n理想主义的胜利\r\n\r\n    其实这么多年，一直有唱片公司找我，想要签我，我都拒绝了。我知道一旦签约，我就由不得自己了，我还是想守护着自己关于音乐的理想，行走在属于自己的路上。我已经做好了一生清贫无名的准备，那又怎样呢？最起码我活得很快乐，而且我知道自己的价值在哪里\r\n    这么多年我一直没有离开音乐，经常在一些酒吧或者小型的音乐厅去演出。钱不多，但是唱的都是自己想唱的，让我感动的是那些一直追随着我的歌迷。有一次，我感冒了，让歌迷听出来了，在我演唱的间隙，就有歌迷大声', '2018-02-08 19:05:07', '47', '3');
INSERT INTO `article` VALUES ('47', '0', 'lili', '李健的声音，感觉很温暖，淡淡的却能够穿透心扉，没有私心裂肺的吼叫，没有那些恐怖的高音，只是淡淡的，淡淡的~~~原来他这个人也如此低调，喜欢低调的人，喜欢没有绯闻的李健，喜欢认真做音乐的李健……\r\n \r\n    自从2010年春晚，王菲以一曲清新小令般的《传奇》叫醒无数人被各种靡靡之音灌得已然麻木的耳朵，这首歌曲的曲作者，音乐人李健似乎又重新回到了主流听众当中——\r\n他的全国巡回演唱会全面启动，他的新专辑即将出版，他为冯小刚电影《唐山大地震》主题曲《23秒，32年》作曲……来势凶猛，宛如新人，而追随他的音乐一路而来的人都知道，在音乐的道路上，他已经走了将近15年。\r\n    这是一个以成败论英雄的年代，一个最大程度追逐名利的年代，一个讲求效率一切求快的年代。而李健，逆向而行，淡淡微笑，快乐歌唱，从容行路，他的成功，来得这样自然悠闲，又似乎是一个必然。\r\n    相约李健，在午后的阳光清风中，谈理想，谈青春，谈音乐人应当有的骄傲 。\r\n\r\n做自己喜欢的音乐才是最重要的\r\n\r\n    很多人提起我，似乎不可避免就要提到“水木年华”。当年，我和卢庚戌因为对音乐的狂热喜爱而走到一起，成立了“水木年华”演唱组。我现在还记得那个时候我们租住在清华附近的一个村子里，整日整夜地写歌、作曲、弹吉他，饿了就啃馒头搭配酱豆腐，困了衣服也不脱就席地而卧。那个时候是我们最充实也是最焦虑的时候，一方面，我们有着无穷无尽的关于音乐的灵感和想法．另一方面，我们又急切渴望一朝成名天下知。\r\n\r\n    很快，随着单曲《一生有你》的走红，我们渴望的一切都逐渐展现在眼前：物质条件的改善，歌迷的崇拜和追随……最令我和小卢开心的，是我们终于可以随心所欲地把自己喜欢的乐器和音碟买回家。记得第一次，我从东四的一家音像店把我觊觎已久的“吉普森”吉他买下，一整夜我都抱着它，像抱着心爱的女孩，不舍得睡去。\r\n\r\n    我们顺利签约了唱片公司，一旦签约公司，你就要屈服于市场规则。也就是说，你做的音乐，哪怕是狗屎，只要能赚钱，就是好的：反之，你做得再好，但是市场反应不好，还是等于零。最令我不能忍受的，是公司会想出各种方法来炒作你。有一次，公司的一个企宣就和我说：“你太干净了，没什么新闻点，这样子不行，你得闹出一点绯闻出来。”然后她就开始和我说：“你找一个女孩子，你们一起去吃饭，吃完饭再邀请她去你的公寓玩。然后我们就找人拍照片，放到网上去，就说是你女朋友，这样肯定能吸引眼球。”这都是什么和什么啊？我不留余地地拒绝了。后来他们又提出来，让我和小卢假装闹矛盾，在餐桌上吃着饭就吵了起来，把桌子给掀了，由他们来发新闻。我说：“你们怎么成天就不盼着我一点好啊？”总之他们是千方百计要你出点事，有话题有爆点。而对我来说，如果我的音乐要靠这么下作的方法去推销，那么我宁可不做音乐。\r\n\r\n    在音乐上，我和唱片公司也很难找到共鸣。《一生有你》红了，他们就希望我乘热打铁，之后的创作也沿袭这种风格，不要冒险去改变去尝试。这在我看来已经不是创作，根本就是工厂的流水线在制造产品，创作不再是一种享受而是煎熬。很多个清晨，我看着自己熬了一夜炮制出的所谓作品，摇摇头，笑一笑，毫不留情地撕毁了。我不能欺骗自己，我知道什么是好作品，更知道什么作品是不好的。我过不了自己那一关。更多的时候，我将自己关在房间里，不断喝水，去卫生间，却写不出一个字来。\r\n\r\n    再也找不回最初的快乐了，最让我焦虑的是这种生活正在一点点毁掉我对音乐的敏感和热爱。有好几次，我坐在条件一流的排练厅里，抱着一流的吉他，却压根不想弹琴，弹来弹去都是那些千篇一律的旋律，我真的都快吐了。我知道，我应该好好想一想接下来的路该怎么去走了。', '2018-02-08 19:05:10', '70', '1');
INSERT INTO `article` VALUES ('48', '7', '水果苹果', '水果批发', '2018-02-10 20:16:58', '6', '1');

-- ----------------------------
-- Table structure for articleimage
-- ----------------------------
DROP TABLE IF EXISTS `articleimage`;
CREATE TABLE `articleimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imageName` varchar(255) NOT NULL,
  `articleId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articleimage
-- ----------------------------
INSERT INTO `articleimage` VALUES ('14', '15180731165818e2d62a9b06a897be881a9dc4d5d43da.jpeg', '47');
INSERT INTO `articleimage` VALUES ('15', '1518073116586d47b5f120e14bd1544d1a0fb3e072f14.jpg', '47');
INSERT INTO `articleimage` VALUES ('16', '1518265017993mmexport1498384976488.jpg', '48');

-- ----------------------------
-- Table structure for link
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `content` text NOT NULL,
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of link
-- ----------------------------
INSERT INTO `link` VALUES ('1', '1', '贴吧李健吧', 'http://tieba.baidu.com/f?ie=utf-8&kw=%E6%9D%8E%E5%81%A5&red_tag=e0283135488');
INSERT INTO `link` VALUES ('2', '1', '这是一个分享健哥语录的帖子', 'http://tieba.baidu.com/p/3698276778');
INSERT INTO `link` VALUES ('9', '1', '我要和生活平起平坐', 'http://blog.renren.com/share/231349540/4990908982');
INSERT INTO `link` VALUES ('11', '2', '李健的咖啡馆', 'http://lijianfans.blog.sohu.com/');
INSERT INTO `link` VALUES ('12', '0', '蓝丝带', 'http://lsd.tingyou.xyz:81');
INSERT INTO `link` VALUES ('13', '0', '百度', 'https://mbd.baidu.com/newspage/data/landingsuper?context=%7B%22nid%22%3A%22news_5846295977057236972%22%7D&n_type=0&p_from=1');
INSERT INTO `link` VALUES ('14', '7', '淘宝', 'www.toubao.com');
INSERT INTO `link` VALUES ('15', '0', '嘻嘻', 'www.toubao.com');

-- ----------------------------
-- Table structure for uacomment
-- ----------------------------
DROP TABLE IF EXISTS `uacomment`;
CREATE TABLE `uacomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `preCommentId` int(11) NOT NULL,
  `articleId` int(11) NOT NULL,
  `commentContent` text NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uacomment
-- ----------------------------
INSERT INTO `uacomment` VALUES ('2', '0', '0', '27', '', '2018-02-10 13:53:58');
INSERT INTO `uacomment` VALUES ('3', '0', '0', '27', '唯有这河水叮咚', '2018-02-10 14:01:52');
INSERT INTO `uacomment` VALUES ('4', '0', '0', '27', '丽江', '2018-02-10 14:03:23');
INSERT INTO `uacomment` VALUES ('5', '0', '0', '47', '水流众生', '2018-02-10 17:34:13');
INSERT INTO `uacomment` VALUES ('6', '0', '0', '27', '嘻嘻', '2018-02-10 18:03:03');
INSERT INTO `uacomment` VALUES ('7', '0', '0', '27', '有没有', '2018-02-10 18:21:26');
INSERT INTO `uacomment` VALUES ('8', '0', '0', '27', '  何止是', '2018-02-10 19:49:39');
INSERT INTO `uacomment` VALUES ('9', '7', '0', '31', '很好', '2018-02-10 20:14:58');
INSERT INTO `uacomment` VALUES ('10', '0', '0', '47', '谁说过', '2018-02-10 21:45:45');
INSERT INTO `uacomment` VALUES ('11', '0', '0', '47', '谁', '2018-02-10 21:47:25');
INSERT INTO `uacomment` VALUES ('12', '0', '0', '47', '李健', '2018-02-10 21:47:47');
INSERT INTO `uacomment` VALUES ('13', '0', '0', '31', '此时', '2018-02-10 22:54:35');
INSERT INTO `uacomment` VALUES ('14', '0', '0', '31', '李健', '2018-02-11 17:14:34');
INSERT INTO `uacomment` VALUES ('15', '0', '0', '31', '李健', '2018-02-11 17:14:41');
INSERT INTO `uacomment` VALUES ('16', '0', '0', '47', '测试', '2018-02-11 17:26:16');
INSERT INTO `uacomment` VALUES ('17', '0', '0', '27', '测试', '2018-02-11 17:28:55');
INSERT INTO `uacomment` VALUES ('18', '0', '0', '27', '', '2018-02-11 19:26:01');
INSERT INTO `uacomment` VALUES ('19', '0', '6', '27', '好的', '2018-02-11 20:47:44');
INSERT INTO `uacomment` VALUES ('20', '0', '2', '27', 'test', '2018-02-11 20:51:33');
INSERT INTO `uacomment` VALUES ('21', '0', '19', '27', 'en', '2018-02-11 20:55:42');
INSERT INTO `uacomment` VALUES ('22', '0', '5', '47', '好的', '2018-02-11 20:58:33');
INSERT INTO `uacomment` VALUES ('23', '0', '5', '47', '1', '2018-02-11 20:59:48');
INSERT INTO `uacomment` VALUES ('24', '0', '22', '47', '跑过去的风', '2018-02-11 21:01:28');
INSERT INTO `uacomment` VALUES ('25', '0', '5', '47', 'ha', '2018-02-12 11:20:21');
INSERT INTO `uacomment` VALUES ('26', '2', '19', '27', '黎明', '2018-02-12 14:52:37');
INSERT INTO `uacomment` VALUES ('27', '2', '6', '27', '美好', '2018-02-12 14:54:05');
INSERT INTO `uacomment` VALUES ('28', '0', '27', '27', '树', '2018-02-12 16:07:06');
INSERT INTO `uacomment` VALUES ('29', '0', '0', '27', 'ha', '2018-02-12 20:54:57');
INSERT INTO `uacomment` VALUES ('30', '0', '0', '27', '测试', '2018-02-12 20:57:52');
INSERT INTO `uacomment` VALUES ('31', '0', '30', '27', '1', '2018-02-12 20:58:08');
INSERT INTO `uacomment` VALUES ('32', '0', '0', '27', '留言', '2018-02-12 21:05:35');

-- ----------------------------
-- Table structure for uaribbon
-- ----------------------------
DROP TABLE IF EXISTS `uaribbon`;
CREATE TABLE `uaribbon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `articleId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uaribbon
-- ----------------------------
INSERT INTO `uaribbon` VALUES ('37', '2', '27');
INSERT INTO `uaribbon` VALUES ('49', '2', '31');
INSERT INTO `uaribbon` VALUES ('51', '7', '31');
INSERT INTO `uaribbon` VALUES ('52', '2', '48');
INSERT INTO `uaribbon` VALUES ('56', '0', '31');
INSERT INTO `uaribbon` VALUES ('57', '0', '47');
INSERT INTO `uaribbon` VALUES ('59', '0', '27');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('0', '佚名', '123');
INSERT INTO `user` VALUES ('2', '美若黎明', '123');
INSERT INTO `user` VALUES ('3', '丽江', '123');
INSERT INTO `user` VALUES ('5', '为你而来', '123');
INSERT INTO `user` VALUES ('6', '璀璨', '123456');
INSERT INTO `user` VALUES ('7', '老张', '123456');
