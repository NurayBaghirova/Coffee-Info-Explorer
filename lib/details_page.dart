import 'package:flutter/material.dart';
import 'coffee_data.dart'; 
import 'info_text_page.dart';
import 'package:fl_chart/fl_chart.dart';


class CoffeeDetailsPage extends StatefulWidget {
  final CoffeeType coffee;
  const CoffeeDetailsPage({required this.coffee, super.key});

  @override
  _CoffeeDetailsPageState createState() => _CoffeeDetailsPageState();
}

class _CoffeeDetailsPageState extends State<CoffeeDetailsPage> {
  String? selectedCategory;

  final List<String> categories = [
    "History",
    "Information",
    "How to make",
    "Prices",
    "Best Shops",
    "Fun Fact"
  ];

  void _onCategorySelected(String category) {
    setState(() {
      selectedCategory = selectedCategory == category ? null : category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.coffee.name)),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.home),
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.popUntil(context, (route) => route.isFirst);
        },
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/coffeedetails_background.jpg', // your background image path
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: categories.map((label) {
                      final isSelected = selectedCategory == label;
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: SizedBox(
                          width: 180, // shorter width to make buttons less long
                          child: ElevatedButton(
                            onPressed: () => _onCategorySelected(label),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30), // more round
                              ),
                              backgroundColor: isSelected
                                  ? Colors.brown.shade700
                                  : Colors.brown.shade500,
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(vertical: 18), // keep height
                              elevation: isSelected ? 8 : 4,
                            ),
                            child: Text(
                              label,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Center(
                  child: Container(
                    width: 400,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: selectedCategory == null
                        ? Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Coffee Production Timeline',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown[800],
                                ),
                              ),
                              const SizedBox(height: 20),
                              SizedBox(
  height: 250,
  child: BarChart(
    BarChartData(
      barGroups: widget.coffee.productionTimeline.entries.toList().asMap().entries.map(
        (entry) {
          int index = entry.key;
          double value = entry.value.value;
          return makeGroupData(index, value);
        },
      ).toList(),
      titlesData: FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (val, meta) {
              final labels = widget.coffee.productionTimeline.keys.toList();
              if (val.toInt() < labels.length) {
                return Text(labels[val.toInt()]);
              }
              return const Text('');
            },
            reservedSize: 32,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 40,
            getTitlesWidget: (value, meta) {
              return Text('${value.toInt()}');
            },
          ),
        ),
        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      ),
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        getDrawingHorizontalLine: (value) => FlLine(
          color: Colors.grey.shade300,
          strokeWidth: 1,
        ),
      ),
      borderData: FlBorderData(show: false),
      barTouchData: BarTouchData(enabled: true),
      alignment: BarChartAlignment.spaceAround,
      maxY: 18,
    ),
  ),
),

                            ],
                          )
                        : SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  selectedCategory!,
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.brown[900],
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    if (widget.coffee.images.containsKey(selectedCategory!))
      ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          widget.coffee.images[selectedCategory!]!,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    const SizedBox(height: 16),
    Text(
      _getCategoryContent(selectedCategory!),
      style: TextStyle(
        fontSize: 16,
        color: Colors.brown[800],
      ),
    ),
  ],
),

                              ],
                            ),
                          ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _getCategoryContent(String category) {
  return widget.coffee.details[category] ?? "";
}

  BarChartGroupData makeGroupData(int x, double y) => BarChartGroupData(
        x: x,
        barRods: [
          BarChartRodData(
            toY: y,
            width: 24,
            borderRadius: BorderRadius.circular(6),
            color: const Color.fromARGB(255, 55, 40, 12),
            backDrawRodData: BackgroundBarChartRodData(
              show: true,
              toY: 18,
              color: Colors.brown.shade100,
            ),
          ),
        ],
      );
}
