local L = LibStub( "AceLocale-3.0" ):NewLocale( "ArkInventory", "ruRU" )
if not L then return end

-- post updated translations at http://groups.google.com/group/wow-arkinventory (modify this file and include as an attachment)
-- note: when creating a new locale do not leave any english translations in your file, comment them out by placing -- at the start of the line


-- Translated by: Anton P. Mukhin aka McFLY











--	wow zone names - must match exactly what is in game
	L["WOW_ZONE_AHNQIRAJ"] = "Ан'Кираж"
	L["WOW_ZONE_VASHJIR"] = "Вайш'ир"
	L["WOW_ZONE_KELPTHAR_FOREST"] = "Лес Келп’тар"
	L["WOW_ZONE_SHIMMERING_EXPANSE"] = "Мерцающий простор"
	L["WOW_ZONE_ABYSSAL_DEPTHS"] = "Бездонные глубины"
	
	
--	wow tooltip text - must match exactly what is in game
	L["WOW_ITEM_TOOLTIP_FOOD"] = "Действие эффекта прерывается, если персонаж встает с места"
	L["WOW_ITEM_TOOLTIP_DRINK"] = "Действие эффекта прерывается, если персонаж встает с места"
	L["WOW_ITEM_TOOLTIP_POTION_HEAL"] = "Восполнение %d+ - %d+ ед. здоровья"
	L["WOW_ITEM_TOOLTIP_POTION_MANA"] = "Восполнение %d+ - %d+ ед. маны"
	L["WOW_ITEM_TOOLTIP_ELIXIR_BATTLE"] = "Боевой эликсир"
	L["WOW_ITEM_TOOLTIP_ELIXIR_GUARDIAN"] = "Охранный эликсир"
--	L["WOW_ITEM_TOOLTIP_10P9S"] = ""
--	L["WOW_ITEM_TOOLTIP_10P12S"] = ""
	
	
--	location names
	L["LOCATION_WEARING"] = "Надето" --Одето
	
	
--	subframe names
	L["SUBFRAME_NAME_TITLE"] = "Заголовочный"
	L["SUBFRAME_NAME_BAGCHANGER"] = "Сумки"
	
	
--	status bar/bag text
	L["STATUS_NO_DATA"] = "???"
	L["STATUS_PURCHASE"] = "КУП"
	
	
--	restack
	L["RESTACK"] = "Сжать и собрать"
	L["RESTACK_DESC"] = "собрать предметы в как можно меньшее количество стэков, используя по возможности слоты специальных сумок"
	L["RESTACK_FAIL_WAIT"] = "Операция пересборки уже выполняется, пожалуйста подождите"
	L["RESTACK_FAIL_ACCESS"] = "У вас недостаточно прав, чтобы пересобрать закладку %2$s в %1$s" -- 1 = guild bank, 2 = tab number
--	L["RESTACK_FAIL_CLOSED"] = ""
--	L["RESTACK_TYPE"] = ""
--	L["RESTACK_CLEANUP_DEPOSIT"] = ""
--	L["RESTACK_TOPUP_FROM_BAGS"] = ""
--	L["RESTACK_TOPUP_FROM_BAGS_DESC"] = ""
--	L["RESTACK_FILL_FROM_BAGS_DESC"] = ""
--	L["RESTACK_FILL_PRIORITY"] = ""
--	L["RESTACK_FILL_PRIORITY_DESC"] = ""
--	L["RESTACK_FILL_PRIORITY_PROFESSION"] = ""
--	L["RESTACK_REFRESH_WHEN_COMPLETE"] = ""
	
	
--	vault tab tooltips
--	L["VAULT_TAB_ACCESS_NONE"] = ""
--	L["VAULT_TAB_NAME"] = ""
--	L["VAULT_TAB_ACCESS"] = ""
--	L["VAULT_TAB_REMAINING_WITHDRAWALS"] = ""
	
	
--	system category descriptions
	L["CATEGORY_SYSTEM_CORE_MATS"] = "Материалы"
--	L["CATEGORY_SYSTEM_MYTHIC_KEYSTONE"] = ""
	
	L["CATEGORY_RULE"] = "Правило"
	
--	tradegoods category descriptions
--	L["CATEGORY_TRADEGOODS_METAL_AND_STONE"] = ""
	
--	consumable category descriptions
	L["CATEGORY_CONSUMABLE_FOOD_PET"] = "Еда (питомцев)"
	L["CATEGORY_CONSUMABLE_POTION_HEAL"] = "Здоровье (зелье/камень)"
	L["CATEGORY_CONSUMABLE_POTION_MANA"] = "Мана (зелье/камень)"
	L["CATEGORY_CONSUMABLE_ELIXIR_BATTLE"] = "Эликсир (боевой)"
	L["CATEGORY_CONSUMABLE_ELIXIR_GUARDIAN"] = "Эликсир (охранный)"
--	L["CATEGORY_CONSUMABLE_BANDAGE"] = ""
--	L["CATEGORY_CONSUMABLE_FLASK"] = ""
--	L["CATEGORY_CONSUMABLE_SCROLL"] = ""
--	L["CATEGORY_CONSUMABLE_CHAMPION_EQUIPMENT"] = ""
	
	
--	bag names - used to name the empty slots in the status frame
	L["STATUS_SHORTNAME_BAG"] = "Сумка"
--	L["STATUS_SHORTNAME_COOKING"] = ""
--	L["STATUS_SHORTNAME_CRITTER"] = ""
	L["STATUS_SHORTNAME_ENCHANTING"] = "Чары"
	L["STATUS_SHORTNAME_ENGINEERING"] = "Инжен"
--	L["STATUS_SHORTNAME_WEARING"] = ""
	L["STATUS_SHORTNAME_JEWELCRAFTING"] = "Ювел"
--	L["STATUS_SHORTNAME_HEIRLOOM"] = ""
	L["STATUS_SHORTNAME_HERBALISM"] = "Трава"
	L["STATUS_SHORTNAME_INSCRIPTION"] = "Начер"
	L["STATUS_SHORTNAME_KEY"] = "Ключ"
	L["STATUS_SHORTNAME_LEATHERWORKING"] = "Кожа"
	L["STATUS_SHORTNAME_MAILBOX"] = "Почта"
	L["STATUS_SHORTNAME_MINING"] = "Руда"
--	L["STATUS_SHORTNAME_MOUNT"] = ""
--	L["STATUS_SHORTNAME_REAGENTBANK"] = ""
--	L["STATUS_SHORTNAME_FISHING"] = ""
--	L["STATUS_SHORTNAME_TOKEN"] = ""
--	L["STATUS_SHORTNAME_TOY"] = ""
--	L["STATUS_SHORTNAME_REPUTATION"] = ""
--	L["STATUS_SHORTNAME_PROJECTILE"] = ""
--	L["STATUS_SHORTNAME_SOULSHARD"] = ""
	
	
--	main menu
	L["MENU"] = "Меню"
	
	L["MENU_CHARACTER_SWITCH"] = "Сменить персонажа"
	L["MENU_CHARACTER_SWITCH_DESC"] = "Изменяет, вещи какого персонажа отображать"
	L["MENU_CHARACTER_SWITCH_CHOOSE_NONE"] = "нет данных о персонажах"
	L["MENU_CHARACTER_SWITCH_CHOOSE_DESC"] = "Изменяет отображаемые данные на %1$s"
	L["MENU_CHARACTER_SWITCH_ERASE"] = "Удалить данные %s"
	L["MENU_CHARACTER_SWITCH_ERASE_DESC"] = "Удаляет данные %1$s для %2$s"
	
	L["MENU_LOCATION_TOGGLE"] = "Отобразить окно"
	L["MENU_LOCATION_TOGGLE_DESC"] = "отображает или скрывает окно %1$s"
--	L["MENU_LOCATION_NOT_SUPPORTED"] = ""
	
	
--	actions menu
	L["MENU_ACTION"] = "Действия"
	L["MENU_ACTION_REFRESH_DESC"] = "обновляет окно"
--	L["MENU_ACTION_REFRESH_CLEAR_CACHE"] = ""
--	L["MENU_ACTION_REFRESH_CLEAR_CACHE_DESC"] = ""
	L["MENU_ACTION_RELOAD_DESC"] = "перезагрузить окно. Используйти это действие, когда вы меняете сеты аутфита"
	L["MENU_ACTION_EDITMODE"] = "Режим редактирования"
	L["MENU_ACTION_EDITMODE_DESC"] = "включает и выключает режим редактирования для изменения настроек наборов ячеек."
	L["MENU_ACTION_BAGCHANGER_DESC"] = "показать/скрыть фрейм сумок, в котором Вы можете добавлять или менять сумки"
	
	
--	item menu
	L["MENU_ITEM_TITLE"] = "Информация о предмете"
	L["MENU_ITEM_ASSIGN_RESET"] = "Назначить по умолчанию"
--	L["MENU_ITEM_ASSIGN_RESET_DESC"] = "Установить категории по умолчанию для этого предмета (не сбрасывает правила)"
	L["MENU_ITEM_ASSIGN_CHOICES"] = "Применяемые категории"
	L["MENU_ITEM_ASSIGN_CATEGORY"] = "Применить категорию"
	L["MENU_ITEM_ASSIGN_CATEGORY_DESC"] = "Назначить этот предмет в особую категорию"
--	L["MENU_ITEM_ASSIGN_CURRENT_DESC"] = ""
--	L["MENU_ITEM_ASSIGN_DISABLED_DESC"] = ""
	L["MENU_ITEM_CUSTOM_NEW"] = "Создать новую пользовательскую категорию"
--	L["MENU_ITEM_ITEMCOUNT_DESC"] = ""
--	L["MENU_ITEM_ITEMCOUNT_STATUS_DESC"] = ""
--	L["MENU_ITEM_DEBUG_PET_ID"] = ""
--	L["MENU_ITEM_DEBUG_PET_SPECIES"] = ""
	L["MENU_ITEM_DEBUG_AI_ID_SHORT"] = "Короткий ID"
	L["MENU_ITEM_DEBUG_CACHE"] = "ID кэша"
--	L["MENU_ITEM_DEBUG_AI_ID_RULE"] = ""
	L["MENU_ITEM_DEBUG_AI_ID_CATEGORY"] = "Категория AI"
	L["MENU_ITEM_DEBUG_LVL_ITEM"] = "Уровень предмета (парам)"
	L["MENU_ITEM_DEBUG_LVL_USE"] = "Уровень предмета (исп)"
	L["MENU_ITEM_DEBUG_SUBTYPE"] = "Подтип"
--	L["MENU_ITEM_DEBUG_ID"] = ""
	L["MENU_ITEM_DEBUG_FAMILY"] = "Семейство"
	L["MENU_ITEM_DEBUG_PT"] = "PT Сеты"
	L["MENU_ITEM_DEBUG_PT_DESC"] = "Показывает в каких PT сетах находится этот предмет"
	L["MENU_ITEM_DEBUG_PT_NONE"] = "этот предмет не состоит ни в одном PT сете"
	L["MENU_ITEM_DEBUG_PT_TITLE"] = "PT сеты, в которых есть этот предмет"
--	L["MENU_ITEM_DEBUG_SOURCE"] = ""
--	L["MENU_ITEM_DEBUG_BONUS"] = ""
--	L["MENU_ITEM_DEBUG_ITEMSTRING"] = ""
	
	
--	bar menu
--	L["MENU_BAR"] = ""
	L["MENU_BAR_TITLE"] = "Настройки набора %1$s"
	L["MENU_BAR_CATEGORY_DESC"] = "Закрепить категорию %1$s за этим набором"
	L["MENU_BAR_CATEGORY_CURRENT"] = "текущее назначение"
	L["MENU_BAR_CATEGORY_ASSIGN"] = "Возможные Категории"
	L["MENU_BAR_CATEGORY_REMOVE_DESC"] = "клик для удаления %1$s из набора %2$s и возврата в набор по умолчанию" -- 1 is the category name, 2 is the bar number
	L["MENU_BAR_CATEGORY_HIDDEN_DESC"] = "клик для назначения данной категории статуса скрытой.\n\nпредметы в скрытых категориях не будут видны в обычном режиме."
--	L["MENU_BAR_CATEGORY_MOVE_START_DESC"] = ""
--	L["MENU_BAR_CATEGORY_MOVE_COMPLETE_DESC"] = ""
--	L["MENU_BAR_CATEGORY_ENABLE_DESC"] = ""
--	L["MENU_BAR_CATEGORY_DISABLE_DESC"] = ""
--	L["MENU_BAR_CATEGORY_STATUS"] = ""
--	L["MENU_BAR_CATEGORY_STATUS_DESC"] = ""
--	L["MENU_BAR_CATEGORY_JUNK_DESC"] = ""
--	L["MENU_BAR_BAG_ASSIGN_DESC"] = ""
	L["MENU_BAR_OPTIONS"] = "Настройки полос"
	L["MENU_BAR_RESET_DESC"] = "убирает все категории, закрепленные за этим набором, за исключением категории по умолчанию."
	L["MENU_BAR_INSERT_DESC"] = "добавить пустой набор ячеек сюда, сдвигая все категории на один набор вверх."
	L["MENU_BAR_DELETE_DESC"] = "перемещает все категории, закрепленные за этим набором в их наборы по умолчанию и сдвигает все категории над этим набором на 1 набор вниз.\n\nЕсли категория по умолчанию находится в этом наборе, то она будет закреплена за набором 1"
--	L["MENU_BAR_WIDTH_MINIMUM"] = ""
--	L["MENU_BAR_WIDTH_MINIMUM_DESC"] = ""
--	L["MENU_BAR_WIDTH_MAXIMUM"] = ""
--	L["MENU_BAR_WIDTH_MAXIMUM_DESC"] = ""
--	L["MENU_BAR_MOVE_START_DESC"] = ""
--	L["MENU_BAR_MOVE_COMPLETE_DESC"] = ""
--	L["MENU_MOVE_FAIL_OUTSIDE"] = ""
--	L["MENU_MOVE_FAIL_SAME"] = ""
--	L["MENU_BAR_SORTKEY_DESC"] = ""
--	L["MENU_BAR_SORTKEY_DEFAULT_RESET_DESC"] = ""
--	L["MENU_BAR_COLOUR_BORDER_DEFAULT_DESC"] = ""
--	L["MENU_BAR_COLOUR_BORDER_CUSTOM_DESC"] = ""
--	L["MENU_BAR_COLOUR_BORDER_DESC"] = ""
--	L["MENU_BAR_COLOUR_BACKGROUND_DEFAULT_DESC"] = ""
--	L["MENU_BAR_COLOUR_BACKGROUND_CUSTOM_DESC"] = ""
--	L["MENU_BAR_COLOUR_BACKGROUND_DESC"] = ""
--	L["MENU_BAR_COLOUR_NAME_DEFAULT_DESC"] = ""
--	L["MENU_BAR_COLOUR_NAME_CUSTOM_DESC"] = ""
--	L["MENU_BAR_COLOUR_NAME_DESC"] = ""
--	L["MENU_LOCKED_DESC"] = ""
--	L["MENU_LOCKED_LIST_DESC"] = ""
--	L["MENU_BAR_TRANSFER"] = ""
--	L["MENU_BAR_TRANSFER_LOCATION"] = ""
--	L["MENU_BAR_TRANSFER_LOCATION_DESC"] = ""
	
	
--	changer bag menu
	L["MENU_BAG_TITLE"] = "Настройки сумки"
	L["MENU_BAG_SHOW_DESC"] = "показывать содержимое этой сумки"
	L["MENU_BAG_ISOLATE"] = "Изолировать"
	L["MENU_BAG_ISOLATE_DESC"] = "показывать содержимое только этой сумки"
	L["MENU_BAG_SHOWALL"] = "Показывать всё"
	L["MENU_BAG_SHOWALL_DESC"] = "показывать содержимое всех сумок в этом окне"
--	L["MENU_BAG_EMPTY_DESC"] = ""
	
	
--	configuration options
	L["CONFIG"] = "Опции"
	L["CONFIG_DESC"] = "Меню опций"
--	L["CONFIG_IS_PER_CHARACTER"] = ""
	
--	configuration options > system
	L["CONFIG_GENERAL_DESC"] = "Системные опции"
	
	L["CONFIG_GENERAL_FONT_DESC"] = "задает шрифт для %s"
	
--	L["CONFIG_GENERAL_FRAMESTRATA"] = ""
--	L["CONFIG_GENERAL_FRAMESTRATA_DESC"] = ""
	
--	L["CONFIG_GENERAL_REPOSITION_ONSHOW"] = ""
--	L["CONFIG_GENERAL_REPOSITION_ONSHOW_DESC"] = ""
	
--	L["CONFIG_SORTING_WHEN"] = ""
--	L["CONFIG_SORTING_WHEN_DESC"] = ""
--	L["CONFIG_SORTING_WHEN_INSTANT"] = ""
--	L["CONFIG_SORTING_WHEN_INSTANT_DESC"] = ""
--	L["CONFIG_SORTING_WHEN_OPEN"] = ""
--	L["CONFIG_SORTING_WHEN_OPEN_DESC"] = ""
--	L["CONFIG_SORTING_WHEN_MANUAL"] = ""
--	L["CONFIG_SORTING_WHEN_MANUAL_DESC"] = ""
	
	L["CONFIG_GENERAL_TOOLTIP"] = "Тултипы"
	L["CONFIG_GENERAL_TOOLTIP_ENABLE_DESC"] = "включить тултипы"
	L["CONFIG_GENERAL_TOOLTIP_EMPTY_ADD"] = "Пустая строка"
	L["CONFIG_GENERAL_TOOLTIP_EMPTY_ADD_DESC"] = "Показывать пустую строку между основным текстом окошка и любым другим текстов"
	L["CONFIG_GENERAL_TOOLTIP_ITEMCOUNT"] = "Показывать количество предметов"
	L["CONFIG_GENERAL_TOOLTIP_ITEMCOUNT_ENABLE_DESC"] = "показывать ли количество предметов в тултипе?"
--	L["CONFIG_GENERAL_TOOLTIP_ITEMCOUNT_COLOUR_CLASS_DESC"] = ""
	L["CONFIG_GENERAL_TOOLTIP_ITEMCOUNT_COLOUR_TEXT_DESC"] = "задает цвет текста для количества предметов."
--	L["CONFIG_GENERAL_TOOLTIP_ITEMCOUNT_COLOUR_AMOUNTS_DESC"] = ""
--	L["CONFIG_GENERAL_TOOLTIP_ITEMCOUNT_VAULT_TABS_DESC"] = ""
--	L["CONFIG_GENERAL_TOOLTIP_MONEY_ENABLE_DESC"] = ""
--	L["CONFIG_GENERAL_TOOLTIP_MONEY_COLOUR_CLASS_DESC"] = ""
--	L["CONFIG_GENERAL_TOOLTIP_MONEY_COLOUR_TEXT_DESC"] = ""
--	L["CONFIG_GENERAL_TOOLTIP_MONEY_COLOUR_AMOUNTS_DESC"] = ""
--	L["CONFIG_GENERAL_TOOLTIP_SCALE_DESC"] = ""
	L["CONFIG_GENERAL_TOOLTIP_SELF_ONLY"] = "Только у себя"
	L["CONFIG_GENERAL_TOOLTIP_SELF_ONLY_DESC"] = "Показывать количество предметов только для текущего персонажа"
--	L["CONFIG_GENERAL_TOOLTIP_HIGHLIGHT"] = ""
--	L["CONFIG_GENERAL_TOOLTIP_HIGHLIGHT_DESC"] = ""
--	L["CONFIG_GENERAL_TOOLTIP_ACCOUNT_ONLY"] = ""
--	L["CONFIG_GENERAL_TOOLTIP_ACCOUNT_ONLY_DESC"] = ""
--	L["CONFIG_GENERAL_TOOLTIP_FACTION_ONLY"] = ""
--	L["CONFIG_GENERAL_TOOLTIP_FACTION_ONLY_DESC"] = ""
--	L["CONFIG_GENERAL_TOOLTIP_REALM_ONLY"] = ""
--	L["CONFIG_GENERAL_TOOLTIP_REALM_ONLY_DESC"] = ""
--	L["CONFIG_GENERAL_TOOLTIP_CROSSREALM"] = ""
--	L["CONFIG_GENERAL_TOOLTIP_CROSSREALM_DESC"] = ""
--	L["CONFIG_GENERAL_TOOLTIP_VAULT_DESC"] = ""
--	L["CONFIG_GENERAL_TOOLTIP_BATTLEPET_SOURCE_DESC"] = ""
--	L["CONFIG_GENERAL_TOOLTIP_BATTLEPET_DESCRIPTION_DESC"] = ""
--	L["CONFIG_GENERAL_TOOLTIP_BATTLEPET_CUSTOM_ENABLE_DESC"] = ""
--	L["CONFIG_GENERAL_TOOLTIP_BATTLEPET_MOUSEOVER_ENABLE_DESC"] = ""
--	L["CONFIG_GENERAL_TOOLTIP_REPUTATION_NORMAL_DESC"] = ""
--	L["CONFIG_GENERAL_TOOLTIP_REPUTATION_ITEMCOUNT"] = ""
--	L["CONFIG_GENERAL_TOOLTIP_REPUTATION_ITEMCOUNT_DESC"] = ""
--	L["CONFIG_GENERAL_TOOLTIP_REPUTATION_TOKEN_DESC"] = ""
	
--	L["CONFIG_GENERAL_WORKAROUND"] = ""
--	L["CONFIG_GENERAL_WORKAROUND_DESC"] = ""
--	L["CONFIG_GENERAL_WORKAROUND_FRAMELEVEL"] = ""
--	L["CONFIG_GENERAL_WORKAROUND_FRAMELEVEL_DESC"] = ""
	L["CONFIG_GENERAL_WORKAROUND_FRAMELEVEL_ALERT_DESC"] = "изменяет как будут показаны сообщения о багфиксах"
	L["CONFIG_GENERAL_WORKAROUND_FRAMELEVEL_ALERT_STYLE0_DESC"] = "отключает сообщения о багфиксах"
	L["CONFIG_GENERAL_WORKAROUND_FRAMELEVEL_ALERT_STYLE1_DESC"] = "показывать сокращённую версию сообщений о багфиксах"
	L["CONFIG_GENERAL_WORKAROUND_FRAMELEVEL_ALERT_STYLE2_DESC"] = "показывать полную версию сообщений о багфиксах"
--	L["CONFIG_GENERAL_WORKAROUND_ZEROSIZEBAG"] = ""
--	L["CONFIG_GENERAL_WORKAROUND_ZEROSIZEBAG_DESC"] = ""
--	L["CONFIG_GENERAL_WORKAROUND_ZEROSIZEBAG_ALERT_DESC"] = ""
--	L["CONFIG_GENERAL_WORKAROUND_THREAD"] = ""
--	L["CONFIG_GENERAL_WORKAROUND_THREAD_DEBUG_DESC"] = ""
--	L["CONFIG_GENERAL_WORKAROUND_THREAD_DISABLED_DESC"] = ""
--	L["CONFIG_GENERAL_WORKAROUND_THREAD_TIMEOUT"] = ""
--	L["CONFIG_GENERAL_WORKAROUND_THREAD_TIMEOUT_DESC"] = ""
--	L["CONFIG_GENERAL_WORKAROUND_THREAD_TIMEOUT_NORMAL"] = ""
--	L["CONFIG_GENERAL_WORKAROUND_THREAD_TIMEOUT_COMBAT"] = ""
--	L["CONFIG_GENERAL_WORKAROUND_THREAD_TIMEOUT_TOOLTIP"] = ""
--	L["BUGFIX_TAINTED_ALERT_MOUSEOVER_DESC"] = ""
--	L["BUGFIX_TAINTED_ALERT_OPEN_DESC"] = ""
	
--	L["CONFIG_GENERAL_MESSAGES"] = ""
--	L["CONFIG_GENERAL_MESSAGES_RESTACK_DESC"] = ""
--	L["CONFIG_GENERAL_MESSAGES_TRANSLATION"] = ""
--	L["CONFIG_GENERAL_MESSAGES_TRANSLATION_INTERIM"] = ""
--	L["CONFIG_GENERAL_MESSAGES_TRANSLATION_INTERIM_DESC"] = ""
--	L["CONFIG_GENERAL_MESSAGES_TRANSLATION_FINAL"] = ""
--	L["CONFIG_GENERAL_MESSAGES_TRANSLATION_FINAL_DESC"] = ""
--	L["CONFIG_GENERAL_MESSAGES_BATTLEPET_OPPONENT"] = ""
--	L["CONFIG_GENERAL_MESSAGES_BATTLEPET_OPPONENT_DESC"] = ""
--	L["CONFIG_GENERAL_MESSAGES_BAG_UNKNOWN"] = ""
--	L["CONFIG_GENERAL_MESSAGES_BAG_UNKNOWN_DESC"] = ""
--	L["CONFIG_GENERAL_MESSAGES_RULES_STATE"] = ""
--	L["CONFIG_GENERAL_MESSAGES_RULES_STATE_DESC"] = ""
--	L["CONFIG_GENERAL_MESSAGES_RULES_HOOKED"] = ""
--	L["CONFIG_GENERAL_MESSAGES_RULES_HOOKED_DESC"] = ""
--	L["CONFIG_GENERAL_MESSAGES_RULES_REGISTRATION"] = ""
--	L["CONFIG_GENERAL_MESSAGES_RULES_REGISTRATION_DESC"] = ""
--	L["CONFIG_GENERAL_MESSAGES_CROSSREALM_LOADED"] = ""
--	L["CONFIG_GENERAL_MESSAGES_CROSSREALM_LOADED_DESC"] = ""
	
--	L["CONFIG_GENERAL_TIMERS"] = ""
--	L["CONFIG_GENERAL_TIMERS_DESC"] = ""
	
--	L["CONFIG_GENERAL_TRANSMOG"] = ""
--	L["CONFIG_GENERAL_TRANSMOG_SHOW_DESC"] = ""
--	L["CONFIG_GENERAL_TRANSMOG_SECONDARY"] = ""
--	L["CONFIG_GENERAL_TRANSMOG_SECONDARY_DESC"] = ""
--	L["CONFIG_GENERAL_TRANSMOG_CLM"] = ""
--	L["CONFIG_GENERAL_TRANSMOG_CLM_DESC"] = ""
--	L["CONFIG_GENERAL_TRANSMOG_CLO"] = ""
--	L["CONFIG_GENERAL_TRANSMOG_CLO_DESC"] = ""
--	L["CONFIG_GENERAL_TRANSMOG_CLMS"] = ""
--	L["CONFIG_GENERAL_TRANSMOG_CLMS_DESC"] = ""
--	L["CONFIG_GENERAL_TRANSMOG_CLOS"] = ""
--	L["CONFIG_GENERAL_TRANSMOG_CLOS_DESC"] = ""
	
--	L["CONFIG_GENERAL_CONFLICT"] = ""
--	L["CONFIG_GENERAL_CONFLICT_TSM_MAILBOX_DESC"] = ""
--	L["CONFIG_GENERAL_CONFLICT_TSM_MERCHANT_DESC"] = ""
	
--	L["CONFIG_GENERAL_TRADESKILL_PRIORITY"] = ""
--	L["CONFIG_GENERAL_TRADESKILL_PRIORITY_DESC"] = ""
--	L["CONFIG_GENERAL_TRADESKILL_LOADSCAN"] = ""
--	L["CONFIG_GENERAL_TRADESKILL_LOADSCAN_DESC"] = ""
--	L["CONFIG_GENERAL_TRADESKILL_QUIET"] = ""
--	L["CONFIG_GENERAL_TRADESKILL_QUIET_DESC"] = ""
	
--	L["CONFIG_GENERAL_BONUSID"] = ""
--	L["CONFIG_GENERAL_BONUSID_COUNT"] = ""
--	L["CONFIG_GENERAL_BONUSID_SUFFIX"] = ""
--	L["CONFIG_GENERAL_BONUSID_SUFFIX_COUNT_DESC"] = ""
--	L["CONFIG_GENERAL_BONUSID_SEARCH"] = ""
--	L["CONFIG_GENERAL_BONUSID_SUFFIX_SEARCH_DESC"] = ""
--	L["CONFIG_GENERAL_BONUSID_CORRUPTION"] = ""
--	L["CONFIG_GENERAL_BONUSID_CORRUPTION_SEARCH_DESC"] = ""
	
	
--	configuration options > auto
	L["CONFIG_AUTO"] = "Автоматически открывать/закрывать"
	L["CONFIG_AUTO_BANK"] = "открываете банк"
	L["CONFIG_AUTO_VAULT"] = "открываете банк гильдии"
	L["CONFIG_AUTO_MAILBOX"] = "открываете почту"
	L["CONFIG_AUTO_MERCHANT"] = "открываете окно продавца"
	L["CONFIG_AUTO_TRADE"] = "открываете окно обмена"
	L["CONFIG_AUTO_AUCTION"] = "открываете аукцион"
--	L["CONFIG_AUTO_VOID"] = ""
--	L["CONFIG_AUTO_SCRAP"] = ""
--	L["CONFIG_AUTO_TRANSMOG"] = ""
	L["CONFIG_AUTO_COMBAT"] = "вступаете в бой"
	
--	L["CONFIG_AUTO_OPEN"] = ""
--	L["CONFIG_AUTO_OPEN_DESC"] = ""
	
--	L["CONFIG_AUTO_CLOSE"] = ""
--	L["CONFIG_AUTO_CLOSE_DESC"] = ""
--	L["CONFIG_AUTO_CLOSE_COMBAT_DESC"] = ""
	
	
--	configuration options > control
	L["CONFIG_CONTROL_MONITOR"] = "Следить"
	L["CONFIG_CONTROL_MONITOR_DESC"] = "отслеживать ли изменения в данных %1$s?"
	L["CONFIG_CONTROL_SAVE_DESC"] = "сохранять ли данные %1$s, чтобы они были доступны когда вы играете за другого персонажа?"
--	L["CONFIG_CONTROL_NOTIFY_ERASE_DESC"] = ""
--	L["CONFIG_CONTROL_OVERRIDE"] = ""
	L["CONFIG_CONTROL_OVERRIDE_DESC"] = "скрыть стандартный интерфейс %2$s чтобы окно %1$s могло обрабатывать его действия.\n\nОтключение этой опции вернёт функционал стандартного %2$s.\n\nВы всё ещё сможете открыть %1$s %2$s когда эта опция выключена, но только используя специально назначенную клавишу"
--	L["CONFIG_CONTROL_SPECIAL_DESC"] = ""
	L["CONFIG_CONTROL_ANCHOR_LOCK_DESC"] = "фиксирует положение окна %1$s"
--	L["CONFIG_CONTROL_REPOSITION_NOW"] = ""
--	L["CONFIG_CONTROL_REPOSITION_NOW_DESC"] = ""
	L["CONFIG_CONTROL_BLUEPRINT_DESC"] = "выбрать, какие настройки использовать при создании окна %1$s"	
	
	
--	configuration settings > design
--	L["CONFIG_DESIGN"] = ""
--	L["CONFIG_DESIGN_PLURAL"] = ""
	
--	L["CONFIG_STYLE"] = ""
--	L["CONFIG_STYLE_PLURAL"] = ""
--	L["CONFIG_STYLE_DESCRIPTION"] = ""
	
--	L["CONFIG_LAYOUT"] = ""
--	L["CONFIG_LAYOUT_PLURAL"] = ""
--	L["CONFIG_LAYOUT_DESCRIPTION"] = ""
	
	L["CONFIG_DESIGN_WINDOW"] = "Окно"
	L["CONFIG_DESIGN_WINDOW_SCALE_DESC"] = "устанавливает масштаб, делая окно меньше или больше"
	L["CONFIG_DESIGN_WINDOW_PADDING_DESC"] = "устанавливает зазор между краем окна и наборами ячеек"
	L["CONFIG_DESIGN_WINDOW_WIDTH_DESC"] = "устанавливает количество столбцов для отображения"
--	L["CONFIG_DESIGN_WINDOW_HEIGHT_DESC"] = ""
	L["CONFIG_DESIGN_WINDOW_BACKGROUND_COLOUR_DESC"] = "Устанавливает фоновый цвет главного окна"
	L["CONFIG_DESIGN_WINDOW_BORDER_SHOW_DESC"] = "показать или скрыть кромку главного окна"
	L["CONFIG_DESIGN_WINDOW_BORDER_STYLE_DESC"] = "стиль кромки главного окна"
	L["CONFIG_DESIGN_WINDOW_BORDER_COLOUR_DESC"] = "устанавливает цвет кромки главного окна"
--	L["CONFIG_DESIGN_WINDOW_LIST"] = ""
--	L["CONFIG_DESIGN_WINDOW_LIST_DESC"] = ""
	
--	L["CONFIG_DESIGN_FRAME_HIDE_DESC"] = ""
	
	L["CONFIG_DESIGN_FRAME_CHANGER_HIGHLIGHT"] = "Цвет подсветки сумок"
--	L["CONFIG_DESIGN_FRAME_CHANGER_HIGHLIGHT_DESC"] = ""
	L["CONFIG_DESIGN_FRAME_CHANGER_HIGHLIGHT_COLOUR_DESC"] = "Устанавливает цвет, который используется для подсветки ячеек сумки, над которой курсор мыши"
	L["CONFIG_DESIGN_FRAME_CHANGER_FREE"] = "Показывать количество"
	L["CONFIG_DESIGN_FRAME_CHANGER_FREE_DESC"] = "отображать ли количество пустых ячеек на иконке сумки"
	L["CONFIG_DESIGN_FRAME_CHANGER_FREE_COLOUR_DESC"] = "задает цвет текста для количества пустых ячеек"
	
--	L["CONFIG_DESIGN_FRAME_STATUS_EMPTY"] = ""
--	L["CONFIG_DESIGN_FRAME_STATUS_EMPTY_DESC"] = ""
	
--	L["CONFIG_DESIGN_FRAME_SEARCH_LABEL_COLOUR_DESC"] = ""
--	L["CONFIG_DESIGN_FRAME_SEARCH_TEXT_COLOUR_DESC"] = ""
	
--	L["CONFIG_DESIGN_FRAME_TITLE_SIZE_NORMAL"] = ""
--	L["CONFIG_DESIGN_FRAME_TITLE_SIZE_THIN"] = ""
--	L["CONFIG_DESIGN_FRAME_TITLE_ONLINE_COLOUR_DESC"] = ""
--	L["CONFIG_DESIGN_FRAME_TITLE_OFFLINE_COLOUR_DESC"] = ""
	
	L["CONFIG_DESIGN_BAR"] = "Наборы ячеек"
	L["CONFIG_DESIGN_BAR_PER_ROW"] = "В ряду"
	L["CONFIG_DESIGN_BAR_PER_ROW_DESC"] = "задает количество наборов ячеек в каждом ряду"
	L["CONFIG_DESIGN_BAR_BACKGROUND_DESC"] = "задает цвет фона наборов ячеек"
	L["CONFIG_DESIGN_BAR_COMPACT"] = "Компактно"
	L["CONFIG_DESIGN_BAR_COMPACT_DESC"] = "отображает все непустые наборы ячеек в последовательном порядке"
	L["CONFIG_DESIGN_BAR_SHOW_EMPTY"] = "Показывать пустые"
	L["CONFIG_DESIGN_BAR_SHOW_EMPTY_DESC"] = "отображать или нет пустые наборы ячеек"
--	L["CONFIG_DESIGN_BAR_PADDING_INTERNAL_DESC"] = ""
--	L["CONFIG_DESIGN_BAR_PADDING_EXTERNAL_DESC"] = ""
	L["CONFIG_DESIGN_BAR_BORDER_DESC"] = "показать или скрыть кромку вокруг каждого набора ячеек"
	L["CONFIG_DESIGN_BAR_BORDER_STYLE_DESC"] = "стиль кромки вокруг каждого набора ячеек"
	L["CONFIG_DESIGN_BAR_BORDER_COLOUR_DESC"] = "задает цвет кромки наборов ячеек"
	L["CONFIG_DESIGN_BAR_NAME_DESC"] = "Задает название для этого набора ячеек"
	L["CONFIG_DESIGN_BAR_NAME_SHOW_DESC"] = "отображать или нет названия наборов ячеек"
--	L["CONFIG_DESIGN_BAR_NAME_EDITMODE_DESC"] = ""
	L["CONFIG_DESIGN_BAR_NAME_COLOUR_DESC"] = "задает цвет кромки наборов ячеек"
--	L["CONFIG_DESIGN_BAR_NAME_HEIGHT_DESC"] = ""
--	L["CONFIG_DESIGN_BAR_NAME_ANCHOR_DESC"] = ""
	
	L["CONFIG_DESIGN_ITEM_PADDING_DESC"] = "задает расстояние медлу ячейками"
	L["CONFIG_DESIGN_ITEM_HIDDEN"] = "Показывать скрытые"
	L["CONFIG_DESIGN_ITEM_HIDDEN_DESC"] = "показывать ли предметы, находящиеся в скрытых категориях"
	L["CONFIG_DESIGN_ITEM_FADE"] = "Затемнять недоступное"
	L["CONFIG_DESIGN_ITEM_FADE_DESC"] = "затемнять ли недоступные в данный момент ячейки"
--	L["CONFIG_DESIGN_ITEM_TINT_USABLE"] = ""
--	L["CONFIG_DESIGN_ITEM_TINT_USABLE_DESC"] = ""
--	L["CONFIG_DESIGN_ITEM_ITEMLEVEL_SHOW"] = ""
--	L["CONFIG_DESIGN_ITEM_ITEMLEVEL_SHOW_DESC"] = ""
--	L["CONFIG_DESIGN_ITEM_ITEMLEVEL_SHOW_MINIMUM_DESC"] = ""
--	L["CONFIG_DESIGN_ITEM_STACKLIMIT"] = ""
--	L["CONFIG_DESIGN_ITEM_STACKLIMIT_STACKS"] = ""
--	L["CONFIG_DESIGN_ITEM_STACKLIMIT_STACKS_DESC"] = ""
--	L["CONFIG_DESIGN_ITEM_STACKLIMIT_IDENTIFY_SHOW"] = ""
--	L["CONFIG_DESIGN_ITEM_STACKLIMIT_IDENTIFY_SHOW_DESC"] = ""
--	L["CONFIG_DESIGN_ITEM_STACKLIMIT_IDENTIFY_POSITION_DESC"] = ""
--	L["CONFIG_DESIGN_ITEM_ITEMCOUNT_SHOW"] = ""
--	L["CONFIG_DESIGN_ITEM_ITEMCOUNT_SHOW_DESC"] = ""
--	L["CONFIG_DESIGN_ITEM_STATUSICON"] = ""
--	L["CONFIG_DESIGN_ITEM_STATUSICON_UPGRADE"] = ""
--	L["CONFIG_DESIGN_ITEM_STATUSICON_UPGRADE_SHOW_DESC"] = ""
--	L["CONFIG_DESIGN_ITEM_STATUSICON_JUNK"] = ""
--	L["CONFIG_DESIGN_ITEM_STATUSICON_JUNK_SHOW_DESC"] = ""
--	L["CONFIG_DESIGN_ITEM_STATUSICON_QUEST_BANG_DESC"] = ""
--	L["CONFIG_DESIGN_ITEM_STATUSICON_QUEST_BORDER_DESC"] = ""
--	L["CONFIG_DESIGN_ITEM_SIZE"] = ""
--	L["CONFIG_DESIGN_ITEM_SIZE_DESC"] = ""
	
--	L["CONFIG_DESIGN_ITEM_OVERLAY"] = ""
--	L["CONFIG_DESIGN_ITEM_OVERLAY_AZERITE"] = ""
--	L["CONFIG_DESIGN_ITEM_OVERLAY_NZOTH"] = ""
--	L["CONFIG_DESIGN_ITEM_OVERLAY_DESC"] = ""
	
--	L["CONFIG_DESIGN_ITEM_COOLDOWN_SHOW_DESC"] = ""
--	L["CONFIG_DESIGN_ITEM_COOLDOWN_GLOBAL"] = ""
--	L["CONFIG_DESIGN_ITEM_COOLDOWN_GLOBAL_DESC"] = ""
--	L["CONFIG_DESIGN_ITEM_COOLDOWN_COMBAT"] = ""
--	L["CONFIG_DESIGN_ITEM_COOLDOWN_COMBAT_DESC"] = ""
	
	L["CONFIG_DESIGN_ITEM_BORDER_SHOW_DESC"] = "отображать ли кромку вокруг каждой ячейки"
--	L["CONFIG_DESIGN_ITEM_BORDER_STYLE_DESC"] = ""
	L["CONFIG_DESIGN_ITEM_BORDER_QUALITY_DESC"] = "окрашивать ли кромку каждой ячейки в соответствии с качеством вещи"
--	L["CONFIG_DESIGN_ITEM_BORDER_QUALITY_CUTOFF"] = ""
--	L["CONFIG_DESIGN_ITEM_BORDER_QUALITY_CUTOFF_DESC"] = ""
	L["CONFIG_DESIGN_ITEM_BORDER_TEXTURE_OFFSET_DESC"] = "расстояние в пикселях между краем картинки предмета и внутренней стороной кромки ячейки"
	
--	L["CONFIG_DESIGN_ITEM_NEW"] = ""
--	L["CONFIG_DESIGN_ITEM_NEW_ENABLED_DESC"] = ""
--	L["CONFIG_DESIGN_ITEM_NEW_CUTOFF_DESC"] = ""
--	L["CONFIG_DESIGN_ITEM_NEW_RESET_DESC"] = ""
	
	L["CONFIG_DESIGN_ITEM_AGE"] = "Новые предметы"
	L["CONFIG_DESIGN_ITEM_AGE_SHOW_DESC"] = "отображать индикатор нового предмета в окне %s"
	L["CONFIG_DESIGN_ITEM_AGE_COLOUR_DESC"] = "задает цвет текста для индикатора нового предмета."
--	L["CONFIG_DESIGN_ITEM_AGE_CUTOFF_DESC"] = ""
	
	L["CONFIG_DESIGN_ITEM_EMPTY"] = "Пустые ячейки"
	L["CONFIG_DESIGN_ITEM_EMPTY_ICON_DESC"] = "использовать иконку или сплошной цвет в качестве фона пустой ячейки?"
	L["CONFIG_DESIGN_ITEM_EMPTY_CLUMP"] = "Вместе"
	L["CONFIG_DESIGN_ITEM_EMPTY_CLUMP_DESC"] = "помещать ли пустые ячейки в тот же набор, что и непустые ячейки того же типа или расценивать их как отдельный тип?"
	L["CONFIG_DESIGN_ITEM_EMPTY_BORDER"] = "Цветная кромка"
	L["CONFIG_DESIGN_ITEM_EMPTY_BORDER_DESC"] = "красить ли кромку пустой ячейки в соответствии с цветом типа сумки?"
	L["CONFIG_DESIGN_ITEM_EMPTY_COLOUR"] = "Цвета ячеек"
	L["CONFIG_DESIGN_ITEM_EMPTY_COLOUR_DESC"] = "устанавливает цвет кромки и фона для пустых %1$s ячеек"
--	L["CONFIG_DESIGN_ITEM_EMPTY_ALPHA"] = ""
--	L["CONFIG_DESIGN_ITEM_EMPTY_ALPHA_DESC"] = ""
--	L["CONFIG_DESIGN_ITEM_EMPTY_STATUS"] = ""
--	L["CONFIG_DESIGN_ITEM_EMPTY_FIRST"] = ""
--	L["CONFIG_DESIGN_ITEM_EMPTY_FIRST_DESC"] = ""
--	L["CONFIG_DESIGN_ITEM_EMPTY_POSITION"] = ""
--	L["CONFIG_DESIGN_ITEM_EMPTY_POSITION_DESC"] = ""
	
	
-- junk
--	L["CONFIG_JUNK_SELL"] = ""
--	L["CONFIG_JUNK_SELL_DESC"] = ""
--	L["CONFIG_JUNK_SELL_NOTIFY_SOLD"] = ""
--	L["CONFIG_JUNK_SELL_NOTIFY_DESTROYED"] = ""
--	L["CONFIG_JUNK_SELL_NOTIFY_LIMIT"] = ""
--	L["CONFIG_JUNK_LIMIT"] = ""
--	L["CONFIG_JUNK_LIMIT_DESC"] = ""
--	L["CONFIG_JUNK_DELETE_DESC"] = ""
--	L["CONFIG_JUNK_NOTIFY_DESC"] = ""
--	L["CONFIG_JUNK_QUALITY_CUTOFF_DESC"] = ""
--	L["CONFIG_JUNK_CATEGORY_DESC"] = ""
--	L["CONFIG_JUNK_LIST_DESC"] = ""
--	L["CONFIG_JUNK_LIST_SELL_DESC"] = ""
--	L["CONFIG_JUNK_LIST_DESTROY_DESC"] = ""
--	L["CONFIG_JUNK_TESTMODE"] = ""
--	L["CONFIG_JUNK_TESTMODE_DESC"] = ""
--	L["CONFIG_JUNK_TESTMODE_ALERT"] = ""
--	L["CONFIG_JUNK_TIMER_DESC"] = ""
--	L["CONFIG_JUNK_PROCESSING_DISABLED_DESC"] = ""
	
	
-- sorting
--	L["CONFIG_SORTING"] = ""
	
	L["CONFIG_SORTING_SORT"] = "Сортировка"
	
--	L["CONFIG_SORTING_METHOD"] = ""
--	L["CONFIG_SORTING_METHOD_PLURAL"] = ""
--	L["CONFIG_SORTING_METHOD_DESC"] = ""
	L["CONFIG_SORTING_METHOD_BAGSLOT"] = "Сумка / Ячейка"
	L["CONFIG_SORTING_METHOD_BAGSLOT_DESC"] = "сортирует инвентарь по номеру сумки и ячейки"
	L["CONFIG_SORTING_METHOD_USER"] = "Ручная"
	L["CONFIG_SORTING_METHOD_USER_DESC"] = "сортирует инвентарь тем способом, который выберите Вы"
	
--	L["CONFIG_SORTING_BAG"] = ""
--	L["CONFIG_SORTING_BAGS"] = ""
--	L["CONFIG_SORTING_BAG_DESC"] = ""
	
	L["CONFIG_SORTING_INCLUDE_NAME"] = "название предмета"
	L["CONFIG_SORTING_INCLUDE_NAME_DESC"] = "использовать ли имя предмета при сортировке"
	L["CONFIG_SORTING_INCLUDE_NAME_REVERSE"] = "Обратить названия"
	L["CONFIG_SORTING_INCLUDE_NAME_REVERSE_DESC"] = "использовать ли обращение названий предметов\n\nнапример вместо Super Mana Potion использовать Potion Mana Super"
	L["CONFIG_SORTING_INCLUDE_QUALITY"] = "качество вещи"
	L["CONFIG_SORTING_INCLUDE_QUALITY_DESC"] = "использовать ли качество предмета при сортировке"
	L["CONFIG_SORTING_INCLUDE_LOCATION"] = "слот одеваемой вещи"
	L["CONFIG_SORTING_INCLUDE_LOCATION_DESC"] = "использовать ли слот на который одевается вещь при сортировке\n\nвнимание: действует только на вещи, которые можно одеть"
	L["CONFIG_SORTING_INCLUDE_ITEMTYPE"] = "тип и подтип предмета"
	L["CONFIG_SORTING_INCLUDE_ITEMTYPE_DESC"] = "использовать ли тип и подтип предмета при сортировке"
	L["CONFIG_SORTING_INCLUDE_CATEGORY"] = "категория предмета"
	L["CONFIG_SORTING_INCLUDE_CATEGORY_DESC"] = "использовать ли категорию предмета при сортировке"
	L["CONFIG_SORTING_INCLUDE_ITEMUSELEVEL"] = "уровень (исп) предмета"
	L["CONFIG_SORTING_INCLUDE_ITEMUSELEVEL_DESC"] = "использовать ли уровень (использования) предмета при сортировке"
	L["CONFIG_SORTING_INCLUDE_ITEMSTATLEVEL"] = "уровень (парам) предмета"
	L["CONFIG_SORTING_INCLUDE_ITEMSTATLEVEL_DESC"] = "использовать ли уровень (по параметрам) предмета при сортировке"
--	L["CONFIG_SORTING_INCLUDE_ITEMAGE"] = ""
--	L["CONFIG_SORTING_INCLUDE_ITEMAGE_DESC"] = ""
	L["CONFIG_SORTING_INCLUDE_VENDORPRICE"] = "цена продажи"
	L["CONFIG_SORTING_INCLUDE_VENDORPRICE_DESC"] = "использовать ли цену продажи предмета NPC-торговцу при сортировке"
--	L["CONFIG_SORTING_INCLUDE_ID"] = ""
--	L["CONFIG_SORTING_INCLUDE_ID_DESC"] = ""
--	L["CONFIG_SORTING_INCLUDE_SLOTTYPE"] = ""
--	L["CONFIG_SORTING_INCLUDE_SLOTTYPE_DESC"] = ""
--	L["CONFIG_SORTING_INCLUDE_EXPANSION"] = ""
--	L["CONFIG_SORTING_INCLUDE_EXPANSION_DESC"] = ""
--	L["CONFIG_SORTING_INCLUDE_BAGID"] = ""
--	L["CONFIG_SORTING_INCLUDE_BAGID_DESC"] = ""
--	L["CONFIG_SORTING_INCLUDE_SLOTID"] = ""
--	L["CONFIG_SORTING_INCLUDE_SLOTID_DESC"] = ""
--	L["CONFIG_SORTING_INCLUDE_COUNT"] = ""
--	L["CONFIG_SORTING_INCLUDE_COUNT_DESC"] = ""
	
	L["CONFIG_SORTING_DIRECTION_DESC"] = "производить сортировку в порядке увеличения или убывания?"
	L["CONFIG_SORTING_ORDER"] = "Порядок сортировки"
	L["CONFIG_SORTING_MOVE_UP"] = "вверх"
	L["CONFIG_SORTING_MOVE_UP_DESC"] = "перемещает %1$s вверх в порядке сортировки"
	L["CONFIG_SORTING_MOVE_DOWN"] = "вниз"
	L["CONFIG_SORTING_MOVE_DOWN_DESC"] = "перемещает %1$s вниз в порядке сортировки"
	L["CONFIG_SORTING_NOT_INCLUDED"] = "* не включено в сортировку *"
	
--	L["CONFIG_LIST_ADD_DESC"] = ""
--	L["CONFIG_LIST_ADD_LIMIT_DESC"] = ""
--	L["CONFIG_LIST_ADD_UPGRADE_DESC"] = ""
--	L["CONFIG_LIST_ACTIVATE_DESC"] = ""
--	L["CONFIG_LIST_DELETE_DESC"] = ""
--	L["CONFIG_LIST_RESTORE_DESC"] = ""
--	L["CONFIG_LIST_NAME_DESC"] = ""
--	L["CONFIG_LIST_COPY_DESC"] = ""
--	L["CONFIG_LIST_PURGE_DESC"] = ""
--	L["CONFIG_LIST_IMPORT_DESC"] = ""
--	L["CONFIG_LIST_EXPORT_DESC"] = ""
	
	L["CONFIG_RULE_SHOWDISABLED"] = "Показывать отключенные правила"
	L["CONFIG_RULE_SHOWDISABLED_DESC"] = "отображать ли отключенные правила?"
--	L["CONFIG_RULE_WIDTH_DESC"] = ""
--	L["CONFIG_RULE_ROWS"] = ""
--	L["CONFIG_RULE_ROWS_DESC"] = ""
	
--	L["CONFIG_CATEGORY_CUSTOM"] = ""
	L["CONFIG_CATEGORY_CUSTOM_PLURAL"] = "Пользовательские категории"
	
--	L["CONFIG_CATEGORY_SYSTEM"] = ""
--	L["CONFIG_CATEGORY_SYSTEM_PLURAL"] = ""
	
--	L["CONFIG_CATEGORY_SET"] = ""
--	L["CONFIG_CATEGORY_SET_PLURAL"] = ""
--	L["CONFIG_CATEGORY_SET_DESCRIPTION"] = ""
	
--	L["CONFIG_PROFILE"] = ""
--	L["CONFIG_PROFILE_PLURAL"] = ""
--	L["CONFIG_PROFILE_CURRENT"] = ""
	
--	L["CONFIG_OBJECT_DELETED"] = ""
	
	
--	configuration options > debug
	L["CONFIG_DEBUG"] = "Режим отладки"
	L["CONFIG_DEBUG_DESC"] = "использовать ли код режима отладки?"
	
	
--	configuration options > generic
--	L["CONFIG_BORDER_SCALE_DESC"] = ""
	L["CONFIG_BORDER_TEXTURE_DESC"] = "настройки текстуры кромки"
	L["CONFIG_BORDER_TEXTURE_FILE_DESC"] = "текстура, для использования на кромке (изменение этого параметра сбросит масштаб на 100%)"
	L["CONFIG_BORDER_TEXTURE_HEIGHT_DESC"] = "высота (в пикселах) текстуры"
	
	
--	main frame
--	L["FRAME_ONENTER_DRAG_BAR"] = ""
--	L["FRAME_ONENTER_DRAG_BAR_ALT"] = ""
--	L["FRAME_ONENTER_DRAG_CATEGORY"] = ""
--	L["FRAME_ONENTER_DRAG_CATEGORY_ALT"] = ""
	
	
--	rules frame
	L["RULE_HIDDEN"] = "Скрыто"
	L["RULE_FORMULA"] = "Формула"
	L["RULE_LIST_ENABLED"] = "Использовать"
	L["RULE_LIST_DAMAGED"] = "Повреждено"
	L["RULE_LIST_ID"] = "Правило"
	
	L["RULE_DAMAGED"] = "Правило %s помечено как повреждённое и более не будет работать, пока Вы его не исправите."
--	L["RULE_DAMAGED_DESC"] = ""
--	L["RULE_FAILED"] = ""
	L["RULE_FAILED_KEY_NIL"] = "нет ключа"
	L["RULE_FAILED_DATA_NIL"] = "нет данных"
	L["RULE_FAILED_DESCRIPTION_NIL"] = "отсутствует описание"
	L["RULE_FAILED_FORMULA_NIL"] = "отсутствует формула"
--	L["RULE_FAILED_FORMULA_BAD"] = ""
--	L["RULE_FAILED_ARGUMENT_IS_NIL"] = ""
--	L["RULE_FAILED_ARGUMENT_IS_NOT"] = ""
--	L["RULE_FAILED_ARGUMENT_IS_INVALID"] = ""
--	L["RULE_FAILED_ARGUMENT_NONE_SPECIFIED"] = ""
	
	
--	new item indicators
--	L["NEW_ITEM_INCREASE"] = ""
--	L["NEW_ITEM_DECREASE"] = ""
--	L["NEW_ITEM_GLOW"] = ""
--	L["NEW_ITEM_GLOW_CLEAR_DESC"] = ""
	
	
--	slash commands
--	L["SLASH_UI"] = ""
--	L["SLASH_UI_DESC"] = ""
--	L["SLASH_UI_RESET"] = ""
	L["SLASH_UI_RESET_DESC"] = "перемещает всё в центр экрана"
	L["SLASH_UI_RESET_COMPLETE_DESC"] = "все окна интерфейса перемещаются в центр экрана"
--	L["SLASH_DB"] = ""
--	L["SLASH_DB_DESC"] = ""
--	L["SLASH_DB_RESET"] = ""
	L["SLASH_DB_RESET_DESC"] = "сбросить все настройки"
--	L["SLASH_DB_RESET_CONFIRM"] = ""
	L["SLASH_DB_RESET_CONFIRM_DESC"] = "подтверждает сброс базы данных"
	L["SLASH_DB_RESET_COMPLETE_DESC"] = "Профиль сброшен. Все настройки возвращены к значению по умолчанию."
--	L["SLASH_CACHE"] = ""
--	L["SLASH_CACHE_DESC"] = ""
--	L["SLASH_CACHE_ERASE"] = ""
	L["SLASH_CACHE_ERASE_DESC"] = "очищает весь кэш"
--	L["SLASH_CACHE_ERASE_CONFIRM"] = ""
	L["SLASH_CACHE_ERASE_CONFIRM_DESC"] = "подтверждает очистку кэша"
	L["SLASH_CACHE_ERASE_COMPLETE_DESC"] = "Сбросить все данные для всех персонажей"
--	L["SLASH_MISC"] = ""
--	L["SLASH_MISC_DESC"] = ""
--	L["SLASH_TRACK"] = ""
--	L["SLASH_TRACK_DESC"] = ""
--	L["SLASH_TRACK_ADD_DESC"] = ""
--	L["SLASH_TRACK_REMOVE_DESC"] = ""
	
	
--	misc chat stuff
	L["UPGRADE_PROFILE"] = "Обновление профиля [%1$s] до %2$d"
	L["UPGRADE_GLOBAL"] = "Обновление общей %1$s информации до v%2$d"
--	L["UPGRADE_CHAR"] = ""
	
	L["MISC_ALERT"] = "Внимание!"
	L["MISC_ALERT_FRAMELEVEL_1"] = "Выполнен багфикс."
	L["MISC_ALERT_FRAMELEVEL_2"] = "FrameLevel для окна %1$s был равен %2$s и сброшен до %3$s для уверенной работоспособности. Извините за небольшой лаг, вызванный этим фиксом."
--	L["MISC_ALERT_SEARCH_NOT_LOADED"] = ""
	
--	L["BATTLEPET_OPPONENT_IMMUNE"] = ""
--	L["BATTLEPET_OPPONENT_KNOWN_MAX"] = ""
--	L["BATTLEPET_OPPONENT_UPGRADE"] = ""
--	L["BATTLEPET_OPPONENT_FORMAT_STRONG"] = ""
--	L["BATTLEPET_OPPONENT_FORMAT_WEAK"] = ""
--	L["BATTLEPET_OPPONENT_FORMAT_ABILITY1"] = ""
--	L["BATTLEPET_OPPONENT_FORMAT_ABILITY2"] = ""
	
	
--	item count tooltip
--	L["TOOLTIP_VAULT_TABS"] = ""
--	L["TOOLTIP_GOLD_AMOUNT"] = ""
	
	
--	generic menu text
	L["AUTOMATIC"] = "непроизвольный"
	L["BOTTOMLEFT"] = "Снизу слева"
	L["BOTTOMRIGHT"] = "Снизу справа"
	L["TOPLEFT"] = "Сверху слева"
	L["TOPRIGHT"] = "Сверху справа"
--	L["BOTTOM"] = ""
--	L["LEFT"] = ""
--	L["RIGHT"] = ""
	L["HORIZONTAL"] = "Горизонтально"
	L["VERTICAL"] = "Вертикально"
	L["CLOSE_MENU"] = "Закрыть меню"
	L["ANCHOR"] = "Якорь"
	L["ANCHOR_TEXT1"] = "задает якорь (точку закрепления)"
	L["ANCHOR_TEXT2"] = "прикрепляет %1$s к %2$s"
	L["BORDER_DESC"] = "настройки кромки"
	L["FILE"] = "Файл"
	L["HEIGHT"] = "Высота"
	L["SCALE"] = "Масштаб"
	L["TEXTURE"] = "Текстура"
	L["FONT"] = "Шрифт"
	L["BACKGROUND_COLOUR"] = "Цвет фона"
	L["STYLE"] = "Стиль"
	L["ALERT"] = "Тревога"
	L["PADDING"] = "Зазор"
	L["INTERNAL"] = "Внутренняя"
	L["EXTERNAL"] = "Внешняя"
	L["WIDTH"] = "Ширина"
	L["DIRECTION"] = "Направление"
--	L["ASCENDING"] = ""
--	L["DESCENDING"] = ""
--	L["LOCATION"] = ""
--	L["DHMS"] = ""
--	L["RANDOM"] = ""
	L["RELOAD"] = "Перезагрузить"
	L["INSERT"] = "Добавить пустой набор"
	L["OFFSET"] = "Сдвиг"
--	L["NUMBER"] = ""
--	L["STRING"] = ""
--	L["COOLDOWN"] = ""
--	L["FRAMES"] = ""
--	L["CLICK_TO_SELECT"] = ""
--	L["CLICK_TO_DESELECT"] = ""
--	L["CLICK_TO_IGNORE"] = ""	
	L["ORDER"] = "Порядок"
--	L["MOUSEOVER"] = ""
--	L["NO_DATA_AVAILABLE"] = ""
--	L["TOOLTIP_PURCHASE_BANK_BAG_SLOT"] = ""
--	L["TOOLTIP_PURCHASE_BANK_TAB_REAGENT"] = ""
--	L["LABEL"] = ""
--	L["ABORTED"] = ""
--	L["RESTORE"] = ""
--	L["PURGE"] = ""
--	L["COPY_FROM"] = ""
--	L["DELETED"] = ""
--	L["IMPORT"] = ""
--	L["EXPORT"] = ""
--	L["NOTIFY"] = ""
--	L["ACTION"] = ""
--	L["FIRST"] = ""
--	L["LAST"] = ""
--	L["NONE_USABLE"] = ""
--	L["NONE_OWNED"] = ""
--	L["LIST"] = ""
--	L["SEQUENTIAL"] = ""
--	L["USE_ALL"] = ""
--	L["SELECTION"] = ""
--	L["PARAGON"] = ""
	L["SLOT"] = "Ячейка"
--	L["TOOLTIP"] = ""
--	L["POSITION"] = ""
--	L["CENTER"] = ""
--	L["ALIGNMENT"] = ""
--	L["ACCOUNT"] = ""
--	L["ACCOUNTS"] = ""
--	L["REALM"] = ""
--	L["UNASSIGNED"] = ""
--	L["AMOUNTS"] = ""
--	L["VAULT_TABS"] = ""
--	L["BOUND"] = ""
--	L["ADD_CLICK_TO_ACTION"] = ""
--	L["EXPAND"] = ""
--	L["COLLAPSE"] = ""
--	L["SET"] = ""
--	L["COSMETIC"] = ""
	
	
-- libdatabroker
--	L["LDB"] = ""
--	L["LDB_OBJECT_TEXT_SET"] = ""
--	L["LDB_OBJECT_TEXT_SET_DESC"] = ""
--	L["LDB_OBJECT_TEXT_INCLUDE"] = ""
--	L["LDB_OBJECT_TEXT_INCLUDE_DESC"] = ""
--	L["LDB_OBJECT_TEXT_FORMAT DESC"] = ""
--	L["LDB_OBJECT_TOOLTIP_INCLUDE"] = ""
--	L["LDB_OBJECT_TOOLTIP_INCLUDE_DESC"] = ""
--	L["LDB_OBJECT_TOOLTIP_FORMAT_DESC"] = ""
	
--	L["LDB_TRACKED_NONE"] = ""
--	L["LDB_LOCATION_NOT_READY"] = ""
--	L["LDB_LOCATION_NOT_MONITORED"] = ""
	
--	L["LDB_BAGS_COLOUR_USE"] = ""
--	L["LDB_BAGS_COLOUR_USE_DESC"] = ""
--	L["LDB_BAGS_STYLE"] = ""
--	L["LDB_BAGS_STYLE_DESC"] = ""
--	L["LDB_BAGS_INCLUDE_TYPE"] = ""
--	L["LDB_BAGS_INCLUDE_TYPE_DESC"] = ""
	
--	L["LDB_MOUNTS_TYPE_L"] = ""
--	L["LDB_MOUNTS_TYPE_U"] = ""
--	L["LDB_MOUNTS_TYPE_S"] = ""
--	L["LDB_MOUNTS_TYPE_X"] = ""
--	L["LDB_MOUNTS_USEFORLAND"] = ""
--	L["LDB_MOUNTS_USEFORLAND_DESC"] = ""
--	L["LDB_MOUNTS_FLYING_DISMOUNT_DESC"] = ""
--	L["LDB_MOUNTS_FLYING_DISMOUNT_WARNING"] = ""
--	L["LDB_MOUNTS_SUMMON"] = ""
--	L["LDB_MOUNTS_NODATA"] = ""
--	L["LDB_MOUNTS_TRAVEL_FORM"] = ""
--	L["LDB_MOUNTS_TRAVEL_FORM_DESC"] = ""
	
--	L["LDB_COMPANION_SUMMON"] = ""
--	L["LDB_COMPANION_MISSING"] = ""
--	L["LDB_COMPANION_NONE"] = ""
--	L["LDB_COMPANION_RESTRICTED"] = ""
--	L["LDB_COMPANION_RESTRICTED_ZONE"] = ""
--	L["LDB_COMPANION_RESTRICTED_ITEM"] = ""
--	L["LDB_COMPANION_RESTRICTED_EVENT"] = ""
--	L["LDB_COMPANION_RESTRICTED_UNKNOWN"] = ""
--	L["LDB_COMPANION_NODATA_DESC"] = ""
--	L["LDB_COMPANION_SELECT"] = ""
--	L["LDB_COMPANION_DESELECT"] = ""
--	L["LDB_COMPANION_IGNORE"] = ""
--	L["LDB_COMPANION_USEALL_DESC"] = ""
--	L["LDB_COMPANION_RANDOMISE_DESC"] = ""
	
--	L["LDB_REPUTATION_NONE"] = ""
	
--	L["LDB_CURRENCY_NONE"] = ""
