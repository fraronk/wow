if not WeakAuras.IsCorrectVersion() then return end

if not(GetLocale() == "esMX") then
  return
end

local L = WeakAuras.L

-- WeakAuras/Options
	L["-- Do not remove this comment, it is part of this trigger: "] = "-- No remover este comentario. Es parte de este desencadenador:"
	L["% of Progress"] = "% de progreso"
	--[[Translation missing --]]
	L["%i auras selected"] = "%i auras selected"
	L["%i Matches"] = "%i coincidencias"
	--[[Translation missing --]]
	L["%s - Option #%i has the key %s. Please choose a different option key."] = "%s - Option #%i has the key %s. Please choose a different option key."
	--[[Translation missing --]]
	L["%s %s, Lines: %d, Frequency: %0.2f, Length: %d, Thickness: %d"] = "%s %s, Lines: %d, Frequency: %0.2f, Length: %d, Thickness: %d"
	--[[Translation missing --]]
	L["%s %s, Particles: %d, Frequency: %0.2f, Scale: %0.2f"] = "%s %s, Particles: %d, Frequency: %0.2f, Scale: %0.2f"
	--[[Translation missing --]]
	L["%s Alpha: %d%%"] = "%s Alpha: %d%%"
	--[[Translation missing --]]
	L["%s Color"] = "%s Color"
	--[[Translation missing --]]
	L["%s Default Alpha, Zoom, Icon Inset, Aspect Ratio"] = "%s Default Alpha, Zoom, Icon Inset, Aspect Ratio"
	--[[Translation missing --]]
	L["%s Inset: %d%%"] = "%s Inset: %d%%"
	--[[Translation missing --]]
	L["%s is not a valid SubEvent for COMBAT_LOG_EVENT_UNFILTERED"] = "%s is not a valid SubEvent for COMBAT_LOG_EVENT_UNFILTERED"
	--[[Translation missing --]]
	L["%s Keep Aspect Ratio"] = "%s Keep Aspect Ratio"
	--[[Translation missing --]]
	L["%s total auras"] = "%s total auras"
	--[[Translation missing --]]
	L["%s Zoom: %d%%"] = "%s Zoom: %d%%"
	--[[Translation missing --]]
	L["%s, Border"] = "%s, Border"
	--[[Translation missing --]]
	L["%s, Offset: %0.2f;%0.2f"] = "%s, Offset: %0.2f;%0.2f"
	--[[Translation missing --]]
	L["%s, offset: %0.2f;%0.2f"] = "%s, offset: %0.2f;%0.2f"
	--[[Translation missing --]]
	L["(Right click to rename)"] = "(Right click to rename)"
	--[[Translation missing --]]
	L["|c%02x%02x%02x%02xCustom Color|r"] = "|c%02x%02x%02x%02xCustom Color|r"
	--[[Translation missing --]]
	L["|cFFFF0000Note:|r The unit '%s' is not a trackable unit."] = "|cFFFF0000Note:|r The unit '%s' is not a trackable unit."
	--[[Translation missing --]]
	L["|cFFffcc00Anchors:|r Anchored |cFFFF0000%s|r to frame's |cFFFF0000%s|r"] = "|cFFffcc00Anchors:|r Anchored |cFFFF0000%s|r to frame's |cFFFF0000%s|r"
	--[[Translation missing --]]
	L["|cFFffcc00Anchors:|r Anchored |cFFFF0000%s|r to frame's |cFFFF0000%s|r with offset |cFFFF0000%s/%s|r"] = "|cFFffcc00Anchors:|r Anchored |cFFFF0000%s|r to frame's |cFFFF0000%s|r with offset |cFFFF0000%s/%s|r"
	--[[Translation missing --]]
	L["|cFFffcc00Anchors:|r Anchored to frame's |cFFFF0000%s|r"] = "|cFFffcc00Anchors:|r Anchored to frame's |cFFFF0000%s|r"
	--[[Translation missing --]]
	L["|cFFffcc00Anchors:|r Anchored to frame's |cFFFF0000%s|r with offset |cFFFF0000%s/%s|r"] = "|cFFffcc00Anchors:|r Anchored to frame's |cFFFF0000%s|r with offset |cFFFF0000%s/%s|r"
	--[[Translation missing --]]
	L["|cFFffcc00Extra Options:|r"] = "|cFFffcc00Extra Options:|r"
	--[[Translation missing --]]
	L["|cFFffcc00Font Flags:|r |cFFFF0000%s|r and shadow |c%sColor|r with offset |cFFFF0000%s/%s|r%s%s"] = "|cFFffcc00Font Flags:|r |cFFFF0000%s|r and shadow |c%sColor|r with offset |cFFFF0000%s/%s|r%s%s"
	--[[Translation missing --]]
	L["|cFFffcc00Font Flags:|r |cFFFF0000%s|r and shadow |c%sColor|r with offset |cFFFF0000%s/%s|r%s%s%s"] = "|cFFffcc00Font Flags:|r |cFFFF0000%s|r and shadow |c%sColor|r with offset |cFFFF0000%s/%s|r%s%s%s"
	--[[Translation missing --]]
	L["|cFFffcc00Format Options|r"] = "|cFFffcc00Format Options|r"
	L["1 Match"] = "1 Coincidencia"
	L["A 20x20 pixels icon"] = "Un icono de 20x20 p??xeles"
	L["A 32x32 pixels icon"] = "Un icono de 32x32 p??xeles"
	L["A 40x40 pixels icon"] = "Un icono de 40x40 p??xeles"
	L["A 48x48 pixels icon"] = "Un icono de 48x48x p??xeles"
	L["A 64x64 pixels icon"] = "Un icono de 64x64 p??xeles"
	L["A group that dynamically controls the positioning of its children"] = "Un grupo que controla de manera din??mica la posici??n de sus dependientes"
	--[[Translation missing --]]
	L["A Unit ID (e.g., party1)."] = "A Unit ID (e.g., party1)."
	L["Actions"] = "Acciones"
	--[[Translation missing --]]
	L["Add"] = "Add"
	--[[Translation missing --]]
	L["Add %s"] = "Add %s"
	L["Add a new display"] = "Agregar una nueva aura"
	--[[Translation missing --]]
	L["Add Condition"] = "Add Condition"
	--[[Translation missing --]]
	L["Add Entry"] = "Add Entry"
	--[[Translation missing --]]
	L["Add Extra Elements"] = "Add Extra Elements"
	--[[Translation missing --]]
	L["Add Option"] = "Add Option"
	--[[Translation missing --]]
	L["Add Overlay"] = "Add Overlay"
	--[[Translation missing --]]
	L["Add Property Change"] = "Add Property Change"
	--[[Translation missing --]]
	L["Add Snippet"] = "Add Snippet"
	--[[Translation missing --]]
	L["Add Sub Option"] = "Add Sub Option"
	L["Add to group %s"] = "Agregar al grupo %s"
	L["Add to new Dynamic Group"] = "Agregar al grupo din??mico"
	L["Add to new Group"] = "Agregar al grupo nuevo"
	L["Addon"] = "Addon"
	L["Addons"] = "Addons"
	--[[Translation missing --]]
	L["Advanced"] = "Advanced"
	L["Align"] = "Alinear"
	--[[Translation missing --]]
	L["Alignment"] = "Alignment"
	--[[Translation missing --]]
	L["All of"] = "All of"
	L["Allow Full Rotation"] = "Permitir rotaci??n completa"
	L["Alpha"] = "Transparencia"
	L["Anchor"] = "Anchor"
	L["Anchor Point"] = "Punto de anclaje"
	L["Anchored To"] = "Anclado a"
	--[[Translation missing --]]
	L["And "] = "And "
	--[[Translation missing --]]
	L["and aligned left"] = "and aligned left"
	--[[Translation missing --]]
	L["and aligned right"] = "and aligned right"
	--[[Translation missing --]]
	L["and rotated left"] = "and rotated left"
	--[[Translation missing --]]
	L["and rotated right"] = "and rotated right"
	--[[Translation missing --]]
	L["and Trigger %s"] = "and Trigger %s"
	--[[Translation missing --]]
	L["and with width |cFFFF0000%s|r and %s"] = "and with width |cFFFF0000%s|r and %s"
	L["Angle"] = "??ngulo"
	L["Animate"] = "Animar"
	L["Animated Expand and Collapse"] = "Expansi??n y contracci??n animada"
	--[[Translation missing --]]
	L["Animates progress changes"] = "Animates progress changes"
	L["Animation relative duration description"] = [=[Duraci??n de la animaci??n relativa a la duraci??n del aura, expresado en fracciones (1/2), porcentaje (50%), o decimales (0.5).
|cFFFF0000Nota:|r si el aura no tiene progreso (por ejemplo, si no tiene un activador basado en tiempo, si el aura no tiene duraci??n, etc.), la animaci??n no correr??.

|cFF4444FFPor Ejemplo:|r
Si la duraci??n de la animaci??n es |cFF00CC0010%|r, y el disparador del aura es un beneficio que dura 20 segundos, la animaci??n de entrada se mostrar?? por 2 segundos.
Si la duraci??n de la animaci??n es |cFF00CC0010%|r, y el disparador del aura es un beneficio sin tiempo asignado, la animaci??n de entrada se ignorar??."]=]
	L["Animation Sequence"] = "Secuencia de animaci??n"
	L["Animations"] = "Animaciones"
	--[[Translation missing --]]
	L["Any of"] = "Any of"
	L["Apply Template"] = "Aplicar plantilla"
	--[[Translation missing --]]
	L["Arc Length"] = "Arc Length"
	L["Arcane Orb"] = "Orbe Arcano"
	L["At a position a bit left of Left HUD position."] = "Un poco a la izquierda de la posici??n de la visualizaci??n frontal (HUD) a la izquierda"
	L["At a position a bit left of Right HUD position"] = "Un poco a la izquierda de la posici??n de la visualizaci??n frontal (HUD) a la derecha"
	L["At the same position as Blizzard's spell alert"] = "En la misma posici??n que la alerta de hechizos de Blizzard"
	L["Aura Name"] = "Nombre de aura"
	--[[Translation missing --]]
	L["Aura Name Pattern"] = "Aura Name Pattern"
	L["Aura Type"] = "Tipo de aura"
	L["Aura(s)"] = "Aura(s)"
	--[[Translation missing --]]
	L["Author Options"] = "Author Options"
	L["Auto"] = "Autom??tico"
	--[[Translation missing --]]
	L["Auto-Clone (Show All Matches)"] = "Auto-Clone (Show All Matches)"
	L["Auto-cloning enabled"] = "Auto-clonaci??n activada"
	--[[Translation missing --]]
	L["Automatic"] = "Automatic"
	L["Automatic Icon"] = "Icono autom??tico"
	--[[Translation missing --]]
	L["Automatic length"] = "Automatic length"
	L["Backdrop Color"] = "Color de fondo"
	--[[Translation missing --]]
	L["Backdrop in Front"] = "Backdrop in Front"
	L["Backdrop Style"] = "Estilo de fondo"
	L["Background Color"] = "Color de fondo"
	L["Background Offset"] = "Desplazamiento del fondo"
	L["Background Texture"] = "Textura de fondo"
	--[[Translation missing --]]
	L["Bar"] = "Bar"
	L["Bar Alpha"] = "Transparencia de la barra"
	L["Bar Color"] = "Color de la barra"
	L["Bar Color Settings"] = "Propiedades del color de la barra"
	--[[Translation missing --]]
	L["Bar Inner"] = "Bar Inner"
	L["Bar Texture"] = "Textura de la barra"
	L["Big Icon"] = "Icono grande"
	L["Blend Mode"] = "Modo de mezcla"
	L["Blue Rune"] = "Runa azul"
	L["Blue Sparkle Orb"] = "Orbe del destello azul"
	L["Border"] = "Borde"
	--[[Translation missing --]]
	L["Border %s"] = "Border %s"
	--[[Translation missing --]]
	L["Border Anchor"] = "Border Anchor"
	L["Border Color"] = "Color del borde"
	--[[Translation missing --]]
	L["Border in Front"] = "Border in Front"
	L["Border Inset"] = "Borde del recuadro"
	L["Border Offset"] = "Desplazamiento del borde"
	L["Border Settings"] = "Configuraci??n de los bordes"
	L["Border Size"] = "Border Size"
	L["Border Style"] = "Estilo de los bordes"
	--[[Translation missing --]]
	L["Bottom"] = "Bottom"
	--[[Translation missing --]]
	L["Bottom Left"] = "Bottom Left"
	--[[Translation missing --]]
	L["Bottom Right"] = "Bottom Right"
	--[[Translation missing --]]
	L["Bracket Matching"] = "Bracket Matching"
	--[[Translation missing --]]
	L["Can be a Name or a Unit ID (e.g. party1). A name only works on friendly players in your group."] = "Can be a Name or a Unit ID (e.g. party1). A name only works on friendly players in your group."
	--[[Translation missing --]]
	L["Can be a UID (e.g., party1)."] = "Can be a UID (e.g., party1)."
	L["Cancel"] = "Cancelar"
	--[[Translation missing --]]
	L["Center"] = "Center"
	L["Chat Message"] = "Mensaje de chat"
	L["Check On..."] = "Chequear..."
	L["Children:"] = "Dependientes:"
	L["Choose"] = "Elegir"
	L["Choose whether the displayed icon is automatic or defined manually"] = "Elije si el icono es autom??tico o si se define manualmente"
	--[[Translation missing --]]
	L["Class"] = "Class"
	--[[Translation missing --]]
	L["Clip Overlays"] = "Clip Overlays"
	--[[Translation missing --]]
	L["Clipped by Progress"] = "Clipped by Progress"
	L["Clone option enabled dialog"] = "Activar di??logo de clonaci??n"
	L["Close"] = "Cerrar"
	L["Collapse"] = "Contraer"
	L["Collapse all loaded displays"] = "Plegar todas las auras"
	L["Collapse all non-loaded displays"] = "Plegar todas las auras sin cargar"
	--[[Translation missing --]]
	L["Collapsible Group"] = "Collapsible Group"
	--[[Translation missing --]]
	L["color"] = "color"
	L["Color"] = "Color"
	--[[Translation missing --]]
	L["Column Height"] = "Column Height"
	--[[Translation missing --]]
	L["Column Space"] = "Column Space"
	--[[Translation missing --]]
	L["Combinations"] = "Combinations"
	--[[Translation missing --]]
	L["Combine Matches Per Unit"] = "Combine Matches Per Unit"
	--[[Translation missing --]]
	L["Common Text"] = "Common Text"
	--[[Translation missing --]]
	L["Compare against the number of units affected."] = "Compare against the number of units affected."
	L["Compress"] = "Comprimir"
	--[[Translation missing --]]
	L["Condition %i"] = "Condition %i"
	L["Conditions"] = "Condiciones"
	--[[Translation missing --]]
	L["Configure what options appear on this panel."] = "Configure what options appear on this panel."
	L["Constant Factor"] = "Factor constante"
	L["Control-click to select multiple displays"] = "Presione Control-Clic para seleccionar varias auras"
	L["Controls the positioning and configuration of multiple displays at the same time"] = "Controla la posici??n y la configuraci??n de varias auras al mismo tiempo"
	--[[Translation missing --]]
	L["Convert to New Aura Trigger"] = "Convert to New Aura Trigger"
	L["Convert to..."] = "Convertir a"
	--[[Translation missing --]]
	L["Cooldown Edge"] = "Cooldown Edge"
	--[[Translation missing --]]
	L["Cooldown Settings"] = "Cooldown Settings"
	--[[Translation missing --]]
	L["Cooldown Swipe"] = "Cooldown Swipe"
	--[[Translation missing --]]
	L["Copy"] = "Copy"
	--[[Translation missing --]]
	L["Copy settings..."] = "Copy settings..."
	--[[Translation missing --]]
	L["Copy to all auras"] = "Copy to all auras"
	--[[Translation missing --]]
	L["Copy URL"] = "Copy URL"
	L["Count"] = "Contar"
	--[[Translation missing --]]
	L["Counts the number of matches over all units."] = "Counts the number of matches over all units."
	L["Creating buttons: "] = "Crear botones:??"
	L["Creating options: "] = "Crear opciones:"
	L["Crop X"] = "Cortar X"
	L["Crop Y"] = "Cortar Y"
	L["Custom"] = "Personalizado"
	--[[Translation missing --]]
	L["Custom Anchor"] = "Custom Anchor"
	L["Custom Code"] = "C??digo personalizado"
	--[[Translation missing --]]
	L["Custom Color"] = "Custom Color"
	--[[Translation missing --]]
	L["Custom Configuration"] = "Custom Configuration"
	--[[Translation missing --]]
	L["Custom Frames"] = "Custom Frames"
	L["Custom Function"] = "Funci??n personalizada"
	--[[Translation missing --]]
	L["Custom Grow"] = "Custom Grow"
	--[[Translation missing --]]
	L["Custom Options"] = "Custom Options"
	--[[Translation missing --]]
	L["Custom Sort"] = "Custom Sort"
	L["Custom Trigger"] = "Desencadenador personalizado"
	L["Custom trigger event tooltip"] = [=[Escoje qu?? eventos quieres que revise el desencadenador personalizado.
M??ltiples eventos pueden ser especificados. Sep??ralos con comas o espacios.

|cFF4444FFPor Ejemplo:|r
UNIT_POWER, UNIT_AURA PLAYER_TARGET_CHANGED
]=]
	L["Custom trigger status tooltip"] = [=[Escoje qu?? eventos quieres que revise el desencadenador personalizado.
Ya que ??ste es un desencadenador de estado, los eventos especificados pueden ser invocados por WeakAuras sin ning??n argumento.
M??ltiples eventos pueden ser especificados. Sep??ralos con comas o espacios.

|cFF4444FFPor Ejemplo:|r
UNIT_POWER, UNIT_AURA PLAYER_TARGET_CHANGED]=]
	L["Custom Untrigger"] = "Desencadenador No-Personalizado"
	--[[Translation missing --]]
	L["Custom Variables"] = "Custom Variables"
	L["Debuff Type"] = "Tipo de perjuicio"
	L["Default"] = "Est??ndar"
	--[[Translation missing --]]
	L["Default Color"] = "Default Color"
	L["Delete"] = "Eliminar"
	L["Delete all"] = "Eliminar todo"
	L["Delete children and group"] = "Eliminar dependientes y grupo"
	--[[Translation missing --]]
	L["Delete Entry"] = "Delete Entry"
	L["Desaturate"] = "Desaturar"
	--[[Translation missing --]]
	L["Description Text"] = "Description Text"
	--[[Translation missing --]]
	L["Determines how many entries can be in the table."] = "Determines how many entries can be in the table."
	--[[Translation missing --]]
	L["Differences"] = "Differences"
	L["Disabled"] = "Desactivado"
	--[[Translation missing --]]
	L["Disallow Entry Reordering"] = "Disallow Entry Reordering"
	L["Discrete Rotation"] = "Rotaci??n discreta"
	L["Display"] = "Mostrar"
	L["Display Icon"] = "Mostrar icono"
	--[[Translation missing --]]
	L["Display Name"] = "Display Name"
	L["Display Text"] = "Mostrar texto"
	L["Displays a text, works best in combination with other displays"] = "Muetra un texto. Funciona mejor combinado con otras visualizaciones"
	L["Distribute Horizontally"] = "Distribuci??n horizontal"
	L["Distribute Vertically"] = "Distribuci??n vertical"
	L["Do not group this display"] = "No combines esta visualizaci??n"
	L["Done"] = "Finalizado"
	--[[Translation missing --]]
	L["Don't skip this Version"] = "Don't skip this Version"
	L["Drag to move"] = "Arrastrar para mover"
	L["Duplicate"] = "Duplicar"
	--[[Translation missing --]]
	L["Duplicate All"] = "Duplicate All"
	L["Duration (s)"] = "Duraci??n"
	L["Duration Info"] = "Informaci??n sobre la duraci??n"
	--[[Translation missing --]]
	L["Dynamic Duration"] = "Dynamic Duration"
	L["Dynamic Group"] = "Grupo din??mico"
	--[[Translation missing --]]
	L["Dynamic Group Settings"] = "Dynamic Group Settings"
	L["Dynamic Information"] = "Informaci??n din??mica"
	L["Dynamic information from first active trigger"] = "Informaci??n din??mica del primer desencadenador activo"
	L["Dynamic information from Trigger %i"] = "Informaci??n din??mica del desencadenador %i"
	L["Dynamic text tooltip"] = "Descripci??n emergente din??mica"
	--[[Translation missing --]]
	L["Ease Strength"] = "Ease Strength"
	--[[Translation missing --]]
	L["Ease type"] = "Ease type"
	--[[Translation missing --]]
	L["Edge"] = "Edge"
	--[[Translation missing --]]
	L["eliding"] = "eliding"
	L["Enabled"] = "Activado"
	L["End Angle"] = "??ngulo de fin"
	--[[Translation missing --]]
	L["End of %s"] = "End of %s"
	--[[Translation missing --]]
	L["Enter a Spell ID"] = "Enter a Spell ID"
	L["Enter an aura name, partial aura name, or spell id"] = "Introduce el nombre de un aura (total o parcial), o el identificador del hechizo"
	--[[Translation missing --]]
	L["Enter an Aura Name, partial Aura Name, or Spell ID. A Spell ID will match any spells with the same name."] = "Enter an Aura Name, partial Aura Name, or Spell ID. A Spell ID will match any spells with the same name."
	--[[Translation missing --]]
	L["Enter Author Mode"] = "Enter Author Mode"
	--[[Translation missing --]]
	L["Enter in a value for the tick's placement."] = "Enter in a value for the tick's placement."
	--[[Translation missing --]]
	L["Enter User Mode"] = "Enter User Mode"
	--[[Translation missing --]]
	L["Enter user mode."] = "Enter user mode."
	--[[Translation missing --]]
	L["Entry %i"] = "Entry %i"
	--[[Translation missing --]]
	L["Entry limit"] = "Entry limit"
	--[[Translation missing --]]
	L["Entry Name Source"] = "Entry Name Source"
	L["Event"] = "Evento"
	L["Event Type"] = "Event Type"
	L["Event(s)"] = "Evento(s)"
	--[[Translation missing --]]
	L["Everything"] = "Everything"
	--[[Translation missing --]]
	L["Exact Spell ID(s)"] = "Exact Spell ID(s)"
	--[[Translation missing --]]
	L["Exact Spell Match"] = "Exact Spell Match"
	L["Expand"] = "Expandir"
	L["Expand all loaded displays"] = "Expandir todas las auras cargadas"
	L["Expand all non-loaded displays"] = "Expandir todas las auras sin cargar"
	L["Expansion is disabled because this group has no children"] = "No se puede expandir ya que este grupo no posee dependientes"
	L["Export to Lua table..."] = "Exportar a tabla de Lua...."
	L["Export to string..."] = "Exportar al hilo..."
	--[[Translation missing --]]
	L["External"] = "External"
	L["Fade"] = "Apagar"
	L["Fade In"] = "Fundir"
	L["Fade Out"] = "Difuminar"
	--[[Translation missing --]]
	L["False"] = "False"
	--[[Translation missing --]]
	L["Fetch Affected/Unaffected Names"] = "Fetch Affected/Unaffected Names"
	--[[Translation missing --]]
	L["Filter by Class"] = "Filter by Class"
	--[[Translation missing --]]
	L["Filter by Group Role"] = "Filter by Group Role"
	--[[Translation missing --]]
	L["Filter by Nameplate Type"] = "Filter by Nameplate Type"
	--[[Translation missing --]]
	L[ [=[Filter formats: 'Name', 'Name-Realm', '-Realm'.

Supports multiple entries, separated by commas
]=] ] = [=[Filter formats: 'Name', 'Name-Realm', '-Realm'.

Supports multiple entries, separated by commas
]=]
	L["Finish"] = "Completar"
	L["Fire Orb"] = "Orbe de fuego"
	L["Font"] = "Font"
	L["Font Size"] = "Tama??o de las banderas"
	--[[Translation missing --]]
	L["Foreground"] = "Foreground"
	L["Foreground Color"] = "Color frontal"
	L["Foreground Texture"] = "Textural frontal"
	--[[Translation missing --]]
	L["Format"] = "Format"
	--[[Translation missing --]]
	L["Format for %s"] = "Format for %s"
	L["Frame"] = "Macro"
	--[[Translation missing --]]
	L["Frame Selector"] = "Frame Selector"
	L["Frame Strata"] = "Importancia del macro"
	--[[Translation missing --]]
	L["Frequency"] = "Frequency"
	L["From Template"] = "Desde la plantilla"
	--[[Translation missing --]]
	L["From version %s to version %s"] = "From version %s to version %s"
	--[[Translation missing --]]
	L["Global Conditions"] = "Global Conditions"
	--[[Translation missing --]]
	L["Glow %s"] = "Glow %s"
	L["Glow Action"] = "Acci??n de resplandor"
	--[[Translation missing --]]
	L["Glow Anchor"] = "Glow Anchor"
	--[[Translation missing --]]
	L["Glow Color"] = "Glow Color"
	--[[Translation missing --]]
	L["Glow External Element"] = "Glow External Element"
	--[[Translation missing --]]
	L["Glow Frame Type"] = "Glow Frame Type"
	--[[Translation missing --]]
	L["Glow Type"] = "Glow Type"
	L["Green Rune"] = "Runa verde"
	--[[Translation missing --]]
	L["Grid direction"] = "Grid direction"
	L["Group"] = "Grupo"
	L["Group (verb)"] = "Agrupar "
	L["Group aura count description"] = [=[La cantidad de miembros del grupo o banda que deben estar afectados por las auras indicadas para la activaci??n.

Si el n??mero introducido es un entero (ej. 5), la cantidad de miembros del grupo o banda que deben estar afectados ser?? absoluta.

Si el n??mero introducido es una fracci??n (1/2), decimal (0.5) o porcentaje (50%%), se interpretar?? como que la cantidad de miembros del grupo o banda que deben estar afectados es una fracci??n del total.

|cFF4444FFPor ejemplo:|r
Con |cFF00CC00> 0|r se activar?? cuando cualquier miembro del grupo o banda est?? afectado.
Con |cFF00CC00= 100%%|r se activar?? cuando todos los miembros del grupo o banda est??n afectados.
Con |cFF00CC00!= 2|r se activar?? cuando el n??mero de miembros del grupo o banda afectados no sea 2.
Con |cFF00CC00<= 0.8|r se activar?? cuando menos del 80%% del grupo o banda est?? afectado (4 de 5 miembros en grupos, 8 de 10 ?? 20 de 25 en bandas).
Con |cFF00CC00> 1/2|r se activar?? cuando m??s de la mitad de miembros del grupo o banda est??n afectados.
Con |cFF00CC00>= 0|r se activar?? siempre.]=]
	--[[Translation missing --]]
	L["Group by Frame"] = "Group by Frame"
	--[[Translation missing --]]
	L["Group contains updates from Wago"] = "Group contains updates from Wago"
	--[[Translation missing --]]
	L["Group Icon"] = "Group Icon"
	--[[Translation missing --]]
	L["Group key"] = "Group key"
	L["Group Member Count"] = "Contador de miembros del grupo"
	--[[Translation missing --]]
	L["Group Options"] = "Group Options"
	--[[Translation missing --]]
	L["Group Role"] = "Group Role"
	--[[Translation missing --]]
	L["Group Scale"] = "Group Scale"
	--[[Translation missing --]]
	L["Group Settings"] = "Group Settings"
	--[[Translation missing --]]
	L["Group Type"] = "Group Type"
	L["Grow"] = "Crecer"
	L["Hawk"] = "Halc??n"
	L["Height"] = "Alto"
	--[[Translation missing --]]
	L["Help"] = "Help"
	L["Hide"] = "Ocultar"
	--[[Translation missing --]]
	L["Hide Cooldown Text"] = "Hide Cooldown Text"
	--[[Translation missing --]]
	L["Hide Glows applied by this aura"] = "Hide Glows applied by this aura"
	L["Hide on"] = "Ocultar en"
	L["Hide this group's children"] = "Ocultar los dependientes de este grupo"
	L["Hide When Not In Group"] = "Ocultar cuando no est?? en grupo"
	L["Horizontal Align"] = "Alineaci??n horizontal"
	L["Horizontal Bar"] = "Barra horizontal"
	--[[Translation missing --]]
	L["Hostility"] = "Hostility"
	L["Huge Icon"] = "Icono enorme"
	L["Hybrid Position"] = "Posici??n h??brida"
	L["Hybrid Sort Mode"] = "Modo de orden h??brido"
	L["Icon"] = "Icono"
	L["Icon Info"] = "Informaci??n de icono"
	L["Icon Inset"] = "Interior del icono"
	--[[Translation missing --]]
	L["Icon Position"] = "Icon Position"
	--[[Translation missing --]]
	L["Icon Settings"] = "Icon Settings"
	--[[Translation missing --]]
	L["If"] = "If"
	--[[Translation missing --]]
	L["If checked, then the user will see a multi line edit box. This is useful for inputting large amounts of text."] = "If checked, then the user will see a multi line edit box. This is useful for inputting large amounts of text."
	--[[Translation missing --]]
	L["If checked, then this option group can be temporarily collapsed by the user."] = "If checked, then this option group can be temporarily collapsed by the user."
	--[[Translation missing --]]
	L["If checked, then this option group will start collapsed."] = "If checked, then this option group will start collapsed."
	--[[Translation missing --]]
	L["If checked, then this separator will include text. Otherwise, it will be just a horizontal line."] = "If checked, then this separator will include text. Otherwise, it will be just a horizontal line."
	--[[Translation missing --]]
	L["If checked, then this separator will not merge with other separators when selecting multiple auras."] = "If checked, then this separator will not merge with other separators when selecting multiple auras."
	--[[Translation missing --]]
	L["If checked, then this space will span across multiple lines."] = "If checked, then this space will span across multiple lines."
	--[[Translation missing --]]
	L["If Trigger %s"] = "If Trigger %s"
	--[[Translation missing --]]
	L["If unchecked, then a default color will be used (usually yellow)"] = "If unchecked, then a default color will be used (usually yellow)"
	--[[Translation missing --]]
	L["If unchecked, then this space will fill the entire line it is on in User Mode."] = "If unchecked, then this space will fill the entire line it is on in User Mode."
	--[[Translation missing --]]
	L["Ignore all Updates"] = "Ignore all Updates"
	--[[Translation missing --]]
	L["Ignore Dead"] = "Ignore Dead"
	--[[Translation missing --]]
	L["Ignore Disconnected"] = "Ignore Disconnected"
	--[[Translation missing --]]
	L["Ignore out of checking range"] = "Ignore out of checking range"
	--[[Translation missing --]]
	L["Ignore Self"] = "Ignore Self"
	--[[Translation missing --]]
	L["Ignore self"] = "Ignore self"
	L["Ignored"] = "Ignorar"
	--[[Translation missing --]]
	L["Ignored Aura Name"] = "Ignored Aura Name"
	--[[Translation missing --]]
	L["Ignored Exact Spell ID(s)"] = "Ignored Exact Spell ID(s)"
	--[[Translation missing --]]
	L["Ignored Name(s)"] = "Ignored Name(s)"
	--[[Translation missing --]]
	L["Ignored Spell ID"] = "Ignored Spell ID"
	L["Import"] = "Importar"
	L["Import a display from an encoded string"] = "Importar un aura desde un texto cifrado"
	--[[Translation missing --]]
	L["Inner"] = "Inner"
	--[[Translation missing --]]
	L["Invalid Item Name/ID/Link"] = "Invalid Item Name/ID/Link"
	--[[Translation missing --]]
	L["Invalid Spell ID"] = "Invalid Spell ID"
	--[[Translation missing --]]
	L["Invalid Spell Name/ID/Link"] = "Invalid Spell Name/ID/Link"
	L["Inverse"] = "Invertido"
	--[[Translation missing --]]
	L["Inverse Slant"] = "Inverse Slant"
	--[[Translation missing --]]
	L["Is Stealable"] = "Is Stealable"
	L["Justify"] = "Justificar"
	--[[Translation missing --]]
	L["Keep Aspect Ratio"] = "Keep Aspect Ratio"
	--[[Translation missing --]]
	L["Large Input"] = "Large Input"
	L["Leaf"] = "Hoja"
	--[[Translation missing --]]
	L["Left"] = "Left"
	L["Left 2 HUD position"] = "Posici??n izquierda 2 de visualizaci??n frontal (HUD)"
	L["Left HUD position"] = "Posici??n izquierda de visualizaci??n frontal (HUD)"
	--[[Translation missing --]]
	L["Legacy Aura Trigger"] = "Legacy Aura Trigger"
	--[[Translation missing --]]
	L["Length"] = "Length"
	--[[Translation missing --]]
	L["Limit"] = "Limit"
	--[[Translation missing --]]
	L["Lines & Particles"] = "Lines & Particles"
	L["Load"] = "Cargar"
	L["Loaded"] = "Cargado"
	--[[Translation missing --]]
	L["Loop"] = "Loop"
	L["Low Mana"] = "Man?? insuficiente"
	--[[Translation missing --]]
	L["Magnetically Align"] = "Magnetically Align"
	L["Main"] = "Principal"
	L["Manage displays defined by Addons"] = "Administra las auras definidas por los Addons"
	--[[Translation missing --]]
	L["Match Count"] = "Match Count"
	--[[Translation missing --]]
	L["Matches the height setting of a horizontal bar or width for a vertical bar."] = "Matches the height setting of a horizontal bar or width for a vertical bar."
	--[[Translation missing --]]
	L["Max"] = "Max"
	--[[Translation missing --]]
	L["Max Length"] = "Max Length"
	L["Medium Icon"] = "Icono mediano"
	L["Message"] = "Mensaje"
	L["Message Prefix"] = "Prefijo del mensaje"
	L["Message Suffix"] = "Sufijo del mensaje"
	L["Message Type"] = "Tipo de mensaje"
	--[[Translation missing --]]
	L["Min"] = "Min"
	L["Mirror"] = "Reflejar"
	L["Model"] = "Modelo"
	--[[Translation missing --]]
	L["Model %s"] = "Model %s"
	--[[Translation missing --]]
	L["Model Settings"] = "Model Settings"
	--[[Translation missing --]]
	L["Move Above Group"] = "Move Above Group"
	--[[Translation missing --]]
	L["Move Below Group"] = "Move Below Group"
	L["Move Down"] = "Bajar"
	--[[Translation missing --]]
	L["Move Entry Down"] = "Move Entry Down"
	--[[Translation missing --]]
	L["Move Entry Up"] = "Move Entry Up"
	--[[Translation missing --]]
	L["Move Into Above Group"] = "Move Into Above Group"
	--[[Translation missing --]]
	L["Move Into Below Group"] = "Move Into Below Group"
	L["Move this display down in its group's order"] = "Bajar esta aura conservando el orden de su grupo"
	L["Move this display up in its group's order"] = "Subir esta aura conservando el orden de su grupo"
	L["Move Up"] = "Subir"
	L["Multiple Displays"] = "M??ltiples auras"
	L["Multiselect ignored tooltip"] = [=[|cFFFF0000Ignorado|r - |cFF777777??nico|r - |cFF777777M??ltiple|r
??sta opci??n no se usar?? al determinar cu??ndo se mostrar?? el aura]=]
	L["Multiselect multiple tooltip"] = [=[|cFF777777Ignorado|r - |cFF777777??nico|r - |cFF00FF00M??ltiple|r
Cualquier combinaci??n de valores es posible.]=]
	L["Multiselect single tooltip"] = [=[|cFF777777Ignorado|r - |cFF00FF00??nico|r - |cFF777777M??ltiple|r
S??lo un valor coincidente puede ser escogido.]=]
	L["Name Info"] = "Informaci??n del nombre"
	--[[Translation missing --]]
	L["Name Pattern Match"] = "Name Pattern Match"
	--[[Translation missing --]]
	L["Name(s)"] = "Name(s)"
	--[[Translation missing --]]
	L["Nameplate"] = "Nameplate"
	--[[Translation missing --]]
	L["Nameplates"] = "Nameplates"
	L["Negator"] = "Negar"
	L["Never"] = "Nunca"
	--[[Translation missing --]]
	L["New Aura"] = "New Aura"
	--[[Translation missing --]]
	L["New Value"] = "New Value"
	L["No"] = "No"
	L["No Children"] = "Sin dependientes"
	L["No tooltip text"] = "Sin texto de descripci??n"
	L["None"] = "Nada"
	L["Not all children have the same value for this option"] = "No todos los dependientes contienen la misma configuraci??n."
	L["Not Loaded"] = "Sin cargar"
	--[[Translation missing --]]
	L["Note: Automated Messages to SAY and YELL are blocked outside of Instances."] = "Note: Automated Messages to SAY and YELL are blocked outside of Instances."
	--[[Translation missing --]]
	L["Number of Entries"] = "Number of Entries"
	--[[Translation missing --]]
	L["Offer a guided way to create auras for your character"] = "Offer a guided way to create auras for your character"
	L["Okay"] = "Aceptar"
	L["On Hide"] = "Ocultar"
	L["On Init"] = "Iniciar"
	L["On Show"] = "Mostrar"
	L["Only match auras cast by people other than the player"] = "Solamente corresponder auras conjuradas por otros jugadores"
	--[[Translation missing --]]
	L["Only match auras cast by people other than the player or his pet"] = "Only match auras cast by people other than the player or his pet"
	L["Only match auras cast by the player"] = "Solamente corresponder auras conjuradas el jugador"
	--[[Translation missing --]]
	L["Only match auras cast by the player or his pet"] = "Only match auras cast by the player or his pet"
	L["Operator"] = "Operador"
	--[[Translation missing --]]
	L["Option %i"] = "Option %i"
	--[[Translation missing --]]
	L["Option key"] = "Option key"
	--[[Translation missing --]]
	L["Option Type"] = "Option Type"
	--[[Translation missing --]]
	L["Options will open after combat ends."] = "Options will open after combat ends."
	L["or"] = "o"
	--[[Translation missing --]]
	L["or Trigger %s"] = "or Trigger %s"
	L["Orange Rune"] = "Runa naranja"
	L["Orientation"] = "Orientaci??n"
	--[[Translation missing --]]
	L["Outer"] = "Outer"
	L["Outline"] = "Borde"
	--[[Translation missing --]]
	L["Overflow"] = "Overflow"
	--[[Translation missing --]]
	L["Overlay %s Info"] = "Overlay %s Info"
	--[[Translation missing --]]
	L["Overlays"] = "Overlays"
	L["Own Only"] = "Solo m??as"
	--[[Translation missing --]]
	L["Paste Action Settings"] = "Paste Action Settings"
	--[[Translation missing --]]
	L["Paste Animations Settings"] = "Paste Animations Settings"
	--[[Translation missing --]]
	L["Paste Author Options Settings"] = "Paste Author Options Settings"
	--[[Translation missing --]]
	L["Paste Condition Settings"] = "Paste Condition Settings"
	--[[Translation missing --]]
	L["Paste Custom Configuration"] = "Paste Custom Configuration"
	--[[Translation missing --]]
	L["Paste Display Settings"] = "Paste Display Settings"
	--[[Translation missing --]]
	L["Paste Group Settings"] = "Paste Group Settings"
	--[[Translation missing --]]
	L["Paste Load Settings"] = "Paste Load Settings"
	--[[Translation missing --]]
	L["Paste Settings"] = "Paste Settings"
	L["Paste text below"] = "Pegar texto debajo"
	--[[Translation missing --]]
	L["Paste Trigger Settings"] = "Paste Trigger Settings"
	--[[Translation missing --]]
	L["Places a tick on the bar"] = "Places a tick on the bar"
	L["Play Sound"] = "Reproducir sonido"
	L["Portrait Zoom"] = "Zoom"
	--[[Translation missing --]]
	L["Position Settings"] = "Position Settings"
	--[[Translation missing --]]
	L["Preferred Match"] = "Preferred Match"
	--[[Translation missing --]]
	L["Premade Snippets"] = "Premade Snippets"
	L["Preset"] = "Predefinido"
	--[[Translation missing --]]
	L["Press Ctrl+C to copy"] = "Press Ctrl+C to copy"
	--[[Translation missing --]]
	L["Prevent Merging"] = "Prevent Merging"
	L["Processed %i chars"] = "%i Personajes procesados"
	L["Progress Bar"] = "Barra de progreso"
	--[[Translation missing --]]
	L["Progress Bar Settings"] = "Progress Bar Settings"
	L["Progress Texture"] = "Textura de progreso"
	--[[Translation missing --]]
	L["Progress Texture Settings"] = "Progress Texture Settings"
	L["Purple Rune"] = "Runa morada"
	L["Put this display in a group"] = "Colocar esta aura en un grupo"
	L["Radius"] = "Radio"
	L["Re-center X"] = "Centrar X"
	L["Re-center Y"] = "Centrar Y"
	--[[Translation missing --]]
	L["Regions of type \"%s\" are not supported."] = "Regions of type \"%s\" are not supported."
	L["Remaining Time"] = "Tiempo restante"
	--[[Translation missing --]]
	L["Remove"] = "Remove"
	L["Remove this display from its group"] = "Remover esta aura del grupo"
	--[[Translation missing --]]
	L["Remove this property"] = "Remove this property"
	L["Rename"] = "Renombrar"
	--[[Translation missing --]]
	L["Repeat After"] = "Repeat After"
	--[[Translation missing --]]
	L["Repeat every"] = "Repeat every"
	--[[Translation missing --]]
	L["Require unit from trigger"] = "Require unit from trigger"
	L["Required for Activation"] = "Necesario para la activaci??n"
	--[[Translation missing --]]
	L["Reset all options to their default values."] = "Reset all options to their default values."
	--[[Translation missing --]]
	L["Reset Entry"] = "Reset Entry"
	--[[Translation missing --]]
	L["Reset to Defaults"] = "Reset to Defaults"
	--[[Translation missing --]]
	L["Right"] = "Right"
	L["Right 2 HUD position"] = "Posici??n derecha 2 de visualizaci??n (HUD)"
	L["Right HUD position"] = "Posici??n derecha de visualizaci??n (HUD)"
	L["Right-click for more options"] = "Clic derecho para m??s opciones"
	L["Rotate"] = "Rotar"
	L["Rotate In"] = "Rotar hacia adentro"
	L["Rotate Out"] = "Rotar hacia afuera"
	L["Rotate Text"] = "Rotar texto"
	L["Rotation"] = "Rotaci??n"
	L["Rotation Mode"] = "Modo de rotaci??n"
	--[[Translation missing --]]
	L["Row Space"] = "Row Space"
	--[[Translation missing --]]
	L["Row Width"] = "Row Width"
	L["Same"] = "Igual"
	L["Scale"] = "Ajustar tama??o"
	L["Search"] = "Buscar"
	L["Select the auras you always want to be listed first"] = "Selecciona las auras que quieras que sean listadas primero"
	L["Send To"] = "Enviar a"
	--[[Translation missing --]]
	L["Separator Text"] = "Separator Text"
	--[[Translation missing --]]
	L["Separator text"] = "Separator text"
	L["Set Parent to Anchor"] = "Asignar grupo primario al anclaje"
	--[[Translation missing --]]
	L["Set Thumbnail Icon"] = "Set Thumbnail Icon"
	--[[Translation missing --]]
	L["Set tooltip description"] = "Set tooltip description"
	--[[Translation missing --]]
	L["Sets the anchored frame as the aura's parent, causing the aura to inherit attributes such as visibility and scale."] = "Sets the anchored frame as the aura's parent, causing the aura to inherit attributes such as visibility and scale."
	--[[Translation missing --]]
	L["Settings"] = "Settings"
	--[[Translation missing --]]
	L["Shadow Color"] = "Shadow Color"
	--[[Translation missing --]]
	L["Shadow X Offset"] = "Shadow X Offset"
	--[[Translation missing --]]
	L["Shadow Y Offset"] = "Shadow Y Offset"
	L["Shift-click to create chat link"] = "Shift-Clic para un crear un enlace de chat"
	L["Show all matches (Auto-clone)"] = "Mostrar todas las coincidencias (Auto-clonaci??n)"
	--[[Translation missing --]]
	L["Show Border"] = "Show Border"
	--[[Translation missing --]]
	L["Show Cooldown"] = "Show Cooldown"
	--[[Translation missing --]]
	L["Show Glow"] = "Show Glow"
	--[[Translation missing --]]
	L["Show Icon"] = "Show Icon"
	--[[Translation missing --]]
	L["Show If Unit Does Not Exist"] = "Show If Unit Does Not Exist"
	--[[Translation missing --]]
	L["Show If Unit Is Invalid"] = "Show If Unit Is Invalid"
	--[[Translation missing --]]
	L["Show Matches for"] = "Show Matches for"
	--[[Translation missing --]]
	L["Show Matches for Units"] = "Show Matches for Units"
	--[[Translation missing --]]
	L["Show Model"] = "Show Model"
	L["Show model of unit "] = "Mostrar el modelo de la unidad"
	--[[Translation missing --]]
	L["Show On"] = "Show On"
	--[[Translation missing --]]
	L["Show Spark"] = "Show Spark"
	--[[Translation missing --]]
	L["Show Text"] = "Show Text"
	L["Show this group's children"] = "Mostrar los dependientes de este grupo"
	--[[Translation missing --]]
	L["Show Tick"] = "Show Tick"
	L["Shows a 3D model from the game files"] = "Muestra un modelo 3D de los archivos del juego"
	--[[Translation missing --]]
	L["Shows a border"] = "Shows a border"
	L["Shows a custom texture"] = "Muestra una textura personalizada"
	--[[Translation missing --]]
	L["Shows a glow"] = "Shows a glow"
	--[[Translation missing --]]
	L["Shows a model"] = "Shows a model"
	L["Shows a progress bar with name, timer, and icon"] = "Muestra la barra de progreso con el nombre, el temporizador y el icono"
	L["Shows a spell icon with an optional cooldown overlay"] = "Muestra el icono de hechizo con una superposici??n opcional del tiempo de recarga"
	L["Shows a texture that changes based on duration"] = "Muestra una textura que cambia seg??n la duraci??n"
	L["Shows one or more lines of text, which can include dynamic information such as progress or stacks"] = "Muestra una o m??s lineas del texto, el cual puede incluir informaci??n din??mica como el progreso o la acumulaci??n"
	--[[Translation missing --]]
	L["Simple"] = "Simple"
	L["Size"] = "Tama??o"
	--[[Translation missing --]]
	L["Skip this Version"] = "Skip this Version"
	--[[Translation missing --]]
	L["Slant Amount"] = "Slant Amount"
	--[[Translation missing --]]
	L["Slant Mode"] = "Slant Mode"
	--[[Translation missing --]]
	L["Slanted"] = "Slanted"
	L["Slide"] = "Arrastrar"
	L["Slide In"] = "Arrastrar dentro"
	L["Slide Out"] = "Arrastrar fuera"
	--[[Translation missing --]]
	L["Slider Step Size"] = "Slider Step Size"
	L["Small Icon"] = "Icono peque??o"
	--[[Translation missing --]]
	L["Smooth Progress"] = "Smooth Progress"
	--[[Translation missing --]]
	L["Snippets"] = "Snippets"
	--[[Translation missing --]]
	L["Soft Max"] = "Soft Max"
	--[[Translation missing --]]
	L["Soft Min"] = "Soft Min"
	L["Sort"] = "Filtrar"
	L["Sound"] = "Sonido"
	L["Sound Channel"] = "Canal de sonido"
	L["Sound File Path"] = "Ruta del fichero de sonido"
	L["Sound Kit ID"] = "ID del kit de sonido"
	L["Space"] = "Espacio"
	L["Space Horizontally"] = "Espacio horizontal"
	L["Space Vertically"] = "Espacio vertical"
	L["Spark"] = "Chispa"
	L["Spark Settings"] = "Propiedades de la chispa"
	L["Spark Texture"] = "Textura de la chispa"
	L["Specific Unit"] = "Unidad espec??fica"
	L["Spell ID"] = "ID de hechizo"
	L["Stack Count"] = "Contador de acumulaciones"
	L["Stack Info"] = "Informaci??n de acumulaciones"
	L["Stagger"] = "Tambaleo"
	L["Star"] = "Estrella"
	L["Start"] = "Comenzar"
	L["Start Angle"] = "??ngulo de inicio"
	--[[Translation missing --]]
	L["Start Collapsed"] = "Start Collapsed"
	--[[Translation missing --]]
	L["Start of %s"] = "Start of %s"
	L["Status"] = "Estado"
	L["Stealable"] = "Puede robarse"
	--[[Translation missing --]]
	L["Step Size"] = "Step Size"
	--[[Translation missing --]]
	L["Stop ignoring Updates"] = "Stop ignoring Updates"
	--[[Translation missing --]]
	L["Stop Sound"] = "Stop Sound"
	--[[Translation missing --]]
	L["Sub Elements"] = "Sub Elements"
	--[[Translation missing --]]
	L["Sub Option %i"] = "Sub Option %i"
	L["Temporary Group"] = "Grupo temporal"
	L["Text"] = "Texto"
	--[[Translation missing --]]
	L["Text %s"] = "Text %s"
	L["Text Color"] = "Color del texto"
	--[[Translation missing --]]
	L["Text Settings"] = "Text Settings"
	L["Texture"] = "Textura"
	L["Texture Info"] = "Informaci??n de la textura"
	--[[Translation missing --]]
	L["Texture Settings"] = "Texture Settings"
	--[[Translation missing --]]
	L["Texture Wrap"] = "Texture Wrap"
	L["The duration of the animation in seconds."] = "Duraci??n de la animaci??n (en segundos)."
	--[[Translation missing --]]
	L["The duration of the animation in seconds. The finish animation does not start playing until after the display would normally be hidden."] = "The duration of the animation in seconds. The finish animation does not start playing until after the display would normally be hidden."
	L["The type of trigger"] = "El tipo de desencadenador"
	--[[Translation missing --]]
	L["Then "] = "Then "
	--[[Translation missing --]]
	L["Thickness"] = "Thickness"
	--[[Translation missing --]]
	L["This adds %tooltip, %tooltip1, %tooltip2, %tooltip3 as text replacements."] = "This adds %tooltip, %tooltip1, %tooltip2, %tooltip3 as text replacements."
	--[[Translation missing --]]
	L["This aura has legacy aura trigger(s). Convert them to the new system to benefit from enhanced performance and features"] = "This aura has legacy aura trigger(s). Convert them to the new system to benefit from enhanced performance and features"
	L["This display is currently loaded"] = "Esta aura est?? cargada"
	L["This display is not currently loaded"] = "Esta aura no est?? cargada"
	L["This region of type \"%s\" is not supported."] = "No soporta el tipo de regi??n \"%s\"."
	--[[Translation missing --]]
	L["This setting controls what widget is generated in user mode."] = "This setting controls what widget is generated in user mode."
	--[[Translation missing --]]
	L["Tick %s"] = "Tick %s"
	--[[Translation missing --]]
	L["Tick Mode"] = "Tick Mode"
	--[[Translation missing --]]
	L["Tick Placement"] = "Tick Placement"
	L["Time in"] = "Contar en"
	L["Tiny Icon"] = "Icono miniatura"
	L["To Frame's"] = "Al macro"
	--[[Translation missing --]]
	L["To Group's"] = "To Group's"
	L["To Personal Ressource Display's"] = "A los recursos personales de aura"
	L["To Screen's"] = "A la pantalla"
	L["Toggle the visibility of all loaded displays"] = "Alterar la visibilidad de todas las auras cargadas"
	L["Toggle the visibility of all non-loaded displays"] = "Alterar la visibilidad de todas las auras no cargadas"
	L["Toggle the visibility of this display"] = "Alterar la visibilidad de esta aura"
	L["Tooltip"] = "Descripci??n emergente"
	--[[Translation missing --]]
	L["Tooltip Content"] = "Tooltip Content"
	L["Tooltip on Mouseover"] = "Descripci??n emergente al pasar el rat??n"
	--[[Translation missing --]]
	L["Tooltip Pattern Match"] = "Tooltip Pattern Match"
	--[[Translation missing --]]
	L["Tooltip Text"] = "Tooltip Text"
	--[[Translation missing --]]
	L["Tooltip Value"] = "Tooltip Value"
	--[[Translation missing --]]
	L["Tooltip Value #"] = "Tooltip Value #"
	--[[Translation missing --]]
	L["Top"] = "Top"
	L["Top HUD position"] = "Posici??n superior de la visualizaci??n (HUD)"
	--[[Translation missing --]]
	L["Top Left"] = "Top Left"
	--[[Translation missing --]]
	L["Top Right"] = "Top Right"
	--[[Translation missing --]]
	L["Total Time"] = "Total Time"
	L["Trigger"] = "Desencadenador"
	L["Trigger %d"] = "Desencadenador %d"
	--[[Translation missing --]]
	L["Trigger %s"] = "Trigger %s"
	--[[Translation missing --]]
	L["Trigger Combination"] = "Trigger Combination"
	--[[Translation missing --]]
	L["True"] = "True"
	L["Type"] = "Tipo"
	L["Ungroup"] = "Desagrupar"
	L["Unit"] = "Unidad"
	--[[Translation missing --]]
	L["Unit %s is not a valid unit for RegisterUnitEvent"] = "Unit %s is not a valid unit for RegisterUnitEvent"
	--[[Translation missing --]]
	L["Unit Count"] = "Unit Count"
	--[[Translation missing --]]
	L["Unit Frame"] = "Unit Frame"
	--[[Translation missing --]]
	L["Unit Frames"] = "Unit Frames"
	--[[Translation missing --]]
	L["Unit Name Filter"] = "Unit Name Filter"
	--[[Translation missing --]]
	L["UnitName Filter"] = "UnitName Filter"
	L["Unlike the start or finish animations, the main animation will loop over and over until the display is hidden."] = "Ignorar animaciones de inicio y final: la animaci??n principal se repetir?? hasta que el aura se oculte."
	--[[Translation missing --]]
	L["Update %s by %s"] = "Update %s by %s"
	L["Update Custom Text On..."] = "Actualizar texto personalizado en..."
	--[[Translation missing --]]
	L["Update in Group"] = "Update in Group"
	--[[Translation missing --]]
	L["Update this Aura"] = "Update this Aura"
	--[[Translation missing --]]
	L["Use Custom Color"] = "Use Custom Color"
	--[[Translation missing --]]
	L["Use Display Info Id"] = "Use Display Info Id"
	L["Use Full Scan (High CPU)"] = "Escaneo Total (carga el procesador)"
	--[[Translation missing --]]
	L["Use nth value from tooltip:"] = "Use nth value from tooltip:"
	--[[Translation missing --]]
	L["Use SetTransform"] = "Use SetTransform"
	L["Use tooltip \"size\" instead of stacks"] = "Utilizar \"tama??o\" en vez de acumulaciones"
	--[[Translation missing --]]
	L["Use Tooltip Information"] = "Use Tooltip Information"
	--[[Translation missing --]]
	L["Used in Auras:"] = "Used in Auras:"
	--[[Translation missing --]]
	L["Used in auras:"] = "Used in auras:"
	--[[Translation missing --]]
	L["Uses UnitIsVisible() to check if in range. This is polled every second."] = "Uses UnitIsVisible() to check if in range. This is polled every second."
	--[[Translation missing --]]
	L["Value %i"] = "Value %i"
	--[[Translation missing --]]
	L["Values are in normalized rgba format."] = "Values are in normalized rgba format."
	--[[Translation missing --]]
	L["Values:"] = "Values:"
	--[[Translation missing --]]
	L["Version: "] = "Version: "
	L["Vertical Align"] = "Alineaci??n vertical"
	L["Vertical Bar"] = "Barra vertical"
	L["View"] = "Visualizaci??n"
	--[[Translation missing --]]
	L["Wago Update"] = "Wago Update"
	--[[Translation missing --]]
	L["Whole Area"] = "Whole Area"
	L["Width"] = "Ancho"
	--[[Translation missing --]]
	L["wrapping"] = "wrapping"
	L["X Offset"] = "Posici??n de X"
	L["X Rotation"] = "Rotaci??n de X"
	L["X Scale"] = "Ajuste de tama??o de X"
	--[[Translation missing --]]
	L["X-Offset"] = "X-Offset"
	L["Y Offset"] = "Posici??n de Y"
	L["Y Rotation"] = "Rotaci??n de Y"
	L["Y Scale"] = "Ajuste de tama??o de Y"
	L["Yellow Rune"] = "Runa amarilla"
	L["Yes"] = "Si"
	--[[Translation missing --]]
	L["Y-Offset"] = "Y-Offset"
	--[[Translation missing --]]
	L["You are about to delete %d aura(s). |cFFFF0000This cannot be undone!|r Would you like to continue?"] = "You are about to delete %d aura(s). |cFFFF0000This cannot be undone!|r Would you like to continue?"
	--[[Translation missing --]]
	L["Your Saved Snippets"] = "Your Saved Snippets"
	L["Z Offset"] = "Posici??n de Z"
	L["Z Rotation"] = "Rotaci??n de Z"
	L["Zoom"] = "Ampliar"
	L["Zoom In"] = "Acercar"
	L["Zoom Out"] = "Alejar"

