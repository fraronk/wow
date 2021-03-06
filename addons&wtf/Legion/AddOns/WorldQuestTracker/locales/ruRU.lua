local L = LibStub("AceLocale-3.0"):NewLocale("WorldQuestTrackerAddon", "ruRU") 
if not L then return end 

L["S_APOWER_AVAILABLE"] = "Доступно"
L["S_APOWER_NEXTLEVEL"] = "Следующий уровень"
L["S_ENABLED"] = "Включено"
L["S_ERROR_NOTIMELEFT"] = "Время выполнения задания истекло."
L["S_ERROR_NOTLOADEDYET"] = "Задание ещё не загружено, подождите несколько секунд."
L["S_FLYMAP_SHOWTRACKEDONLY"] = "Только отслеживаемые"
L["S_FLYMAP_SHOWTRACKEDONLY_DESC"] = "Показывать только задания, которые вы отслеживаете"
L["S_FLYMAP_SHOWWORLDQUESTS"] = "Показывать локальные задания"
L["S_GROUPFINDER_ACTIONS_CANCEL_APPLICATIONS"] = "нажмите, чтобы отменить предложения..."
L["S_GROUPFINDER_ACTIONS_CANCELING"] = "отмена..."
L["S_GROUPFINDER_ACTIONS_CREATE"] = "группа не найдена? нажмите, чтобы создать"
L["S_GROUPFINDER_ACTIONS_CREATE_DIRECT"] = "создать группу"
L["S_GROUPFINDER_ACTIONS_LEAVEASK"] = "Покинуть группу?"
L["S_GROUPFINDER_ACTIONS_LEAVINGIN"] = "Выход из группы через (нажмите сейчас для выхода):"
L["S_GROUPFINDER_ACTIONS_RETRYSEARCH"] = "повторить поиск"
L["S_GROUPFINDER_ACTIONS_SEARCH"] = "нажмите для поиска группы"
L["S_GROUPFINDER_ACTIONS_SEARCH_RARENPC"] = "поиск групп для убийства редкого"
L["S_GROUPFINDER_ACTIONS_SEARCH_TOOLTIP"] = "присоединиться к группе для выполнения задания"
L["S_GROUPFINDER_ACTIONS_SEARCHING"] = "поиск..."
L["S_GROUPFINDER_ACTIONS_SEARCHMORE"] = "нажмите, чтобы найти больше участников для группы"
L["S_GROUPFINDER_ACTIONS_SEARCHOTHER"] = "Покинуть и искать другую группу?"
L["S_GROUPFINDER_ACTIONS_UNAPPLY1"] = "нажмите, чтобы отменить заявку для сoздания новой группы"
L["S_GROUPFINDER_ACTIONS_UNLIST"] = "нажмите, чтобы снять со списка текущую группу"
L["S_GROUPFINDER_ACTIONS_UNLISTING"] = "снятие со списка..."
L["S_GROUPFINDER_ACTIONS_WAITING"] = "ожидание..."
L["S_GROUPFINDER_AUTOOPEN_RARENPC_TARGETED"] = "Авто-открытие при взятии в цель редкого моба"
L["S_GROUPFINDER_ENABLED"] = "Авто-открытие для нoвого задания"
L["S_GROUPFINDER_INVASION_ENABLED"] = "Авто-открытие на тoчке вторжения"
L["S_GROUPFINDER_LEAVEOPTIONS"] = "Параметры выхода из группы"
L["S_GROUPFINDER_LEAVEOPTIONS_AFTERX"] = "Покинуть, через X секунд"
L["S_GROUPFINDER_LEAVEOPTIONS_ASKX"] = "Без авто-выхода, просто спрoсить через X секунд"
L["S_GROUPFINDER_LEAVEOPTIONS_DONTLEAVE"] = "Не пoказывать панель выхода"
L["S_GROUPFINDER_LEAVEOPTIONS_IMMEDIATELY"] = "Выходить сразу, пoсле завершения задания"
L["S_GROUPFINDER_NOPVP"] = "Избегать PVP-серверoв"
L["S_GROUPFINDER_OT_ENABLED"] = "Показывать кнопки на отслеживание заданий"
L["S_GROUPFINDER_QUEUEBUSY"] = "вы уже находитесь в очереди."
L["S_GROUPFINDER_QUEUEBUSY2"] = "не удалось отобразить окно поиска группы: вы уже находитесь в группе или в очереди."
L["S_GROUPFINDER_RESULTS_APPLYING"] = "Осталось %d групп, нажмите снoва"
L["S_GROUPFINDER_RESULTS_APPLYING1"] = "Осталась 1 группа, нажмите снoва"
L["S_GROUPFINDER_RESULTS_FOUND"] = [=[найдено %d группы
нажмите, чтобы присоединиться]=]
L["S_GROUPFINDER_RESULTS_FOUND1"] = [=[найдена 1 группа
нажмите, чтобы присоединиться]=]
L["S_GROUPFINDER_RESULTS_UNAPPLY"] = "%d предложения осталось..."
L["S_GROUPFINDER_RIGHTCLICKCLOSE"] = "ПКМ для зaкрытия"
L["S_GROUPFINDER_SECONDS"] = "Секунд"
L["S_GROUPFINDER_TITLE"] = "Поиск групп"
L["S_GROUPFINDER_TUTORIAL1"] = "Делайте локальные задания быстрее, присоединившись к группам, выполняя одно и то же задание!"
L["S_MAPBAR_AUTOWORLDMAP"] = "Автоматическая карта мира"
L["S_MAPBAR_AUTOWORLDMAP_DESC"] = [=[Находясь в Даларане или Оплoте класса, нажатие на 'M" открывает карту Расколотых островов.

Двойное нажаите на "M" открывает карту текущей локации.]=]
L["S_MAPBAR_FILTER"] = "Фильтры"
L["S_MAPBAR_FILTERMENU_FACTIONOBJECTIVES"] = "Задания фракций"
L["S_MAPBAR_FILTERMENU_FACTIONOBJECTIVES_DESC"] = "Показывать задания фракций, даже если они скрыты."
L["S_MAPBAR_OPTIONS"] = "Настройки"
L["S_MAPBAR_OPTIONSMENU_ARROWSPEED"] = "Частота обновления стрелки"
L["S_MAPBAR_OPTIONSMENU_ARROWSPEED_HIGH"] = "Высокая частота"
L["S_MAPBAR_OPTIONSMENU_ARROWSPEED_MEDIUM"] = "Средняя частота"
L["S_MAPBAR_OPTIONSMENU_ARROWSPEED_REALTIME"] = "Обновлять непрерывно"
L["S_MAPBAR_OPTIONSMENU_ARROWSPEED_SLOW"] = "Низкая частота"
L["S_MAPBAR_OPTIONSMENU_EQUIPMENTICONS"] = "Знaчки экипировки"
L["S_MAPBAR_OPTIONSMENU_QUESTTRACKER"] = "Включить World Quest Tracker"
L["S_MAPBAR_OPTIONSMENU_REFRESH"] = "Обновить"
L["S_MAPBAR_OPTIONSMENU_SHARE"] = "Поделиться аддоном"
L["S_MAPBAR_OPTIONSMENU_SOUNDENABLED"] = "Включить звуки"
L["S_MAPBAR_OPTIONSMENU_STATUSBARANCHOR"] = "Привязать к верху"
L["S_MAPBAR_OPTIONSMENU_TOMTOM_WPPERSISTENT"] = "Постоянная путевая точка"
L["S_MAPBAR_OPTIONSMENU_TRACKER_CURRENTZONE"] = "Только текущая зона"
L["S_MAPBAR_OPTIONSMENU_TRACKER_SCALE"] = "Масштаб трэкера: %s"
L["S_MAPBAR_OPTIONSMENU_TRACKERCONFIG"] = "Конфигурация трэкера"
L["S_MAPBAR_OPTIONSMENU_TRACKERMOVABLE_AUTO"] = "Автоматически"
L["S_MAPBAR_OPTIONSMENU_TRACKERMOVABLE_CUSTOM"] = "Вручную"
L["S_MAPBAR_OPTIONSMENU_TRACKERMOVABLE_LOCKED"] = "Закрепить"
L["S_MAPBAR_OPTIONSMENU_UNTRACKQUESTS"] = "Прекратить слежение"
L["S_MAPBAR_OPTIONSMENU_WORLDMAPCONFIG"] = "Конфигурация карты мира"
L["S_MAPBAR_OPTIONSMENU_YARDSDISTANCE"] = "Показывать расстояние"
L["S_MAPBAR_OPTIONSMENU_ZONE_QUESTSUMMARY"] = "Сводка по заданиям (полный экран)"
L["S_MAPBAR_OPTIONSMENU_ZONEMAPCONFIG"] = "Конфигурация карты зоны"
L["S_MAPBAR_RESOURCES_TOOLTIP_TRACKALL"] = "Кликните, чтобы отслеживать все задания на |cFFFFFFFF%s|r."
L["S_MAPBAR_SORTORDER"] = "Сортировка"
L["S_MAPBAR_SORTORDER_TIMELEFTPRIORITY_FADE"] = "Прозрачные задания"
L["S_MAPBAR_SORTORDER_TIMELEFTPRIORITY_OPTION"] = "Менее %d часов (часа)"
L["S_MAPBAR_SORTORDER_TIMELEFTPRIORITY_SHOWTEXT"] = "Время смены заданий"
L["S_MAPBAR_SORTORDER_TIMELEFTPRIORITY_SORTBYTIME"] = "Сортировка по времени"
L["S_MAPBAR_SORTORDER_TIMELEFTPRIORITY_TITLE"] = "Смена через"
L["S_MAPBAR_SUMMARY"] = "Сводка"
L["S_MAPBAR_SUMMARYMENU_ACCOUNTWIDE"] = "На аккаунте"
L["S_MAPBAR_SUMMARYMENU_MOREINFO"] = "Кликните для подробной информации"
L["S_MAPBAR_SUMMARYMENU_NOATTENTION"] = [=[Нет заданий для отслеживания у ваши других персонажей,
у которых осталось на выполнение менее 2х часов!]=]
L["S_MAPBAR_SUMMARYMENU_REQUIREATTENTION"] = "Требует внимания"
L["S_MAPBAR_SUMMARYMENU_TODAYREWARDS"] = "Награды за сегодня"
L["S_OVERALL"] = "Всего"
L["S_PARTY"] = "Группа"
L["S_PARTY_DESC1"] = "Если квест помечен синей звездочкой - он есть у всех игроков в вашей группе."
L["S_PARTY_DESC2"] = "Если отображается красная звездочка, то кто то из вашей группы или не подходит для этого квеста или еще не установил WQT."
L["S_PARTY_PLAYERSWITH"] = "Игроки с WQT в вашей группе:"
L["S_PARTY_PLAYERSWITHOUT"] = "Игроки без WQT в вашей группе:"
L["S_QUESTSCOMPLETED"] = "Завершённые задания"
L["S_QUESTTYPE_ARTIFACTPOWER"] = "Сила артефакта"
L["S_QUESTTYPE_DUNGEON"] = "Подземелье"
L["S_QUESTTYPE_EQUIPMENT"] = "Экипировка"
L["S_QUESTTYPE_GOLD"] = "Золото"
L["S_QUESTTYPE_PETBATTLE"] = "Битвы питомцев"
L["S_QUESTTYPE_PROFESSION"] = "Профессия"
L["S_QUESTTYPE_PVP"] = "PvP"
L["S_QUESTTYPE_RESOURCE"] = "Ресурсы"
L["S_QUESTTYPE_TRADESKILL"] = "Материалы"
L["S_RAREFINDER_ADDFROMPREMADE"] = "Добавить редких, найденные в заранее собранные группы"
L["S_RAREFINDER_NPC_NOTREGISTERED"] = "нет, этого редкого в базе данных"
L["S_RAREFINDER_OPTIONS_ENGLISHSEARCH"] = "Всегда искать по-английски"
L["S_RAREFINDER_OPTIONS_SHOWICONS"] = "Показывать значки для активных редких"
L["S_RAREFINDER_SOUND_ALWAYSPLAY"] = "Играть, даже когда звуковые эффекты отключены"
L["S_RAREFINDER_SOUND_ENABLED"] = "Воспроизведение звука для редких на мини-карте"
L["S_RAREFINDER_SOUNDWARNING"] = "звук воспроизводится из-за редких на мини-карте, Вы можете отключить этот звук в меню параметров > подменю поиска редких."
L["S_RAREFINDER_TITLE"] = "Поиск редких"
L["S_RAREFINDER_TOOLTIP_REMOVE"] = "Убрать"
L["S_RAREFINDER_TOOLTIP_SEACHREALM"] = "Поиск по другим мирам"
L["S_RAREFINDER_TOOLTIP_SPOTTEDBY"] = "Обнаружил(а)"
L["S_RAREFINDER_TOOLTIP_TIMEAGO"] = "минут назад"
L["S_SHAREPANEL_THANKS"] = [=[Спасибо что поделились World Quest Tracker! 
Отправьте ссылку на наш аддон своим друзьям в твиттере, фэйсбуке или в Кремле :)]=]
L["S_SHAREPANEL_TITLE"] = "Тем, кто любит рок!"
L["S_SUMMARYPANEL_EXPIRED"] = "ИСТЕКШИЕ"
L["S_SUMMARYPANEL_LAST15DAYS"] = "Последние 15 дней"
L["S_SUMMARYPANEL_LIFETIMESTATISTICS_ACCOUNT"] = "Статистика аккаунта"
L["S_SUMMARYPANEL_LIFETIMESTATISTICS_CHARACTER"] = "Статистика персонажа"
L["S_SUMMARYPANEL_OTHERCHARACTERS"] = "Другие персонажи"
L["S_TUTORIAL_AMOUNT"] = "показывает количество или уровень награды"
L["S_TUTORIAL_CLICKTOTRACK"] = "Кликните, чтобы отслеживать задание"
L["S_TUTORIAL_CLOSE"] = "Закрыть обучение"
L["S_TUTORIAL_FACTIONBOUNTY"] = "показывает, что задание засчитывается для выбранной фракции."
L["S_TUTORIAL_FACTIONBOUNTY_AMOUNTQUESTS"] = "показывает количество заданий для выбранной фракции."
L["S_TUTORIAL_HOWTOADDTRACKER"] = "Кликните, чтобы остлеживать задание. Вы можете нажать |cFFFFFFFFправой кнопкой мыши|r по заданию на панели, чтобы прекратить слежение."
L["S_TUTORIAL_PARTY"] = "Синей звездочкой помечаются те квесты, которые есть у каждого члена группы!"
L["S_TUTORIAL_RARITY"] = "показывает редкость (обычное, редкое, эпическое)"
L["S_TUTORIAL_REWARD"] = "показывает награду (экипировка, золото, сила артефакта, ресурсы, реагенты)"
L["S_TUTORIAL_TIMELEFT"] = "показывает оставшееся время (+4 часа, +90 минут, +30 минут, менее 30 минут)"
L["S_TUTORIAL_WORLDMAPBUTTON"] = "Эта кнопка открывает карту Расколотых островов."
L["S_UNKNOWNQUEST"] = "Неизвестное задание"
L["S_WORLDMAP_TOOGLEQUESTS"] = "Вкл/Выкл - Задания"
L["S_WORLDQUESTS"] = "Локальные задания"

