import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/coffee_tile.dart';
import 'package:flutter_application_1/models/coffee.dart';
import 'package:flutter_application_1/models/coffee_shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  //remove item from cart
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
  }

  //pay button
  void payNow() {
    
    Provider.of<CoffeeShop>(context, listen: false);

    // added alert
    showDialog(context: context,
    builder: (context) => const AlertDialog(
      title: Text('Successfully paid'),
      backgroundColor: Color.fromARGB(255, 172, 213, 233),
    ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              // heading
              const Text(
                'Your Cart',
                style: TextStyle(fontSize: 20),
                
              ),
              const SizedBox(height: 20),

              //list of cart items
              Expanded(
                child: ListView.builder(
                    itemCount: value.userCart.length,
                    itemBuilder: (context, index) {
                      //get individual cart items
                      Coffee eachCoffee = value.userCart[index];

                      //return coffee tile
                      return CoffeeTile(
                          coffee: eachCoffee,
                          onPressed: () => removeFromCart(eachCoffee),
                          icon: const Icon(Icons.delete));
                    }),
              ),

              //pay button
              GestureDetector(
                onTap: payNow,
                child: Container(
                  padding: const EdgeInsets.all(25),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 73, 89, 97),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                    child: Text(
                      "Pay",
                      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
