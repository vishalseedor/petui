import 'package:flutter/material.dart';
import 'package:pet_adoption/petview/detailsscreen.dart';




class AllPetWidget extends StatefulWidget {

 

  const AllPetWidget(
      {super.key,

    
      });

  @override
  State<AllPetWidget> createState() => _AllPetWidgetState();
}

class _AllPetWidgetState extends State<AllPetWidget> {
  bool isFavourirte=false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //  final pet = Provider.of<PetModel>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: InkWell( 
              onTap: () {
      //            Navigator.of(context).pushNamed(
      // PetDetailsScreen.routeName,
      // arguments: widget.petid);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const PetDetailsScreen()));
              },
              child: Container(
                  height: 150,
            width: 130,
                decoration: BoxDecoration(
                     image: DecorationImage(image: AssetImage('assets/dog.jpg'),fit: BoxFit.cover),
                   
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))),
             
              ),
            ),
          ),
          Container(
            height: 150,
            width: 190,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Text(
                      'Golden Retreiver',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold),
                      overflow: TextOverflow.fade,
                    ),
                     
                    ],
                  ),
                   Text('Boomerian'),
                  Text(
                    '100 Kg',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    '${1} Years',
                    style: TextStyle(color: Colors.black),
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/df.png',height: 28,width: 28),
                      SizedBox(width: size.width*0.03),
                      Text('')
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.2,
          )
        ],
      ),
    );
  }
}
