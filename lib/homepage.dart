import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'details_page.dart'; 
import 'coffee_data.dart'; 



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedFilter = "All";
  bool showFavorites = false;
  TextEditingController _searchController = TextEditingController();
  String _searchQuery = "";

  @override
  Widget build(BuildContext context) {
    List<CoffeeType> displayedCoffees = coffeeList.where((coffee) {
      if (showFavorites && !coffee.isFavorite) return false;
      if (selectedFilter == "All" || coffee.type == selectedFilter) {
        return coffee.name.toLowerCase().contains(_searchQuery.toLowerCase());
      }
      return false;
    }).toList();

    return Scaffold(
      backgroundColor: Colors.brown.shade900,
     appBar: AppBar(
  title: Text(
    'Coffee Explorer',
    style: GoogleFonts.nunito(
      fontSize: 26,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
  ),
  backgroundColor: Colors.brown,
),

     body: Stack(
  children: [
    // Background image layer
    Positioned.fill(
      child: Image.asset(
        'assets/coffee_background.jpg', // <-- Add your image in this path
        fit: BoxFit.cover,
      ),
    ),

    // Foreground content layer
    SafeArea(
      child: Container(
        color: Colors.black.withOpacity(0.25), // Optional overlay
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ⬇️ KEEP all your existing widgets here:
        
       Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.end, // aligns everything to the RIGHT
    children: [
      // Search Bar
      SizedBox(
        width: 230,
        height: 45,
        child: TextField(
          controller: _searchController,
          onChanged: (query) {
            setState(() {
              _searchQuery = query;
            });
          },
          decoration: InputDecoration(
            hintText: "Search",
            prefixIcon: Icon(Icons.search),
            filled: true,
            fillColor: Colors.brown[100],
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),

      SizedBox(width: 12), // space between search and favorite

      // Favorite Icon
      Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: Colors.brown[100],
          borderRadius: BorderRadius.circular(30),
        ),
        child: IconButton(
          icon: Icon(
            showFavorites ? Icons.favorite : Icons.favorite_border,
            color: showFavorites ? Colors.red : Colors.brown[800],
          ),
          onPressed: () {
            setState(() {
              showFavorites = !showFavorites;
            });
          },
        ),
      ),
    ],
  ),
),


            SizedBox(height: 30),
            Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 12.0,
                runSpacing: 8.0,
                children: ["All", "Milky", "Without Milk", "Iced", "Special"].map((type) =>
                  FilterChip(
                    selected: selectedFilter == type,
                    label: Text(
                      type,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    onSelected: (_) => setState(() => selectedFilter = type),
                    selectedColor: const Color.fromARGB(255, 238, 231, 28),
                    backgroundColor: Colors.brown,
                    labelStyle: const TextStyle(color: Color.fromARGB(255, 32, 19, 4)),
                    padding: EdgeInsets.symmetric(horizontal: 11, vertical: 10),
                  ),
                ).toList(),
              ),
            ),
            SizedBox(height: 40),
            Expanded(
              child: GridView.count(
                
                crossAxisCount: 5,
                childAspectRatio: 1.15,
                crossAxisSpacing: 40,
                mainAxisSpacing: 40,
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                children: displayedCoffees.map((coffee) {
  bool isHovered = false;
  return StatefulBuilder(
    builder: (context, setInnerState) {
      return MouseRegion(
        onEnter: (_) => setInnerState(() => isHovered = true),
        onExit: (_) => setInnerState(() => isHovered = false),
        child: AnimatedScale(
          scale: isHovered ? 1.05 : 1.0, // Slightly bigger on hover
          duration: Duration(milliseconds: 200),
          child: GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => CoffeeDetailsPage(coffee: coffee)),
            ),
            child: Card(
              margin: const EdgeInsets.all(8),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              elevation: 8,
              shadowColor: Colors.brown.withOpacity(0.5),
              color: Colors.brown[300]?.withOpacity(0.85),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  coffee.image,
                                  height: 110,
                                  width: double.infinity,
                              
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      height: 120,
                                      color: Colors.brown[200],
                                      alignment: Alignment.center,
                                      child: Icon(Icons.broken_image, size: 80, color: Colors.brown[800]),
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                coffee.name,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown[900],
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 6),
                              Text(
                                coffee.description,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.brown[700],
                                ),
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: IconButton(
                              icon: Icon(
                                coffee.isFavorite ? Icons.favorite : Icons.favorite_border,
                                color: coffee.isFavorite ? Colors.red : const Color.fromARGB(255, 77, 40, 5),
                              ),
                              onPressed: () {
                                setState(() {
                                  coffee.isFavorite = !coffee.isFavorite;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}).toList(),

              ),
            ),
          ],
        ),
      ),
    ),
  ],
),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Ensure it pops back to the HomePage
          Navigator.popUntil(context, (route) => route.isFirst);
        },
        child: Icon(Icons.home),
        backgroundColor: Colors.brown,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}