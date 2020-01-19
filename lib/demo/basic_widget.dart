import 'package:flutter/material.dart';

class BasicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Michael',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w300
          ),
          children: [
            TextSpan(
              text: '.com',
              style: TextStyle(
                fontSize: 26.0,
                color: Colors.redAccent
                )
            )
          ]
      )
    );
  }
}
class BasicWidgetDemo extends StatelessWidget{
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0
  );
  final String _author = "李白";
  final String _title = "将进酒";
  @override
  Widget build(BuildContext context) {
    return Text(
      '《$_title》- $_author 是唐代大诗人李白沿用乐府古题创作的一首诗。此诗为李白长安放还以后所作，思想内容非常深沉，艺术表现非常成熟，在同题作品中影响最大。诗人豪饮高歌，借酒消愁，抒发了忧愤深广的人生感慨。诗中交织着失望与自信、悲愤与抗争的情怀，体现出强烈的豪纵狂放的个性。全诗情感饱满，无论喜怒哀乐，其奔涌迸发均如江河流泻，不可遏止，且起伏跌宕，变化剧烈；在手法上多用夸张，且往往以巨额数量词进行修饰，既表现出诗人豪迈洒脱的情怀，又使诗作本身显得笔墨酣畅，抒情有力；在结构上大开大阖，充分体现了李白七言歌行的特色。',
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
    );
  }
}