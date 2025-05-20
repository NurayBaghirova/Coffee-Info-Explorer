class CoffeeType {
  final String name;
  final String type;
  final String image;
  final String description;
  bool isFavorite;

  // Add this map for category contents:
  final Map<String, String> details;
  final Map<String, double> productionTimeline; 
  final Map<String, String> images;

  CoffeeType({
    required this.name,
    required this.type,
    required this.image,
    required this.description,
    required this.details,
    required this.productionTimeline,
    required this.images,
    this.isFavorite = false,
  });
}

List<CoffeeType> coffeeList = [
  
 CoffeeType(
  name: "Cappuccino",
  type: "Milky",
  image: "assets/cappuccino.jpeg",
  description: "A creamy coffee topped with frothy milk.",
  details: {
    "History": """Cappuccino is a classic Italian coffee drink made with espresso, steamed milk, and milk foam. Its name comes from the brown color of the robes worn by Capuchin monks.
1.  Italian Origin:
Cappuccino originated in Italy in the early 1900s. It was traditionally consumed before breakfast and prepared with a shot of espresso, steamed milk, and thick foam in equal parts.
2.  Role in European Café Culture:
Across Europe, cappuccino became a staple drink, especially in Austria where a similar version called “Kapuziner” was popular.
3.  Rise in the U.S. (1980s–1990s):
Along with the latte, cappuccino gained popularity in the U.S. with the rise of major coffee chains like Starbucks. Its strong taste and foamy top made it distinctive.
4.  Global Popularity:
Today, cappuccino is enjoyed worldwide—from Europe to Asia, America to Australia—and is found on almost every café menu.
"""
,
    "Information": """• Ingredients: 1 shot of espresso + equal parts steamed milk + thick milk foam (roughly 1:1:1 ratio)
• Flavor Profile: A strong espresso base, balanced with milk and foam; bolder than a latte.
• Serving Style: Typically served in a small cup (around 150–180 ml). Foam is thick and stable.
• Popularity: A go-to classic in many cafés with a minimalist presentation.
• Key Differences:
o Less milk than a latte
o Thicker foam
o Stronger espresso presence"""

,
    "How to make": """Main Ingredients:
• 1 shot espresso (30 ml)
• 60 ml steamed milk
• 60 ml thick milk foam
Step-by-Step Process:
1.  Make the Espresso:
o Prepare a single shot of espresso using a machine with 9-bar pressure for about 25–30 seconds.
o This forms the base layer in the cup.
2.  Steam the Milk:
o Steam milk to around 60–65°C (140–150°F).
o Use the stretching technique to get thick and creamy foam.
o Compared to latte, cappuccino foam should be denser.
3.  Layer the Drink:
o Pour espresso first.
o Add steamed milk gently.
o Top with a thick layer of foam.
4.  Optional Topping Instead of Latte Art:
o Instead of art, traditional cappuccino is topped with cocoa powder, cinnamon, or nutmeg.
Tips:
• Milk type: Traditionally whole cow’s milk is used. Plant-based milks don’t foam as well for cappuccinos.
• Foam quality is key: It should be thick, creamy, and long-lasting.
• Sweeteners: Not typical, but flavored syrups (like vanilla or caramel) may be added upon request.
""",
    "Prices": """In Azerbaijan:
• S (Small): 3 - 4.5 AZN
• M (Medium): 4.5 - 6 AZN
• L (Large): 6 - 8 AZN
Worldwide:
• USA: 3-6 Dollars
• Europe: 2.5 - 5 Euros
• Australia: 3 - 6 AUD
• UK: 2.5 - 4.5
Factors Influencing Price:
• Location: Central or luxury cafés tend to be more expensive.
• Milk type: Plant-based options may cost extra.
• Toppings/decor: Optional sprinkles might add a small fee.
""",
    "Best Shops": """In Azerbaijan:
1.  Passage Coffee (Baku)
- Known for classic espresso-based drinks; offers authentic cappuccino.
2.  Espresso Bar (Baku)
-Offers high-quality espresso and professional barista service.
3.  Coffee Moffie (Baku)
- Noted for fine cappuccino foam and traditional style.
Worldwide:
1.  Sant'Eustachio Il Caffè (Rome, Italy)
- Famous for traditional Italian cappuccinos.
2.  Tim Wendelboe (Oslo, Norway)
- Recognized for excellent espresso and precise foam work.
3.  Caffè Florian (Venice, Italy)
- Historic venue with classic cappuccino presentation.
4.  Monmouth Coffee (London, UK)
- Serves high-quality beans with classic cappuccino preparation
""",
"Fun Fact": """• Name origin: “Cappuccino” comes from the Capuchin monks’ robe color.
• Three Equal Layers: Espresso, steamed milk, and foam should be balanced equally.
• Foam temperature matters: Overheating milk ruins the foam’s texture.
• No latte art: Unlike lattes, cappuccinos traditionally skip the art and add toppings like cinnamon or cocoa powder.
• Morning drink in Italy: Commonly consumed only in the morning.
• Barista skill: Foam quality defines the cappuccino’s authenticity.
"""
    
  },
  productionTimeline: {
    "1900-1950": 4,
    "1950-2000": 10,
    "2000-2025": 15,
  },
  images: {
    "History": "assets/images/history.jpeg",
    "Prices": "assets/images/prices.jpeg",
    "Fun Fact": "assets/images/ff.jpg",
    "Information": "assets/images/cappucino_info.jpeg",
  },
  
),

  CoffeeType(
    name: "Macchiato (Latte) ",
    type: "Milky",
    image: "assets/latte.jpg.png",
    description: "Brewed coffee with steamed milk",
    details: {
    "History": """Latte Macchiato, meaning “stained milk” in Italian, originated from Italy and is a relatively newer addition to the espresso family.
• Origins: Created to offer a milder espresso drink with more steamed milk, appealing to those who prefer a milk-forward beverage.
• “Macchiato” Explained: Unlike Espresso Macchiato (espresso “stained” with milk), Latte Macchiato is milk “stained” with espresso.
• Aesthetic Appeal: Gained popularity for its layered look—milk at the bottom, espresso “marking” the top.
""",
    "Information": """"• Ingredients: Steamed milk + 1 shot of espresso (poured after the milk)
• Flavor Profile: Mild, creamy, with subtle espresso taste. Less intense than a latte.
• Serving Style: Tall glass (often transparent to showcase layers), usually 240–350 ml.
• Key Characteristics:
o Emphasis on milk, not coffee.
o Espresso is added last, forming a distinct layer.
o Often topped with light milk foam (not as much as cappuccino).
""",
    "How to make": """Main Ingredients:
• 1 shot of espresso
• 200-250 ml steamed milk with microfoam
Step-by-Step:
1.  Steam the Milk:
o Heat milk to about 65°C (150°F).
o Create light microfoam, but keep the milk smooth and pourable.
2.  Pour Milk First:
o Fill a tall glass with steamed milk.
o Let the foam settle.
3.  Add Espresso:
o Slowly pour espresso over the milk.
o Espresso “marks” the milk, creating a layered appearance.
Tips:
• Use a spoon to control where espresso flows for better layering.
• Use transparent glassware for visual effect.
""",
    "Prices": """In Azerbaijan:
• S/M (Tall Glass): 4.5 - 6.5 AZN
Globally:
• USA: 4 - 6 dollars
• Europe: €3.5 - €5.5
• UK: £3.5 - £5
• Italy: Often under €3 in traditional cafés
""",
    "Best Shops": """Azerbaijan:
• Double Shot Coffee (Baku) - Serves beautifully layered latte macchiatos.
• Caffe Giusto (Baku) - Known for classic Italian coffee styles.
Globally:
• Espresso House (Scandinavia) -Offers classic and flavored macchiatos.
• Sant’Eustachio Il Caffè (Rome, Italy) - Traditional Italian espresso excellence
""",
"Fun Fact": """•	Visual Layers: The separation between milk and espresso is part of the appeal.
•	Opposite of Espresso Macchiato: Inverts the milk-to-espresso process.
•	Kid-Friendly Option: Often chosen with syrups for a softer taste.
•	Name Confusion: Easily mixed up with “Caramel Macchiato” which is more of an American-style sweet drink.
"""

  },
  productionTimeline: {
    "1900-1950": 5,
    "1950-2000": 6,
    "2000-2025": 15,
  },
  images: {
    "History": "assets/images/history.jpeg",
    "Prices": "assets/images/prices.jpeg",
    "Fun Fact": "assets/images/ff.jpg",
    "Information": "assets/images/macchiato_info.jpeg",
  },
  ),
  CoffeeType(
    name: "Flat White ",
  type: "Milky",
  image: "assets/flat.png",
  description: " With a thinner layer of microfoam.",

    details: {
    "History": """Flat White is a modern coffee drink that originated in Australia or New Zealand during the 1980s. It was created as a response to cappuccinos that were often too foamy and lattes that were too milky for some coffee drinkers.
1.  Australasian Roots:
There’s an ongoing debate whether Flat White originated in Sydney, Australia or Wellington, New Zealand. Either way, it quickly became a staple in coffee culture there.
2.  Rise to Global Fame:
Flat White gained global recognition in the 2000s as specialty coffee culture spread. Big coffee chains like Starbucks introduced it internationally by the mid-2010s.
3.  Minimalism Meets Precision:
It emphasizes the coffee flavor with a silky texture, often considered a more “refined” latte.
""",
    "Information": """• Ingredients: 1 shot of espresso + steamed milk with a thin layer of microfoam
• Flavor Profile: Stronger than a latte, smoother than a cappuccino. Rich espresso taste with creamy mouthfeel.
• Serving Style: Typically served in a 150–180 ml ceramic cup (smaller than a latte).
• Popularity: Favored by those who want less milk and more espresso in a small drink.
• Key Differences:
o Smaller than a latte
o Less foam than cappuccino
o Uses microfoam (fine, velvety milk foam)
""",
    "How to make": """Main Ingredients:
• 1 or 2 shots of espresso
• 120-140 ml steamed milk with microfoam
Step-by-Step Process:
1.  Prepare Espresso:
o Brew a ristretto or regular espresso (25-30 seconds at 9-bar pressure).
o Ristretto is often used for a richer base.
2.  Steam the Milk:
o Heat milk to around 60-65°C (140-150°F).
o Create microfoam - a silky, velvety texture with minimal bubbles.
o The foam layer should be very thin (around 0.5 cm).
3.  Combine:
o Pour steamed milk over the espresso, allowing the microfoam to blend seamlessly.
o Skilled baristas often create minimalist latte art on top.
Tips:
• Flat White requires precise milk steaming for perfect microfoam.
• Use whole milk or barista-style alternatives for better texture.
• Best served immediately to enjoy the foam’s texture and temperature
.""",
    "Prices": """In Azerbaijan:
• S (Standard 150ml): 4 - 5.5 AZN
• M (If available): 5 - 7 AZN
Globally:
• USA: 3.5 - 6 Dollars
• Europe: €3 - €5.5
• Australia/NZ: 4 - 6 AUD
• UK: £3 - £5
Factors Affecting Price:
• Coffee bean quality (often specialty-grade)
• Skilled preparation
• Location and café reputation
""",
    "Best Shops": """In Azerbaijan:
1.  Café de Paris (Baku) - Offers well-balanced Flat Whites with single-origin beans.
2.  United Coffee Beans (Baku) - Known for specialty espresso drinks.
3.  Black Star Coffee (Baku) - Minimalist café with expert baristas.
Worldwide:
1.  Campos Coffee (Sydney, Australia) - Iconic Flat Whites with rich microfoam.
2.  Flat White Café (London, UK) - One of the pioneers in bringing Flat White to Europe.
3.  Coffee Supreme (Wellington, NZ) - Specialty café with roots in Flat White culture.
4.  Blue Bottle Coffee (USA) - Known for precision brewing and smooth Flat Whites.""",
   
     "Fun Fact": """•  Microfoam = Magic: Unlike cappuccino foam, Flat White microfoam is smooth and integrates seamlessly into the espresso.
• Compact Power: Served in a small cup but packs strong espresso flavor.
• Less is More: Minimal foam, no sugar, and often no syrups—pure coffee elegance.
• No Whipped Cream or Toppings: This drink relies solely on espresso and perfectly steamed milk.
• Favored by Baristas: Its precision makes it a signature test of a barista’s skills."""
 
 },

  productionTimeline: {
    "1900-1950": 5,
    "1950-2000": 6,
    "2000-2025": 10,
  },
  images: {
    "History": "assets/images/history.jpeg",
    "Prices": "assets/images/prices.jpeg",
    "Fun Fact": "assets/images/ff.jpg",
    "Information": "assets/images/fwhite_info.jpg",
  },
  ),
  CoffeeType(
    name: "Espresso",
    type: "Without Milk",
    image: "assets/espresso.png",
    description: "Strong and bold black coffee shot.",
    details: {
      "History": """Espresso is the foundation of many popular coffee drinks and has its roots deeply embedded in Italian coffee culture.
• Origin: Invented in Italy in the early 20th century.
• 1901: The first espresso machine was patented by Luigi Bezzera.
• Popularity: Became Italy’s go-to coffee due to its speed, intensity, and bold flavor.
• Global Expansion: Spread worldwide in the mid-20th century and became the base for drinks like cappuccino, latte, and macchiato.
""",
    "Information": """• Ingredients: Finely ground dark-roast coffee beans + hot water
• Flavor Profile: Strong, rich, bold, slightly bitter, with creamy texture due to the crema
• Serving Style: Small demitasse cup (30–40 ml), often with a glass of water on the side
• Key Characteristics:
o Served in a small shot (single or double)
o Contains crema (golden foam layer on top)
o High caffeine concentration but small volume
""",
    "How to make": """Main Ingredients:
• 7–9 grams of ground coffee (for a single shot)
• Hot water (90–96°C)
• Pressure (9 bars)
Step-by-Step:
1.  Grind the Beans:
o Use fine grind, almost powdery.
2.  Tamp the Coffee:
o Evenly press ground coffee into the portafilter with 30 lbs of pressure.
3.  Extract:
o Use espresso machine to force hot water through the coffee at 9 bars pressure for 25–30 seconds.
o A single shot = ~30 ml; double shot = ~60 ml
Tips:
• Always use freshly ground beans.
• Ensure your machine’s water temperature and pressure are consistent.
• Clean your portafilter after every use.
""",
    "Prices": """UIn Azerbaijan:
• Single Shot: 3 – 4 AZN
• Double Shot: 4 – 6 AZN
Globally:
• Italy: €1 – €1.5 (very affordable and common)
• USA: 2 – 4 Dollars
• UK: £2 – £3.5
• Germany/France: €2 – €3
""",
    "Best Shops": """Azerbaijan:
• Passion Coffee (Baku) – Known for proper espresso shots and Italian-style brewing.
• Espresso Bar (Baku) – Offers single and double shots with fresh beans.
Globally:
• Sant’Eustachio Il Caffè (Rome, Italy) – Famous for its authentic Roman espresso.
• Blue Bottle Coffee (USA, Japan) – High-quality espresso with a modern twist.
• Tazza D’Oro (Rome) – A classic Roman café famous for perfectly balanced espresso.
""",
"Fun Fact": """ • "Caffè Americano" in Italian: The term literally means "American coffee."
• Long Black vs. Americano: In Australia and New Zealand, a “Long Black” is similar but made by pouring espresso over water, preserving crema.
• Healthier Choice: With no milk or added sugars, it’s low in calories and can fit into many diets.
• Double vs. Single: Many cafes use a double shot in Americanos by default — check if you want a milder version!
• Iced Americano: A popular summer option with the same rich flavor, but served over ice
"""
    
  },
  productionTimeline: {
    "1900-1950":4,
    "1950-2000": 8,
    "2000-2025": 16,
  },
  images: {
    "History": "assets/images/history.jpeg",
    "Prices": "assets/images/prices.jpeg",
    "Fun Fact": "assets/images/ff.jpg",
    "Information": "assets/images/espresso_info.jpeg",
  },
  ),
  CoffeeType(
    name: "Long Black",
    type: "Without Milk",
    image: "assets/longb.png",
    description: "Hot water with espresso poured on ",
    details: {
      "History": """.  Origin in Oceania (Australia/New Zealand):
The Long Black originated in Australia or New Zealand, where baristas adapted the Americano to better suit espresso lovers who preferred a stronger flavor and thicker crema.
2.  Crema Preservation:
By pouring espresso over hot water (instead of the other way around, like in an Americano), the crema is preserved, enhancing aroma, mouthfeel, and visual appeal.
3.  Popularized in Third Wave Coffee Culture:
As the specialty coffee movement gained momentum in the 2000s, the Long Black became a staple in cafes across Oceania and gradually spread to coffee shops worldwide.

""",
    "Information": """"• Ingredients: 1 or 2 shots of espresso + 90–120 ml hot water
• Flavor Profile: Stronger and more aromatic than an Americano. Richer crema and slightly bolder taste.
• Serving Style: Typically served in a ceramic cup, often smaller than an Americano cup. No milk or sugar unless requested.
• Popularity: Especially favored in Australia and New Zealand, and increasingly found in global specialty cafes.
• Distinctive Features: Espresso poured over water keeps the crema intact, giving a silkier and fuller espresso experience.

""",
    "How to make": """Main Ingredients:
• 1–2 shots of espresso (30–60 ml total)
• 90–120 ml hot water (not boiling)
 
Step-by-Step Preparation Process:
1.  Prepare the Hot Water
o Heat water to ~85–95°C (185–203°F).
o Pour it into the serving cup first. Fill about halfway or to taste.
2.  Brew the Espresso
o Use an espresso machine or AeroPress to pull a fresh shot (or double shot) of espresso.
o Ensure a consistent crema on top.
3.  Pour Espresso Over Water
o Slowly pour the espresso on top of the hot water.
o This prevents the crema from breaking, creating a visually appealing and aromatic drink.
4.  Serve Immediately
o Best enjoyed fresh. Optionally, offer sugar or milk on the side (though traditionally it's served plain).

""",
    "Prices": """Prices in Azerbaijan:
• S: 3-4 AZN
• M: 4–5.5 AZN
• L: 5.5–7 AZN
Prices Worldwide:
• Australia/New Zealand:
o S: AUD 3 – 4
o M: AUD 4 – 5.5
o L: AUD 5 – 6.5
• USA & Europe (specialty cafés):
o S: 2.50 – 4 Dollars / €2.50 – €4
o M: 3.50 – 5 Dollars / €3.50 – €5
o L: 4.50 – 6 Dollars/ €4.50 – €6
• UK:
o S: £2 – £3
o M: £3 – £4
o L: £4 – £5

""",
    "Best Shops": """Best Coffee Shops for Long Black in Azerbaijan
1.  Mendel’s (Baku): Offers Long Black made with attention to crema and strength.
2.  Coffee Moffie (Baku): Known for balanced espresso blends, perfect for a rich Long Black.
3.  United Coffee Beans (Baku): High-end beans and consistent water-to-coffee ratios.
4.  Café People (Baku): A modern vibe with quality espresso drinks, including proper Long Blacks.
 
Top Places for Long Black Worldwide
1.  Proud Mary (Melbourne, Australia): A benchmark for Long Black perfection with creamy crema and bold flavor.
2.  Flight Coffee (Wellington, New Zealand): Famous for its signature Long Black with single-origin beans.
3.  Allpress Espresso (Auckland, NZ & London): Globally loved for balanced and bold coffee – great Long Blacks.
4.  Flat White (London, UK): Kiwi-owned café offering authentic Long Blacks.
5.  Heart Coffee Roasters (Portland, USA): Known for precise espresso, ideal for specialty Long Blacks.

""",
"Fun Fact": """ • Crema Is Key: The crema on top holds aromatic compounds that enhance taste.
• No Stirring Needed: Stirring ruins crema — the drink is best sipped as-is.
• Barista's Favorite: Many baristas prefer Long Black for a quick but strong espresso drink.
• Iced Version: Similar method, but hot water is replaced with cold water + ice.
• Not the Same as Americano: Same ingredients, different method — and a very different result

"""
    
  },
  productionTimeline: {
    "1900-1950":1,
    "1950-2000": 2,
    "2000-2025": 6,
  },
  images: {
    "History": "assets/images/history.jpeg",
    "Prices": "assets/images/prices.jpeg",
    "Fun Fact": "assets/images/ff.jpg",
    "Information": "assets/images/lb_info.jpeg",
  },
  ),
  CoffeeType(
    name: "Iced Latte ",
  type: "Iced",
  image: "assets/ilatte.png",
  description: "Cold milk and espresso over ice",

    details: {
    "History": """"Mazagran, a cold, sweetened coffee beverage that originated in Algeria[2] 
around 
1840, has been described by locals as "the original iced coffee".[3] It was prepared with 
coffee syrup and cold water.[3] 
Frozen coffee beverages, similar to slush, are documented in the 19th century.[4][5] The 
Italian granita al caffè is a similar beverage.[6] 
"Iced coffee"—coffee that has been brewed and then chilled with ice—appeared in 
menus 
and recipes in the late 19th century.[7] 
Iced coffee was popularized by a marketing campaign of the Joint Coffee Trade 
Publicity 
Committee of the United States in 1920.[8] Much later, it was marketed by chain outlets 
like 
Burger King, Dunkin' Donuts and Starbucks. 
""",
    "Information": """Iced coffee is a coffee beverage served cold. It may be prepared either 
by 
brewing coffee normally (i.e. carafe, French press, etc.) and then serving it over ice or in 
cold milk or by brewing the coffee cold. In hot brewing, sweeteners and flavoring may 
be 
added before cooling, as they dissolve faster. Iced coffee can also be sweetened with 
pre- 
dissolved sugar in water.
""",
    "How to make": """"Basic Iced Latte Recipe (Coffee + Milk + Ice) 
Ingredients: 
• 1–2 shots of espresso (or ½ cup strong brewed coffee) 
• 1 cup cold milk (any type: dairy, oat, almond, etc.) 
• Ice cubes 
• (Optional) Sweetener (sugar, syrup, etc.) 
�
� Method 1: With Espresso Machine 
Brew espresso: Make 1–2 shots of espresso. 
Fill a glass with ice. 
Add cold milk over the ice. 
Pour espresso over the milk (you’ll see a beautiful layering effect).5. Stir and enjoy! Add 
syrup if desired. 
.""",
    "Prices": """ Small (S) 3.00 – 4.00 Dollars
Medium (M) 4.00 – 5.00 Dollars
Large (L) 5.00 – 6.00 Dollars
""",
    "Best Shops": """1. 🇺🇸 Onyx Coffee Lab – Arkansas, USA2. Ranked as the No. 2 coffee 
shop globally and the top in North America by The 
World’s 100 Best Coffee Shops. Onyx is celebrated for its commitment to quality, 
offering seasonal drinks like Lavender Bergamot Lattes and fostering a welcoming 
community atmosphere. Southern Living 
3. 🇺🇸 Anticonquista Café – Chicago, USA 
4. A standout in Chicago's Pilsen neighborhood, Anticonquista Café emphasizes 
ethical sourcing by directly connecting with Central American coffee farmers. Their 
menu features traditional flavors, and the café serves as a platform for cultural 
empowerment. Eater Chicago 
5. 🇺🇸 La Cabra – New York City, USA""",
   
     "Fun Fact": """ Although the iced latte feels like a modern café trend, it actually originated 
from the Italian "caffè latte", which simply means "milk coffee." But Italians traditionally 
drink it hot — the iced version was popularized in the United States, where people 
started adding cold milk over espresso and ice for a refreshing twist during hot summers."""
 
 },

  productionTimeline: {
    "1900-1950": 4,
    "1950-2000": 7,
    "2000-2025": 10,
  },
  images: {
    "History": "assets/images/history.jpeg",
    "Prices": "assets/images/prices.jpeg",
    "Fun Fact": "assets/images/ff.jpg",
    "Information": "assets/images/ilatte_info.jpg",
  },
  ),
  CoffeeType(
    name: "Iced Americano ",
  type: "Iced",
  image: "assets/iamericano.png",
  description: " Espresso with cold water and ice ",

    details: {
    "History": """" Iced Americano (English: [aɪst əˌmɛrɪˈkɑːno]; Italian: americano freddo; Spanish: 
café americano con hielo; lit. 'American coffee with ice') is a type of coffee drink prepared 
by diluting one or more shots of espresso with cold water and serving it over ice, typically in 
a 1:3 to 1:4 espresso-to-water ratio. The result is a cold beverage that maintains the rich, 
aromatic complexity of espresso, but with a milder, more refreshing finish. 
Its strength and flavor profile depend on the number of espresso shots used and the 
amount of water and ice added. Iced Americano is particularly popular in warm climates 
and among those who prefer a calorie-free, chilled coffee option. 
It is similar in purpose to cold brew, but differs in both brewing method and taste, as cold 
brew is steeped over many hours rather than brewed hot and chilled instantly. 

""",
    "Information": """An Iced Americano is a popular and refreshing cold coffee beverage made by diluting one 
or two shots of espresso with cold water and serving it over a glass filled with ice. This 
simple yet bold drink maintains the rich, aromatic flavors of espresso while offering a 
lighter, smoother taste compared to drinking straight espresso. 
It is especially favored by those who enjoy the intensity of coffee without added milk, 
cream, or sugar. The drink is naturally low in calories (usually under 5 kcal if unsweetened) 
and contains a notable amount of caffeine, making it an ideal choice for a cool energy 
boost in hot weather or long working hours. 
""",
    "How to make": """• 1–2 shots of espresso 
• 120–180 ml cold water 
• Ice cubes 
1. Preparation Method – Iced Americano 
2. Brew the espresso – Prepare 1–2 shots of espresso using an espresso machine, 
moka pot, or AeroPress. 
3. Prepare the glass – Fill a tall glass with ice cubes. 
4. Add cold water – Pour 120–180 ml (4–6 oz) of cold water over the ice. 
5. Pour the espresso – Slowly pour the hot espresso over the cold water and ice. 
6. Optional sweetening – Add syrup or a lemon slice if desired. 
7. Serve immediately – Stir lightly or enjoy the layered look. 

.""",
    "Prices": """ Small (S) 2.5.00 – 3.00 Dollars
Medium (M) 3.00 – 3.50 Dollars
Large (L) 3.50 – 4.00 Dollars
""",
    "Best Shops": """• Starbucks 
• Blue Bottle Coffee (USA) 
• %Arabica (Japan and global locations)""",
   
     "Fun Fact": """ The name "Americano" is believed to have originated during World War II, when American 
soldiers in Italy diluted espresso with water to resemble the coffee they were used to back 
home. """
 
 },

  productionTimeline: {
    "1900-1950": 1,
    "1950-2000": 7,
    "2000-2025": 9,
  },
  images: {
    "History": "assets/images/history.jpeg",
    "Prices": "assets/images/prices.jpeg",
    "Fun Fact": "assets/images/ff.jpg",
    "Information": "assets/images/iamericano_info.jpg",
  },
  ),
  CoffeeType(
    name: "Turkish ",
  type: "Special",
  image: "assets/turkish.png",
  description: "Ground coffee simmered in a pot",

    details: {
    "History": """" coffee quickly became a cultural staple. It was introduced from 
Yemen and became central to social life, often served during 
important gatherings and ceremonies.

""",
    "Information": """Made with very finely ground Arabica beans, Turkish coffee is 
brewed slowly in a special long-handled pot called a cezve. It is 
typically unfiltered, resulting in a strong, bold cup with sediment at 
the bottom. It's usually enjoyed with water and a piece of Turkish 
delight.
""",
    "How to make": """• Finely ground coffee is mixed with cold water in a cezve. 
• Sugar is added if desired (none, medium, or sweet). 
• The mixture is slowly brought to a boil without stirring. 
• As foam rises, it's spooned into the cup, and the coffee is 
gently boiled again before pouring the rest. 
• Traditionally served with water and Turkish delight. 

.""",
    "Prices": """ Small (S) 2.00 – 3.00 Dollars
Medium (M) 3.00 – 4 Dollars
Large (L)  Rare, usually served in small portions
""",
    "Best Shops": """• Mandabatmaz – Istanbul, Turkey 
• Pierre Loti Café – Istanbul 
• Kurukahveci Mehmet Efendi – A famous traditional coffee 
brand""",
   
     "Fun Fact": """In 2013, UNESCO recognized Turkish coffee as an Intangible 
Cultural Heritage of Humanity. In Turkish culture, coffee grounds 
left in the cup are often used for fortune telling!"""
 
 },

  productionTimeline: {
    "1900-1950": 2,
    "1950-2000": 5,
    "2000-2025": 9,
  },
  images: {
    "History": "assets/images/history.jpeg",
    "Prices": "assets/images/prices.jpeg",
    "Fun Fact": "assets/images/ff.jpg",
    "Information": "assets/images/turkish_info.jpeg",
  },
  ),
  CoffeeType(
    name: "Vietnamese ",
  type: "Special",
  image: "assets/viet.png",
  description: "Strong drip coffee,condensed milk",

    details: {
    "History": """" Coffee was introduced to Vietnam by the French in the 19th century. 
Due to the limited availability of fresh milk at the time, locals began 
using sweetened condensed milk, giving rise to

""",
    "Information": """Cà phê sữa đá is made with robusta coffee beans, which are more 
bitter and contain more caffeine than arabica beans. It’s typically 
brewed using a small metal drip filter called a phin. The result is a 
strong, concentrated coffee that is balanced by the creamy 
sweetness of condensed milk and served over ice. 
""",
    "How to make": """• Place 2–3 tablespoons of sweetened condensed milk in a 
glass. 
• Set a phin filter on top of the glass and add 2–3 tablespoons of 
ground robusta coffee. 
• Pour a small amount of hot water to bloom the coffee, then fill 
the filter. 
• Let the coffee drip slowly into the glass (5–7 minutes). 
• Stir well to mix with the condensed milk, then pour over a glass 
of ice. 
• Serve chilled.

.""",
    "Prices": """ Small (S) 2.00 – 3.00 Dollars
Medium (M) 3.00 – 4 Dollars
Large (L)  4.00 - 5 Dollars
""",
    "Best Shops": """• The Coffee House – Ho Chi Minh City 
• Trung Nguyên Legend – Nationwide, Vietnam 
• Cong Caphe – Known for its retro decor and strong Vietnamese 
brews 
""",
   
     "Fun Fact": """Vietnam is the second-largest coffee producer in the world, and 
over 90% of its production is robusta beans—making Vietnamese 
coffee uniquely strong and flavorful!"""
 
 },

  productionTimeline: {
    "1900-1950": 8,
    "1950-2000": 10,
    "2000-2025": 9,
  },
  images: {
    "History": "assets/images/history.jpeg",
    "Prices": "assets/images/prices.jpeg",
    "Fun Fact": "assets/images/ff.jpg",
    "Information": "assets/images/viet_info.jpeg",
  },
  ),
  CoffeeType(
    name: "Swedish ",
  type: "Special",
  image: "assets/sw.png",
  description: " Drip Fika Coffee",

    details: {
    "History": """" The concept of fika dates back to the early 20th century but has 
roots in the Swedish adaptation of coffee culture since the 18th 
century. Originally, the word “fika” came from the old Swedish slang 
reversal of kaffi (coffee). Over time, it became a beloved national 
ritual. 

""",
    "Information": """Fika typically involves filter or drip-brewed coffee, often a medium 
roast, served with baked treats such as cinnamon buns 
(kanelbullar), cookies, or cakes. It’s not about a specific coffee type 
but about the break itself—meant to be a moment of relaxation, 
socializing, or quiet reflection. 
""",
    "How to make": """• Use a drip coffee maker or French press with medium-roasted, 
freshly ground coffee. 
• Brew with filtered water for a clean flavor. 
• Serve in large mugs, either black or with milk and sugar. 
• Accompany with pastries (especially cinnamon buns) to 
complete the fika experience. 
• Best enjoyed in a calm setting with good company. 

.""",
    "Prices": """ Small (S) 2.00 – 3.00 Dollars
Medium (M) 3.00 – 4 Dollars
Large (L)  4.00 - 5 Dollars
(Fika sets with coffee + pastry may range from 5–8 Dollars)
""",
    "Best Shops": """• Vete-Katten – Stockholm (classic and historic) 
• Drop Coffee – Stockholm (specialty roastery) 
• Johan & Nyström – Stockholm and other locations (modern 
and artisanal)
""",
   
     "Fun Fact": """In Sweden, having fika is so important that many companies 
officially schedule fika breaks twice a day—it’s considered vital for 
social bonding and work-life balance!"""
 
 },

  productionTimeline: {
    "1900-1950": 8,
    "1950-2000": 8.5,
    "2000-2025": 16,
  },
  images: {
    "History": "assets/images/history.jpeg",
    "Prices": "assets/images/prices.jpeg",
    "Fun Fact": "assets/images/ff.jpg",
    "Information": "assets/images/swedish_info.jpeg",
  },
  ),
];
