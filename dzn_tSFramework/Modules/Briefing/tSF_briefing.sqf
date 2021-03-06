//     tSF Briefing
// Do not modify this part
#define BRIEFING		_briefing = [];
#define TOPIC(NAME) 	_briefing pushBack ["Diary", [ NAME,
#define END			]];
#define ADD_TOPICS	for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
//
//
// Briefing goes here

BRIEFING

TOPIC("I. Обстановка:")
"Последнее время наши источники указывают на попытки организовать союз между мексиканским картелем и террористами с ближнего востока. Мы определили место встречи вассала с посланником картеля. Его необходимо допросить. Любой ценой доставьте подозреваемого живым. С мексиканцами не церемоньтесь, давно пора навести порядок в штате. Судья дал зеленый свет на устранение любой угрозы в близлежащих городах. <img image='suspect.jpg' width='256' height='256'/> "
END

TOPIC("А. Враждебные силы:")
"1. Около десяти человек латино-американского происхождения из банды картеля"
END

TOPIC("Б. Дружественные силы:")
"1. Сотрудники полицейского управления населённого пункта Ла Трините"
END

TOPIC("II. Задание:")
"1. Проверить информацию о выстрелах на территории мексиканского района в пригороде Эль Пасо<br />2. Найти и арестовать (Живым!) подозреваемого в указанном районе <br />3. Сопроводить подозреваемого в камеру временного содержания участка.<br />"
END

TOPIC("III. Выполнение:")
"По плану лейтенанта участка."
END

TOPIC("IV. Поддержка:")
"1. 3х леговых полицейских автомобиля<br />2. 1х полицейский внедорожный пикап<br />3. 1х гражданский внедорожный автомобиль"
END

TOPIC("V. Сигналы:")
"PL NET 50<br />1'1 - SR CH 1<br />1'2 - SR CH 2"
END

TOPIC("VI. Замечания:")
"Powered by Tactical Shift Framework"
END

if ((serverCommandAvailable '#logout') || !(isMultiplayer) || isServer) then {
TOPIC("VII. Замечания для GSO:")
"-ГСО также является штатным фельдшером"
END
};

ADD_TOPICS