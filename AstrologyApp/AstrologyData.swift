//
//  AstrologyData.swift
//  AstrologyApp
//
//  Created by Benny Li & Mika Manaligod on 2024-09-27.
//

import Foundation

struct AstrologyData: Hashable {
    var id: Int
    var name: String
    var dateStart: DateComponents
    var dateEnd: DateComponents
    var icon: String
    var image: String
    var description: String
}

class DataModel: NSObject {
    static let data: [AstrologyData] = [
        AstrologyData(
            id: 1,
            name: "Aries",
            dateStart: DateComponents(month: 3, day: 21),
            dateEnd: DateComponents(month: 4, day: 19),
            icon: "♈️",
            image: "aries",
            description: """
            Aries's masculine nature is forthright with vigor, a trait further amplified by its planetary ruler, Mars. Aries is known to be vivacious, enthusiastic, childish, and a bit selfish. Although this sign is impulsive and hotheaded, nobody can deny the quick-thinking and intense call-to-action innate in any Aries. Expressed as the Ram, Aries can be counted on to headbutt its way through anything!

            Aries is the first sign of the zodiac, and that's pretty much how those born under this sign see themselves: first. Aries are the leaders of the pack, first in line to get things going. Whether or not everything gets done is another question altogether, for an Aries prefers to initiate rather than to complete.

            Do you have a project needing a kick-start? Call an Aries, by all means. The leadership displayed by Aries is most impressive, so don't be surprised if they can rally the troops against seemingly insurmountable odds—they have that kind of personal magnetism.

            An Aries sign won't shy away from new ground, either. Those born under this zodiac sign are often called the pioneers of the zodiac, and it's their fearless trek into the unknown that often wins the day. Aries is a bundle of energy and dynamism, kind of like a Pied Piper, leading people along with its charm and charisma. The dawning of a new day—and all of its possibilities—is pure bliss to an Aries.
            """),
        AstrologyData(
            id: 2,
            name: "Taurus",
            dateStart: DateComponents(month: 4, day: 20),
            dateEnd: DateComponents(month: 5, day: 20),
            icon: "♉️",
            image: "taurus",
            description: """
            The subdued, yet elegantly feminine, nature of Taurus is sensualized by its planetary ruler, Venus. Taurus is always counted on for great taste and pleasurable pastimes. But the phrase, “stubborn as a bull,” fits this zodiac sign beautifully, as it is represented by the Bull. However, nobody can deny Taurus' ability to weather any storm through thick and thin.

            Taurus, the second sign of the zodiac and the ruler of the second house, is all about reward. Unlike the Aries love of the game, the typical Taurus personality loves the rewards of the game. Think physical pleasures and material goods, for those born under this sign revel in delicious excess. This zodiac sign is also tactile, enjoying a tender, even sensual, touch.

            Taurus zodiac sign adores comfort and likes being surrounded by pleasing, soothing things. Along these lines, they also favor a good meal and a fine wine. The good life in all its guises, whether it's the arts or art of their own making (yes, these folks are artistic as well), is heaven on Earth to the Taurus-born.
            """),
        AstrologyData(
            id: 3,
            name: "Gemini",
            dateStart: DateComponents(month: 5, day: 21),
            dateEnd: DateComponents(month: 6, day: 20),
            icon: "♊️",
            image: "gemini",
            description: """
            Fickle and flighty, Gemini's mutable nature is restless. Gemini's mutability is directly expressed thanks to its masculine nature. It often comes out as a witty remark, a flippant hand gesture, and an overbooked schedule. As it is ruled by Mercury, Gemini is typically concerned with learning as much as possible from its peers. Gemini's intelligent duality is expressed as the Twins, implying that Gemini's mercurial mind considers all perspectives.

            Gemini is the third sign of the zodiac, and those born under this sign will be quick to tell you all about it. That's because they love to talk! It's not just idle chatter with these folks, either. The driving force behind a Gemini zodiac sign's conversation is their mind. Ruling the third house, the Gemini-born are intellectually inclined, forever probing people and places in search of information.

            The more information a Gemini collects, the better. Sharing that information later on with those they love is also a lot of fun, for Geminis are supremely interested in developing their relationships. Dalliances with those of this astrology sign are always enjoyable, since Geminis are bright, quick-witted, and the proverbial life of the party. Even though their intellectual minds can rationalize forever and a day, Geminis also have a surplus of imagination waiting to be tapped. Can a Gemini be boring? Never!
            """),
        AstrologyData(
            id: 4,
            name: "Cancer",
            dateStart: DateComponents(month: 6, day: 21),
            dateEnd: DateComponents(month: 7, day: 22),
            icon: "♋️",
            image: "cancer",
            description: """
            Driven by gut-wrenching intuition, Cancer's cardinal capabilities come from its feminine energy. Cancer is the leader who can intuitively act and decide but will also dip and dodge responsibilities as well. Cancer's watery nature is often all in or all out. Ruled by the moon, Cancer's psychic receptivity is incredible. It is motherly, nurturing, and compassionate. It's also usually wrapped up in a moody presence. After all, Cancer isn't known as the Crab for nothing!

            Cancer, the fourth sign of the zodiac, is all about home. Those born under this horoscope sign are 'roots' kinds of people and take great pleasure in the comforts of home and family.

            Cancers are maternal, domestic, and love to nurture others. More than likely, their family will be large, too—the more, the merrier! Cancers will certainly be merry if their home life is serene and harmonious.

            Traditions are upheld with great zest in a Cancer's household, since, as the rulers of the fourth house of home and memory, this zodiac sign prizes family history and loves communal activities. They also tend to be patriotic, waving the flag whenever possible. A Cancer's good memory is the basis for stories told around the dinner table, and don't be surprised if these folks get emotional about things. Those born under this sign wear their heart on their sleeve, which is just fine by them.
            """),
        AstrologyData(
            id: 5,
            name: "Leo",
            dateStart: DateComponents(month: 7, day: 23),
            dateEnd: DateComponents(month: 8, day: 22),
            icon: "♌️",
            image: "leo",
            description: """
            Leo's natural habitat is the center stage for attention. Bold and audacious, Leo's warmth remains unmoving—thanks to its fixed nature. While stubborn at times, Leo tends to remain enthusiastically engaged. Whether it's Leo's immense joy or dramatic flair, no other sign can match the King or Queen of zodiac. This Lion will always have the loudest roar!

            Leo is the fifth sign of the zodiac. These folks are impossible to miss since they love being center stage. Making an impression is Job #1 for Leos, and when you consider their personal magnetism, you see the job is quite easy. Leos are an ambitious lot, and their strength of purpose allows them to accomplish a great deal. The fact that this horoscope sign is also creative makes their endeavors fun for them and everyone else.

            It's quite common to see a Leo on stage or in Hollywood since these folks never shy away from the limelight. They are also supremely talented and have a flair for the dramatic. Warmth and enthusiasm seem to seep from every Leo pore, making these folks a pleasure to be around. They do love pleasure and being the center of attention!
            """),
        AstrologyData(
            id: 6,
            name: "Virgo",
            dateStart: DateComponents(month: 8, day: 23),
            dateEnd: DateComponents(month: 9, day: 22),
            icon: "♍️",
            image: "virgo",
            description: """
            Much like clay, the earthy mutability of Virgo is consistently adaptable. Virgo is known to be dependable—thanks to Virgo's attention to detail and perfectionist mindset. Although somewhat nervous, thanks to the restless Mercurial influence, Virgo tends to always strive for the best outcome. So, Virgo's critical nature is ideal for catching—then perfecting—every flaw. After all, nothing gets by the Virgin. And when lightning strikes, the volcanic nature of Virgo becomes electric!

            Virgo is the sixth sign of the zodiac, to be exact, and that's the way Virgos like it: exacting. Those born under this horoscope sign are forever the butt of jokes for being so picky and critical (and they can be), but their 'attention to detail' is for a reason: to help others. Virgos, more than any other zodiac sign, were born to serve, and it gives them great joy. They are also tailor-made for the job, since common Virgo traits are being industrious, methodical, and efficient. The sense of duty borne by these folks is considerable, and it ensures that they will always work for the greater good.
            """),
        AstrologyData(
            id: 7,
            name: "Libra",
            dateStart: DateComponents(month: 9, day: 23),
            dateEnd: DateComponents(month: 10, day: 22),
            icon: "♎️",
            image: "libra",
            description: """
            Represented as the Scales, Libra's cardinal nature comes from its ability to weigh all pros and cons. Although expressed with masculine drive, Libra's air qualities tend to take over. Libra values partnerships above all else, so its leadership capabilities heavily depend on social relations. At times, Libra may come across as codependent or indecisive. If anything, Libra wants to ensure that every decision is reciprocal! Libra is all about keeping it 50/50, in true Scales fashion.

            Libra is the seventh sign of the zodiac, and it's at this point in the zodiac that we start to see a shift. While the first six signs of the zodiac focus on the individual, the last six focus on the individual's contact with others and with the world. The Libra zodiac sign is first and foremost focused on others and how they relate to them. We can call this the sign of Partnership with a capital 'P' because these folks do not want to be alone!

            For a Libra, everything is better if it's done as a pair. Libras are good when paired up, too, since they epitomize balance, harmony, and a sense of fair play. While they are true team players at work, their favorite partnership is at home: marriage. Libras feel most complete when they are coupled up with their lover, forever.
            """),
        AstrologyData(
            id: 8,
            name: "Scorpio",
            dateStart: DateComponents(month: 10, day: 23),
            dateEnd: DateComponents(month: 11, day: 21),
            icon: "♏️",
            image: "scorpio",
            description: """
            Ruled by Mars and Pluto, Scorpio is an intense sign. Its fixed water persona implies a profound, unmoving emotional depth. No other sign can fearlessly explore the underworld like Scorpio. Scorpio's extraordinary fierceness is undeniable. Because of its intensity, Scorpio tends to go through multiple phases of transformation, beginning with the Scorpio and ending with the Phoenix. Look no further for redirection, as Scorpio can be the spark for cabalistic transformation!

            Scorpio is the eighth sign of the zodiac, and that shouldn't be taken lightly—nor should Scorpios! Those born under this sign are dead serious in their mission to learn about others. There's no fluff or chatter for Scorpios, either; these folks will zero-in on the essential questions, gleaning the secrets that lie within.

            The Scorpio zodiac sign concerns itself with beginnings and endings, and is unafraid of either. They also travel in a world that is black and white and has little use for gray. The curiosity of Scorpios is immeasurable, which may be why they are such adept investigators.

            The folks with a Scorpio horoscope sign love to probe and know how to get to the bottom of things. The fact that they have a keen sense of intuition certainly helps.
            """),
        AstrologyData(
            id: 9,
            name: "Sagittarius",
            dateStart: DateComponents(month: 11, day: 22),
            dateEnd: DateComponents(month: 12, day: 21),
            icon: "♐️",
            image: "sagittarius",
            description: """
            The wildfire nature of Sagittarius is thanks to its mutable fieriness. Sagittarius tends to be an expressive, jolly sign with a booming presence. Larger than life, Sagittarius's planetary ruler, Jupiter, often gifts this sign with excessive tendencies and an abundance of luck. Much like the Centaur, Sagittarius brazenly explores unknown territory. At times, this sign can be a tad much, from opinions on politics to exorbitant vices. But Sagittarius tends to shine as the perfect travel buddy, debate partner, and mischief-maker!

            Sagittarius, the ninth sign of the zodiac, is the home of the wanderers of the zodiac. It's not a mindless ramble for these folks, either. Sags are truth-seekers, and the best way for them to do this is to hit the road, talk to others and get some answers.

            Knowledge is key to these folks since it fuels their broad-minded approach to life. Those born with a Sagittarius zodiac sign are keenly interested in philosophy and religion, and they find that these disciplines aid their internal quest. At the end of the day, what Sagittarius wants most is to know the meaning of life, and to accomplish this while feeling free and easy.
            """),
        AstrologyData(
            id: 10,
            name: "Capricorn",
            dateStart: DateComponents(month: 12, day: 22),
            dateEnd: DateComponents(month: 1, day: 19),
            icon: "♑",
            image: "capricorn",
            description: """
            Ruled by Saturn, Capricorn is tasked with the karmic duties of time, lessons, and authority. No other sign can shoulder the weight of the world as Capricorn can. So, it's no surprise that Capricorn is expressed as the Sea-Goat or Goat. Much like a goat clinging to the mountainside, Capricorn will tenaciously persevere.

            Capricorn, the tenth sign and mountain goat of the zodiac, is all about hard work. Those born under this sign are more than happy to put in a full day at the office, realizing that it will likely take a lot of those days to get to the top. That's no problem, since Capricorns are both ambitious and determined: they will get there. Life is one big project for these folks, and they adapt to this by adopting a businesslike approach to most everything they do.

            Capricorns are practical as well, taking things one step at a time and being as realistic and pragmatic as possible. Those with a Capricorn zodiac sign are extremely dedicated to their goals, almost to the point of stubbornness. Those victories sure smell sweet, though, and that thought alone will keep Capricorns going.
            """),
        AstrologyData(
            id: 11,
            name: "Aquarius",
            dateStart: DateComponents(month: 1, day: 20),
            dateEnd: DateComponents(month: 2, day: 18),
            icon: "♒",
            image: "aquarius",
            description: """
            Aquarius is a technological sign, preferring both the structure of Saturn and the unconventionality of rebellious Uranus. To amplify Aquarius' quirkiness, it's represented as the Water-Bearer. Surprisingly, Aquarius is highly empathetic but shielded by a cold front. Aquarius wants to better the collective but is also highly selective with personal relationships. No matter what, Aquarius tends to shine in its individualism.

            Aquarius is the eleventh sign of the zodiac, and Aquarians are the perfect representatives for the Age of Aquarius. Those born under this horoscope sign have the social conscience needed to carry us into the new millennium. Those of the Aquarius zodiac sign are humanitarian, philanthropic, and keenly interested in making the world a better place. Along those lines, they'd like to make the world work better, which is why they focus much of their energy on our social institutions and how they work (or don't work).

            Aquarians are visionaries, progressive souls who love to spend time thinking about how things can be better. They are also quick to engage others in this process, which is why they have so many friends and acquaintances. Making the world a better place is a collaborative effort for Aquarians.
            """),
        AstrologyData(
            id: 12,
            name: "Pisces",
            dateStart: DateComponents(month: 2, day: 19),
            dateEnd: DateComponents(month: 3, day: 20),
            icon: "♓",
            image: "pisces",
            description: """
            Graced with water attributes, Pisces has this eclectic magic, gifted with psychic receptivity and scarily accurate intuition. Jupiter tends to magnify these qualities, but Neptune also tends to delude them with a dreamy confusion. Represented by two Fish swimming in synchronicity, Pisces is the reminder to consider the known and unknown.

            Pisces is a mutable, feminine water sign, co-ruled by Jupiter and Neptune. It's associated with the Twelfth House of the subconscious, hidden talents/weaknesses, and self-undoing. Pisces weaves in and out of conscious reality thanks to its mystical mutability.

            Graced with water attributes, Pisces has this eclectic magic, gifted with psychic receptivity and scarily accurate intuition. Jupiter tends to magnify these qualities, but Neptune also tends to delude them with a dreamy confusion. Represented by two Fish swimming in synchronicity, Pisces is the reminder to consider the known and unknown.
            """),
    ]
    
    // Formula-based method to find the zodiac sign
        func zodiacSign(for month: Int, day: Int) -> AstrologyData? {
            let signBoundaries = [
                (12, 22), // Capricorn
                (1, 20),  // Aquarius
                (2, 19),  // Pisces
                (3, 21),  // Aries
                (4, 20),  // Taurus
                (5, 21),  // Gemini
                (6, 21),  // Cancer
                (7, 23),  // Leo
                (8, 23),  // Virgo
                (9, 23),  // Libra
                (10, 23), // Scorpio
                (11, 22)  // Sagittarius
            ]

            // Loop through the zodiac boundaries to find the correct sign
            for i in 0..<signBoundaries.count {
                let (startMonth, startDay) = signBoundaries[i]
                let (nextStartMonth, nextStartDay) = signBoundaries[(i + 1) % signBoundaries.count]
                
                if (month == startMonth && day >= startDay) ||
                   (month == nextStartMonth && day < nextStartDay) {
                    return DataModel.data[i]
                }
            }
            
            return DataModel.data[0] // Default to Capricorn (cross-year case)
        }

    }

