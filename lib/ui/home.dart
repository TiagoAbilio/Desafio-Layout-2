import 'package:avaliacao_um/controller.dart/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool mudar = false;
  bool abrir = false;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControllerHome>(
      init: ControllerHome(),
      builder: (_) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Scaffold(
              body: Container(
                height: constraints.maxHeight,
                alignment: Alignment.center,
                // ignore: sized_box_for_whitespace
                child: Stack(
                  children: [
                    // ignore: sized_box_for_whitespace
                    /// referente aos campos de imagens texts e cards
                    Positioned(
                      top: constraints.maxHeight * 0.1,
                      right: constraints.maxWidth * 0.1,
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        width: constraints.maxWidth * 0.8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // ignore: avoid_unnecessary_containers
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    // ignore: prefer_const_constructors
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.transparent,
                                      // ignore: prefer_const_constructors
                                      image: DecorationImage(
                                          // ignore: prefer_const_constructors
                                          image: const AssetImage(
                                              "imagens/alcemir.jpg"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Olá",
                                        style: TextStyle(
                                          color: Colors.indigo[900],
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Alcemir!",
                                        style: TextStyle(
                                          color: Colors.indigo[900],
                                          fontSize: 50,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: constraints.maxHeight * 0.1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "    Parabéns! Esse mês você fez",
                                  style: TextStyle(
                                    color: Colors.indigo[900],
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.remove_red_eye_rounded,
                                  color: Colors.indigo[900],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Card(
                              color: Colors.transparent,
                              elevation: 8,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.grey[350]),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          bottom: 5, top: 5),
                                      width: 60,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "12",
                                            style: TextStyle(
                                              color: Colors.indigo[900],
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Container(
                                            padding:
                                                const EdgeInsets.only(right: 8),
                                            child: Icon(
                                              Icons.shop_2,
                                              size: 50,
                                              color: Colors.indigo[900],
                                            ),
                                          ),
                                          Text(
                                            "Novos pedidos",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.indigo[900],
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          bottom: 5, top: 5),
                                      width: 60,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "20",
                                            style: TextStyle(
                                              color: Colors.indigo[900],
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Container(
                                            padding:
                                                const EdgeInsets.only(right: 8),
                                            child: Icon(
                                              Icons.group,
                                              size: 50,
                                              color: Colors.indigo[900],
                                            ),
                                          ),
                                          Text(
                                            "Novos pedidos",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.indigo[900],
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          bottom: 5, top: 5),
                                      width: 60,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "20",
                                            style: TextStyle(
                                              color: Colors.indigo[900],
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Container(
                                            padding:
                                                const EdgeInsets.only(right: 8),
                                            child: Icon(
                                              Icons.business_sharp,
                                              size: 50,
                                              color: Colors.indigo[900],
                                            ),
                                          ),
                                          Text(
                                            "Novos pedidos",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.indigo[900],
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Card(
                              color: Colors.transparent,
                              elevation: 8,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.grey[350]),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 10, bottom: 20),
                                      child: Icon(
                                        Icons.shop_2,
                                        size: 75,
                                        color: Colors.indigo[900],
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "R\$  34.000,00",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.indigo[900],
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "em novos pedidos",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Colors.indigo[900],
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //buttons que se escondem com animação implicita
                    GetBuilder<ControllerHome>(
                      id: "mudar",
                      builder: (_) => AnimatedPositioned(
                        duration: const Duration(seconds: 1),
                        right: !_.mudar
                            ? constraints.maxWidth * 0.08
                            : constraints.maxWidth * 0.12,
                        top: !_.mudar
                            ? constraints.maxHeight * 0.81
                            : constraints.maxHeight * 0.68,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.deepPurple[900],
                              ),
                              child: Icon(
                                Icons.person_add,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "clientes",
                              style: TextStyle(
                                color: Colors.deepPurple[900],
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GetBuilder<ControllerHome>(
                      id: "mudar",
                      builder: (_) => AnimatedPositioned(
                        duration: const Duration(seconds: 1),
                        right: !_.mudar
                            ? constraints.maxWidth * 0.06
                            : constraints.maxWidth * 0.32,
                        top: !_.mudar
                            ? constraints.maxHeight * 0.81
                            : constraints.maxHeight * 0.74,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.deepPurple[900],
                              ),
                              child: Icon(
                                Icons.add_shopping_cart_rounded,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "produtos",
                              style: TextStyle(
                                color: Colors.deepPurple[900],
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GetBuilder<ControllerHome>(
                      id: "mudar",
                      builder: (_) => AnimatedPositioned(
                        duration: const Duration(seconds: 1),
                        right: !_.mudar
                            ? constraints.maxWidth * 0.06
                            : constraints.maxWidth * 0.34,
                        top: !_.mudar
                            ? constraints.maxHeight * 0.81
                            : constraints.maxHeight * 0.85,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.deepPurple[900],
                              ),
                              child: Icon(
                                Icons.person_add,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "presente",
                              style: TextStyle(
                                color: Colors.deepPurple[900],
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    ///referente ao container que sobrepoe os icons que irao se esconder
                    Positioned(
                      bottom: constraints.maxHeight * 0.12,
                      right: constraints.maxWidth * 0.038,
                      child: Container(
                        height: 55,
                        width: 55,
                        // ignore: prefer_const_constructors
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                      ),
                    ),

                    ///referente ao button de add +

                    Positioned(
                      bottom: constraints.maxHeight * 0.15,
                      right: constraints.maxWidth * 0.1,
                      child: GetBuilder<ControllerHome>(
                        id: "mudar",
                        builder: (_) => IconButton(
                          icon: !_.mudar
                              ? Icon(
                                  Icons.add_circle_sharp,
                                  size: 70,
                                  color: Colors.deepPurple[900],
                                )
                              : Transform.rotate(
                                  alignment: FractionalOffset.center,
                                  angle: 95,
                                  child: Icon(
                                    Icons.add_circle_sharp,
                                    size: 70,
                                    color: Colors.deepPurple[900],
                                  ),
                                ),
                          onPressed: () {
                            _.buttons_on_of();
                          },
                        ),
                      ),
                    ),

                    //referente aos buttons que ficam no centerBottom da tela
                    Positioned(
                      bottom: 10,
                      left: constraints.maxWidth * 0.1,
                      right: constraints.maxWidth * 0.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GetBuilder<ControllerHome>(
                              id: "abrindo",
                              builder: (_) {
                                return GestureDetector(
                                  onTap: () {
                                    _.open_closed_buttom(0);
                                  },
                                  child: AnimatedContainer(
                                    alignment: Alignment.center,
                                    height: 40,
                                    width: _.dataopen[0] ? 120 : 50,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.ease,
                                    padding: _.dataopen[0]
                                        ? const EdgeInsets.only(
                                            left: 5,
                                            top: 8,
                                            bottom: 6,
                                            right: 15)
                                        : const EdgeInsets.only(
                                            left: 12,
                                            top: 8,
                                            right: 8,
                                            bottom: 8),
                                    decoration: BoxDecoration(
                                        color: Colors.deepPurple[900],
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Wrap(
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,

                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        const Icon(
                                          Icons.home,
                                          color: Colors.white,
                                          size: 25,
                                        ),
                                        SizedBox(
                                          width: _.dataopen[0] ? 20 : 0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: AnimatedOpacity(
                                            curve: Curves.easeInQuart,
                                            opacity: _.dataopen[0] ? 1.0 : 0.0,
                                            duration:
                                                const Duration(seconds: 1),
                                            child: Text(
                                              _.dataopen[0] ? "Home" : "",
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                          GetBuilder<ControllerHome>(
                              id: "abrindo",
                              builder: (_) {
                                return GestureDetector(
                                  onTap: () {
                                    _.open_closed_buttom(1);
                                  },
                                  child: AnimatedContainer(
                                    height: 40,
                                    width: _.dataopen[1] ? 120 : 50,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.ease,
                                    padding: _.dataopen[1]
                                        ? const EdgeInsets.only(
                                            left: 5,
                                            top: 8,
                                            bottom: 6,
                                            right: 15)
                                        : const EdgeInsets.only(
                                            left: 12,
                                            top: 8,
                                            right: 8,
                                            bottom: 8),
                                    decoration: BoxDecoration(
                                        color: Colors.deepPurple[900],
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Wrap(
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        const Icon(
                                          Icons.shop_2,
                                          color: Colors.white,
                                          size: 25,
                                        ),
                                        SizedBox(
                                          width: _.dataopen[1] ? 20 : 0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: AnimatedOpacity(
                                            curve: Curves.easeInQuart,
                                            opacity: _.dataopen[1] ? 1.0 : 0.0,
                                            duration:
                                                const Duration(seconds: 1),
                                            child: Text(
                                              _.dataopen[1] ? "Shoop" : "",
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                          GetBuilder<ControllerHome>(
                            id: "abrindo",
                            builder: (_) {
                              return GestureDetector(
                                onTap: () {
                                  _.open_closed_buttom(2);
                                },
                                child: AnimatedContainer(
                                  height: 40,
                                  width: _.dataopen[2] ? 120 : 50,
                                  duration: const Duration(seconds: 2),
                                  curve: Curves.ease,
                                  padding: _.dataopen[2]
                                      ? const EdgeInsets.only(
                                          left: 5, top: 8, bottom: 6, right: 15)
                                      : const EdgeInsets.only(
                                          left: 12,
                                          top: 8,
                                          right: 8,
                                          bottom: 8),
                                  decoration: BoxDecoration(
                                      color: Colors.deepPurple[900],
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      const Icon(
                                        Icons.group,
                                        color: Colors.white,
                                        size: 25,
                                      ),
                                      SizedBox(
                                        width: _.dataopen[2] ? 20 : 0,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: AnimatedOpacity(
                                          curve: Curves.easeInQuart,
                                          opacity: _.dataopen[2] ? 1.0 : 0.0,
                                          duration: const Duration(seconds: 2),
                                          child: Text(
                                            _.dataopen[2] ? "Group" : "",
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          GetBuilder<ControllerHome>(
                            id: "abrindo",
                            builder: (_) {
                              return GestureDetector(
                                onTap: () {
                                  _.open_closed_buttom(3);
                                },
                                child: AnimatedContainer(
                                  height: 40,
                                  width: _.dataopen[3] ? 120 : 50,
                                  duration: const Duration(seconds: 2),
                                  curve: Curves.ease,
                                  padding: _.dataopen[3]
                                      ? const EdgeInsets.only(
                                          left: 5, top: 8, bottom: 6, right: 5)
                                      : const EdgeInsets.only(
                                          left: 12,
                                          top: 8,
                                          right: 8,
                                          bottom: 8),
                                  decoration: BoxDecoration(
                                      color: Colors.deepPurple[900],
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      const Icon(
                                        Icons.trending_up_rounded,
                                        color: Colors.white,
                                        size: 25,
                                      ),
                                      SizedBox(
                                        width: _.dataopen[3] ? 20 : 0,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: AnimatedOpacity(
                                          curve: Curves.easeInQuart,
                                          opacity: _.dataopen[3] ? 1.0 : 0.0,
                                          duration: const Duration(seconds: 2),
                                          child: Text(
                                            _.dataopen[3] ? "Trending" : "",
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
