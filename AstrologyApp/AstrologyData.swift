//
//  AstrologyData.swift
//  AstrologyApp
//
//  Created by Benny Li on 2024-09-27.
//

import Foundation

struct AstrologyData {
    var id: Int
    var name: String
    var date: String
    var icon: String
    var image: String
    var description: String
}

class DataModel : NSObject {
    static let data: [AstrologyData] = [
        AstrologyData(
            id: 1,
            name: "Aries",
            date: "March 21 - April 19",
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
            date: "April 20 - May 20",
            icon: "♉️",
            image: "taurus",
            description: "Taurus is the second astrological sign in the zodiac."
        ),
        AstrologyData(
            id: 3,
            name: "Gemini",
            date: "May 21 - June 20",
            icon: "♊️",
            image: "gemini",
            description: "Gemini is the third astrological sign in the zodiac."
            
        ),
        AstrologyData(
            id: 4,
            name: "Cancer",
            date: "June 21 - July 22",
            icon: "♋️",
            image: "cancer",
            description: "Cancer is the fourth astrological sign in the zodiac."
            
        ),
        AstrologyData(
            id: 5,
            name: "Leo",
            date: "July 23 - August 22",
            icon: "♌️",
            image: "leo",
            description: "Leo is the fifth astrological sign in the zodiac."
        ),
        AstrologyData(
            id: 6,
            name: "Virgo",
            date: "August 23 - September 22",
            icon: "♍️",
            image: "virgo",
            description: "Virgo is the sixth astrological sign in the zodiac."
        ),
        AstrologyData(
            id: 7,
            name: "Libra",
            date: "September 23 - October 22",
            icon: "♎️",
            image: "libra",
            description: "Libra is the seventh astrological sign in the zodiac."
        ),
        AstrologyData(
            id: 8,
            name: "Scorpio",
            date: "October 23 - November 21",
            icon: "♏️",
            image: "scorpio",
            description: "Scorpio is the eighth astrological sign in the zodiac."
        ),
        AstrologyData(
            id: 9,
            name: "Sagittarius",
            date: "November 22 - December 21",
            icon: "♐️",
            image: "sagittarius",
            description: "Sagittarius is the ninth astrological sign in the zodiac."
        )
    ]
}
