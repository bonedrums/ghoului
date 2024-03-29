
MSBTProfiles_SavedVars = {
	["profiles"] = {
		["Default"] = {
			["critFontName"] = "Enigmatic",
			["enableBlizzardDamage"] = false,
			["animationSpeed"] = 70,
			["creationVersion"] = "5.7.150",
			["critFontSize"] = 20,
			["normalFontSize"] = 14,
			["events"] = {
				["NOTIFICATION_ITEM_COOLDOWN"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_PET_COOLDOWN"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_COOLDOWN"] = {
					["disabled"] = true,
				},
			},
			["scrollAreas"] = {
				["Notification"] = {
					["scrollHeight"] = 190,
					["offsetY"] = 141,
					["normalFontSize"] = 12,
				},
				["Incoming"] = {
					["direction"] = "Up",
					["scrollHeight"] = 180,
					["offsetX"] = -344,
					["behavior"] = "MSBT_NORMAL",
					["iconAlign"] = "Right",
					["offsetY"] = -80,
					["animationStyle"] = "Straight",
					["normalFontSize"] = 12,
				},
				["Static"] = {
					["offsetX"] = -23,
					["offsetY"] = 165,
				},
				["Outgoing"] = {
					["direction"] = "Up",
					["offsetX"] = 274,
					["scrollHeight"] = 180,
					["behavior"] = "MSBT_NORMAL",
					["offsetY"] = -80,
					["animationStyle"] = "Straight",
					["normalFontSize"] = 12,
				},
			},
			["enableBlizzardHealing"] = true,
			["normalFontName"] = "Enigmatic",
			["soundsDisabled"] = true,
			["triggers"] = {
				["Custom1"] = {
					["message"] = "Improved Hamstring",
					["fontSize"] = 26,
					["alwaysSticky"] = true,
					["mainEvents"] = "SPELL_AURA_APPLIED{recipientAffiliation;;eq;;65536;;skillName;;eq;;Improved Hamstring}&&SPELL_AURA_APPLIED{recipientAffiliation;;eq;;4026531840;;skillName;;eq;;Improved Hamstring;;recipientReaction;;eq;;64}",
					["colorB"] = 0,
				},
			},
		},
		["Fojji"] = {
			["enableBlizzardDamage"] = false,
			["enableBlizzardHealing"] = true,
			["abilitySuppressions"] = {
				["Unholy Blight"] = true,
				["Necrosis"] = true,
				["Frost Fever"] = true,
				["Death and Decay"] = true,
				["Blood-Caked Strike"] = true,
				["Blood Plague"] = true,
				["Wandering Plague"] = true,
				["Razor Frost"] = true,
			},
			["normalOutlineIndex"] = 2,
			["critFontName"] = "Oswald",
			["critOutlineIndex"] = 2,
			["animationSpeed"] = 30,
			["triggers"] = {
				["MSBT_TRIGGER_LOW_PET_HEALTH"] = {
					["disabled"] = true,
					["fontSize"] = 18,
				},
				["MSBT_TRIGGER_LOW_HEALTH"] = {
					["fontSize"] = 18,
				},
				["MSBT_TRIGGER_HAMMER_OF_WRATH"] = false,
				["MSBT_TRIGGER_REVENGE"] = false,
				["MSBT_TRIGGER_CLEARCASTING"] = false,
				["MSBT_TRIGGER_LOW_MANA"] = {
					["fontSize"] = 18,
				},
				["MSBT_TRIGGER_EXECUTE"] = false,
			},
			["scrollAreas"] = {
				["Incoming"] = {
					["direction"] = "Left",
					["stickyBehavior"] = "Normal",
					["stickyTextAlignIndex"] = 2,
					["textAlignIndex"] = 2,
					["critFontAlpha"] = 100,
					["scrollHeight"] = 75,
					["offsetX"] = -565,
					["normalFontAlpha"] = 90,
					["iconAlign"] = "Right",
					["offsetY"] = -380,
					["animationStyle"] = "Horizontal",
					["behavior"] = "GrowUp",
				},
				["Outgoing"] = {
					["direction"] = "Right",
					["behavior"] = "GrowUp",
					["critFontAlpha"] = 100,
					["stickyDirection"] = "Up",
					["scrollHeight"] = 75,
					["offsetX"] = 490,
					["animationStyle"] = "Horizontal",
					["normalFontAlpha"] = 90,
					["offsetY"] = -380,
					["textAlignIndex"] = 2,
					["stickyBehavior"] = "Normal",
				},
				["Static"] = {
					["stickyDirection"] = "Down",
					["scrollHeight"] = 50,
					["disabled"] = true,
					["offsetX"] = -22,
					["offsetY"] = 338,
					["critFontSize"] = 14,
					["normalFontSize"] = 12,
				},
				["Notification"] = {
					["direction"] = "Up",
					["stickyBehavior"] = "Normal",
					["critFontAlpha"] = 100,
					["critFontSize"] = 12,
					["scrollHeight"] = 60,
					["offsetX"] = -174,
					["stickyDirection"] = "Up",
					["normalFontAlpha"] = 75,
					["offsetY"] = 292,
					["animationStyle"] = "Static",
					["normalFontSize"] = 10,
				},
			},
			["creationVersion"] = "5.7.150",
			["critFontSize"] = 14,
			["abbreviateAbilities"] = true,
			["groupNumbers"] = true,
			["stickyCritsDisabled"] = true,
			["events"] = {
				["PET_INCOMING_HOT_CRIT"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_DAMAGE"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_AC_CHANGE"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_BUFF"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_IMMUNE"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_DEFLECT"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_PARRY"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_MISS"] = {
					["disabled"] = true,
				},
				["OUTGOING_HEAL_CRIT"] = {
					["fontSize"] = false,
				},
				["NOTIFICATION_ALT_POWER_GAIN"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_ABSORB"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_DEFLECT"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_EVADE"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_CHI_FULL"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_DODGE"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_BLOCK"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_MISS"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_HEAL_CRIT"] = {
					["fontSize"] = false,
				},
				["PET_INCOMING_SPELL_DAMAGE_SHIELD_CRIT"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_PARRY"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_POWER_LOSS"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_AC_FULL"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_IMMUNE"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_DOT"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_MONSTER_EMOTE"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_COMBAT_LEAVE"] = {
					["fontAlpha"] = 100,
				},
				["SELF_HEAL_CRIT"] = {
					["fontSize"] = false,
				},
				["PET_INCOMING_BLOCK"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_CP_GAIN"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_DAMAGE_SHIELD"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_PET_COOLDOWN"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_DAMAGE_SHIELD"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_ALT_POWER_LOSS"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_DODGE"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_IMMUNE"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_DAMAGE_SHIELD_CRIT"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_DAMAGE_CRIT"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_MISS"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_CP_FULL"] = {
					["fontSize"] = false,
				},
				["NOTIFICATION_ITEM_BUFF"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_RESIST"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_ABSORB"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_HEAL_CRIT"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_DAMAGE"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_ABSORB"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_HEAL"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_COMBAT_ENTER"] = {
					["fontAlpha"] = 100,
				},
				["NOTIFICATION_PC_KILLING_BLOW"] = {
					["fontSize"] = 18,
				},
				["PET_OUTGOING_DAMAGE"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_DODGE"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_DOT"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_EXTRA_ATTACK"] = {
					["disabled"] = true,
					["fontSize"] = 18,
				},
				["NOTIFICATION_BUFF_STACK"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_DOT_CRIT"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_DOT_CRIT"] = {
					["disabled"] = true,
				},
				["INCOMING_HEAL_CRIT"] = {
					["fontSize"] = false,
				},
				["NOTIFICATION_HOLY_POWER_CHANGE"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_DAMAGE_CRIT"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_ITEM_COOLDOWN"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_CHI_CHANGE"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_DEBUFF_STACK"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_BUFF_FADE"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_BLOCK"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_HOLY_POWER_FULL"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_DEFLECT"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_MISS"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_POWER_GAIN"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_BLOCK"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_DAMAGE_CRIT"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_COOLDOWN"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_DEFLECT"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_DODGE"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_SPELL_PARRY"] = {
					["disabled"] = true,
				},
				["PET_INCOMING_HOT"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_ABSORB"] = {
					["disabled"] = true,
				},
				["PET_OUTGOING_SPELL_PARRY"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_DEBUFF_FADE"] = {
					["disabled"] = true,
				},
				["NOTIFICATION_DEBUFF"] = {
					["disabled"] = true,
				},
			},
			["normalFontName"] = "Oswald",
			["healThreshold"] = 700,
			["normalFontSize"] = 12,
		},
	},
}
MSBT_SavedMedia = {
	["fonts"] = {
	},
	["sounds"] = {
	},
}
