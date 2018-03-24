/*
Navicat MySQL Data Transfer

Source Server         : second
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : tingyou

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2018-03-24 17:44:32
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
  `ribbonCount` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user-article` (`userId`),
  CONSTRAINT `user-article` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('27', '0', '我要和生活平起平坐', '\r\n\r\n  \r\n     李健的声音，感觉很温暖，淡淡的却能够穿透心扉，没有私心裂肺的吼叫，没有那些恐怖的高音，只是淡淡的，淡淡的~~~原来他这个人也如此低调，喜欢低调的人，喜欢没有绯闻的李健，喜欢认真做音乐的李健……\r\n \r\n    自从2010年春晚，王菲以一曲清新小令般的《传奇》叫醒无数人被各种靡靡之音灌得已然麻木的耳朵，这首歌曲的曲作者，音乐人李健似乎又重新回到了主流听众当中——\r\n他的全国巡回演唱会全面启动，他的新专辑即将出版，他为冯小刚电影《唐山大地震》主题曲《23秒，32年》作曲……来势凶猛，宛如新人，而追随他的音乐一路而来的人都知道，在音乐的道路上，他已经走了将近15年。\r\n    这是一个以成败论英雄的年代，一个最大程度追逐名利的年代，一个讲求效率一切求快的年代。而李健，逆向而行，淡淡微笑，快乐歌唱，从容行路，他的成功，来得这样自然悠闲，又似乎是一个必然。\r\n    相约李健，在午后的阳光清风中，谈理想，谈青春，谈音乐人应当有的骄傲 。\r\n\r\n做自己喜欢的音乐才是最重要的\r\n\r\n    很多人提起我，似乎不可避免就要提到“水木年华”。当年，我和卢庚戌因为对音乐的狂热喜爱而走到一起，成立了“水木年华”演唱组。我现在还记得那个时候我们租住在清华附近的一个村子里，整日整夜地写歌、作曲、弹吉他，饿了就啃馒头搭配酱豆腐，困了衣服也不脱就席地而卧。那个时候是我们最充实也是最焦虑的时候，一方面，我们有着无穷无尽的关于音乐的灵感和想法．另一方面，我们又急切渴望一朝成名天下知。\r\n\r\n    很快，随着单曲《一生有你》的走红，我们渴望的一切都逐渐展现在眼前：物质条件的改善，歌迷的崇拜和追随……最令我和小卢开心的，是我们终于可以随心所欲地把自己喜欢的乐器和音碟买回家。记得第一次，我从东四的一家音像店把我觊觎已久的“吉普森”吉他买下，一整夜我都抱着它，像抱着心爱的女孩，不舍得睡去。\r\n\r\n    我们顺利签约了唱片公司，一旦签约公司，你就要屈服于市场规则。也就是说，你做的音乐，哪怕是狗屎，只要能赚钱，就是好的：反之，你做得再好，但是市场反应不好，还是等于零。最令我不能忍受的，是公司会想出各种方法来炒作你。有一次，公司的一个企宣就和我说：“你太干净了，没什么新闻点，这样子不行，你得闹出一点绯闻出来。”然后她就开始和我说：“你找一个女孩子，你们一起去吃饭，吃完饭再邀请她去你的公寓玩。然后我们就找人拍照片，放到网上去，就说是你女朋友，这样肯定能吸引眼球。”这都是什么和什么啊？我不留余地地拒绝了。后来他们又提出来，让我和小卢假装闹矛盾，在餐桌上吃着饭就吵了起来，把桌子给掀了，由他们来发新闻。我说：“你们怎么成天就不盼着我一点好啊？”总之他们是千方百计要你出点事，有话题有爆点。而对我来说，如果我的音乐要靠这么下作的方法去推销，那么我宁可不做音乐。\r\n\r\n    在音乐上，我和唱片公司也很难找到共鸣。《一生有你》红了，他们就希望我乘热打铁，之后的创作也沿袭这种风格，不要冒险去改变去尝试。这在我看来已经不是创作，根本就是工厂的流水线在制造产品，创作不再是一种享受而是煎熬。很多个清晨，我看着自己熬了一夜炮制出的所谓作品，摇摇头，笑一笑，毫不留情地撕毁了。我不能欺骗自己，我知道什么是好作品，更知道什么作品是不好的。我过不了自己那一关。更多的时候，我将自己关在房间里，不断喝水，去卫生间，却写不出一个字来。\r\n\r\n    再也找不回最初的快乐了，最让我焦虑的是这种生活正在一点点毁掉我对音乐的敏感和热爱。有好几次，我坐在条件一流的排练厅里，抱着一流的吉他，却压根不想弹琴，弹来弹去都是那些千篇一律的旋律，我真的都快吐了。我知道，我应该好好想一想接下来的路该怎么去走了。', '2018-02-08 19:04:56', '286', '2');
INSERT INTO `article` VALUES ('31', '2', '我要和生活平起平坐2', '抉择是艰难的，放弃也是艰难的，但是我只是问了自己一个简单的问题，即：当初我是为了什么而做音乐的？是因为喜欢，肯定不是为了市场对不对?这么一想，我就知道自己应该怎么去做了。有一句话说得好：不要因为走得太远，而忘记了我们是为了什么而出发。\r\n\r\n生活并不能把我怎样\r\n\r\n    我又回到了那种漂泊不定没有保障的日子，都说在北京生存不易，但是那看你要怎么生活了。如果你成天惦记着吃鲍鱼鱼翅，住豪宅开好车，背LV穿PRADA，那当然会觉得生存是一件很有压力的事情，但是你要是像我这样，住在小房子里，出入自行车，穿20块钱一件的纯棉T恤，吃简单健康的饭食，算下来一个月真的花不了什么钱。而且我最近发现了一个理发的好地方，理一次发才5块钱，一点不比那些要几百块钱的手艺差。\r\n    当你对于物质生活的要求越低，你在精神上就越自由，你的心灵生活就越丰富。\r\n    我看现在的年轻人，说实话觉得他们活得太没意思了。怎么说呢？大学一毕业，多么美好的青春时光，可是他们就想着要买房子，买了房子，一大笔贷款就压到身上了，从此你就得为这笔贷款活着了。你不敢去追求自己的梦，不敢轻易辞职，不敢轻易换工作，这样的人生，还有什么乐趣可言？还有那些年轻的女孩子，大学一毕业，就到处征婚，想找个有钱人把自己嫁了，然后过上衣食无忧的寄生虫生活，然后她们就会在那种生活里慢慢枯萎掉了。她们永远都不能体会到，和相爱的人在一起，一起吃苦一起奋斗的那种幸福，那是人生最为宝贵的经历。而一个女孩子的自信、快乐和魅力，不是关在花园洋房里养出来的，而是通过生活的历练和打磨激发出来的，可惜很多女孩子都不懂得这一点。\r\n    韩寒说：“如果我的女朋友对我说，你赶紧去买房子，如果你没有房子我就要和你分手。那我会立即对她说，那你滚吧。”我非常赞同他这个态度，年轻人应该有这种脱俗和骄傲，不要沦为物质的奴隶。\r\n    许多人都把世道艰难、生存不易挂在嘴上，其实都是为自己的物质、拜金在找借口。要说世道艰难、生存不易，哪个年代哪个国家都是如此，没什么两样，关键还是看你自己。归根结底一句话，生活没你想象的那么强悍，生活并不能把你怎么样。\r\n    成为自由人之后，我最大的快乐就是重新焕发了对于音乐的信心和热情。比如说我写歌，我这样写是因为我心里想这样表达，我不会去想这样写会不会受别人欢迎，会不会得到市场认可。写好的歌，能出版就出版，有人买就卖，不能出没人买，我就留着自己唱，也挺开心的。其实在这种状态下，往往能出好作品。\r\n    这些年，我时不时会和音乐圈子里的人聚会，我发现我各方面的状态都是最好的。他们都戏称我是“千年老妖”，意思是时间好像在我身上停止了，总也不显老，走出去说自己是一大学生绝对有人信。而他们，大部分都活得不快乐，吸毒的吸毒，自杀的自杀，得抑郁症的得抑郁症，为什么他们都算是成功人士都算是有钱人了，最后却走上了绝路？我想就是因为，他们从不曾倾听过自己内心真实的声音，不了解自己真正想过的是一种什么样的生活，而是屈服于社会的主流价值观，让名利成为自己的主宰，一直在压抑自己。戴着面具生活，时间长了，人的心理就会出问题了。\r\n\r\n理想主义的胜利\r\n\r\n    其实这么多年，一直有唱片公司找我，想要签我，我都拒绝了。我知道一旦签约，我就由不得自己了，我还是想守护着自己关于音乐的理想，行走在属于自己的路上。我已经做好了一生清贫无名的准备，那又怎样呢？最起码我活得很快乐，而且我知道自己的价值在哪里\r\n    这么多年我一直没有离开音乐，经常在一些酒吧或者小型的音乐厅去演出。钱不多，但是唱的都是自己想唱的，让我感动的是那些一直追随着我的歌迷。有一次，我感冒了，让歌迷听出来了，在我演唱的间隙，就有歌迷大声', '2018-02-08 19:05:07', '83', '3');
INSERT INTO `article` VALUES ('47', '0', 'lili', '李健的声音，感觉很温暖，淡淡的却能够穿透心扉，没有私心裂肺的吼叫，没有那些恐怖的高音，只是淡淡的，淡淡的~~~原来他这个人也如此低调，喜欢低调的人，喜欢没有绯闻的李健，喜欢认真做音乐的李健……\r\n \r\n    自从2010年春晚，王菲以一曲清新小令般的《传奇》叫醒无数人被各种靡靡之音灌得已然麻木的耳朵，这首歌曲的曲作者，音乐人李健似乎又重新回到了主流听众当中——\r\n他的全国巡回演唱会全面启动，他的新专辑即将出版，他为冯小刚电影《唐山大地震》主题曲《23秒，32年》作曲……来势凶猛，宛如新人，而追随他的音乐一路而来的人都知道，在音乐的道路上，他已经走了将近15年。\r\n    这是一个以成败论英雄的年代，一个最大程度追逐名利的年代，一个讲求效率一切求快的年代。而李健，逆向而行，淡淡微笑，快乐歌唱，从容行路，他的成功，来得这样自然悠闲，又似乎是一个必然。\r\n    相约李健，在午后的阳光清风中，谈理想，谈青春，谈音乐人应当有的骄傲 。\r\n\r\n做自己喜欢的音乐才是最重要的\r\n\r\n    很多人提起我，似乎不可避免就要提到“水木年华”。当年，我和卢庚戌因为对音乐的狂热喜爱而走到一起，成立了“水木年华”演唱组。我现在还记得那个时候我们租住在清华附近的一个村子里，整日整夜地写歌、作曲、弹吉他，饿了就啃馒头搭配酱豆腐，困了衣服也不脱就席地而卧。那个时候是我们最充实也是最焦虑的时候，一方面，我们有着无穷无尽的关于音乐的灵感和想法．另一方面，我们又急切渴望一朝成名天下知。\r\n\r\n    很快，随着单曲《一生有你》的走红，我们渴望的一切都逐渐展现在眼前：物质条件的改善，歌迷的崇拜和追随……最令我和小卢开心的，是我们终于可以随心所欲地把自己喜欢的乐器和音碟买回家。记得第一次，我从东四的一家音像店把我觊觎已久的“吉普森”吉他买下，一整夜我都抱着它，像抱着心爱的女孩，不舍得睡去。\r\n\r\n    我们顺利签约了唱片公司，一旦签约公司，你就要屈服于市场规则。也就是说，你做的音乐，哪怕是狗屎，只要能赚钱，就是好的：反之，你做得再好，但是市场反应不好，还是等于零。最令我不能忍受的，是公司会想出各种方法来炒作你。有一次，公司的一个企宣就和我说：“你太干净了，没什么新闻点，这样子不行，你得闹出一点绯闻出来。”然后她就开始和我说：“你找一个女孩子，你们一起去吃饭，吃完饭再邀请她去你的公寓玩。然后我们就找人拍照片，放到网上去，就说是你女朋友，这样肯定能吸引眼球。”这都是什么和什么啊？我不留余地地拒绝了。后来他们又提出来，让我和小卢假装闹矛盾，在餐桌上吃着饭就吵了起来，把桌子给掀了，由他们来发新闻。我说：“你们怎么成天就不盼着我一点好啊？”总之他们是千方百计要你出点事，有话题有爆点。而对我来说，如果我的音乐要靠这么下作的方法去推销，那么我宁可不做音乐。\r\n\r\n    在音乐上，我和唱片公司也很难找到共鸣。《一生有你》红了，他们就希望我乘热打铁，之后的创作也沿袭这种风格，不要冒险去改变去尝试。这在我看来已经不是创作，根本就是工厂的流水线在制造产品，创作不再是一种享受而是煎熬。很多个清晨，我看着自己熬了一夜炮制出的所谓作品，摇摇头，笑一笑，毫不留情地撕毁了。我不能欺骗自己，我知道什么是好作品，更知道什么作品是不好的。我过不了自己那一关。更多的时候，我将自己关在房间里，不断喝水，去卫生间，却写不出一个字来。\r\n\r\n    再也找不回最初的快乐了，最让我焦虑的是这种生活正在一点点毁掉我对音乐的敏感和热爱。有好几次，我坐在条件一流的排练厅里，抱着一流的吉他，却压根不想弹琴，弹来弹去都是那些千篇一律的旋律，我真的都快吐了。我知道，我应该好好想一想接下来的路该怎么去走了。', '2018-02-08 19:05:10', '84', '1');
INSERT INTO `article` VALUES ('49', '2', '李健语录', '\r\n     1  假如有一天身陷苦难，一要接受，二要苦中作乐。\r\n     \r\n     2  所谓读书，大概就是让人眼界更宽，对自己有个更清醒的认识，不至于狂妄。\r\n\r\n     3.《当你老了》可以代表我对老去的希望，可能是老态龙钟，但是思维活跃，心底依然柔软，对世界充满好奇，不自以为是，仍然对知识充满渴望。\r\n\r\n     4.我不完美，更没想当任何人的偶像，成为偶像是非常危险的。\r\n\r\n     5  我的人生好像是相反的，30岁时的不惑源于懵懂，可到了40岁，真正了解一点社会之后，发现很多问题本身就无解。这世界的变化无时无刻，我们又哪来什么经验？\r\n\r\n     6.说得现实一点，音乐不是我的生命，虽然我是一个做音乐的，音乐也不是我的全部，它仅仅是生活的一部分。人生真正的意义在于踏实，安稳去享受生活，我觉得所有人离开音乐都能活，千万不要夸大音乐的重要性，没有意义。\r\n\r\n     7 彼此能够交流的爱情，彼此能够激发和进步的爱情，彼此能够让生活更美好的爱情，最后变成亲情。\r\n   \r\n     8 我心中理想的老人 ，是很吸引人的，我希望自己老了的时侯，变得更加开阔，能接纳一切人，对身份、地位没有偏见，对世界还很好奇，但有正义感，而且能够很勇敢。\r\n\r\n     9.人就应该活在当下，把今天过得很积极过一天算一天，其实这句话并不是完全没有道理，就是并不完全消极的，它在我看来，这句话引申了人们更应该珍惜你今天所拥有的世界，其实你今天浑身不痛不痒已经是很幸福了，人应该有些大的格局，有些大的一个胸怀。\r\n\r\n    10  一个人永远保持学生的状态，你的人生就不会枯竭。我理解的学生状态就是不拒绝新鲜事物，不放弃热情，保持对世界基本的信心和期待，这也是最好的状态。\r\n\r\n    11.大部分生活都是庸常的，庸常变得日常，就能习以为常。人不要活在幻觉里，要脚踏实地地生活。\r\n\r\n    12  如果能这样，我是欣慰的，因为音乐的魅力就在于抚慰人心。悦耳其实是低级的感官感受，终极目的是抚慰人心，就像佛陀讲的，这叫积德，是一种善举，这就够了。好听不是特别难，难的是让人家心灵为之一震。\r\n\r\n    13  另类，如果是一种刻意的姿态，则完全等同于做作；如果是自然的个性化，倒能理解，就如同非主流一样。\r\n\r\n    14  年龄大了，开始喜欢早晨了。\r\n\r\n    15  其实每个人都不容易，尤其是在世事纷乱的今天，无论或卑微，贫穷抑或富有，都很脆弱随时身陷囹圄。所以，彼此还是宽容些吧。\r\n\r\n    16 .人在一生中可以欣赏很多人，但不一定都要占有他们。\r\n\r\n    17 人是有理想生活的向往的，但是具体目标没有，生活就是让你这么一目了然。\r\n\r\n    18 美国是空气好，但是你得到了天空，失去了土地。\r\n\r\n    19 琐碎的生活才是真正的生活，让每一个人安居乐业就是大格局。\r\n\r\n    20  让人知道你很容易，但要被人家欣赏，收纳是很难的。只有靠优秀的作品，才能真正赢得尊重。\r\n\r\n   22  尽量少一些大而无当的虚荣，尊重和爱护曾经拥有的日常生活，学习如何与自己相处，这很重要。\r\n\r\n...\r\n--------------------------------------------------------------------------\r\n 听友们的话：\r\n   1 “李健的音乐，感觉他对幸福生活的珍惜，对生活特别健康的描述，没有抱怨没有负气。所以听他的歌可能不会瞬间迷恋，长时间听下去便很难放弃。”\r\n\r\n  2  心灵鸡汤给人盲目的安慰，健哥反而是那种打翻鸡汤让你直面现实的人。\r\n\r\n   3 每天来看一点，感觉整个人都好了\r\n\r\n   4 比起华而不实的文章，健哥的文字总是简单而透彻，用平常事物晓谕真理，不是告诉你该怎么做是对的，而是让你自己去考虑去悟，然后产生一种说服力能感染到你。\r\n\r\n\r\n\r\n\r\n', '2018-02-13 20:25:40', '28', '1');
INSERT INTO `article` VALUES ('50', '2', '李健谈梦想', '   \r\n\r\n       常听说，人要有梦想，那我们说说关于梦想的“梦话”。梦想可以有，但大部分梦想是实现不了的。即使实现不了那也没关系，我们依然可以活得很好，或者说，有些梦想实现不了更好，这意味着没有付出有可能是很沉重的代价。生活中，大多数人是平凡的，平凡没有什么不好，平凡自有它的幸运和乐趣。\r\n\r\n      在我们拥有梦想的时候，通常都是一厢情愿的，对生活和社会还不了解，随着时间的流逝，与生活的朝夕相处，逐渐会感到那些梦想越来越远，有人会因此郁郁寡欢，有人会开始淡忘梦想，而很不幸的是其间有可能会看到某个电影或者某篇心灵鸡汤，里面大力地描述和鼓吹一个人是如何历经千辛万苦而最终实现了梦想的，而你的心再一次被唤醒，开始反思或是抱怨目前的处境。\r\n\r\n    我并不是否定去实现所谓的梦想，而是想说，实现不了梦想是很正常的，它不可以成为你郁郁寡欢的理由，梦想的存在，是可以让你能够隐隐感觉存在于生活远处的某种美好，而它的意义绝非是一定要有一天它真的降临到你面前，这就像是祈祷，心愿成真更好，不能成真也很正常，而你也并非是要完全依赖于它。', '2018-02-13 20:26:48', '9', '1');
INSERT INTO `article` VALUES ('51', '2', '李健谈文学和音乐电影', '\r\n通过阅读觉得人类很多的苦难都是必然\r\n音乐是很有趣的事情，它会减少你很多的烦恼和忧虑，也会给你带来成就感，当你写了一些不错的音乐时，你会认为自己是富有的，幸福的，你会很自信，也不会觉得自己比其他名位显赫的人低多少，只不过你需要一个时机，等待也不是守株待兔，是在默默耕耘\r\n这两天又恢复了晚上看书的习惯，感觉颇好，心静了好多，其实对我来讲，保护好自己的创作力是唯一需要我警惕的，而内心平静则是前提\r\n在看电影《傲慢与偏见》喜欢那时代的家具，钢琴是原木色，像一幅幅油画，人，是优雅而有节制的，最后的钢琴配乐间洁，恰到好处\r\n无论一个时代怎么样？精神生活还是应该有的，而且是应该放在前面，我觉得歌手是一个很寂寞的职业，文学作家就更是了，听听音乐陶冶情操，没有电脑就一张纸，一支笔，如果不是有足够的毅力和足够热爱，或者某种信念，我觉得太难了\r\n其实我读书不多，但我喜欢反复阅读同一本书，尤其是经典作品，无论何时翻阅经典，你都会满载而归\r\n对我个人而言，读书还是一种具有仪式感的行为，就如同写歌词我习惯于钢笔一样，我更钟情于纸质书，古人读书，讲究焚香，沐浴，品茗闲吟，追求萧然自远，悠然自足的境界，仪式感让阅读悦耳悦目悦心，更有味道而更为神圣\r\n《传奇》是8年前的一个冬天，我住在一个寒冷的四合院里，那时我看了很多电影，很多书，后来看到茨威格的一个陌生女人的来信\r\n你的音乐是一如既往的温暖，即使伤感也有一丝温暖的清华在里面，一个是我个人喜欢带有伤感的音乐，另外伤感的音乐使你有情怀\r\n我不太被情绪所左右，烦躁当然会有，但是只要拿起吉他，弹弹钢琴就能够平和下来，每个人都有自己的调节方式，音乐就是我的避风港，能够为我屏蔽掉很多的干扰\r\n音乐可以说是挽救了我，音乐确实给我很多快乐，它能够让我忘掉很多不愉快的事，忘掉很多压力，很多人都是在音乐中得到暂时安宁，得到片刻的快乐\r\n我觉得文艺作品带给人们不是实质性的，它仿佛就像房子里的光一样，没有光，没有灯，房子依然是房子，但有了光之后，房子赋予了色彩，赋予了人性，赋予了温暖\r\n人都需要自我约束和强制，哪怕很疲惫了，还要强迫自己弹一会儿琴，读一会儿书，还要强迫自己读一些看不懂，不好读的书，《追忆似水年华》《哈扎尔词典》它们不像心灵鸡汤那么好读，但强制自己读下来一定有提高\r\n音乐是理想的东西，所有的音乐都是的，因为你在遵循一个法则，音乐里面是有法则可寻的，表面上看你觉得是感性的，什么灵感的，但灵感来自于长期的积累，不是凭空而产生的，它不过是你积累到一定阶段，一个叫灵感的方式呈现出来的\r\n看电影和听音乐其实是在某一瞬间让你逃离现实，去感受另外一种亲情和状态，去体验和窥探别人的生活\r\n最开始看的还是外国文学，小说和诗歌居多，但是现在看到社会，政治类偏多，水到聚成，到一定阶段就会开始关注政治和哲学\r\n我还没有反思自己为什么会看开一些事情，可能还是来自文学和电影\r\n文学的力量不止在我身上得以显现，历代所有人，比如高尔基，对于苦难生活的理解和坚韧都来自于小说的阅读，余华这些人曾用大篇幅描写早年的阅读对自己生活的影响，写过一种信仰的诞生，我也一样，文学力量有时候并不来自与故事，而是来自于一种叙事的力量，来自文字本身的感染力，你会通过阅读觉得人类很多的苦难都是必然的，你也在重复曾经的历史，人就是这样的，文学能开阔你的视野，让你越来越少大惊小怪，让你去除偏见，让你学会包容\r\n我不喜欢在推杯换盏中去高谈阔论什么，而是在一些好的氛围下，聊聊自己，聊聊电影，聊聊文学，但是毕竟尴尬的是，人们通常会觉得这样是故作姿态，其实我们恰恰爱好这点事情，没有太多的话题\r\n一段时间里，听音乐少了，弹琴少了，或者看书少了，我常常会有一种内疚感，这是多年形成的一个习惯\r\n音乐的美妙之处就是在于十个人猜想就有十种不同的想法，可是我却不点破是哪一种\r\n电影，之所以经久不衰，是因为很多人都想用电影让自己沉浸在美好之中，这些美好，常常会在记忆中闪现\r\n有带枕边书的习惯，最近在看木心的诗集，诗歌是文学的最高境界，我特别热爱语言。同一句话的不同表达就会让人玩味很久，或者从某种意义上来说，诗歌和歌词有很多相通之处，同样凝练优美\r\n我觉得做音乐，做文学的人，还是得追求真善美\r\n不管音乐还是文学，终究是一门手艺，创作者的一种。。。。得懂得一些乐理，得要钻研一些技术问题，不能空谈概念\r\n在一个作家成名的道路上，每一部作品就像是一级级台阶，从零到成功将会有很久的一段路需要走，而没有足够的台阶是无法走到那个高度的\r\n音乐就是每个人都有不同的理解，不同的想象，我能够看见这个那就是属于我的，比如我听许巍的歌，我一听这首歌我就会想起当年听这首歌的情形，我觉得这首歌似乎是属于我的，属于我那个年代的标记\r\n音乐在某些时刻确实有逃避的功能，但我们需要这样，偶尔逃避，但天天沉溺在其中是不对的\r\n正因为生活有不尽人意的地方，才需要听音乐和看书，听完音乐，看完书，觉得生活让你有向往的理由\r\n我不是真正的天才，不可能像那些天才一样，一蹴而就，那个能量耗费太强大，有人可能是那样的，一个作家可能一生中有几次一瞬间完成，据我了解，大部分人断断续续才能写一点东西，还是依靠理性\r\n李健谈父母和童年：\r\n小孩就是这样，因为受到的教育，我们不像外国小孩以父亲为榜样，我们都是崇拜英雄，但长大以后你会发现身边的人因为平凡而伟大，因为父亲甘愿为家庭，子女牺牲健康，牺牲事业，甘于日常琐事，我觉得没有什么比甘于平常的琐碎生活而更伟大\r\n我为父亲骄傲，是他对生活的隐忍和对家庭的忠诚\r\n童年生活伴着昔日父母年轻的脸庞显得美好而带酸楚，完整的家庭生活再昏暗的灯光下温馨而遥不可及。尽管心里有伤感，可宁愿沉浸其中，任由那样的情绪泛滥，像是刻意喝醉似的，有时候回忆也是一种冒险\r\n普通人的家庭就像漂浮在还是的小船，随时而来的暴风雨都可以让它摇摇晃晃\r\n大三那年的时候我都待不下去了，但是为了父母的颜面我才留了下来，后来读了音乐学院的双学位，人的能量是无穷的，其实我的父母文化水平都不高，对我的要求也不高，我毕业找到工作了，他们就放心了，孩子唱歌他们帮不上，就觉得不要阻拦，不要去添堵就可以了\r\n我反而庆幸自己得到恰如其分父母的情感，更多的是有自由的童年生活，我的世界是靠自己去体验，去理解，我觉得一个孩子，也不需要那么多的娇惯\r\n在我们不断追逐理想时，不能忘记故乡的山川，总是在等待荣归故里的那一刻，却在真正的拥有以后，发现自己早已回不去了，故乡只在梦乡之中，一个人，一旦离开了家乡，其实就再也回不去了\r\n我童年很自由，想干嘛就干嘛，阳光灿烂的，我觉得应该是我比其他孩子幸运很多，尽管那个年代物质条件很匮乏，很多东西都满足不了，但正是因为这样，更容易有希望，有幸福感，可能吃块糖，就会觉得很幸福，也没有那么多的压力，就完全天天奔跑在我们那个院子里\r\n我跟我母亲关系挺好的，但是我母亲年轻时很厉害，脾气暴躁，我们都很怕她，反而她年老时，逐渐变成我心目中那种女性妈妈\r\n70,80年代的人就那样，说心里话，父母的爱没有那么多，不像现在的小孩，当时父母处于生活最艰难，最卖力的一个阶段，上有老下有小，有工作的压力，有社会的责任，不可能像今天这样，一个家庭都给了独生子女，我家里有三个孩子，肯定是平摊这份爱\r\n我觉得一个小孩也不需要那么多爱，爱多了就是溺爱，被爱淹没在里面，我反而庆幸自己得到的是恰如其分的父母的情感', '2018-02-13 20:59:39', '8', '0');
INSERT INTO `article` VALUES ('53', '2', '李健谈人生迷茫的时期', '       那段时间除了看书就是看电影，基本上处于一个很闲散的状态，我对自己的未来也很迷茫，但许多问题随着时间的流逝解决了，音乐上的成长给我很多安慰和信心\r\n       人并不是耕耘就有收获，许多花永远也无法开放，流星即美丽又很残酷，而最有力量的却是我们自己的忍耐\r\n       新专辑的发行，算是给自己一个安慰，让我为那些虚度的或多或少的时光而减少一些愧疚，感谢生活本身，是它看似波澜不惊的涌动载我不知不觉地随波逐流，从而渐渐深感身不由己\r\n       天气实在太糟糕了，让我深深地体会到了什么叫无能为力\r\n       无论受人关注或不受关注。得到大家的认可或者是默默无闻的时候，我一直都觉得自己的内心强大，我不太会受外界的干扰。今天把我夸得体无完肤，我也不会波澜壮阔，或者今天批评我很多，我也不会真正丧失信心，全盘否定\r\n       内心不平静，如果你热爱生活，关注生活，在意身边的人，你就会平静\r\n       无论有什么？你心里的憧憬和向往是可能做到的，人是靠自己信念来支撑生活\r\n       因为你在体制内的工资不足以支撑体面的生活，追逐理想，这个理想能不能让你生存，有时候放弃工作，反正原来的工作也不好，根本不值得留恋，还不如做自己喜欢的事情\r\n       生活没有那么艰难，比起现在的生活，更困难的是对艰难生活的恐惧，那更让你感到举步艰难\r\n       迷惘是开始重新否定和怀疑自己，于是开始寻找一个真正属于自己的乐趣，很幸运这个乐趣成为我的职业，虽然乐趣不能成为谋生的工具，但它们给予的快乐是真正的精神依靠，老了并不可怕，真正可怕的是当你老了，还没有这些精神依靠\r\n       你要清楚的是实现理想的机会是非常少的，尤其是完全靠个人奋斗是非常艰难的，任何时代都一样，真正走向最上面的人是非常少的，有些远大理想其实很难实现，实现不了也没有关系，重要的是要拥有自己的生活，青春并不仅仅是指年轻，而是一个很好的状态\r\n       我曾经说过，身处困境却没有意识到困境是一件非常幸运也非常需要智慧的事情，曾经一度，我处在所谓的沉默期有七八年，很多人为我担忧，但是我恰恰是因为拥有了一些长期的乐趣，完全消解了那些巨大的压力，依然过得很好\r\n       能够和那些坏的事情和平相处，却不同流合污。坚持为美好的东西而努力，却不为失败或得不到而焦灼\r\n       在繁忙中，在劳累中，反而更有表达的欲望，无所事事会经常头脑空空\r\n       外人看你是低谷，不会看你经历了什么？\r\n       我也有很多浮躁的地方，也会被一些事情所左右，但是我有一个好处，就是愿意反思自己，善于自我安慰，善于自我调节\r\n       理想很多时候，终究会变成幻想，然后离你越来越远，因为终究从事自己喜欢的事的人是非常少的，但有句话说得好，人可以为崇高理想而卑微的活着，你的这种才能被不被世界认可，当然是个标准，能不能给自己一些真正的动力和安慰，那时另当回事\r\n       我的每张专辑，都是对我的情感和生命色彩的记录，第一张《似水流年》只有两个字，寒冷，因为那年冬天，我住在四合院，特别冷，没有暖气，所有的歌都在昏暗的灯光下冻着写的\r\n       我们大多数人被生活吓怕了，当你追求自己的理想却没有任何收入的时候，你就会害怕不能像周围的人那样体面的生活，人们总是在不断的比较中放弃自己的理想\r\n       我觉得还是应该关注眼下的生活，尽量能够体现一些生活的乐趣，现代人什么都快，你可以有伟大的理想，但这种目前的困境下，你也应该安于现在的困境，因为困境是你改变不了的，实现不了理想，你还可以活下去，但眼前的困境不去正视，你的理想更是妄想', '2018-02-13 21:03:51', '9', '0');
INSERT INTO `article` VALUES ('54', '2', '李健谈生活', '\r\n       大部分的生活都是平庸的，人生中有几个精彩的瞬间，那才是生命的意义\r\n       生活的确有艰难的一部分，但没有通常人们想的那么难，尤其在年轻人面前，如果你当时总考虑退路的时候，就非常难，很多时候，你需要自我坚强\r\n       当有一天面临苦难的时候，一要接受，二要苦中作乐\r\n       我不能做生活的主人，我也不能被生活打倒，我要与生活平行着，平起平坐着，这是我一直想学的\r\n       我觉得人生苦短，应该对几个人生乐趣，倒不是说及时行乐，人要享受今天，人们不应该对未来有太多的计划，就应该活在当下，人的很多烦恼来自于自我定义和自我设计时，生活一定不如你所愿，烦恼也随着而来\r\n       生活，总是着挣扎与自由中难做取舍，人性是懒惰的，容易追求安逸，但还是应该对自己有要求\r\n       你要坚持奋斗，因为当一切尘埃落定，一个通过勤勉奋斗的成功者自然就会出现\r\n       越来越热爱生活了，不知是懂得珍惜了，还是怕它失去\r\n       我不主张一个太有钱或太贫穷，过于为生活所累，内心和音乐会受到伤害，作品中有被排斥感，东西就不会优美自然，而太有钱，无端的消耗的太多，就会失去创作力\r\n       生活总是带给我们意外，悲剧或喜剧，让我对生命的无常充满敬畏\r\n       一分耕耘一分收获，其实生活就是这样，每个人都不平等，并不是说一份汗水一分收获。或许会遇到事半功倍的事儿，因为生活就是这样，如果都能像你想象的那样，那就不能生活\r\n       当别人做的一件不经意的事情，会影响你的生活时，你会为自己感到不值，所以，你要保持警惕，一定要排除，忽视这些事情\r\n       看似轻松和平淡，其实说一些很要紧的事情\r\n写些看似乐观，其实很伤感的事情\r\n       哪个背影不是渐行渐远\r\n       对我而言，人言并不可畏。你赞美或诋毁我，说完以后，就成为过去时了，所以不必在意外界的评价。\r\n       偶尔也会为生存担忧，为钱发愁，我想大部分人都这样嘛\r\n       我还是那句话，更看重我个人的生活，什么是你的生活，你那些喜好就是你的个人生活。为什么限制自己不去炒股，进工厂，考编，因为他会消耗你很多时间跟各种人打交道，这个是让你很为难的事情，我只有一个目的，一个愿望，找到一个稳定的工作养活自己，能体面的养活自己，没有其它路可以走了，做一个非常务实，不会好高骛远\r\n       长大以后的面貌还是靠自己，靠自我的境遇，靠自我的调教，相由心生\r\n       我常面对我终究会战胜的困难，但有时需要给自己为难，为难会让你激发更大潜力，这个是必要的，因为在长期松散的生活中需要给自己一种约束力和激发力，这是一种自我提升\r\n       每个人对生活要求不一样，追求的体面生活自然不一样，我并不追求奢侈，但我对生活品质的确有要求，比如说，我没经历过贫困的生活，受过很好的教育，并且学习也很努力\r\n       讲究和将就，都是相对的，你只要自己心里舒服就行\r\n       当你想怎么样时，它已经告诉你不能怎么样？留恋过去是一件奢侈品，所谓奢侈就是比不能拥有太多，偶尔回顾是可以，但不能沉浸在怀旧当中\r\n       我觉得人美好的人生应该像一天那样完整，清晨，中午，傍晚，晚上。很多人活到三十岁就夭折了，没有中午，你看，晚上的时候有星光，狂欢的时候有晚霞，清晨都不一样，很典型，很灿烂，人的一生像一天很完整也是成功的一生，美好的一生。\r\n       面对生活我们只能心平气和，这里面有被动也有主动的成分，被动是因为你改变不了生活，主动是因为你只有心平气和才能够去享受你可以享受到的东西，或者可以感受到你可以感受的，我觉得命运这两个字说得特别好，命可能是改变不了的，运气可能能通过自己的努力改变一些。\r\n       我不同意眼前的苟且这个说法，因为眼前不是苟且，如果我们又眼前的苟且，也会有远方的苟且，现代人的日常不是苟且，是大家拥有的生活，值得被尊重，有些人为了理想，必须要接受不尽如人意的生活，这是很正常的，我们不能老把希望寄予远方，眼下即远方。诗与远方代替不了一日三餐，你的信念终归需要一个栖身之所\r\n', '2018-02-13 21:06:55', '11', '1');
INSERT INTO `article` VALUES ('59', '2', '111', '111111111111111111', '2018-02-14 20:52:55', '8', '0');
INSERT INTO `article` VALUES ('61', '2', '1', '又回到了那种漂泊不定没有保障的日子，都说在北京生存不易，但是那看你要怎么生活了。如果你成天惦记着吃鲍鱼鱼翅，住豪宅开好车，背LV穿PRADA，那当然会觉得生存是一件很有压力的事情，但是你要是像我这样，住在小房子里，出入自行车，穿20块钱一件的纯棉T恤，吃简单健康的饭食，算下来一个月真的花不了什么钱。而且我最近发现了一个理发的好地方，理一次发才5块钱，一点不比那些要几百块钱的手艺差。\r\n    当你对于物质生活的要求越低，你在精神上就越自由，你的心灵生活就越丰富。', '2018-03-18 16:56:57', '1', '0');
INSERT INTO `article` VALUES ('62', '2', '2', 'File file=new File(\"F:\\\\ChatData\");\r\n		if(!file.exists())\r\n		{\r\n			file.mkdir();\r\n		}', '2018-03-18 17:06:14', '7', '0');

-- ----------------------------
-- Table structure for articleimage
-- ----------------------------
DROP TABLE IF EXISTS `articleimage`;
CREATE TABLE `articleimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imageName` varchar(255) NOT NULL,
  `articleId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articleimage
-- ----------------------------
INSERT INTO `articleimage` VALUES ('14', '15180731165818e2d62a9b06a897be881a9dc4d5d43da.jpeg', '47');
INSERT INTO `articleimage` VALUES ('15', '1518073116586d47b5f120e14bd1544d1a0fb3e072f14.jpg', '47');
INSERT INTO `articleimage` VALUES ('17', '1518524740548lijianyvlu1.jpg', '49');
INSERT INTO `articleimage` VALUES ('18', '1518524740558lijianyvlu2.jpg', '49');
INSERT INTO `articleimage` VALUES ('19', '1521363974048-test.jpg', '62');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of link
-- ----------------------------
INSERT INTO `link` VALUES ('1', '1', '贴吧李健吧', 'http://tieba.baidu.com/f?ie=utf-8&kw=%E6%9D%8E%E5%81%A5&red_tag=e0283135488');
INSERT INTO `link` VALUES ('2', '1', '这是一个分享健哥语录的帖子', 'http://tieba.baidu.com/p/3698276778');
INSERT INTO `link` VALUES ('9', '1', '我要和生活平起平坐', 'http://blog.renren.com/share/231349540/4990908982');
INSERT INTO `link` VALUES ('11', '2', '李健的咖啡馆', 'http://lijianfans.blog.sohu.com/');
INSERT INTO `link` VALUES ('12', '0', '蓝丝带(lsd.tingyou.xyz)', 'http://lsd.tingyou.xyz');
INSERT INTO `link` VALUES ('16', '0', '【不完全备忘录】2015，李健登上过的那些杂志', 'https://tieba.baidu.com/p/4164861336?red_tag=3005237822');

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

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
INSERT INTO `uacomment` VALUES ('33', '0', '0', '27', ' 再也找不回最初的快乐了，最让我焦虑的是这种生活正在一点点毁掉我对音乐的敏感和热爱。有好几次，我坐在条件一流的排练厅里，抱着一流的吉他，却压根不想弹琴，弹来弹去都是那些千篇一律的旋律，我真的都快吐了。我知道，我应该好好想一想接下来的路该怎么去走了。', '2018-02-14 20:26:17');
INSERT INTO `uacomment` VALUES ('34', '2', '0', '58', 'wwwwwwwwwwwwwwwwwwww', '2018-02-14 20:51:58');
INSERT INTO `uacomment` VALUES ('36', '5', '35', '59', 'xxxxxxxxxxxxxxxxxxxi', '2018-02-14 20:53:47');

-- ----------------------------
-- Table structure for uaribbon
-- ----------------------------
DROP TABLE IF EXISTS `uaribbon`;
CREATE TABLE `uaribbon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `articleId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uaribbon
-- ----------------------------
INSERT INTO `uaribbon` VALUES ('37', '2', '27');
INSERT INTO `uaribbon` VALUES ('49', '2', '31');
INSERT INTO `uaribbon` VALUES ('51', '7', '31');
INSERT INTO `uaribbon` VALUES ('52', '2', '48');
INSERT INTO `uaribbon` VALUES ('57', '0', '47');
INSERT INTO `uaribbon` VALUES ('60', '2', '49');
INSERT INTO `uaribbon` VALUES ('62', '0', '54');
INSERT INTO `uaribbon` VALUES ('70', '0', '31');
INSERT INTO `uaribbon` VALUES ('72', '0', '50');
INSERT INTO `uaribbon` VALUES ('73', '0', '27');

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
INSERT INTO `user` VALUES ('1', '丽江', '123');
INSERT INTO `user` VALUES ('2', '美若黎明', '123');
INSERT INTO `user` VALUES ('5', '为你而来', '123');
INSERT INTO `user` VALUES ('6', '璀璨', '123456');
INSERT INTO `user` VALUES ('7', '老张', '123456');
