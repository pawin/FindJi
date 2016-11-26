//
//  Question.swift
//  findji
//
//  Created by win on 11/27/16.
//  Copyright © 2016 Pawin Thepbanchaporn. All rights reserved.
//

import Foundation

enum QuestionType: Int {
    case smiley         = 1
    case gesture        = 2
    case face           = 3
    case family         = 4
    case animalFace     = 5
    case animal         = 6
    case fruit          = 7
    case food           = 8
    case vehicle        = 9
    case photo          = 10
    case building       = 11
    case tool           = 12
    case purpleSign     = 13
    case orangeSign     = 14
    case greySign       = 15
    case clock          = 16
    case flag           = 17
    
    private var characters: String {
        switch self {
        case .smiley:
            return "😀😬😁😂😃😄😅😆😇😉😊🙂🙃☺️😋😌😍😘😗😙😚😜😝😛🤑🤓😎🤗😏😶😐😑😒🙄🤔😳😞😟😠😡😔😕🙁☹️😣😖😫😩😤😮😱😨😰😯😦😧😢😥😪😓😭😵😲🤐😷🤒🤕😴"
        case .gesture:
            return "👏👍👎👊✊👋👈👉👆👇🖐✋✌️☝️👌👐💪🙏🖖🤘🖕✍️👂👃"
        case .face:
            return "👶👦👧👨👩👱‍♀️👱👴👮‍♀️👳👳‍♀️👲👵👮👷‍♀️👷💂‍♀️💂🕵️‍♀️🕵🎅👸👰👼🙎🙎‍♂️🙍🙍‍♂️💆💆‍♂️"
        case .family:
            return "👪👩‍👩‍👦👨‍👨‍👦👩‍👦👨‍👦👨‍👩‍👧👩‍👩‍👧👨‍👨‍👧👩‍👧👨‍👧👨‍👩‍👧‍👦👩‍👩‍👧‍👦👨‍👨‍👧‍👦👩‍👧‍👦👨‍👧‍👦👨‍👩‍👦‍👦👩‍👩‍👦‍👦👨‍👨‍👦‍👦👩‍👦‍👦👨‍👦‍👦👨‍👩‍👧‍👧👩‍👩‍👧‍👧👨‍👨‍👧‍👧👩‍👧‍👧👨‍👧‍👧"
        case .animalFace:
            return "🐶🐱🐭🐹🐰🐻🐼🐨🐯🦁🐮🐷🐽🐸🐙🐵🙈🙉🙊🐔🐧🐦🐤"
        case .animal:
            return "🦂🐜🐆🐅🐂🐄🐪🐃🐫🐘🐖🐎🐑🐏🐐🐀🐁🐓🦃🕊🐿🐇🐈🐩🐕"
        case .fruit:
            return "🍏🍎🍐🍊🍋🍌🍉🍇🍓🍈🍒🍑🍍🍅🍆🌶🌽🍠"
        case .food:
            return "🍯🍞🧀🍗🍖🍤🍳🍔🍟🌭🍕🍝🌮🌯🍜🍲🍥🍣🍱🍛🍙🍚🍘🍢🍡🍧🍨🍦🍰🎂🍮🍬🍪🍩🍿🍫🍭🍺🍻🍷🍸🍹🍼☕️🍵🍶🍾"
        case .vehicle:
            return "🚗🚕🚙🚌🚎🚐🚒🚑🚓🏎🚚🚛🚜"
        case .photo:
            return "🚢🎡🎢🎠🏗🌁🗼🏭⛲️🎑⛰🏔🗻🌋🗾🏕⛺️🏞🛣🛤🌅🌄🏜🏖🏝🌇🌆🏙🌃🌉🌌🌠🎇🎆🌈🏘🏰🏯🏟🗽"
        case .building:
            return "🏠🏡🏚🏢🏬🏣🏤🏥🏦🏨🏪🏫🏩💒🏛⛪️🕌🕍🕋⛩"
        case .tool:
            return "🔨⚒🛠⛏🔧🔩🔪⚔️🗡💉🔑🗝"
        case .purpleSign:
            return "☮️✝️☪️🕉☸️✡️🔯🕎☯️☦️🛐⛎♈️♉️♊️♋️♌️♍️♎️♏️♐️♑️♒️♓️🆔⚛️"
        case .orangeSign:
            return "☢️☣️📴📳🈶🈚️🈸🈺✴️🆚"//🈷
        case .greySign:
            return "🚻🚮🎦📶🈁🔤🔡🔠🔣ℹ️🆖🆗🆙🆒🆕🆓🔢#️⃣*️⃣▶️⏺⏹⏪⏫⏬◀️🔼⏩⏯⬇️⬆️⬅️➡️🔽↗️↘️↙️↖️↕️↔️🔀🔁↪️↩️🔂🔄⤴️⤵️"
        case .clock:
            return "🕐🕑🕒🕓🕔🕕🕖🕗🕘🕙🕚🕛🕜🕝🕞🕟🕠🕡🕢🕣🕤🕥🕦🕧"
        case .flag:
            return "🇦🇫 🇦🇽 🇦🇱 🇩🇿 🇦🇸 🇦🇬 🇦🇶 🇦🇮 🇦🇴 🇦🇩 🇦🇷 🇦🇲 🇦🇼 🇦🇺 🇦🇹 🇧🇧 🇧🇩 🇧🇭 🇧🇸 🇦🇿 🇧🇾 🇧🇪 🇧🇿 🇧🇯 🇧🇲 🇧🇷 🇧🇼 🇧🇦 🇧🇴 🇧🇹 🇮🇴 🇻🇬 🇧🇳 🇧🇬 🇧🇫 🇮🇨 🇨🇦 🇨🇲 🇰🇭 🇧🇮 🇨🇻 🇧🇶 🇰🇾 🇨🇫 🇹🇩 🇨🇴 🇨🇨 🇨🇽 🇨🇳 🇨🇱 🇰🇲 🇨🇬 🇨🇩 🇨🇰 🇨🇷 🇨🇾 🇨🇼 🇨🇺 🇭🇷 🇨🇮 🇨🇿 🇩🇰 🇩🇯 🇩🇲 🇩🇴 🇪🇷 🇬🇶 🇸🇻 🇪🇬 🇪🇨 🇪🇪 🇪🇹 🇪🇺 🇫🇰 🇫🇴 🇵🇫 🇬🇫 🇫🇷 🇫🇮 🇫🇯 🇹🇫 🇬🇦 🇬🇲 🇬🇪 🇩🇪 🇬🇩 🇬🇱 🇬🇷 🇬🇮 🇬🇭 🇬🇵 🇬🇺 🇬🇹 🇬🇬 🇬🇳 🇭🇰 🇭🇳 🇭🇹 🇬🇾 🇬🇼 🇭🇺 🇮🇸 🇮🇳 🇮🇩 🇮🇷 🇮🇹 🇮🇱 🇮🇲 🇮🇪 🇮🇶 🇯🇲 🇯🇵 🇯🇪 🇯🇴 🇰🇿 🇰🇬 🇰🇼 🇽🇰 🇰🇮 🇰🇪 🇱🇦 🇱🇻 🇱🇧 🇱🇸 🇱🇷 🇲🇴 🇱🇺 🇱🇹 🇱🇮 🇱🇾 🇲🇰 🇲🇬 🇲🇼 🇲🇾 🇲🇻 🇲🇷 🇲🇶 🇲🇭 🇲🇹 🇲🇱 🇲🇺 🇾🇹 🇲🇽 🇫🇲 🇲🇩 🇲🇦 🇲🇸 🇲🇪 🇲🇳 🇲🇨 🇲🇿 🇲🇲 🇳🇦 🇳🇷 🇳🇵 🇳🇪 🇳🇮 🇳🇿 🇳🇨 🇳🇱 🇳🇬 🇳🇺 🇳🇫 🇰🇵 🇲🇵 🇵🇸 🇵🇼 🇵🇰 🇴🇲 🇳🇴 🇵🇦 🇵🇬 🇵🇾 🇵🇪 🇵🇭 🇶🇦 🇵🇷 🇵🇹 🇵🇱 🇵🇳 🇷🇪 🇷🇴 🇷🇺 🇷🇼 🇼🇸 🇷🇸 🇸🇳 🇸🇦 🇸🇹 🇸🇲 🇸🇨 🇸🇱 🇸🇬 🇸🇽 🇸🇰 🇿🇦 🇸🇴 🇸🇧 🇬🇸 🇸🇮 🇰🇷 🇸🇸 🇪🇸 🇱🇰 🇧🇱 🇻🇨 🇵🇲 🇱🇨 🇰🇳 🇸🇭 🇸🇩 🇸🇷 🇸🇿 🇸🇪 🇨🇭 🇹🇭 🇹🇿 🇹🇯 🇹🇼 🇸🇾 🇹🇱 🇹🇬 🇹🇰 🇹🇴 🇹🇹 🇹🇻 🇹🇨 🇹🇲 🇹🇷 🇹🇳 🇻🇮 🇺🇬 🇺🇦 🇦🇪 🇬🇧 🇻🇦 🇻🇺 🇺🇿 🇺🇾 🇺🇸 🇻🇪 🇻🇳 🇼🇫 🇪🇭 🇾🇪 🇿🇼 🇿🇲"
        }
    }
    
    var randomChoices: [String] {
        let array: [String]
        switch self {
        case .flag: // Not sure why flag emoji doesn't work like other emojis, will seperate with " " instead
            array = self.characters.components(separatedBy: " ")
        default:
            array = Array(self.characters.characters.map{ String($0) })
        }
        let shuffled = array.shuffled
        return Array(shuffled.prefix(8))
    }
    
    var answerIndex: Int {
        let choices = randomChoices
        let randomIndex = Int(arc4random_uniform(UInt32(choices.count)))
        return randomIndex
    }
}

struct Question {
    let type: QuestionType
    let choices: [String]
    let answer: String
    
    init(_ questionType: QuestionType) {
        self.type = questionType
        self.choices = questionType.randomChoices
        self.answer = self.choices[questionType.answerIndex]
    }
    
    static func random() -> Question {
        let randomNumber = Int(arc4random_uniform(UInt32(17))) + 1
        let type = QuestionType(rawValue: randomNumber) ?? QuestionType(rawValue: 1)!
        return Question(type)
    }
}
