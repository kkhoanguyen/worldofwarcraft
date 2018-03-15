-- my custom locale file - more streamlined than AceLocale and no lib dependency

-- To help with missing translations please go here:
-- http://www.wowace.com/addons/broker_healbot/localization/

local addonName, vars = ...
local Ld, La = {}, {}
local locale = GAME_LOCALE or GetLocale()

vars.L = setmetatable({},{
    __index = function(t, s) return La[s] or Ld[s] or rawget(t,s) or s end
})

Ld["/bhb"] = "/bhb"
Ld["Broker_HealBot"] = "Broker_HealBot"
Ld["Current Skin"] = "Current Skin"
Ld["HealBot"] = "HealBot"
Ld["Left Click"] = "Left Click"
Ld["reset requested (in combat)"] = "reset requested (in combat)"
Ld["Right Click"] = "Right Click"
Ld["Shift Left Click"] = "Shift Left Click"
Ld["Shift Right Click"] = "Shift Right Click"
Ld["skin change requested (in combat)"] = "skin change requested (in combat)"
Ld["skins"] = "skins"
Ld["skin set to"] = "skin set to"
Ld["to choose HealBot skin"] = "to choose HealBot skin"
Ld["toggle requested (in combat)"] = "toggle requested (in combat)"
Ld["to open HealBot options"] = "to open HealBot options"
Ld["to reset HealBot"] = "to reset HealBot"
Ld["to toggle HealBot"] = "to toggle HealBot"


if locale == "frFR" then do end
La["/bhb"] = "/bhb"
La["Broker_HealBot"] = "Broker_HealBot"
La["Current Skin"] = "Apparence courante"
La["HealBot"] = "HealBot"
La["Left Click"] = "Clique gauche"
La["reset requested (in combat)"] = "remise à zéro demandée (en combat)"
La["Right Click"] = "Clique droit"
La["Shift Left Click"] = "Majuscule clique gauche"
La["Shift Right Click"] = "Majuscule clique droit"
La["skin change requested (in combat)"] = "changement d'apparence (en combat)"
La["skins"] = "apparences"
La["skin set to"] = "apparence changée pour"
La["to choose HealBot skin"] = "choisir l'apparence HealBot"
La["toggle requested (in combat)"] = "basculement demandé (en combat)"
La["to open HealBot options"] = "afficher les options de HealBot"
La["to reset HealBot"] = "remettre HealBot à zéro"
La["to toggle HealBot"] = "afficher HealBot"

elseif locale == "deDE" then do end
La["/bhb"] = "/bhb"
La["Broker_HealBot"] = "Broker_HealBot"
La["Current Skin"] = "Aktuelle Skin"
La["HealBot"] = "HealBot"
La["Left Click"] = "Links-Klick"
La["reset requested (in combat)"] = "angefordertes zurücksetzen (im Kampf)"
La["Right Click"] = "Rechts-Klick"
La["Shift Left Click"] = "SHIFT & Links-Klick"
La["Shift Right Click"] = "SHIFT & Rechts-Klick"
La["skin change requested (in combat)"] = "Skin-Wechsel angefordert (im Kampf)"
La["skins"] = "Skins"
La["skin set to"] = "Skin eingestellt auf"
La["to choose HealBot skin"] = "um eine HealBot-Skin zu wählen"
La["toggle requested (in combat)"] = "angefordertes umschalten (im Kampf)"
La["to open HealBot options"] = "um HealBot-Optionen zu öffnen"
La["to reset HealBot"] = "um HealBot zurückzusetzen"
La["to toggle HealBot"] = "um HealBot umzuschalten (ein/aus)"

elseif locale == "koKR" then do end
-- La["/bhb"] = ""
-- La["Broker_HealBot"] = ""
-- La["Current Skin"] = ""
-- La["HealBot"] = ""
-- La["Left Click"] = ""
-- La["reset requested (in combat)"] = ""
-- La["Right Click"] = ""
-- La["Shift Left Click"] = ""
-- La["Shift Right Click"] = ""
-- La["skin change requested (in combat)"] = ""
-- La["skins"] = ""
-- La["skin set to"] = ""
-- La["to choose HealBot skin"] = ""
-- La["toggle requested (in combat)"] = ""
-- La["to open HealBot options"] = ""
-- La["to reset HealBot"] = ""
-- La["to toggle HealBot"] = ""

elseif locale == "esMX" then do end
-- La["/bhb"] = ""
-- La["Broker_HealBot"] = ""
-- La["Current Skin"] = ""
-- La["HealBot"] = ""
-- La["Left Click"] = ""
-- La["reset requested (in combat)"] = ""
-- La["Right Click"] = ""
-- La["Shift Left Click"] = ""
-- La["Shift Right Click"] = ""
-- La["skin change requested (in combat)"] = ""
-- La["skins"] = ""
-- La["skin set to"] = ""
-- La["to choose HealBot skin"] = ""
-- La["toggle requested (in combat)"] = ""
-- La["to open HealBot options"] = ""
-- La["to reset HealBot"] = ""
-- La["to toggle HealBot"] = ""

elseif locale == "ruRU" then do end
La["/bhb"] = "/bhb" -- Needs review
La["Broker_HealBot"] = "Broker_HealBot" -- Needs review
La["Current Skin"] = "текущая обложка" -- Needs review
La["HealBot"] = "HealBot" -- Needs review
La["Left Click"] = "ЛКМ" -- Needs review
La["reset requested (in combat)"] = "запрошен сброс (в бою)" -- Needs review
La["Right Click"] = "ПКМ" -- Needs review
La["Shift Left Click"] = "ЛКМ+shift" -- Needs review
La["Shift Right Click"] = "ПКМ+shift" -- Needs review
La["skin change requested (in combat)"] = "запрошена смена обложки (в бою)" -- Needs review
La["skins"] = "обложки" -- Needs review
La["skin set to"] = "обложка изменена на" -- Needs review
La["to choose HealBot skin"] = "для выбора обложки HealBot" -- Needs review
La["toggle requested (in combat)"] = "запрошено переключение" -- Needs review
La["to open HealBot options"] = "для открытия настроек HealBot" -- Needs review
La["to reset HealBot"] = "для сброса настроек HealBot" -- Needs review
La["to toggle HealBot"] = "для переключение HealBot" -- Needs review

elseif locale == "zhCN" then do end
La["/bhb"] = "/bhb"
La["Broker_HealBot"] = "Broker_HealBot"
La["Current Skin"] = "目前面板"
La["HealBot"] = "HealBot"
La["Left Click"] = "左键点击"
La["reset requested (in combat)"] = "重设要求(战斗内)"
La["Right Click"] = "右键点击"
La["Shift Left Click"] = "Shift + 左键点击"
La["Shift Right Click"] = "Shift + 右键点击"
La["skin change requested (in combat)"] = "面板改变要求(战斗内)"
La["skins"] = "面板"
La["skin set to"] = "面板设定"
La["to choose HealBot skin"] = "选择 HealBot 面板"
La["toggle requested (in combat)"] = "切换要求(战斗内)"
La["to open HealBot options"] = "打开 HealBot 选项"
La["to reset HealBot"] = "重设 HealBot"
La["to toggle HealBot"] = "切换 HealBot"

elseif locale == "esES" then do end
La["/bhb"] = "/bhb"
La["Broker_HealBot"] = "Broker_HealBot"
La["Current Skin"] = "Apariencia Actual"
La["HealBot"] = "HealBot"
La["Left Click"] = "Click Izquierdo"
La["reset requested (in combat)"] = "Reinico Solicitado (en combate)"
La["Right Click"] = "Click Derecho"
La["Shift Left Click"] = "Mayusculas Click Izquierdo"
La["Shift Right Click"] = "Mayusculas Click Derecho"
La["skin change requested (in combat)"] = "Cambio de Apariencia Solicitado (en combate)"
La["skins"] = "Apariencias"
La["skin set to"] = "Apariencia puesto en"
La["to choose HealBot skin"] = "para elegir apariencia de HealBot "
La["toggle requested (in combat)"] = "Intercambio Solicitado (en combate)"
La["to open HealBot options"] = "para abrir opciones de HealBot"
La["to reset HealBot"] = "para reiniciar HealBot"
La["to toggle HealBot"] = "para intercambiar HealBot"

elseif locale == "zhTW" then do end
La["/bhb"] = "/bhb"
La["Broker_HealBot"] = "Broker_HealBot"
La["Current Skin"] = "目前面板"
La["HealBot"] = "HealBot"
La["Left Click"] = "左鍵點擊"
La["reset requested (in combat)"] = "重設要求(戰鬥內)"
La["Right Click"] = "右鍵點擊"
La["Shift Left Click"] = "Shift + 左鍵點擊"
La["Shift Right Click"] = "Shift + 右鍵點擊"
La["skin change requested (in combat)"] = "面板改變要求(戰鬥內)"
La["skins"] = "面板"
La["skin set to"] = "面板設定"
La["to choose HealBot skin"] = "選擇 HealBot 面板"
La["toggle requested (in combat)"] = "切換要求(戰鬥內)"
La["to open HealBot options"] = "打開 HealBot 選項"
La["to reset HealBot"] = "重設 HealBot"
La["to toggle HealBot"] = "切換 HealBot"

elseif locale == "ptBR" then do end
La["/bhb"] = "/bhb"
La["Broker_HealBot"] = "Broker_HealBot"
La["Current Skin"] = "Skin Atual"
La["HealBot"] = "HealBot"
La["Left Click"] = "Clique Esquerdo"
La["reset requested (in combat)"] = "reset solicitado (em combate)"
La["Right Click"] = "Clique Direito"
La["Shift Left Click"] = "Shift Clique Esquerdo"
La["Shift Right Click"] = "Shift Clique Direito"
La["skin change requested (in combat)"] = "mudança de skin solicitada (em combate)"
La["skins"] = "skins"
La["skin set to"] = "skin alterada para"
La["to choose HealBot skin"] = "para escolher a skin do HealBot"
La["toggle requested (in combat)"] = "alternar solicitado (em combate)"
La["to open HealBot options"] = "para abrir opções do HealBot"
La["to reset HealBot"] = "para resetar o HealBot"
La["to toggle HealBot"] = "para alternar o HealBot"

elseif locale == "itIT" then do end
-- La["/bhb"] = ""
-- La["Broker_HealBot"] = ""
-- La["Current Skin"] = ""
-- La["HealBot"] = ""
-- La["Left Click"] = ""
-- La["reset requested (in combat)"] = ""
-- La["Right Click"] = ""
-- La["Shift Left Click"] = ""
-- La["Shift Right Click"] = ""
-- La["skin change requested (in combat)"] = ""
-- La["skins"] = ""
-- La["skin set to"] = ""
-- La["to choose HealBot skin"] = ""
-- La["toggle requested (in combat)"] = ""
-- La["to open HealBot options"] = ""
-- La["to reset HealBot"] = ""
-- La["to toggle HealBot"] = ""

end
