# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create!(name: "选车", status: 1, sort: 1) if Category.find_by(name: "选车").nil?
Category.create!(name: "用车", status: 1, sort: 2) if Category.find_by(name: "用车").nil?
Category.create!(name: "其他", status: 1, sort: 3) if Category.find_by(name: "其他").nil?
Category.create!(name: "车型分类", status: 1, sort: 4) if Category.find_by(name: "车型分类").nil?
Category.create!(name: "车系", status: 1, sort: 99) if Category.find_by(name: "车系").nil?

category_1 = Category.find_by(name: "选车")
category_2 = Category.find_by(name: "用车")
category_3 = Category.find_by(name: "其他")
category_4 = Category.find_by(name: "车型分类")
category_99 = Category.find_by(name: "车系")

# 可见栏目
Column.create!(category_id: category_1.id, name: "评测", en_name: "en", keyword: "^review|^test drive|0-100|0-60|^acceleration|加速测试|刹车测试|^车评|^震震有词|^试驾|!car汽车社区|^萝卜报告", sort: 1) if Column.find_by(name: "评测").nil?
Column.create!(category_id: category_1.id, name: "实拍", en_name: "en", keyword: "^walkaround|^实拍", sort: 2) if Column.find_by(name: "实拍").nil?
Column.create!(category_id: category_1.id, name: "演示", en_name: "en", keyword: "^highlights|^功能", sort: 3) if Column.find_by(name: "演示").nil?
Column.create!(category_id: category_1.id, name: "车展 ", en_name: "en", keyword: "auto show|车展", sort: 4) if Column.find_by(name: "车展 ").nil?
Column.create!(category_id: category_1.id, name: "广告", en_name: "en", keyword: "^advertisement|^广告", sort: 5) if Column.find_by(name: "广告").nil?
Column.create!(category_id: category_1.id, name: "安全测试", en_name: "en", keyword: "crash test|safety|ncap|iihs|^安全", sort: 6) if Column.find_by(name: "安全测试").nil?
Column.create!(category_id: category_2.id, name: "保养", en_name: "en", keyword: "car maintenance|^保养", sort: 7) if Column.find_by(name: "保养").nil?
Column.create!(category_id: category_2.id, name: "技术", en_name: "en", keyword: "car mechanical|变速箱|发动机|底盘|机油", sort: 8) if Column.find_by(name: "技术").nil?
Column.create!(category_id: category_2.id, name: "改装", en_name: "en", keyword: "car modify|^改装", sort: 9) if Column.find_by(name: "改装").nil?
Column.create!(category_id: category_2.id, name: "越野", en_name: "en", keyword: "off road|^越野路书|^越野", sort: 10) if Column.find_by(name: "越野").nil?
Column.create!(category_id: category_2.id, name: "赛事", en_name: "en", keyword: "car racing|wrc|勒芒|F1", sort: 11) if Column.find_by(name: "赛事").nil?
Column.create!(category_id: category_3.id, name: "事故", en_name: "en", keyword: "car accident|^交通事故|!交通事故video", sort: 12) if Column.find_by(name: "事故").nil?
Column.create!(category_id: category_3.id, name: "街拍", en_name: "en", keyword: "street supercar|^街拍|sheeme 150", sort: 13) if Column.find_by(name: "街拍").nil?
Column.create!(category_id: category_3.id, name: "游记", en_name: "en", keyword: "自驾游", sort: 14) if Column.find_by(name: "游记").nil?
Column.create!(category_id: category_3.id, name: "新能源", en_name: "en", keyword: "^tesla|toyota hybrid|FF91|混合动力|混动|新能源", sort: 15) if Column.find_by(name: "新能源").nil?
Column.create!(category_id: category_3.id, name: "二手车", en_name: "en", keyword: "二手车|!吱道二手车官方Youtube频道|^吱道不知道|^ASK吱吱吱", sort: 16) if Column.find_by(name: "二手车").nil?
Column.create!(category_id: category_3.id, name: "美女", en_name: "en", keyword: "auto show girl|车展 美女|车展 模特", sort: 17) if Column.find_by(name: "美女").nil?
Column.create!(category_id: category_3.id, name: "综艺节目", en_name: "en", keyword: "fiftth gear|top gear|The Grand Tour|Car Throttle|^越野路书", sort: 18) if Column.find_by(name: "综艺节目").nil?
Column.create!(category_id: category_3.id, name: "搞笑", en_name: "en", keyword: "car funny|^搞笑|^轻松|^爆笑", sort: 19) if Column.find_by(name: "搞笑").nil?
Column.create!(category_id: category_4.id, name: "MPV", en_name: "MPV", keyword: "MPV", sort: 20) if Column.find_by(name: "MPV").nil?
Column.create!(category_id: category_4.id, name: "豪华车", en_name: "en", keyword: "豪华车", sort: 21) if Column.find_by(name: "豪华车").nil?
Column.create!(category_id: category_4.id, name: "SUV", en_name: "SUV", keyword: "SUV", sort: 22) if Column.find_by(name: "SUV").nil?
Column.create!(category_id: category_4.id, name: "小型车", en_name: "en", keyword: "小型车", sort: 23) if Column.find_by(name: "小型车").nil?
Column.create!(category_id: category_4.id, name: "卡车", en_name: "en", keyword: "卡车", sort: 24) if Column.find_by(name: "卡车").nil?
Column.create!(category_id: category_4.id, name: "客车", en_name: "en", keyword: "客车", sort: 25) if Column.find_by(name: "客车").nil?
Column.create!(category_id: category_4.id, name: "面包车", en_name: "en", keyword: "面包车", sort: 26) if Column.find_by(name: "面包车").nil?
Column.create!(category_id: category_4.id, name: "微型车", en_name: "en", keyword: "微型车", sort: 27) if Column.find_by(name: "微型车").nil?
Column.create!(category_id: category_4.id, name: "中大型车", en_name: "en", keyword: "中大型车", sort: 28) if Column.find_by(name: "中大型车").nil?
Column.create!(category_id: category_4.id, name: "皮卡", en_name: "en", keyword: "皮卡", sort: 29) if Column.find_by(name: "皮卡").nil?
Column.create!(category_id: category_4.id, name: "紧凑型车", en_name: "en", keyword: "紧凑型车", sort: 30) if Column.find_by(name: "紧凑型车").nil?
Column.create!(category_id: category_4.id, name: "中型车", en_name: "en", keyword: "中型车", sort: 31) if Column.find_by(name: "中型车").nil?
Column.create!(category_id: category_4.id, name: "跑车", en_name: "en", keyword: "跑车", sort: 32) if Column.find_by(name: "跑车").nil?


# 不可见栏目
Column.create!(category_id: category_99.id, name: "奥迪", en_name: "audi", keyword: "奥迪|audi", status: 0) if Column.find_by(name: "奥迪", keyword: "奥迪|audi").nil?
Column.create!(category_id: category_99.id, name: "阿斯顿·马丁", en_name: "aston martin", keyword: "阿斯顿·马丁|aston martin", status: 0) if Column.find_by(name: "阿斯顿·马丁", keyword: "阿斯顿·马丁|aston martin").nil?
Column.create!(category_id: category_99.id, name: "阿尔法·罗密欧", en_name: "alfa romeo", keyword: "阿尔法·罗密欧|alfa romeo", status: 0) if Column.find_by(name: "阿尔法·罗密欧", keyword: "阿尔法·罗密欧|alfa romeo").nil?
Column.create!(category_id: category_99.id, name: "AC Schnitzer", en_name: "AC Schnitzer", keyword: "AC Schnitzer", status: 0) if Column.find_by(name: "AC Schnitzer", keyword: "AC Schnitzer").nil?
Column.create!(category_id: category_99.id, name: "Artega", en_name: "Artega", keyword: "Artega", status: 0) if Column.find_by(name: "Artega", keyword: "Artega").nil?
Column.create!(category_id: category_99.id, name: "奥克斯", en_name: "奥克斯", keyword: "奥克斯", status: 0) if Column.find_by(name: "奥克斯", keyword: "奥克斯").nil?
Column.create!(category_id: category_99.id, name: "本田", en_name: "honda", keyword: "本田|honda", status: 0) if Column.find_by(name: "本田", keyword: "本田|honda").nil?
Column.create!(category_id: category_99.id, name: "别克", en_name: "buick", keyword: "别克|buick", status: 0) if Column.find_by(name: "别克", keyword: "别克|buick").nil?
Column.create!(category_id: category_99.id, name: "奔驰", en_name: "mercedes", keyword: "奔驰|mercedes", status: 0) if Column.find_by(name: "奔驰", keyword: "奔驰|mercedes").nil?
Column.create!(category_id: category_99.id, name: "宝马", en_name: "bmw", keyword: "宝马|bmw", status: 0) if Column.find_by(name: "宝马", keyword: "宝马|bmw").nil?
Column.create!(category_id: category_99.id, name: "比亚迪", en_name: "比亚迪", keyword: "比亚迪", status: 0) if Column.find_by(name: "比亚迪", keyword: "比亚迪").nil?
Column.create!(category_id: category_99.id, name: "宝骏", en_name: "宝骏", keyword: "宝骏", status: 0) if Column.find_by(name: "宝骏", keyword: "宝骏").nil?
Column.create!(category_id: category_99.id, name: "标致", en_name: "peugeot", keyword: "标致|peugeot", status: 0) if Column.find_by(name: "标致", keyword: "标致|peugeot").nil?
Column.create!(category_id: category_99.id, name: "北汽幻速", en_name: "北汽幻速", keyword: "北汽幻速", status: 0) if Column.find_by(name: "北汽幻速", keyword: "北汽幻速").nil?
Column.create!(category_id: category_99.id, name: "保时捷", en_name: "porsche", keyword: "保时捷|porsche", status: 0) if Column.find_by(name: "保时捷", keyword: "保时捷|porsche").nil?
Column.create!(category_id: category_99.id, name: "北汽绅宝", en_name: "北汽绅宝", keyword: "北汽绅宝", status: 0) if Column.find_by(name: "北汽绅宝", keyword: "北汽绅宝").nil?
Column.create!(category_id: category_99.id, name: "奔腾", en_name: "奔腾", keyword: "奔腾", status: 0) if Column.find_by(name: "奔腾", keyword: "奔腾").nil?
Column.create!(category_id: category_99.id, name: "北京", en_name: "北京", keyword: "北京", status: 0) if Column.find_by(name: "北京", keyword: "北京").nil?
Column.create!(category_id: category_99.id, name: "北汽威旺", en_name: "北汽威旺", keyword: "北汽威旺", status: 0) if Column.find_by(name: "北汽威旺", keyword: "北汽威旺").nil?
Column.create!(category_id: category_99.id, name: "北汽制造", en_name: "北汽制造", keyword: "北汽制造", status: 0) if Column.find_by(name: "北汽制造", keyword: "北汽制造").nil?
Column.create!(category_id: category_99.id, name: "宾利", en_name: "bentley", keyword: "宾利|bentley", status: 0) if Column.find_by(name: "宾利", keyword: "宾利|bentley").nil?
Column.create!(category_id: category_99.id, name: "布加迪", en_name: "Bugatti", keyword: "布加迪|Bugatti", status: 0) if Column.find_by(name: "布加迪", keyword: "布加迪|Bugatti").nil?
Column.create!(category_id: category_99.id, name: "巴博斯", en_name: "brabus", keyword: "巴博斯|brabus", status: 0) if Column.find_by(name: "巴博斯", keyword: "巴博斯|brabus").nil?
Column.create!(category_id: category_99.id, name: "宝沃", en_name: "BORGWARD", keyword: "宝沃|BORGWARD", status: 0) if Column.find_by(name: "宝沃", keyword: "宝沃|BORGWARD").nil?
Column.create!(category_id: category_99.id, name: "北汽新能源", en_name: "北汽新能源", keyword: "北汽新能源", status: 0) if Column.find_by(name: "北汽新能源", keyword: "北汽新能源").nil?
Column.create!(category_id: category_99.id, name: "保斐利", en_name: "保斐利", keyword: "保斐利", status: 0) if Column.find_by(name: "保斐利", keyword: "保斐利").nil?
Column.create!(category_id: category_99.id, name: "宝龙", en_name: "宝龙", keyword: "宝龙", status: 0) if Column.find_by(name: "宝龙", keyword: "宝龙").nil?
Column.create!(category_id: category_99.id, name: "长安汽车", en_name: "长安汽车", keyword: "长安汽车", status: 0) if Column.find_by(name: "长安汽车", keyword: "长安汽车").nil?
Column.create!(category_id: category_99.id, name: "长安欧尚", en_name: "长安欧尚", keyword: "长安欧尚", status: 0) if Column.find_by(name: "长安欧尚", keyword: "长安欧尚").nil?
Column.create!(category_id: category_99.id, name: "长城", en_name: "长城 ", keyword: "长城", status: 0) if Column.find_by(name: "长城", keyword: "长城").nil?
Column.create!(category_id: category_99.id, name: "昌河", en_name: "昌河", keyword: "昌河", status: 0) if Column.find_by(name: "昌河", keyword: "昌河").nil?
Column.create!(category_id: category_99.id, name: "长安跨越", en_name: "长安跨越", keyword: "长安跨越", status: 0) if Column.find_by(name: "长安跨越", keyword: "长安跨越").nil?
Column.create!(category_id: category_99.id, name: "长城华冠", en_name: "长城华冠", keyword: "长城华冠", status: 0) if Column.find_by(name: "长城华冠", keyword: "长城华冠").nil?
Column.create!(category_id: category_99.id, name: "成功", en_name: "成功", keyword: "成功", status: 0) if Column.find_by(name: "成功", keyword: "成功").nil?
Column.create!(category_id: category_99.id, name: "长久汽车", en_name: "长久汽车", keyword: "长久汽车", status: 0) if Column.find_by(name: "长久汽车", keyword: "长久汽车").nil?
Column.create!(category_id: category_99.id, name: "大众", en_name: "volkswagen", keyword: "大众|volkswagen", status: 0) if Column.find_by(name: "大众", keyword: "大众|volkswagen").nil?
Column.create!(category_id: category_99.id, name: "东风风行", en_name: "东风风行", keyword: "东风风行", status: 0) if Column.find_by(name: "东风风行", keyword: "东风风行").nil?
Column.create!(category_id: category_99.id, name: "东风风神", en_name: "东风风神", keyword: "东风风神", status: 0) if Column.find_by(name: "东风风神", keyword: "东风风神").nil?
Column.create!(category_id: category_99.id, name: "东南", en_name: "东南", keyword: "东南", status: 0) if Column.find_by(name: "东南", keyword: "东南").nil?
Column.create!(category_id: category_99.id, name: "东风风光", en_name: "东风风光", keyword: "东风风光", status: 0) if Column.find_by(name: "东风风光", keyword: "东风风光").nil?
Column.create!(category_id: category_99.id, name: "道奇", en_name: "dodge", keyword: "道奇|dodge", status: 0) if Column.find_by(name: "道奇", keyword: "道奇|dodge").nil?
Column.create!(category_id: category_99.id, name: "DS", en_name: "DS", keyword: "DS", status: 0) if Column.find_by(name: "DS", keyword: "DS").nil?
Column.create!(category_id: category_99.id, name: "东风小康", en_name: "东风小康", keyword: "东风小康", status: 0) if Column.find_by(name: "东风小康", keyword: "东风小康").nil?
Column.create!(category_id: category_99.id, name: "东风·郑州日产", en_name: "东风·郑州日产", keyword: "东风·郑州日产", status: 0) if Column.find_by(name: "东风·郑州日产", keyword: "东风·郑州日产").nil?
Column.create!(category_id: category_99.id, name: "东风御风", en_name: "东风御风", keyword: "东风御风", status: 0) if Column.find_by(name: "东风御风", keyword: "东风御风").nil?
Column.create!(category_id: category_99.id, name: "东风风度", en_name: "东风风度", keyword: "东风风度", status: 0) if Column.find_by(name: "东风风度", keyword: "东风风度").nil?
Column.create!(category_id: category_99.id, name: "东风", en_name: "东风", keyword: "东风", status: 0) if Column.find_by(name: "东风", keyword: "东风").nil?
Column.create!(category_id: category_99.id, name: "底特律电动车", en_name: "底特律电动车", keyword: "底特律电动车", status: 0) if Column.find_by(name: "底特律电动车", keyword: "底特律电动车").nil?
Column.create!(category_id: category_99.id, name: "大宇", en_name: "Daewoo", keyword: "大宇|Daewoo", status: 0) if Column.find_by(name: "大宇", keyword: "大宇|Daewoo").nil?
Column.create!(category_id: category_99.id, name: "大迪", en_name: "大迪", keyword: "大迪", status: 0) if Column.find_by(name: "大迪", keyword: "大迪").nil?
Column.create!(category_id: category_99.id, name: "丰田", en_name: "toyota", keyword: "丰田|toyota", status: 0) if Column.find_by(name: "丰田", keyword: "丰田|toyota").nil?
Column.create!(category_id: category_99.id, name: "福特", en_name: "ford", keyword: "福特|ford", status: 0) if Column.find_by(name: "福特", keyword: "福特|ford").nil?
Column.create!(category_id: category_99.id, name: "福田", en_name: "福田", keyword: "福田", status: 0) if Column.find_by(name: "福田", keyword: "福田").nil?
Column.create!(category_id: category_99.id, name: "法拉利", en_name: "ferrari", keyword: "法拉利|ferrari", status: 0) if Column.find_by(name: "法拉利", keyword: "法拉利|ferrari").nil?
Column.create!(category_id: category_99.id, name: "菲亚特", en_name: "fiat", keyword: "菲亚特|fiat", status: 0) if Column.find_by(name: "菲亚特", keyword: "菲亚特|fiat").nil?
Column.create!(category_id: category_99.id, name: "福迪", en_name: "福迪", keyword: "福迪", status: 0) if Column.find_by(name: "福迪", keyword: "福迪").nil?
Column.create!(category_id: category_99.id, name: "福汽启腾", en_name: "福汽启腾", keyword: "福汽启腾", status: 0) if Column.find_by(name: "福汽启腾", keyword: "福汽启腾").nil?
Column.create!(category_id: category_99.id, name: "飞驰商务车", en_name: "飞驰商务车", keyword: "飞驰商务车", status: 0) if Column.find_by(name: "飞驰商务车", keyword: "飞驰商务车").nil?
Column.create!(category_id: category_99.id, name: "Faralli Mazzanti", en_name: "Faralli Mazzanti", keyword: "Faralli Mazzanti", status: 0) if Column.find_by(name: "Faralli Mazzanti", keyword: "Faralli Mazzanti").nil?
Column.create!(category_id: category_99.id, name: "菲斯克", en_name: "Fisker", keyword: "菲斯克|Fisker", status: 0) if Column.find_by(name: "菲斯克", keyword: "菲斯克|Fisker").nil?
Column.create!(category_id: category_99.id, name: "富奇", en_name: "富奇", keyword: "富奇", status: 0) if Column.find_by(name: "富奇", keyword: "富奇").nil?
Column.create!(category_id: category_99.id, name: "福达", en_name: "福达", keyword: "福达", status: 0) if Column.find_by(name: "福达", keyword: "福达").nil?
Column.create!(category_id: category_99.id, name: "广汽传祺", en_name: "trumpchi", keyword: "广汽传祺|trumpchi", status: 0) if Column.find_by(name: "广汽传祺", keyword: "广汽传祺|trumpchi").nil?
Column.create!(category_id: category_99.id, name: "观致汽车", en_name: "qoros", keyword: "观致汽车|qoros", status: 0) if Column.find_by(name: "观致汽车", keyword: "观致汽车|qoros").nil?
Column.create!(category_id: category_99.id, name: "广汽吉奥", en_name: "广汽吉奥", keyword: "广汽吉奥", status: 0) if Column.find_by(name: "广汽吉奥", keyword: "广汽吉奥").nil?
Column.create!(category_id: category_99.id, name: "GMC", en_name: "GMC", keyword: "GMC", status: 0) if Column.find_by(name: "GMC", keyword: "GMC").nil?
Column.create!(category_id: category_99.id, name: "广汽中兴", en_name: "广汽中兴", keyword: "广汽中兴", status: 0) if Column.find_by(name: "广汽中兴", keyword: "广汽中兴").nil?
Column.create!(category_id: category_99.id, name: "光冈", en_name: "Mitsuoka", keyword: "光冈|Mitsuoka", status: 0) if Column.find_by(name: "光冈", keyword: "光冈|Mitsuoka").nil?
Column.create!(category_id: category_99.id, name: "GTA", en_name: "GTA", keyword: "GTA", status: 0) if Column.find_by(name: "GTA", keyword: "GTA").nil?
Column.create!(category_id: category_99.id, name: "广汽日野", en_name: "广汽日野", keyword: "广汽日野", status: 0) if Column.find_by(name: "广汽日野", keyword: "广汽日野").nil?
Column.create!(category_id: category_99.id, name: "哈弗", en_name: "haval", keyword: "哈弗|haval", status: 0) if Column.find_by(name: "哈弗", keyword: "哈弗|haval").nil?
Column.create!(category_id: category_99.id, name: "海马", en_name: "海马", keyword: "海马", status: 0) if Column.find_by(name: "海马", keyword: "海马").nil?
Column.create!(category_id: category_99.id, name: "红旗", en_name: "hongqi", keyword: "红旗|hongqi", status: 0) if Column.find_by(name: "红旗", keyword: "红旗|hongqi").nil?
Column.create!(category_id: category_99.id, name: "华泰", en_name: "华泰", keyword: "华泰", status: 0) if Column.find_by(name: "华泰", keyword: "华泰").nil?
Column.create!(category_id: category_99.id, name: "悍马", en_name: "Hummer", keyword: "悍马|Hummer", status: 0) if Column.find_by(name: "悍马", keyword: "悍马|Hummer").nil?
Column.create!(category_id: category_99.id, name: "黄海", en_name: "黄海", keyword: "黄海", status: 0) if Column.find_by(name: "黄海", keyword: "黄海").nil?
Column.create!(category_id: category_99.id, name: "哈飞", en_name: "哈飞", keyword: "哈飞", status: 0) if Column.find_by(name: "哈飞", keyword: "哈飞").nil?
Column.create!(category_id: category_99.id, name: "海马商用车", en_name: "海马商用车", keyword: "海马商用车", status: 0) if Column.find_by(name: "海马商用车", keyword: "海马商用车").nil?
Column.create!(category_id: category_99.id, name: "华颂", en_name: "华颂", keyword: "华颂", status: 0) if Column.find_by(name: "华颂", keyword: "华颂").nil?
Column.create!(category_id: category_99.id, name: "华泰新能源", en_name: "华泰新能源", keyword: "华泰新能源", status: 0) if Column.find_by(name: "华泰新能源", keyword: "华泰新能源").nil?
Column.create!(category_id: category_99.id, name: "海格", en_name: "海格", keyword: "海格", status: 0) if Column.find_by(name: "海格", keyword: "海格").nil?
Column.create!(category_id: category_99.id, name: "汇众", en_name: "汇众", keyword: "汇众", status: 0) if Column.find_by(name: "汇众", keyword: "汇众").nil?
Column.create!(category_id: category_99.id, name: "华普", en_name: "华普", keyword: "华普", status: 0) if Column.find_by(name: "华普", keyword: "华普").nil?
Column.create!(category_id: category_99.id, name: "恒天汽车", en_name: "恒天汽车", keyword: "恒天汽车", status: 0) if Column.find_by(name: "恒天汽车", keyword: "恒天汽车").nil?
Column.create!(category_id: category_99.id, name: "黑豹", en_name: "黑豹", keyword: "黑豹", status: 0) if Column.find_by(name: "黑豹", keyword: "黑豹").nil?
Column.create!(category_id: category_99.id, name: "汉江", en_name: "汉江", keyword: "汉江", status: 0) if Column.find_by(name: "汉江", keyword: "汉江").nil?
Column.create!(category_id: category_99.id, name: "航天圆通", en_name: "航天圆通", keyword: "航天圆通", status: 0) if Column.find_by(name: "航天圆通", keyword: "航天圆通").nil?
Column.create!(category_id: category_99.id, name: "华阳", en_name: "华阳", keyword: "华阳", status: 0) if Column.find_by(name: "华阳", keyword: "华阳").nil?
Column.create!(category_id: category_99.id, name: "吉利汽车", en_name: "geely", keyword: "吉利汽车|geely", status: 0) if Column.find_by(name: "吉利汽车", keyword: "吉利汽车|geely").nil?
Column.create!(category_id: category_99.id, name: "江淮", en_name: "江淮", keyword: "江淮", status: 0) if Column.find_by(name: "江淮", keyword: "江淮").nil?
Column.create!(category_id: category_99.id, name: "Jeep", en_name: "Jeep", keyword: "Jeep", status: 0) if Column.find_by(name: "Jeep", keyword: "Jeep").nil?
Column.create!(category_id: category_99.id, name: "捷豹", en_name: "jaguar", keyword: "捷豹|jaguar", status: 0) if Column.find_by(name: "捷豹", keyword: "捷豹|jaguar").nil?
Column.create!(category_id: category_99.id, name: "江铃", en_name: "江铃", keyword: "江铃", status: 0) if Column.find_by(name: "江铃", keyword: "江铃").nil?
Column.create!(category_id: category_99.id, name: "金杯", en_name: "金杯", keyword: "金杯", status: 0) if Column.find_by(name: "金杯", keyword: "金杯").nil?
Column.create!(category_id: category_99.id, name: "金龙", en_name: "金龙", keyword: "金龙", status: 0) if Column.find_by(name: "金龙", keyword: "金龙").nil?
Column.create!(category_id: category_99.id, name: "九龙", en_name: "九龙", keyword: "九龙", status: 0) if Column.find_by(name: "九龙", keyword: "九龙").nil?
Column.create!(category_id: category_99.id, name: "江铃集团轻汽", en_name: "江铃集团轻汽", keyword: "江铃集团轻汽", status: 0) if Column.find_by(name: "江铃集团轻汽", keyword: "江铃集团轻汽").nil?
Column.create!(category_id: category_99.id, name: "金旅客车", en_name: "金旅客车", keyword: "金旅客车", status: 0) if Column.find_by(name: "金旅客车", keyword: "金旅客车").nil?
Column.create!(category_id: category_99.id, name: "江南", en_name: "江南", keyword: "江南", status: 0) if Column.find_by(name: "江南", keyword: "江南").nil?
Column.create!(category_id: category_99.id, name: "金程", en_name: "金程", keyword: "金程", status: 0) if Column.find_by(name: "金程", keyword: "金程").nil?
Column.create!(category_id: category_99.id, name: "吉林江北", en_name: "吉林江北", keyword: "吉林江北", status: 0) if Column.find_by(name: "吉林江北", keyword: "吉林江北").nil?
Column.create!(category_id: category_99.id, name: "凯迪拉克", en_name: "cadillac", keyword: "凯迪拉克|cadillac", status: 0) if Column.find_by(name: "凯迪拉克", keyword: "凯迪拉克|cadillac").nil?
Column.create!(category_id: category_99.id, name: "开瑞", en_name: "开瑞", keyword: "开瑞", status: 0) if Column.find_by(name: "开瑞", keyword: "开瑞").nil?
Column.create!(category_id: category_99.id, name: "克莱斯勒", en_name: "chrysler", keyword: "克莱斯勒|chrysler", status: 0) if Column.find_by(name: "克莱斯勒", keyword: "克莱斯勒|chrysler").nil?
Column.create!(category_id: category_99.id, name: "凯翼", en_name: "凯翼", keyword: "凯翼", status: 0) if Column.find_by(name: "凯翼", keyword: "凯翼").nil?
Column.create!(category_id: category_99.id, name: "卡威", en_name: "卡威", keyword: "卡威", status: 0) if Column.find_by(name: "卡威", keyword: "卡威").nil?
Column.create!(category_id: category_99.id, name: "科尼赛克", en_name: "Koenigsegg", keyword: "科尼赛克|Koenigsegg", status: 0) if Column.find_by(name: "科尼赛克", keyword: "科尼赛克|Koenigsegg").nil?
Column.create!(category_id: category_99.id, name: "科瑞斯的", en_name: "科瑞斯的", keyword: "科瑞斯的", status: 0) if Column.find_by(name: "科瑞斯的", keyword: "科瑞斯的").nil?
Column.create!(category_id: category_99.id, name: "康迪全球鹰电动汽车", en_name: "康迪全球鹰电动汽车", keyword: "康迪全球鹰电动汽车", status: 0) if Column.find_by(name: "康迪全球鹰电动汽车", keyword: "康迪全球鹰电动汽车").nil?
Column.create!(category_id: category_99.id, name: "卡尔森", en_name: "kaersen", keyword: "卡尔森|kaersen", status: 0) if Column.find_by(name: "卡尔森", keyword: "卡尔森|kaersen").nil?
Column.create!(category_id: category_99.id, name: "KTM", en_name: "KTM", keyword: "KTM", status: 0) if Column.find_by(name: "KTM", keyword: "KTM").nil?
Column.create!(category_id: category_99.id, name: "陆风", en_name: "陆风", keyword: "陆风", status: 0) if Column.find_by(name: "陆风", keyword: "陆风").nil?
Column.create!(category_id: category_99.id, name: "铃木", en_name: "suzuki", keyword: "铃木|suzuki", status: 0) if Column.find_by(name: "铃木", keyword: "铃木|suzuki").nil?
Column.create!(category_id: category_99.id, name: "路虎", en_name: "land rover|range rover", keyword: "路虎|land rover|range rover", status: 0) if Column.find_by(name: "路虎", keyword: "路虎|land rover|range rover").nil?
Column.create!(category_id: category_99.id, name: "雷克萨斯", en_name: "lexus", keyword: "雷克萨斯|lexus", status: 0) if Column.find_by(name: "雷克萨斯", keyword: "雷克萨斯|lexus").nil?
Column.create!(category_id: category_99.id, name: "猎豹汽车", en_name: "猎豹汽车", keyword: "猎豹汽车", status: 0) if Column.find_by(name: "猎豹汽车", keyword: "猎豹汽车").nil?
Column.create!(category_id: category_99.id, name: "雷诺", en_name: "renault", keyword: "雷诺|renault", status: 0) if Column.find_by(name: "雷诺", keyword: "雷诺|renault").nil?
Column.create!(category_id: category_99.id, name: "林肯", en_name: "lincoln", keyword: "林肯|lincoln", status: 0) if Column.find_by(name: "林肯", keyword: "林肯|lincoln").nil?
Column.create!(category_id: category_99.id, name: "兰博基尼", en_name: "Lamborghini", keyword: "兰博基尼|Lamborghini", status: 0) if Column.find_by(name: "兰博基尼", keyword: "兰博基尼|Lamborghini").nil?
Column.create!(category_id: category_99.id, name: "力帆", en_name: "力帆", keyword: "力帆", status: 0) if Column.find_by(name: "力帆", keyword: "力帆").nil?
Column.create!(category_id: category_99.id, name: "劳斯莱斯", en_name: "rolls royce", keyword: "劳斯莱斯|rolls royce", status: 0) if Column.find_by(name: "劳斯莱斯", keyword: "劳斯莱斯|rolls royce").nil?
Column.create!(category_id: category_99.id, name: "莲花", en_name: "莲花", keyword: "莲花", status: 0) if Column.find_by(name: "莲花", keyword: "莲花").nil?
Column.create!(category_id: category_99.id, name: "蓝海房车", en_name: "蓝海房车", keyword: "蓝海房车", status: 0) if Column.find_by(name: "蓝海房车", keyword: "蓝海房车").nil?
Column.create!(category_id: category_99.id, name: "路特斯", en_name: "Lotus", keyword: "路特斯|Lotus", status: 0) if Column.find_by(name: "路特斯", keyword: "路特斯|Lotus").nil?
Column.create!(category_id: category_99.id, name: "理念", en_name: "理念", keyword: "理念", status: 0) if Column.find_by(name: "理念", keyword: "理念").nil?
Column.create!(category_id: category_99.id, name: "雷丁电动", en_name: "雷丁电动", keyword: "雷丁电动", status: 0) if Column.find_by(name: "雷丁电动", keyword: "雷丁电动").nil?
Column.create!(category_id: category_99.id, name: "陆地方舟", en_name: "陆地方舟", keyword: "陆地方舟", status: 0) if Column.find_by(name: "陆地方舟", keyword: "陆地方舟").nil?
Column.create!(category_id: category_99.id, name: "领志", en_name: "领志", keyword: "领志", status: 0) if Column.find_by(name: "领志", keyword: "领志").nil?
Column.create!(category_id: category_99.id, name: "朗世", en_name: "朗世", keyword: "朗世", status: 0) if Column.find_by(name: "朗世", keyword: "朗世").nil?
Column.create!(category_id: category_99.id, name: "罗孚", en_name: "Rover", keyword: "罗孚|Rover", status: 0) if Column.find_by(name: "罗孚", keyword: "罗孚|Rover").nil?
Column.create!(category_id: category_99.id, name: "马自达", en_name: "mazda", keyword: "马自达|mazda", status: 0) if Column.find_by(name: "马自达", keyword: "马自达|mazda").nil?
Column.create!(category_id: category_99.id, name: "MG", en_name: "MG", keyword: "MG", status: 0) if Column.find_by(name: "MG", keyword: "MG").nil?
Column.create!(category_id: category_99.id, name: "玛莎拉蒂", en_name: "maserati", keyword: "玛莎拉蒂|maserati", status: 0) if Column.find_by(name: "玛莎拉蒂", keyword: "玛莎拉蒂|maserati").nil?
Column.create!(category_id: category_99.id, name: "MINI", en_name: "MINI", keyword: "MINI", status: 0) if Column.find_by(name: "MINI", keyword: "MINI").nil?
Column.create!(category_id: category_99.id, name: "迈凯伦", en_name: "mclaren", keyword: "迈凯伦|mclaren", status: 0) if Column.find_by(name: "迈凯伦", keyword: "迈凯伦|mclaren").nil?
Column.create!(category_id: category_99.id, name: "迈巴赫", en_name: "Maybach", keyword: "迈巴赫|Maybach", status: 0) if Column.find_by(name: "迈巴赫", keyword: "迈巴赫|Maybach").nil?
Column.create!(category_id: category_99.id, name: "摩根", en_name: "morgan", keyword: "摩根|morgan", status: 0) if Column.find_by(name: "摩根", keyword: "摩根|morgan").nil?
Column.create!(category_id: category_99.id, name: "美亚", en_name: "美亚", keyword: "美亚", status: 0) if Column.find_by(name: "美亚", keyword: "美亚").nil?
Column.create!(category_id: category_99.id, name: "纳智捷", en_name: "Luxgen", keyword: "纳智捷|Luxgen", status: 0) if Column.find_by(name: "纳智捷", keyword: "纳智捷|Luxgen").nil?
Column.create!(category_id: category_99.id, name: "Noble", en_name: "Noble", keyword: "Noble", status: 0) if Column.find_by(name: "Noble", keyword: "Noble").nil?
Column.create!(category_id: category_99.id, name: "讴歌", en_name: "acura", keyword: "讴歌|acura", status: 0) if Column.find_by(name: "讴歌", keyword: "讴歌|acura").nil?
Column.create!(category_id: category_99.id, name: "欧朗", en_name: "欧朗", keyword: "欧朗", status: 0) if Column.find_by(name: "欧朗", keyword: "欧朗").nil?
Column.create!(category_id: category_99.id, name: "欧宝", en_name: "opel", keyword: "欧宝|opel", status: 0) if Column.find_by(name: "欧宝", keyword: "欧宝|opel").nil?
Column.create!(category_id: category_99.id, name: "欧联", en_name: "欧联", keyword: "欧联", status: 0) if Column.find_by(name: "欧联", keyword: "欧联").nil?
Column.create!(category_id: category_99.id, name: "帕加尼", en_name: "Pagani", keyword: "帕加尼|Pagani", status: 0) if Column.find_by(name: "帕加尼", keyword: "帕加尼|Pagani").nil?
Column.create!(category_id: category_99.id, name: "皮特比尔特卡车", en_name: "Peterbilt", keyword: "皮特比尔特卡车|Peterbilt", status: 0) if Column.find_by(name: "皮特比尔特卡车", keyword: "皮特比尔特卡车|Peterbilt").nil?
Column.create!(category_id: category_99.id, name: "PGO", en_name: "PGO", keyword: "PGO", status: 0) if Column.find_by(name: "PGO", keyword: "PGO").nil?
Column.create!(category_id: category_99.id, name: "旁蒂克", en_name: "Pontiac", keyword: "旁蒂克|Pontiac", status: 0) if Column.find_by(name: "旁蒂克", keyword: "旁蒂克|Pontiac").nil?
Column.create!(category_id: category_99.id, name: "起亚", en_name: "kia", keyword: "起亚|kia", status: 0) if Column.find_by(name: "起亚", keyword: "起亚|kia").nil?
Column.create!(category_id: category_99.id, name: "奇瑞", en_name: "奇瑞", keyword: "奇瑞", status: 0) if Column.find_by(name: "奇瑞", keyword: "奇瑞").nil?
Column.create!(category_id: category_99.id, name: "启辰", en_name: "启辰", keyword: "启辰", status: 0) if Column.find_by(name: "启辰", keyword: "启辰").nil?
Column.create!(category_id: category_99.id, name: "庆铃", en_name: "庆铃", keyword: "庆铃", status: 0) if Column.find_by(name: "庆铃", keyword: "庆铃").nil?
Column.create!(category_id: category_99.id, name: "乔治·巴顿", en_name: "乔治·巴顿", keyword: "乔治·巴顿", status: 0) if Column.find_by(name: "乔治·巴顿", keyword: "乔治·巴顿").nil?
Column.create!(category_id: category_99.id, name: "日产", en_name: "nissan", keyword: "日产|nissan", status: 0) if Column.find_by(name: "日产", keyword: "日产|nissan").nil?
Column.create!(category_id: category_99.id, name: "荣威", en_name: "roewe", keyword: "荣威|roewe", status: 0) if Column.find_by(name: "荣威", keyword: "荣威|roewe").nil?
Column.create!(category_id: category_99.id, name: "瑞麒", en_name: "瑞麒", keyword: "瑞麒", status: 0) if Column.find_by(name: "瑞麒", keyword: "瑞麒").nil?
Column.create!(category_id: category_99.id, name: "斯柯达", en_name: "skoda", keyword: "斯柯达|skoda", status: 0) if Column.find_by(name: "斯柯达", keyword: "斯柯达|skoda").nil?
Column.create!(category_id: category_99.id, name: "三菱", en_name: "mitsubishi", keyword: "三菱|mitsubishi", status: 0) if Column.find_by(name: "三菱", keyword: "三菱|mitsubishi").nil?
Column.create!(category_id: category_99.id, name: "斯巴鲁", en_name: "subaru", keyword: "斯巴鲁|subaru", status: 0) if Column.find_by(name: "斯巴鲁", keyword: "斯巴鲁|subaru").nil?
Column.create!(category_id: category_99.id, name: "上汽大通", en_name: "上汽大通", keyword: "上汽大通", status: 0) if Column.find_by(name: "上汽大通", keyword: "上汽大通").nil?
Column.create!(category_id: category_99.id, name: "双龙", en_name: "ssangyong", keyword: "双龙|ssangyong", status: 0) if Column.find_by(name: "双龙", keyword: "双龙|ssangyong").nil?
Column.create!(category_id: category_99.id, name: "smart", en_name: "smart", keyword: "smart", status: 0) if Column.find_by(name: "smart", keyword: "smart").nil?
Column.create!(category_id: category_99.id, name: "山姆", en_name: "山姆", keyword: "山姆", status: 0) if Column.find_by(name: "山姆", keyword: "山姆").nil?
Column.create!(category_id: category_99.id, name: "STARTECH", en_name: "STARTECH", keyword: "STARTECH", status: 0) if Column.find_by(name: "STARTECH", keyword: "STARTECH").nil?
Column.create!(category_id: category_99.id, name: "赛麟SALEEN", en_name: "SALEEN", keyword: "赛麟SALEEN|SALEEN", status: 0) if Column.find_by(name: "赛麟SALEEN", keyword: "赛麟SALEEN|SALEEN").nil?
Column.create!(category_id: category_99.id, name: "世爵", en_name: "世爵", keyword: "世爵", status: 0) if Column.find_by(name: "世爵", keyword: "世爵").nil?
Column.create!(category_id: category_99.id, name: "双环", en_name: "双环", keyword: "双环", status: 0) if Column.find_by(name: "双环", keyword: "双环").nil?
Column.create!(category_id: category_99.id, name: "萨博", en_name: "saab", keyword: "萨博|saab", status: 0) if Column.find_by(name: "萨博", keyword: "萨博|saab").nil?
Column.create!(category_id: category_99.id, name: "陕汽通家", en_name: "陕汽通家", keyword: "陕汽通家", status: 0) if Column.find_by(name: "陕汽通家", keyword: "陕汽通家").nil?
Column.create!(category_id: category_99.id, name: "三星", en_name: "三星", keyword: "三星", status: 0) if Column.find_by(name: "三星", keyword: "三星").nil?
Column.create!(category_id: category_99.id, name: "上喆汽车", en_name: "上雌惮S", keyword: "上喆汽车|上雌惮S", status: 0) if Column.find_by(name: "上喆汽车", keyword: "上喆汽车|上雌惮S").nil?
Column.create!(category_id: category_99.id, name: "顺旅", en_name: "顺旅", keyword: "顺旅", status: 0) if Column.find_by(name: "顺旅", keyword: "顺旅").nil?
Column.create!(category_id: category_99.id, name: "特斯拉", en_name: "tesla", keyword: "特斯拉|tesla", status: 0) if Column.find_by(name: "特斯拉", keyword: "特斯拉|tesla").nil?
Column.create!(category_id: category_99.id, name: "泰卡特", en_name: "泰卡特", keyword: "泰卡特", status: 0) if Column.find_by(name: "泰卡特", keyword: "泰卡特").nil?
Column.create!(category_id: category_99.id, name: "腾势", en_name: "腾势", keyword: "腾势", status: 0) if Column.find_by(name: "腾势", keyword: "腾势").nil?
Column.create!(category_id: category_99.id, name: "天马", en_name: "天马", keyword: "天马", status: 0) if Column.find_by(name: "天马", keyword: "天马").nil?
Column.create!(category_id: category_99.id, name: "通田", en_name: "通田", keyword: "通田", status: 0) if Column.find_by(name: "通田", keyword: "通田").nil?
Column.create!(category_id: category_99.id, name: "塔菲克", en_name: "塔菲克", keyword: "塔菲克", status: 0) if Column.find_by(name: "塔菲克", keyword: "塔菲克").nil?
Column.create!(category_id: category_99.id, name: "五菱", en_name: "五菱", keyword: "五菱", status: 0) if Column.find_by(name: "五菱", keyword: "五菱").nil?
Column.create!(category_id: category_99.id, name: "沃尔沃", en_name: "volvo", keyword: "沃尔沃|volvo", status: 0) if Column.find_by(name: "沃尔沃", keyword: "沃尔沃|volvo").nil?
Column.create!(category_id: category_99.id, name: "五十铃", en_name: "isuzu", keyword: "五十铃|isuzu", status: 0) if Column.find_by(name: "五十铃", keyword: "五十铃|isuzu").nil?
Column.create!(category_id: category_99.id, name: "潍柴英致", en_name: "潍柴英致", keyword: "潍柴英致", status: 0) if Column.find_by(name: "潍柴英致", keyword: "潍柴英致").nil?
Column.create!(category_id: category_99.id, name: "威麟", en_name: "威麟", keyword: "威麟", status: 0) if Column.find_by(name: "威麟", keyword: "威麟").nil?
Column.create!(category_id: category_99.id, name: "威兹曼", en_name: "Wiesmann", keyword: "威兹曼|Wiesmann", status: 0) if Column.find_by(name: "威兹曼", keyword: "威兹曼|Wiesmann").nil?
Column.create!(category_id: category_99.id, name: "潍柴欧睿", en_name: "潍柴欧睿", keyword: "潍柴欧睿", status: 0) if Column.find_by(name: "潍柴欧睿", keyword: "潍柴欧睿").nil?
Column.create!(category_id: category_99.id, name: "万丰", en_name: "万丰", keyword: "万丰", status: 0) if Column.find_by(name: "万丰", keyword: "万丰").nil?
Column.create!(category_id: category_99.id, name: "现代", en_name: "hyundai", keyword: "现代|hyundai", status: 0) if Column.find_by(name: "现代", keyword: "现代|hyundai").nil?
Column.create!(category_id: category_99.id, name: "雪佛兰", en_name: "Chevrolet", keyword: "雪佛兰|Chevrolet", status: 0) if Column.find_by(name: "雪佛兰", keyword: "雪佛兰|Chevrolet").nil?
Column.create!(category_id: category_99.id, name: "雪铁龙", en_name: "citroen", keyword: "雪铁龙|citroen", status: 0) if Column.find_by(name: "雪铁龙", keyword: "雪铁龙|citroen").nil?
Column.create!(category_id: category_99.id, name: "星客特", en_name: "星客特", keyword: "星客特", status: 0) if Column.find_by(name: "星客特", keyword: "星客特").nil?
Column.create!(category_id: category_99.id, name: "新凯", en_name: "新凯", keyword: "新凯", status: 0) if Column.find_by(name: "新凯", keyword: "新凯").nil?
Column.create!(category_id: category_99.id, name: "西雅特", en_name: "Seat", keyword: "西雅特|Seat", status: 0) if Column.find_by(name: "西雅特", keyword: "西雅特|Seat").nil?
Column.create!(category_id: category_99.id, name: "新雅途", en_name: "新雅途", keyword: "新雅途", status: 0) if Column.find_by(name: "新雅途", keyword: "新雅途").nil?
Column.create!(category_id: category_99.id, name: "新大地", en_name: "新大地", keyword: "新大地", status: 0) if Column.find_by(name: "新大地", keyword: "新大地").nil?
Column.create!(category_id: category_99.id, name: "英菲尼迪", en_name: "Infiniti", keyword: "英菲尼迪|Infiniti", status: 0) if Column.find_by(name: "英菲尼迪", keyword: "英菲尼迪|Infiniti").nil?
Column.create!(category_id: category_99.id, name: "一汽", en_name: "一汽", keyword: "一汽", status: 0) if Column.find_by(name: "一汽", keyword: "一汽").nil?
Column.create!(category_id: category_99.id, name: "野马汽车", en_name: "野马汽车", keyword: "野马汽车", status: 0) if Column.find_by(name: "野马汽车", keyword: "野马汽车").nil?
Column.create!(category_id: category_99.id, name: "依维柯", en_name: "iveco", keyword: "依维柯|iveco", status: 0) if Column.find_by(name: "依维柯", keyword: "依维柯|iveco").nil?
Column.create!(category_id: category_99.id, name: "永源", en_name: "永源", keyword: "永源", status: 0) if Column.find_by(name: "永源", keyword: "永源").nil?
Column.create!(category_id: category_99.id, name: "宇通", en_name: "宇通", keyword: "宇通", status: 0) if Column.find_by(name: "宇通", keyword: "宇通").nil?
Column.create!(category_id: category_99.id, name: "御捷", en_name: "御捷", keyword: "御捷", status: 0) if Column.find_by(name: "御捷", keyword: "御捷").nil?
Column.create!(category_id: category_99.id, name: "游侠汽车", en_name: "游侠汽车", keyword: "游侠汽车", status: 0) if Column.find_by(name: "游侠汽车", keyword: "游侠汽车").nil?
Column.create!(category_id: category_99.id, name: "云豹", en_name: "云豹", keyword: "云豹", status: 0) if Column.find_by(name: "云豹", keyword: "云豹").nil?
Column.create!(category_id: category_99.id, name: "扬州亚星客车", en_name: "扬州亚星客车", keyword: "扬州亚星客车", status: 0) if Column.find_by(name: "扬州亚星客车", keyword: "扬州亚星客车").nil?
Column.create!(category_id: category_99.id, name: "云雀", en_name: "云雀", keyword: "云雀", status: 0) if Column.find_by(name: "云雀", keyword: "云雀").nil?
Column.create!(category_id: category_99.id, name: "仪征", en_name: "仪征", keyword: "仪征", status: 0) if Column.find_by(name: "仪征", keyword: "仪征").nil?
Column.create!(category_id: category_99.id, name: "友谊客车", en_name: "友谊客车", keyword: "友谊客车", status: 0) if Column.find_by(name: "友谊客车", keyword: "友谊客车").nil?
Column.create!(category_id: category_99.id, name: "众泰", en_name: "众泰", keyword: "众泰", status: 0) if Column.find_by(name: "众泰", keyword: "众泰").nil?
Column.create!(category_id: category_99.id, name: "中华", en_name: "中华", keyword: "中华", status: 0) if Column.find_by(name: "中华", keyword: "中华").nil?
Column.create!(category_id: category_99.id, name: "知豆", en_name: "知豆", keyword: "知豆", status: 0) if Column.find_by(name: "知豆", keyword: "知豆").nil?
Column.create!(category_id: category_99.id, name: "中兴", en_name: "中兴", keyword: "中兴", status: 0) if Column.find_by(name: "中兴", keyword: "中兴").nil?
Column.create!(category_id: category_99.id, name: "中欧奔驰房车", en_name: "中欧奔驰房车", keyword: "中欧奔驰房车", status: 0) if Column.find_by(name: "中欧奔驰房车", keyword: "中欧奔驰房车").nil?
Column.create!(category_id: category_99.id, name: "浙江卡尔森", en_name: "浙江卡尔森", keyword: "浙江卡尔森", status: 0) if Column.find_by(name: "浙江卡尔森", keyword: "浙江卡尔森").nil?
Column.create!(category_id: category_99.id, name: "重汽王牌", en_name: "重汽王牌", keyword: "重汽王牌", status: 0) if Column.find_by(name: "重汽王牌", keyword: "重汽王牌").nil?
Column.create!(category_id: category_99.id, name: "之诺", en_name: "之诺", keyword: "之诺", status: 0) if Column.find_by(name: "之诺", keyword: "之诺").nil?
Column.create!(category_id: category_99.id, name: "中通客车", en_name: "中通客车", keyword: "中通客车", status: 0) if Column.find_by(name: "中通客车", keyword: "中通客车").nil?
Column.create!(category_id: category_99.id, name: "中顺", en_name: "中顺", keyword: "中顺", status: 0) if Column.find_by(name: "中顺", keyword: "中顺").nil?
Column.create!(category_id: category_99.id, name: "中客华北", en_name: "中客华北", keyword: "中客华北", status: 0) if Column.find_by(name: "中客华北", keyword: "中客华北").nil?
Column.create!(category_id: category_99.id, name: "奥迪A3", en_name: "A3", keyword: "奥迪A3|audi A3", status: 0) if Column.find_by(name: "奥迪A3", keyword: "奥迪A3|audi A3").nil?
Column.create!(category_id: category_99.id, name: "奥迪A4L", en_name: "A4L", keyword: "奥迪A4L|audi A4L", status: 0) if Column.find_by(name: "奥迪A4L", keyword: "奥迪A4L|audi A4L").nil?
Column.create!(category_id: category_99.id, name: "奥迪A6L", en_name: "A6L", keyword: "奥迪A6L|audi A6L", status: 0) if Column.find_by(name: "奥迪A6L", keyword: "奥迪A6L|audi A6L").nil?
Column.create!(category_id: category_99.id, name: "奥迪Q3", en_name: "Q3", keyword: "奥迪Q3|audi Q3", status: 0) if Column.find_by(name: "奥迪Q3", keyword: "奥迪Q3|audi Q3").nil?
Column.create!(category_id: category_99.id, name: "奥迪Q5", en_name: "Q5", keyword: "奥迪Q5|audi Q5", status: 0) if Column.find_by(name: "奥迪Q5", keyword: "奥迪Q5|audi Q5").nil?
Column.create!(category_id: category_99.id, name: "奥迪A4", en_name: "A4", keyword: "奥迪A4|audi A4", status: 0) if Column.find_by(name: "奥迪A4", keyword: "奥迪A4|audi A4").nil?
Column.create!(category_id: category_99.id, name: "奥迪100", en_name: "100", keyword: "奥迪100|audi 100", status: 0) if Column.find_by(name: "奥迪100", keyword: "奥迪100|audi 100").nil?
Column.create!(category_id: category_99.id, name: "奥迪200", en_name: "200", keyword: "奥迪200|audi 200", status: 0) if Column.find_by(name: "奥迪200", keyword: "奥迪200|audi 200").nil?
Column.create!(category_id: category_99.id, name: "奥迪A1", en_name: "A1", keyword: "奥迪A1|audi A1", status: 0) if Column.find_by(name: "奥迪A1", keyword: "奥迪A1|audi A1").nil?
Column.create!(category_id: category_99.id, name: "奥迪A3", en_name: "A3", keyword: "奥迪A3|audi A3", status: 0) if Column.find_by(name: "奥迪A3", keyword: "奥迪A3|audi A3").nil?
Column.create!(category_id: category_99.id, name: "A3 e-tron", en_name: "A3 e-tron", keyword: "奥迪A3 e-tron|audi A3 e-tron", status: 0) if Column.find_by(name: "A3 e-tron", keyword: "奥迪A3 e-tron|audi A3 e-tron").nil?
Column.create!(category_id: category_99.id, name: "奥迪A4", en_name: "A4", keyword: "奥迪A4|audi A4", status: 0) if Column.find_by(name: "奥迪A4", keyword: "奥迪A4|audi A4").nil?
Column.create!(category_id: category_99.id, name: "奥迪A4 allroad", en_name: "A4 allroad", keyword: "奥迪A4 allroad|audi A4 allroad", status: 0) if Column.find_by(name: "奥迪A4 allroad", keyword: "奥迪A4 allroad|audi A4 allroad").nil?
Column.create!(category_id: category_99.id, name: "奥迪A5", en_name: "A5", keyword: "奥迪A5|audi A5", status: 0) if Column.find_by(name: "奥迪A5", keyword: "奥迪A5|audi A5").nil?
Column.create!(category_id: category_99.id, name: "奥迪A6", en_name: "A6", keyword: "奥迪A6|audi A6", status: 0) if Column.find_by(name: "奥迪A6", keyword: "奥迪A6|audi A6").nil?
Column.create!(category_id: category_99.id, name: "奥迪A6 allroad", en_name: "A6 allroad", keyword: "奥迪A6 allroad|audi A6 allroad", status: 0) if Column.find_by(name: "奥迪A6 allroad", keyword: "奥迪A6 allroad|audi A6 allroad").nil?
Column.create!(category_id: category_99.id, name: "奥迪A7", en_name: "A7", keyword: "奥迪A7|audi A7", status: 0) if Column.find_by(name: "奥迪A7", keyword: "奥迪A7|audi A7").nil?
Column.create!(category_id: category_99.id, name: "奥迪A8L", en_name: "A8L", keyword: "奥迪A8L|audi A8L", status: 0) if Column.find_by(name: "奥迪A8L", keyword: "奥迪A8L|audi A8L").nil?
Column.create!(category_id: category_99.id, name: "奥迪S8", en_name: "S8", keyword: "奥迪S8|audi S8", status: 0) if Column.find_by(name: "奥迪S8", keyword: "奥迪S8|audi S8").nil?
Column.create!(category_id: category_99.id, name: "奥迪Q3", en_name: "Q3", keyword: "奥迪Q3|audi Q3", status: 0) if Column.find_by(name: "奥迪Q3", keyword: "奥迪Q3|audi Q3").nil?
Column.create!(category_id: category_99.id, name: "奥迪Q5", en_name: "Q5", keyword: "奥迪Q5|audi Q5", status: 0) if Column.find_by(name: "奥迪Q5", keyword: "奥迪Q5|audi Q5").nil?
Column.create!(category_id: category_99.id, name: "奥迪Q7", en_name: "Q7", keyword: "奥迪Q7|audi Q7", status: 0) if Column.find_by(name: "奥迪Q7", keyword: "奥迪Q7|audi Q7").nil?
Column.create!(category_id: category_99.id, name: "奥迪R8", en_name: "R8", keyword: "奥迪R8|audi R8", status: 0) if Column.find_by(name: "奥迪R8", keyword: "奥迪R8|audi R8").nil?
Column.create!(category_id: category_99.id, name: "奥迪S3", en_name: "S3", keyword: "奥迪S3|audi S3", status: 0) if Column.find_by(name: "奥迪S3", keyword: "奥迪S3|audi S3").nil?
Column.create!(category_id: category_99.id, name: "奥迪S5", en_name: "S5", keyword: "奥迪S5|audi S5", status: 0) if Column.find_by(name: "奥迪S5", keyword: "奥迪S5|audi S5").nil?
Column.create!(category_id: category_99.id, name: "奥迪S6", en_name: "S6", keyword: "奥迪S6|audi S6", status: 0) if Column.find_by(name: "奥迪S6", keyword: "奥迪S6|audi S6").nil?
Column.create!(category_id: category_99.id, name: "奥迪S7", en_name: "S7", keyword: "奥迪S7|audi S7", status: 0) if Column.find_by(name: "奥迪S7", keyword: "奥迪S7|audi S7").nil?
Column.create!(category_id: category_99.id, name: "奥迪SQ5", en_name: "SQ5", keyword: "奥迪SQ5|audi SQ5", status: 0) if Column.find_by(name: "奥迪SQ5", keyword: "奥迪SQ5|audi SQ5").nil?
Column.create!(category_id: category_99.id, name: "奥迪TT", en_name: "TT", keyword: "奥迪TT|audi TT", status: 0) if Column.find_by(name: "奥迪TT", keyword: "奥迪TT|audi TT").nil?
Column.create!(category_id: category_99.id, name: "奥迪Q1", en_name: "Q1", keyword: "奥迪Q1|audi Q1", status: 0) if Column.find_by(name: "奥迪Q1", keyword: "奥迪Q1|audi Q1").nil?
Column.create!(category_id: category_99.id, name: "奥迪Q2", en_name: "Q2", keyword: "奥迪Q2|audi Q2", status: 0) if Column.find_by(name: "奥迪Q2", keyword: "奥迪Q2|audi Q2").nil?
Column.create!(category_id: category_99.id, name: "奥迪Q8", en_name: "Q8", keyword: "奥迪Q8|audi Q8", status: 0) if Column.find_by(name: "奥迪Q8", keyword: "奥迪Q8|audi Q8").nil?
Column.create!(category_id: category_99.id, name: "奥迪S1", en_name: "S1", keyword: "奥迪S1|audi S1", status: 0) if Column.find_by(name: "奥迪S1", keyword: "奥迪S1|audi S1").nil?
Column.create!(category_id: category_99.id, name: "奥迪S4", en_name: "S4", keyword: "奥迪S4|audi S4", status: 0) if Column.find_by(name: "奥迪S4", keyword: "奥迪S4|audi S4").nil?
Column.create!(category_id: category_99.id, name: "奥迪RS5", en_name: "RS5", keyword: "奥迪RS5|audi RS5", status: 0) if Column.find_by(name: "奥迪RS5", keyword: "奥迪RS5|audi RS5").nil?
Column.create!(category_id: category_99.id, name: "奥迪RS7", en_name: "RS7", keyword: "奥迪RS7|audi RS7", status: 0) if Column.find_by(name: "奥迪RS7", keyword: "奥迪RS7|audi RS7").nil?
Column.create!(category_id: category_99.id, name: "奥迪RS6", en_name: "RS6", keyword: "奥迪RS6|audi RS6", status: 0) if Column.find_by(name: "奥迪RS6", keyword: "奥迪RS6|audi RS6").nil?
Column.create!(category_id: category_99.id, name: "阿斯顿·马丁DB9", en_name: "DB9", keyword: "阿斯顿·马丁DB9|aston martin DB9", status: 0) if Column.find_by(name: "阿斯顿·马丁DB9", keyword: "阿斯顿·马丁DB9|aston martin DB9").nil?
Column.create!(category_id: category_99.id, name: "阿斯顿·马丁DBS", en_name: "DBS", keyword: "阿斯顿·马丁DBS|aston martin DBS", status: 0) if Column.find_by(name: "阿斯顿·马丁DBS", keyword: "阿斯顿·马丁DBS|aston martin DBS").nil?
Column.create!(category_id: category_99.id, name: "阿斯顿·马丁Lagonda", en_name: "Lagonda", keyword: "阿斯顿·马丁Lagonda|aston martin Lagonda", status: 0) if Column.find_by(name: "阿斯顿·马丁Lagonda", keyword: "阿斯顿·马丁Lagonda|aston martin Lagonda").nil?
Column.create!(category_id: category_99.id, name: "阿斯顿·马丁Rapide", en_name: "Rapide", keyword: "阿斯顿·马丁Rapide|aston martin Rapide", status: 0) if Column.find_by(name: "阿斯顿·马丁Rapide", keyword: "阿斯顿·马丁Rapide|aston martin Rapide").nil?
Column.create!(category_id: category_99.id, name: "阿斯顿·马丁V12 Vantage", en_name: "V12 Vantage", keyword: "阿斯顿·马丁V12 Vantage|aston martin V12 Vantage", status: 0) if Column.find_by(name: "阿斯顿·马丁V12 Vantage", keyword: "阿斯顿·马丁V12 Vantage|aston martin V12 Vantage").nil?
Column.create!(category_id: category_99.id, name: "阿斯顿·马丁V8 Vantage", en_name: "V8 Vantage", keyword: "阿斯顿·马丁V8 Vantage|aston martin V8 Vantage", status: 0) if Column.find_by(name: "阿斯顿·马丁V8 Vantage", keyword: "阿斯顿·马丁V8 Vantage|aston martin V8 Vantage").nil?
Column.create!(category_id: category_99.id, name: "阿斯顿·马丁Vanquish", en_name: "Vanquish", keyword: "阿斯顿·马丁Vanquish|aston martin Vanquish", status: 0) if Column.find_by(name: "阿斯顿·马丁Vanquish", keyword: "阿斯顿·马丁Vanquish|aston martin Vanquish").nil?
Column.create!(category_id: category_99.id, name: "阿斯顿·马丁Virage", en_name: "Virage", keyword: "阿斯顿·马丁Virage|aston martin Virage", status: 0) if Column.find_by(name: "阿斯顿·马丁Virage", keyword: "阿斯顿·马丁Virage|aston martin Virage").nil?
Column.create!(category_id: category_99.id, name: "阿斯顿·马丁Zagato", en_name: "Zagato", keyword: "阿斯顿·马丁Zagato|aston martin Zagato", status: 0) if Column.find_by(name: "阿斯顿·马丁Zagato", keyword: "阿斯顿·马丁Zagato|aston martin Zagato").nil?
Column.create!(category_id: category_99.id, name: "阿斯顿·马丁DB7", en_name: "DB7", keyword: "阿斯顿·马丁DB7|aston martin DB7", status: 0) if Column.find_by(name: "阿斯顿·马丁DB7", keyword: "阿斯顿·马丁DB7|aston martin DB7").nil?
Column.create!(category_id: category_99.id, name: "阿斯顿·马丁ONE-77", en_name: "ONE-77", keyword: "阿斯顿·马丁ONE-77|aston martin ONE-77", status: 0) if Column.find_by(name: "阿斯顿·马丁ONE-77", keyword: "阿斯顿·马丁ONE-77|aston martin ONE-77").nil?
Column.create!(category_id: category_99.id, name: "阿尔法·罗密欧4C", en_name: "4C", keyword: "阿尔法·罗密欧4C|alfa romeo 4C", status: 0) if Column.find_by(name: "阿尔法·罗密欧4C", keyword: "阿尔法·罗密欧4C|alfa romeo 4C").nil?
Column.create!(category_id: category_99.id, name: "阿尔法·罗密欧Gtv", en_name: "Gtv", keyword: "阿尔法·罗密欧Gtv|alfa romeo Gtv", status: 0) if Column.find_by(name: "阿尔法·罗密欧Gtv", keyword: "阿尔法·罗密欧Gtv|alfa romeo Gtv").nil?
Column.create!(category_id: category_99.id, name: "阿尔法·罗密欧Giulietta", en_name: "Giulietta", keyword: "阿尔法·罗密欧Giulietta|alfa romeo Giulietta", status: 0) if Column.find_by(name: "阿尔法·罗密欧Giulietta", keyword: "阿尔法·罗密欧Giulietta|alfa romeo Giulietta").nil?
Column.create!(category_id: category_99.id, name: "阿尔法·罗密欧156", en_name: "156", keyword: "阿尔法·罗密欧156|alfa romeo 156", status: 0) if Column.find_by(name: "阿尔法·罗密欧156", keyword: "阿尔法·罗密欧156|alfa romeo 156").nil?
Column.create!(category_id: category_99.id, name: "阿尔法·罗密欧166", en_name: "166", keyword: "阿尔法·罗密欧166|alfa romeo 166", status: 0) if Column.find_by(name: "阿尔法·罗密欧166", keyword: "阿尔法·罗密欧166|alfa romeo 166").nil?
Column.create!(category_id: category_99.id, name: "AC Schnitzer ACS5", en_name: "ACS5", keyword: "AC Schnitzer ACS5|AC Schnitzer ACS5", status: 0) if Column.find_by(name: "AC Schnitzer ACS5", keyword: "AC Schnitzer ACS5|AC Schnitzer ACS5").nil?
Column.create!(category_id: category_99.id, name: "AC Schnitzer ACS6", en_name: "ACS6", keyword: "AC Schnitzer ACS6|AC Schnitzer ACS6", status: 0) if Column.find_by(name: "AC Schnitzer ACS6", keyword: "AC Schnitzer ACS6|AC Schnitzer ACS6").nil?
Column.create!(category_id: category_99.id, name: "AC Schnitzer ACS7", en_name: "ACS7", keyword: "AC Schnitzer ACS7|AC Schnitzer ACS7", status: 0) if Column.find_by(name: "AC Schnitzer ACS7", keyword: "AC Schnitzer ACS7|AC Schnitzer ACS7").nil?
Column.create!(category_id: category_99.id, name: "AC Schnitzer ACS8", en_name: "ACS8", keyword: "AC Schnitzer ACS8|AC Schnitzer ACS8", status: 0) if Column.find_by(name: "AC Schnitzer ACS8", keyword: "AC Schnitzer ACS8|AC Schnitzer ACS8").nil?
Column.create!(category_id: category_99.id, name: "Artega GT", en_name: "Artega GT", keyword: "Artega GT|Artega Artega GT", status: 0) if Column.find_by(name: "Artega GT", keyword: "Artega GT|Artega Artega GT").nil?
Column.create!(category_id: category_99.id, name: "朗杰", en_name: "朗杰", keyword: "奥克斯朗杰|奥克斯 朗杰", status: 0) if Column.find_by(name: "朗杰", keyword: "奥克斯朗杰|奥克斯 朗杰").nil?
Column.create!(category_id: category_99.id, name: "原动力", en_name: "原动力", keyword: "奥克斯原动力|奥克斯 原动力", status: 0) if Column.find_by(name: "原动力", keyword: "奥克斯原动力|奥克斯 原动力").nil?
Column.create!(category_id: category_99.id, name: "艾力绅", en_name: "elysion", keyword: "本田艾力绅|honda elysion", status: 0) if Column.find_by(name: "艾力绅", keyword: "本田艾力绅|honda elysion").nil?
Column.create!(category_id: category_99.id, name: "CR-V", en_name: "CR-V", keyword: "本田CR-V|honda CR-V", status: 0) if Column.find_by(name: "CR-V", keyword: "本田CR-V|honda CR-V").nil?
Column.create!(category_id: category_99.id, name: "哥瑞", en_name: "greiz", keyword: "本田哥瑞|honda greiz", status: 0) if Column.find_by(name: "哥瑞", keyword: "本田哥瑞|honda greiz").nil?
Column.create!(category_id: category_99.id, name: "杰德", en_name: "jade", keyword: "本田杰德|honda jade", status: 0) if Column.find_by(name: "杰德", keyword: "本田杰德|honda jade").nil?
Column.create!(category_id: category_99.id, name: "思铂睿", en_name: "spirior", keyword: "本田思铂睿|honda spirior", status: 0) if Column.find_by(name: "思铂睿", keyword: "本田思铂睿|honda spirior").nil?
Column.create!(category_id: category_99.id, name: "思铭", en_name: "ciimo", keyword: "本田思铭|honda ciimo", status: 0) if Column.find_by(name: "思铭", keyword: "本田思铭|honda ciimo").nil?
Column.create!(category_id: category_99.id, name: "思域", en_name: "civic", keyword: "本田思域|honda civic", status: 0) if Column.find_by(name: "思域", keyword: "本田思域|honda civic").nil?
Column.create!(category_id: category_99.id, name: "XR-V", en_name: "XR-V", keyword: "本田XR-V|honda XR-V", status: 0) if Column.find_by(name: "XR-V", keyword: "本田XR-V|honda XR-V").nil?
Column.create!(category_id: category_99.id, name: "奥德赛", en_name: "odyssey", keyword: "本田奥德赛|honda odyssey", status: 0) if Column.find_by(name: "奥德赛", keyword: "本田奥德赛|honda odyssey").nil?
Column.create!(category_id: category_99.id, name: "缤智", en_name: "vezel", keyword: "本田缤智|honda vezel", status: 0) if Column.find_by(name: "缤智", keyword: "本田缤智|honda vezel").nil?
Column.create!(category_id: category_99.id, name: "飞度", en_name: "fit", keyword: "本田飞度|honda fit", status: 0) if Column.find_by(name: "飞度", keyword: "本田飞度|honda fit").nil?
Column.create!(category_id: category_99.id, name: "锋范", en_name: "CITY", keyword: "本田锋范|honda CITY", status: 0) if Column.find_by(name: "锋范", keyword: "本田锋范|honda CITY").nil?
Column.create!(category_id: category_99.id, name: "锋范经典", en_name: "锋范经典", keyword: "本田锋范经典|honda 锋范经典", status: 0) if Column.find_by(name: "锋范经典", keyword: "本田锋范经典|honda 锋范经典").nil?
Column.create!(category_id: category_99.id, name: "歌诗图", en_name: "crosstour", keyword: "本田歌诗图|honda crosstour", status: 0) if Column.find_by(name: "歌诗图", keyword: "本田歌诗图|honda crosstour").nil?
Column.create!(category_id: category_99.id, name: "凌派", en_name: "crider", keyword: "本田凌派|honda crider", status: 0) if Column.find_by(name: "凌派", keyword: "本田凌派|honda crider").nil?
Column.create!(category_id: category_99.id, name: "雅阁", en_name: "accord", keyword: "本田雅阁|honda accord", status: 0) if Column.find_by(name: "雅阁", keyword: "本田雅阁|honda accord").nil?
Column.create!(category_id: category_99.id, name: "思迪", en_name: "思迪", keyword: "本田思迪|honda 思迪", status: 0) if Column.find_by(name: "思迪", keyword: "本田思迪|honda 思迪").nil?
Column.create!(category_id: category_99.id, name: "CR-Z", en_name: "CR-Z", keyword: "本田CR-Z|honda CR-Z", status: 0) if Column.find_by(name: "CR-Z", keyword: "本田CR-Z|honda CR-Z").nil?
# Column.create!(category_id: category_99.id, name: "飞度", en_name: "飞度", keyword: "本田飞度|honda 飞度", status: 0) if Column.find_by(name: "飞度", keyword: "本田飞度|honda 飞度").nil?
Column.create!(category_id: category_99.id, name: "音赛特", en_name: "insight", keyword: "本田音赛特|honda insight", status: 0) if Column.find_by(name: "音赛特", keyword: "本田音赛特|honda insight").nil?
Column.create!(category_id: category_99.id, name: "本田S660", en_name: "S660", keyword: "本田S660|honda S660", status: 0) if Column.find_by(name: "本田S660", keyword: "本田S660|honda S660").nil?
Column.create!(category_id: category_99.id, name: "本田Pilot", en_name: "Pilot", keyword: "本田Pilot|honda Pilot", status: 0) if Column.find_by(name: "本田Pilot", keyword: "本田Pilot|honda Pilot").nil?
# Column.create!(category_id: category_99.id, name: "奥德赛", en_name: "奥德赛", keyword: "本田奥德赛|honda 奥德赛", status: 0) if Column.find_by(name: "奥德赛", keyword: "本田奥德赛|honda 奥德赛").nil?
Column.create!(category_id: category_99.id, name: "本田阿柯德", en_name: "阿柯德", keyword: "本田阿柯德|honda 阿柯德", status: 0) if Column.find_by(name: "本田阿柯德", keyword: "本田阿柯德|honda 阿柯德").nil?
Column.create!(category_id: category_99.id, name: "时韵", en_name: "时韵", keyword: "本田时韵|honda 时韵", status: 0) if Column.find_by(name: "时韵", keyword: "本田时韵|honda 时韵").nil?
Column.create!(category_id: category_99.id, name: "雅阁", en_name: "雅阁", keyword: "本田雅阁|honda 雅阁", status: 0) if Column.find_by(name: "雅阁", keyword: "本田雅阁|honda 雅阁").nil?
Column.create!(category_id: category_99.id, name: "元素", en_name: "元素", keyword: "本田元素|honda 元素", status: 0) if Column.find_by(name: "元素", keyword: "本田元素|honda 元素").nil?
Column.create!(category_id: category_99.id, name: "本田CR-V", en_name: "CR-V", keyword: "本田CR-V|honda CR-V", status: 0) if Column.find_by(name: "本田CR-V", keyword: "本田CR-V|honda CR-V").nil?
Column.create!(category_id: category_99.id, name: "里程", en_name: "里程", keyword: "本田里程|honda 里程", status: 0) if Column.find_by(name: "里程", keyword: "本田里程|honda 里程").nil?
Column.create!(category_id: category_99.id, name: "思域", en_name: "思域", keyword: "本田思域|honda 思域", status: 0) if Column.find_by(name: "思域", keyword: "本田思域|honda 思域").nil?
Column.create!(category_id: category_99.id, name: "昂科拉", en_name: "昂科拉", keyword: "别克昂科拉|buick 昂科拉", status: 0) if Column.find_by(name: "昂科拉", keyword: "别克昂科拉|buick 昂科拉").nil?
Column.create!(category_id: category_99.id, name: "昂科威", en_name: "envision", keyword: "别克昂科威|buick envision", status: 0) if Column.find_by(name: "昂科威", keyword: "别克昂科威|buick envision").nil?
Column.create!(category_id: category_99.id, name: "别克GL8", en_name: "GL8", keyword: "别克GL8|buick GL8", status: 0) if Column.find_by(name: "别克GL8", keyword: "别克GL8|buick GL8").nil?
Column.create!(category_id: category_99.id, name: "君威", en_name: "Regal", keyword: "别克君威|buick Regal", status: 0) if Column.find_by(name: "君威", keyword: "别克君威|buick Regal").nil?
Column.create!(category_id: category_99.id, name: "君越", en_name: "lacrosse", keyword: "别克君越|buick lacrosse", status: 0) if Column.find_by(name: "君越", keyword: "别克君越|buick lacrosse").nil?
Column.create!(category_id: category_99.id, name: "凯越", en_name: "excelle", keyword: "别克凯越|buick excelle", status: 0) if Column.find_by(name: "凯越", keyword: "别克凯越|buick excelle").nil?
Column.create!(category_id: category_99.id, name: "林荫大道", en_name: "Park Avenue", keyword: "别克林荫大道|buick Park Avenue", status: 0) if Column.find_by(name: "林荫大道", keyword: "别克林荫大道|buick Park Avenue").nil?
Column.create!(category_id: category_99.id, name: "威朗轿跑", en_name: "verano_normal", keyword: "别克威朗轿跑|buick verano_normal", status: 0) if Column.find_by(name: "威朗轿跑", keyword: "别克威朗轿跑|buick verano_normal").nil?
Column.create!(category_id: category_99.id, name: "威朗", en_name: "VERANO", keyword: "别克威朗|buick VERANO", status: 0) if Column.find_by(name: "威朗", keyword: "别克威朗|buick VERANO").nil?
Column.create!(category_id: category_99.id, name: "英朗", en_name: "excelle", keyword: "别克英朗|buick excelle", status: 0) if Column.find_by(name: "英朗", keyword: "别克英朗|buick excelle").nil?
Column.create!(category_id: category_99.id, name: "英朗XT", en_name: "英朗XT", keyword: "别克英朗XT|buick 英朗XT", status: 0) if Column.find_by(name: "英朗XT", keyword: "别克英朗XT|buick 英朗XT").nil?
Column.create!(category_id: category_99.id, name: "别克", en_name: "别克", keyword: "别克|buick 别克", status: 0) if Column.find_by(name: "别克", keyword: "别克|buick 别克").nil?
Column.create!(category_id: category_99.id, name: "凯越HRV", en_name: "excelle-hrv", keyword: "别克凯越HRV|buick excelle-hrv", status: 0) if Column.find_by(name: "凯越HRV", keyword: "别克凯越HRV|buick excelle-hrv").nil?
Column.create!(category_id: category_99.id, name: "凯越旅行车", en_name: "凯越旅行车", keyword: "别克凯越旅行车|buick 凯越旅行车", status: 0) if Column.find_by(name: "凯越旅行车", keyword: "别克凯越旅行车|buick 凯越旅行车").nil?
Column.create!(category_id: category_99.id, name: "荣御", en_name: "荣御", keyword: "别克荣御|buick 荣御", status: 0) if Column.find_by(name: "荣御", keyword: "别克荣御|buick 荣御").nil?
Column.create!(category_id: category_99.id, name: "赛欧", en_name: "sail", keyword: "别克赛欧|buick sail", status: 0) if Column.find_by(name: "赛欧", keyword: "别克赛欧|buick sail").nil?
Column.create!(category_id: category_99.id, name: "昂科雷", en_name: "enclave", keyword: "别克昂科雷|buick enclave", status: 0) if Column.find_by(name: "昂科雷", keyword: "别克昂科雷|buick enclave").nil?
Column.create!(category_id: category_99.id, name: "林荫大道", en_name: "林荫大道", keyword: "别克林荫大道|buick 林荫大道", status: 0) if Column.find_by(name: "林荫大道", keyword: "别克林荫大道|buick 林荫大道").nil?
Column.create!(category_id: category_99.id, name: "世纪", en_name: "世纪", keyword: "别克世纪|buick 世纪", status: 0) if Column.find_by(name: "世纪", keyword: "别克世纪|buick 世纪").nil?
Column.create!(category_id: category_99.id, name: "奔驰C级", en_name: "C class ", keyword: "奔驰C级|mercedes C class ", status: 0) if Column.find_by(name: "奔驰C级", keyword: "奔驰C级|mercedes C class ").nil?
Column.create!(category_id: category_99.id, name: "奔驰E级", en_name: "E class ", keyword: "奔驰E级|mercedes E class ", status: 0) if Column.find_by(name: "奔驰E级", keyword: "奔驰E级|mercedes E class ").nil?
Column.create!(category_id: category_99.id, name: "奔驰GLA级", en_name: "GLA class ", keyword: "奔驰GLA级|mercedes GLA class ", status: 0) if Column.find_by(name: "奔驰GLA级", keyword: "奔驰GLA级|mercedes GLA class ").nil?
Column.create!(category_id: category_99.id, name: "奔驰GLC级", en_name: "GLC class ", keyword: "奔驰GLC级|mercedes GLC class ", status: 0) if Column.find_by(name: "奔驰GLC级", keyword: "奔驰GLC级|mercedes GLC class ").nil?
Column.create!(category_id: category_99.id, name: "奔驰GLK级", en_name: "GLK class ", keyword: "奔驰GLK级|mercedes GLK class ", status: 0) if Column.find_by(name: "奔驰GLK级", keyword: "奔驰GLK级|mercedes GLK class ").nil?
Column.create!(category_id: category_99.id, name: "威霆", en_name: "vito", keyword: "奔驰威霆|mercedes vito", status: 0) if Column.find_by(name: "威霆", keyword: "奔驰威霆|mercedes vito").nil?
Column.create!(category_id: category_99.id, name: "凌特", en_name: "Sprinter", keyword: "奔驰凌特|mercedes Sprinter", status: 0) if Column.find_by(name: "凌特", keyword: "奔驰凌特|mercedes Sprinter").nil?
Column.create!(category_id: category_99.id, name: "奔驰V级", en_name: "V class ", keyword: "奔驰V级|mercedes V class ", status: 0) if Column.find_by(name: "奔驰V级", keyword: "奔驰V级|mercedes V class ").nil?
Column.create!(category_id: category_99.id, name: "唯雅诺", en_name: "Viano", keyword: "奔驰唯雅诺|mercedes Viano", status: 0) if Column.find_by(name: "唯雅诺", keyword: "奔驰唯雅诺|mercedes Viano").nil?
Column.create!(category_id: category_99.id, name: "奔驰A级", en_name: "A class ", keyword: "奔驰A级|mercedes A class ", status: 0) if Column.find_by(name: "奔驰A级", keyword: "奔驰A级|mercedes A class ").nil?
Column.create!(category_id: category_99.id, name: "奔驰B级", en_name: "B class ", keyword: "奔驰B级|mercedes B class ", status: 0) if Column.find_by(name: "奔驰B级", keyword: "奔驰B级|mercedes B class ").nil?
Column.create!(category_id: category_99.id, name: "奔驰C级", en_name: "C class ", keyword: "奔驰C级|mercedes C class ", status: 0) if Column.find_by(name: "奔驰C级", keyword: "奔驰C级|mercedes C class ").nil?
Column.create!(category_id: category_99.id, name: "奔驰C级旅行轿车", en_name: "C class coupe", keyword: "奔驰C级旅行轿车|mercedes C class coupe", status: 0) if Column.find_by(name: "奔驰C级旅行轿车", keyword: "奔驰C级旅行轿车|mercedes C class coupe").nil?
Column.create!(category_id: category_99.id, name: "奔驰CLA级", en_name: "CLA class ", keyword: "奔驰CLA级|mercedes CLA class ", status: 0) if Column.find_by(name: "奔驰CLA级", keyword: "奔驰CLA级|mercedes CLA class ").nil?
Column.create!(category_id: category_99.id, name: "奔驰CLS级", en_name: "CLS class ", keyword: "奔驰CLS级|mercedes CLS class ", status: 0) if Column.find_by(name: "奔驰CLS级", keyword: "奔驰CLS级|mercedes CLS class ").nil?
Column.create!(category_id: category_99.id, name: "奔驰E级", en_name: "E class ", keyword: "奔驰E级|mercedes E class ", status: 0) if Column.find_by(name: "奔驰E级", keyword: "奔驰E级|mercedes E class ").nil?
Column.create!(category_id: category_99.id, name: "E级双门轿跑车", en_name: "E class coupe", keyword: "奔驰E级双门轿跑车|mercedes E class coupe", status: 0) if Column.find_by(name: "E级双门轿跑车", keyword: "奔驰E级双门轿跑车|mercedes E class coupe").nil?
Column.create!(category_id: category_99.id, name: "奔驰G级", en_name: "G class ", keyword: "奔驰G级|mercedes G class ", status: 0) if Column.find_by(name: "奔驰G级", keyword: "奔驰G级|mercedes G class ").nil?
Column.create!(category_id: category_99.id, name: "奔驰GLA级", en_name: "GLA class ", keyword: "奔驰GLA级|mercedes GLA class ", status: 0) if Column.find_by(name: "奔驰GLA级", keyword: "奔驰GLA级|mercedes GLA class ").nil?
Column.create!(category_id: category_99.id, name: "奔驰GLE级", en_name: "GLE class ", keyword: "奔驰GLE级|mercedes GLE class ", status: 0) if Column.find_by(name: "奔驰GLE级", keyword: "奔驰GLE级|mercedes GLE class ").nil?
Column.create!(category_id: category_99.id, name: "奔驰GLE级运动SUV", en_name: "GLE class", keyword: "奔驰GLE级运动SUV|mercedes GLE class", status: 0) if Column.find_by(name: "奔驰GLE级运动SUV", keyword: "奔驰GLE级运动SUV|mercedes GLE class").nil?
Column.create!(category_id: category_99.id, name: "奔驰GL级", en_name: "GL class ", keyword: "奔驰GL级|mercedes GL class ", status: 0) if Column.find_by(name: "奔驰GL级", keyword: "奔驰GL级|mercedes GL class ").nil?
Column.create!(category_id: category_99.id, name: "奔驰GLK级", en_name: "GLK class ", keyword: "奔驰GLK级|mercedes GLK class ", status: 0) if Column.find_by(name: "奔驰GLK级", keyword: "奔驰GLK级|mercedes GLK class ").nil?
Column.create!(category_id: category_99.id, name: "奔驰GLS级", en_name: "GLS class ", keyword: "奔驰GLS级|mercedes GLS class ", status: 0) if Column.find_by(name: "奔驰GLS级", keyword: "奔驰GLS级|mercedes GLS class ").nil?
Column.create!(category_id: category_99.id, name: "奔驰ML级", en_name: "ML class ", keyword: "奔驰ML级|mercedes ML class ", status: 0) if Column.find_by(name: "奔驰ML级", keyword: "奔驰ML级|mercedes ML class ").nil?
Column.create!(category_id: category_99.id, name: "奔驰R级", en_name: "R class ", keyword: "奔驰R级|mercedes R class ", status: 0) if Column.find_by(name: "奔驰R级", keyword: "奔驰R级|mercedes R class ").nil?
Column.create!(category_id: category_99.id, name: "凌特", en_name: "凌特", keyword: "奔驰凌特|mercedes 凌特", status: 0) if Column.find_by(name: "凌特", keyword: "奔驰凌特|mercedes 凌特").nil?
Column.create!(category_id: category_99.id, name: "奔驰S级", en_name: "S class ", keyword: "奔驰S级|mercedes S class ", status: 0) if Column.find_by(name: "奔驰S级", keyword: "奔驰S级|mercedes S class ").nil?
Column.create!(category_id: category_99.id, name: "奔驰SL级", en_name: "SL class ", keyword: "奔驰SL级|mercedes SL class ", status: 0) if Column.find_by(name: "奔驰SL级", keyword: "奔驰SL级|mercedes SL class ").nil?
Column.create!(category_id: category_99.id, name: "奔驰SLK级", en_name: "SLK class ", keyword: "奔驰SLK级|mercedes SLK class ", status: 0) if Column.find_by(name: "奔驰SLK级", keyword: "奔驰SLK级|mercedes SLK class ").nil?
Column.create!(category_id: category_99.id, name: "威霆", en_name: "威霆", keyword: "奔驰威霆|mercedes 威霆", status: 0) if Column.find_by(name: "威霆", keyword: "奔驰威霆|mercedes 威霆").nil?
Column.create!(category_id: category_99.id, name: "唯雅诺", en_name: "唯雅诺", keyword: "奔驰唯雅诺|mercedes 唯雅诺", status: 0) if Column.find_by(name: "唯雅诺", keyword: "奔驰唯雅诺|mercedes 唯雅诺").nil?
Column.create!(category_id: category_99.id, name: "奔驰GLC级", en_name: "GLC class ", keyword: "奔驰GLC级|mercedes GLC class ", status: 0) if Column.find_by(name: "奔驰GLC级", keyword: "奔驰GLC级|mercedes GLC class ").nil?
Column.create!(category_id: category_99.id, name: "奔驰CL级", en_name: "CL class ", keyword: "奔驰CL级|mercedes CL class ", status: 0) if Column.find_by(name: "奔驰CL级", keyword: "奔驰CL级|mercedes CL class ").nil?
Column.create!(category_id: category_99.id, name: "奔驰SEL", en_name: "奔驰SEL", keyword: "奔驰SEL|mercedes 奔驰SEL", status: 0) if Column.find_by(name: "奔驰SEL", keyword: "奔驰SEL|mercedes 奔驰SEL").nil?
Column.create!(category_id: category_99.id, name: "奔驰VITO", en_name: "VITO", keyword: "奔驰VITO|mercedes VITO", status: 0) if Column.find_by(name: "奔驰VITO", keyword: "奔驰VITO|mercedes VITO").nil?
Column.create!(category_id: category_99.id, name: "奔驰CLK级", en_name: "CLK", keyword: "奔驰CLK级|mercedes CLK", status: 0) if Column.find_by(name: "奔驰CLK级", keyword: "奔驰CLK级|mercedes CLK").nil?
Column.create!(category_id: category_99.id, name: "马可波罗", en_name: "马可波罗", keyword: "奔驰马可波罗|mercedes 马可波罗", status: 0) if Column.find_by(name: "马可波罗", keyword: "奔驰马可波罗|mercedes 马可波罗").nil?
Column.create!(category_id: category_99.id, name: "奔驰SLR级", en_name: "SLR", keyword: "奔驰SLR级|mercedes SLR", status: 0) if Column.find_by(name: "奔驰SLR级", keyword: "奔驰SLR级|mercedes SLR").nil?
Column.create!(category_id: category_99.id, name: "A级AMG", en_name: "A class AMG", keyword: "奔驰A级AMG|mercedes A class AMG", status: 0) if Column.find_by(name: "A级AMG", keyword: "奔驰A级AMG|mercedes A class AMG").nil?
Column.create!(category_id: category_99.id, name: "AMG GT", en_name: "AMG GT", keyword: "奔驰AMG GT|mercedes AMG GT", status: 0) if Column.find_by(name: "AMG GT", keyword: "奔驰AMG GT|mercedes AMG GT").nil?
Column.create!(category_id: category_99.id, name: "C级AMG", en_name: "C class AMG", keyword: "奔驰C级AMG|mercedes C class AMG", status: 0) if Column.find_by(name: "C级AMG", keyword: "奔驰C级AMG|mercedes C class AMG").nil?
Column.create!(category_id: category_99.id, name: "CLA AMG", en_name: "CLA AMG", keyword: "奔驰CLA AMG|mercedes CLA AMG", status: 0) if Column.find_by(name: "CLA AMG", keyword: "奔驰CLA AMG|mercedes CLA AMG").nil?
Column.create!(category_id: category_99.id, name: "CLS AMG", en_name: "CLS AMG", keyword: "奔驰CLS AMG|mercedes CLS AMG", status: 0) if Column.find_by(name: "CLS AMG", keyword: "奔驰CLS AMG|mercedes CLS AMG").nil?
Column.create!(category_id: category_99.id, name: "G级AMG", en_name: "G class AMG", keyword: "奔驰G级AMG|mercedes G class AMG", status: 0) if Column.find_by(name: "G级AMG", keyword: "奔驰G级AMG|mercedes G class AMG").nil?
Column.create!(category_id: category_99.id, name: "GLA AMG", en_name: "GLA AMG", keyword: "奔驰GLA AMG|mercedes GLA AMG", status: 0) if Column.find_by(name: "GLA AMG", keyword: "奔驰GLA AMG|mercedes GLA AMG").nil?
Column.create!(category_id: category_99.id, name: "GLE AMG", en_name: "GLE AMG", keyword: "奔驰GLE AMG|mercedes GLE AMG", status: 0) if Column.find_by(name: "GLE AMG", keyword: "奔驰GLE AMG|mercedes GLE AMG").nil?
Column.create!(category_id: category_99.id, name: "奔驰GLE级AMG运动SUV", en_name: "GLE class AMG", keyword: "奔驰GLE级AMG运动SUV|mercedes GLE class AMG", status: 0) if Column.find_by(name: "奔驰GLE级AMG运动SUV", keyword: "奔驰GLE级AMG运动SUV|mercedes GLE class AMG").nil?
Column.create!(category_id: category_99.id, name: "GL AMG", en_name: "GL AMG", keyword: "奔驰GL AMG|mercedes GL AMG", status: 0) if Column.find_by(name: "GL AMG", keyword: "奔驰GL AMG|mercedes GL AMG").nil?
Column.create!(category_id: category_99.id, name: "GLS AMG", en_name: "GLS AMG", keyword: "奔驰GLS AMG|mercedes GLS AMG", status: 0) if Column.find_by(name: "GLS AMG", keyword: "奔驰GLS AMG|mercedes GLS AMG").nil?
Column.create!(category_id: category_99.id, name: "M级AMG", en_name: "M class AMG", keyword: "奔驰M级AMG|mercedes M class AMG", status: 0) if Column.find_by(name: "M级AMG", keyword: "奔驰M级AMG|mercedes M class AMG").nil?
Column.create!(category_id: category_99.id, name: "S级AMG", en_name: "S class AMG", keyword: "奔驰S级AMG|mercedes S class AMG", status: 0) if Column.find_by(name: "S级AMG", keyword: "奔驰S级AMG|mercedes S class AMG").nil?
Column.create!(category_id: category_99.id, name: "SL AMG", en_name: "SL AMG", keyword: "奔驰SL AMG|mercedes SL AMG", status: 0) if Column.find_by(name: "SL AMG", keyword: "奔驰SL AMG|mercedes SL AMG").nil?
Column.create!(category_id: category_99.id, name: "SLK AMG", en_name: "SLK AMG", keyword: "奔驰SLK AMG|mercedes SLK AMG", status: 0) if Column.find_by(name: "SLK AMG", keyword: "奔驰SLK AMG|mercedes SLK AMG").nil?
Column.create!(category_id: category_99.id, name: "SLS AMG", en_name: "SLS AMG", keyword: "奔驰SLS AMG|mercedes SLS AMG", status: 0) if Column.find_by(name: "SLS AMG", keyword: "奔驰SLS AMG|mercedes SLS AMG").nil?
Column.create!(category_id: category_99.id, name: "GLC AMG", en_name: "GLC AMG", keyword: "奔驰GLC AMG|mercedes GLC AMG", status: 0) if Column.find_by(name: "GLC AMG", keyword: "奔驰GLC AMG|mercedes GLC AMG").nil?
Column.create!(category_id: category_99.id, name: "E级AMG", en_name: "E class AMG", keyword: "奔驰E级AMG|mercedes E class AMG", status: 0) if Column.find_by(name: "E级AMG", keyword: "奔驰E级AMG|mercedes E class AMG").nil?
Column.create!(category_id: category_99.id, name: "迈巴赫S级", en_name: "mayback s class", keyword: "奔驰迈巴赫S级|mercedes mayback s class", status: 0) if Column.find_by(name: "迈巴赫S级", keyword: "奔驰迈巴赫S级|mercedes mayback s class").nil?
Column.create!(category_id: category_99.id, name: "宝马2系旅行车", en_name: "2 series 旅行车", keyword: "宝马2系旅行车|bmw 2 series 旅行车", status: 0) if Column.find_by(name: "宝马2系旅行车", keyword: "宝马2系旅行车|bmw 2 series 旅行车").nil?
Column.create!(category_id: category_99.id, name: "宝马3系", en_name: "3 series", keyword: "宝马3系|bmw 3 series", status: 0) if Column.find_by(name: "宝马3系", keyword: "宝马3系|bmw 3 series").nil?
Column.create!(category_id: category_99.id, name: "宝马5系", en_name: "5 series", keyword: "宝马5系|bmw 5 series", status: 0) if Column.find_by(name: "宝马5系", keyword: "宝马5系|bmw 5 series").nil?
Column.create!(category_id: category_99.id, name: "宝马X1", en_name: "X1", keyword: "宝马X1|bmw X1", status: 0) if Column.find_by(name: "宝马X1", keyword: "宝马X1|bmw X1").nil?
Column.create!(category_id: category_99.id, name: "宝马1系", en_name: "1 series", keyword: "宝马1系|bmw 1 series", status: 0) if Column.find_by(name: "宝马1系", keyword: "宝马1系|bmw 1 series").nil?
Column.create!(category_id: category_99.id, name: "宝马2系", en_name: "2 series", keyword: "宝马2系|bmw 2 series", status: 0) if Column.find_by(name: "宝马2系", keyword: "宝马2系|bmw 2 series").nil?
Column.create!(category_id: category_99.id, name: "宝马2系多功能旅行车", en_name: "2 Series Gran Tourer", keyword: "宝马2系多功能旅行车|bmw 2 Series Gran Tourer", status: 0) if Column.find_by(name: "宝马2系多功能旅行车", keyword: "宝马2系多功能旅行车|bmw 2 Series Gran Tourer").nil?
Column.create!(category_id: category_99.id, name: "宝马2系运动旅行车", en_name: "2 Series Active Tourer", keyword: "宝马2系运动旅行车|bmw 2 Series Active Tourer", status: 0) if Column.find_by(name: "宝马2系运动旅行车", keyword: "宝马2系运动旅行车|bmw 2 Series Active Tourer").nil?
Column.create!(category_id: category_99.id, name: "宝马3系", en_name: "3 series", keyword: "宝马3系|bmw 3 series", status: 0) if Column.find_by(name: "宝马3系", keyword: "宝马3系|bmw 3 series").nil?
Column.create!(category_id: category_99.id, name: "宝马3系GT", en_name: "3 series GT", keyword: "宝马3系GT|bmw 3 series GT", status: 0) if Column.find_by(name: "宝马3系GT", keyword: "宝马3系GT|bmw 3 series GT").nil?
Column.create!(category_id: category_99.id, name: "宝马3系旅行轿车", en_name: "3 series 旅行轿车", keyword: "宝马3系旅行轿车|bmw 3 series 旅行轿车", status: 0) if Column.find_by(name: "宝马3系旅行轿车", keyword: "宝马3系旅行轿车|bmw 3 series 旅行轿车").nil?
Column.create!(category_id: category_99.id, name: "宝马4系", en_name: "4 series", keyword: "宝马4系|bmw 4 series", status: 0) if Column.find_by(name: "宝马4系", keyword: "宝马4系|bmw 4 series").nil?
Column.create!(category_id: category_99.id, name: "宝马5系", en_name: "5 series", keyword: "宝马5系|bmw 5 series", status: 0) if Column.find_by(name: "宝马5系", keyword: "宝马5系|bmw 5 series").nil?
Column.create!(category_id: category_99.id, name: "宝马5系GT", en_name: "5 series GT", keyword: "宝马5系GT|bmw 5 series GT", status: 0) if Column.find_by(name: "宝马5系GT", keyword: "宝马5系GT|bmw 5 series GT").nil?
Column.create!(category_id: category_99.id, name: "宝马5系旅行轿车", en_name: "5 series 旅行轿车", keyword: "宝马5系旅行轿车|bmw 5 series 旅行轿车", status: 0) if Column.find_by(name: "宝马5系旅行轿车", keyword: "宝马5系旅行轿车|bmw 5 series 旅行轿车").nil?
Column.create!(category_id: category_99.id, name: "宝马6系", en_name: "6 series", keyword: "宝马6系|bmw 6 series", status: 0) if Column.find_by(name: "宝马6系", keyword: "宝马6系|bmw 6 series").nil?
Column.create!(category_id: category_99.id, name: "宝马7系", en_name: "7 series", keyword: "宝马7系|bmw 7 series", status: 0) if Column.find_by(name: "宝马7系", keyword: "宝马7系|bmw 7 series").nil?
Column.create!(category_id: category_99.id, name: "宝马i3", en_name: "i3", keyword: "宝马i3|bmw i3", status: 0) if Column.find_by(name: "宝马i3", keyword: "宝马i3|bmw i3").nil?
Column.create!(category_id: category_99.id, name: "宝马i8", en_name: "i8", keyword: "宝马i8|bmw i8", status: 0) if Column.find_by(name: "宝马i8", keyword: "宝马i8|bmw i8").nil?
Column.create!(category_id: category_99.id, name: "宝马X3", en_name: "X3", keyword: "宝马X3|bmw X3", status: 0) if Column.find_by(name: "宝马X3", keyword: "宝马X3|bmw X3").nil?
Column.create!(category_id: category_99.id, name: "宝马X4", en_name: "X4", keyword: "宝马X4|bmw X4", status: 0) if Column.find_by(name: "宝马X4", keyword: "宝马X4|bmw X4").nil?
Column.create!(category_id: category_99.id, name: "宝马X5", en_name: "X5", keyword: "宝马X5|bmw X5", status: 0) if Column.find_by(name: "宝马X5", keyword: "宝马X5|bmw X5").nil?
Column.create!(category_id: category_99.id, name: "宝马X6", en_name: "X6", keyword: "宝马X6|bmw X6", status: 0) if Column.find_by(name: "宝马X6", keyword: "宝马X6|bmw X6").nil?
Column.create!(category_id: category_99.id, name: "宝马Z4", en_name: "Z4", keyword: "宝马Z4|bmw Z4", status: 0) if Column.find_by(name: "宝马Z4", keyword: "宝马Z4|bmw Z4").nil?
Column.create!(category_id: category_99.id, name: "宝马X1", en_name: "X1", keyword: "宝马X1|bmw X1", status: 0) if Column.find_by(name: "宝马X1", keyword: "宝马X1|bmw X1").nil?
Column.create!(category_id: category_99.id, name: "宝马Z3", en_name: "Z3", keyword: "宝马Z3|bmw Z3", status: 0) if Column.find_by(name: "宝马Z3", keyword: "宝马Z3|bmw Z3").nil?
Column.create!(category_id: category_99.id, name: "宝马Z8", en_name: "Z8", keyword: "宝马Z8|bmw Z8", status: 0) if Column.find_by(name: "宝马Z8", keyword: "宝马Z8|bmw Z8").nil?
Column.create!(category_id: category_99.id, name: "宝马1系M", en_name: "1 series M", keyword: "宝马1系M|bmw 1 series M", status: 0) if Column.find_by(name: "宝马1系M", keyword: "宝马1系M|bmw 1 series M").nil?
Column.create!(category_id: category_99.id, name: "宝马M3", en_name: "M3", keyword: "宝马M3|bmw M3", status: 0) if Column.find_by(name: "宝马M3", keyword: "宝马M3|bmw M3").nil?
Column.create!(category_id: category_99.id, name: "宝马M4", en_name: "M4", keyword: "宝马M4|bmw M4", status: 0) if Column.find_by(name: "宝马M4", keyword: "宝马M4|bmw M4").nil?
Column.create!(category_id: category_99.id, name: "宝马M5", en_name: "M5", keyword: "宝马M5|bmw M5", status: 0) if Column.find_by(name: "宝马M5", keyword: "宝马M5|bmw M5").nil?
Column.create!(category_id: category_99.id, name: "宝马M6", en_name: "M6", keyword: "宝马M6|bmw M6", status: 0) if Column.find_by(name: "宝马M6", keyword: "宝马M6|bmw M6").nil?
Column.create!(category_id: category_99.id, name: "宝马X5 M", en_name: "X5 M", keyword: "宝马X5 M|bmw X5 M", status: 0) if Column.find_by(name: "宝马X5 M", keyword: "宝马X5 M|bmw X5 M").nil?
Column.create!(category_id: category_99.id, name: "宝马X6 M", en_name: "X6 M", keyword: "宝马X6 M|bmw X6 M", status: 0) if Column.find_by(name: "宝马X6 M", keyword: "宝马X6 M|bmw X6 M").nil?
Column.create!(category_id: category_99.id, name: "宝马M2", en_name: "M2", keyword: "宝马M2|bmw M2", status: 0) if Column.find_by(name: "宝马M2", keyword: "宝马M2|bmw M2").nil?
Column.create!(category_id: category_99.id, name: "比亚迪e5", en_name: "e5", keyword: "比亚迪e5|比亚迪 e5", status: 0) if Column.find_by(name: "比亚迪e5", keyword: "比亚迪e5|比亚迪 e5").nil?
Column.create!(category_id: category_99.id, name: "比亚迪e6", en_name: "e6", keyword: "比亚迪e6|比亚迪 e6", status: 0) if Column.find_by(name: "比亚迪e6", keyword: "比亚迪e6|比亚迪 e6").nil?
Column.create!(category_id: category_99.id, name: "比亚迪F0", en_name: "F0", keyword: "比亚迪F0|比亚迪 F0", status: 0) if Column.find_by(name: "比亚迪F0", keyword: "比亚迪F0|比亚迪 F0").nil?
Column.create!(category_id: category_99.id, name: "比亚迪F3", en_name: "F3", keyword: "比亚迪F3|比亚迪 F3", status: 0) if Column.find_by(name: "比亚迪F3", keyword: "比亚迪F3|比亚迪 F3").nil?
Column.create!(category_id: category_99.id, name: "比亚迪F3R", en_name: "F3R", keyword: "比亚迪F3R|比亚迪 F3R", status: 0) if Column.find_by(name: "比亚迪F3R", keyword: "比亚迪F3R|比亚迪 F3R").nil?
Column.create!(category_id: category_99.id, name: "比亚迪G3", en_name: "G3", keyword: "比亚迪G3|比亚迪 G3", status: 0) if Column.find_by(name: "比亚迪G3", keyword: "比亚迪G3|比亚迪 G3").nil?
Column.create!(category_id: category_99.id, name: "比亚迪G5", en_name: "G5", keyword: "比亚迪G5|比亚迪 G5", status: 0) if Column.find_by(name: "比亚迪G5", keyword: "比亚迪G5|比亚迪 G5").nil?
Column.create!(category_id: category_99.id, name: "比亚迪G6", en_name: "G6", keyword: "比亚迪G6|比亚迪 G6", status: 0) if Column.find_by(name: "比亚迪G6", keyword: "比亚迪G6|比亚迪 G6").nil?
Column.create!(category_id: category_99.id, name: "比亚迪L3", en_name: "L3", keyword: "比亚迪L3|比亚迪 L3", status: 0) if Column.find_by(name: "比亚迪L3", keyword: "比亚迪L3|比亚迪 L3").nil?
Column.create!(category_id: category_99.id, name: "比亚迪M6", en_name: "M6", keyword: "比亚迪M6|比亚迪 M6", status: 0) if Column.find_by(name: "比亚迪M6", keyword: "比亚迪M6|比亚迪 M6").nil?
Column.create!(category_id: category_99.id, name: "秦", en_name: "秦", keyword: "比亚迪秦|比亚迪 秦", status: 0) if Column.find_by(name: "秦", keyword: "比亚迪秦|比亚迪 秦").nil?
Column.create!(category_id: category_99.id, name: "宋", en_name: "宋", keyword: "比亚迪宋|比亚迪 宋", status: 0) if Column.find_by(name: "宋", keyword: "比亚迪宋|比亚迪 宋").nil?
Column.create!(category_id: category_99.id, name: "比亚迪S6", en_name: "S6", keyword: "比亚迪S6|比亚迪 S6", status: 0) if Column.find_by(name: "比亚迪S6", keyword: "比亚迪S6|比亚迪 S6").nil?
Column.create!(category_id: category_99.id, name: "比亚迪S7", en_name: "S7", keyword: "比亚迪S7|比亚迪 S7", status: 0) if Column.find_by(name: "比亚迪S7", keyword: "比亚迪S7|比亚迪 S7").nil?
Column.create!(category_id: category_99.id, name: "速锐", en_name: "速锐", keyword: "比亚迪速锐|比亚迪 速锐", status: 0) if Column.find_by(name: "速锐", keyword: "比亚迪速锐|比亚迪 速锐").nil?
Column.create!(category_id: category_99.id, name: "思锐", en_name: "思锐", keyword: "比亚迪思锐|比亚迪 思锐", status: 0) if Column.find_by(name: "思锐", keyword: "比亚迪思锐|比亚迪 思锐").nil?
Column.create!(category_id: category_99.id, name: "唐", en_name: "唐", keyword: "比亚迪唐|比亚迪 唐", status: 0) if Column.find_by(name: "唐", keyword: "比亚迪唐|比亚迪 唐").nil?
Column.create!(category_id: category_99.id, name: "比亚迪T3", en_name: "比亚迪T3", keyword: "比亚迪T3|比亚迪 比亚迪T3", status: 0) if Column.find_by(name: "比亚迪T3", keyword: "比亚迪T3|比亚迪 比亚迪T3").nil?
Column.create!(category_id: category_99.id, name: "商", en_name: "商", keyword: "比亚迪商|比亚迪 商", status: 0) if Column.find_by(name: "商", keyword: "比亚迪商|比亚迪 商").nil?
Column.create!(category_id: category_99.id, name: "元", en_name: "元", keyword: "比亚迪元|比亚迪 元", status: 0) if Column.find_by(name: "元", keyword: "比亚迪元|比亚迪 元").nil?
Column.create!(category_id: category_99.id, name: "比亚迪F3DM", en_name: "F3DM", keyword: "比亚迪F3DM|比亚迪 F3DM", status: 0) if Column.find_by(name: "比亚迪F3DM", keyword: "比亚迪F3DM|比亚迪 F3DM").nil?
Column.create!(category_id: category_99.id, name: "比亚迪F6", en_name: "F6", keyword: "比亚迪F6|比亚迪 F6", status: 0) if Column.find_by(name: "比亚迪F6", keyword: "比亚迪F6|比亚迪 F6").nil?
Column.create!(category_id: category_99.id, name: "福莱尔", en_name: "福莱尔", keyword: "比亚迪福莱尔|比亚迪 福莱尔", status: 0) if Column.find_by(name: "福莱尔", keyword: "比亚迪福莱尔|比亚迪 福莱尔").nil?
Column.create!(category_id: category_99.id, name: "比亚迪G3R", en_name: "G3R", keyword: "比亚迪G3R|比亚迪 G3R", status: 0) if Column.find_by(name: "比亚迪G3R", keyword: "比亚迪G3R|比亚迪 G3R").nil?
Column.create!(category_id: category_99.id, name: "比亚迪S8", en_name: "S8", keyword: "比亚迪S8|比亚迪 S8", status: 0) if Column.find_by(name: "比亚迪S8", keyword: "比亚迪S8|比亚迪 S8").nil?
Column.create!(category_id: category_99.id, name: "宝骏330", en_name: "330", keyword: "宝骏330|宝骏 330", status: 0) if Column.find_by(name: "宝骏330", keyword: "宝骏330|宝骏 330").nil?
Column.create!(category_id: category_99.id, name: "宝骏560", en_name: "560", keyword: "宝骏560|宝骏 560", status: 0) if Column.find_by(name: "宝骏560", keyword: "宝骏560|宝骏 560").nil?
Column.create!(category_id: category_99.id, name: "宝骏610", en_name: "610", keyword: "宝骏610|宝骏 610", status: 0) if Column.find_by(name: "宝骏610", keyword: "宝骏610|宝骏 610").nil?
Column.create!(category_id: category_99.id, name: "宝骏630", en_name: "630", keyword: "宝骏630|宝骏 630", status: 0) if Column.find_by(name: "宝骏630", keyword: "宝骏630|宝骏 630").nil?
Column.create!(category_id: category_99.id, name: "宝骏730", en_name: "730", keyword: "宝骏730|宝骏 730", status: 0) if Column.find_by(name: "宝骏730", keyword: "宝骏730|宝骏 730").nil?
Column.create!(category_id: category_99.id, name: "乐驰", en_name: "乐驰", keyword: "宝骏乐驰|宝骏 乐驰", status: 0) if Column.find_by(name: "乐驰", keyword: "宝骏乐驰|宝骏 乐驰").nil?
Column.create!(category_id: category_99.id, name: "宝骏310", en_name: "310", keyword: "宝骏310|宝骏 310", status: 0) if Column.find_by(name: "宝骏310", keyword: "宝骏310|宝骏 310").nil?
Column.create!(category_id: category_99.id, name: "标致2008", en_name: "2008", keyword: "标致2008|peugeot 2008", status: 0) if Column.find_by(name: "标致2008", keyword: "标致2008|peugeot 2008").nil?
Column.create!(category_id: category_99.id, name: "标致3008", en_name: "3008", keyword: "标致3008|peugeot 3008", status: 0) if Column.find_by(name: "标致3008", keyword: "标致3008|peugeot 3008").nil?
Column.create!(category_id: category_99.id, name: "标致301", en_name: "301", keyword: "标致301|peugeot 301", status: 0) if Column.find_by(name: "标致301", keyword: "标致301|peugeot 301").nil?
Column.create!(category_id: category_99.id, name: "标致308", en_name: "308", keyword: "标致308|peugeot 308", status: 0) if Column.find_by(name: "标致308", keyword: "标致308|peugeot 308").nil?
Column.create!(category_id: category_99.id, name: "标致308S", en_name: "308S", keyword: "标致308S|peugeot 308S", status: 0) if Column.find_by(name: "标致308S", keyword: "标致308S|peugeot 308S").nil?
Column.create!(category_id: category_99.id, name: "标致408", en_name: "408", keyword: "标致408|peugeot 408", status: 0) if Column.find_by(name: "标致408", keyword: "标致408|peugeot 408").nil?
Column.create!(category_id: category_99.id, name: "标致508", en_name: "508", keyword: "标致508|peugeot 508", status: 0) if Column.find_by(name: "标致508", keyword: "标致508|peugeot 508").nil?
Column.create!(category_id: category_99.id, name: "标致206", en_name: "206", keyword: "标致206|peugeot 206", status: 0) if Column.find_by(name: "标致206", keyword: "标致206|peugeot 206").nil?
Column.create!(category_id: category_99.id, name: "标致207两厢", en_name: "207hatchback", keyword: "标致207两厢|peugeot 207hatchback", status: 0) if Column.find_by(name: "标致207两厢", keyword: "标致207两厢|peugeot 207hatchback").nil?
Column.create!(category_id: category_99.id, name: "标致207三厢", en_name: "207sedan", keyword: "标致207三厢|peugeot 207sedan", status: 0) if Column.find_by(name: "标致207三厢", keyword: "标致207三厢|peugeot 207sedan").nil?
Column.create!(category_id: category_99.id, name: "标致307两厢", en_name: "307hatchback", keyword: "标致307两厢|peugeot 307hatchback", status: 0) if Column.find_by(name: "标致307两厢", keyword: "标致307两厢|peugeot 307hatchback").nil?
Column.create!(category_id: category_99.id, name: "标致307三厢", en_name: "307sedan", keyword: "标致307三厢|peugeot 307sedan", status: 0) if Column.find_by(name: "标致307三厢", keyword: "标致307三厢|peugeot 307sedan").nil?
Column.create!(category_id: category_99.id, name: "广州标致", en_name: "广州标致", keyword: "广州标致|peugeot 广州标致", status: 0) if Column.find_by(name: "广州标致", keyword: "广州标致|peugeot 广州标致").nil?
Column.create!(category_id: category_99.id, name: "标致207 CC", en_name: "207 CC", keyword: "标致207 CC|peugeot 207 CC", status: 0) if Column.find_by(name: "标致207 CC", keyword: "标致207 CC|peugeot 207 CC").nil?
Column.create!(category_id: category_99.id, name: "标致308 CC", en_name: "308 CC", keyword: "标致308 CC|peugeot 308 CC", status: 0) if Column.find_by(name: "标致308 CC", keyword: "标致308 CC|peugeot 308 CC").nil?
Column.create!(category_id: category_99.id, name: "标致308 SW", en_name: "308 SW", keyword: "标致308 SW|peugeot 308 SW", status: 0) if Column.find_by(name: "标致308 SW", keyword: "标致308 SW|peugeot 308 SW").nil?
Column.create!(category_id: category_99.id, name: "标致4008", en_name: "4008", keyword: "标致4008|peugeot 4008", status: 0) if Column.find_by(name: "标致4008", keyword: "标致4008|peugeot 4008").nil?
Column.create!(category_id: category_99.id, name: "标致RCZ", en_name: "RCZ", keyword: "标致RCZ|peugeot RCZ", status: 0) if Column.find_by(name: "标致RCZ", keyword: "标致RCZ|peugeot RCZ").nil?
Column.create!(category_id: category_99.id, name: "标致108", en_name: "108", keyword: "标致108|peugeot 108", status: 0) if Column.find_by(name: "标致108", keyword: "标致108|peugeot 108").nil?
Column.create!(category_id: category_99.id, name: "标致2008（进口）", en_name: "2008", keyword: "标致2008（进口）|peugeot 2008", status: 0) if Column.find_by(name: "标致2008（进口）", keyword: "标致2008（进口）|peugeot 2008").nil?
Column.create!(category_id: category_99.id, name: "标致308（进口）", en_name: "308", keyword: "标致308（进口）|peugeot 308", status: 0) if Column.find_by(name: "标致308（进口）", keyword: "标致308（进口）|peugeot 308").nil?
Column.create!(category_id: category_99.id, name: "标致508", en_name: "508", keyword: "标致508|peugeot 508", status: 0) if Column.find_by(name: "标致508", keyword: "标致508|peugeot 508").nil?
Column.create!(category_id: category_99.id, name: "标致206", en_name: "206", keyword: "标致206|peugeot 206", status: 0) if Column.find_by(name: "标致206", keyword: "标致206|peugeot 206").nil?
Column.create!(category_id: category_99.id, name: "标致3008", en_name: "3008", keyword: "标致3008|peugeot 3008", status: 0) if Column.find_by(name: "标致3008", keyword: "标致3008|peugeot 3008").nil?
Column.create!(category_id: category_99.id, name: "标致407", en_name: "407", keyword: "标致407|peugeot 407", status: 0) if Column.find_by(name: "标致407", keyword: "标致407|peugeot 407").nil?
Column.create!(category_id: category_99.id, name: "标致407 Coupe", en_name: "407 Coupe", keyword: "标致407 Coupe|peugeot 407 Coupe", status: 0) if Column.find_by(name: "标致407 Coupe", keyword: "标致407 Coupe|peugeot 407 Coupe").nil?
Column.create!(category_id: category_99.id, name: "标致407 SW", en_name: "407 SW", keyword: "标致407 SW|peugeot 407 SW", status: 0) if Column.find_by(name: "标致407 SW", keyword: "标致407 SW|peugeot 407 SW").nil?
Column.create!(category_id: category_99.id, name: "标致206 CC", en_name: "206 CC", keyword: "标致206 CC|peugeot 206 CC", status: 0) if Column.find_by(name: "标致206 CC", keyword: "标致206 CC|peugeot 206 CC").nil?
Column.create!(category_id: category_99.id, name: "标致206 SW", en_name: "206 SW", keyword: "标致206 SW|peugeot 206 SW", status: 0) if Column.find_by(name: "标致206 SW", keyword: "标致206 SW|peugeot 206 SW").nil?
Column.create!(category_id: category_99.id, name: "标致307", en_name: "307", keyword: "标致307|peugeot 307", status: 0) if Column.find_by(name: "标致307", keyword: "标致307|peugeot 307").nil?
Column.create!(category_id: category_99.id, name: "标致307 CC", en_name: "307 CC", keyword: "标致307 CC|peugeot 307 CC", status: 0) if Column.find_by(name: "标致307 CC", keyword: "标致307 CC|peugeot 307 CC").nil?
Column.create!(category_id: category_99.id, name: "标致307 SW", en_name: "307 SW", keyword: "标致307 SW|peugeot 307 SW", status: 0) if Column.find_by(name: "标致307 SW", keyword: "标致307 SW|peugeot 307 SW").nil?
Column.create!(category_id: category_99.id, name: "标致406 Coupe", en_name: "406 Coupe", keyword: "标致406 Coupe|peugeot 406 Coupe", status: 0) if Column.find_by(name: "标致406 Coupe", keyword: "标致406 Coupe|peugeot 406 Coupe").nil?
Column.create!(category_id: category_99.id, name: "标致406", en_name: "406", keyword: "标致406|peugeot 406", status: 0) if Column.find_by(name: "标致406", keyword: "标致406|peugeot 406").nil?
Column.create!(category_id: category_99.id, name: "标致607", en_name: "607", keyword: "标致607|peugeot 607", status: 0) if Column.find_by(name: "标致607", keyword: "标致607|peugeot 607").nil?
Column.create!(category_id: category_99.id, name: "标致807", en_name: "807", keyword: "标致807|peugeot 807", status: 0) if Column.find_by(name: "标致807", keyword: "标致807|peugeot 807").nil?
Column.create!(category_id: category_99.id, name: "幻速H2", en_name: "H2", keyword: "北汽幻速幻速H2|北汽幻速 H2", status: 0) if Column.find_by(name: "幻速H2", keyword: "北汽幻速幻速H2|北汽幻速 H2").nil?
Column.create!(category_id: category_99.id, name: "幻速H3", en_name: "H3", keyword: "北汽幻速幻速H3|北汽幻速 H3", status: 0) if Column.find_by(name: "幻速H3", keyword: "北汽幻速幻速H3|北汽幻速 H3").nil?
Column.create!(category_id: category_99.id, name: "幻速S2", en_name: "S2", keyword: "北汽幻速幻速S2|北汽幻速 S2", status: 0) if Column.find_by(name: "幻速S2", keyword: "北汽幻速幻速S2|北汽幻速 S2").nil?
Column.create!(category_id: category_99.id, name: "幻速S3", en_name: "S3", keyword: "北汽幻速幻速S3|北汽幻速 S3", status: 0) if Column.find_by(name: "幻速S3", keyword: "北汽幻速幻速S3|北汽幻速 S3").nil?
Column.create!(category_id: category_99.id, name: "幻速S6", en_name: "S6", keyword: "北汽幻速幻速S6|北汽幻速 S6", status: 0) if Column.find_by(name: "幻速S6", keyword: "北汽幻速幻速S6|北汽幻速 S6").nil?
Column.create!(category_id: category_99.id, name: "幻速H3F", en_name: "H3F", keyword: "北汽幻速幻速H3F|北汽幻速 H3F", status: 0) if Column.find_by(name: "幻速H3F", keyword: "北汽幻速幻速H3F|北汽幻速 H3F").nil?
Column.create!(category_id: category_99.id, name: "幻速H6", en_name: "H6", keyword: "北汽幻速幻速H6|北汽幻速 H6", status: 0) if Column.find_by(name: "幻速H6", keyword: "北汽幻速幻速H6|北汽幻速 H6").nil?
Column.create!(category_id: category_99.id, name: "保时捷911", en_name: "911", keyword: "保时捷911|porsche 911", status: 0) if Column.find_by(name: "保时捷911", keyword: "保时捷911|porsche 911").nil?
Column.create!(category_id: category_99.id, name: "保时捷918", en_name: "918", keyword: "保时捷918|porsche 918", status: 0) if Column.find_by(name: "保时捷918", keyword: "保时捷918|porsche 918").nil?
Column.create!(category_id: category_99.id, name: "保时捷Boxster", en_name: "Boxster", keyword: "保时捷Boxster|porsche Boxster", status: 0) if Column.find_by(name: "保时捷Boxster", keyword: "保时捷Boxster|porsche Boxster").nil?
Column.create!(category_id: category_99.id, name: "保时捷Cayenne", en_name: "Cayenne", keyword: "保时捷Cayenne|porsche Cayenne", status: 0) if Column.find_by(name: "保时捷Cayenne", keyword: "保时捷Cayenne|porsche Cayenne").nil?
Column.create!(category_id: category_99.id, name: "保时捷Cayman", en_name: "Cayman", keyword: "保时捷Cayman|porsche Cayman", status: 0) if Column.find_by(name: "保时捷Cayman", keyword: "保时捷Cayman|porsche Cayman").nil?
Column.create!(category_id: category_99.id, name: "保时捷Macan", en_name: "Macan", keyword: "保时捷Macan|porsche Macan", status: 0) if Column.find_by(name: "保时捷Macan", keyword: "保时捷Macan|porsche Macan").nil?
Column.create!(category_id: category_99.id, name: "保时捷Panamera", en_name: "Panamera", keyword: "保时捷Panamera|porsche Panamera", status: 0) if Column.find_by(name: "保时捷Panamera", keyword: "保时捷Panamera|porsche Panamera").nil?
Column.create!(category_id: category_99.id, name: "绅宝D80", en_name: "D80", keyword: "北汽绅宝绅宝D80|北汽绅宝 D80", status: 0) if Column.find_by(name: "绅宝D80", keyword: "北汽绅宝绅宝D80|北汽绅宝 D80").nil?
Column.create!(category_id: category_99.id, name: "绅宝CC", en_name: "CC", keyword: "北汽绅宝绅宝CC|北汽绅宝 CC", status: 0) if Column.find_by(name: "绅宝CC", keyword: "北汽绅宝绅宝CC|北汽绅宝 CC").nil?
Column.create!(category_id: category_99.id, name: "绅宝D20 Cross版", en_name: "D20", keyword: "北汽绅宝绅宝D20 Cross版|北汽绅宝 D20", status: 0) if Column.find_by(name: "绅宝D20 Cross版", keyword: "北汽绅宝绅宝D20 Cross版|北汽绅宝 D20").nil?
Column.create!(category_id: category_99.id, name: "绅宝D20 两厢版", en_name: "D20 两厢", keyword: "北汽绅宝绅宝D20 两厢版|北汽绅宝 D20 两厢", status: 0) if Column.find_by(name: "绅宝D20 两厢版", keyword: "北汽绅宝绅宝D20 两厢版|北汽绅宝 D20 两厢").nil?
Column.create!(category_id: category_99.id, name: "绅宝D20 三厢版", en_name: "D20 三厢", keyword: "北汽绅宝绅宝D20 三厢版|北汽绅宝 D20 三厢", status: 0) if Column.find_by(name: "绅宝D20 三厢版", keyword: "北汽绅宝绅宝D20 三厢版|北汽绅宝 D20 三厢").nil?
Column.create!(category_id: category_99.id, name: "绅宝D50", en_name: "D50", keyword: "北汽绅宝绅宝D50|北汽绅宝 D50", status: 0) if Column.find_by(name: "绅宝D50", keyword: "北汽绅宝绅宝D50|北汽绅宝 D50").nil?
Column.create!(category_id: category_99.id, name: "绅宝D60", en_name: "D60", keyword: "北汽绅宝绅宝D60|北汽绅宝 D60", status: 0) if Column.find_by(name: "绅宝D60", keyword: "北汽绅宝绅宝D60|北汽绅宝 D60").nil?
Column.create!(category_id: category_99.id, name: "绅宝D70", en_name: "D70", keyword: "北汽绅宝绅宝D70|北汽绅宝 D70", status: 0) if Column.find_by(name: "绅宝D70", keyword: "北汽绅宝绅宝D70|北汽绅宝 D70").nil?
Column.create!(category_id: category_99.id, name: "绅宝X25", en_name: "X25", keyword: "北汽绅宝绅宝X25|北汽绅宝 X25", status: 0) if Column.find_by(name: "绅宝X25", keyword: "北汽绅宝绅宝X25|北汽绅宝 X25").nil?
Column.create!(category_id: category_99.id, name: "绅宝X55", en_name: "X55", keyword: "北汽绅宝绅宝X55|北汽绅宝 X55", status: 0) if Column.find_by(name: "绅宝X55", keyword: "北汽绅宝绅宝X55|北汽绅宝 X55").nil?
Column.create!(category_id: category_99.id, name: "绅宝X65", en_name: "X65", keyword: "北汽绅宝绅宝X65|北汽绅宝 X65", status: 0) if Column.find_by(name: "绅宝X65", keyword: "北汽绅宝绅宝X65|北汽绅宝 X65").nil?
Column.create!(category_id: category_99.id, name: "绅宝X35", en_name: "X35", keyword: "北汽绅宝绅宝X35|北汽绅宝 X35", status: 0) if Column.find_by(name: "绅宝X35", keyword: "北汽绅宝绅宝X35|北汽绅宝 X35").nil?
Column.create!(category_id: category_99.id, name: "奔腾B30", en_name: "B30", keyword: "奔腾B30|奔腾 B30", status: 0) if Column.find_by(name: "奔腾B30", keyword: "奔腾B30|奔腾 B30").nil?
Column.create!(category_id: category_99.id, name: "奔腾B50", en_name: "B50", keyword: "奔腾B50|奔腾 B50", status: 0) if Column.find_by(name: "奔腾B50", keyword: "奔腾B50|奔腾 B50").nil?
Column.create!(category_id: category_99.id, name: "奔腾B70", en_name: "B70", keyword: "奔腾B70|奔腾 B70", status: 0) if Column.find_by(name: "奔腾B70", keyword: "奔腾B70|奔腾 B70").nil?
Column.create!(category_id: category_99.id, name: "奔腾B90", en_name: "B90", keyword: "奔腾B90|奔腾 B90", status: 0) if Column.find_by(name: "奔腾B90", keyword: "奔腾B90|奔腾 B90").nil?
Column.create!(category_id: category_99.id, name: "奔腾X80", en_name: "X80", keyword: "奔腾X80|奔腾 X80", status: 0) if Column.find_by(name: "奔腾X80", keyword: "奔腾X80|奔腾 X80").nil?
Column.create!(category_id: category_99.id, name: "北京BJ40", en_name: "BJ40", keyword: "北京BJ40|北京 BJ40", status: 0) if Column.find_by(name: "北京BJ40", keyword: "北京BJ40|北京 BJ40").nil?
Column.create!(category_id: category_99.id, name: "北汽E系列两厢", en_name: "E系列hatchback", keyword: "北京北汽E系列两厢|北京 E系列hatchback", status: 0) if Column.find_by(name: "北汽E系列两厢", keyword: "北京北汽E系列两厢|北京 E系列hatchback").nil?
Column.create!(category_id: category_99.id, name: "北汽E系列三厢", en_name: "E系列sedan", keyword: "北京北汽E系列三厢|北京 E系列sedan", status: 0) if Column.find_by(name: "北汽E系列三厢", keyword: "北京北汽E系列三厢|北京 E系列sedan").nil?
Column.create!(category_id: category_99.id, name: "北汽BJ100", en_name: "BJ100", keyword: "北京北汽BJ100|北京 BJ100", status: 0) if Column.find_by(name: "北汽BJ100", keyword: "北京北汽BJ100|北京 BJ100").nil?
Column.create!(category_id: category_99.id, name: "北京BJ20", en_name: "BJ20", keyword: "北京BJ20|北京 BJ20", status: 0) if Column.find_by(name: "北京BJ20", keyword: "北京BJ20|北京 BJ20").nil?
Column.create!(category_id: category_99.id, name: "北京BJ80", en_name: "BJ80", keyword: "北京BJ80|北京 BJ80", status: 0) if Column.find_by(name: "北京BJ80", keyword: "北京BJ80|北京 BJ80").nil?
Column.create!(category_id: category_99.id, name: "北京BJ40L", en_name: "BJ40L", keyword: "北京BJ40L|北京 BJ40L", status: 0) if Column.find_by(name: "北京BJ40L", keyword: "北京BJ40L|北京 BJ40L").nil?
Column.create!(category_id: category_99.id, name: "北汽威旺306", en_name: "306", keyword: "北汽威旺306|北汽威旺 306", status: 0) if Column.find_by(name: "北汽威旺306", keyword: "北汽威旺306|北汽威旺 306").nil?
Column.create!(category_id: category_99.id, name: "北汽威旺307", en_name: "307", keyword: "北汽威旺307|北汽威旺 307", status: 0) if Column.find_by(name: "北汽威旺307", keyword: "北汽威旺307|北汽威旺 307").nil?
Column.create!(category_id: category_99.id, name: "北汽威旺M20", en_name: "M20", keyword: "北汽威旺M20|北汽威旺 M20", status: 0) if Column.find_by(name: "北汽威旺M20", keyword: "北汽威旺M20|北汽威旺 M20").nil?
Column.create!(category_id: category_99.id, name: "北汽威旺M30", en_name: "M30", keyword: "北汽威旺M30|北汽威旺 M30", status: 0) if Column.find_by(name: "北汽威旺M30", keyword: "北汽威旺M30|北汽威旺 M30").nil?
Column.create!(category_id: category_99.id, name: "北汽威旺M35", en_name: "M35", keyword: "北汽威旺M35|北汽威旺 M35", status: 0) if Column.find_by(name: "北汽威旺M35", keyword: "北汽威旺M35|北汽威旺 M35").nil?
Column.create!(category_id: category_99.id, name: "北汽威旺S50", en_name: "S50", keyword: "北汽威旺S50|北汽威旺 S50", status: 0) if Column.find_by(name: "北汽威旺S50", keyword: "北汽威旺S50|北汽威旺 S50").nil?
Column.create!(category_id: category_99.id, name: "北汽威旺205", en_name: "205", keyword: "北汽威旺205|北汽威旺 205", status: 0) if Column.find_by(name: "北汽威旺205", keyword: "北汽威旺205|北汽威旺 205").nil?
Column.create!(category_id: category_99.id, name: "北汽212系列", en_name: "212系列", keyword: "北汽制造北汽212系列|北汽制造 212系列", status: 0) if Column.find_by(name: "北汽212系列", keyword: "北汽制造北汽212系列|北汽制造 212系列").nil?
Column.create!(category_id: category_99.id, name: "北京BW007", en_name: "BW007", keyword: "北汽制造北京BW007|北汽制造 BW007", status: 0) if Column.find_by(name: "北京BW007", keyword: "北汽制造北京BW007|北汽制造 BW007").nil?
Column.create!(category_id: category_99.id, name: "角斗士", en_name: "角斗士", keyword: "北汽制造角斗士|北汽制造 角斗士", status: 0) if Column.find_by(name: "角斗士", keyword: "北汽制造角斗士|北汽制造 角斗士").nil?
Column.create!(category_id: category_99.id, name: "陆霸", en_name: "陆霸", keyword: "北汽制造陆霸|北汽制造 陆霸", status: 0) if Column.find_by(name: "陆霸", keyword: "北汽制造陆霸|北汽制造 陆霸").nil?
Column.create!(category_id: category_99.id, name: "北汽骑士", en_name: "骑士", keyword: "北汽制造北汽骑士|北汽制造 骑士", status: 0) if Column.find_by(name: "北汽骑士", keyword: "北汽制造北汽骑士|北汽制造 骑士").nil?
Column.create!(category_id: category_99.id, name: "锐铃", en_name: "锐铃", keyword: "北汽制造锐铃|北汽制造 锐铃", status: 0) if Column.find_by(name: "锐铃", keyword: "北汽制造锐铃|北汽制造 锐铃").nil?
Column.create!(category_id: category_99.id, name: "越铃", en_name: "越铃", keyword: "北汽制造越铃|北汽制造 越铃", status: 0) if Column.find_by(name: "越铃", keyword: "北汽制造越铃|北汽制造 越铃").nil?
Column.create!(category_id: category_99.id, name: "勇士", en_name: "勇士", keyword: "北汽制造勇士|北汽制造 勇士", status: 0) if Column.find_by(name: "勇士", keyword: "北汽制造勇士|北汽制造 勇士").nil?
Column.create!(category_id: category_99.id, name: "战旗2024", en_name: "战旗2024", keyword: "北汽制造战旗2024|北汽制造 战旗2024", status: 0) if Column.find_by(name: "战旗2024", keyword: "北汽制造战旗2024|北汽制造 战旗2024").nil?
Column.create!(category_id: category_99.id, name: "雷驰", en_name: "雷驰", keyword: "北汽制造雷驰|北汽制造 雷驰", status: 0) if Column.find_by(name: "雷驰", keyword: "北汽制造雷驰|北汽制造 雷驰").nil?
Column.create!(category_id: category_99.id, name: "陆铃", en_name: "陆铃", keyword: "北汽制造陆铃|北汽制造 陆铃", status: 0) if Column.find_by(name: "陆铃", keyword: "北汽制造陆铃|北汽制造 陆铃").nil?
Column.create!(category_id: category_99.id, name: "新城市猎人", en_name: "新城市猎人", keyword: "北汽制造新城市猎人|北汽制造 新城市猎人", status: 0) if Column.find_by(name: "新城市猎人", keyword: "北汽制造新城市猎人|北汽制造 新城市猎人").nil?
Column.create!(category_id: category_99.id, name: "旋风", en_name: "旋风", keyword: "北汽制造旋风|北汽制造 旋风", status: 0) if Column.find_by(name: "旋风", keyword: "北汽制造旋风|北汽制造 旋风").nil?
Column.create!(category_id: category_99.id, name: "战旗2023", en_name: "战旗2023", keyword: "北汽制造战旗2023|北汽制造 战旗2023", status: 0) if Column.find_by(name: "战旗2023", keyword: "北汽制造战旗2023|北汽制造 战旗2023").nil?
Column.create!(category_id: category_99.id, name: "飞驰", en_name: "flying spur", keyword: "宾利飞驰|bentley flying spur", status: 0) if Column.find_by(name: "飞驰", keyword: "宾利飞驰|bentley flying spur").nil?
Column.create!(category_id: category_99.id, name: "慕尚", en_name: "Mulsanne", keyword: "宾利慕尚|bentley Mulsanne", status: 0) if Column.find_by(name: "慕尚", keyword: "宾利慕尚|bentley Mulsanne").nil?
Column.create!(category_id: category_99.id, name: "欧陆", en_name: "Continental", keyword: "宾利欧陆|bentley Continental", status: 0) if Column.find_by(name: "欧陆", keyword: "宾利欧陆|bentley Continental").nil?
Column.create!(category_id: category_99.id, name: "添越", en_name: "Bentayga", keyword: "宾利添越|bentley Bentayga", status: 0) if Column.find_by(name: "添越", keyword: "宾利添越|bentley Bentayga").nil?
Column.create!(category_id: category_99.id, name: "宾利Arnage", en_name: "Arnage", keyword: "宾利Arnage|bentley Arnage", status: 0) if Column.find_by(name: "宾利Arnage", keyword: "宾利Arnage|bentley Arnage").nil?
Column.create!(category_id: category_99.id, name: "雅骏", en_name: "Brooklands", keyword: "宾利雅骏|bentley Brooklands", status: 0) if Column.find_by(name: "雅骏", keyword: "宾利雅骏|bentley Brooklands").nil?
Column.create!(category_id: category_99.id, name: "雅致", en_name: "Arnage", keyword: "宾利雅致|bentley Arnage", status: 0) if Column.find_by(name: "雅致", keyword: "宾利雅致|bentley Arnage").nil?
Column.create!(category_id: category_99.id, name: "威航", en_name: "VERYON", keyword: "布加迪威航|Bugatti VERYON", status: 0) if Column.find_by(name: "威航", keyword: "布加迪威航|Bugatti VERYON").nil?
Column.create!(category_id: category_99.id, name: "布加迪Chiron", en_name: "Chiron", keyword: "布加迪Chiron|Bugatti Chiron", status: 0) if Column.find_by(name: "布加迪Chiron", keyword: "布加迪Chiron|Bugatti Chiron").nil?
Column.create!(category_id: category_99.id, name: "巴博斯CLS级", en_name: "CLS class ", keyword: "巴博斯CLS级|brabus CLS class ", status: 0) if Column.find_by(name: "巴博斯CLS级", keyword: "巴博斯CLS级|brabus CLS class ").nil?
Column.create!(category_id: category_99.id, name: "巴博斯G级", en_name: "G class ", keyword: "巴博斯G级|brabus G class ", status: 0) if Column.find_by(name: "巴博斯G级", keyword: "巴博斯G级|brabus G class ").nil?
Column.create!(category_id: category_99.id, name: "巴博斯GL级", en_name: "GL class ", keyword: "巴博斯GL级|brabus GL class ", status: 0) if Column.find_by(name: "巴博斯GL级", keyword: "巴博斯GL级|brabus GL class ").nil?
Column.create!(category_id: category_99.id, name: "巴博斯ML级", en_name: "ML class ", keyword: "巴博斯ML级|brabus ML class ", status: 0) if Column.find_by(name: "巴博斯ML级", keyword: "巴博斯ML级|brabus ML class ").nil?
Column.create!(category_id: category_99.id, name: "巴博斯S级", en_name: "S class ", keyword: "巴博斯S级|brabus S class ", status: 0) if Column.find_by(name: "巴博斯S级", keyword: "巴博斯S级|brabus S class ").nil?
Column.create!(category_id: category_99.id, name: "巴博斯SLK级", en_name: "SLK class ", keyword: "巴博斯SLK级|brabus SLK class ", status: 0) if Column.find_by(name: "巴博斯SLK级", keyword: "巴博斯SLK级|brabus SLK class ").nil?
Column.create!(category_id: category_99.id, name: "巴博斯C级", en_name: "C class ", keyword: "巴博斯C级|brabus C class ", status: 0) if Column.find_by(name: "巴博斯C级", keyword: "巴博斯C级|brabus C class ").nil?
Column.create!(category_id: category_99.id, name: "宝沃BX5", en_name: "BX5", keyword: "宝沃BX5|BORGWARD BX5", status: 0) if Column.find_by(name: "宝沃BX5", keyword: "宝沃BX5|BORGWARD BX5").nil?
Column.create!(category_id: category_99.id, name: "宝沃BX6 TS", en_name: "BX6 TS", keyword: "宝沃BX6 TS|BORGWARD BX6 TS", status: 0) if Column.find_by(name: "宝沃BX6 TS", keyword: "宝沃BX6 TS|BORGWARD BX6 TS").nil?
Column.create!(category_id: category_99.id, name: "宝沃BX7", en_name: "BX7", keyword: "宝沃BX7|BORGWARD BX7", status: 0) if Column.find_by(name: "宝沃BX7", keyword: "宝沃BX7|BORGWARD BX7").nil?
Column.create!(category_id: category_99.id, name: "宝沃Isabella", en_name: "Isabella", keyword: "宝沃Isabella|BORGWARD Isabella", status: 0) if Column.find_by(name: "宝沃Isabella", keyword: "宝沃Isabella|BORGWARD Isabella").nil?
Column.create!(category_id: category_99.id, name: "威旺系列", en_name: "威旺系列", keyword: "北汽新能源威旺系列|北汽新能源 威旺系列", status: 0) if Column.find_by(name: "威旺系列", keyword: "北汽新能源威旺系列|北汽新能源 威旺系列").nil?
Column.create!(category_id: category_99.id, name: "北汽307EV", en_name: "307EV", keyword: "北汽新能源北汽307EV|北汽新能源 307EV", status: 0) if Column.find_by(name: "北汽307EV", keyword: "北汽新能源北汽307EV|北汽新能源 307EV").nil?
Column.create!(category_id: category_99.id, name: "ES系列", en_name: "ES系列", keyword: "北汽新能源ES系列|北汽新能源 ES系列", status: 0) if Column.find_by(name: "ES系列", keyword: "北汽新能源ES系列|北汽新能源 ES系列").nil?
Column.create!(category_id: category_99.id, name: "EU系列", en_name: "EU系列", keyword: "北汽新能源EU系列|北汽新能源 EU系列", status: 0) if Column.find_by(name: "EU系列", keyword: "北汽新能源EU系列|北汽新能源 EU系列").nil?
Column.create!(category_id: category_99.id, name: "EV系列", en_name: "EV系列", keyword: "北汽新能源EV系列|北汽新能源 EV系列", status: 0) if Column.find_by(name: "EV系列", keyword: "北汽新能源EV系列|北汽新能源 EV系列").nil?
Column.create!(category_id: category_99.id, name: "保斐利LA JOYA", en_name: "LA JOYA", keyword: "保斐利LA JOYA|保斐利 LA JOYA", status: 0) if Column.find_by(name: "保斐利LA JOYA", keyword: "保斐利LA JOYA|保斐利 LA JOYA").nil?
Column.create!(category_id: category_99.id, name: "霸道", en_name: "霸道", keyword: "宝龙霸道|宝龙 霸道", status: 0) if Column.find_by(name: "霸道", keyword: "宝龙霸道|宝龙 霸道").nil?
Column.create!(category_id: category_99.id, name: "菱惠", en_name: "菱惠", keyword: "宝龙菱惠|宝龙 菱惠", status: 0) if Column.find_by(name: "菱惠", keyword: "宝龙菱惠|宝龙 菱惠").nil?
Column.create!(category_id: category_99.id, name: "菱骏", en_name: "菱骏", keyword: "宝龙菱骏|宝龙 菱骏", status: 0) if Column.find_by(name: "菱骏", keyword: "宝龙菱骏|宝龙 菱骏").nil?
Column.create!(category_id: category_99.id, name: "菱麒", en_name: "菱麒", keyword: "宝龙菱麒|宝龙 菱麒", status: 0) if Column.find_by(name: "菱麒", keyword: "宝龙菱麒|宝龙 菱麒").nil?
Column.create!(category_id: category_99.id, name: "天马座", en_name: "天马座", keyword: "宝龙天马座|宝龙 天马座", status: 0) if Column.find_by(name: "天马座", keyword: "宝龙天马座|宝龙 天马座").nil?
Column.create!(category_id: category_99.id, name: "奔奔", en_name: "奔奔", keyword: "长安汽车奔奔|长安汽车 奔奔", status: 0) if Column.find_by(name: "奔奔", keyword: "长安汽车奔奔|长安汽车 奔奔").nil?
Column.create!(category_id: category_99.id, name: "奔奔Mini", en_name: "奔奔Mini", keyword: "长安汽车奔奔Mini|长安汽车 奔奔Mini", status: 0) if Column.find_by(name: "奔奔Mini", keyword: "长安汽车奔奔Mini|长安汽车 奔奔Mini").nil?
Column.create!(category_id: category_99.id, name: "长安CS35", en_name: "CS35", keyword: "长安汽车长安CS35|长安汽车 CS35", status: 0) if Column.find_by(name: "长安CS35", keyword: "长安汽车长安CS35|长安汽车 CS35").nil?
Column.create!(category_id: category_99.id, name: "长安CS75", en_name: "CS75", keyword: "长安汽车长安CS75|长安汽车 CS75", status: 0) if Column.find_by(name: "长安CS75", keyword: "长安汽车长安CS75|长安汽车 CS75").nil?
Column.create!(category_id: category_99.id, name: "长安CX20", en_name: "CX20", keyword: "长安汽车长安CX20|长安汽车 CX20", status: 0) if Column.find_by(name: "长安CX20", keyword: "长安汽车长安CX20|长安汽车 CX20").nil?
Column.create!(category_id: category_99.id, name: "睿骋", en_name: "睿骋", keyword: "长安汽车睿骋|长安汽车 睿骋", status: 0) if Column.find_by(name: "睿骋", keyword: "长安汽车睿骋|长安汽车 睿骋").nil?
Column.create!(category_id: category_99.id, name: "逸动", en_name: "逸动", keyword: "长安汽车逸动|长安汽车 逸动", status: 0) if Column.find_by(name: "逸动", keyword: "长安汽车逸动|长安汽车 逸动").nil?
Column.create!(category_id: category_99.id, name: "逸动XT", en_name: "逸动XT", keyword: "长安汽车逸动XT|长安汽车 逸动XT", status: 0) if Column.find_by(name: "逸动XT", keyword: "长安汽车逸动XT|长安汽车 逸动XT").nil?
Column.create!(category_id: category_99.id, name: "悦翔V3", en_name: "悦翔V3", keyword: "长安汽车悦翔V3|长安汽车 悦翔V3", status: 0) if Column.find_by(name: "悦翔V3", keyword: "长安汽车悦翔V3|长安汽车 悦翔V3").nil?
Column.create!(category_id: category_99.id, name: "悦翔V5", en_name: "悦翔V5", keyword: "长安汽车悦翔V5|长安汽车 悦翔V5", status: 0) if Column.find_by(name: "悦翔V5", keyword: "长安汽车悦翔V5|长安汽车 悦翔V5").nil?
Column.create!(category_id: category_99.id, name: "悦翔V7", en_name: "悦翔V7", keyword: "长安汽车悦翔V7|长安汽车 悦翔V7", status: 0) if Column.find_by(name: "悦翔V7", keyword: "长安汽车悦翔V7|长安汽车 悦翔V7").nil?
Column.create!(category_id: category_99.id, name: "长安CS15", en_name: "CS15", keyword: "长安汽车长安CS15|长安汽车 CS15", status: 0) if Column.find_by(name: "长安CS15", keyword: "长安汽车长安CS15|长安汽车 CS15").nil?
Column.create!(category_id: category_99.id, name: "长安CX30两厢", en_name: "CX30hatchback", keyword: "长安汽车长安CX30两厢|长安汽车 CX30hatchback", status: 0) if Column.find_by(name: "长安CX30两厢", keyword: "长安汽车长安CX30两厢|长安汽车 CX30hatchback").nil?
Column.create!(category_id: category_99.id, name: "长安CX30三厢", en_name: "CX30sedan", keyword: "长安汽车长安CX30三厢|长安汽车 CX30sedan", status: 0) if Column.find_by(name: "长安CX30三厢", keyword: "长安汽车长安CX30三厢|长安汽车 CX30sedan").nil?
Column.create!(category_id: category_99.id, name: "杰勋", en_name: "杰勋", keyword: "长安汽车杰勋|长安汽车 杰勋", status: 0) if Column.find_by(name: "杰勋", keyword: "长安汽车杰勋|长安汽车 杰勋").nil?
Column.create!(category_id: category_99.id, name: "悦翔", en_name: "悦翔", keyword: "长安汽车悦翔|长安汽车 悦翔", status: 0) if Column.find_by(name: "悦翔", keyword: "长安汽车悦翔|长安汽车 悦翔").nil?
Column.create!(category_id: category_99.id, name: "悦翔两厢", en_name: "悦翔hatchback", keyword: "长安汽车悦翔两厢|长安汽车 悦翔hatchback", status: 0) if Column.find_by(name: "悦翔两厢", keyword: "长安汽车悦翔两厢|长安汽车 悦翔hatchback").nil?
Column.create!(category_id: category_99.id, name: "志翔", en_name: "志翔", keyword: "长安汽车志翔|长安汽车 志翔", status: 0) if Column.find_by(name: "志翔", keyword: "长安汽车志翔|长安汽车 志翔").nil?
Column.create!(category_id: category_99.id, name: "长安睿行M80", en_name: "睿行M80", keyword: "长安欧尚长安睿行M80|长安欧尚 睿行M80", status: 0) if Column.find_by(name: "长安睿行M80", keyword: "长安欧尚长安睿行M80|长安欧尚 睿行M80").nil?
Column.create!(category_id: category_99.id, name: "长安神骐T20", en_name: "神骐T20", keyword: "长安欧尚长安神骐T20|长安欧尚 神骐T20", status: 0) if Column.find_by(name: "长安神骐T20", keyword: "长安欧尚长安神骐T20|长安欧尚 神骐T20").nil?
Column.create!(category_id: category_99.id, name: "长安尊行", en_name: "长安尊行", keyword: "长安欧尚长安尊行|长安欧尚 长安尊行", status: 0) if Column.find_by(name: "长安尊行", keyword: "长安欧尚长安尊行|长安欧尚 长安尊行").nil?
Column.create!(category_id: category_99.id, name: "睿行M90", en_name: "睿行M90", keyword: "长安欧尚睿行M90|长安欧尚 睿行M90", status: 0) if Column.find_by(name: "睿行M90", keyword: "长安欧尚睿行M90|长安欧尚 睿行M90").nil?
Column.create!(category_id: category_99.id, name: "神骐F30", en_name: "神骐F30", keyword: "长安欧尚神骐F30|长安欧尚 神骐F30", status: 0) if Column.find_by(name: "神骐F30", keyword: "长安欧尚神骐F30|长安欧尚 神骐F30").nil?
Column.create!(category_id: category_99.id, name: "神骐F50", en_name: "神骐F50", keyword: "长安欧尚神骐F50|长安欧尚 神骐F50", status: 0) if Column.find_by(name: "神骐F50", keyword: "长安欧尚神骐F50|长安欧尚 神骐F50").nil?
Column.create!(category_id: category_99.id, name: "长安欧诺", en_name: "长安欧诺", keyword: "长安欧尚长安欧诺|长安欧尚 长安欧诺", status: 0) if Column.find_by(name: "长安欧诺", keyword: "长安欧尚长安欧诺|长安欧尚 长安欧诺").nil?
Column.create!(category_id: category_99.id, name: "长安星光", en_name: "星光", keyword: "长安欧尚长安星光|长安欧尚 星光", status: 0) if Column.find_by(name: "长安星光", keyword: "长安欧尚长安星光|长安欧尚 星光").nil?
Column.create!(category_id: category_99.id, name: "长安星光4500", en_name: "长安星光4500", keyword: "长安欧尚长安星光4500|长安欧尚 长安星光4500", status: 0) if Column.find_by(name: "长安星光4500", keyword: "长安欧尚长安星光4500|长安欧尚 长安星光4500").nil?
Column.create!(category_id: category_99.id, name: "长安小卡", en_name: "长安小卡", keyword: "长安欧尚长安小卡|长安欧尚 长安小卡", status: 0) if Column.find_by(name: "长安小卡", keyword: "长安欧尚长安小卡|长安欧尚 长安小卡").nil?
Column.create!(category_id: category_99.id, name: "长安之星", en_name: "长安之星", keyword: "长安欧尚长安之星|长安欧尚 长安之星", status: 0) if Column.find_by(name: "长安之星", keyword: "长安欧尚长安之星|长安欧尚 长安之星").nil?
Column.create!(category_id: category_99.id, name: "长安之星2", en_name: "长安之星2", keyword: "长安欧尚长安之星2|长安欧尚 长安之星2", status: 0) if Column.find_by(name: "长安之星2", keyword: "长安欧尚长安之星2|长安欧尚 长安之星2").nil?
Column.create!(category_id: category_99.id, name: "长安之星3", en_name: "长安之星3", keyword: "长安欧尚长安之星3|长安欧尚 长安之星3", status: 0) if Column.find_by(name: "长安之星3", keyword: "长安欧尚长安之星3|长安欧尚 长安之星3").nil?
Column.create!(category_id: category_99.id, name: "长安之星7", en_name: "长安之星7", keyword: "长安欧尚长安之星7|长安欧尚 长安之星7", status: 0) if Column.find_by(name: "长安之星7", keyword: "长安欧尚长安之星7|长安欧尚 长安之星7").nil?
Column.create!(category_id: category_99.id, name: "长安之星9", en_name: "长安之星9", keyword: "长安欧尚长安之星9|长安欧尚 长安之星9", status: 0) if Column.find_by(name: "长安之星9", keyword: "长安欧尚长安之星9|长安欧尚 长安之星9").nil?
Column.create!(category_id: category_99.id, name: "欧力威", en_name: "欧力威", keyword: "长安欧尚欧力威|长安欧尚 欧力威", status: 0) if Column.find_by(name: "欧力威", keyword: "长安欧尚欧力威|长安欧尚 欧力威").nil?
Column.create!(category_id: category_99.id, name: "长安欧尚", en_name: "欧尚", keyword: "长安欧尚|长安欧尚 欧尚", status: 0) if Column.find_by(name: "长安欧尚", keyword: "长安欧尚|长安欧尚 欧尚").nil?
Column.create!(category_id: category_99.id, name: "长安星卡", en_name: "星卡", keyword: "长安欧尚长安星卡|长安欧尚 星卡", status: 0) if Column.find_by(name: "长安星卡", keyword: "长安欧尚长安星卡|长安欧尚 星卡").nil?
Column.create!(category_id: category_99.id, name: "勋龙", en_name: "勋龙", keyword: "长安欧尚勋龙|长安欧尚 勋龙", status: 0) if Column.find_by(name: "勋龙", keyword: "长安欧尚勋龙|长安欧尚 勋龙").nil?
Column.create!(category_id: category_99.id, name: "长安CX70", en_name: "CX70", keyword: "长安欧尚长安CX70|长安欧尚 CX70", status: 0) if Column.find_by(name: "长安CX70", keyword: "长安欧尚长安CX70|长安欧尚 CX70").nil?
Column.create!(category_id: category_99.id, name: "长安镭蒙", en_name: "镭蒙", keyword: "长安欧尚长安镭蒙|长安欧尚 镭蒙", status: 0) if Column.find_by(name: "长安镭蒙", keyword: "长安欧尚长安镭蒙|长安欧尚 镭蒙").nil?
Column.create!(category_id: category_99.id, name: "长安雪虎", en_name: "雪虎", keyword: "长安欧尚长安雪虎|长安欧尚 雪虎", status: 0) if Column.find_by(name: "长安雪虎", keyword: "长安欧尚长安雪虎|长安欧尚 雪虎").nil?
Column.create!(category_id: category_99.id, name: "长安运通", en_name: "运通", keyword: "长安欧尚长安运通|长安欧尚 运通", status: 0) if Column.find_by(name: "长安运通", keyword: "长安欧尚长安运通|长安欧尚 运通").nil?
Column.create!(category_id: category_99.id, name: "长安CM8", en_name: "CM8", keyword: "长安欧尚长安CM8|长安欧尚 CM8", status: 0) if Column.find_by(name: "长安CM8", keyword: "长安欧尚长安CM8|长安欧尚 CM8").nil?
Column.create!(category_id: category_99.id, name: "长城C20R", en_name: "长城C20R", keyword: "长城C20R|长城  长城C20R", status: 0) if Column.find_by(name: "长城C20R", keyword: "长城C20R|长城  长城C20R").nil?
Column.create!(category_id: category_99.id, name: "长城C30", en_name: "长城C30", keyword: "长城C30|长城  长城C30", status: 0) if Column.find_by(name: "长城C30", keyword: "长城C30|长城  长城C30").nil?
Column.create!(category_id: category_99.id, name: "长城C50", en_name: "长城C50", keyword: "长城C50|长城  长城C50", status: 0) if Column.find_by(name: "长城C50", keyword: "长城C50|长城  长城C50").nil?
Column.create!(category_id: category_99.id, name: "长城M2", en_name: "长城M2", keyword: "长城M2|长城  长城M2", status: 0) if Column.find_by(name: "长城M2", keyword: "长城M2|长城  长城M2").nil?
Column.create!(category_id: category_99.id, name: "长城M4", en_name: "长城M4", keyword: "长城M4|长城  长城M4", status: 0) if Column.find_by(name: "长城M4", keyword: "长城M4|长城  长城M4").nil?
Column.create!(category_id: category_99.id, name: "长城V80", en_name: "长城V80", keyword: "长城V80|长城  长城V80", status: 0) if Column.find_by(name: "长城V80", keyword: "长城V80|长城  长城V80").nil?
Column.create!(category_id: category_99.id, name: "风骏5", en_name: "风骏5", keyword: "长城风骏5|长城  风骏5", status: 0) if Column.find_by(name: "风骏5", keyword: "长城风骏5|长城  风骏5").nil?
Column.create!(category_id: category_99.id, name: "风骏6", en_name: "风骏6", keyword: "长城风骏6|长城  风骏6", status: 0) if Column.find_by(name: "风骏6", keyword: "长城风骏6|长城  风骏6").nil?
Column.create!(category_id: category_99.id, name: "风骏房车", en_name: "风骏房车", keyword: "长城风骏房车|长城  风骏房车", status: 0) if Column.find_by(name: "风骏房车", keyword: "长城风骏房车|长城  风骏房车").nil?
Column.create!(category_id: category_99.id, name: "金迪尔", en_name: "金迪尔", keyword: "长城金迪尔|长城  金迪尔", status: 0) if Column.find_by(name: "金迪尔", keyword: "长城金迪尔|长城  金迪尔").nil?
Column.create!(category_id: category_99.id, name: "长城精灵", en_name: "长城精灵", keyword: "长城精灵|长城  长城精灵", status: 0) if Column.find_by(name: "长城精灵", keyword: "长城精灵|长城  长城精灵").nil?
Column.create!(category_id: category_99.id, name: "迪尔", en_name: "迪尔", keyword: "长城迪尔|长城  迪尔", status: 0) if Column.find_by(name: "迪尔", keyword: "长城迪尔|长城  迪尔").nil?
Column.create!(category_id: category_99.id, name: "大脚兽", en_name: "大脚兽", keyword: "长城大脚兽|长城  大脚兽", status: 0) if Column.find_by(name: "大脚兽", keyword: "长城大脚兽|长城  大脚兽").nil?
Column.create!(category_id: category_99.id, name: "酷熊", en_name: "酷熊", keyword: "长城酷熊|长城  酷熊", status: 0) if Column.find_by(name: "酷熊", keyword: "长城酷熊|长城  酷熊").nil?
Column.create!(category_id: category_99.id, name: "凌傲", en_name: "凌傲", keyword: "长城凌傲|长城  凌傲", status: 0) if Column.find_by(name: "凌傲", keyword: "长城凌傲|长城  凌傲").nil?
Column.create!(category_id: category_99.id, name: "赛弗SUV", en_name: "赛弗SUV", keyword: "长城赛弗SUV|长城  赛弗SUV", status: 0) if Column.find_by(name: "赛弗SUV", keyword: "长城赛弗SUV|长城  赛弗SUV").nil?
Column.create!(category_id: category_99.id, name: "赛骏", en_name: "赛骏", keyword: "长城赛骏|长城  赛骏", status: 0) if Column.find_by(name: "赛骏", keyword: "长城赛骏|长城  赛骏").nil?
Column.create!(category_id: category_99.id, name: "赛酷皮卡", en_name: "赛酷皮卡", keyword: "长城赛酷皮卡|长城  赛酷皮卡", status: 0) if Column.find_by(name: "赛酷皮卡", keyword: "长城赛酷皮卡|长城  赛酷皮卡").nil?
Column.create!(category_id: category_99.id, name: "赛铃皮卡", en_name: "赛铃皮卡", keyword: "长城赛铃皮卡|长城  赛铃皮卡", status: 0) if Column.find_by(name: "赛铃皮卡", keyword: "长城赛铃皮卡|长城  赛铃皮卡").nil?
Column.create!(category_id: category_99.id, name: "赛影RUV", en_name: "赛影RUV", keyword: "长城赛影RUV|长城  赛影RUV", status: 0) if Column.find_by(name: "赛影RUV", keyword: "长城赛影RUV|长城  赛影RUV").nil?
Column.create!(category_id: category_99.id, name: "炫丽", en_name: "炫丽", keyword: "长城炫丽|长城  炫丽", status: 0) if Column.find_by(name: "炫丽", keyword: "长城炫丽|长城  炫丽").nil?
Column.create!(category_id: category_99.id, name: "炫丽CROSS", en_name: "炫丽CROSS", keyword: "长城炫丽CROSS|长城  炫丽CROSS", status: 0) if Column.find_by(name: "炫丽CROSS", keyword: "长城炫丽CROSS|长城  炫丽CROSS").nil?
Column.create!(category_id: category_99.id, name: "福瑞达", en_name: "福瑞达", keyword: "昌河福瑞达|昌河 福瑞达", status: 0) if Column.find_by(name: "福瑞达", keyword: "昌河福瑞达|昌河 福瑞达").nil?
Column.create!(category_id: category_99.id, name: "福瑞达M50（停用）", en_name: "福瑞达M50（停用）", keyword: "昌河福瑞达M50（停用）|昌河 福瑞达M50（停用）", status: 0) if Column.find_by(name: "福瑞达M50（停用）", keyword: "昌河福瑞达M50（停用）|昌河 福瑞达M50（停用）").nil?
Column.create!(category_id: category_99.id, name: "昌河M50", en_name: "昌河M50", keyword: "昌河M50|昌河 昌河M50", status: 0) if Column.find_by(name: "昌河M50", keyword: "昌河M50|昌河 昌河M50").nil?
Column.create!(category_id: category_99.id, name: "昌河Q25", en_name: "Q25", keyword: "昌河Q25|昌河 Q25", status: 0) if Column.find_by(name: "昌河Q25", keyword: "昌河Q25|昌河 Q25").nil?
Column.create!(category_id: category_99.id, name: "爱迪尔", en_name: "爱迪尔", keyword: "昌河爱迪尔|昌河 爱迪尔", status: 0) if Column.find_by(name: "爱迪尔", keyword: "昌河爱迪尔|昌河 爱迪尔").nil?
Column.create!(category_id: category_99.id, name: "爱迪尔Ⅱ", en_name: "爱迪尔Ⅱ", keyword: "昌河爱迪尔Ⅱ|昌河 爱迪尔Ⅱ", status: 0) if Column.find_by(name: "爱迪尔Ⅱ", keyword: "昌河爱迪尔Ⅱ|昌河 爱迪尔Ⅱ").nil?
Column.create!(category_id: category_99.id, name: "昌河骏马", en_name: "昌河骏马", keyword: "昌河骏马|昌河 昌河骏马", status: 0) if Column.find_by(name: "昌河骏马", keyword: "昌河骏马|昌河 昌河骏马").nil?
Column.create!(category_id: category_99.id, name: "昌河微型货车", en_name: "昌河微型货车", keyword: "昌河微型货车|昌河 昌河微型货车", status: 0) if Column.find_by(name: "昌河微型货车", keyword: "昌河微型货车|昌河 昌河微型货车").nil?
Column.create!(category_id: category_99.id, name: "昌河新单双排", en_name: "昌河新单双排", keyword: "昌河新单双排|昌河 昌河新单双排", status: 0) if Column.find_by(name: "昌河新单双排", keyword: "昌河新单双排|昌河 昌河新单双排").nil?
Column.create!(category_id: category_99.id, name: "昌铃王", en_name: "昌铃王", keyword: "昌河昌铃王|昌河 昌铃王", status: 0) if Column.find_by(name: "昌铃王", keyword: "昌河昌铃王|昌河 昌铃王").nil?
Column.create!(category_id: category_99.id, name: "福运", en_name: "福运", keyword: "昌河福运|昌河 福运", status: 0) if Column.find_by(name: "福运", keyword: "昌河福运|昌河 福运").nil?
Column.create!(category_id: category_99.id, name: "海豚", en_name: "海豚", keyword: "昌河海豚|昌河 海豚", status: 0) if Column.find_by(name: "海豚", keyword: "昌河海豚|昌河 海豚").nil?
Column.create!(category_id: category_99.id, name: "长安跨越V3", en_name: "跨越V3", keyword: "长安跨越V3|长安跨越 跨越V3", status: 0) if Column.find_by(name: "长安跨越V3", keyword: "长安跨越V3|长安跨越 跨越V3").nil?
Column.create!(category_id: category_99.id, name: "长安跨越V5", en_name: "跨越V5", keyword: "长安跨越V5|长安跨越 跨越V5", status: 0) if Column.find_by(name: "长安跨越V5", keyword: "长安跨越V5|长安跨越 跨越V5").nil?
Column.create!(category_id: category_99.id, name: "长安跨越V5厢式车", en_name: "跨越V5厢式车", keyword: "长安跨越V5厢式车|长安跨越 跨越V5厢式车", status: 0) if Column.find_by(name: "长安跨越V5厢式车", keyword: "长安跨越V5厢式车|长安跨越 跨越V5厢式车").nil?
Column.create!(category_id: category_99.id, name: "长安跨越王", en_name: "跨越王", keyword: "长安跨越王|长安跨越 跨越王", status: 0) if Column.find_by(name: "长安跨越王", keyword: "长安跨越王|长安跨越 跨越王").nil?
Column.create!(category_id: category_99.id, name: "长安新豹2", en_name: "新豹2", keyword: "长安跨越长安新豹2|长安跨越 新豹2", status: 0) if Column.find_by(name: "长安新豹2", keyword: "长安跨越长安新豹2|长安跨越 新豹2").nil?
Column.create!(category_id: category_99.id, name: "长安新豹2厢式车", en_name: "新豹2厢式车", keyword: "长安跨越长安新豹2厢式车|长安跨越 新豹2厢式车", status: 0) if Column.find_by(name: "长安新豹2厢式车", keyword: "长安跨越长安新豹2厢式车|长安跨越 新豹2厢式车").nil?
Column.create!(category_id: category_99.id, name: "长安新豹MINI", en_name: "新豹MINI", keyword: "长安跨越长安新豹MINI|长安跨越 新豹MINI", status: 0) if Column.find_by(name: "长安新豹MINI", keyword: "长安跨越长安新豹MINI|长安跨越 新豹MINI").nil?
Column.create!(category_id: category_99.id, name: "K50", en_name: "K50", keyword: "长城华冠K50|长城华冠 K50", status: 0) if Column.find_by(name: "K50", keyword: "长城华冠K50|长城华冠 K50").nil?
Column.create!(category_id: category_99.id, name: "成功K1", en_name: "K1", keyword: "成功K1|成功 K1", status: 0) if Column.find_by(name: "成功K1", keyword: "成功K1|成功 K1").nil?
Column.create!(category_id: category_99.id, name: "成功K2", en_name: "K2", keyword: "成功K2|成功 K2", status: 0) if Column.find_by(name: "成功K2", keyword: "成功K2|成功 K2").nil?
Column.create!(category_id: category_99.id, name: "成功V1", en_name: "V1", keyword: "成功V1|成功 V1", status: 0) if Column.find_by(name: "成功V1", keyword: "成功V1|成功 V1").nil?
Column.create!(category_id: category_99.id, name: "成功V2", en_name: "V2", keyword: "成功V2|成功 V2", status: 0) if Column.find_by(name: "成功V2", keyword: "成功V2|成功 V2").nil?
Column.create!(category_id: category_99.id, name: "成功X1", en_name: "X1", keyword: "成功X1|成功 X1", status: 0) if Column.find_by(name: "成功X1", keyword: "成功X1|成功 X1").nil?
Column.create!(category_id: category_99.id, name: "长久凯路威", en_name: "长久凯路威", keyword: "长久汽车长久凯路威|长久汽车 长久凯路威", status: 0) if Column.find_by(name: "长久凯路威", keyword: "长久汽车长久凯路威|长久汽车 长久凯路威").nil?
Column.create!(category_id: category_99.id, name: "大众CrossPOLO", en_name: "CrossPOLO", keyword: "大众CrossPOLO|volkswagen CrossPOLO", status: 0) if Column.find_by(name: "大众CrossPOLO", keyword: "大众CrossPOLO|volkswagen CrossPOLO").nil?
Column.create!(category_id: category_99.id, name: "凌渡", en_name: "Lamando", keyword: "大众凌渡|volkswagen Lamando", status: 0) if Column.find_by(name: "凌渡", keyword: "大众凌渡|volkswagen Lamando").nil?
Column.create!(category_id: category_99.id, name: "朗境", en_name: "Cross Lavida", keyword: "大众朗境|volkswagen Cross Lavida", status: 0) if Column.find_by(name: "朗境", keyword: "大众朗境|volkswagen Cross Lavida").nil?
Column.create!(category_id: category_99.id, name: "朗行", en_name: "朗行", keyword: "大众朗行|volkswagen 朗行", status: 0) if Column.find_by(name: "朗行", keyword: "大众朗行|volkswagen 朗行").nil?
Column.create!(category_id: category_99.id, name: "朗逸", en_name: "LAVIDA", keyword: "大众朗逸|volkswagen LAVIDA", status: 0) if Column.find_by(name: "朗逸", keyword: "大众朗逸|volkswagen LAVIDA").nil?
Column.create!(category_id: category_99.id, name: "POLO", en_name: "POLO", keyword: "大众POLO|volkswagen POLO", status: 0) if Column.find_by(name: "POLO", keyword: "大众POLO|volkswagen POLO").nil?
Column.create!(category_id: category_99.id, name: "大众POLO GTI", en_name: "POLO GTI", keyword: "大众POLO GTI|volkswagen POLO GTI", status: 0) if Column.find_by(name: "大众POLO GTI", keyword: "大众POLO GTI|volkswagen POLO GTI").nil?
Column.create!(category_id: category_99.id, name: "帕萨特", en_name: "帕萨特", keyword: "大众帕萨特|volkswagen 帕萨特", status: 0) if Column.find_by(name: "帕萨特", keyword: "大众帕萨特|volkswagen 帕萨特").nil?
Column.create!(category_id: category_99.id, name: "桑塔纳·浩纳", en_name: "桑塔纳·浩纳", keyword: "大众桑塔纳·浩纳|volkswagen 桑塔纳·浩纳", status: 0) if Column.find_by(name: "桑塔纳·浩纳", keyword: "大众桑塔纳·浩纳|volkswagen 桑塔纳·浩纳").nil?
Column.create!(category_id: category_99.id, name: "途安", en_name: "Touran", keyword: "大众途安|volkswagen Touran", status: 0) if Column.find_by(name: "途安", keyword: "大众途安|volkswagen Touran").nil?
Column.create!(category_id: category_99.id, name: "途安L", en_name: "Touran L", keyword: "大众途安L|volkswagen Touran L", status: 0) if Column.find_by(name: "途安L", keyword: "大众途安L|volkswagen Touran L").nil?
Column.create!(category_id: category_99.id, name: "途观", en_name: "tiguan", keyword: "大众途观|volkswagen tiguan", status: 0) if Column.find_by(name: "途观", keyword: "大众途观|volkswagen tiguan").nil?
Column.create!(category_id: category_99.id, name: "桑塔纳", en_name: "桑塔纳", keyword: "大众桑塔纳|volkswagen 桑塔纳", status: 0) if Column.find_by(name: "桑塔纳", keyword: "大众桑塔纳|volkswagen 桑塔纳").nil?
Column.create!(category_id: category_99.id, name: "高尔", en_name: "高尔", keyword: "大众高尔|volkswagen 高尔", status: 0) if Column.find_by(name: "高尔", keyword: "大众高尔|volkswagen 高尔").nil?
Column.create!(category_id: category_99.id, name: "POLO劲取", en_name: "POLO", keyword: "大众POLO劲取|volkswagen POLO", status: 0) if Column.find_by(name: "POLO劲取", keyword: "大众POLO劲取|volkswagen POLO").nil?
Column.create!(category_id: category_99.id, name: "POLO劲情", en_name: "POLO劲情", keyword: "大众POLO劲情|volkswagen POLO劲情", status: 0) if Column.find_by(name: "POLO劲情", keyword: "大众POLO劲情|volkswagen POLO劲情").nil?
Column.create!(category_id: category_99.id, name: "帕萨特领驭", en_name: "Passat", keyword: "大众帕萨特领驭|volkswagen Passat", status: 0) if Column.find_by(name: "帕萨特领驭", keyword: "大众帕萨特领驭|volkswagen Passat").nil?
Column.create!(category_id: category_99.id, name: "桑塔纳2000", en_name: "桑塔纳2000", keyword: "大众桑塔纳2000|volkswagen 桑塔纳2000", status: 0) if Column.find_by(name: "桑塔纳2000", keyword: "大众桑塔纳2000|volkswagen 桑塔纳2000").nil?
Column.create!(category_id: category_99.id, name: "桑塔纳3000", en_name: "桑塔纳3000", keyword: "大众桑塔纳3000|volkswagen 桑塔纳3000", status: 0) if Column.find_by(name: "桑塔纳3000", keyword: "大众桑塔纳3000|volkswagen 桑塔纳3000").nil?
Column.create!(category_id: category_99.id, name: "桑塔纳志俊", en_name: "桑塔纳志俊", keyword: "大众桑塔纳志俊|volkswagen 桑塔纳志俊", status: 0) if Column.find_by(name: "桑塔纳志俊", keyword: "大众桑塔纳志俊|volkswagen 桑塔纳志俊").nil?
Column.create!(category_id: category_99.id, name: "宝来", en_name: "Bora", keyword: "大众宝来|volkswagen Bora", status: 0) if Column.find_by(name: "宝来", keyword: "大众宝来|volkswagen Bora").nil?
Column.create!(category_id: category_99.id, name: "一汽-大众CC", en_name: "CC", keyword: "一汽-大众CC|volkswagen CC", status: 0) if Column.find_by(name: "一汽-大众CC", keyword: "一汽-大众CC|volkswagen CC").nil?
Column.create!(category_id: category_99.id, name: "高尔夫", en_name: "golf", keyword: "大众高尔夫|volkswagen golf", status: 0) if Column.find_by(name: "高尔夫", keyword: "大众高尔夫|volkswagen golf").nil?
Column.create!(category_id: category_99.id, name: "高尔夫GTI", en_name: "golf gti", keyword: "大众高尔夫GTI|volkswagen golf gti", status: 0) if Column.find_by(name: "高尔夫GTI", keyword: "大众高尔夫GTI|volkswagen golf gti").nil?
Column.create!(category_id: category_99.id, name: "捷达", en_name: "jeta", keyword: "大众捷达|volkswagen jeta", status: 0) if Column.find_by(name: "捷达", keyword: "大众捷达|volkswagen jeta").nil?
Column.create!(category_id: category_99.id, name: "迈腾", en_name: "Magotan", keyword: "大众迈腾|volkswagen Magotan", status: 0) if Column.find_by(name: "迈腾", keyword: "大众迈腾|volkswagen Magotan").nil?
Column.create!(category_id: category_99.id, name: "速腾", en_name: "Sagitar", keyword: "大众速腾|volkswagen Sagitar", status: 0) if Column.find_by(name: "速腾", keyword: "大众速腾|volkswagen Sagitar").nil?
Column.create!(category_id: category_99.id, name: "高尔夫·嘉旅", en_name: "Sportsvan", keyword: "大众高尔夫·嘉旅|volkswagen Sportsvan", status: 0) if Column.find_by(name: "高尔夫·嘉旅", keyword: "大众高尔夫·嘉旅|volkswagen Sportsvan").nil?
Column.create!(category_id: category_99.id, name: "宝来两厢", en_name: "Bora hatchback", keyword: "大众宝来两厢|volkswagen Bora hatchback", status: 0) if Column.find_by(name: "宝来两厢", keyword: "大众宝来两厢|volkswagen Bora hatchback").nil?
Column.create!(category_id: category_99.id, name: "开迪", en_name: "Caddy", keyword: "大众开迪|volkswagen Caddy", status: 0) if Column.find_by(name: "开迪", keyword: "大众开迪|volkswagen Caddy").nil?
Column.create!(category_id: category_99.id, name: "Amarok", en_name: "Amarok", keyword: "大众Amarok|volkswagen Amarok", status: 0) if Column.find_by(name: "Amarok", keyword: "大众Amarok|volkswagen Amarok").nil?
Column.create!(category_id: category_99.id, name: "大众electric up!", en_name: "electric up!", keyword: "大众electric up!|volkswagen electric up!", status: 0) if Column.find_by(name: "大众electric up!", keyword: "大众electric up!|volkswagen electric up!").nil?
Column.create!(category_id: category_99.id, name: "Eos", en_name: "Eos", keyword: "大众Eos|volkswagen Eos", status: 0) if Column.find_by(name: "Eos", keyword: "大众Eos|volkswagen Eos").nil?
Column.create!(category_id: category_99.id, name: "Golf Cross", en_name: "Golf Cross", keyword: "大众Golf Cross|volkswagen Golf Cross", status: 0) if Column.find_by(name: "Golf Cross", keyword: "大众Golf Cross|volkswagen Golf Cross").nil?
Column.create!(category_id: category_99.id, name: "Golf GTE", en_name: "Golf GTE", keyword: "大众Golf GTE|volkswagen Golf GTE", status: 0) if Column.find_by(name: "Golf GTE", keyword: "大众Golf GTE|volkswagen Golf GTE").nil?
Column.create!(category_id: category_99.id, name: "高尔夫", en_name: "高尔夫", keyword: "大众高尔夫|volkswagen 高尔夫", status: 0) if Column.find_by(name: "高尔夫", keyword: "大众高尔夫|volkswagen 高尔夫").nil?
Column.create!(category_id: category_99.id, name: "Golf旅行轿车", en_name: "crossgolf", keyword: "大众Golf旅行轿车|volkswagen crossgolf", status: 0) if Column.find_by(name: "Golf旅行轿车", keyword: "大众Golf旅行轿车|volkswagen crossgolf").nil?
Column.create!(category_id: category_99.id, name: "Golf运动型敞篷轿车", en_name: "Golf运动型敞篷轿车", keyword: "大众Golf运动型敞篷轿车|volkswagen Golf运动型敞篷轿车", status: 0) if Column.find_by(name: "Golf运动型敞篷轿车", keyword: "大众Golf运动型敞篷轿车|volkswagen Golf运动型敞篷轿车").nil?
Column.create!(category_id: category_99.id, name: "辉腾", en_name: "Phaeton", keyword: "大众辉腾|volkswagen Phaeton", status: 0) if Column.find_by(name: "辉腾", keyword: "大众辉腾|volkswagen Phaeton").nil?
Column.create!(category_id: category_99.id, name: "甲壳虫", en_name: "Beetle", keyword: "大众甲壳虫|volkswagen Beetle", status: 0) if Column.find_by(name: "甲壳虫", keyword: "大众甲壳虫|volkswagen Beetle").nil?
Column.create!(category_id: category_99.id, name: "凯路威", en_name: "Caravelle", keyword: "大众凯路威|volkswagen Caravelle", status: 0) if Column.find_by(name: "凯路威", keyword: "大众凯路威|volkswagen Caravelle").nil?
Column.create!(category_id: category_99.id, name: "迈腾", en_name: "迈腾", keyword: "大众迈腾|volkswagen 迈腾", status: 0) if Column.find_by(name: "迈腾", keyword: "大众迈腾|volkswagen 迈腾").nil?
Column.create!(category_id: category_99.id, name: "迈特威", en_name: "Multivan", keyword: "大众迈特威|volkswagen Multivan", status: 0) if Column.find_by(name: "迈特威", keyword: "大众迈特威|volkswagen Multivan").nil?
Column.create!(category_id: category_99.id, name: "尚酷", en_name: "Scirocco", keyword: "大众尚酷|volkswagen Scirocco", status: 0) if Column.find_by(name: "尚酷", keyword: "大众尚酷|volkswagen Scirocco").nil?
Column.create!(category_id: category_99.id, name: "大众Sportsvan", en_name: "Sportsvan", keyword: "大众Sportsvan|volkswagen Sportsvan", status: 0) if Column.find_by(name: "大众Sportsvan", keyword: "大众Sportsvan|volkswagen Sportsvan").nil?
Column.create!(category_id: category_99.id, name: "Tiguan", en_name: "Tiguan", keyword: "大众Tiguan|volkswagen Tiguan", status: 0) if Column.find_by(name: "Tiguan", keyword: "大众Tiguan|volkswagen Tiguan").nil?
Column.create!(category_id: category_99.id, name: "途锐", en_name: "Touareg", keyword: "大众途锐|volkswagen Touareg", status: 0) if Column.find_by(name: "途锐", keyword: "大众途锐|volkswagen Touareg").nil?
Column.create!(category_id: category_99.id, name: "大众UP!", en_name: "UP!", keyword: "大众UP!|volkswagen UP!", status: 0) if Column.find_by(name: "大众UP!", keyword: "大众UP!|volkswagen UP!").nil?
Column.create!(category_id: category_99.id, name: "蔚揽", en_name: "Variant", keyword: "大众蔚揽|volkswagen Variant", status: 0) if Column.find_by(name: "蔚揽", keyword: "大众蔚揽|volkswagen Variant").nil?
Column.create!(category_id: category_99.id, name: "夏朗", en_name: "sharan", keyword: "大众夏朗|volkswagen sharan", status: 0) if Column.find_by(name: "夏朗", keyword: "大众夏朗|volkswagen sharan").nil?
Column.create!(category_id: category_99.id, name: "大众C Coupe GTE", en_name: "C Coupe GTE", keyword: "大众C Coupe GTE|volkswagen C Coupe GTE", status: 0) if Column.find_by(name: "大众C Coupe GTE", keyword: "大众C Coupe GTE|volkswagen C Coupe GTE").nil?
Column.create!(category_id: category_99.id, name: "大众T6", en_name: "T6", keyword: "大众T6|volkswagen T6", status: 0) if Column.find_by(name: "大众T6", keyword: "大众T6|volkswagen T6").nil?
Column.create!(category_id: category_99.id, name: "大众PHIDEON", en_name: "Phideon", keyword: "大众PHIDEON|volkswagen Phideon", status: 0) if Column.find_by(name: "大众PHIDEON", keyword: "大众PHIDEON|volkswagen Phideon").nil?
Column.create!(category_id: category_99.id, name: "T-Cross Breeze", en_name: "T-Cross Breeze", keyword: "大众T-Cross Breeze|volkswagen T-Cross Breeze", status: 0) if Column.find_by(name: "T-Cross Breeze", keyword: "大众T-Cross Breeze|volkswagen T-Cross Breeze").nil?
Column.create!(category_id: category_99.id, name: "大众CC", en_name: "CC", keyword: "大众CC|volkswagen CC", status: 0) if Column.find_by(name: "大众CC", keyword: "大众CC|volkswagen CC").nil?
Column.create!(category_id: category_99.id, name: "大众 R36", en_name: "R36", keyword: "大众 R36|volkswagen R36", status: 0) if Column.find_by(name: "大众 R36", keyword: "大众 R36|volkswagen R36").nil?
Column.create!(category_id: category_99.id, name: "高尔夫GTI", en_name: "高尔夫GTI", keyword: "大众高尔夫GTI|volkswagen 高尔夫GTI", status: 0) if Column.find_by(name: "高尔夫GTI", keyword: "大众高尔夫GTI|volkswagen 高尔夫GTI").nil?
Column.create!(category_id: category_99.id, name: "高尔夫Plus", en_name: "高尔夫Plus", keyword: "大众高尔夫Plus|volkswagen 高尔夫Plus", status: 0) if Column.find_by(name: "高尔夫Plus", keyword: "大众高尔夫Plus|volkswagen 高尔夫Plus").nil?
Column.create!(category_id: category_99.id, name: "PASSAT", en_name: "PASSAT", keyword: "大众PASSAT|volkswagen PASSAT", status: 0) if Column.find_by(name: "PASSAT", keyword: "大众PASSAT|volkswagen PASSAT").nil?
Column.create!(category_id: category_99.id, name: "风行CM7", en_name: "CM7", keyword: "东风风行风行CM7|东风风行 CM7", status: 0) if Column.find_by(name: "风行CM7", keyword: "东风风行风行CM7|东风风行 CM7").nil?
Column.create!(category_id: category_99.id, name: "风行S500", en_name: "风行S500", keyword: "东风风行风行S500|东风风行 风行S500", status: 0) if Column.find_by(name: "风行S500", keyword: "东风风行风行S500|东风风行 风行S500").nil?
Column.create!(category_id: category_99.id, name: "景逸", en_name: "景逸", keyword: "东风风行景逸|东风风行 景逸", status: 0) if Column.find_by(name: "景逸", keyword: "东风风行景逸|东风风行 景逸").nil?
Column.create!(category_id: category_99.id, name: "景逸S50", en_name: "景逸S50", keyword: "东风风行景逸S50|东风风行 景逸S50", status: 0) if Column.find_by(name: "景逸S50", keyword: "东风风行景逸S50|东风风行 景逸S50").nil?
Column.create!(category_id: category_99.id, name: "景逸X3", en_name: "景逸X3", keyword: "东风风行景逸X3|东风风行 景逸X3", status: 0) if Column.find_by(name: "景逸X3", keyword: "东风风行景逸X3|东风风行 景逸X3").nil?
Column.create!(category_id: category_99.id, name: "景逸X5", en_name: "景逸X5", keyword: "东风风行景逸X5|东风风行 景逸X5", status: 0) if Column.find_by(name: "景逸X5", keyword: "东风风行景逸X5|东风风行 景逸X5").nil?
Column.create!(category_id: category_99.id, name: "景逸XV", en_name: "景逸XV", keyword: "东风风行景逸XV|东风风行 景逸XV", status: 0) if Column.find_by(name: "景逸XV", keyword: "东风风行景逸XV|东风风行 景逸XV").nil?
Column.create!(category_id: category_99.id, name: "菱智", en_name: "菱智", keyword: "东风风行菱智|东风风行 菱智", status: 0) if Column.find_by(name: "菱智", keyword: "东风风行菱智|东风风行 菱智").nil?
Column.create!(category_id: category_99.id, name: "风行DM5", en_name: "风行DM5", keyword: "东风风行风行DM5|东风风行 风行DM5", status: 0) if Column.find_by(name: "风行DM5", keyword: "东风风行风行DM5|东风风行 风行DM5").nil?
Column.create!(category_id: category_99.id, name: "风行F600", en_name: "风行F600", keyword: "东风风行风行F600|东风风行 风行F600", status: 0) if Column.find_by(name: "风行F600", keyword: "东风风行风行F600|东风风行 风行F600").nil?
Column.create!(category_id: category_99.id, name: "景逸SUV", en_name: "景逸SUV", keyword: "东风风行景逸SUV|东风风行 景逸SUV", status: 0) if Column.find_by(name: "景逸SUV", keyword: "东风风行景逸SUV|东风风行 景逸SUV").nil?
Column.create!(category_id: category_99.id, name: "风神A30", en_name: "A30", keyword: "东风风神风神A30|东风风神 A30", status: 0) if Column.find_by(name: "风神A30", keyword: "东风风神风神A30|东风风神 A30").nil?
Column.create!(category_id: category_99.id, name: "风神A60", en_name: "A60", keyword: "东风风神风神A60|东风风神 A60", status: 0) if Column.find_by(name: "风神A60", keyword: "东风风神风神A60|东风风神 A60").nil?
Column.create!(category_id: category_99.id, name: "风神AX7", en_name: "风神AX7", keyword: "东风风神风神AX7|东风风神 风神AX7", status: 0) if Column.find_by(name: "风神AX7", keyword: "东风风神风神AX7|东风风神 风神AX7").nil?
Column.create!(category_id: category_99.id, name: "风神E30L", en_name: "E30", keyword: "东风风神风神E30L|东风风神 E30", status: 0) if Column.find_by(name: "风神E30L", keyword: "东风风神风神E30L|东风风神 E30").nil?
Column.create!(category_id: category_99.id, name: "风神 H30 Cross", en_name: "风神 H30 Cross", keyword: "东风风神风神 H30 Cross|东风风神 风神 H30 Cross", status: 0) if Column.find_by(name: "风神 H30 Cross", keyword: "东风风神风神 H30 Cross|东风风神 风神 H30 Cross").nil?
Column.create!(category_id: category_99.id, name: "风神AX3", en_name: "风神AX3", keyword: "东风风神风神AX3|东风风神 风神AX3", status: 0) if Column.find_by(name: "风神AX3", keyword: "东风风神风神AX3|东风风神 风神AX3").nil?
Column.create!(category_id: category_99.id, name: "风神H30", en_name: "H30", keyword: "东风风神风神H30|东风风神 H30", status: 0) if Column.find_by(name: "风神H30", keyword: "东风风神风神H30|东风风神 H30").nil?
Column.create!(category_id: category_99.id, name: "风神L60", en_name: "L60", keyword: "东风风神风神L60|东风风神 L60", status: 0) if Column.find_by(name: "风神L60", keyword: "东风风神风神L60|东风风神 L60").nil?
Column.create!(category_id: category_99.id, name: "风神S30", en_name: "S30", keyword: "东风风神风神S30|东风风神 S30", status: 0) if Column.find_by(name: "风神S30", keyword: "东风风神风神S30|东风风神 S30").nil?
Column.create!(category_id: category_99.id, name: "东风A9", en_name: "东风A9", keyword: "东风风神东风A9|东风风神 东风A9", status: 0) if Column.find_by(name: "东风A9", keyword: "东风风神东风A9|东风风神 东风A9").nil?
Column.create!(category_id: category_99.id, name: "得利卡", en_name: "得利卡", keyword: "东南得利卡|东南 得利卡", status: 0) if Column.find_by(name: "得利卡", keyword: "东南得利卡|东南 得利卡").nil?
Column.create!(category_id: category_99.id, name: "东南DX7", en_name: "东南DX7", keyword: "东南DX7|东南 东南DX7", status: 0) if Column.find_by(name: "东南DX7", keyword: "东南DX7|东南 东南DX7").nil?
Column.create!(category_id: category_99.id, name: "东南V CROSS", en_name: "东南V CROSS", keyword: "东南V CROSS|东南 东南V CROSS", status: 0) if Column.find_by(name: "东南V CROSS", keyword: "东南V CROSS|东南 东南V CROSS").nil?
Column.create!(category_id: category_99.id, name: "V3菱悦", en_name: "V3菱悦", keyword: "东南V3菱悦|东南 V3菱悦", status: 0) if Column.find_by(name: "V3菱悦", keyword: "东南V3菱悦|东南 V3菱悦").nil?
Column.create!(category_id: category_99.id, name: "V5菱致", en_name: "V5菱致", keyword: "东南V5菱致|东南 V5菱致", status: 0) if Column.find_by(name: "V5菱致", keyword: "东南V5菱致|东南 V5菱致").nil?
Column.create!(category_id: category_99.id, name: "V6菱仕", en_name: "V6菱仕", keyword: "东南V6菱仕|东南 V6菱仕", status: 0) if Column.find_by(name: "V6菱仕", keyword: "东南V6菱仕|东南 V6菱仕").nil?
Column.create!(category_id: category_99.id, name: "希旺", en_name: "希旺", keyword: "东南希旺|东南 希旺", status: 0) if Column.find_by(name: "希旺", keyword: "东南希旺|东南 希旺").nil?
Column.create!(category_id: category_99.id, name: "富利卡", en_name: "富利卡", keyword: "东南富利卡|东南 富利卡", status: 0) if Column.find_by(name: "富利卡", keyword: "东南富利卡|东南 富利卡").nil?
Column.create!(category_id: category_99.id, name: "菱利", en_name: "菱利", keyword: "东南菱利|东南 菱利", status: 0) if Column.find_by(name: "菱利", keyword: "东南菱利|东南 菱利").nil?
Column.create!(category_id: category_99.id, name: "菱帅", en_name: "菱帅", keyword: "东南菱帅|东南 菱帅", status: 0) if Column.find_by(name: "菱帅", keyword: "东南菱帅|东南 菱帅").nil?
Column.create!(category_id: category_99.id, name: "风光330", en_name: "风光330", keyword: "东风风光风光330|东风风光 风光330", status: 0) if Column.find_by(name: "风光330", keyword: "东风风光风光330|东风风光 风光330").nil?
Column.create!(category_id: category_99.id, name: "风光360", en_name: "风光360", keyword: "东风风光风光360|东风风光 风光360", status: 0) if Column.find_by(name: "风光360", keyword: "东风风光风光360|东风风光 风光360").nil?
Column.create!(category_id: category_99.id, name: "风光370", en_name: "风光370", keyword: "东风风光风光370|东风风光 风光370", status: 0) if Column.find_by(name: "风光370", keyword: "东风风光风光370|东风风光 风光370").nil?
Column.create!(category_id: category_99.id, name: "风光580", en_name: "风光580", keyword: "东风风光风光580|东风风光 风光580", status: 0) if Column.find_by(name: "风光580", keyword: "东风风光风光580|东风风光 风光580").nil?
Column.create!(category_id: category_99.id, name: "凯领", en_name: "凯领", keyword: "道奇凯领|dodge 凯领", status: 0) if Column.find_by(name: "凯领", keyword: "道奇凯领|dodge 凯领").nil?
Column.create!(category_id: category_99.id, name: "Charger", en_name: "Charger", keyword: "道奇Charger|dodge Charger", status: 0) if Column.find_by(name: "Charger", keyword: "道奇Charger|dodge Charger").nil?
Column.create!(category_id: category_99.id, name: "公羊", en_name: "gam", keyword: "道奇公羊|dodge gam", status: 0) if Column.find_by(name: "公羊", keyword: "道奇公羊|dodge gam").nil?
Column.create!(category_id: category_99.id, name: "酷搏", en_name: "Caliber", keyword: "道奇酷搏|dodge Caliber", status: 0) if Column.find_by(name: "酷搏", keyword: "道奇酷搏|dodge Caliber").nil?
Column.create!(category_id: category_99.id, name: "酷威", en_name: "Journey", keyword: "道奇酷威|dodge Journey", status: 0) if Column.find_by(name: "酷威", keyword: "道奇酷威|dodge Journey").nil?
Column.create!(category_id: category_99.id, name: "挑战者", en_name: "challenger", keyword: "道奇挑战者|dodge challenger", status: 0) if Column.find_by(name: "挑战者", keyword: "道奇挑战者|dodge challenger").nil?
Column.create!(category_id: category_99.id, name: "Durango", en_name: "Durango", keyword: "道奇Durango|dodge Durango", status: 0) if Column.find_by(name: "Durango", keyword: "道奇Durango|dodge Durango").nil?
Column.create!(category_id: category_99.id, name: "蝰蛇", en_name: "Viper", keyword: "道奇蝰蛇|dodge Viper", status: 0) if Column.find_by(name: "蝰蛇", keyword: "道奇蝰蛇|dodge Viper").nil?
Column.create!(category_id: category_99.id, name: "锋哲", en_name: "锋哲", keyword: "道奇锋哲|dodge 锋哲", status: 0) if Column.find_by(name: "锋哲", keyword: "道奇锋哲|dodge 锋哲").nil?
Column.create!(category_id: category_99.id, name: "凯领", en_name: "凯领", keyword: "道奇凯领|dodge 凯领", status: 0) if Column.find_by(name: "凯领", keyword: "道奇凯领|dodge 凯领").nil?
Column.create!(category_id: category_99.id, name: "拓荒者", en_name: "拓荒者", keyword: "道奇拓荒者|dodge 拓荒者", status: 0) if Column.find_by(name: "拓荒者", keyword: "道奇拓荒者|dodge 拓荒者").nil?
Column.create!(category_id: category_99.id, name: "翼龙", en_name: "翼龙", keyword: "道奇翼龙|dodge 翼龙", status: 0) if Column.find_by(name: "翼龙", keyword: "道奇翼龙|dodge 翼龙").nil?
Column.create!(category_id: category_99.id, name: "DS 5", en_name: "DS 5", keyword: "DS 5|DS DS 5", status: 0) if Column.find_by(name: "DS 5", keyword: "DS 5|DS DS 5").nil?
Column.create!(category_id: category_99.id, name: "DS 5LS", en_name: "DS 5LS", keyword: "DS 5LS|DS DS 5LS", status: 0) if Column.find_by(name: "DS 5LS", keyword: "DS 5LS|DS DS 5LS").nil?
Column.create!(category_id: category_99.id, name: "DS 6", en_name: "DS 6", keyword: "DS 6|DS DS 6", status: 0) if Column.find_by(name: "DS 6", keyword: "DS 6|DS DS 6").nil?
Column.create!(category_id: category_99.id, name: "DS 4S", en_name: "DS 4S", keyword: "DS 4S|DS DS 4S", status: 0) if Column.find_by(name: "DS 4S", keyword: "DS 4S|DS DS 4S").nil?
Column.create!(category_id: category_99.id, name: "DS 3", en_name: "DS 3", keyword: "DS 3|DS DS 3", status: 0) if Column.find_by(name: "DS 3", keyword: "DS 3|DS DS 3").nil?
Column.create!(category_id: category_99.id, name: "DS 4", en_name: "DS 4", keyword: "DS 4|DS DS 4", status: 0) if Column.find_by(name: "DS 4", keyword: "DS 4|DS DS 4").nil?
Column.create!(category_id: category_99.id, name: "DS 5", en_name: "DS 5", keyword: "DS 5|DS DS 5", status: 0) if Column.find_by(name: "DS 5", keyword: "DS 5|DS DS 5").nil?
Column.create!(category_id: category_99.id, name: "东风小康C31", en_name: "C31", keyword: "东风小康C31|东风小康 C31", status: 0) if Column.find_by(name: "东风小康C31", keyword: "东风小康C31|东风小康 C31").nil?
Column.create!(category_id: category_99.id, name: "东风小康C32", en_name: "C32", keyword: "东风小康C32|东风小康 C32", status: 0) if Column.find_by(name: "东风小康C32", keyword: "东风小康C32|东风小康 C32").nil?
Column.create!(category_id: category_99.id, name: "东风小康C35", en_name: "C35", keyword: "东风小康C35|东风小康 C35", status: 0) if Column.find_by(name: "东风小康C35", keyword: "东风小康C35|东风小康 C35").nil?
Column.create!(category_id: category_99.id, name: "东风小康C36", en_name: "C36", keyword: "东风小康C36|东风小康 C36", status: 0) if Column.find_by(name: "东风小康C36", keyword: "东风小康C36|东风小康 C36").nil?
Column.create!(category_id: category_99.id, name: "东风小康C37", en_name: "C37", keyword: "东风小康C37|东风小康 C37", status: 0) if Column.find_by(name: "东风小康C37", keyword: "东风小康C37|东风小康 C37").nil?
Column.create!(category_id: category_99.id, name: "东风小康K01", en_name: "K01", keyword: "东风小康K01|东风小康 K01", status: 0) if Column.find_by(name: "东风小康K01", keyword: "东风小康K01|东风小康 K01").nil?
Column.create!(category_id: category_99.id, name: "东风小康K02", en_name: "K02", keyword: "东风小康K02|东风小康 K02", status: 0) if Column.find_by(name: "东风小康K02", keyword: "东风小康K02|东风小康 K02").nil?
Column.create!(category_id: category_99.id, name: "东风小康K07", en_name: "K07", keyword: "东风小康K07|东风小康 K07", status: 0) if Column.find_by(name: "东风小康K07", keyword: "东风小康K07|东风小康 K07").nil?
Column.create!(category_id: category_99.id, name: "东风小康K07Ⅱ", en_name: "K07Ⅱ", keyword: "东风小康K07Ⅱ|东风小康 K07Ⅱ", status: 0) if Column.find_by(name: "东风小康K07Ⅱ", keyword: "东风小康K07Ⅱ|东风小康 K07Ⅱ").nil?
Column.create!(category_id: category_99.id, name: "小康K07S", en_name: "K07S", keyword: "东风小康小康K07S|东风小康 K07S", status: 0) if Column.find_by(name: "小康K07S", keyword: "东风小康小康K07S|东风小康 K07S").nil?
Column.create!(category_id: category_99.id, name: "东风小康K17", en_name: "K17", keyword: "东风小康K17|东风小康 K17", status: 0) if Column.find_by(name: "东风小康K17", keyword: "东风小康K17|东风小康 K17").nil?
Column.create!(category_id: category_99.id, name: "东风小康V07s", en_name: "V07s", keyword: "东风小康V07s|东风小康 V07s", status: 0) if Column.find_by(name: "东风小康V07s", keyword: "东风小康V07s|东风小康 V07s").nil?
Column.create!(category_id: category_99.id, name: "东风小康V22", en_name: "V22", keyword: "东风小康V22|东风小康 V22", status: 0) if Column.find_by(name: "东风小康V22", keyword: "东风小康V22|东风小康 V22").nil?
Column.create!(category_id: category_99.id, name: "东风小康V26", en_name: "V26", keyword: "东风小康V26|东风小康 V26", status: 0) if Column.find_by(name: "东风小康V26", keyword: "东风小康V26|东风小康 V26").nil?
Column.create!(category_id: category_99.id, name: "东风小康V27", en_name: "V27", keyword: "东风小康V27|东风小康 V27", status: 0) if Column.find_by(name: "东风小康V27", keyword: "东风小康V27|东风小康 V27").nil?
Column.create!(category_id: category_99.id, name: "东风小康V29", en_name: "V29", keyword: "东风小康V29|东风小康 V29", status: 0) if Column.find_by(name: "东风小康V29", keyword: "东风小康V29|东风小康 V29").nil?
Column.create!(category_id: category_99.id, name: "东风小康V21", en_name: "V21", keyword: "东风小康V21|东风小康 V21", status: 0) if Column.find_by(name: "东风小康V21", keyword: "东风小康V21|东风小康 V21").nil?
Column.create!(category_id: category_99.id, name: "奥丁", en_name: "奥丁", keyword: "东风·郑州日产奥丁|东风·郑州日产 奥丁", status: 0) if Column.find_by(name: "奥丁", keyword: "东风·郑州日产奥丁|东风·郑州日产 奥丁").nil?
Column.create!(category_id: category_99.id, name: "俊风", en_name: "俊风", keyword: "东风·郑州日产俊风|东风·郑州日产 俊风", status: 0) if Column.find_by(name: "俊风", keyword: "东风·郑州日产俊风|东风·郑州日产 俊风").nil?
Column.create!(category_id: category_99.id, name: "锐骐皮卡", en_name: "锐骐皮卡", keyword: "东风·郑州日产锐骐皮卡|东风·郑州日产 锐骐皮卡", status: 0) if Column.find_by(name: "锐骐皮卡", keyword: "东风·郑州日产锐骐皮卡|东风·郑州日产 锐骐皮卡").nil?
Column.create!(category_id: category_99.id, name: "锐骐厢式车", en_name: "锐骐厢式车", keyword: "东风·郑州日产锐骐厢式车|东风·郑州日产 锐骐厢式车", status: 0) if Column.find_by(name: "锐骐厢式车", keyword: "东风·郑州日产锐骐厢式车|东风·郑州日产 锐骐厢式车").nil?
Column.create!(category_id: category_99.id, name: "帅客", en_name: "帅客", keyword: "东风·郑州日产帅客|东风·郑州日产 帅客", status: 0) if Column.find_by(name: "帅客", keyword: "东风·郑州日产帅客|东风·郑州日产 帅客").nil?
Column.create!(category_id: category_99.id, name: "御轩", en_name: "御轩", keyword: "东风·郑州日产御轩|东风·郑州日产 御轩", status: 0) if Column.find_by(name: "御轩", keyword: "东风·郑州日产御轩|东风·郑州日产 御轩").nil?
Column.create!(category_id: category_99.id, name: "东风御风服务系列", en_name: "东风御风服务系列", keyword: "东风御风服务系列|东风御风 东风御风服务系列", status: 0) if Column.find_by(name: "东风御风服务系列", keyword: "东风御风服务系列|东风御风 东风御风服务系列").nil?
Column.create!(category_id: category_99.id, name: "东风御风工程系列", en_name: "东风御风工程系列", keyword: "东风御风工程系列|东风御风 东风御风工程系列", status: 0) if Column.find_by(name: "东风御风工程系列", keyword: "东风御风工程系列|东风御风 东风御风工程系列").nil?
Column.create!(category_id: category_99.id, name: "东风御风检测系列", en_name: "东风御风检测系列", keyword: "东风御风检测系列|东风御风 东风御风检测系列", status: 0) if Column.find_by(name: "东风御风检测系列", keyword: "东风御风检测系列|东风御风 东风御风检测系列").nil?
Column.create!(category_id: category_99.id, name: "东风御风警用系列", en_name: "东风御风警用系列", keyword: "东风御风警用系列|东风御风 东风御风警用系列", status: 0) if Column.find_by(name: "东风御风警用系列", keyword: "东风御风警用系列|东风御风 东风御风警用系列").nil?
Column.create!(category_id: category_99.id, name: "东风御风领航版", en_name: "东风御风领航版", keyword: "东风御风领航版|东风御风 东风御风领航版", status: 0) if Column.find_by(name: "东风御风领航版", keyword: "东风御风领航版|东风御风 东风御风领航版").nil?
Column.create!(category_id: category_99.id, name: "东风御风旅居车", en_name: "东风御风旅居车", keyword: "东风御风旅居车|东风御风 东风御风旅居车", status: 0) if Column.find_by(name: "东风御风旅居车", keyword: "东风御风旅居车|东风御风 东风御风旅居车").nil?
Column.create!(category_id: category_99.id, name: "东风御风冷链系列", en_name: "东风御风冷链系列", keyword: "东风御风冷链系列|东风御风 东风御风冷链系列", status: 0) if Column.find_by(name: "东风御风冷链系列", keyword: "东风御风冷链系列|东风御风 东风御风冷链系列").nil?
Column.create!(category_id: category_99.id, name: "东风御风领运版", en_name: "东风御风领运版", keyword: "东风御风领运版|东风御风 东风御风领运版", status: 0) if Column.find_by(name: "东风御风领运版", keyword: "东风御风领运版|东风御风 东风御风领运版").nil?
Column.create!(category_id: category_99.id, name: "东风御风领御版", en_name: "东风御风领御版", keyword: "东风御风领御版|东风御风 东风御风领御版", status: 0) if Column.find_by(name: "东风御风领御版", keyword: "东风御风领御版|东风御风 东风御风领御版").nil?
Column.create!(category_id: category_99.id, name: "东风御风领尊版", en_name: "东风御风领尊版", keyword: "东风御风领尊版|东风御风 东风御风领尊版", status: 0) if Column.find_by(name: "东风御风领尊版", keyword: "东风御风领尊版|东风御风 东风御风领尊版").nil?
Column.create!(category_id: category_99.id, name: "东风御风医疗系列", en_name: "东风御风医疗系列", keyword: "东风御风医疗系列|东风御风 东风御风医疗系列", status: 0) if Column.find_by(name: "东风御风医疗系列", keyword: "东风御风医疗系列|东风御风 东风御风医疗系列").nil?
Column.create!(category_id: category_99.id, name: "东风御风邮政系列", en_name: "东风御风邮政系列", keyword: "东风御风邮政系列|东风御风 东风御风邮政系列", status: 0) if Column.find_by(name: "东风御风邮政系列", keyword: "东风御风邮政系列|东风御风 东风御风邮政系列").nil?
Column.create!(category_id: category_99.id, name: "御风物流车", en_name: "御风物流车", keyword: "东风御风御风物流车|东风御风 御风物流车", status: 0) if Column.find_by(name: "御风物流车", keyword: "东风御风御风物流车|东风御风 御风物流车").nil?
Column.create!(category_id: category_99.id, name: "御风载客车", en_name: "御风载客车", keyword: "东风御风御风载客车|东风御风 御风载客车", status: 0) if Column.find_by(name: "御风载客车", keyword: "东风御风御风载客车|东风御风 御风载客车").nil?
Column.create!(category_id: category_99.id, name: "风度MX6", en_name: "MX6", keyword: "东风风度风度MX6|东风风度 MX6", status: 0) if Column.find_by(name: "风度MX6", keyword: "东风风度风度MX6|东风风度 MX6").nil?
Column.create!(category_id: category_99.id, name: "东风小王子", en_name: "东风小王子", keyword: "东风小王子|东风 东风小王子", status: 0) if Column.find_by(name: "东风小王子", keyword: "东风小王子|东风 东风小王子").nil?
Column.create!(category_id: category_99.id, name: "虎视", en_name: "虎视", keyword: "东风虎视|东风 虎视", status: 0) if Column.find_by(name: "虎视", keyword: "东风虎视|东风 虎视").nil?
Column.create!(category_id: category_99.id, name: "猛士", en_name: "猛士", keyword: "东风猛士|东风 猛士", status: 0) if Column.find_by(name: "猛士", keyword: "东风猛士|东风 猛士").nil?
Column.create!(category_id: category_99.id, name: "桑蒂雅", en_name: "桑蒂雅", keyword: "东风桑蒂雅|东风 桑蒂雅", status: 0) if Column.find_by(name: "桑蒂雅", keyword: "东风桑蒂雅|东风 桑蒂雅").nil?
Column.create!(category_id: category_99.id, name: "东风EQ6580ST系列", en_name: "东风EQ6580ST系列", keyword: "东风EQ6580ST系列|东风 东风EQ6580ST系列", status: 0) if Column.find_by(name: "东风EQ6580ST系列", keyword: "东风EQ6580ST系列|东风 东风EQ6580ST系列").nil?
Column.create!(category_id: category_99.id, name: "马蒂兹", en_name: "马蒂兹", keyword: "大宇马蒂兹|Daewoo 马蒂兹", status: 0) if Column.find_by(name: "马蒂兹", keyword: "大宇马蒂兹|Daewoo 马蒂兹").nil?
Column.create!(category_id: category_99.id, name: "大宇典雅", en_name: "典雅", keyword: "大宇典雅|Daewoo 典雅", status: 0) if Column.find_by(name: "大宇典雅", keyword: "大宇典雅|Daewoo 典雅").nil?
Column.create!(category_id: category_99.id, name: "大宇贵族2000型", en_name: "贵族2000型", keyword: "大宇贵族2000型|Daewoo 贵族2000型", status: 0) if Column.find_by(name: "大宇贵族2000型", keyword: "大宇贵族2000型|Daewoo 贵族2000型").nil?
Column.create!(category_id: category_99.id, name: "大宇蓝龙", en_name: "蓝龙", keyword: "大宇蓝龙|Daewoo 蓝龙", status: 0) if Column.find_by(name: "大宇蓝龙", keyword: "大宇蓝龙|Daewoo 蓝龙").nil?
Column.create!(category_id: category_99.id, name: "大宇蓝天(爱斯皮罗)", en_name: "蓝天", keyword: "大宇蓝天(爱斯皮罗)|Daewoo 蓝天", status: 0) if Column.find_by(name: "大宇蓝天(爱斯皮罗)", keyword: "大宇蓝天(爱斯皮罗)|Daewoo 蓝天").nil?
Column.create!(category_id: category_99.id, name: "大宇旅行家", en_name: "旅行家", keyword: "大宇旅行家|Daewoo 旅行家", status: 0) if Column.find_by(name: "大宇旅行家", keyword: "大宇旅行家|Daewoo 旅行家").nil?
Column.create!(category_id: category_99.id, name: "大宇赛手(雷瑟)", en_name: "赛手", keyword: "大宇赛手(雷瑟)|Daewoo 赛手", status: 0) if Column.find_by(name: "大宇赛手(雷瑟)", keyword: "大宇赛手(雷瑟)|Daewoo 赛手").nil?
Column.create!(category_id: category_99.id, name: "奥顺皮卡", en_name: "奥顺皮卡", keyword: "大迪奥顺皮卡|大迪 奥顺皮卡", status: 0) if Column.find_by(name: "奥顺皮卡", keyword: "大迪奥顺皮卡|大迪 奥顺皮卡").nil?
Column.create!(category_id: category_99.id, name: "大迪霸道SUV", en_name: "大迪霸道SUV", keyword: "大迪霸道SUV|大迪 大迪霸道SUV", status: 0) if Column.find_by(name: "大迪霸道SUV", keyword: "大迪霸道SUV|大迪 大迪霸道SUV").nil?
Column.create!(category_id: category_99.id, name: "大迪皮卡", en_name: "大迪皮卡", keyword: "大迪皮卡|大迪 大迪皮卡", status: 0) if Column.find_by(name: "大迪皮卡", keyword: "大迪皮卡|大迪 大迪皮卡").nil?
Column.create!(category_id: category_99.id, name: "都市骏马SUV", en_name: "都市骏马SUV", keyword: "大迪都市骏马SUV|大迪 都市骏马SUV", status: 0) if Column.find_by(name: "都市骏马SUV", keyword: "大迪都市骏马SUV|大迪 都市骏马SUV").nil?
Column.create!(category_id: category_99.id, name: "都市威菱SUV", en_name: "都市威菱SUV", keyword: "大迪都市威菱SUV|大迪 都市威菱SUV", status: 0) if Column.find_by(name: "都市威菱SUV", keyword: "大迪都市威菱SUV|大迪 都市威菱SUV").nil?
Column.create!(category_id: category_99.id, name: "福顺皮卡", en_name: "福顺皮卡", keyword: "大迪福顺皮卡|大迪 福顺皮卡", status: 0) if Column.find_by(name: "福顺皮卡", keyword: "大迪福顺皮卡|大迪 福顺皮卡").nil?
Column.create!(category_id: category_99.id, name: "豪顺皮卡", en_name: "豪顺皮卡", keyword: "大迪豪顺皮卡|大迪 豪顺皮卡", status: 0) if Column.find_by(name: "豪顺皮卡", keyword: "大迪豪顺皮卡|大迪 豪顺皮卡").nil?
Column.create!(category_id: category_99.id, name: "顺驰皮卡", en_name: "顺驰皮卡", keyword: "大迪顺驰皮卡|大迪 顺驰皮卡", status: 0) if Column.find_by(name: "顺驰皮卡", keyword: "大迪顺驰皮卡|大迪 顺驰皮卡").nil?
Column.create!(category_id: category_99.id, name: "汉兰达", en_name: "Highlander", keyword: "丰田汉兰达|toyota Highlander", status: 0) if Column.find_by(name: "汉兰达", keyword: "丰田汉兰达|toyota Highlander").nil?
Column.create!(category_id: category_99.id, name: "凯美瑞", en_name: "camary", keyword: "丰田凯美瑞|toyota camary", status: 0) if Column.find_by(name: "凯美瑞", keyword: "丰田凯美瑞|toyota camary").nil?
Column.create!(category_id: category_99.id, name: "雷凌", en_name: "LEVIN", keyword: "丰田雷凌|toyota LEVIN", status: 0) if Column.find_by(name: "雷凌", keyword: "丰田雷凌|toyota LEVIN").nil?
Column.create!(category_id: category_99.id, name: "雷凌双擎", en_name: "LEVIN hybird", keyword: "丰田雷凌双擎|toyota LEVIN hybird", status: 0) if Column.find_by(name: "雷凌双擎", keyword: "丰田雷凌双擎|toyota LEVIN hybird").nil?
Column.create!(category_id: category_99.id, name: "YARiS L 致炫", en_name: "YARiS L", keyword: "丰田YARiS L 致炫|toyota YARiS L", status: 0) if Column.find_by(name: "YARiS L 致炫", keyword: "丰田YARiS L 致炫|toyota YARiS L").nil?
Column.create!(category_id: category_99.id, name: "雅力士", en_name: "YARiS", keyword: "丰田雅力士|toyota YARiS", status: 0) if Column.find_by(name: "雅力士", keyword: "丰田雅力士|toyota YARiS").nil?
Column.create!(category_id: category_99.id, name: "逸致", en_name: "ez", keyword: "丰田逸致|toyota ez", status: 0) if Column.find_by(name: "逸致", keyword: "丰田逸致|toyota ez").nil?
Column.create!(category_id: category_99.id, name: "凯美瑞Hybrid", en_name: "camary hybird", keyword: "丰田凯美瑞Hybrid|toyota camary hybird", status: 0) if Column.find_by(name: "凯美瑞Hybrid", keyword: "丰田凯美瑞Hybrid|toyota camary hybird").nil?
Column.create!(category_id: category_99.id, name: "皇冠", en_name: "CROWN", keyword: "丰田皇冠|toyota CROWN", status: 0) if Column.find_by(name: "皇冠", keyword: "丰田皇冠|toyota CROWN").nil?
Column.create!(category_id: category_99.id, name: "花冠", en_name: "COROLLA ex", keyword: "丰田花冠|toyota COROLLA ex", status: 0) if Column.find_by(name: "花冠", keyword: "丰田花冠|toyota COROLLA ex").nil?
Column.create!(category_id: category_99.id, name: "卡罗拉", en_name: "Corolla", keyword: "丰田卡罗拉|toyota Corolla", status: 0) if Column.find_by(name: "卡罗拉", keyword: "丰田卡罗拉|toyota Corolla").nil?
Column.create!(category_id: category_99.id, name: "卡罗拉双擎", en_name: "卡罗拉双擎", keyword: "丰田卡罗拉双擎|toyota 卡罗拉双擎", status: 0) if Column.find_by(name: "卡罗拉双擎", keyword: "丰田卡罗拉双擎|toyota 卡罗拉双擎").nil?
Column.create!(category_id: category_99.id, name: "柯斯达", en_name: "COASTER", keyword: "丰田柯斯达|toyota COASTER", status: 0) if Column.find_by(name: "柯斯达", keyword: "丰田柯斯达|toyota COASTER").nil?
Column.create!(category_id: category_99.id, name: "兰德酷路泽", en_name: "LAND CRUISER", keyword: "丰田兰德酷路泽|toyota LAND CRUISER", status: 0) if Column.find_by(name: "兰德酷路泽", keyword: "丰田兰德酷路泽|toyota LAND CRUISER").nil?
Column.create!(category_id: category_99.id, name: "普拉多", en_name: "PRADO", keyword: "丰田普拉多|toyota PRADO", status: 0) if Column.find_by(name: "普拉多", keyword: "丰田普拉多|toyota PRADO").nil?
Column.create!(category_id: category_99.id, name: "普锐斯", en_name: "prius", keyword: "丰田普锐斯|toyota prius", status: 0) if Column.find_by(name: "普锐斯", keyword: "丰田普锐斯|toyota prius").nil?
Column.create!(category_id: category_99.id, name: "RAV4荣放", en_name: "rav4", keyword: "丰田RAV4荣放|toyota rav4", status: 0) if Column.find_by(name: "RAV4荣放", keyword: "丰田RAV4荣放|toyota rav4").nil?
Column.create!(category_id: category_99.id, name: "锐志", en_name: "REIZ", keyword: "丰田锐志|toyota REIZ", status: 0) if Column.find_by(name: "锐志", keyword: "丰田锐志|toyota REIZ").nil?
Column.create!(category_id: category_99.id, name: "威驰", en_name: "Vios", keyword: "丰田威驰|toyota Vios", status: 0) if Column.find_by(name: "威驰", keyword: "丰田威驰|toyota Vios").nil?
Column.create!(category_id: category_99.id, name: "陆地巡洋舰", en_name: "陆地巡洋舰", keyword: "丰田陆地巡洋舰|toyota 陆地巡洋舰", status: 0) if Column.find_by(name: "陆地巡洋舰", keyword: "丰田陆地巡洋舰|toyota 陆地巡洋舰").nil?
Column.create!(category_id: category_99.id, name: "特锐", en_name: "terios", keyword: "丰田特锐|toyota terios", status: 0) if Column.find_by(name: "特锐", keyword: "丰田特锐|toyota terios").nil?
Column.create!(category_id: category_99.id, name: "埃尔法", en_name: "alphard", keyword: "丰田埃尔法|toyota alphard", status: 0) if Column.find_by(name: "埃尔法", keyword: "丰田埃尔法|toyota alphard").nil?
Column.create!(category_id: category_99.id, name: "奔跑者", en_name: "Fortuner", keyword: "丰田奔跑者|toyota Fortuner", status: 0) if Column.find_by(name: "奔跑者", keyword: "丰田奔跑者|toyota Fortuner").nil?
Column.create!(category_id: category_99.id, name: "FJ酷路泽", en_name: "Fj CRUISER", keyword: "丰田FJ酷路泽|toyota Fj CRUISER", status: 0) if Column.find_by(name: "FJ酷路泽", keyword: "丰田FJ酷路泽|toyota Fj CRUISER").nil?
Column.create!(category_id: category_99.id, name: "丰田86", en_name: "86", keyword: "丰田86|toyota 86", status: 0) if Column.find_by(name: "丰田86", keyword: "丰田86|toyota 86").nil?
Column.create!(category_id: category_99.id, name: "红杉", en_name: "sequoia", keyword: "丰田红杉|toyota sequoia", status: 0) if Column.find_by(name: "红杉", keyword: "丰田红杉|toyota sequoia").nil?
Column.create!(category_id: category_99.id, name: "丰田海狮", en_name: "hiace", keyword: "丰田海狮|toyota hiace", status: 0) if Column.find_by(name: "丰田海狮", keyword: "丰田海狮|toyota hiace").nil?
Column.create!(category_id: category_99.id, name: "杰路驰", en_name: "Scion tC", keyword: "丰田杰路驰|toyota Scion tC", status: 0) if Column.find_by(name: "杰路驰", keyword: "丰田杰路驰|toyota Scion tC").nil?
Column.create!(category_id: category_99.id, name: "考斯特", en_name: "COASTER", keyword: "丰田考斯特|toyota COASTER", status: 0) if Column.find_by(name: "考斯特", keyword: "丰田考斯特|toyota COASTER").nil?
Column.create!(category_id: category_99.id, name: "陆地巡洋舰", en_name: "陆地巡洋舰", keyword: "丰田陆地巡洋舰|toyota 陆地巡洋舰", status: 0) if Column.find_by(name: "陆地巡洋舰", keyword: "丰田陆地巡洋舰|toyota 陆地巡洋舰").nil?
Column.create!(category_id: category_99.id, name: "普拉多", en_name: "普拉多", keyword: "丰田普拉多|toyota 普拉多", status: 0) if Column.find_by(name: "普拉多", keyword: "丰田普拉多|toyota 普拉多").nil?
Column.create!(category_id: category_99.id, name: "普瑞维亚", en_name: "普瑞维亚", keyword: "丰田普瑞维亚|toyota 普瑞维亚", status: 0) if Column.find_by(name: "普瑞维亚", keyword: "丰田普瑞维亚|toyota 普瑞维亚").nil?
Column.create!(category_id: category_99.id, name: "Sienna", en_name: "Sienna", keyword: "丰田Sienna|toyota Sienna", status: 0) if Column.find_by(name: "Sienna", keyword: "丰田Sienna|toyota Sienna").nil?
Column.create!(category_id: category_99.id, name: "塔科马Tacoma", en_name: "Tacoma", keyword: "丰田塔科马Tacoma|toyota Tacoma", status: 0) if Column.find_by(name: "塔科马Tacoma", keyword: "丰田塔科马Tacoma|toyota Tacoma").nil?
Column.create!(category_id: category_99.id, name: "坦途", en_name: "Tundra", keyword: "丰田坦途|toyota Tundra", status: 0) if Column.find_by(name: "坦途", keyword: "丰田坦途|toyota Tundra").nil?
Column.create!(category_id: category_99.id, name: "丰田Wish", en_name: "Wish", keyword: "丰田Wish|toyota Wish", status: 0) if Column.find_by(name: "丰田Wish", keyword: "丰田Wish|toyota Wish").nil?
Column.create!(category_id: category_99.id, name: "威飒", en_name: "Venza", keyword: "丰田威飒|toyota Venza", status: 0) if Column.find_by(name: "威飒", keyword: "丰田威飒|toyota Venza").nil?
Column.create!(category_id: category_99.id, name: "丰田Mirai", en_name: "Mirai", keyword: "丰田Mirai|toyota Mirai", status: 0) if Column.find_by(name: "丰田Mirai", keyword: "丰田Mirai|toyota Mirai").nil?
Column.create!(category_id: category_99.id, name: "丰田亚洲龙", en_name: "亚洲龙", keyword: "丰田亚洲龙|toyota 亚洲龙", status: 0) if Column.find_by(name: "丰田亚洲龙", keyword: "丰田亚洲龙|toyota 亚洲龙").nil?
Column.create!(category_id: category_99.id, name: "丰田汉兰达", en_name: "汉兰达", keyword: "丰田汉兰达|toyota 汉兰达", status: 0) if Column.find_by(name: "丰田汉兰达", keyword: "丰田汉兰达|toyota 汉兰达").nil?
Column.create!(category_id: category_99.id, name: "Scion iM 概念车", en_name: "Scion iM 概念车", keyword: "丰田Scion iM 概念车|toyota Scion iM 概念车", status: 0) if Column.find_by(name: "Scion iM 概念车", keyword: "丰田Scion iM 概念车|toyota Scion iM 概念车").nil?
Column.create!(category_id: category_99.id, name: "4Runner", en_name: "4Runner", keyword: "丰田4Runner|toyota 4Runner", status: 0) if Column.find_by(name: "4Runner", keyword: "丰田4Runner|toyota 4Runner").nil?
Column.create!(category_id: category_99.id, name: "丰田皇冠", en_name: "皇冠", keyword: "丰田皇冠|toyota 皇冠", status: 0) if Column.find_by(name: "丰田皇冠", keyword: "丰田皇冠|toyota 皇冠").nil?
Column.create!(category_id: category_99.id, name: "丰田MR2", en_name: "MR2", keyword: "丰田MR2|toyota MR2", status: 0) if Column.find_by(name: "丰田MR2", keyword: "丰田MR2|toyota MR2").nil?
Column.create!(category_id: category_99.id, name: "花冠", en_name: "花冠", keyword: "丰田花冠|toyota 花冠", status: 0) if Column.find_by(name: "花冠", keyword: "丰田花冠|toyota 花冠").nil?
Column.create!(category_id: category_99.id, name: "海拉克斯", en_name: "HILUX", keyword: "丰田海拉克斯|toyota HILUX", status: 0) if Column.find_by(name: "海拉克斯", keyword: "丰田海拉克斯|toyota HILUX").nil?
Column.create!(category_id: category_99.id, name: "丰田佳美", en_name: "佳美", keyword: "丰田佳美|toyota 佳美", status: 0) if Column.find_by(name: "丰田佳美", keyword: "丰田佳美|toyota 佳美").nil?
Column.create!(category_id: category_99.id, name: "丰田RAV4", en_name: "RAV4", keyword: "丰田RAV4|toyota RAV4", status: 0) if Column.find_by(name: "丰田RAV4", keyword: "丰田RAV4|toyota RAV4").nil?
Column.create!(category_id: category_99.id, name: "丰田赛利卡", en_name: "Celica", keyword: "丰田赛利卡|toyota Celica", status: 0) if Column.find_by(name: "丰田赛利卡", keyword: "丰田赛利卡|toyota Celica").nil?
Column.create!(category_id: category_99.id, name: "福克斯两厢", en_name: "福克斯hatchback", keyword: "福特福克斯两厢|ford 福克斯hatchback", status: 0) if Column.find_by(name: "福克斯两厢", keyword: "福特福克斯两厢|ford 福克斯hatchback").nil?
Column.create!(category_id: category_99.id, name: "福克斯三厢", en_name: "focus", keyword: "福特福克斯三厢|ford focus", status: 0) if Column.find_by(name: "福克斯三厢", keyword: "福特福克斯三厢|ford focus").nil?
Column.create!(category_id: category_99.id, name: "福睿斯", en_name: "escort", keyword: "福特福睿斯|ford escort", status: 0) if Column.find_by(name: "福睿斯", keyword: "福特福睿斯|ford escort").nil?
Column.create!(category_id: category_99.id, name: "嘉年华两厢", en_name: "嘉年华hatchback", keyword: "福特嘉年华两厢|ford 嘉年华hatchback", status: 0) if Column.find_by(name: "嘉年华两厢", keyword: "福特嘉年华两厢|ford 嘉年华hatchback").nil?
Column.create!(category_id: category_99.id, name: "嘉年华三厢", en_name: "fiesta sedan", keyword: "福特嘉年华三厢|ford fiesta sedan", status: 0) if Column.find_by(name: "嘉年华三厢", keyword: "福特嘉年华三厢|ford fiesta sedan").nil?
Column.create!(category_id: category_99.id, name: "福特金牛座", en_name: "Taurus", keyword: "福特金牛座|ford Taurus", status: 0) if Column.find_by(name: "福特金牛座", keyword: "福特金牛座|ford Taurus").nil?
Column.create!(category_id: category_99.id, name: "麦柯斯", en_name: "S-MAX", keyword: "福特麦柯斯|ford S-MAX", status: 0) if Column.find_by(name: "麦柯斯", keyword: "福特麦柯斯|ford S-MAX").nil?
Column.create!(category_id: category_99.id, name: "锐界", en_name: "edge", keyword: "福特锐界|ford edge", status: 0) if Column.find_by(name: "锐界", keyword: "福特锐界|ford edge").nil?
Column.create!(category_id: category_99.id, name: "新蒙迪欧", en_name: "Mondeo", keyword: "福特新蒙迪欧|ford Mondeo", status: 0) if Column.find_by(name: "新蒙迪欧", keyword: "福特新蒙迪欧|ford Mondeo").nil?
Column.create!(category_id: category_99.id, name: "翼搏", en_name: "ecosport", keyword: "福特翼搏|ford ecosport", status: 0) if Column.find_by(name: "翼搏", keyword: "福特翼搏|ford ecosport").nil?
Column.create!(category_id: category_99.id, name: "翼虎", en_name: "kuga|escape", keyword: "福特翼虎|ford kuga|escape", status: 0) if Column.find_by(name: "翼虎", keyword: "福特翼虎|ford kuga|escape").nil?
Column.create!(category_id: category_99.id, name: "致胜", en_name: "致胜", keyword: "福特致胜|ford 致胜", status: 0) if Column.find_by(name: "致胜", keyword: "福特致胜|ford 致胜").nil?
Column.create!(category_id: category_99.id, name: "蒙迪欧-致胜", en_name: "蒙迪欧-致胜", keyword: "福特蒙迪欧-致胜|ford 蒙迪欧-致胜", status: 0) if Column.find_by(name: "蒙迪欧-致胜", keyword: "福特蒙迪欧-致胜|ford 蒙迪欧-致胜").nil?
Column.create!(category_id: category_99.id, name: "撼路者", en_name: "everest", keyword: "福特撼路者|ford everest", status: 0) if Column.find_by(name: "撼路者", keyword: "福特撼路者|ford everest").nil?
Column.create!(category_id: category_99.id, name: "途睿欧", en_name: "Tourneo", keyword: "福特途睿欧|ford Tourneo", status: 0) if Column.find_by(name: "途睿欧", keyword: "福特途睿欧|ford Tourneo").nil?
Column.create!(category_id: category_99.id, name: "福特E系列", en_name: "E系列商务车", keyword: "福特E系列|ford E系列商务车", status: 0) if Column.find_by(name: "福特E系列", keyword: "福特E系列|ford E系列商务车").nil?
Column.create!(category_id: category_99.id, name: "福克斯", en_name: "福克斯", keyword: "福特福克斯|ford 福克斯", status: 0) if Column.find_by(name: "福克斯", keyword: "福特福克斯|ford 福克斯").nil?
Column.create!(category_id: category_99.id, name: "福特Mustang", en_name: "Mustang", keyword: "福特Mustang|ford Mustang", status: 0) if Column.find_by(name: "福特Mustang", keyword: "福特Mustang|ford Mustang").nil?
Column.create!(category_id: category_99.id, name: "F系列", en_name: "F150", keyword: "福特F系列|ford F150", status: 0) if Column.find_by(name: "F系列", keyword: "福特F系列|ford F150").nil?
Column.create!(category_id: category_99.id, name: "嘉年华（进口）", en_name: "嘉年华", keyword: "福特嘉年华（进口）|ford 嘉年华", status: 0) if Column.find_by(name: "嘉年华（进口）", keyword: "福特嘉年华（进口）|ford 嘉年华").nil?
Column.create!(category_id: category_99.id, name: "锐界", en_name: "锐界", keyword: "福特锐界|ford 锐界", status: 0) if Column.find_by(name: "锐界", keyword: "福特锐界|ford 锐界").nil?
Column.create!(category_id: category_99.id, name: "福特探险者", en_name: "explorer", keyword: "福特探险者|ford explorer", status: 0) if Column.find_by(name: "福特探险者", keyword: "福特探险者|ford explorer").nil?
Column.create!(category_id: category_99.id, name: "征服者", en_name: "征服者", keyword: "福特征服者|ford 征服者", status: 0) if Column.find_by(name: "征服者", keyword: "福特征服者|ford 征服者").nil?
Column.create!(category_id: category_99.id, name: "Flex", en_name: "Flex", keyword: "福特Flex|ford Flex", status: 0) if Column.find_by(name: "Flex", keyword: "福特Flex|ford Flex").nil?
Column.create!(category_id: category_99.id, name: "Galaxy", en_name: "Galaxy", keyword: "福特Galaxy|ford Galaxy", status: 0) if Column.find_by(name: "Galaxy", keyword: "福特Galaxy|ford Galaxy").nil?
Column.create!(category_id: category_99.id, name: "Ka", en_name: "Ka", keyword: "福特Ka|ford Ka", status: 0) if Column.find_by(name: "Ka", keyword: "福特Ka|ford Ka").nil?
Column.create!(category_id: category_99.id, name: "福特Ranger", en_name: "Ranger", keyword: "福特Ranger|ford Ranger", status: 0) if Column.find_by(name: "福特Ranger", keyword: "福特Ranger|ford Ranger").nil?
Column.create!(category_id: category_99.id, name: "稳达", en_name: "稳达", keyword: "福特稳达|ford 稳达", status: 0) if Column.find_by(name: "稳达", keyword: "福特稳达|ford 稳达").nil?
Column.create!(category_id: category_99.id, name: "福特天霸", en_name: "天霸", keyword: "福特天霸|ford 天霸", status: 0) if Column.find_by(name: "福特天霸", keyword: "福特天霸|ford 天霸").nil?
Column.create!(category_id: category_99.id, name: "福特外交官", en_name: "外交官", keyword: "福特外交官|ford 外交官", status: 0) if Column.find_by(name: "福特外交官", keyword: "福特外交官|ford 外交官").nil?
Column.create!(category_id: category_99.id, name: "金牛座", en_name: "金牛座", keyword: "福特金牛座|ford 金牛座", status: 0) if Column.find_by(name: "金牛座", keyword: "福特金牛座|ford 金牛座").nil?
Column.create!(category_id: category_99.id, name: "蒙迪欧", en_name: "蒙迪欧", keyword: "福特蒙迪欧|ford 蒙迪欧", status: 0) if Column.find_by(name: "蒙迪欧", keyword: "福特蒙迪欧|ford 蒙迪欧").nil?
Column.create!(category_id: category_99.id, name: "水星", en_name: "水星", keyword: "福特水星|ford 水星", status: 0) if Column.find_by(name: "水星", keyword: "福特水星|ford 水星").nil?
Column.create!(category_id: category_99.id, name: "翼虎", en_name: "翼虎", keyword: "福特翼虎|ford 翼虎", status: 0) if Column.find_by(name: "翼虎", keyword: "福特翼虎|ford 翼虎").nil?
Column.create!(category_id: category_99.id, name: "奥铃CTX", en_name: "奥铃CTX", keyword: "福田奥铃CTX|福田 奥铃CTX", status: 0) if Column.find_by(name: "奥铃CTX", keyword: "福田奥铃CTX|福田 奥铃CTX").nil?
Column.create!(category_id: category_99.id, name: "奥铃捷运", en_name: "奥铃捷运", keyword: "福田奥铃捷运|福田 奥铃捷运", status: 0) if Column.find_by(name: "奥铃捷运", keyword: "福田奥铃捷运|福田 奥铃捷运").nil?
Column.create!(category_id: category_99.id, name: "奥铃TX", en_name: "奥铃TX", keyword: "福田奥铃TX|福田 奥铃TX", status: 0) if Column.find_by(name: "奥铃TX", keyword: "福田奥铃TX|福田 奥铃TX").nil?
Column.create!(category_id: category_99.id, name: "风景G9", en_name: "风景G9", keyword: "福田风景G9|福田 风景G9", status: 0) if Column.find_by(name: "风景G9", keyword: "福田风景G9|福田 风景G9").nil?
Column.create!(category_id: category_99.id, name: "福田风景", en_name: "福田风景", keyword: "福田风景|福田 福田风景", status: 0) if Column.find_by(name: "福田风景", keyword: "福田风景|福田 福田风景").nil?
Column.create!(category_id: category_99.id, name: "伽途ix", en_name: "伽途ix", keyword: "福田伽途ix|福田 伽途ix", status: 0) if Column.find_by(name: "伽途ix", keyword: "福田伽途ix|福田 伽途ix").nil?
Column.create!(category_id: category_99.id, name: "伽途T3", en_name: "伽途T3", keyword: "福田伽途T3|福田 伽途T3", status: 0) if Column.find_by(name: "伽途T3", keyword: "福田伽途T3|福田 伽途T3").nil?
Column.create!(category_id: category_99.id, name: "伽途V3", en_name: "伽途V3", keyword: "福田伽途V3|福田 伽途V3", status: 0) if Column.find_by(name: "伽途V3", keyword: "福田伽途V3|福田 伽途V3").nil?
Column.create!(category_id: category_99.id, name: "伽途V5", en_name: "伽途V5", keyword: "福田伽途V5|福田 伽途V5", status: 0) if Column.find_by(name: "伽途V5", keyword: "福田伽途V5|福田 伽途V5").nil?
Column.create!(category_id: category_99.id, name: "迷迪", en_name: "迷迪", keyword: "福田迷迪|福田 迷迪", status: 0) if Column.find_by(name: "迷迪", keyword: "福田迷迪|福田 迷迪").nil?
Column.create!(category_id: category_99.id, name: "蒙派克E", en_name: "蒙派克E", keyword: "福田蒙派克E|福田 蒙派克E", status: 0) if Column.find_by(name: "蒙派克E", keyword: "福田蒙派克E|福田 蒙派克E").nil?
Column.create!(category_id: category_99.id, name: "欧曼", en_name: "欧曼", keyword: "福田欧曼|福田 欧曼", status: 0) if Column.find_by(name: "欧曼", keyword: "福田欧曼|福田 欧曼").nil?
Column.create!(category_id: category_99.id, name: "欧马可", en_name: "欧马可", keyword: "福田欧马可|福田 欧马可", status: 0) if Column.find_by(name: "欧马可", keyword: "福田欧马可|福田 欧马可").nil?
Column.create!(category_id: category_99.id, name: "轻型多用途车", en_name: "轻型多用途车", keyword: "福田轻型多用途车|福田 轻型多用途车", status: 0) if Column.find_by(name: "轻型多用途车", keyword: "福田轻型多用途车|福田 轻型多用途车").nil?
Column.create!(category_id: category_99.id, name: "瑞沃工程用车", en_name: "瑞沃工程用车", keyword: "福田瑞沃工程用车|福田 瑞沃工程用车", status: 0) if Column.find_by(name: "瑞沃工程用车", keyword: "福田瑞沃工程用车|福田 瑞沃工程用车").nil?
Column.create!(category_id: category_99.id, name: "时代金刚", en_name: "时代金刚", keyword: "福田时代金刚|福田 时代金刚", status: 0) if Column.find_by(name: "时代金刚", keyword: "福田时代金刚|福田 时代金刚").nil?
Column.create!(category_id: category_99.id, name: "时代康瑞", en_name: "时代康瑞", keyword: "福田时代康瑞|福田 时代康瑞", status: 0) if Column.find_by(name: "时代康瑞", keyword: "福田时代康瑞|福田 时代康瑞").nil?
Column.create!(category_id: category_99.id, name: "时代领航", en_name: "时代领航", keyword: "福田时代领航|福田 时代领航", status: 0) if Column.find_by(name: "时代领航", keyword: "福田时代领航|福田 时代领航").nil?
Column.create!(category_id: category_99.id, name: "时代微卡", en_name: "时代微卡", keyword: "福田时代微卡|福田 时代微卡", status: 0) if Column.find_by(name: "时代微卡", keyword: "福田时代微卡|福田 时代微卡").nil?
Column.create!(category_id: category_99.id, name: "时代骁运", en_name: "时代骁运", keyword: "福田时代骁运|福田 时代骁运", status: 0) if Column.find_by(name: "时代骁运", keyword: "福田时代骁运|福田 时代骁运").nil?
Column.create!(category_id: category_99.id, name: "时代驭菱", en_name: "时代驭菱", keyword: "福田时代驭菱|福田 时代驭菱", status: 0) if Column.find_by(name: "时代驭菱", keyword: "福田时代驭菱|福田 时代驭菱").nil?
Column.create!(category_id: category_99.id, name: "萨普", en_name: "萨普", keyword: "福田萨普|福田 萨普", status: 0) if Column.find_by(name: "萨普", keyword: "福田萨普|福田 萨普").nil?
Column.create!(category_id: category_99.id, name: "萨瓦纳", en_name: "萨瓦纳", keyword: "福田萨瓦纳|福田 萨瓦纳", status: 0) if Column.find_by(name: "萨瓦纳", keyword: "福田萨瓦纳|福田 萨瓦纳").nil?
Column.create!(category_id: category_99.id, name: "拓陆者", en_name: "拓陆者", keyword: "福田拓陆者|福田 拓陆者", status: 0) if Column.find_by(name: "拓陆者", keyword: "福田拓陆者|福田 拓陆者").nil?
Column.create!(category_id: category_99.id, name: "图雅诺", en_name: "图雅诺", keyword: "福田图雅诺|福田 图雅诺", status: 0) if Column.find_by(name: "图雅诺", keyword: "福田图雅诺|福田 图雅诺").nil?
Column.create!(category_id: category_99.id, name: "风景G7", en_name: "风景G7", keyword: "福田风景G7|福田 风景G7", status: 0) if Column.find_by(name: "风景G7", keyword: "福田风景G7|福田 风景G7").nil?
Column.create!(category_id: category_99.id, name: "小型多用途车", en_name: "小型多用途车", keyword: "福田小型多用途车|福田 小型多用途车", status: 0) if Column.find_by(name: "小型多用途车", keyword: "福田小型多用途车|福田 小型多用途车").nil?
Column.create!(category_id: category_99.id, name: "传奇X", en_name: "传奇X", keyword: "福田传奇X|福田 传奇X", status: 0) if Column.find_by(name: "传奇X", keyword: "福田传奇X|福田 传奇X").nil?
Column.create!(category_id: category_99.id, name: "风景冲浪", en_name: "风景冲浪", keyword: "福田风景冲浪|福田 风景冲浪", status: 0) if Column.find_by(name: "风景冲浪", keyword: "福田风景冲浪|福田 风景冲浪").nil?
Column.create!(category_id: category_99.id, name: "风景快捷", en_name: "风景快捷", keyword: "福田风景快捷|福田 风景快捷", status: 0) if Column.find_by(name: "风景快捷", keyword: "福田风景快捷|福田 风景快捷").nil?
Column.create!(category_id: category_99.id, name: "风景快客", en_name: "风景快客", keyword: "福田风景快客|福田 风景快客", status: 0) if Column.find_by(name: "风景快客", keyword: "福田风景快客|福田 风景快客").nil?
Column.create!(category_id: category_99.id, name: "福田海狮", en_name: "福田海狮", keyword: "福田海狮|福田 福田海狮", status: 0) if Column.find_by(name: "福田海狮", keyword: "福田海狮|福田 福田海狮").nil?
Column.create!(category_id: category_99.id, name: "公路客运", en_name: "公路客运", keyword: "福田公路客运|福田 公路客运", status: 0) if Column.find_by(name: "公路客运", keyword: "福田公路客运|福田 公路客运").nil?
Column.create!(category_id: category_99.id, name: "旅游客车", en_name: "旅游客车", keyword: "福田旅游客车|福田 旅游客车", status: 0) if Column.find_by(name: "旅游客车", keyword: "福田旅游客车|福田 旅游客车").nil?
Column.create!(category_id: category_99.id, name: "专用客车", en_name: "专用客车", keyword: "福田专用客车|福田 专用客车", status: 0) if Column.find_by(name: "专用客车", keyword: "福田专用客车|福田 专用客车").nil?
Column.create!(category_id: category_99.id, name: "458", en_name: "458", keyword: "法拉利458|ferrari 458", status: 0) if Column.find_by(name: "458", keyword: "法拉利458|ferrari 458").nil?
Column.create!(category_id: category_99.id, name: "488", en_name: "488", keyword: "法拉利488|ferrari 488", status: 0) if Column.find_by(name: "488", keyword: "法拉利488|ferrari 488").nil?
Column.create!(category_id: category_99.id, name: "599", en_name: "599", keyword: "法拉利599|ferrari 599", status: 0) if Column.find_by(name: "599", keyword: "法拉利599|ferrari 599").nil?
Column.create!(category_id: category_99.id, name: "California T", en_name: "California T", keyword: "法拉利California T|ferrari California T", status: 0) if Column.find_by(name: "California T", keyword: "法拉利California T|ferrari California T").nil?
Column.create!(category_id: category_99.id, name: "F12 berlinetta", en_name: "F12 berlinetta", keyword: "法拉利F12 berlinetta|ferrari F12 berlinetta", status: 0) if Column.find_by(name: "F12 berlinetta", keyword: "法拉利F12 berlinetta|ferrari F12 berlinetta").nil?
Column.create!(category_id: category_99.id, name: "FF", en_name: "FF", keyword: "法拉利FF|ferrari FF", status: 0) if Column.find_by(name: "FF", keyword: "法拉利FF|ferrari FF").nil?
Column.create!(category_id: category_99.id, name: "LaFerrari", en_name: "LaFerrari", keyword: "法拉利LaFerrari|ferrari LaFerrari", status: 0) if Column.find_by(name: "LaFerrari", keyword: "法拉利LaFerrari|ferrari LaFerrari").nil?
Column.create!(category_id: category_99.id, name: "360 Modena", en_name: "360 Modena", keyword: "法拉利360 Modena|ferrari 360 Modena", status: 0) if Column.find_by(name: "360 Modena", keyword: "法拉利360 Modena|ferrari 360 Modena").nil?
Column.create!(category_id: category_99.id, name: "456M", en_name: "456M", keyword: "法拉利456M|ferrari 456M", status: 0) if Column.find_by(name: "456M", keyword: "法拉利456M|ferrari 456M").nil?
Column.create!(category_id: category_99.id, name: "575M Maranello", en_name: "575M Maranello", keyword: "法拉利575M Maranello|ferrari 575M Maranello", status: 0) if Column.find_by(name: "575M Maranello", keyword: "法拉利575M Maranello|ferrari 575M Maranello").nil?
Column.create!(category_id: category_99.id, name: "612 Scaglietti", en_name: "612 Scaglietti", keyword: "法拉利612 Scaglietti|ferrari 612 Scaglietti", status: 0) if Column.find_by(name: "612 Scaglietti", keyword: "法拉利612 Scaglietti|ferrari 612 Scaglietti").nil?
Column.create!(category_id: category_99.id, name: "ENZO", en_name: "ENZO", keyword: "法拉利ENZO|ferrari ENZO", status: 0) if Column.find_by(name: "ENZO", keyword: "法拉利ENZO|ferrari ENZO").nil?
Column.create!(category_id: category_99.id, name: "F430", en_name: "F430", keyword: "法拉利F430|ferrari F430", status: 0) if Column.find_by(name: "F430", keyword: "法拉利F430|ferrari F430").nil?
Column.create!(category_id: category_99.id, name: "菲翔", en_name: "菲翔", keyword: "菲亚特菲翔|fiat 菲翔", status: 0) if Column.find_by(name: "菲翔", keyword: "菲亚特菲翔|fiat 菲翔").nil?
Column.create!(category_id: category_99.id, name: "致悦", en_name: "致悦", keyword: "菲亚特致悦|fiat 致悦", status: 0) if Column.find_by(name: "致悦", keyword: "菲亚特致悦|fiat 致悦").nil?
Column.create!(category_id: category_99.id, name: "派朗", en_name: "派朗", keyword: "菲亚特派朗|fiat 派朗", status: 0) if Column.find_by(name: "派朗", keyword: "菲亚特派朗|fiat 派朗").nil?
Column.create!(category_id: category_99.id, name: "派力奥", en_name: "派力奥", keyword: "菲亚特派力奥|fiat 派力奥", status: 0) if Column.find_by(name: "派力奥", keyword: "菲亚特派力奥|fiat 派力奥").nil?
Column.create!(category_id: category_99.id, name: "西耶那", en_name: "西耶那", keyword: "菲亚特西耶那|fiat 西耶那", status: 0) if Column.find_by(name: "西耶那", keyword: "菲亚特西耶那|fiat 西耶那").nil?
Column.create!(category_id: category_99.id, name: "周末风", en_name: "周末风", keyword: "菲亚特周末风|fiat 周末风", status: 0) if Column.find_by(name: "周末风", keyword: "菲亚特周末风|fiat 周末风").nil?
Column.create!(category_id: category_99.id, name: "博悦", en_name: "博悦", keyword: "菲亚特博悦|fiat 博悦", status: 0) if Column.find_by(name: "博悦", keyword: "菲亚特博悦|fiat 博悦").nil?
Column.create!(category_id: category_99.id, name: "菲跃", en_name: "菲跃", keyword: "菲亚特菲跃|fiat 菲跃", status: 0) if Column.find_by(name: "菲跃", keyword: "菲亚特菲跃|fiat 菲跃").nil?
Column.create!(category_id: category_99.id, name: "菲亚特500", en_name: "菲亚特500", keyword: "菲亚特500|fiat 菲亚特500", status: 0) if Column.find_by(name: "菲亚特500", keyword: "菲亚特500|fiat 菲亚特500").nil?
Column.create!(category_id: category_99.id, name: "菲亚特500X", en_name: "菲亚特500X", keyword: "菲亚特500X|fiat 菲亚特500X", status: 0) if Column.find_by(name: "菲亚特500X", keyword: "菲亚特500X|fiat 菲亚特500X").nil?
Column.create!(category_id: category_99.id, name: "Panda", en_name: "Panda", keyword: "菲亚特Panda|fiat Panda", status: 0) if Column.find_by(name: "Panda", keyword: "菲亚特Panda|fiat Panda").nil?
Column.create!(category_id: category_99.id, name: "菲亚特Tipo", en_name: "Tipo", keyword: "菲亚特Tipo|fiat Tipo", status: 0) if Column.find_by(name: "菲亚特Tipo", keyword: "菲亚特Tipo|fiat Tipo").nil?
Column.create!(category_id: category_99.id, name: "马力昂", en_name: "马力昂", keyword: "菲亚特马力昂|fiat 马力昂", status: 0) if Column.find_by(name: "马力昂", keyword: "菲亚特马力昂|fiat 马力昂").nil?
Column.create!(category_id: category_99.id, name: "马力昂 旅行车", en_name: "马力昂 旅行车", keyword: "菲亚特马力昂 旅行车|fiat 马力昂 旅行车", status: 0) if Column.find_by(name: "马力昂 旅行车", keyword: "菲亚特马力昂 旅行车|fiat 马力昂 旅行车").nil?
Column.create!(category_id: category_99.id, name: "多能", en_name: "多能", keyword: "菲亚特多能|fiat 多能", status: 0) if Column.find_by(name: "多能", keyword: "菲亚特多能|fiat 多能").nil?
Column.create!(category_id: category_99.id, name: "德特乐福斯", en_name: "德特乐福斯", keyword: "菲亚特德特乐福斯|fiat 德特乐福斯", status: 0) if Column.find_by(name: "德特乐福斯", keyword: "菲亚特德特乐福斯|fiat 德特乐福斯").nil?
Column.create!(category_id: category_99.id, name: "菲亚特Doblo", en_name: "Doblo", keyword: "菲亚特Doblo|fiat Doblo", status: 0) if Column.find_by(name: "菲亚特Doblo", keyword: "菲亚特Doblo|fiat Doblo").nil?
Column.create!(category_id: category_99.id, name: "菲亚特乌诺(Uno)", en_name: "乌诺", keyword: "菲亚特乌诺(Uno)|fiat 乌诺", status: 0) if Column.find_by(name: "菲亚特乌诺(Uno)", keyword: "菲亚特乌诺(Uno)|fiat 乌诺").nil?
Column.create!(category_id: category_99.id, name: "柯罗马", en_name: "柯罗马", keyword: "菲亚特柯罗马|fiat 柯罗马", status: 0) if Column.find_by(name: "柯罗马", keyword: "菲亚特柯罗马|fiat 柯罗马").nil?
Column.create!(category_id: category_99.id, name: "领雅", en_name: "领雅", keyword: "菲亚特领雅|fiat 领雅", status: 0) if Column.find_by(name: "领雅", keyword: "菲亚特领雅|fiat 领雅").nil?
Column.create!(category_id: category_99.id, name: "朋多", en_name: "朋多", keyword: "菲亚特朋多|fiat 朋多", status: 0) if Column.find_by(name: "朋多", keyword: "菲亚特朋多|fiat 朋多").nil?
Column.create!(category_id: category_99.id, name: "菲亚特Stilo", en_name: "Stilo", keyword: "菲亚特Stilo|fiat Stilo", status: 0) if Column.find_by(name: "菲亚特Stilo", keyword: "菲亚特Stilo|fiat Stilo").nil?
Column.create!(category_id: category_99.id, name: "海酷", en_name: "海酷", keyword: "菲亚特海酷|fiat 海酷", status: 0) if Column.find_by(name: "海酷", keyword: "菲亚特海酷|fiat 海酷").nil?
Column.create!(category_id: category_99.id, name: "福迪雄狮皮卡", en_name: "雄狮皮卡", keyword: "福迪雄狮皮卡|福迪 雄狮皮卡", status: 0) if Column.find_by(name: "福迪雄狮皮卡", keyword: "福迪雄狮皮卡|福迪 雄狮皮卡").nil?
Column.create!(category_id: category_99.id, name: "揽福", en_name: "揽福", keyword: "福迪揽福|福迪 揽福", status: 0) if Column.find_by(name: "揽福", keyword: "福迪揽福|福迪 揽福").nil?
Column.create!(category_id: category_99.id, name: "探索者Ⅱ", en_name: "探索者Ⅱ", keyword: "福迪探索者Ⅱ|福迪 探索者Ⅱ", status: 0) if Column.find_by(name: "探索者Ⅱ", keyword: "福迪探索者Ⅱ|福迪 探索者Ⅱ").nil?
Column.create!(category_id: category_99.id, name: "探索者Ⅲ", en_name: "探索者Ⅲ", keyword: "福迪探索者Ⅲ|福迪 探索者Ⅲ", status: 0) if Column.find_by(name: "探索者Ⅲ", keyword: "福迪探索者Ⅲ|福迪 探索者Ⅲ").nil?
Column.create!(category_id: category_99.id, name: "探索者6", en_name: "探索者6", keyword: "福迪探索者6|福迪 探索者6", status: 0) if Column.find_by(name: "探索者6", keyword: "福迪探索者6|福迪 探索者6").nil?
Column.create!(category_id: category_99.id, name: "福迪小超人皮卡", en_name: "小超人皮卡", keyword: "福迪小超人皮卡|福迪 小超人皮卡", status: 0) if Column.find_by(name: "福迪小超人皮卡", keyword: "福迪小超人皮卡|福迪 小超人皮卡").nil?
Column.create!(category_id: category_99.id, name: "雄师F16皮卡", en_name: "雄师F16皮卡", keyword: "福迪雄师F16皮卡|福迪 雄师F16皮卡", status: 0) if Column.find_by(name: "雄师F16皮卡", keyword: "福迪雄师F16皮卡|福迪 雄师F16皮卡").nil?
Column.create!(category_id: category_99.id, name: "雄师F22", en_name: "雄师F22", keyword: "福迪雄师F22|福迪 雄师F22", status: 0) if Column.find_by(name: "雄师F22", keyword: "福迪雄师F22|福迪 雄师F22").nil?
Column.create!(category_id: category_99.id, name: "福迪1021皮卡", en_name: "1021皮卡", keyword: "福迪1021皮卡|福迪 1021皮卡", status: 0) if Column.find_by(name: "福迪1021皮卡", keyword: "福迪1021皮卡|福迪 1021皮卡").nil?
Column.create!(category_id: category_99.id, name: "福迪四驱皮卡", en_name: "四驱皮卡", keyword: "福迪四驱皮卡|福迪 四驱皮卡", status: 0) if Column.find_by(name: "福迪四驱皮卡", keyword: "福迪四驱皮卡|福迪 四驱皮卡").nil?
Column.create!(category_id: category_99.id, name: "飞越SRV", en_name: "飞越SRV", keyword: "福迪飞越SRV|福迪 飞越SRV", status: 0) if Column.find_by(name: "飞越SRV", keyword: "福迪飞越SRV|福迪 飞越SRV").nil?
Column.create!(category_id: category_99.id, name: "探索者I", en_name: "探索者I", keyword: "福迪探索者I|福迪 探索者I", status: 0) if Column.find_by(name: "探索者I", keyword: "福迪探索者I|福迪 探索者I").nil?
Column.create!(category_id: category_99.id, name: "启腾 M70", en_name: "启腾 M70", keyword: "福汽启腾启腾 M70|福汽启腾 启腾 M70", status: 0) if Column.find_by(name: "启腾 M70", keyword: "福汽启腾启腾 M70|福汽启腾 启腾 M70").nil?
Column.create!(category_id: category_99.id, name: "启腾EX80", en_name: "启腾EX80", keyword: "福汽启腾启腾EX80|福汽启腾 启腾EX80", status: 0) if Column.find_by(name: "启腾EX80", keyword: "福汽启腾启腾EX80|福汽启腾 启腾EX80").nil?
Column.create!(category_id: category_99.id, name: "飞驰斯宾特", en_name: "飞驰斯宾特", keyword: "飞驰商务车飞驰斯宾特|飞驰商务车 飞驰斯宾特", status: 0) if Column.find_by(name: "飞驰斯宾特", keyword: "飞驰商务车飞驰斯宾特|飞驰商务车 飞驰斯宾特").nil?
Column.create!(category_id: category_99.id, name: "飞驰威霆", en_name: "飞驰威霆", keyword: "飞驰商务车飞驰威霆|飞驰商务车 飞驰威霆", status: 0) if Column.find_by(name: "飞驰威霆", keyword: "飞驰商务车飞驰威霆|飞驰商务车 飞驰威霆").nil?
Column.create!(category_id: category_99.id, name: "Evantra", en_name: "Evantra", keyword: "Faralli MazzantiEvantra|Faralli Mazzanti Evantra", status: 0) if Column.find_by(name: "Evantra", keyword: "Faralli MazzantiEvantra|Faralli Mazzanti Evantra").nil?
Column.create!(category_id: category_99.id, name: "Karma", en_name: "Karma", keyword: "菲斯克Karma|Fisker Karma", status: 0) if Column.find_by(name: "Karma", keyword: "菲斯克Karma|Fisker Karma").nil?
Column.create!(category_id: category_99.id, name: "财富", en_name: "财富", keyword: "富奇财富|富奇 财富", status: 0) if Column.find_by(name: "财富", keyword: "富奇财富|富奇 财富").nil?
Column.create!(category_id: category_99.id, name: "富奇", en_name: "富奇", keyword: "富奇|富奇 富奇", status: 0) if Column.find_by(name: "富奇", keyword: "富奇|富奇 富奇").nil?
Column.create!(category_id: category_99.id, name: "海马柯", en_name: "海马柯", keyword: "富奇海马柯|富奇 海马柯", status: 0) if Column.find_by(name: "海马柯", keyword: "富奇海马柯|富奇 海马柯").nil?
Column.create!(category_id: category_99.id, name: "驭虎", en_name: "驭虎", keyword: "富奇驭虎|富奇 驭虎", status: 0) if Column.find_by(name: "驭虎", keyword: "富奇驭虎|富奇 驭虎").nil?
Column.create!(category_id: category_99.id, name: "陆陆威威", en_name: "陆威", keyword: "福达陆陆威威|福达 陆威", status: 0) if Column.find_by(name: "陆陆威威", keyword: "福达陆陆威威|福达 陆威").nil?
Column.create!(category_id: category_99.id, name: "传祺GA3", en_name: "GA3", keyword: "广汽传祺传祺GA3|trumpchi GA3", status: 0) if Column.find_by(name: "传祺GA3", keyword: "广汽传祺传祺GA3|trumpchi GA3").nil?
Column.create!(category_id: category_99.id, name: "传祺GA3S 视界", en_name: "GA3S", keyword: "广汽传祺传祺GA3S 视界|trumpchi GA3S", status: 0) if Column.find_by(name: "传祺GA3S 视界", keyword: "广汽传祺传祺GA3S 视界|trumpchi GA3S").nil?
Column.create!(category_id: category_99.id, name: "传祺GA5", en_name: "GA5", keyword: "广汽传祺传祺GA5|trumpchi GA5", status: 0) if Column.find_by(name: "传祺GA5", keyword: "广汽传祺传祺GA5|trumpchi GA5").nil?
Column.create!(category_id: category_99.id, name: "传祺GA6", en_name: "GA6", keyword: "广汽传祺传祺GA6|trumpchi GA6", status: 0) if Column.find_by(name: "传祺GA6", keyword: "广汽传祺传祺GA6|trumpchi GA6").nil?
Column.create!(category_id: category_99.id, name: "传祺GS4", en_name: "GS4", keyword: "广汽传祺传祺GS4|trumpchi GS4", status: 0) if Column.find_by(name: "传祺GS4", keyword: "广汽传祺传祺GS4|trumpchi GS4").nil?
Column.create!(category_id: category_99.id, name: "传祺GS5", en_name: "GS5", keyword: "广汽传祺传祺GS5|trumpchi GS5", status: 0) if Column.find_by(name: "传祺GS5", keyword: "广汽传祺传祺GS5|trumpchi GS5").nil?
Column.create!(category_id: category_99.id, name: "传祺GS5 Super", en_name: "GS5 Super", keyword: "广汽传祺传祺GS5 Super|trumpchi GS5 Super", status: 0) if Column.find_by(name: "传祺GS5 Super", keyword: "广汽传祺传祺GS5 Super|trumpchi GS5 Super").nil?
Column.create!(category_id: category_99.id, name: "传祺GA4", en_name: "GA4", keyword: "广汽传祺传祺GA4|trumpchi GA4", status: 0) if Column.find_by(name: "传祺GA4", keyword: "广汽传祺传祺GA4|trumpchi GA4").nil?
Column.create!(category_id: category_99.id, name: "传祺GA8", en_name: "GA8", keyword: "广汽传祺传祺GA8|trumpchi GA8", status: 0) if Column.find_by(name: "传祺GA8", keyword: "广汽传祺传祺GA8|trumpchi GA8").nil?
Column.create!(category_id: category_99.id, name: "观致3", en_name: "观致3", keyword: "观致汽车观致3|qoros 观致3", status: 0) if Column.find_by(name: "观致3", keyword: "观致汽车观致3|qoros 观致3").nil?
Column.create!(category_id: category_99.id, name: "观致3 五门版", en_name: "观致3 五门版", keyword: "观致汽车观致3 五门版|qoros 观致3 五门版", status: 0) if Column.find_by(name: "观致3 五门版", keyword: "观致汽车观致3 五门版|qoros 观致3 五门版").nil?
Column.create!(category_id: category_99.id, name: "观致3都市SUV", en_name: "观致3都市SUV", keyword: "观致汽车观致3都市SUV|qoros 观致3都市SUV", status: 0) if Column.find_by(name: "观致3都市SUV", keyword: "观致汽车观致3都市SUV|qoros 观致3都市SUV").nil?
Column.create!(category_id: category_99.id, name: "观致5 SUV", en_name: "观致5 SUV", keyword: "观致汽车观致5 SUV|qoros 观致5 SUV", status: 0) if Column.find_by(name: "观致5 SUV", keyword: "观致汽车观致5 SUV|qoros 观致5 SUV").nil?
Column.create!(category_id: category_99.id, name: "观致2 SUV", en_name: "观致2 SUV", keyword: "观致汽车观致2 SUV|qoros 观致2 SUV", status: 0) if Column.find_by(name: "观致2 SUV", keyword: "观致汽车观致2 SUV|qoros 观致2 SUV").nil?
Column.create!(category_id: category_99.id, name: "财运100", en_name: "财运100", keyword: "广汽吉奥财运100|广汽吉奥 财运100", status: 0) if Column.find_by(name: "财运100", keyword: "广汽吉奥财运100|广汽吉奥 财运100").nil?
Column.create!(category_id: category_99.id, name: "财运300", en_name: "财运300", keyword: "广汽吉奥财运300|广汽吉奥 财运300", status: 0) if Column.find_by(name: "财运300", keyword: "广汽吉奥财运300|广汽吉奥 财运300").nil?
Column.create!(category_id: category_99.id, name: "财运500", en_name: "财运500", keyword: "广汽吉奥财运500|广汽吉奥 财运500", status: 0) if Column.find_by(name: "财运500", keyword: "广汽吉奥财运500|广汽吉奥 财运500").nil?
Column.create!(category_id: category_99.id, name: "吉奥E美", en_name: "E美", keyword: "广汽吉奥吉奥E美|广汽吉奥 E美", status: 0) if Column.find_by(name: "吉奥E美", keyword: "广汽吉奥吉奥E美|广汽吉奥 E美").nil?
Column.create!(category_id: category_99.id, name: "奥轩G5", en_name: "G5", keyword: "广汽吉奥奥轩G5|广汽吉奥 G5", status: 0) if Column.find_by(name: "奥轩G5", keyword: "广汽吉奥奥轩G5|广汽吉奥 G5").nil?
Column.create!(category_id: category_99.id, name: "广汽GX6", en_name: "广汽GX6", keyword: "广汽吉奥广汽GX6|广汽吉奥 广汽GX6", status: 0) if Column.find_by(name: "广汽GX6", keyword: "广汽吉奥广汽GX6|广汽吉奥 广汽GX6").nil?
Column.create!(category_id: category_99.id, name: "奥轩GX5", en_name: "GX5", keyword: "广汽吉奥奥轩GX5|广汽吉奥 GX5", status: 0) if Column.find_by(name: "奥轩GX5", keyword: "广汽吉奥奥轩GX5|广汽吉奥 GX5").nil?
Column.create!(category_id: category_99.id, name: "吉奥GP150", en_name: "吉奥GP150", keyword: "广汽吉奥吉奥GP150|广汽吉奥 吉奥GP150", status: 0) if Column.find_by(name: "吉奥GP150", keyword: "广汽吉奥吉奥GP150|广汽吉奥 吉奥GP150").nil?
Column.create!(category_id: category_99.id, name: "帅舰", en_name: "帅舰", keyword: "广汽吉奥帅舰|广汽吉奥 帅舰", status: 0) if Column.find_by(name: "帅舰", keyword: "广汽吉奥帅舰|广汽吉奥 帅舰").nil?
Column.create!(category_id: category_99.id, name: "星朗", en_name: "星朗", keyword: "广汽吉奥星朗|广汽吉奥 星朗", status: 0) if Column.find_by(name: "星朗", keyword: "广汽吉奥星朗|广汽吉奥 星朗").nil?
Column.create!(category_id: category_99.id, name: "星旺", en_name: "星旺", keyword: "广汽吉奥星旺|广汽吉奥 星旺", status: 0) if Column.find_by(name: "星旺", keyword: "广汽吉奥星旺|广汽吉奥 星旺").nil?
Column.create!(category_id: category_99.id, name: "星旺CL", en_name: "星旺CL", keyword: "广汽吉奥星旺CL|广汽吉奥 星旺CL", status: 0) if Column.find_by(name: "星旺CL", keyword: "广汽吉奥星旺CL|广汽吉奥 星旺CL").nil?
Column.create!(category_id: category_99.id, name: "星旺L", en_name: "星旺L", keyword: "广汽吉奥星旺L|广汽吉奥 星旺L", status: 0) if Column.find_by(name: "星旺L", keyword: "广汽吉奥星旺L|广汽吉奥 星旺L").nil?
Column.create!(category_id: category_99.id, name: "星旺M1", en_name: "星旺M1", keyword: "广汽吉奥星旺M1|广汽吉奥 星旺M1", status: 0) if Column.find_by(name: "星旺M1", keyword: "广汽吉奥星旺M1|广汽吉奥 星旺M1").nil?
Column.create!(category_id: category_99.id, name: "星旺M2", en_name: "星旺M2", keyword: "广汽吉奥星旺M2|广汽吉奥 星旺M2", status: 0) if Column.find_by(name: "星旺M2", keyword: "广汽吉奥星旺M2|广汽吉奥 星旺M2").nil?
Column.create!(category_id: category_99.id, name: "伊美", en_name: "伊美", keyword: "广汽吉奥伊美|广汽吉奥 伊美", status: 0) if Column.find_by(name: "伊美", keyword: "广汽吉奥伊美|广汽吉奥 伊美").nil?
Column.create!(category_id: category_99.id, name: "柴神", en_name: "柴神", keyword: "广汽吉奥柴神|广汽吉奥 柴神", status: 0) if Column.find_by(name: "柴神", keyword: "广汽吉奥柴神|广汽吉奥 柴神").nil?
Column.create!(category_id: category_99.id, name: "奥轩G3", en_name: "G3", keyword: "广汽吉奥奥轩G3|广汽吉奥 G3", status: 0) if Column.find_by(name: "奥轩G3", keyword: "广汽吉奥奥轩G3|广汽吉奥 G3").nil?
Column.create!(category_id: category_99.id, name: "吉奥GS50", en_name: "GS50", keyword: "广汽吉奥吉奥GS50|广汽吉奥 GS50", status: 0) if Column.find_by(name: "吉奥GS50", keyword: "广汽吉奥吉奥GS50|广汽吉奥 GS50").nil?
Column.create!(category_id: category_99.id, name: "吉奥GX6(停售款)", en_name: "GX6(停售款)", keyword: "广汽吉奥吉奥GX6(停售款)|广汽吉奥 GX6(停售款)", status: 0) if Column.find_by(name: "吉奥GX6(停售款)", keyword: "广汽吉奥吉奥GX6(停售款)|广汽吉奥 GX6(停售款)").nil?
Column.create!(category_id: category_99.id, name: "凯睿", en_name: "凯睿", keyword: "广汽吉奥凯睿|广汽吉奥 凯睿", status: 0) if Column.find_by(name: "凯睿", keyword: "广汽吉奥凯睿|广汽吉奥 凯睿").nil?
Column.create!(category_id: category_99.id, name: "凯旋SUV", en_name: "凯旋SUV", keyword: "广汽吉奥凯旋SUV|广汽吉奥 凯旋SUV", status: 0) if Column.find_by(name: "凯旋SUV", keyword: "广汽吉奥凯旋SUV|广汽吉奥 凯旋SUV").nil?
Column.create!(category_id: category_99.id, name: "猛将旅", en_name: "猛将旅", keyword: "广汽吉奥猛将旅|广汽吉奥 猛将旅", status: 0) if Column.find_by(name: "猛将旅", keyword: "广汽吉奥猛将旅|广汽吉奥 猛将旅").nil?
Column.create!(category_id: category_99.id, name: "帅豹", en_name: "帅豹", keyword: "广汽吉奥帅豹|广汽吉奥 帅豹", status: 0) if Column.find_by(name: "帅豹", keyword: "广汽吉奥帅豹|广汽吉奥 帅豹").nil?
Column.create!(category_id: category_99.id, name: "帅驰", en_name: "帅驰", keyword: "广汽吉奥帅驰|广汽吉奥 帅驰", status: 0) if Column.find_by(name: "帅驰", keyword: "广汽吉奥帅驰|广汽吉奥 帅驰").nil?
Column.create!(category_id: category_99.id, name: "帅凌", en_name: "帅凌", keyword: "广汽吉奥帅凌|广汽吉奥 帅凌", status: 0) if Column.find_by(name: "帅凌", keyword: "广汽吉奥帅凌|广汽吉奥 帅凌").nil?
Column.create!(category_id: category_99.id, name: "帅威", en_name: "帅威", keyword: "广汽吉奥帅威|广汽吉奥 帅威", status: 0) if Column.find_by(name: "帅威", keyword: "广汽吉奥帅威|广汽吉奥 帅威").nil?
Column.create!(category_id: category_99.id, name: "GMC", en_name: "GMC", keyword: "GMC|GMC GMC", status: 0) if Column.find_by(name: "GMC", keyword: "GMC|GMC GMC").nil?
Column.create!(category_id: category_99.id, name: "SIERRA", en_name: "SIERRA", keyword: "GMCSIERRA|GMC SIERRA", status: 0) if Column.find_by(name: "SIERRA", keyword: "GMCSIERRA|GMC SIERRA").nil?
Column.create!(category_id: category_99.id, name: "YUKON", en_name: "YUKON", keyword: "GMCYUKON|GMC YUKON", status: 0) if Column.find_by(name: "YUKON", keyword: "GMCYUKON|GMC YUKON").nil?
Column.create!(category_id: category_99.id, name: "Acadia", en_name: "Acadia", keyword: "GMCAcadia|GMC Acadia", status: 0) if Column.find_by(name: "Acadia", keyword: "GMCAcadia|GMC Acadia").nil?
Column.create!(category_id: category_99.id, name: "广汽中兴C3", en_name: "广汽中兴C3", keyword: "广汽中兴C3|广汽中兴 广汽中兴C3", status: 0) if Column.find_by(name: "广汽中兴C3", keyword: "广汽中兴C3|广汽中兴 广汽中兴C3").nil?
Column.create!(category_id: category_99.id, name: "广汽中兴GX3", en_name: "广汽中兴GX3", keyword: "广汽中兴GX3|广汽中兴 广汽中兴GX3", status: 0) if Column.find_by(name: "广汽中兴GX3", keyword: "广汽中兴GX3|广汽中兴 广汽中兴GX3").nil?
Column.create!(category_id: category_99.id, name: "大蛇", en_name: "大蛇", keyword: "光冈大蛇|Mitsuoka 大蛇", status: 0) if Column.find_by(name: "大蛇", keyword: "光冈大蛇|Mitsuoka 大蛇").nil?
Column.create!(category_id: category_99.id, name: "嘉路", en_name: "嘉路", keyword: "光冈嘉路|Mitsuoka 嘉路", status: 0) if Column.find_by(name: "嘉路", keyword: "光冈嘉路|Mitsuoka 嘉路").nil?
Column.create!(category_id: category_99.id, name: "女王", en_name: "女王", keyword: "光冈女王|Mitsuoka 女王", status: 0) if Column.find_by(name: "女王", keyword: "光冈女王|Mitsuoka 女王").nil?
Column.create!(category_id: category_99.id, name: "Spano", en_name: "Spano", keyword: "GTASpano|GTA Spano", status: 0) if Column.find_by(name: "Spano", keyword: "GTASpano|GTA Spano").nil?
Column.create!(category_id: category_99.id, name: "270Y系列", en_name: "270Y系列", keyword: "广汽日野270Y系列|广汽日野 270Y系列", status: 0) if Column.find_by(name: "270Y系列", keyword: "广汽日野270Y系列|广汽日野 270Y系列").nil?
Column.create!(category_id: category_99.id, name: "300J系列", en_name: "300J系列", keyword: "广汽日野300J系列|广汽日野 300J系列", status: 0) if Column.find_by(name: "300J系列", keyword: "广汽日野300J系列|广汽日野 300J系列").nil?
Column.create!(category_id: category_99.id, name: "320D系列", en_name: "320D系列", keyword: "广汽日野320D系列|广汽日野 320D系列", status: 0) if Column.find_by(name: "320D系列", keyword: "广汽日野320D系列|广汽日野 320D系列").nil?
Column.create!(category_id: category_99.id, name: "哈弗H1", en_name: "H1", keyword: "哈弗H1|haval H1", status: 0) if Column.find_by(name: "哈弗H1", keyword: "哈弗H1|haval H1").nil?
Column.create!(category_id: category_99.id, name: "哈弗H2", en_name: "H2", keyword: "哈弗H2|haval H2", status: 0) if Column.find_by(name: "哈弗H2", keyword: "哈弗H2|haval H2").nil?
Column.create!(category_id: category_99.id, name: "哈弗H5", en_name: "H5", keyword: "哈弗H5|haval H5", status: 0) if Column.find_by(name: "哈弗H5", keyword: "哈弗H5|haval H5").nil?
Column.create!(category_id: category_99.id, name: "哈弗H6", en_name: "H6", keyword: "哈弗H6|haval H6", status: 0) if Column.find_by(name: "哈弗H6", keyword: "哈弗H6|haval H6").nil?
Column.create!(category_id: category_99.id, name: "哈弗H6 Coupe", en_name: "H6 Coupe", keyword: "哈弗H6 Coupe|haval H6 Coupe", status: 0) if Column.find_by(name: "哈弗H6 Coupe", keyword: "哈弗H6 Coupe|haval H6 Coupe").nil?
Column.create!(category_id: category_99.id, name: "哈弗H8", en_name: "H8", keyword: "哈弗H8|haval H8", status: 0) if Column.find_by(name: "哈弗H8", keyword: "哈弗H8|haval H8").nil?
Column.create!(category_id: category_99.id, name: "哈弗H9", en_name: "H9", keyword: "哈弗H9|haval H9", status: 0) if Column.find_by(name: "哈弗H9", keyword: "哈弗H9|haval H9").nil?
Column.create!(category_id: category_99.id, name: "哈弗派", en_name: "哈弗派", keyword: "哈弗派|haval 哈弗派", status: 0) if Column.find_by(name: "哈弗派", keyword: "哈弗派|haval 哈弗派").nil?
Column.create!(category_id: category_99.id, name: "哈弗H7", en_name: "H7", keyword: "哈弗H7|haval H7", status: 0) if Column.find_by(name: "哈弗H7", keyword: "哈弗H7|haval H7").nil?
Column.create!(category_id: category_99.id, name: "哈弗H3", en_name: "H3", keyword: "哈弗H3|haval H3", status: 0) if Column.find_by(name: "哈弗H3", keyword: "哈弗H3|haval H3").nil?
Column.create!(category_id: category_99.id, name: "哈弗M1", en_name: "哈弗M1", keyword: "哈弗M1|haval 哈弗M1", status: 0) if Column.find_by(name: "哈弗M1", keyword: "哈弗M1|haval 哈弗M1").nil?
Column.create!(category_id: category_99.id, name: "福美来", en_name: "福美来", keyword: "海马福美来|海马 福美来", status: 0) if Column.find_by(name: "福美来", keyword: "海马福美来|海马 福美来").nil?
Column.create!(category_id: category_99.id, name: "福美来VS", en_name: "福美来VS", keyword: "海马福美来VS|海马 福美来VS", status: 0) if Column.find_by(name: "福美来VS", keyword: "海马福美来VS|海马 福美来VS").nil?
Column.create!(category_id: category_99.id, name: "海福星", en_name: "海福星", keyword: "海马海福星|海马 海福星", status: 0) if Column.find_by(name: "海福星", keyword: "海马海福星|海马 海福星").nil?
Column.create!(category_id: category_99.id, name: "骑士", en_name: "骑士", keyword: "海马骑士|海马 骑士", status: 0) if Column.find_by(name: "骑士", keyword: "海马骑士|海马 骑士").nil?
Column.create!(category_id: category_99.id, name: "海马M8", en_name: "M8", keyword: "海马M8|海马 M8", status: 0) if Column.find_by(name: "海马M8", keyword: "海马M8|海马 M8").nil?
Column.create!(category_id: category_99.id, name: "普力马", en_name: "普力马", keyword: "海马普力马|海马 普力马", status: 0) if Column.find_by(name: "普力马", keyword: "海马普力马|海马 普力马").nil?
Column.create!(category_id: category_99.id, name: "丘比特", en_name: "丘比特", keyword: "海马丘比特|海马 丘比特", status: 0) if Column.find_by(name: "丘比特", keyword: "海马丘比特|海马 丘比特").nil?
Column.create!(category_id: category_99.id, name: "海马S7", en_name: "S7", keyword: "海马S7|海马 S7", status: 0) if Column.find_by(name: "海马S7", keyword: "海马S7|海马 S7").nil?
Column.create!(category_id: category_99.id, name: "福美来7座版", en_name: "福美来7座版", keyword: "海马福美来7座版|海马 福美来7座版", status: 0) if Column.find_by(name: "福美来7座版", keyword: "海马福美来7座版|海马 福美来7座版").nil?
Column.create!(category_id: category_99.id, name: "欢动", en_name: "欢动", keyword: "海马欢动|海马 欢动", status: 0) if Column.find_by(name: "欢动", keyword: "海马欢动|海马 欢动").nil?
Column.create!(category_id: category_99.id, name: "海马3", en_name: "海马3", keyword: "海马3|海马 海马3", status: 0) if Column.find_by(name: "海马3", keyword: "海马3|海马 海马3").nil?
Column.create!(category_id: category_99.id, name: "海马旅行轿", en_name: "海马旅行轿", keyword: "海马旅行轿|海马 海马旅行轿", status: 0) if Column.find_by(name: "海马旅行轿", keyword: "海马旅行轿|海马 海马旅行轿").nil?
Column.create!(category_id: category_99.id, name: "海南马自达323", en_name: "海南马自达323", keyword: "海马海南马自达323|海马 海南马自达323", status: 0) if Column.find_by(name: "海南马自达323", keyword: "海马海南马自达323|海马 海南马自达323").nil?
Column.create!(category_id: category_99.id, name: "海马M3", en_name: "M3", keyword: "海马M3|海马 M3", status: 0) if Column.find_by(name: "海马M3", keyword: "海马M3|海马 M3").nil?
Column.create!(category_id: category_99.id, name: "海马M6", en_name: "M6", keyword: "海马M6|海马 M6", status: 0) if Column.find_by(name: "海马M6", keyword: "海马M6|海马 M6").nil?
Column.create!(category_id: category_99.id, name: "海马S5", en_name: "S5", keyword: "海马S5|海马 S5", status: 0) if Column.find_by(name: "海马S5", keyword: "海马S5|海马 S5").nil?
Column.create!(category_id: category_99.id, name: "红旗H7", en_name: "H7", keyword: "红旗H7|hongqi H7", status: 0) if Column.find_by(name: "红旗H7", keyword: "红旗H7|hongqi H7").nil?
Column.create!(category_id: category_99.id, name: "红旗L5", en_name: "L5", keyword: "红旗L5|hongqi L5", status: 0) if Column.find_by(name: "红旗L5", keyword: "红旗L5|hongqi L5").nil?
Column.create!(category_id: category_99.id, name: "红旗LS5", en_name: "红旗LS5", keyword: "红旗LS5|hongqi 红旗LS5", status: 0) if Column.find_by(name: "红旗LS5", keyword: "红旗LS5|hongqi 红旗LS5").nil?
Column.create!(category_id: category_99.id, name: "红旗", en_name: "红旗", keyword: "红旗|hongqi 红旗", status: 0) if Column.find_by(name: "红旗", keyword: "红旗|hongqi 红旗").nil?
Column.create!(category_id: category_99.id, name: "明仕", en_name: "明仕", keyword: "红旗明仕|hongqi 明仕", status: 0) if Column.find_by(name: "明仕", keyword: "红旗明仕|hongqi 明仕").nil?
Column.create!(category_id: category_99.id, name: "红旗旗舰", en_name: "旗舰", keyword: "红旗旗舰|hongqi 旗舰", status: 0) if Column.find_by(name: "红旗旗舰", keyword: "红旗旗舰|hongqi 旗舰").nil?
Column.create!(category_id: category_99.id, name: "世纪星", en_name: "世纪星", keyword: "红旗世纪星|hongqi 世纪星", status: 0) if Column.find_by(name: "世纪星", keyword: "红旗世纪星|hongqi 世纪星").nil?
Column.create!(category_id: category_99.id, name: "红旗盛世", en_name: "盛世", keyword: "红旗盛世|hongqi 盛世", status: 0) if Column.find_by(name: "红旗盛世", keyword: "红旗盛世|hongqi 盛世").nil?
Column.create!(category_id: category_99.id, name: "华泰B11", en_name: "B11", keyword: "华泰B11|华泰 B11", status: 0) if Column.find_by(name: "华泰B11", keyword: "华泰B11|华泰 B11").nil?
Column.create!(category_id: category_99.id, name: "宝利格", en_name: "宝利格", keyword: "华泰宝利格|华泰 宝利格", status: 0) if Column.find_by(name: "宝利格", keyword: "华泰宝利格|华泰 宝利格").nil?
Column.create!(category_id: category_99.id, name: "经典圣达菲", en_name: "经典圣达菲", keyword: "华泰经典圣达菲|华泰 经典圣达菲", status: 0) if Column.find_by(name: "经典圣达菲", keyword: "华泰经典圣达菲|华泰 经典圣达菲").nil?
Column.create!(category_id: category_99.id, name: "路盛E70", en_name: "路盛E70", keyword: "华泰路盛E70|华泰 路盛E70", status: 0) if Column.find_by(name: "路盛E70", keyword: "华泰路盛E70|华泰 路盛E70").nil?
Column.create!(category_id: category_99.id, name: "特拉卡", en_name: "特拉卡", keyword: "华泰特拉卡|华泰 特拉卡", status: 0) if Column.find_by(name: "特拉卡", keyword: "华泰特拉卡|华泰 特拉卡").nil?
Column.create!(category_id: category_99.id, name: "新圣达菲", en_name: "新圣达菲", keyword: "华泰新圣达菲|华泰 新圣达菲", status: 0) if Column.find_by(name: "新圣达菲", keyword: "华泰新圣达菲|华泰 新圣达菲").nil?
Column.create!(category_id: category_99.id, name: "吉田", en_name: "吉田", keyword: "华泰吉田|华泰 吉田", status: 0) if Column.find_by(name: "吉田", keyword: "华泰吉田|华泰 吉田").nil?
Column.create!(category_id: category_99.id, name: "悍马H2", en_name: "H2", keyword: "悍马H2|Hummer H2", status: 0) if Column.find_by(name: "悍马H2", keyword: "悍马H2|Hummer H2").nil?
Column.create!(category_id: category_99.id, name: "悍马H200", en_name: "H200", keyword: "悍马H200|Hummer H200", status: 0) if Column.find_by(name: "悍马H200", keyword: "悍马H200|Hummer H200").nil?
Column.create!(category_id: category_99.id, name: "悍马H3", en_name: "H3", keyword: "悍马H3|Hummer H3", status: 0) if Column.find_by(name: "悍马H3", keyword: "悍马H3|Hummer H3").nil?
Column.create!(category_id: category_99.id, name: "悍马H600", en_name: "H600", keyword: "悍马H600|Hummer H600", status: 0) if Column.find_by(name: "悍马H600", keyword: "悍马H600|Hummer H600").nil?
Column.create!(category_id: category_99.id, name: "悍马悍霸", en_name: "悍马悍霸", keyword: "悍马悍霸|Hummer 悍马悍霸", status: 0) if Column.find_by(name: "悍马悍霸", keyword: "悍马悍霸|Hummer 悍马悍霸").nil?
Column.create!(category_id: category_99.id, name: "悍马加长版", en_name: "悍马加长版", keyword: "悍马加长版|Hummer 悍马加长版", status: 0) if Column.find_by(name: "悍马加长版", keyword: "悍马加长版|Hummer 悍马加长版").nil?
Column.create!(category_id: category_99.id, name: "勇士悍马", en_name: "勇士悍马", keyword: "勇士悍马|Hummer 勇士悍马", status: 0) if Column.find_by(name: "勇士悍马", keyword: "勇士悍马|Hummer 勇士悍马").nil?
Column.create!(category_id: category_99.id, name: "傲骏", en_name: "傲骏", keyword: "黄海傲骏|黄海 傲骏", status: 0) if Column.find_by(name: "傲骏", keyword: "黄海傲骏|黄海 傲骏").nil?
Column.create!(category_id: category_99.id, name: "翱龙CUV", en_name: "翱龙CUV", keyword: "黄海翱龙CUV|黄海 翱龙CUV", status: 0) if Column.find_by(name: "翱龙CUV", keyword: "黄海翱龙CUV|黄海 翱龙CUV").nil?
Column.create!(category_id: category_99.id, name: "大柴神", en_name: "大柴神", keyword: "黄海大柴神|黄海 大柴神", status: 0) if Column.find_by(name: "大柴神", keyword: "黄海大柴神|黄海 大柴神").nil?
Column.create!(category_id: category_99.id, name: "黄海挑战者", en_name: "黄海挑战者", keyword: "黄海挑战者|黄海 黄海挑战者", status: 0) if Column.find_by(name: "黄海挑战者", keyword: "黄海挑战者|黄海 黄海挑战者").nil?
Column.create!(category_id: category_99.id, name: "黄海N1", en_name: "N1", keyword: "黄海N1|黄海 N1", status: 0) if Column.find_by(name: "黄海N1", keyword: "黄海N1|黄海 N1").nil?
Column.create!(category_id: category_99.id, name: "黄海N1S", en_name: "N1S", keyword: "黄海N1S|黄海 N1S", status: 0) if Column.find_by(name: "黄海N1S", keyword: "黄海N1S|黄海 N1S").nil?
Column.create!(category_id: category_99.id, name: "黄海N2", en_name: "N2", keyword: "黄海N2|黄海 N2", status: 0) if Column.find_by(name: "黄海N2", keyword: "黄海N2|黄海 N2").nil?
Column.create!(category_id: category_99.id, name: "旗胜F1", en_name: "旗胜F1", keyword: "黄海旗胜F1|黄海 旗胜F1", status: 0) if Column.find_by(name: "旗胜F1", keyword: "黄海旗胜F1|黄海 旗胜F1").nil?
Column.create!(category_id: category_99.id, name: "旗胜V3", en_name: "旗胜V3", keyword: "黄海旗胜V3|黄海 旗胜V3", status: 0) if Column.find_by(name: "旗胜V3", keyword: "黄海旗胜V3|黄海 旗胜V3").nil?
Column.create!(category_id: category_99.id, name: "瑞途", en_name: "瑞途", keyword: "黄海瑞途|黄海 瑞途", status: 0) if Column.find_by(name: "瑞途", keyword: "黄海瑞途|黄海 瑞途").nil?
Column.create!(category_id: category_99.id, name: "小柴神", en_name: "小柴神", keyword: "黄海小柴神|黄海 小柴神", status: 0) if Column.find_by(name: "小柴神", keyword: "黄海小柴神|黄海 小柴神").nil?
Column.create!(category_id: category_99.id, name: "傲羚", en_name: "傲羚", keyword: "黄海傲羚|黄海 傲羚", status: 0) if Column.find_by(name: "傲羚", keyword: "黄海傲羚|黄海 傲羚").nil?
Column.create!(category_id: category_99.id, name: "翱龙", en_name: "翱龙", keyword: "黄海翱龙|黄海 翱龙", status: 0) if Column.find_by(name: "翱龙", keyword: "黄海翱龙|黄海 翱龙").nil?
Column.create!(category_id: category_99.id, name: "傲龙CUV", en_name: "傲龙CUV", keyword: "黄海傲龙CUV|黄海 傲龙CUV", status: 0) if Column.find_by(name: "傲龙CUV", keyword: "黄海傲龙CUV|黄海 傲龙CUV").nil?
Column.create!(category_id: category_99.id, name: "翱龙SUV", en_name: "翱龙SUV", keyword: "黄海翱龙SUV|黄海 翱龙SUV", status: 0) if Column.find_by(name: "翱龙SUV", keyword: "黄海翱龙SUV|黄海 翱龙SUV").nil?
Column.create!(category_id: category_99.id, name: "黄海征服者", en_name: "黄海征服者", keyword: "黄海征服者|黄海 黄海征服者", status: 0) if Column.find_by(name: "黄海征服者", keyword: "黄海征服者|黄海 黄海征服者").nil?
Column.create!(category_id: category_99.id, name: "领航者", en_name: "领航者", keyword: "黄海领航者|黄海 领航者", status: 0) if Column.find_by(name: "领航者", keyword: "黄海领航者|黄海 领航者").nil?
Column.create!(category_id: category_99.id, name: "旗胜CUV", en_name: "旗胜CUV", keyword: "黄海旗胜CUV|黄海 旗胜CUV", status: 0) if Column.find_by(name: "旗胜CUV", keyword: "黄海旗胜CUV|黄海 旗胜CUV").nil?
Column.create!(category_id: category_99.id, name: "曙光骄子", en_name: "曙光骄子", keyword: "黄海曙光骄子|黄海 曙光骄子", status: 0) if Column.find_by(name: "曙光骄子", keyword: "黄海曙光骄子|黄海 曙光骄子").nil?
Column.create!(category_id: category_99.id, name: "骏意", en_name: "骏意", keyword: "哈飞骏意|哈飞 骏意", status: 0) if Column.find_by(name: "骏意", keyword: "哈飞骏意|哈飞 骏意").nil?
Column.create!(category_id: category_99.id, name: "路宝", en_name: "路宝", keyword: "哈飞路宝|哈飞 路宝", status: 0) if Column.find_by(name: "路宝", keyword: "哈飞路宝|哈飞 路宝").nil?
Column.create!(category_id: category_99.id, name: "路尊小霸王", en_name: "路尊小霸王", keyword: "哈飞路尊小霸王|哈飞 路尊小霸王", status: 0) if Column.find_by(name: "路尊小霸王", keyword: "哈飞路尊小霸王|哈飞 路尊小霸王").nil?
Column.create!(category_id: category_99.id, name: "赛豹Ⅲ", en_name: "赛豹Ⅲ", keyword: "哈飞赛豹Ⅲ|哈飞 赛豹Ⅲ", status: 0) if Column.find_by(name: "赛豹Ⅲ", keyword: "哈飞赛豹Ⅲ|哈飞 赛豹Ⅲ").nil?
Column.create!(category_id: category_99.id, name: "赛马", en_name: "赛马", keyword: "哈飞赛马|哈飞 赛马", status: 0) if Column.find_by(name: "赛马", keyword: "哈飞赛马|哈飞 赛马").nil?
Column.create!(category_id: category_99.id, name: "新民意", en_name: "新民意", keyword: "哈飞新民意|哈飞 新民意", status: 0) if Column.find_by(name: "新民意", keyword: "哈飞新民意|哈飞 新民意").nil?
Column.create!(category_id: category_99.id, name: "中意", en_name: "中意", keyword: "哈飞中意|哈飞 中意", status: 0) if Column.find_by(name: "中意", keyword: "哈飞中意|哈飞 中意").nil?
Column.create!(category_id: category_99.id, name: "百利", en_name: "百利", keyword: "哈飞百利|哈飞 百利", status: 0) if Column.find_by(name: "百利", keyword: "哈飞百利|哈飞 百利").nil?
Column.create!(category_id: category_99.id, name: "哈飞单双排", en_name: "单双排", keyword: "哈飞单双排|哈飞 单双排", status: 0) if Column.find_by(name: "哈飞单双排", keyword: "哈飞单双排|哈飞 单双排").nil?
Column.create!(category_id: category_99.id, name: "路尊大霸王", en_name: "路尊大霸王", keyword: "哈飞路尊大霸王|哈飞 路尊大霸王", status: 0) if Column.find_by(name: "路尊大霸王", keyword: "哈飞路尊大霸王|哈飞 路尊大霸王").nil?
Column.create!(category_id: category_99.id, name: "民意", en_name: "民意", keyword: "哈飞民意|哈飞 民意", status: 0) if Column.find_by(name: "民意", keyword: "哈飞民意|哈飞 民意").nil?
Column.create!(category_id: category_99.id, name: "民意单双排", en_name: "民意单双排", keyword: "哈飞民意单双排|哈飞 民意单双排", status: 0) if Column.find_by(name: "民意单双排", keyword: "哈飞民意单双排|哈飞 民意单双排").nil?
Column.create!(category_id: category_99.id, name: "民意M408", en_name: "民意M408", keyword: "哈飞民意M408|哈飞 民意M408", status: 0) if Column.find_by(name: "民意M408", keyword: "哈飞民意M408|哈飞 民意M408").nil?
Column.create!(category_id: category_99.id, name: "民意一排半", en_name: "民意一排半", keyword: "哈飞民意一排半|哈飞 民意一排半", status: 0) if Column.find_by(name: "民意一排半", keyword: "哈飞民意一排半|哈飞 民意一排半").nil?
Column.create!(category_id: category_99.id, name: "普面", en_name: "普面", keyword: "哈飞普面|哈飞 普面", status: 0) if Column.find_by(name: "普面", keyword: "哈飞普面|哈飞 普面").nil?
Column.create!(category_id: category_99.id, name: "锐意", en_name: "锐意", keyword: "哈飞锐意|哈飞 锐意", status: 0) if Column.find_by(name: "锐意", keyword: "哈飞锐意|哈飞 锐意").nil?
Column.create!(category_id: category_99.id, name: "赛豹V系", en_name: "赛豹V系", keyword: "哈飞赛豹V系|哈飞 赛豹V系", status: 0) if Column.find_by(name: "赛豹V系", keyword: "哈飞赛豹V系|哈飞 赛豹V系").nil?
Column.create!(category_id: category_99.id, name: "松花江", en_name: "松花江", keyword: "哈飞松花江|哈飞 松花江", status: 0) if Column.find_by(name: "松花江", keyword: "哈飞松花江|哈飞 松花江").nil?
Column.create!(category_id: category_99.id, name: "中意单双排", en_name: "中意单双排", keyword: "哈飞中意单双排|哈飞 中意单双排", status: 0) if Column.find_by(name: "中意单双排", keyword: "哈飞中意单双排|哈飞 中意单双排").nil?
Column.create!(category_id: category_99.id, name: "福卡", en_name: "福卡", keyword: "海马商用车福卡|海马商用车 福卡", status: 0) if Column.find_by(name: "福卡", keyword: "海马商用车福卡|海马商用车 福卡").nil?
Column.create!(category_id: category_99.id, name: "福仕达鸿达", en_name: "福仕达鸿达", keyword: "海马商用车福仕达鸿达|海马商用车 福仕达鸿达", status: 0) if Column.find_by(name: "福仕达鸿达", keyword: "海马商用车福仕达鸿达|海马商用车 福仕达鸿达").nil?
Column.create!(category_id: category_99.id, name: "福仕达荣达", en_name: "福仕达荣达", keyword: "海马商用车福仕达荣达|海马商用车 福仕达荣达", status: 0) if Column.find_by(name: "福仕达荣达", keyword: "海马商用车福仕达荣达|海马商用车 福仕达荣达").nil?
Column.create!(category_id: category_99.id, name: "福仕达新鸿达", en_name: "福仕达新鸿达", keyword: "海马商用车福仕达新鸿达|海马商用车 福仕达新鸿达", status: 0) if Column.find_by(name: "福仕达新鸿达", keyword: "海马商用车福仕达新鸿达|海马商用车 福仕达新鸿达").nil?
Column.create!(category_id: category_99.id, name: "福仕达新腾达", en_name: "福仕达新腾达", keyword: "海马商用车福仕达新腾达|海马商用车 福仕达新腾达", status: 0) if Column.find_by(name: "福仕达新腾达", keyword: "海马商用车福仕达新腾达|海马商用车 福仕达新腾达").nil?
Column.create!(category_id: category_99.id, name: "海马爱尚", en_name: "海马爱尚", keyword: "海马商用车海马爱尚|海马商用车 海马爱尚", status: 0) if Column.find_by(name: "海马爱尚", keyword: "海马商用车海马爱尚|海马商用车 海马爱尚").nil?
Column.create!(category_id: category_99.id, name: "海马王子", en_name: "海马王子", keyword: "海马商用车海马王子|海马商用车 海马王子", status: 0) if Column.find_by(name: "海马王子", keyword: "海马商用车海马王子|海马商用车 海马王子").nil?
Column.create!(category_id: category_99.id, name: "腾达", en_name: "腾达", keyword: "海马商用车腾达|海马商用车 腾达", status: 0) if Column.find_by(name: "腾达", keyword: "海马商用车腾达|海马商用车 腾达").nil?
Column.create!(category_id: category_99.id, name: "华颂7", en_name: "华颂7", keyword: "华颂7|华颂 华颂7", status: 0) if Column.find_by(name: "华颂7", keyword: "华颂7|华颂 华颂7").nil?
Column.create!(category_id: category_99.id, name: "华泰iEV230", en_name: "iEV230", keyword: "华泰新能源华泰iEV230|华泰新能源 iEV230", status: 0) if Column.find_by(name: "华泰iEV230", keyword: "华泰新能源华泰iEV230|华泰新能源 iEV230").nil?
Column.create!(category_id: category_99.id, name: "华泰XEV260", en_name: "XEV260", keyword: "华泰新能源华泰XEV260|华泰新能源 XEV260", status: 0) if Column.find_by(name: "华泰XEV260", keyword: "华泰新能源华泰XEV260|华泰新能源 XEV260").nil?
Column.create!(category_id: category_99.id, name: "海格H5C", en_name: "H5C", keyword: "海格H5C|海格 H5C", status: 0) if Column.find_by(name: "海格H5C", keyword: "海格H5C|海格 H5C").nil?
Column.create!(category_id: category_99.id, name: "海格H5V", en_name: "H5V", keyword: "海格H5V|海格 H5V", status: 0) if Column.find_by(name: "海格H5V", keyword: "海格H5V|海格 H5V").nil?
Column.create!(category_id: category_99.id, name: "海格H6C", en_name: "H6C", keyword: "海格H6C|海格 H6C", status: 0) if Column.find_by(name: "海格H6C", keyword: "海格H6C|海格 H6C").nil?
Column.create!(category_id: category_99.id, name: "海格H6V", en_name: "H6V", keyword: "海格H6V|海格 H6V", status: 0) if Column.find_by(name: "海格H6V", keyword: "海格H6V|海格 H6V").nil?
Column.create!(category_id: category_99.id, name: "龙威", en_name: "龙威", keyword: "海格龙威|海格 龙威", status: 0) if Column.find_by(name: "龙威", keyword: "海格龙威|海格 龙威").nil?
Column.create!(category_id: category_99.id, name: "伊思坦纳", en_name: "伊思坦纳", keyword: "汇众伊思坦纳|汇众 伊思坦纳", status: 0) if Column.find_by(name: "伊思坦纳", keyword: "汇众伊思坦纳|汇众 伊思坦纳").nil?
Column.create!(category_id: category_99.id, name: "德驰", en_name: "德驰", keyword: "汇众德驰|汇众 德驰", status: 0) if Column.find_by(name: "德驰", keyword: "汇众德驰|汇众 德驰").nil?
Column.create!(category_id: category_99.id, name: "海景", en_name: "海景", keyword: "华普海景|华普 海景", status: 0) if Column.find_by(name: "海景", keyword: "华普海景|华普 海景").nil?
Column.create!(category_id: category_99.id, name: "飚风", en_name: "飚风", keyword: "华普飚风|华普 飚风", status: 0) if Column.find_by(name: "飚风", keyword: "华普飚风|华普 飚风").nil?
Column.create!(category_id: category_99.id, name: "海锋", en_name: "海锋", keyword: "华普海锋|华普 海锋", status: 0) if Column.find_by(name: "海锋", keyword: "华普海锋|华普 海锋").nil?
Column.create!(category_id: category_99.id, name: "海尚", en_name: "海尚", keyword: "华普海尚|华普 海尚", status: 0) if Column.find_by(name: "海尚", keyword: "华普海尚|华普 海尚").nil?
Column.create!(category_id: category_99.id, name: "海迅", en_name: "海迅", keyword: "华普海迅|华普 海迅", status: 0) if Column.find_by(name: "海迅", keyword: "华普海迅|华普 海迅").nil?
Column.create!(category_id: category_99.id, name: "海炫", en_name: "海炫", keyword: "华普海炫|华普 海炫", status: 0) if Column.find_by(name: "海炫", keyword: "华普海炫|华普 海炫").nil?
Column.create!(category_id: category_99.id, name: "海域", en_name: "海域", keyword: "华普海域|华普 海域", status: 0) if Column.find_by(name: "海域", keyword: "华普海域|华普 海域").nil?
Column.create!(category_id: category_99.id, name: "海悦", en_name: "海悦", keyword: "华普海悦|华普 海悦", status: 0) if Column.find_by(name: "海悦", keyword: "华普海悦|华普 海悦").nil?
Column.create!(category_id: category_99.id, name: "杰士达美鹿", en_name: "杰士达美鹿", keyword: "华普杰士达美鹿|华普 杰士达美鹿", status: 0) if Column.find_by(name: "杰士达美鹿", keyword: "华普杰士达美鹿|华普 杰士达美鹿").nil?
Column.create!(category_id: category_99.id, name: "朗风", en_name: "朗风", keyword: "华普朗风|华普 朗风", status: 0) if Column.find_by(name: "朗风", keyword: "华普朗风|华普 朗风").nil?
Column.create!(category_id: category_99.id, name: "M203", en_name: "M203", keyword: "华普M203|华普 M203", status: 0) if Column.find_by(name: "M203", keyword: "华普M203|华普 M203").nil?
Column.create!(category_id: category_99.id, name: "途腾T1", en_name: "途腾T1", keyword: "恒天汽车途腾T1|恒天汽车 途腾T1", status: 0) if Column.find_by(name: "途腾T1", keyword: "恒天汽车途腾T1|恒天汽车 途腾T1").nil?
Column.create!(category_id: category_99.id, name: "途腾T2", en_name: "途腾T2", keyword: "恒天汽车途腾T2|恒天汽车 途腾T2", status: 0) if Column.find_by(name: "途腾T2", keyword: "恒天汽车途腾T2|恒天汽车 途腾T2").nil?
Column.create!(category_id: category_99.id, name: "途腾T3", en_name: "途腾T3", keyword: "恒天汽车途腾T3|恒天汽车 途腾T3", status: 0) if Column.find_by(name: "途腾T3", keyword: "恒天汽车途腾T3|恒天汽车 途腾T3").nil?
Column.create!(category_id: category_99.id, name: "黑豹轿卡", en_name: "黑豹轿卡", keyword: "黑豹轿卡|黑豹 黑豹轿卡", status: 0) if Column.find_by(name: "黑豹轿卡", keyword: "黑豹轿卡|黑豹 黑豹轿卡").nil?
Column.create!(category_id: category_99.id, name: "旅行家", en_name: "旅行家", keyword: "黑豹旅行家|黑豹 旅行家", status: 0) if Column.find_by(name: "旅行家", keyword: "黑豹旅行家|黑豹 旅行家").nil?
Column.create!(category_id: category_99.id, name: "黑豹", en_name: "黑豹", keyword: "黑豹|黑豹 黑豹", status: 0) if Column.find_by(name: "黑豹", keyword: "黑豹|黑豹 黑豹").nil?
Column.create!(category_id: category_99.id, name: "轻型客车", en_name: "轻型客车", keyword: "汉江轻型客车|汉江 轻型客车", status: 0) if Column.find_by(name: "轻型客车", keyword: "汉江轻型客车|汉江 轻型客车").nil?
Column.create!(category_id: category_99.id, name: "金刚海狮", en_name: "金刚海狮", keyword: "航天圆通金刚海狮|航天圆通 金刚海狮", status: 0) if Column.find_by(name: "金刚海狮", keyword: "航天圆通金刚海狮|航天圆通 金刚海狮").nil?
Column.create!(category_id: category_99.id, name: "华阳客车", en_name: "华阳客车", keyword: "华阳客车|华阳 华阳客车", status: 0) if Column.find_by(name: "华阳客车", keyword: "华阳客车|华阳 华阳客车").nil?
Column.create!(category_id: category_99.id, name: "博瑞", en_name: "博瑞", keyword: "吉利汽车博瑞|geely 博瑞", status: 0) if Column.find_by(name: "博瑞", keyword: "吉利汽车博瑞|geely 博瑞").nil?
Column.create!(category_id: category_99.id, name: "博越", en_name: "博越", keyword: "吉利汽车博越|geely 博越", status: 0) if Column.find_by(name: "博越", keyword: "吉利汽车博越|geely 博越").nil?
Column.create!(category_id: category_99.id, name: "帝豪RS", en_name: "帝豪RS", keyword: "吉利汽车帝豪RS|geely 帝豪RS", status: 0) if Column.find_by(name: "帝豪RS", keyword: "吉利汽车帝豪RS|geely 帝豪RS").nil?
Column.create!(category_id: category_99.id, name: "吉利EC8", en_name: "EC8", keyword: "吉利汽车吉利EC8|geely EC8", status: 0) if Column.find_by(name: "吉利EC8", keyword: "吉利汽车吉利EC8|geely EC8").nil?
Column.create!(category_id: category_99.id, name: "吉利GC7", en_name: "GC7", keyword: "吉利汽车吉利GC7|geely GC7", status: 0) if Column.find_by(name: "吉利GC7", keyword: "吉利汽车吉利GC7|geely GC7").nil?
Column.create!(category_id: category_99.id, name: "吉利GX7", en_name: "GX7", keyword: "吉利汽车吉利GX7|geely GX7", status: 0) if Column.find_by(name: "吉利GX7", keyword: "吉利汽车吉利GX7|geely GX7").nil?
Column.create!(category_id: category_99.id, name: "吉利海景", en_name: "海景", keyword: "吉利汽车吉利海景|geely 海景", status: 0) if Column.find_by(name: "吉利海景", keyword: "吉利汽车吉利海景|geely 海景").nil?
Column.create!(category_id: category_99.id, name: "吉利豪情SUV", en_name: "豪情SUV", keyword: "吉利汽车吉利豪情SUV|geely 豪情SUV", status: 0) if Column.find_by(name: "吉利豪情SUV", keyword: "吉利汽车吉利豪情SUV|geely 豪情SUV").nil?
Column.create!(category_id: category_99.id, name: "吉利英伦TX4", en_name: "TX4", keyword: "吉利汽车吉利英伦TX4|geely TX4", status: 0) if Column.find_by(name: "吉利英伦TX4", keyword: "吉利汽车吉利英伦TX4|geely TX4").nil?
Column.create!(category_id: category_99.id, name: "帝豪EV", en_name: "帝豪EV", keyword: "吉利汽车帝豪EV|geely 帝豪EV", status: 0) if Column.find_by(name: "帝豪EV", keyword: "吉利汽车帝豪EV|geely 帝豪EV").nil?
Column.create!(category_id: category_99.id, name: "吉利新帝豪两厢", en_name: "新帝豪hatchback", keyword: "吉利汽车吉利新帝豪两厢|geely 新帝豪hatchback", status: 0) if Column.find_by(name: "吉利新帝豪两厢", keyword: "吉利汽车吉利新帝豪两厢|geely 新帝豪hatchback").nil?
Column.create!(category_id: category_99.id, name: "帝豪", en_name: "帝豪", keyword: "吉利汽车帝豪|geely 帝豪", status: 0) if Column.find_by(name: "帝豪", keyword: "吉利汽车帝豪|geely 帝豪").nil?
Column.create!(category_id: category_99.id, name: "金刚CROSS", en_name: "金刚CROSS", keyword: "吉利汽车金刚CROSS|geely 金刚CROSS", status: 0) if Column.find_by(name: "金刚CROSS", keyword: "吉利汽车金刚CROSS|geely 金刚CROSS").nil?
Column.create!(category_id: category_99.id, name: "金刚", en_name: "金刚", keyword: "吉利汽车金刚|geely 金刚", status: 0) if Column.find_by(name: "金刚", keyword: "吉利汽车金刚|geely 金刚").nil?
Column.create!(category_id: category_99.id, name: "熊猫", en_name: "熊猫", keyword: "吉利汽车熊猫|geely 熊猫", status: 0) if Column.find_by(name: "熊猫", keyword: "吉利汽车熊猫|geely 熊猫").nil?
Column.create!(category_id: category_99.id, name: "远景", en_name: "远景", keyword: "吉利汽车远景|geely 远景", status: 0) if Column.find_by(name: "远景", keyword: "吉利汽车远景|geely 远景").nil?
Column.create!(category_id: category_99.id, name: "帝豪GS", en_name: "帝豪GS", keyword: "吉利汽车帝豪GS|geely 帝豪GS", status: 0) if Column.find_by(name: "帝豪GS", keyword: "吉利汽车帝豪GS|geely 帝豪GS").nil?
Column.create!(category_id: category_99.id, name: "全球鹰GX2", en_name: "GX2", keyword: "吉利汽车全球鹰GX2|geely GX2", status: 0) if Column.find_by(name: "全球鹰GX2", keyword: "吉利汽车全球鹰GX2|geely GX2").nil?
Column.create!(category_id: category_99.id, name: "豪情", en_name: "豪情", keyword: "吉利汽车豪情|geely 豪情", status: 0) if Column.find_by(name: "豪情", keyword: "吉利汽车豪情|geely 豪情").nil?
Column.create!(category_id: category_99.id, name: "经典版帝豪", en_name: "经典版帝豪", keyword: "吉利汽车经典版帝豪|geely 经典版帝豪", status: 0) if Column.find_by(name: "经典版帝豪", keyword: "吉利汽车经典版帝豪|geely 经典版帝豪").nil?
Column.create!(category_id: category_99.id, name: "经典版帝豪两厢", en_name: "经典版帝豪hatchback", keyword: "吉利汽车经典版帝豪两厢|geely 经典版帝豪hatchback", status: 0) if Column.find_by(name: "经典版帝豪两厢", keyword: "吉利汽车经典版帝豪两厢|geely 经典版帝豪hatchback").nil?
Column.create!(category_id: category_99.id, name: "金刚", en_name: "金刚(停售)", keyword: "吉利汽车金刚|geely 金刚(停售)", status: 0) if Column.find_by(name: "金刚", keyword: "吉利汽车金刚|geely 金刚(停售)").nil?
Column.create!(category_id: category_99.id, name: "吉利金刚2代", en_name: "金刚2代", keyword: "吉利汽车吉利金刚2代|geely 金刚2代", status: 0) if Column.find_by(name: "吉利金刚2代", keyword: "吉利汽车吉利金刚2代|geely 金刚2代").nil?
Column.create!(category_id: category_99.id, name: "吉利金刚财富", en_name: "金刚财富", keyword: "吉利汽车吉利金刚财富|geely 金刚财富", status: 0) if Column.find_by(name: "吉利金刚财富", keyword: "吉利汽车吉利金刚财富|geely 金刚财富").nil?
Column.create!(category_id: category_99.id, name: "美人豹", en_name: "美人豹", keyword: "吉利汽车美人豹|geely 美人豹", status: 0) if Column.find_by(name: "美人豹", keyword: "吉利汽车美人豹|geely 美人豹").nil?
Column.create!(category_id: category_99.id, name: "美日之星", en_name: "美日之星", keyword: "吉利汽车美日之星|geely 美日之星", status: 0) if Column.find_by(name: "美日之星", keyword: "吉利汽车美日之星|geely 美日之星").nil?
Column.create!(category_id: category_99.id, name: "吉利SC3", en_name: "SC3", keyword: "吉利汽车吉利SC3|geely SC3", status: 0) if Column.find_by(name: "吉利SC3", keyword: "吉利汽车吉利SC3|geely SC3").nil?
Column.create!(category_id: category_99.id, name: "吉利SX7", en_name: "SX7", keyword: "吉利汽车吉利SX7|geely SX7", status: 0) if Column.find_by(name: "吉利SX7", keyword: "吉利汽车吉利SX7|geely SX7").nil?
Column.create!(category_id: category_99.id, name: "吉利熊猫CROSS", en_name: "熊猫CROSS", keyword: "吉利汽车吉利熊猫CROSS|geely 熊猫CROSS", status: 0) if Column.find_by(name: "吉利熊猫CROSS", keyword: "吉利汽车吉利熊猫CROSS|geely 熊猫CROSS").nil?
Column.create!(category_id: category_99.id, name: "吉利新美日两厢", en_name: "新美日hatchback", keyword: "吉利汽车吉利新美日两厢|geely 新美日hatchback", status: 0) if Column.find_by(name: "吉利新美日两厢", keyword: "吉利汽车吉利新美日两厢|geely 新美日hatchback").nil?
Column.create!(category_id: category_99.id, name: "吉利英伦C5两厢", en_name: "英伦C5hatchback", keyword: "吉利汽车吉利英伦C5两厢|geely 英伦C5hatchback", status: 0) if Column.find_by(name: "吉利英伦C5两厢", keyword: "吉利汽车吉利英伦C5两厢|geely 英伦C5hatchback").nil?
Column.create!(category_id: category_99.id, name: "吉利英伦C5三厢", en_name: "英伦C5sedan", keyword: "吉利汽车吉利英伦C5三厢|geely 英伦C5sedan", status: 0) if Column.find_by(name: "吉利英伦C5三厢", keyword: "吉利汽车吉利英伦C5三厢|geely 英伦C5sedan").nil?
Column.create!(category_id: category_99.id, name: "优利欧", en_name: "优利欧", keyword: "吉利汽车优利欧|geely 优利欧", status: 0) if Column.find_by(name: "优利欧", keyword: "吉利汽车优利欧|geely 优利欧").nil?
Column.create!(category_id: category_99.id, name: "中国龙", en_name: "中国龙", keyword: "吉利汽车中国龙|geely 中国龙", status: 0) if Column.find_by(name: "中国龙", keyword: "吉利汽车中国龙|geely 中国龙").nil?
Column.create!(category_id: category_99.id, name: "吉利自由舰", en_name: "自由舰", keyword: "吉利汽车吉利自由舰|geely 自由舰", status: 0) if Column.find_by(name: "吉利自由舰", keyword: "吉利汽车吉利自由舰|geely 自由舰").nil?
Column.create!(category_id: category_99.id, name: "宾悦", en_name: "宾悦", keyword: "江淮宾悦|江淮 宾悦", status: 0) if Column.find_by(name: "宾悦", keyword: "江淮宾悦|江淮 宾悦").nil?
Column.create!(category_id: category_99.id, name: "第二代瑞风S5", en_name: "第二代瑞风S5", keyword: "江淮第二代瑞风S5|江淮 第二代瑞风S5", status: 0) if Column.find_by(name: "第二代瑞风S5", keyword: "江淮第二代瑞风S5|江淮 第二代瑞风S5").nil?
Column.create!(category_id: category_99.id, name: "和悦", en_name: "和悦", keyword: "江淮和悦|江淮 和悦", status: 0) if Column.find_by(name: "和悦", keyword: "江淮和悦|江淮 和悦").nil?
Column.create!(category_id: category_99.id, name: "和悦A13", en_name: "和悦A13", keyword: "江淮和悦A13|江淮 和悦A13", status: 0) if Column.find_by(name: "和悦A13", keyword: "江淮和悦A13|江淮 和悦A13").nil?
Column.create!(category_id: category_99.id, name: "和悦A13RS", en_name: "和悦A13RS", keyword: "江淮和悦A13RS|江淮 和悦A13RS", status: 0) if Column.find_by(name: "和悦A13RS", keyword: "江淮和悦A13RS|江淮 和悦A13RS").nil?
Column.create!(category_id: category_99.id, name: "和悦A30", en_name: "和悦A30", keyword: "江淮和悦A30|江淮 和悦A30", status: 0) if Column.find_by(name: "和悦A30", keyword: "江淮和悦A30|江淮 和悦A30").nil?
Column.create!(category_id: category_99.id, name: "江淮iEV", en_name: "iEV", keyword: "江淮iEV|江淮 iEV", status: 0) if Column.find_by(name: "江淮iEV", keyword: "江淮iEV|江淮 iEV").nil?
Column.create!(category_id: category_99.id, name: "江淮K3", en_name: "江淮K3", keyword: "江淮K3|江淮 江淮K3", status: 0) if Column.find_by(name: "江淮K3", keyword: "江淮K3|江淮 江淮K3").nil?
Column.create!(category_id: category_99.id, name: "江淮K5", en_name: "江淮K5", keyword: "江淮K5|江淮 江淮K5", status: 0) if Column.find_by(name: "江淮K5", keyword: "江淮K5|江淮 江淮K5").nil?
Column.create!(category_id: category_99.id, name: "瑞风", en_name: "瑞风", keyword: "江淮瑞风|江淮 瑞风", status: 0) if Column.find_by(name: "瑞风", keyword: "江淮瑞风|江淮 瑞风").nil?
Column.create!(category_id: category_99.id, name: "瑞风改装车", en_name: "瑞风改装车", keyword: "江淮瑞风改装车|江淮 瑞风改装车", status: 0) if Column.find_by(name: "瑞风改装车", keyword: "江淮瑞风改装车|江淮 瑞风改装车").nil?
Column.create!(category_id: category_99.id, name: "瑞风M2", en_name: "瑞风M2", keyword: "江淮瑞风M2|江淮 瑞风M2", status: 0) if Column.find_by(name: "瑞风M2", keyword: "江淮瑞风M2|江淮 瑞风M2").nil?
Column.create!(category_id: category_99.id, name: "瑞风M3", en_name: "瑞风M3", keyword: "江淮瑞风M3|江淮 瑞风M3", status: 0) if Column.find_by(name: "瑞风M3", keyword: "江淮瑞风M3|江淮 瑞风M3").nil?
Column.create!(category_id: category_99.id, name: "瑞风M5", en_name: "瑞风M5", keyword: "江淮瑞风M5|江淮 瑞风M5", status: 0) if Column.find_by(name: "瑞风M5", keyword: "江淮瑞风M5|江淮 瑞风M5").nil?
Column.create!(category_id: category_99.id, name: "瑞风S2", en_name: "瑞风S2", keyword: "江淮瑞风S2|江淮 瑞风S2", status: 0) if Column.find_by(name: "瑞风S2", keyword: "江淮瑞风S2|江淮 瑞风S2").nil?
Column.create!(category_id: category_99.id, name: "瑞风S3", en_name: "瑞风S3", keyword: "江淮瑞风S3|江淮 瑞风S3", status: 0) if Column.find_by(name: "瑞风S3", keyword: "江淮瑞风S3|江淮 瑞风S3").nil?
Column.create!(category_id: category_99.id, name: "瑞风S5", en_name: "瑞风S5", keyword: "江淮瑞风S5|江淮 瑞风S5", status: 0) if Column.find_by(name: "瑞风S5", keyword: "江淮瑞风S5|江淮 瑞风S5").nil?
Column.create!(category_id: category_99.id, name: "瑞铃", en_name: "瑞铃", keyword: "江淮瑞铃|江淮 瑞铃", status: 0) if Column.find_by(name: "瑞铃", keyword: "江淮瑞铃|江淮 瑞铃").nil?
Column.create!(category_id: category_99.id, name: "瑞鹰", en_name: "瑞鹰", keyword: "江淮瑞鹰|江淮 瑞鹰", status: 0) if Column.find_by(name: "瑞鹰", keyword: "江淮瑞鹰|江淮 瑞鹰").nil?
Column.create!(category_id: category_99.id, name: "帅铃T6", en_name: "帅铃T6", keyword: "江淮帅铃T6|江淮 帅铃T6", status: 0) if Column.find_by(name: "帅铃T6", keyword: "江淮帅铃T6|江淮 帅铃T6").nil?
Column.create!(category_id: category_99.id, name: "星锐", en_name: "星锐", keyword: "江淮星锐|江淮 星锐", status: 0) if Column.find_by(name: "星锐", keyword: "江淮星锐|江淮 星锐").nil?
Column.create!(category_id: category_99.id, name: "悦悦", en_name: "悦悦", keyword: "江淮悦悦|江淮 悦悦", status: 0) if Column.find_by(name: "悦悦", keyword: "江淮悦悦|江淮 悦悦").nil?
Column.create!(category_id: category_99.id, name: "江淮iEV6S", en_name: "iEV6S", keyword: "江淮iEV6S|江淮 iEV6S", status: 0) if Column.find_by(name: "江淮iEV6S", keyword: "江淮iEV6S|江淮 iEV6S").nil?
Column.create!(category_id: category_99.id, name: "瑞风A33", en_name: "瑞风A33", keyword: "江淮瑞风A33|江淮 瑞风A33", status: 0) if Column.find_by(name: "瑞风A33", keyword: "江淮瑞风A33|江淮 瑞风A33").nil?
Column.create!(category_id: category_99.id, name: "瑞风A6", en_name: "瑞风A6", keyword: "江淮瑞风A6|江淮 瑞风A6", status: 0) if Column.find_by(name: "瑞风A6", keyword: "江淮瑞风A6|江淮 瑞风A6").nil?
Column.create!(category_id: category_99.id, name: "瑞风A60", en_name: "瑞风A60", keyword: "江淮瑞风A60|江淮 瑞风A60", status: 0) if Column.find_by(name: "瑞风A60", keyword: "江淮瑞风A60|江淮 瑞风A60").nil?
Column.create!(category_id: category_99.id, name: "瑞风M6", en_name: "瑞风M6", keyword: "江淮瑞风M6|江淮 瑞风M6", status: 0) if Column.find_by(name: "瑞风M6", keyword: "江淮瑞风M6|江淮 瑞风M6").nil?
Column.create!(category_id: category_99.id, name: "安驰", en_name: "安驰", keyword: "江淮安驰|江淮 安驰", status: 0) if Column.find_by(name: "安驰", keyword: "江淮安驰|江淮 安驰").nil?
Column.create!(category_id: category_99.id, name: "杰豹", en_name: "杰豹", keyword: "江淮杰豹|江淮 杰豹", status: 0) if Column.find_by(name: "杰豹", keyword: "江淮杰豹|江淮 杰豹").nil?
Column.create!(category_id: category_99.id, name: "金牛", en_name: "金牛", keyword: "江淮金牛|江淮 金牛", status: 0) if Column.find_by(name: "金牛", keyword: "江淮金牛|江淮 金牛").nil?
Column.create!(category_id: category_99.id, name: "凌铃", en_name: "凌铃", keyword: "江淮凌铃|江淮 凌铃", status: 0) if Column.find_by(name: "凌铃", keyword: "江淮凌铃|江淮 凌铃").nil?
Column.create!(category_id: category_99.id, name: "威豹", en_name: "威豹", keyword: "江淮威豹|江淮 威豹", status: 0) if Column.find_by(name: "威豹", keyword: "江淮威豹|江淮 威豹").nil?
Column.create!(category_id: category_99.id, name: "微轿", en_name: "微轿", keyword: "江淮微轿|江淮 微轿", status: 0) if Column.find_by(name: "微轿", keyword: "江淮微轿|江淮 微轿").nil?
Column.create!(category_id: category_99.id, name: "雪豹X50", en_name: "雪豹X50", keyword: "江淮雪豹X50|江淮 雪豹X50", status: 0) if Column.find_by(name: "雪豹X50", keyword: "江淮雪豹X50|江淮 雪豹X50").nil?
Column.create!(category_id: category_99.id, name: "雪豹X80", en_name: "雪豹X80", keyword: "江淮雪豹X80|江淮 雪豹X80", status: 0) if Column.find_by(name: "雪豹X80", keyword: "江淮雪豹X80|江淮 雪豹X80").nil?
Column.create!(category_id: category_99.id, name: "Jeep2500", en_name: "2500", keyword: "Jeep2500|Jeep 2500", status: 0) if Column.find_by(name: "Jeep2500", keyword: "Jeep2500|Jeep 2500").nil?
Column.create!(category_id: category_99.id, name: "大切诺基", en_name: "大切诺基", keyword: "Jeep大切诺基|Jeep 大切诺基", status: 0) if Column.find_by(name: "大切诺基", keyword: "Jeep大切诺基|Jeep 大切诺基").nil?
Column.create!(category_id: category_99.id, name: "切诺基", en_name: "切诺基", keyword: "Jeep切诺基|Jeep 切诺基", status: 0) if Column.find_by(name: "切诺基", keyword: "Jeep切诺基|Jeep 切诺基").nil?
Column.create!(category_id: category_99.id, name: "自由光", en_name: "cherokee", keyword: "Jeep自由光|Jeep cherokee", status: 0) if Column.find_by(name: "自由光", keyword: "Jeep自由光|Jeep cherokee").nil?
Column.create!(category_id: category_99.id, name: "自由侠", en_name: "renegade", keyword: "Jeep自由侠|Jeep renegade", status: 0) if Column.find_by(name: "自由侠", keyword: "Jeep自由侠|Jeep renegade").nil?
Column.create!(category_id: category_99.id, name: "大切诺基", en_name: "grand cherokee", keyword: "Jeep大切诺基|Jeep grand cherokee", status: 0) if Column.find_by(name: "大切诺基", keyword: "Jeep大切诺基|Jeep grand cherokee").nil?
Column.create!(category_id: category_99.id, name: "牧马人", en_name: "Wrangler", keyword: "Jeep牧马人|Jeep Wrangler", status: 0) if Column.find_by(name: "牧马人", keyword: "Jeep牧马人|Jeep Wrangler").nil?
Column.create!(category_id: category_99.id, name: "指南者", en_name: "指南者", keyword: "Jeep指南者|Jeep 指南者", status: 0) if Column.find_by(name: "指南者", keyword: "Jeep指南者|Jeep 指南者").nil?
Column.create!(category_id: category_99.id, name: "自由光", en_name: "自由光", keyword: "Jeep自由光|Jeep 自由光", status: 0) if Column.find_by(name: "自由光", keyword: "Jeep自由光|Jeep 自由光").nil?
Column.create!(category_id: category_99.id, name: "自由客", en_name: "patriot", keyword: "Jeep自由客|Jeep patriot", status: 0) if Column.find_by(name: "自由客", keyword: "Jeep自由客|Jeep patriot").nil?
Column.create!(category_id: category_99.id, name: "切诺基", en_name: "切诺基", keyword: "Jeep切诺基|Jeep 切诺基", status: 0) if Column.find_by(name: "切诺基", keyword: "Jeep切诺基|Jeep 切诺基").nil?
Column.create!(category_id: category_99.id, name: "指挥官", en_name: "指挥官", keyword: "Jeep指挥官|Jeep 指挥官", status: 0) if Column.find_by(name: "指挥官", keyword: "Jeep指挥官|Jeep 指挥官").nil?
Column.create!(category_id: category_99.id, name: "自由人", en_name: "自由人", keyword: "Jeep自由人|Jeep 自由人", status: 0) if Column.find_by(name: "自由人", keyword: "Jeep自由人|Jeep 自由人").nil?
Column.create!(category_id: category_99.id, name: "捷豹F-PACE", en_name: "F-PACE", keyword: "捷豹F-PACE|jaguar F-PACE", status: 0) if Column.find_by(name: "捷豹F-PACE", keyword: "捷豹F-PACE|jaguar F-PACE").nil?
Column.create!(category_id: category_99.id, name: "捷豹F-Type", en_name: "F-Type", keyword: "捷豹F-Type|jaguar F-Type", status: 0) if Column.find_by(name: "捷豹F-Type", keyword: "捷豹F-Type|jaguar F-Type").nil?
Column.create!(category_id: category_99.id, name: "捷豹XE", en_name: "XE", keyword: "捷豹XE|jaguar XE", status: 0) if Column.find_by(name: "捷豹XE", keyword: "捷豹XE|jaguar XE").nil?
Column.create!(category_id: category_99.id, name: "捷豹XF", en_name: "XF", keyword: "捷豹XF|jaguar XF", status: 0) if Column.find_by(name: "捷豹XF", keyword: "捷豹XF|jaguar XF").nil?
Column.create!(category_id: category_99.id, name: "捷豹XJ", en_name: "XJ", keyword: "捷豹XJ|jaguar XJ", status: 0) if Column.find_by(name: "捷豹XJ", keyword: "捷豹XJ|jaguar XJ").nil?
Column.create!(category_id: category_99.id, name: "捷豹XKR", en_name: "XKR", keyword: "捷豹XKR|jaguar XKR", status: 0) if Column.find_by(name: "捷豹XKR", keyword: "捷豹XKR|jaguar XKR").nil?
Column.create!(category_id: category_99.id, name: "捷豹XJR", en_name: "XJR", keyword: "捷豹XJR|jaguar XJR", status: 0) if Column.find_by(name: "捷豹XJR", keyword: "捷豹XJR|jaguar XJR").nil?
Column.create!(category_id: category_99.id, name: "X", en_name: "X", keyword: "捷豹X|jaguar X", status: 0) if Column.find_by(name: "X", keyword: "捷豹X|jaguar X").nil?
Column.create!(category_id: category_99.id, name: "捷豹S-TYPE", en_name: "S-TYPE", keyword: "捷豹S-TYPE|jaguar S-TYPE", status: 0) if Column.find_by(name: "捷豹S-TYPE", keyword: "捷豹S-TYPE|jaguar S-TYPE").nil?
Column.create!(category_id: category_99.id, name: "捷豹XFR", en_name: "XFR", keyword: "捷豹XFR|jaguar XFR", status: 0) if Column.find_by(name: "捷豹XFR", keyword: "捷豹XFR|jaguar XFR").nil?
Column.create!(category_id: category_99.id, name: "捷豹XK", en_name: "XK", keyword: "捷豹XK|jaguar XK", status: 0) if Column.find_by(name: "捷豹XK", keyword: "捷豹XK|jaguar XK").nil?
Column.create!(category_id: category_99.id, name: "宝典", en_name: "宝典", keyword: "江铃宝典|江铃 宝典", status: 0) if Column.find_by(name: "宝典", keyword: "江铃宝典|江铃 宝典").nil?
Column.create!(category_id: category_99.id, name: "新世代全顺", en_name: "新世代全顺", keyword: "福特新世代全顺|ford 新世代全顺", status: 0) if Column.find_by(name: "新世代全顺", keyword: "福特新世代全顺|ford 新世代全顺").nil?
Column.create!(category_id: category_99.id, name: "经典全顺", en_name: "transit", keyword: "福特经典全顺|ford transit", status: 0) if Column.find_by(name: "经典全顺", keyword: "福特经典全顺|ford transit").nil?
Column.create!(category_id: category_99.id, name: "顺达宽体", en_name: "顺达宽体", keyword: "江铃顺达宽体|江铃 顺达宽体", status: 0) if Column.find_by(name: "顺达宽体", keyword: "江铃顺达宽体|江铃 顺达宽体").nil?
Column.create!(category_id: category_99.id, name: "凯锐800", en_name: "凯锐800", keyword: "江铃凯锐800|江铃 凯锐800", status: 0) if Column.find_by(name: "凯锐800", keyword: "江铃凯锐800|江铃 凯锐800").nil?
Column.create!(category_id: category_99.id, name: "凯运宽体", en_name: "凯运宽体", keyword: "江铃凯运宽体|江铃 凯运宽体", status: 0) if Column.find_by(name: "凯运宽体", keyword: "江铃凯运宽体|江铃 凯运宽体").nil?
Column.create!(category_id: category_99.id, name: "顺达", en_name: "顺达", keyword: "江铃顺达|江铃 顺达", status: 0) if Column.find_by(name: "顺达", keyword: "江铃顺达|江铃 顺达").nil?
Column.create!(category_id: category_99.id, name: "凯运升级版", en_name: "凯运升级版", keyword: "江铃凯运升级版|江铃 凯运升级版", status: 0) if Column.find_by(name: "凯运升级版", keyword: "江铃凯运升级版|江铃 凯运升级版").nil?
Column.create!(category_id: category_99.id, name: "域虎", en_name: "域虎", keyword: "江铃域虎|江铃 域虎", status: 0) if Column.find_by(name: "域虎", keyword: "江铃域虎|江铃 域虎").nil?
Column.create!(category_id: category_99.id, name: "驭胜S350", en_name: "驭胜S350", keyword: "驭胜S350|驭胜 驭胜S350", status: 0) if Column.find_by(name: "驭胜S350", keyword: "驭胜S350|驭胜 驭胜S350").nil?
Column.create!(category_id: category_99.id, name: "宝威", en_name: "宝威", keyword: "江铃宝威|江铃 宝威", status: 0) if Column.find_by(name: "宝威", keyword: "江铃宝威|江铃 宝威").nil?
Column.create!(category_id: category_99.id, name: "凯锐", en_name: "凯锐", keyword: "江铃凯锐|江铃 凯锐", status: 0) if Column.find_by(name: "凯锐", keyword: "江铃凯锐|江铃 凯锐").nil?
Column.create!(category_id: category_99.id, name: "凯威", en_name: "凯威", keyword: "江铃凯威|江铃 凯威", status: 0) if Column.find_by(name: "凯威", keyword: "江铃凯威|江铃 凯威").nil?
Column.create!(category_id: category_99.id, name: "大海狮", en_name: "大海狮", keyword: "金杯大海狮|金杯 大海狮", status: 0) if Column.find_by(name: "大海狮", keyword: "金杯大海狮|金杯 大海狮").nil?
Column.create!(category_id: category_99.id, name: "阁瑞斯", en_name: "阁瑞斯", keyword: "金杯阁瑞斯|金杯 阁瑞斯", status: 0) if Column.find_by(name: "阁瑞斯", keyword: "金杯阁瑞斯|金杯 阁瑞斯").nil?
Column.create!(category_id: category_99.id, name: "海狮", en_name: "海狮", keyword: "金杯海狮|金杯 海狮", status: 0) if Column.find_by(name: "海狮", keyword: "金杯海狮|金杯 海狮").nil?
Column.create!(category_id: category_99.id, name: "海狮第6代", en_name: "海狮第6代", keyword: "金杯海狮第6代|金杯 海狮第6代", status: 0) if Column.find_by(name: "海狮第6代", keyword: "金杯海狮第6代|金杯 海狮第6代").nil?
Column.create!(category_id: category_99.id, name: "华晨金杯S50", en_name: "S50", keyword: "华晨金杯S50|金杯 S50", status: 0) if Column.find_by(name: "华晨金杯S50", keyword: "华晨金杯S50|金杯 S50").nil?
Column.create!(category_id: category_99.id, name: "新海狮", en_name: "新海狮", keyword: "金杯新海狮|金杯 新海狮", status: 0) if Column.find_by(name: "新海狮", keyword: "金杯新海狮|金杯 新海狮").nil?
Column.create!(category_id: category_99.id, name: "霸道SUV", en_name: "霸道SUV", keyword: "金杯霸道SUV|金杯 霸道SUV", status: 0) if Column.find_by(name: "霸道SUV", keyword: "金杯霸道SUV|金杯 霸道SUV").nil?
Column.create!(category_id: category_99.id, name: "海星", en_name: "海星", keyword: "金杯海星|金杯 海星", status: 0) if Column.find_by(name: "海星", keyword: "金杯海星|金杯 海星").nil?
Column.create!(category_id: category_99.id, name: "A7", en_name: "A7", keyword: "金杯A7|金杯 A7", status: 0) if Column.find_by(name: "A7", keyword: "金杯A7|金杯 A7").nil?
Column.create!(category_id: category_99.id, name: "A9", en_name: "A9", keyword: "金杯A9|金杯 A9", status: 0) if Column.find_by(name: "A9", keyword: "金杯A9|金杯 A9").nil?
Column.create!(category_id: category_99.id, name: "华晨金杯750", en_name: "华晨金杯750", keyword: "华晨金杯750|金杯 华晨金杯750", status: 0) if Column.find_by(name: "华晨金杯750", keyword: "华晨金杯750|金杯 华晨金杯750").nil?
Column.create!(category_id: category_99.id, name: "T20", en_name: "T20", keyword: "金杯T20|金杯 T20", status: 0) if Column.find_by(name: "T20", keyword: "金杯T20|金杯 T20").nil?
Column.create!(category_id: category_99.id, name: "T22", en_name: "T22", keyword: "金杯T22|金杯 T22", status: 0) if Column.find_by(name: "T22", keyword: "金杯T22|金杯 T22").nil?
Column.create!(category_id: category_99.id, name: "T30", en_name: "T30", keyword: "金杯T30|金杯 T30", status: 0) if Column.find_by(name: "T30", keyword: "金杯T30|金杯 T30").nil?
Column.create!(category_id: category_99.id, name: "T32", en_name: "T32", keyword: "金杯T32|金杯 T32", status: 0) if Column.find_by(name: "T32", keyword: "金杯T32|金杯 T32").nil?
Column.create!(category_id: category_99.id, name: "小海狮X30", en_name: "小海狮X30", keyword: "金杯小海狮X30|金杯 小海狮X30", status: 0) if Column.find_by(name: "小海狮X30", keyword: "金杯小海狮X30|金杯 小海狮X30").nil?
Column.create!(category_id: category_99.id, name: "小海狮X30L", en_name: "小海狮X30L", keyword: "金杯小海狮X30L|金杯 小海狮X30L", status: 0) if Column.find_by(name: "小海狮X30L", keyword: "金杯小海狮X30L|金杯 小海狮X30L").nil?
Column.create!(category_id: category_99.id, name: "金典", en_name: "金典", keyword: "金杯金典|金杯 金典", status: 0) if Column.find_by(name: "金典", keyword: "金杯金典|金杯 金典").nil?
Column.create!(category_id: category_99.id, name: "雷龙", en_name: "雷龙", keyword: "金杯雷龙|金杯 雷龙", status: 0) if Column.find_by(name: "雷龙", keyword: "金杯雷龙|金杯 雷龙").nil?
Column.create!(category_id: category_99.id, name: "西部大力神", en_name: "西部大力神", keyword: "金杯西部大力神|金杯 西部大力神", status: 0) if Column.find_by(name: "西部大力神", keyword: "金杯西部大力神|金杯 西部大力神").nil?
Column.create!(category_id: category_99.id, name: "西部牛仔", en_name: "西部牛仔", keyword: "金杯西部牛仔|金杯 西部牛仔", status: 0) if Column.find_by(name: "西部牛仔", keyword: "金杯西部牛仔|金杯 西部牛仔").nil?
Column.create!(category_id: category_99.id, name: "小金牛", en_name: "小金牛", keyword: "金杯小金牛|金杯 小金牛", status: 0) if Column.find_by(name: "小金牛", keyword: "金杯小金牛|金杯 小金牛").nil?
Column.create!(category_id: category_99.id, name: "智尚S30", en_name: "智尚S30", keyword: "金杯智尚S30|金杯 智尚S30", status: 0) if Column.find_by(name: "智尚S30", keyword: "金杯智尚S30|金杯 智尚S30").nil?
Column.create!(category_id: category_99.id, name: "智尚S35", en_name: "智尚S35", keyword: "金杯智尚S35|金杯 智尚S35", status: 0) if Column.find_by(name: "智尚S35", keyword: "金杯智尚S35|金杯 智尚S35").nil?
Column.create!(category_id: category_99.id, name: "金龙金威", en_name: "金龙金威", keyword: "金龙金威|金龙 金龙金威", status: 0) if Column.find_by(name: "金龙金威", keyword: "金龙金威|金龙 金龙金威").nil?
Column.create!(category_id: category_99.id, name: "金龙凯歌", en_name: "金龙凯歌", keyword: "金龙凯歌|金龙 金龙凯歌", status: 0) if Column.find_by(name: "金龙凯歌", keyword: "金龙凯歌|金龙 金龙凯歌").nil?
Column.create!(category_id: category_99.id, name: "金龙凯特", en_name: "金龙凯特", keyword: "金龙凯特|金龙 金龙凯特", status: 0) if Column.find_by(name: "金龙凯特", keyword: "金龙凯特|金龙 金龙凯特").nil?
Column.create!(category_id: category_99.id, name: "金龙海狮", en_name: "海狮", keyword: "金龙海狮|金龙 海狮", status: 0) if Column.find_by(name: "金龙海狮", keyword: "金龙海狮|金龙 海狮").nil?
Column.create!(category_id: category_99.id, name: "九龙艾菲", en_name: "艾菲", keyword: "九龙艾菲|九龙 艾菲", status: 0) if Column.find_by(name: "九龙艾菲", keyword: "九龙艾菲|九龙 艾菲").nil?
Column.create!(category_id: category_99.id, name: "九龙考斯特", en_name: "九龙考斯特", keyword: "九龙考斯特|九龙 九龙考斯特", status: 0) if Column.find_by(name: "九龙考斯特", keyword: "九龙考斯特|九龙 九龙考斯特").nil?
Column.create!(category_id: category_99.id, name: "九龙商务车", en_name: "九龙商务车", keyword: "九龙商务车|九龙 九龙商务车", status: 0) if Column.find_by(name: "九龙商务车", keyword: "九龙商务车|九龙 九龙商务车").nil?
Column.create!(category_id: category_99.id, name: "九龙专用车", en_name: "九龙专用车", keyword: "九龙专用车|九龙 九龙专用车", status: 0) if Column.find_by(name: "九龙专用车", keyword: "九龙专用车|九龙 九龙专用车").nil?
Column.create!(category_id: category_99.id, name: "骐铃T3", en_name: "骐铃T3", keyword: "江铃集团轻汽骐铃T3|江铃集团轻汽 骐铃T3", status: 0) if Column.find_by(name: "骐铃T3", keyword: "江铃集团轻汽骐铃T3|江铃集团轻汽 骐铃T3").nil?
Column.create!(category_id: category_99.id, name: "骐铃T5", en_name: "骐铃T5", keyword: "江铃集团轻汽骐铃T5|江铃集团轻汽 骐铃T5", status: 0) if Column.find_by(name: "骐铃T5", keyword: "江铃集团轻汽骐铃T5|江铃集团轻汽 骐铃T5").nil?
Column.create!(category_id: category_99.id, name: "骐铃T7", en_name: "骐铃T7", keyword: "江铃集团轻汽骐铃T7|江铃集团轻汽 骐铃T7", status: 0) if Column.find_by(name: "骐铃T7", keyword: "江铃集团轻汽骐铃T7|江铃集团轻汽 骐铃T7").nil?
Column.create!(category_id: category_99.id, name: "金旅海狮", en_name: "金旅海狮", keyword: "金旅客车金旅海狮|金旅客车 金旅海狮", status: 0) if Column.find_by(name: "金旅海狮", keyword: "金旅客车金旅海狮|金旅客车 金旅海狮").nil?
Column.create!(category_id: category_99.id, name: "金旅客车系列", en_name: "金旅客车系列", keyword: "金旅客车系列|金旅客车 金旅客车系列", status: 0) if Column.find_by(name: "金旅客车系列", keyword: "金旅客车系列|金旅客车 金旅客车系列").nil?
Column.create!(category_id: category_99.id, name: "考斯特", en_name: "考斯特", keyword: "金旅客车考斯特|金旅客车 考斯特", status: 0) if Column.find_by(name: "考斯特", keyword: "金旅客车考斯特|金旅客车 考斯特").nil?
Column.create!(category_id: category_99.id, name: "奥拓经典", en_name: "奥拓经典", keyword: "江南奥拓经典|江南 奥拓经典", status: 0) if Column.find_by(name: "奥拓经典", keyword: "江南奥拓经典|江南 奥拓经典").nil?
Column.create!(category_id: category_99.id, name: "传奇", en_name: "传奇", keyword: "江南传奇|江南 传奇", status: 0) if Column.find_by(name: "传奇", keyword: "江南传奇|江南 传奇").nil?
Column.create!(category_id: category_99.id, name: "风光", en_name: "风光", keyword: "江南风光|江南 风光", status: 0) if Column.find_by(name: "风光", keyword: "江南风光|江南 风光").nil?
Column.create!(category_id: category_99.id, name: "江南精灵", en_name: "精灵", keyword: "江南精灵|江南 精灵", status: 0) if Column.find_by(name: "江南精灵", keyword: "江南精灵|江南 精灵").nil?
Column.create!(category_id: category_99.id, name: "金程军警装备车", en_name: "金程军警装备车", keyword: "金程军警装备车|金程 金程军警装备车", status: 0) if Column.find_by(name: "金程军警装备车", keyword: "金程军警装备车|金程 金程军警装备车").nil?
Column.create!(category_id: category_99.id, name: "金程轻客", en_name: "金程轻客", keyword: "金程轻客|金程 金程轻客", status: 0) if Column.find_by(name: "金程轻客", keyword: "金程轻客|金程 金程轻客").nil?
Column.create!(category_id: category_99.id, name: "金程SUV", en_name: "金程SUV", keyword: "金程SUV|金程 金程SUV", status: 0) if Column.find_by(name: "金程SUV", keyword: "金程SUV|金程 金程SUV").nil?
Column.create!(category_id: category_99.id, name: "金程之星", en_name: "金程之星", keyword: "金程之星|金程 金程之星", status: 0) if Column.find_by(name: "金程之星", keyword: "金程之星|金程 金程之星").nil?
Column.create!(category_id: category_99.id, name: "赛风", en_name: "赛风", keyword: "金程赛风|金程 赛风", status: 0) if Column.find_by(name: "赛风", keyword: "金程赛风|金程 赛风").nil?
Column.create!(category_id: category_99.id, name: "美鹿", en_name: "美鹿", keyword: "吉林江北美鹿|吉林江北 美鹿", status: 0) if Column.find_by(name: "美鹿", keyword: "吉林江北美鹿|吉林江北 美鹿").nil?
Column.create!(category_id: category_99.id, name: "凯迪拉克ATS-L", en_name: "ATS-L", keyword: "凯迪拉克ATS-L|cadillac ATS-L", status: 0) if Column.find_by(name: "凯迪拉克ATS-L", keyword: "凯迪拉克ATS-L|cadillac ATS-L").nil?
Column.create!(category_id: category_99.id, name: "凯迪拉克CT6", en_name: "CT6", keyword: "凯迪拉克CT6|cadillac CT6", status: 0) if Column.find_by(name: "凯迪拉克CT6", keyword: "凯迪拉克CT6|cadillac CT6").nil?
Column.create!(category_id: category_99.id, name: "凯迪拉克XTS", en_name: "XTS", keyword: "凯迪拉克XTS|cadillac XTS", status: 0) if Column.find_by(name: "凯迪拉克XTS", keyword: "凯迪拉克XTS|cadillac XTS").nil?
Column.create!(category_id: category_99.id, name: "赛威", en_name: "赛威", keyword: "凯迪拉克赛威|cadillac 赛威", status: 0) if Column.find_by(name: "赛威", keyword: "凯迪拉克赛威|cadillac 赛威").nil?
Column.create!(category_id: category_99.id, name: "凯迪拉克ATS", en_name: "ATS", keyword: "凯迪拉克ATS|cadillac ATS", status: 0) if Column.find_by(name: "凯迪拉克ATS", keyword: "凯迪拉克ATS|cadillac ATS").nil?
Column.create!(category_id: category_99.id, name: "凯迪拉克CTS", en_name: "CTS", keyword: "凯迪拉克CTS|cadillac CTS", status: 0) if Column.find_by(name: "凯迪拉克CTS", keyword: "凯迪拉克CTS|cadillac CTS").nil?
Column.create!(category_id: category_99.id, name: "凯迪拉克CTS COUPE", en_name: "CTS COUPE", keyword: "凯迪拉克CTS COUPE|cadillac CTS COUPE", status: 0) if Column.find_by(name: "凯迪拉克CTS COUPE", keyword: "凯迪拉克CTS COUPE|cadillac CTS COUPE").nil?
Column.create!(category_id: category_99.id, name: "凯迪拉克CTS-V", en_name: "CTS-V", keyword: "凯迪拉克CTS-V|cadillac CTS-V", status: 0) if Column.find_by(name: "凯迪拉克CTS-V", keyword: "凯迪拉克CTS-V|cadillac CTS-V").nil?
Column.create!(category_id: category_99.id, name: "凯雷德", en_name: "ESCALADE", keyword: "凯迪拉克凯雷德|cadillac ESCALADE", status: 0) if Column.find_by(name: "凯雷德", keyword: "凯迪拉克凯雷德|cadillac ESCALADE").nil?
Column.create!(category_id: category_99.id, name: "凯雷德 Hybrid", en_name: "ESCALADE Hybrid", keyword: "凯迪拉克凯雷德 Hybrid|cadillac ESCALADE Hybrid", status: 0) if Column.find_by(name: "凯雷德 Hybrid", keyword: "凯迪拉克凯雷德 Hybrid|cadillac ESCALADE Hybrid").nil?
Column.create!(category_id: category_99.id, name: "凯迪拉克SRX", en_name: "SRX", keyword: "凯迪拉克SRX|cadillac SRX", status: 0) if Column.find_by(name: "凯迪拉克SRX", keyword: "凯迪拉克SRX|cadillac SRX").nil?
Column.create!(category_id: category_99.id, name: "凯迪拉克XT5", en_name: "XT5", keyword: "凯迪拉克XT5|cadillac XT5", status: 0) if Column.find_by(name: "凯迪拉克XT5", keyword: "凯迪拉克XT5|cadillac XT5").nil?
Column.create!(category_id: category_99.id, name: "帝威", en_name: "DeVille", keyword: "凯迪拉克帝威|cadillac DeVille", status: 0) if Column.find_by(name: "帝威", keyword: "凯迪拉克帝威|cadillac DeVille").nil?
Column.create!(category_id: category_99.id, name: "凯迪拉克DTS", en_name: "DTS", keyword: "凯迪拉克DTS|cadillac DTS", status: 0) if Column.find_by(name: "凯迪拉克DTS", keyword: "凯迪拉克DTS|cadillac DTS").nil?
Column.create!(category_id: category_99.id, name: "凯迪拉克加长版", en_name: "凯迪拉克加长版", keyword: "凯迪拉克加长版|cadillac 凯迪拉克加长版", status: 0) if Column.find_by(name: "凯迪拉克加长版", keyword: "凯迪拉克加长版|cadillac 凯迪拉克加长版").nil?
Column.create!(category_id: category_99.id, name: "凯雷德外交官", en_name: "凯雷德外交官", keyword: "凯迪拉克凯雷德外交官|cadillac 凯雷德外交官", status: 0) if Column.find_by(name: "凯雷德外交官", keyword: "凯迪拉克凯雷德外交官|cadillac 凯雷德外交官").nil?
Column.create!(category_id: category_99.id, name: "赛威", en_name: "SLS", keyword: "凯迪拉克赛威|cadillac SLS", status: 0) if Column.find_by(name: "赛威", keyword: "凯迪拉克赛威|cadillac SLS").nil?
Column.create!(category_id: category_99.id, name: "伍德", en_name: "伍德", keyword: "凯迪拉克伍德|cadillac 伍德", status: 0) if Column.find_by(name: "伍德", keyword: "凯迪拉克伍德|cadillac 伍德").nil?
Column.create!(category_id: category_99.id, name: "凯迪拉克XLR", en_name: "XLR", keyword: "凯迪拉克XLR|cadillac XLR", status: 0) if Column.find_by(name: "凯迪拉克XLR", keyword: "凯迪拉克XLR|cadillac XLR").nil?
Column.create!(category_id: category_99.id, name: "爱卡", en_name: "爱卡", keyword: "开瑞爱卡|开瑞 爱卡", status: 0) if Column.find_by(name: "爱卡", keyword: "开瑞爱卡|开瑞 爱卡").nil?
Column.create!(category_id: category_99.id, name: "开瑞杰虎", en_name: "杰虎", keyword: "开瑞杰虎|开瑞 杰虎", status: 0) if Column.find_by(name: "开瑞杰虎", keyword: "开瑞杰虎|开瑞 杰虎").nil?
Column.create!(category_id: category_99.id, name: "开瑞K50", en_name: "K50", keyword: "开瑞K50|开瑞 K50", status: 0) if Column.find_by(name: "开瑞K50", keyword: "开瑞K50|开瑞 K50").nil?
Column.create!(category_id: category_99.id, name: "开瑞K50S", en_name: "K50S", keyword: "开瑞K50S|开瑞 K50S", status: 0) if Column.find_by(name: "开瑞K50S", keyword: "开瑞K50S|开瑞 K50S").nil?
Column.create!(category_id: category_99.id, name: "开瑞优劲", en_name: "优劲", keyword: "开瑞优劲|开瑞 优劲", status: 0) if Column.find_by(name: "开瑞优劲", keyword: "开瑞优劲|开瑞 优劲").nil?
Column.create!(category_id: category_99.id, name: "开瑞优胜", en_name: "优胜", keyword: "开瑞优胜|开瑞 优胜", status: 0) if Column.find_by(name: "开瑞优胜", keyword: "开瑞优胜|开瑞 优胜").nil?
Column.create!(category_id: category_99.id, name: "开瑞优雅", en_name: "优雅", keyword: "开瑞优雅|开瑞 优雅", status: 0) if Column.find_by(name: "开瑞优雅", keyword: "开瑞优雅|开瑞 优雅").nil?
Column.create!(category_id: category_99.id, name: "开瑞优优", en_name: "优优", keyword: "开瑞优优|开瑞 优优", status: 0) if Column.find_by(name: "开瑞优优", keyword: "开瑞优优|开瑞 优优").nil?
Column.create!(category_id: category_99.id, name: "开瑞3", en_name: "开瑞3", keyword: "开瑞3|开瑞 开瑞3", status: 0) if Column.find_by(name: "开瑞3", keyword: "开瑞3|开瑞 开瑞3").nil?
Column.create!(category_id: category_99.id, name: "开瑞优派", en_name: "优派", keyword: "开瑞优派|开瑞 优派", status: 0) if Column.find_by(name: "开瑞优派", keyword: "开瑞优派|开瑞 优派").nil?
Column.create!(category_id: category_99.id, name: "开瑞优翼", en_name: "优翼", keyword: "开瑞优翼|开瑞 优翼", status: 0) if Column.find_by(name: "开瑞优翼", keyword: "开瑞优翼|开瑞 优翼").nil?
Column.create!(category_id: category_99.id, name: "铂锐", en_name: "Sebring", keyword: "克莱斯勒铂锐|chrysler Sebring", status: 0) if Column.find_by(name: "铂锐", keyword: "克莱斯勒铂锐|chrysler Sebring").nil?
Column.create!(category_id: category_99.id, name: "克莱斯勒300C", en_name: "300C", keyword: "克莱斯勒300C|chrysler 300C", status: 0) if Column.find_by(name: "克莱斯勒300C", keyword: "克莱斯勒300C|chrysler 300C").nil?
Column.create!(category_id: category_99.id, name: "大捷龙", en_name: "Grand Voager", keyword: "克莱斯勒大捷龙|chrysler Grand Voager", status: 0) if Column.find_by(name: "大捷龙", keyword: "克莱斯勒大捷龙|chrysler Grand Voager").nil?
Column.create!(category_id: category_99.id, name: "克莱斯勒300C", en_name: "300C", keyword: "克莱斯勒300C|chrysler 300C", status: 0) if Column.find_by(name: "克莱斯勒300C", keyword: "克莱斯勒300C|chrysler 300C").nil?
Column.create!(category_id: category_99.id, name: "大捷龙", en_name: "大捷龙", keyword: "克莱斯勒大捷龙|chrysler 大捷龙", status: 0) if Column.find_by(name: "大捷龙", keyword: "克莱斯勒大捷龙|chrysler 大捷龙").nil?
Column.create!(category_id: category_99.id, name: "克莱斯勒200", en_name: "200", keyword: "克莱斯勒200|chrysler 200", status: 0) if Column.find_by(name: "克莱斯勒200", keyword: "克莱斯勒200|chrysler 200").nil?
Column.create!(category_id: category_99.id, name: "300M", en_name: "300M", keyword: "克莱斯勒300M|chrysler 300M", status: 0) if Column.find_by(name: "300M", keyword: "克莱斯勒300M|chrysler 300M").nil?
Column.create!(category_id: category_99.id, name: "城乡", en_name: "城乡", keyword: "克莱斯勒城乡|chrysler 城乡", status: 0) if Column.find_by(name: "城乡", keyword: "克莱斯勒城乡|chrysler 城乡").nil?
Column.create!(category_id: category_99.id, name: "辉煌", en_name: "辉煌", keyword: "克莱斯勒辉煌|chrysler 辉煌", status: 0) if Column.find_by(name: "辉煌", keyword: "克莱斯勒辉煌|chrysler 辉煌").nil?
Column.create!(category_id: category_99.id, name: "克莱斯勒彩虹", en_name: "彩虹", keyword: "克莱斯勒彩虹|chrysler 彩虹", status: 0) if Column.find_by(name: "克莱斯勒彩虹", keyword: "克莱斯勒彩虹|chrysler 彩虹").nil?
Column.create!(category_id: category_99.id, name: "克莱斯勒交叉火力", en_name: "cross fire", keyword: "克莱斯勒交叉火力|chrysler cross fire", status: 0) if Column.find_by(name: "克莱斯勒交叉火力", keyword: "克莱斯勒交叉火力|chrysler cross fire").nil?
Column.create!(category_id: category_99.id, name: "克莱斯勒君王", en_name: "君王", keyword: "克莱斯勒君王|chrysler 君王", status: 0) if Column.find_by(name: "克莱斯勒君王", keyword: "克莱斯勒君王|chrysler 君王").nil?
Column.create!(category_id: category_99.id, name: "克莱斯勒太阳舞", en_name: "太阳舞", keyword: "克莱斯勒太阳舞|chrysler 太阳舞", status: 0) if Column.find_by(name: "克莱斯勒太阳舞", keyword: "克莱斯勒太阳舞|chrysler 太阳舞").nil?
Column.create!(category_id: category_99.id, name: "PT漫步者", en_name: "PT Cruiser", keyword: "克莱斯勒PT漫步者|chrysler PT Cruiser", status: 0) if Column.find_by(name: "PT漫步者", keyword: "克莱斯勒PT漫步者|chrysler PT Cruiser").nil?
Column.create!(category_id: category_99.id, name: "赛百灵", en_name: "Sebring", keyword: "克莱斯勒赛百灵|chrysler Sebring", status: 0) if Column.find_by(name: "赛百灵", keyword: "克莱斯勒赛百灵|chrysler Sebring").nil?
Column.create!(category_id: category_99.id, name: "凯翼C3", en_name: "C3", keyword: "凯翼C3|凯翼 C3", status: 0) if Column.find_by(name: "凯翼C3", keyword: "凯翼C3|凯翼 C3").nil?
Column.create!(category_id: category_99.id, name: "凯翼C3R", en_name: "C3R", keyword: "凯翼C3R|凯翼 C3R", status: 0) if Column.find_by(name: "凯翼C3R", keyword: "凯翼C3R|凯翼 C3R").nil?
Column.create!(category_id: category_99.id, name: "凯翼C3R CROSS", en_name: "C3R CROSS", keyword: "凯翼C3R CROSS|凯翼 C3R CROSS", status: 0) if Column.find_by(name: "凯翼C3R CROSS", keyword: "凯翼C3R CROSS|凯翼 C3R CROSS").nil?
Column.create!(category_id: category_99.id, name: "凯翼X3", en_name: "X3", keyword: "凯翼X3|凯翼 X3", status: 0) if Column.find_by(name: "凯翼X3", keyword: "凯翼X3|凯翼 X3").nil?
Column.create!(category_id: category_99.id, name: "卡威HX", en_name: "卡威HX", keyword: "卡威HX|卡威 卡威HX", status: 0) if Column.find_by(name: "卡威HX", keyword: "卡威HX|卡威 卡威HX").nil?
Column.create!(category_id: category_99.id, name: "卡威K1", en_name: "卡威K1", keyword: "卡威K1|卡威 卡威K1", status: 0) if Column.find_by(name: "卡威K1", keyword: "卡威K1|卡威 卡威K1").nil?
Column.create!(category_id: category_99.id, name: "卡威W1", en_name: "卡威W1", keyword: "卡威W1|卡威 卡威W1", status: 0) if Column.find_by(name: "卡威W1", keyword: "卡威W1|卡威 卡威W1").nil?
Column.create!(category_id: category_99.id, name: "科尼赛克Agera", en_name: "Agera", keyword: "科尼赛克Agera|Koenigsegg Agera", status: 0) if Column.find_by(name: "科尼赛克Agera", keyword: "科尼赛克Agera|Koenigsegg Agera").nil?
Column.create!(category_id: category_99.id, name: "科尼赛克CCR", en_name: "CCR", keyword: "科尼赛克CCR|Koenigsegg CCR", status: 0) if Column.find_by(name: "科尼赛克CCR", keyword: "科尼赛克CCR|Koenigsegg CCR").nil?
Column.create!(category_id: category_99.id, name: "GMC商务之星", en_name: "GMC商务之星", keyword: "科瑞斯的GMC商务之星|科瑞斯的 GMC商务之星", status: 0) if Column.find_by(name: "GMC商务之星", keyword: "科瑞斯的GMC商务之星|科瑞斯的 GMC商务之星").nil?
Column.create!(category_id: category_99.id, name: "悍马H6", en_name: "悍马H6", keyword: "科瑞斯的悍马H6|科瑞斯的 悍马H6", status: 0) if Column.find_by(name: "悍马H6", keyword: "科瑞斯的悍马H6|科瑞斯的 悍马H6").nil?
Column.create!(category_id: category_99.id, name: "斯宾特", en_name: "斯宾特", keyword: "科瑞斯的斯宾特|科瑞斯的 斯宾特", status: 0) if Column.find_by(name: "斯宾特", keyword: "科瑞斯的斯宾特|科瑞斯的 斯宾特").nil?
Column.create!(category_id: category_99.id, name: "全球鹰K10D", en_name: "全球鹰K10D", keyword: "康迪全球鹰电动汽车全球鹰K10D|康迪全球鹰电动汽车 全球鹰K10D", status: 0) if Column.find_by(name: "全球鹰K10D", keyword: "康迪全球鹰电动汽车全球鹰K10D|康迪全球鹰电动汽车 全球鹰K10D").nil?
Column.create!(category_id: category_99.id, name: "全球鹰K11D", en_name: "全球鹰K11D", keyword: "康迪全球鹰电动汽车全球鹰K11D|康迪全球鹰电动汽车 全球鹰K11D", status: 0) if Column.find_by(name: "全球鹰K11D", keyword: "康迪全球鹰电动汽车全球鹰K11D|康迪全球鹰电动汽车 全球鹰K11D").nil?
Column.create!(category_id: category_99.id, name: "卡尔森C25", en_name: "C25", keyword: "卡尔森C25|kaersen C25", status: 0) if Column.find_by(name: "卡尔森C25", keyword: "卡尔森C25|kaersen C25").nil?
Column.create!(category_id: category_99.id, name: "卡尔森GL级", en_name: "GL class ", keyword: "卡尔森GL级|kaersen GL class ", status: 0) if Column.find_by(name: "卡尔森GL级", keyword: "卡尔森GL级|kaersen GL class ").nil?
Column.create!(category_id: category_99.id, name: "卡尔森S级", en_name: "S class ", keyword: "卡尔森S级|kaersen S class ", status: 0) if Column.find_by(name: "卡尔森S级", keyword: "卡尔森S级|kaersen S class ").nil?
Column.create!(category_id: category_99.id, name: "X-BOW", en_name: "X-BOW", keyword: "KTMX-BOW|KTM X-BOW", status: 0) if Column.find_by(name: "X-BOW", keyword: "KTMX-BOW|KTM X-BOW").nil?
Column.create!(category_id: category_99.id, name: "陆风风华", en_name: "风华", keyword: "陆风风华|陆风 风华", status: 0) if Column.find_by(name: "陆风风华", keyword: "陆风风华|陆风 风华").nil?
Column.create!(category_id: category_99.id, name: "陆风风尚", en_name: "风尚", keyword: "陆风风尚|陆风 风尚", status: 0) if Column.find_by(name: "陆风风尚", keyword: "陆风风尚|陆风 风尚").nil?
Column.create!(category_id: category_99.id, name: "陆风X9", en_name: "X9", keyword: "陆风X9|陆风 X9", status: 0) if Column.find_by(name: "陆风X9", keyword: "陆风X9|陆风 X9").nil?
Column.create!(category_id: category_99.id, name: "陆风X5", en_name: "X5", keyword: "陆风X5|陆风 X5", status: 0) if Column.find_by(name: "陆风X5", keyword: "陆风X5|陆风 X5").nil?
Column.create!(category_id: category_99.id, name: "陆风X6", en_name: "X6", keyword: "陆风X6|陆风 X6", status: 0) if Column.find_by(name: "陆风X6", keyword: "陆风X6|陆风 X6").nil?
Column.create!(category_id: category_99.id, name: "陆风X7", en_name: "X7", keyword: "陆风X7|陆风 X7", status: 0) if Column.find_by(name: "陆风X7", keyword: "陆风X7|陆风 X7").nil?
Column.create!(category_id: category_99.id, name: "陆风X8", en_name: "X8", keyword: "陆风X8|陆风 X8", status: 0) if Column.find_by(name: "陆风X8", keyword: "陆风X8|陆风 X8").nil?
Column.create!(category_id: category_99.id, name: "陆风新饰界", en_name: "新饰界", keyword: "陆风新饰界|陆风 新饰界", status: 0) if Column.find_by(name: "陆风新饰界", keyword: "陆风新饰界|陆风 新饰界").nil?
Column.create!(category_id: category_99.id, name: "奥拓", en_name: "Alto", keyword: "铃木奥拓|suzuki Alto", status: 0) if Column.find_by(name: "奥拓", keyword: "铃木奥拓|suzuki Alto").nil?
Column.create!(category_id: category_99.id, name: "锋驭", en_name: "S.CROSS", keyword: "铃木锋驭|suzuki S.CROSS", status: 0) if Column.find_by(name: "锋驭", keyword: "铃木锋驭|suzuki S.CROSS").nil?
Column.create!(category_id: category_99.id, name: "羚羊", en_name: "羚羊", keyword: "铃木羚羊|suzuki 羚羊", status: 0) if Column.find_by(name: "羚羊", keyword: "铃木羚羊|suzuki 羚羊").nil?
Column.create!(category_id: category_99.id, name: "启悦", en_name: "启悦", keyword: "铃木启悦|suzuki 启悦", status: 0) if Column.find_by(name: "启悦", keyword: "铃木启悦|suzuki 启悦").nil?
Column.create!(category_id: category_99.id, name: "天语SX4两厢", en_name: "天语SX4hatchback", keyword: "铃木天语SX4两厢|suzuki 天语SX4hatchback", status: 0) if Column.find_by(name: "天语SX4两厢", keyword: "铃木天语SX4两厢|suzuki 天语SX4hatchback").nil?
Column.create!(category_id: category_99.id, name: "天语SX4锐骑", en_name: "sx4", keyword: "铃木天语SX4锐骑|suzuki sx4", status: 0) if Column.find_by(name: "天语SX4锐骑", keyword: "铃木天语SX4锐骑|suzuki sx4").nil?
Column.create!(category_id: category_99.id, name: "天语SX4尚悦", en_name: "天语SX4尚悦", keyword: "铃木天语SX4尚悦|suzuki 天语SX4尚悦", status: 0) if Column.find_by(name: "天语SX4尚悦", keyword: "铃木天语SX4尚悦|suzuki 天语SX4尚悦").nil?
Column.create!(category_id: category_99.id, name: "维特拉", en_name: "vitara", keyword: "铃木维特拉|suzuki vitara", status: 0) if Column.find_by(name: "维特拉", keyword: "铃木维特拉|suzuki vitara").nil?
Column.create!(category_id: category_99.id, name: "雨燕", en_name: "Swift", keyword: "铃木雨燕|suzuki Swift", status: 0) if Column.find_by(name: "雨燕", keyword: "铃木雨燕|suzuki Swift").nil?
Column.create!(category_id: category_99.id, name: "天语SX4三厢", en_name: "天语SX4sedan", keyword: "铃木天语SX4三厢|suzuki 天语SX4sedan", status: 0) if Column.find_by(name: "天语SX4三厢", keyword: "铃木天语SX4三厢|suzuki 天语SX4sedan").nil?
Column.create!(category_id: category_99.id, name: "北斗星", en_name: "Wagon R", keyword: "铃木北斗星|suzuki Wagon R", status: 0) if Column.find_by(name: "北斗星", keyword: "铃木北斗星|suzuki Wagon R").nil?
Column.create!(category_id: category_99.id, name: "北斗星X5", en_name: "x5", keyword: "铃木北斗星X5|suzuki x5", status: 0) if Column.find_by(name: "北斗星X5", keyword: "铃木北斗星X5|suzuki x5").nil?
Column.create!(category_id: category_99.id, name: "浪迪", en_name: "LANDY", keyword: "铃木浪迪|suzuki LANDY", status: 0) if Column.find_by(name: "浪迪", keyword: "铃木浪迪|suzuki LANDY").nil?
Column.create!(category_id: category_99.id, name: "利亚纳A6两厢", en_name: "利亚纳A6hatchback", keyword: "铃木利亚纳A6两厢|suzuki 利亚纳A6hatchback", status: 0) if Column.find_by(name: "利亚纳A6两厢", keyword: "铃木利亚纳A6两厢|suzuki 利亚纳A6hatchback").nil?
Column.create!(category_id: category_99.id, name: "利亚纳A6三厢", en_name: "liana sedan", keyword: "铃木利亚纳A6三厢|suzuki liana sedan", status: 0) if Column.find_by(name: "利亚纳A6三厢", keyword: "铃木利亚纳A6三厢|suzuki liana sedan").nil?
Column.create!(category_id: category_99.id, name: "利亚纳两厢", en_name: "liana hatchback", keyword: "铃木利亚纳两厢|suzuki liana hatchback", status: 0) if Column.find_by(name: "利亚纳两厢", keyword: "铃木利亚纳两厢|suzuki liana hatchback").nil?
Column.create!(category_id: category_99.id, name: "利亚纳三厢", en_name: "利亚纳sedan", keyword: "铃木利亚纳三厢|suzuki 利亚纳sedan", status: 0) if Column.find_by(name: "利亚纳三厢", keyword: "铃木利亚纳三厢|suzuki 利亚纳sedan").nil?
Column.create!(category_id: category_99.id, name: "派喜", en_name: "派喜", keyword: "铃木派喜|suzuki 派喜", status: 0) if Column.find_by(name: "派喜", keyword: "铃木派喜|suzuki 派喜").nil?
Column.create!(category_id: category_99.id, name: "西安奥拓", en_name: "西安奥拓", keyword: "铃木西安奥拓|suzuki 西安奥拓", status: 0) if Column.find_by(name: "西安奥拓", keyword: "铃木西安奥拓|suzuki 西安奥拓").nil?
Column.create!(category_id: category_99.id, name: "超级维特拉", en_name: "Grand Vitara", keyword: "铃木超级维特拉|suzuki Grand Vitara", status: 0) if Column.find_by(name: "超级维特拉", keyword: "铃木超级维特拉|suzuki Grand Vitara").nil?
Column.create!(category_id: category_99.id, name: "吉姆尼", en_name: "jimny", keyword: "铃木吉姆尼|suzuki jimny", status: 0) if Column.find_by(name: "吉姆尼", keyword: "铃木吉姆尼|suzuki jimny").nil?
Column.create!(category_id: category_99.id, name: "凯泽西（进口）", en_name: "KIZASHI", keyword: "铃木凯泽西（进口）|suzuki KIZASHI", status: 0) if Column.find_by(name: "凯泽西（进口）", keyword: "铃木凯泽西（进口）|suzuki KIZASHI").nil?
Column.create!(category_id: category_99.id, name: "速翼特（进口）", en_name: "Swift sport", keyword: "铃木速翼特（进口）|suzuki Swift sport", status: 0) if Column.find_by(name: "速翼特（进口）", keyword: "铃木速翼特（进口）|suzuki Swift sport").nil?
Column.create!(category_id: category_99.id, name: "铃木IGNIS", en_name: "IGNIS", keyword: "铃木IGNIS|suzuki IGNIS", status: 0) if Column.find_by(name: "铃木IGNIS", keyword: "铃木IGNIS|suzuki IGNIS").nil?
Column.create!(category_id: category_99.id, name: "铃木iK-2", en_name: "iK-2", keyword: "铃木iK-2|suzuki iK-2", status: 0) if Column.find_by(name: "铃木iK-2", keyword: "铃木iK-2|suzuki iK-2").nil?
Column.create!(category_id: category_99.id, name: "快捷", en_name: "快捷", keyword: "铃木快捷|suzuki 快捷", status: 0) if Column.find_by(name: "快捷", keyword: "铃木快捷|suzuki 快捷").nil?
Column.create!(category_id: category_99.id, name: "发现神行", en_name: "发现神行", keyword: "路虎发现神行|land rover 发现神行", status: 0) if Column.find_by(name: "发现神行", keyword: "路虎发现神行|land rover 发现神行").nil?
Column.create!(category_id: category_99.id, name: "揽胜极光", en_name: "Evoque", keyword: "路虎揽胜极光|range rover Evoque", status: 0) if Column.find_by(name: "揽胜极光", keyword: "路虎揽胜极光|range rover Evoque").nil?
Column.create!(category_id: category_99.id, name: "发现", en_name: "discovery", keyword: "路虎发现|land rover discovery", status: 0) if Column.find_by(name: "发现", keyword: "路虎发现|land rover discovery").nil?
Column.create!(category_id: category_99.id, name: "发现神行", en_name: "discovery sport", keyword: "路虎发现神行|land rover discovery sport", status: 0) if Column.find_by(name: "发现神行", keyword: "路虎发现神行|land rover discovery sport").nil?
Column.create!(category_id: category_99.id, name: "揽胜", en_name: "rangerover", keyword: "路虎揽胜|range rover rangerover", status: 0) if Column.find_by(name: "揽胜", keyword: "路虎揽胜|range rover rangerover").nil?
Column.create!(category_id: category_99.id, name: "揽胜运动版", en_name: "rangerover sport", keyword: "路虎揽胜运动版|range rover rangerover sport", status: 0) if Column.find_by(name: "揽胜运动版", keyword: "路虎揽胜运动版|range rover rangerover sport").nil?
Column.create!(category_id: category_99.id, name: "神行者2代", en_name: "freelander2", keyword: "路虎神行者2代|land rover freelander2", status: 0) if Column.find_by(name: "神行者2代", keyword: "路虎神行者2代|land rover freelander2").nil?
Column.create!(category_id: category_99.id, name: "揽胜极光", en_name: "揽胜极光", keyword: "路虎揽胜极光|range rover 揽胜极光", status: 0) if Column.find_by(name: "揽胜极光", keyword: "路虎揽胜极光|range rover 揽胜极光").nil?
Column.create!(category_id: category_99.id, name: "路虎卫士", en_name: "defender", keyword: "路虎卫士|land rover defender", status: 0) if Column.find_by(name: "路虎卫士", keyword: "路虎卫士|land rover defender").nil?
Column.create!(category_id: category_99.id, name: "雷克萨斯CT", en_name: "CT", keyword: "雷克萨斯CT|lexus CT", status: 0) if Column.find_by(name: "雷克萨斯CT", keyword: "雷克萨斯CT|lexus CT").nil?
Column.create!(category_id: category_99.id, name: "雷克萨斯ES", en_name: "ES", keyword: "雷克萨斯ES|lexus ES", status: 0) if Column.find_by(name: "雷克萨斯ES", keyword: "雷克萨斯ES|lexus ES").nil?
Column.create!(category_id: category_99.id, name: "雷克萨斯GS", en_name: "GS", keyword: "雷克萨斯GS|lexus GS", status: 0) if Column.find_by(name: "雷克萨斯GS", keyword: "雷克萨斯GS|lexus GS").nil?
Column.create!(category_id: category_99.id, name: "雷克萨斯GX", en_name: "GX", keyword: "雷克萨斯GX|lexus GX", status: 0) if Column.find_by(name: "雷克萨斯GX", keyword: "雷克萨斯GX|lexus GX").nil?
Column.create!(category_id: category_99.id, name: "雷克萨斯IS", en_name: "IS", keyword: "雷克萨斯IS|lexus IS", status: 0) if Column.find_by(name: "雷克萨斯IS", keyword: "雷克萨斯IS|lexus IS").nil?
Column.create!(category_id: category_99.id, name: "雷克萨斯LF-A", en_name: "LF-A", keyword: "雷克萨斯LF-A|lexus LF-A", status: 0) if Column.find_by(name: "雷克萨斯LF-A", keyword: "雷克萨斯LF-A|lexus LF-A").nil?
Column.create!(category_id: category_99.id, name: "雷克萨斯LS", en_name: "LS", keyword: "雷克萨斯LS|lexus LS", status: 0) if Column.find_by(name: "雷克萨斯LS", keyword: "雷克萨斯LS|lexus LS").nil?
Column.create!(category_id: category_99.id, name: "雷克萨斯LX", en_name: "LX", keyword: "雷克萨斯LX|lexus LX", status: 0) if Column.find_by(name: "雷克萨斯LX", keyword: "雷克萨斯LX|lexus LX").nil?
Column.create!(category_id: category_99.id, name: "雷克萨斯NX", en_name: "NX", keyword: "雷克萨斯NX|lexus NX", status: 0) if Column.find_by(name: "雷克萨斯NX", keyword: "雷克萨斯NX|lexus NX").nil?
Column.create!(category_id: category_99.id, name: "雷克萨斯RC", en_name: "RC", keyword: "雷克萨斯RC|lexus RC", status: 0) if Column.find_by(name: "雷克萨斯RC", keyword: "雷克萨斯RC|lexus RC").nil?
Column.create!(category_id: category_99.id, name: "雷克萨斯RX", en_name: "RX", keyword: "雷克萨斯RX|lexus RX", status: 0) if Column.find_by(name: "雷克萨斯RX", keyword: "雷克萨斯RX|lexus RX").nil?
Column.create!(category_id: category_99.id, name: "雷克萨斯LC", en_name: "LC", keyword: "雷克萨斯LC|lexus LC", status: 0) if Column.find_by(name: "雷克萨斯LC", keyword: "雷克萨斯LC|lexus LC").nil?
Column.create!(category_id: category_99.id, name: "雷克萨斯SC", en_name: "SC", keyword: "雷克萨斯SC|lexus SC", status: 0) if Column.find_by(name: "雷克萨斯SC", keyword: "雷克萨斯SC|lexus SC").nil?
Column.create!(category_id: category_99.id, name: "雷克萨斯RC F", en_name: "RC F", keyword: "雷克萨斯RC F|lexus RC F", status: 0) if Column.find_by(name: "雷克萨斯RC F", keyword: "雷克萨斯RC F|lexus RC F").nil?
Column.create!(category_id: category_99.id, name: "雷克萨斯GS F", en_name: "GS F", keyword: "雷克萨斯GS F|lexus GS F", status: 0) if Column.find_by(name: "雷克萨斯GS F", keyword: "雷克萨斯GS F|lexus GS F").nil?
Column.create!(category_id: category_99.id, name: "猎豹CT5皮卡", en_name: "CT5", keyword: "猎豹汽车猎豹CT5皮卡|猎豹汽车 CT5", status: 0) if Column.find_by(name: "猎豹CT5皮卡", keyword: "猎豹汽车猎豹CT5皮卡|猎豹汽车 CT5").nil?
Column.create!(category_id: category_99.id, name: "猎豹飞扬皮卡", en_name: "飞扬皮卡", keyword: "猎豹汽车猎豹飞扬皮卡|猎豹汽车 飞扬皮卡", status: 0) if Column.find_by(name: "猎豹飞扬皮卡", keyword: "猎豹汽车猎豹飞扬皮卡|猎豹汽车 飞扬皮卡").nil?
Column.create!(category_id: category_99.id, name: "长丰DUV", en_name: "长丰DUV", keyword: "猎豹汽车长丰DUV|猎豹汽车 长丰DUV", status: 0) if Column.find_by(name: "长丰DUV", keyword: "猎豹汽车长丰DUV|猎豹汽车 长丰DUV").nil?
Column.create!(category_id: category_99.id, name: "福铃皮卡", en_name: "福铃皮卡", keyword: "猎豹汽车福铃皮卡|猎豹汽车 福铃皮卡", status: 0) if Column.find_by(name: "福铃皮卡", keyword: "猎豹汽车福铃皮卡|猎豹汽车 福铃皮卡").nil?
Column.create!(category_id: category_99.id, name: "飞铃皮卡", en_name: "飞铃皮卡", keyword: "猎豹汽车飞铃皮卡|猎豹汽车 飞铃皮卡", status: 0) if Column.find_by(name: "飞铃皮卡", keyword: "猎豹汽车飞铃皮卡|猎豹汽车 飞铃皮卡").nil?
Column.create!(category_id: category_99.id, name: "飞铃SUV", en_name: "飞铃SUV", keyword: "猎豹汽车飞铃SUV|猎豹汽车 飞铃SUV", status: 0) if Column.find_by(name: "飞铃SUV", keyword: "猎豹汽车飞铃SUV|猎豹汽车 飞铃SUV").nil?
Column.create!(category_id: category_99.id, name: "飞扬SUV", en_name: "飞扬SUV", keyword: "猎豹汽车飞扬SUV|猎豹汽车 飞扬SUV", status: 0) if Column.find_by(name: "飞扬SUV", keyword: "猎豹汽车飞扬SUV|猎豹汽车 飞扬SUV").nil?
Column.create!(category_id: category_99.id, name: "金麒麟", en_name: "金麒麟", keyword: "猎豹汽车金麒麟|猎豹汽车 金麒麟", status: 0) if Column.find_by(name: "金麒麟", keyword: "猎豹汽车金麒麟|猎豹汽车 金麒麟").nil?
Column.create!(category_id: category_99.id, name: "玉麒麟", en_name: "玉麒麟", keyword: "猎豹汽车玉麒麟|猎豹汽车 玉麒麟", status: 0) if Column.find_by(name: "玉麒麟", keyword: "猎豹汽车玉麒麟|猎豹汽车 玉麒麟").nil?
Column.create!(category_id: category_99.id, name: "猎豹CS10", en_name: "CS10", keyword: "猎豹汽车猎豹CS10|猎豹汽车 CS10", status: 0) if Column.find_by(name: "猎豹CS10", keyword: "猎豹汽车猎豹CS10|猎豹汽车 CS10").nil?
Column.create!(category_id: category_99.id, name: "飞腾", en_name: "飞腾", keyword: "猎豹汽车飞腾|猎豹汽车 飞腾", status: 0) if Column.find_by(name: "飞腾", keyword: "猎豹汽车飞腾|猎豹汽车 飞腾").nil?
Column.create!(category_id: category_99.id, name: "飞腾C5", en_name: "飞腾C5", keyword: "猎豹汽车飞腾C5|猎豹汽车 飞腾C5", status: 0) if Column.find_by(name: "飞腾C5", keyword: "猎豹汽车飞腾C5|猎豹汽车 飞腾C5").nil?
Column.create!(category_id: category_99.id, name: "猎豹黑金刚", en_name: "黑金刚", keyword: "猎豹汽车猎豹黑金刚|猎豹汽车 黑金刚", status: 0) if Column.find_by(name: "猎豹黑金刚", keyword: "猎豹汽车猎豹黑金刚|猎豹汽车 黑金刚").nil?
Column.create!(category_id: category_99.id, name: "猎豹6481", en_name: "猎豹6481", keyword: "猎豹汽车猎豹6481|猎豹汽车 猎豹6481", status: 0) if Column.find_by(name: "猎豹6481", keyword: "猎豹汽车猎豹6481|猎豹汽车 猎豹6481").nil?
Column.create!(category_id: category_99.id, name: "猎豹CS6", en_name: "CS6", keyword: "猎豹汽车猎豹CS6|猎豹汽车 CS6", status: 0) if Column.find_by(name: "猎豹CS6", keyword: "猎豹汽车猎豹CS6|猎豹汽车 CS6").nil?
Column.create!(category_id: category_99.id, name: "猎豹Q6", en_name: "猎豹Q6", keyword: "猎豹汽车猎豹Q6|猎豹汽车 猎豹Q6", status: 0) if Column.find_by(name: "猎豹Q6", keyword: "猎豹汽车猎豹Q6|猎豹汽车 猎豹Q6").nil?
Column.create!(category_id: category_99.id, name: "猎豹CFA6473系列", en_name: "CFA6473系列", keyword: "猎豹汽车猎豹CFA6473系列|猎豹汽车 CFA6473系列", status: 0) if Column.find_by(name: "猎豹CFA6473系列", keyword: "猎豹汽车猎豹CFA6473系列|猎豹汽车 CFA6473系列").nil?
Column.create!(category_id: category_99.id, name: "长丰猎豹CS7", en_name: "CS7", keyword: "猎豹汽车长丰猎豹CS7|猎豹汽车 CS7", status: 0) if Column.find_by(name: "长丰猎豹CS7", keyword: "猎豹汽车长丰猎豹CS7|猎豹汽车 CS7").nil?
Column.create!(category_id: category_99.id, name: "猎豹CFA2030", en_name: "CFA2030系列", keyword: "猎豹汽车猎豹CFA2030|猎豹汽车 CFA2030系列", status: 0) if Column.find_by(name: "猎豹CFA2030", keyword: "猎豹汽车猎豹CFA2030|猎豹汽车 CFA2030系列").nil?
Column.create!(category_id: category_99.id, name: "猎豹CJY6470", en_name: "CJY6470系列", keyword: "猎豹汽车猎豹CJY6470|猎豹汽车 CJY6470系列", status: 0) if Column.find_by(name: "猎豹CJY6470", keyword: "猎豹汽车猎豹CJY6470|猎豹汽车 CJY6470系列").nil?
Column.create!(category_id: category_99.id, name: "骐菱", en_name: "骐菱", keyword: "猎豹汽车骐菱|猎豹汽车 骐菱", status: 0) if Column.find_by(name: "骐菱", keyword: "猎豹汽车骐菱|猎豹汽车 骐菱").nil?
Column.create!(category_id: category_99.id, name: "东风雷诺科雷嘉", en_name: "Kadjar", keyword: "东风雷诺科雷嘉|renault Kadjar", status: 0) if Column.find_by(name: "东风雷诺科雷嘉", keyword: "东风雷诺科雷嘉|renault Kadjar").nil?
Column.create!(category_id: category_99.id, name: "塔利斯曼", en_name: "Talisman", keyword: "雷诺塔利斯曼|renault Talisman", status: 0) if Column.find_by(name: "塔利斯曼", keyword: "雷诺塔利斯曼|renault Talisman").nil?
Column.create!(category_id: category_99.id, name: "风景", en_name: "Scenic", keyword: "雷诺风景|renault Scenic", status: 0) if Column.find_by(name: "风景", keyword: "雷诺风景|renault Scenic").nil?
Column.create!(category_id: category_99.id, name: "风朗", en_name: "Fluence", keyword: "雷诺风朗|renault Fluence", status: 0) if Column.find_by(name: "风朗", keyword: "雷诺风朗|renault Fluence").nil?
Column.create!(category_id: category_99.id, name: "卡缤", en_name: "captur", keyword: "雷诺卡缤|renault captur", status: 0) if Column.find_by(name: "卡缤", keyword: "雷诺卡缤|renault captur").nil?
Column.create!(category_id: category_99.id, name: "科雷傲", en_name: "科雷傲", keyword: "雷诺科雷傲|renault 科雷傲", status: 0) if Column.find_by(name: "科雷傲", keyword: "雷诺科雷傲|renault 科雷傲").nil?
Column.create!(category_id: category_99.id, name: "拉古那", en_name: "Laguna", keyword: "雷诺拉古那|renault Laguna", status: 0) if Column.find_by(name: "拉古那", keyword: "雷诺拉古那|renault Laguna").nil?
Column.create!(category_id: category_99.id, name: "梅甘娜R.S.", en_name: "megane r.s.", keyword: "雷诺梅甘娜R.S.|renault megane r.s.", status: 0) if Column.find_by(name: "梅甘娜R.S.", keyword: "雷诺梅甘娜R.S.|renault megane r.s.").nil?
Column.create!(category_id: category_99.id, name: "纬度", en_name: "纬度", keyword: "雷诺纬度|renault 纬度", status: 0) if Column.find_by(name: "纬度", keyword: "雷诺纬度|renault 纬度").nil?
Column.create!(category_id: category_99.id, name: "雷诺Alpine", en_name: "Alpine", keyword: "雷诺Alpine|renault Alpine", status: 0) if Column.find_by(name: "雷诺Alpine", keyword: "雷诺Alpine|renault Alpine").nil?
Column.create!(category_id: category_99.id, name: "雷诺Kwid", en_name: "Kwid", keyword: "雷诺Kwid|renault Kwid", status: 0) if Column.find_by(name: "雷诺Kwid", keyword: "雷诺Kwid|renault Kwid").nil?
Column.create!(category_id: category_99.id, name: "雷诺Twingo", en_name: "Twingo", keyword: "雷诺Twingo|renault Twingo", status: 0) if Column.find_by(name: "雷诺Twingo", keyword: "雷诺Twingo|renault Twingo").nil?
Column.create!(category_id: category_99.id, name: "雷诺威赛帝", en_name: "VelSatis", keyword: "雷诺威赛帝|renault VelSatis", status: 0) if Column.find_by(name: "雷诺威赛帝", keyword: "雷诺威赛帝|renault VelSatis").nil?
Column.create!(category_id: category_99.id, name: "领航员", en_name: "Navigator", keyword: "林肯领航员|lincoln Navigator", status: 0) if Column.find_by(name: "领航员", keyword: "林肯领航员|lincoln Navigator").nil?
Column.create!(category_id: category_99.id, name: "林肯MKX", en_name: "MKX", keyword: "林肯MKX|lincoln MKX", status: 0) if Column.find_by(name: "林肯MKX", keyword: "林肯MKX|lincoln MKX").nil?
Column.create!(category_id: category_99.id, name: "林肯MKC", en_name: "MKC", keyword: "林肯MKC|lincoln MKC", status: 0) if Column.find_by(name: "林肯MKC", keyword: "林肯MKC|lincoln MKC").nil?
Column.create!(category_id: category_99.id, name: "林肯MKS", en_name: "MKS", keyword: "林肯MKS|lincoln MKS", status: 0) if Column.find_by(name: "林肯MKS", keyword: "林肯MKS|lincoln MKS").nil?
Column.create!(category_id: category_99.id, name: "林肯MKT", en_name: "MKT", keyword: "林肯MKT|lincoln MKT", status: 0) if Column.find_by(name: "林肯MKT", keyword: "林肯MKT|lincoln MKT").nil?
Column.create!(category_id: category_99.id, name: "林肯MKZ", en_name: "MKZ", keyword: "林肯MKZ|lincoln MKZ", status: 0) if Column.find_by(name: "林肯MKZ", keyword: "林肯MKZ|lincoln MKZ").nil?
Column.create!(category_id: category_99.id, name: "大陆", en_name: "CONTINENTAL", keyword: "林肯大陆|lincoln CONTINENTAL", status: 0) if Column.find_by(name: "大陆", keyword: "林肯大陆|lincoln CONTINENTAL").nil?
Column.create!(category_id: category_99.id, name: "城市", en_name: "城市", keyword: "林肯城市|lincoln 城市", status: 0) if Column.find_by(name: "城市", keyword: "林肯城市|lincoln 城市").nil?
Column.create!(category_id: category_99.id, name: "黑森林", en_name: "黑森林", keyword: "林肯黑森林|lincoln 黑森林", status: 0) if Column.find_by(name: "黑森林", keyword: "林肯黑森林|lincoln 黑森林").nil?
Column.create!(category_id: category_99.id, name: "林肯加长版", en_name: "林肯加长版", keyword: "林肯加长版|lincoln 林肯加长版", status: 0) if Column.find_by(name: "林肯加长版", keyword: "林肯加长版|lincoln 林肯加长版").nil?
Column.create!(category_id: category_99.id, name: "林肯LS", en_name: "LS", keyword: "林肯LS|lincoln LS", status: 0) if Column.find_by(name: "林肯LS", keyword: "林肯LS|lincoln LS").nil?
Column.create!(category_id: category_99.id, name: "Aventador", en_name: "Aventador", keyword: "兰博基尼Aventador|Lamborghini Aventador", status: 0) if Column.find_by(name: "Aventador", keyword: "兰博基尼Aventador|Lamborghini Aventador").nil?
Column.create!(category_id: category_99.id, name: "Huracan", en_name: "Huracan", keyword: "兰博基尼Huracan|Lamborghini Huracan", status: 0) if Column.find_by(name: "Huracan", keyword: "兰博基尼Huracan|Lamborghini Huracan").nil?
Column.create!(category_id: category_99.id, name: "蝙蝠", en_name: "Murcielago", keyword: "兰博基尼蝙蝠|Lamborghini Murcielago", status: 0) if Column.find_by(name: "蝙蝠", keyword: "兰博基尼蝙蝠|Lamborghini Murcielago").nil?
Column.create!(category_id: category_99.id, name: "兰博基尼Diablo", en_name: "Diablo", keyword: "兰博基尼Diablo|Lamborghini Diablo", status: 0) if Column.find_by(name: "兰博基尼Diablo", keyword: "兰博基尼Diablo|Lamborghini Diablo").nil?
Column.create!(category_id: category_99.id, name: "盖拉多", en_name: "Gallardo", keyword: "兰博基尼盖拉多|Lamborghini Gallardo", status: 0) if Column.find_by(name: "盖拉多", keyword: "兰博基尼盖拉多|Lamborghini Gallardo").nil?
Column.create!(category_id: category_99.id, name: "力帆320", en_name: "320", keyword: "力帆320|力帆 320", status: 0) if Column.find_by(name: "力帆320", keyword: "力帆320|力帆 320").nil?
Column.create!(category_id: category_99.id, name: "力帆330", en_name: "330", keyword: "力帆330|力帆 330", status: 0) if Column.find_by(name: "力帆330", keyword: "力帆330|力帆 330").nil?
Column.create!(category_id: category_99.id, name: "力帆520", en_name: "520", keyword: "力帆520|力帆 520", status: 0) if Column.find_by(name: "力帆520", keyword: "力帆520|力帆 520").nil?
Column.create!(category_id: category_99.id, name: "力帆520i", en_name: "520i", keyword: "力帆520i|力帆 520i", status: 0) if Column.find_by(name: "力帆520i", keyword: "力帆520i|力帆 520i").nil?
Column.create!(category_id: category_99.id, name: "力帆530", en_name: "530", keyword: "力帆530|力帆 530", status: 0) if Column.find_by(name: "力帆530", keyword: "力帆530|力帆 530").nil?
Column.create!(category_id: category_99.id, name: "力帆620", en_name: "620", keyword: "力帆620|力帆 620", status: 0) if Column.find_by(name: "力帆620", keyword: "力帆620|力帆 620").nil?
Column.create!(category_id: category_99.id, name: "力帆620 EV", en_name: "620 EV", keyword: "力帆620 EV|力帆 620 EV", status: 0) if Column.find_by(name: "力帆620 EV", keyword: "力帆620 EV|力帆 620 EV").nil?
Column.create!(category_id: category_99.id, name: "力帆630", en_name: "630", keyword: "力帆630|力帆 630", status: 0) if Column.find_by(name: "力帆630", keyword: "力帆630|力帆 630").nil?
Column.create!(category_id: category_99.id, name: "力帆720", en_name: "720", keyword: "力帆720|力帆 720", status: 0) if Column.find_by(name: "力帆720", keyword: "力帆720|力帆 720").nil?
Column.create!(category_id: category_99.id, name: "力帆820", en_name: "820", keyword: "力帆820|力帆 820", status: 0) if Column.find_by(name: "力帆820", keyword: "力帆820|力帆 820").nil?
Column.create!(category_id: category_99.id, name: "丰顺", en_name: "丰顺", keyword: "力帆丰顺|力帆 丰顺", status: 0) if Column.find_by(name: "丰顺", keyword: "力帆丰顺|力帆 丰顺").nil?
Column.create!(category_id: category_99.id, name: "乐途", en_name: "乐途", keyword: "力帆乐途|力帆 乐途", status: 0) if Column.find_by(name: "乐途", keyword: "力帆乐途|力帆 乐途").nil?
Column.create!(category_id: category_99.id, name: "力帆X50", en_name: "X50", keyword: "力帆X50|力帆 X50", status: 0) if Column.find_by(name: "力帆X50", keyword: "力帆X50|力帆 X50").nil?
Column.create!(category_id: category_99.id, name: "力帆X60", en_name: "X60", keyword: "力帆X60|力帆 X60", status: 0) if Column.find_by(name: "力帆X60", keyword: "力帆X60|力帆 X60").nil?
Column.create!(category_id: category_99.id, name: "兴顺", en_name: "兴顺", keyword: "力帆兴顺|力帆 兴顺", status: 0) if Column.find_by(name: "兴顺", keyword: "力帆兴顺|力帆 兴顺").nil?
Column.create!(category_id: category_99.id, name: "迈威", en_name: "迈威", keyword: "力帆迈威|力帆 迈威", status: 0) if Column.find_by(name: "迈威", keyword: "力帆迈威|力帆 迈威").nil?
Column.create!(category_id: category_99.id, name: "古思特", en_name: "ghost", keyword: "劳斯莱斯古思特|rolls royce ghost", status: 0) if Column.find_by(name: "古思特", keyword: "劳斯莱斯古思特|rolls royce ghost").nil?
Column.create!(category_id: category_99.id, name: "幻影", en_name: "Phantom", keyword: "劳斯莱斯幻影|rolls royce Phantom", status: 0) if Column.find_by(name: "幻影", keyword: "劳斯莱斯幻影|rolls royce Phantom").nil?
Column.create!(category_id: category_99.id, name: "魅影", en_name: "Wraith", keyword: "劳斯莱斯魅影|rolls royce Wraith", status: 0) if Column.find_by(name: "魅影", keyword: "劳斯莱斯魅影|rolls royce Wraith").nil?
Column.create!(category_id: category_99.id, name: "曜影", en_name: "Dawn", keyword: "劳斯莱斯曜影|rolls royce Dawn", status: 0) if Column.find_by(name: "曜影", keyword: "劳斯莱斯曜影|rolls royce Dawn").nil?
Column.create!(category_id: category_99.id, name: "劳斯莱斯Silver spirit", en_name: "Silver spirit", keyword: "劳斯莱斯Silver spirit|rolls royce Silver spirit", status: 0) if Column.find_by(name: "劳斯莱斯Silver spirit", keyword: "劳斯莱斯Silver spirit|rolls royce Silver spirit").nil?
Column.create!(category_id: category_99.id, name: "劳斯莱斯银色天使", en_name: "银色天使", keyword: "劳斯莱斯银色天使|rolls royce 银色天使", status: 0) if Column.find_by(name: "劳斯莱斯银色天使", keyword: "劳斯莱斯银色天使|rolls royce 银色天使").nil?
Column.create!(category_id: category_99.id, name: "莲花L3 GT", en_name: "L3 GT", keyword: "莲花L3 GT|莲花 L3 GT", status: 0) if Column.find_by(name: "莲花L3 GT", keyword: "莲花L3 GT|莲花 L3 GT").nil?
Column.create!(category_id: category_99.id, name: "莲花L3两厢", en_name: "L3hatchback", keyword: "莲花L3两厢|莲花 L3hatchback", status: 0) if Column.find_by(name: "莲花L3两厢", keyword: "莲花L3两厢|莲花 L3hatchback").nil?
Column.create!(category_id: category_99.id, name: "莲花L3三厢", en_name: "L3sedan", keyword: "莲花L3三厢|莲花 L3sedan", status: 0) if Column.find_by(name: "莲花L3三厢", keyword: "莲花L3三厢|莲花 L3sedan").nil?
Column.create!(category_id: category_99.id, name: "莲花L5 GTS 跑车", en_name: "L5 GTS 跑车", keyword: "莲花L5 GTS 跑车|莲花 L5 GTS 跑车", status: 0) if Column.find_by(name: "莲花L5 GTS 跑车", keyword: "莲花L5 GTS 跑车|莲花 L5 GTS 跑车").nil?
Column.create!(category_id: category_99.id, name: "莲花L5两厢", en_name: "L5hatchback", keyword: "莲花L5两厢|莲花 L5hatchback", status: 0) if Column.find_by(name: "莲花L5两厢", keyword: "莲花L5两厢|莲花 L5hatchback").nil?
Column.create!(category_id: category_99.id, name: "莲花L5三厢", en_name: "L5sedan", keyword: "莲花L5三厢|莲花 L5sedan", status: 0) if Column.find_by(name: "莲花L5三厢", keyword: "莲花L5三厢|莲花 L5sedan").nil?
Column.create!(category_id: category_99.id, name: "莲花L6", en_name: "L6", keyword: "莲花L6|莲花 L6", status: 0) if Column.find_by(name: "莲花L6", keyword: "莲花L6|莲花 L6").nil?
Column.create!(category_id: category_99.id, name: "莲花T5", en_name: "T5", keyword: "莲花T5|莲花 T5", status: 0) if Column.find_by(name: "莲花T5", keyword: "莲花T5|莲花 T5").nil?
Column.create!(category_id: category_99.id, name: "竞悦", en_name: "竞悦", keyword: "莲花竞悦|莲花 竞悦", status: 0) if Column.find_by(name: "竞悦", keyword: "莲花竞悦|莲花 竞悦").nil?
Column.create!(category_id: category_99.id, name: "竞速", en_name: "RCR竞速", keyword: "莲花竞速|莲花 RCR竞速", status: 0) if Column.find_by(name: "竞速", keyword: "莲花竞速|莲花 RCR竞速").nil?
Column.create!(category_id: category_99.id, name: "RCR竞悦", en_name: "RCR竞悦", keyword: "莲花RCR竞悦|莲花 RCR竞悦", status: 0) if Column.find_by(name: "RCR竞悦", keyword: "莲花RCR竞悦|莲花 RCR竞悦").nil?
Column.create!(category_id: category_99.id, name: "蓝海凌特", en_name: "蓝海凌特", keyword: "蓝海房车蓝海凌特|蓝海房车 蓝海凌特", status: 0) if Column.find_by(name: "蓝海凌特", keyword: "蓝海房车蓝海凌特|蓝海房车 蓝海凌特").nil?
Column.create!(category_id: category_99.id, name: "蓝海威霆", en_name: "蓝海威霆", keyword: "蓝海房车蓝海威霆|蓝海房车 蓝海威霆", status: 0) if Column.find_by(name: "蓝海威霆", keyword: "蓝海房车蓝海威霆|蓝海房车 蓝海威霆").nil?
Column.create!(category_id: category_99.id, name: "路特斯Elise", en_name: "Elise", keyword: "路特斯Elise|Lotus Elise", status: 0) if Column.find_by(name: "路特斯Elise", keyword: "路特斯Elise|Lotus Elise").nil?
Column.create!(category_id: category_99.id, name: "路特斯Evora", en_name: "Evora", keyword: "路特斯Evora|Lotus Evora", status: 0) if Column.find_by(name: "路特斯Evora", keyword: "路特斯Evora|Lotus Evora").nil?
Column.create!(category_id: category_99.id, name: "路特斯Exige", en_name: "Exige", keyword: "路特斯Exige|Lotus Exige", status: 0) if Column.find_by(name: "路特斯Exige", keyword: "路特斯Exige|Lotus Exige").nil?
Column.create!(category_id: category_99.id, name: "Esprit", en_name: "Esprit", keyword: "路特斯Esprit|Lotus Esprit", status: 0) if Column.find_by(name: "Esprit", keyword: "路特斯Esprit|Lotus Esprit").nil?
Column.create!(category_id: category_99.id, name: "理念S1", en_name: "理念S1", keyword: "理念S1|理念 理念S1", status: 0) if Column.find_by(name: "理念S1", keyword: "理念S1|理念 理念S1").nil?
Column.create!(category_id: category_99.id, name: "雷丁D50", en_name: "D50", keyword: "雷丁电动雷丁D50|雷丁电动 D50", status: 0) if Column.find_by(name: "雷丁D50", keyword: "雷丁电动雷丁D50|雷丁电动 D50").nil?
Column.create!(category_id: category_99.id, name: "雷丁D70", en_name: "D70", keyword: "雷丁电动雷丁D70|雷丁电动 D70", status: 0) if Column.find_by(name: "雷丁D70", keyword: "雷丁电动雷丁D70|雷丁电动 D70").nil?
Column.create!(category_id: category_99.id, name: "小王子", en_name: "小王子", keyword: "雷丁电动小王子|雷丁电动 小王子", status: 0) if Column.find_by(name: "小王子", keyword: "雷丁电动小王子|雷丁电动 小王子").nil?
Column.create!(category_id: category_99.id, name: "雷丁S50", en_name: "S50", keyword: "雷丁电动雷丁S50|雷丁电动 S50", status: 0) if Column.find_by(name: "雷丁S50", keyword: "雷丁电动雷丁S50|雷丁电动 S50").nil?
Column.create!(category_id: category_99.id, name: "风尚", en_name: "风尚", keyword: "陆地方舟风尚|陆地方舟 风尚", status: 0) if Column.find_by(name: "风尚", keyword: "陆地方舟风尚|陆地方舟 风尚").nil?
Column.create!(category_id: category_99.id, name: "陆地方舟JEV", en_name: "JEV", keyword: "陆地方舟JEV|陆地方舟 JEV", status: 0) if Column.find_by(name: "陆地方舟JEV", keyword: "陆地方舟JEV|陆地方舟 JEV").nil?
Column.create!(category_id: category_99.id, name: "陆地方舟V5S", en_name: "V5S", keyword: "陆地方舟V5S|陆地方舟 V5S", status: 0) if Column.find_by(name: "陆地方舟V5S", keyword: "陆地方舟V5S|陆地方舟 V5S").nil?
Column.create!(category_id: category_99.id, name: "威途Z35", en_name: "威途Z35", keyword: "陆地方舟威途Z35|陆地方舟 威途Z35", status: 0) if Column.find_by(name: "威途Z35", keyword: "陆地方舟威途Z35|陆地方舟 威途Z35").nil?
Column.create!(category_id: category_99.id, name: "领志i1", en_name: "i1", keyword: "领志i1|领志 i1", status: 0) if Column.find_by(name: "领志i1", keyword: "领志i1|领志 i1").nil?
Column.create!(category_id: category_99.id, name: "朗世EV", en_name: "EV", keyword: "朗世EV|朗世 EV", status: 0) if Column.find_by(name: "朗世EV", keyword: "朗世EV|朗世 EV").nil?
Column.create!(category_id: category_99.id, name: "TF", en_name: "TF", keyword: "罗孚TF|Rover TF", status: 0) if Column.find_by(name: "TF", keyword: "罗孚TF|Rover TF").nil?
Column.create!(category_id: category_99.id, name: "罗孚", en_name: "罗孚", keyword: "罗孚|Rover 罗孚", status: 0) if Column.find_by(name: "罗孚", keyword: "罗孚|Rover 罗孚").nil?
Column.create!(category_id: category_99.id, name: "昂克赛拉两厢", en_name: "昂克赛拉hatchback", keyword: "马自达昂克赛拉两厢|mazda 昂克赛拉hatchback", status: 0) if Column.find_by(name: "昂克赛拉两厢", keyword: "马自达昂克赛拉两厢|mazda 昂克赛拉hatchback").nil?
Column.create!(category_id: category_99.id, name: "昂克赛拉三厢", en_name: "昂克赛拉sedan", keyword: "马自达昂克赛拉三厢|mazda 昂克赛拉sedan", status: 0) if Column.find_by(name: "昂克赛拉三厢", keyword: "马自达昂克赛拉三厢|mazda 昂克赛拉sedan").nil?
Column.create!(category_id: category_99.id, name: "马自达CX-5", en_name: "CX-5", keyword: "马自达CX-5|mazda CX-5", status: 0) if Column.find_by(name: "马自达CX-5", keyword: "马自达CX-5|mazda CX-5").nil?
Column.create!(category_id: category_99.id, name: "马自达2两厢", en_name: "Mazda2hatchback", keyword: "马自达2两厢|mazda Mazda2hatchback", status: 0) if Column.find_by(name: "马自达2两厢", keyword: "马自达2两厢|mazda Mazda2hatchback").nil?
Column.create!(category_id: category_99.id, name: "马自达2三厢", en_name: "Mazda2sedan", keyword: "马自达2三厢|mazda Mazda2sedan", status: 0) if Column.find_by(name: "马自达2三厢", keyword: "马自达2三厢|mazda Mazda2sedan").nil?
Column.create!(category_id: category_99.id, name: "马自达3", en_name: "Mazda3", keyword: "马自达3|mazda Mazda3", status: 0) if Column.find_by(name: "马自达3", keyword: "马自达3|mazda Mazda3").nil?
Column.create!(category_id: category_99.id, name: "马自达3星骋两厢", en_name: "Mazda3星骋hatchback", keyword: "马自达3星骋两厢|mazda Mazda3星骋hatchback", status: 0) if Column.find_by(name: "马自达3星骋两厢", keyword: "马自达3星骋两厢|mazda Mazda3星骋hatchback").nil?
Column.create!(category_id: category_99.id, name: "马自达3星骋三厢", en_name: "Mazda3星骋sedan", keyword: "马自达3星骋三厢|mazda Mazda3星骋sedan", status: 0) if Column.find_by(name: "马自达3星骋三厢", keyword: "马自达3星骋三厢|mazda Mazda3星骋sedan").nil?
Column.create!(category_id: category_99.id, name: "阿特兹", en_name: "阿特兹", keyword: "马自达阿特兹|mazda 阿特兹", status: 0) if Column.find_by(name: "阿特兹", keyword: "马自达阿特兹|mazda 阿特兹").nil?
Column.create!(category_id: category_99.id, name: "马自达CX-7", en_name: "CX-7", keyword: "马自达CX-7|mazda CX-7", status: 0) if Column.find_by(name: "马自达CX-7", keyword: "马自达CX-7|mazda CX-7").nil?
Column.create!(category_id: category_99.id, name: "马自达6", en_name: "Mazda6", keyword: "马自达6|mazda Mazda6", status: 0) if Column.find_by(name: "马自达6", keyword: "马自达6|mazda Mazda6").nil?
Column.create!(category_id: category_99.id, name: "马自达8", en_name: "Mazda8", keyword: "马自达8|mazda Mazda8", status: 0) if Column.find_by(name: "马自达8", keyword: "马自达8|mazda Mazda8").nil?
Column.create!(category_id: category_99.id, name: "睿翼", en_name: "睿翼", keyword: "马自达睿翼|mazda 睿翼", status: 0) if Column.find_by(name: "睿翼", keyword: "马自达睿翼|mazda 睿翼").nil?
Column.create!(category_id: category_99.id, name: "睿翼轿跑", en_name: "睿翼轿跑", keyword: "马自达睿翼轿跑|mazda 睿翼轿跑", status: 0) if Column.find_by(name: "睿翼轿跑", keyword: "马自达睿翼轿跑|mazda 睿翼轿跑").nil?
Column.create!(category_id: category_99.id, name: "马自达CX-4", en_name: "CX-4", keyword: "马自达CX-4|mazda CX-4", status: 0) if Column.find_by(name: "马自达CX-4", keyword: "马自达CX-4|mazda CX-4").nil?
Column.create!(category_id: category_99.id, name: "马自达6 Wagon", en_name: "Mazda6 Wagon", keyword: "马自达6 Wagon|mazda Mazda6 Wagon", status: 0) if Column.find_by(name: "马自达6 Wagon", keyword: "马自达6 Wagon|mazda Mazda6 Wagon").nil?
Column.create!(category_id: category_99.id, name: "马自达6轿跑车", en_name: "Mazda6轿跑车", keyword: "马自达6轿跑车|mazda Mazda6轿跑车", status: 0) if Column.find_by(name: "马自达6轿跑车", keyword: "马自达6轿跑车|mazda Mazda6轿跑车").nil?
Column.create!(category_id: category_99.id, name: "马自达CX-7（进口）", en_name: "CX-7", keyword: "马自达CX-7（进口）|mazda CX-7", status: 0) if Column.find_by(name: "马自达CX-7（进口）", keyword: "马自达CX-7（进口）|mazda CX-7").nil?
Column.create!(category_id: category_99.id, name: "马自达CX-9（进口）", en_name: "CX-9", keyword: "马自达CX-9（进口）|mazda CX-9", status: 0) if Column.find_by(name: "马自达CX-9（进口）", keyword: "马自达CX-9（进口）|mazda CX-9").nil?
Column.create!(category_id: category_99.id, name: "马自达5（进口）", en_name: "Mazda5", keyword: "马自达5（进口）|mazda Mazda5", status: 0) if Column.find_by(name: "马自达5（进口）", keyword: "马自达5（进口）|mazda Mazda5").nil?
Column.create!(category_id: category_99.id, name: "马自达MX-5（进口）", en_name: "MX-5", keyword: "马自达MX-5（进口）|mazda MX-5", status: 0) if Column.find_by(name: "马自达MX-5（进口）", keyword: "马自达MX-5（进口）|mazda MX-5").nil?
Column.create!(category_id: category_99.id, name: "马自达CX-3", en_name: "CX-3", keyword: "马自达CX-3|mazda CX-3", status: 0) if Column.find_by(name: "马自达CX-3", keyword: "马自达CX-3|mazda CX-3").nil?
Column.create!(category_id: category_99.id, name: "马自达RX-Vision", en_name: "RX-Vision", keyword: "马自达RX-Vision|mazda RX-Vision", status: 0) if Column.find_by(name: "马自达RX-Vision", keyword: "马自达RX-Vision|mazda RX-Vision").nil?
Column.create!(category_id: category_99.id, name: "马自达ATENZA（进口）", en_name: "ATENZA", keyword: "马自达ATENZA（进口）|mazda ATENZA", status: 0) if Column.find_by(name: "马自达ATENZA（进口）", keyword: "马自达ATENZA（进口）|mazda ATENZA").nil?
Column.create!(category_id: category_99.id, name: "马自达CX-5（进口）", en_name: "CX-5", keyword: "马自达CX-5（进口）|mazda CX-5", status: 0) if Column.find_by(name: "马自达CX-5（进口）", keyword: "马自达CX-5（进口）|mazda CX-5").nil?
Column.create!(category_id: category_99.id, name: "mazda RX-8,RX-8", en_name: "mazda RX-8", keyword: "马自达mazda RX-8,RX-8|mazda mazda RX-8", status: 0) if Column.find_by(name: "mazda RX-8,RX-8", keyword: "马自达mazda RX-8,RX-8|mazda mazda RX-8").nil?
Column.create!(category_id: category_99.id, name: "马自达3两厢", en_name: "Mazda3hatchback", keyword: "马自达3两厢|mazda Mazda3hatchback", status: 0) if Column.find_by(name: "马自达3两厢", keyword: "马自达3两厢|mazda Mazda3hatchback").nil?
Column.create!(category_id: category_99.id, name: "Mazda6", en_name: "Mazda6", keyword: "马自达Mazda6|mazda Mazda6", status: 0) if Column.find_by(name: "Mazda6", keyword: "马自达Mazda6|mazda Mazda6").nil?
Column.create!(category_id: category_99.id, name: "马自达323", en_name: "323", keyword: "马自达323|mazda 323", status: 0) if Column.find_by(name: "马自达323", keyword: "马自达323|mazda 323").nil?
Column.create!(category_id: category_99.id, name: "马自达626", en_name: "626", keyword: "马自达626|mazda 626", status: 0) if Column.find_by(name: "马自达626", keyword: "马自达626|mazda 626").nil?
Column.create!(category_id: category_99.id, name: "马自达929", en_name: "929", keyword: "马自达929|mazda 929", status: 0) if Column.find_by(name: "马自达929", keyword: "马自达929|mazda 929").nil?
Column.create!(category_id: category_99.id, name: "马自达MPV", en_name: "马自达MPV", keyword: "马自达MPV|mazda 马自达MPV", status: 0) if Column.find_by(name: "马自达MPV", keyword: "马自达MPV|mazda 马自达MPV").nil?
Column.create!(category_id: category_99.id, name: "MG 3", en_name: "MG 3", keyword: "MG 3|MG MG 3", status: 0) if Column.find_by(name: "MG 3", keyword: "MG 3|MG MG 3").nil?
Column.create!(category_id: category_99.id, name: "MG 3SW", en_name: "MG 3SW", keyword: "MG 3SW|MG MG 3SW", status: 0) if Column.find_by(name: "MG 3SW", keyword: "MG 3SW|MG MG 3SW").nil?
Column.create!(category_id: category_99.id, name: "MG 5", en_name: "MG 5", keyword: "MG 5|MG MG 5", status: 0) if Column.find_by(name: "MG 5", keyword: "MG 5|MG MG 5").nil?
Column.create!(category_id: category_99.id, name: "MG 6两厢", en_name: "MG 6hatchback", keyword: "MG 6两厢|MG MG 6hatchback", status: 0) if Column.find_by(name: "MG 6两厢", keyword: "MG 6两厢|MG MG 6hatchback").nil?
Column.create!(category_id: category_99.id, name: "MG 6三厢", en_name: "6sedan", keyword: "MG 6三厢|MG 6sedan", status: 0) if Column.find_by(name: "MG 6三厢", keyword: "MG 6三厢|MG 6sedan").nil?
Column.create!(category_id: category_99.id, name: "MG 7", en_name: "MG 7", keyword: "MG 7|MG MG 7", status: 0) if Column.find_by(name: "MG 7", keyword: "MG 7|MG MG 7").nil?
Column.create!(category_id: category_99.id, name: "MG TF", en_name: "MG TF", keyword: "MG TF|MG MG TF", status: 0) if Column.find_by(name: "MG TF", keyword: "MG TF|MG MG TF").nil?
Column.create!(category_id: category_99.id, name: "锐腾", en_name: "锐腾", keyword: "MG锐腾|MG 锐腾", status: 0) if Column.find_by(name: "锐腾", keyword: "MG锐腾|MG 锐腾").nil?
Column.create!(category_id: category_99.id, name: "锐行", en_name: "锐行", keyword: "MG锐行|MG 锐行", status: 0) if Column.find_by(name: "锐行", keyword: "MG锐行|MG 锐行").nil?
Column.create!(category_id: category_99.id, name: "玛莎拉蒂Ghibli", en_name: "Ghibli", keyword: "玛莎拉蒂Ghibli|maserati Ghibli", status: 0) if Column.find_by(name: "玛莎拉蒂Ghibli", keyword: "玛莎拉蒂Ghibli|maserati Ghibli").nil?
Column.create!(category_id: category_99.id, name: "玛莎拉蒂GC", en_name: "GranCabrio", keyword: "玛莎拉蒂GC|maserati GranCabrio", status: 0) if Column.find_by(name: "玛莎拉蒂GC", keyword: "玛莎拉蒂GC|maserati GranCabrio").nil?
Column.create!(category_id: category_99.id, name: "玛莎拉蒂GT", en_name: "GranTurismo", keyword: "玛莎拉蒂GT|maserati GranTurismo", status: 0) if Column.find_by(name: "玛莎拉蒂GT", keyword: "玛莎拉蒂GT|maserati GranTurismo").nil?
Column.create!(category_id: category_99.id, name: "玛莎拉蒂Levante", en_name: "Levante", keyword: "玛莎拉蒂Levante|maserati Levante", status: 0) if Column.find_by(name: "玛莎拉蒂Levante", keyword: "玛莎拉蒂Levante|maserati Levante").nil?
Column.create!(category_id: category_99.id, name: "玛莎拉蒂总裁", en_name: "Quattroporte", keyword: "玛莎拉蒂总裁|maserati Quattroporte", status: 0) if Column.find_by(name: "玛莎拉蒂总裁", keyword: "玛莎拉蒂总裁|maserati Quattroporte").nil?
Column.create!(category_id: category_99.id, name: "GranSport", en_name: "GranSport", keyword: "玛莎拉蒂GranSport|maserati GranSport", status: 0) if Column.find_by(name: "GranSport", keyword: "玛莎拉蒂GranSport|maserati GranSport").nil?
Column.create!(category_id: category_99.id, name: "玛莎拉蒂Coupe", en_name: "Coupe", keyword: "玛莎拉蒂Coupe|maserati Coupe", status: 0) if Column.find_by(name: "玛莎拉蒂Coupe", keyword: "玛莎拉蒂Coupe|maserati Coupe").nil?
Column.create!(category_id: category_99.id, name: "玛莎拉蒂spyder", en_name: "spyder", keyword: "玛莎拉蒂spyder|maserati spyder", status: 0) if Column.find_by(name: "玛莎拉蒂spyder", keyword: "玛莎拉蒂spyder|maserati spyder").nil?
Column.create!(category_id: category_99.id, name: "MINI CABRIO", en_name: "CABRIO", keyword: "MINI CABRIO|MINI CABRIO", status: 0) if Column.find_by(name: "MINI CABRIO", keyword: "MINI CABRIO|MINI CABRIO").nil?
Column.create!(category_id: category_99.id, name: "MINI CLUBMAN", en_name: "CLUBMAN", keyword: "MINI CLUBMAN|MINI CLUBMAN", status: 0) if Column.find_by(name: "MINI CLUBMAN", keyword: "MINI CLUBMAN|MINI CLUBMAN").nil?
Column.create!(category_id: category_99.id, name: "MINI COUNTRYMAN", en_name: "COUNTRYMAN", keyword: "MINI COUNTRYMAN|MINI COUNTRYMAN", status: 0) if Column.find_by(name: "MINI COUNTRYMAN", keyword: "MINI COUNTRYMAN|MINI COUNTRYMAN").nil?
Column.create!(category_id: category_99.id, name: "MINI COUPE", en_name: "COUPE", keyword: "MINI COUPE|MINI COUPE", status: 0) if Column.find_by(name: "MINI COUPE", keyword: "MINI COUPE|MINI COUPE").nil?
Column.create!(category_id: category_99.id, name: "MINI 3-DOOR", en_name: "MINI 3-DOOR", keyword: "MINI 3-DOOR|MINI MINI 3-DOOR", status: 0) if Column.find_by(name: "MINI 3-DOOR", keyword: "MINI 3-DOOR|MINI MINI 3-DOOR").nil?
Column.create!(category_id: category_99.id, name: "MINI 5-DOOR", en_name: "MINI 5-DOOR", keyword: "MINI 5-DOOR|MINI MINI 5-DOOR", status: 0) if Column.find_by(name: "MINI 5-DOOR", keyword: "MINI 5-DOOR|MINI MINI 5-DOOR").nil?
Column.create!(category_id: category_99.id, name: "MINI PACEMAN", en_name: "PACEMAN", keyword: "MINI PACEMAN|MINI PACEMAN", status: 0) if Column.find_by(name: "MINI PACEMAN", keyword: "MINI PACEMAN|MINI PACEMAN").nil?
Column.create!(category_id: category_99.id, name: "MINI ROADSTER", en_name: "ROADSTER", keyword: "MINI ROADSTER|MINI ROADSTER", status: 0) if Column.find_by(name: "MINI ROADSTER", keyword: "MINI ROADSTER|MINI ROADSTER").nil?
Column.create!(category_id: category_99.id, name: "MINI CLUBMAN JCW", en_name: "CLUBMAN JCW", keyword: "MINI CLUBMAN JCW|MINI CLUBMAN JCW", status: 0) if Column.find_by(name: "MINI CLUBMAN JCW", keyword: "MINI CLUBMAN JCW|MINI CLUBMAN JCW").nil?
Column.create!(category_id: category_99.id, name: "MINI COUNTRYMAN JCW", en_name: "COUNTRYMAN JCW", keyword: "MINI COUNTRYMAN JCW|MINI COUNTRYMAN JCW", status: 0) if Column.find_by(name: "MINI COUNTRYMAN JCW", keyword: "MINI COUNTRYMAN JCW|MINI COUNTRYMAN JCW").nil?
Column.create!(category_id: category_99.id, name: "MINI COUPE JCW", en_name: "COUPE JCW", keyword: "MINI COUPE JCW|MINI COUPE JCW", status: 0) if Column.find_by(name: "MINI COUPE JCW", keyword: "MINI COUPE JCW|MINI COUPE JCW").nil?
Column.create!(category_id: category_99.id, name: "MINI JCW", en_name: "MINI JCW", keyword: "MINI JCW|MINI MINI JCW", status: 0) if Column.find_by(name: "MINI JCW", keyword: "MINI JCW|MINI MINI JCW").nil?
Column.create!(category_id: category_99.id, name: "MINI PACEMAN JCW", en_name: "PACEMAN JCW", keyword: "MINI PACEMAN JCW|MINI PACEMAN JCW", status: 0) if Column.find_by(name: "MINI PACEMAN JCW", keyword: "MINI PACEMAN JCW|MINI PACEMAN JCW").nil?
Column.create!(category_id: category_99.id, name: "迈凯伦540C", en_name: "540C", keyword: "迈凯伦540C|mclaren 540C", status: 0) if Column.find_by(name: "迈凯伦540C", keyword: "迈凯伦540C|mclaren 540C").nil?
Column.create!(category_id: category_99.id, name: "迈凯伦570S", en_name: "570S", keyword: "迈凯伦570S|mclaren 570S", status: 0) if Column.find_by(name: "迈凯伦570S", keyword: "迈凯伦570S|mclaren 570S").nil?
Column.create!(category_id: category_99.id, name: "迈凯伦625C", en_name: "625C", keyword: "迈凯伦625C|mclaren 625C", status: 0) if Column.find_by(name: "迈凯伦625C", keyword: "迈凯伦625C|mclaren 625C").nil?
Column.create!(category_id: category_99.id, name: "迈凯伦650S", en_name: "650S", keyword: "迈凯伦650S|mclaren 650S", status: 0) if Column.find_by(name: "迈凯伦650S", keyword: "迈凯伦650S|mclaren 650S").nil?
Column.create!(category_id: category_99.id, name: "迈凯伦675LT", en_name: "675LT", keyword: "迈凯伦675LT|mclaren 675LT", status: 0) if Column.find_by(name: "迈凯伦675LT", keyword: "迈凯伦675LT|mclaren 675LT").nil?
Column.create!(category_id: category_99.id, name: "迈凯伦MP4-12C", en_name: "MP4-12C", keyword: "迈凯伦MP4-12C|mclaren MP4-12C", status: 0) if Column.find_by(name: "迈凯伦MP4-12C", keyword: "迈凯伦MP4-12C|mclaren MP4-12C").nil?
Column.create!(category_id: category_99.id, name: "迈凯伦P1", en_name: "P1", keyword: "迈凯伦P1|mclaren P1", status: 0) if Column.find_by(name: "迈凯伦P1", keyword: "迈凯伦P1|mclaren P1").nil?
Column.create!(category_id: category_99.id, name: "迈巴赫57", en_name: "57", keyword: "迈巴赫57|Maybach 57", status: 0) if Column.find_by(name: "迈巴赫57", keyword: "迈巴赫57|Maybach 57").nil?
Column.create!(category_id: category_99.id, name: "迈巴赫57S", en_name: "57S", keyword: "迈巴赫57S|Maybach 57S", status: 0) if Column.find_by(name: "迈巴赫57S", keyword: "迈巴赫57S|Maybach 57S").nil?
Column.create!(category_id: category_99.id, name: "迈巴赫62", en_name: "62", keyword: "迈巴赫62|Maybach 62", status: 0) if Column.find_by(name: "迈巴赫62", keyword: "迈巴赫62|Maybach 62").nil?
Column.create!(category_id: category_99.id, name: "迈巴赫62S", en_name: "62S", keyword: "迈巴赫62S|Maybach 62S", status: 0) if Column.find_by(name: "迈巴赫62S", keyword: "迈巴赫62S|Maybach 62S").nil?
Column.create!(category_id: category_99.id, name: "摩根3-Wheeler", en_name: "3-Wheeler", keyword: "摩根3-Wheeler|morgan 3-Wheeler", status: 0) if Column.find_by(name: "摩根3-Wheeler", keyword: "摩根3-Wheeler|morgan 3-Wheeler").nil?
Column.create!(category_id: category_99.id, name: "摩根4-4", en_name: "摩根4-4", keyword: "摩根4-4|morgan 摩根4-4", status: 0) if Column.find_by(name: "摩根4-4", keyword: "摩根4-4|morgan 摩根4-4").nil?
Column.create!(category_id: category_99.id, name: "摩根Aero", en_name: "Aero", keyword: "摩根Aero|morgan Aero", status: 0) if Column.find_by(name: "摩根Aero", keyword: "摩根Aero|morgan Aero").nil?
Column.create!(category_id: category_99.id, name: "摩根Aero 8", en_name: "Aero 8", keyword: "摩根Aero 8|morgan Aero 8", status: 0) if Column.find_by(name: "摩根Aero 8", keyword: "摩根Aero 8|morgan Aero 8").nil?
Column.create!(category_id: category_99.id, name: "摩根Plus 4", en_name: "Plus 4", keyword: "摩根Plus 4|morgan Plus 4", status: 0) if Column.find_by(name: "摩根Plus 4", keyword: "摩根Plus 4|morgan Plus 4").nil?
Column.create!(category_id: category_99.id, name: "摩根plus 8", en_name: "plus 8", keyword: "摩根plus 8|morgan plus 8", status: 0) if Column.find_by(name: "摩根plus 8", keyword: "摩根plus 8|morgan plus 8").nil?
Column.create!(category_id: category_99.id, name: "摩根Roadster", en_name: "Roadster", keyword: "摩根Roadster|morgan Roadster", status: 0) if Column.find_by(name: "摩根Roadster", keyword: "摩根Roadster|morgan Roadster").nil?
Column.create!(category_id: category_99.id, name: "陆程", en_name: "陆程", keyword: "美亚陆程|美亚 陆程", status: 0) if Column.find_by(name: "陆程", keyword: "美亚陆程|美亚 陆程").nil?
Column.create!(category_id: category_99.id, name: "富旺", en_name: "富旺", keyword: "美亚富旺|美亚 富旺", status: 0) if Column.find_by(name: "富旺", keyword: "美亚富旺|美亚 富旺").nil?
Column.create!(category_id: category_99.id, name: "美亚奇骏", en_name: "美亚奇骏", keyword: "美亚奇骏|美亚 美亚奇骏", status: 0) if Column.find_by(name: "美亚奇骏", keyword: "美亚奇骏|美亚 美亚奇骏").nil?
Column.create!(category_id: category_99.id, name: "美亚顺风", en_name: "美亚顺风", keyword: "美亚顺风|美亚 美亚顺风", status: 0) if Column.find_by(name: "美亚顺风", keyword: "美亚顺风|美亚 美亚顺风").nil?
Column.create!(category_id: category_99.id, name: "奇兵", en_name: "奇兵", keyword: "美亚奇兵|美亚 奇兵", status: 0) if Column.find_by(name: "奇兵", keyword: "美亚奇兵|美亚 奇兵").nil?
Column.create!(category_id: category_99.id, name: "瑞程", en_name: "瑞程", keyword: "美亚瑞程|美亚 瑞程", status: 0) if Column.find_by(name: "瑞程", keyword: "美亚瑞程|美亚 瑞程").nil?
Column.create!(category_id: category_99.id, name: "新大7 MPV", en_name: "大7 MPV", keyword: "纳智捷新大7 MPV|Luxgen 大7 MPV", status: 0) if Column.find_by(name: "新大7 MPV", keyword: "纳智捷新大7 MPV|Luxgen 大7 MPV").nil?
Column.create!(category_id: category_99.id, name: "新大7 SUV", en_name: "大7 SUV", keyword: "纳智捷新大7 SUV|Luxgen 大7 SUV", status: 0) if Column.find_by(name: "新大7 SUV", keyword: "纳智捷新大7 SUV|Luxgen 大7 SUV").nil?
Column.create!(category_id: category_99.id, name: "纳智捷MASTER CEO", en_name: "MASTER CEO", keyword: "纳智捷MASTER CEO|Luxgen MASTER CEO", status: 0) if Column.find_by(name: "纳智捷MASTER CEO", keyword: "纳智捷MASTER CEO|Luxgen MASTER CEO").nil?
Column.create!(category_id: category_99.id, name: "全新纳5", en_name: "全新纳5", keyword: "纳智捷全新纳5|Luxgen 全新纳5", status: 0) if Column.find_by(name: "全新纳5", keyword: "纳智捷全新纳5|Luxgen 全新纳5").nil?
Column.create!(category_id: category_99.id, name: "优6 SUV", en_name: "优6 SUV", keyword: "纳智捷优6 SUV|Luxgen 优6 SUV", status: 0) if Column.find_by(name: "优6 SUV", keyword: "纳智捷优6 SUV|Luxgen 优6 SUV").nil?
Column.create!(category_id: category_99.id, name: "锐3", en_name: "锐3", keyword: "纳智捷锐3|Luxgen 锐3", status: 0) if Column.find_by(name: "锐3", keyword: "纳智捷锐3|Luxgen 锐3").nil?
Column.create!(category_id: category_99.id, name: "Noble M600", en_name: "M600", keyword: "Noble M600|Noble M600", status: 0) if Column.find_by(name: "Noble M600", keyword: "Noble M600|Noble M600").nil?
Column.create!(category_id: category_99.id, name: "讴歌ILX", en_name: "ILX", keyword: "讴歌ILX|acura ILX", status: 0) if Column.find_by(name: "讴歌ILX", keyword: "讴歌ILX|acura ILX").nil?
Column.create!(category_id: category_99.id, name: "讴歌MDX", en_name: "MDX", keyword: "讴歌MDX|acura MDX", status: 0) if Column.find_by(name: "讴歌MDX", keyword: "讴歌MDX|acura MDX").nil?
Column.create!(category_id: category_99.id, name: "讴歌RDX", en_name: "RDX", keyword: "讴歌RDX|acura RDX", status: 0) if Column.find_by(name: "讴歌RDX", keyword: "讴歌RDX|acura RDX").nil?
Column.create!(category_id: category_99.id, name: "讴歌RL", en_name: "RL", keyword: "讴歌RL|acura RL", status: 0) if Column.find_by(name: "讴歌RL", keyword: "讴歌RL|acura RL").nil?
Column.create!(category_id: category_99.id, name: "讴歌RLX", en_name: "RLX", keyword: "讴歌RLX|acura RLX", status: 0) if Column.find_by(name: "讴歌RLX", keyword: "讴歌RLX|acura RLX").nil?
Column.create!(category_id: category_99.id, name: "讴歌TL", en_name: "TL", keyword: "讴歌TL|acura TL", status: 0) if Column.find_by(name: "讴歌TL", keyword: "讴歌TL|acura TL").nil?
Column.create!(category_id: category_99.id, name: "讴歌TLX", en_name: "TLX", keyword: "讴歌TLX|acura TLX", status: 0) if Column.find_by(name: "讴歌TLX", keyword: "讴歌TLX|acura TLX").nil?
Column.create!(category_id: category_99.id, name: "讴歌ZDX", en_name: "ZDX", keyword: "讴歌ZDX|acura ZDX", status: 0) if Column.find_by(name: "讴歌ZDX", keyword: "讴歌ZDX|acura ZDX").nil?
Column.create!(category_id: category_99.id, name: "讴歌NSX", en_name: "NSX", keyword: "讴歌NSX|acura NSX", status: 0) if Column.find_by(name: "讴歌NSX", keyword: "讴歌NSX|acura NSX").nil?
Column.create!(category_id: category_99.id, name: "欧朗", en_name: "欧朗", keyword: "欧朗|欧朗 欧朗", status: 0) if Column.find_by(name: "欧朗", keyword: "欧朗|欧朗 欧朗").nil?
Column.create!(category_id: category_99.id, name: "欧朗两厢", en_name: "欧朗hatchback", keyword: "欧朗两厢|欧朗 欧朗hatchback", status: 0) if Column.find_by(name: "欧朗两厢", keyword: "欧朗两厢|欧朗 欧朗hatchback").nil?
Column.create!(category_id: category_99.id, name: "雅特", en_name: "雅特", keyword: "欧宝雅特|opel 雅特", status: 0) if Column.find_by(name: "雅特", keyword: "欧宝雅特|opel 雅特").nil?
Column.create!(category_id: category_99.id, name: "安德拉", en_name: "Antara", keyword: "欧宝安德拉|opel Antara", status: 0) if Column.find_by(name: "安德拉", keyword: "欧宝安德拉|opel Antara").nil?
Column.create!(category_id: category_99.id, name: "麦瑞纳", en_name: "meriva", keyword: "欧宝麦瑞纳|opel meriva", status: 0) if Column.find_by(name: "麦瑞纳", keyword: "欧宝麦瑞纳|opel meriva").nil?
Column.create!(category_id: category_99.id, name: "欧宝GT", en_name: "GT", keyword: "欧宝GT|opel GT", status: 0) if Column.find_by(name: "欧宝GT", keyword: "欧宝GT|opel GT").nil?
Column.create!(category_id: category_99.id, name: "欧捷利", en_name: "欧捷利", keyword: "欧宝欧捷利|opel 欧捷利", status: 0) if Column.find_by(name: "欧捷利", keyword: "欧宝欧捷利|opel 欧捷利").nil?
Column.create!(category_id: category_99.id, name: "欧美佳", en_name: "欧美佳", keyword: "欧宝欧美佳|opel 欧美佳", status: 0) if Column.find_by(name: "欧美佳", keyword: "欧宝欧美佳|opel 欧美佳").nil?
Column.create!(category_id: category_99.id, name: "赛飞利", en_name: "赛飞利", keyword: "欧宝赛飞利|opel 赛飞利", status: 0) if Column.find_by(name: "赛飞利", keyword: "欧宝赛飞利|opel 赛飞利").nil?
Column.create!(category_id: category_99.id, name: "威达", en_name: "威达", keyword: "欧宝威达|opel 威达", status: 0) if Column.find_by(name: "威达", keyword: "欧宝威达|opel 威达").nil?
Column.create!(category_id: category_99.id, name: "英速亚", en_name: "英速亚", keyword: "欧宝英速亚|opel 英速亚", status: 0) if Column.find_by(name: "英速亚", keyword: "欧宝英速亚|opel 英速亚").nil?
Column.create!(category_id: category_99.id, name: "雅特A+", en_name: "astra", keyword: "欧宝雅特A+|opel astra", status: 0) if Column.find_by(name: "雅特A+", keyword: "欧宝雅特A+|opel astra").nil?
Column.create!(category_id: category_99.id, name: "雅特GTC", en_name: "雅特GTC", keyword: "欧宝雅特GTC|opel 雅特GTC", status: 0) if Column.find_by(name: "雅特GTC", keyword: "欧宝雅特GTC|opel 雅特GTC").nil?
Column.create!(category_id: category_99.id, name: "雅特TwinTop", en_name: "雅特TwinTop", keyword: "欧宝雅特TwinTop|opel 雅特TwinTop", status: 0) if Column.find_by(name: "雅特TwinTop", keyword: "欧宝雅特TwinTop|opel 雅特TwinTop").nil?
Column.create!(category_id: category_99.id, name: "欧联C1", en_name: "C1", keyword: "欧联C1|欧联 C1", status: 0) if Column.find_by(name: "欧联C1", keyword: "欧联C1|欧联 C1").nil?
Column.create!(category_id: category_99.id, name: "Huayra", en_name: "Huayra", keyword: "帕加尼Huayra|Pagani Huayra", status: 0) if Column.find_by(name: "Huayra", keyword: "帕加尼Huayra|Pagani Huayra").nil?
Column.create!(category_id: category_99.id, name: "Zonda Cinque", en_name: "Zonda Cinque", keyword: "帕加尼Zonda Cinque|Pagani Zonda Cinque", status: 0) if Column.find_by(name: "Zonda Cinque", keyword: "帕加尼Zonda Cinque|Pagani Zonda Cinque").nil?
Column.create!(category_id: category_99.id, name: "皮特比尔特", en_name: "皮特比尔特", keyword: "皮特比尔特卡车皮特比尔特|Peterbilt 皮特比尔特", status: 0) if Column.find_by(name: "皮特比尔特", keyword: "皮特比尔特卡车皮特比尔特|Peterbilt 皮特比尔特").nil?
Column.create!(category_id: category_99.id, name: "CEVENNES", en_name: "CEVENNES", keyword: "PGOCEVENNES|PGO CEVENNES", status: 0) if Column.find_by(name: "CEVENNES", keyword: "PGOCEVENNES|PGO CEVENNES").nil?
Column.create!(category_id: category_99.id, name: "Hemera", en_name: "Hemera", keyword: "PGOHemera|PGO Hemera", status: 0) if Column.find_by(name: "Hemera", keyword: "PGOHemera|PGO Hemera").nil?
Column.create!(category_id: category_99.id, name: "SPEEDSTER Ⅱ", en_name: "SPEEDSTER Ⅱ", keyword: "PGOSPEEDSTER Ⅱ|PGO SPEEDSTER Ⅱ", status: 0) if Column.find_by(name: "SPEEDSTER Ⅱ", keyword: "PGOSPEEDSTER Ⅱ|PGO SPEEDSTER Ⅱ").nil?
Column.create!(category_id: category_99.id, name: "旁蒂克", en_name: "旁蒂克", keyword: "旁蒂克|Pontiac 旁蒂克", status: 0) if Column.find_by(name: "旁蒂克", keyword: "旁蒂克|Pontiac 旁蒂克").nil?
Column.create!(category_id: category_99.id, name: "福瑞迪三厢", en_name: "福瑞迪", keyword: "起亚福瑞迪三厢|kia 福瑞迪", status: 0) if Column.find_by(name: "福瑞迪三厢", keyword: "起亚福瑞迪三厢|kia 福瑞迪").nil?
Column.create!(category_id: category_99.id, name: "起亚K2三厢", en_name: "K2", keyword: "起亚K2三厢|kia K2", status: 0) if Column.find_by(name: "起亚K2三厢", keyword: "起亚K2三厢|kia K2").nil?
Column.create!(category_id: category_99.id, name: "起亚K2两厢", en_name: "K2hatchback", keyword: "起亚K2两厢|kia K2hatchback", status: 0) if Column.find_by(name: "起亚K2两厢", keyword: "起亚K2两厢|kia K2hatchback").nil?
Column.create!(category_id: category_99.id, name: "起亚K3", en_name: "K3", keyword: "起亚K3|kia K3", status: 0) if Column.find_by(name: "起亚K3", keyword: "起亚K3|kia K3").nil?
Column.create!(category_id: category_99.id, name: "起亚K3S", en_name: "K3S", keyword: "起亚K3S|kia K3S", status: 0) if Column.find_by(name: "起亚K3S", keyword: "起亚K3S|kia K3S").nil?
Column.create!(category_id: category_99.id, name: "起亚K4", en_name: "K4", keyword: "起亚K4|kia K4", status: 0) if Column.find_by(name: "起亚K4", keyword: "起亚K4|kia K4").nil?
Column.create!(category_id: category_99.id, name: "起亚K5", en_name: "K5", keyword: "起亚K5|kia K5", status: 0) if Column.find_by(name: "起亚K5", keyword: "起亚K5|kia K5").nil?
Column.create!(category_id: category_99.id, name: "起亚KX3", en_name: "KX3", keyword: "起亚KX3|kia KX3", status: 0) if Column.find_by(name: "起亚KX3", keyword: "起亚KX3|kia KX3").nil?
Column.create!(category_id: category_99.id, name: "起亚KX5", en_name: "KX5", keyword: "起亚KX5|kia KX5", status: 0) if Column.find_by(name: "起亚KX5", keyword: "起亚KX5|kia KX5").nil?
Column.create!(category_id: category_99.id, name: "锐欧", en_name: "RIO", keyword: "起亚锐欧|kia RIO", status: 0) if Column.find_by(name: "锐欧", keyword: "起亚锐欧|kia RIO").nil?
Column.create!(category_id: category_99.id, name: "赛拉图", en_name: "Cerato", keyword: "起亚赛拉图|kia Cerato", status: 0) if Column.find_by(name: "赛拉图", keyword: "起亚赛拉图|kia Cerato").nil?
Column.create!(category_id: category_99.id, name: "狮跑", en_name: "Sportage", keyword: "起亚狮跑|kia Sportage", status: 0) if Column.find_by(name: "狮跑", keyword: "起亚狮跑|kia Sportage").nil?
Column.create!(category_id: category_99.id, name: "秀尔", en_name: "SOUL", keyword: "起亚秀尔|kia SOUL", status: 0) if Column.find_by(name: "秀尔", keyword: "起亚秀尔|kia SOUL").nil?
Column.create!(category_id: category_99.id, name: "智跑", en_name: "Sportage r", keyword: "起亚智跑|kia Sportage r", status: 0) if Column.find_by(name: "智跑", keyword: "起亚智跑|kia Sportage r").nil?
Column.create!(category_id: category_99.id, name: "宝驹", en_name: "宝驹", keyword: "起亚宝驹|kia 宝驹", status: 0) if Column.find_by(name: "宝驹", keyword: "起亚宝驹|kia 宝驹").nil?
Column.create!(category_id: category_99.id, name: "嘉华", en_name: "Carnival", keyword: "起亚嘉华|kia Carnival", status: 0) if Column.find_by(name: "嘉华", keyword: "起亚嘉华|kia Carnival").nil?
Column.create!(category_id: category_99.id, name: "普莱特", en_name: "普莱特", keyword: "起亚普莱特|kia 普莱特", status: 0) if Column.find_by(name: "普莱特", keyword: "起亚普莱特|kia 普莱特").nil?
Column.create!(category_id: category_99.id, name: "千里马", en_name: "千里马", keyword: "起亚千里马|kia 千里马", status: 0) if Column.find_by(name: "千里马", keyword: "起亚千里马|kia 千里马").nil?
Column.create!(category_id: category_99.id, name: "赛拉图欧风", en_name: "赛拉图欧风", keyword: "起亚赛拉图欧风|kia 赛拉图欧风", status: 0) if Column.find_by(name: "赛拉图欧风", keyword: "起亚赛拉图欧风|kia 赛拉图欧风").nil?
Column.create!(category_id: category_99.id, name: "远舰", en_name: "远舰", keyword: "起亚远舰|kia 远舰", status: 0) if Column.find_by(name: "远舰", keyword: "起亚远舰|kia 远舰").nil?
Column.create!(category_id: category_99.id, name: "霸锐", en_name: "Borrego", keyword: "起亚霸锐|kia Borrego", status: 0) if Column.find_by(name: "霸锐", keyword: "起亚霸锐|kia Borrego").nil?
Column.create!(category_id: category_99.id, name: "起亚Cee’d(海外)", en_name: "Cee’d", keyword: "起亚Cee’d(海外)|kia Cee’d", status: 0) if Column.find_by(name: "起亚Cee’d(海外)", keyword: "起亚Cee’d(海外)|kia Cee’d").nil?
Column.create!(category_id: category_99.id, name: "佳乐", en_name: "CARENS", keyword: "起亚佳乐|kia CARENS", status: 0) if Column.find_by(name: "佳乐", keyword: "起亚佳乐|kia CARENS").nil?
Column.create!(category_id: category_99.id, name: "K5（进口）", en_name: "K5", keyword: "起亚K5（进口）|kia K5", status: 0) if Column.find_by(name: "K5（进口）", keyword: "起亚K5（进口）|kia K5").nil?
Column.create!(category_id: category_99.id, name: "起亚K9", en_name: "K9", keyword: "起亚K9|kia K9", status: 0) if Column.find_by(name: "起亚K9", keyword: "起亚K9|kia K9").nil?
Column.create!(category_id: category_99.id, name: "凯尊", en_name: "Cadenza", keyword: "起亚凯尊|kia Cadenza", status: 0) if Column.find_by(name: "凯尊", keyword: "起亚凯尊|kia Cadenza").nil?
Column.create!(category_id: category_99.id, name: "起亚嘉华", en_name: "Carnival", keyword: "起亚嘉华|kia Carnival", status: 0) if Column.find_by(name: "起亚嘉华", keyword: "起亚嘉华|kia Carnival").nil?
Column.create!(category_id: category_99.id, name: "索兰托", en_name: "sorento", keyword: "起亚索兰托|kia sorento", status: 0) if Column.find_by(name: "索兰托", keyword: "起亚索兰托|kia sorento").nil?
Column.create!(category_id: category_99.id, name: "速迈", en_name: "SHUMA", keyword: "起亚速迈|kia SHUMA", status: 0) if Column.find_by(name: "速迈", keyword: "起亚速迈|kia SHUMA").nil?
Column.create!(category_id: category_99.id, name: "起亚VQ", en_name: "VQ", keyword: "起亚VQ|kia VQ", status: 0) if Column.find_by(name: "起亚VQ", keyword: "起亚VQ|kia VQ").nil?
Column.create!(category_id: category_99.id, name: "丽欧", en_name: "丽欧", keyword: "起亚丽欧|kia 丽欧", status: 0) if Column.find_by(name: "丽欧", keyword: "起亚丽欧|kia 丽欧").nil?
Column.create!(category_id: category_99.id, name: "欧迪玛", en_name: "欧迪玛", keyword: "起亚欧迪玛|kia 欧迪玛", status: 0) if Column.find_by(name: "欧迪玛", keyword: "起亚欧迪玛|kia 欧迪玛").nil?
Column.create!(category_id: category_99.id, name: "欧菲莱斯", en_name: "欧菲莱斯", keyword: "起亚欧菲莱斯|kia 欧菲莱斯", status: 0) if Column.find_by(name: "欧菲莱斯", keyword: "起亚欧菲莱斯|kia 欧菲莱斯").nil?
Column.create!(category_id: category_99.id, name: "普莱特", en_name: "普莱特", keyword: "起亚普莱特|kia 普莱特", status: 0) if Column.find_by(name: "普莱特", keyword: "起亚普莱特|kia 普莱特").nil?
Column.create!(category_id: category_99.id, name: "起亚康柯得", en_name: "康柯得", keyword: "起亚康柯得|kia 康柯得", status: 0) if Column.find_by(name: "起亚康柯得", keyword: "起亚康柯得|kia 康柯得").nil?
Column.create!(category_id: category_99.id, name: "苏玛", en_name: "苏玛", keyword: "起亚苏玛|kia 苏玛", status: 0) if Column.find_by(name: "苏玛", keyword: "起亚苏玛|kia 苏玛").nil?
Column.create!(category_id: category_99.id, name: "狮跑", en_name: "狮跑", keyword: "起亚狮跑|kia 狮跑", status: 0) if Column.find_by(name: "狮跑", keyword: "起亚狮跑|kia 狮跑").nil?
Column.create!(category_id: category_99.id, name: "维斯特", en_name: "维斯特", keyword: "起亚维斯特|kia 维斯特", status: 0) if Column.find_by(name: "维斯特", keyword: "起亚维斯特|kia 维斯特").nil?
Column.create!(category_id: category_99.id, name: "奇瑞A3两厢", en_name: "A3hatchback", keyword: "奇瑞A3两厢|奇瑞 A3hatchback", status: 0) if Column.find_by(name: "奇瑞A3两厢", keyword: "奇瑞A3两厢|奇瑞 A3hatchback").nil?
Column.create!(category_id: category_99.id, name: "奇瑞A3三厢", en_name: "A3sedan", keyword: "奇瑞A3三厢|奇瑞 A3sedan", status: 0) if Column.find_by(name: "奇瑞A3三厢", keyword: "奇瑞A3三厢|奇瑞 A3sedan").nil?
Column.create!(category_id: category_99.id, name: "艾瑞泽3", en_name: "艾瑞泽3", keyword: "奇瑞艾瑞泽3|奇瑞 艾瑞泽3", status: 0) if Column.find_by(name: "艾瑞泽3", keyword: "奇瑞艾瑞泽3|奇瑞 艾瑞泽3").nil?
Column.create!(category_id: category_99.id, name: "艾瑞泽5", en_name: "艾瑞泽5", keyword: "奇瑞艾瑞泽5|奇瑞 艾瑞泽5", status: 0) if Column.find_by(name: "艾瑞泽5", keyword: "奇瑞艾瑞泽5|奇瑞 艾瑞泽5").nil?
Column.create!(category_id: category_99.id, name: "艾瑞泽7", en_name: "艾瑞泽7", keyword: "奇瑞艾瑞泽7|奇瑞 艾瑞泽7", status: 0) if Column.find_by(name: "艾瑞泽7", keyword: "奇瑞艾瑞泽7|奇瑞 艾瑞泽7").nil?
Column.create!(category_id: category_99.id, name: "艾瑞泽M7", en_name: "艾瑞泽M7", keyword: "奇瑞艾瑞泽M7|奇瑞 艾瑞泽M7", status: 0) if Column.find_by(name: "艾瑞泽M7", keyword: "奇瑞艾瑞泽M7|奇瑞 艾瑞泽M7").nil?
Column.create!(category_id: category_99.id, name: "风云2两厢", en_name: "风云2hatchback", keyword: "奇瑞风云2两厢|奇瑞 风云2hatchback", status: 0) if Column.find_by(name: "风云2两厢", keyword: "奇瑞风云2两厢|奇瑞 风云2hatchback").nil?
Column.create!(category_id: category_99.id, name: "风云2三厢", en_name: "风云2sedan", keyword: "奇瑞风云2三厢|奇瑞 风云2sedan", status: 0) if Column.find_by(name: "风云2三厢", keyword: "奇瑞风云2三厢|奇瑞 风云2sedan").nil?
Column.create!(category_id: category_99.id, name: "奇瑞QQ", en_name: "QQ", keyword: "奇瑞QQ|奇瑞 QQ", status: 0) if Column.find_by(name: "奇瑞QQ", keyword: "奇瑞QQ|奇瑞 QQ").nil?
Column.create!(category_id: category_99.id, name: "奇瑞QQ3", en_name: "QQ3", keyword: "奇瑞QQ3|奇瑞 QQ3", status: 0) if Column.find_by(name: "奇瑞QQ3", keyword: "奇瑞QQ3|奇瑞 QQ3").nil?
Column.create!(category_id: category_99.id, name: "奇瑞E3", en_name: "奇瑞E3", keyword: "奇瑞E3|奇瑞 奇瑞E3", status: 0) if Column.find_by(name: "奇瑞E3", keyword: "奇瑞E3|奇瑞 奇瑞E3").nil?
Column.create!(category_id: category_99.id, name: "奇瑞E5", en_name: "奇瑞E5", keyword: "奇瑞E5|奇瑞 奇瑞E5", status: 0) if Column.find_by(name: "奇瑞E5", keyword: "奇瑞E5|奇瑞 奇瑞E5").nil?
Column.create!(category_id: category_99.id, name: "奇瑞eQ", en_name: "奇瑞eQ", keyword: "奇瑞eQ|奇瑞 奇瑞eQ", status: 0) if Column.find_by(name: "奇瑞eQ", keyword: "奇瑞eQ|奇瑞 奇瑞eQ").nil?
Column.create!(category_id: category_99.id, name: "奇瑞X1", en_name: "奇瑞X1", keyword: "奇瑞X1|奇瑞 奇瑞X1", status: 0) if Column.find_by(name: "奇瑞X1", keyword: "奇瑞X1|奇瑞 奇瑞X1").nil?
Column.create!(category_id: category_99.id, name: "旗云2", en_name: "旗云2", keyword: "奇瑞旗云2|奇瑞 旗云2", status: 0) if Column.find_by(name: "旗云2", keyword: "奇瑞旗云2|奇瑞 旗云2").nil?
Column.create!(category_id: category_99.id, name: "旗云5", en_name: "旗云5", keyword: "奇瑞旗云5|奇瑞 旗云5", status: 0) if Column.find_by(name: "旗云5", keyword: "奇瑞旗云5|奇瑞 旗云5").nil?
Column.create!(category_id: category_99.id, name: "瑞虎3", en_name: "瑞虎3", keyword: "奇瑞瑞虎3|奇瑞 瑞虎3", status: 0) if Column.find_by(name: "瑞虎3", keyword: "奇瑞瑞虎3|奇瑞 瑞虎3").nil?
Column.create!(category_id: category_99.id, name: "瑞虎5", en_name: "瑞虎5", keyword: "奇瑞瑞虎5|奇瑞 瑞虎5", status: 0) if Column.find_by(name: "瑞虎5", keyword: "奇瑞瑞虎5|奇瑞 瑞虎5").nil?
Column.create!(category_id: category_99.id, name: "奇瑞α5", en_name: "奇瑞α5", keyword: "奇瑞α5|奇瑞 奇瑞α5", status: 0) if Column.find_by(name: "奇瑞α5", keyword: "奇瑞α5|奇瑞 奇瑞α5").nil?
Column.create!(category_id: category_99.id, name: "瑞虎7", en_name: "瑞虎7", keyword: "奇瑞瑞虎7|奇瑞 瑞虎7", status: 0) if Column.find_by(name: "瑞虎7", keyword: "奇瑞瑞虎7|奇瑞 瑞虎7").nil?
Column.create!(category_id: category_99.id, name: "奇瑞A1", en_name: "A1", keyword: "奇瑞A1|奇瑞 A1", status: 0) if Column.find_by(name: "奇瑞A1", keyword: "奇瑞A1|奇瑞 A1").nil?
Column.create!(category_id: category_99.id, name: "东方之子", en_name: "东方之子", keyword: "奇瑞东方之子|奇瑞 东方之子", status: 0) if Column.find_by(name: "东方之子", keyword: "奇瑞东方之子|奇瑞 东方之子").nil?
Column.create!(category_id: category_99.id, name: "东方之子CROSS", en_name: "东方之子CROSS", keyword: "奇瑞东方之子CROSS|奇瑞 东方之子CROSS", status: 0) if Column.find_by(name: "东方之子CROSS", keyword: "奇瑞东方之子CROSS|奇瑞 东方之子CROSS").nil?
Column.create!(category_id: category_99.id, name: "风云", en_name: "风云", keyword: "奇瑞风云|奇瑞 风云", status: 0) if Column.find_by(name: "风云", keyword: "奇瑞风云|奇瑞 风云").nil?
Column.create!(category_id: category_99.id, name: "奇瑞QQ6", en_name: "QQ6", keyword: "奇瑞QQ6|奇瑞 QQ6", status: 0) if Column.find_by(name: "奇瑞QQ6", keyword: "奇瑞QQ6|奇瑞 QQ6").nil?
Column.create!(category_id: category_99.id, name: "奇瑞QQ电动车", en_name: "QQ电动车", keyword: "奇瑞QQ电动车|奇瑞 QQ电动车", status: 0) if Column.find_by(name: "奇瑞QQ电动车", keyword: "奇瑞QQ电动车|奇瑞 QQ电动车").nil?
Column.create!(category_id: category_99.id, name: "奇瑞QQme", en_name: "QQme", keyword: "奇瑞QQme|奇瑞 QQme", status: 0) if Column.find_by(name: "奇瑞QQme", keyword: "奇瑞QQme|奇瑞 QQme").nil?
Column.create!(category_id: category_99.id, name: "奇瑞A5", en_name: "A5", keyword: "奇瑞A5|奇瑞 A5", status: 0) if Column.find_by(name: "奇瑞A5", keyword: "奇瑞A5|奇瑞 A5").nil?
Column.create!(category_id: category_99.id, name: "旗云", en_name: "旗云", keyword: "奇瑞旗云|奇瑞 旗云", status: 0) if Column.find_by(name: "旗云", keyword: "奇瑞旗云|奇瑞 旗云").nil?
Column.create!(category_id: category_99.id, name: "旗云1", en_name: "旗云1", keyword: "奇瑞旗云1|奇瑞 旗云1", status: 0) if Column.find_by(name: "旗云1", keyword: "奇瑞旗云1|奇瑞 旗云1").nil?
Column.create!(category_id: category_99.id, name: "旗云3", en_name: "旗云3", keyword: "奇瑞旗云3|奇瑞 旗云3", status: 0) if Column.find_by(name: "旗云3", keyword: "奇瑞旗云3|奇瑞 旗云3").nil?
Column.create!(category_id: category_99.id, name: "瑞虎", en_name: "瑞虎", keyword: "奇瑞瑞虎|奇瑞 瑞虎", status: 0) if Column.find_by(name: "瑞虎", keyword: "奇瑞瑞虎|奇瑞 瑞虎").nil?
Column.create!(category_id: category_99.id, name: "启辰晨风", en_name: "晨风", keyword: "启辰晨风|启辰 晨风", status: 0) if Column.find_by(name: "启辰晨风", keyword: "启辰晨风|启辰 晨风").nil?
Column.create!(category_id: category_99.id, name: "启辰D50", en_name: "D50", keyword: "启辰D50|启辰 D50", status: 0) if Column.find_by(name: "启辰D50", keyword: "启辰D50|启辰 D50").nil?
Column.create!(category_id: category_99.id, name: "启辰R30", en_name: "R30", keyword: "启辰R30|启辰 R30", status: 0) if Column.find_by(name: "启辰R30", keyword: "启辰R30|启辰 R30").nil?
Column.create!(category_id: category_99.id, name: "启辰R50", en_name: "R50", keyword: "启辰R50|启辰 R50", status: 0) if Column.find_by(name: "启辰R50", keyword: "启辰R50|启辰 R50").nil?
Column.create!(category_id: category_99.id, name: "启辰R50X", en_name: "R50X", keyword: "启辰R50X|启辰 R50X", status: 0) if Column.find_by(name: "启辰R50X", keyword: "启辰R50X|启辰 R50X").nil?
Column.create!(category_id: category_99.id, name: "启辰T70", en_name: "T70", keyword: "启辰T70|启辰 T70", status: 0) if Column.find_by(name: "启辰T70", keyword: "启辰T70|启辰 T70").nil?
Column.create!(category_id: category_99.id, name: "启辰T70X", en_name: "T70X", keyword: "启辰T70X|启辰 T70X", status: 0) if Column.find_by(name: "启辰T70X", keyword: "启辰T70X|启辰 T70X").nil?
Column.create!(category_id: category_99.id, name: "启辰VOW概念车", en_name: "VOW概念车", keyword: "启辰VOW概念车|启辰 VOW概念车", status: 0) if Column.find_by(name: "启辰VOW概念车", keyword: "启辰VOW概念车|启辰 VOW概念车").nil?
Column.create!(category_id: category_99.id, name: "仓栅式运输车", en_name: "仓栅式运输车", keyword: "庆铃仓栅式运输车|庆铃 仓栅式运输车", status: 0) if Column.find_by(name: "仓栅式运输车", keyword: "庆铃仓栅式运输车|庆铃 仓栅式运输车").nil?
Column.create!(category_id: category_99.id, name: "庆铃轻型商用车", en_name: "轻型商用车", keyword: "庆铃轻型商用车|庆铃 轻型商用车", status: 0) if Column.find_by(name: "庆铃轻型商用车", keyword: "庆铃轻型商用车|庆铃 轻型商用车").nil?
Column.create!(category_id: category_99.id, name: "五十铃皮卡", en_name: "五十铃皮卡", keyword: "庆铃五十铃皮卡|庆铃 五十铃皮卡", status: 0) if Column.find_by(name: "五十铃皮卡", keyword: "庆铃五十铃皮卡|庆铃 五十铃皮卡").nil?
Column.create!(category_id: category_99.id, name: "庆铃重型商用车", en_name: "重型商用车", keyword: "庆铃重型商用车|庆铃 重型商用车", status: 0) if Column.find_by(name: "庆铃重型商用车", keyword: "庆铃重型商用车|庆铃 重型商用车").nil?
Column.create!(category_id: category_99.id, name: "庆铃中型商用车", en_name: "中型商用车", keyword: "庆铃中型商用车|庆铃 中型商用车", status: 0) if Column.find_by(name: "庆铃中型商用车", keyword: "庆铃中型商用车|庆铃 中型商用车").nil?
Column.create!(category_id: category_99.id, name: "庆铃多功能车", en_name: "庆铃多功能车", keyword: "庆铃多功能车|庆铃 庆铃多功能车", status: 0) if Column.find_by(name: "庆铃多功能车", keyword: "庆铃多功能车|庆铃 庆铃多功能车").nil?
Column.create!(category_id: category_99.id, name: "乔治·巴顿", en_name: "乔治·巴顿", keyword: "乔治·巴顿|乔治·巴顿 乔治·巴顿", status: 0) if Column.find_by(name: "乔治·巴顿", keyword: "乔治·巴顿|乔治·巴顿 乔治·巴顿").nil?
Column.create!(category_id: category_99.id, name: "楼兰", en_name: "Murano", keyword: "日产楼兰|nissan Murano", status: 0) if Column.find_by(name: "楼兰", keyword: "日产楼兰|nissan Murano").nil?
Column.create!(category_id: category_99.id, name: "蓝鸟", en_name: "Bluebird", keyword: "日产蓝鸟|nissan Bluebird", status: 0) if Column.find_by(name: "蓝鸟", keyword: "日产蓝鸟|nissan Bluebird").nil?
Column.create!(category_id: category_99.id, name: "骊威", en_name: "LIVINA", keyword: "日产骊威|nissan LIVINA", status: 0) if Column.find_by(name: "骊威", keyword: "日产骊威|nissan LIVINA").nil?
Column.create!(category_id: category_99.id, name: "玛驰", en_name: "March", keyword: "日产玛驰|nissan March", status: 0) if Column.find_by(name: "玛驰", keyword: "日产玛驰|nissan March").nil?
Column.create!(category_id: category_99.id, name: "骐达TIIDA", en_name: "TIIDA", keyword: "日产骐达TIIDA|nissan TIIDA", status: 0) if Column.find_by(name: "骐达TIIDA", keyword: "日产骐达TIIDA|nissan TIIDA").nil?
Column.create!(category_id: category_99.id, name: "奇骏", en_name: "X-TRAIL|rogue", keyword: "日产奇骏|nissan X-TRAIL|rogue", status: 0) if Column.find_by(name: "奇骏", keyword: "日产奇骏|nissan X-TRAIL|rogue").nil?
Column.create!(category_id: category_99.id, name: "天籁", en_name: "Teana", keyword: "日产天籁|nissan Teana", status: 0) if Column.find_by(name: "天籁", keyword: "日产天籁|nissan Teana").nil?
Column.create!(category_id: category_99.id, name: "逍客", en_name: "Qashqai", keyword: "日产逍客|nissan Qashqai", status: 0) if Column.find_by(name: "逍客", keyword: "日产逍客|nissan Qashqai").nil?
Column.create!(category_id: category_99.id, name: "轩逸", en_name: "SYLPHY", keyword: "日产轩逸|nissan SYLPHY", status: 0) if Column.find_by(name: "轩逸", keyword: "日产轩逸|nissan SYLPHY").nil?
Column.create!(category_id: category_99.id, name: "阳光", en_name: "sunny", keyword: "日产阳光|nissan sunny", status: 0) if Column.find_by(name: "阳光", keyword: "日产阳光|nissan sunny").nil?
Column.create!(category_id: category_99.id, name: "西玛", en_name: "MAXIMA", keyword: "日产西玛|nissan MAXIMA", status: 0) if Column.find_by(name: "西玛", keyword: "日产西玛|nissan MAXIMA").nil?
Column.create!(category_id: category_99.id, name: "骏逸", en_name: "骏逸", keyword: "日产骏逸|nissan 骏逸", status: 0) if Column.find_by(name: "骏逸", keyword: "日产骏逸|nissan 骏逸").nil?
Column.create!(category_id: category_99.id, name: "颐达", en_name: "颐达", keyword: "日产颐达|nissan 颐达", status: 0) if Column.find_by(name: "颐达", keyword: "日产颐达|nissan 颐达").nil?
Column.create!(category_id: category_99.id, name: "郑州日产D22皮卡", en_name: "D22皮卡", keyword: "郑州日产D22皮卡|nissan D22皮卡", status: 0) if Column.find_by(name: "郑州日产D22皮卡", keyword: "郑州日产D22皮卡|nissan D22皮卡").nil?
Column.create!(category_id: category_99.id, name: "D22厢式车", en_name: "D22厢式车", keyword: "日产D22厢式车|nissan D22厢式车", status: 0) if Column.find_by(name: "D22厢式车", keyword: "日产D22厢式车|nissan D22厢式车").nil?
Column.create!(category_id: category_99.id, name: "凯普斯达", en_name: "凯普斯达", keyword: "日产凯普斯达|nissan 凯普斯达", status: 0) if Column.find_by(name: "凯普斯达", keyword: "日产凯普斯达|nissan 凯普斯达").nil?
Column.create!(category_id: category_99.id, name: "郑州日产NV200", en_name: "NV200", keyword: "郑州日产NV200|nissan NV200", status: 0) if Column.find_by(name: "郑州日产NV200", keyword: "郑州日产NV200|nissan NV200").nil?
Column.create!(category_id: category_99.id, name: "帕拉丁", en_name: "Paladin", keyword: "日产帕拉丁|nissan Paladin", status: 0) if Column.find_by(name: "帕拉丁", keyword: "日产帕拉丁|nissan Paladin").nil?
Column.create!(category_id: category_99.id, name: "帕拉骐", en_name: "帕拉骐", keyword: "日产帕拉骐|nissan 帕拉骐", status: 0) if Column.find_by(name: "帕拉骐", keyword: "日产帕拉骐|nissan 帕拉骐").nil?
Column.create!(category_id: category_99.id, name: "ZN6491系列", en_name: "ZN6491系列", keyword: "日产ZN6491系列|nissan ZN6491系列", status: 0) if Column.find_by(name: "ZN6491系列", keyword: "日产ZN6491系列|nissan ZN6491系列").nil?
Column.create!(category_id: category_99.id, name: "日产370Z", en_name: "370Z", keyword: "日产370Z|nissan 370Z", status: 0) if Column.find_by(name: "日产370Z", keyword: "日产370Z|nissan 370Z").nil?
Column.create!(category_id: category_99.id, name: "碧莲", en_name: "civilian", keyword: "日产碧莲|nissan civilian", status: 0) if Column.find_by(name: "碧莲", keyword: "日产碧莲|nissan civilian").nil?
Column.create!(category_id: category_99.id, name: "贵士", en_name: "Quest", keyword: "日产贵士|nissan Quest", status: 0) if Column.find_by(name: "贵士", keyword: "日产贵士|nissan Quest").nil?
Column.create!(category_id: category_99.id, name: "日产GT-R", en_name: "GT-R", keyword: "日产GT-R|nissan GT-R", status: 0) if Column.find_by(name: "日产GT-R", keyword: "日产GT-R|nissan GT-R").nil?
Column.create!(category_id: category_99.id, name: "途乐", en_name: "patrol", keyword: "日产途乐|nissan patrol", status: 0) if Column.find_by(name: "途乐", keyword: "日产途乐|nissan patrol").nil?
Column.create!(category_id: category_99.id, name: "西玛", en_name: "西玛", keyword: "日产西玛|nissan 西玛", status: 0) if Column.find_by(name: "西玛", keyword: "日产西玛|nissan 西玛").nil?
Column.create!(category_id: category_99.id, name: "日产Juke", en_name: "Juke", keyword: "日产Juke|nissan Juke", status: 0) if Column.find_by(name: "日产Juke", keyword: "日产Juke|nissan Juke").nil?
Column.create!(category_id: category_99.id, name: "聆风", en_name: "leaf", keyword: "日产聆风|nissan leaf", status: 0) if Column.find_by(name: "聆风", keyword: "日产聆风|nissan leaf").nil?
Column.create!(category_id: category_99.id, name: "日产Titan", en_name: "Titan", keyword: "日产Titan|nissan Titan", status: 0) if Column.find_by(name: "日产Titan", keyword: "日产Titan|nissan Titan").nil?
Column.create!(category_id: category_99.id, name: "日产350Z", en_name: "350Z", keyword: "日产350Z|nissan 350Z", status: 0) if Column.find_by(name: "日产350Z", keyword: "日产350Z|nissan 350Z").nil?
Column.create!(category_id: category_99.id, name: "公爵", en_name: "Cedric", keyword: "日产公爵|nissan Cedric", status: 0) if Column.find_by(name: "公爵", keyword: "日产公爵|nissan Cedric").nil?
Column.create!(category_id: category_99.id, name: "蓝鸟", en_name: "蓝鸟", keyword: "日产蓝鸟|nissan 蓝鸟", status: 0) if Column.find_by(name: "蓝鸟", keyword: "日产蓝鸟|nissan 蓝鸟").nil?
Column.create!(category_id: category_99.id, name: "旗舰", en_name: "旗舰", keyword: "日产旗舰|nissan 旗舰", status: 0) if Column.find_by(name: "旗舰", keyword: "日产旗舰|nissan 旗舰").nil?
Column.create!(category_id: category_99.id, name: "日产风度", en_name: "风度", keyword: "日产风度|nissan 风度", status: 0) if Column.find_by(name: "日产风度", keyword: "日产风度|nissan 风度").nil?
Column.create!(category_id: category_99.id, name: "日产风雅", en_name: "风雅", keyword: "日产风雅|nissan 风雅", status: 0) if Column.find_by(name: "日产风雅", keyword: "日产风雅|nissan 风雅").nil?
Column.create!(category_id: category_99.id, name: "日产美仑奴", en_name: "美仑奴", keyword: "日产美仑奴|nissan 美仑奴", status: 0) if Column.find_by(name: "日产美仑奴", keyword: "日产美仑奴|nissan 美仑奴").nil?
Column.create!(category_id: category_99.id, name: "日产奇骏", en_name: "奇骏", keyword: "日产奇骏|nissan 奇骏", status: 0) if Column.find_by(name: "日产奇骏", keyword: "日产奇骏|nissan 奇骏").nil?
Column.create!(category_id: category_99.id, name: "无限Q45", en_name: "无限Q45", keyword: "日产无限Q45|nissan 无限Q45", status: 0) if Column.find_by(name: "无限Q45", keyword: "日产无限Q45|nissan 无限Q45").nil?
Column.create!(category_id: category_99.id, name: "阳光", en_name: "阳光", keyword: "日产阳光|nissan 阳光", status: 0) if Column.find_by(name: "阳光", keyword: "日产阳光|nissan 阳光").nil?
Column.create!(category_id: category_99.id, name: "荣威350", en_name: "350", keyword: "荣威350|roewe 350", status: 0) if Column.find_by(name: "荣威350", keyword: "荣威350|roewe 350").nil?
Column.create!(category_id: category_99.id, name: "荣威360", en_name: "360", keyword: "荣威360|roewe 360", status: 0) if Column.find_by(name: "荣威360", keyword: "荣威360|roewe 360").nil?
Column.create!(category_id: category_99.id, name: "荣威550", en_name: "550", keyword: "荣威550|roewe 550", status: 0) if Column.find_by(name: "荣威550", keyword: "荣威550|roewe 550").nil?
Column.create!(category_id: category_99.id, name: "荣威750", en_name: "750", keyword: "荣威750|roewe 750", status: 0) if Column.find_by(name: "荣威750", keyword: "荣威750|roewe 750").nil?
Column.create!(category_id: category_99.id, name: "荣威950", en_name: "950", keyword: "荣威950|roewe 950", status: 0) if Column.find_by(name: "荣威950", keyword: "荣威950|roewe 950").nil?
Column.create!(category_id: category_99.id, name: "荣威e50", en_name: "e50", keyword: "荣威e50|roewe e50", status: 0) if Column.find_by(name: "荣威e50", keyword: "荣威e50|roewe e50").nil?
Column.create!(category_id: category_99.id, name: "荣威e550", en_name: "e550", keyword: "荣威e550|roewe e550", status: 0) if Column.find_by(name: "荣威e550", keyword: "荣威e550|roewe e550").nil?
Column.create!(category_id: category_99.id, name: "荣威W5", en_name: "W5", keyword: "荣威W5|roewe W5", status: 0) if Column.find_by(name: "荣威W5", keyword: "荣威W5|roewe W5").nil?
Column.create!(category_id: category_99.id, name: "荣威e950", en_name: "e950", keyword: "荣威e950|roewe e950", status: 0) if Column.find_by(name: "荣威e950", keyword: "荣威e950|roewe e950").nil?
Column.create!(category_id: category_99.id, name: "瑞麒G3", en_name: "G3", keyword: "瑞麒G3|瑞麒 G3", status: 0) if Column.find_by(name: "瑞麒G3", keyword: "瑞麒G3|瑞麒 G3").nil?
Column.create!(category_id: category_99.id, name: "瑞麒G5", en_name: "G5", keyword: "瑞麒G5|瑞麒 G5", status: 0) if Column.find_by(name: "瑞麒G5", keyword: "瑞麒G5|瑞麒 G5").nil?
Column.create!(category_id: category_99.id, name: "瑞麒G6", en_name: "G6", keyword: "瑞麒G6|瑞麒 G6", status: 0) if Column.find_by(name: "瑞麒G6", keyword: "瑞麒G6|瑞麒 G6").nil?
Column.create!(category_id: category_99.id, name: "瑞麒M1", en_name: "M1", keyword: "瑞麒M1|瑞麒 M1", status: 0) if Column.find_by(name: "瑞麒M1", keyword: "瑞麒M1|瑞麒 M1").nil?
Column.create!(category_id: category_99.id, name: "瑞麒M5", en_name: "M5", keyword: "瑞麒M5|瑞麒 M5", status: 0) if Column.find_by(name: "瑞麒M5", keyword: "瑞麒M5|瑞麒 M5").nil?
Column.create!(category_id: category_99.id, name: "瑞麟电动车", en_name: "瑞麟电动车", keyword: "瑞麒瑞麟电动车|瑞麒 瑞麟电动车", status: 0) if Column.find_by(name: "瑞麟电动车", keyword: "瑞麒瑞麟电动车|瑞麒 瑞麟电动车").nil?
Column.create!(category_id: category_99.id, name: "瑞麒2", en_name: "瑞麒2", keyword: "瑞麒2|瑞麒 瑞麒2", status: 0) if Column.find_by(name: "瑞麒2", keyword: "瑞麒2|瑞麒 瑞麒2").nil?
Column.create!(category_id: category_99.id, name: "晶锐", en_name: "FABIA", keyword: "斯柯达晶锐|skoda FABIA", status: 0) if Column.find_by(name: "晶锐", keyword: "斯柯达晶锐|skoda FABIA").nil?
Column.create!(category_id: category_99.id, name: "明锐", en_name: "OCTAVIA", keyword: "斯柯达明锐|skoda OCTAVIA", status: 0) if Column.find_by(name: "明锐", keyword: "斯柯达明锐|skoda OCTAVIA").nil?
Column.create!(category_id: category_99.id, name: "速派", en_name: "superb", keyword: "斯柯达速派|skoda superb", status: 0) if Column.find_by(name: "速派", keyword: "斯柯达速派|skoda superb").nil?
Column.create!(category_id: category_99.id, name: "昕动", en_name: "RAPID SPACEBACK", keyword: "斯柯达昕动|skoda RAPID SPACEBACK", status: 0) if Column.find_by(name: "昕动", keyword: "斯柯达昕动|skoda RAPID SPACEBACK").nil?
Column.create!(category_id: category_99.id, name: "昕锐", en_name: "RAPID SPACEBACK", keyword: "斯柯达昕锐|skoda RAPID SPACEBACK", status: 0) if Column.find_by(name: "昕锐", keyword: "斯柯达昕锐|skoda RAPID SPACEBACK").nil?
Column.create!(category_id: category_99.id, name: "Yeti", en_name: "Yeti", keyword: "斯柯达Yeti|skoda Yeti", status: 0) if Column.find_by(name: "Yeti", keyword: "斯柯达Yeti|skoda Yeti").nil?
Column.create!(category_id: category_99.id, name: "昊锐", en_name: "昊锐", keyword: "斯柯达昊锐|skoda 昊锐", status: 0) if Column.find_by(name: "昊锐", keyword: "斯柯达昊锐|skoda 昊锐").nil?
Column.create!(category_id: category_99.id, name: "明锐RS", en_name: "OCTAVIA rs", keyword: "斯柯达明锐RS|skoda OCTAVIA rs", status: 0) if Column.find_by(name: "明锐RS", keyword: "斯柯达明锐RS|skoda OCTAVIA rs").nil?
Column.create!(category_id: category_99.id, name: "明锐Combi", en_name: "明锐Combi", keyword: "斯柯达明锐Combi|skoda 明锐Combi", status: 0) if Column.find_by(name: "明锐Combi", keyword: "斯柯达明锐Combi|skoda 明锐Combi").nil?
Column.create!(category_id: category_99.id, name: "速尊", en_name: "Superb Derivative", keyword: "斯柯达速尊|skoda Superb Derivative", status: 0) if Column.find_by(name: "速尊", keyword: "斯柯达速尊|skoda Superb Derivative").nil?
Column.create!(category_id: category_99.id, name: "Yeti", en_name: "Yeti", keyword: "斯柯达Yeti|skoda Yeti", status: 0) if Column.find_by(name: "Yeti", keyword: "斯柯达Yeti|skoda Yeti").nil?
Column.create!(category_id: category_99.id, name: "明锐Scout", en_name: "明锐Scout", keyword: "斯柯达明锐Scout|skoda 明锐Scout", status: 0) if Column.find_by(name: "明锐Scout", keyword: "斯柯达明锐Scout|skoda 明锐Scout").nil?
Column.create!(category_id: category_99.id, name: "法比亚", en_name: "法比亚", keyword: "斯柯达法比亚|skoda 法比亚", status: 0) if Column.find_by(name: "法比亚", keyword: "斯柯达法比亚|skoda 法比亚").nil?
Column.create!(category_id: category_99.id, name: "昊锐", en_name: "昊锐", keyword: "斯柯达昊锐|skoda 昊锐", status: 0) if Column.find_by(name: "昊锐", keyword: "斯柯达昊锐|skoda 昊锐").nil?
Column.create!(category_id: category_99.id, name: "欧雅", en_name: "欧雅", keyword: "斯柯达欧雅|skoda 欧雅", status: 0) if Column.find_by(name: "欧雅", keyword: "斯柯达欧雅|skoda 欧雅").nil?
Column.create!(category_id: category_99.id, name: "北奔欧蓝德", en_name: "北奔欧蓝德", keyword: "三菱北奔欧蓝德|mitsubishi 北奔欧蓝德", status: 0) if Column.find_by(name: "北奔欧蓝德", keyword: "三菱北奔欧蓝德|mitsubishi 北奔欧蓝德").nil?
Column.create!(category_id: category_99.id, name: "帕杰罗速跑", en_name: "帕杰罗速跑", keyword: "三菱帕杰罗速跑|mitsubishi 帕杰罗速跑", status: 0) if Column.find_by(name: "帕杰罗速跑", keyword: "三菱帕杰罗速跑|mitsubishi 帕杰罗速跑").nil?
Column.create!(category_id: category_99.id, name: "风迪思", en_name: "LANCER FORTIS", keyword: "三菱风迪思|mitsubishi LANCER FORTIS", status: 0) if Column.find_by(name: "风迪思", keyword: "三菱风迪思|mitsubishi LANCER FORTIS").nil?
Column.create!(category_id: category_99.id, name: "戈蓝", en_name: "Galant", keyword: "三菱戈蓝|mitsubishi Galant", status: 0) if Column.find_by(name: "戈蓝", keyword: "三菱戈蓝|mitsubishi Galant").nil?
Column.create!(category_id: category_99.id, name: "君阁", en_name: "ZINGER", keyword: "三菱君阁|mitsubishi ZINGER", status: 0) if Column.find_by(name: "君阁", keyword: "三菱君阁|mitsubishi ZINGER").nil?
Column.create!(category_id: category_99.id, name: "蓝瑟", en_name: "LANCER", keyword: "三菱蓝瑟|mitsubishi LANCER", status: 0) if Column.find_by(name: "蓝瑟", keyword: "三菱蓝瑟|mitsubishi LANCER").nil?
Column.create!(category_id: category_99.id, name: "翼神", en_name: "LANCER ex", keyword: "三菱翼神|mitsubishi LANCER ex", status: 0) if Column.find_by(name: "翼神", keyword: "三菱翼神|mitsubishi LANCER ex").nil?
Column.create!(category_id: category_99.id, name: "菱绅", en_name: "Soveran", keyword: "三菱菱绅|mitsubishi Soveran", status: 0) if Column.find_by(name: "菱绅", keyword: "三菱菱绅|mitsubishi Soveran").nil?
Column.create!(category_id: category_99.id, name: "帕杰罗·劲畅", en_name: "pajero sport", keyword: "三菱帕杰罗·劲畅|mitsubishi pajero sport", status: 0) if Column.find_by(name: "帕杰罗·劲畅", keyword: "三菱帕杰罗·劲畅|mitsubishi pajero sport").nil?
Column.create!(category_id: category_99.id, name: "新劲炫ASX", en_name: "outlander sport", keyword: "三菱新劲炫ASX|mitsubishi outlander sport", status: 0) if Column.find_by(name: "新劲炫ASX", keyword: "三菱新劲炫ASX|mitsubishi outlander sport").nil?
Column.create!(category_id: category_99.id, name: "帕杰罗", en_name: "pajero", keyword: "三菱帕杰罗|mitsubishi pajero", status: 0) if Column.find_by(name: "帕杰罗", keyword: "三菱帕杰罗|mitsubishi pajero").nil?
Column.create!(category_id: category_99.id, name: "蓝瑟 翼豪陆神", en_name: "evo", keyword: "三菱蓝瑟 翼豪陆神|mitsubishi evo", status: 0) if Column.find_by(name: "蓝瑟 翼豪陆神", keyword: "三菱蓝瑟 翼豪陆神|mitsubishi evo").nil?
Column.create!(category_id: category_99.id, name: "欧蓝德（进口）", en_name: "欧蓝德", keyword: "三菱欧蓝德（进口）|mitsubishi 欧蓝德", status: 0) if Column.find_by(name: "欧蓝德（进口）", keyword: "三菱欧蓝德（进口）|mitsubishi 欧蓝德").nil?
Column.create!(category_id: category_99.id, name: "帕杰罗", en_name: "帕杰罗", keyword: "三菱帕杰罗|mitsubishi 帕杰罗", status: 0) if Column.find_by(name: "帕杰罗", keyword: "三菱帕杰罗|mitsubishi 帕杰罗").nil?
Column.create!(category_id: category_99.id, name: "帕杰罗劲畅", en_name: "帕杰罗劲畅", keyword: "三菱帕杰罗劲畅|mitsubishi 帕杰罗劲畅", status: 0) if Column.find_by(name: "帕杰罗劲畅", keyword: "三菱帕杰罗劲畅|mitsubishi 帕杰罗劲畅").nil?
Column.create!(category_id: category_99.id, name: "三菱Attrage", en_name: "Attrage", keyword: "三菱Attrage|mitsubishi Attrage", status: 0) if Column.find_by(name: "三菱Attrage", keyword: "三菱Attrage|mitsubishi Attrage").nil?
Column.create!(category_id: category_99.id, name: "戈蓝", en_name: "戈蓝", keyword: "三菱戈蓝|mitsubishi 戈蓝", status: 0) if Column.find_by(name: "戈蓝", keyword: "三菱戈蓝|mitsubishi 戈蓝").nil?
Column.create!(category_id: category_99.id, name: "格蓝迪", en_name: "Grandis", keyword: "三菱格蓝迪|mitsubishi Grandis", status: 0) if Column.find_by(name: "格蓝迪", keyword: "三菱格蓝迪|mitsubishi Grandis").nil?
Column.create!(category_id: category_99.id, name: "劲炫", en_name: "劲炫", keyword: "三菱劲炫|mitsubishi 劲炫", status: 0) if Column.find_by(name: "劲炫", keyword: "三菱劲炫|mitsubishi 劲炫").nil?
Column.create!(category_id: category_99.id, name: "蓝瑟", en_name: "蓝瑟", keyword: "三菱蓝瑟|mitsubishi 蓝瑟", status: 0) if Column.find_by(name: "蓝瑟", keyword: "三菱蓝瑟|mitsubishi 蓝瑟").nil?
Column.create!(category_id: category_99.id, name: "蓝瑟 EX", en_name: "蓝瑟EX", keyword: "三菱蓝瑟 EX|mitsubishi 蓝瑟EX", status: 0) if Column.find_by(name: "蓝瑟 EX", keyword: "三菱蓝瑟 EX|mitsubishi 蓝瑟EX").nil?
Column.create!(category_id: category_99.id, name: "伊柯丽斯", en_name: "伊柯丽斯", keyword: "三菱伊柯丽斯|mitsubishi 伊柯丽斯", status: 0) if Column.find_by(name: "伊柯丽斯", keyword: "三菱伊柯丽斯|mitsubishi 伊柯丽斯").nil?
Column.create!(category_id: category_99.id, name: "傲虎", en_name: "outback", keyword: "斯巴鲁傲虎|subaru outback", status: 0) if Column.find_by(name: "傲虎", keyword: "斯巴鲁傲虎|subaru outback").nil?
Column.create!(category_id: category_99.id, name: "驰鹏", en_name: "Tribeca", keyword: "斯巴鲁驰鹏|subaru Tribeca", status: 0) if Column.find_by(name: "驰鹏", keyword: "斯巴鲁驰鹏|subaru Tribeca").nil?
Column.create!(category_id: category_99.id, name: "力狮", en_name: "Legacy", keyword: "斯巴鲁力狮|subaru Legacy", status: 0) if Column.find_by(name: "力狮", keyword: "斯巴鲁力狮|subaru Legacy").nil?
Column.create!(category_id: category_99.id, name: "斯巴鲁WRX", en_name: "WRX", keyword: "斯巴鲁WRX|subaru WRX", status: 0) if Column.find_by(name: "斯巴鲁WRX", keyword: "斯巴鲁WRX|subaru WRX").nil?
Column.create!(category_id: category_99.id, name: "斯巴鲁BRZ", en_name: "BRZ", keyword: "斯巴鲁BRZ|subaru BRZ", status: 0) if Column.find_by(name: "斯巴鲁BRZ", keyword: "斯巴鲁BRZ|subaru BRZ").nil?
Column.create!(category_id: category_99.id, name: "斯巴鲁XV", en_name: "XV", keyword: "斯巴鲁XV|subaru XV", status: 0) if Column.find_by(name: "斯巴鲁XV", keyword: "斯巴鲁XV|subaru XV").nil?
Column.create!(category_id: category_99.id, name: "森林人", en_name: "forester", keyword: "斯巴鲁森林人|subaru forester", status: 0) if Column.find_by(name: "森林人", keyword: "斯巴鲁森林人|subaru forester").nil?
Column.create!(category_id: category_99.id, name: "斯巴鲁Levorg（进口）", en_name: "Levorg", keyword: "斯巴鲁Levorg（进口）|subaru Levorg", status: 0) if Column.find_by(name: "斯巴鲁Levorg（进口）", keyword: "斯巴鲁Levorg（进口）|subaru Levorg").nil?
Column.create!(category_id: category_99.id, name: "翼豹", en_name: "impreza", keyword: "斯巴鲁翼豹|subaru impreza", status: 0) if Column.find_by(name: "翼豹", keyword: "斯巴鲁翼豹|subaru impreza").nil?
Column.create!(category_id: category_99.id, name: "上汽大通MAXUS EV80", en_name: "EV80", keyword: "上汽大通MAXUS EV80|上汽大通 EV80", status: 0) if Column.find_by(name: "上汽大通MAXUS EV80", keyword: "上汽大通MAXUS EV80|上汽大通 EV80").nil?
Column.create!(category_id: category_99.id, name: "上汽大通MAXUS G10", en_name: "G10", keyword: "上汽大通MAXUS G10|上汽大通 G10", status: 0) if Column.find_by(name: "上汽大通MAXUS G10", keyword: "上汽大通MAXUS G10|上汽大通 G10").nil?
Column.create!(category_id: category_99.id, name: "上汽大通MAXUS V80", en_name: "V80", keyword: "上汽大通MAXUS V80|上汽大通 V80", status: 0) if Column.find_by(name: "上汽大通MAXUS V80", keyword: "上汽大通MAXUS V80|上汽大通 V80").nil?
Column.create!(category_id: category_99.id, name: "上汽大通MAXUS V80改装车", en_name: "V80改装车", keyword: "上汽大通MAXUS V80改装车|上汽大通 V80改装车", status: 0) if Column.find_by(name: "上汽大通MAXUS V80改装车", keyword: "上汽大通MAXUS V80改装车|上汽大通 V80改装车").nil?
Column.create!(category_id: category_99.id, name: "爱腾", en_name: "Actyon", keyword: "双龙爱腾|ssangyong Actyon", status: 0) if Column.find_by(name: "爱腾", keyword: "双龙爱腾|ssangyong Actyon").nil?
Column.create!(category_id: category_99.id, name: "蒂维拉", en_name: "蒂维拉", keyword: "双龙蒂维拉|ssangyong 蒂维拉", status: 0) if Column.find_by(name: "蒂维拉", keyword: "双龙蒂维拉|ssangyong 蒂维拉").nil?
Column.create!(category_id: category_99.id, name: "柯兰多", en_name: "柯兰多", keyword: "双龙柯兰多|ssangyong 柯兰多", status: 0) if Column.find_by(name: "柯兰多", keyword: "双龙柯兰多|ssangyong 柯兰多").nil?
Column.create!(category_id: category_99.id, name: "路帝", en_name: "路帝", keyword: "双龙路帝|ssangyong 路帝", status: 0) if Column.find_by(name: "路帝", keyword: "双龙路帝|ssangyong 路帝").nil?
Column.create!(category_id: category_99.id, name: "雷斯特II", en_name: "雷斯特II", keyword: "双龙雷斯特II|ssangyong 雷斯特II", status: 0) if Column.find_by(name: "雷斯特II", keyword: "双龙雷斯特II|ssangyong 雷斯特II").nil?
Column.create!(category_id: category_99.id, name: "雷斯特W", en_name: "雷斯特W", keyword: "双龙雷斯特W|ssangyong 雷斯特W", status: 0) if Column.find_by(name: "雷斯特W", keyword: "双龙雷斯特W|ssangyong 雷斯特W").nil?
Column.create!(category_id: category_99.id, name: "享御", en_name: "享御", keyword: "双龙享御|ssangyong 享御", status: 0) if Column.find_by(name: "享御", keyword: "双龙享御|ssangyong 享御").nil?
Column.create!(category_id: category_99.id, name: "主席", en_name: "主席", keyword: "双龙主席|ssangyong 主席", status: 0) if Column.find_by(name: "主席", keyword: "双龙主席|ssangyong 主席").nil?
Column.create!(category_id: category_99.id, name: "雷斯特", en_name: "雷斯特", keyword: "双龙雷斯特|ssangyong 雷斯特", status: 0) if Column.find_by(name: "雷斯特", keyword: "双龙雷斯特|ssangyong 雷斯特").nil?
Column.create!(category_id: category_99.id, name: "MB100", en_name: "MB100", keyword: "双龙MB100|ssangyong MB100", status: 0) if Column.find_by(name: "MB100", keyword: "双龙MB100|ssangyong MB100").nil?
Column.create!(category_id: category_99.id, name: "fortwo", en_name: "fortwo", keyword: "smartfortwo|smart fortwo", status: 0) if Column.find_by(name: "fortwo", keyword: "smartfortwo|smart fortwo").nil?
Column.create!(category_id: category_99.id, name: "fortwo 电动", en_name: "fortwo 电动", keyword: "smartfortwo 电动|smart fortwo 电动", status: 0) if Column.find_by(name: "fortwo 电动", keyword: "smartfortwo 电动|smart fortwo 电动").nil?
Column.create!(category_id: category_99.id, name: "forfour", en_name: "forfour", keyword: "smartforfour|smart forfour", status: 0) if Column.find_by(name: "forfour", keyword: "smartforfour|smart forfour").nil?
Column.create!(category_id: category_99.id, name: "精灵纯洁", en_name: "纯洁", keyword: "smart精灵纯洁|smart 纯洁", status: 0) if Column.find_by(name: "精灵纯洁", keyword: "smart精灵纯洁|smart 纯洁").nil?
Column.create!(category_id: category_99.id, name: "精灵节奏", en_name: "节奏", keyword: "smart精灵节奏|smart 节奏", status: 0) if Column.find_by(name: "精灵节奏", keyword: "smart精灵节奏|smart 节奏").nil?
Column.create!(category_id: category_99.id, name: "GMC商务之星", en_name: "GMC商务之星", keyword: "山姆GMC商务之星|山姆 GMC商务之星", status: 0) if Column.find_by(name: "GMC商务之星", keyword: "山姆GMC商务之星|山姆 GMC商务之星").nil?
Column.create!(category_id: category_99.id, name: "凯迪拉克总统一号", en_name: "凯迪拉克总统一号", keyword: "山姆凯迪拉克总统一号|山姆 凯迪拉克总统一号", status: 0) if Column.find_by(name: "凯迪拉克总统一号", keyword: "山姆凯迪拉克总统一号|山姆 凯迪拉克总统一号").nil?
Column.create!(category_id: category_99.id, name: "林肯领袖一号", en_name: "林肯领袖一号", keyword: "山姆林肯领袖一号|山姆 林肯领袖一号", status: 0) if Column.find_by(name: "林肯领袖一号", keyword: "山姆林肯领袖一号|山姆 林肯领袖一号").nil?
Column.create!(category_id: category_99.id, name: "揽胜行政版", en_name: "揽胜行政版", keyword: "STARTECH揽胜行政版|STARTECH 揽胜行政版", status: 0) if Column.find_by(name: "揽胜行政版", keyword: "STARTECH揽胜行政版|STARTECH 揽胜行政版").nil?
Column.create!(category_id: category_99.id, name: "揽胜行政加长版", en_name: "揽胜行政加长版", keyword: "STARTECH揽胜行政加长版|STARTECH 揽胜行政加长版", status: 0) if Column.find_by(name: "揽胜行政加长版", keyword: "STARTECH揽胜行政加长版|STARTECH 揽胜行政加长版").nil?
Column.create!(category_id: category_99.id, name: "揽胜运动", en_name: "揽胜运动", keyword: "STARTECH揽胜运动|STARTECH 揽胜运动", status: 0) if Column.find_by(name: "揽胜运动", keyword: "STARTECH揽胜运动|STARTECH 揽胜运动").nil?
Column.create!(category_id: category_99.id, name: "卫士", en_name: "卫士", keyword: "STARTECH卫士|STARTECH 卫士", status: 0) if Column.find_by(name: "卫士", keyword: "STARTECH卫士|STARTECH 卫士").nil?
Column.create!(category_id: category_99.id, name: "赛麟科迈罗", en_name: "camaro", keyword: "赛麟SALEEN赛麟科迈罗|SALEEN camaro", status: 0) if Column.find_by(name: "赛麟科迈罗", keyword: "赛麟SALEEN赛麟科迈罗|SALEEN camaro").nil?
Column.create!(category_id: category_99.id, name: "赛麟S7", en_name: "S7", keyword: "赛麟SALEEN赛麟S7|SALEEN S7", status: 0) if Column.find_by(name: "赛麟S7", keyword: "赛麟SALEEN赛麟S7|SALEEN S7").nil?
Column.create!(category_id: category_99.id, name: "赛麟挑战者", en_name: "challenger", keyword: "赛麟SALEEN赛麟挑战者|SALEEN challenger", status: 0) if Column.find_by(name: "赛麟挑战者", keyword: "赛麟SALEEN赛麟挑战者|SALEEN challenger").nil?
Column.create!(category_id: category_99.id, name: "赛麟野马", en_name: "mustang", keyword: "赛麟SALEEN赛麟野马|SALEEN mustang", status: 0) if Column.find_by(name: "赛麟野马", keyword: "赛麟SALEEN赛麟野马|SALEEN mustang").nil?
Column.create!(category_id: category_99.id, name: "赛麟领道300S", en_name: "300s", keyword: "赛麟SALEEN赛麟领道300S|SALEEN 300s", status: 0) if Column.find_by(name: "赛麟领道300S", keyword: "赛麟SALEEN赛麟领道300S|SALEEN 300s").nil?
Column.create!(category_id: category_99.id, name: "赛麟领道430S", en_name: "430s", keyword: "赛麟SALEEN赛麟领道430S|SALEEN 430s", status: 0) if Column.find_by(name: "赛麟领道430S", keyword: "赛麟SALEEN赛麟领道430S|SALEEN 430s").nil?
Column.create!(category_id: category_99.id, name: "世爵C8(", en_name: "C8", keyword: "世爵C8(|世爵 C8", status: 0) if Column.find_by(name: "世爵C8(", keyword: "世爵C8(|世爵 C8").nil?
Column.create!(category_id: category_99.id, name: "来宝S-RV", en_name: "来宝S-RV", keyword: "双环来宝S-RV|双环 来宝S-RV", status: 0) if Column.find_by(name: "来宝S-RV", keyword: "双环来宝S-RV|双环 来宝S-RV").nil?
Column.create!(category_id: category_99.id, name: "来旺", en_name: "来旺", keyword: "双环来旺|双环 来旺", status: 0) if Column.find_by(name: "来旺", keyword: "双环来旺|双环 来旺").nil?
Column.create!(category_id: category_99.id, name: "双环SCEO", en_name: "SCEO", keyword: "双环SCEO|双环 SCEO", status: 0) if Column.find_by(name: "双环SCEO", keyword: "双环SCEO|双环 SCEO").nil?
Column.create!(category_id: category_99.id, name: "小贵族", en_name: "小贵族", keyword: "双环小贵族|双环 小贵族", status: 0) if Column.find_by(name: "小贵族", keyword: "双环小贵族|双环 小贵族").nil?
Column.create!(category_id: category_99.id, name: "萨博9000CD", en_name: "9000CD", keyword: "萨博9000CD|saab 9000CD", status: 0) if Column.find_by(name: "萨博9000CD", keyword: "萨博9000CD|saab 9000CD").nil?
Column.create!(category_id: category_99.id, name: "萨博9-3", en_name: "9-3", keyword: "萨博9-3|saab 9-3", status: 0) if Column.find_by(name: "萨博9-3", keyword: "萨博9-3|saab 9-3").nil?
Column.create!(category_id: category_99.id, name: "萨博9-5", en_name: "9-5", keyword: "萨博9-5|saab 9-5", status: 0) if Column.find_by(name: "萨博9-5", keyword: "萨博9-5|saab 9-5").nil?
Column.create!(category_id: category_99.id, name: "电牛一号", en_name: "电牛一号", keyword: "陕汽通家电牛一号|陕汽通家 电牛一号", status: 0) if Column.find_by(name: "电牛一号", keyword: "陕汽通家电牛一号|陕汽通家 电牛一号").nil?
Column.create!(category_id: category_99.id, name: "福家", en_name: "福家", keyword: "陕汽通家福家|陕汽通家 福家", status: 0) if Column.find_by(name: "福家", keyword: "陕汽通家福家|陕汽通家 福家").nil?
Column.create!(category_id: category_99.id, name: "龙锐", en_name: "龙锐", keyword: "陕汽通家龙锐|陕汽通家 龙锐", status: 0) if Column.find_by(name: "龙锐", keyword: "陕汽通家龙锐|陕汽通家 龙锐").nil?
Column.create!(category_id: category_99.id, name: "三星道奇(捷龙)", en_name: "道奇捷龙", keyword: "三星道奇(捷龙)|三星 道奇捷龙", status: 0) if Column.find_by(name: "三星道奇(捷龙)", keyword: "三星道奇(捷龙)|三星 道奇捷龙").nil?
Column.create!(category_id: category_99.id, name: "唯雅诺", en_name: "唯雅诺", keyword: "上喆汽车唯雅诺|上雌惮S 唯雅诺", status: 0) if Column.find_by(name: "唯雅诺", keyword: "上喆汽车唯雅诺|上雌惮S 唯雅诺").nil?
Column.create!(category_id: category_99.id, name: "申驰旅居汽车", en_name: "申驰旅居汽车", keyword: "顺旅申驰旅居汽车|顺旅 申驰旅居汽车", status: 0) if Column.find_by(name: "申驰旅居汽车", keyword: "顺旅申驰旅居汽车|顺旅 申驰旅居汽车").nil?
Column.create!(category_id: category_99.id, name: "MODEL S", en_name: "MODEL S", keyword: "特斯拉MODEL S|tesla MODEL S", status: 0) if Column.find_by(name: "MODEL S", keyword: "特斯拉MODEL S|tesla MODEL S").nil?
Column.create!(category_id: category_99.id, name: "MODEL X", en_name: "MODEL X", keyword: "特斯拉MODEL X|tesla MODEL X", status: 0) if Column.find_by(name: "MODEL X", keyword: "特斯拉MODEL X|tesla MODEL X").nil?
Column.create!(category_id: category_99.id, name: "MODEL 3", en_name: "MODEL 3", keyword: "特斯拉MODEL 3|tesla MODEL 3", status: 0) if Column.find_by(name: "MODEL 3", keyword: "特斯拉MODEL 3|tesla MODEL 3").nil?
Column.create!(category_id: category_99.id, name: "泰卡特T1", en_name: "T1", keyword: "泰卡特T1|泰卡特 T1", status: 0) if Column.find_by(name: "泰卡特T1", keyword: "泰卡特T1|泰卡特 T1").nil?
Column.create!(category_id: category_99.id, name: "泰卡特T2", en_name: "T2", keyword: "泰卡特T2|泰卡特 T2", status: 0) if Column.find_by(name: "泰卡特T2", keyword: "泰卡特T2|泰卡特 T2").nil?
Column.create!(category_id: category_99.id, name: "泰卡特T3", en_name: "T3", keyword: "泰卡特T3|泰卡特 T3", status: 0) if Column.find_by(name: "泰卡特T3", keyword: "泰卡特T3|泰卡特 T3").nil?
Column.create!(category_id: category_99.id, name: "泰卡特T7", en_name: "T7", keyword: "泰卡特T7|泰卡特 T7", status: 0) if Column.find_by(name: "泰卡特T7", keyword: "泰卡特T7|泰卡特 T7").nil?
Column.create!(category_id: category_99.id, name: "泰卡特T9", en_name: "T9", keyword: "泰卡特T9|泰卡特 T9", status: 0) if Column.find_by(name: "泰卡特T9", keyword: "泰卡特T9|泰卡特 T9").nil?
Column.create!(category_id: category_99.id, name: "腾势", en_name: "腾势", keyword: "腾势|腾势 腾势", status: 0) if Column.find_by(name: "腾势", keyword: "腾势|腾势 腾势").nil?
Column.create!(category_id: category_99.id, name: "天马风锐", en_name: "风锐", keyword: "天马风锐|天马 风锐", status: 0) if Column.find_by(name: "天马风锐", keyword: "天马风锐|天马 风锐").nil?
Column.create!(category_id: category_99.id, name: "海拉克斯", en_name: "海拉克斯", keyword: "天马海拉克斯|天马 海拉克斯", status: 0) if Column.find_by(name: "海拉克斯", keyword: "天马海拉克斯|天马 海拉克斯").nil?
Column.create!(category_id: category_99.id, name: "天马海狮", en_name: "海狮", keyword: "天马海狮|天马 海狮", status: 0) if Column.find_by(name: "天马海狮", keyword: "天马海狮|天马 海狮").nil?
Column.create!(category_id: category_99.id, name: "天马乘龙", en_name: "乘龙", keyword: "天马乘龙|天马 乘龙", status: 0) if Column.find_by(name: "天马乘龙", keyword: "天马乘龙|天马 乘龙").nil?
Column.create!(category_id: category_99.id, name: "天马风骏", en_name: "风骏", keyword: "天马风骏|天马 风骏", status: 0) if Column.find_by(name: "天马风骏", keyword: "天马风骏|天马 风骏").nil?
Column.create!(category_id: category_99.id, name: "天马御虎", en_name: "御虎", keyword: "天马御虎|天马 御虎", status: 0) if Column.find_by(name: "天马御虎", keyword: "天马御虎|天马 御虎").nil?
Column.create!(category_id: category_99.id, name: "天马英雄", en_name: "英雄", keyword: "天马英雄|天马 英雄", status: 0) if Column.find_by(name: "天马英雄", keyword: "天马英雄|天马 英雄").nil?
Column.create!(category_id: category_99.id, name: "通田阁罗", en_name: "阁罗", keyword: "通田阁罗|通田 阁罗", status: 0) if Column.find_by(name: "通田阁罗", keyword: "通田阁罗|通田 阁罗").nil?
Column.create!(category_id: category_99.id, name: "塔菲克", en_name: "塔菲克", keyword: "塔菲克|塔菲克 塔菲克", status: 0) if Column.find_by(name: "塔菲克", keyword: "塔菲克|塔菲克 塔菲克").nil?
Column.create!(category_id: category_99.id, name: "五菱宏光", en_name: "五菱宏光", keyword: "五菱宏光|五菱 五菱宏光", status: 0) if Column.find_by(name: "五菱宏光", keyword: "五菱宏光|五菱 五菱宏光").nil?
Column.create!(category_id: category_99.id, name: "五菱宏光S", en_name: "五菱宏光S", keyword: "五菱宏光S|五菱 五菱宏光S", status: 0) if Column.find_by(name: "五菱宏光S", keyword: "五菱宏光S|五菱 五菱宏光S").nil?
Column.create!(category_id: category_99.id, name: "五菱宏光S1", en_name: "五菱宏光S1", keyword: "五菱宏光S1|五菱 五菱宏光S1", status: 0) if Column.find_by(name: "五菱宏光S1", keyword: "五菱宏光S1|五菱 五菱宏光S1").nil?
Column.create!(category_id: category_99.id, name: "五菱PN系列货车", en_name: "五菱PN系列货车", keyword: "五菱PN系列货车|五菱 五菱PN系列货车", status: 0) if Column.find_by(name: "五菱PN系列货车", keyword: "五菱PN系列货车|五菱 五菱PN系列货车").nil?
Column.create!(category_id: category_99.id, name: "五菱荣光", en_name: "五菱荣光", keyword: "五菱荣光|五菱 五菱荣光", status: 0) if Column.find_by(name: "五菱荣光", keyword: "五菱荣光|五菱 五菱荣光").nil?
Column.create!(category_id: category_99.id, name: "五菱荣光V", en_name: "五菱荣光V", keyword: "五菱荣光V|五菱 五菱荣光V", status: 0) if Column.find_by(name: "五菱荣光V", keyword: "五菱荣光V|五菱 五菱荣光V").nil?
Column.create!(category_id: category_99.id, name: "五菱荣光小卡", en_name: "五菱荣光小卡", keyword: "五菱荣光小卡|五菱 五菱荣光小卡", status: 0) if Column.find_by(name: "五菱荣光小卡", keyword: "五菱荣光小卡|五菱 五菱荣光小卡").nil?
Column.create!(category_id: category_99.id, name: "五菱之光", en_name: "五菱之光", keyword: "五菱之光|五菱 五菱之光", status: 0) if Column.find_by(name: "五菱之光", keyword: "五菱之光|五菱 五菱之光").nil?
Column.create!(category_id: category_99.id, name: "征程", en_name: "征程", keyword: "五菱征程|五菱 征程", status: 0) if Column.find_by(name: "征程", keyword: "五菱征程|五菱 征程").nil?
Column.create!(category_id: category_99.id, name: "都市清风", en_name: "都市清风", keyword: "五菱都市清风|五菱 都市清风", status: 0) if Column.find_by(name: "都市清风", keyword: "五菱都市清风|五菱 都市清风").nil?
Column.create!(category_id: category_99.id, name: "五菱鸿途", en_name: "鸿途", keyword: "五菱鸿途|五菱 鸿途", status: 0) if Column.find_by(name: "五菱鸿途", keyword: "五菱鸿途|五菱 鸿途").nil?
Column.create!(category_id: category_99.id, name: "柳州五菱", en_name: "柳州五菱", keyword: "柳州五菱|五菱 柳州五菱", status: 0) if Column.find_by(name: "柳州五菱", keyword: "柳州五菱|五菱 柳州五菱").nil?
Column.create!(category_id: category_99.id, name: "五菱兴旺", en_name: "兴旺", keyword: "五菱兴旺|五菱 兴旺", status: 0) if Column.find_by(name: "五菱兴旺", keyword: "五菱兴旺|五菱 兴旺").nil?
Column.create!(category_id: category_99.id, name: "五菱小旋风", en_name: "小旋风", keyword: "五菱小旋风|五菱 小旋风", status: 0) if Column.find_by(name: "五菱小旋风", keyword: "五菱小旋风|五菱 小旋风").nil?
Column.create!(category_id: category_99.id, name: "五菱扬光", en_name: "扬光", keyword: "五菱扬光|五菱 扬光", status: 0) if Column.find_by(name: "五菱扬光", keyword: "五菱扬光|五菱 扬光").nil?
Column.create!(category_id: category_99.id, name: "沃尔沃S80L", en_name: "S80L", keyword: "沃尔沃S80L|volvo S80L", status: 0) if Column.find_by(name: "沃尔沃S80L", keyword: "沃尔沃S80L|volvo S80L").nil?
Column.create!(category_id: category_99.id, name: "长安沃尔沃S40", en_name: "S40", keyword: "长安沃尔沃S40|volvo S40", status: 0) if Column.find_by(name: "长安沃尔沃S40", keyword: "长安沃尔沃S40|volvo S40").nil?
Column.create!(category_id: category_99.id, name: "沃尔沃S60L", en_name: "S60L", keyword: "沃尔沃S60L|volvo S60L", status: 0) if Column.find_by(name: "沃尔沃S60L", keyword: "沃尔沃S60L|volvo S60L").nil?
Column.create!(category_id: category_99.id, name: "沃尔沃 XC Classic", en_name: "XC Classic", keyword: "沃尔沃 XC Classic|volvo XC Classic", status: 0) if Column.find_by(name: "沃尔沃 XC Classic", keyword: "沃尔沃 XC Classic|volvo XC Classic").nil?
Column.create!(category_id: category_99.id, name: "沃尔沃XC60", en_name: "XC60", keyword: "沃尔沃XC60|volvo XC60", status: 0) if Column.find_by(name: "沃尔沃XC60", keyword: "沃尔沃XC60|volvo XC60").nil?
Column.create!(category_id: category_99.id, name: "沃尔沃S60", en_name: "S60", keyword: "沃尔沃S60|volvo S60", status: 0) if Column.find_by(name: "沃尔沃S60", keyword: "沃尔沃S60|volvo S60").nil?
Column.create!(category_id: category_99.id, name: "沃尔沃V40（进口）", en_name: "V40", keyword: "沃尔沃V40（进口）|volvo V40", status: 0) if Column.find_by(name: "沃尔沃V40（进口）", keyword: "沃尔沃V40（进口）|volvo V40").nil?
Column.create!(category_id: category_99.id, name: "沃尔沃V40 Cross Country", en_name: "V40 Cross Country", keyword: "沃尔沃V40 Cross Country|volvo V40 Cross Country", status: 0) if Column.find_by(name: "沃尔沃V40 Cross Country", keyword: "沃尔沃V40 Cross Country|volvo V40 Cross Country").nil?
Column.create!(category_id: category_99.id, name: "沃尔沃V60", en_name: "V60", keyword: "沃尔沃V60|volvo V60", status: 0) if Column.find_by(name: "沃尔沃V60", keyword: "沃尔沃V60|volvo V60").nil?
Column.create!(category_id: category_99.id, name: "沃尔沃V60 Cross Country", en_name: "V60 Cross Country", keyword: "沃尔沃V60 Cross Country|volvo V60 Cross Country", status: 0) if Column.find_by(name: "沃尔沃V60 Cross Country", keyword: "沃尔沃V60 Cross Country|volvo V60 Cross Country").nil?
Column.create!(category_id: category_99.id, name: "沃尔沃XC90", en_name: "XC90", keyword: "沃尔沃XC90|volvo XC90", status: 0) if Column.find_by(name: "沃尔沃XC90", keyword: "沃尔沃XC90|volvo XC90").nil?
Column.create!(category_id: category_99.id, name: "沃尔沃S90(进口）", en_name: "S90", keyword: "沃尔沃S90(进口）|volvo S90", status: 0) if Column.find_by(name: "沃尔沃S90(进口）", keyword: "沃尔沃S90(进口）|volvo S90").nil?
Column.create!(category_id: category_99.id, name: "沃尔沃V90(进口）", en_name: "V90", keyword: "沃尔沃V90(进口）|volvo V90", status: 0) if Column.find_by(name: "沃尔沃V90(进口）", keyword: "沃尔沃V90(进口）|volvo V90").nil?
Column.create!(category_id: category_99.id, name: "沃尔沃C30", en_name: "C30", keyword: "沃尔沃C30|volvo C30", status: 0) if Column.find_by(name: "沃尔沃C30", keyword: "沃尔沃C30|volvo C30").nil?
Column.create!(category_id: category_99.id, name: "沃尔沃 C70", en_name: "C70", keyword: "沃尔沃 C70|volvo C70", status: 0) if Column.find_by(name: "沃尔沃 C70", keyword: "沃尔沃 C70|volvo C70").nil?
Column.create!(category_id: category_99.id, name: "S40", en_name: "S40", keyword: "沃尔沃S40|volvo S40", status: 0) if Column.find_by(name: "S40", keyword: "沃尔沃S40|volvo S40").nil?
Column.create!(category_id: category_99.id, name: "S70", en_name: "S70", keyword: "沃尔沃S70|volvo S70", status: 0) if Column.find_by(name: "S70", keyword: "沃尔沃S70|volvo S70").nil?
Column.create!(category_id: category_99.id, name: "沃尔沃S80", en_name: "S80", keyword: "沃尔沃S80|volvo S80", status: 0) if Column.find_by(name: "沃尔沃S80", keyword: "沃尔沃S80|volvo S80").nil?
Column.create!(category_id: category_99.id, name: "沃尔沃V70", en_name: "V70", keyword: "沃尔沃V70|volvo V70", status: 0) if Column.find_by(name: "沃尔沃V70", keyword: "沃尔沃V70|volvo V70").nil?
Column.create!(category_id: category_99.id, name: "沃尔沃XC60", en_name: "XC60", keyword: "沃尔沃XC60|volvo XC60", status: 0) if Column.find_by(name: "沃尔沃XC60", keyword: "沃尔沃XC60|volvo XC60").nil?
Column.create!(category_id: category_99.id, name: "XC70", en_name: "XC70", keyword: "沃尔沃XC70|volvo XC70", status: 0) if Column.find_by(name: "XC70", keyword: "沃尔沃XC70|volvo XC70").nil?
Column.create!(category_id: category_99.id, name: "D-MAX", en_name: "D-MAX", keyword: "五十铃D-MAX|isuzu D-MAX", status: 0) if Column.find_by(name: "D-MAX", keyword: "五十铃D-MAX|isuzu D-MAX").nil?
Column.create!(category_id: category_99.id, name: "mu-X", en_name: "mu-X", keyword: "五十铃mu-X|isuzu mu-X", status: 0) if Column.find_by(name: "mu-X", keyword: "五十铃mu-X|isuzu mu-X").nil?
Column.create!(category_id: category_99.id, name: "瑞迈", en_name: "瑞迈", keyword: "五十铃瑞迈|isuzu 瑞迈", status: 0) if Column.find_by(name: "瑞迈", keyword: "五十铃瑞迈|isuzu 瑞迈").nil?
Column.create!(category_id: category_99.id, name: "铁金刚", en_name: "铁金刚", keyword: "五十铃铁金刚|isuzu 铁金刚", status: 0) if Column.find_by(name: "铁金刚", keyword: "五十铃铁金刚|isuzu 铁金刚").nil?
Column.create!(category_id: category_99.id, name: "突路霸", en_name: "突路霸", keyword: "五十铃突路霸|isuzu 突路霸", status: 0) if Column.find_by(name: "突路霸", keyword: "五十铃突路霸|isuzu 突路霸").nil?
Column.create!(category_id: category_99.id, name: "五十铃MU", en_name: "五十铃MU", keyword: "五十铃MU|isuzu 五十铃MU", status: 0) if Column.find_by(name: "五十铃MU", keyword: "五十铃MU|isuzu 五十铃MU").nil?
Column.create!(category_id: category_99.id, name: "英致727", en_name: "英致727", keyword: "潍柴英致英致727|潍柴英致 英致727", status: 0) if Column.find_by(name: "英致727", keyword: "潍柴英致英致727|潍柴英致 英致727").nil?
Column.create!(category_id: category_99.id, name: "英致737", en_name: "英致737", keyword: "潍柴英致英致737|潍柴英致 英致737", status: 0) if Column.find_by(name: "英致737", keyword: "潍柴英致英致737|潍柴英致 英致737").nil?
Column.create!(category_id: category_99.id, name: "英致G3", en_name: "英致G3", keyword: "潍柴英致英致G3|潍柴英致 英致G3", status: 0) if Column.find_by(name: "英致G3", keyword: "潍柴英致英致G3|潍柴英致 英致G3").nil?
Column.create!(category_id: category_99.id, name: "威麟H3", en_name: "H3", keyword: "威麟H3|威麟 H3", status: 0) if Column.find_by(name: "威麟H3", keyword: "威麟H3|威麟 H3").nil?
Column.create!(category_id: category_99.id, name: "威麟H5", en_name: "H5", keyword: "威麟H5|威麟 H5", status: 0) if Column.find_by(name: "威麟H5", keyword: "威麟H5|威麟 H5").nil?
Column.create!(category_id: category_99.id, name: "威麟V5", en_name: "V5", keyword: "威麟V5|威麟 V5", status: 0) if Column.find_by(name: "威麟V5", keyword: "威麟V5|威麟 V5").nil?
Column.create!(category_id: category_99.id, name: "威麟X5", en_name: "X5", keyword: "威麟X5|威麟 X5", status: 0) if Column.find_by(name: "威麟X5", keyword: "威麟X5|威麟 X5").nil?
Column.create!(category_id: category_99.id, name: "威兹曼GT", en_name: "GT", keyword: "威兹曼GT|Wiesmann GT", status: 0) if Column.find_by(name: "威兹曼GT", keyword: "威兹曼GT|Wiesmann GT").nil?
Column.create!(category_id: category_99.id, name: "威兹曼Roadster", en_name: "Roadster", keyword: "威兹曼Roadster|Wiesmann Roadster", status: 0) if Column.find_by(name: "威兹曼Roadster", keyword: "威兹曼Roadster|Wiesmann Roadster").nil?
Column.create!(category_id: category_99.id, name: "欧睿", en_name: "欧睿", keyword: "潍柴欧睿欧睿|潍柴欧睿 欧睿", status: 0) if Column.find_by(name: "欧睿", keyword: "潍柴欧睿欧睿|潍柴欧睿 欧睿").nil?
Column.create!(category_id: category_99.id, name: "速达", en_name: "速达", keyword: "万丰速达|万丰 速达", status: 0) if Column.find_by(name: "速达", keyword: "万丰速达|万丰 速达").nil?
Column.create!(category_id: category_99.id, name: "速威", en_name: "速威", keyword: "万丰速威|万丰 速威", status: 0) if Column.find_by(name: "速威", keyword: "万丰速威|万丰 速威").nil?
Column.create!(category_id: category_99.id, name: "泰威", en_name: "泰威", keyword: "万丰泰威|万丰 泰威", status: 0) if Column.find_by(name: "泰威", keyword: "万丰泰威|万丰 泰威").nil?
Column.create!(category_id: category_99.id, name: "万丰商务车", en_name: "万丰商务车", keyword: "万丰商务车|万丰 万丰商务车", status: 0) if Column.find_by(name: "万丰商务车", keyword: "万丰商务车|万丰 万丰商务车").nil?
Column.create!(category_id: category_99.id, name: "北京现代i30", en_name: "i30", keyword: "北京现代i30|hyundai i30", status: 0) if Column.find_by(name: "北京现代i30", keyword: "北京现代i30|hyundai i30").nil?
Column.create!(category_id: category_99.id, name: "北京现代ix25", en_name: "ix25", keyword: "北京现代ix25|hyundai ix25", status: 0) if Column.find_by(name: "北京现代ix25", keyword: "北京现代ix25|hyundai ix25").nil?
Column.create!(category_id: category_99.id, name: "北京现代ix35", en_name: "ix35", keyword: "北京现代ix35|hyundai ix35", status: 0) if Column.find_by(name: "北京现代ix35", keyword: "北京现代ix35|hyundai ix35").nil?
Column.create!(category_id: category_99.id, name: "朗动", en_name: "Elantra", keyword: "现代朗动|hyundai Elantra", status: 0) if Column.find_by(name: "朗动", keyword: "现代朗动|hyundai Elantra").nil?
Column.create!(category_id: category_99.id, name: "领动", en_name: "Elantra", keyword: "现代领动|hyundai Elantra", status: 0) if Column.find_by(name: "领动", keyword: "现代领动|hyundai Elantra").nil?
Column.create!(category_id: category_99.id, name: "MISTRA名图", en_name: "MISTRA", keyword: "现代MISTRA名图|hyundai MISTRA", status: 0) if Column.find_by(name: "MISTRA名图", keyword: "现代MISTRA名图|hyundai MISTRA").nil?
Column.create!(category_id: category_99.id, name: "名驭", en_name: "MOINCA", keyword: "现代名驭|hyundai MOINCA", status: 0) if Column.find_by(name: "名驭", keyword: "现代名驭|hyundai MOINCA").nil?
Column.create!(category_id: category_99.id, name: "全新胜达", en_name: "santa fe", keyword: "现代全新胜达|hyundai santa fe", status: 0) if Column.find_by(name: "全新胜达", keyword: "现代全新胜达|hyundai santa fe").nil?
Column.create!(category_id: category_99.id, name: "全新途胜", en_name: "Tucson", keyword: "现代全新途胜|hyundai Tucson", status: 0) if Column.find_by(name: "全新途胜", keyword: "现代全新途胜|hyundai Tucson").nil?
Column.create!(category_id: category_99.id, name: "瑞纳两厢", en_name: "瑞纳hatchback", keyword: "现代瑞纳两厢|hyundai 瑞纳hatchback", status: 0) if Column.find_by(name: "瑞纳两厢", keyword: "现代瑞纳两厢|hyundai 瑞纳hatchback").nil?
Column.create!(category_id: category_99.id, name: "瑞纳三厢", en_name: "Verna", keyword: "现代瑞纳三厢|hyundai Verna", status: 0) if Column.find_by(name: "瑞纳三厢", keyword: "现代瑞纳三厢|hyundai Verna").nil?
Column.create!(category_id: category_99.id, name: "瑞奕", en_name: "瑞奕", keyword: "现代瑞奕|hyundai 瑞奕", status: 0) if Column.find_by(name: "瑞奕", keyword: "现代瑞奕|hyundai 瑞奕").nil?
Column.create!(category_id: category_99.id, name: "索纳塔八", en_name: "sonata 8", keyword: "现代索纳塔八|hyundai sonata 8", status: 0) if Column.find_by(name: "索纳塔八", keyword: "现代索纳塔八|hyundai sonata 8").nil?
Column.create!(category_id: category_99.id, name: "索纳塔九", en_name: "sonata 9", keyword: "现代索纳塔九|hyundai sonata 9", status: 0) if Column.find_by(name: "索纳塔九", keyword: "现代索纳塔九|hyundai sonata 9").nil?
Column.create!(category_id: category_99.id, name: "悦动", en_name: "Celesta", keyword: "现代悦动|hyundai Celesta", status: 0) if Column.find_by(name: "悦动", keyword: "现代悦动|hyundai Celesta").nil?
Column.create!(category_id: category_99.id, name: "伊兰特", en_name: "伊兰特", keyword: "现代伊兰特|hyundai 伊兰特", status: 0) if Column.find_by(name: "伊兰特", keyword: "现代伊兰特|hyundai 伊兰特").nil?
Column.create!(category_id: category_99.id, name: "领翔", en_name: "领翔", keyword: "现代领翔|hyundai 领翔", status: 0) if Column.find_by(name: "领翔", keyword: "现代领翔|hyundai 领翔").nil?
Column.create!(category_id: category_99.id, name: "伊兰特两厢", en_name: "elantra hatchback", keyword: "现代伊兰特两厢|hyundai elantra hatchback", status: 0) if Column.find_by(name: "伊兰特两厢", keyword: "现代伊兰特两厢|hyundai elantra hatchback").nil?
Column.create!(category_id: category_99.id, name: "雅绅特", en_name: "Accent", keyword: "现代雅绅特|hyundai Accent", status: 0) if Column.find_by(name: "雅绅特", keyword: "现代雅绅特|hyundai Accent").nil?
Column.create!(category_id: category_99.id, name: "御翔", en_name: "御翔", keyword: "现代御翔|hyundai 御翔", status: 0) if Column.find_by(name: "御翔", keyword: "现代御翔|hyundai 御翔").nil?
Column.create!(category_id: category_99.id, name: "创虎", en_name: "创虎", keyword: "现代创虎|hyundai 创虎", status: 0) if Column.find_by(name: "创虎", keyword: "现代创虎|hyundai 创虎").nil?
Column.create!(category_id: category_99.id, name: "康恩迪", en_name: "康恩迪", keyword: "现代康恩迪|hyundai 康恩迪", status: 0) if Column.find_by(name: "康恩迪", keyword: "现代康恩迪|hyundai 康恩迪").nil?
Column.create!(category_id: category_99.id, name: "捷恩斯G90", en_name: "Genesis g90", keyword: "现代捷恩斯G90|hyundai Genesis g90", status: 0) if Column.find_by(name: "捷恩斯G90", keyword: "现代捷恩斯G90|hyundai Genesis g90").nil?
Column.create!(category_id: category_99.id, name: "飞思", en_name: "飞思", keyword: "现代飞思|hyundai 飞思", status: 0) if Column.find_by(name: "飞思", keyword: "现代飞思|hyundai 飞思").nil?
Column.create!(category_id: category_99.id, name: "格越", en_name: "格越", keyword: "现代格越|hyundai 格越", status: 0) if Column.find_by(name: "格越", keyword: "现代格越|hyundai 格越").nil?
Column.create!(category_id: category_99.id, name: "辉翼", en_name: "辉翼", keyword: "现代辉翼|hyundai 辉翼", status: 0) if Column.find_by(name: "辉翼", keyword: "现代辉翼|hyundai 辉翼").nil?
Column.create!(category_id: category_99.id, name: "捷恩斯", en_name: "捷恩斯", keyword: "现代捷恩斯|hyundai 捷恩斯", status: 0) if Column.find_by(name: "捷恩斯", keyword: "现代捷恩斯|hyundai 捷恩斯").nil?
Column.create!(category_id: category_99.id, name: "劳恩斯", en_name: "Rohens", keyword: "现代劳恩斯|hyundai Rohens", status: 0) if Column.find_by(name: "劳恩斯", keyword: "现代劳恩斯|hyundai Rohens").nil?
Column.create!(category_id: category_99.id, name: "劳恩斯coupe", en_name: "ROHENS-Coupe", keyword: "现代劳恩斯coupe|hyundai ROHENS-Coupe", status: 0) if Column.find_by(name: "劳恩斯coupe", keyword: "现代劳恩斯coupe|hyundai ROHENS-Coupe").nil?
Column.create!(category_id: category_99.id, name: "全新胜达", en_name: "全新胜达", keyword: "现代全新胜达|hyundai 全新胜达", status: 0) if Column.find_by(name: "全新胜达", keyword: "现代全新胜达|hyundai 全新胜达").nil?
Column.create!(category_id: category_99.id, name: "索纳塔", en_name: "索纳塔", keyword: "现代索纳塔|hyundai 索纳塔", status: 0) if Column.find_by(name: "索纳塔", keyword: "现代索纳塔|hyundai 索纳塔").nil?
Column.create!(category_id: category_99.id, name: "维拉克斯", en_name: "维拉克斯", keyword: "现代维拉克斯|hyundai 维拉克斯", status: 0) if Column.find_by(name: "维拉克斯", keyword: "现代维拉克斯|hyundai 维拉克斯").nil?
Column.create!(category_id: category_99.id, name: "雅科仕", en_name: "雅科仕", keyword: "现代雅科仕|hyundai 雅科仕", status: 0) if Column.find_by(name: "雅科仕", keyword: "现代雅科仕|hyundai 雅科仕").nil?
Column.create!(category_id: category_99.id, name: "雅尊", en_name: "雅尊", keyword: "现代雅尊|hyundai 雅尊", status: 0) if Column.find_by(name: "雅尊", keyword: "现代雅尊|hyundai 雅尊").nil?
Column.create!(category_id: category_99.id, name: "得利", en_name: "得利", keyword: "现代得利|hyundai 得利", status: 0) if Column.find_by(name: "得利", keyword: "现代得利|hyundai 得利").nil?
Column.create!(category_id: category_99.id, name: "现代i20", en_name: "i20", keyword: "现代i20|hyundai i20", status: 0) if Column.find_by(name: "现代i20", keyword: "现代i20|hyundai i20").nil?
Column.create!(category_id: category_99.id, name: "现代ix35", en_name: "ix35", keyword: "现代ix35|hyundai ix35", status: 0) if Column.find_by(name: "现代ix35", keyword: "现代ix35|hyundai ix35").nil?
Column.create!(category_id: category_99.id, name: "君爵", en_name: "君爵", keyword: "现代君爵|hyundai 君爵", status: 0) if Column.find_by(name: "君爵", keyword: "现代君爵|hyundai 君爵").nil?
Column.create!(category_id: category_99.id, name: "酷派", en_name: "酷派", keyword: "现代酷派|hyundai 酷派", status: 0) if Column.find_by(name: "酷派", keyword: "现代酷派|hyundai 酷派").nil?
Column.create!(category_id: category_99.id, name: "世纪", en_name: "现代世纪", keyword: "现代世纪|hyundai 现代世纪", status: 0) if Column.find_by(name: "世纪", keyword: "现代世纪|hyundai 现代世纪").nil?
Column.create!(category_id: category_99.id, name: "特杰", en_name: "特杰", keyword: "现代特杰|hyundai 特杰", status: 0) if Column.find_by(name: "特杰", keyword: "现代特杰|hyundai 特杰").nil?
Column.create!(category_id: category_99.id, name: "现代美佳", en_name: "美佳", keyword: "现代美佳|hyundai 美佳", status: 0) if Column.find_by(name: "现代美佳", keyword: "现代美佳|hyundai 美佳").nil?
Column.create!(category_id: category_99.id, name: "现代瑞风", en_name: "现代瑞风", keyword: "现代瑞风|hyundai 现代瑞风", status: 0) if Column.find_by(name: "现代瑞风", keyword: "现代瑞风|hyundai 现代瑞风").nil?
Column.create!(category_id: category_99.id, name: "爱唯欧两厢", en_name: "aveo hatchback", keyword: "雪佛兰爱唯欧两厢|Chevrolet aveo hatchback", status: 0) if Column.find_by(name: "爱唯欧两厢", keyword: "雪佛兰爱唯欧两厢|Chevrolet aveo hatchback").nil?
Column.create!(category_id: category_99.id, name: "爱唯欧", en_name: "爱唯欧", keyword: "雪佛兰爱唯欧|Chevrolet 爱唯欧", status: 0) if Column.find_by(name: "爱唯欧", keyword: "雪佛兰爱唯欧|Chevrolet 爱唯欧").nil?
Column.create!(category_id: category_99.id, name: "创酷", en_name: "Trax", keyword: "雪佛兰创酷|Chevrolet Trax", status: 0) if Column.find_by(name: "创酷", keyword: "雪佛兰创酷|Chevrolet Trax").nil?
Column.create!(category_id: category_99.id, name: "景程", en_name: "Epica", keyword: "雪佛兰景程|Chevrolet Epica", status: 0) if Column.find_by(name: "景程", keyword: "雪佛兰景程|Chevrolet Epica").nil?
Column.create!(category_id: category_99.id, name: "科鲁兹", en_name: "科鲁兹", keyword: "雪佛兰科鲁兹|Chevrolet 科鲁兹", status: 0) if Column.find_by(name: "科鲁兹", keyword: "雪佛兰科鲁兹|Chevrolet 科鲁兹").nil?
Column.create!(category_id: category_99.id, name: "科鲁兹两厢", en_name: "Cruze hatchback", keyword: "雪佛兰科鲁兹两厢|Chevrolet Cruze hatchback", status: 0) if Column.find_by(name: "科鲁兹两厢", keyword: "雪佛兰科鲁兹两厢|Chevrolet Cruze hatchback").nil?
Column.create!(category_id: category_99.id, name: "科帕奇", en_name: "Captiva", keyword: "雪佛兰科帕奇|Chevrolet Captiva", status: 0) if Column.find_by(name: "科帕奇", keyword: "雪佛兰科帕奇|Chevrolet Captiva").nil?
Column.create!(category_id: category_99.id, name: "乐风RV", en_name: "乐风RV", keyword: "雪佛兰乐风RV|Chevrolet 乐风RV", status: 0) if Column.find_by(name: "乐风RV", keyword: "雪佛兰乐风RV|Chevrolet 乐风RV").nil?
Column.create!(category_id: category_99.id, name: "迈锐宝", en_name: "malibu", keyword: "雪佛兰迈锐宝|Chevrolet malibu", status: 0) if Column.find_by(name: "迈锐宝", keyword: "雪佛兰迈锐宝|Chevrolet malibu").nil?
Column.create!(category_id: category_99.id, name: "迈锐宝XL", en_name: "malibu xl", keyword: "雪佛兰迈锐宝XL|Chevrolet malibu xl", status: 0) if Column.find_by(name: "迈锐宝XL", keyword: "雪佛兰迈锐宝XL|Chevrolet malibu xl").nil?
Column.create!(category_id: category_99.id, name: "赛欧", en_name: "sail", keyword: "雪佛兰赛欧|Chevrolet sail", status: 0) if Column.find_by(name: "赛欧", keyword: "雪佛兰赛欧|Chevrolet sail").nil?
Column.create!(category_id: category_99.id, name: "赛欧两厢", en_name: "赛欧hatchback", keyword: "雪佛兰赛欧两厢|Chevrolet 赛欧hatchback", status: 0) if Column.find_by(name: "赛欧两厢", keyword: "雪佛兰赛欧两厢|Chevrolet 赛欧hatchback").nil?
Column.create!(category_id: category_99.id, name: "赛欧SPRINGO", en_name: "赛欧SPRINGO", keyword: "雪佛兰赛欧SPRINGO|Chevrolet 赛欧SPRINGO", status: 0) if Column.find_by(name: "赛欧SPRINGO", keyword: "雪佛兰赛欧SPRINGO|Chevrolet 赛欧SPRINGO").nil?
Column.create!(category_id: category_99.id, name: "S10", en_name: "S10", keyword: "雪佛兰S10|Chevrolet S10", status: 0) if Column.find_by(name: "S10", keyword: "雪佛兰S10|Chevrolet S10").nil?
Column.create!(category_id: category_99.id, name: "乐骋", en_name: "AVEO", keyword: "雪佛兰乐骋|Chevrolet AVEO", status: 0) if Column.find_by(name: "乐骋", keyword: "雪佛兰乐骋|Chevrolet AVEO").nil?
Column.create!(category_id: category_99.id, name: "乐风", en_name: "乐风", keyword: "雪佛兰乐风|Chevrolet 乐风", status: 0) if Column.find_by(name: "乐风", keyword: "雪佛兰乐风|Chevrolet 乐风").nil?
Column.create!(category_id: category_99.id, name: "赛欧三厢", en_name: "sail sedan", keyword: "雪佛兰赛欧三厢|Chevrolet sail sedan", status: 0) if Column.find_by(name: "赛欧三厢", keyword: "雪佛兰赛欧三厢|Chevrolet sail sedan").nil?
Column.create!(category_id: category_99.id, name: "赛欧SRV", en_name: "赛欧SRV", keyword: "雪佛兰赛欧SRV|Chevrolet 赛欧SRV", status: 0) if Column.find_by(name: "赛欧SRV", keyword: "雪佛兰赛欧SRV|Chevrolet 赛欧SRV").nil?
Column.create!(category_id: category_99.id, name: "科尔维特", en_name: "Corvette", keyword: "雪佛兰科尔维特|Chevrolet Corvette", status: 0) if Column.find_by(name: "科尔维特", keyword: "雪佛兰科尔维特|Chevrolet Corvette").nil?
Column.create!(category_id: category_99.id, name: "科迈罗", en_name: "camaro", keyword: "雪佛兰科迈罗|Chevrolet camaro", status: 0) if Column.find_by(name: "科迈罗", keyword: "雪佛兰科迈罗|Chevrolet camaro").nil?
Column.create!(category_id: category_99.id, name: "沃蓝达", en_name: "volt", keyword: "雪佛兰沃蓝达|Chevrolet volt", status: 0) if Column.find_by(name: "沃蓝达", keyword: "雪佛兰沃蓝达|Chevrolet volt").nil?
Column.create!(category_id: category_99.id, name: "雪佛兰Bolt EV", en_name: "Bolt EV", keyword: "雪佛兰Bolt EV|Chevrolet Bolt EV", status: 0) if Column.find_by(name: "雪佛兰Bolt EV", keyword: "雪佛兰Bolt EV|Chevrolet Bolt EV").nil?
Column.create!(category_id: category_99.id, name: "创界", en_name: "创界", keyword: "雪佛兰创界|Chevrolet 创界", status: 0) if Column.find_by(name: "创界", keyword: "雪佛兰创界|Chevrolet 创界").nil?
Column.create!(category_id: category_99.id, name: "雪佛兰Suburban", en_name: "Suburban", keyword: "雪佛兰Suburban|Chevrolet Suburban", status: 0) if Column.find_by(name: "雪佛兰Suburban", keyword: "雪佛兰Suburban|Chevrolet Suburban").nil?
Column.create!(category_id: category_99.id, name: "雪佛兰EXPRESS", en_name: "EXPRESS", keyword: "雪佛兰EXPRESS|Chevrolet EXPRESS", status: 0) if Column.find_by(name: "雪佛兰EXPRESS", keyword: "雪佛兰EXPRESS|Chevrolet EXPRESS").nil?
Column.create!(category_id: category_99.id, name: "科帕奇", en_name: "科帕奇", keyword: "雪佛兰科帕奇|Chevrolet 科帕奇", status: 0) if Column.find_by(name: "科帕奇", keyword: "雪佛兰科帕奇|Chevrolet 科帕奇").nil?
Column.create!(category_id: category_99.id, name: "雪佛兰开拓者", en_name: "开拓者", keyword: "雪佛兰开拓者|Chevrolet 开拓者", status: 0) if Column.find_by(name: "雪佛兰开拓者", keyword: "雪佛兰开拓者|Chevrolet 开拓者").nil?
Column.create!(category_id: category_99.id, name: "科西嘉", en_name: "科西嘉", keyword: "雪佛兰科西嘉|Chevrolet 科西嘉", status: 0) if Column.find_by(name: "科西嘉", keyword: "雪佛兰科西嘉|Chevrolet 科西嘉").nil?
Column.create!(category_id: category_99.id, name: "斯帕可", en_name: "斯帕可", keyword: "雪佛兰斯帕可|Chevrolet 斯帕可", status: 0) if Column.find_by(name: "斯帕可", keyword: "雪佛兰斯帕可|Chevrolet 斯帕可").nil?
Column.create!(category_id: category_99.id, name: "雪佛兰", en_name: "雪佛兰", keyword: "雪佛兰|Chevrolet 雪佛兰", status: 0) if Column.find_by(name: "雪佛兰", keyword: "雪佛兰|Chevrolet 雪佛兰").nil?
Column.create!(category_id: category_99.id, name: "雪铁龙C2", en_name: "C2", keyword: "雪铁龙C2|citroen C2", status: 0) if Column.find_by(name: "雪铁龙C2", keyword: "雪铁龙C2|citroen C2").nil?
Column.create!(category_id: category_99.id, name: "雪铁龙全新C4L", en_name: "c4l", keyword: "雪铁龙全新C4L|citroen c4l", status: 0) if Column.find_by(name: "雪铁龙全新C4L", keyword: "雪铁龙全新C4L|citroen c4l").nil?
Column.create!(category_id: category_99.id, name: "C4世嘉", en_name: "c4", keyword: "雪铁龙C4世嘉|citroen c4", status: 0) if Column.find_by(name: "C4世嘉", keyword: "雪铁龙C4世嘉|citroen c4").nil?
Column.create!(category_id: category_99.id, name: "雪铁龙C5", en_name: "C5", keyword: "雪铁龙C5|citroen C5", status: 0) if Column.find_by(name: "雪铁龙C5", keyword: "雪铁龙C5|citroen C5").nil?
Column.create!(category_id: category_99.id, name: "经典爱丽舍三厢", en_name: "经典爱丽舍sedan", keyword: "雪铁龙经典爱丽舍三厢|citroen 经典爱丽舍sedan", status: 0) if Column.find_by(name: "经典爱丽舍三厢", keyword: "雪铁龙经典爱丽舍三厢|citroen 经典爱丽舍sedan").nil?
Column.create!(category_id: category_99.id, name: "经典世嘉", en_name: "C-Quatre", keyword: "雪铁龙经典世嘉|citroen C-Quatre", status: 0) if Column.find_by(name: "经典世嘉", keyword: "雪铁龙经典世嘉|citroen C-Quatre").nil?
Column.create!(category_id: category_99.id, name: "全新爱丽舍", en_name: "c-Elysee", keyword: "雪铁龙全新爱丽舍|citroen c-Elysee", status: 0) if Column.find_by(name: "全新爱丽舍", keyword: "雪铁龙全新爱丽舍|citroen c-Elysee").nil?
Column.create!(category_id: category_99.id, name: "世嘉两厢", en_name: "世嘉hatchback", keyword: "雪铁龙世嘉两厢|citroen 世嘉hatchback", status: 0) if Column.find_by(name: "世嘉两厢", keyword: "雪铁龙世嘉两厢|citroen 世嘉hatchback").nil?
Column.create!(category_id: category_99.id, name: "雪铁龙C3-XR", en_name: "C3-XR", keyword: "雪铁龙C3-XR|citroen C3-XR", status: 0) if Column.find_by(name: "雪铁龙C3-XR", keyword: "雪铁龙C3-XR|citroen C3-XR").nil?
Column.create!(category_id: category_99.id, name: "富康", en_name: "fukang", keyword: "雪铁龙富康|citroen fukang", status: 0) if Column.find_by(name: "富康", keyword: "雪铁龙富康|citroen fukang").nil?
Column.create!(category_id: category_99.id, name: "经典爱丽舍两厢", en_name: "经典爱丽舍hatchback", keyword: "雪铁龙经典爱丽舍两厢|citroen 经典爱丽舍hatchback", status: 0) if Column.find_by(name: "经典爱丽舍两厢", keyword: "雪铁龙经典爱丽舍两厢|citroen 经典爱丽舍hatchback").nil?
Column.create!(category_id: category_99.id, name: "凯旋", en_name: "凯旋", keyword: "雪铁龙凯旋|citroen 凯旋", status: 0) if Column.find_by(name: "凯旋", keyword: "雪铁龙凯旋|citroen 凯旋").nil?
Column.create!(category_id: category_99.id, name: "萨拉-毕加索", en_name: "萨拉-毕加索", keyword: "雪铁龙萨拉-毕加索|citroen 萨拉-毕加索", status: 0) if Column.find_by(name: "萨拉-毕加索", keyword: "雪铁龙萨拉-毕加索|citroen 萨拉-毕加索").nil?
Column.create!(category_id: category_99.id, name: "赛纳", en_name: "赛纳", keyword: "雪铁龙赛纳|citroen 赛纳", status: 0) if Column.find_by(name: "赛纳", keyword: "雪铁龙赛纳|citroen 赛纳").nil?
Column.create!(category_id: category_99.id, name: "C4 AIRCROSS", en_name: "C4 AIRCROSS", keyword: "雪铁龙C4 AIRCROSS|citroen C4 AIRCROSS", status: 0) if Column.find_by(name: "C4 AIRCROSS", keyword: "雪铁龙C4 AIRCROSS|citroen C4 AIRCROSS").nil?
Column.create!(category_id: category_99.id, name: "C4毕加索", en_name: "C4 PICASSO", keyword: "雪铁龙C4毕加索|citroen C4 PICASSO", status: 0) if Column.find_by(name: "C4毕加索", keyword: "雪铁龙C4毕加索|citroen C4 PICASSO").nil?
Column.create!(category_id: category_99.id, name: "雪铁龙C4 Cactus", en_name: "C4 Cactus", keyword: "雪铁龙C4 Cactus|citroen C4 Cactus", status: 0) if Column.find_by(name: "雪铁龙C4 Cactus", keyword: "雪铁龙C4 Cactus|citroen C4 Cactus").nil?
Column.create!(category_id: category_99.id, name: "雪铁龙C5", en_name: "C5", keyword: "雪铁龙C5|citroen C5", status: 0) if Column.find_by(name: "雪铁龙C5", keyword: "雪铁龙C5|citroen C5").nil?
Column.create!(category_id: category_99.id, name: "雪铁龙C4", en_name: "C4", keyword: "雪铁龙C4|citroen C4", status: 0) if Column.find_by(name: "雪铁龙C4", keyword: "雪铁龙C4|citroen C4").nil?
Column.create!(category_id: category_99.id, name: "雪铁龙C6", en_name: "C6", keyword: "雪铁龙C6|citroen C6", status: 0) if Column.find_by(name: "雪铁龙C6", keyword: "雪铁龙C6|citroen C6").nil?
Column.create!(category_id: category_99.id, name: "奔驰S级", en_name: "奔驰S级", keyword: "星客特奔驰S级|星客特 奔驰S级", status: 0) if Column.find_by(name: "奔驰S级", keyword: "星客特奔驰S级|星客特 奔驰S级").nil?
Column.create!(category_id: category_99.id, name: "丰田4Runner", en_name: "丰田4Runner", keyword: "星客特丰田4Runner|星客特 丰田4Runner", status: 0) if Column.find_by(name: "丰田4Runner", keyword: "星客特丰田4Runner|星客特 丰田4Runner").nil?
Column.create!(category_id: category_99.id, name: "福特F系列", en_name: "福特F系列", keyword: "星客特福特F系列|星客特 福特F系列", status: 0) if Column.find_by(name: "福特F系列", keyword: "星客特福特F系列|星客特 福特F系列").nil?
Column.create!(category_id: category_99.id, name: "丰田红杉", en_name: "丰田红杉", keyword: "星客特丰田红杉|星客特 丰田红杉", status: 0) if Column.find_by(name: "丰田红杉", keyword: "星客特丰田红杉|星客特 丰田红杉").nil?
Column.create!(category_id: category_99.id, name: "福特商务车", en_name: "福特商务车", keyword: "星客特福特商务车|星客特 福特商务车", status: 0) if Column.find_by(name: "福特商务车", keyword: "星客特福特商务车|星客特 福特商务车").nil?
Column.create!(category_id: category_99.id, name: "GMC皇家级", en_name: "GMC皇家级", keyword: "星客特GMC皇家级|星客特 GMC皇家级", status: 0) if Column.find_by(name: "GMC皇家级", keyword: "星客特GMC皇家级|星客特 GMC皇家级").nil?
Column.create!(category_id: category_99.id, name: "林肯MKT", en_name: "林肯MKT", keyword: "星客特林肯MKT|星客特 林肯MKT", status: 0) if Column.find_by(name: "林肯MKT", keyword: "星客特林肯MKT|星客特 林肯MKT").nil?
Column.create!(category_id: category_99.id, name: "林肯MKX", en_name: "林肯MKX", keyword: "星客特林肯MKX|星客特 林肯MKX", status: 0) if Column.find_by(name: "林肯MKX", keyword: "星客特林肯MKX|星客特 林肯MKX").nil?
Column.create!(category_id: category_99.id, name: "斯宾特Sprinter", en_name: "斯宾特Sprinter", keyword: "星客特斯宾特Sprinter|星客特 斯宾特Sprinter", status: 0) if Column.find_by(name: "斯宾特Sprinter", keyword: "星客特斯宾特Sprinter|星客特 斯宾特Sprinter").nil?
Column.create!(category_id: category_99.id, name: "星客特领航员", en_name: "星客特领航员", keyword: "星客特领航员|星客特 星客特领航员", status: 0) if Column.find_by(name: "星客特领航员", keyword: "星客特领航员|星客特 星客特领航员").nil?
Column.create!(category_id: category_99.id, name: "凌特324", en_name: "凌特324", keyword: "新凯凌特324|新凯 凌特324", status: 0) if Column.find_by(name: "凌特324", keyword: "新凯凌特324|新凯 凌特324").nil?
Column.create!(category_id: category_99.id, name: "凌特524", en_name: "凌特524", keyword: "新凯凌特524|新凯 凌特524", status: 0) if Column.find_by(name: "凌特524", keyword: "新凯凌特524|新凯 凌特524").nil?
Column.create!(category_id: category_99.id, name: "威霆122", en_name: "威霆122", keyword: "新凯威霆122|新凯 威霆122", status: 0) if Column.find_by(name: "威霆122", keyword: "新凯威霆122|新凯 威霆122").nil?
Column.create!(category_id: category_99.id, name: "锐达", en_name: "锐达", keyword: "新凯锐达|新凯 锐达", status: 0) if Column.find_by(name: "锐达", keyword: "新凯锐达|新凯 锐达").nil?
Column.create!(category_id: category_99.id, name: "威霆119", en_name: "威霆119", keyword: "新凯威霆119|新凯 威霆119", status: 0) if Column.find_by(name: "威霆119", keyword: "新凯威霆119|新凯 威霆119").nil?
Column.create!(category_id: category_99.id, name: "新凯CUV", en_name: "新凯CUV", keyword: "新凯CUV|新凯 新凯CUV", status: 0) if Column.find_by(name: "新凯CUV", keyword: "新凯CUV|新凯 新凯CUV").nil?
Column.create!(category_id: category_99.id, name: "新凯皮卡", en_name: "新凯皮卡", keyword: "新凯皮卡|新凯 新凯皮卡", status: 0) if Column.find_by(name: "新凯皮卡", keyword: "新凯皮卡|新凯 新凯皮卡").nil?
Column.create!(category_id: category_99.id, name: "新凯SRV", en_name: "新凯SRV", keyword: "新凯SRV|新凯 新凯SRV", status: 0) if Column.find_by(name: "新凯SRV", keyword: "新凯SRV|新凯 新凯SRV").nil?
Column.create!(category_id: category_99.id, name: "新凯SUV", en_name: "新凯SUV", keyword: "新凯SUV|新凯 新凯SUV", status: 0) if Column.find_by(name: "新凯SUV", keyword: "新凯SUV|新凯 新凯SUV").nil?
Column.create!(category_id: category_99.id, name: "欧悦搏", en_name: "Alhambra", keyword: "西雅特欧悦搏|Seat Alhambra", status: 0) if Column.find_by(name: "欧悦搏", keyword: "西雅特欧悦搏|Seat Alhambra").nil?
Column.create!(category_id: category_99.id, name: "伊比飒", en_name: "Ibiza", keyword: "西雅特伊比飒|Seat Ibiza", status: 0) if Column.find_by(name: "伊比飒", keyword: "西雅特伊比飒|Seat Ibiza").nil?
Column.create!(category_id: category_99.id, name: "LEON", en_name: "LEON", keyword: "西雅特LEON|Seat LEON", status: 0) if Column.find_by(name: "LEON", keyword: "西雅特LEON|Seat LEON").nil?
Column.create!(category_id: category_99.id, name: "君达SUV", en_name: "君达SUV", keyword: "新雅途君达SUV|新雅途 君达SUV", status: 0) if Column.find_by(name: "君达SUV", keyword: "新雅途君达SUV|新雅途 君达SUV").nil?
Column.create!(category_id: category_99.id, name: "新雅途", en_name: "新雅途", keyword: "新雅途|新雅途 新雅途", status: 0) if Column.find_by(name: "新雅途", keyword: "新雅途|新雅途 新雅途").nil?
Column.create!(category_id: category_99.id, name: "新雅途·优尼柯", en_name: "新雅途·优尼柯", keyword: "新雅途·优尼柯|新雅途 新雅途·优尼柯", status: 0) if Column.find_by(name: "新雅途·优尼柯", keyword: "新雅途·优尼柯|新雅途 新雅途·优尼柯").nil?
Column.create!(category_id: category_99.id, name: "英格尔", en_name: "英格尔", keyword: "新雅途英格尔|新雅途 英格尔", status: 0) if Column.find_by(name: "英格尔", keyword: "新雅途英格尔|新雅途 英格尔").nil?
Column.create!(category_id: category_99.id, name: "魔兽", en_name: "魔兽", keyword: "新大地魔兽|新大地 魔兽", status: 0) if Column.find_by(name: "魔兽", keyword: "新大地魔兽|新大地 魔兽").nil?
Column.create!(category_id: category_99.id, name: "源动力", en_name: "源动力", keyword: "新大地源动力|新大地 源动力", status: 0) if Column.find_by(name: "源动力", keyword: "新大地源动力|新大地 源动力").nil?
Column.create!(category_id: category_99.id, name: "英菲尼迪Q50L", en_name: "Q50L", keyword: "英菲尼迪Q50L|Infiniti Q50L", status: 0) if Column.find_by(name: "英菲尼迪Q50L", keyword: "英菲尼迪Q50L|Infiniti Q50L").nil?
Column.create!(category_id: category_99.id, name: "英菲尼迪QX50", en_name: "QX50", keyword: "英菲尼迪QX50|Infiniti QX50", status: 0) if Column.find_by(name: "英菲尼迪QX50", keyword: "英菲尼迪QX50|Infiniti QX50").nil?
Column.create!(category_id: category_99.id, name: "英菲尼迪ESQ", en_name: "ESQ", keyword: "英菲尼迪ESQ|Infiniti ESQ", status: 0) if Column.find_by(name: "英菲尼迪ESQ", keyword: "英菲尼迪ESQ|Infiniti ESQ").nil?
Column.create!(category_id: category_99.id, name: "英菲尼迪Q50", en_name: "Q50", keyword: "英菲尼迪Q50|Infiniti Q50", status: 0) if Column.find_by(name: "英菲尼迪Q50", keyword: "英菲尼迪Q50|Infiniti Q50").nil?
Column.create!(category_id: category_99.id, name: "英菲尼迪Q60", en_name: "Q60", keyword: "英菲尼迪Q60|Infiniti Q60", status: 0) if Column.find_by(name: "英菲尼迪Q60", keyword: "英菲尼迪Q60|Infiniti Q60").nil?
Column.create!(category_id: category_99.id, name: "英菲尼迪Q60S", en_name: "Q60S", keyword: "英菲尼迪Q60S|Infiniti Q60S", status: 0) if Column.find_by(name: "英菲尼迪Q60S", keyword: "英菲尼迪Q60S|Infiniti Q60S").nil?
Column.create!(category_id: category_99.id, name: "英菲尼迪Q70L", en_name: "Q70L", keyword: "英菲尼迪Q70L|Infiniti Q70L", status: 0) if Column.find_by(name: "英菲尼迪Q70L", keyword: "英菲尼迪Q70L|Infiniti Q70L").nil?
Column.create!(category_id: category_99.id, name: "英菲尼迪QX50", en_name: "QX50", keyword: "英菲尼迪QX50|Infiniti QX50", status: 0) if Column.find_by(name: "英菲尼迪QX50", keyword: "英菲尼迪QX50|Infiniti QX50").nil?
Column.create!(category_id: category_99.id, name: "英菲尼迪QX60", en_name: "QX60", keyword: "英菲尼迪QX60|Infiniti QX60", status: 0) if Column.find_by(name: "英菲尼迪QX60", keyword: "英菲尼迪QX60|Infiniti QX60").nil?
Column.create!(category_id: category_99.id, name: "英菲尼迪QX70", en_name: "QX70", keyword: "英菲尼迪QX70|Infiniti QX70", status: 0) if Column.find_by(name: "英菲尼迪QX70", keyword: "英菲尼迪QX70|Infiniti QX70").nil?
Column.create!(category_id: category_99.id, name: "英菲尼迪QX80", en_name: "QX80", keyword: "英菲尼迪QX80|Infiniti QX80", status: 0) if Column.find_by(name: "英菲尼迪QX80", keyword: "英菲尼迪QX80|Infiniti QX80").nil?
Column.create!(category_id: category_99.id, name: "英菲尼迪Q30", en_name: "Q30", keyword: "英菲尼迪Q30|Infiniti Q30", status: 0) if Column.find_by(name: "英菲尼迪Q30", keyword: "英菲尼迪Q30|Infiniti Q30").nil?
Column.create!(category_id: category_99.id, name: "英菲尼迪QX30", en_name: "QX30", keyword: "英菲尼迪QX30|Infiniti QX30", status: 0) if Column.find_by(name: "英菲尼迪QX30", keyword: "英菲尼迪QX30|Infiniti QX30").nil?
Column.create!(category_id: category_99.id, name: "英菲尼迪EX", en_name: "EX", keyword: "英菲尼迪EX|Infiniti EX", status: 0) if Column.find_by(name: "英菲尼迪EX", keyword: "英菲尼迪EX|Infiniti EX").nil?
Column.create!(category_id: category_99.id, name: "英菲尼迪FX", en_name: "FX", keyword: "英菲尼迪FX|Infiniti FX", status: 0) if Column.find_by(name: "英菲尼迪FX", keyword: "英菲尼迪FX|Infiniti FX").nil?
Column.create!(category_id: category_99.id, name: "英菲尼迪G", en_name: "G", keyword: "英菲尼迪G|Infiniti G", status: 0) if Column.find_by(name: "英菲尼迪G", keyword: "英菲尼迪G|Infiniti G").nil?
Column.create!(category_id: category_99.id, name: "英菲尼迪JX35(QX60)", en_name: "JX35(QX60)", keyword: "英菲尼迪JX35(QX60)|Infiniti JX35(QX60)", status: 0) if Column.find_by(name: "英菲尼迪JX35(QX60)", keyword: "英菲尼迪JX35(QX60)|Infiniti JX35(QX60)").nil?
Column.create!(category_id: category_99.id, name: "英菲尼迪M", en_name: "M", keyword: "英菲尼迪M|Infiniti M", status: 0) if Column.find_by(name: "英菲尼迪M", keyword: "英菲尼迪M|Infiniti M").nil?
Column.create!(category_id: category_99.id, name: "Q45", en_name: "Q45", keyword: "英菲尼迪Q45|Infiniti Q45", status: 0) if Column.find_by(name: "Q45", keyword: "英菲尼迪Q45|Infiniti Q45").nil?
Column.create!(category_id: category_99.id, name: "英菲尼迪QX", en_name: "QX", keyword: "英菲尼迪QX|Infiniti QX", status: 0) if Column.find_by(name: "英菲尼迪QX", keyword: "英菲尼迪QX|Infiniti QX").nil?
Column.create!(category_id: category_99.id, name: "骏派D60", en_name: "骏派D60", keyword: "一汽骏派D60|一汽 骏派D60", status: 0) if Column.find_by(name: "骏派D60", keyword: "一汽骏派D60|一汽 骏派D60").nil?
Column.create!(category_id: category_99.id, name: "威志三厢", en_name: "威志sedan", keyword: "一汽威志三厢|一汽 威志sedan", status: 0) if Column.find_by(name: "威志三厢", keyword: "一汽威志三厢|一汽 威志sedan").nil?
Column.create!(category_id: category_99.id, name: "威志V2", en_name: "威志V2", keyword: "一汽威志V2|一汽 威志V2", status: 0) if Column.find_by(name: "威志V2", keyword: "一汽威志V2|一汽 威志V2").nil?
Column.create!(category_id: category_99.id, name: "威志V5", en_name: "威志V5", keyword: "一汽威志V5|一汽 威志V5", status: 0) if Column.find_by(name: "威志V5", keyword: "一汽威志V5|一汽 威志V5").nil?
Column.create!(category_id: category_99.id, name: "夏利A+", en_name: "夏利A+", keyword: "一汽夏利A+|一汽 夏利A+", status: 0) if Column.find_by(name: "夏利A+", keyword: "一汽夏利A+|一汽 夏利A+").nil?
Column.create!(category_id: category_99.id, name: "夏利N3", en_name: "夏利N3", keyword: "一汽夏利N3|一汽 夏利N3", status: 0) if Column.find_by(name: "夏利N3", keyword: "一汽夏利N3|一汽 夏利N3").nil?
Column.create!(category_id: category_99.id, name: "夏利N5", en_name: "夏利N5", keyword: "一汽夏利N5|一汽 夏利N5", status: 0) if Column.find_by(name: "夏利N5", keyword: "一汽夏利N5|一汽 夏利N5").nil?
Column.create!(category_id: category_99.id, name: "夏利N7", en_name: "夏利N7", keyword: "一汽夏利N7|一汽 夏利N7", status: 0) if Column.find_by(name: "夏利N7", keyword: "一汽夏利N7|一汽 夏利N7").nil?
Column.create!(category_id: category_99.id, name: "骏派A70", en_name: "骏派A70", keyword: "一汽骏派A70|一汽 骏派A70", status: 0) if Column.find_by(name: "骏派A70", keyword: "一汽骏派A70|一汽 骏派A70").nil?
Column.create!(category_id: category_99.id, name: "夏利N3+两厢", en_name: "N3+hatchback", keyword: "一汽夏利N3+两厢|一汽 N3+hatchback", status: 0) if Column.find_by(name: "夏利N3+两厢", keyword: "一汽夏利N3+两厢|一汽 N3+hatchback").nil?
Column.create!(category_id: category_99.id, name: "夏利N3+三厢", en_name: "N3+sedan", keyword: "一汽夏利N3+三厢|一汽 N3+sedan", status: 0) if Column.find_by(name: "夏利N3+三厢", keyword: "一汽夏利N3+三厢|一汽 N3+sedan").nil?
Column.create!(category_id: category_99.id, name: "威乐", en_name: "威乐", keyword: "一汽威乐|一汽 威乐", status: 0) if Column.find_by(name: "威乐", keyword: "一汽威乐|一汽 威乐").nil?
Column.create!(category_id: category_99.id, name: "威姿", en_name: "威姿", keyword: "一汽威姿|一汽 威姿", status: 0) if Column.find_by(name: "威姿", keyword: "一汽威姿|一汽 威姿").nil?
Column.create!(category_id: category_99.id, name: "威志两厢", en_name: "威志hatchback", keyword: "一汽威志两厢|一汽 威志hatchback", status: 0) if Column.find_by(name: "威志两厢", keyword: "一汽威志两厢|一汽 威志hatchback").nil?
Column.create!(category_id: category_99.id, name: "夏利", en_name: "夏利", keyword: "一汽夏利|一汽 夏利", status: 0) if Column.find_by(name: "夏利", keyword: "一汽夏利|一汽 夏利").nil?
Column.create!(category_id: category_99.id, name: "夏利2000", en_name: "夏利2000", keyword: "一汽夏利2000|一汽 夏利2000", status: 0) if Column.find_by(name: "夏利2000", keyword: "一汽夏利2000|一汽 夏利2000").nil?
Column.create!(category_id: category_99.id, name: "一汽佳星幸福使者", en_name: "佳星幸福使者", keyword: "一汽佳星幸福使者|一汽 佳星幸福使者", status: 0) if Column.find_by(name: "一汽佳星幸福使者", keyword: "一汽佳星幸福使者|一汽 佳星幸福使者").nil?
Column.create!(category_id: category_99.id, name: "森雅M80", en_name: "森雅M80", keyword: "一汽森雅M80|一汽 森雅M80", status: 0) if Column.find_by(name: "森雅M80", keyword: "一汽森雅M80|一汽 森雅M80").nil?
Column.create!(category_id: category_99.id, name: "森雅S80", en_name: "森雅S80", keyword: "一汽森雅S80|一汽 森雅S80", status: 0) if Column.find_by(name: "森雅S80", keyword: "一汽森雅S80|一汽 森雅S80").nil?
Column.create!(category_id: category_99.id, name: "佳宝T50", en_name: "T50", keyword: "一汽佳宝T50|一汽 T50", status: 0) if Column.find_by(name: "佳宝T50", keyword: "一汽佳宝T50|一汽 T50").nil?
Column.create!(category_id: category_99.id, name: "佳宝T51", en_name: "T51", keyword: "一汽佳宝T51|一汽 T51", status: 0) if Column.find_by(name: "佳宝T51", keyword: "一汽佳宝T51|一汽 T51").nil?
Column.create!(category_id: category_99.id, name: "佳宝T57", en_name: "T57", keyword: "一汽佳宝T57|一汽 T57", status: 0) if Column.find_by(name: "佳宝T57", keyword: "一汽佳宝T57|一汽 T57").nil?
Column.create!(category_id: category_99.id, name: "解放T80", en_name: "T80", keyword: "一汽解放T80|一汽 T80", status: 0) if Column.find_by(name: "解放T80", keyword: "一汽解放T80|一汽 T80").nil?
Column.create!(category_id: category_99.id, name: "佳宝V52", en_name: "V52", keyword: "一汽佳宝V52|一汽 V52", status: 0) if Column.find_by(name: "佳宝V52", keyword: "一汽佳宝V52|一汽 V52").nil?
Column.create!(category_id: category_99.id, name: "佳宝V55", en_name: "V55", keyword: "一汽佳宝V55|一汽 V55", status: 0) if Column.find_by(name: "佳宝V55", keyword: "一汽佳宝V55|一汽 V55").nil?
Column.create!(category_id: category_99.id, name: "佳宝V70", en_name: "V70", keyword: "一汽佳宝V70|一汽 V70", status: 0) if Column.find_by(name: "佳宝V70", keyword: "一汽佳宝V70|一汽 V70").nil?
Column.create!(category_id: category_99.id, name: "佳宝V70 Ⅱ", en_name: "V70 Ⅱ", keyword: "一汽佳宝V70 Ⅱ|一汽 V70 Ⅱ", status: 0) if Column.find_by(name: "佳宝V70 Ⅱ", keyword: "一汽佳宝V70 Ⅱ|一汽 V70 Ⅱ").nil?
Column.create!(category_id: category_99.id, name: "一汽V75", en_name: "V75", keyword: "一汽V75|一汽 V75", status: 0) if Column.find_by(name: "一汽V75", keyword: "一汽V75|一汽 V75").nil?
Column.create!(category_id: category_99.id, name: "V77", en_name: "V77", keyword: "一汽V77|一汽 V77", status: 0) if Column.find_by(name: "V77", keyword: "一汽V77|一汽 V77").nil?
Column.create!(category_id: category_99.id, name: "佳宝V80", en_name: "V80", keyword: "一汽佳宝V80|一汽 V80", status: 0) if Column.find_by(name: "佳宝V80", keyword: "一汽佳宝V80|一汽 V80").nil?
Column.create!(category_id: category_99.id, name: "森雅R7", en_name: "森雅R7", keyword: "一汽森雅R7|一汽 森雅R7", status: 0) if Column.find_by(name: "森雅R7", keyword: "一汽森雅R7|一汽 森雅R7").nil?
Column.create!(category_id: category_99.id, name: "一汽奥星", en_name: "奥星", keyword: "一汽奥星|一汽 奥星", status: 0) if Column.find_by(name: "一汽奥星", keyword: "一汽奥星|一汽 奥星").nil?
Column.create!(category_id: category_99.id, name: "自由风", en_name: "自由风", keyword: "一汽自由风|一汽 自由风", status: 0) if Column.find_by(name: "自由风", keyword: "一汽自由风|一汽 自由风").nil?
Column.create!(category_id: category_99.id, name: "坤程", en_name: "坤程", keyword: "一汽坤程|一汽 坤程", status: 0) if Column.find_by(name: "坤程", keyword: "一汽坤程|一汽 坤程").nil?
Column.create!(category_id: category_99.id, name: "野马F10", en_name: "F10", keyword: "野马汽车野马F10|野马汽车 F10", status: 0) if Column.find_by(name: "野马F10", keyword: "野马汽车野马F10|野马汽车 F10").nil?
Column.create!(category_id: category_99.id, name: "野马F12", en_name: "F12", keyword: "野马汽车野马F12|野马汽车 F12", status: 0) if Column.find_by(name: "野马F12", keyword: "野马汽车野马F12|野马汽车 F12").nil?
Column.create!(category_id: category_99.id, name: "野马F16", en_name: "F16", keyword: "野马汽车野马F16|野马汽车 F16", status: 0) if Column.find_by(name: "野马F16", keyword: "野马汽车野马F16|野马汽车 F16").nil?
Column.create!(category_id: category_99.id, name: "野马T70", en_name: "T70", keyword: "野马汽车野马T70|野马汽车 T70", status: 0) if Column.find_by(name: "野马T70", keyword: "野马汽车野马T70|野马汽车 T70").nil?
Column.create!(category_id: category_99.id, name: "野马F99", en_name: "F99", keyword: "野马汽车野马F99|野马汽车 F99", status: 0) if Column.find_by(name: "野马F99", keyword: "野马汽车野马F99|野马汽车 F99").nil?
Column.create!(category_id: category_99.id, name: "超越", en_name: "超越", keyword: "依维柯超越|iveco 超越", status: 0) if Column.find_by(name: "超越", keyword: "依维柯超越|iveco 超越").nil?
Column.create!(category_id: category_99.id, name: "Daily", en_name: "Daily", keyword: "依维柯Daily|iveco Daily", status: 0) if Column.find_by(name: "Daily", keyword: "依维柯Daily|iveco Daily").nil?
Column.create!(category_id: category_99.id, name: "Ouba", en_name: "Ouba", keyword: "依维柯Ouba|iveco Ouba", status: 0) if Column.find_by(name: "Ouba", keyword: "依维柯Ouba|iveco Ouba").nil?
Column.create!(category_id: category_99.id, name: "Power Daily", en_name: "Power Daily", keyword: "依维柯Power Daily|iveco Power Daily", status: 0) if Column.find_by(name: "Power Daily", keyword: "依维柯Power Daily|iveco Power Daily").nil?
Column.create!(category_id: category_99.id, name: "Turbo Daily", en_name: "Turbo Daily", keyword: "依维柯Turbo Daily|iveco Turbo Daily", status: 0) if Column.find_by(name: "Turbo Daily", keyword: "依维柯Turbo Daily|iveco Turbo Daily").nil?
Column.create!(category_id: category_99.id, name: "Venice", en_name: "Venice", keyword: "依维柯Venice|iveco Venice", status: 0) if Column.find_by(name: "Venice", keyword: "依维柯Venice|iveco Venice").nil?
Column.create!(category_id: category_99.id, name: "跃进", en_name: "跃进", keyword: "依维柯跃进|iveco 跃进", status: 0) if Column.find_by(name: "跃进", keyword: "依维柯跃进|iveco 跃进").nil?
Column.create!(category_id: category_99.id, name: "都灵", en_name: "都灵", keyword: "依维柯都灵|iveco 都灵", status: 0) if Column.find_by(name: "都灵", keyword: "依维柯都灵|iveco 都灵").nil?
Column.create!(category_id: category_99.id, name: "康果", en_name: "康果", keyword: "依维柯康果|iveco 康果", status: 0) if Column.find_by(name: "康果", keyword: "依维柯康果|iveco 康果").nil?
Column.create!(category_id: category_99.id, name: "欧霸", en_name: "欧霸", keyword: "依维柯欧霸|iveco 欧霸", status: 0) if Column.find_by(name: "欧霸", keyword: "依维柯欧霸|iveco 欧霸").nil?
Column.create!(category_id: category_99.id, name: "永源A380", en_name: "A380", keyword: "永源A380|永源 A380", status: 0) if Column.find_by(name: "永源A380", keyword: "永源A380|永源 A380").nil?
Column.create!(category_id: category_99.id, name: "风景线", en_name: "风景线", keyword: "永源风景线|永源 风景线", status: 0) if Column.find_by(name: "风景线", keyword: "永源风景线|永源 风景线").nil?
Column.create!(category_id: category_99.id, name: "猎鹰", en_name: "猎鹰", keyword: "永源猎鹰|永源 猎鹰", status: 0) if Column.find_by(name: "猎鹰", keyword: "永源猎鹰|永源 猎鹰").nil?
Column.create!(category_id: category_99.id, name: "五星", en_name: "五星", keyword: "永源五星|永源 五星", status: 0) if Column.find_by(name: "五星", keyword: "永源五星|永源 五星").nil?
Column.create!(category_id: category_99.id, name: "庄威", en_name: "庄威", keyword: "永源庄威|永源 庄威", status: 0) if Column.find_by(name: "庄威", keyword: "永源庄威|永源 庄威").nil?
Column.create!(category_id: category_99.id, name: "E10纯电动城市客车", en_name: "E10纯电动城市客车", keyword: "宇通E10纯电动城市客车|宇通 E10纯电动城市客车", status: 0) if Column.find_by(name: "E10纯电动城市客车", keyword: "宇通E10纯电动城市客车|宇通 E10纯电动城市客车").nil?
Column.create!(category_id: category_99.id, name: "E12纯电动城市客车", en_name: "E12纯电动城市客车", keyword: "宇通E12纯电动城市客车|宇通 E12纯电动城市客车", status: 0) if Column.find_by(name: "E12纯电动城市客车", keyword: "宇通E12纯电动城市客车|宇通 E12纯电动城市客车").nil?
Column.create!(category_id: category_99.id, name: "E7纯电动城市客车", en_name: "E7纯电动城市客车", keyword: "宇通E7纯电动城市客车|宇通 E7纯电动城市客车", status: 0) if Column.find_by(name: "E7纯电动城市客车", keyword: "宇通E7纯电动城市客车|宇通 E7纯电动城市客车").nil?
Column.create!(category_id: category_99.id, name: "E8纯电动城市客车", en_name: "E8纯电动城市客车", keyword: "宇通E8纯电动城市客车|宇通 E8纯电动城市客车", status: 0) if Column.find_by(name: "E8纯电动城市客车", keyword: "宇通E8纯电动城市客车|宇通 E8纯电动城市客车").nil?
Column.create!(category_id: category_99.id, name: "ZK6115HT1Z团体客车", en_name: "ZK6115HT1Z团体客车", keyword: "宇通ZK6115HT1Z团体客车|宇通 ZK6115HT1Z团体客车", status: 0) if Column.find_by(name: "ZK6115HT1Z团体客车", keyword: "宇通ZK6115HT1Z团体客车|宇通 ZK6115HT1Z团体客车").nil?
Column.create!(category_id: category_99.id, name: "客运客车", en_name: "客运客车", keyword: "宇通客运客车|宇通 客运客车", status: 0) if Column.find_by(name: "客运客车", keyword: "宇通客运客车|宇通 客运客车").nil?
Column.create!(category_id: category_99.id, name: "御捷厢式物流车", en_name: "厢式物流车", keyword: "御捷厢式物流车|御捷 厢式物流车", status: 0) if Column.find_by(name: "御捷厢式物流车", keyword: "御捷厢式物流车|御捷 厢式物流车").nil?
Column.create!(category_id: category_99.id, name: "御捷330", en_name: "御捷330", keyword: "御捷330|御捷 御捷330", status: 0) if Column.find_by(name: "御捷330", keyword: "御捷330|御捷 御捷330").nil?
Column.create!(category_id: category_99.id, name: "游侠 X", en_name: "游侠 X", keyword: "游侠汽车游侠 X|游侠汽车 游侠 X", status: 0) if Column.find_by(name: "游侠 X", keyword: "游侠汽车游侠 X|游侠汽车 游侠 X").nil?
Column.create!(category_id: category_99.id, name: "云豹", en_name: "云豹", keyword: "云豹|云豹 云豹", status: 0) if Column.find_by(name: "云豹", keyword: "云豹|云豹 云豹").nil?
Column.create!(category_id: category_99.id, name: "亚星客车", en_name: "亚星客车", keyword: "扬州亚星客车亚星客车|扬州亚星客车 亚星客车", status: 0) if Column.find_by(name: "亚星客车", keyword: "扬州亚星客车亚星客车|扬州亚星客车 亚星客车").nil?
Column.create!(category_id: category_99.id, name: "云雀WOW", en_name: "云雀WOW", keyword: "云雀WOW|云雀 云雀WOW", status: 0) if Column.find_by(name: "云雀WOW", keyword: "云雀WOW|云雀 云雀WOW").nil?
Column.create!(category_id: category_99.id, name: "赛宝", en_name: "赛宝", keyword: "仪征赛宝|仪征 赛宝", status: 0) if Column.find_by(name: "赛宝", keyword: "仪征赛宝|仪征 赛宝").nil?
Column.create!(category_id: category_99.id, name: "友谊中巴", en_name: "友谊中巴", keyword: "友谊客车友谊中巴|友谊客车 友谊中巴", status: 0) if Column.find_by(name: "友谊中巴", keyword: "友谊客车友谊中巴|友谊客车 友谊中巴").nil?
Column.create!(category_id: category_99.id, name: "众泰大迈 X5", en_name: "大迈 X5", keyword: "众泰大迈 X5|众泰 大迈 X5", status: 0) if Column.find_by(name: "众泰大迈 X5", keyword: "众泰大迈 X5|众泰 大迈 X5").nil?
Column.create!(category_id: category_99.id, name: "江南TT", en_name: "江南TT", keyword: "众泰江南TT|众泰 江南TT", status: 0) if Column.find_by(name: "江南TT", keyword: "众泰江南TT|众泰 江南TT").nil?
Column.create!(category_id: category_99.id, name: "众泰SR7", en_name: "SR7", keyword: "众泰SR7|众泰 SR7", status: 0) if Column.find_by(name: "众泰SR7", keyword: "众泰SR7|众泰 SR7").nil?
Column.create!(category_id: category_99.id, name: "众泰T200", en_name: "T200", keyword: "众泰T200|众泰 T200", status: 0) if Column.find_by(name: "众泰T200", keyword: "众泰T200|众泰 T200").nil?
Column.create!(category_id: category_99.id, name: "众泰T600", en_name: "T600", keyword: "众泰T600|众泰 T600", status: 0) if Column.find_by(name: "众泰T600", keyword: "众泰T600|众泰 T600").nil?
Column.create!(category_id: category_99.id, name: "众泰V10", en_name: "V10", keyword: "众泰V10|众泰 V10", status: 0) if Column.find_by(name: "众泰V10", keyword: "众泰V10|众泰 V10").nil?
Column.create!(category_id: category_99.id, name: "云100", en_name: "云100", keyword: "众泰云100|众泰 云100", status: 0) if Column.find_by(name: "云100", keyword: "众泰云100|众泰 云100").nil?
Column.create!(category_id: category_99.id, name: "众泰Z100", en_name: "Z100", keyword: "众泰Z100|众泰 Z100", status: 0) if Column.find_by(name: "众泰Z100", keyword: "众泰Z100|众泰 Z100").nil?
Column.create!(category_id: category_99.id, name: "众泰Z200", en_name: "Z200", keyword: "众泰Z200|众泰 Z200", status: 0) if Column.find_by(name: "众泰Z200", keyword: "众泰Z200|众泰 Z200").nil?
Column.create!(category_id: category_99.id, name: "众泰Z200HB", en_name: "Z200HB", keyword: "众泰Z200HB|众泰 Z200HB", status: 0) if Column.find_by(name: "众泰Z200HB", keyword: "众泰Z200HB|众泰 Z200HB").nil?
Column.create!(category_id: category_99.id, name: "众泰Z300", en_name: "Z300", keyword: "众泰Z300|众泰 Z300", status: 0) if Column.find_by(name: "众泰Z300", keyword: "众泰Z300|众泰 Z300").nil?
Column.create!(category_id: category_99.id, name: "众泰Z500", en_name: "Z500", keyword: "众泰Z500|众泰 Z500", status: 0) if Column.find_by(name: "众泰Z500", keyword: "众泰Z500|众泰 Z500").nil?
Column.create!(category_id: category_99.id, name: "众泰Z700", en_name: "Z700", keyword: "众泰Z700|众泰 Z700", status: 0) if Column.find_by(name: "众泰Z700", keyword: "众泰Z700|众泰 Z700").nil?
Column.create!(category_id: category_99.id, name: "芝麻", en_name: "芝麻", keyword: "众泰芝麻|众泰 芝麻", status: 0) if Column.find_by(name: "芝麻", keyword: "众泰芝麻|众泰 芝麻").nil?
Column.create!(category_id: category_99.id, name: "众泰2008", en_name: "2008", keyword: "众泰2008|众泰 2008", status: 0) if Column.find_by(name: "众泰2008", keyword: "众泰2008|众泰 2008").nil?
Column.create!(category_id: category_99.id, name: "众泰5008", en_name: "5008", keyword: "众泰5008|众泰 5008", status: 0) if Column.find_by(name: "众泰5008", keyword: "众泰5008|众泰 5008").nil?
Column.create!(category_id: category_99.id, name: "众泰M300", en_name: "M300", keyword: "众泰M300|众泰 M300", status: 0) if Column.find_by(name: "众泰M300", keyword: "众泰M300|众泰 M300").nil?
Column.create!(category_id: category_99.id, name: "众泰E200", en_name: "E200", keyword: "众泰E200|众泰 E200", status: 0) if Column.find_by(name: "众泰E200", keyword: "众泰E200|众泰 E200").nil?
Column.create!(category_id: category_99.id, name: "中华H220", en_name: "H220", keyword: "中华H220|中华 H220", status: 0) if Column.find_by(name: "中华H220", keyword: "中华H220|中华 H220").nil?
Column.create!(category_id: category_99.id, name: "中华H230", en_name: "H230", keyword: "中华H230|中华 H230", status: 0) if Column.find_by(name: "中华H230", keyword: "中华H230|中华 H230").nil?
Column.create!(category_id: category_99.id, name: "中华H320", en_name: "H320", keyword: "中华H320|中华 H320", status: 0) if Column.find_by(name: "中华H320", keyword: "中华H320|中华 H320").nil?
Column.create!(category_id: category_99.id, name: "中华H330", en_name: "H330", keyword: "中华H330|中华 H330", status: 0) if Column.find_by(name: "中华H330", keyword: "中华H330|中华 H330").nil?
Column.create!(category_id: category_99.id, name: "中华H530", en_name: "H530", keyword: "中华H530|中华 H530", status: 0) if Column.find_by(name: "中华H530", keyword: "中华H530|中华 H530").nil?
Column.create!(category_id: category_99.id, name: "骏捷", en_name: "骏捷", keyword: "中华骏捷|中华 骏捷", status: 0) if Column.find_by(name: "骏捷", keyword: "中华骏捷|中华 骏捷").nil?
Column.create!(category_id: category_99.id, name: "骏捷Cross", en_name: "骏捷Cross", keyword: "中华骏捷Cross|中华 骏捷Cross", status: 0) if Column.find_by(name: "骏捷Cross", keyword: "中华骏捷Cross|中华 骏捷Cross").nil?
Column.create!(category_id: category_99.id, name: "骏捷FRV", en_name: "骏捷FRV", keyword: "中华骏捷FRV|中华 骏捷FRV", status: 0) if Column.find_by(name: "骏捷FRV", keyword: "中华骏捷FRV|中华 骏捷FRV").nil?
Column.create!(category_id: category_99.id, name: "骏捷FSV", en_name: "骏捷FSV", keyword: "中华骏捷FSV|中华 骏捷FSV", status: 0) if Column.find_by(name: "骏捷FSV", keyword: "中华骏捷FSV|中华 骏捷FSV").nil?
Column.create!(category_id: category_99.id, name: "骏捷Wagon", en_name: "骏捷Wagon", keyword: "中华骏捷Wagon|中华 骏捷Wagon", status: 0) if Column.find_by(name: "骏捷Wagon", keyword: "中华骏捷Wagon|中华 骏捷Wagon").nil?
Column.create!(category_id: category_99.id, name: "酷宝", en_name: "酷宝", keyword: "中华酷宝|中华 酷宝", status: 0) if Column.find_by(name: "酷宝", keyword: "中华酷宝|中华 酷宝").nil?
Column.create!(category_id: category_99.id, name: "中华V3", en_name: "V3", keyword: "中华V3|中华 V3", status: 0) if Column.find_by(name: "中华V3", keyword: "中华V3|中华 V3").nil?
Column.create!(category_id: category_99.id, name: "中华V5", en_name: "V5", keyword: "中华V5|中华 V5", status: 0) if Column.find_by(name: "中华V5", keyword: "中华V5|中华 V5").nil?
Column.create!(category_id: category_99.id, name: "尊驰", en_name: "尊驰", keyword: "中华尊驰|中华 尊驰", status: 0) if Column.find_by(name: "尊驰", keyword: "中华尊驰|中华 尊驰").nil?
Column.create!(category_id: category_99.id, name: "中华豚", en_name: "中华豚", keyword: "中华豚|中华 中华豚", status: 0) if Column.find_by(name: "中华豚", keyword: "中华豚|中华 中华豚").nil?
Column.create!(category_id: category_99.id, name: "中华EV", en_name: "中华EV", keyword: "中华EV|中华 中华EV", status: 0) if Column.find_by(name: "中华EV", keyword: "中华EV|中华 中华EV").nil?
Column.create!(category_id: category_99.id, name: "中华", en_name: "中华", keyword: "中华|中华 中华", status: 0) if Column.find_by(name: "中华", keyword: "中华|中华 中华").nil?
Column.create!(category_id: category_99.id, name: "知豆D1", en_name: "知豆D1", keyword: "知豆D1|知豆 知豆D1", status: 0) if Column.find_by(name: "知豆D1", keyword: "知豆D1|知豆 知豆D1").nil?
Column.create!(category_id: category_99.id, name: "知豆D2", en_name: "知豆D2", keyword: "知豆D2|知豆 知豆D2", status: 0) if Column.find_by(name: "知豆D2", keyword: "知豆D2|知豆 知豆D2").nil?
Column.create!(category_id: category_99.id, name: "知豆电动车", en_name: "知豆电动车", keyword: "知豆电动车|知豆 知豆电动车", status: 0) if Column.find_by(name: "知豆电动车", keyword: "知豆电动车|知豆 知豆电动车").nil?
Column.create!(category_id: category_99.id, name: "无限", en_name: "无限", keyword: "中兴无限|中兴 无限", status: 0) if Column.find_by(name: "无限", keyword: "中兴无限|中兴 无限").nil?
Column.create!(category_id: category_99.id, name: "旗舰", en_name: "旗舰", keyword: "中兴旗舰|中兴 旗舰", status: 0) if Column.find_by(name: "旗舰", keyword: "中兴旗舰|中兴 旗舰").nil?
Column.create!(category_id: category_99.id, name: "威虎G3", en_name: "威虎G3", keyword: "中兴威虎G3|中兴 威虎G3", status: 0) if Column.find_by(name: "威虎G3", keyword: "中兴威虎G3|中兴 威虎G3").nil?
Column.create!(category_id: category_99.id, name: "威虎TUV", en_name: "威虎TUV", keyword: "中兴威虎TUV|中兴 威虎TUV", status: 0) if Column.find_by(name: "威虎TUV", keyword: "中兴威虎TUV|中兴 威虎TUV").nil?
Column.create!(category_id: category_99.id, name: "小老虎", en_name: "小老虎", keyword: "中兴小老虎|中兴 小老虎", status: 0) if Column.find_by(name: "小老虎", keyword: "中兴小老虎|中兴 小老虎").nil?
Column.create!(category_id: category_99.id, name: "福星皮卡", en_name: "福星皮卡", keyword: "中兴福星皮卡|中兴 福星皮卡", status: 0) if Column.find_by(name: "福星皮卡", keyword: "中兴福星皮卡|中兴 福星皮卡").nil?
Column.create!(category_id: category_99.id, name: "田野皮卡", en_name: "田野皮卡", keyword: "中兴田野皮卡|中兴 田野皮卡", status: 0) if Column.find_by(name: "田野皮卡", keyword: "中兴田野皮卡|中兴 田野皮卡").nil?
Column.create!(category_id: category_99.id, name: "田野SUV", en_name: "田野SUV", keyword: "中兴田野SUV|中兴 田野SUV", status: 0) if Column.find_by(name: "田野SUV", keyword: "中兴田野SUV|中兴 田野SUV").nil?
Column.create!(category_id: category_99.id, name: "长铃皮卡", en_name: "长铃皮卡", keyword: "中兴长铃皮卡|中兴 长铃皮卡", status: 0) if Column.find_by(name: "长铃皮卡", keyword: "中兴长铃皮卡|中兴 长铃皮卡").nil?
Column.create!(category_id: category_99.id, name: "驰野", en_name: "驰野", keyword: "中兴驰野|中兴 驰野", status: 0) if Column.find_by(name: "驰野", keyword: "中兴驰野|中兴 驰野").nil?
Column.create!(category_id: category_99.id, name: "金狮", en_name: "金狮", keyword: "中兴金狮|中兴 金狮", status: 0) if Column.find_by(name: "金狮", keyword: "中兴金狮|中兴 金狮").nil?
Column.create!(category_id: category_99.id, name: "万禧龙", en_name: "万禧龙", keyword: "中兴万禧龙|中兴 万禧龙", status: 0) if Column.find_by(name: "万禧龙", keyword: "中兴万禧龙|中兴 万禧龙").nil?
Column.create!(category_id: category_99.id, name: "中兴福星SUV", en_name: "福星SUV", keyword: "中兴福星SUV|中兴 福星SUV", status: 0) if Column.find_by(name: "中兴福星SUV", keyword: "中兴福星SUV|中兴 福星SUV").nil?
Column.create!(category_id: category_99.id, name: "中兴海豹", en_name: "海豹", keyword: "中兴海豹|中兴 海豹", status: 0) if Column.find_by(name: "中兴海豹", keyword: "中兴海豹|中兴 海豹").nil?
Column.create!(category_id: category_99.id, name: "中兴老虎", en_name: "老虎", keyword: "中兴老虎|中兴 老虎", status: 0) if Column.find_by(name: "中兴老虎", keyword: "中兴老虎|中兴 老虎").nil?
Column.create!(category_id: category_99.id, name: "适豪", en_name: "适豪", keyword: "中欧奔驰房车适豪|中欧奔驰房车 适豪", status: 0) if Column.find_by(name: "适豪", keyword: "中欧奔驰房车适豪|中欧奔驰房车 适豪").nil?
Column.create!(category_id: category_99.id, name: "适尊", en_name: "适尊", keyword: "中欧奔驰房车适尊|中欧奔驰房车 适尊", status: 0) if Column.find_by(name: "适尊", keyword: "中欧奔驰房车适尊|中欧奔驰房车 适尊").nil?
Column.create!(category_id: category_99.id, name: "维达莱斯", en_name: "维达莱斯", keyword: "中欧奔驰房车维达莱斯|中欧奔驰房车 维达莱斯", status: 0) if Column.find_by(name: "维达莱斯", keyword: "中欧奔驰房车维达莱斯|中欧奔驰房车 维达莱斯").nil?
Column.create!(category_id: category_99.id, name: "尊铂", en_name: "尊铂", keyword: "中欧奔驰房车尊铂|中欧奔驰房车 尊铂", status: 0) if Column.find_by(name: "尊铂", keyword: "中欧奔驰房车尊铂|中欧奔驰房车 尊铂").nil?
Column.create!(category_id: category_99.id, name: "尊适", en_name: "尊适", keyword: "中欧奔驰房车尊适|中欧奔驰房车 尊适", status: 0) if Column.find_by(name: "尊适", keyword: "中欧奔驰房车尊适|中欧奔驰房车 尊适").nil?
Column.create!(category_id: category_99.id, name: "尊逸", en_name: "尊逸", keyword: "中欧奔驰房车尊逸|中欧奔驰房车 尊逸", status: 0) if Column.find_by(name: "尊逸", keyword: "中欧奔驰房车尊逸|中欧奔驰房车 尊逸").nil?
Column.create!(category_id: category_99.id, name: "尊致", en_name: "尊致", keyword: "中欧奔驰房车尊致|中欧奔驰房车 尊致", status: 0) if Column.find_by(name: "尊致", keyword: "中欧奔驰房车尊致|中欧奔驰房车 尊致").nil?
Column.create!(category_id: category_99.id, name: "商旅车", en_name: "商旅车", keyword: "浙江卡尔森商旅车|浙江卡尔森 商旅车", status: 0) if Column.find_by(name: "商旅车", keyword: "浙江卡尔森商旅车|浙江卡尔森 商旅车").nil?
Column.create!(category_id: category_99.id, name: "商务车", en_name: "商务车", keyword: "浙江卡尔森商务车|浙江卡尔森 商务车", status: 0) if Column.find_by(name: "商务车", keyword: "浙江卡尔森商务车|浙江卡尔森 商务车").nil?
Column.create!(category_id: category_99.id, name: "717微卡", en_name: "717微卡", keyword: "重汽王牌717微卡|重汽王牌 717微卡", status: 0) if Column.find_by(name: "717微卡", keyword: "重汽王牌717微卡|重汽王牌 717微卡").nil?
Column.create!(category_id: category_99.id, name: "之诺1E", en_name: "1E", keyword: "之诺1E|之诺 1E", status: 0) if Column.find_by(name: "之诺1E", keyword: "之诺1E|之诺 1E").nil?
Column.create!(category_id: category_99.id, name: "领秀客车", en_name: "领秀", keyword: "中通客车领秀客车|中通客车 领秀", status: 0) if Column.find_by(name: "领秀客车", keyword: "中通客车领秀客车|中通客车 领秀").nil?
Column.create!(category_id: category_99.id, name: "中顺MPV", en_name: "中顺MPV", keyword: "中顺MPV|中顺 中顺MPV", status: 0) if Column.find_by(name: "中顺MPV", keyword: "中顺MPV|中顺 中顺MPV").nil?
Column.create!(category_id: category_99.id, name: "中顺皮卡", en_name: "中顺皮卡", keyword: "中顺皮卡|中顺 中顺皮卡", status: 0) if Column.find_by(name: "中顺皮卡", keyword: "中顺皮卡|中顺 中顺皮卡").nil?
Column.create!(category_id: category_99.id, name: "中顺世纪", en_name: "中顺世纪", keyword: "中顺世纪|中顺 中顺世纪", status: 0) if Column.find_by(name: "中顺世纪", keyword: "中顺世纪|中顺 中顺世纪").nil?
Column.create!(category_id: category_99.id, name: "中顺SUV", en_name: "中顺SUV", keyword: "中顺SUV|中顺 中顺SUV", status: 0) if Column.find_by(name: "中顺SUV", keyword: "中顺SUV|中顺 中顺SUV").nil?
Column.create!(category_id: category_99.id, name: "超赛", en_name: "超赛", keyword: "中客华北超赛|中客华北 超赛", status: 0) if Column.find_by(name: "超赛", keyword: "中客华北超赛|中客华北 超赛").nil?
Column.create!(category_id: category_99.id, name: "华北醒狮", en_name: "华北醒狮", keyword: "中客华北华北醒狮|中客华北 华北醒狮", status: 0) if Column.find_by(name: "华北醒狮", keyword: "中客华北华北醒狮|中客华北 华北醒狮").nil?
Column.create!(category_id: category_99.id, name: "骏风", en_name: "骏风", keyword: "中客华北骏风|中客华北 骏风", status: 0) if Column.find_by(name: "骏风", keyword: "中客华北骏风|中客华北 骏风").nil?
Column.create!(category_id: category_99.id, name: "腾狮", en_name: "腾狮", keyword: "中客华北腾狮|中客华北 腾狮", status: 0) if Column.find_by(name: "腾狮", keyword: "中客华北腾狮|中客华北 腾狮").nil?
Column.create!(category_id: category_99.id, name: "阿尔特", en_name: "阿尔特", keyword: "阿尔特", status: 0) if Column.find_by(name: "阿尔特", keyword: "阿尔特").nil?
Column.create!(category_id: category_99.id, name: "比速汽车", en_name: "比速汽车", keyword: "比速汽车", status: 0) if Column.find_by(name: "比速汽车", keyword: "比速汽车").nil?
Column.create!(category_id: category_99.id, name: "北汽瑞丽", en_name: "北汽瑞丽", keyword: "北汽瑞丽", status: 0) if Column.find_by(name: "北汽瑞丽", keyword: "北汽瑞丽").nil?
Column.create!(category_id: category_99.id, name: "东风风诺", en_name: "东风风诺", keyword: "东风风诺", status: 0) if Column.find_by(name: "东风风诺", keyword: "东风风诺").nil?
Column.create!(category_id: category_99.id, name: "汉腾", en_name: "汉腾", keyword: "汉腾", status: 0) if Column.find_by(name: "汉腾", keyword: "汉腾").nil?
Column.create!(category_id: category_99.id, name: "华凯", en_name: "华凯", keyword: "华凯", status: 0) if Column.find_by(name: "华凯", keyword: "华凯").nil?
Column.create!(category_id: category_99.id, name: "LeSEE", en_name: "LeSEE", keyword: "LeSEE", status: 0) if Column.find_by(name: "LeSEE", keyword: "LeSEE").nil?
Column.create!(category_id: category_99.id, name: "SWM斯威汽车", en_name: "SWM斯威汽车", keyword: "SWM斯威汽车", status: 0) if Column.find_by(name: "SWM斯威汽车", keyword: "SWM斯威汽车").nil?
Column.create!(category_id: category_99.id, name: "WEY", en_name: "WEY", keyword: "WEY", status: 0) if Column.find_by(name: "WEY", keyword: "WEY").nil?
Column.create!(category_id: category_99.id, name: "蔚来", en_name: "蔚来", keyword: "蔚来", status: 0) if Column.find_by(name: "蔚来", keyword: "蔚来").nil?
Column.create!(category_id: category_99.id, name: "小鹏汽车", en_name: "小鹏汽车", keyword: "小鹏汽车", status: 0) if Column.find_by(name: "小鹏汽车", keyword: "小鹏汽车").nil?
Column.create!(category_id: category_99.id, name: "驭胜", en_name: "驭胜", keyword: "驭胜", status: 0) if Column.find_by(name: "驭胜", keyword: "驭胜").nil?
Column.create!(category_id: category_99.id, name: "雅宾纳", en_name: "雅宾纳", keyword: "雅宾纳", status: 0) if Column.find_by(name: "雅宾纳", keyword: "雅宾纳").nil?
Column.create!(category_id: category_99.id, name: "阿斯顿·马丁DB11", en_name: "DB11", keyword: "阿斯顿·马丁DB11|aston martin DB11", status: 0) if Column.find_by(name: "阿斯顿·马丁DB11", keyword: "阿斯顿·马丁DB11|aston martin DB11").nil?
Column.create!(category_id: category_99.id, name: "竞瑞", en_name: "gienia", keyword: "本田竞瑞|honda gienia", status: 0) if Column.find_by(name: "竞瑞", keyword: "本田竞瑞|honda gienia").nil?
Column.create!(category_id: category_99.id, name: "UR-V", en_name: "UR-V", keyword: "本田UR-V|honda UR-V", status: 0) if Column.find_by(name: "UR-V", keyword: "本田UR-V|honda UR-V").nil?
Column.create!(category_id: category_99.id, name: "冠道", en_name: "avancier", keyword: "本田冠道|honda avancier", status: 0) if Column.find_by(name: "冠道", keyword: "本田冠道|honda avancier").nil?
Column.create!(category_id: category_99.id, name: "奔驰SLC级", en_name: "SLC class ", keyword: "奔驰SLC级|mercedes SLC class ", status: 0) if Column.find_by(name: "奔驰SLC级", keyword: "奔驰SLC级|mercedes SLC class ").nil?
Column.create!(category_id: category_99.id, name: "宝马1系", en_name: "1 series", keyword: "宝马1系|bmw 1 series", status: 0) if Column.find_by(name: "宝马1系", keyword: "宝马1系|bmw 1 series").nil?
Column.create!(category_id: category_99.id, name: "宝马8系", en_name: "8 series", keyword: "宝马8系|bmw 8 series", status: 0) if Column.find_by(name: "宝马8系", keyword: "宝马8系|bmw 8 series").nil?
Column.create!(category_id: category_99.id, name: "秦EV300", en_name: "秦EV300", keyword: "比亚迪秦EV300|比亚迪 秦EV300", status: 0) if Column.find_by(name: "秦EV300", keyword: "比亚迪秦EV300|比亚迪 秦EV300").nil?
Column.create!(category_id: category_99.id, name: "宝骏510", en_name: "510", keyword: "宝骏510|宝骏 510", status: 0) if Column.find_by(name: "宝骏510", keyword: "宝骏510|宝骏 510").nil?
Column.create!(category_id: category_99.id, name: "标致4008", en_name: "4008", keyword: "标致4008|peugeot 4008", status: 0) if Column.find_by(name: "标致4008", keyword: "标致4008|peugeot 4008").nil?
Column.create!(category_id: category_99.id, name: "308S GTi", en_name: "308S GTi", keyword: "标致308S GTi|peugeot 308S GTi", status: 0) if Column.find_by(name: "308S GTi", keyword: "标致308S GTi|peugeot 308S GTi").nil?
Column.create!(category_id: category_99.id, name: "标致5008", en_name: "5008", keyword: "标致5008|peugeot 5008", status: 0) if Column.find_by(name: "标致5008", keyword: "标致5008|peugeot 5008").nil?
Column.create!(category_id: category_99.id, name: "幻速H2V", en_name: "H2V", keyword: "北汽幻速幻速H2V|北汽幻速 H2V", status: 0) if Column.find_by(name: "幻速H2V", keyword: "北汽幻速幻速H2V|北汽幻速 H2V").nil?
Column.create!(category_id: category_99.id, name: "幻速S3L", en_name: "S3L", keyword: "北汽幻速幻速S3L|北汽幻速 S3L", status: 0) if Column.find_by(name: "幻速S3L", keyword: "北汽幻速幻速S3L|北汽幻速 S3L").nil?
Column.create!(category_id: category_99.id, name: "幻速S5", en_name: "S5", keyword: "北汽幻速幻速S5|北汽幻速 S5", status: 0) if Column.find_by(name: "幻速S5", keyword: "北汽幻速幻速S5|北汽幻速 S5").nil?
Column.create!(category_id: category_99.id, name: "保时捷718", en_name: "718", keyword: "保时捷718|porsche 718", status: 0) if Column.find_by(name: "保时捷718", keyword: "保时捷718|porsche 718").nil?
Column.create!(category_id: category_99.id, name: "绅宝OffSpace概念车", en_name: "OffSpace概念车", keyword: "北汽绅宝绅宝OffSpace概念车|北汽绅宝 OffSpace概念车", status: 0) if Column.find_by(name: "绅宝OffSpace概念车", keyword: "北汽绅宝绅宝OffSpace概念车|北汽绅宝 OffSpace概念车").nil?
Column.create!(category_id: category_99.id, name: "奔腾X40", en_name: "X40", keyword: "奔腾X40|奔腾 X40", status: 0) if Column.find_by(name: "奔腾X40", keyword: "奔腾X40|奔腾 X40").nil?
Column.create!(category_id: category_99.id, name: "北汽威旺M50F", en_name: "M50F", keyword: "北汽威旺M50F|北汽威旺 M50F", status: 0) if Column.find_by(name: "北汽威旺M50F", keyword: "北汽威旺M50F|北汽威旺 M50F").nil?
Column.create!(category_id: category_99.id, name: "EX系列", en_name: "EX系列", keyword: "北汽新能源EX系列|北汽新能源 EX系列", status: 0) if Column.find_by(name: "EX系列", keyword: "北汽新能源EX系列|北汽新能源 EX系列").nil?
Column.create!(category_id: category_99.id, name: "EC系列", en_name: "EC系列", keyword: "北汽新能源EC系列|北汽新能源 EC系列", status: 0) if Column.find_by(name: "EC系列", keyword: "北汽新能源EC系列|北汽新能源 EC系列").nil?
Column.create!(category_id: category_99.id, name: "奔奔EV", en_name: "奔奔EV", keyword: "长安汽车奔奔EV|长安汽车 奔奔EV", status: 0) if Column.find_by(name: "奔奔EV", keyword: "长安汽车奔奔EV|长安汽车 奔奔EV").nil?
Column.create!(category_id: category_99.id, name: "逸动EV", en_name: "逸动EV", keyword: "长安汽车逸动EV|长安汽车 逸动EV", status: 0) if Column.find_by(name: "逸动EV", keyword: "长安汽车逸动EV|长安汽车 逸动EV").nil?
Column.create!(category_id: category_99.id, name: "长安CS95", en_name: "CS95", keyword: "长安汽车长安CS95|长安汽车 CS95", status: 0) if Column.find_by(name: "长安CS95", keyword: "长安汽车长安CS95|长安汽车 CS95").nil?
Column.create!(category_id: category_99.id, name: "长安睿行S50", en_name: "睿行S50", keyword: "长安欧尚长安睿行S50|长安欧尚 睿行S50", status: 0) if Column.find_by(name: "长安睿行S50", keyword: "长安欧尚长安睿行S50|长安欧尚 睿行S50").nil?
Column.create!(category_id: category_99.id, name: "长安星韵", en_name: "星韵", keyword: "长安欧尚长安星韵|长安欧尚 星韵", status: 0) if Column.find_by(name: "长安星韵", keyword: "长安欧尚长安星韵|长安欧尚 星韵").nil?
Column.create!(category_id: category_99.id, name: "长城C30EV", en_name: "长城C30EV", keyword: "长城C30EV|长城  长城C30EV", status: 0) if Column.find_by(name: "长城C30EV", keyword: "长城C30EV|长城  长城C30EV").nil?
Column.create!(category_id: category_99.id, name: "福瑞达K系", en_name: "福瑞达K系", keyword: "昌河福瑞达K系|昌河 福瑞达K系", status: 0) if Column.find_by(name: "福瑞达K系", keyword: "昌河福瑞达K系|昌河 福瑞达K系").nil?
Column.create!(category_id: category_99.id, name: "昌河M70", en_name: "M70", keyword: "昌河M70|昌河 M70", status: 0) if Column.find_by(name: "昌河M70", keyword: "昌河M70|昌河 M70").nil?
Column.create!(category_id: category_99.id, name: "昌河Q35", en_name: "Q35", keyword: "昌河Q35|昌河 Q35", status: 0) if Column.find_by(name: "昌河Q35", keyword: "昌河Q35|昌河 Q35").nil?
Column.create!(category_id: category_99.id, name: "长安跨越王箱式", en_name: "跨越王箱式", keyword: "长安跨越王箱式|长安跨越 跨越王箱式", status: 0) if Column.find_by(name: "长安跨越王箱式", keyword: "长安跨越王箱式|长安跨越 跨越王箱式").nil?
Column.create!(category_id: category_99.id, name: "长安新豹MINI箱式", en_name: "新豹MINI箱式", keyword: "长安跨越长安新豹MINI箱式|长安跨越 新豹MINI箱式", status: 0) if Column.find_by(name: "长安新豹MINI箱式", keyword: "长安跨越长安新豹MINI箱式|长安跨越 新豹MINI箱式").nil?
Column.create!(category_id: category_99.id, name: "Cross桑塔纳", en_name: "Cross桑塔纳", keyword: "大众Cross桑塔纳|volkswagen Cross桑塔纳", status: 0) if Column.find_by(name: "Cross桑塔纳", keyword: "大众Cross桑塔纳|volkswagen Cross桑塔纳").nil?
Column.create!(category_id: category_99.id, name: "辉昂", en_name: "PHIDEON", keyword: "大众辉昂|volkswagen PHIDEON", status: 0) if Column.find_by(name: "辉昂", keyword: "大众辉昂|volkswagen PHIDEON").nil?
Column.create!(category_id: category_99.id, name: "凌渡GTS", en_name: "凌渡GTS", keyword: "大众凌渡GTS|volkswagen 凌渡GTS", status: 0) if Column.find_by(name: "凌渡GTS", keyword: "大众凌渡GTS|volkswagen 凌渡GTS").nil?
Column.create!(category_id: category_99.id, name: "途观L", en_name: "途观L", keyword: "大众途观L|volkswagen 途观L", status: 0) if Column.find_by(name: "途观L", keyword: "大众途观L|volkswagen 途观L").nil?
Column.create!(category_id: category_99.id, name: "途昂", en_name: "TERAMONT|atlas", keyword: "大众途昂|volkswagen TERAMONT|atlas", status: 0) if Column.find_by(name: "途昂", keyword: "大众途昂|volkswagen TERAMONT|atlas").nil?
Column.create!(category_id: category_99.id, name: "蔚领", en_name: "C-TREK", keyword: "大众蔚领|volkswagen C-TREK", status: 0) if Column.find_by(name: "蔚领", keyword: "大众蔚领|volkswagen C-TREK").nil?
Column.create!(category_id: category_99.id, name: "大众Cross UP!", en_name: "Cross UP!", keyword: "大众Cross UP!|volkswagen Cross UP!", status: 0) if Column.find_by(name: "大众Cross UP!", keyword: "大众Cross UP!|volkswagen Cross UP!").nil?
Column.create!(category_id: category_99.id, name: "大众Arteon", en_name: "Arteon", keyword: "大众Arteon|volkswagen Arteon", status: 0) if Column.find_by(name: "大众Arteon", keyword: "大众Arteon|volkswagen Arteon").nil?
Column.create!(category_id: category_99.id, name: "风行SX6", en_name: "风行SX6", keyword: "东风风行风行SX6|东风风行 风行SX6", status: 0) if Column.find_by(name: "风行SX6", keyword: "东风风行风行SX6|东风风行 风行SX6").nil?
Column.create!(category_id: category_99.id, name: "全新景逸X5", en_name: "全新景逸X5", keyword: "东风风行全新景逸X5|东风风行 全新景逸X5", status: 0) if Column.find_by(name: "全新景逸X5", keyword: "东风风行全新景逸X5|东风风行 全新景逸X5").nil?
Column.create!(category_id: category_99.id, name: "S 500 EV", en_name: "S 500 EV", keyword: "东风风行S 500 EV|东风风行 S 500 EV", status: 0) if Column.find_by(name: "S 500 EV", keyword: "东风风行S 500 EV|东风风行 S 500 EV").nil?
Column.create!(category_id: category_99.id, name: "风神AX5", en_name: "风神AX5", keyword: "东风风神风神AX5|东风风神 风神AX5", status: 0) if Column.find_by(name: "风神AX5", keyword: "东风风神风神AX5|东风风神 风神AX5").nil?
Column.create!(category_id: category_99.id, name: "东南DX3", en_name: "DX3", keyword: "东南DX3|东南 DX3", status: 0) if Column.find_by(name: "东南DX3", keyword: "东南DX3|东南 DX3").nil?
Column.create!(category_id: category_99.id, name: "东风御风校车", en_name: "东风御风校车", keyword: "东风御风校车|东风御风 东风御风校车", status: 0) if Column.find_by(name: "东风御风校车", keyword: "东风御风校车|东风御风 东风御风校车").nil?
Column.create!(category_id: category_99.id, name: "风度MX5", en_name: "MX5", keyword: "东风风度风度MX5|东风风度 MX5", status: 0) if Column.find_by(name: "风度MX5", keyword: "东风风度风度MX5|东风风度 MX5").nil?
Column.create!(category_id: category_99.id, name: "YARiS L 致享", en_name: "YARiS L 致享", keyword: "丰田YARiS L 致享|toyota YARiS L 致享", status: 0) if Column.find_by(name: "YARiS L 致享", keyword: "丰田YARiS L 致享|toyota YARiS L 致享").nil?
Column.create!(category_id: category_99.id, name: "威驰FS", en_name: "Vios fs", keyword: "丰田威驰FS|toyota Vios fs", status: 0) if Column.find_by(name: "威驰FS", keyword: "丰田威驰FS|toyota Vios fs").nil?
Column.create!(category_id: category_99.id, name: "C-HR", en_name: "C-HR", keyword: "丰田C-HR|toyota C-HR", status: 0) if Column.find_by(name: "C-HR", keyword: "丰田C-HR|toyota C-HR").nil?
Column.create!(category_id: category_99.id, name: "丰田PROACE", en_name: "PROACE", keyword: "丰田PROACE|toyota PROACE", status: 0) if Column.find_by(name: "丰田PROACE", keyword: "丰田PROACE|toyota PROACE").nil?
Column.create!(category_id: category_99.id, name: "福特新全顺", en_name: "新全顺", keyword: "福特新全顺|ford 新全顺", status: 0) if Column.find_by(name: "福特新全顺", keyword: "福特新全顺|ford 新全顺").nil?
Column.create!(category_id: category_99.id, name: "福克斯RS", en_name: "focus rs", keyword: "福特福克斯RS|ford focus rs", status: 0) if Column.find_by(name: "福克斯RS", keyword: "福特福克斯RS|ford focus rs").nil?
Column.create!(category_id: category_99.id, name: "EcoSport", en_name: "EcoSport", keyword: "福特EcoSport|ford EcoSport", status: 0) if Column.find_by(name: "EcoSport", keyword: "福特EcoSport|ford EcoSport").nil?
Column.create!(category_id: category_99.id, name: "奥铃CTS", en_name: "奥铃CTS", keyword: "福田奥铃CTS|福田 奥铃CTS", status: 0) if Column.find_by(name: "奥铃CTS", keyword: "福田奥铃CTS|福田 奥铃CTS").nil?
Column.create!(category_id: category_99.id, name: "风景V3", en_name: "风景V3", keyword: "福田风景V3|福田 风景V3", status: 0) if Column.find_by(name: "风景V3", keyword: "福田风景V3|福田 风景V3").nil?
Column.create!(category_id: category_99.id, name: "风景V5", en_name: "风景V5", keyword: "福田风景V5|福田 风景V5", status: 0) if Column.find_by(name: "风景V5", keyword: "福田风景V5|福田 风景V5").nil?
Column.create!(category_id: category_99.id, name: "伽途im", en_name: "伽途im", keyword: "福田伽途im|福田 伽途im", status: 0) if Column.find_by(name: "伽途im", keyword: "福田伽途im|福田 伽途im").nil?
Column.create!(category_id: category_99.id, name: "GTC4 Lusso", en_name: "GTC4 Lusso", keyword: "法拉利GTC4 Lusso|ferrari GTC4 Lusso", status: 0) if Column.find_by(name: "GTC4 Lusso", keyword: "法拉利GTC4 Lusso|ferrari GTC4 Lusso").nil?
Column.create!(category_id: category_99.id, name: "启腾V60", en_name: "启腾V60", keyword: "福汽启腾启腾V60|福汽启腾 启腾V60", status: 0) if Column.find_by(name: "启腾V60", keyword: "福汽启腾启腾V60|福汽启腾 启腾V60").nil?
Column.create!(category_id: category_99.id, name: "传祺GS8", en_name: "GS8", keyword: "广汽传祺传祺GS8|trumpchi GS8", status: 0) if Column.find_by(name: "传祺GS8", keyword: "广汽传祺传祺GS8|trumpchi GS8").nil?
Column.create!(category_id: category_99.id, name: "传祺GS7", en_name: "GS7", keyword: "广汽传祺传祺GS7|trumpchi GS7", status: 0) if Column.find_by(name: "传祺GS7", keyword: "广汽传祺传祺GS7|trumpchi GS7").nil?
Column.create!(category_id: category_99.id, name: "观致3 GT", en_name: "观致3 GT", keyword: "观致汽车观致3 GT|qoros 观致3 GT", status: 0) if Column.find_by(name: "观致3 GT", keyword: "观致汽车观致3 GT|qoros 观致3 GT").nil?
Column.create!(category_id: category_99.id, name: "哈弗H2s", en_name: "H2s", keyword: "哈弗H2s|haval H2s", status: 0) if Column.find_by(name: "哈弗H2s", keyword: "哈弗H2s|haval H2s").nil?
Column.create!(category_id: category_99.id, name: "海马@3", en_name: "海马@3", keyword: "海马@3|海马 海马@3", status: 0) if Column.find_by(name: "海马@3", keyword: "海马@3|海马 海马@3").nil?
Column.create!(category_id: category_99.id, name: "红旗L6", en_name: "L6", keyword: "红旗L6|hongqi L6", status: 0) if Column.find_by(name: "红旗L6", keyword: "红旗L6|hongqi L6").nil?
Column.create!(category_id: category_99.id, name: "路盛E80", en_name: "路盛E80", keyword: "华泰路盛E80|华泰 路盛E80", status: 0) if Column.find_by(name: "路盛E80", keyword: "华泰路盛E80|华泰 路盛E80").nil?
Column.create!(category_id: category_99.id, name: "帝豪GL", en_name: "帝豪GL", keyword: "吉利汽车帝豪GL|geely 帝豪GL", status: 0) if Column.find_by(name: "帝豪GL", keyword: "吉利汽车帝豪GL|geely 帝豪GL").nil?
Column.create!(category_id: category_99.id, name: "远景SUV", en_name: "远景SUV", keyword: "吉利汽车远景SUV|geely 远景SUV", status: 0) if Column.find_by(name: "远景SUV", keyword: "吉利汽车远景SUV|geely 远景SUV").nil?
Column.create!(category_id: category_99.id, name: "吉利新美日", en_name: "新美日", keyword: "吉利汽车吉利新美日|geely 新美日", status: 0) if Column.find_by(name: "吉利新美日", keyword: "吉利汽车吉利新美日|geely 新美日").nil?
Column.create!(category_id: category_99.id, name: "瑞风M4", en_name: "瑞风M4", keyword: "江淮瑞风M4|江淮 瑞风M4", status: 0) if Column.find_by(name: "瑞风M4", keyword: "江淮瑞风M4|江淮 瑞风M4").nil?
Column.create!(category_id: category_99.id, name: "瑞风S2 mini", en_name: "瑞风S2 mini", keyword: "江淮瑞风S2 mini|江淮 瑞风S2 mini", status: 0) if Column.find_by(name: "瑞风S2 mini", keyword: "江淮瑞风S2 mini|江淮 瑞风S2 mini").nil?
Column.create!(category_id: category_99.id, name: "指南者", en_name: "Compass", keyword: "Jeep指南者|Jeep Compass", status: 0) if Column.find_by(name: "指南者", keyword: "Jeep指南者|Jeep Compass").nil?
Column.create!(category_id: category_99.id, name: "捷豹XFL", en_name: "XFL", keyword: "捷豹XFL|jaguar XFL", status: 0) if Column.find_by(name: "捷豹XFL", keyword: "捷豹XFL|jaguar XFL").nil?
Column.create!(category_id: category_99.id, name: "金杯快运", en_name: "金杯快运", keyword: "金杯快运|金杯 金杯快运", status: 0) if Column.find_by(name: "金杯快运", keyword: "金杯快运|金杯 金杯快运").nil?
Column.create!(category_id: category_99.id, name: "蒂阿兹", en_name: "蒂阿兹", keyword: "金杯蒂阿兹|金杯 蒂阿兹", status: 0) if Column.find_by(name: "蒂阿兹", keyword: "金杯蒂阿兹|金杯 蒂阿兹").nil?
Column.create!(category_id: category_99.id, name: "开瑞K60", en_name: "K60", keyword: "开瑞K60|开瑞 K60", status: 0) if Column.find_by(name: "开瑞K60", keyword: "开瑞K60|开瑞 K60").nil?
Column.create!(category_id: category_99.id, name: "凯翼V3", en_name: "V3", keyword: "凯翼V3|凯翼 V3", status: 0) if Column.find_by(name: "凯翼V3", keyword: "凯翼V3|凯翼 V3").nil?
Column.create!(category_id: category_99.id, name: "凯翼X5", en_name: "X5", keyword: "凯翼X5|凯翼 X5", status: 0) if Column.find_by(name: "凯翼X5", keyword: "凯翼X5|凯翼 X5").nil?
Column.create!(category_id: category_99.id, name: "卡威K150", en_name: "卡威K150", keyword: "卡威K150|卡威 卡威K150", status: 0) if Column.find_by(name: "卡威K150", keyword: "卡威K150|卡威 卡威K150").nil?
Column.create!(category_id: category_99.id, name: "全球鹰K12", en_name: "全球鹰K12", keyword: "康迪全球鹰电动汽车全球鹰K12|康迪全球鹰电动汽车 全球鹰K12", status: 0) if Column.find_by(name: "全球鹰K12", keyword: "康迪全球鹰电动汽车全球鹰K12|康迪全球鹰电动汽车 全球鹰K12").nil?
Column.create!(category_id: category_99.id, name: "全球鹰K17A", en_name: "全球鹰K17A", keyword: "康迪全球鹰电动汽车全球鹰K17A|康迪全球鹰电动汽车 全球鹰K17A", status: 0) if Column.find_by(name: "全球鹰K17A", keyword: "康迪全球鹰电动汽车全球鹰K17A|康迪全球鹰电动汽车 全球鹰K17A").nil?
Column.create!(category_id: category_99.id, name: "陆风逍遥", en_name: "逍遥", keyword: "陆风逍遥|陆风 逍遥", status: 0) if Column.find_by(name: "陆风逍遥", keyword: "陆风逍遥|陆风 逍遥").nil?
Column.create!(category_id: category_99.id, name: "全新一代发现", en_name: "discovery 5", keyword: "路虎全新一代发现|land rover discovery 5", status: 0) if Column.find_by(name: "全新一代发现", keyword: "路虎全新一代发现|land rover discovery 5").nil?
Column.create!(category_id: category_99.id, name: "猎豹CT7", en_name: "CT7", keyword: "猎豹汽车猎豹CT7|猎豹汽车 CT7", status: 0) if Column.find_by(name: "猎豹CT7", keyword: "猎豹汽车猎豹CT7|猎豹汽车 CT7").nil?
Column.create!(category_id: category_99.id, name: "猎豹C5-EV", en_name: "C5-EV", keyword: "猎豹汽车猎豹C5-EV|猎豹汽车 C5-EV", status: 0) if Column.find_by(name: "猎豹C5-EV", keyword: "猎豹汽车猎豹C5-EV|猎豹汽车 C5-EV").nil?
Column.create!(category_id: category_99.id, name: "猎豹CS9", en_name: "CS9", keyword: "猎豹汽车猎豹CS9|猎豹汽车 CS9", status: 0) if Column.find_by(name: "猎豹CS9", keyword: "猎豹汽车猎豹CS9|猎豹汽车 CS9").nil?
Column.create!(category_id: category_99.id, name: "东风雷诺科雷傲", en_name: "Koleos", keyword: "东风雷诺科雷傲|renault Koleos", status: 0) if Column.find_by(name: "东风雷诺科雷傲", keyword: "东风雷诺科雷傲|renault Koleos").nil?
Column.create!(category_id: category_99.id, name: "Centenario", en_name: "Centenario", keyword: "兰博基尼Centenario|Lamborghini Centenario", status: 0) if Column.find_by(name: "Centenario", keyword: "兰博基尼Centenario|Lamborghini Centenario").nil?
Column.create!(category_id: category_99.id, name: "力帆X80", en_name: "X80", keyword: "力帆X80|力帆 X80", status: 0) if Column.find_by(name: "力帆X80", keyword: "力帆X80|力帆 X80").nil?
Column.create!(category_id: category_99.id, name: "轩朗", en_name: "轩朗", keyword: "力帆轩朗|力帆 轩朗", status: 0) if Column.find_by(name: "轩朗", keyword: "力帆轩朗|力帆 轩朗").nil?
Column.create!(category_id: category_99.id, name: "雷丁D80", en_name: "D80", keyword: "雷丁电动雷丁D80|雷丁电动 D80", status: 0) if Column.find_by(name: "雷丁D80", keyword: "雷丁电动雷丁D80|雷丁电动 D80").nil?
Column.create!(category_id: category_99.id, name: "小骑士", en_name: "小骑士", keyword: "雷丁电动小骑士|雷丁电动 小骑士", status: 0) if Column.find_by(name: "小骑士", keyword: "雷丁电动小骑士|雷丁电动 小骑士").nil?
Column.create!(category_id: category_99.id, name: "陆地方舟J0", en_name: "J0", keyword: "陆地方舟J0|陆地方舟 J0", status: 0) if Column.find_by(name: "陆地方舟J0", keyword: "陆地方舟J0|陆地方舟 J0").nil?
Column.create!(category_id: category_99.id, name: "劲玛", en_name: "劲玛", keyword: "陆地方舟劲玛|陆地方舟 劲玛", status: 0) if Column.find_by(name: "劲玛", keyword: "陆地方舟劲玛|陆地方舟 劲玛").nil?
Column.create!(category_id: category_99.id, name: "MG ZS", en_name: "MG ZS", keyword: "MG ZS|MG MG ZS", status: 0) if Column.find_by(name: "MG ZS", keyword: "MG ZS|MG MG ZS").nil?
Column.create!(category_id: category_99.id, name: "迈凯伦570GT", en_name: "570GT", keyword: "迈凯伦570GT|mclaren 570GT", status: 0) if Column.find_by(name: "迈凯伦570GT", keyword: "迈凯伦570GT|mclaren 570GT").nil?
Column.create!(category_id: category_99.id, name: "讴歌CDX", en_name: "CDX", keyword: "讴歌CDX|acura CDX", status: 0) if Column.find_by(name: "讴歌CDX", keyword: "讴歌CDX|acura CDX").nil?
Column.create!(category_id: category_99.id, name: "起亚KX7", en_name: "KX7", keyword: "起亚KX7|kia KX7", status: 0) if Column.find_by(name: "起亚KX7", keyword: "起亚KX7|kia KX7").nil?
Column.create!(category_id: category_99.id, name: "极睿", en_name: "极睿", keyword: "起亚极睿|kia 极睿", status: 0) if Column.find_by(name: "极睿", keyword: "起亚极睿|kia 极睿").nil?
Column.create!(category_id: category_99.id, name: "艾瑞泽7e", en_name: "艾瑞泽7e", keyword: "奇瑞艾瑞泽7e|奇瑞 艾瑞泽7e", status: 0) if Column.find_by(name: "艾瑞泽7e", keyword: "奇瑞艾瑞泽7e|奇瑞 艾瑞泽7e").nil?
Column.create!(category_id: category_99.id, name: "瑞虎3x", en_name: "瑞虎3x", keyword: "奇瑞瑞虎3x|奇瑞 瑞虎3x", status: 0) if Column.find_by(name: "瑞虎3x", keyword: "奇瑞瑞虎3x|奇瑞 瑞虎3x").nil?
Column.create!(category_id: category_99.id, name: "瑞虎9", en_name: "瑞虎9", keyword: "奇瑞瑞虎9|奇瑞 瑞虎9", status: 0) if Column.find_by(name: "瑞虎9", keyword: "奇瑞瑞虎9|奇瑞 瑞虎9").nil?
Column.create!(category_id: category_99.id, name: "S15EV", en_name: "S15EV", keyword: "奇瑞S15EV|奇瑞 S15EV", status: 0) if Column.find_by(name: "S15EV", keyword: "奇瑞S15EV|奇瑞 S15EV").nil?
Column.create!(category_id: category_99.id, name: "启辰T90", en_name: "T90", keyword: "启辰T90|启辰 T90", status: 0) if Column.find_by(name: "启辰T90", keyword: "启辰T90|启辰 T90").nil?
Column.create!(category_id: category_99.id, name: "战剑", en_name: "战剑", keyword: "乔治·巴顿战剑|乔治·巴顿 战剑", status: 0) if Column.find_by(name: "战剑", keyword: "乔治·巴顿战剑|乔治·巴顿 战剑").nil?
Column.create!(category_id: category_99.id, name: "探路者Pathfinder", en_name: "Pathfinder", keyword: "日产探路者Pathfinder|nissan Pathfinder", status: 0) if Column.find_by(name: "探路者Pathfinder", keyword: "日产探路者Pathfinder|nissan Pathfinder").nil?
Column.create!(category_id: category_99.id, name: "IDS概念车", en_name: "IDS概念车", keyword: "日产IDS概念车|nissan IDS概念车", status: 0) if Column.find_by(name: "IDS概念车", keyword: "日产IDS概念车|nissan IDS概念车").nil?
Column.create!(category_id: category_99.id, name: "荣威eRX5", en_name: "eRX5", keyword: "荣威eRX5|roewe eRX5", status: 0) if Column.find_by(name: "荣威eRX5", keyword: "荣威eRX5|roewe eRX5").nil?
Column.create!(category_id: category_99.id, name: "荣威RX5", en_name: "RX5", keyword: "荣威RX5|roewe RX5", status: 0) if Column.find_by(name: "荣威RX5", keyword: "荣威RX5|roewe RX5").nil?
Column.create!(category_id: category_99.id, name: "荣威ei6", en_name: "ei6", keyword: "荣威ei6|roewe ei6", status: 0) if Column.find_by(name: "荣威ei6", keyword: "荣威ei6|roewe ei6").nil?
Column.create!(category_id: category_99.id, name: "荣威i6", en_name: "i6", keyword: "荣威i6|roewe i6", status: 0) if Column.find_by(name: "荣威i6", keyword: "荣威i6|roewe i6").nil?
Column.create!(category_id: category_99.id, name: "柯迪亚克", en_name: "KODIAQ", keyword: "斯柯达柯迪亚克|skoda KODIAQ", status: 0) if Column.find_by(name: "柯迪亚克", keyword: "斯柯达柯迪亚克|skoda KODIAQ").nil?
Column.create!(category_id: category_99.id, name: "欧蓝德", en_name: "outlander", keyword: "三菱欧蓝德|mitsubishi outlander", status: 0) if Column.find_by(name: "欧蓝德", keyword: "三菱欧蓝德|mitsubishi outlander").nil?
Column.create!(category_id: category_99.id, name: "上汽大通MAXUS T60", en_name: "T60", keyword: "上汽大通MAXUS T60|上汽大通 T60", status: 0) if Column.find_by(name: "上汽大通MAXUS T60", keyword: "上汽大通MAXUS T60|上汽大通 T60").nil?
Column.create!(category_id: category_99.id, name: "上汽大通MAXUS D90", en_name: "D90", keyword: "上汽大通MAXUS D90|上汽大通 D90", status: 0) if Column.find_by(name: "上汽大通MAXUS D90", keyword: "上汽大通MAXUS D90|上汽大通 D90").nil?
Column.create!(category_id: category_99.id, name: "途凌", en_name: "途凌", keyword: "双龙途凌|ssangyong 途凌", status: 0) if Column.find_by(name: "途凌", keyword: "双龙途凌|ssangyong 途凌").nil?
Column.create!(category_id: category_99.id, name: "五菱之光V", en_name: "五菱之光V", keyword: "五菱之光V|五菱 五菱之光V", status: 0) if Column.find_by(name: "五菱之光V", keyword: "五菱之光V|五菱 五菱之光V").nil?
Column.create!(category_id: category_99.id, name: "沃尔沃S90长轴版", en_name: "S90 l", keyword: "沃尔沃S90长轴版|volvo S90 l", status: 0) if Column.find_by(name: "沃尔沃S90长轴版", keyword: "沃尔沃S90长轴版|volvo S90 l").nil?
Column.create!(category_id: category_99.id, name: "英致G5", en_name: "英致G5", keyword: "潍柴英致英致G5|潍柴英致 英致G5", status: 0) if Column.find_by(name: "英致G5", keyword: "潍柴英致英致G5|潍柴英致 英致G5").nil?
Column.create!(category_id: category_99.id, name: "悦纳", en_name: "悦纳", keyword: "现代悦纳|hyundai 悦纳", status: 0) if Column.find_by(name: "悦纳", keyword: "现代悦纳|hyundai 悦纳").nil?
Column.create!(category_id: category_99.id, name: "悦纳RV", en_name: "悦纳RV", keyword: "现代悦纳RV|hyundai 悦纳RV", status: 0) if Column.find_by(name: "悦纳RV", keyword: "现代悦纳RV|hyundai 悦纳RV").nil?
Column.create!(category_id: category_99.id, name: "IONIQ", en_name: "IONIQ", keyword: "现代IONIQ|hyundai IONIQ", status: 0) if Column.find_by(name: "IONIQ", keyword: "现代IONIQ|hyundai IONIQ").nil?
Column.create!(category_id: category_99.id, name: "科沃兹", en_name: "cavalier", keyword: "雪佛兰科沃兹|Chevrolet cavalier", status: 0) if Column.find_by(name: "科沃兹", keyword: "雪佛兰科沃兹|Chevrolet cavalier").nil?
Column.create!(category_id: category_99.id, name: "探界者", en_name: "Equinox", keyword: "雪佛兰探界者|Chevrolet Equinox", status: 0) if Column.find_by(name: "探界者", keyword: "雪佛兰探界者|Chevrolet Equinox").nil?
Column.create!(category_id: category_99.id, name: "库罗德", en_name: "库罗德", keyword: "雪佛兰库罗德|Chevrolet 库罗德", status: 0) if Column.find_by(name: "库罗德", keyword: "雪佛兰库罗德|Chevrolet 库罗德").nil?
Column.create!(category_id: category_99.id, name: "索罗德", en_name: "索罗德", keyword: "雪佛兰索罗德|Chevrolet 索罗德", status: 0) if Column.find_by(name: "索罗德", keyword: "雪佛兰索罗德|Chevrolet 索罗德").nil?
Column.create!(category_id: category_99.id, name: "雪佛兰Equinox", en_name: "Equinox", keyword: "雪佛兰Equinox|Chevrolet Equinox", status: 0) if Column.find_by(name: "雪佛兰Equinox", keyword: "雪佛兰Equinox|Chevrolet Equinox").nil?
Column.create!(category_id: category_99.id, name: "雪铁龙C6", en_name: "C6", keyword: "雪铁龙C6|citroen C6", status: 0) if Column.find_by(name: "雪铁龙C6", keyword: "雪铁龙C6|citroen C6").nil?
Column.create!(category_id: category_99.id, name: "爱丽舍电动版", en_name: "爱丽舍电动版", keyword: "雪铁龙爱丽舍电动版|citroen 爱丽舍电动版", status: 0) if Column.find_by(name: "爱丽舍电动版", keyword: "雪铁龙爱丽舍电动版|citroen 爱丽舍电动版").nil?
Column.create!(category_id: category_99.id, name: "新凯V级", en_name: "V级", keyword: "新凯V级|新凯 V级", status: 0) if Column.find_by(name: "新凯V级", keyword: "新凯V级|新凯 V级").nil?
Column.create!(category_id: category_99.id, name: "野马T80", en_name: "野马T80", keyword: "野马汽车野马T80|野马汽车 野马T80", status: 0) if Column.find_by(name: "野马T80", keyword: "野马汽车野马T80|野马汽车 野马T80").nil?
Column.create!(category_id: category_99.id, name: "VISION概念车", en_name: "VISION概念车", keyword: "依维柯VISION概念车|iveco VISION概念车", status: 0) if Column.find_by(name: "VISION概念车", keyword: "依维柯VISION概念车|iveco VISION概念车").nil?
Column.create!(category_id: category_99.id, name: "H8插电式城市客车", en_name: "H8插电式城市客车", keyword: "宇通H8插电式城市客车|宇通 H8插电式城市客车", status: 0) if Column.find_by(name: "H8插电式城市客车", keyword: "宇通H8插电式城市客车|宇通 H8插电式城市客车").nil?
Column.create!(category_id: category_99.id, name: "T7高档公商务车", en_name: "T7高档公商务车", keyword: "宇通T7高档公商务车|宇通 T7高档公商务车", status: 0) if Column.find_by(name: "T7高档公商务车", keyword: "宇通T7高档公商务车|宇通 T7高档公商务车").nil?
Column.create!(category_id: category_99.id, name: "众泰SR9", en_name: "SR9", keyword: "众泰SR9|众泰 SR9", status: 0) if Column.find_by(name: "众泰SR9", keyword: "众泰SR9|众泰 SR9").nil?
Column.create!(category_id: category_99.id, name: "大迈 X7", en_name: "大迈 X7", keyword: "众泰大迈 X7|众泰 大迈 X7", status: 0) if Column.find_by(name: "大迈 X7", keyword: "众泰大迈 X7|众泰 大迈 X7").nil?
Column.create!(category_id: category_99.id, name: "众泰T700", en_name: "T700", keyword: "众泰T700|众泰 T700", status: 0) if Column.find_by(name: "众泰T700", keyword: "众泰T700|众泰 T700").nil?
Column.create!(category_id: category_99.id, name: "领主", en_name: "领主", keyword: "中兴领主|中兴 领主", status: 0) if Column.find_by(name: "领主", keyword: "中兴领主|中兴 领主").nil?
Column.create!(category_id: category_99.id, name: "威虎新TUV", en_name: "威虎新TUV", keyword: "中兴威虎新TUV|中兴 威虎新TUV", status: 0) if Column.find_by(name: "威虎新TUV", keyword: "中兴威虎新TUV|中兴 威虎新TUV").nil?
Column.create!(category_id: category_99.id, name: "麦坦威", en_name: "麦坦威", keyword: "中欧奔驰房车麦坦威|中欧奔驰房车 麦坦威", status: 0) if Column.find_by(name: "麦坦威", keyword: "中欧奔驰房车麦坦威|中欧奔驰房车 麦坦威").nil?
Column.create!(category_id: category_99.id, name: "维莱德", en_name: "维莱德", keyword: "中欧奔驰房车维莱德|中欧奔驰房车 维莱德", status: 0) if Column.find_by(name: "维莱德", keyword: "中欧奔驰房车维莱德|中欧奔驰房车 维莱德").nil?
Column.create!(category_id: category_99.id, name: "之诺60H", en_name: "60H", keyword: "之诺60H|之诺 60H", status: 0) if Column.find_by(name: "之诺60H", keyword: "之诺60H|之诺 60H").nil?
Column.create!(category_id: category_99.id, name: "卡尔曼", en_name: "卡尔曼", keyword: "阿尔特卡尔曼|阿尔特 卡尔曼", status: 0) if Column.find_by(name: "卡尔曼", keyword: "阿尔特卡尔曼|阿尔特 卡尔曼").nil?
Column.create!(category_id: category_99.id, name: "比速M3", en_name: "M3", keyword: "比速汽车比速M3|比速汽车 M3", status: 0) if Column.find_by(name: "比速M3", keyword: "比速汽车比速M3|比速汽车 M3").nil?
Column.create!(category_id: category_99.id, name: "比速T3", en_name: "T3", keyword: "比速汽车比速T3|比速汽车 T3", status: 0) if Column.find_by(name: "比速T3", keyword: "比速汽车比速T3|比速汽车 T3").nil?
Column.create!(category_id: category_99.id, name: "道达V8", en_name: "V8", keyword: "北汽瑞丽道达V8|北汽瑞丽 V8", status: 0) if Column.find_by(name: "道达V8", keyword: "北汽瑞丽道达V8|北汽瑞丽 V8").nil?
Column.create!(category_id: category_99.id, name: "风诺E300", en_name: "E300", keyword: "东风风诺风诺E300|东风风诺 E300", status: 0) if Column.find_by(name: "风诺E300", keyword: "东风风诺风诺E300|东风风诺 E300").nil?
Column.create!(category_id: category_99.id, name: "汉腾X7", en_name: "汉腾X7", keyword: "汉腾X7|汉腾 汉腾X7", status: 0) if Column.find_by(name: "汉腾X7", keyword: "汉腾X7|汉腾 汉腾X7").nil?
Column.create!(category_id: category_99.id, name: "汉腾X5", en_name: "汉腾X5", keyword: "汉腾X5|汉腾 汉腾X5", status: 0) if Column.find_by(name: "汉腾X5", keyword: "汉腾X5|汉腾 汉腾X5").nil?
Column.create!(category_id: category_99.id, name: "华凯皮卡", en_name: "华凯皮卡", keyword: "华凯皮卡|华凯 华凯皮卡", status: 0) if Column.find_by(name: "华凯皮卡", keyword: "华凯皮卡|华凯 华凯皮卡").nil?
Column.create!(category_id: category_99.id, name: "LeSEE", en_name: "LeSEE", keyword: "LeSEE|LeSEE LeSEE", status: 0) if Column.find_by(name: "LeSEE", keyword: "LeSEE|LeSEE LeSEE").nil?
Column.create!(category_id: category_99.id, name: "SWM斯威X7", en_name: "SWM斯威X7", keyword: "SWM斯威汽车SWM斯威X7|SWM斯威汽车 SWM斯威X7", status: 0) if Column.find_by(name: "SWM斯威X7", keyword: "SWM斯威汽车SWM斯威X7|SWM斯威汽车 SWM斯威X7").nil?
Column.create!(category_id: category_99.id, name: "VV7", en_name: "VV7", keyword: "WEYVV7|WEY VV7", status: 0) if Column.find_by(name: "VV7", keyword: "WEYVV7|WEY VV7").nil?
Column.create!(category_id: category_99.id, name: "VV5", en_name: "VV5", keyword: "WEYVV5|WEY VV5", status: 0) if Column.find_by(name: "VV5", keyword: "WEYVV5|WEY VV5").nil?
Column.create!(category_id: category_99.id, name: "EP9", en_name: "EP9", keyword: "蔚来EP9|蔚来 EP9", status: 0) if Column.find_by(name: "EP9", keyword: "蔚来EP9|蔚来 EP9").nil?
Column.create!(category_id: category_99.id, name: "小鹏汽车", en_name: "小鹏汽车", keyword: "小鹏汽车|小鹏汽车 小鹏汽车", status: 0) if Column.find_by(name: "小鹏汽车", keyword: "小鹏汽车|小鹏汽车 小鹏汽车").nil?
Column.create!(category_id: category_99.id, name: "驭胜S330", en_name: "驭胜S330", keyword: "驭胜S330|驭胜 驭胜S330", status: 0) if Column.find_by(name: "驭胜S330", keyword: "驭胜S330|驭胜 驭胜S330").nil?
Column.create!(category_id: category_99.id, name: "ALPINA B4 BITURBO", en_name: "ALPINA B4 BITURBO", keyword: "雅宾纳ALPINA B4 BITURBO|雅宾纳 ALPINA B4 BITURBO", status: 0) if Column.find_by(name: "ALPINA B4 BITURBO", keyword: "雅宾纳ALPINA B4 BITURBO|雅宾纳 ALPINA B4 BITURBO").nil?
Column.create!(category_id: category_99.id, name: "阿尔法·罗密欧Giulia", en_name: "Giulia", keyword: "阿尔法·罗密欧Giulia|alfa romeo Giulia", status: 0) if Column.find_by(name: "阿尔法·罗密欧Giulia", keyword: "阿尔法·罗密欧Giulia|alfa romeo Giulia").nil?
Column.create!(category_id: category_99.id, name: "阿尔法·罗密欧Stelvio", en_name: "Stelvio", keyword: "阿尔法·罗密欧Stelvio|alfa romeo Stelvio", status: 0) if Column.find_by(name: "阿尔法·罗密欧Stelvio", keyword: "阿尔法·罗密欧Stelvio|alfa romeo Stelvio").nil?
Column.create!(category_id: category_99.id, name: "VELITE 5", en_name: "VELITE 5", keyword: "别克VELITE 5|buick VELITE 5", status: 0) if Column.find_by(name: "VELITE 5", keyword: "别克VELITE 5|buick VELITE 5").nil?
Column.create!(category_id: category_99.id, name: "迈巴赫G级", en_name: "mayback g class", keyword: "奔驰迈巴赫G级|mercedes mayback g class", status: 0) if Column.find_by(name: "迈巴赫G级", keyword: "奔驰迈巴赫G级|mercedes mayback g class").nil?
Column.create!(category_id: category_99.id, name: "宋DM", en_name: "宋DM", keyword: "比亚迪宋DM|比亚迪 宋DM", status: 0) if Column.find_by(name: "宋DM", keyword: "比亚迪宋DM|比亚迪 宋DM").nil?
Column.create!(category_id: category_99.id, name: "宝骏310 Wagon", en_name: "310 Wagon", keyword: "宝骏310 Wagon|宝骏 310 Wagon", status: 0) if Column.find_by(name: "宝骏310 Wagon", keyword: "宝骏310 Wagon|宝骏 310 Wagon").nil?
Column.create!(category_id: category_99.id, name: "标致5008", en_name: "5008", keyword: "标致5008|peugeot 5008", status: 0) if Column.find_by(name: "标致5008", keyword: "标致5008|peugeot 5008").nil?
Column.create!(category_id: category_99.id, name: "幻速H5", en_name: "H5", keyword: "北汽幻速幻速H5|北汽幻速 H5", status: 0) if Column.find_by(name: "幻速H5", keyword: "北汽幻速幻速H5|北汽幻速 H5").nil?
Column.create!(category_id: category_99.id, name: "EH系列", en_name: "EH系列", keyword: "北汽新能源EH系列|北汽新能源 EH系列", status: 0) if Column.find_by(name: "EH系列", keyword: "北汽新能源EH系列|北汽新能源 EH系列").nil?
Column.create!(category_id: category_99.id, name: "凌轩", en_name: "凌轩", keyword: "长安汽车凌轩|长安汽车 凌轩", status: 0) if Column.find_by(name: "凌轩", keyword: "长安汽车凌轩|长安汽车 凌轩").nil?
Column.create!(category_id: category_99.id, name: "长安欧尚A800", en_name: "欧尚A800", keyword: "长安欧尚A800|长安欧尚 欧尚A800", status: 0) if Column.find_by(name: "长安欧尚A800", keyword: "长安欧尚A800|长安欧尚 欧尚A800").nil?
Column.create!(category_id: category_99.id, name: "景逸X6", en_name: "景逸X6", keyword: "东风风行景逸X6|东风风行 景逸X6", status: 0) if Column.find_by(name: "景逸X6", keyword: "东风风行景逸X6|东风风行 景逸X6").nil?
Column.create!(category_id: category_99.id, name: "DS7", en_name: "DS7", keyword: "DS7|DS DS7", status: 0) if Column.find_by(name: "DS7", keyword: "DS7|DS DS7").nil?
Column.create!(category_id: category_99.id, name: "小康K05S", en_name: "K05S", keyword: "东风小康小康K05S|东风小康 K05S", status: 0) if Column.find_by(name: "小康K05S", keyword: "东风小康小康K05S|东风小康 K05S").nil?
Column.create!(category_id: category_99.id, name: "纳瓦拉", en_name: "纳瓦拉", keyword: "东风·郑州日产纳瓦拉|东风·郑州日产 纳瓦拉", status: 0) if Column.find_by(name: "纳瓦拉", keyword: "东风·郑州日产纳瓦拉|东风·郑州日产 纳瓦拉").nil?
Column.create!(category_id: category_99.id, name: "风神AX4", en_name: "风神AX4", keyword: "东风风度风神AX4|东风风度 风神AX4", status: 0) if Column.find_by(name: "风神AX4", keyword: "东风风度风神AX4|东风风度 风神AX4").nil?
Column.create!(category_id: category_99.id, name: "MX3", en_name: "MX3", keyword: "东风风度MX3|东风风度 MX3", status: 0) if Column.find_by(name: "MX3", keyword: "东风风度MX3|东风风度 MX3").nil?
Column.create!(category_id: category_99.id, name: "812 Superfast", en_name: "812 Superfast", keyword: "法拉利812 Superfast|ferrari 812 Superfast", status: 0) if Column.find_by(name: "812 Superfast", keyword: "法拉利812 Superfast|ferrari 812 Superfast").nil?
Column.create!(category_id: category_99.id, name: "传祺GE3", en_name: "GE3", keyword: "广汽传祺传祺GE3|trumpchi GE3", status: 0) if Column.find_by(name: "传祺GE3", keyword: "广汽传祺传祺GE3|trumpchi GE3").nil?
Column.create!(category_id: category_99.id, name: "祺智PHEV", en_name: "祺智PHEV", keyword: "广汽传祺祺智PHEV|trumpchi 祺智PHEV", status: 0) if Column.find_by(name: "祺智PHEV", keyword: "广汽传祺祺智PHEV|trumpchi 祺智PHEV").nil?
Column.create!(category_id: category_99.id, name: "红旗H5", en_name: "H5", keyword: "红旗H5|hongqi H5", status: 0) if Column.find_by(name: "红旗H5", keyword: "红旗H5|hongqi H5").nil?
Column.create!(category_id: category_99.id, name: "路盛WS55", en_name: "路盛WS55", keyword: "华泰路盛WS55|华泰 路盛WS55", status: 0) if Column.find_by(name: "路盛WS55", keyword: "华泰路盛WS55|华泰 路盛WS55").nil?
Column.create!(category_id: category_99.id, name: "黄海N3", en_name: "黄海N3", keyword: "黄海N3|黄海 黄海N3", status: 0) if Column.find_by(name: "黄海N3", keyword: "黄海N3|黄海 黄海N3").nil?
Column.create!(category_id: category_99.id, name: "华泰新能源EV160", en_name: "华泰新能源EV160", keyword: "华泰新能源EV160|华泰新能源 华泰新能源EV160", status: 0) if Column.find_by(name: "华泰新能源EV160", keyword: "华泰新能源EV160|华泰新能源 华泰新能源EV160").nil?
Column.create!(category_id: category_99.id, name: "远景X1", en_name: "远景X1", keyword: "吉利汽车远景X1|geely 远景X1", status: 0) if Column.find_by(name: "远景X1", keyword: "吉利汽车远景X1|geely 远景X1").nil?
Column.create!(category_id: category_99.id, name: "江淮iEV6E", en_name: "iEV6E", keyword: "江淮iEV6E|江淮 iEV6E", status: 0) if Column.find_by(name: "江淮iEV6E", keyword: "江淮iEV6E|江淮 iEV6E").nil?
Column.create!(category_id: category_99.id, name: "帅铃V6", en_name: "帅铃V6", keyword: "江淮帅铃V6|江淮 帅铃V6", status: 0) if Column.find_by(name: "帅铃V6", keyword: "江淮帅铃V6|江淮 帅铃V6").nil?
Column.create!(category_id: category_99.id, name: "瑞风S7", en_name: "瑞风S7", keyword: "江淮瑞风S7|江淮 瑞风S7", status: 0) if Column.find_by(name: "瑞风S7", keyword: "江淮瑞风S7|江淮 瑞风S7").nil?
Column.create!(category_id: category_99.id, name: "特顺", en_name: "特顺", keyword: "江铃特顺|江铃 特顺", status: 0) if Column.find_by(name: "特顺", keyword: "江铃特顺|江铃 特顺").nil?
Column.create!(category_id: category_99.id, name: "金杯F50", en_name: "金杯F50", keyword: "金杯F50|金杯 金杯F50", status: 0) if Column.find_by(name: "金杯F50", keyword: "金杯F50|金杯 金杯F50").nil?
Column.create!(category_id: category_99.id, name: "T50", en_name: "T50", keyword: "金杯T50|金杯 T50", status: 0) if Column.find_by(name: "T50", keyword: "金杯T50|金杯 T50").nil?
Column.create!(category_id: category_99.id, name: "T52", en_name: "T52", keyword: "金杯T52|金杯 T52", status: 0) if Column.find_by(name: "T52", keyword: "金杯T52|金杯 T52").nil?
Column.create!(category_id: category_99.id, name: "金杯S70", en_name: "金杯S70", keyword: "金杯S70|金杯 金杯S70", status: 0) if Column.find_by(name: "金杯S70", keyword: "金杯S70|金杯 金杯S70").nil?
Column.create!(category_id: category_99.id, name: "陆风X2", en_name: "X2", keyword: "陆风X2|陆风 X2", status: 0) if Column.find_by(name: "陆风X2", keyword: "陆风X2|陆风 X2").nil?
Column.create!(category_id: category_99.id, name: "骁途", en_name: "骁途", keyword: "铃木骁途|suzuki 骁途", status: 0) if Column.find_by(name: "骁途", keyword: "铃木骁途|suzuki 骁途").nil?
Column.create!(category_id: category_99.id, name: "揽胜星脉", en_name: "Velar", keyword: "路虎揽胜星脉|range rover Velar", status: 0) if Column.find_by(name: "揽胜星脉", keyword: "路虎揽胜星脉|range rover Velar").nil?
Column.create!(category_id: category_99.id, name: "迈凯伦720S", en_name: "720S", keyword: "迈凯伦720S|mclaren 720S", status: 0) if Column.find_by(name: "迈凯伦720S", keyword: "迈凯伦720S|mclaren 720S").nil?
Column.create!(category_id: category_99.id, name: "优5//炫5 SUV", en_name: "优5//炫5 SUV", keyword: "纳智捷优5//炫5 SUV|Luxgen 优5//炫5 SUV", status: 0) if Column.find_by(name: "优5//炫5 SUV", keyword: "纳智捷优5//炫5 SUV|Luxgen 优5//炫5 SUV").nil?
Column.create!(category_id: category_99.id, name: "焕驰", en_name: "焕驰", keyword: "起亚焕驰|kia 焕驰", status: 0) if Column.find_by(name: "焕驰", keyword: "起亚焕驰|kia 焕驰").nil?
Column.create!(category_id: category_99.id, name: "起亚K2 CROSS", en_name: "起亚K2 CROSS", keyword: "起亚K2 CROSS|kia 起亚K2 CROSS", status: 0) if Column.find_by(name: "起亚K2 CROSS", keyword: "起亚K2 CROSS|kia 起亚K2 CROSS").nil?
Column.create!(category_id: category_99.id, name: "奇瑞小蚂蚁（eQ1）", en_name: "奇瑞小蚂蚁（eQ1）", keyword: "奇瑞小蚂蚁（eQ1）|奇瑞 奇瑞小蚂蚁（eQ1）", status: 0) if Column.find_by(name: "奇瑞小蚂蚁（eQ1）", keyword: "奇瑞小蚂蚁（eQ1）|奇瑞 奇瑞小蚂蚁（eQ1）").nil?
Column.create!(category_id: category_99.id, name: "启辰M50V", en_name: "启辰M50V", keyword: "启辰M50V|启辰 启辰M50V", status: 0) if Column.find_by(name: "启辰M50V", keyword: "启辰M50V|启辰 启辰M50V").nil?
Column.create!(category_id: category_99.id, name: "劲客", en_name: "劲客", keyword: "日产劲客|nissan 劲客", status: 0) if Column.find_by(name: "劲客", keyword: "日产劲客|nissan 劲客").nil?
Column.create!(category_id: category_99.id, name: "明锐旅行车", en_name: "明锐旅行车", keyword: "斯柯达明锐旅行车|skoda 明锐旅行车", status: 0) if Column.find_by(name: "明锐旅行车", keyword: "斯柯达明锐旅行车|skoda 明锐旅行车").nil?
Column.create!(category_id: category_99.id, name: "KAROQ", en_name: "KAROQ", keyword: "斯柯达KAROQ|skoda KAROQ", status: 0) if Column.find_by(name: "KAROQ", keyword: "斯柯达KAROQ|skoda KAROQ").nil?
Column.create!(category_id: category_99.id, name: "五菱宏光S3", en_name: "五菱宏光S3", keyword: "五菱宏光S3|五菱 五菱宏光S3", status: 0) if Column.find_by(name: "五菱宏光S3", keyword: "五菱宏光S3|五菱 五菱宏光S3").nil?
Column.create!(category_id: category_99.id, name: "V90 Cross Country", en_name: "V90 Cross Country", keyword: "沃尔沃V90 Cross Country|volvo V90 Cross Country", status: 0) if Column.find_by(name: "V90 Cross Country", keyword: "沃尔沃V90 Cross Country|volvo V90 Cross Country").nil?
Column.create!(category_id: category_99.id, name: "天逸C5 Aircross", en_name: "C5 Aircross", keyword: "雪铁龙天逸C5 Aircross|citroen C5 Aircross", status: 0) if Column.find_by(name: "天逸C5 Aircross", keyword: "雪铁龙天逸C5 Aircross|citroen C5 Aircross").nil?
Column.create!(category_id: category_99.id, name: "骏派A50", en_name: "骏派A50", keyword: "一汽骏派A50|一汽 骏派A50", status: 0) if Column.find_by(name: "骏派A50", keyword: "一汽骏派A50|一汽 骏派A50").nil?
Column.create!(category_id: category_99.id, name: "骏派A70E", en_name: "骏派A70E", keyword: "一汽骏派A70E|一汽 骏派A70E", status: 0) if Column.find_by(name: "骏派A70E", keyword: "一汽骏派A70E|一汽 骏派A70E").nil?
Column.create!(category_id: category_99.id, name: "骏派CX65", en_name: "骏派CX65", keyword: "一汽骏派CX65|一汽 骏派CX65", status: 0) if Column.find_by(name: "骏派CX65", keyword: "一汽骏派CX65|一汽 骏派CX65").nil?
Column.create!(category_id: category_99.id, name: "野马M70", en_name: "野马M70", keyword: "野马汽车野马M70|野马汽车 野马M70", status: 0) if Column.find_by(name: "野马M70", keyword: "野马汽车野马M70|野马汽车 野马M70").nil?
Column.create!(category_id: category_99.id, name: "欧辉专用客车", en_name: "欧辉专用客车", keyword: "宇通欧辉专用客车|宇通 欧辉专用客车", status: 0) if Column.find_by(name: "欧辉专用客车", keyword: "宇通欧辉专用客车|宇通 欧辉专用客车").nil?
Column.create!(category_id: category_99.id, name: "众泰Z560", en_name: "Z560", keyword: "众泰Z560|众泰 Z560", status: 0) if Column.find_by(name: "众泰Z560", keyword: "众泰Z560|众泰 Z560").nil?
Column.create!(category_id: category_99.id, name: "中华H3", en_name: "H3", keyword: "中华H3|中华 H3", status: 0) if Column.find_by(name: "中华H3", keyword: "中华H3|中华 H3").nil?
Column.create!(category_id: category_99.id, name: "中华H230EV", en_name: "中华H230EV", keyword: "中华H230EV|中华 中华H230EV", status: 0) if Column.find_by(name: "中华H230EV", keyword: "中华H230EV|中华 中华H230EV").nil?
Column.create!(category_id: category_99.id, name: "维沃特", en_name: "维沃特", keyword: "中欧奔驰房车维沃特|中欧奔驰房车 维沃特", status: 0) if Column.find_by(name: "维沃特", keyword: "中欧奔驰房车维沃特|中欧奔驰房车 维沃特").nil?
Column.create!(category_id: category_99.id, name: "比速T5", en_name: "T5", keyword: "比速汽车比速T5|比速汽车 T5", status: 0) if Column.find_by(name: "比速T5", keyword: "比速汽车比速T5|比速汽车 T5").nil?
Column.create!(category_id: category_99.id, name: "SWM斯威X3", en_name: "SWM斯威X3", keyword: "SWM斯威汽车SWM斯威X3|SWM斯威汽车 SWM斯威X3", status: 0) if Column.find_by(name: "SWM斯威X3", keyword: "SWM斯威汽车SWM斯威X3|SWM斯威汽车 SWM斯威X3").nil?
Column.create!(category_id: category_99.id, name: "ES8", en_name: "ES8", keyword: "蔚来ES8|蔚来 ES8", status: 0) if Column.find_by(name: "ES8", keyword: "蔚来ES8|蔚来 ES8").nil?
Column.create!(category_id: category_99.id, name: "Faraday Future", en_name: "Faraday Future", keyword: "Faraday Future", status: 0) if Column.find_by(name: "Faraday Future", keyword: "Faraday Future").nil?
Column.create!(category_id: category_99.id, name: "领克", en_name: "LYNK&CO", keyword: "领克|LYNK&CO", status: 0) if Column.find_by(name: "领克", keyword: "领克|LYNK&CO").nil?
Column.create!(category_id: category_99.id, name: "FF 91", en_name: "FF 91", keyword: "Faraday FutureFF 91|Faraday Future FF 91", status: 0) if Column.find_by(name: "FF 91", keyword: "Faraday FutureFF 91|Faraday Future FF 91").nil?
Column.create!(category_id: category_99.id, name: "领克 01", en_name: "1", keyword: "领克 01|LYNK&CO 01", status: 0) if Column.find_by(name: "领克 01", keyword: "领克 01|LYNK&CO 01").nil?
Column.create!(category_id: category_99.id, name: "领克 03", en_name: "3", keyword: "领克 03|LYNK&CO 03", status: 0) if Column.find_by(name: "领克 03", keyword: "领克 03|LYNK&CO 03").nil?
Column.create!(category_id: category_99.id, name: "巴博斯 迈巴赫S级", en_name: "mayback S class ", keyword: "巴博斯 迈巴赫S级|brabus mayback S class ", status: 0) if Column.find_by(name: "巴博斯 迈巴赫S级", keyword: "巴博斯 迈巴赫S级|brabus mayback S class ").nil?
Column.create!(category_id: category_99.id, name: "巴博斯GLE级", en_name: "GLE class ", keyword: "巴博斯GLE级|brabus GLE class ", status: 0) if Column.find_by(name: "巴博斯GLE级", keyword: "巴博斯GLE级|brabus GLE class ").nil?
Column.create!(category_id: category_99.id, name: "长安睿行M70", en_name: "睿行M70", keyword: "长安欧尚长安睿行M70|长安欧尚 睿行M70", status: 0) if Column.find_by(name: "长安睿行M70", keyword: "长安欧尚长安睿行M70|长安欧尚 睿行M70").nil?
Column.create!(category_id: category_99.id, name: "江铃E160", en_name: "E160", keyword: "江铃E160|江铃 E160", status: 0) if Column.find_by(name: "江铃E160", keyword: "江铃E160|江铃 E160").nil?
Column.create!(category_id: category_99.id, name: "江铃E200S", en_name: "E200S", keyword: "江铃E200S|江铃 E200S", status: 0) if Column.find_by(name: "江铃E200S", keyword: "江铃E200S|江铃 E200S").nil?
Column.create!(category_id: category_99.id, name: "纳瓦拉", en_name: "Navara", keyword: "日产纳瓦拉|nissan Navara", status: 0) if Column.find_by(name: "纳瓦拉", keyword: "日产纳瓦拉|nissan Navara").nil?
Column.create!(category_id: category_99.id, name: "众泰Z360", en_name: "Z360", keyword: "众泰Z360|众泰 Z360", status: 0) if Column.find_by(name: "众泰Z360", keyword: "众泰Z360|众泰 Z360").nil?
