/*
 Navicat Premium Data Transfer

 Source Server         : localhost2
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : douban

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 27/09/2020 23:51:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for moviereviews
-- ----------------------------
DROP TABLE IF EXISTS `moviereviews`;
CREATE TABLE `moviereviews` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `movieid` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(50) NOT NULL DEFAULT '',
  `avatorimgurl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `createdon` varchar(100) NOT NULL DEFAULT '',
  `starlevel` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `reviewtitle` varchar(100) NOT NULL DEFAULT '',
  `reviewshort` varchar(400) NOT NULL DEFAULT '',
  `spoilertip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=711 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of moviereviews
-- ----------------------------
BEGIN;
INSERT INTO `moviereviews` VALUES (591, '4407781727800393729', '网友小西', 'https://img9.doubanio.com/icon/u162682994-6.jpg', '2019-03-02 17:13:00', '推荐', '看完这种类型的影片后，我们必须自问的三个问题', '1 我们看这类“边缘底层视角”的影片之后究竟应该明白什么？ 2 身不由己的作恶者（影片中卖掉女儿的父母）应该受到惩罚吗？ 3 人该如何面对阶级和个人命运问题？ 在回答这些问题之前，我们先来看看影片本身。 主角赞恩的故事其实很有层次感。影片一开始直接的制造差异和矛盾，...', '');
INSERT INTO `moviereviews` VALUES (592, '4407781727800393729', '姚璐', 'https://img9.doubanio.com/icon/u3681338-46.jpg', '2019-05-01 22:59:45', '力荐', '这个清醒的小男孩，太让人心疼了', '中国版海报上的一句宣传语非常引人注目： 我要控告我的父母，因为他们生下了我。——赞恩 黎巴嫩女导演拉巴基以她独特的视角和方式，呈现了这个发生在黎巴嫩贫民窟中的叙利亚难民的故事： 年龄不详、据说是12岁左右的男主角赞恩，与父母、兄弟姐妹为了躲避 叙利亚战争，非法生...', '');
INSERT INTO `moviereviews` VALUES (593, '4407781727800393729', 'andredao', 'https://img9.doubanio.com/icon/u43892300-6.jpg', '2019-03-24 01:52:12', '推荐', '迦百农：天使面孔的孩子生活在人间地狱', '最近爆款电视剧《都挺好》里原生家庭罔顾子女花样作妖，看得人义愤填膺，代入感极强。 剧中苏明玉有句质问非常悲怆： 你们生了我却不好好养我，为什么？！ 其实，去年戛纳电影节拿下评审团奖的阿拉伯语电影《迦百农》后来在金球奖和奥斯卡有都提名最佳外语片)，先于《都挺好》...', '');
INSERT INTO `moviereviews` VALUES (594, '4407781727800393729', '把噗', 'https://img9.doubanio.com/icon/u42097517-14.jpg', '2019-03-02 11:07:47', '推荐', '《迦百农》：“悲”的三种表现', '《迦百农》其实是三部电影组合一起的产物，这三部电影代表着三类叙事模式。选择任何一种叙事模式都能作为整部电影的驱动器，但结果恐怕很难出色。因为明眼人一眼就看出叙事的套路，落入俗套终归无法脱颖而出。 第一类电影是法庭戏，通过闪回向观众交代事件的前因后果。这是整部...', '');
INSERT INTO `moviereviews` VALUES (595, '4407781727800393729', 'summer', 'https://img9.doubanio.com/icon/u133213032-4.jpg', '2019-05-18 20:20:52', '力荐', '《迦百农》影评', '...................................................................................................................................................................', '');
INSERT INTO `moviereviews` VALUES (596, '4407781727800393729', '枪稿', 'https://img3.doubanio.com/icon/u167697869-1.jpg', '2019-05-11 21:53:08', '推荐', '我第八次鄙视我的灵魂', '《何以为家》跑成了一匹票房黑马。 连同《摔跤吧爸爸》，说明我们的观众并不是只能接受商业类型片。 这些真正表现民生疾苦的现实题材，显然能够引发我们感同身受的共鸣。 然而，还是那个问题，这样的故事，我们这里遍地都是，而这样的电影，我们却拍不出来。 文|三九 作者简介...', '');
INSERT INTO `moviereviews` VALUES (597, '4407781727800393729', '格调闲人', 'https://img3.doubanio.com/icon/u52685493-10.jpg', '2019-04-05 00:06:49', '推荐', '《迦百农》：“你为什么要起诉父母？因为生了我。”', '1 “你为什么要生下我？” 我很少写影评，如果不得不写的话，要么是因为片子太好，要么是片子太烂，又或者是片子太烂被人说得太好，或者是片子太好被人说得太烂。 《迦百农》属于第一种，好到让人心疼的那种。 相比于内地的新译名《何以为家》，我更喜欢其直译名《迦百农》。迦...', '');
INSERT INTO `moviereviews` VALUES (598, '4407781727800393729', '黄小邪', 'https://img3.doubanio.com/icon/u1614291-2.jpg', '2019-01-06 13:22:08', '推荐', '迦百农', '与两友在纽约film forum看黎巴嫩导演Nadine Labaki新片《迦百农》（2018），戛纳评审团奖。一友哭得很惨；我极力克制与分析，也有一段没忍住眼泪（似乎是第一次出现监狱那场，感觉到了、读导演访谈也印证了，那是真的监狱、真的犯人，很多孤苦无依的小孩，很多“非法移民”，大...', '');
INSERT INTO `moviereviews` VALUES (599, '4407781727800393729', '水木丁', 'https://img2.doubanio.com/icon/u1026712-83.jpg', '2019-05-03 09:23:49', '力荐', '像你这样的孩子存在这世界上，让我稍微对这世界有了些期待。', '每年的北京电影节都会盲选一两部不熟悉国家的电影来看，这次是黎巴嫩电影《何以为家》，电影的原名叫《迦百农》，看电影之前，我去查了下资料，主要说这是圣经中的一个地名，是耶稣被迫离开家乡后曾经停留过的一个地方，在这里传道，据说这里出现过很多神迹。 我看到还有一个引...', '');
INSERT INTO `moviereviews` VALUES (600, '4407781727800393729', '落水蚂蚁', 'https://img1.doubanio.com/icon/u137816276-27.jpg', '2019-05-04 20:37:34', '较差', '看完非常生气', '一直期待这部电影，毕竟黎巴嫩、难民问题这两点就为电影赚足了噱头，然而看完后真的很失望，甚至非常生气。 这部“基于真实故事改编”的片子对我们了解黎巴嫩境内的难民生活毫无帮助，反而进一步固化了人们对难民的刻板印象。精心设计的催泪弹式的情节，脸谱化的人物（没有人性...', '');
INSERT INTO `moviereviews` VALUES (601, '4407781727800393729', 'Ucigas', 'https://img3.doubanio.com/icon/u44151155-140.jpg', '2019-04-29 13:08:49', '力荐', '何以为“贫穷这场战争下的希望”——从童工到耕牛', '最初看到某张海报封面上写着“我要控告我的父母，因为他们生下了我”时，还以为是个关于亲子的电影。正如人们最常说的：做什么都要考试，但为人父母却不需要。 但看完电影之后觉得最令人压抑和无奈的不仅是儿童问题，亲子问题，而是贫困与战争的问题。每一个陷在贫困中的人都在...', '');
INSERT INTO `moviereviews` VALUES (602, '4407781727800393729', '菠萝炸鸡', 'https://img1.doubanio.com/icon/u49613689-369.jpg', '2019-05-14 13:09:55', '力荐', '黑暗与光明', '我原以为看了短评, 剧透, 预告片后到了电影院会以泪洗面. 然而我连哭都哭不出来. 我只感到窒息. 活着的人不去反思悲剧为何循环而一厢情愿地觉得一切都会变好, 沉浸在未来还没来你怎么知道这样的荒唐假定. 在一切都会变好，We shall overcome这样的屁话中，悲剧在一代代人间传递...', '');
INSERT INTO `moviereviews` VALUES (603, '4407781727800393729', '罗宾汉', 'https://img3.doubanio.com/icon/u46715162-61.jpg', '2019-03-18 00:57:32', '还行', '戏剧性因素损害了现实主义的纪录片质感', '这种故事题材中国观众应该相当熟悉，因为上世纪八九十年代，第六代导演们最擅长的就是这类乡土作品，张艺谋在国际影展上大放异彩的作品大部分莫过于此。这部在去年戛纳获得评审团奖的作品至少让观众对黎巴嫩社会底层人民的生活状态有了一种强烈的印象，尽管混杂了不少刻板的元...', '');
INSERT INTO `moviereviews` VALUES (604, '4407781727800393729', '吴玫', 'https://img9.doubanio.com/icon/u67100023-5.jpg', '2019-05-08 15:10:10', '推荐', '《何以为家》：同情赞恩以后呢？', '及成人肩高的赞恩，才12岁就长兄如父了：拖着弟弟妹妹出摊卖蔬菜汁、替人送煤气罐挣钱补贴家用、跟小贩讨价还价购买必需的家庭生活用品……假如不是因为来初潮不久的妹妹被父母卖给不知底细的男人做了妻子，赞恩也许就慢慢变成了他的父亲，虽然口袋里没有钱娶妻生子支撑起一个...', '');
INSERT INTO `moviereviews` VALUES (605, '4407781727800393729', '讲故事的男同学', 'https://img9.doubanio.com/icon/u115541853-4.jpg', '2019-03-18 23:12:56', '力荐', '澳门恋爱·电影馆介绍暨《何以为家/迦百农》观影实录', '博主之前去澳门恋爱电影馆看电影，片头广告播放了这个广告，当时的名字是港澳的翻译《星仔打官司》，因为把Zein翻译为星仔，个人感觉，这个翻译完全把《迦百农》的已意境消磨殆尽。 首先介绍一下这个恋爱电影馆，去过澳门的朋友都知道大三巴，其实他的地理位置，就在大三巴左边...', '');
INSERT INTO `moviereviews` VALUES (606, '4407781727800393729', '死咗', 'https://img3.doubanio.com/icon/u1704875-52.jpg', '2019-03-11 03:52:54', '推荐', '生而为人，请对我说对不起', '无论从哪种意义上来说，《迦百农》都称得上生猛。既有单刀直入粗粝恣意的影像，也有直言不讳当面对质的思想碰撞，甚至因为毫不掩饰地抒情和呐喊，会让人觉得过于粗暴简单。但这种生猛的气质就像是一体两面，在你被电影目瞪口呆地进行了两个小时的心灵轰炸后，你也许很难说得上...', '');
INSERT INTO `moviereviews` VALUES (607, '4407781727800393729', '姨妈的鸭', 'https://img1.doubanio.com/icon/u27405327-59.jpg', '2019-05-02 15:01:06', '推荐', '父母不过是倒数第二块多米诺骨牌而已', '假如你只是为了这一张截图而走进电影院，那你会失望的。 影评称述式的在讲述一个少年犯动手前的一小段人生，但是，这不仅仅是父母的问题，当然我也说不清到底指责了多少问题，因为影片里和现实里的问题真的太多了，我指责不过来了。 我们当然可以把问题很浅薄的归结到父母身上...', '');
INSERT INTO `moviereviews` VALUES (608, '4407781727800393729', '白头豕', 'https://img9.doubanio.com/icon/u42726241-4.jpg', '2019-05-05 01:24:50', '很差', '本当是黎巴嫩《三毛流浪记》，原来是欧洲的《郭巨埋儿》', '迷信马尔萨斯的白左们又在无耻地给穷人们推销计划生育了。 看这部电影的过程中，我为电影描述出来的许多真实的苦难流了不少的眼泪，也一直在等待真正的主题浮出来。 所有描述苦难的电影，包括纪录片在内，都需要有一个共同的主题，那就是诠释出苦难的原因，并激发人们将之改变...', '');
INSERT INTO `moviereviews` VALUES (609, '4407781727800393729', 'KidCoolAF', 'https://img3.doubanio.com/icon/u2573880-42.jpg', '2019-03-08 10:17:05', '力荐', '用尽全力的绝望', '我一直告诉你，“你儿子还没有出生就已经死了”，他并不存在，即使是番茄酱也有名字，有生产日期和到期日期。 当一个地区连宗教都无法维护秩序时，它就真正地进入了一种最为原始的混乱。黎巴嫩女导演Nadine Nabaki第三部剧情长片《迦百农》继续探讨黎巴嫩严重的社会公平问题。 ...', '');
INSERT INTO `moviereviews` VALUES (610, '4407781727800393729', '果麦文化', 'https://img1.doubanio.com/icon/u146444852-18.jpg', '2019-05-05 15:37:00', '力荐', '《何以为家》的译名很好玩', '谈谈《何以为家》的几个译名吧，很有意思。 第一个，直译的《迦百农》。很多人说这个其实比《何以为家》更贴近电影的灵魂和文化内核，确实没错。 迦百农，英文叫做Capernaum，这其实是圣经新约里的一个地名，也是耶稣曾经传道的地方。 它曾是一座无比繁华的犹太城、港口城市，...', '');
INSERT INTO `moviereviews` VALUES (611, '4407781727800393729', '瓜子酱', 'https://img9.doubanio.com/icon/u62804444-4.jpg', '2019-07-10 00:49:59', '推荐', '《何以为家》：黎巴嫩儿童不是职业', '五月中旬的时候，漫威电影《复仇者联盟4:终局之战》已经迈过40亿元票房大关而余威未减，在中国历史票房榜单上位居《战狼2》与《流浪地球》之后。在诸多超级英雄的合围之下，只有一部似乎名不见经传的黎巴嫩电影、一部由女性导演拍摄的现实主义“惨片”突出重围——正是《何以为...', '');
INSERT INTO `moviereviews` VALUES (612, '4407781727800393729', '基督山伯爵', 'https://img3.doubanio.com/icon/u139067659-1.jpg', '2019-05-09 00:04:27', '力荐', '看完这部电影，估计你再也不想生二胎了', '生育问题是全人类共同的话题。改革开放四十年来，中国乃至世界人口迅速膨胀，极速从40亿到70亿。人口迅速增长，会带来“人口红利”，会吸引人口密集型产业的扎堆注入，人口生活水平迅速提高，国家财富迅速的增长。但人口增长到一定程度，负面效应源源不断。最直接的，必定是生...', '');
INSERT INTO `moviereviews` VALUES (613, '4407781727800393729', '字润不知', 'https://img9.doubanio.com/icon/u6236002-35.jpg', '2020-03-07 20:50:31', '力荐', '身为女孩子，最高难度系数的生存模式', '小男孩真的演得很好，正是他演得太好了，让我看见了很多很多细节，看见了她的妹妹，看见了街道流浪小妞梅森，看见了那所房子里其他的女孩子，看见了镜头之外的那些女孩子。 这些女孩子，让我想到了我写过影评的那些片子。《风雨哈佛路》中的女孩子，她的父母是社会的人渣，一个...', '');
INSERT INTO `moviereviews` VALUES (614, '4407781727800393729', '托尼洛克', 'https://img3.doubanio.com/icon/u151413879-2.jpg', '2019-05-01 20:06:07', '较差', '看完明白啥叫“目的性太强”', '这是一部 拍给黎国人民的计划生育宣传片 拍给欧洲右派的接纳难民宣传片 主要的六宗罪如下： 1⃣️圣人化的男主 2⃣️脸谱化的“恶人” 3⃣️套路化的童年悲剧 4⃣️消费国民苦难&amp;社会问题的电影 5⃣️作为一部卖惨电影又回复戏剧化、刻意煽情 6⃣...', '');
INSERT INTO `moviereviews` VALUES (615, '4407781727800393729', 'LesMistons', 'https://img3.doubanio.com/icon/u161942791-12.jpg', '2019-02-17 05:55:31', '较差', '随便写的但我很生气', '太奥斯卡了。觉得自己又陷入看辛德勒名单时的情形。 逃离父母时那段handheld cam和片中的closeup我很喜欢，可能是本片为数不多的用镜头而非剧情推进情感的地方。电影与戏剧的不同之处在于其独特语言。如何用镜头讲话是每位导演的必修课，在接触此类具有现实意义的题材前导演应...', '');
INSERT INTO `moviereviews` VALUES (616, '4407781727800393729', '行走的影碟机', 'https://img2.doubanio.com/icon/u82817700-23.jpg', '2019-12-27 12:48:15', '力荐', '绝望着期望，微笑着前行', '看到国内上映时的宣传语“我要控告我的父母，因为他们生下了我”，就知道这部电影要讲什么，更知道看这部电影会有什么感受。 与其说是在了解一个地区、了解不同人的生活境遇，不如说，终于找到了一种全人类的共鸣。 Zain是十二岁吗？看身材，不像，太弱小了。看言行，更不像，...', '');
INSERT INTO `moviereviews` VALUES (617, '4407781727800393729', '石板栽花', 'https://img1.doubanio.com/icon/u120496189-7.jpg', '2019-03-03 23:17:27', '推荐', '苦难吞噬人性？', '苦难吞噬人性？ 《迦百农 كفرناحوم 2018)》让人了解黎巴嫩、了解“迦百农”地区的贫困现状，特别是儿童人权问题具有强烈的现实意义。从人性视角看，它揭示了苦难背景下的人性的某些特征，这使本片具有了超越现实意义的伦理价值。 人性是具有普遍性的...', '');
INSERT INTO `moviereviews` VALUES (618, '4407781727800393729', '后廊望夏', 'https://img1.doubanio.com/icon/u64573164-9.jpg', '2020-02-26 11:18:10', '力荐', '为何要让天使来人间受难？', '赞恩 ·  阿尔 · 哈吉 本名 赞恩 · 阿尔 · 拉菲亚 为了躲避叙利亚境内的战争,他随家人来到黎巴嫩,成为了难民....... 本片所出演的大部分剧情都是他的亲身经历 迟迟不敢看《何以为家》，儿童视角的难民题材想想都让人心碎，最近经历了武汉的事，以为不会再那么敏感，意料之中...', '');
INSERT INTO `moviereviews` VALUES (619, '4407781727800393729', '(◉ɷ◉ )', 'https://img3.doubanio.com/icon/u200006555-1.jpg', '2020-01-31 14:36:43', '力荐', '舒克兰', '我没有去过伊拉克，也没有踏足过贫民窟，但是我想起两件事。1.有一次着急上厕所，急匆匆冲进Dubai mall的洗手间，差点撞到一个打扫卫生的非洲大姐，\"oh,sorry\"我抬头说，看到她有一双大大的眼睛，她笑着回我“welcome to my office”，眼神里满是善意和明亮。2.还有一次去迪拜...', '');
INSERT INTO `moviereviews` VALUES (620, '4407781727800393729', '野马青年', 'https://img3.doubanio.com/icon/u159662137-1.jpg', '2019-03-10 11:52:47', '力荐', '在了解和撼动那个社会结构的同时，改变生育观念同样重要', '昨晚看完这部电影，几乎彻夜难眠，在家里哭成狗。 不仅因为扎因这个令人心疼的孩子（他现在是我的男神），更因为有那么多的悲剧，本可以避免。 剧情结尾，扎因的父母在提到离世的女儿时所表现出的悲痛，很多人觉得那是鳄鱼的眼泪，毕竟——你们早干嘛去了，可以说就是这对夫妻...', '');
INSERT INTO `moviereviews` VALUES (621, '4407781727800393729', 'xiaoxiongdi', 'https://img3.doubanio.com/icon/u4786986-11.jpg', '2018-06-18 08:55:20', '推荐', 'Life is a bitch', '最早看到的剧照是一个小男孩靠在墙上，怅然若失，另外一个小婴儿穿着不那么整洁的袜子靠在他旁边，好像并不太能理解眼前发生了什么。 今天看完电影，有点失魂落魄，好像明白了剧照上的那个“世界”。一出影院，繁华的商业街，推婴儿车的精致太太，开limo的成功男士，咖啡店，男...', '');
INSERT INTO `moviereviews` VALUES (622, '4407781727800393729', '碧浪达', 'https://img9.doubanio.com/icon/u94042317-5.jpg', '2019-04-29 22:22:54', '力荐', '献给电影院坐我身边的三个傻逼。', '《何以为家》真的是部好电影，整个过程如鲠在喉，但是眼泪怎么都落不下来，作为艺术电影干净利落没有炫技的手法和矫情的剧情。 有个细节，男主赞恩裤子的logo是美国队长的盾牌，可是虚拟的超级英雄并不能拯救身为难民，处于国家战争中的赞恩。甚至不能解救十一岁就被卖给别人当...', '');
INSERT INTO `moviereviews` VALUES (623, '4407781727800393729', '沈先生', 'https://img9.doubanio.com/icon/u45269720-16.jpg', '2020-05-27 19:44:43', '力荐', '活着，没有撤退可言', '当上帝给了你一手烂牌，烂到爆，你要怎么去打。 绝望解决不了任何问题，自暴自弃，随波逐流，输了就输了？ 《何以为家》里的赞恩，十二岁就活得很操心，得照顾弟弟妹妹，还得打工，下班后还得顺手牵羊些食物回家。他担心妹妹被强迫嫁人，但是毫无办法，在自食其力之前，父母是...', '');
INSERT INTO `moviereviews` VALUES (624, '4407781727800393729', '进羽', 'https://img2.doubanio.com/icon/u157552911-3.jpg', '2019-05-01 17:01:43', '力荐', '孩子与大人的苦难', '将近两个小时的时间里仿佛像听了一个故事，关于一个十二岁勇敢男孩的故事。小男孩的名字赞恩，生活在一个难民家庭之中，家里的孩子挤满了所租的房子，他有一个十一岁可爱的妹妹，因为年龄相仿他最疼爱这个妹妹。而他知道家里经济困难，一旦妹妹“开花”就会被父母卖给房东以换...', '');
INSERT INTO `moviereviews` VALUES (625, '4407781727800393729', '阿尔法猫', 'https://img1.doubanio.com/icon/u61968660-8.jpg', '2019-05-14 22:29:52', '力荐', '世界那么大，有没有我的家？', '何以为家？以快乐、美好和爱为家！ 我要带你到处去飞翔，走遍世界各地去观赏，有烦恼没有那悲伤，自由自在身心多开朗。……我们要飞到那遥远地方看一看，这世界并非那么凄凉；我们要飞到那遥远地方望一望，这世界还是一片的光亮。 ——《张三的歌》 这个世界对于赞恩来说，就只...', '');
INSERT INTO `moviereviews` VALUES (626, '4407781727800393729', '思维的翅膀', 'https://img9.doubanio.com/icon/u151306944-5.jpg', '2019-12-05 18:07:58', '力荐', '让你绝望的现实焦虑', '艰难的现实展示给我们的往往是富二代更加肤白貌美气质佳，难道穷人真的只能老鼠儿子会打洞吗！难道真的有穷人基因一颗永流传吗！ 这本书揭示了中国一句老话“穷山恶水出刁民”。 我们以为的一些穷逼思维，其实不存在。 穷人更愚昧？他们缺少信息来源。不清楚一些事情能给他们带...', '');
INSERT INTO `moviereviews` VALUES (627, '4407781727800393729', '我爱超级大母龙', 'https://img2.doubanio.com/icon/u208656928-3.jpg', '2019-12-30 10:20:38', '推荐', '阳光之下没新事', '导演通过中东国家很常见，正常国家很不常见的日常生活描写让观众逐渐产生一种代入感，让观众对每个人物产生同情和怜悯。给我印象比较深的就是叙利亚人想去欧洲混，埃塞俄比亚的人却拼命想留在黎巴嫩这种鬼地方，天上以色列的直升机日常飞来飞去。某些人可能感叹我国的幸福生活...', '');
INSERT INTO `moviereviews` VALUES (628, '4407781727800393729', '一朋', 'https://img9.doubanio.com/icon/u40760493-6.jpg', '2019-09-12 21:39:25', '力荐', '从视听语言角度摘要可取之处', '电影几乎全程手持实景拍摄，按道理是纪录片风格，但实际上却加入了不少高超的视听语言，我试着梳理一下： 影片一开始，伴随着音乐，一群孩子一起嬉笑打闹、抽烟、拿着枪玩耍。虽然孩子们在欢笑，但是木头枪出现有了意象作用。 摩天轮的意象，上一秒赞恩飞到顶端，看见海平线和...', '');
INSERT INTO `moviereviews` VALUES (629, '4407781727800393729', 'fly1943', 'https://img9.doubanio.com/icon/u3655756-14.jpg', '2019-08-31 21:40:02', '力荐', '放羊，赚钱，娶媳妇，生娃，接着放羊', '看完不知该说些什么。 想起中国的一个故事：贫苦的西北荒原，有人问一个少年放羊倌，你放羊是为了什么？羊倌说卖钱。又问卖了钱干什么？卖了钱娶媳妇。娶媳妇为了什么？生娃。生了娃干什么？放羊。这何其像也！ 谁的人生不是一场戏，从出生，甚至在胎中就已经上场了。有人欢喜...', '');
INSERT INTO `moviereviews` VALUES (630, '4407781727800393729', '沐渔', 'https://img1.doubanio.com/icon/u156117110-8.jpg', '2019-08-15 17:40:23', '推荐', '逃离是为了自信的归来', '这部电影的情节非常的简单，剧情甚至可以说像是流水账，但是贵在真实。年轻的赞恩以其忧郁的眼睛贯穿了这部电影的始终，（我注意到他甚至在两年后电影的颁奖现场也是那种眼神，毫无疑问，战争给他带来了终身难以磨灭的伤疤。）只在电影末尾结束的时候，才在摄影师的要求下挤出...', '');
INSERT INTO `moviereviews` VALUES (631, '4407781727800393729', '北回归线', 'https://img1.doubanio.com/icon/u72155554-8.jpg', '2019-01-28 01:31:59', '力荐', 'Capernaum 长评', '新年伊始在 Film Forum 看了《迦百农》，继去年《羞辱》之后又一部口碑极佳的黎巴嫩电影。和去年此时一样，这部作品入选了奥斯卡最佳外语片的五强，也是奖项的有力竞逐者。两部电影的取景地都在黎巴嫩首都贝鲁特，但和《羞辱》多为室内戏不同，《迦百农》大量外景和实景镜头的...', '');
INSERT INTO `moviereviews` VALUES (632, '4407781727800393729', '下凡', 'https://img2.doubanio.com/icon/u168353300-3.jpg', '2020-03-19 22:46:29', '推荐', '“男孩父亲说我们这种人究竟是死是活又有谁会在乎呢”', '一、主题 第一是绝望人生下对真主、“神的盲目”。因为真主说过“孩子就是希望”所以他们不断生育，为自己开脱，用“生育癌”来找寻生活的寄托，可自己并非养的起。赞恩入狱萨哈去世，母亲还在以自己又怀孕了而作为生活的希望。在狱中教会的人到达鼓舞，狱中叙利亚人还在求神，...', '');
INSERT INTO `moviereviews` VALUES (633, '4407781727800393729', '卡夫卡的小屋', 'https://img9.doubanio.com/icon/u138059440-4.jpg', '2020-02-21 20:33:01', '力荐', '难道穷人就没有生育的权利吗？', '在这个娱乐至上的21世纪，很少有电影像这部电影一样给人心灵带来如此强烈的冲击力。 如果不是在电影院看到这部电影，你很难想象，在同一个世界，另一片土地上的人们，还生活在水深火热之中，在生存边缘挣扎。 这部电影，它太真实了，几乎让人觉得是一部纪录片。 没有夸张的表演...', '');
INSERT INTO `moviereviews` VALUES (634, '4407781727800393729', '叶眉', 'https://img3.doubanio.com/icon/u78612569-10.jpg', '2019-05-27 01:49:33', '力荐', '人到底为什么生孩子？', '电影充分呈现了贫困地区儿童的生存状态：缺衣少食，父母也挣扎在贫困线上，连给孩子提供温饱生活的能力都没有。孩子却一个接一个的生出来。女孩一到性成熟就卖给别人做媳妇，男孩自己苦苦挣扎讨生活。 11岁的妹妹死于难产，男孩捅了妹夫一刀，然后被判刑五年。 母亲对此表示伤...', '');
INSERT INTO `moviereviews` VALUES (635, '4407781727800393729', '甦', 'https://img3.doubanio.com/icon/u1148235-1.jpg', '2018-05-17 20:50:38', '力荐', 'Spider-Man? No I’m just a cockroach man.', '从一句话的简介 就能直击心灵 再到120分钟看完整个故事 心灵一直受到着冲击与震撼。 三个看片小伙伴 开篇就哭的稀里哗啦 直到结束 已经泣不成声  真的是一部还没看完就想让全世界去看的电影。就为那一句在法院上12岁的小ZEIN的发言：我要控诉父母生下我。我想让那些无法养活孩...', '');
INSERT INTO `moviereviews` VALUES (636, '4407781727800393729', '珈蓝婆娑', 'https://img1.doubanio.com/icon/u77155291-9.jpg', '2019-05-07 21:23:47', '力荐', '微笑只是我的伪装', '从事教师这个行业已经接近两年。我从来都不愿在人前或熟悉的人面前过多谈论这个职业。也不愿在人群中被学生或家长认出。非工作时间里做到最大可能地回避。 教育其实是非常可怕的一件事。 我在读大学时一直逃避未来就业或许只有老师这条道路这个现实。觉得边缘性性格的自己只会...', '');
INSERT INTO `moviereviews` VALUES (637, '4407781727800393729', '没有', 'https://img9.doubanio.com/icon/u153601809-4.jpg', '2019-05-13 22:54:21', '力荐', '爱不是能用理由推脱的事情', '我们好像都已经习惯了父母用各种理由对自己忽视孩子辩解，可是问题就出在这，这本来就是一件没有什么可辩解的事情啊。 法庭上，法官提醒赞恩的律师不要用赞恩父母的“伤疤”提问，赞恩父母双眼含泪情真意切地反驳，看，我对他们不好，是因为我的生活太难了，你没有过过我这么难...', '');
INSERT INTO `moviereviews` VALUES (638, '4407781727800393729', '思维的翅膀', 'https://img9.doubanio.com/icon/u151306944-5.jpg', '2019-06-26 23:31:03', '力荐', '生在地狱里的可怜孩子', '法庭上，十二岁的男孩赞恩向法官状告他的亲生父母，原因是，他们给了他生命。是什么样的经历让一个孩子做出如此不可思议的举动？故事中，赞恩的父母在无力抚养和教育的状况下依然不停生育，作为家中的长子赞恩，弱小的肩膀承担了无数生活的重压。当妹妹被强行卖给商贩为妻时，...', '');
INSERT INTO `moviereviews` VALUES (639, '4407781727800393729', '无梦之秋', 'https://img3.doubanio.com/icon/u180885070-2.jpg', '2019-07-15 23:07:54', '力荐', '“他们从来不被承认”-----黎巴嫩的难民问题探究', '说到难民问题，大多数人首先会想到欧洲，尤其是德国。在默克尔的主导下德国一共接收了两百多万叙利亚难民，获得了全世界数不清的赞誉。不过，赞美毕竟不能拿来当饭吃，而那些难民却是实实在在要吃饭的。不仅要吃饭，还要工作，否则就会带来混乱，所以这也引发了一部分民众的担...', '');
INSERT INTO `moviereviews` VALUES (640, '4407781727800393729', 'lisa', 'https://img9.doubanio.com/icon/u190489518-6.jpg', '2019-07-05 17:17:54', '力荐', '《迦百农》对社会问题进行了哪些探讨？', '中国人真是迷之自信，看看广州的城中村和黎巴嫩的难民区有什么区别，看看每天早上的地铁3号线为了挤上地铁而窘迫不堪的中年人，看看都市里受过高等教育的空巢穷人，看看农村的留守儿童，看看农村里取不到老婆的中老年单身汉，看看农村等着孩子回家的空巢老人，电影里的这些场景...', '');
INSERT INTO `moviereviews` VALUES (641, '4407781727800393729', '朝暮雪', 'https://img1.doubanio.com/icon/u63688511-18.jpg', '2019-05-06 12:45:50', '力荐', '有的孩子不是熊孩子，有的父母不配当父母。', '《何以为家》的逆袭，让我想起了前年这个时候上映的《摔跤吧！爸爸》。 同样是小成本电影，同样是豆瓣评分9分左右，同样是关于家庭、儿童、父母的电影。 相同的主题，内容却是截然相反。 《摔跤吧！爸爸》是一个极度重男轻女的社会，有一个爸爸为了不让女儿和这个国家绝大多数...', '');
INSERT INTO `moviereviews` VALUES (642, '4407781727800393729', '天涯小鸟movie', 'https://img1.doubanio.com/icon/u78806633-9.jpg', '2019-04-30 18:25:51', '推荐', '比印度电影更惨，更大胆，也更犀利！', '我原以为，印度片里，女性和底层人民生存状态之恶劣，已是世所罕有。 我原以为，日本导演是枝裕和的《无人知晓》，母亲抛弃四个孩子，任其自生自灭，已是令人发指。 却不想，一部黎巴嫩电影再一次刷新了我的认知—— 《何以为家》。 在大陆上映前，它的名字是，《迦百农》。 《...', '');
INSERT INTO `moviereviews` VALUES (643, '4407781727800393729', '张翔森', 'https://img9.doubanio.com/icon/u57953780-6.jpg', '2020-01-28 08:06:45', '推荐', '标准影迷的非标准影评：零二八', '在电影院观看了电影《迦百农》。 穷得都已经揭不开锅了，为什么还要继续生孩子？曾几何时，中国也是一个生育大国，家家户户沉浸在竞赛的氛围中玩得不亦乐乎，你方唱罢我登场，少则三、四个，多则七、八个，反正别家都在生，自己家没有理由不生嘛。好在后来实施了计划生育，控制...', '');
INSERT INTO `moviereviews` VALUES (644, '4407781727800393729', '白菜小姐牧羊曲', 'https://img3.doubanio.com/icon/u47524917-2.jpg', '2019-08-02 19:45:51', '推荐', '既然没有能力抚养孩子，为什么要生', '故事线中规中矩。 问的还是这些成年人，既然没有能力抚养孩子，为什么要生？ 结尾其实看起来更心酸，不是每一对母子经历过这样的分离还能重逢的。不是你控诉了就能获得认同的，不是想着有一天渡过海洋到达目的地就能实现的。 生存面前，男主父母的选择或许可以理解，人也是动物...', '');
INSERT INTO `moviereviews` VALUES (645, '4407781727800393729', '萧秋水', 'https://img3.doubanio.com/icon/u1170656-2.jpg', '2019-05-06 17:57:03', '力荐', '他笑了，我们哭了', '“赞恩，笑一个。”他笑了，我哭了。不只是我，影院里很明显的啜泣声。影片结束了，但是悲伤没有结束，隔着银幕，那个世界里的绝望也没有结束。“我要起诉父母。”“为什么？”“因为他们生下我。”有很多孩子有类似的想法，只是他们没有起诉的权利。大人不由分说地生下他们，...', '');
INSERT INTO `moviereviews` VALUES (646, '4407781727800393729', '小烨', 'https://img1.doubanio.com/icon/u3984361-127.jpg', '2019-05-05 19:14:15', '力荐', '我奋斗了12年，才能成为你喝咖啡的谈资', '《何以为家》打败了《海边的曼彻斯特》，成为我心目中的丧片NO.1，如果说《海边的曼彻斯特》是一种别人家的丧，那么《何以为家》就是一种平凡人触手可及的丧，甚至不用去到遥远的战乱国家、不用去到贫困的埃塞罗比亚，在我国的偏远小山村，就可以看到这种越穷越生的典型人家，...', '');
INSERT INTO `moviereviews` VALUES (647, '4407781727800393729', 'Grace', 'https://img3.doubanio.com/icon/u19886412-11.jpg', '2019-05-12 23:51:38', '力荐', '顶开那片天花板', '打过五星的电影很少，可能这是记录里的第一篇。 拍摄并不精致，开篇就能看到不好的镜头，但是面对好的故事，拍的不好的镜头又能算什么？ 说到故事，其实也不算太吸引人，有看到人的差评，说这就是一部平凡的纪录片。不评判别人的看法，但是故事简单与平凡并不代表这不会是一部...', '');
INSERT INTO `moviereviews` VALUES (648, '4407781727800393729', '青青悠悠', 'https://img3.doubanio.com/icon/u168110099-2.jpg', '2019-05-11 23:19:56', '力荐', '一想到人类竟然不需要通过考试就直接为人父母 我就后脊发凉——伊坂太郎', '我妈曾经跟我们说过，我总觉得我们家总比三姑姑家（我三姑姑有产后抑郁症，基本不能干活挣钱的那种）要好，我妈还说，我们家比二表姑妈家强点，我二表姑妈是个精神障碍的人，曾经一把火烧了她家的房子。可是，我没有敢告诉我妈的是，我现在很羡慕三姑姑和二表姑妈家，我三姑夫...', '');
INSERT INTO `moviereviews` VALUES (649, '4407781727800393729', '豆友184917977', 'https://img3.doubanio.com/icon/u184917977-1.jpg', '2019-05-26 16:05:04', '力荐', '了解生育的意义，做及格线以上的父母，是中国的父母的必修课', '中国父母也有多子多福拼概率的功利生育思维。把孩子当成猪🐷一样的私人财富，明明不具备好好教养的能力，也期待一个有出息带着大家共同致富。人啊，自私自利是超过理智和良知。我就是那个被兄弟姐妹啃的，我特别痛恨勉强糊口时生孩子，孩子的培养是要要经济基础的，不是靠概...', '');
INSERT INTO `moviereviews` VALUES (650, '4407781727800393729', '良辰美景', 'https://img1.doubanio.com/icon/u64497949-8.jpg', '2019-07-04 17:56:07', '较差', '穷人该不该多生育或不生育，是可以拿来被大众讨论的吗？', '当富人选择丁克或者只生一胎，我不会评价他“怎么不多生一些，好为人类的基因多样化多做贡献”；当穷人选择生四五六七胎，我也不会评价他“你这么穷，给不了小孩好的生活与教育环境，凭什么生那么多”。因为我知道生育权是天赋人权，应该完全由自己选择，而不是以钱多钱少为标...', '');
INSERT INTO `moviereviews` VALUES (651, '4407781727800393729', '元宝宝', 'https://img3.doubanio.com/icon/u152434281-2.jpg', '2019-07-03 14:45:46', '推荐', '记忆犹心的几个桥段', '在我的认知中，树木是看年轮判断树龄，牲口是看牙口判断年龄。而万万没有想到，一个小男孩的年纪也需要看牙齿，看乳牙、恒牙的替换状况？真的很悲哀啊，没有身份的孩子就像风中乱舞的落叶，没有方向没有归处。 小男孩的年龄被认定为12岁，但看着屏幕里小小的人儿啊，哪有12岁孩...', '');
INSERT INTO `moviereviews` VALUES (652, '4407781727800393729', 'PSG粉保护协会', 'https://img2.doubanio.com/icon/u159963714-13.jpg', '2019-04-18 01:43:35', '力荐', '片名《迦百农》的四重含义', '一部更残酷、更现实、自我发声的《养家之人》 从头到尾的感觉： 脏乱差穷是真的，不是为了拍摄电影，布景搭建的那种 但格局很大，不止渲染悲惨 孩子的质问掷地有声，没有资格就不要生育 其实他照顾过yonas，算是某种意义上的“父母” 他最后的控诉除了来源于自己对父母的印象，...', '');
INSERT INTO `moviereviews` VALUES (653, '4407781727800393729', '清秋雨薇MOMO', 'https://img1.doubanio.com/icon/u2418935-118.jpg', '2019-07-07 20:10:46', '力荐', '没有源头的爱河', '在《何以为家》之前，我对黎巴嫩这个国家仅限于“战乱频繁”的概念，而对黎巴嫩女导演娜丁·拉巴基更是一无所知。看过《何以为家》之后，我才了解到娜丁·拉巴基是一位机具才华的黎巴嫩导演兼演员。由她导演并主演的电影《焦糖》《吾等何处去》曾颇受好评，而《何以为家》更是...', '');
INSERT INTO `moviereviews` VALUES (654, '4407781727800393729', '尖椒部落', 'https://img3.doubanio.com/icon/u72773370-2.jpg', '2019-05-27 18:57:02', '推荐', '看完《何以为家》，别只问“穷人为什么生孩子”', '原文：http://www.jianjiaobuluo.com/content/106773 《何以为家》是《迦百农》在中国影院里的名字，看完电影后再看了一些影评，才知道“迦百农”（Capernaum）是“混乱、失序”的意思。 这部影片讲述了一个名叫赞恩（ZainAlRafeea）的12岁叙利亚难民男孩，在黎巴嫩首都贝鲁特...', '');
INSERT INTO `moviereviews` VALUES (655, '4407781727800393729', 'Clyde', 'https://img2.doubanio.com/icon/u2140785-3.jpg', '2019-05-03 00:28:29', '推荐', '《何以为家》：这是一部所有中国父母都应该去看的影片', '没想到《何以为家》会在中国大陆公映，更没有想到影片上映几天后，在没有大IP也没有明星加持的情况下，单日票房一路走高，坐稳了档期内第二把交椅的位置。 《何以为家》作为一部文艺片，在《复仇者联盟4：终局之战》这样的超级大片的狂轰滥炸之下，仍然能够在电影市场上占据一...', '');
INSERT INTO `moviereviews` VALUES (656, '4407781727800393729', '比门月半', 'https://img9.doubanio.com/icon/u102501149-34.jpg', '2019-05-10 10:25:21', '推荐', '关于《迦百农》的看点汇总', '想必片头导演不停采用缩放 和晃动的视角配合低沉的音乐给你留下全片基调的初步印象. 拍摄有点像纪录片的方式.叙述从法庭主线开始, 通过几个倒序讲述故事. 故事本身没什么特别之处. 导演的叙事 音乐 演员的表演都是比较不错的. 可能和故事本身有关, 整体节奏没有太大的起伏, 缓...', '');
INSERT INTO `moviereviews` VALUES (657, '4407781727800393729', 'matcha', 'https://img1.doubanio.com/icon/u167156284-7.jpg', '2019-05-10 01:24:02', '力荐', '吾心安处即是家', '占个坑回头来补。先讲一下没想到有一天我的理想型是个小男孩。 我觉得电影就是掰碎了一切给你看，一切都让你体会到骨子里的真实。 ——剧透预警—— 小男孩真的什么都懂。例假，嫁人，偷窃，卖药，医院，捅人，怀孕。但是他依旧在天真的抗争，阻止妹妹被卖，远离原生家庭，相信...', '');
INSERT INTO `moviereviews` VALUES (658, '4407781727800393729', 'jie', 'https://img3.doubanio.com/icon/u1003130-2.jpg', '2019-05-09 21:39:13', '推荐', '何以为家', '影片的最后，定格在赞恩的笑容上。 “笑一下，你不是在拍死亡证明，你是在拍身份证。” 他终于笑了，近两个小时的电影，他的笑总过加起来不会超过20秒。 他终于笑了，你的眼却含了泪。片尾一行行的字幕明明白白的告诉你，这不是人们的想象，而是真真切切发生的现实。赞恩是在难...', '');
INSERT INTO `moviereviews` VALUES (659, '4407781727800393729', '远方阿怪', 'https://img9.doubanio.com/icon/u114891859-6.jpg', '2019-05-13 11:56:08', '推荐', '《何以为家》，给父母出了一道题', '原名《迦百农》，获得2018年戛纳评审团奖，讲述黎巴嫩难民儿童问题。“迦百农”阿拉伯语意为“混乱”，出自圣经中的地名，意指耶稣降临拯救苦难之前的世界。国内上映为了更接地气，片名改为《何以为家》，中国版海报上的slogan——我要控告我的父母把我生下来，更是直指主题。 ...', '');
INSERT INTO `moviereviews` VALUES (660, '4407781727800393729', '徐大徐徐', 'https://img1.doubanio.com/icon/u1601219-8.jpg', '2019-05-05 16:57:47', '推荐', '《何以为家》是一部最适合带娃的“青少年思想教育必看电影”', '以下轻微剧透不影响观影。 不知道为什么，影视媒体推荐《何以为家》，文案总写得苦大仇深、高深晦涩，一副让观众望而生畏的样子。 实际上这个片子特别简单。完全可以轻松进影院。我来帮出品方重新整理几个卖点吧： 《何以为家》是一部最适合带娃的“青少年思想教育必看电影”。...', '');
INSERT INTO `moviereviews` VALUES (661, '4407781727800393729', '陶子', 'https://img9.doubanio.com/icon/u41547699-5.jpg', '2019-06-17 23:33:02', '推荐', '没有国，何以为家？', '周末看完这部电影，思考了几个问题： 1.zain一家到底遭遇了什么苦难？ 2.导演到底想表达什么？ 3.何以为家？ 一、zain一家到底遭遇了什么苦难？ 叙利亚政治不稳，战乱不断，加上恐怖袭击，每年都有数以万计的难民逃难，位于叙利亚西南脚的黎巴嫩，自然成了难民第一时间投奔的地...', '');
INSERT INTO `moviereviews` VALUES (662, '4407781727800393729', '大圣电影', 'https://img3.doubanio.com/icon/u51309156-2.jpg', '2019-06-04 11:25:19', '力荐', '我这么操蛋都拜你所赐，你为什么还要生？', '这是一个儿子对亲生母亲说的话。 你是不是认为他很操蛋，应该一巴掌扇过去？ 看完《何以为家》后，就不会这么认为了！ 你会认为这个孩子喊出了所有人的心声！ 赞恩，一个出生在叙利亚不得不随父母躲避战火逃到黎巴嫩的小男孩，将亲生父母告上了法庭，控词犀利无比：“你们为什...', '');
INSERT INTO `moviereviews` VALUES (663, '4407781727800393729', '丁克艾', 'https://img2.doubanio.com/icon/u152711824-3.jpg', '2019-03-02 00:59:08', '力荐', '反思。', '又有多少孩子像Zain这样幸运呢？ 能奇迹般的活到12岁，遭遇过贫民窟的颠沛流离后幸而被赦免，还从此获得了幸运女神钦点，迈向了幸福的彼岸。这些可能都是臆想。 现实中，扎哈没有因为失血过多而彻底解脱，她成了像母亲一样的生殖机器，陷入越穷孩子越多的死循环中自暴自弃。 现...', '');
INSERT INTO `moviereviews` VALUES (664, '4407781727800393729', 'Mr.Moonlight', 'https://img1.doubanio.com/icon/u3435818-9.jpg', '2019-02-21 22:02:45', '推荐', '耶稣基督不在迦百农', '油麻地电影中心2号院的屏幕，中间偏左的位置有一道不起眼的黑色细纹，不知是污渍还是划痕。 你可能会在不经意间注意到这道细纹，因此而困惑、失望。但屏幕仍在不断闪动，你更有可能迅速忽略它，转瞬忘记它的存在，且基本不会影响观影体验。 在东亚视角的世界地图中，那道黑色细...', '');
INSERT INTO `moviereviews` VALUES (665, '4407781727800393729', '毛毛妤', 'https://img9.doubanio.com/icon/u80177890-25.jpg', '2019-05-20 21:46:11', '力荐', '他的笑容', '对于这种战争难民题材的片子真的是无法阻挡地泪崩。 扎因是一个善良懂事的小孩，对待妹妹对待尤因斯都十分真诚用心。小演员可爱的尤因斯当时只有十个月大，竟然感觉很懂事。不愿喝奶的那一场的演技了得，眼神中也似乎透露着感情。 发起战争的人不得好死啊，善良的人们都值得活...', '');
INSERT INTO `moviereviews` VALUES (666, '4407781727800393729', '里十巽', 'https://img3.doubanio.com/icon/u62590541-21.jpg', '2019-05-15 00:52:17', '推荐', '何以为神', '我认为引进这样的电影对当局来讲是微妙而隐含风险的。 1、虽然本片的叙事篇幅和力度足够衬托出你国“能做996是一种福气”，经济下行时期有助于知足常乐，而且宣传导向上蹭了“原生家庭”的敏感点，从网友反应来看也成功转移了靶子，可导演从头硬到尾——法庭戏放弃审判，母亲质...', '');
INSERT INTO `moviereviews` VALUES (667, '4407781727800393729', '虎跳匣', 'https://img3.doubanio.com/icon/u1727481-22.jpg', '2019-04-24 23:30:46', '力荐', '太多的问题交错在这部无比残酷的电影', '这部电影讨论的问题太多了，特别是通过情节的前后呼应和对比，造成了巨大的冲击感，震撼下难以平静。 关于战争和生存 说到黎巴嫩，印象中一直是个战乱国家。赞恩一家虽然居住条件极差，但是好歹生活的地方没有战争。后面出现的小女孩，是从叙利亚过来难民，小小年纪就要一个人...', '');
INSERT INTO `moviereviews` VALUES (668, '4407781727800393729', '小R', 'https://img9.doubanio.com/icon/u2640916-5.jpg', '2019-04-08 01:36:42', '推荐', '那片倒霉的热土', '故事很感人，但是：丧。 中东问题长了说3000年，短了说半世纪，至今无解，并不断辐射到周边一大片倒霉的热土，搅得大家都没法从贫穷落后加仇恨的泥沼里爬出来，还得手拉手儿一块往下沉。黎巴嫩原本曾经富庶开放、首都小巴黎，结果15年内战抹掉15万人口，而今又面临严峻的难民问...', '');
INSERT INTO `moviereviews` VALUES (669, '4407781727800393729', 'DOCO热纪录', 'https://img9.doubanio.com/icon/u166360170-4.jpg', '2019-05-08 10:33:04', '力荐', '中东难民“何以为家”？这部豆瓣8.8高分纪录片告诉你真相！', '五一小长假又双叒叕这么快结束了，不知道大家是去了浪漫的土耳其，还是东京和巴黎？放假出门看人头的你肯定把这个假期过得很开心吧！ 比起满世界跑的你们，DOCO君可是又穷又懒，放假四天，要说咱爷们的唯一乐趣还数看电影儿，一部名为《何以为家》的黎巴嫩电影就差点把DOCO君感...', '');
INSERT INTO `moviereviews` VALUES (670, '4407781727800393729', 'stephanecheung', 'https://img1.doubanio.com/icon/u1818044-7.jpg', '2019-04-29 23:19:35', '力荐', '绝望中的一丝微笑', '走过黎巴嫩🇱🇧多年后，再次让我感触良多！《CAPHARNAUM-何以为家》！[强]当最近大部分人都在英雄主义的追寻《复联4终结》的时候，当票房一路高歌得时候，有多少人关注了不同世界的现实？[疑问]《何以为家》是一部既尖锐又柔软的影片。其尖锐地指出了黎巴嫩目前社会所存在...', '');
INSERT INTO `moviereviews` VALUES (671, '4407781727800393729', '梁贰猖獗', 'https://img3.doubanio.com/icon/u98914244-2.jpg', '2019-04-22 15:50:19', '推荐', '真主与上帝与勇气', 'And you, Capernaum, will you be lifted up to the skies? No, you will go down to the depths. ——【路10：15】 迦百农 电影的原名是迦百农，国内译为更直白的何以为家，这对没有宗教信仰的大多数国人（包括我）而言更好理解，但同时也遗失了电影蕴含的宗教信息。而我认为...', '');
INSERT INTO `moviereviews` VALUES (672, '4407781727800393729', '雁宁路书记', 'https://img2.doubanio.com/icon/u51017685-3.jpg', '2019-06-02 00:26:58', '还行', '导演意图的真实解读', '我又要说些政治不正确的话了…… 在黎巴嫩这个曾经的世俗化国家现在也被极端宗教侵蚀的千疮百孔，但是多少还留存了一些世俗化的痕迹和习惯，比如女人们的穿着打扮，和游乐场里的半裸的女人偶像，黑女人演技很好，那种无声的流泪很让人揪心，另外高度怀疑黑小鬼约纳斯是职业演员...', '');
INSERT INTO `moviereviews` VALUES (673, '4407781727800393729', 'Steppenwolf', 'https://img1.doubanio.com/icon/u162818280-9.jpg', '2019-05-26 12:03:01', '力荐', '“thrownness”：夏虫不可语冰', '电影旁边坐着一个哥们全程“天啊”，“妈啊”的叫着。这显然是一个他无法理解的陌生世界。而我们也无非是透过屏幕，怀抱着猎奇心理去窥探人类的生存究竟还需要什么底线，命运的齿轮究竟能将人碾压到何等田地。 “我要状告我的父母。” “因为他们生了我。” 顺着电影的逻辑，似...', '');
INSERT INTO `moviereviews` VALUES (674, '4407781727800393729', '桃花石上书生', 'https://img3.doubanio.com/icon/u1196418-181.jpg', '2019-05-28 18:29:56', '推荐', '随便说说', '1真实朴素动人，主角小男孩和小婴儿都可爱极了。有朋友说像《小偷家族》，我觉得更好，因为更写实，没有刻意往温情的路子上走。 2缺点是批判力度很低，可能是由于联合国难民署的介入。这样的现状，该批判的是谁？国家？父母？战争？宗教？是什么造成他们的悲惨经历？都没说，都...', '');
INSERT INTO `moviereviews` VALUES (675, '4407781727800393729', 'Aroma♥ღ᭄ꦿ', 'https://img1.doubanio.com/icon/u162918023-68.jpg', '2019-05-14 11:35:12', '力荐', '心无所依，何以为家', '谁告诉我这是原生家庭的电影的？？？明明是国际问题，社会问题，历史问题。我们所有的人，包括Zain，他的爸妈，Sahar，都是历史产物，社会糟糕环境下的恶果。一代一代，周而复始。 Zain稚嫩、胆怯的眼神，和法庭的庄严肃穆形成强烈反差。但法庭上对父母掷地有声的控诉却又成熟...', '');
INSERT INTO `moviereviews` VALUES (676, '4407781727800393729', 'little daisy', 'https://img9.doubanio.com/icon/u2438536-36.jpg', '2019-05-09 13:52:47', '力荐', '无名氏的生活不是好与坏，而是有和无', '影片的主角是一群没有身份的人。这里的“身份”不是社会地位高低的“身份”，而是没有被权威机构认可的身份证明。拥有身份证明本是一件理所当然的事情，在片中的黎巴嫩却变得要么不合“常理”（小男孩的原生家庭向来没有办证件的习惯），要么异常艰难（埃塞俄比亚女工昂贵的假...', '');
INSERT INTO `moviereviews` VALUES (677, '4407781727800393729', '苞谷猪🐗', 'https://img1.doubanio.com/icon/u186209194-19.jpg', '2019-06-09 11:44:45', '推荐', '在我看来，该被起诉的不全是父母……', '#壹 荧幕后的故事 ❶有关片名 黎巴嫩电影《何以为家》，电影的原名叫《迦百农》。《迦百农》目前已获得第91届（2019）奥斯卡金像奖最佳外语片提名，第71届（2018）戛纳电影节主竞赛单元金棕榈奖。 摘自百度百科： “迦百农Capernaum)”的正式名称应当是迦弗农Capharnaum)，...', '');
INSERT INTO `moviereviews` VALUES (678, '4407781727800393729', '尧耳', 'https://img9.doubanio.com/icon/u1016866-15.jpg', '2019-05-19 20:37:01', '推荐', '叩击心弦的苦难与悲怆', '战争逃难、贫困、饥饿、疾病，命如草芥的难民孩童，在黎巴嫩破败混乱的街头顽强地成长起来。无人在意的潦草生命，受尽磨难的凌乱人生，早已为《何以为家》奠定了哀伤的底色。面对孩童沉静处理生活难题的漠然脸庞，很难有观者能逃避发自内心的悲悯与追问。关于那些被忽视的贫瘠...', '');
INSERT INTO `moviereviews` VALUES (679, '4407781727800393729', 'R.C', 'https://img2.doubanio.com/icon/u59852321-3.jpg', '2019-05-07 21:08:42', '力荐', '孩子，养不起，压根就别生', '扎因宛如真实人生，忧郁伤感的眼神感觉不到是在演戏，看着他镜头中弱小的身躯、孤独的背影，时而忧郁时而伤心的眼神，永远那么地真实。他的担当和责任心，让他瘦弱的皮囊下拥有一颗坚强的心。 影片讲述的社会背景、社会风气，我们看到的故事并非是单独的存在，而是从以往至现今...', '');
INSERT INTO `moviereviews` VALUES (680, '4407781727800393729', 'tek', 'https://img3.doubanio.com/icon/u147621726-1.jpg', '2019-05-07 17:17:56', '力荐', '这是一部让我从影院一路哭回家的电影', '最近各大院线已经彻底被妇联4霸占，就连各大视屏网站各种盒子的主页，推送的也全是漫威系列。即便有情怀有泪点，难免还是有点审美疲劳。而这部低调上映同样有泪点的《何以为家》，目前豆瓣评分8.9 妇联4 是8.6)。我和我票圈的好友都说我是哭着走出电影院然后又哭了一路回家的...', '');
INSERT INTO `moviereviews` VALUES (681, '4407781727800393729', '多放香菜', 'https://img3.doubanio.com/icon/u187318899-11.jpg', '2019-04-22 11:20:03', '力荐', '没有蜘蛛侠，幸而还有蟑螂侠', '决定看黎巴嫩电影《何以为家》，我是下了决心的。 第一次看到电影海报时，心里就有些发怵。画面中，顶着一头凌乱头发的瘦弱男孩用铁锅和滑板做了一个“小车”，拉着一个更小的孩子走在空旷的道路上，头顶是一片乌云……于是下意识地觉得，这是一部题材严肃、看了之后会感到沉重...', '');
INSERT INTO `moviereviews` VALUES (682, '4407781727800393729', '王成长', 'https://img2.doubanio.com/icon/u99264073-3.jpg', '2019-05-24 15:53:16', '还行', '电影带来的成长——《何以为家》', '听到简介就想看的一部电影，因为一直很喜欢社会问题型的电影，能让人反省，引人深思。 但是，结果却没想象的好。我看这个电影，看出了两大社会问题： （一）生育癌 欲望是一件很可怕的事情，对于没有身份的家庭来说，生存立足已经是很严峻的事情了，更别谈生孩子养孩子了。没有...', '');
INSERT INTO `moviereviews` VALUES (683, '4407781727800393729', 'cansun', 'https://img1.doubanio.com/icon/u64002777-7.jpg', '2019-05-18 02:01:22', '很差', '骗我可以，注意次数', '影片讲述在黎巴嫩的叙利亚难民的故事，一个小男孩赞恩及其一家艰难的生活片段。影片采用倒叙的结构，从他在伤人入狱开始，向法庭提起诉讼，控告自己的父母生下自己又没有很好的养育自己。 首先要说影片很感人，甚至过于“政治正确”，但我提几个小小的疑问。 1、主创人员的信仰...', '');
INSERT INTO `moviereviews` VALUES (684, '4407781727800393729', '请喊我去写综述', 'https://img3.doubanio.com/icon/u150940868-22.jpg', '2019-07-30 23:23:39', '力荐', '飞吧迦百农，我不要你。', '电影的原名“迦百农”，是圣经中的地名。主耶稣在自己家乡拿撒勒不受欢迎，就到迦百农去步道。 再后来，这个“家外之家”也遭到了毁灭。路加福音第十章15节提到：迦百农啊，你已经升到了天上。 迦百农代表着无处安放的信仰，无处停泊的灵魂。所以它地中文译名直接写为终极的拷...', '');
INSERT INTO `moviereviews` VALUES (685, '4407781727800393729', 'Neil Young', 'https://img1.doubanio.com/icon/u132141545-17.jpg', '2019-05-09 01:21:04', '力荐', '冬天和悲伤，从不缺席。', '有的人一生都在被童年治愈，而有的人一生都在治愈童年。 看完电影，想起曾经无意间看到过的这句话和许许多多我身边的故事，想起共同称之为故乡的那个小城镇，想起那些像是从模具中造出来的“移民区”、“扶贫房”，那些穿着不合身的衣服在街头乱跑的孩子们，已经溢出却无人在意...', '');
INSERT INTO `moviereviews` VALUES (686, '4407781727800393729', '突突Plus', 'https://img9.doubanio.com/icon/u67452416-5.jpg', '2019-05-03 12:43:30', '推荐', '何以为家：生而为人，何处是家？', '人越长大，好似越来越不忍接触一些残忍绝望的故事，但事实上，这个世界，从不缺少残酷，不是我们不去接触就能够回避得了的。电影《何以为家》便是最近在上映的一部残酷主题的片子，看完让人无比压抑，残酷的剧情，残酷的本质。 看《何以为家》前，我并不了解片子的梗概，只看了...', '');
INSERT INTO `moviereviews` VALUES (687, '4407781727800393729', '心是孤独的猎手', 'https://img3.doubanio.com/icon/u38637333-31.jpg', '2019-04-19 02:56:01', '力荐', '何以为人', '电影最后zain露出的笑脸，一点都让我笑不起来，尽管笑的那么好看。 看演员简介才知道扮演zain的小男孩是2004年出生，名字就叫zain，拍摄这部电影时他12岁，完全不识字…只看外表根本看不出这是一个12岁的孩子，顶多8、9岁的样子。简介说zain小时候作为叙利亚难民跟随父母来到黎...', '');
INSERT INTO `moviereviews` VALUES (688, '4407781727800393729', 'ForeverZheng99', 'https://img3.doubanio.com/icon/u155273853-1.jpg', '2019-05-05 13:23:55', '力荐', '没有硝烟，却把战争的残酷刻画得淋漓尽致', '电影主角小男孩赞恩自己演自己的故事，故事讲述那些从叙利亚逃亡到尼巴嫩的难民生活，他们是没有户口的黑户，居住在当地随意建起来的难民营，还得交付房租。就连孩子也没有医疗、教育的公共福利，甚至他们都没有人权，被随意买卖。赞恩就是难民中的孩子，他父母给他生了一堆的...', '');
INSERT INTO `moviereviews` VALUES (689, '4407781727800393729', '.', 'https://img3.doubanio.com/icon/u69948655-12.jpg', '2019-05-05 10:33:32', '推荐', '我要叫它《迦百农》', '《迦百农》“迦百农”这个名字，虽然不曾在旧约圣经出现，但这地方在新约时代甚为重要。主耶稣在自己家乡拿撒勒不受欢迎，就下到迦百农去，是他传道、事奉的一个中心，有不少神迹和重要的事情在这地方发生。 大的社会环境塑造了小主人公忧郁，早熟的性格。面对父母、贫穷、欺骗...', '');
INSERT INTO `moviereviews` VALUES (690, '4407781727800393729', '超屌陆战队', 'https://img9.doubanio.com/icon/u57341146-4.jpg', '2020-08-16 09:11:06', '力荐', '人间亦有炼狱', '《迦百农》与圣经有关的地方，这里，幼儿直接把奶粉倒入嘴中，儿童上街买纸巾，饮料，甚至卖毒品饮料都属正常。这个瘦弱的男孩无声的，以他自己的方式默默地对整个社会反抗，他的妹妹是他内心最后的美好，所以他拼命的保护她，当他愤怒的擦去妹妹嘴上的口红，说她像个巫婆时，...', '');
INSERT INTO `moviereviews` VALUES (691, '4407781727800393729', '风林火山', 'https://img3.doubanio.com/icon/u216013968-2.jpg', '2020-08-06 22:56:13', '力荐', '赞恩，你还好吗？', '中国版宣传海报上印着“我要控告我的父母，因为他们生下了我。”这句话深深地吸引着我。 赞恩这一家子生活在黎巴嫩。他们是非法移民，生了一大堆孩子。没有钱、没有身份证、也没有爱。 赞恩是他们众多孩子之一。不知道确切年龄，根据身体发育情况，估计是12岁。他没有学上，每...', '');
INSERT INTO `moviereviews` VALUES (692, '4407781727800393729', '一叶飘零', 'https://img3.doubanio.com/icon/u60207825-2.jpg', '2019-05-15 23:27:59', '推荐', '爱是一种选择，而贫穷从来都不是不爱的理由', '看完这部电影，感觉很难受，那种哭不出来的难受。电影的节奏并不激烈，很多镜头都像是一种旁观，只是静静地记叙时间的流过，但还是有种看《小偷家族》的感觉，压抑，无处释放。如果爱是一种选择，那么贫穷从来都不会成为阻碍它的借口。如果爱是一种必然，那就更没有什么理由可...', '');
INSERT INTO `moviereviews` VALUES (693, '4407781727800393729', '希音', 'https://img3.doubanio.com/icon/u123252296-1.jpg', '2019-05-07 15:06:37', '推荐', '不爱他们不能养育他们，请不要生下他们！', '从看到这个瘦弱、苍白、永远都用一双清澈却绝望的眼睛看世界的男孩抱着比他还要小的毫无血缘亲情关系的弟弟在洗车行用高压水龙头洗了平生最干净的一次澡后，泪水就一直流啊流。 这个倔强但善良的孩子，不知道自己究竟几岁，更不知道自己究竟出生在哪一天，却一直用羸弱的身躯将...', '');
INSERT INTO `moviereviews` VALUES (694, '4407781727800393729', '欽荔', 'https://img3.doubanio.com/icon/u34172033-10.jpg', '2019-05-05 23:48:14', '力荐', '你是不是也想起了阿巴斯', '很久没有在电影院看非类型片，《何以为家》海报的中东色彩和小男孩羞涩腼腆的笑容，让我第一时间想到了阿巴斯，关于孩子和儿童的电影，并不多，而生于德黑兰的阿巴斯·基阿鲁斯达米， 八十年代，他相继拍摄了一些反映伊朗学龄儿童面临的问题的纪录片，如《一年级新生》（1985）...', '');
INSERT INTO `moviereviews` VALUES (695, '4407781727800393729', '这包子真好吃', 'https://img3.doubanio.com/icon/u89410933-12.jpg', '2019-05-04 13:54:38', '力荐', '可能它只是不属于奥斯卡', '在昨天看完了《迦百农》，出了电影院就想找资源，想把赞恩打电话给电视台那一段截图下来，并且写个影评。但是心里杂乱无章，不知该写点什么，加上好困啊…就拖到了今天。 可是第二天的我再看到这一段就没有昨天的那个感觉，我就在想当时第一次看的时候到底是因为什么才能让我热...', '');
INSERT INTO `moviereviews` VALUES (696, '4407781727800393729', '思维的翅膀', 'https://img9.doubanio.com/icon/u151306944-5.jpg', '2020-06-05 09:35:07', '力荐', '贫穷基因的世袭', '家庭是人出生后接触的第一个团体。所有人都是在家庭中出生，接受父母的养育和教育，逐渐形成自己的世界观，然后再走入社会的。 问题在于，有很多渣父母，为了自己的利益，会主动向子女灌输畸形的世界观。这导致很多人进入社会后遇到的最大问题是自己在原生家庭获得的世界观和真...', '');
INSERT INTO `moviereviews` VALUES (697, '4407781727800393729', 'muggle', 'https://img9.doubanio.com/icon/u209380888-4.jpg', '2020-06-03 22:58:51', '力荐', '在夹缝中寻求片刻喘息', '影片讲述了黎巴嫩男孩扎因在被生活折磨得绝望后，在法庭控告父母生而不养，以一个社会最底层的孩童视角，展现出一幅令人心碎又充满着荒诞反讽的第三世界图景。然而，造就大多数第三世界国家不幸的，不是源于自然，追本溯源，是出自一个个殖民者之手。 影片将镜头对准一地鸡毛的...', '');
INSERT INTO `moviereviews` VALUES (698, '4407781727800393729', 'Bunny', 'https://img9.doubanio.com/icon/u161521316-6.jpg', '2019-05-05 23:05:55', '力荐', '不想讨论生养问题，战争才是万恶之源吧', '#迦百农#导演没有刻意煽情，开头的法庭倒叙之后，基本是平推展开。看花絮给了小演员很多的自由发挥，手持摄影更是有纪录片的感觉。其实说是小演员，看了彩蛋就明白这个小男孩本就是真实的叙利亚难民，故事也是源于他的真实生活。 每每看到这个小男孩娴熟的动作，淡漠眼神，真的...', '');
INSERT INTO `moviereviews` VALUES (699, '4407781727800393729', '壁花花', 'https://img9.doubanio.com/icon/u158779546-6.jpg', '2019-05-02 20:21:15', '力荐', '是什么让人类对生育如此执念', '是什么让人类对生育如此执念 前几天电影院上映了一部小众电影，相比同时期漫威终结篇的刷屏程度，这部电影豆瓣甚至标记人数不过三千多，但是一比较漫威和这部电影的得分却是很奇怪，这部电影比漫威还高出三分，带着对这三分的好奇心，昨晚看完了整部电影，回家难受了好久。 电...', '');
INSERT INTO `moviereviews` VALUES (700, '4407781727800393729', '豆友195940576', 'https://img3.doubanio.com/icon/u195940576-1.jpg', '2019-05-04 03:47:07', '较差', '获奖作品就真的好看吗？', '电影是被朋友拖着去看的，朋友因为喝了点酒，直接睡着了。我为了不浪费钱，耐着性子看完了故事。坐旁边的陌生人，看了一会儿就吃鸡去了…我不知道是不是绝大多数人都跟我一样，看完以后感觉很茫然。没有悲伤，也没有过多的感触，一个高分的获奖作品和我的想象中的实在是差了许...', '');
INSERT INTO `moviereviews` VALUES (701, '4407781727800393729', 'Lucas', 'https://img1.doubanio.com/icon/u183030624-8.jpg', '2019-05-02 20:06:48', '推荐', '诞生在中国真好', '看了这个片子突然想起和朋友之前讨论的一个问题，“现在做什么都要考证，为什么做父母这项最神圣的职业想做就做？”就像片子里一样，现实中不乏许多生孩子没有考虑过后果的父母，而且有些人甚至没有以身作则的能力，孩子成为了牺牲品。但有一点无法否认，在片子中父母一方确实...', '');
INSERT INTO `moviereviews` VALUES (702, '4407781727800393729', 'Luc', 'https://img3.doubanio.com/icon/u1978083-2.jpg', '2019-05-01 21:53:16', '力荐', '这个世界需要的不只是同情', '看《何以为家》时，每一次都忍不住热泪盈眶，这是被少年Zain的真实状态所感动，超越了所有的电影技巧。 导演拉巴基自己在后半程也没有克制住，她饰演的女律师还是暴露了同情的立场。 可有谁又能不同情这些苦难的孩子呀？一个12岁的男孩拖着个没断奶的婴儿讨生活，那份倔强和早...', '');
INSERT INTO `moviereviews` VALUES (703, '4407781727800393729', '竚', 'https://img3.doubanio.com/icon/u170319398-2.jpg', '2019-05-01 10:51:37', '力荐', '电影名改成《何以为家》真的好吗？', '《何以为家》这个电影名和《迦百农》比表面上有了感情哭诉，实则大大地浅化单薄了电影主题。这个电影不只是在说“无家可归”的难民生存问题，还有更深层次的表达，现如今的翻译风气和电影语境怎么也成这样了，总喜欢把书名和电影名改成“何以笙箫默”的语言调性，在夸大某一点...', '');
INSERT INTO `moviereviews` VALUES (704, '4407781727800393729', '舒心酱', 'https://img9.doubanio.com/icon/u49841982-14.jpg', '2019-05-01 19:37:55', '力荐', '在地狱中建造天堂的小男孩', '《养家之人》中战火狼烟之下的小女孩一直梦想能够逃离四战之地、拥有美好幸福的新生活，《何以为家》则用残酷压抑的现实来做出回应：逃出战乱的他们并没能重获新生，而成了在异国他乡流离失所的难民，离开了一种旧的苦难、又进入了另一种新的苦难中。 他们没有身份、没有地位，...', '');
INSERT INTO `moviereviews` VALUES (705, '4407781727800393729', '注销', 'https://img3.doubanio.com/icon/u178095886-1.jpg', '2019-04-30 18:40:00', '力荐', '愿每一个勇敢的小孩，都能被世界温柔以待', '继《羞辱》之后，又一次领略黎巴嫩电影的力量；同阿米尔汗一样，又一个试图用电影改变国家的人。残酷成长、情感巨浪、醒世警钟，五年打磨的匠心之作，只为求一个发声的平台。借一个孩子的口为更多丧失教育、健康、关爱等基本权利保障，且没有发言权的孩子们代言。 全片叙事主线...', '');
INSERT INTO `moviereviews` VALUES (706, '4407781727800393729', '伊维特', 'https://img3.doubanio.com/icon/u49670470-2.jpg', '2019-03-22 02:17:38', '力荐', '催泪瓦斯下的优生教育', '去年戛纳的评审团大奖，加上名字特别，一直无比期待，2月底苦等到资源，拖延至今，终于一睹黎巴嫩电影《迦百农》的风采！ 先不谈剧情带来的感受，光挑选演员方面，我就会毫不吝啬地打5星！两个本就来自贫民窟的难民孩子，用真实得令人发指的演绎，不停释放催泪瓦斯，我已震撼到...', '');
INSERT INTO `moviereviews` VALUES (707, '4407781727800393729', '寻人启事', 'https://img3.doubanio.com/icon/u180642706-1.jpg', '2019-04-29 21:02:21', '力荐', '世界的另一个角落和地狱接壤', '世界的另一个角落和地狱接壤 这是一个极其悲伤的故事，还记得去年四五月份叙利亚频繁上热搜，看着那些战乱废墟画面，恍惚间以为这是上个世纪才会有的事情，居然在今天，在世界的角落还在每时每刻真实的发生着……世界上真的没有真正的感同身受，同情心只是人类的天性，一句愿世...', '');
INSERT INTO `moviereviews` VALUES (708, '4407781727800393729', '姮_Joyce', 'https://img3.doubanio.com/icon/u3863618-22.jpg', '2019-04-21 20:51:24', '推荐', '生而为人，何以为家', '脏乱差破的贫民窟，一对难民夫妇养育着一屋子的孩子，而且还在继续“制造”新的生命。 12岁的赞恩就是在这样的环境中长大，没有受教育的机会，还需要给人打工来补贴家里，自己的妹妹月经初潮后就被父母当做一件商品给了房东的儿子。无力阻止，愤而离家出走后，遇到了一个持假证...', '');
INSERT INTO `moviereviews` VALUES (709, '4407781727800393729', '小李🍐', 'https://img2.doubanio.com/icon/u156077521-23.jpg', '2020-06-19 23:03:32', '力荐', '胡思乱想', '#Play86《何以为家》 一定要给主角演技加星！小男孩可酷可甜，太棒啦！最后笑容苏到我 不过关于电影里小男孩最后说的话也确实引人思考：没有能力抚养孩子的人不应该生孩子。像是文中男主的母亲一生再生我也是怀疑的，在观影中也不断发问怎么生了这么多孩子。但是如果情况不似剧...', '');
INSERT INTO `moviereviews` VALUES (710, '4407781727800393729', '太宰', 'https://img3.doubanio.com/icon/u172538707-2.jpg', '2020-05-18 00:40:33', '力荐', '《迦百农》对社会问题进行了哪些探讨？', '如果我可以向你们一样，也许我不会像你们一过的悲惨，可以我一生出来就是这样 孩子是我的脊梁骨，现在他打断了我的脊梁骨，我被邻居骂 37分钟他坐在摩天轮上，看着听着一切与他格格不入， 我在找工作，不管什么之要是工作就好， 我有看到了之前的一幕，如今换成了母亲关住门，...', '');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
