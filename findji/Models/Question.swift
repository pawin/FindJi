//
//  Question.swift
//  findji
//
//  Created by win on 11/27/16.
//  Copyright © 2016 Pawin Thepbanchaporn. All rights reserved.
//

import Cocoa

enum QuestionType {
    case smiley
    case gesture
    case face
    case family
    case animalFace
    case animal
    case fruit
    case food
    case vehicle
    case photo
    case building
    case tool
    case purpleSign
    case orangeSign
    case greySign
    case clock
    case flag
    
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
            return "☢️☣️📴📳🈶🈚️🈸🈺🈷✴️🆚"
        case .greySign:
            return "🚻🚮🎦📶🈁🔤🔡🔠🔣ℹ️🆖🆗🆙🆒🆕🆓🔢#️⃣*️⃣▶️⏺⏹⏪⏫⏬◀️🔼⏩⏯⬇️⬆️⬅️➡️🔽↗️↘️↙️↖️↕️↔️🔀🔁↪️↩️🔂🔄⤴️⤵️"
        case .clock:
            return "🕐🕑🕒🕓🕔🕕🕖🕗🕘🕙🕚🕛🕜🕝🕞🕟🕠🕡🕢🕣🕤🕥🕦🕧"
        case .flag:
            return "🇦🇫🇦🇽🇦🇱🇩🇿🇦🇸🇦🇬🇦🇶🇦🇮🇦🇴🇦🇩🇦🇷🇦🇲🇦🇼🇦🇺🇦🇹🇧🇧🇧🇩🇧🇭🇧🇸🇦🇿🇧🇾🇧🇪🇧🇿🇧🇯🇧🇲🇧🇷🇧🇼🇧🇦🇧🇴🇧🇹🇮🇴🇻🇬🇧🇳🇧🇬🇧🇫🇮🇨🇨🇦🇨🇲🇰🇭🇧🇮🇨🇻🇧🇶🇰🇾🇨🇫🇹🇩🇨🇴🇨🇨🇨🇽🇨🇳🇨🇱🇰🇲🇨🇬🇨🇩🇨🇰🇨🇷🇨🇾🇨🇼🇨🇺🇭🇷🇨🇮🇨🇿🇩🇰🇩🇯🇩🇲🇩🇴🇪🇷🇬🇶🇸🇻🇪🇬🇪🇨🇪🇪🇪🇹🇪🇺🇫🇰🇫🇴🇵🇫🇬🇫🇫🇷🇫🇮🇫🇯🇹🇫🇬🇦🇬🇲🇬🇪🇩🇪🇬🇩🇬🇱🇬🇷🇬🇮🇬🇭🇬🇵🇬🇺🇬🇹🇬🇬🇬🇳🇭🇰🇭🇳🇭🇹🇬🇾🇬🇼🇭🇺🇮🇸🇮🇳🇮🇩🇮🇷🇮🇹🇮🇱🇮🇲🇮🇪🇮🇶🇯🇲🇯🇵🇯🇪🇯🇴🇰🇿🇰🇬🇰🇼🇽🇰🇰🇮🇰🇪🇱🇦🇱🇻🇱🇧🇱🇸🇱🇷🇲🇴🇱🇺🇱🇹🇱🇮🇱🇾🇲🇰🇲🇬🇲🇼🇲🇾🇲🇻🇲🇷🇲🇶🇲🇭🇲🇹🇲🇱🇲🇺🇾🇹🇲🇽🇫🇲🇲🇩🇲🇦🇲🇸🇲🇪🇲🇳🇲🇨🇲🇿🇲🇲🇳🇦🇳🇷🇳🇵🇳🇪🇳🇮🇳🇿🇳🇨🇳🇱🇳🇬🇳🇺🇳🇫🇰🇵🇲🇵🇵🇸🇵🇼🇵🇰🇴🇲🇳🇴🇵🇦🇵🇬🇵🇾🇵🇪🇵🇭🇶🇦🇵🇷🇵🇹🇵🇱🇵🇳🇷🇪🇷🇴🇷🇺🇷🇼🇼🇸🇷🇸🇸🇳🇸🇦🇸🇹🇸🇲🇸🇨🇸🇱🇸🇬🇸🇽🇸🇰🇿🇦🇸🇴🇸🇧🇬🇸🇸🇮🇰🇷🇸🇸🇪🇸🇱🇰🇧🇱🇻🇨🇵🇲🇱🇨🇰🇳🇸🇭🇸🇩🇸🇷🇸🇿🇸🇪🇨🇭🇹🇭🇹🇿🇹🇯🇹🇼🇸🇾🇹🇱🇹🇬🇹🇰🇹🇴🇹🇹🇹🇻🇹🇨🇹🇲🇹🇷🇹🇳🇻🇮🇺🇬🇺🇦🇦🇪🇬🇧🇻🇦🇻🇺🇺🇿🇺🇾🇺🇸🇻🇪🇻🇳🇼🇫🇪🇭🇾🇪🇿🇼🇿🇲"
        }
    }
    
    var randomChoices: [String] {
        let array = Array(self.characters.characters.map{ String($0) })
        let shuffled = array.shuffled
        return Array(shuffled.prefix(6))
    }
    
    var question: Question {
        let choices = randomChoices
        let randomIndex = Int(arc4random_uniform(UInt32(choices.count)))
        let answer = choices[randomIndex]
        return Question(answer: answer, choices: choices)
    }
}

struct Question {
    let answer: String
    let choices: [String]
}
