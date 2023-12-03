#!/bin/bash
# SUPREME ULTRA V2
# The Supreme Team https://github.com/SupremePi/

IFS=';'

# Welcome
 dialog --backtitle "Emulation Station" --title " Emulation Station Collection List Generator" \
    --yesno "\nEmulation Station collection list generator.\n\nThis will add or update the custom collection gamelist that will be used to show games in the custom collections menu items.\n\nPeriodically, as you add and remove roms, re-run this script to keep the gamelists updated.\n\nThis script is only usable if your rom filenames are named according to the No Intro/Hyperspin/EmuMovies naming standard.\n\nAfter adding a new collection list, restart Emulation Station.\n\nThen press START > GAME COLLECTION SETTINGS > CUSTOM GAME COLLECTIONS.\n\nThen enable the new custom collections you wish to see on the menu.\n\nSome themes support collections on the main menu, otherwise you will find them under the Custom Collection menu item.\n\n\n**NOTE**\nThis utility only works with rom files using the No-Intro naming convention (like Emumovies/Hyperspin).\n\n\nDo you want to proceed?" \
    35 80 2>&1 > /dev/tty \
    || exit


function main_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " MAIN MENU " \
            --ok-label OK --cancel-label Exit \
            --menu "What collection list do you want to add/update?" 25 75 20 \
            1 "2 Player Classics" \
            2 "4 Player Classics" \
            3 "After Burner Collection" \
            4 "Alex Kidd Collection" \
            5 "Aliens Collection" \
            6 "Animal Crossing Collection" \
            7 "Arkanoid Collection" \
            8 "Army Men Collection" \
            9 "Art of Fighting Collection" \
            10 "Asterix Collection" \
            11 "Asteroids Collection" \
            12 "Atari Classics" \
            13 "Atari G1 Classics" \
            14 "Atari G42 Classics" \
            15 "Atari GX2 Classics" \
            16 "Atari System 1 Classics" \
            17 "Atari System 2 Classics" \
            18 "Atlus Classics" \
            19 "Avengers Collection" \
            20 "Back To The Future Collection" \
            21 "Banpresto Classics" \
            22 "Barbie Collection" \
            23 "Bards Tale" \
            24 "Baseball Collection" \
            25 "Basketball Collection" \
            26 "Batman Collection" \
            27 "Battletoads Collection" \
            28 "Battle Arena Toshinden Collection" \
            29 "Ben 10 Collection" \
            30 "Bomberman Collection" \
            31 "Bonk Collection" \
            32 "Bosconian Collection" \
            33 "Boulder Dash Collection" \
            34 "Bowling Collection" \
            35 "Boxing Collection" \
            36 "Breath of Fire Collection" \
            37 "Brezzasoft Crystal System Classics" \
            38 "Beatem Up Collection" \
            39 "Bubble Bobble Collection" \
            40 "Burnout Collection" \
            41 "Call of Duty Collection" \
            42 "Capcom Classics" \
            43 "Capcom Play System I" \
            44 "Capcom Play System II" \
            45 "Capcom Play System III" \
            46 "Capcom 68000 Classics" \
            47 "Capcom ZN-1 Classics" \
            48 "Capcom ZN-2 Classics" \
            49 "Castlevania Collection" \
            50 "Cave Classics" \
            51 "Centipede Collection" \
            52 "Contra Collection" \
            53 "Darkstalkers Collection" \
            54 "Data East Classics" \
            55 "Data East ARM6 Classics" \
            56 "Data East MEC-M1 Classics" \
            57 "Dead or Alive Collection" \
            58 "Defender Collection" \
            59 "Dig Dug Collection" \
            60 "Digimon Collection" \
            61 "Disney Collection" \
            62 "Donald Duck Collection" \
            63 "Donkey Kong Collection" \
            64 "Donkey Kong Country Collection" \
            65 "Doom Collection" \
            66 "Doraemon Collection" \
            67 "Double Dragon Collection" \
            68 "Dragon Ball Collection" \
            69 "Dragon Quest Collection" \
            70 "Dr Mario Collection" \
            71 "Duke Nukem Collection" \
            72 "Dungeons and Dragons Collection" \
            73 "Earthworm Jim Collection" \
            74 "Exidy Classics" \
            75 "Fantastic 4 Collection" \
            76 "Fantasy Zone Collection" \
            77 "Fatal Fury Collection" \
            78 "Final Fantasy Collection" \
            79 "Final Fight Collection" \
            80 "Fishing Collection" \
            81 "Flintstones Collection" \
            82 "Football Collection" \
            83 "Formula One Collection" \
            84 "Frogger Collection" \
            85 "F-Zero Collection" \
            86 "Gaelco Classics" \
            87 "Galaga Collection" \
            88 "Galaxian Collection" \
            89 "Gauntlet Collection" \
            90 "Gex Collection" \
            91 "Ghostbusters Collection" \
            92 "Ghouls n Ghosts Collection" \
            93 "G.I. Joe Collection" \
            94 "Golden Axe Collection" \
            95 "Golf Collection" \
            96 "Gradius Collection" \
            97 "Gran Turismo Collection" \
            98 "GTA Collection" \
            99 "Guilty Gear Collection" \
            100 "Gundam Collection" \
            101 "Hanna Barbera Collection" \
            102 "Harry Potter Collection" \
            103 "Harvest Moon Collection" \
            104 "Hello Kitty Collection" \
            105 "Hockey Collection" \
            106 "Home Alone Collection" \
            107 "Hot Wheels Collection" \
            108 "Hulk Collection" \
            109 "Hunting Collection" \
            110 "Indiana Jones Collection" \
            111 "Irem Classics" \
            112 "Irem M10 Classics" \
            113 "Irem M27 Classics" \
            114 "Irem M52 Classics" \
            115 "Irem M62 Classics" \
            116 "Irem M72 Classics" \
            117 "Irem M92 Classics" \
            118 "Irem M97 Classics" \
            119 "Iron Man Collection" \
            120 "Jaleco Classics" \
            121 "James Bond Collection" \
            122 "Joust Collection" \
            123 "Jurassic Park Collection" \
            124 "Kaneko Classics" \
            125 "Killer Instinct Collection" \
            126 "Kingdom Hearts Collection" \
            127 "Kirby Collection" \
            128 "King Of Fighters Collection" \
            129 "Konami Classics" \
            130 "Konami Bubble System Classics" \
            131 "Konami GX Classics" \
            132 "Konami Nemesis Classics" \
            133 "Konami Xexex Classics" \
            134 "LEGO Collection" \
            135 "Lemmings Collection" \
            136 "Light Gun Classics" \
            137 "Looney Tunes Collection" \
            138 "Lost Vikings Collection" \
            139 "Mario Collection" \
            140 "Mario Kart Collection" \
            141 "Mario Party Collection" \
            142 "Marvel Collection" \
            143 "Malinger Z Collection" \
            144 "Mech Warrior Collection" \
            145 "Mega Man Collection" \
            146 "Metal Gear Solid Collection" \
            147 "Metal Slug Collection" \
            148 "Metroid Collection" \
            149 "Midway Classics" \
            150 "Midway Killer Instinct Classics" \
            151 "Midway Seattle Classics" \
            152 "Midway T-Unit Classics" \
            153 "Midway V-Unit Classics" \
            154 "Midway Wolf-Unit Classics" \
            155 "Midway Zeus Classics" \
            156 "Mitchell Corporation Classics" \
            157 "Monkey Island Collection" \
            158 "Mortal Kombat Collection" \
            159 "Muppets Collection" \
            160 "Namco Classics" \
            161 "Namco NA-1 Classics" \
            162 "Namco NA-2 Classics" \
            163 "Namco NB-1 Classics" \
            164 "Namco NB-2 Classics" \
            165 "Namco System 1 Classics" \
            166 "Namco System 2 Classics" \
            167 "Namco System 21 Classics" \
            168 "Namco System 22 Classics" \
            169 "Naruto Collection" \
            170 "NASCAR Collection" \
            171 "NBA Jam Collection" \
            172 "Need for Speed Collection" \
            173 "Nichibutsu Classics" \
            174 "Ninja Gaiden Collection" \
            175 "Nintendo Classics" \
            176 "Nintendo VS Classics" \
            177 "Outrun Collection" \
            178 "PacMan Collection" \
            179 "Polygame Master Classics" \
            180 "Pinball Collection" \
            181 "Pitfall Collection" \
            182 "Pokemon Collection" \
            183 "Popeye Collection" \
            184 "Power Rangers Collection" \
            185 "Predator Collection" \
            186 "Prince of Persia Collection" \
            187 "Psikyo Classics" \
            188 "Puzzle Collection" \
            189 "Q-Bert Collection" \
            190 "Racing Collection" \
            191 "Raiden Collection" \
            192 "Raizing Classics" \
            193 "Rally-X Collection" \
            194 "Rampage Collection" \
            195 "Rayman Collection" \
            196 "Ren and Stimpy Collection" \
            197 "Road Rash Collection" \
            198 "Robocop Collection" \
            199 "Robotron Collection" \
            200 "R-Type Collection" \
            201 "Samurai Shodown Collection" \
            202 "Scooby-Doo Collection" \
            203 "Sega Classics" \
            204 "Sega Hikaru Classics" \
            205 "Sega Mega-Tech System Classics" \
            206 "Sega ST-V Classics" \
            207 "Sega System 1 Classics" \
            208 "Sega System 14 Classics" \
            209 "Sega System 16 Classics" \
            210 "Sega System 18 Classics" \
            211 "Sega System 2 Classics" \
            212 "Sega System 24 Classics" \
            213 "Sega System 32 Classics" \
            214 "Sega X Board Classics" \
            215 "Sega Y Board Classics" \
            216 "Seibu Kaihatsu Classics" \
            217 "Sesame Street Collection" \
            218 "Seta Aleck 64 Classics" \
            219 "Shining Force Collection" \
            220 "Shinobi Collection" \
            221 "Shmups Collection" \
            222 "Silent Hill Collection" \
            223 "Shrek Collection" \
            224 "Simpsons Collection" \
            225 "Skateboarding Collection" \
            226 "Smurfs Collection" \
            227 "SNK Classics" \
            228 "Snowboarding Collection" \
            229 "Soccer Collection" \
            230 "Sonic Collection" \
            231 "Streets of Rage Collection" \
            232 "Soul Calibur Collection" \
            233 "South Park Collection" \
            234 "Space Invaders Collection" \
            235 "Spawn Collection" \
            236 "Speed Racer Collection" \
            237 "Spiderman Collection" \
            238 "Splinter Cell Collection" \
            239 "SpongeBob Collection" \
            240 "Spyro Collection" \
            241 "Starfox Collection" \
            242 "Star Trek Collection" \
            243 "Star Wars Collection" \
            244 "Street Fighter Collection" \
            245 "Superhero Collection" \
            246 "Superman Collection" \
            247 "Taito Classics" \
            248 "Taito 68000 Classics" \
            249 "Taito 68020 Classics" \
            250 "Taito Birdie King Classics" \
            251 "Taito Bonze Adventure Classics" \
            252 "Taito B System Classics" \
            253 "Taito Darius 2 Twin Screen Classics" \
            254 "Taito F1 System Classics" \
            255 "Taito F2 System Classics" \
            256 "Taito F3 System Classics" \
            257 "Taito FX-1A System Classics" \
            258 "Taito FX-1B System Classics" \
            259 "Taito G-NET System Classics" \
            260 "Taito H System Classics" \
            261 "Taito L System Classics" \
            262 "Taito Qix Classics" \
            263 "Taito Safari Classics" \
            264 "Taito System SJ Classics" \
            265 "Taito X System Classics" \
            266 "Taito Z80 Classics" \
            267 "Taito Z System Classics" \
            268 "Technos Classics" \
            269 "Tecmo Classics" \
            270 "Tekken Collection" \
            271 "Tennis Collection" \
            272 "Terminator Collection" \
            273 "Tiger Woods Collection" \
            274 "TMNT Collection" \
            275 "Toaplan Classics" \
            276 "Toki Collection" \
            277 "Tomb Raider Collection" \
            278 "Tom Clancy Collection" \
            279 "Toy Story Collection" \
            280 "Trackball Classics" \
            281 "Transformers Collection" \
            282 "Tron Collection" \
            283 "Turok Collection" \
            284 "Twisted Metal Collection" \
            285 "Ultima Collection" \
            286 "Vector Classics" \
            287 "Visco Classics" \
            288 "Wario Collection" \
            289 "Wheel of Fortune Collection" \
            290 "Williams Classics" \
            291 "Wipeout Collection" \
            292 "Wolfenstein Collection" \
            293 "Wolverine Collection" \
            294 "Wonder Boy Collection" \
            295 "Worms Collection" \
            296 "Wrestling Collection" \
            297 "X-Men Collection" \
            298 "Xevious Collection" \
            299 "Yoshi Collection" \
            300 "Yu-Gi-Oh Collection" \
            301 "Zaxxon Collection" \
            302 "Zelda Collection" \
            303 "Zork Collection" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) create_list "2player" ;;
            2) create_list "4player" ;;
            3) create_list "afterburner" ;;
            4) create_list "alexkidd" ;;
            5) create_list "aliens" ;;
            6) create_list "animalcrossing" ;;
            7) create_list "arkanoid" ;;
            8) create_list "armymen" ;;
            9) create_list "artoffighting" ;;
            10) create_list "asterix" ;;
            11) create_list "asteroids" ;;
            12) create_list "atari" ;;
            13) create_list "atarig1" ;;
            14) create_list "atarig42" ;;
            15) create_list "atarigx2" ;;
            16) create_list "atarisystem1" ;;
            17) create_list "atarisystem2" ;;
            18) create_list "atlus" ;;
            19) create_list "avengers" ;;
            20) create_list "backtothefuture" ;;
            21) create_list "banpresto" ;;
            22) create_list "barbie" ;;
            23) create_list "bardstale" ;;
            24) create_list "baseball" ;;
            25) create_list "basketball" ;;
            26) create_list "batman" ;;
            27) create_list "battletoads" ;;
            28) create_list "battletoshinden" ;;
            29) create_list "ben10" ;;
            30) create_list "bomberman" ;;
            31) create_list "bonk" ;;
            32) create_list "bosconian" ;;
            33) create_list "boulderdash" ;;
            34) create_list "bowling" ;;
            35) create_list "boxing" ;;
            36) create_list "breathoffire" ;;
            37) create_list "brezzasoft" ;;
            38) create_list "btmups" ;;
            39) create_list "bubblebobble" ;;
            40) create_list "burnout" ;;
            41) create_list "callofduty" ;;
            42) create_list "capcom" ;;
            43) create_list "cps1" ;;
            44) create_list "cps2" ;;
            45) create_list "cps3" ;;
            46) create_list "capcom68000" ;;
            47) create_list "capcomzn1" ;;
            48) create_list "capcomzn2" ;;
            49) create_list "castlevania" ;;
            50) create_list "cave" ;;
            51) create_list "centipede" ;;
            52) create_list "contra" ;;
            53) create_list "darkstalkers" ;;
            54) create_list "dataeast" ;;
            55) create_list "dataeastarm6" ;;
            56) create_list "dataeastmecm1" ;;
            57) create_list "deadoralive" ;;
            58) create_list "defender" ;;
            59) create_list "digdug" ;;
            60) create_list "digimon" ;;
            61) create_list "disney" ;;
            62) create_list "donaldduck" ;;
            63) create_list "donkeykong" ;;
            64) create_list "donkeykongcountry" ;;
            65) create_list "doom" ;;
            66) create_list "doraemon" ;;
            67) create_list "doubledragon" ;;
            68) create_list "dragonball" ;;
            69) create_list "dragonquest" ;;
            70) create_list "drmario" ;;
            71) create_list "dukenukem" ;;
            72) create_list "dungeonsdragons" ;;
            73) create_list "earthwormjim" ;;
            74) create_list "exidy" ;;
            75) create_list "fantastic4" ;;
            76) create_list "fantasyzone" ;;
            77) create_list "fatalfury" ;;
            78) create_list "finalfantasy" ;;
            79) create_list "finalfight" ;;
            80) create_list "fishing" ;;
            81) create_list "flintstones" ;;
            82) create_list "football" ;;
            83) create_list "formula1" ;;
            84) create_list "frogger" ;;
            85) create_list "fzero" ;;
            86) create_list "gaelco" ;;
            87) create_list "galaga" ;;
            88) create_list "galaxian" ;;
            89) create_list "gauntlet" ;;
            90) create_list "gex" ;;
            91) create_list "ghostbusters" ;;
            92) create_list "ghoulsnghosts" ;;
            93) create_list "gijoe" ;;
            94) create_list "goldenaxe" ;;
            95) create_list "golf" ;;
            96) create_list "gradius" ;;
            97) create_list "granturismo" ;;
            98) create_list "gta" ;;
            99) create_list "guiltygear" ;;
            100) create_list "gundam" ;;
            101) create_list "hannabarbera" ;;
            102) create_list "harrypotter" ;;
            103) create_list "harvestmoon" ;;
            104) create_list "hellokitty" ;;
            105) create_list "hockey" ;;
            106) create_list "homealone" ;;
            107) create_list "hotwheels" ;;
            108) create_list "hulk" ;;
            109) create_list "hunting" ;;
            110) create_list "indianajones" ;;
            111) create_list "irem" ;;
            112) create_list "iremm10" ;;
            113) create_list "iremm27" ;;
            114) create_list "iremm52" ;;
            115) create_list "iremm62" ;;
            116) create_list "iremm72" ;;
            117) create_list "iremm92" ;;
            118) create_list "iremm97" ;;
            119) create_list "ironman" ;;
            120) create_list "jaleco" ;;
            121) create_list "jamesbond" ;;
            122) create_list "joust" ;;
            123) create_list "jurassicpark" ;;
            124) create_list "kaneko" ;;
            125) create_list "killerinstinct" ;;
            126) create_list "kingdomhearts" ;;
            127) create_list "kirby" ;;
            128) create_list "kof" ;;
            129) create_list "konami" ;;
            130) create_list "konamibubble" ;;
            131) create_list "konamigx" ;;
            132) create_list "konaminemesis" ;;
            133) create_list "konamixexex" ;;
            134) create_list "lego" ;;
            135) create_list "lemmings" ;;
            136) create_list "lightgun" ;;
            137) create_list "looneytunes" ;;
            138) create_list "lostvikings" ;;
            139) create_list "mario" ;;
            140) create_list "mariokart" ;;
            141) create_list "marioparty" ;;
            142) create_list "marvel" ;;
            143) create_list "mazingerz" ;;
            144) create_list "mechwarrior" ;;
            145) create_list "megaman" ;;
            146) create_list "metalgearsolid" ;;
            147) create_list "metalslug" ;;
            148) create_list "metroid" ;;
            149) create_list "midway" ;;
            150) create_list "midwayki" ;;
            151) create_list "midwayseattle" ;;
            152) create_list "midwaytunit" ;;
            153) create_list "midwayvunit" ;;
            154) create_list "midwaywolf" ;;
            155) create_list "midwayzeus" ;;
            156) create_list "mitchell" ;;
            157) create_list "monkeyisland" ;;
            158) create_list "mortalkombat" ;;
            159) create_list "muppets" ;;
            160) create_list "namco" ;;
            161) create_list "namcona1" ;;
            162) create_list "namcona2" ;;
            163) create_list "namconb1" ;;
            164) create_list "namconb2" ;;
            165) create_list "namcosystem1" ;;
            166) create_list "namcosystem2" ;;
            167) create_list "namcosystem21" ;;
            168) create_list "namcosystem22" ;;
            169) create_list "naruto" ;;
            170) create_list "nascar" ;;
            171) create_list "nbajam" ;;
            172) create_list "needforspeed" ;;
            173) create_list "nichibutsu" ;;
            174) create_list "ninjagaiden" ;;
            175) create_list "nintendo" ;;
            176) create_list "nintendovs" ;;
            177) create_list "outrun" ;;
            178) create_list "pacman" ;;
            179) create_list "pgm" ;;
            180) create_list "pinball" ;;
            181) create_list "pitfall" ;;
            182) create_list "pokemon" ;;
            183) create_list "popeye" ;;
            184) create_list "powerrangers" ;;
            185) create_list "predator" ;;
            186) create_list "princeofpersia" ;;
            187) create_list "psikyo" ;;
            188) create_list "puzzle" ;;
            189) create_list "qbert" ;;
            190) create_list "racing" ;;
            191) create_list "raiden" ;;
            192) create_list "raizing" ;;
            193) create_list "rallyx" ;;
            194) create_list "rampage" ;;
            195) create_list "rayman" ;;
            196) create_list "renandstimpy" ;;
            197) create_list "roadrash" ;;
            198) create_list "robocop" ;;
            199) create_list "robotron" ;;
            200) create_list "rtype" ;;
            201) create_list "samuraishodown" ;;
            202) create_list "scoobydoo" ;;
            203) create_list "sega" ;;
            204) create_list "segahikaru" ;;
            205) create_list "segamegatech" ;;
            206) create_list "segastv" ;;
            207) create_list "segasystem1" ;;
            208) create_list "segasystem14" ;;
            209) create_list "segasystem16" ;;
            210) create_list "segasystem18" ;;
            211) create_list "segasystem2" ;;
            212) create_list "segasystem24" ;;
            213) create_list "segasystem32" ;;
            214) create_list "segaxboard" ;;
            215) create_list "segayboard" ;;
            216) create_list "seibu" ;;
            217) create_list "sesamestreet" ;;
            218) create_list "setaaleck" ;;
            219) create_list "shiningforce" ;;
            220) create_list "shinobi" ;;
            221) create_list "shmups" ;;
            222) create_list "silenthill" ;;
            223) create_list "shrek" ;;
            224) create_list "simpsons" ;;
            225) create_list "skateboarding" ;;
            226) create_list "smurfs" ;;
            227) create_list "snk" ;;
            228) create_list "snowboarding" ;;
            229) create_list "soccer" ;;
            230) create_list "sonic" ;;
            231) create_list "sor" ;;
            232) create_list "soulcalibur" ;;
            233) create_list "southpark" ;;
            234) create_list "spaceinvaders" ;;
            235) create_list "spawn" ;;
            236) create_list "speedracer" ;;
            237) create_list "spiderman" ;;
            238) create_list "splintercell" ;;
            239) create_list "spongebob" ;;
            240) create_list "spyro" ;;
            241) create_list "starfox" ;;
            242) create_list "startrek" ;;
            243) create_list "starwars" ;;
            244) create_list "streetfighter" ;;
            245) create_list "superheroes" ;;
            246) create_list "superman" ;;
            247) create_list "taito" ;;
            248) create_list "taito68000" ;;
            249) create_list "taito68020" ;;
            250) create_list "taitobirdie" ;;
            251) create_list "taitobonze" ;;
            252) create_list "taitobsystem" ;;
            253) create_list "taitodarius2" ;;
            254) create_list "taitof1" ;;
            255) create_list "taitof2" ;;
            256) create_list "taitof3" ;;
            257) create_list "taitofx1a" ;;
            258) create_list "taitofx1b" ;;
            259) create_list "taitognet" ;;
            260) create_list "taitohsystem" ;;
            261) create_list "taitolsystem" ;;
            262) create_list "taitoqix" ;;
            263) create_list "taitosafari" ;;
            264) create_list "taitosystemsj" ;;
            265) create_list "taitoxsystem" ;;
            266) create_list "taitoz80" ;;
            267) create_list "taitozsystem" ;;
            268) create_list "technos" ;;
            269) create_list "tecmo" ;;
            270) create_list "tekken" ;;
            271) create_list "tennis" ;;
            272) create_list "terminator" ;;
            273) create_list "tigerwoods" ;;
            274) create_list "tmnt" ;;
            275) create_list "toaplan" ;;
            276) create_list "toki" ;;
            277) create_list "tombraider" ;;
            278) create_list "tomclancy" ;;
            279) create_list "toystory" ;;
            280) create_list "trackball" ;;
            281) create_list "transformers" ;;
            282) create_list "tron" ;;
            283) create_list "turok" ;;
            284) create_list "twistedmetal" ;;
            285) create_list "ultima" ;;
            286) create_list "vector" ;;
            287) create_list "visco" ;;
            288) create_list "wario" ;;
            289) create_list "wheeloffortune" ;;
            290) create_list "williams" ;;
            291) create_list "wipeout" ;;
            292) create_list "wolfenstein" ;;
            293) create_list "wolverine" ;;
            294) create_list "wonderboy" ;;
            295) create_list "worms" ;;
            296) create_list "wrestling" ;;
            297) create_list "x-men" ;;
            298) create_list "xevious" ;;
            299) create_list "yoshi" ;;
            300) create_list "yu-gi-oh" ;;
            301) create_list "zaxxon" ;;
            302) create_list "zelda" ;;
            303) create_list "zork" ;;
            *)  break ;;
        esac
    done
}

function create_list() {
dialog --infobox "...processing..." 3 20 ; sleep 2
choice=$1
filename="${choice}.txt"

counter=0
while read gname romfolder
do

  if [[ $romfolder = "arcade" ]]; then
    if [[ -d "/home/pi/RetroPie/roms/${romfolder}" ]]; then
      ifexist=`ls /home/pi/RetroPie/roms/${romfolder} |grep -w "${gname}.zip"`
      if [[ -f "/home/pi/RetroPie/roms/${romfolder}/$ifexist" ]]; then
        echo "/home/pi/RetroPie/roms/${romfolder}/${ifexist}" >> /tmp/tempfile.cfg
      else
        :
      fi
    fi
  elif [[ $romfolder = "fba" ]]; then
    if [[ -d "/home/pi/RetroPie/roms/${romfolder}" ]]; then
      ifexist=`ls /home/pi/RetroPie/roms/${romfolder} |grep -w "${gname}.zip"`
    if [[ -f "/home/pi/RetroPie/roms/${romfolder}/$ifexist" ]]; then
        echo "/home/pi/RetroPie/roms/${romfolder}/${ifexist}" >> /tmp/tempfile.cfg
       else
        :
      fi
    fi
  elif [[ $romfolder = "mame-advmame" ]]; then
    if [[ -d "/home/pi/RetroPie/roms/${romfolder}" ]]; then
      ifexist=`ls /home/pi/RetroPie/roms/${romfolder} |grep -w "${gname}.zip"`
      if [[ -f "/home/pi/RetroPie/roms/${romfolder}/$ifexist" ]]; then
        echo "/home/pi/RetroPie/roms/${romfolder}/${ifexist}" >> /tmp/tempfile.cfg
       else
        :
      fi
    fi
  elif [[ $romfolder = "mame-libretro" ]]; then
    if [[ -d "/home/pi/RetroPie/roms/${romfolder}" ]]; then
      ifexist=`ls /home/pi/RetroPie/roms/${romfolder} |grep -w "${gname}.zip"`
      if [[ -f "/home/pi/RetroPie/roms/${romfolder}/$ifexist" ]]; then
        echo "/home/pi/RetroPie/roms/${romfolder}/${ifexist}" >> /tmp/tempfile.cfg
       else
        :
      fi
    fi
  elif [[ $romfolder = "mame-mame4all" ]]; then
    if [[ -d "/home/pi/RetroPie/roms/${romfolder}" ]]; then
      fexist=`ls /home/pi/RetroPie/roms/${romfolder} |grep -w "${gname}.zip"`
      if [[ -f "/home/pi/RetroPie/roms/${romfolder}/$ifexist" ]]; then
        echo "/home/pi/RetroPie/roms/${romfolder}/${ifexist}" >> /tmp/tempfile.cfg
       else
        :
      fi
    fi
  else
    if [[ -d "/home/pi/RetroPie/roms/${romfolder}" ]]; then
      ifexist=`ls /home/pi/RetroPie/roms/${romfolder} |grep -w "${gname}"`
      if [[ -f "/home/pi/RetroPie/roms/${romfolder}/$ifexist" ]]; then
        echo "/home/pi/RetroPie/roms/${romfolder}/${ifexist}" >> /tmp/tempfile.cfg
       else
        :
      fi
    fi
  fi
done < ./escollections/${filename}

cat /tmp/tempfile.cfg |sort -u > /tmp/custom-${choice}.cfg
cp /tmp/custom-${choice}.cfg /opt/retropie/configs/all/emulationstation/collections
rm /tmp/tempfile.cfg
rm /tmp/custom-${choice}.cfg
}


# Main

main_menu
