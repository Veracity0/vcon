since r26350;

import <vprops.ash>;

// ***************************
//       Configuration       *
// ***************************

// If you want to exclude specific items from consideration, add them here.
// For example, to exclude Hobopolis consumables:
//
//     set VCON.ExcludedConsumables=frozen banquet|Hodgman's blanket|Tin cup of mulligan stew

item_set user_excluded_consumables = define_property( "VCON.ExcludedConsumables", "item", "", "set" );

// If you don't care if consumables give you malignant effects - you
// have a mood which will do it, for example - set this to false

boolean avoid_malignant_effects = define_property( "VCON.AvoidMalignantEffects", "boolean", "true" ).to_boolean();
      
// Booze sets

// awesome (4-6:5/drunk) 1-drunk (Robortender)
static item_set AWESOME_ROBORTENDER_DRINKS = $items[
    Churchill,			// Big Ol' Glass of Rum (Moxie +20)
    double entendre,		// Space Cadet (Maximum MP +50%)
    extremely slippery nipple,	// Slippery Tongue (+20 Sleaze)
    Gnomish sagngria,		// Stregngth of the Gnome (Muscle +20)
    great old fashioned,	// Creepin' Up on You (+20 Spooky)
    literal grasshopper,	// Wings of the Grasshopper (Initiative +50)
    London frog,		// Slime Time (Maximum HP +100%)
    low tide martini,		// Floundering (+5 Fishing Skill)
    mentholated wine,		// Christmessy (+5 to Familiar Weight)
    morning dew,		// Granolarrrgh (+20 Stench)
    nothingtini,		// Nothing Happened (Monster Level +20)
    Phlegethon,			// Flambe-a-thon (+20 Hot)
    piscatini,			// You Drank Fish Wine (+20 Cold)
    shroomtini,			// Mushroom Samba (Item Drop +25%)
    Siberian sunrise,		// Sugar, Hello (Mysticality +20)
    soilzerac,			// Here's Mud in Your Eye (Meat Drop +50)
    vodka stinger,		// Mer-kindliness (+2 resist all)
    whiskey squeeze,		// Hobo Powers Activate! (+10 Hobo Power)
];

// EPIC (5-7:6/drunk) 1-drunk (Robortender)
static item_set EPIC_ROBORTENDER_DRINKS = $items[
    Bloody Nora,		// Fishtacular Vernacular (+10 Fishing Skill)
    dirt julep,			// Here's Some More Mud in Your Eye (Meat Drop +100)
    drive-by shooting,		// Drive-By Shot (+40 Cold)
    eighth plague,		// Wings of the Dragonfly (Initiative +100)
    elemental caipiroska,	// Magically Delicious (Mysticality +40)
    Feliz Navidad,		// Wassailing You (+5 to Familiar Weight)
    Gnollish sangria,		// Strength of the Gnoll (Muscle +40)
    gunner's daughter,		// You Kissed the Gunner's Daughter (Moxie +40)
    hell in a bucket,		// Hell ib a Hambasked (+40 Stench)
    moreltini,			// Truffle Tango (Item Drop +50%)
    Mysterious island iced tea,	// Orcmouth (+40 Sleaze)
    Newark,			// Hobo Powers Activate! (+10 Hobo Power)
    Phil Collins,		// Hello, I Must Be Going (Monster Level +400)
    reverse Tantalus,		// It's So Hot in Your Guts, So So Hot (+40 Hot)
    R'lyeh,			// The Effect Man Was Not Meant to Have (+40 Spooky)
    Simepore slime,		// The Secret of the Ooze (Maximum HP +200%)
    single entendre,		// Pounded by the Actual Stars (Maximum MP +100%)
    vodka barracuda,		// Mer-kinkiness (+4 resist all)
];

item_set [] ALL_ROBORTENDER_DRINKS = { AWESOME_ROBORTENDER_DRINKS, EPIC_ROBORTENDER_DRINKS };

// awesome (6-7:3.5/drunk) 2-drunk (orange aura) Happy Medium
static item_set ORANGE_MEDIUM_DRINKS = $items[
    Aye Aye\, Captain,			// Arrestible (+50 Moxie)
    Black Hole,				// None (restores MP)
    Candy Alexander,			// Holiday Bliss (+Item Drop +20 & Meat Drop +20)
    Chakra Libre,			// Trancendental Wind (+50 Mysticality)
    Doublepunchplanter,			// Fishy (-1 Adventure underwater)
    Drunken Neurologist,		// Heisenberglary (+/- stats randomly)
    Earth and Firewater,		// Elemental Mastery (+5 prismatic damage)
    Extra-slimy Slimosa,		// In the Slimelight (+50 Stench)
    Flying Caipiranha,			// Fishy (-1 Adventure underwater)
    Fuzzy Tentacle,			// Void Between the Stars (+50 Cold)
    Golden Mean,			// World's Shortest Giant (+2 resist all)
    Green Muslin,			// None (restores MP)
    Herring Wallbanger,			// Fishy (-1 Adventure underwater)
    Jackhammer,				// Mortarfied (DA +100)
    Locust,				// Cockroach SLurry (Initiative +50)
    Moonshine Mohobo,			// Mo'Hobo (+10 Hobo Power)
    More Humanitini than Humanitini,	// None (restores HP)
    Sazuruk-hai,			// Orc Chops (+50 Muscle)
    Slippery Knob,			// Gutterminded (+50 Sleaze)
    Sloe Comfortable Zoo,		// Rampage! (+50% Weapon Damage)
    Suppurating Sinner,			// Heart Aflame (+50 Hot)
    Transylvania Sling,			// Creepypasted (+50 Spooky)
];

// awesome (8-9:4.5/drunk) 2-drunk (red aura) Happy Medium
static item_set RED_MEDIUM_DRINKS = $items[
    Aura Libre,				// Trancendental Wind (+50 Mysticality)
    Aye Aye\, Tooth Tooth,		// Arrestible (+50 Moxie)
    Candicaine,				// Holiday Bliss (+Item Drop +20 & Meat Drop +20)
    Crazymaker,				// Void Between the Stars (+50 Cold)
    Drunken Astrophysicist,		// Heisenberglary (+/- stats randomly)
    Dump Truck,				// Mortarfied (DA +100)
    Event Horizon,			// None (restores MP)
    Earth\, Wind and Firewater,		// Elemental Mastery (+5 prismatic damage)
    Flaming Caipiranha,			// Fishy (-1 Adventure underwater)
    Flaming Knob,			// Gutterminded (+50 Sleaze)
    Flaming Mohobo,			// Mo'Hobo (+10 Hobo Power)
    Flaming Sazerorc,			// Orc Chops (+50 Muscle)
    Green Burlap,			// None (restores MP)
    Green Giant,			// World's Shortest Giant (+2 resist all)
    Haymaker,				// Fishy (-1 Adventure underwater)
    Herringtini,			// Fishy (-1 Adventure underwater)
    Oh\, the Humanitini,		// None (restores HP)
    Plague of Locusts,			// Cockroach SLurry (Initiative +50)
    Shot of the Living Dead,		// Creepypasted (+50 Spooky)
    Sizzling Sinner,			// Heart Aflame (+50 Hot)
    Slimebite,				// In the Slimelight (+50 Stench)
    Sloe Comfortable Zoo on Fire,	// Rampage! (+50% Weapon Damage)
];

item_set [] ALL_MEDIUM_DRINKS = { ORANGE_MEDIUM_DRINKS, RED_MEDIUM_DRINKS };

// EPIC (18-19:6/drunk) 3-drunk (perfect ice cube)
static item_set ALL_PERFECT_DRINKS = $items[
    perfect cosmopolitan,
    perfect negroni,
    perfect dark and stormy,
    perfect mimosa,
    perfect old-fashioned,
    perfect paloma,
];

// awesome (14-18:4/drunk) 4-drunk Super Cocktailcrafting
static item_set ALL_SHC_DRINKS = $items[
    Divine,
    gimlet,
    Gordon Bennett,
    Mae West,
    mandarina colada,
    Mon Tiki,
    Neuromancer,
    prussian cathouse,
    tangarita,
    teqiwila slammer,
    vodka stratocaster,
    yellow brick road,
];

static string VMF_MEAT_SETTING = "VMF.TotalMeat";
static string VMF_TURN_SETTING = "VMF.TotalTurns";

int vcon_mpa()
{
    // Calculates an appropriate "value of one adventure".
    // Default is KoLmafia's property for such.
    // Assume it is at least 500.
    int voa = max( 500, get_property( "valueOfAdventure" ).to_int() );

    // See what we have earned using VeracityMeatFarm
    int turn_total = get_property( VMF_TURN_SETTING ).to_int();
    if ( turn_total == 0 ) {
	// If we have not used VeracityMeatFarm, use the "value of an
	// adventure" from KoLmafia's setting.
	return voa;
    }

    // Otherwise, calculate it from VMF's statistics.
    // Again, assume it is at least 500
    int meat_total = get_property( VMF_MEAT_SETTING ).to_int();
    return max( voa, meat_total / turn_total );
}

record consumable
{
    item it;		// The item
    int size;		// How much space it fills
    int cost;		// Current mall price
    int profit;		// Expected profit
    int cps;		// DERIVED: Cost per size
    int pps;		// DERIVED: Profit per size
};

// A map of consumables to consider when calculating a diet.  For each
// "size" (the key), the value is the "most profitable" consumable for a
// given MPA

typedef consumable [int] consumables_by_size;


// The "most profitable" diet of consumables (and count) for a given
// total capacity to fill.

typedef consumable[ int ] consumable_diet;

consumable find_profitable_consumable( item_set [] consumables, int size, int mpa, int needed )
{
    float adventures( item it )
    {
	string range = it.adventures;
	if ( range.is_integer() ) {
	    return range.to_float();
	}
	string [] values = range.split_string( "-" );
	if ( count( values ) != 2 ||
	     !is_integer( values[ 0 ] ) ||
	     !is_integer( values[ 1 ] ) ) {
	    return 0.0;
	}

	return ( values[ 0 ].to_int() + values[ 1 ].to_int() ) / 2.0;
    }

    // We don't want a consumable which will cost more to buy than we'll be
    // able to recover using the adventures it generates.

    // Use statistics collected from this script to determine how much
    // meat we expected to earn in an adventure.
    int my_expected_mpa = mpa;
    
    item current_consumable = $item[ none ];
    int current_price = 0;
    int current_expected_profit = 0;
    int max_price = get_property( "autoBuyPriceLimit" ).to_int();

    foreach index, set in consumables {
	foreach consumable in set {
	    // skip candies, since we'd prefer to use them for Swwet Synthesis
	    if ( consumable.candy ) {
		continue;
	    }
	    
	    float adventures = adventures( consumable );
	    if ( adventures == 0.0 ) {
		// Unknown data
		continue;
	    }

	    int price = retrieve_price( needed, consumable, true ) / needed;
	    if ( price > max_price || price <= 0 ) {
		// Too expensive or bogus (Speakeasy drinks are tradeable but have no mall price)
		continue;
	    }

	    // Calculate how much Meat we expect to earn with this consumable's adventure yield
	    int expected_income = my_expected_mpa * adventures;

	    // Calculate our profit from using this consumable
	    int expected_profit = expected_income - price;

	    // If this is more profitable than current best, keep it
	    if ( expected_profit > current_expected_profit ) {
		print( consumable + " (" + price + " cost; " + expected_profit + " expected_profit) is better than " + current_consumable + " (" + current_expected_profit + ")" );
		current_consumable = consumable;
		current_price = price;
		current_expected_profit = expected_profit;
	    }
	}
    }

    int cps = ( current_price * 1.0 ) / size;
    int pps = ( current_expected_profit * 1.0 ) / size;

    return new consumable( current_consumable, size, current_price, current_expected_profit, cps, pps );
}

consumable find_profitable_consumable( item_set items, int size, int mpa, int needed )
{
    item_set [] consumables = { items };
    return find_profitable_consumable( consumables, size, mpa, needed );
}

static item_set [int] booze_by_size;
static int booze_initialized = 0;
static item_set [int] food_by_size;
static int food_initialized = 0;
static item_set [int] spleen_by_size;
static int spleen_initialized = 0;

static item_set [int] superior_booze_by_size;
static item_set [int] superior_food_by_size;
static item_set [int] superior_spleen_by_size;

// Effects granted by selected items that you'd probably want to uneffect.
// So, exclude the consumable
static effect_set malignant_effects = $effects[
    Just the Best Anapests,
    QWOPped Up,
];

static item_set excluded_consumables = $items[
    // Consumables with specialty situationally useful effects that you
    // probably don't want to use just for their adventure gains
    extra-greasy slider,
    jar of fermented pickle juice,

    // Once in a lifetime consumables
    Calzone of Legend,
    Deep Dish of Legend,
    Pizza of Legend,

    // Vampyre consumables - usable only in Dark Gyffte
    bloodstick,
    actual blood sausage,
    blood snowcone,
    blood roll-up,
    blood-soaked sponge cake,
    bottle of Sanguiovese,
    mulled blood,
    Red Russian,
    dusty bottle of blood,
    vampagne,

    // Consumables which fill more than one organ
    red drunki-bear,
    green drunki-bear,
    yellow drunki-bear,
];

static {
    void add_to_consumable_set( item it, int size, item_set [int] sets )
    {
	if ( size == 0 ) {
	    return;
	}

	// Only consider tradable items, since we will try to buy them
	if ( !it.tradeable ) {
	    return;
	}

	// Get current item set for this size. Will create a new set if not present
	item_set cset = sets[ size ];
	// Add new item to the set
	cset[ it ] = true;
	// Replace the set, since if this is the first item of this size, was not previously in map
	sets[ size ] = cset;
    }

    boolean is_superior_item( item it )
    {
	switch ( it.quality ) {
	case "crappy":
	case "decent":
	case "good":
	    return false;
	}
	// awesome, EPIC, unclassified
	return true;
    }

    foreach it in $items[] {
	// Do not consider consumables that are specifically excluded by the user
	if ( user_excluded_consumables contains it ) {
	    continue;
	}

	// Do not consider consumables that have situationally useful powers beyond adventures
	if ( excluded_consumables contains it ) {
	    continue;
	}

	// Do not consider consumables that grant malignant effects
	if ( avoid_malignant_effects && malignant_effects contains effect_modifier( it, "Effect" ) ) {
	    continue;
	}

	// Do not consider consumables that require a higher level than we have
	if ( it.levelreq > my_level() ) {
	    continue;
	}

	// Do not consider consumables that we cannot currently use
	if ( !it.is_unrestricted() ) {
	    continue;
	}

	// Do not consider consumables that give both inebriety and fullness
	if ( it.inebriety > 0 && it.fullness == 0 ) {
	    add_to_consumable_set( it, it.inebriety, booze_by_size );
	    if ( it.is_superior_item() ) {
		add_to_consumable_set( it, it.inebriety, superior_booze_by_size );
	    }
	}

	if ( it.fullness > 0 && it.inebriety == 0 ) {
	    add_to_consumable_set( it, it.fullness, food_by_size );
	    if ( it.is_superior_item() ) {
		add_to_consumable_set( it, it.fullness, superior_food_by_size );
	    }
	}

	if ( it.spleen > 0 ) {
	    add_to_consumable_set( it, it.spleen, spleen_by_size );
	    if ( it.is_superior_item() ) {
		add_to_consumable_set( it, it.spleen, superior_spleen_by_size );
	    }
	}
    }
}

item find_profitable_booze( int size, int mpa )
{
    if ( !( booze_by_size contains size ) ) {
	print( "I don't know any size " + size + " boozes." );
	return $item[ none ];
    }

    int current_space = inebriety_limit() - my_inebriety();
    if ( current_space <= 0 ) {
	current_space = inebriety_limit();
    }

    int needed = max( current_space / size, 1);
    return find_profitable_consumable( booze_by_size[ size ], size, mpa, needed ).it;
}

item find_profitable_food( int size, int mpa )
{
    if ( !( food_by_size contains size ) ) {
	print( "I don't know any size " + size + " foods." );
	return $item[ none ];
    }

    int current_space = fullness_limit() - my_fullness();
    if ( current_space <= 0 ) {
	current_space = fullness_limit();
    }

    int needed = max( current_space / size, 1);
    return find_profitable_consumable( food_by_size[ size ], size, mpa, needed ).it;
}

item find_profitable_spleen( int size, int mpa )
{
    if ( !( spleen_by_size contains size ) ) {
	print( "I don't know any size " + size + " spleen toxins." );
	return $item[ none ];
    }

    int current_space = spleen_limit() - my_spleen_use();
    if ( current_space <= 0 ) {
	current_space = spleen_limit();
    }

    int needed = max( current_space / size, 1);
    return find_profitable_consumable( spleen_by_size[ size ], size, mpa, needed ).it;
}

consumables_by_size vcon_best_boozes;
consumables_by_size vcon_best_foods;
consumables_by_size vcon_best_spleens;
consumable vcon_best_robortender;
consumable vcon_best_medium;
consumable vcon_best_perfect;
consumable vcon_best_shc;

// TODO: make optional whether or not to consider "autoBuyPriceLimit"
// TODO: make optional whether or not to consider candies
// TODO: Ode to Booze and milk of magnesium
// TODO: barrel prayers up to 10 size per day: TT = food, AT = booze

void calculate_best_foods( int mpa )
{
    // Bulk update mall prices for "food" items
    if ( food_initialized == 0 ) {
	food_initialized = mall_prices( "food", "awesome, EPIC" );
    }

    int current_space = fullness_limit() - my_fullness();
    if ( current_space <= 0 ) {
	current_space = fullness_limit();
    }
    foreach size, is in superior_food_by_size {
	int needed =  max( current_space / size, 1);
	consumable con = find_profitable_consumable( is, size, mpa, needed );
	if ( con.it != $item[ none ] ) {
	    vcon_best_foods[ size ] = con;
	}
    }
}

void calculate_best_boozes( int mpa )
{
    // Bulk update mall prices for "booze" items
    if ( booze_initialized == 0 ) {
	booze_initialized = mall_prices( "booze", "awesome, EPIC" );
    }

    int current_space = inebriety_limit() - my_inebriety();
    if ( current_space <= 0 ) {
	current_space = inebriety_limit();
    }

    foreach size, is in superior_booze_by_size {
	int needed =  max( current_space / size, 1);
	consumable con = find_profitable_consumable( is, size, mpa, needed );
	if ( con.it != $item[ none ] ) {
	    vcon_best_boozes[ size ] = con;
	}
    }

    vcon_best_robortender = find_profitable_consumable( ALL_ROBORTENDER_DRINKS, 1, mpa, max( current_space, 1) );
    vcon_best_medium = find_profitable_consumable( ALL_MEDIUM_DRINKS, 2, mpa, max( current_space / 2, 1) );
    vcon_best_perfect = find_profitable_consumable( ALL_PERFECT_DRINKS, 3, mpa, max( current_space / 3, 1) );
    vcon_best_shc = find_profitable_consumable( ALL_SHC_DRINKS, 4, mpa, max( current_space / 4, 1));
}

void calculate_best_spleens( int mpa )
{
    // Bulk update mall prices for "spleen" items
    if ( spleen_initialized == 0 ) {
	spleen_initialized = mall_prices( "othercon", "" );
    }

    int current_space = spleen_limit() - my_spleen_use();
    if ( current_space <= 0 ) {
	current_space = spleen_limit();
    }

    // Consider all spleen items that give adventures, whether or not they are "superior"
    foreach size, is in spleen_by_size {
	int needed =  max( current_space / size, 1);
	consumable con = find_profitable_consumable( is, size, mpa, needed );
	if ( con.it != $item[ none ] ) {
	    vcon_best_spleens[ size ] = con;
	}
    }
}

void calculate_best_consumables( int mpa )
{
    calculate_best_foods( mpa );
    calculate_best_boozes( mpa );
    calculate_best_spleens( mpa );
}

// xkiv's algorithm from https://kolmafia.us/showthread.php?23145&p=149344&viewfull=1#post149344

/*
best_found_diet=[]; // dynamic array
for (i=1; i<= organ_size; i++) {
  best_found_diet[i] = [ vcon_best_foods[i] ];
}
for (i=1; i<= organ_size; i++) {
  for (j=1; j<i; j++) {
    // how do you concatenate arrays in ASH, again?
    combined_diet = best_found_diet[j] + best_found_diet[i-j]; // try beating the single food item of size i by eating multiple smaller foods
    if (profit(combined_diet) > profit(best_found_diet[i])) {
      best_found_diet[i] = combined_diet;
    }
  }
}
 */

consumable_diet calculate_diet( consumables_by_size candidates, int capacity )
{
    consumable_diet concatenate( consumable_diet... diets )
    {
	consumable_diet combined;
	foreach i, diet in diets {
	    foreach i, c in diet {
		combined[ combined.count() ] = c;
	    }
	}
	return combined;
    }

    int profit( consumable_diet diet )
    {
	int meat = 0;
	foreach i, c in diet {
	    meat += c.profit;
	}
	return meat;
    }

    consumable_diet compact( consumable_diet diet )
    {
	consumable_diet compacted;
	foreach i, c in diet {
	    if ( c.it != $item[ none ] ) {
		compacted[ compacted.count() ] = c;
	    }
	}
	return compacted;
    }

    void print_diet( consumable_diet diet )
    {
	foreach index, c in diet {
	    print( c.it + " (" + c.profit + " profit)" );
	}
    }

    // An array of best diets from 1 to capacity
    consumable_diet[ int ] diets;

    // Preload it with the best consumables
    for ( int i = 1; i <= capacity; i++ ) {
	diets[ i ] = { candidates[ i ] };
    }

    for ( int i = 1; i <= capacity; i++ ) {
	for ( int j = 1; j < i; j++ ) {
	    consumable_diet combined = concatenate( diets[ j ], diets[ i - j ] );
	    if ( combined.profit() > diets[ i ].profit() ) {
		// print( "diets " + j + " + " + ( i - j ) + " is better than diet " + i +". Upgrading." );
		diets[ i ] = combined;
	    }
	}
    }

    // The calculated diet may conain "none" if there are no
    // profitable consumables for certain sizes. Remove those.
    return diets[ capacity ].compact();
}

void main()
{
    void print_con( consumable con, string type )
    {
	print( type + "[" + con.size + "] is " + con.it + " (" + con.cps + " cost per size)" + " (" + con.pps + " profit per size)" );
    }

    void print_best( consumables_by_size map, string type )
    {
	foreach size, con in map {
	    print_con( con, type );
	}
    }

    int mpa = vcon_mpa();

    print( "Calculating expected profit for consumables, given Meat Per Adventure = " + mpa );
    print( "" );

    calculate_best_consumables( mpa );

    print( "" );
    print( "******Best Food by Size******" );
    print_best( vcon_best_foods, "food" );
    print( "" );
    print( "******Best Booze by Size******" );
    print_best( vcon_best_boozes, "booze" );
    print( "" );
    print_con( vcon_best_robortender, "ROBORTENDER" );
    print_con( vcon_best_medium, "MEDIUM" );
    print_con( vcon_best_perfect, "PERFECT" );
    print_con( vcon_best_shc, "SHC" );
    print( "" );
    print( "******Best Spleen Toxins by Size******" );
    print_best( vcon_best_spleens, "spleen" );
}