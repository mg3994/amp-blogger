// <b:if cond='data:blog.view not in [&quot;x-content-lazy&quot;, &quot;x-content-blog&quot;]'>

//   <b:comment><!--[ <head> | <!> [below] Custom codes (Global) ]--></b:comment>

//   <b:comment><!--[ <head> | <!> [above] Custom codes (Global) ]--></b:comment>
//   <b:if cond='data:story.active'>
//     <b:comment><!--[ <head> | <!> [below] Custom codes (Story) ]--></b:comment>

//     <b:comment><!--[ <head> | <!> [above] Custom codes (Story) ]--></b:comment>
//     <b:elseif cond='data:amp.active'/>
//     <b:comment><!--[ <head> | <!> [below] Custom codes (AMP) ]--></b:comment>

//     <b:comment><!--[ <head> | <!> [above] Custom codes (AMP) ]--></b:comment>
//     <b:else/>
//     <b:comment><!--[ <head> | <!> [below] Custom codes (NO-AMP) ]--></b:comment>

// <script>/*<![CDATA[*/
// //    __________.__                       .__        ________    _________  _______
// //    \______   \  |  __ __  ______  __ __|__| ___  _\_____  \   \______  \ \   _  \
// //     |     ___/  | |  |  \/  ___/ |  |  \  | \  \/ / _(__  <       /    / /  /_\  \
// //     |    |   |  |_|  |  /\___ \  |  |  /  |  \   / /       \     /    /  \  \_/   \
// //     |____|   |____/____//____  > |____/|__|   \_/ /______  / /\ /____/ /\ \_____  /
// //                              \/                          \/  \/        \/       \/
// /*]]>*/</script>

//     <b:comment><!--[ <head> | <!> [above] Custom codes (NO-AMP) ]--></b:comment>
//   </b:if>

import 'package:blogger_theme/blogger_theme.dart';

// Wrap your HeadCustomCodes inside BDefaultMarkups

class HeadCustomCodes extends Component {
  HeadCustomCodes();
  @override
  Iterable<Component> build() {
    return [
      BIf(
        cond: 'data:blog.view not in ["x-content-lazy", "x-content-blog"]',
        children: [
          BComment(
            children: [
              Text('<!--[ <head> | <!> [below] Custom codes (Global) ]-->'),
            ],
          ),
          ///// Here
          BComment(
            children: [
              Text('<!--[ <head> | <!> [above] Custom codes (Global) ]-->'),
            ],
          ),

          BIf(
            cond: 'data:story.active',
            children: [
              BComment(
                children: [
                  Text('<!--[ <head> | <!> [below] Custom codes (Story) ]-->'),
                ],
              ),
              ///// Here
              BComment(
                children: [
                  Text('<!--[ <head> | <!> [above] Custom codes (Story) ]-->'),
                ],
              ),
              BElseIf(cond: 'data:amp.active'),
              BComment(
                children: [
                  Text('<!--[ <head> | <!> [below] Custom codes (AMP) ]-->'),
                ],
              ),
              ///// Here
              BComment(
                children: [
                  Text('<!--[ <head> | <!> [above] Custom codes (AMP) ]-->'),
                ],
              ),
              BElse(),
              BComment(
                children: [
                  Text('<!--[ <head> | <!> [below] Custom codes (NO-AMP) ]-->'),
                ],
              ),
              // Plus UI script Seems Useless , make it Bulky
              BComment(
                children: [
                  Text("<!--[ <head> | <!> [above] Custom codes (NO-AMP) ]-->"),
                ],
              ),
            ],
          ),
        ],
      ),
    ];
  }
}
