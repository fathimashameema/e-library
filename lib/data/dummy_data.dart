import 'package:flutter/material.dart';
import 'package:ohara/models/book_model.dart';
import 'package:ohara/models/category.dart';

final List<Category> categories = [
  Category(id: 'c1', name: 'Fiction', icon: Icon(Icons.book)),
  Category(id: 'c2', name: 'Science', icon: Icon(Icons.science)),
  Category(id: 'c3', name: 'History', icon: Icon(Icons.history_edu)),
  Category(id: 'c4', name: 'Technology', icon: Icon(Icons.computer)),
  Category(id: 'c5', name: 'Philosophy', icon: Icon(Icons.psychology)),
  Category(id: 'c6', name: 'Biographies', icon: Icon(Icons.person)),
  Category(id: 'c7', name: 'Children story', icon: Icon(Icons.child_care)),
  Category(id: 'c8', name: 'Romance', icon: Icon(Icons.people)),
];

final List<Book> books = [
  // ------------------------------------------------------------
  // 1.fiction
  // ------------------------------------------------------------
  Book(
    id: 'f1',
    title: 'Great Expectations',
    author: 'Charles Dickens',
    coverUrl:
        "https://www.gutenberg.org/cache/epub/1400/pg1400.cover.medium.jpg",
    publishedDate: DateTime(1861, 8, 1),
    language: 'English',
    rating: 4.7,
    tags: ['c1'],
    description:
        "Great Expectations follows the life of Pip, an orphan whose journey from humble beginnings to unexpected fortune explores themes of ambition, identity, social class, and personal growth. Dickens blends suspense, emotional depth, and unforgettable characters.",
    content:
        "My earliest memories rest almost entirely on the marsh country, where the river wound its way like a great, lazy serpent between banks of swamp and reeds. The wind seemed always to carry with it a forlorn howl, as if the desolation of the place wanted to make itself known. I remember standing there as a small boy, shivering in my rough clothes, staring across the marshes with a curious mixture of fear and fascination.\n\nIt was on such an evening that I first encountered the man who would unknowingly set in motion all the turning points of my life. The light was fading fast, bathing the landscape in a dull gray that made every shadow seem larger, every sound more suspicious. I had gone, as I often did, to visit the grave of my parents—a pair of worn, moss-covered stones in the churchyard that were as familiar to me as anything else in the world.\n\nAs I traced the letters of my father’s name with a small, trembling finger, a voice cut through the silence like a knife. \"Hold your noise!\" it barked. I spun around, my heart thudding in my chest. From behind a crooked headstone rose a man in rough, torn clothing. Chains hung from his legs, clanking softly as he stepped forward. His face was gaunt, hollow, and streaked with mud, but his eyes burned with wild desperation.\n\n“You young dog,” he growled, advancing as I stumbled back. “Tell me your name! Quick!”\n\n“P-Pip, sir,” I managed to whisper, every inch of me shaking. The man seized me by the shoulders, not cruelly, but with an urgency that chilled me.\n\n“Lookee here, Pip,” he said, lowering his voice, though the menace in it remained. “You bring me wittles. Food, d’ye understand? And a file! To cut through these infernal chains. You bring ’em tomorrow morning, early. Or I’ll have your heart and liver out.”\n\nTerrified as I was, I nodded. What else could a trembling little boy do? The man gave me one last look, released me, and disappeared into the darkening marshes. For a long while after, I stood frozen, unable to persuade my legs to carry me home.\n\nThat night, I lay awake thinking of the convict—of his ragged breath, his harsh voice, and the fierce light in his eyes. Every creak of the old beams above me, every brush of wind against the window, made me imagine he had returned to make good on his threat. But as fear gave way to a child’s nervous determination, I realized I had no choice but to help him.\n\nWhen dawn finally seeped into the sky, pale and cold, I crept down to the kitchen. My sister, stern and domineering as she was, would sooner have thrown me into the fire than willingly give me food for a stranger, yet I managed to steal a small portion—bread, a slice of cheese, and the precious piece of pork pie she guarded as jealously as her temper. I hid them beneath my shirt and slipped out into the morning mist.\n\nThe marshes were eerily quiet, and every step I took seemed to echo. I found the convict where I had left him, crouched against a ruined ship's mooring post. His face lit with a mixture of hunger and gratitude when he saw the food. He devoured it with a desperation that made me feel, oddly enough, sorry for him.\n\nWhen I handed him the file I had stolen from Joe’s forge, he looked at it with something like reverence.\n\n“You’re a good lad,” he said, his voice softer now, though still rough with suffering. “I won’t forget this.”\n\nAt the time, I had no notion how heavily those words would weigh on my future. Nor could I guess that the trembling act of kindness I offered that morning would become the root from which all my great expectations would grow. I only knew that my heart was pounding, my hands shook with cold and fear, and the marsh wind carried that mournful howl once more.\n\nIt was the beginning—though I did not know it then—of a journey that would twist my life into shapes I could never have imagined.",
  ),

  // ------------------------------------------------------------
  // 2.Science
  // ------------------------------------------------------------
  Book(
    id: 's1',
    title: 'On the Origin of Species',
    author: 'Charles Darwin',
    coverUrl:
        "https://www.gutenberg.org/cache/epub/1228/pg1228.cover.medium.jpg",
    publishedDate: DateTime(1859, 11, 24),
    language: 'English',
    rating: 4.8,
    tags: ['c2'],
    description:
        "Darwin’s groundbreaking book introduced the theory of evolution and natural selection, reshaping the scientific understanding of life on Earth.",
    content:
        "The deck of the HMS Beagle creaked beneath Darwin’s feet as waves crashed against its wooden hull. The young naturalist clutched his notebook, its pages already filled with sketches and observations of strange and wondrous creatures. As the ship approached the rocky shores of the Galápagos Islands, he felt the familiar mixture of excitement and curiosity. Each new landscape presented a puzzle—minute variations in finches, unexpected adaptations in reptiles, surprising similarities among species separated by oceans. Standing at the bow, Darwin sensed that the pieces of a vast explanation were forming in his mind, one that would challenge long-held beliefs and alter humanity’s understanding of its origins...",
  ),

  // ------------------------------------------------------------
  // 3. HISTORY
  // ------------------------------------------------------------
  Book(
    id: 'h1',
    title: 'The Art of War',
    author: 'Sun Tzu',
    coverUrl: "https://www.gutenberg.org/cache/epub/132/pg132.cover.medium.jpg",
    publishedDate: DateTime(500, 1, 1),
    language: 'Chinese',
    rating: 4.6,
    tags: ['c3'],
    description:
        "One of the oldest and most influential books on military strategy, offering timeless insights into leadership, tactics, and conflict management.",
    content:
        "The campfires flickered in the quiet night, casting shadows across the tents of the Wei soldiers. General Sun Tzu walked with steady steps between the rows, observing the calm discipline of the troops. War, he believed, was not won with strength alone, nor with numbers, but through understanding—of oneself, of the enemy, and of the shifting landscape of conflict. As he paused beside a training ground, he watched two young soldiers practicing coordinated movements, each step precise and deliberate. Their synchronization reminded him that strategy was not merely planning, but adaptation. Victory belonged not to the strongest, but to the most prepared, the most aware, and the most willing to change tactics at the moment of opportunity...",
  ),

  // ------------------------------------------------------------
  // 4. TECHNOLOGY
  // ------------------------------------------------------------
  Book(
    id: 't1',
    title: 'The Time Machine',
    author: 'H. G. Wells',
    coverUrl: "https://www.gutenberg.org/cache/epub/35/pg35.cover.medium.jpg",
    publishedDate: DateTime(1895, 5, 7),
    language: 'English',
    rating: 4.5,
    tags: ['c4'],
    description:
        "In this groundbreaking sci-fi novella, a scientist constructs a machine that allows him to travel through time, confronting the distant evolution of humanity.",
    content:
        "The brass dials of the Time Machine shimmered under the laboratory lamp. The Time Traveller tightened the final screw, his hands trembling with anticipation. For years he had theorized about the fourth dimension—time—not as a river flowing in one direction, but as a landscape open to exploration. He stepped into the machine, adjusted the levers, and with a jolt the world dissolved into streaks of color. Seconds became hours, hours became centuries. Cities rose and fell in an instant, forests vanished and grew like breath. Finally, the machine slowed, settling into a silent meadow beneath an unfamiliar sky. The Traveller inhaled sharply. He had not just dreamed the impossible—he had arrived in the distant future...",
  ),

  // ------------------------------------------------------------
  // 5. PHILOSOPHY
  // ------------------------------------------------------------
  Book(
    id: 'p1',
    title: 'Meditations',
    author: 'Marcus Aurelius',
    coverUrl:
        "https://www.gutenberg.org/cache/epub/2680/pg2680.cover.medium.jpg",
    publishedDate: DateTime(180, 1, 1),
    language: 'Greek',
    rating: 4.9,
    tags: ['c5'],
    description:
        "A collection of personal writings by the Roman emperor Marcus Aurelius, reflecting on duty, virtue, and the nature of human existence.",
    content:
        "The emperor sat alone at the edge of his tent, the cold wind of the Germanic frontier whispering through the trees. His armor lay beside him, but for the moment he wore only a simple cloak, preferring quiet reflection to ceremony. Marcus Aurelius opened the wax tablet on his lap and began writing, not for historians or soldiers, but for himself. Each word was a reminder—a call to discipline, humility, and clarity of thought. The distant sound of marching soldiers reached his ears, yet he did not look up. Leadership, he knew, began with the mastery of one’s own mind. And so he wrote, shaping the reflections that would one day guide generations...",
  ),

  // ------------------------------------------------------------
  // 6. BIOGRAPHIES
  // ------------------------------------------------------------
  Book(
    id: 'b1',
    title: 'The Story of My Life',
    author: 'Helen Keller',
    coverUrl:
        "https://www.gutenberg.org/cache/epub/2397/pg2397.cover.medium.jpg",
    publishedDate: DateTime(1903, 1, 1),
    language: 'English',
    rating: 4.8,
    tags: ['c6'],
    description:
        "Helen Keller recounts her incredible journey of overcoming blindness and deafness to become an author, activist, and symbol of determination.",
    content:
        "The early years of Helen’s life were filled with silence and darkness, yet her world was never without emotion. She remembered the warmth of her mother’s embrace, the vibrations of footsteps on wooden floors, and the scent of blooming magnolias carried by the Alabama breeze. But everything changed the day Anne Sullivan arrived. Helen felt the gentle yet persistent touch of her teacher’s hand guiding her with patience and unwavering belief. Day after day, Anne spelled words into Helen’s palm—water, ground, doll—each motion a spark illuminating her once-silent world. With every breakthrough, Helen’s life expanded like a lantern being slowly lit from within...",
  ),

  // ------------------------------------------------------------
  // 7. CHILDREN STORY
  // ------------------------------------------------------------
  Book(
    id: 'cs1',
    title: 'Alice in wonderland',
    author: 'Lewis Carroll',
    coverUrl: "https://www.gutenberg.org/cache/epub/11/pg11.cover.medium.jpg",
    publishedDate: DateTime(1865, 11, 26),
    language: 'English',
    rating: 4.6,
    tags: ['c7'],
    description:
        "A timeless children’s tale about a curious girl who tumbles into a whimsical world filled with peculiar characters and magical adventures.",
    content:
        "Alice sat beneath the old oak tree, twirling a daisy between her fingers as her sister read aloud from a dull-looking book. Suddenly, a white rabbit sprinted past, muttering to itself about being late. Alice blinked. A talking rabbit? In a waistcoat? Curiosity seized her. Before she knew it, she was tumbling down a long, spiraling tunnel. The walls shimmered with mirrors and floating teacups as she drifted gently to the bottom. When she finally landed, she found herself in a hallway filled with tiny doors, each one hiding a strange and enchanting secret. Wonderland was unlike anything she had ever imagined...",
  ),

  // ------------------------------------------------------------
  // 8. ROMANCE
  // ------------------------------------------------------------
  Book(
    id: 'r1',
    title: 'Jane Eyre',
    author: 'Charlotte Brontë',
    coverUrl:
        "https://www.gutenberg.org/cache/epub/1260/pg1260.cover.medium.jpg",
    publishedDate: DateTime(1847, 10, 19),
    language: 'English',
    rating: 4.7,
    tags: ['c8'],
    description:
        "A classic romance following the life, hardships, and emotional journey of Jane Eyre as she discovers love and independence.",
    content:
        "The moors stretched endlessly beneath the gray sky, the wind sweeping across the wild landscape with a haunting melody. Jane Eyre paused at the crest of a hill, her heart heavy but resolute. Her departure from Thornfield had been necessary—painful, but essential. And yet the memory of Mr. Rochester lingered with every step she took. His voice, his troubled gaze, the unspoken connection between them—they clung to her like shadows. As she walked toward an uncertain future, Jane felt the pull of destiny shaping her path. She sought independence, dignity, and truth, but deep within her heart, a quiet hope remained...",
  ),
];
