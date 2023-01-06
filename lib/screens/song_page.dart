import 'package:flutter/material.dart';
import 'package:flutter_music_player/screens/neu_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                // back button and menu button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NeuBox(child: Icon(Icons.arrow_back_ios)),
                    ),
                    Text(
                      'P L A Y L I S T',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.purple,
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NeuBox(child: Icon(Icons.menu)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),

                //cover art, name and song
                NeuBox(
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset('lib/images/cover_art.png')),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Incohérence',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                const Text(
                                  'In Absentia',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 32,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),

                // start time, shhuffle, repeat, end time
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text('2:37'),
                    Icon(
                      Icons.shuffle,
                      color: Colors.purple,
                    ),
                    Icon(Icons.repeat),
                    Text('3:01')
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                // progress bar
                NeuBox(
                  child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.8,
                    progressColor: Colors.purple,
                    backgroundColor: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                // previous song, pauseplay, next song
                SizedBox(
                  height: 55,
                  child: Row(
                    children: [
                      Expanded(
                          child: NeuBox(
                              child: Icon(
                        Icons.skip_previous,
                        size: 32,
                      ))),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: NeuBox(
                                child: Icon(
                              Icons.play_arrow,
                              size: 32,
                            )),
                          )),
                      Expanded(
                          child: NeuBox(
                              child: Icon(
                        Icons.skip_next,
                        size: 32,
                      ))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
