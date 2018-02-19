-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2018 at 02:58 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wt`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`cat_id`, `cat_name`) VALUES
(1, 'Inspirational Stories'),
(2, 'Research Stuff'),
(3, 'Signs and Symptoms');

-- --------------------------------------------------------

--
-- Table structure for table `blog_post`
--

CREATE TABLE `blog_post` (
  `bid` int(11) NOT NULL,
  `btitle` text NOT NULL,
  `barticle` text NOT NULL,
  `dt_id` int(11) NOT NULL,
  `date_published` text NOT NULL,
  `views` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_post`
--

INSERT INTO `blog_post` (`bid`, `btitle`, `barticle`, `dt_id`, `date_published`, `views`, `cat_id`) VALUES
(1, 'Nineteen Words My Son Can Say', 'This is a post by Kimberlee Rutan McCafferty, mother to two sons on the autism spectrum and an Autism Family Partner at the Children’s Hospital of Philadelphia (CHOP). Kim is also the author of a blog about her two children with autism, at autismmommytherapist.wordpress.com. Kim\'s book Raising Autism: Surviving the Early Years is on sale on Amazon here.\r\n\r\n“Come here Justin,” I say quietly. And as always, my towel-clad boy obeys, happily sliding into my lap for his post-bath cuddle.  We have a routine for our bed-time ritual that we adhere to religiously, and I can tell my son enjoys the familiarity, smiling at each step in our path to bed.  Tonight however I’ve decided to deviate just slightly from our norm, as I want to try something different within our usual arsenal of me saying the coveted nineteen words he’s so recently acquired, then waiting eagerly for his response.\r\n\r\nTonight I simply hold up the word list, and wait.\r\n\r\nHe looks at my mouth curiously, waiting for those hard-won words to spill forth, but for once I just point at the list. Justin regards my outstretched finger for a good thirty seconds, then I swear I see a slight grin slide across his face as I listen in amazement.\r\n\r\n“Mama”\r\n\r\n“Dada”\r\n\r\n“Hop”\r\n\r\n“Pop”\r\n\r\n“Mop”\r\n\r\n“Top”\r\n\r\n“Zach”\r\n\r\nTen years ago we were told if he didn’t speak by the age of seven he probably never would. \r\n\r\nWe heard his first coherent utterances at ten.\r\n\r\nHe takes a deep breath and shifts slightly on my lap, then forges on.\r\n\r\n“Help”\r\n\r\n“Ball”\r\n\r\n“Apple”\r\n\r\n“Bubble”\r\n\r\n“Eat”\r\n\r\n“Door”\r\n\r\nTen years ago we were told there was a good chance he’d never read.\r\n\r\nWe watched him master his first sight words at three.\r\n\r\nJustin seems to gear himself up for his finale, not the slightest bit daunted by the fact he’s facing new words he’s just learned this week.\r\n\r\n“Bed” (a favorite)\r\n\r\n“Boat”\r\n\r\n“Bus”\r\n\r\n“Boot”\r\n\r\n“Bat”\r\n\r\n“Bee”\r\n\r\nI can feel his focus shift as his eyes slide away from the paper I’m clutching. As I balance my boy I sense the display of his newfound skill is over, and I see him eyeing his toothbrush as he scoots off my lap.  It’s a momentous moment this, one I want to savor as I think of all the “can’ts” and “nevers” I was told or read about a decade ago, many that sent me hurtling toward despair.  Justin may never have conversational language, may never even use a technological device to solicit more than his basic wants and needs.\r\n\r\nBut no matter what, he has this.  He can read to his mama out loud.\r\n\r\nAnd I have a reminder to always push him to be his best self.\r\n\r\nNineteen words.\r\n    \r\n', 1, '18-09-2018', 15, 1),
(2, '10 Things Autism Parents Wish you knew', 'The word autism entered my heart as a whisper. It later entered my brain as a possibility. Later still, it entered my life. I think I knew, long before I knew.\r\n\r\n\r\nI worried, bought a book on autism, devoured it, and then felt like that must not be what my son has. He was nothing like the boy in the book. Nothing.  ”Maybe,” I thought, “he just has a language delay.”\r\n\r\nI waited for him to start speaking more. For him to start playing in the way that he was supposed to play. He did play though, unlike the boy in the book, so certainly, his issues were different. Less “severe?”\r\n\r\nNever mind that he had an egg-sized bruise on his forehead for six weeks at the age of 18 months from banging his head on the floor. As quickly as that behavior started, it went away. I stopped worrying about it. I mean, it no longer existed. Sure, he ran laps around the house. But only when he was tired. Don’t all kids do that? Don’t they all twirl their hair, around and around and around, while drinking a bottle? \r\n\r\nI’ve mentioned before that parents and friends assured us that Tucker would catch up, and that his delays were likely due to me being at home with him as a baby.\r\n\r\nThey were wrong.\r\n\r\nI was wrong.\r\n\r\n\r\nI remember one day, when I looked at my son and with a fearful, time-stopping heart, I wondered whether he was deaf. He wasn’t responding to me that day. Then, I gave him a little at-home test, and he responded. I let myself believe that everything was fine. What did I know? I had no other child in the house to compare him to. He loves to snuggle, and, from what I’d read, autistic children do not. He looks at me in the eyes. Deeply. With meaning and intent. I’d already learned from Dr. Google that children with autism don’t make eye contact…\r\n\r\nHere. Four years later. Does Tucker look like anything other than a little boy having fun in the snow?\r\n\r\nAutism doesn\'t look like anything but the way it looks. It doesn\'t look like Rain Man. It doesn\'t always include hand-flapping, rocking, or issues with language. Sometimes, it does. But, sometimes, it doesn\'t.\r\n\r\nLast night, I reached out to my IRL PAC tribe.\r\n\r\nI asked them what they wish the world knew about autism and special needs, and have put the below list together based on their feedback.\r\n\r\n10 Things Special Needs and Autism Parents Wish You Knew:  \r\n\r\nPeople don’t need to feel awkward when they’re around my son. Yeah, they may need to treat him a little differently, but I wish they wouldn’t be weirded out.\r\nNot all autism is the same.\r\nPeople seem to think that because my son isn’t like the one single other person they know on the spectrum, that he must not be autistic.\r\nThese kids love. They need love. They are wonderful and bring enormous joy and laughter to those who love them.\r\nKnowing one child with autism doesn’t mean anything really – they’re all so different. Please don’t tell me my son doesn’t have it because he looks so different from the other kid you know on the spectrum.\r\nKids with special needs are smart. Talented. Creative, and thoughtful. It may not be obvious all the time – their minds work differently.\r\nIf my daughter is making strange noises, feel free to look. She’s just making them because she’s excited. Please don’t stand there and gape at us with your mouth hanging open.\r\nIf you see my son in a grocery store, he may be head nuzzling, chewing on the corner of his shirt, or spinning. He’s anxious. I will not scold him, so please do not look at me as if I should. He can’t help how his body receives stimuli. He is trying to cope with the way his body is affected by his surroundings.\r\nFrom onlookers who think I am not addressing my child’s odd behaviors: I ask for a little empathy. Don’t judge. Try to understand that his environment strongly affects him.\r\nPlease accept our kids the way that you assume we will accept yours.\r\nI think I’m speaking for all of us when I say that what we really want you to know, what we’re screaming out loud, is that we, as mothers, are both terrified and brave.\r\n\r\nJust like you.\r\n\r\nThat while our children may act differently from what you’re familiar with, they are our normals. That they’re full of emotion, fierce love, tender hearts, and hope.\r\n\r\nHope.\r\n\r\nOur special needs kids are here, on purpose, and OutLoud.\r\n\r\nEven when they’re silent.', 1, '18-09-2018', 12, 2),
(3, 'Boy\'s writes poem to help classmates understand his autism', 'This poem was submitted by Candace Thompson. It was written by her 11-year-old son Jadon, who is on the autism spectrum. Jadon wrote the poem so that his classmates and teacher can "understand what it\'s like to have autism and how noises hurt his ears."\r\nIn a world where your ears never get a break from noise\r\nI wish I could cry out for the noise to go far, far, far away \r\nbut I can\'t, nobody can\r\nIt\'s only a thought, a dream\r\nAs I look up to the sky, I see something out of the blue\r\nIt takes me a while to see what it is \r\nBut when I do see it it come down\r\nIt\'s a Huge umbrella\r\nAs soon as I grab the candy cane handle I take off into the clouds whoosh\r\nIt\'s silent up there \r\nvery very silent\r\nAs I look down everything is the size of pebbles. \r\nThen I miss them \r\nI miss my friends, my family, and my pets and teachers\r\n\r\nWhile I was looking down I lower more and more to the ground until my feet touch the ground\r\nNow I miss the quietness \r\nBut hey that\'s life and that\'s out of our control\r\nNow I\'m heading to school, into the bus \r\nI mumble go away noise I walk into the screaming school \r\nand into the chattering classroom\r\nAs I much as I dislike noise \r\nbut I also like it too', 1, '18-09-2018', 13, 1),
(4, 'Autistic vs People with Autism', 'People are constantly hashing out the debate of whether to call those with a diagnosis of autism “autistics” or “people with autism.”  Many psychological sources report that it is best to use the first person when talking about a person that has a disability, disease, etc. For example, by saying “people with autism,” you are putting the person before the disorder, indicating that they are a real person that deserves the same respect as someone who is “normal”.  This same theory is used with schizophrenia, cancer, and many other diagnoses. This word choice seems greatly preferred by society and by people with disorders other than autism.   However, autistics have a different theory and preference.  Many of these individuals emphasize the fact that autism is part of them.  It is who they are and who they will always be.  If you took away their Autism, they would not be the same person. There is no separating the person from their autism as there might be with a person being cured of a disease.  Therefore, they prefer to be called “autistics” in order to identify that this diagnosis and way of being is a secure part of their personality.  However, some neurotypicals still feel morally adverse about using this term.  As a type of rule, we suggest that each individual use whatever term they feel most comfortable with, but that they attempt to either use “autistic” when talking with those diagnosed or that they attempt to ask each individual what term they prefer.  Although this is not a perfect solution, it opens the doors to optimistic understanding and can even be a conversation starter!', 1, '12-08-2018', 13, 1),
(5, 'Signs of ASD in pre-school children', 'Spoken language\r\ndelayed speech development (for example, speaking less than 50 different words by the age of two), or not speaking at all\r\nfrequent repetition of set words and phrases\r\nspeech that sounds very monotonous or flat\r\npreferring to communicate using single words, despite being able to speak in sentences\r\nResponding to others\r\nnot responding to their name being called, despite having normal hearing\r\nrejecting cuddles initiated by a parent or carer (although they may initiate cuddles themselves)\r\nreacting unusually negatively when asked to do something by someone else\r\nInteracting with others\r\nnot being aware of other people’s personal space, or being unusually intolerant of people entering their own personal space\r\nlittle interest in interacting with other people, including children of a similar age\r\nnot enjoying situations that most children of their age like, such as birthday parties\r\npreferring to play alone, rather than asking others to play with them\r\nrarely using gestures or facial expressions when communicating\r\navoiding eye contact\r\nBehaviour\r\nhaving repetitive movements, such as flapping their hands, rocking back and forth, or flicking their fingers\r\nplaying with toys in a repetitive and unimaginative way, such as lining blocks up in order of size or colour, rather than using them to build something\r\npreferring to have a familiar routine and getting very upset if there are changes to this routine\r\nhaving a strong like or dislike of certain foods based on the texture or colour of the food as much as the taste\r\nunusual sensory interests – for example, children with ASD may sniff toys, objects or people inappropriately', 3, '03-10-2017', 15, 3),
(6, 'Signs and symptoms of ASD in school-age children', 'Spoken language\r\npreferring to avoid using spoken language\r\nspeech that sounds very monotonous or flat\r\nspeaking in pre-learned phrases, rather than putting together individual words to form new sentences\r\nseeming to talk "at" people, rather than sharing a two-way conversation\r\nResponding to others\r\ntaking people’s speech literally and being unable to understand sarcasm, metaphors or figures of speech\r\nreacting unusually negatively when asked to do something by someone else\r\nInteracting with others\r\nnot being aware of other people’s personal space, or being unusually intolerant of people entering their own personal space\r\nlittle interest in interacting with other people, including children of a similar age, or having few close friends, despite attempts to form friendships\r\nnot understanding how people normally interact socially, such as greeting people or wishing them farewell\r\nbeing unable to adapt the tone and content of their speech to different social situations – for example, speaking very formally at a party and then speaking to total strangers in a familiar way\r\nnot enjoying situations and activities that most children of their age enjoy\r\nrarely using gestures or facial expressions when communicating\r\navoiding eye contact\r\nBehaviour\r\nrepetitive movements, such as flapping their hands, rocking back and forth, or flicking their fingers\r\nplaying in a repetitive and unimaginative way, often preferring to play with objects rather than people\r\ndeveloping a highly specific interest in a particular subject or activity\r\npreferring to have a familiar routine and getting very upset if there are changes to their normal routine\r\nhaving a strong like or dislike of certain foods based on the texture or colour of the food as much as the taste\r\nunusual sensory interests – for example, children with ASD may sniff toys, objects or people inappropriately\r\n\r\n', 2, '04-05-2018', 7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `cid` int(11) NOT NULL,
  `ccomment` text NOT NULL,
  `uemail` text NOT NULL,
  `remail` text,
  `demail` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`cid`, `ccomment`, `uemail`, `remail`, `demail`) VALUES
(1, '  nice story', 'shwetarkadam25@gmail.com', NULL, NULL),
(2, '  nice story', 'shwetarkadam25@gmail.com', NULL, NULL),
(3, '  great story', 'selakoshy@gmail.com', NULL, NULL),
(4, '  nice story', 'sunilchaudhari@gmail.com', NULL, NULL),
(5, '  hello ', 'kaumudi@gmail.com', NULL, NULL),
(6, '  hello ', 'kaumudi@gmail.com', NULL, NULL),
(7, '  Beautiful story', 'ashish@gmail.com', NULL, NULL),
(8, '  This is a comment', 'sunilchaudhari@gmail.com', NULL, NULL),
(9, '  qwer', 'sunilchaudhari@gmail.com', NULL, NULL),
(10, '  hello', 'johnsmith@gmail.com', NULL, NULL),
(11, '  qwerty', 'as@qwe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `did` int(11) NOT NULL,
  `dname` text NOT NULL,
  `demail` text NOT NULL,
  `dcontact` text NOT NULL,
  `dpassword` text NOT NULL,
  `dqualification` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`did`, `dname`, `demail`, `dcontact`, `dpassword`, `dqualification`) VALUES
(1, 'aryan', 'aryan@gmail.com', '0987654321', 'qwert', 'MBBS'),
(2, 'Ray Jones', 'ray@gmail.com', '0987654321', '12345', 'MBBS'),
(3, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `querybox`
--

CREATE TABLE `querybox` (
  `qid` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `querybox`
--

INSERT INTO `querybox` (`qid`, `name`, `email`, `message`) VALUES
(1, 'asdf', 'asdf', 'asdfgh\r\n'),
(2, 'shwetarkadam25', 'shwetarkadam25@gmail.com', 'Query '),
(3, 'kaumudi', 'kaumudi@gmail.com', 'i have a problem somemeej'),
(4, 'Sela', 'sela@gmail.com', 'This is a query'),
(5, 'scarlet', 'scarlet@gmail.com', 'Hello there\r\n'),
(6, 'sunil Chaudhari', 'sunil@gmail.com', 'This is a query');

-- --------------------------------------------------------

--
-- Table structure for table `researcher`
--

CREATE TABLE `researcher` (
  `rid` int(11) NOT NULL,
  `rname` text NOT NULL,
  `remail` text NOT NULL,
  `rcontact` text NOT NULL,
  `rposition` text NOT NULL,
  `rpassword` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `researcher`
--

INSERT INTO `researcher` (`rid`, `rname`, `remail`, `rcontact`, `rposition`, `rpassword`) VALUES
(1, 'suraj', 'suraj@gmail.com', '1234567890', 'MBBS', 'qwer');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `uname` text NOT NULL,
  `uemail` text NOT NULL,
  `ucontact` text NOT NULL,
  `upassword` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `uemail`, `ucontact`, `upassword`) VALUES
(1, 'John Smith', 'johnsmith@gmail.com', '9172532515', '1234'),
(2, 'Natasha koli', 'natashakoli@gmail.com', '128786396', '12345'),
(13, 'shweta', 'shwetarkadam259@gmail.com', '1234567890', 'qaz'),
(12, 'Ashish', 'ashish@gmail.com', '1234567890', '123456'),
(15, 'asas', 'asd', 'asasas', 'qwer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `querybox`
--
ALTER TABLE `querybox`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `researcher`
--
ALTER TABLE `researcher`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `querybox`
--
ALTER TABLE `querybox`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `researcher`
--
ALTER TABLE `researcher`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
