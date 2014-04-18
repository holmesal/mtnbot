# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   Hubot complement <user> - Sends a complement to <user>
#
# Author:
#   alonso, of course

complements_raw = [["dvzq", "%@ has such strong hands."], ["elpw", "Wow. I mean... just... wow!"], ["enng", "%@'s diction is superb."], ["erzi", "%@ has a lot of class."], ["eufj", "Wow, %@ cooks better than my mom!"], ["hcdr", "%@ should be running this place."], ["hgps", "%@ is one of my favorite people in the world."], ["hinc", "%@ is the epitome of elegance and grace."], ["hlbu", "%@ is awesome!"], ["hmze", "%@ always knows exactly what to say."], ["hrlg", "%@'s eyebrows are so well-defined."], ["ipzq", "I want to be reincarnated as %@."], ["jhng", "When %@ smiles, %@ lights up the entire room."], ["kbpo", "I'd love to be %@'s partner in Trivial Pursuit."], ["lbkk", "In case I haven't mentioned it lately: %@ rocks!"], ["lhtw", "%@'s posture is perfect. Does he work out?"], ["lxkd", "%@ smells wonderful, considering what %@'s been through."], ["mgig", "%@ is so hip."], ["mmrs", "%@ has impeccable table manners."], ["mrdu", "%@ really knows %@'s stuff."], ["npse", "Why can't everyone be more like %@?"], ["nwkh", "%@ is so much fun to be with!"], ["pmdq", "I love the sound of %@'s laugh."], ["pvbt", "%@ is one of a kind."], ["pxhu", "I think %@ is brilliant."], ["qlym", "%@'s teeth are so white."], ["qrkd", "%@ says the funniest things!"], ["rkef", "%@ has a wide variety of useful skills."], ["rxok", "%@ is the Vincent Van Gogh of driving."], ["rzul", "%@ has beautiful toenails."], ["svud", "I like the way %@'s mind works."], ["twoo", "%@ is a rock star!"], ["ubaq", "%@'s eyes are like diamonds."], ["woiu", "%@ smells like a million bucks."], ["wsuw", "%@'s expertise in Civil War history is mindblowing."], ["ylcx", "Have %@ lost weight?"], ["yniy", "%@'s personal hygiene is above reproach."], ["zjiq", "%@ has lobster-like tenacity."], ["zwsw", "%@ is the Dalai Lama of breakdancing."], ["gvfb", "Wow. %@ sure do know how to whistle. %@ remind me of Axl Rose."], ["jxqm", "%@ is a person of unparalleled levels of cobernosity."], ["aeji", "I never would have thought of that. %@ is so clever!"], ["afok", "%@ is so sweet %@ could put sugar out of business."], ["xlzv", "There's no one quite like %@."], ["gzke", "%@ is such a good driver that %@ deserve to cut me off."], ["pall", "%@'s hair withstands humidity so well."], ["dnkr", "I follow %@ on Twitter."], ["nsrw", "%@'s salmon-poaching skills are top notch."], ["wtxq", "A barrel of monkeys has nothing on %@."], ["vsjl", "%@'s bone structure is marvelous."], ["lvts", "Can I ask %@ to never leave?"], ["cune", "Well aren't %@ just a breath of hot air?"], ["psno", "%@ is a fabulous creature of divine beauty."], ["oljz", "%@ is a majestic unicorn."]]
complements = []
for complement in complements_raw
  complements.push complement[1]

insults_1 = ["artless","bawdy","beslubbering","bootless","churlish","cockered","clouted","craven","currish","dankish","dissembling","droning","errant","fawning","fobbing","froward","frothy","gleeking","goatish","gorbellied","impertienent","infectious","jarring","loggerheaded","lumpish","mammering","mangled","mewling","paunchy","pribbling","puking","puny","qualling","rank","reeky","roguish","ruttish","saucy","spleeny","spongy","surly","tottering","unmuzzled","vain","venomed","villianous","warped","wayward","weedy","yeasty"]
insults_2 = ["base-court","bat-fowling","beef-witted","beetle-headed","boil-brained","clapper-clawed","clay-brained","common-kissing","crook-pated","dismal-dreaming","dizzy-eyed","doghearted","dread-bolted","earth-vexing","elf-skinned","fat-kidneyed","fen-sucked","flap-mouthed","fly-bitten","folly-fallen","fool-born","full-gorged","guts-griping","half-faced","hasty-witted","hedge-born","hell-hated","idle-headed","ill-breeding","ill-nurtured","knotty-pated","milk-livered","motley-minded","onion-eyed","plume-plucked","pottle-deep","pox-marked","reeling-ripe","rough-hewn","rude-growing","rump-fed","shard-borne","sheep-biting","spur-galled","swag-bellied","tardy-gaited","tickle-brained","toad-spotted","unchin-snouted","weather-bitten"]
insults_3 = ["apple-john","baggage","barnacle","bladder","boar-pig","bugbear","bum-bailey","canker-blossom","clack-dish","clotpole","coxcomb","codpiece","death-token","dewberry","flap-dragon","flax-wench","flirt-gill","foot-licker","fustilarian","giglet","gudgeon","haggard","harpy","hedge-pig","horn-beast","hugger-mugger","joithead","lewdster","lout","maggot-pie","malt-worm","mammet","measle","minnow","miscreant","moldwarp","mimble-news","nut-hook","pigeon-egg","pignut","puttock","pumpion","ratsbane","scut","skainsmate","strumpet","varlet","vassal","whey-face","wagtail"]

module.exports = (robot) ->
  robot.hear /complement (.*)/i, (msg) ->
    if msg.match[1] is 'alonso' or msg.match[1] is 'Alonso'
      complement_raw = msg.random complements
      complement = complement_raw.split("%@").join  msg.match[1]
      msg.send complement
    else
      insult_1 = msg.random insults_1
      insult_2 = msg.random insults_2
      insult_3 = msg.random insults_3
      insult = "#{msg.match[1]} is a #{insult_1} #{insult_2} #{insult_3}"
      msg.send insult
