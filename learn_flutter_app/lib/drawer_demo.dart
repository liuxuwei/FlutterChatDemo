
import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer 抽屉组件示例'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.only(),
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              accountName: Text('从小做个痞子'),
              accountEmail: Text('piziliu@163.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1557395942587&di=562f0ff2234d3ebb7789de8c5d3ddc27&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201704%2F23%2F20170423000218_Vms8U.jpeg'),
              ),
              onDetailsPressed: (){
                print('点击头像或邮箱');
              },
              otherAccountsPictures: <Widget>[
                Container(
                  child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1557395942586&di=d2127d92f9bc8c30e6df0fa8f29b4b11&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201403%2F18%2F20140318091418_zEUz2.jpeg'),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.color_lens),),
              title: Text('个性装扮'),
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.photo),),
              title: Text('我的相册'),
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.wifi),),
              title: Text('免流量特权'),
            )
          ],
        ),
      ),
    );
  }

}