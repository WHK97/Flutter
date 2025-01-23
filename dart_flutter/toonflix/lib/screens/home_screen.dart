import 'package:flutter/material.dart';
import 'dart:async';

import 'package:toonflix/models/webtoon_model.dart';
import 'package:toonflix/service/api_service.dart';
import 'package:toonflix/widget/webtoon_widget.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
// class _HomeScreenState extends State<HomeScreen> {
//   static const twentyFiverMinutes = 1500;
//   int totalSeconds = twentyFiverMinutes;
//   bool isRunning = false;
//   int totalPomodoros = 0;
//   late Timer timer;
//   void onTick(Timer timer) {
//     if (totalSeconds == 0) {
//       setState(() {
//         totalPomodoros += 1;
//         isRunning = false;
//         totalSeconds = twentyFiverMinutes;
//       });
//       timer.cancel();
//     } else {
//       setState(() {
//         totalSeconds -= 1;
//       });
//     }
//   }
//   void onStartPressed() {
//     timer = Timer.periodic(const Duration(seconds: 1), onTick);
//     setState(() {
//       isRunning = true;
//     });
//   }
//   void onPausePressed() {
//     timer.cancel();
//     setState(() {
//       isRunning = false;
//     });
//   }
//   void onResetPressed() {
//     setState(() {
//       isRunning = false;
//       totalSeconds = twentyFiverMinutes;
//     });
//     timer.cancel();
//   }
//   String format(int seconds) {
//     var duration = Duration(seconds: seconds);
//     var sec = duration.toString().split(".").first.substring(2, 7);
//     print(duration.toString().split(".").first);
//     return sec;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//       body: Column(
//         children: [
//           Flexible(
//             flex: 1,
//             child: Container(
//               alignment: Alignment.bottomCenter,
//               child: Text(
//                 format(totalSeconds),
//                 style: TextStyle(
//                   color: Theme.of(context).cardColor,
//                   fontSize: 86,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ),
//           ),
//           Flexible(
//             flex: 2,
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   IconButton(
//                     iconSize: 120,
//                     color: Theme.of(context).cardColor,
//                     onPressed: isRunning ? onPausePressed : onStartPressed,
//                     icon: isRunning
//                         ? const Icon(Icons.pause_circle_outline)
//                         : const Icon(Icons.play_circle_outlined),
//                   ),
//                   IconButton(
//                       iconSize: 40,
//                       color: Theme.of(context).cardColor,
//                       onPressed: onResetPressed,
//                       icon: const Icon(Icons.replay_sharp)),
//                 ],
//               ),
//             ),
//           ),
//           Flexible(
//             flex: 1,
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Theme.of(context).cardColor,
//                       borderRadius: BorderRadius.circular(40),
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           "Pomodoros",
//                           style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.w600,
//                               color: Theme.of(context)
//                                   .textTheme
//                                   .headlineMedium!
//                                   .color),
//                         ),
//                         Text(
//                           "$totalPomodoros",
//                           style: TextStyle(
//                               fontSize: 58,
//                               fontWeight: FontWeight.w600,
//                               color: Theme.of(context)
//                                   .textTheme
//                                   .headlineMedium!
//                                   .color),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();
  // 기본적인 사용방법이지만 State는 최대한 사용하지 않는게 좋다
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Text(
          "Today's Toons",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Expanded(child: makeList(snapshot)),
              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      itemBuilder: (context, index) {
        var webtoon = snapshot.data![index];

        return Webtoon(
          title: webtoon.title,
          thumb: webtoon.thumb,
          id: webtoon.id,
        );
      },
      separatorBuilder: (context, index) => const SizedBox(width: 40),
    );
  }
}
