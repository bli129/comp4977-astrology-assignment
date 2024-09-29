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
    var icon: String
    var image: String
    var description: String
    var date: String
}

class DataModel : NSObject {
    static let data: [AstrologyData] = [
        AstrologyData(id: 1, name: "Aries", icon: "♈️", image: "aries_image", description: "Aries is the first astrological sign in the zodiac.", date: "March 21 - April 19"),
        AstrologyData(id: 2, name: "Taurus", icon: "♉️", image: "taurus_image", description: "Taurus is the second astrological sign in the zodiac.", date: "April 20 - May 20"),
        AstrologyData(id: 3, name: "Gemini", icon: "♊️", image: "gemini_image", description: "Gemini is the third astrological sign in the zodiac.", date: "May 21 - June 20"),
        AstrologyData(id: 4,name: "Cancer", icon: "♋️", image: "cancer_image", description: "Cancer is the fourth astrological sign in the zodiac.", date: "June 21 - July 22"),
        AstrologyData(id: 5,name: "Leo", icon: "♌️", image: "leo_image", description: "Leo is the fifth astrological sign in the zodiac.", date: "July 23 - August 22"),
        AstrologyData(id: 6, name: "Virgo", icon: "♍️", image: "virgo_image", description: "Virgo is the sixth astrological sign in the zodiac.", date: "August 23 - September 22"),
        AstrologyData(id: 7, name: "Libra", icon: "♎️", image: "libra_image", description: "Libra is the seventh astrological sign in the zodiac.", date: "September 23 - October 22"),
        AstrologyData(id: 8, name: "Scorpio", icon: "♏️", image: "scorpio_image", description: "Scorpio is the eighth astrological sign in the zodiac.", date: "October 23 - November 21"),
        AstrologyData(id: 9, name: "Sagittarius", icon: "♐️", image: "sagittarius_image", description: "Sagittarius is the ninth astrological sign in the zodiac.", date: "November 22 - December 21")
    ]
}
