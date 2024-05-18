
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
			["char"] = {
				["Gurrgamell - Benediction"] = {
					["enabled"] = false,
				},
			},
		},
	},
	["profileKeys"] = {
		["Garrgamell - Benediction"] = "GhoulUI",
		["Clothgamell - Benediction"] = "Default",
		["Gourgamell - Faerlina"] = "GhoulUI",
		["Ahgamell - Benediction"] = "Default",
		["Garrgamell - Faerlina"] = "GhoulUI",
		["Ghoulgamell - Faerlina"] = "GhoulUI",
		["Enchgamell - Benediction"] = "Default",
		["Gorrgamell - Benediction"] = "GhoulUI",
		["Rawrgamell - Faerlina"] = "GhoulUI",
		["Gorrgamell - Faerlina"] = "GhoulUI",
		["Ghoulgamell - Benediction"] = "GhoulUI",
		["Gourgamell - Benediction"] = "GhoulUI",
	},
	["profiles"] = {
		["Default"] = {
			["runOnce"] = {
				["forceReloadAllDefaultPriorities_20220228"] = true,
				["forceEnableAllClassesOnceDueToBug_20220225"] = true,
				["forceReloadClassDefaultOptions_20220306_5"] = true,
				["forceReloadClassDefaultOptions_20220306_6"] = true,
				["forceReloadClassDefaultOptions_20220306_9"] = true,
				["forceReloadClassDefaultOptions_20220306_11"] = true,
				["forceEnableEnhancedRecheckBoomkin_20210712"] = true,
				["forceReloadClassDefaultOptions_20220306_1"] = true,
				["updateMaxRefreshToNewSpecOptions_20220222"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
			["specs"] = {
				{
					["settings"] = {
						["protection"] = "Protection Warrior (wowtbc.gg)",
						["execute_whirlwind_enabled"] = true,
						["execute_bloodthirst_enabled"] = true,
						["weave_cooldown_threshold"] = 1.5,
						["weave_rage_threshold"] = 100,
						["execute_slam_prio"] = true,
						["arms"] = "Arms",
						["debuff_demoshout_enabled"] = false,
						["queueing_threshold"] = 60,
						["predict_tfb"] = true,
						["fury"] = "Fury",
						["optimize_overpower"] = false,
						["debuff_sunder_enabled"] = true,
						["shout_spell"] = "commanding_shout",
						["weaving_enabled"] = false,
						["weave_health_threshold"] = 20,
						["main_gcd_spell"] = "slam",
						["rend_refresh_time"] = 0,
						["execute_queueing_enabled"] = true,
					},
					["autoPacks"] = {
						["fury"] = "Fury",
						["protection"] = "Protection Warrior (wowtbc.gg)",
						["arms"] = "Arms",
					},
				}, -- [1]
				[11] = {
					["settings"] = {
						["bearweaving_enabled"] = false,
						["flowerweaving_mode"] = "any",
						["lunar_cooldown_leeway"] = 14,
						["balance"] = "Balance (IV)",
						["feral_tank"] = "Feral Tank (IV)",
						["rake_dpe_check"] = true,
						["ferociousbite_enabled"] = true,
						["min_bite_rip_remains"] = 4,
						["optimize_trinkets"] = false,
						["min_weave_mana"] = 25,
						["bear_form_mode"] = "tank",
						["min_bite_sr_remains"] = 4,
						["bearweaving_instancetype"] = "raid",
						["maintain_ff"] = true,
						["dummy_ttd"] = 300,
						["feral_dps"] = "Feral DPS (IV)",
						["max_bite_energy"] = 25,
						["min_roar_offset"] = 24,
						["flowerweaving_enabled"] = false,
						["bearweaving_bossonly"] = true,
						["flowerweaving_mingroupsize"] = 10,
						["rip_leeway"] = 3,
					},
					["autoPacks"] = {
						["feral_tank"] = "Feral Tank (IV)",
						["balance"] = "Balance (IV)",
						["feral_dps"] = "Feral DPS (IV)",
					},
				},
				[6] = {
					["settings"] = {
						["unholy"] = "Unholy (IV)",
						["frost"] = "Frost DK (IV)",
						["blood"] = "Blood (IV)",
					},
					["autoPacks"] = {
						["unholy"] = "Unholy (IV)",
						["frost"] = "Frost DK (IV)",
						["blood"] = "Blood (IV)",
					},
				},
				[9] = {
					["settings"] = {
						["solo_curse"] = "curse_of_agony",
						["group_curse"] = "curse_of_the_elements",
						["destruction"] = "Destruction",
						["affliction"] = "Affliction",
						["demonology"] = "Demonology (wowtbc.gg)",
						["shadow_mastery"] = true,
						["group_type"] = "party",
						["inferno_enabled"] = false,
					},
					["autoPacks"] = {
						["demonology"] = "Demonology (wowtbc.gg)",
						["affliction"] = "Affliction",
						["destruction"] = "Destruction",
					},
				},
				[5] = {
					["settings"] = {
						["optimize_mind_blast"] = false,
						["holy"] = "none",
						["shadow"] = "Shadow",
						["dots_in_aoe"] = false,
						["min_shadowfiend_mana"] = 25,
						["discipline"] = "none",
					},
					["autoPacks"] = {
						["discipline"] = "none",
						["holy"] = "none",
						["shadow"] = "Shadow",
					},
				},
			},
			["packs"] = {
				["Protection"] = {
					["source"] = "https://www.wowhead.com/wotlk/guide/classes/warrior/protection/tank-rotation-cooldowns-abilities-pve",
					["builtIn"] = true,
					["date"] = 20231124,
					["spec"] = 1,
					["desc"] = "This priority is based on the wowhead guide.",
					["lists"] = {
						["single"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.up & debuff.shattering_throw.down",
								["action"] = "shattering_throw",
							}, -- [1]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "defensive_stance",
								["criteria"] = "buff.defensive_stance.down",
							}, -- [2]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "heroic_strike",
								["criteria"] = "rage.current >= settings.queueing_threshold & rage.current > action.heroic_strike.spend + variable.build_sunder_cost + ( variable.maintain_sunder * action.devastate.spend ) + ( ( cooldown.shield_slam.remains < 2 ) * action.shield_slam.spend )",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( aggro || debuff.training_dummy.up ) & cooldown.shield_slam.up & rage.current >= action.shield_slam.spend",
								["action"] = "shield_block",
							}, -- [4]
							{
								["action"] = "shield_slam",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "revenge",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.commanding_shout & buff.shout.remains <= 4 & buff.commanding_shout.remains <= 4",
								["action"] = "commanding_shout",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.battle_shout & buff.shout.remains <= 4 & buff.battle_shout.remains <= 4",
								["action"] = "battle_shout",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.build_sunder || variable.maintain_sunder",
								["action"] = "devastate",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "settings.debuff_demoshout_enabled & ( ! debuff.ap_reduction.up || ( debuff.demoralizing_shout.up & debuff.demoralizing_shout.remains < 3 ) )",
								["action"] = "demoralizing_shout",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.attack_speed_reduction.up || ( debuff.thunder_clap.up & debuff.attack_speed_reduction.remains < 3 )",
								["action"] = "thunder_clap",
							}, -- [11]
							{
								["action"] = "shockwave",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.shield_slam.remains & ! buff.revenge_usable.up & ( action.shield_slam.spend <= rage.current - action.devastate.spend + rage_gain * gcd )",
								["action"] = "devastate",
							}, -- [13]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "init",
							}, -- [1]
							{
								["action"] = "charge",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "shield_bash",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "spell_reflection",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "bloodrage",
								["criteria"] = "rage.deficit > 30 & ! set_bonus.tier10prot_4pc",
							}, -- [5]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.emergency_sunder",
								["action"] = "devastate",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies > 1",
								["list_name"] = "aoe",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single",
							}, -- [9]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "group & active_dot.vigilance = 0",
								["action"] = "vigilance",
							}, -- [1]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "bloodrage",
								["criteria"] = "rage.current < action.commanding_shout.spend & buff.shout.remains <= 60",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.commanding_shout & buff.shout.remains <= 60",
								["action"] = "commanding_shout",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.battle_shout & buff.shout.remains <= 60",
								["action"] = "battle_shout",
							}, -- [4]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "berserker_stance",
								["criteria"] = "cooldown.recklessness.up",
							}, -- [5]
							{
								["action"] = "recklessness",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "defensive_stance",
								["criteria"] = "buff.defensive_stance.down & ! cooldown.recklessness.up",
							}, -- [7]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "bloodrage",
								["criteria"] = "rage.deficit > 30 & ! set_bonus.tier10prot_4pc",
							}, -- [8]
							{
								["action"] = "charge",
								["enabled"] = true,
							}, -- [9]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "boss & buff.bloodlust.up & debuff.shattering_throw.down",
								["action"] = "shattering_throw",
							}, -- [1]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "defensive_stance",
								["criteria"] = "buff.defensive_stance.down",
							}, -- [2]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "cleave",
								["criteria"] = "rage.current >= settings.queueing_threshold & rage.current > action.cleave.spend + ( variable.maintain_sunder * action.devastate.spend ) + ( ( cooldown.shield_slam.remains < 2 ) * action.shield_slam.spend )",
							}, -- [3]
							{
								["action"] = "thunder_clap",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3",
								["action"] = "shockwave",
							}, -- [5]
							{
								["action"] = "revenge",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "shockwave",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "shield_block",
								["criteria"] = "( aggro || debuff.training_dummy.up ) & cooldown.thunder_clap.remains & ! buff.revenge_usable.up & cooldown.thunder_clap.remains & cooldown.shield_slam.up & rage >= action.shield_slam.spend",
							}, -- [8]
							{
								["action"] = "shield_slam",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.commanding_shout & buff.shout.remains <= 4 & buff.commanding_shout.remains <= 4",
								["action"] = "commanding_shout",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.battle_shout & buff.shout.remains <= 4 & buff.battle_shout.remains <= 4",
								["action"] = "battle_shout",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "settings.debuff_demoshout_enabled & ( ! debuff.major_ap_reduction.up || ( debuff.demoralizing_shout.up & debuff.demoralizing_shout.remains < 3 ) )",
								["action"] = "demoralizing_shout",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.shield_slam.remains & ! buff.revenge_usable.up & ( action.shield_slam.spend <= rage.current - action.devastate.spend + rage_gain * gcd )",
								["action"] = "devastate",
							}, -- [13]
						},
						["init"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( debuff.training_dummy.up & 300 ) || target.time_to_die",
								["var_name"] = "time_to_die",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "settings.debuff_sunder_enabled & variable.time_to_die > ( ( 5 - debuff.sunder_armor.stack ) * ( 1.5 + latency ) ) + 3",
								["var_name"] = "should_sunder",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "should_sunder & ! debuff.major_armor_reduction.up || ( debuff.sunder_armor.up & debuff.sunder_armor.stack < 5 )",
								["var_name"] = "build_sunder",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "should_sunder & ! variable.build_sunder & debuff.sunder_armor.stack = 5 & debuff.sunder_armor.remains < 5",
								["var_name"] = "maintain_sunder",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "should_sunder & debuff.sunder_armor.up & debuff.sunder_armor.remains < 2",
								["var_name"] = "emergency_sunder",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "build_sunder_cost",
								["value"] = "action.devastate.spend * ( 5 - debuff.sunder_armor.stack )",
								["value_else"] = "0",
								["criteria"] = "variable.build_sunder",
							}, -- [6]
						},
					},
					["version"] = 20231124,
					["warnings"] = "WARNING:  The import for 'aoe' required some automated changes.\nThe following auras were used in the action list but were not found in the addon database:\n - major_ap_reduction\n\nImported 5 action lists.\n",
					["profile"] = "## Warrior: Protection\n## https://www.wowhead.com/wotlk/guide/classes/warrior/protection/tank-rotation-cooldowns-abilities-pve\n## November 2023\n\n## Precombat\nactions.precombat+=/vigilance,if=group&active_dot.vigilance=0 \nactions.precombat+=/bloodrage,use_off_gcd=1,if=rage.current<action.commanding_shout.spend&buff.shout.remains<=60\nactions.precombat+=/commanding_shout,if=assigned_shout.commanding_shout&buff.shout.remains<=60\nactions.precombat+=/battle_shout,if=assigned_shout.battle_shout&buff.shout.remains<=60\nactions.precombat+=/berserker_stance,use_off_gcd=1,if=cooldown.recklessness.up\nactions.precombat+=/recklessness\nactions.precombat+=/defensive_stance,use_off_gcd=1,if=buff.defensive_stance.down&!cooldown.recklessness.up\nactions.precombat+=/bloodrage,use_off_gcd=1,if=rage.deficit>30&!set_bonus.tier10prot_4pc\nactions.precombat+=/charge\n\n## Default\nactions+=/call_action_list,name=init\nactions+=/charge\nactions+=/shield_bash\nactions+=/spell_reflection\nactions+=/bloodrage,use_off_gcd=1,if=rage.deficit>30&!set_bonus.tier10prot_4pc\nactions+=/use_items\nactions+=/devastate,if=variable.emergency_sunder\nactions+=/run_action_list,name=aoe,if=active_enemies>1\nactions+=/run_action_list,name=single\n\n## Init Vars\nactions.init+=/variable,name=time_to_die,value=(debuff.training_dummy.up&300)||target.time_to_die\nactions.init+=/variable,name=should_sunder,value=settings.debuff_sunder_enabled&variable.time_to_die>((5-debuff.sunder_armor.stack)*(1.5+latency))+3\nactions.init+=/variable,name=build_sunder,value=should_sunder&!debuff.major_armor_reduction.up||(debuff.sunder_armor.up&debuff.sunder_armor.stack<5)\nactions.init+=/variable,name=maintain_sunder,value=should_sunder&!variable.build_sunder&debuff.sunder_armor.stack=5&debuff.sunder_armor.remains<5\nactions.init+=/variable,name=emergency_sunder,value=should_sunder&debuff.sunder_armor.up&debuff.sunder_armor.remains<2\nactions.init+=/variable,name=build_sunder_cost,op=setif,if=variable.build_sunder,value=action.devastate.spend*(5-debuff.sunder_armor.stack),value_else=0\n\n## Single\nactions.single+=/shattering_throw,if=buff.bloodlust.up&debuff.shattering_throw.down\nactions.single+=/defensive_stance,use_off_gcd=1,if=buff.defensive_stance.down\nactions.single+=/heroic_strike,use_off_gcd=1,if=rage.current>=settings.queueing_threshold&rage.current>action.heroic_strike.spend+variable.build_sunder_cost+(variable.maintain_sunder*action.devastate.spend)+((cooldown.shield_slam.remains<2)*action.shield_slam.spend)\nactions.single+=/shield_block,if=(aggro||debuff.training_dummy.up)&cooldown.shield_slam.up&rage.current>=action.shield_slam.spend\nactions.single+=/shield_slam\nactions.single+=/revenge\nactions.single+=/commanding_shout,if=assigned_shout.commanding_shout&buff.shout.remains<=4&buff.commanding_shout.remains<=4\nactions.single+=/battle_shout,if=assigned_shout.battle_shout&buff.shout.remains<=4&buff.battle_shout.remains<=4\nactions.single+=/devastate,if=variable.build_sunder||variable.maintain_sunder\nactions.single+=/demoralizing_shout,if=settings.debuff_demoshout_enabled&(!debuff.ap_reduction.up||(debuff.demoralizing_shout.up&debuff.demoralizing_shout.remains<3))\nactions.single+=/thunder_clap,if=!debuff.attack_speed_reduction.up||(debuff.thunder_clap.up&debuff.attack_speed_reduction.remains<3)\nactions.single+=/shockwave\nactions.single+=/devastate,if=cooldown.shield_slam.remains&!buff.revenge_usable.up&(action.shield_slam.spend<=rage.current-action.devastate.spend+rage_gain*gcd)\n\n## Cleave\nactions.aoe+=/shattering_throw,if=boss&buff.bloodlust.up&debuff.shattering_throw.down\nactions.aoe+=/defensive_stance,use_off_gcd=1,if=buff.defensive_stance.down\nactions.aoe+=/cleave,use_off_gcd=1,if=rage.current>=settings.queueing_threshold&rage.current>action.cleave.spend+(variable.maintain_sunder*action.devastate.spend)+((cooldown.shield_slam.remains<2)*action.shield_slam.spend)\nactions.aoe+=/thunder_clap\nactions.aoe+=/shockwave,if=active_enemies>3\nactions.aoe+=/revenge\nactions.aoe+=/shockwave\nactions.aoe+=/shield_block,use_off_gcd=1,if=(aggro||debuff.training_dummy.up)&cooldown.thunder_clap.remains&!buff.revenge_usable.up&cooldown.thunder_clap.remains&cooldown.shield_slam.up&rage>=action.shield_slam.spend\nactions.aoe+=/shield_slam\nactions.aoe+=/commanding_shout,if=assigned_shout.commanding_shout&buff.shout.remains<=4&buff.commanding_shout.remains<=4\nactions.aoe+=/battle_shout,if=assigned_shout.battle_shout&buff.shout.remains<=4&buff.battle_shout.remains<=4\nactions.aoe+=/demoralizing_shout,if=settings.debuff_demoshout_enabled&(!debuff.major_ap_reduction.up||(debuff.demoralizing_shout.up&debuff.demoralizing_shout.remains<3))\nactions.aoe+=/devastate,if=cooldown.shield_slam.remains&!buff.revenge_usable.up&(action.shield_slam.spend<=rage.current-action.devastate.spend+rage_gain*gcd)",
					["basedOn"] = "Protection Warrior (IV)",
					["author"] = "Supernuss",
				},
				["Protection Warrior (wowtbc.gg)"] = {
					["source"] = "https://wowtbc.gg/wotlk/class-guides/protection-warrior/",
					["builtIn"] = true,
					["date"] = 20221003,
					["spec"] = 1,
					["desc"] = "This priority is based on the wowtbc.gg Wrath guide.",
					["lists"] = {
						["default"] = {
							{
								["action"] = "shield_bash",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "charge",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "debuff.sunder_armor.stack < 5 & target.time_to_die > 10 || debuff.sunder_armor.remains < 3",
								["action"] = "devastate",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "debuff.thunder_clap.down & talent.improved_thunder_clap.enabled",
								["action"] = "thunder_clap",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "tanking",
								["action"] = "shield_block",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "group & active_dot.vigilance = 0",
								["action"] = "vigilance",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.shout.down",
								["action"] = "battle_shout",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "debuff.demoralizing_shout.down",
								["action"] = "demoralizing_shout",
							}, -- [8]
							{
								["action"] = "heroic_throw",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "recklessness",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "retaliation",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "rage < 80",
								["action"] = "bloodrage",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "aggro & buff.dispellable_enrage.up & health.deficit > 40",
								["action"] = "enraged_regeneration",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "aggro & health.deficit > 50",
								["action"] = "last_stand",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "aggro & health.deficit > 50 & buff.last_stand.down",
								["action"] = "shield_wall",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "thunder_clap",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "shockwave",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & rage > 70",
								["action"] = "cleave",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & rage > 70",
								["action"] = "heroic_strike",
							}, -- [21]
							{
								["action"] = "shield_slam",
								["enabled"] = true,
							}, -- [22]
							{
								["action"] = "revenge",
								["enabled"] = true,
							}, -- [23]
							{
								["action"] = "devastate",
								["enabled"] = true,
							}, -- [24]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.stance.down",
								["action"] = "defensive_stance",
							}, -- [1]
							{
								["action"] = "berserker_rage",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "bloodrage",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.shout.down",
								["action"] = "battle_shout",
							}, -- [4]
							{
								["enabled"] = true,
								["potion"] = "indestructible_potion",
								["action"] = "potion",
							}, -- [5]
							{
								["action"] = "charge",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "heroic_throw",
								["enabled"] = true,
							}, -- [7]
						},
					},
					["version"] = 20221003,
					["warnings"] = "Imported 2 action lists.\n",
					["profile"] = "## Protection Warrior (wowtbc.gg)\n## 3 October 2022\n\nactions.precombat+=/defensive_stance,if=buff.stance.down\nactions.precombat+=/berserker_rage\nactions.precombat+=/bloodrage\nactions.precombat+=/battle_shout,if=buff.shout.down\nactions.precombat+=/potion,name=indestructible_potion\nactions.precombat+=/charge\nactions.precombat+=/heroic_throw\n\nactions+=/shield_bash\nactions+=/charge\nactions+=/devastate,if=debuff.sunder_armor.stack<5&target.time_to_die>10||debuff.sunder_armor.remains<3\nactions+=/thunder_clap,if=debuff.thunder_clap.down&talent.improved_thunder_clap.enabled\nactions+=/shield_block,if=tanking\nactions+=/vigilance,if=group&active_dot.vigilance=0\nactions+=/battle_shout,if=buff.shout.down\nactions+=/demoralizing_shout,if=debuff.demoralizing_shout.down\nactions+=/heroic_throw\nactions+=/recklessness\nactions+=/retaliation\nactions+=/potion\nactions+=/use_items\nactions+=/bloodrage,if=rage<80\nactions+=/enraged_regeneration,if=aggro&buff.dispellable_enrage.up&health.deficit>40\nactions+=/last_stand,if=aggro&health.deficit>50\nactions+=/shield_wall,if=aggro&health.deficit>50&buff.last_stand.down\nactions+=/thunder_clap,if=active_enemies>1\nactions+=/shockwave,if=active_enemies>1\nactions+=/cleave,if=active_enemies>1&rage>70\nactions+=/heroic_strike,if=active_enemies=1&rage>70\nactions+=/shield_slam\nactions+=/revenge\nactions+=/devastate",
					["author"] = "wowtbc.gg",
				},
				["Frost DK (wowtbc.gg)"] = {
					["source"] = "https://wowtbc.gg/wotlk/class-guides/frost-death-knight/",
					["builtIn"] = true,
					["date"] = 20221003,
					["spec"] = 6,
					["desc"] = "This priority is based upon the wowtbc.gg Wrath guide.",
					["lists"] = {
						["default"] = {
							{
								["action"] = "mind_freeze",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! dot.frost_fever.ticking",
								["action"] = "icy_touch",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! dot.blood_plague.ticking",
								["action"] = "plague_strike",
							}, -- [3]
							{
								["action"] = "unbreakable_armor",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "blood_runes.current < 2",
								["action"] = "blood_tap",
							}, -- [7]
							{
								["action"] = "obliterate",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "dot.frost_fever.ticking & dot.blood_plague.ticking & ( active_dot.frost_fever < active_enemies || active_dot.blood_plague < active_enemies || glyph.disease.enabled & ( dot.frost_fever.remains < 5 || dot.blood_plague.remains < 5 ) )",
								["action"] = "pestilence",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "blood_runes.current + frost_runes.current + unholy_runes.current < 3",
								["action"] = "empower_rune_weapon",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & buff.killing_machine.up",
								["action"] = "howling_blast",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & buff.killing_machine.up",
								["action"] = "frost_strike",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up",
								["action"] = "howling_blast",
							}, -- [13]
							{
								["action"] = "frost_strike",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "horn_of_winter",
								["enabled"] = true,
							}, -- [15]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["potion"] = "indestructible_potion",
								["action"] = "potion",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.presence.down",
								["action"] = "blood_presence",
							}, -- [2]
							{
								["action"] = "raise_dead",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "death_and_decay",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "army_of_the_dead",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > 10",
								["action"] = "horn_of_winter",
							}, -- [6]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [7]
						},
					},
					["version"] = 20221003,
					["warnings"] = "Imported 2 action lists.\n",
					["author"] = "wowtbc.gg",
					["profile"] = "## Frost Death Knight (wowtbc.gg)\n## 3 October 2022\n\nactions.precombat+=/potion,name=indestructible_potion\nactions.precombat+=/blood_presence,if=buff.presence.down\nactions.precombat+=/raise_dead\nactions.precombat+=/death_and_decay\nactions.precombat+=/army_of_the_dead\nactions.precombat+=/horn_of_winter,if=runic_power.deficit>10\nactions.precombat+=/potion\n\nactions+=/mind_freeze\nactions+=/icy_touch,if=!dot.frost_fever.ticking\nactions+=/plague_strike,if=!dot.blood_plague.ticking\nactions+=/unbreakable_armor\nactions+=/potion\nactions+=/use_items\nactions+=/blood_tap,if=blood_runes.current<2\nactions+=/obliterate\nactions+=/pestilence,if=dot.frost_fever.ticking&dot.blood_plague.ticking&(active_dot.frost_fever<active_enemies||active_dot.blood_plague<active_enemies||glyph.disease.enabled&(dot.frost_fever.remains<5||dot.blood_plague.remains<5))\nactions+=/empower_rune_weapon,if=blood_runes.current+frost_runes.current+unholy_runes.current<3\nactions+=/howling_blast,if=active_enemies>1&buff.killing_machine.up\nactions+=/frost_strike,if=active_enemies=1&buff.killing_machine.up\nactions+=/howling_blast,if=buff.rime.up\nactions+=/frost_strike\nactions+=/horn_of_winter",
				},
				["Blood (wowtbc.gg)"] = {
					["source"] = "https://www.icy-veins.com/wotlk-classic/blood-death-knight-tank-pve-rotation-cooldowns-abilities",
					["builtIn"] = true,
					["date"] = 20230411,
					["spec"] = 6,
					["desc"] = "This priority is based on the Icy Veins guide.",
					["lists"] = {
						["aoe"] = {
							{
								["action"] = "death_and_decay",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "dot.frost_fever.ticking & dot.blood_plague.ticking & ( active_dot.frost_fever + active_dot.blood_plague < true_active_enemies * 2 )",
								["action"] = "pestilence",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! dot.frost_fever.ticking",
								["action"] = "icy_touch",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								{
								}, -- [1]
								["enabled"] = true,
								["action"] = "plague_strike",
								["criteria"] = "! dot.blood_plague.ticking",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "health.pct > 60 & ( active_enemies < 4 )",
								["action"] = "heart_strike",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "health.pct > 60 & ( active_enemies > 3 )",
								["action"] = "blood_boil",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit <= 20",
								["action"] = "rune_strike",
							}, -- [7]
							{
								{
								}, -- [1]
								["enabled"] = true,
								["criteria"] = "buff.crimson_scourge.up",
								["action"] = "blood_boil",
							}, -- [8]
						},
						["default"] = {
							{
								["action"] = "mind_freeze",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "down",
								["action"] = "horn_of_winter",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "time < 2",
								["action"] = "death_grip",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "health.pct <= 60",
								["action"] = "death_strike",
							}, -- [4]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "unholy_frenzy",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies > 1",
								["list_name"] = "aoe",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "dot.blood_plague.ticking & dot.blood_plague.refreshable || dot.frost_fever.ticking & dot.frost_fever.refreshable",
								["action"] = "pestilence",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! dot.frost_fever.ticking",
								["action"] = "icy_touch",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! dot.blood_plague.ticking",
								["action"] = "plague_strike",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "health.current + action.death_strike.healing < health.max & dot.frost_fever.ticking & dot.blood_plague.ticking",
								["action"] = "death_strike",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "rune_strike",
								["criteria"] = "runic_power.deficit < 20",
							}, -- [12]
							{
								["action"] = "heart_strike",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( blood_runes.current + frost_runes.current + unholy_runes.current ) < 2",
								["action"] = "empower_rune_weapon",
							}, -- [14]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.presence.down",
								["action"] = "frost_presence",
							}, -- [1]
						},
					},
					["version"] = 20230411,
					["warnings"] = "WARNING:  The import for 'aoe' required some automated changes.\nLine 5: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nImported 3 action lists.\n",
					["profile"] = "## Blood Death Knight (Icy Veins)\n## 2023-04-11\n\nactions.precombat+=/frost_presence,if=buff.presence.down\n\nactions+=/mind_freeze\nactions+=/horn_of_winter,if=down\nactions+=/death_grip,if=time<2\nactions+=/death_strike,if=health.pct<=60\nactions+=/use_items\nactions+=/unholy_frenzy\nactions+=/run_action_list,name=aoe,strict=1,if=active_enemies>1\nactions+=/pestilence,if=dot.blood_plague.ticking&dot.blood_plague.refreshable||dot.frost_fever.ticking&dot.frost_fever.refreshable\nactions+=/icy_touch,if=!dot.frost_fever.ticking||frost_runes.time_to_max<gcd\nactions+=/plague_strike,if=!dot.blood_plague.ticking\nactions+=/blood_strike,if=blood_runes.time_to_max<gcd\nactions+=/death_strike,if=health.current+action.death_strike.healing<health.max&dot.frost_fever.ticking&dot.blood_plague.ticking\nactions+=/blood_tap,if=(glyph.blood_tap.enabled||health.pct>60)&blood_runes.current=0\nactions+=/rune_strike\nactions+=/heart_strike\nactions+=/death_coil,if=runic_power.deficit<20\nactions+=/blood_strike\n## TODO: Determine Death Rune situation.\n## actions+=/icy_touch,if=???\nactions+=/empower_rune_weapon,if=(blood_runes.current+frost_runes.current+unholy_runes.current)<2\n\nactions.aoe+=/death_and_decay\nactions.aoe+=/pestilence,if=dot.frost_fever.ticking&dot.blood_plague.ticking&(active_dot.frost_fever+active_dot.blood_plague<true_active_enemies*2)\nactions.aoe+=/icy_touch,cycle_targets=1,if=!dot.frost_fever.ticking\nactions.aoe+=/plague_strike,cycle_targets=1,if=!dot.blood_plague.ticking\nactions.aoe+=/blood_boil,if=health.pct>60&(active_enemies>2||!talent.heart_strike)\nactions.aoe+=/heart_strike,if=active_enemies<3\nactions.aoe+=/death_coil,if=runic_power.deficit<20",
					["author"] = "Icy Veins",
				},
				["Demonology (wowtbc.gg)"] = {
					["source"] = "https://wowtbc.gg/wotlk/class-guides/demonology-warlock/",
					["builtIn"] = true,
					["date"] = 20230625,
					["spec"] = 9,
					["desc"] = "This priority was written based on the wowtbc.gg Wrath of the Lich King guide.\n\n2023-02-27:  Ensure target will live longer than the cast time when recommending Soul Fire.\n\n2023-06-25:  Make Soul Fire check for Decimation buff rather than talent.",
					["lists"] = {
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3",
								["action"] = "metamorphosis",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "immolation_aura",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3",
								["action"] = "shadowflame",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3",
								["action"] = "seed_of_corruption",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & active_enemies < 4",
								["action"] = "corruption",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & active_enemies < 4",
								["action"] = "immolate",
								["cycle_targets"] = 1,
							}, -- [6]
						},
						["default"] = {
							{
								["action"] = "demonic_empowerment",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & target.time_to_die > dot.immolate.duration",
								["action"] = "immolate",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "debuff.my_curse.down & curse_grouped",
								["action"] = "group_curse",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "debuff.my_curse.down",
								["action"] = "solo_curse",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & target.time_to_die > dot.corruption.duration",
								["action"] = "corruption",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "fight_remains > 210 || boss & fight_remains < 40",
								["action"] = "metamorphosis",
							}, -- [7]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.metamorphosis.up & target.distance > 8",
								["action"] = "demon_charge",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "immolation_aura",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies > 1",
								["list_name"] = "aoe",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.improved_shadow_bolt.enabled & debuff.shadow_mastery.remains < cast_time + 2",
								["action"] = "shadow_bolt",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "glyph.life_tap.enabled & buff.life_tap.down",
								["action"] = "life_tap",
							}, -- [13]
							{
								["action"] = "metamorphosis",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.decimation.up & target.time_to_die > cast_time",
								["action"] = "soul_fire",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.molten_core.up",
								["action"] = "incinerate",
							}, -- [16]
							{
								["action"] = "shadow_bolt",
								["enabled"] = true,
							}, -- [17]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.armor.down",
								["action"] = "fel_armor",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! pet.active",
								["action"] = "summon_felguard",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! pet.active",
								["action"] = "summon_voidwalker",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! pet.active",
								["action"] = "summon_imp",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "glyph.life_tap.enabled & buff.life_tap.down",
								["action"] = "life_tap",
							}, -- [5]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.improved_shadow_bolt.enabled",
								["action"] = "soul_fire",
							}, -- [7]
						},
					},
					["version"] = 20230625,
					["warnings"] = "Imported 3 action lists.\n",
					["author"] = "wowtbc.gg",
					["profile"] = "## Demonology Warlock\n## 25 June 2023\n\nactions.precombat+=/fel_armor,if=buff.armor.down\nactions.precombat+=/summon_felguard,if=!pet.active\nactions.precombat+=/summon_voidwalker,if=!pet.active\nactions.precombat+=/summon_imp,if=!pet.active\nactions.precombat+=/life_tap,if=glyph.life_tap.enabled&buff.life_tap.down\nactions.precombat+=/potion\nactions.precombat+=/soul_fire,if=talent.improved_shadow_bolt.enabled\n\nactions+=/demonic_empowerment\nactions+=/potion\nactions+=/immolate,if=!ticking&target.time_to_die>dot.immolate.duration\nactions+=/group_curse,if=debuff.my_curse.down&curse_grouped\nactions+=/solo_curse,if=debuff.my_curse.down\nactions+=/corruption,if=!ticking&target.time_to_die>dot.corruption.duration\nactions+=/metamorphosis,if=fight_remains>210||boss&fight_remains<40\nactions+=/use_items\nactions+=/demon_charge,if=buff.metamorphosis.up&target.distance>8\nactions+=/immolation_aura,if=!up\nactions+=/call_action_list,name=aoe,strict=1,if=active_enemies>1\nactions+=/shadow_bolt,if=talent.improved_shadow_bolt.enabled&debuff.shadow_mastery.remains<cast_time+2\nactions+=/life_tap,if=glyph.life_tap.enabled&buff.life_tap.down\nactions+=/metamorphosis\nactions+=/soul_fire,if=buff.decimation.up&target.time_to_die>cast_time\nactions+=/incinerate,if=buff.molten_core.up\nactions+=/shadow_bolt\n\nactions.aoe+=/metamorphosis,if=active_enemies>3\nactions.aoe+=/immolation_aura,if=!up\nactions.aoe+=/shadowflame,if=active_enemies>3\nactions.aoe+=/seed_of_corruption,if=active_enemies>3\nactions.aoe+=/corruption,cycle_targets=1,if=!ticking&active_enemies<4\nactions.aoe+=/immolate,cycle_targets=1,if=!ticking&active_enemies<4",
				},
				["Feral Tank (IV)"] = {
					["builtIn"] = true,
					["date"] = 20230613,
					["spec"] = 11,
					["desc"] = "WotLK Feral Druid Tank Priorities\n\nToggle advanced rotation recommendations in the class options.",
					["profile"] = "actions.precombat+=/mark_of_the_wild,if=!up&!buff.gift_of_the_wild.up\nactions.precombat+=/thorns,if=!up\nactions.precombat+=/dire_bear_form,if=!up\nactions.precombat+=/potion\n\nactions+=/call_action_list,name=init\nactions+=/use_items\nactions+=/potion\nactions+=/hyperspeed_acceleration,use_off_gcd=1\nactions+=/run_action_list,name=bear_aoe,if=buff.dire_bear_form.up&active_enemies>4\nactions+=/run_action_list,name=bear,if=buff.dire_bear_form.up\nactions+=/dire_bear_form,if=!up\n\nactions.init+=/variable,name=time_to_die,value=(debuff.training_dummy.up&300)||target.time_to_die\nactions.init+=/variable,name=build_lacerate,value=!debuff.lacerate.up||debuff.lacerate.stack<5\nactions.init+=/variable,name=build_lacerate_cost,op=setif,if=variable.build_lacerate,value=action.lacerate.spend*(5-debuff.lacerate.stack),value_else=0\nactions.init+=/variable,name=maintain_lacerate,value=!variable.build_lacerate&debuff.lacerate.remains<8&debuff.lacerate.remains<variable.time_to_die\nactions.init+=/variable,name=maintain_lacerate_cost,op=setif,if=variable.maintain_lacerate,value=action.lacerate.spend,value_else=0\nactions.init+=/variable,name=emergency_lacerate,value=debuff.lacerate.up&debuff.lacerate.remains<4.5&debuff.lacerate.remains<variable.time_to_die\n\nactions.bear+=/faerie_fire_feral,if=ff_procs_ooc&!buff.clearcasting.up\nactions.bear+=/enrage,use_off_gcd=1,if=time<10\nactions.bear+=/berserk\nactions.bear+=/maul,use_off_gcd=1,if=rage.current>action.maul.spend+variable.build_lacerate_cost+variable.maintain_lacerate_cost+action.mangle_bear.spend\nactions.bear+=/lacerate,if=variable.emergency_lacerate\nactions.bear+=/mangle_bear\nactions.bear+=/faerie_fire_feral\nactions.bear+=/lacerate,if=variable.build_lacerate||variable.maintain_lacerate\nactions.bear+=/swipe_bear,if=rage.current>60\n\nactions.bear_aoe+=/enrage,use_off_gcd=1,if=time<10\nactions.bear_aoe+=/berserk\nactions.bear_aoe+=/maul,cycle_targets=1,use_off_gcd=1,if=rage.current>60\nactions.bear_aoe+=/swipe_bear,cycle_targets=1",
					["version"] = 20230613,
					["warnings"] = "Imported 5 action lists.\n",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "init",
							}, -- [1]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [3]
							{
								["use_off_gcd"] = 1,
								["action"] = "hyperspeed_acceleration",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.dire_bear_form.up & active_enemies > 4",
								["action"] = "run_action_list",
								["list_name"] = "bear_aoe",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.dire_bear_form.up",
								["action"] = "run_action_list",
								["list_name"] = "bear",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "dire_bear_form",
							}, -- [7]
						},
						["init"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( debuff.training_dummy.up & 300 ) || target.time_to_die",
								["var_name"] = "time_to_die",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! debuff.lacerate.up || debuff.lacerate.stack < 5",
								["var_name"] = "build_lacerate",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "build_lacerate_cost",
								["criteria"] = "variable.build_lacerate",
								["value_else"] = "0",
								["value"] = "action.lacerate.spend * ( 5 - debuff.lacerate.stack )",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.build_lacerate & debuff.lacerate.remains < 8 & debuff.lacerate.remains < variable.time_to_die",
								["var_name"] = "maintain_lacerate",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "maintain_lacerate_cost",
								["criteria"] = "variable.maintain_lacerate",
								["value_else"] = "0",
								["value"] = "action.lacerate.spend",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "debuff.lacerate.up & debuff.lacerate.remains < 4.5 & debuff.lacerate.remains < variable.time_to_die",
								["var_name"] = "emergency_lacerate",
							}, -- [6]
						},
						["bear"] = {
							{
								["enabled"] = true,
								["criteria"] = "ff_procs_ooc & ! buff.clearcasting.up",
								["action"] = "faerie_fire_feral",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "enrage",
								["criteria"] = "time < 10",
								["use_off_gcd"] = 1,
							}, -- [2]
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "maul",
								["criteria"] = "rage.current > action.maul.spend + variable.build_lacerate_cost + variable.maintain_lacerate_cost + action.mangle_bear.spend",
								["use_off_gcd"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.emergency_lacerate",
								["action"] = "lacerate",
							}, -- [5]
							{
								["action"] = "mangle_bear",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "faerie_fire_feral",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "variable.build_lacerate || variable.maintain_lacerate",
								["action"] = "lacerate",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "rage.current > 60",
								["action"] = "swipe_bear",
							}, -- [9]
						},
						["bear_aoe"] = {
							{
								["enabled"] = true,
								["action"] = "enrage",
								["criteria"] = "time < 10",
								["use_off_gcd"] = 1,
							}, -- [1]
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "maul",
								["cycle_targets"] = 1,
								["use_off_gcd"] = 1,
								["criteria"] = "rage.current > 60",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "swipe_bear",
								["cycle_targets"] = 1,
							}, -- [4]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "! up & ! buff.gift_of_the_wild.up",
								["action"] = "mark_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "thorns",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "dire_bear_form",
							}, -- [3]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [4]
						},
					},
					["basedOn"] = "Feral DPS (IV)",
					["author"] = "Defzach",
				},
				["Arms"] = {
					["builtIn"] = true,
					["date"] = 20230226,
					["spec"] = 1,
					["desc"] = "Arms Warrior priority for Hekili",
					["profile"] = "actions.precombat+=/berserker_stance,if=buff.stance.down\nactions.precombat+=/commanding_shout,if=assigned_shout.commanding_shout&buff.my_battle_shout.down&buff.my_commanding_shout.down\nactions.precombat+=/battle_shout,if=assigned_shout.battle_shout&buff.my_battle_shout.down&buff.my_commanding_shout.down\n\nactions+=/call_action_list,name=init\nactions+=/sunder_armor,if=variable.should_sunder&variable.emergency_sunder\nactions+=/pummel\nactions+=/run_action_list,name=berserker_stance,if=buff.berserker_stance.up\nactions+=/run_action_list,name=battle_stance,if=buff.battle_stance.up\nactions+=/run_action_list,name=defensive_stance,if=buff.defensive_stance.up\n\nactions.init+=/variable,name=time_to_die,value=(debuff.training_dummy.up&300)||target.time_to_die\nactions.init+=/variable,name=execute_phase,value=target.health.pct<20\nactions.init+=/variable,name=should_sunder,value=settings.debuff_sunder_enabled&variable.time_to_die>((5-debuff.sunder_armor.stack)*(1.5+latency))+3\nactions.init+=/variable,name=build_sunder,value=!debuff.major_armor_reduction.up||(debuff.sunder_armor.up&debuff.sunder_armor.stack<5)\nactions.init+=/variable,name=maintain_sunder,value=!variable.build_sunder&debuff.sunder_armor.stack=5&debuff.sunder_armor.remains<7&cooldown.bloodthirst.remains&cooldown.whirlwind.remains&!buff.bloodsurge.up\nactions.init+=/variable,name=emergency_sunder,value=debuff.sunder_armor.up&debuff.sunder_armor.remains<1.5\n\nactions.battle_stance+=/charge,if=target.outside8\nactions.battle_stance+=/bloodrage,use_off_gcd=1,if=rage.deficit>20\nactions.battle_stance+=/heroic_strike,use_off_gcd=1,if=rage.current>=settings.queueing_threshold&active_enemies=1&!buff.recklessness.up&(!variable.execute_phase||settings.execute_queueing_enabled)\nactions.battle_stance+=/cleave,use_off_gcd=1,if=rage.current>=settings.queueing_threshold&active_enemies>1&!buff.recklessness.up&(!variable.execute_phase||settings.execute_queueing_enabled)\nactions.battle_stance+=/sunder_armor,if=variable.should_sunder&(variable.build_sunder||variable.maintain_sunder)\nactions.battle_stance+=/shattering_throw,if=buff.bloodlust.up&debuff.shattering_throw.down\nactions.battle_stance+=/potion\nactions.battle_stance+=/use_items\nactions.battle_stance+=/hyperspeed_acceleration\nactions.battle_stance+=/rend,if=debuff.rend.remains<=settings.rend_refresh_time\nactions.battle_stance+=/overpower,if=(buff.overpower_ready.up&!buff.taste_for_blood.up)||(buff.taste_for_blood.up&(!settings.optimize_overpower||buff.taste_for_blood.remains<1.5))\nactions.battle_stance+=/victory_rush\nactions.battle_stance+=/berserker_stance,if=debuff.rend.remains>12&cooldown.bladestorm.up&cooldown.recklessness.up\nactions.battle_stance+=/sweeping_strikes,use_off_gcd=1,if=active_enemies>1\nactions.battle_stance+=/bladestorm,if=debuff.rend.remains>=action.bladestorm.duration+action.overpower.gcd&(!variable.execute_phase||active_enemies>3)\nactions.battle_stance+=/execute\nactions.battle_stance+=/bladestorm,if=debuff.rend.remains>=action.bladestorm.duration+action.overpower.gcd\nactions.battle_stance+=/mortal_strike\nactions.battle_stance+=/demoralizing_shout,if=settings.debuff_demoshout_enabled&!debuff.demoralizing_shout.up\nactions.battle_stance+=/overpower,if=optimize_overpower&buff.taste_for_blood.up\nactions.battle_stance+=/slam,if=!moving\n\nactions.berserker_stance+=/recklessness,if=cooldown.bladestorm.remains<1.5||debuff.shattering_throw.up\nactions.berserker_stance+=/battle_stance\n\nactions.defensive_stance+=/berserker_stance",
					["version"] = 20230226,
					["warnings"] = "Imported 6 action lists.\n",
					["author"] = "Defox",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "init",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_sunder & variable.emergency_sunder",
								["action"] = "sunder_armor",
							}, -- [2]
							{
								["action"] = "pummel",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.berserker_stance.up",
								["list_name"] = "berserker_stance",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.battle_stance.up",
								["list_name"] = "battle_stance",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.defensive_stance.up",
								["list_name"] = "defensive_stance",
							}, -- [6]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.stance.down",
								["action"] = "berserker_stance",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.commanding_shout & buff.my_battle_shout.down & buff.my_commanding_shout.down",
								["action"] = "commanding_shout",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.battle_shout & buff.my_battle_shout.down & buff.my_commanding_shout.down",
								["action"] = "battle_shout",
							}, -- [3]
						},
						["init"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( debuff.training_dummy.up & 300 ) || target.time_to_die",
								["var_name"] = "time_to_die",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "target.health.pct < 20",
								["var_name"] = "execute_phase",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "settings.debuff_sunder_enabled & variable.time_to_die > ( ( 5 - debuff.sunder_armor.stack ) * ( 1.5 + latency ) ) + 3",
								["var_name"] = "should_sunder",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! debuff.major_armor_reduction.up || ( debuff.sunder_armor.up & debuff.sunder_armor.stack < 5 )",
								["var_name"] = "build_sunder",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.build_sunder & debuff.sunder_armor.stack = 5 & debuff.sunder_armor.remains < 7 & cooldown.bloodthirst.remains & cooldown.whirlwind.remains & ! buff.bloodsurge.up",
								["var_name"] = "maintain_sunder",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "debuff.sunder_armor.up & debuff.sunder_armor.remains < 1.5",
								["var_name"] = "emergency_sunder",
							}, -- [6]
						},
						["battle_stance"] = {
							{
								["enabled"] = true,
								["criteria"] = "target.outside8",
								["action"] = "charge",
							}, -- [1]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "bloodrage",
								["criteria"] = "rage.deficit > 20",
							}, -- [2]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "heroic_strike",
								["criteria"] = "rage.current >= settings.queueing_threshold & active_enemies = 1 & ! buff.recklessness.up & ( ! variable.execute_phase || settings.execute_queueing_enabled )",
							}, -- [3]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "cleave",
								["criteria"] = "rage.current >= settings.queueing_threshold & active_enemies > 1 & ! buff.recklessness.up & ( ! variable.execute_phase || settings.execute_queueing_enabled )",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_sunder & ( variable.build_sunder || variable.maintain_sunder )",
								["action"] = "sunder_armor",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.up & debuff.shattering_throw.down",
								["action"] = "shattering_throw",
							}, -- [6]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "hyperspeed_acceleration",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "debuff.rend.remains <= settings.rend_refresh_time",
								["action"] = "rend",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( buff.overpower_ready.up & ! buff.taste_for_blood.up ) || ( buff.taste_for_blood.up & ( ! settings.optimize_overpower || buff.taste_for_blood.remains < 1.5 ) )",
								["action"] = "overpower",
							}, -- [11]
							{
								["action"] = "victory_rush",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "debuff.rend.remains > 12 & cooldown.bladestorm.up & cooldown.recklessness.up",
								["action"] = "berserker_stance",
							}, -- [13]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "sweeping_strikes",
								["criteria"] = "active_enemies > 1",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "debuff.rend.remains >= action.bladestorm.duration + action.overpower.gcd & ( ! variable.execute_phase || active_enemies > 3 )",
								["action"] = "bladestorm",
							}, -- [15]
							{
								["action"] = "execute",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "debuff.rend.remains >= action.bladestorm.duration + action.overpower.gcd",
								["action"] = "bladestorm",
							}, -- [17]
							{
								["action"] = "mortal_strike",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "settings.debuff_demoshout_enabled & ! debuff.demoralizing_shout.up",
								["action"] = "demoralizing_shout",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "optimize_overpower & buff.taste_for_blood.up",
								["action"] = "overpower",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "! moving",
								["action"] = "slam",
							}, -- [21]
						},
						["berserker_stance"] = {
							{
								["enabled"] = true,
								["criteria"] = "cooldown.bladestorm.remains < 1.5 || debuff.shattering_throw.up",
								["action"] = "recklessness",
							}, -- [1]
							{
								["action"] = "battle_stance",
								["enabled"] = true,
							}, -- [2]
						},
						["defensive_stance"] = {
							{
								["action"] = "berserker_stance",
								["enabled"] = true,
							}, -- [1]
						},
					},
				},
				["Blood (IV)"] = {
					["source"] = "https://www.icy-veins.com/wotlk-classic/blood-death-knight-tank-pve-rotation-cooldowns-abilities",
					["builtIn"] = true,
					["date"] = 20230411,
					["spec"] = 6,
					["desc"] = "This priority is based on the Icy Veins guide.",
					["lists"] = {
						["aoe"] = {
							{
								["action"] = "death_and_decay",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "dot.frost_fever.ticking & dot.blood_plague.ticking & ( active_dot.frost_fever + active_dot.blood_plague < true_active_enemies * 2 )",
								["action"] = "pestilence",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "icy_touch",
								["criteria"] = "! dot.frost_fever.ticking",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "plague_strike",
								["criteria"] = "! dot.blood_plague.ticking",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "health.pct > 60 & ( active_enemies > 2 || ! talent.heart_strike.enabled )",
								["action"] = "blood_boil",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3",
								["action"] = "heart_strike",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < 20",
								["action"] = "death_coil",
							}, -- [7]
						},
						["default"] = {
							{
								["action"] = "mind_freeze",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "down",
								["action"] = "horn_of_winter",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "time < 2",
								["action"] = "death_grip",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "health.pct <= 60",
								["action"] = "death_strike",
							}, -- [4]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "unholy_frenzy",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies > 1",
								["list_name"] = "aoe",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "dot.blood_plague.ticking & dot.blood_plague.refreshable || dot.frost_fever.ticking & dot.frost_fever.refreshable",
								["action"] = "pestilence",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! dot.frost_fever.ticking || frost_runes.time_to_max < gcd",
								["action"] = "icy_touch",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! dot.blood_plague.ticking",
								["action"] = "plague_strike",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "blood_runes.time_to_max < gcd",
								["action"] = "blood_strike",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "health.current + action.death_strike.healing < health.max & dot.frost_fever.ticking & dot.blood_plague.ticking",
								["action"] = "death_strike",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( glyph.blood_tap.enabled || health.pct > 60 ) & blood_runes.current = 0",
								["action"] = "blood_tap",
							}, -- [13]
							{
								["action"] = "rune_strike",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "heart_strike",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < 20",
								["action"] = "death_coil",
							}, -- [16]
							{
								["action"] = "blood_strike",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "( blood_runes.current + frost_runes.current + unholy_runes.current ) < 2",
								["action"] = "empower_rune_weapon",
							}, -- [18]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.presence.down",
								["action"] = "frost_presence",
							}, -- [1]
						},
					},
					["version"] = 20230411,
					["warnings"] = "WARNING:  The import for 'aoe' required some automated changes.\nLine 5: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nImported 3 action lists.\n",
					["author"] = "Icy Veins",
					["profile"] = "## Blood Death Knight (Icy Veins)\n## 2023-04-11\n\nactions.precombat+=/frost_presence,if=buff.presence.down\n\nactions+=/mind_freeze\nactions+=/horn_of_winter,if=down\nactions+=/death_grip,if=time<2\nactions+=/death_strike,if=health.pct<=60\nactions+=/use_items\nactions+=/unholy_frenzy\nactions+=/run_action_list,name=aoe,strict=1,if=active_enemies>1\nactions+=/pestilence,if=dot.blood_plague.ticking&dot.blood_plague.refreshable||dot.frost_fever.ticking&dot.frost_fever.refreshable\nactions+=/icy_touch,if=!dot.frost_fever.ticking||frost_runes.time_to_max<gcd\nactions+=/plague_strike,if=!dot.blood_plague.ticking\nactions+=/blood_strike,if=blood_runes.time_to_max<gcd\nactions+=/death_strike,if=health.current+action.death_strike.healing<health.max&dot.frost_fever.ticking&dot.blood_plague.ticking\nactions+=/blood_tap,if=(glyph.blood_tap.enabled||health.pct>60)&blood_runes.current=0\nactions+=/rune_strike\nactions+=/heart_strike\nactions+=/death_coil,if=runic_power.deficit<20\nactions+=/blood_strike\n## TODO: Determine Death Rune situation.\n## actions+=/icy_touch,if=???\nactions+=/empower_rune_weapon,if=(blood_runes.current+frost_runes.current+unholy_runes.current)<2\n\nactions.aoe+=/death_and_decay\nactions.aoe+=/pestilence,if=dot.frost_fever.ticking&dot.blood_plague.ticking&(active_dot.frost_fever+active_dot.blood_plague<true_active_enemies*2)\nactions.aoe+=/icy_touch,cycle_targets=1,if=!dot.frost_fever.ticking\nactions.aoe+=/plague_strike,cycle_targets=1,if=!dot.blood_plague.ticking\nactions.aoe+=/blood_boil,if=health.pct>60&(active_enemies>2||!talent.heart_strike)\nactions.aoe+=/heart_strike,if=active_enemies<3\nactions.aoe+=/death_coil,if=runic_power.deficit<20",
				},
				["Unholy (IV)"] = {
					["source"] = "https://www.icy-veins.com/wotlk-classic/unholy-death-knight-dps-pve-rotation-cooldowns-abilities",
					["builtIn"] = true,
					["date"] = 20220926.3,
					["spec"] = 6,
					["desc"] = "This priority is based on the Icy Veins guide.",
					["lists"] = {
						["default"] = {
							{
								["action"] = "mind_freeze",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! dot.blood_plague.ticking & target.time_to_die >= 10 & fight_remains >= 10",
								["action"] = "plague_strike",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! dot.frost_fever.ticking & target.time_to_die >= 10 & fight_remains >= 10",
								["action"] = "icy_touch",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "dot.frost_fever.ticking & dot.blood_plague.ticking & ( active_dot.frost_fever < active_enemies || active_dot.blood_plague < active_enemies )",
								["action"] = "pestilence",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & ! moving & fight_remains > 8",
								["action"] = "death_and_decay",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "dot.frost_fever.ticking & dot.blood_plague.ticking || fight_remains < 8",
								["action"] = "blood_strike",
							}, -- [6]
							{
								["action"] = "scourge_strike",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "blood_runes.current = 0",
								["action"] = "blood_tap",
							}, -- [8]
							{
								["action"] = "summon_gargoyle",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "pet.ghoul.up",
								["action"] = "ghoul_frenzy",
							}, -- [10]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit <= 15",
								["action"] = "death_coil",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.horn_of_winter.down",
								["action"] = "horn_of_winter",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! buff.blood_presence.up & action.summon_gargoyle.time_since < gcd * 2 & cooldown.blood_tap.remains",
								["action"] = "blood_presence",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "cancel_buff",
								["criteria"] = "cooldown.empower_rune_weapon.ready & blood_runes.current = 0 & frost_runes.current = 0 & unholy_runes.current = 0",
								["buff_name"] = "blood_tap",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.blood_tap.down & ( blood_runes.current + frost_runes.current + unholy_runes.current < 3 )",
								["action"] = "empower_rune_weapon",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.current > 60",
								["action"] = "death_coil",
							}, -- [17]
							{
								["action"] = "icy_touch",
								["enabled"] = true,
							}, -- [18]
							{
								["action"] = "plague_strike",
								["enabled"] = true,
							}, -- [19]
							{
								["action"] = "blood_strike",
								["enabled"] = true,
							}, -- [20]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.presence.down & cooldown.summon_gargoyle.ready",
								["action"] = "unholy_presence",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.presence.down & ! cooldown.summon_gargoyle.ready",
								["action"] = "blood_presence",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_of_ghouls.enabled",
								["action"] = "raise_dead",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "dot.frost_fever.ticking & dot.blood_plague.ticking || target.time_to_die < 10 || fight_remains < 10",
								["var_name"] = "diseases_ok",
							}, -- [4]
						},
					},
					["version"] = 20220926.3,
					["warnings"] = "Imported 2 action lists.\n",
					["profile"] = "## Unholy Death Knight (Icy Veins)\n## 2022-09-26\n\nactions.precombat+=/unholy_presence,if=buff.presence.down&cooldown.summon_gargoyle.ready\nactions.precombat+=/blood_presence,if=buff.presence.down&!cooldown.summon_gargoyle.ready\nactions.precombat+=/raise_dead,if=talent.master_of_ghouls.enabled\nactions.precombat+=/variable,name=diseases_ok,value=dot.frost_fever.ticking&dot.blood_plague.ticking||target.time_to_die<10||fight_remains<10\n\nactions+=/mind_freeze\nactions+=/plague_strike,if=!dot.blood_plague.ticking&target.time_to_die>=10&fight_remains>=10\nactions+=/icy_touch,if=!dot.frost_fever.ticking&target.time_to_die>=10&fight_remains>=10\nactions+=/pestilence,if=dot.frost_fever.ticking&dot.blood_plague.ticking&(active_dot.frost_fever<active_enemies||active_dot.blood_plague<active_enemies)\nactions+=/death_and_decay,if=active_enemies>1&!moving&fight_remains>8\nactions+=/blood_strike,if=dot.frost_fever.ticking&dot.blood_plague.ticking||fight_remains<8\nactions+=/scourge_strike\nactions+=/blood_tap,if=blood_runes.current=0\nactions+=/summon_gargoyle\nactions+=/ghoul_frenzy,if=pet.ghoul.up\nactions+=/use_items\nactions+=/death_coil,if=runic_power.deficit<=15\nactions+=/horn_of_winter,if=buff.horn_of_winter.down\nactions+=/blood_presence,if=!buff.blood_presence.up&action.summon_gargoyle.time_since<gcd*2&cooldown.blood_tap.remains\nactions+=/cancel_buff,name=blood_tap,if=cooldown.empower_rune_weapon.ready&blood_runes.current=0&frost_runes.current=0&unholy_runes.current=0\nactions+=/empower_rune_weapon,if=buff.blood_tap.down&(blood_runes.current+frost_runes.current+unholy_runes.current<3)\nactions+=/death_coil,if=runic_power.current>60\nactions+=/icy_touch\nactions+=/plague_strike\nactions+=/blood_strike",
					["author"] = "Icy Veins",
				},
				["Feral DPS"] = {
					["builtIn"] = true,
					["date"] = 20240502.4,
					["spec"] = 11,
					["desc"] = "WotLK Feral Druid Priorities\n\nToggle advanced rotation recommendations in the class options.",
					["profile"] = "actions.precombat+=/mark_of_the_wild,if=!up&!buff.mark_of_the_wild.up\n#actions.precombat+=/thorns,if=!up\nactions.precombat+=/cat_form,if=!up&!buff.bear_form.up\nactions.precombat+=/potion\n\nactions+=/use_items\nactions+=/potion\nactions+=/hyperspeed_acceleration,use_off_gcd=1,if=set_bonus.tier7feral_4pc=1&(buff.tigers_fury.up||cooldown.tigers_fury.remains>=15)\nactions+=/run_action_list,name=bearweave,if=buff.bear_form.up&bearweaving_enabled\nactions+=/run_action_list,name=bear_tank_aoe,if=buff.bear_form.up&!bearweaving_enabled&active_enemies>4&bear_mode_tank_enabled\nactions+=/run_action_list,name=bear_tank,if=buff.bear_form.up&!bearweaving_enabled&bear_mode_tank_enabled\nactions+=/run_action_list,name=cat_aoe,if=buff.cat_form.up&active_enemies>2\nactions+=/run_action_list,name=cat,if=buff.cat_form.up\nactions+=/cat_form,if=!up\n\nactions.cat+=/tigers_fury,use_off_gcd=1,if=energy.current<60-(buff.clearcasting.up&15||0)\nactions.cat+=/faerie_fire_feral,if=ff_now\n#actions.cat+=/faerie_fire_feral,if=glyph.omen_of_clarity.enabled&!buff.clearcasting.up&(target.outside2||buff.berserk.up&ff_during_berserk||!buff.berserk.up&energy.current<87)&(!rip_now||energy.current<action.rip.spend)&can_spend_ff\nactions.cat+=/feral_charge_cat,if=target.outside7\nactions.cat+=/berserk,use_off_gcd=1,if=!wait_for_tf&debuff.rip.up&!buff.clearcasting.up\nactions.cat+=/ravage,if=energy.current<=energy.max-energy.regen*(1+latency)&!buff.clearcasting.up\nactions.cat+=/shred,if=rip_now&(glyph.bloodletting.enabled&debuff.rip.up&rip_tracker[target.unit].extension<6)\nactions.cat+=/rip,if=rip_now\nactions.cat+=/savage_roar,if=roar_now\nactions.cat+=/ferocious_bite,if=bite_now\nactions.cat+=/mangle_cat,if=mangle_now\n\nactions.cat+=/rake,if=rake_now\nactions.cat+=/feral_charge_cat,if=!aggro&!buff.clearcasting.up&energy.current<=70&(!debuff.rip.up||debuff.rip.remains>3)&(!debuff.rake.up||debuff.rip.remains>3)\nactions.cat+=/bear_form,if=should_bearweave\nactions.cat+=/mark_of_the_wild,if=should_flowerweave&mana.pct>settings.min_weave_mana&energy.current<42\nactions.cat+=/shred,if=(excess_e>=action.shred.spend||buff.clearcasting.up||buff.berserk.up||energy.current=energy.max)\n\nactions.cat_aoe+=/tigers_fury,use_off_gcd=1,if=energy.current<60-(buff.clearcasting.up&15||0)\nactions.cat_aoe+=/berserk,if=energy.current>60&cooldown.tigers_fury.remains>=15\nactions.cat_aoe+=/savage_roar,if=!up&ttd>1+latency\nactions.cat_aoe+=/mangle_cat,if=(set_bonus.idol_of_the_corruptor=1||set_bonus.idol_of_mutilation=1)&combo_points.current=0&buff.savage_roar.remains<=1\nactions.cat_aoe+=/shred,if=set_bonus.idol_of_mutilation=1&combo_points.current=0&buff.savage_roar.remains<=1&(ttd>buff.savage_roar.remains+1+latency)\nactions.cat_aoe+=/rake,if=!set_bonus.idol_of_mutilation=1&combo_points.current=0&buff.savage_roar.remains<=1&(ttd>buff.savage_roar.remains+1+latency)\nactions.cat_aoe+=/swipe_cat,if=excess_e>=action.swipe_cat.spend||buff.clearcasting.up\nactions.cat_aoe+=/mark_of_the_wild,if=should_flowerweave&mana.pct>settings.min_weave_mana&energy.current<45\nactions.cat_aoe+=/faerie_fire_feral,if=ff_now\n\nactions.bearweave+=/cat_form,if=should_cat\nactions.bearweave+=/enrage,use_off_gcd=1,if=cooldown.mangle_bear.up\nactions.bearweave+=/maul,use_off_gcd=1,if=!up&!buff.clearcasting.up&rage.current>=action.maul.spend+(cooldown.mangle_bear.up&action.mangle_bear.spend||0)\nactions.bearweave+=/mangle_bear\n\nactions.bear_tank_init+=/variable,name=time_to_die,value=(debuff.training_dummy.up&300)||target.time_to_die\nactions.bear_tank_init+=/variable,name=build_lacerate,value=!debuff.lacerate.up||debuff.lacerate.stack<5\nactions.bear_tank_init+=/variable,name=build_lacerate_cost,op=setif,if=variable.build_lacerate,value=action.lacerate.spend*(5-debuff.lacerate.stack),value_else=0\nactions.bear_tank_init+=/variable,name=maintain_lacerate,value=!variable.build_lacerate&debuff.lacerate.remains<8&debuff.lacerate.remains<variable.time_to_die\nactions.bear_tank_init+=/variable,name=maintain_lacerate_cost,op=setif,if=variable.maintain_lacerate,value=action.lacerate.spend,value_else=0\nactions.bear_tank_init+=/variable,name=emergency_lacerate,value=debuff.lacerate.up&debuff.lacerate.remains<4.5&debuff.lacerate.remains<variable.time_to_die\n\nactions.bear_tank+=/call_action_list,name=bear_tank_init\nactions.bear_tank+=/enrage,use_off_gcd=1,if=time<10\nactions.bear_tank+=/berserk\nactions.bear_tank+=/maul,use_off_gcd=1,if=rage.current>action.maul.spend+variable.build_lacerate_cost+variable.maintain_lacerate_cost+action.mangle_bear.spend\nactions.bear_tank+=/lacerate,if=variable.emergency_lacerate\nactions.bear_tank+=/mangle_bear\nactions.bear_tank+=/faerie_fire_feral\nactions.bear_tank+=/lacerate,if=variable.build_lacerate||variable.maintain_lacerate\nactions.bear_tank+=/swipe_bear,if=rage.current>60\n\nactions.bear_tank_aoe+=/enrage,use_off_gcd=1,if=time<10\nactions.bear_tank_aoe+=/berserk\nactions.bear_tank_aoe+=/maul,cycle_targets=1,use_off_gcd=1,if=rage.current>60\nactions.bear_tank_aoe+=/swipe_bear,cycle_targets=1",
					["version"] = 20240502.4,
					["warnings"] = "Imported 8 action lists.\n",
					["lists"] = {
						["bear_tank"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "bear_tank_init",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "enrage",
								["criteria"] = "time < 10",
								["use_off_gcd"] = 1,
							}, -- [2]
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "maul",
								["criteria"] = "rage.current > action.maul.spend + variable.build_lacerate_cost + variable.maintain_lacerate_cost + action.mangle_bear.spend",
								["use_off_gcd"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.emergency_lacerate",
								["action"] = "lacerate",
							}, -- [5]
							{
								["action"] = "mangle_bear",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "faerie_fire_feral",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "variable.build_lacerate || variable.maintain_lacerate",
								["action"] = "lacerate",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "rage.current > 60",
								["action"] = "swipe_bear",
							}, -- [9]
						},
						["default"] = {
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "hyperspeed_acceleration",
								["criteria"] = "set_bonus.tier7feral_4pc = 1 & ( buff.tigers_fury.up || cooldown.tigers_fury.remains >= 15 )",
								["use_off_gcd"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.bear_form.up & bearweaving_enabled",
								["action"] = "run_action_list",
								["list_name"] = "bearweave",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.bear_form.up & ! bearweaving_enabled & active_enemies > 4 & bear_mode_tank_enabled",
								["action"] = "run_action_list",
								["list_name"] = "bear_tank_aoe",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.bear_form.up & ! bearweaving_enabled & bear_mode_tank_enabled",
								["action"] = "run_action_list",
								["list_name"] = "bear_tank",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.cat_form.up & active_enemies > 2",
								["action"] = "run_action_list",
								["list_name"] = "cat_aoe",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.cat_form.up",
								["action"] = "run_action_list",
								["list_name"] = "cat",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "cat_form",
							}, -- [9]
						},
						["cat"] = {
							{
								["enabled"] = true,
								["action"] = "tigers_fury",
								["criteria"] = "energy.current < 60 - ( buff.clearcasting.up & 15 || 0 )",
								["use_off_gcd"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "ff_now",
								["action"] = "faerie_fire_feral",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "target.outside7",
								["action"] = "feral_charge_cat",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "berserk",
								["criteria"] = "! wait_for_tf & debuff.rip.up & ! buff.clearcasting.up",
								["use_off_gcd"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "energy.current <= energy.max - energy.regen * ( 1 + latency ) & ! buff.clearcasting.up",
								["action"] = "ravage",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "rip_now & ( glyph.bloodletting.enabled & debuff.rip.up & rip_tracker[target.unit].extension < 6 )",
								["action"] = "shred",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "rip_now",
								["action"] = "rip",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "roar_now",
								["action"] = "savage_roar",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "bite_now",
								["action"] = "ferocious_bite",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "mangle_now",
								["action"] = "mangle_cat",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "rake_now",
								["action"] = "rake",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! aggro & ! buff.clearcasting.up & energy.current <= 70 & ( ! debuff.rip.up || debuff.rip.remains > 3 ) & ( ! debuff.rake.up || debuff.rip.remains > 3 )",
								["action"] = "feral_charge_cat",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "should_bearweave",
								["action"] = "bear_form",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "should_flowerweave & mana.pct > settings.min_weave_mana & energy.current < 42",
								["action"] = "mark_of_the_wild",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "( excess_e >= action.shred.spend || buff.clearcasting.up || buff.berserk.up || energy.current = energy.max )",
								["action"] = "shred",
							}, -- [15]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "! up & ! buff.mark_of_the_wild.up",
								["action"] = "mark_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! up & ! buff.bear_form.up",
								["action"] = "cat_form",
							}, -- [2]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [3]
						},
						["cat_aoe"] = {
							{
								["enabled"] = true,
								["action"] = "tigers_fury",
								["criteria"] = "energy.current < 60 - ( buff.clearcasting.up & 15 || 0 )",
								["use_off_gcd"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "energy.current > 60 & cooldown.tigers_fury.remains >= 15",
								["action"] = "berserk",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! up & ttd > 1 + latency",
								["action"] = "savage_roar",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( set_bonus.idol_of_the_corruptor = 1 || set_bonus.idol_of_mutilation = 1 ) & combo_points.current = 0 & buff.savage_roar.remains <= 1",
								["action"] = "mangle_cat",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.idol_of_mutilation = 1 & combo_points.current = 0 & buff.savage_roar.remains <= 1 & ( ttd > buff.savage_roar.remains + 1 + latency )",
								["action"] = "shred",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! set_bonus.idol_of_mutilation = 1 & combo_points.current = 0 & buff.savage_roar.remains <= 1 & ( ttd > buff.savage_roar.remains + 1 + latency )",
								["action"] = "rake",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "excess_e >= action.swipe_cat.spend || buff.clearcasting.up",
								["action"] = "swipe_cat",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "should_flowerweave & mana.pct > settings.min_weave_mana & energy.current < 45",
								["action"] = "mark_of_the_wild",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "ff_now",
								["action"] = "faerie_fire_feral",
							}, -- [9]
						},
						["bear_tank_init"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( debuff.training_dummy.up & 300 ) || target.time_to_die",
								["var_name"] = "time_to_die",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! debuff.lacerate.up || debuff.lacerate.stack < 5",
								["var_name"] = "build_lacerate",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "build_lacerate_cost",
								["criteria"] = "variable.build_lacerate",
								["value_else"] = "0",
								["value"] = "action.lacerate.spend * ( 5 - debuff.lacerate.stack )",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.build_lacerate & debuff.lacerate.remains < 8 & debuff.lacerate.remains < variable.time_to_die",
								["var_name"] = "maintain_lacerate",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "maintain_lacerate_cost",
								["criteria"] = "variable.maintain_lacerate",
								["value_else"] = "0",
								["value"] = "action.lacerate.spend",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "debuff.lacerate.up & debuff.lacerate.remains < 4.5 & debuff.lacerate.remains < variable.time_to_die",
								["var_name"] = "emergency_lacerate",
							}, -- [6]
						},
						["bear_tank_aoe"] = {
							{
								["enabled"] = true,
								["action"] = "enrage",
								["criteria"] = "time < 10",
								["use_off_gcd"] = 1,
							}, -- [1]
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "maul",
								["cycle_targets"] = 1,
								["use_off_gcd"] = 1,
								["criteria"] = "rage.current > 60",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "swipe_bear",
								["cycle_targets"] = 1,
							}, -- [4]
						},
						["bearweave"] = {
							{
								["enabled"] = true,
								["criteria"] = "should_cat",
								["action"] = "cat_form",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "enrage",
								["criteria"] = "cooldown.mangle_bear.up",
								["use_off_gcd"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "maul",
								["criteria"] = "! up & ! buff.clearcasting.up & rage.current >= action.maul.spend + ( cooldown.mangle_bear.up & action.mangle_bear.spend || 0 )",
								["use_off_gcd"] = 1,
							}, -- [3]
							{
								["action"] = "mangle_bear",
								["enabled"] = true,
							}, -- [4]
						},
					},
					["basedOn"] = "Feral DPS (IV)",
					["author"] = "Supernuss",
				},
				["Fury"] = {
					["builtIn"] = true,
					["date"] = 20230416,
					["spec"] = 1,
					["desc"] = "Fury Warrior priority for Hekili",
					["profile"] = "actions.precombat+=/berserker_stance,if=buff.stance.down\nactions.precombat+=/commanding_shout,if=assigned_shout.commanding_shout&buff.my_battle_shout.down&buff.my_commanding_shout.down\nactions.precombat+=/battle_shout,if=assigned_shout.battle_shout&buff.my_battle_shout.down&buff.my_commanding_shout.down\n\nactions+=/call_action_list,name=init\nactions+=/sunder_armor,if=variable.should_sunder&variable.emergency_sunder\nactions+=/pummel\nactions+=/run_action_list,name=berserker_stance,if=buff.berserker_stance.up\nactions+=/run_action_list,name=battle_stance,if=buff.battle_stance.up\nactions+=/run_action_list,name=defensive_stance,if=buff.defensive_stance.up\n\nactions.init+=/variable,name=time_to_die,value=(debuff.training_dummy.up&300)||target.time_to_die\nactions.init+=/variable,name=execute_phase,value=target.health.pct<20\nactions.init+=/variable,name=should_slam_over_execute,value=!variable.execute_phase||settings.execute_slam_prio\nactions.init+=/variable,name=should_bloodthirst,value=!variable.execute_phase||settings.execute_bloodthirst_enabled\nactions.init+=/variable,name=should_whirlwind,value=!variable.execute_phase||settings.execute_whirlwind_enabled\nactions.init+=/variable,name=should_sunder,value=settings.debuff_sunder_enabled&variable.time_to_die>((5-debuff.sunder_armor.stack)*(1.5+latency))+3\nactions.init+=/variable,name=build_sunder,value=!debuff.major_armor_reduction.up||(debuff.sunder_armor.up&debuff.sunder_armor.stack<5)\nactions.init+=/variable,name=maintain_sunder,value=!variable.build_sunder&debuff.sunder_armor.stack=5&debuff.sunder_armor.remains<7&cooldown.bloodthirst.remains&cooldown.whirlwind.remains&!buff.bloodsurge.up\nactions.init+=/variable,name=emergency_sunder,value=debuff.sunder_armor.up&debuff.sunder_armor.remains<1.5\nactions.init+=/variable,name=should_weave,value=cooldown.bloodthirst.remains>=settings.weave_cooldown_threshold&cooldown.whirlwind.remains>=settings.weave_cooldown_threshold&cooldown.recklessness.remains>1.5&cooldown.death_wish.remains>1.5&!buff.bloodsurge.up&!buff.recklessness.up&!buff.death_wish.up&rage.current<=weave_rage_threshold&target.health.pct>=settings.weave_health_threshold\nactions.init+=/variable,name=should_rend,value=variable.should_weave&rage.current>=10&debuff.rend.remains<=settings.rend_refresh_time\nactions.init+=/variable,name=should_overpower,value=variable.should_weave&rage.current>=20&(buff.overpower_ready.up||buff.taste_for_blood.up)\nactions.init+=/variable,name=weave_now,value=settings.weaving_enabled&(variable.should_rend||variable.should_overpower)\n\nactions.berserker_stance+=/bloodrage,use_off_gcd=1,if=rage.deficit>20\nactions.berserker_stance+=/heroic_strike,use_off_gcd=1,if=rage.current>=settings.queueing_threshold&active_enemies=1&!buff.recklessness.up&(!variable.execute_phase||settings.execute_queueing_enabled)\nactions.berserker_stance+=/cleave,use_off_gcd=1,if=rage.current>=settings.queueing_threshold&active_enemies>1&!buff.recklessness.up&(!variable.execute_phase||settings.execute_queueing_enabled)\nactions.berserker_stance+=/sunder_armor,if=variable.should_sunder&(variable.build_sunder||variable.maintain_sunder)\nactions.berserker_stance+=/death_wish,if=debuff.major_armor_reduction.up&!debuff.sunder_armor.up||debuff.sunder_armor.stack=5\nactions.berserker_stance+=/use_items,use_off_gcd=1\nactions.berserker_stance+=/hyperspeed_acceleration,use_off_gcd=1\nactions.berserker_stance+=/slam,if=buff.bloodsurge.up&main_gcd_spell_slam&variable.should_slam_over_execute\nactions.berserker_stance+=/bloodthirst,if=variable.should_bloodthirst&main_gcd_spell_bt\nactions.berserker_stance+=/whirlwind,if=variable.should_whirlwind&main_gcd_spell_ww\nactions.berserker_stance+=/slam,if=buff.bloodsurge.up&variable.should_slam_over_execute\nactions.berserker_stance+=/bloodthirst,if=variable.should_bloodthirst\nactions.berserker_stance+=/whirlwind,if=variable.should_whirlwind\nactions.berserker_stance+=/recklessness,if=(buff.death_wish.up||debuff.shattering_throw.up)\nactions.berserker_stance+=/execute\nactions.berserker_stance+=/slam,if=buff.bloodsurge.up\nactions.berserker_stance+=/demoralizing_shout,if=settings.debuff_demoshout_enabled&!debuff.demoralizing_shout.up\nactions.berserker_stance+=/battle_stance,use_off_gcd=1,if=variable.weave_now\n\nactions.battle_stance+=/shattering_throw,if=buff.bloodlust.up&debuff.shattering_throw.down\nactions.battle_stance+=/berserker_stance,use_off_gcd=1,if=(cooldown.bloodthirst.up||cooldown.whirlwind.up||rage.current<10)&(debuff.shattering_throw.up||!buff.bloodlust.up)\nactions.battle_stance+=/rend,if=!up||debuff.rend.remains<=settings.rend_refresh_time\nactions.battle_stance+=/overpower,if=talent.improved_overpower.rank>0\n\nactions.defensive_stance+=/berserker_stance,use_off_gcd=1",
					["version"] = 20230416,
					["warnings"] = "Imported 6 action lists.\n",
					["author"] = "Defox",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "init",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_sunder & variable.emergency_sunder",
								["action"] = "sunder_armor",
							}, -- [2]
							{
								["action"] = "pummel",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.berserker_stance.up",
								["list_name"] = "berserker_stance",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.battle_stance.up",
								["list_name"] = "battle_stance",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.defensive_stance.up",
								["list_name"] = "defensive_stance",
							}, -- [6]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.stance.down",
								["action"] = "berserker_stance",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.commanding_shout & buff.my_battle_shout.down & buff.my_commanding_shout.down",
								["action"] = "commanding_shout",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.battle_shout & buff.my_battle_shout.down & buff.my_commanding_shout.down",
								["action"] = "battle_shout",
							}, -- [3]
						},
						["defensive_stance"] = {
							{
								["use_off_gcd"] = 1,
								["action"] = "berserker_stance",
								["enabled"] = true,
							}, -- [1]
						},
						["battle_stance"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.up & debuff.shattering_throw.down",
								["action"] = "shattering_throw",
							}, -- [1]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "berserker_stance",
								["criteria"] = "( cooldown.bloodthirst.up || cooldown.whirlwind.up || rage.current < 10 ) & ( debuff.shattering_throw.up || ! buff.bloodlust.up )",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! up || debuff.rend.remains <= settings.rend_refresh_time",
								["action"] = "rend",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.improved_overpower.rank > 0",
								["action"] = "overpower",
							}, -- [4]
						},
						["berserker_stance"] = {
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "bloodrage",
								["criteria"] = "rage.deficit > 20",
							}, -- [1]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "heroic_strike",
								["criteria"] = "rage.current >= settings.queueing_threshold & active_enemies = 1 & ! buff.recklessness.up & ( ! variable.execute_phase || settings.execute_queueing_enabled )",
							}, -- [2]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "cleave",
								["criteria"] = "rage.current >= settings.queueing_threshold & active_enemies > 1 & ! buff.recklessness.up & ( ! variable.execute_phase || settings.execute_queueing_enabled )",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_sunder & ( variable.build_sunder || variable.maintain_sunder )",
								["action"] = "sunder_armor",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "debuff.major_armor_reduction.up & ! debuff.sunder_armor.up || debuff.sunder_armor.stack = 5",
								["action"] = "death_wish",
							}, -- [5]
							{
								["use_off_gcd"] = 1,
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [6]
							{
								["use_off_gcd"] = 1,
								["action"] = "hyperspeed_acceleration",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodsurge.up & main_gcd_spell_slam & variable.should_slam_over_execute",
								["action"] = "slam",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_bloodthirst & main_gcd_spell_bt",
								["action"] = "bloodthirst",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_whirlwind & main_gcd_spell_ww",
								["action"] = "whirlwind",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodsurge.up & variable.should_slam_over_execute",
								["action"] = "slam",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_bloodthirst",
								["action"] = "bloodthirst",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_whirlwind",
								["action"] = "whirlwind",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( buff.death_wish.up || debuff.shattering_throw.up )",
								["action"] = "recklessness",
							}, -- [14]
							{
								["action"] = "execute",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodsurge.up",
								["action"] = "slam",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "settings.debuff_demoshout_enabled & ! debuff.demoralizing_shout.up",
								["action"] = "demoralizing_shout",
							}, -- [17]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "battle_stance",
								["criteria"] = "variable.weave_now",
							}, -- [18]
						},
						["init"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( debuff.training_dummy.up & 300 ) || target.time_to_die",
								["var_name"] = "time_to_die",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "target.health.pct < 20",
								["var_name"] = "execute_phase",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.execute_phase || settings.execute_slam_prio",
								["var_name"] = "should_slam_over_execute",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.execute_phase || settings.execute_bloodthirst_enabled",
								["var_name"] = "should_bloodthirst",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.execute_phase || settings.execute_whirlwind_enabled",
								["var_name"] = "should_whirlwind",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "settings.debuff_sunder_enabled & variable.time_to_die > ( ( 5 - debuff.sunder_armor.stack ) * ( 1.5 + latency ) ) + 3",
								["var_name"] = "should_sunder",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! debuff.major_armor_reduction.up || ( debuff.sunder_armor.up & debuff.sunder_armor.stack < 5 )",
								["var_name"] = "build_sunder",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.build_sunder & debuff.sunder_armor.stack = 5 & debuff.sunder_armor.remains < 7 & cooldown.bloodthirst.remains & cooldown.whirlwind.remains & ! buff.bloodsurge.up",
								["var_name"] = "maintain_sunder",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "debuff.sunder_armor.up & debuff.sunder_armor.remains < 1.5",
								["var_name"] = "emergency_sunder",
							}, -- [9]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "cooldown.bloodthirst.remains >= settings.weave_cooldown_threshold & cooldown.whirlwind.remains >= settings.weave_cooldown_threshold & cooldown.recklessness.remains > 1.5 & cooldown.death_wish.remains > 1.5 & ! buff.bloodsurge.up & ! buff.recklessness.up & ! buff.death_wish.up & rage.current <= weave_rage_threshold & target.health.pct >= settings.weave_health_threshold",
								["var_name"] = "should_weave",
							}, -- [10]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.should_weave & rage.current >= 10 & debuff.rend.remains <= settings.rend_refresh_time",
								["var_name"] = "should_rend",
							}, -- [11]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.should_weave & rage.current >= 20 & ( buff.overpower_ready.up || buff.taste_for_blood.up )",
								["var_name"] = "should_overpower",
							}, -- [12]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "settings.weaving_enabled & ( variable.should_rend || variable.should_overpower )",
								["var_name"] = "weave_now",
							}, -- [13]
						},
					},
				},
				["Affliction"] = {
					["builtIn"] = true,
					["date"] = 20230226,
					["author"] = "Kiloc",
					["desc"] = "2023-02-27: Fix Life Tap logic to not refresh w/o glyph active.",
					["lists"] = {
						["life"] = {
							{
								["action"] = "death_coil",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "drain_life",
								["enabled"] = true,
							}, -- [2]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies = 1 & target.health.pct > 26",
								["list_name"] = "st",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies < 4 & active_enemies > 1 & target.health.pct > 26",
								["list_name"] = "aoe",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies > 3 & target.health.pct > 26",
								["list_name"] = "seed",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "target.health.pct < 26",
								["list_name"] = "execute",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "health.pct < 25",
								["list_name"] = "life",
							}, -- [5]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["action"] = "fel_armor",
								["description"] = "APL v3.4.1-1.6.5 #",
								["criteria"] = "buff.armor.down || buff.armor.remains < 180",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! pet.active & combat = 0",
								["action"] = "summon_felhunter",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! pet.active & combat = 0",
								["action"] = "summon_voidwalker",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! pet.active & combat = 0",
								["action"] = "summon_imp",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "glyph.life_tap.enabled & buff.life_tap.down",
								["action"] = "life_tap",
							}, -- [5]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.improved_shadow_bolt.enabled & settings.shadow_mastery & debuff.shadow_mastery.down",
								["action"] = "shadow_bolt",
							}, -- [7]
						},
						["execute"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "dot.unstable_affliction.remains < cast_time & dot.haunt.remains > cast_time + travel_time + latency & time_to_die >= 15",
								["action"] = "unstable_affliction",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! ticking || dot.haunt.remains <= cast_time + travel_time + latency",
								["action"] = "haunt",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! ticking || persistent_multiplier > dot.corruption.pmultiplier",
								["action"] = "corruption",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "debuff.my_curse.down & time_to_die >= 24",
								["action"] = "curse_of_agony",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "mana.pct < 10 || glyph.life_tap.enabled & buff.life_tap.remains < 5",
								["action"] = "life_tap",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "time_to_die < 14",
								["action"] = "hyperspeed_acceleration",
							}, -- [8]
							{
								["interrupt_if"] = "ticks>=1&(dot.haunt.remains<=cast_time+travel_time+latency||dot.unstable_affliction.remains<=action.unstable_affliction.cast_time+latency&target.time_to_die>=15||debuff.my_curse.down&target.time_to_die>=24)",
								["action"] = "drain_soul",
								["enabled"] = true,
							}, -- [9]
						},
						["seed"] = {
							{
								["enabled"] = true,
								["criteria"] = "target.distance < 10",
								["action"] = "shadowflame",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3 & ! ticking",
								["action"] = "seed_of_corruption",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "mana.pct < 10 || glyph.life_tap.enabled & buff.life_tap.remains < 5",
								["action"] = "life_tap",
							}, -- [3]
						},
						["st"] = {
							{
								["enabled"] = true,
								["criteria"] = "! ticking & debuff.shadow_mastery.ticking || persistent_multiplier > dot.corruption.pmultiplier",
								["action"] = "corruption",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "time_to_die > 90",
								["action"] = "hyperspeed_acceleration",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "dot.haunt.remains > cast_time + travel_time + latency & dot.unstable_affliction.remains < cast_time + latency",
								["action"] = "unstable_affliction",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! ticking || dot.haunt.remains < cast_time + travel_time + latency",
								["action"] = "haunt",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & target.time_to_die > 15 & dot.unstable_affliction.remains < cast_time + latency",
								["action"] = "unstable_affliction",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "dot.haunt.remains & dot.unstable_affliction.remains & ! ticking",
								["action"] = "curse_of_agony",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die <= 60 & mana.pct > 20 & inferno_enabled",
								["action"] = "inferno",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "debuff.my_curse.down",
								["action"] = "curse_of_agony",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "mana.pct < 10 || glyph.life_tap.enabled & buff.life_tap.remains < 5",
								["action"] = "life_tap",
							}, -- [9]
							{
								["target.health.pct"] = "<26",
								["action"] = "potion",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "target.distance < 10",
								["action"] = "shadowflame",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.improved_shadow_bolt.enabled & settings.shadow_mastery & debuff.shadow_mastery.remains < cast_time + 2",
								["action"] = "shadow_bolt",
							}, -- [12]
							{
								["action"] = "shadow_bolt",
								["enabled"] = true,
							}, -- [13]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "mana.pct < 10 || glyph.life_tap.enabled & buff.life_tap.remains < 5",
								["action"] = "life_tap",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "corruption",
								["cycle_targets"] = 1,
								["max_cycle_targets"] = "1",
								["criteria"] = "! ticking",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "unstable_affliction",
								["cycle_targets"] = 1,
								["max_cycle_targets"] = "3",
								["criteria"] = "! ticking",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "curse_of_agony",
								["cycle_targets"] = 1,
								["max_cycle_targets"] = "3",
								["criteria"] = "! ticking",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "haunt",
								["cycle_targets"] = 1,
								["max_cycle_targets"] = "1",
								["criteria"] = "! ticking",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "target.health.pct < 25",
								["action"] = "drain_soul",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "dot.corruption.remains & dot.unstable_affliction.remains & dot.curse_of_agony.remains & dot.haunt.remains & active_enemies < 3",
								["action"] = "shadow_bolt",
							}, -- [7]
						},
					},
					["version"] = 20230226,
					["warnings"] = "Imported 7 action lists.\n",
					["profile"] = "# APL v3.4.1-1.6.5 #\nactions.precombat+=/fel_armor,if=buff.armor.down||buff.armor.remains<180\nactions.precombat+=/summon_felhunter,if=!pet.active&combat=0\nactions.precombat+=/summon_voidwalker,if=!pet.active&combat=0\nactions.precombat+=/summon_imp,if=!pet.active&combat=0\nactions.precombat+=/life_tap,if=glyph.life_tap.enabled&buff.life_tap.down\nactions.precombat+=/potion\nactions.precombat+=/shadow_bolt,if=talent.improved_shadow_bolt.enabled&settings.shadow_mastery&debuff.shadow_mastery.down\n\nactions+=/run_action_list,name=st,if=active_enemies=1&target.health.pct>26\nactions+=/run_action_list,name=aoe,if=active_enemies<4&active_enemies>1&target.health.pct>26\nactions+=/run_action_list,name=seed,if=active_enemies>3&target.health.pct>26\nactions+=/run_action_list,name=execute,if=target.health.pct<26\nactions+=/run_action_list,name=life,if=health.pct<25\n\nactions.st+=/corruption,if=!ticking&debuff.shadow_mastery.ticking||persistent_multiplier>dot.corruption.pmultiplier\nactions.st+=/hyperspeed_acceleration,if=time_to_die>90\nactions.st+=/unstable_affliction,if=dot.haunt.remains>cast_time+travel_time+latency&dot.unstable_affliction.remains<cast_time+latency\nactions.st+=/haunt,if=!ticking||dot.haunt.remains<cast_time+travel_time+latency\nactions.st+=/unstable_affliction,if=!ticking&target.time_to_die>15&dot.unstable_affliction.remains<cast_time+latency\nactions.st+=/curse_of_agony,if=dot.haunt.remains&dot.unstable_affliction.remains&!ticking\nactions.st+=/inferno,if=target.time_to_die<=60&mana.pct>20&inferno_enabled\nactions.st+=/curse_of_agony,if=debuff.my_curse.down\nactions.st+=/life_tap,if=mana.pct<10||glyph.life_tap.enabled&buff.life_tap.remains<5\nactions.st+=/potion,target.health.pct=<26\nactions.st+=/shadowflame,if=target.distance<10\nactions.st+=/shadow_bolt,if=talent.improved_shadow_bolt.enabled&settings.shadow_mastery&debuff.shadow_mastery.remains<cast_time+2\nactions.st+=/shadow_bolt\n\nactions.execute+=/potion\nactions.execute+=/use_items\nactions.execute+=/unstable_affliction,if=dot.unstable_affliction.remains<cast_time&dot.haunt.remains>cast_time+travel_time+latency&time_to_die>=15\nactions.execute+=/haunt,if=!ticking||dot.haunt.remains<=cast_time+travel_time+latency\nactions.execute+=/corruption,if=!ticking||persistent_multiplier>dot.corruption.pmultiplier\nactions.execute+=/curse_of_agony,if=debuff.my_curse.down&time_to_die>=24\nactions.execute+=/life_tap,if=mana.pct<10||glyph.life_tap.enabled&buff.life_tap.remains<5\nactions.execute+=/hyperspeed_acceleration,if=time_to_die<14\nactions.execute+=/drain_soul,interrupt_if=ticks>=1&(dot.haunt.remains<=cast_time+travel_time+latency||dot.unstable_affliction.remains<=action.unstable_affliction.cast_time+latency&target.time_to_die>=15||debuff.my_curse.down&target.time_to_die>=24)\n\nactions.seed+=/shadowflame,if=target.distance<10\nactions.seed+=/seed_of_corruption,cycle_targets=1,if=active_enemies>3&!ticking\nactions.seed+=/life_tap,if=mana.pct<10||glyph.life_tap.enabled&buff.life_tap.remains<5\n\nactions.aoe+=/life_tap,if=mana.pct<10||glyph.life_tap.enabled&buff.life_tap.remains<5\nactions.aoe+=/corruption,cycle_targets=1,max_cycle_targets=1,if=!ticking\nactions.aoe+=/unstable_affliction,cycle_targets=1,max_cycle_targets=3,if=!ticking\nactions.aoe+=/curse_of_agony,cycle_targets=1,max_cycle_targets=3,if=!ticking\nactions.aoe+=/haunt,cycle_targets=1,max_cycle_targets=1,if=!ticking\nactions.aoe+=/drain_soul,cycle_targets=1,if=target.health.pct<25\nactions.aoe+=/shadow_bolt,if=dot.corruption.remains&dot.unstable_affliction.remains&dot.curse_of_agony.remains&dot.haunt.remains&active_enemies<3\n\nactions.life+=/death_coil\nactions.life+=/drain_life",
					["spec"] = 9,
				},
				["Frost DK (IV)"] = {
					["source"] = "https://www.icy-veins.com/wotlk-classic/frost-death-knight-dps-pve-rotation-cooldowns-abilities",
					["builtIn"] = true,
					["date"] = 20221001,
					["spec"] = 6,
					["desc"] = "Frost DK priority based on Icy Veins' guide.",
					["profile"] = "## Frost Death Knight (Icy Veins)\n## 2022-10-01\n\nactions.precombat+=/blood_presence\nactions.precombat+=/horn_of_winter,if=buff.horn_of_winter.down\n\nactions+=/mind_freeze\nactions+=/icy_touch,if=!dot.frost_fever.ticking\nactions+=/howling_blast,if=glyph.howling_blast.enabled&!dot.frost_fever.ticking\nactions+=/plague_strike,if=!dot.blood_plague.ticking\nactions+=/pestilence,if=dot.frost_fever.ticking&dot.blood_plague.ticking&active_dot.frost_fever+active_dot.blood_plague<2*true_active_enemies\nactions+=/unbreakable_armor\nactions+=/blood_tap,if=blood_runes.current<2\nactions+=/obliterate\nactions+=/pestilence,if=glyph.disease.enabled&dot.frost_fever.ticking&dot.blood_plague.ticking&(dot.frost_fever.refreshable||dot.blood_plague.refreshable)\nactions+=/empower_rune_weapon,if=blood_runes.current+frost_runes.current+unholy_runes.current<3\nactions+=/use_items\nactions+=/call_action_list,name=aoe,strict=1,if=active_enemies>1\nactions+=/frost_strike,if=buff.killing_machine.up\nactions+=/howling_blast,if=buff.freezing_fog.up\nactions+=/blood_strike\nactions+=/frost_strike\n\nactions.aoe+=/howling_blast\nactions.aoe+=/death_and_decay,if=!moving&fight_remains>8",
					["version"] = 20221001,
					["warnings"] = "Imported 3 action lists.\n",
					["lists"] = {
						["aoe"] = {
							{
								["action"] = "howling_blast",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! moving & fight_remains > 8",
								["action"] = "death_and_decay",
							}, -- [2]
						},
						["default"] = {
							{
								["action"] = "mind_freeze",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! dot.frost_fever.ticking",
								["action"] = "icy_touch",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "glyph.howling_blast.enabled & ! dot.frost_fever.ticking",
								["action"] = "howling_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! dot.blood_plague.ticking",
								["action"] = "plague_strike",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "dot.frost_fever.ticking & dot.blood_plague.ticking & active_dot.frost_fever + active_dot.blood_plague < 2 * true_active_enemies",
								["action"] = "pestilence",
							}, -- [5]
							{
								["action"] = "unbreakable_armor",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "blood_runes.current < 2",
								["action"] = "blood_tap",
							}, -- [7]
							{
								["action"] = "obliterate",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "glyph.disease.enabled & dot.frost_fever.ticking & dot.blood_plague.ticking & ( dot.frost_fever.refreshable || dot.blood_plague.refreshable )",
								["action"] = "pestilence",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "blood_runes.current + frost_runes.current + unholy_runes.current < 3",
								["action"] = "empower_rune_weapon",
							}, -- [10]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies > 1",
								["list_name"] = "aoe",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.up",
								["action"] = "frost_strike",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.freezing_fog.up",
								["action"] = "howling_blast",
							}, -- [14]
							{
								["action"] = "blood_strike",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "frost_strike",
								["enabled"] = true,
							}, -- [16]
						},
						["precombat"] = {
							{
								["action"] = "blood_presence",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.horn_of_winter.down",
								["action"] = "horn_of_winter",
							}, -- [2]
						},
					},
					["author"] = "Icy-Veins",
				},
				["Destruction"] = {
					["builtIn"] = true,
					["date"] = 20230204,
					["spec"] = 9,
					["desc"] = "Destruction warlock priority for Hekili",
					["lists"] = {
						["life"] = {
							{
								["action"] = "death_coil",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "drain_life",
								["enabled"] = true,
							}, -- [2]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies < 2",
								["list_name"] = "st",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies > 1",
								["list_name"] = "aoe",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "health.pct < 25",
								["list_name"] = "life",
							}, -- [3]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["action"] = "fel_armor",
								["description"] = "APL v3.4.0-1.4.2 #",
								["criteria"] = "buff.armor.down || buff.armor.remains < 180",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! pet.active",
								["action"] = "summon_imp",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "glyph.life_tap.enabled & buff.life_tap.down",
								["action"] = "life_tap",
							}, -- [3]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [4]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3 & target.distance < 10",
								["action"] = "shadowflame",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3 & ! ticking",
								["action"] = "seed_of_corruption",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! ticking",
								["action"] = "immolate",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "corruption",
								["line_cd"] = "6",
								["criteria"] = "moving",
								["cycle_targets"] = 1,
							}, -- [4]
						},
						["st"] = {
							{
								["enabled"] = true,
								["criteria"] = "debuff.my_curse.down & curse_grouped",
								["action"] = "curse_of_the_elements",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! ticking || dot.immolate.remains < 1",
								["action"] = "immolate",
							}, -- [2]
							{
								["action"] = "conflagrate",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "debuff.my_curse.down",
								["action"] = "curse_of_agony",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "glyph.life_tap.enabled & buff.life_tap.down",
								["action"] = "life_tap",
							}, -- [5]
							{
								["action"] = "chaos_bolt",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! ticking || dot.corruption.remains < 2",
								["action"] = "corruption",
							}, -- [7]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die <= 60 & mana.pct > 20 & inferno_enabled || target.health.pct < 40 & inferno_enabled",
								["action"] = "inferno",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "moving",
								["action"] = "corruption",
								["line_cd"] = "6",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "moving & mana.pct < 80 || mana.pct < 10",
								["action"] = "life_tap",
							}, -- [12]
							{
								["action"] = "incinerate",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die > 60 & debuff.my_curse.down",
								["action"] = "curse_of_doom",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die < 60 & target.time_to_die > 30",
								["action"] = "curse_of_agony",
							}, -- [15]
						},
					},
					["version"] = 20230204,
					["warnings"] = "Imported 5 action lists.\n",
					["author"] = "Kiloc-Benediction",
					["profile"] = "# APL v3.4.0-1.4.2 #\nactions.precombat+=/fel_armor,if=buff.armor.down||buff.armor.remains<180\nactions.precombat+=/summon_imp,if=!pet.active\nactions.precombat+=/life_tap,if=glyph.life_tap.enabled&buff.life_tap.down\nactions.precombat+=/potion\n    \nactions+=/run_action_list,name=st,if=active_enemies<2\nactions+=/run_action_list,name=aoe,if=active_enemies>1\nactions+=/run_action_list,name=life,if=health.pct<25    \n    \n    \nactions.st+=/group_curse,if=debuff.my_curse.down&curse_grouped\nactions.st+=/immolate,if=!ticking||dot.immolate.remains<1\nactions.st+=/conflagrate\nactions.st+=/solo_curse,if=debuff.my_curse.down\nactions.st+=/life_tap,if=glyph.life_tap.enabled&buff.life_tap.down\nactions.st+=/chaos_bolt\nactions.st+=/corruption,if=!ticking||dot.corruption.remains<2\nactions.st+=/potion\nactions.st+=/use_items\nactions.st+=/inferno,if=target.time_to_die<=60&mana.pct>20&inferno_enabled||target.health.pct<40&inferno_enabled\nactions.st+=/corruption,line_cd=6,if=moving\nactions.st+=/life_tap,if=moving&mana.pct<80||mana.pct<10    \nactions.st+=/incinerate\nactions.st+=/curse_of_doom,if=target.time_to_die>60&debuff.my_curse.down\nactions.st+=/curse_of_agony,if=target.time_to_die<60&target.time_to_die>30\n\nactions.aoe+=/shadowflame,cycle_targets=1,if=active_enemies>3&target.distance<10\nactions.aoe+=/seed_of_corruption,cycle_targets=1,if=active_enemies>3&!ticking\nactions.aoe+=/immolate,cycle_targets=1,if=!ticking\nactions.aoe+=/corruption,line_cd=6,cycle_targets=1,if=moving\n\nactions.life+=/death_coil\nactions.life+=/drain_life",
				},
				["Protection Warrior (IV)"] = {
					["source"] = "https://www.icy-veins.com/wotlk-classic/protection-warrior-tank-pve-rotation-cooldowns-abilities",
					["builtIn"] = true,
					["date"] = 20221003,
					["spec"] = 1,
					["desc"] = "This priority is based on the Icy Veins guide.",
					["lists"] = {
						["aoe"] = {
							{
								["action"] = "thunder_clap",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "shockwave",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "revenge",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "rage > 60",
								["action"] = "cleave",
							}, -- [4]
						},
						["default"] = {
							{
								["action"] = "pummel",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "shield_bash",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "spell_reflection",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "charge",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "bloodrage",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.up & debuff.shattering_throw.down",
								["action"] = "shattering_throw",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "tanking",
								["action"] = "shield_block",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.shield_block.up",
								["action"] = "shield_slam",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "active_enemies > 1",
								["list_name"] = "aoe",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "down",
								["action"] = "demoralizing_shout",
							}, -- [11]
							{
								["action"] = "revenge",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "shield_slam",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "stat.attack_power > 3500 || active_enemies > 1",
								["action"] = "shockwave",
							}, -- [14]
							{
								["action"] = "devastate",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "rage > 60",
								["action"] = "heroic_strike",
							}, -- [16]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.stance.down",
								["action"] = "defensive_stance",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.battle_shout.down",
								["action"] = "battle_shout",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.my_battle_shout.down",
								["action"] = "commanding_shout",
							}, -- [3]
						},
					},
					["version"] = 20221003,
					["warnings"] = "Imported 3 action lists.\n",
					["profile"] = "## Protection Warrior (Icy Veins)\n## 2022-10-03\n\nactions.precombat+=/defensive_stance,if=buff.stance.down\nactions.precombat+=/battle_shout,if=buff.battle_shout.down\nactions.precombat+=/commanding_shout,if=buff.my_battle_shout.down\n\nactions+=/pummel\nactions+=/shield_bash\nactions+=/spell_reflection\nactions+=/charge\nactions+=/bloodrage\nactions+=/use_items\nactions+=/shattering_throw,if=buff.bloodlust.up&debuff.shattering_throw.down\nactions+=/shield_block,if=tanking\nactions+=/shield_slam,if=buff.shield_block.up\nactions+=/call_action_list,name=aoe,if=active_enemies>1\nactions+=/demoralizing_shout,if=down\nactions+=/revenge\nactions+=/shield_slam\nactions+=/shockwave,if=stat.attack_power>3500||active_enemies>1\nactions+=/devastate\nactions+=/heroic_strike,if=rage>60\n\nactions.aoe+=/thunder_clap\nactions.aoe+=/shockwave\nactions.aoe+=/revenge\nactions.aoe+=/cleave,if=rage>60",
					["author"] = "Icy Veins",
				},
				["Balance (IV)"] = {
					["builtIn"] = true,
					["date"] = 20230228,
					["spec"] = 11,
					["desc"] = "Balance Druid priority for Hekili",
					["profile"] = "actions.precombat+=/mark_of_the_wild,if=!up&!buff.gift_of_the_wild.up\nactions.precombat+=/thorns,if=!up\nactions.precombat+=/moonkin_form,if=!up\nactions.precombat+=/potion\n\nactions+=/call_action_list,name=init\nactions+=/run_action_list,name=aoe,if=active_enemies>3\nactions+=/run_action_list,name=spam,if=variable.spam_now\nactions+=/run_action_list,name=fish\n\nactions.init+=/variable,name=lunar_spam_now,value=buff.eclipse_lunar.up\nactions.init+=/variable,name=solar_spam_now,value=buff.eclipse_solar.up\nactions.init+=/variable,name=spam_now,value=variable.lunar_spam_now||variable.solar_spam_now\nactions.init+=/variable,name=fish_now,value=!variable.lunar_spam_now&!variable.solar_spam_now\nactions.init+=/variable,name=lunar_can_proc,value=buff.eclipse_lunar.last_applied=0||query_time-buff.eclipse_lunar.last_applied>=30\nactions.init+=/variable,name=solar_can_proc,value=buff.eclipse_solar.last_applied=0||query_time-buff.eclipse_solar.last_applied>=30\nactions.init+=/variable,name=lunar_fish_now,value=variable.fish_now&variable.lunar_can_proc\nactions.init+=/variable,name=solar_fish_now,value=variable.fish_now&(variable.solar_can_proc||!variable.lunar_can_proc)\n\nactions.fish+=/starfire,if=buff.elunes_wrath.up&(!variable.lunar_fish_now||buff.elunes_wrath.remains<action.starfire.gcd||moving)\nactions.fish+=/moonfire,if=!debuff.moonfire.up&moving\nactions.fish+=/force_of_nature\nactions.fish+=/starfall\nactions.fish+=/faerie_fire,if=!up&(talent.improved_faerie_fire.enabled||group_members>=5||moving)\nactions.fish+=/insect_swarm,if=!debuff.insect_swarm.up\nactions.fish+=/typhoon,if=moving&glyph.typhoon.enabled\nactions.fish+=/moonfire,if=!debuff.moonfire.up&variable.lunar_fish_now&debuff.moonfire.remains<3\nactions.fish+=/wrath,if=variable.lunar_fish_now\nactions.fish+=/starfire,if=variable.solar_fish_now\n\nactions.spam+=/hyperspeed_acceleration,use_off_gcd=1,if=buff.eclipse_lunar.up&buff.eclipse_lunar.remains>settings.lunar_cooldown_leeway\nactions.spam+=/potion,use_off_gcd=1,if=buff.eclipse_lunar.up&buff.eclipse_lunar.remains>settings.lunar_cooldown_leeway\nactions.spam+=/use_items,use_off_gcd=1,if=buff.eclipse_lunar.up&buff.eclipse_lunar.remains>settings.lunar_cooldown_leeway\nactions.spam+=/starfire,if=buff.elunes_wrath.up\nactions.spam+=/insect_swarm,if=!debuff.insect_swarm.up&(!buff.eclipse_lunar.up||buff.eclipse_lunar.remains>7)\nactions.spam+=/wrath,if=variable.solar_spam_now\nactions.spam+=/starfire,if=variable.lunar_spam_now\n\nactions.aoe+=/typhoon,if=glyph.typhoon.enabled\nactions.aoe+=/starfall\nactions.aoe+=/hurricane",
					["version"] = 20230228,
					["warnings"] = "Imported 6 action lists.\n",
					["lists"] = {
						["fish"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.elunes_wrath.up & ( ! variable.lunar_fish_now || buff.elunes_wrath.remains < action.starfire.gcd || moving )",
								["action"] = "starfire",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.moonfire.up & moving",
								["action"] = "moonfire",
							}, -- [2]
							{
								["action"] = "force_of_nature",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "starfall",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! up & ( talent.improved_faerie_fire.enabled || group_members >= 5 || moving )",
								["action"] = "faerie_fire",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.insect_swarm.up",
								["action"] = "insect_swarm",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "moving & glyph.typhoon.enabled",
								["action"] = "typhoon",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.moonfire.up & variable.lunar_fish_now & debuff.moonfire.remains < 3",
								["action"] = "moonfire",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.lunar_fish_now",
								["action"] = "wrath",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "variable.solar_fish_now",
								["action"] = "starfire",
							}, -- [10]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "init",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3",
								["action"] = "run_action_list",
								["list_name"] = "aoe",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.spam_now",
								["action"] = "run_action_list",
								["list_name"] = "spam",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "fish",
							}, -- [4]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "! up & ! buff.gift_of_the_wild.up",
								["action"] = "mark_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "thorns",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "moonkin_form",
							}, -- [3]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [4]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "glyph.typhoon.enabled",
								["action"] = "typhoon",
							}, -- [1]
							{
								["action"] = "starfall",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "hurricane",
								["enabled"] = true,
							}, -- [3]
						},
						["spam"] = {
							{
								["enabled"] = true,
								["action"] = "hyperspeed_acceleration",
								["criteria"] = "buff.eclipse_lunar.up & buff.eclipse_lunar.remains > settings.lunar_cooldown_leeway",
								["use_off_gcd"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "potion",
								["criteria"] = "buff.eclipse_lunar.up & buff.eclipse_lunar.remains > settings.lunar_cooldown_leeway",
								["use_off_gcd"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "use_items",
								["criteria"] = "buff.eclipse_lunar.up & buff.eclipse_lunar.remains > settings.lunar_cooldown_leeway",
								["use_off_gcd"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.elunes_wrath.up",
								["action"] = "starfire",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.insect_swarm.up & ( ! buff.eclipse_lunar.up || buff.eclipse_lunar.remains > 7 )",
								["action"] = "insect_swarm",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.solar_spam_now",
								["action"] = "wrath",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.lunar_spam_now",
								["action"] = "starfire",
							}, -- [7]
						},
						["init"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.eclipse_lunar.up",
								["var_name"] = "lunar_spam_now",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.eclipse_solar.up",
								["var_name"] = "solar_spam_now",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.lunar_spam_now || variable.solar_spam_now",
								["var_name"] = "spam_now",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.lunar_spam_now & ! variable.solar_spam_now",
								["var_name"] = "fish_now",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.eclipse_lunar.last_applied = 0 || query_time - buff.eclipse_lunar.last_applied >= 30",
								["var_name"] = "lunar_can_proc",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.eclipse_solar.last_applied = 0 || query_time - buff.eclipse_solar.last_applied >= 30",
								["var_name"] = "solar_can_proc",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.fish_now & variable.lunar_can_proc",
								["var_name"] = "lunar_fish_now",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.fish_now & ( variable.solar_can_proc || ! variable.lunar_can_proc )",
								["var_name"] = "solar_fish_now",
							}, -- [8]
						},
					},
					["author"] = "Defzach",
				},
				["Shadow"] = {
					["source"] = "wowsims.github.io & wowhead.com/wotlk",
					["builtIn"] = true,
					["date"] = 20231124,
					["spec"] = 5,
					["desc"] = "Shadow Priest priority list for Hekili",
					["lists"] = {
						["single"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_die <= action.mind_flay.duration || ( moving & ! dot.devouring_plague.remains )",
								["action"] = "devouring_plague",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.inner_focus.up || ( dot.shadow_word_pain.remains < 1.5 & dot.shadow_word_pain.remains >= action.mind_flay.tick_time + latency )",
								["action"] = "mind_flay",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_die > 0",
								["action"] = "shadowfiend",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & ( ( buff.shadow_weaving.stack = 5 & variable.time_to_die >= 75 ) || ( buff.shadow_weaving.stack >= 3 & variable.time_to_die < 75 ) )",
								["action"] = "shadow_word_pain",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "dot.vampiric_touch.remains + latency < cast_time & variable.time_to_die >= 3",
								["action"] = "vampiric_touch",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! dot.devouring_plague.remains",
								["action"] = "devouring_plague",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_die >= cast_time & ( flay_over_blast || buff.replenishment.remains < 3 )",
								["action"] = "mind_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.shadow_weaving.stack = 5",
								["action"] = "inner_focus",
							}, -- [8]
							{
								["enabled"] = true,
								["sec"] = "dot.devouring_plague.remains",
								["criteria"] = "dot.devouring_plague.remains <= 0.2",
								["action"] = "wait",
							}, -- [9]
							{
								["enabled"] = true,
								["sec"] = "( dot.vampiric_touch.remains - action.vampiric_touch.cast_time )",
								["criteria"] = "dot.vampiric_touch.ticking & action.mind_flay.channeling & dot.vampiric_touch.remains <= ( action.vampiric_touch.cast_time + latency )",
								["action"] = "wait",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! buff.inner_fire.up & variable.time_to_die >= 10",
								["action"] = "inner_fire",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! up & variable.time_to_die >= 10",
								["action"] = "vampiric_embrace",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "mind_flay",
								["criteria"] = "! moving",
								["interrupt_if"] = "!buff.inner_focus.up&ticks>=2",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "moving",
								["action"] = "shadow_word_death",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "moving",
								["action"] = "devouring_plague",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "mana.percent <= 60",
								["action"] = "dispersion",
							}, -- [16]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "init",
							}, -- [1]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "hyperspeed_acceleration",
								["description"] = "having shadowform in rotation bugs out",
								["use_off_gcd"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "run_action_list",
								["list_name"] = "cleave",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single",
							}, -- [6]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["description"] = "November 2023",
								["criteria"] = "buff.shadowform.down",
								["action"] = "shadowform",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.divine_spirit.down & buff.prayer_of_spirit.down",
								["action"] = "divine_spirit",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.power_word_fortitude.down & buff.prayer_of_fortitude.down",
								["action"] = "power_word_fortitude",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.inner_fire.stacks < 10",
								["action"] = "inner_fire",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "vampiric_embrace",
							}, -- [5]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [6]
						},
						["cleave"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 8",
								["action"] = "mind_sear",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! dot.devouring_plague.remains",
								["action"] = "devouring_plague",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "mind_flay",
								["cycle_targets"] = 1,
								["interrupt_if"] = "!buff.inner_focus.up&ticks>=2",
								["max_cycle_targets"] = "7",
								["criteria"] = "! moving & ( dot.shadow_word_pain.remains < 1.5 & dot.shadow_word_pain.remains >= action.mind_flay.tick_time + latency )",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_die > 0",
								["action"] = "shadowfiend",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "vampiric_touch",
								["cycle_targets"] = 1,
								["max_cycle_targets"] = "7",
								["criteria"] = "dot.vampiric_touch.remains + latency < cast_time & variable.time_to_die >= 3",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "shadow_word_pain",
								["cycle_targets"] = 1,
								["max_cycle_targets"] = "7",
								["criteria"] = "! ticking & ( ( buff.shadow_weaving.stack = 5 & variable.time_to_die >= 75 ) || ( buff.shadow_weaving.stack >= 3 & variable.time_to_die < 75 ) ) & variable.time_to_die >= 10",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_die >= cast_time & ( flay_over_blast || buff.replenishment.remains < 3 )",
								["action"] = "mind_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! buff.inner_fire.up & variable.time_to_die >= 10",
								["action"] = "inner_fire",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! up & variable.time_to_die >= 10",
								["action"] = "vampiric_embrace",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_die >= cast_time / 2 & ! moving & active_enemies >= 3",
								["action"] = "mind_sear",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "mind_flay",
								["criteria"] = "variable.time_to_die >= cast_time & ! moving",
								["interrupt_if"] = "!buff.inner_focus.up&ticks>=2",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "moving",
								["action"] = "shadow_word_death",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "moving",
								["action"] = "devouring_plague",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "mana.percent <= 60",
								["action"] = "dispersion",
							}, -- [14]
						},
						["init"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( debuff.training_dummy.up & 300 ) || target.time_to_die",
								["var_name"] = "time_to_die",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "target.health.pct < 20",
								["var_name"] = "execute_phase",
							}, -- [2]
						},
					},
					["version"] = 20231124,
					["warnings"] = "Imported 5 action lists.\n",
					["profile"] = "# Priest: Shadow\n# wowsims.github.io & wowhead.com/wotlk\n# November 2023\n\n## Precombat\nactions.precombat+=/shadowform,if=buff.shadowform.down\nactions.precombat+=/divine_spirit,if=buff.divine_spirit.down&buff.prayer_of_spirit.down\nactions.precombat+=/power_word_fortitude,if=buff.power_word_fortitude.down&buff.prayer_of_fortitude.down\nactions.precombat+=/inner_fire,if=buff.inner_fire.stacks<10\nactions.precombat+=/vampiric_embrace,if=!up\nactions.precombat+=/potion\n\n## Default\nactions+=/call_action_list,name=init\nactions+=/use_items\nactions+=/potion\n# having shadowform in rotation bugs out\n#actions+=/shadowform,if=!buff.shadowform.up\nactions+=/hyperspeed_acceleration,use_off_gcd=1\nactions+=/run_action_list,name=cleave,if=active_enemies>1\nactions+=/run_action_list,name=single\n\n## Init Parameters\nactions.init+=/variable,name=time_to_die,value=(debuff.training_dummy.up&300)||target.time_to_die\nactions.init+=/variable,name=execute_phase,value=target.health.pct<20\n\n## Cleave\nactions.cleave+=/mind_sear,if=active_enemies>=8\nactions.cleave+=/devouring_plague,if=!dot.devouring_plague.remains\nactions.cleave+=/mind_flay,cycle_targets=1,max_cycle_targets=7,interrupt_if=!buff.inner_focus.up&ticks>=2,if=!moving&(dot.shadow_word_pain.remains<1.5&dot.shadow_word_pain.remains>=action.mind_flay.tick_time+latency)\nactions.cleave+=/shadowfiend,if=variable.time_to_die>0\nactions.cleave+=/vampiric_touch,cycle_targets=1,max_cycle_targets=7,if=dot.vampiric_touch.remains+latency<cast_time&variable.time_to_die>=3\nactions.cleave+=/shadow_word_pain,cycle_targets=1,max_cycle_targets=7,if=!ticking&((buff.shadow_weaving.stack=5&variable.time_to_die>=75)||(buff.shadow_weaving.stack>=3&variable.time_to_die<75))&variable.time_to_die>=10\nactions.cleave+=/mind_blast,if=variable.time_to_die>=cast_time&(flay_over_blast||buff.replenishment.remains<3)\nactions.cleave+=/inner_fire,if=!buff.inner_fire.up&variable.time_to_die>=10\nactions.cleave+=/vampiric_embrace,if=!up&variable.time_to_die>=10\nactions.cleave+=/mind_sear,if=variable.time_to_die>=cast_time/2&!moving&active_enemies>=3\nactions.cleave+=/mind_flay,interrupt_if=!buff.inner_focus.up&ticks>=2,if=variable.time_to_die>=cast_time&!moving\nactions.cleave+=/shadow_word_death,if=moving\nactions.cleave+=/devouring_plague,if=moving\nactions.cleave+=/dispersion,if=mana.percent<=60\n\n## Single\nactions.single+=/devouring_plague,if=variable.time_to_die<=action.mind_flay.duration||(moving&!dot.devouring_plague.remains)\nactions.single+=/mind_flay,if=buff.inner_focus.up||(dot.shadow_word_pain.remains<1.5&dot.shadow_word_pain.remains>=action.mind_flay.tick_time+latency)\nactions.single+=/shadowfiend,if=variable.time_to_die>0\nactions.single+=/shadow_word_pain,if=!ticking&((buff.shadow_weaving.stack=5&variable.time_to_die>=75)||(buff.shadow_weaving.stack>=3&variable.time_to_die<75))\nactions.single+=/vampiric_touch,if=dot.vampiric_touch.remains+latency<cast_time&variable.time_to_die>=3\nactions.single+=/devouring_plague,if=!dot.devouring_plague.remains\nactions.single+=/mind_blast,if=variable.time_to_die>=cast_time&(flay_over_blast||buff.replenishment.remains<3)\nactions.single+=/inner_focus,if=buff.shadow_weaving.stack=5\nactions.single+=/wait,if=dot.devouring_plague.remains<=0.2,sec=dot.devouring_plague.remains\nactions.single+=/wait,if=dot.vampiric_touch.ticking&action.mind_flay.channeling&dot.vampiric_touch.remains<=(action.vampiric_touch.cast_time+latency),sec=(dot.vampiric_touch.remains-action.vampiric_touch.cast_time)\nactions.single+=/inner_fire,if=!buff.inner_fire.up&variable.time_to_die>=10\nactions.single+=/vampiric_embrace,if=!up&variable.time_to_die>=10\nactions.single+=/mind_flay,interrupt_if=!buff.inner_focus.up&ticks>=2,if=!moving\nactions.single+=/shadow_word_death,if=moving\nactions.single+=/devouring_plague,if=moving\nactions.single+=/dispersion,if=mana.percent<=60",
					["author"] = "Supernuss",
				},
			},
		},
		["GhoulUI"] = {
			["displays"] = {
				["Interrupts"] = {
					["targets"] = {
						["font"] = "Oswald",
					},
					["rel"] = "CENTER",
					["primaryWidth"] = 26,
					["captions"] = {
						["font"] = "Oswald",
					},
					["y"] = -370.0000305175781,
					["x"] = -403.0000610351563,
					["primaryHeight"] = 32,
					["delays"] = {
						["font"] = "Oswald",
					},
					["keybindings"] = {
						["font"] = "Oswald",
					},
				},
				["Cooldowns"] = {
					["targets"] = {
						["font"] = "Oswald",
					},
					["rel"] = "CENTER",
					["primaryWidth"] = 24,
					["zoom"] = 20,
					["captions"] = {
						["font"] = "Oswald",
					},
					["y"] = -370.0000915527344,
					["x"] = -340,
					["primaryHeight"] = 32,
					["delays"] = {
						["font"] = "Oswald",
					},
					["keybindings"] = {
						["font"] = "Oswald",
					},
				},
				["Primary"] = {
					["targets"] = {
						["font"] = "Oswald",
					},
					["flash"] = {
						["enabled"] = true,
					},
					["rel"] = "CENTER",
					["primaryWidth"] = 24,
					["numIcons"] = 1,
					["zoom"] = 20,
					["border"] = {
						["thickness"] = 2,
					},
					["captions"] = {
						["font"] = "Oswald",
					},
					["queue"] = {
						["width"] = 24,
						["height"] = 30,
					},
					["keybindings"] = {
						["font"] = "Oswald",
					},
					["x"] = -308.0000305175781,
					["primaryHeight"] = 32,
					["delays"] = {
						["font"] = "Oswald",
					},
					["elvuiCooldown"] = true,
					["y"] = -370.0001525878906,
				},
				["AOE"] = {
					["primaryWidth"] = 24,
					["rel"] = "CENTER",
					["numIcons"] = 1,
					["elvuiCooldown"] = true,
					["zoom"] = 20,
					["captions"] = {
						["font"] = "Oswald",
					},
					["keybindings"] = {
						["font"] = "Oswald",
					},
					["queue"] = {
						["width"] = 24,
						["height"] = 30,
					},
					["y"] = -369.9999084472656,
					["x"] = -308.0000305175781,
					["primaryHeight"] = 32,
					["targets"] = {
						["font"] = "Oswald",
					},
					["border"] = {
						["thickness"] = 4,
					},
					["delays"] = {
						["font"] = "Oswald",
					},
				},
				["Defensives"] = {
					["targets"] = {
						["font"] = "Oswald",
					},
					["rel"] = "CENTER",
					["primaryWidth"] = 26,
					["zoom"] = 20,
					["captions"] = {
						["font"] = "Oswald",
					},
					["y"] = -370.0000915527344,
					["x"] = -370.0001525878906,
					["primaryHeight"] = 32,
					["delays"] = {
						["font"] = "Oswald",
					},
					["keybindings"] = {
						["font"] = "Oswald",
					},
				},
			},
			["enabled"] = false,
			["toggles"] = {
				["essences"] = {
					["value"] = false,
					["override"] = false,
				},
				["interrupts"] = {
					["value"] = true,
					["separate"] = true,
				},
				["cooldowns"] = {
					["value"] = true,
					["separate"] = true,
				},
				["mode"] = {
					["single"] = false,
					["dual"] = false,
				},
				["defensives"] = {
					["value"] = true,
					["separate"] = true,
				},
			},
			["specs"] = {
				{
					["settings"] = {
						["protection"] = "Protection Warrior (wowtbc.gg)",
						["execute_whirlwind_enabled"] = true,
						["execute_bloodthirst_enabled"] = true,
						["weave_cooldown_threshold"] = 1.5,
						["weave_rage_threshold"] = 100,
						["execute_slam_prio"] = true,
						["arms"] = "Arms",
						["debuff_demoshout_enabled"] = false,
						["queueing_threshold"] = 60,
						["predict_tfb"] = true,
						["shout_spell"] = "commanding_shout",
						["optimize_overpower"] = false,
						["debuff_sunder_enabled"] = true,
						["fury"] = "Fury",
						["weaving_enabled"] = false,
						["weave_health_threshold"] = 20,
						["main_gcd_spell"] = "slam",
						["rend_refresh_time"] = 0,
						["execute_queueing_enabled"] = true,
					},
					["autoPacks"] = {
						["arms"] = "Arms",
						["fury"] = "Fury",
						["protection"] = "Protection Warrior (wowtbc.gg)",
					},
					["package"] = "Protection Warrior (wowtbc.gg)",
				}, -- [1]
				{
					["settings"] = {
						["protection"] = "Protection 96",
						["min_six_delay"] = 4,
						["hor_macros"] = false,
						["squeeze_hw_in_bl"] = true,
						["assigned_aura"] = "retribution_aura",
						["maintain_blessing"] = false,
						["holy"] = "Holy Paladin (wowtbc.gg)",
						["maintain_aura"] = false,
						["retribution"] = "Retribution (LightClub)",
						["fol_on_aow"] = false,
						["judgement_of_wisdom_threshold"] = 70,
						["max_wait_for_six"] = 0.3,
						["holy_wrath_threshold"] = 2,
						["divine_plea_threshold"] = 75,
						["assigned_blessing"] = "blessing_of_kings",
						["primary_slack"] = 0.5,
						["highroll"] = false,
					},
					["autoPacks"] = {
						["protection"] = "Protection 96",
						["holy"] = "none",
						["retribution"] = "Retribution (LightClub)",
					},
					["package"] = "Protection 96",
				}, -- [2]
				nil, -- [3]
				nil, -- [4]
				{
					["abilities"] = {
						["inner_fire"] = {
							["disabled"] = true,
						},
					},
					["settings"] = {
						["optimize_mind_blast"] = false,
						["discipline"] = "none",
						["holy"] = "none",
						["dots_in_aoe"] = false,
						["min_shadowfiend_mana"] = 25,
						["shadow"] = "Shadow",
					},
					["autoPacks"] = {
						["discipline"] = "none",
						["holy"] = "none",
						["shadow"] = "Shadow",
					},
				}, -- [5]
				{
					["settings"] = {
						["unholy"] = "Unholy (IV)",
						["frost"] = "Frost DK (IV)",
						["blood"] = "Blood (IV)",
					},
					["autoPacks"] = {
						["unholy"] = "Unholy (IV)",
						["frost"] = "Frost DK (IV)",
						["blood"] = "Blood (IV)",
					},
					["package"] = "Frost DK (IV)",
				}, -- [6]
				{
					["package"] = "Elemental / Resto DPS (IV)",
					["abilities"] = {
						["wind_shear"] = {
							["disabled"] = true,
						},
					},
					["settings"] = {
						["enhancement"] = "Enhancement (IV)",
						["elemental"] = "Elemental / Resto DPS (IV)",
						["shaman_rage_threshold"] = 60,
						["st_fn_mana_threshold"] = 3000,
						["restoration"] = "Elemental / Resto DPS (IV)",
						["st_cl_mana_threshold"] = 80,
					},
					["autoPacks"] = {
						["enhancement"] = "Enhancement (IV)",
						["elemental"] = "Elemental / Resto DPS (IV)",
						["restoration"] = "none",
					},
				}, -- [7]
				{
					["package"] = "Fire Wowhead",
					["abilities"] = {
						["counterspell"] = {
							["disabled"] = true,
						},
						["focus_magic"] = {
							["disabled"] = true,
						},
					},
					["usePackSelector"] = true,
					["settings"] = {
						["living_bomb_cap"] = 3,
						["frost"] = "Frost Wowhead",
						["spellsteal_cooldown"] = 0,
						["arcane"] = "Arcane Wowhead",
						["fire"] = "Fire Wowhead",
						["use_cold_snap"] = false,
					},
					["autoPacks"] = {
						["fire"] = "Fire Wowhead",
						["frost"] = "Frost Wowhead",
						["arcane"] = "Arcane Wowhead",
					},
				}, -- [8]
				{
					["abilities"] = {
						["demon_charge"] = {
							["disabled"] = true,
						},
					},
					["settings"] = {
						["solo_curse"] = "curse_of_the_elements",
						["group_curse"] = "curse_of_agony",
						["destruction"] = "Destruction",
						["group_type"] = "party",
						["demonology"] = "Demonology (wowtbc.gg)",
						["shadow_mastery"] = true,
						["affliction"] = "Affliction",
						["inferno_enabled"] = true,
					},
					["autoPacks"] = {
						["demonology"] = "Demonology (wowtbc.gg)",
						["affliction"] = "Affliction",
						["destruction"] = "Destruction",
					},
				}, -- [9]
				nil, -- [10]
				{
					["items"] = {
						["juggernauts_vitality"] = {
							["disabled"] = true,
						},
						["corroded_skeleton_key"] = {
							["disabled"] = true,
						},
					},
					["settings"] = {
						["bearweaving_enabled"] = false,
						["bearweaving_instancetype"] = "raid",
						["min_bite_rip_remains"] = 4,
						["optimize_trinkets"] = false,
						["balance"] = "Balance (IV)",
						["maintain_ff"] = true,
						["max_ff_delay"] = 0.1,
						["feral_tank"] = "Feral Tank (IV)",
						["max_ff_energy"] = 15,
						["ferociousbite_enabled"] = true,
						["leaveweaving_enabled"] = false,
						["flowerweaving_mode"] = "any",
						["lunar_cooldown_leeway"] = 14,
						["flowerweaving_enabled"] = false,
						["min_weave_mana"] = 25,
						["bear_form_mode"] = "tank",
						["rake_dpe_check"] = true,
						["min_roar_offset"] = 24,
						["min_bite_sr_remains"] = 4,
						["feral_dps"] = "Feral DPS (IV)",
						["max_bite_energy"] = 25,
						["dummy_ttd"] = 300,
						["bearweaving_bossonly"] = false,
						["flowerweaving_mingroupsize"] = 10,
						["rip_leeway"] = 3,
					},
					["autoPacks"] = {
						["feral_tank"] = "Feral DPS",
						["balance"] = "Balance (IV)",
						["feral_dps"] = "Feral DPS",
					},
				}, -- [11]
			},
			["notifications"] = {
				["font"] = "Oswald",
			},
			["packs"] = {
				["Elemental / Resto DPS (IV)"] = {
					["source"] = "https://www.icy-veins.com/wotlk-classic/elemental-shaman-dps-pve-rotation-cooldowns-abilities",
					["builtIn"] = true,
					["date"] = 20220925,
					["spec"] = 7,
					["desc"] = "This priority pack, designed for Elemental (but recommended for Resto DPS as well) is based upon Icy-Veins' Elemental Shaman guide for Wrath.",
					["lists"] = {
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.fire_totem.down",
								["action"] = "magma_totem",
							}, -- [1]
							{
								["action"] = "fire_nova",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "elemental_mastery",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "chain_lightning",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "thunderstorm",
								["description"] = "actions.aoe+=/thunderstorm,if=mana.pct<90||target.distance<10&glyph.glyph_of_thunderstorm.enabled",
								["criteria"] = "target.distance <= 10 & mana.pct < 90 || mana.pct < settings.st_cl_mana_threshold",
							}, -- [5]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "wind_shear",
							}, -- [1]
							{
								["action"] = "fire_elemental_totem",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "call_action_list",
								["list_name"] = "aoe",
							}, -- [4]
							{
								["action"] = "elemental_mastery",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! ticking",
								["action"] = "flame_shock",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "dot.flame_shock.remains > cast_time",
								["action"] = "lava_burst",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "moving & dot.flame_shock.ticking",
								["action"] = "earth_shock",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "chain_lightning",
								["description"] = "Need to create this specialization option.",
								["criteria"] = "mana.pct > settings.st_cl_mana_threshold",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "target.distance <= 10 & mana.pct < 90 || mana.pct < settings.st_cl_mana_threshold",
								["action"] = "thunderstorm",
							}, -- [10]
							{
								["action"] = "lightning_bolt",
								["enabled"] = true,
							}, -- [11]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["action"] = "flametongue_weapon",
								["criteria"] = "! mainhand_imbued",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_of_the_elements",
								["description"] = "Place your totems if they're not already up, don't want to use it if we've used a major CD totem.",
								["criteria"] = "buff.earth_totem.down & buff.fire_totem.down & buff.water_totem.down & buff.air_totem.down",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.fire_totem.down",
								["action"] = "totem_of_wrath",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "searing_totem",
								["description"] = "Need to find a way to verify that the snapshot has taken place.",
								["criteria"] = "buff.totem_of_wrath.up & buff.demonic_pact.up",
							}, -- [4]
						},
					},
					["version"] = 20220925,
					["warnings"] = "Imported 3 action lists.\n",
					["author"] = "Icy-Veins",
					["profile"] = "## Elemental Shaman (Icy Veins)\n## 2022-09-25\n\nactions.precombat+=/flametongue_weapon,if=!mainhand_imbued\n# Place your totems if they're not already up; don't want to use it if we've used a major CD totem.\nactions.precombat+=/call_of_the_elements,if=buff.earth_totem.down&buff.fire_totem.down&buff.water_totem.down&buff.air_totem.down\nactions.precombat+=/totem_of_wrath,if=buff.fire_totem.down\n# Need to find a way to verify that the snapshot has taken place.\nactions.precombat+=/searing_totem,if=buff.totem_of_wrath.up&buff.demonic_pact.up\n\nactions+=/wind_shear\nactions+=/fire_elemental_totem\nactions+=/use_items\nactions+=/call_action_list,name=aoe,if=active_enemies>1\nactions+=/elemental_mastery\nactions+=/flame_shock,if=!ticking\nactions+=/lava_burst,if=dot.flame_shock.remains>cast_time\nactions+=/earth_shock,if=moving&dot.flame_shock.ticking\n# Need to create this specialization option.\nactions+=/chain_lightning,if=mana.pct>settings.st_cl_mana_threshold\nactions+=/thunderstorm,if=target.distance<=10&mana.pct<90||mana.pct<settings.st_cl_mana_threshold\nactions+=/lightning_bolt\n\nactions.aoe+=/magma_totem,if=buff.fire_totem.down\nactions.aoe+=/fire_nova\nactions.aoe+=/elemental_mastery\nactions.aoe+=/chain_lightning\n## Need to enable glyphs for this to work.\n# actions.aoe+=/thunderstorm,if=mana.pct<90||target.distance<10&glyph.glyph_of_thunderstorm.enabled\nactions.aoe+=/thunderstorm,if=target.distance<=10&mana.pct<90||mana.pct<settings.st_cl_mana_threshold",
				},
				["Protection Warrior (wowtbc.gg)"] = {
					["source"] = "https://wowtbc.gg/wotlk/class-guides/protection-warrior/",
					["builtIn"] = true,
					["date"] = 20221003,
					["spec"] = 1,
					["desc"] = "This priority is based on the wowtbc.gg Wrath guide.",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "shield_bash",
							}, -- [1]
							{
								["action"] = "charge",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "debuff.sunder_armor.stack < 5 & target.time_to_die > 10 || debuff.sunder_armor.remains < 3",
								["action"] = "devastate",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "debuff.thunder_clap.down & talent.improved_thunder_clap.enabled",
								["action"] = "thunder_clap",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "tanking",
								["action"] = "shield_block",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "group & active_dot.vigilance = 0",
								["action"] = "vigilance",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.shout.down",
								["action"] = "battle_shout",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "debuff.demoralizing_shout.down",
								["action"] = "demoralizing_shout",
							}, -- [8]
							{
								["action"] = "heroic_throw",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "recklessness",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "retaliation",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "rage < 80",
								["action"] = "bloodrage",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "aggro & buff.dispellable_enrage.up & health.deficit > 40",
								["action"] = "enraged_regeneration",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "aggro & health.deficit > 50",
								["action"] = "last_stand",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "aggro & health.deficit > 50 & buff.last_stand.down",
								["action"] = "shield_wall",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "thunder_clap",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "shockwave",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & rage > 70",
								["action"] = "cleave",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & rage > 70",
								["action"] = "heroic_strike",
							}, -- [21]
							{
								["action"] = "shield_slam",
								["enabled"] = true,
							}, -- [22]
							{
								["action"] = "revenge",
								["enabled"] = true,
							}, -- [23]
							{
								["action"] = "devastate",
								["enabled"] = true,
							}, -- [24]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["action"] = "defensive_stance",
								["criteria"] = "buff.stance.down",
							}, -- [1]
							{
								["action"] = "berserker_rage",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "bloodrage",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.shout.down",
								["action"] = "battle_shout",
							}, -- [4]
							{
								["enabled"] = true,
								["potion"] = "indestructible_potion",
								["action"] = "potion",
							}, -- [5]
							{
								["action"] = "charge",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "heroic_throw",
								["enabled"] = true,
							}, -- [7]
						},
					},
					["version"] = 20221003,
					["warnings"] = "Imported 2 action lists.\n",
					["author"] = "wowtbc.gg",
					["profile"] = "## Protection Warrior (wowtbc.gg)\n## 3 October 2022\n\nactions.precombat+=/defensive_stance,if=buff.stance.down\nactions.precombat+=/berserker_rage\nactions.precombat+=/bloodrage\nactions.precombat+=/battle_shout,if=buff.shout.down\nactions.precombat+=/potion,name=indestructible_potion\nactions.precombat+=/charge\nactions.precombat+=/heroic_throw\n\nactions+=/shield_bash\nactions+=/charge\nactions+=/devastate,if=debuff.sunder_armor.stack<5&target.time_to_die>10||debuff.sunder_armor.remains<3\nactions+=/thunder_clap,if=debuff.thunder_clap.down&talent.improved_thunder_clap.enabled\nactions+=/shield_block,if=tanking\nactions+=/vigilance,if=group&active_dot.vigilance=0\nactions+=/battle_shout,if=buff.shout.down\nactions+=/demoralizing_shout,if=debuff.demoralizing_shout.down\nactions+=/heroic_throw\nactions+=/recklessness\nactions+=/retaliation\nactions+=/potion\nactions+=/use_items\nactions+=/bloodrage,if=rage<80\nactions+=/enraged_regeneration,if=aggro&buff.dispellable_enrage.up&health.deficit>40\nactions+=/last_stand,if=aggro&health.deficit>50\nactions+=/shield_wall,if=aggro&health.deficit>50&buff.last_stand.down\nactions+=/thunder_clap,if=active_enemies>1\nactions+=/shockwave,if=active_enemies>1\nactions+=/cleave,if=active_enemies>1&rage>70\nactions+=/heroic_strike,if=active_enemies=1&rage>70\nactions+=/shield_slam\nactions+=/revenge\nactions+=/devastate",
				},
				["Frost DK (wowtbc.gg)"] = {
					["source"] = "https://wowtbc.gg/wotlk/class-guides/frost-death-knight/",
					["builtIn"] = true,
					["date"] = 20221003,
					["spec"] = 6,
					["desc"] = "This priority is based upon the wowtbc.gg Wrath guide.",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["criteria"] = "! dot.frost_fever.ticking",
								["action"] = "icy_touch",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! dot.blood_plague.ticking",
								["action"] = "plague_strike",
							}, -- [2]
							{
								["action"] = "unbreakable_armor",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = false,
								["criteria"] = "",
								["action"] = "blood_tap",
							}, -- [4]
							{
								["action"] = "obliterate",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "frost_strike",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & buff.killing_machine.up",
								["action"] = "frost_strike",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "dot.frost_fever.ticking&dot.frost_fever.remains<1.5",
								["action"] = "pestilence",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "blood_runes.current + frost_runes.current + unholy_runes.current < 3",
								["action"] = "empower_rune_weapon",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & buff.killing_machine.up",
								["action"] = "howling_blast",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up",
								["action"] = "howling_blast",
							}, -- [13]
							{
								["action"] = "horn_of_winter",
								["enabled"] = true,
							}, -- [14]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["action"] = "potion",
								["potion"] = "indestructible_potion",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.presence.down",
								["action"] = "blood_presence",
							}, -- [2]
							{
								["action"] = "raise_dead",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "death_and_decay",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "army_of_the_dead",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > 10",
								["action"] = "horn_of_winter",
							}, -- [6]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [7]
						},
					},
					["version"] = 20221003,
					["warnings"] = "Imported 2 action lists.\n",
					["author"] = "wowtbc.gg",
					["profile"] = "## Frost Death Knight (wowtbc.gg)\n## 3 October 2022\n\nactions.precombat+=/potion,name=indestructible_potion\nactions.precombat+=/blood_presence,if=buff.presence.down\nactions.precombat+=/raise_dead\nactions.precombat+=/death_and_decay\nactions.precombat+=/army_of_the_dead\nactions.precombat+=/horn_of_winter,if=runic_power.deficit>10\nactions.precombat+=/potion\n\nactions+=/icy_touch\nactions+=/plague_strike\nactions+=/unbreakable_armor\nactions+=/blood_tap\nactions+=/obliterate\nactions+=/frost_strike\nactions+=/pestilence\nactions+=/empower_rune_weapon\nactions+=/obliterate\nactions+=/frost_strike\nactions+=/obliterate\nactions+=/obliterate\nactions+=/raise_dead\nactions+=/icy_touch,if=!dot.frost_fever.ticking\nactions+=/plague_strike,if=!dot.blood_plague.ticking\nactions+=/pestilence,if=dot.frost_fever.ticking&dot.frost_fever.remains<1.5\nactions+=/unbreakable_armor,if=can_cast\nactions+=/potion_of_speed,if=can_cast_unbreakable_armor\nactions+=/blood_tap,if=cast_unbreakable_armor\nactions+=/pestilence,if=dot.frost_fever.ticking&dot.frost_fever.remains<4\nactions+=/howling_blast,if=aura.freezing_fog.up\nactions+=/obliterate\nactions+=/raise_dead\nactions+=/blood_strike\nactions+=/frost_strike\nactions+=/horn_of_winter",
				},
				["Holy Paladin (wowtbc.gg)"] = {
					["source"] = "https://wowtbc.gg/wotlk/class-guides/holy-paladin/",
					["builtIn"] = true,
					["date"] = 20221002.1,
					["spec"] = 2,
					["desc"] = "This priority is based on the wowtbc.gg Wrath guide.",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "beacon_of_light",
								["criteria"] = "active_dot.beacon_of_light = 0",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.seal.down",
								["action"] = "seal_of_wisdom",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "target.distance < 10 & mana.percent < 70",
								["action"] = "judgement_of_wisdom",
							}, -- [3]
							{
								["action"] = "judgement_of_light",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_dot.sacred_shield = 0",
								["action"] = "sacred_shield",
							}, -- [5]
							{
								["action"] = "avenging_wrath",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "divine_illumination",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "divine_plea",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "divine_favor",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "holy_shock",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = false,
								["criteria"] = "target.distance < 10",
								["action"] = "shield_of_righteousness",
							}, -- [13]
							{
								["enabled"] = false,
								["criteria"] = "active_enemies > 1 & target.distance < 10",
								["action"] = "consecration",
							}, -- [14]
							{
								["enabled"] = false,
								["criteria"] = "active_enemies > 1 & ( target.is_demon || target.is_undead )",
								["action"] = "holy_wrath",
							}, -- [15]
							{
								["action"] = "exorcism",
								["enabled"] = false,
							}, -- [16]
						},
						["precombat"] = {
							{
								["action"] = "retribution_aura",
							}, -- [1]
							{
								["enabled"] = false,
								["criteria"] = "buff.blessing.down",
								["action"] = "blessing_of_kings",
							}, -- [2]
							{
								["enabled"] = false,
								["criteria"] = "buff.blessing.down",
								["action"] = "blessing_of_wisdom",
							}, -- [3]
						},
					},
					["version"] = 20221002.1,
					["warnings"] = "Imported 2 action lists.\n",
					["author"] = "wowtbc.gg",
					["profile"] = "## Holy Paladin\n## 2 October 2022\n\nactions.precombat+=/assigned_aura\nactions.precombat+=/blessing_of_kings,if=buff.blessing.down\nactions.precombat+=/blessing_of_wisdom,if=buff.blessing.down\n\nactions+=/beacon_of_light,if=active_dot.beacon_of_light=0\nactions+=/seal_of_wisdom,if=buff.seal.down\nactions+=/judgement_of_wisdom,if=target.distance<10&mana.percent<70\nactions+=/judgement_of_light\nactions+=/sacred_shield,if=active_dot.sacred_shield=0\nactions+=/avenging_wrath\nactions+=/divine_illumination\nactions+=/divine_plea\nactions+=/potion\nactions+=/use_items\nactions+=/divine_favor\nactions+=/holy_shock\nactions+=/shield_of_righteousness,if=target.distance<10\nactions+=/consecration,if=active_enemies>1&target.distance<10\nactions+=/holy_wrath,if=active_enemies>1&(target.is_demon||target.is_undead)\nactions+=/exorcism",
				},
				["Blood (wowtbc.gg)"] = {
					["source"] = "https://www.icy-veins.com/wotlk-classic/blood-death-knight-tank-pve-rotation-cooldowns-abilities",
					["builtIn"] = true,
					["date"] = 20230411,
					["spec"] = 6,
					["desc"] = "This priority is based on the Icy Veins guide.",
					["lists"] = {
						["aoe"] = {
							{
								["action"] = "death_and_decay",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "dot.frost_fever.ticking & dot.blood_plague.ticking & ( active_dot.frost_fever + active_dot.blood_plague < true_active_enemies * 2 )",
								["action"] = "pestilence",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! dot.frost_fever.ticking",
								["action"] = "icy_touch",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								{
								}, -- [1]
								["enabled"] = true,
								["action"] = "plague_strike",
								["criteria"] = "! dot.blood_plague.ticking",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "health.pct > 60 & ( active_enemies < 4 )",
								["action"] = "heart_strike",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "health.pct > 60 & ( active_enemies > 3 )",
								["action"] = "blood_boil",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit <= 20",
								["action"] = "rune_strike",
							}, -- [7]
							{
								{
								}, -- [1]
								["enabled"] = true,
								["criteria"] = "buff.crimson_scourge.up",
								["action"] = "blood_boil",
							}, -- [8]
						},
						["default"] = {
							{
								["action"] = "mind_freeze",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "down",
								["action"] = "horn_of_winter",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "time < 2",
								["action"] = "death_grip",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "health.pct <= 60",
								["action"] = "death_strike",
							}, -- [4]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "unholy_frenzy",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies > 1",
								["list_name"] = "aoe",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "dot.blood_plague.ticking & dot.blood_plague.refreshable || dot.frost_fever.ticking & dot.frost_fever.refreshable",
								["action"] = "pestilence",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! dot.frost_fever.ticking",
								["action"] = "icy_touch",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! dot.blood_plague.ticking",
								["action"] = "plague_strike",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "health.current + action.death_strike.healing < health.max & dot.frost_fever.ticking & dot.blood_plague.ticking",
								["action"] = "death_strike",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "rune_strike",
								["criteria"] = "runic_power.deficit < 20",
							}, -- [12]
							{
								["action"] = "heart_strike",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( blood_runes.current + frost_runes.current + unholy_runes.current ) < 2",
								["action"] = "empower_rune_weapon",
							}, -- [14]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.presence.down",
								["action"] = "frost_presence",
							}, -- [1]
						},
					},
					["version"] = 20230411,
					["warnings"] = "WARNING:  The import for 'aoe' required some automated changes.\nLine 5: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nImported 3 action lists.\n",
					["profile"] = "## Blood Death Knight (Icy Veins)\n## 2023-04-11\n\nactions.precombat+=/frost_presence,if=buff.presence.down\n\nactions+=/mind_freeze\nactions+=/horn_of_winter,if=down\nactions+=/death_grip,if=time<2\nactions+=/death_strike,if=health.pct<=60\nactions+=/use_items\nactions+=/unholy_frenzy\nactions+=/run_action_list,name=aoe,strict=1,if=active_enemies>1\nactions+=/pestilence,if=dot.blood_plague.ticking&dot.blood_plague.refreshable||dot.frost_fever.ticking&dot.frost_fever.refreshable\nactions+=/icy_touch,if=!dot.frost_fever.ticking||frost_runes.time_to_max<gcd\nactions+=/plague_strike,if=!dot.blood_plague.ticking\nactions+=/blood_strike,if=blood_runes.time_to_max<gcd\nactions+=/death_strike,if=health.current+action.death_strike.healing<health.max&dot.frost_fever.ticking&dot.blood_plague.ticking\nactions+=/blood_tap,if=(glyph.blood_tap.enabled||health.pct>60)&blood_runes.current=0\nactions+=/rune_strike\nactions+=/heart_strike\nactions+=/death_coil,if=runic_power.deficit<20\nactions+=/blood_strike\n## TODO: Determine Death Rune situation.\n## actions+=/icy_touch,if=???\nactions+=/empower_rune_weapon,if=(blood_runes.current+frost_runes.current+unholy_runes.current)<2\n\nactions.aoe+=/death_and_decay\nactions.aoe+=/pestilence,if=dot.frost_fever.ticking&dot.blood_plague.ticking&(active_dot.frost_fever+active_dot.blood_plague<true_active_enemies*2)\nactions.aoe+=/icy_touch,cycle_targets=1,if=!dot.frost_fever.ticking\nactions.aoe+=/plague_strike,cycle_targets=1,if=!dot.blood_plague.ticking\nactions.aoe+=/blood_boil,if=health.pct>60&(active_enemies>2||!talent.heart_strike)\nactions.aoe+=/heart_strike,if=active_enemies<3\nactions.aoe+=/death_coil,if=runic_power.deficit<20",
					["author"] = "Icy Veins",
				},
				["Demonology (wowtbc.gg)"] = {
					["source"] = "https://wowtbc.gg/wotlk/class-guides/demonology-warlock/",
					["builtIn"] = true,
					["date"] = 20230625,
					["spec"] = 9,
					["desc"] = "This priority was written based on the wowtbc.gg Wrath of the Lich King guide.\n\n2023-02-27:  Ensure target will live longer than the cast time when recommending Soul Fire.\n\n2023-06-25:  Make Soul Fire check for Decimation buff rather than talent.",
					["lists"] = {
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3",
								["action"] = "metamorphosis",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "immolation_aura",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3",
								["action"] = "shadowflame",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3",
								["action"] = "seed_of_corruption",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & active_enemies < 4",
								["action"] = "corruption",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & active_enemies < 4",
								["action"] = "immolate",
								["cycle_targets"] = 1,
							}, -- [6]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "demonic_empowerment",
							}, -- [1]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & target.time_to_die > dot.immolate.duration",
								["action"] = "immolate",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "debuff.my_curse.down & curse_grouped",
								["action"] = "group_curse",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "debuff.my_curse.down",
								["action"] = "solo_curse",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & target.time_to_die > dot.corruption.duration",
								["action"] = "corruption",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "fight_remains > 210 || boss & fight_remains < 40",
								["action"] = "metamorphosis",
							}, -- [7]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.metamorphosis.up & target.distance > 8",
								["action"] = "demon_charge",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "immolation_aura",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["strict"] = 1,
								["action"] = "call_action_list",
								["list_name"] = "aoe",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.improved_shadow_bolt.enabled & debuff.shadow_mastery.remains < cast_time + 2",
								["action"] = "shadow_bolt",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "glyph.life_tap.enabled & buff.life_tap.down",
								["action"] = "life_tap",
							}, -- [13]
							{
								["action"] = "metamorphosis",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.decimation.up & target.time_to_die > cast_time",
								["action"] = "soul_fire",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.molten_core.up",
								["action"] = "incinerate",
							}, -- [16]
							{
								["action"] = "shadow_bolt",
								["enabled"] = true,
							}, -- [17]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["action"] = "fel_armor",
								["criteria"] = "buff.armor.down",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! pet.active",
								["action"] = "summon_felguard",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! pet.active",
								["action"] = "summon_voidwalker",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! pet.active",
								["action"] = "summon_imp",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "glyph.life_tap.enabled & buff.life_tap.down",
								["action"] = "life_tap",
							}, -- [5]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.improved_shadow_bolt.enabled",
								["action"] = "soul_fire",
							}, -- [7]
						},
					},
					["version"] = 20230625,
					["warnings"] = "Imported 3 action lists.\n",
					["author"] = "wowtbc.gg",
					["profile"] = "## Demonology Warlock\n## 25 June 2023\n\nactions.precombat+=/fel_armor,if=buff.armor.down\nactions.precombat+=/summon_felguard,if=!pet.active\nactions.precombat+=/summon_voidwalker,if=!pet.active\nactions.precombat+=/summon_imp,if=!pet.active\nactions.precombat+=/life_tap,if=glyph.life_tap.enabled&buff.life_tap.down\nactions.precombat+=/potion\nactions.precombat+=/soul_fire,if=talent.improved_shadow_bolt.enabled\n\nactions+=/demonic_empowerment\nactions+=/potion\nactions+=/immolate,if=!ticking&target.time_to_die>dot.immolate.duration\nactions+=/group_curse,if=debuff.my_curse.down&curse_grouped\nactions+=/solo_curse,if=debuff.my_curse.down\nactions+=/corruption,if=!ticking&target.time_to_die>dot.corruption.duration\nactions+=/metamorphosis,if=fight_remains>210||boss&fight_remains<40\nactions+=/use_items\nactions+=/demon_charge,if=buff.metamorphosis.up&target.distance>8\nactions+=/immolation_aura,if=!up\nactions+=/call_action_list,name=aoe,strict=1,if=active_enemies>1\nactions+=/shadow_bolt,if=talent.improved_shadow_bolt.enabled&debuff.shadow_mastery.remains<cast_time+2\nactions+=/life_tap,if=glyph.life_tap.enabled&buff.life_tap.down\nactions+=/metamorphosis\nactions+=/soul_fire,if=buff.decimation.up&target.time_to_die>cast_time\nactions+=/incinerate,if=buff.molten_core.up\nactions+=/shadow_bolt\n\nactions.aoe+=/metamorphosis,if=active_enemies>3\nactions.aoe+=/immolation_aura,if=!up\nactions.aoe+=/shadowflame,if=active_enemies>3\nactions.aoe+=/seed_of_corruption,if=active_enemies>3\nactions.aoe+=/corruption,cycle_targets=1,if=!ticking&active_enemies<4\nactions.aoe+=/immolate,cycle_targets=1,if=!ticking&active_enemies<4",
				},
				["Feral Tank (IV)"] = {
					["builtIn"] = true,
					["date"] = 20230613,
					["spec"] = 11,
					["desc"] = "WotLK Feral Druid Tank Priorities\n\nToggle advanced rotation recommendations in the class options.",
					["profile"] = "actions.precombat+=/mark_of_the_wild,if=!up&!buff.gift_of_the_wild.up\nactions.precombat+=/thorns,if=!up\nactions.precombat+=/dire_bear_form,if=!up\nactions.precombat+=/potion\n\nactions+=/call_action_list,name=init\nactions+=/use_items\nactions+=/potion\nactions+=/hyperspeed_acceleration,use_off_gcd=1\nactions+=/run_action_list,name=bear_aoe,if=buff.dire_bear_form.up&active_enemies>4\nactions+=/run_action_list,name=bear,if=buff.dire_bear_form.up\nactions+=/dire_bear_form,if=!up\n\nactions.init+=/variable,name=time_to_die,value=(debuff.training_dummy.up&300)||target.time_to_die\nactions.init+=/variable,name=build_lacerate,value=!debuff.lacerate.up||debuff.lacerate.stack<5\nactions.init+=/variable,name=build_lacerate_cost,op=setif,if=variable.build_lacerate,value=action.lacerate.spend*(5-debuff.lacerate.stack),value_else=0\nactions.init+=/variable,name=maintain_lacerate,value=!variable.build_lacerate&debuff.lacerate.remains<8&debuff.lacerate.remains<variable.time_to_die\nactions.init+=/variable,name=maintain_lacerate_cost,op=setif,if=variable.maintain_lacerate,value=action.lacerate.spend,value_else=0\nactions.init+=/variable,name=emergency_lacerate,value=debuff.lacerate.up&debuff.lacerate.remains<4.5&debuff.lacerate.remains<variable.time_to_die\n\nactions.bear+=/faerie_fire_feral,if=ff_procs_ooc&!buff.clearcasting.up\nactions.bear+=/enrage,use_off_gcd=1,if=time<10\nactions.bear+=/berserk\nactions.bear+=/maul,use_off_gcd=1,if=rage.current>action.maul.spend+variable.build_lacerate_cost+variable.maintain_lacerate_cost+action.mangle_bear.spend\nactions.bear+=/lacerate,if=variable.emergency_lacerate\nactions.bear+=/mangle_bear\nactions.bear+=/faerie_fire_feral\nactions.bear+=/lacerate,if=variable.build_lacerate||variable.maintain_lacerate\nactions.bear+=/swipe_bear,if=rage.current>60\n\nactions.bear_aoe+=/enrage,use_off_gcd=1,if=time<10\nactions.bear_aoe+=/berserk\nactions.bear_aoe+=/maul,cycle_targets=1,use_off_gcd=1,if=rage.current>60\nactions.bear_aoe+=/swipe_bear,cycle_targets=1",
					["version"] = 20230613,
					["warnings"] = "Imported 5 action lists.\n",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "init",
							}, -- [1]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [3]
							{
								["use_off_gcd"] = 1,
								["action"] = "hyperspeed_acceleration",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.dire_bear_form.up & active_enemies > 4",
								["action"] = "run_action_list",
								["list_name"] = "bear_aoe",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.dire_bear_form.up",
								["action"] = "run_action_list",
								["list_name"] = "bear",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "dire_bear_form",
							}, -- [7]
						},
						["init"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( debuff.training_dummy.up & 300 ) || target.time_to_die",
								["var_name"] = "time_to_die",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! debuff.lacerate.up || debuff.lacerate.stack < 5",
								["var_name"] = "build_lacerate",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "build_lacerate_cost",
								["criteria"] = "variable.build_lacerate",
								["value_else"] = "0",
								["value"] = "action.lacerate.spend * ( 5 - debuff.lacerate.stack )",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.build_lacerate & debuff.lacerate.remains < 8 & debuff.lacerate.remains < variable.time_to_die",
								["var_name"] = "maintain_lacerate",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "maintain_lacerate_cost",
								["criteria"] = "variable.maintain_lacerate",
								["value_else"] = "0",
								["value"] = "action.lacerate.spend",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "debuff.lacerate.up & debuff.lacerate.remains < 4.5 & debuff.lacerate.remains < variable.time_to_die",
								["var_name"] = "emergency_lacerate",
							}, -- [6]
						},
						["bear"] = {
							{
								["enabled"] = true,
								["criteria"] = "ff_procs_ooc & ! buff.clearcasting.up",
								["action"] = "faerie_fire_feral",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "enrage",
								["criteria"] = "time < 10",
								["use_off_gcd"] = 1,
							}, -- [2]
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "maul",
								["criteria"] = "rage.current > action.maul.spend + variable.build_lacerate_cost + variable.maintain_lacerate_cost + action.mangle_bear.spend",
								["use_off_gcd"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.emergency_lacerate",
								["action"] = "lacerate",
							}, -- [5]
							{
								["action"] = "mangle_bear",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "faerie_fire_feral",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "variable.build_lacerate || variable.maintain_lacerate",
								["action"] = "lacerate",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "rage.current > 60",
								["action"] = "swipe_bear",
							}, -- [9]
						},
						["bear_aoe"] = {
							{
								["enabled"] = true,
								["action"] = "enrage",
								["criteria"] = "time < 10",
								["use_off_gcd"] = 1,
							}, -- [1]
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "maul",
								["cycle_targets"] = 1,
								["use_off_gcd"] = 1,
								["criteria"] = "rage.current > 60",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "swipe_bear",
								["cycle_targets"] = 1,
							}, -- [4]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "! up & ! buff.gift_of_the_wild.up",
								["action"] = "mark_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "thorns",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "dire_bear_form",
							}, -- [3]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [4]
						},
					},
					["basedOn"] = "Feral DPS (IV)",
					["author"] = "Defzach",
				},
				["Arms"] = {
					["builtIn"] = true,
					["date"] = 20230226,
					["spec"] = 1,
					["desc"] = "Arms Warrior priority for Hekili",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "init",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_sunder & variable.emergency_sunder",
								["action"] = "sunder_armor",
							}, -- [2]
							{
								["action"] = "pummel",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.berserker_stance.up",
								["list_name"] = "berserker_stance",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.battle_stance.up",
								["list_name"] = "battle_stance",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.defensive_stance.up",
								["list_name"] = "defensive_stance",
							}, -- [6]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["action"] = "berserker_stance",
								["criteria"] = "buff.stance.down",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.commanding_shout & buff.my_battle_shout.down & buff.my_commanding_shout.down",
								["action"] = "commanding_shout",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.battle_shout & buff.my_battle_shout.down & buff.my_commanding_shout.down",
								["action"] = "battle_shout",
							}, -- [3]
						},
						["init"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( debuff.training_dummy.up & 300 ) || target.time_to_die",
								["var_name"] = "time_to_die",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "target.health.pct < 20",
								["var_name"] = "execute_phase",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "settings.debuff_sunder_enabled & variable.time_to_die > ( ( 5 - debuff.sunder_armor.stack ) * ( 1.5 + latency ) ) + 3",
								["var_name"] = "should_sunder",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! debuff.major_armor_reduction.up || ( debuff.sunder_armor.up & debuff.sunder_armor.stack < 5 )",
								["var_name"] = "build_sunder",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.build_sunder & debuff.sunder_armor.stack = 5 & debuff.sunder_armor.remains < 7 & cooldown.bloodthirst.remains & cooldown.whirlwind.remains & ! buff.bloodsurge.up",
								["var_name"] = "maintain_sunder",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "debuff.sunder_armor.up & debuff.sunder_armor.remains < 1.5",
								["var_name"] = "emergency_sunder",
							}, -- [6]
						},
						["battle_stance"] = {
							{
								["enabled"] = true,
								["criteria"] = "target.outside8",
								["action"] = "charge",
							}, -- [1]
							{
								["use_off_gcd"] = 1,
								["enabled"] = true,
								["criteria"] = "rage.deficit > 20",
								["action"] = "bloodrage",
							}, -- [2]
							{
								["use_off_gcd"] = 1,
								["enabled"] = true,
								["criteria"] = "rage.current >= settings.queueing_threshold & active_enemies = 1 & ! buff.recklessness.up & ( ! variable.execute_phase || settings.execute_queueing_enabled )",
								["action"] = "heroic_strike",
							}, -- [3]
							{
								["use_off_gcd"] = 1,
								["enabled"] = true,
								["criteria"] = "rage.current >= settings.queueing_threshold & active_enemies > 1 & ! buff.recklessness.up & ( ! variable.execute_phase || settings.execute_queueing_enabled )",
								["action"] = "cleave",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_sunder & ( variable.build_sunder || variable.maintain_sunder )",
								["action"] = "sunder_armor",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.up & debuff.shattering_throw.down",
								["action"] = "shattering_throw",
							}, -- [6]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "hyperspeed_acceleration",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "debuff.rend.remains <= settings.rend_refresh_time",
								["action"] = "rend",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( buff.overpower_ready.up & ! buff.taste_for_blood.up ) || ( buff.taste_for_blood.up & ( ! settings.optimize_overpower || buff.taste_for_blood.remains < 1.5 ) )",
								["action"] = "overpower",
							}, -- [11]
							{
								["action"] = "victory_rush",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "debuff.rend.remains > 12 & cooldown.bladestorm.up & cooldown.recklessness.up",
								["action"] = "berserker_stance",
							}, -- [13]
							{
								["use_off_gcd"] = 1,
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "sweeping_strikes",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "debuff.rend.remains >= action.bladestorm.duration + action.overpower.gcd & ( ! variable.execute_phase || active_enemies > 3 )",
								["action"] = "bladestorm",
							}, -- [15]
							{
								["action"] = "execute",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "debuff.rend.remains >= action.bladestorm.duration + action.overpower.gcd",
								["action"] = "bladestorm",
							}, -- [17]
							{
								["action"] = "mortal_strike",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "settings.debuff_demoshout_enabled & ! debuff.demoralizing_shout.up",
								["action"] = "demoralizing_shout",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "optimize_overpower & buff.taste_for_blood.up",
								["action"] = "overpower",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "! moving",
								["action"] = "slam",
							}, -- [21]
						},
						["berserker_stance"] = {
							{
								["enabled"] = true,
								["criteria"] = "cooldown.bladestorm.remains < 1.5 || debuff.shattering_throw.up",
								["action"] = "recklessness",
							}, -- [1]
							{
								["action"] = "battle_stance",
								["enabled"] = true,
							}, -- [2]
						},
						["defensive_stance"] = {
							{
								["action"] = "berserker_stance",
								["enabled"] = true,
							}, -- [1]
						},
					},
					["version"] = 20230226,
					["warnings"] = "Imported 6 action lists.\n",
					["author"] = "Defox",
					["profile"] = "actions.precombat+=/berserker_stance,if=buff.stance.down\nactions.precombat+=/commanding_shout,if=assigned_shout.commanding_shout&buff.my_battle_shout.down&buff.my_commanding_shout.down\nactions.precombat+=/battle_shout,if=assigned_shout.battle_shout&buff.my_battle_shout.down&buff.my_commanding_shout.down\n\nactions+=/call_action_list,name=init\nactions+=/sunder_armor,if=variable.should_sunder&variable.emergency_sunder\nactions+=/pummel\nactions+=/run_action_list,name=berserker_stance,if=buff.berserker_stance.up\nactions+=/run_action_list,name=battle_stance,if=buff.battle_stance.up\nactions+=/run_action_list,name=defensive_stance,if=buff.defensive_stance.up\n\nactions.init+=/variable,name=time_to_die,value=(debuff.training_dummy.up&300)||target.time_to_die\nactions.init+=/variable,name=execute_phase,value=target.health.pct<20\nactions.init+=/variable,name=should_sunder,value=settings.debuff_sunder_enabled&variable.time_to_die>((5-debuff.sunder_armor.stack)*(1.5+latency))+3\nactions.init+=/variable,name=build_sunder,value=!debuff.major_armor_reduction.up||(debuff.sunder_armor.up&debuff.sunder_armor.stack<5)\nactions.init+=/variable,name=maintain_sunder,value=!variable.build_sunder&debuff.sunder_armor.stack=5&debuff.sunder_armor.remains<7&cooldown.bloodthirst.remains&cooldown.whirlwind.remains&!buff.bloodsurge.up\nactions.init+=/variable,name=emergency_sunder,value=debuff.sunder_armor.up&debuff.sunder_armor.remains<1.5\n\nactions.battle_stance+=/charge,if=target.outside8\nactions.battle_stance+=/bloodrage,use_off_gcd=1,if=rage.deficit>20\nactions.battle_stance+=/heroic_strike,use_off_gcd=1,if=rage.current>=settings.queueing_threshold&active_enemies=1&!buff.recklessness.up&(!variable.execute_phase||settings.execute_queueing_enabled)\nactions.battle_stance+=/cleave,use_off_gcd=1,if=rage.current>=settings.queueing_threshold&active_enemies>1&!buff.recklessness.up&(!variable.execute_phase||settings.execute_queueing_enabled)\nactions.battle_stance+=/sunder_armor,if=variable.should_sunder&(variable.build_sunder||variable.maintain_sunder)\nactions.battle_stance+=/shattering_throw,if=buff.bloodlust.up&debuff.shattering_throw.down\nactions.battle_stance+=/potion\nactions.battle_stance+=/use_items\nactions.battle_stance+=/hyperspeed_acceleration\nactions.battle_stance+=/rend,if=debuff.rend.remains<=settings.rend_refresh_time\nactions.battle_stance+=/overpower,if=(buff.overpower_ready.up&!buff.taste_for_blood.up)||(buff.taste_for_blood.up&(!settings.optimize_overpower||buff.taste_for_blood.remains<1.5))\nactions.battle_stance+=/victory_rush\nactions.battle_stance+=/berserker_stance,if=debuff.rend.remains>12&cooldown.bladestorm.up&cooldown.recklessness.up\nactions.battle_stance+=/sweeping_strikes,use_off_gcd=1,if=active_enemies>1\nactions.battle_stance+=/bladestorm,if=debuff.rend.remains>=action.bladestorm.duration+action.overpower.gcd&(!variable.execute_phase||active_enemies>3)\nactions.battle_stance+=/execute\nactions.battle_stance+=/bladestorm,if=debuff.rend.remains>=action.bladestorm.duration+action.overpower.gcd\nactions.battle_stance+=/mortal_strike\nactions.battle_stance+=/demoralizing_shout,if=settings.debuff_demoshout_enabled&!debuff.demoralizing_shout.up\nactions.battle_stance+=/overpower,if=optimize_overpower&buff.taste_for_blood.up\nactions.battle_stance+=/slam,if=!moving\n\nactions.berserker_stance+=/recklessness,if=cooldown.bladestorm.remains<1.5||debuff.shattering_throw.up\nactions.berserker_stance+=/battle_stance\n\nactions.defensive_stance+=/berserker_stance",
				},
				["Fire Wowhead"] = {
					["source"] = "https://www.wowhead.com/wotlk/guide/classes/mage/fire/dps-rotation-cooldowns-abilities-pve",
					["builtIn"] = true,
					["date"] = 20230925,
					["spec"] = 8,
					["desc"] = "2023-09-25: Initial translation from Wowhead.",
					["lists"] = {
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "target.within10",
								["action"] = "blast_wave",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "flamestrike",
								["criteria"] = "buff.firestarter.up",
								["line_cd"] = "8",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "target.within12",
								["action"] = "dragons_breath",
							}, -- [3]
							{
								["action"] = "blizzard",
								["enabled"] = true,
							}, -- [4]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "counterspell",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "spellsteal",
								["line_cd"] = "spellsteal_cooldown",
							}, -- [2]
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "combustion",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "icy_veins",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "flame_cap",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["description"] = "Use any trinkets that aren't otherwise specified.",
								["action"] = "use_items",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "living_bomb",
								["cycle_targets"] = 1,
								["max_cycle_targets"] = "living_bomb_cap",
								["criteria"] = "target.time_to_die > 12 & debuff.living_bomb.down",
								["description"] = "Regular Rotation",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2",
								["action"] = "call_action_list",
								["list_name"] = "aoe",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react",
								["action"] = "pyroblast",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "moving",
								["action"] = "fire_blast",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "glyph.frostfire.enabled",
								["action"] = "frostfire_bolt",
							}, -- [13]
							{
								["action"] = "fireball",
								["enabled"] = true,
							}, -- [14]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "raid & buff.arcane_brilliance.down",
								["action"] = "arcane_brilliance",
								["description"] = "September 2023",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! raid & buff.arcane_brilliance.down & buff.arcane_intellect.down",
								["action"] = "arcane_intellect",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.unique_armor.down",
								["action"] = "molten_armor",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "group & active_dot.focus_magic = 0",
								["action"] = "focus_magic",
							}, -- [4]
						},
					},
					["version"] = 20230925,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 6: Unsupported action 'flame_cap'.\n\nImported 3 action lists.\n",
					["author"] = "Hekili",
					["profile"] = "# Mage: Fire\n# https://www.icy-veins.com/wotlk-classic/fire-mage-dps-pve-rotation-cooldowns-abilities\n# September 2023\n\n## Precombat\nactions.precombat+=/arcane_brilliance,if=raid&buff.arcane_brilliance.down\nactions.precombat+=/arcane_intellect,if=!raid&buff.arcane_brilliance.down&buff.arcane_intellect.down\nactions.precombat+=/molten_armor,if=buff.unique_armor.down\nactions.precombat+=/focus_magic,if=group&active_dot.focus_magic=0\n\n## Default\nactions+=/counterspell\nactions+=/spellsteal,line_cd=spellsteal_cooldown\n## Cooldowns\nactions+=/mirror_image\nactions+=/combustion\nactions+=/icy_veins\nactions+=/flame_cap\nactions+=/potion\n# Use any trinkets that aren't otherwise specified.\nactions+=/use_items\n# Regular Rotation\nactions+=/living_bomb,cycle_targets=1,max_cycle_targets=living_bomb_cap,if=target.time_to_die>12&debuff.living_bomb.down\nactions+=/call_action_list,name=aoe,if=active_enemies>2\nactions+=/pyroblast,if=buff.hot_streak.react\nactions+=/fire_blast,if=moving\nactions+=/frostfire_bolt,if=glyph.frostfire.enabled\nactions+=/fireball\n\nactions.aoe+=/blast_wave,if=target.within10\nactions.aoe+=/flamestrike,line_cd=8,if=buff.firestarter.up\nactions.aoe+=/dragons_breath,if=target.within12\nactions.aoe+=/blizzard",
				},
				["Retribution (LightClub)"] = {
					["source"] = "https://discord.gg/lightclubclassic",
					["builtIn"] = true,
					["date"] = 20231114.1,
					["spec"] = 2,
					["desc"] = "Retribution Paladin rotation for Hekili based on LightClub-Discord recommendations",
					["lists"] = {
						["single"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.seal.down",
								["action"] = "seal_of_vengeance",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( ( variable.time_to_die * 0.9 - 20 ) > action.avenging_wrath.cooldown ) & ( ! buff.seal_of_vengeance.up || dot.holy_vengeance.stack > 4 )",
								["action"] = "avenging_wrath",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "mana.percent < settings.judgement_of_wisdom_threshold",
								["action"] = "judgement_of_wisdom",
							}, -- [3]
							{
								["action"] = "judgement_of_light",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.libram_of_three_truths & buff.formidable.count < 5",
								["action"] = "crusader_strike",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier10ret_2pc = 1 & settings.highroll",
								["action"] = "divine_storm",
							}, -- [6]
							{
								["action"] = "crusader_strike",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "divine_storm",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "mana.percent < settings.divine_plea_threshold",
								["action"] = "divine_plea",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( target.is_demon || target.is_undead ) & buff.the_art_of_war.up & next_primary_at > settings.primary_slack & mana.percent > ( settings.judgement_of_wisdom_threshold / 4 )",
								["action"] = "exorcism",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! buff.active_consecration.up & next_primary_at > settings.primary_slack & mana.percent > ( settings.judgement_of_wisdom_threshold / 3 )",
								["action"] = "consecration",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.the_art_of_war.up & next_primary_at > settings.primary_slack & mana.percent > ( settings.judgement_of_wisdom_threshold / 3.5 )",
								["action"] = "exorcism",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( target.is_demon || target.is_undead ) & next_primary_at > settings.primary_slack & mana.percent > ( settings.judgement_of_wisdom_threshold / 1.4 )",
								["action"] = "holy_wrath",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "settings.fol_on_aow & buff.the_art_of_war.up & next_primary_at > primary_slack & ! buff.divine_plea.up & cooldown.exorcism.remains > 6",
								["action"] = "flash_of_light",
							}, -- [14]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "init",
							}, -- [1]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [3]
							{
								["use_off_gcd"] = 1,
								["action"] = "hyperspeed_acceleration",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! settings.hor_macros & glyph.reckoning.enabled & ( debuff.training_dummy.up || ! aggro )",
								["action"] = "hand_of_reckoning",
								["use_off_gcd"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.formidable.up & buff.formidable.remains < 2",
								["action"] = "crusader_strike",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "run_action_list",
								["list_name"] = "cleave",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & variable.execute_phase",
								["action"] = "run_action_list",
								["list_name"] = "execute",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single",
							}, -- [9]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["description"] = "November 2023",
								["action"] = "retribution_aura",
								["criteria"] = "! up & settings.maintain_aura & assigned_aura.retribution_aura",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_aura & assigned_aura.concentration_aura",
								["action"] = "concentration_aura",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_aura & assigned_aura.crusader_aura",
								["action"] = "crusader_aura",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_aura & assigned_aura.devotion_aura",
								["action"] = "devotion_aura",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_aura & assigned_aura.fire_resistance_aura",
								["action"] = "fire_resistance_aura",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_aura & assigned_aura.frost_resistance_aura",
								["action"] = "frost_resistance_aura",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_aura & assigned_aura.shadow_resistance_aura",
								["action"] = "shadow_resistance_aura",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_blessing & assigned_blessing.blessing_of_kings",
								["action"] = "blessing_of_kings",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_blessing & assigned_blessing.blessing_of_might",
								["action"] = "blessing_of_might",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_blessing & assigned_blessing.blessing_of_sanctuary",
								["action"] = "blessing_of_sanctuary",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_blessing & assigned_blessing.blessing_of_wisdom",
								["action"] = "blessing_of_wisdom",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.seal.remains < 360",
								["action"] = "seal_of_vengeance",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "mana.percent < settings.divine_plea_threshold",
								["action"] = "divine_plea",
							}, -- [13]
						},
						["execute"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.seal.down",
								["action"] = "seal_of_vengeance",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( ! buff.seal_of_vengeance.up || dot.holy_vengeance.stack > 4 )",
								["action"] = "avenging_wrath",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "mana.percent < settings.judgement_of_wisdom_threshold / 2.5",
								["action"] = "judgement_of_wisdom",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier10ret_2pc = 0 || ! settings.highroll",
								["action"] = "hammer_of_wrath",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "mana.percent < settings.judgement_of_wisdom_threshold",
								["action"] = "judgement_of_wisdom",
							}, -- [5]
							{
								["action"] = "judgement_of_light",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier10ret_2pc = 1 & settings.highroll",
								["action"] = "divine_storm",
							}, -- [7]
							{
								["action"] = "crusader_strike",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier10ret_2pc = 1",
								["action"] = "divine_storm",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier10ret_2pc = 1 & settings.highroll",
								["action"] = "hammer_of_wrath",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! buff.active_consecration.up & variable.time_to_die > 4",
								["action"] = "consecration",
							}, -- [11]
							{
								["action"] = "divine_storm",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "mana.percent < ( settings.divine_plea_threshold / 2 )",
								["action"] = "divine_plea",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.the_art_of_war.up & ( next_primary_at <? cooldown.hammer_of_wrath.remains ) > settings.primary_slack",
								["action"] = "exorcism",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "mana.percent < settings.divine_plea_threshold & ( next_primary_at <? cooldown.hammer_of_wrath.remains ) > settings.primary_slack",
								["action"] = "divine_plea",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "( target.is_demon || target.is_undead ) & ( next_primary_at <? cooldown.hammer_of_wrath.remains ) > settings.primary_slack & mana.percent > ( settings.judgement_of_wisdom_threshold / 1.4 )",
								["action"] = "holy_wrath",
							}, -- [16]
						},
						["init"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( debuff.training_dummy.up & 300 ) || target.time_to_die",
								["var_name"] = "time_to_die",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "target.health.pct < 20",
								["var_name"] = "execute_phase",
							}, -- [2]
						},
						["cleave"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.seal.down",
								["action"] = "seal_of_command",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( ( ( ( variable.time_to_die * 0.9 ) - 20 ) > action.avenging_wrath.cooldown ) || ( target.health.pct <= 20 ) ) & ( ! buff.seal_of_vengeance.up || dot.holy_vengeance.stack > 4 )",
								["action"] = "avenging_wrath",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "mana.percent < ( settings.judgement_of_wisdom_threshold / 3 )",
								["action"] = "judgement_of_wisdom",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier10ret_2pc = 1",
								["action"] = "divine_storm",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! moving & ! buff.active_consecration.up & active_enemies > 2",
								["action"] = "consecration",
							}, -- [5]
							{
								["action"] = "crusader_strike",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "divine_storm",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "hammer_of_wrath",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! moving & ! buff.active_consecration.up & mana.percent > ( settings.judgement_of_wisdom_threshold / 4 )",
								["action"] = "consecration",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "mana.percent < ( settings.judgement_of_wisdom_threshold / 2 )",
								["action"] = "judgement_of_wisdom",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "mana.percent < ( settings.divine_plea_threshold / 2 )",
								["action"] = "divine_plea",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "( target.is_demon || target.is_undead ) & active_enemies > 2 & mana.percent > ( settings.judgement_of_wisdom_threshold / 1.8 )",
								["action"] = "holy_wrath",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.the_art_of_war.up & ( cooldown.crusader_strike.remains <? cooldown.divine_storm.remains ) > settings.primary_slack & mana.percent > ( settings.judgement_of_wisdom_threshold / 1.7 )",
								["action"] = "exorcism",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "mana.percent < settings.judgement_of_wisdom_threshold",
								["action"] = "judgement_of_wisdom",
							}, -- [14]
							{
								["action"] = "judgement_of_light",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "mana.percent < settings.divine_plea_threshold",
								["action"] = "divine_plea",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "( target.is_demon || target.is_undead ) & mana.percent > ( settings.judgement_of_wisdom_threshold / 1.7 )",
								["action"] = "holy_wrath",
							}, -- [17]
						},
					},
					["version"] = 20231114.1,
					["warnings"] = "Imported 6 action lists.\n",
					["author"] = "Supernuss",
					["basedOn"] = "Retribution",
					["profile"] = "# Paladin: Retribution\n# LightClub-Discord - https://discord.gg/lightclubclassic\n# November 2023\n\n## Precombat\nactions.precombat+=/retribution_aura,if=!up&settings.maintain_aura&assigned_aura.retribution_aura\nactions.precombat+=/concentration_aura,if=!up&settings.maintain_aura&assigned_aura.concentration_aura\nactions.precombat+=/crusader_aura,if=!up&settings.maintain_aura&assigned_aura.crusader_aura\nactions.precombat+=/devotion_aura,if=!up&settings.maintain_aura&assigned_aura.devotion_aura\nactions.precombat+=/fire_resistance_aura,if=!up&settings.maintain_aura&assigned_aura.fire_resistance_aura\nactions.precombat+=/frost_resistance_aura,if=!up&settings.maintain_aura&assigned_aura.frost_resistance_aura\nactions.precombat+=/shadow_resistance_aura,if=!up&settings.maintain_aura&assigned_aura.shadow_resistance_aura\nactions.precombat+=/blessing_of_kings,if=!up&settings.maintain_blessing&assigned_blessing.blessing_of_kings\nactions.precombat+=/blessing_of_might,if=!up&settings.maintain_blessing&assigned_blessing.blessing_of_might\nactions.precombat+=/blessing_of_sanctuary,if=!up&settings.maintain_blessing&assigned_blessing.blessing_of_sanctuary\nactions.precombat+=/blessing_of_wisdom,if=!up&settings.maintain_blessing&assigned_blessing.blessing_of_wisdom\nactions.precombat+=/seal_of_vengeance,if=buff.seal.remains<360\nactions.precombat+=/divine_plea,if=mana.percent<settings.divine_plea_threshold\n\n## Default\nactions+=/call_action_list,name=init\nactions+=/use_items\nactions+=/potion\nactions+=/hyperspeed_acceleration,use_off_gcd=1\nactions+=/hand_of_reckoning,use_off_gcd=1,if=!settings.hor_macros&glyph.reckoning.enabled&(debuff.training_dummy.up||!aggro)\nactions+=/crusader_strike,if=buff.formidable.up&buff.formidable.remains<2\nactions+=/run_action_list,name=cleave,if=active_enemies>1\nactions+=/run_action_list,name=execute,if=active_enemies=1&variable.execute_phase\nactions+=/run_action_list,name=single\n\n## Init Parameters\nactions.init+=/variable,name=time_to_die,value=(debuff.training_dummy.up&300)||target.time_to_die\nactions.init+=/variable,name=execute_phase,value=target.health.pct<20\n\n## Cleave\nactions.cleave+=/seal_of_command,if=buff.seal.down\nactions.cleave+=/avenging_wrath,if=((((variable.time_to_die*0.9)-20)>action.avenging_wrath.cooldown)||(target.health.pct<=20))&(!buff.seal_of_vengeance.up||dot.holy_vengeance.stack>4)\nactions.cleave+=/judgement_of_wisdom,if=mana.percent<(settings.judgement_of_wisdom_threshold/3)\nactions.cleave+=/divine_storm,if=set_bonus.tier10ret_2pc=1\nactions.cleave+=/consecration,if=!moving&!buff.active_consecration.up&active_enemies>2\nactions.cleave+=/crusader_strike\nactions.cleave+=/divine_storm\nactions.cleave+=/hammer_of_wrath\nactions.cleave+=/consecration,if=!moving&!buff.active_consecration.up&mana.percent>(settings.judgement_of_wisdom_threshold/4)\nactions.cleave+=/judgement_of_wisdom,if=mana.percent<(settings.judgement_of_wisdom_threshold/2)\nactions.cleave+=/divine_plea,if=mana.percent<(settings.divine_plea_threshold/2)\nactions.cleave+=/holy_wrath,if=(target.is_demon||target.is_undead)&active_enemies>2&mana.percent>(settings.judgement_of_wisdom_threshold/1.8)\nactions.cleave+=/exorcism,if=buff.the_art_of_war.up&(cooldown.crusader_strike.remains<?cooldown.divine_storm.remains)>settings.primary_slack&mana.percent>(settings.judgement_of_wisdom_threshold/1.7)\nactions.cleave+=/judgement_of_wisdom,if=mana.percent<settings.judgement_of_wisdom_threshold\nactions.cleave+=/judgement_of_light\nactions.cleave+=/divine_plea,if=mana.percent<settings.divine_plea_threshold\nactions.cleave+=/holy_wrath,if=(target.is_demon||target.is_undead)&mana.percent>(settings.judgement_of_wisdom_threshold/1.7)\n\n## Execute\nactions.execute+=/seal_of_vengeance,if=buff.seal.down\nactions.execute+=/avenging_wrath,if=(!buff.seal_of_vengeance.up||dot.holy_vengeance.stack>4)\nactions.execute+=/judgement_of_wisdom,if=mana.percent<settings.judgement_of_wisdom_threshold/2.5\nactions.execute+=/hammer_of_wrath,if=set_bonus.tier10ret_2pc=0||!settings.highroll\nactions.execute+=/judgement_of_wisdom,if=mana.percent<settings.judgement_of_wisdom_threshold\nactions.execute+=/judgement_of_light\nactions.execute+=/divine_storm,if=set_bonus.tier10ret_2pc=1&settings.highroll\nactions.execute+=/crusader_strike\nactions.execute+=/divine_storm,if=set_bonus.tier10ret_2pc=1\nactions.execute+=/hammer_of_wrath,if=set_bonus.tier10ret_2pc=1&settings.highroll\nactions.execute+=/consecration,if=!buff.active_consecration.up&variable.time_to_die>4\nactions.execute+=/divine_storm\nactions.execute+=/divine_plea,if=mana.percent<(settings.divine_plea_threshold/2)\nactions.execute+=/exorcism,if=buff.the_art_of_war.up&(next_primary_at<?cooldown.hammer_of_wrath.remains)>settings.primary_slack\nactions.execute+=/divine_plea,if=mana.percent<settings.divine_plea_threshold&(next_primary_at<?cooldown.hammer_of_wrath.remains)>settings.primary_slack\nactions.execute+=/holy_wrath,if=(target.is_demon||target.is_undead)&(next_primary_at<?cooldown.hammer_of_wrath.remains)>settings.primary_slack&mana.percent>(settings.judgement_of_wisdom_threshold/1.4)\n\n## Single\nactions.single+=/seal_of_vengeance,if=buff.seal.down\nactions.single+=/avenging_wrath,if=((variable.time_to_die*0.9-20)>action.avenging_wrath.cooldown)&(!buff.seal_of_vengeance.up||dot.holy_vengeance.stack>4)\nactions.single+=/judgement_of_wisdom,if=mana.percent<settings.judgement_of_wisdom_threshold\nactions.single+=/judgement_of_light\nactions.single+=/crusader_strike,if=set_bonus.libram_of_three_truths&buff.formidable.count<5\nactions.single+=/divine_storm,if=set_bonus.tier10ret_2pc=1&settings.highroll\nactions.single+=/crusader_strike\nactions.single+=/divine_storm\nactions.single+=/divine_plea,if=mana.percent<settings.divine_plea_threshold\nactions.single+=/exorcism,if=(target.is_demon||target.is_undead)&buff.the_art_of_war.up&next_primary_at>settings.primary_slack&mana.percent>(settings.judgement_of_wisdom_threshold/4)\nactions.single+=/consecration,if=!buff.active_consecration.up&next_primary_at>settings.primary_slack&mana.percent>(settings.judgement_of_wisdom_threshold/3)\nactions.single+=/exorcism,if=buff.the_art_of_war.up&next_primary_at>settings.primary_slack&mana.percent>(settings.judgement_of_wisdom_threshold/3.5)\nactions.single+=/holy_wrath,if=(target.is_demon||target.is_undead)&next_primary_at>settings.primary_slack&mana.percent>(settings.judgement_of_wisdom_threshold/1.4)\nactions.single+=/flash_of_light,if=settings.fol_on_aow&buff.the_art_of_war.up&next_primary_at>primary_slack&!buff.divine_plea.up&cooldown.exorcism.remains>6",
				},
				["Blood (IV)"] = {
					["source"] = "https://www.icy-veins.com/wotlk-classic/blood-death-knight-tank-pve-rotation-cooldowns-abilities",
					["builtIn"] = true,
					["date"] = 20230411,
					["spec"] = 6,
					["desc"] = "This priority is based on the Icy Veins guide.",
					["lists"] = {
						["aoe"] = {
							{
								["action"] = "death_and_decay",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "dot.frost_fever.ticking & dot.blood_plague.ticking & ( active_dot.frost_fever + active_dot.blood_plague < true_active_enemies * 2 )",
								["action"] = "pestilence",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! dot.frost_fever.ticking",
								["action"] = "icy_touch",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! dot.blood_plague.ticking",
								["action"] = "plague_strike",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "health.pct > 60 & ( active_enemies > 2 || ! talent.heart_strike.enabled )",
								["action"] = "blood_boil",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3",
								["action"] = "heart_strike",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < 20",
								["action"] = "death_coil",
							}, -- [7]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "mind_freeze",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "down",
								["action"] = "horn_of_winter",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "time < 2",
								["action"] = "death_grip",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "health.pct <= 60",
								["action"] = "death_strike",
							}, -- [4]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "unholy_frenzy",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["strict"] = 1,
								["action"] = "run_action_list",
								["list_name"] = "aoe",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "dot.blood_plague.ticking & dot.blood_plague.refreshable || dot.frost_fever.ticking & dot.frost_fever.refreshable",
								["action"] = "pestilence",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! dot.frost_fever.ticking || frost_runes.time_to_max < gcd",
								["action"] = "icy_touch",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! dot.blood_plague.ticking",
								["action"] = "plague_strike",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "blood_runes.time_to_max < gcd",
								["action"] = "blood_strike",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "health.current + action.death_strike.healing < health.max & dot.frost_fever.ticking & dot.blood_plague.ticking",
								["action"] = "death_strike",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( glyph.blood_tap.enabled || health.pct > 60 ) & blood_runes.current = 0",
								["action"] = "blood_tap",
							}, -- [13]
							{
								["action"] = "rune_strike",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "heart_strike",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < 20",
								["action"] = "death_coil",
							}, -- [16]
							{
								["action"] = "blood_strike",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "( blood_runes.current + frost_runes.current + unholy_runes.current ) < 2",
								["action"] = "empower_rune_weapon",
							}, -- [18]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["action"] = "frost_presence",
								["criteria"] = "buff.presence.down",
							}, -- [1]
						},
					},
					["version"] = 20230411,
					["warnings"] = "WARNING:  The import for 'aoe' required some automated changes.\nLine 5: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nImported 3 action lists.\n",
					["author"] = "Icy Veins",
					["profile"] = "## Blood Death Knight (Icy Veins)\n## 2023-04-11\n\nactions.precombat+=/frost_presence,if=buff.presence.down\n\nactions+=/mind_freeze\nactions+=/horn_of_winter,if=down\nactions+=/death_grip,if=time<2\nactions+=/death_strike,if=health.pct<=60\nactions+=/use_items\nactions+=/unholy_frenzy\nactions+=/run_action_list,name=aoe,strict=1,if=active_enemies>1\nactions+=/pestilence,if=dot.blood_plague.ticking&dot.blood_plague.refreshable||dot.frost_fever.ticking&dot.frost_fever.refreshable\nactions+=/icy_touch,if=!dot.frost_fever.ticking||frost_runes.time_to_max<gcd\nactions+=/plague_strike,if=!dot.blood_plague.ticking\nactions+=/blood_strike,if=blood_runes.time_to_max<gcd\nactions+=/death_strike,if=health.current+action.death_strike.healing<health.max&dot.frost_fever.ticking&dot.blood_plague.ticking\nactions+=/blood_tap,if=(glyph.blood_tap.enabled||health.pct>60)&blood_runes.current=0\nactions+=/rune_strike\nactions+=/heart_strike\nactions+=/death_coil,if=runic_power.deficit<20\nactions+=/blood_strike\n## TODO: Determine Death Rune situation.\n## actions+=/icy_touch,if=???\nactions+=/empower_rune_weapon,if=(blood_runes.current+frost_runes.current+unholy_runes.current)<2\n\nactions.aoe+=/death_and_decay\nactions.aoe+=/pestilence,if=dot.frost_fever.ticking&dot.blood_plague.ticking&(active_dot.frost_fever+active_dot.blood_plague<true_active_enemies*2)\nactions.aoe+=/icy_touch,cycle_targets=1,if=!dot.frost_fever.ticking\nactions.aoe+=/plague_strike,cycle_targets=1,if=!dot.blood_plague.ticking\nactions.aoe+=/blood_boil,if=health.pct>60&(active_enemies>2||!talent.heart_strike)\nactions.aoe+=/heart_strike,if=active_enemies<3\nactions.aoe+=/death_coil,if=runic_power.deficit<20",
				},
				["Unholy (IV)"] = {
					["source"] = "https://www.icy-veins.com/wotlk-classic/unholy-death-knight-dps-pve-rotation-cooldowns-abilities",
					["builtIn"] = true,
					["date"] = 20220926.3,
					["spec"] = 6,
					["desc"] = "This priority is based on the Icy Veins guide.",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "mind_freeze",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! dot.blood_plague.ticking & target.time_to_die >= 10 & fight_remains >= 10",
								["action"] = "plague_strike",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! dot.frost_fever.ticking & target.time_to_die >= 10 & fight_remains >= 10",
								["action"] = "icy_touch",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "dot.frost_fever.ticking & dot.blood_plague.ticking & ( active_dot.frost_fever < active_enemies || active_dot.blood_plague < active_enemies )",
								["action"] = "pestilence",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & ! moving & fight_remains > 8",
								["action"] = "death_and_decay",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "dot.frost_fever.ticking & dot.blood_plague.ticking || fight_remains < 8",
								["action"] = "blood_strike",
							}, -- [6]
							{
								["action"] = "scourge_strike",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "blood_runes.current = 0",
								["action"] = "blood_tap",
							}, -- [8]
							{
								["action"] = "summon_gargoyle",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "pet.ghoul.up",
								["action"] = "ghoul_frenzy",
							}, -- [10]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit <= 15",
								["action"] = "death_coil",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.horn_of_winter.down",
								["action"] = "horn_of_winter",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! buff.blood_presence.up & action.summon_gargoyle.time_since < gcd * 2 & cooldown.blood_tap.remains",
								["action"] = "blood_presence",
							}, -- [14]
							{
								["buff_name"] = "blood_tap",
								["enabled"] = true,
								["criteria"] = "cooldown.empower_rune_weapon.ready & blood_runes.current = 0 & frost_runes.current = 0 & unholy_runes.current = 0",
								["action"] = "cancel_buff",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.blood_tap.down & ( blood_runes.current + frost_runes.current + unholy_runes.current < 3 )",
								["action"] = "empower_rune_weapon",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.current > 60",
								["action"] = "death_coil",
							}, -- [17]
							{
								["action"] = "icy_touch",
								["enabled"] = true,
							}, -- [18]
							{
								["action"] = "plague_strike",
								["enabled"] = true,
							}, -- [19]
							{
								["action"] = "blood_strike",
								["enabled"] = true,
							}, -- [20]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["action"] = "unholy_presence",
								["criteria"] = "buff.presence.down & cooldown.summon_gargoyle.ready",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.presence.down & ! cooldown.summon_gargoyle.ready",
								["action"] = "blood_presence",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_of_ghouls.enabled",
								["action"] = "raise_dead",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "dot.frost_fever.ticking & dot.blood_plague.ticking || target.time_to_die < 10 || fight_remains < 10",
								["var_name"] = "diseases_ok",
							}, -- [4]
						},
					},
					["version"] = 20220926.3,
					["warnings"] = "Imported 2 action lists.\n",
					["author"] = "Icy Veins",
					["profile"] = "## Unholy Death Knight (Icy Veins)\n## 2022-09-26\n\nactions.precombat+=/unholy_presence,if=buff.presence.down&cooldown.summon_gargoyle.ready\nactions.precombat+=/blood_presence,if=buff.presence.down&!cooldown.summon_gargoyle.ready\nactions.precombat+=/raise_dead,if=talent.master_of_ghouls.enabled\nactions.precombat+=/variable,name=diseases_ok,value=dot.frost_fever.ticking&dot.blood_plague.ticking||target.time_to_die<10||fight_remains<10\n\nactions+=/mind_freeze\nactions+=/plague_strike,if=!dot.blood_plague.ticking&target.time_to_die>=10&fight_remains>=10\nactions+=/icy_touch,if=!dot.frost_fever.ticking&target.time_to_die>=10&fight_remains>=10\nactions+=/pestilence,if=dot.frost_fever.ticking&dot.blood_plague.ticking&(active_dot.frost_fever<active_enemies||active_dot.blood_plague<active_enemies)\nactions+=/death_and_decay,if=active_enemies>1&!moving&fight_remains>8\nactions+=/blood_strike,if=dot.frost_fever.ticking&dot.blood_plague.ticking||fight_remains<8\nactions+=/scourge_strike\nactions+=/blood_tap,if=blood_runes.current=0\nactions+=/summon_gargoyle\nactions+=/ghoul_frenzy,if=pet.ghoul.up\nactions+=/use_items\nactions+=/death_coil,if=runic_power.deficit<=15\nactions+=/horn_of_winter,if=buff.horn_of_winter.down\nactions+=/blood_presence,if=!buff.blood_presence.up&action.summon_gargoyle.time_since<gcd*2&cooldown.blood_tap.remains\nactions+=/cancel_buff,name=blood_tap,if=cooldown.empower_rune_weapon.ready&blood_runes.current=0&frost_runes.current=0&unholy_runes.current=0\nactions+=/empower_rune_weapon,if=buff.blood_tap.down&(blood_runes.current+frost_runes.current+unholy_runes.current<3)\nactions+=/death_coil,if=runic_power.current>60\nactions+=/icy_touch\nactions+=/plague_strike\nactions+=/blood_strike",
				},
				["Feral DPS"] = {
					["builtIn"] = true,
					["date"] = 20240512.2,
					["spec"] = 11,
					["desc"] = "WotLK Feral Druid Priorities\n\nToggle advanced rotation recommendations in the class options.",
					["profile"] = "actions.precombat+=/mark_of_the_wild,if=!up&!buff.mark_of_the_wild.up\n#actions.precombat+=/thorns,if=!up\nactions.precombat+=/cat_form,if=!up&!buff.bear_form.up\nactions.precombat+=/potion\n\nactions+=/use_items\nactions+=/potion\nactions+=/hyperspeed_acceleration,use_off_gcd=1,if=set_bonus.tier7feral_4pc=1&(buff.tigers_fury.up||cooldown.tigers_fury.remains>=15)\nactions+=/run_action_list,name=bearweave,if=buff.bear_form.up&bearweaving_enabled\nactions+=/run_action_list,name=bear_tank_aoe,if=buff.bear_form.up&!bearweaving_enabled&active_enemies>4&bear_mode_tank_enabled\nactions+=/run_action_list,name=bear_tank,if=buff.bear_form.up&!bearweaving_enabled&bear_mode_tank_enabled\nactions+=/run_action_list,name=cat_aoe,if=buff.cat_form.up&active_enemies>2\nactions+=/run_action_list,name=cat,if=buff.cat_form.up\nactions+=/cat_form,if=!up\n\nactions.cat+=/tigers_fury,use_off_gcd=1,if=try_tigers_fury\nactions.cat+=/berserk,use_off_gcd=1,if=try_berserk\nactions.cat+=/cancel_buff,buff_name=primal_madness,if=buff.primal_madness.up & energy.current <= 20\nactions.cat+=/bear_form,if=emergency_bearweave\nactions.cat+=/faerie_fire_feral,if=ff_now&target.outside2\nactions.cat+=/feral_charge_cat,if=target.outside7\nactions.cat+=/ravage,if=buff.stampede_cat.remains<1.5\nactions.cat+=/shred,if=debuff.rip.remains<1.5&rip_canextend\nactions.cat+=/rip,if=rip_now\nactions.cat+=/savage_roar,if=roar_now\nactions.cat+=/ferocious_bite,if=bite_now\nactions.cat+=/mangle_cat,if=mangle_now\nactions.cat+=/rake,if=rake_now\nactions.cat+=/feral_charge_cat,if=should_leaveweave\nactions.cat+=/bear_form,if=should_bearweave\nactions.cat+=/ravage\nactions.cat+=/mark_of_the_wild,if=should_flowerweave&mana.pct>settings.min_weave_mana&energy.current<42\nactions.cat+=/shred,if=(excess_e>=action.shred.spend||buff.clearcasting.up||buff.berserk.up||energy.current=energy.max)\n\nactions.cat_aoe+=/tigers_fury,use_off_gcd=1,if=energy.current<60-(buff.clearcasting.up&15||0)\nactions.cat_aoe+=/berserk,if=energy.current>60&cooldown.tigers_fury.remains>=15\nactions.cat_aoe+=/savage_roar,if=!up&ttd>1+latency\nactions.cat_aoe+=/mangle_cat,if=(set_bonus.idol_of_the_corruptor=1||set_bonus.idol_of_mutilation=1)&combo_points.current=0&buff.savage_roar.remains<=1\nactions.cat_aoe+=/shred,if=set_bonus.idol_of_mutilation=1&combo_points.current=0&buff.savage_roar.remains<=1&(ttd>buff.savage_roar.remains+1+latency)\nactions.cat_aoe+=/rake,if=!set_bonus.idol_of_mutilation=1&combo_points.current=0&buff.savage_roar.remains<=1&(ttd>buff.savage_roar.remains+1+latency)\nactions.cat_aoe+=/swipe_cat,if=excess_e>=action.swipe_cat.spend||buff.clearcasting.up\nactions.cat_aoe+=/mark_of_the_wild,if=should_flowerweave&mana.pct>settings.min_weave_mana&energy.current<45\nactions.cat_aoe+=/faerie_fire_feral,if=ff_now\n\nactions.bearweave+=/enrage,use_off_gcd=1,if=!should_cat\nactions.bearweave+=/lacerate,if=emergency_lacerate\nactions.bearweave+=/cat_form,if=should_cat&!emergency_lacerate\nactions.bearweave+=/lacerate,if=lacerate_now\nactions.bearweave+=/mangle_bear\nactions.bearweave+=/lacerate\n\nactions.bear_tank+=/enrage,use_off_gcd=1,if=time<10&rage<80\nactions.bear_tank+=/feral_charge_bear,if=target.outside7\nactions.bear_tank+=/maul,use_off_gcd=1,if=rage.current>55&gcd.remains\nactions.bear_tank+=/berserk\nactions.bear_tank+=/pulverize,if=debuff.lacerate.stack=3&buff.pulverize.remains<3\nactions.bear_tank+=/lacerate,if=debuff.lacerate.up&debuff.lacerate.remains<1.5+latency&debuff.lacerate.remains<ttd&debuff.lacerate.remains<cooldown.pulverize.remains\nactions.bear_tank+=/mangle_bear\nactions.bear_tank+=/thrash\nactions.bear_tank+=/lacerate,if=!debuff.lacerate.up\nactions.bear_tank+=/faerie_fire_feral\nactions.bear_tank+=/lacerate,if=debuff.lacerate.stack<3\nactions.bear_tank+=/swipe_bear\n\n\nactions.bear_tank_aoe+=/enrage,use_off_gcd=1,if=time<10&rage<80\nactions.bear_tank_aoe+=/feral_charge_bear,if=target.outside7\nactions.bear_tank_aoe+=/maul,use_off_gcd=1,if=rage.current>55&gcd.remains\nactions.bear_tank_aoe+=/berserk\nactions.bear_tank_aoe+=/mangle_bear,if=buff.berserk.up\nactions.bear_tank_aoe+=/thrash\nactions.bear_tank_aoe+=/swipe_bear\nactions.bear_tank_aoe+=/pulverize,if=debuff.lacerate.stack=3&buff.pulverize.remains<3\nactions.bear_tank_aoe+=/mangle_bear\nactions.bear_tank_aoe+=/lacerate,if=debuff.lacerate.stack<3",
					["version"] = 20240512.2,
					["warnings"] = "Imported 7 action lists.\n",
					["lists"] = {
						["bear_tank"] = {
							{
								["enabled"] = true,
								["criteria"] = "time < 10 & rage < 80",
								["action"] = "enrage",
								["use_off_gcd"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "target.outside7",
								["action"] = "feral_charge_bear",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "rage.current > 55 & gcd.remains",
								["action"] = "maul",
								["use_off_gcd"] = 1,
							}, -- [3]
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "debuff.lacerate.stack = 3 & buff.pulverize.remains < 3",
								["action"] = "pulverize",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "debuff.lacerate.up & debuff.lacerate.remains < 1.5 + latency & debuff.lacerate.remains < ttd & debuff.lacerate.remains < cooldown.pulverize.remains",
								["action"] = "lacerate",
							}, -- [6]
							{
								["action"] = "mangle_bear",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "thrash",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.lacerate.up",
								["action"] = "lacerate",
							}, -- [9]
							{
								["action"] = "faerie_fire_feral",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "debuff.lacerate.stack < 3",
								["action"] = "lacerate",
							}, -- [11]
							{
								["action"] = "swipe_bear",
								["enabled"] = true,
							}, -- [12]
						},
						["default"] = {
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier7feral_4pc = 1 & ( buff.tigers_fury.up || cooldown.tigers_fury.remains >= 15 )",
								["action"] = "hyperspeed_acceleration",
								["use_off_gcd"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.bear_form.up & bearweaving_enabled",
								["action"] = "run_action_list",
								["list_name"] = "bearweave",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.bear_form.up & ! bearweaving_enabled & active_enemies > 4 & bear_mode_tank_enabled",
								["action"] = "run_action_list",
								["list_name"] = "bear_tank_aoe",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.bear_form.up & ! bearweaving_enabled & bear_mode_tank_enabled",
								["action"] = "run_action_list",
								["list_name"] = "bear_tank",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.cat_form.up & active_enemies > 2",
								["action"] = "run_action_list",
								["list_name"] = "cat_aoe",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.cat_form.up",
								["action"] = "run_action_list",
								["list_name"] = "cat",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "cat_form",
							}, -- [9]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "! up & ! buff.mark_of_the_wild.up",
								["action"] = "mark_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! up & ! buff.bear_form.up",
								["action"] = "cat_form",
							}, -- [2]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [3]
						},
						["cat_aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "energy.current < 60 - ( buff.clearcasting.up & 15 || 0 )",
								["action"] = "tigers_fury",
								["use_off_gcd"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "energy.current > 60 & cooldown.tigers_fury.remains >= 15",
								["action"] = "berserk",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! up & ttd > 1 + latency",
								["action"] = "savage_roar",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( set_bonus.idol_of_the_corruptor = 1 || set_bonus.idol_of_mutilation = 1 ) & combo_points.current = 0 & buff.savage_roar.remains <= 1",
								["action"] = "mangle_cat",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.idol_of_mutilation = 1 & combo_points.current = 0 & buff.savage_roar.remains <= 1 & ( ttd > buff.savage_roar.remains + 1 + latency )",
								["action"] = "shred",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! set_bonus.idol_of_mutilation = 1 & combo_points.current = 0 & buff.savage_roar.remains <= 1 & ( ttd > buff.savage_roar.remains + 1 + latency )",
								["action"] = "rake",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "excess_e >= action.swipe_cat.spend || buff.clearcasting.up",
								["action"] = "swipe_cat",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "should_flowerweave & mana.pct > settings.min_weave_mana & energy.current < 45",
								["action"] = "mark_of_the_wild",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "ff_now",
								["action"] = "faerie_fire_feral",
							}, -- [9]
						},
						["bearweave"] = {
							{
								["enabled"] = true,
								["criteria"] = "! should_cat",
								["action"] = "enrage",
								["use_off_gcd"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "emergency_lacerate",
								["action"] = "lacerate",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "should_cat & ! emergency_lacerate",
								["action"] = "cat_form",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "lacerate_now",
								["action"] = "lacerate",
							}, -- [4]
							{
								["action"] = "mangle_bear",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "lacerate",
								["enabled"] = true,
							}, -- [6]
						},
						["bear_tank_aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "time < 10 & rage < 80",
								["action"] = "enrage",
								["use_off_gcd"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "target.outside7",
								["action"] = "feral_charge_bear",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "rage.current > 55 & gcd.remains",
								["action"] = "maul",
								["use_off_gcd"] = 1,
							}, -- [3]
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.berserk.up",
								["action"] = "mangle_bear",
							}, -- [5]
							{
								["action"] = "thrash",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "swipe_bear",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "debuff.lacerate.stack = 3 & buff.pulverize.remains < 3",
								["action"] = "pulverize",
							}, -- [8]
							{
								["action"] = "mangle_bear",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "debuff.lacerate.stack < 3",
								["action"] = "lacerate",
							}, -- [10]
						},
						["cat"] = {
							{
								["enabled"] = true,
								["criteria"] = "try_tigers_fury",
								["action"] = "tigers_fury",
								["use_off_gcd"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "try_berserk",
								["action"] = "berserk",
								["use_off_gcd"] = 1,
							}, -- [2]
							{
								["buff_name"] = "primal_madness",
								["action"] = "cancel_buff",
								["criteria"] = "buff.primal_madness.up & energy.current <= 20",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "emergency_bearweave",
								["action"] = "bear_form",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "ff_now & target.outside2",
								["action"] = "faerie_fire_feral",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "target.outside7",
								["action"] = "feral_charge_cat",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.stampede_cat.remains < 1.5",
								["action"] = "ravage",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "debuff.rip.remains < 1.5 & rip_canextend",
								["action"] = "shred",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "rip_now",
								["action"] = "rip",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "roar_now",
								["action"] = "savage_roar",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "bite_now",
								["action"] = "ferocious_bite",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "mangle_now",
								["action"] = "mangle_cat",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "rake_now",
								["action"] = "rake",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "should_leaveweave",
								["action"] = "feral_charge_cat",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "should_bearweave",
								["action"] = "bear_form",
							}, -- [15]
							{
								["action"] = "ravage",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "should_flowerweave & mana.pct > settings.min_weave_mana & energy.current < 42",
								["action"] = "mark_of_the_wild",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "( excess_e >= action.shred.spend || buff.clearcasting.up || buff.berserk.up || energy.current = energy.max )",
								["action"] = "shred",
							}, -- [18]
						},
					},
					["basedOn"] = "Feral DPS (IV)",
					["author"] = "Supernuss",
				},
				["Protection"] = {
					["source"] = "https://www.wowhead.com/wotlk/guide/classes/warrior/protection/tank-rotation-cooldowns-abilities-pve",
					["builtIn"] = true,
					["date"] = 20231124,
					["spec"] = 1,
					["desc"] = "This priority is based on the wowhead guide.",
					["lists"] = {
						["single"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.up & debuff.shattering_throw.down",
								["action"] = "shattering_throw",
							}, -- [1]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "defensive_stance",
								["criteria"] = "buff.defensive_stance.down",
							}, -- [2]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "heroic_strike",
								["criteria"] = "rage.current >= settings.queueing_threshold & rage.current > action.heroic_strike.spend + variable.build_sunder_cost + ( variable.maintain_sunder * action.devastate.spend ) + ( ( cooldown.shield_slam.remains < 2 ) * action.shield_slam.spend )",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( aggro || debuff.training_dummy.up ) & cooldown.shield_slam.up & rage.current >= action.shield_slam.spend",
								["action"] = "shield_block",
							}, -- [4]
							{
								["action"] = "shield_slam",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "revenge",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.commanding_shout & buff.shout.remains <= 4 & buff.commanding_shout.remains <= 4",
								["action"] = "commanding_shout",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.battle_shout & buff.shout.remains <= 4 & buff.battle_shout.remains <= 4",
								["action"] = "battle_shout",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.build_sunder || variable.maintain_sunder",
								["action"] = "devastate",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "settings.debuff_demoshout_enabled & ( ! debuff.ap_reduction.up || ( debuff.demoralizing_shout.up & debuff.demoralizing_shout.remains < 3 ) )",
								["action"] = "demoralizing_shout",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.attack_speed_reduction.up || ( debuff.thunder_clap.up & debuff.attack_speed_reduction.remains < 3 )",
								["action"] = "thunder_clap",
							}, -- [11]
							{
								["action"] = "shockwave",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.shield_slam.remains & ! buff.revenge_usable.up & ( action.shield_slam.spend <= rage.current - action.devastate.spend + rage_gain * gcd )",
								["action"] = "devastate",
							}, -- [13]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "init",
							}, -- [1]
							{
								["action"] = "charge",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "shield_bash",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "spell_reflection",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "bloodrage",
								["criteria"] = "rage.deficit > 30 & ! set_bonus.tier10prot_4pc",
							}, -- [5]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.emergency_sunder",
								["action"] = "devastate",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies > 1",
								["list_name"] = "aoe",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single",
							}, -- [9]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "group & active_dot.vigilance = 0",
								["action"] = "vigilance",
							}, -- [1]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "bloodrage",
								["criteria"] = "rage.current < action.commanding_shout.spend & buff.shout.remains <= 60",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.commanding_shout & buff.shout.remains <= 60",
								["action"] = "commanding_shout",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.battle_shout & buff.shout.remains <= 60",
								["action"] = "battle_shout",
							}, -- [4]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "berserker_stance",
								["criteria"] = "cooldown.recklessness.up",
							}, -- [5]
							{
								["action"] = "recklessness",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "defensive_stance",
								["criteria"] = "buff.defensive_stance.down & ! cooldown.recklessness.up",
							}, -- [7]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "bloodrage",
								["criteria"] = "rage.deficit > 30 & ! set_bonus.tier10prot_4pc",
							}, -- [8]
							{
								["action"] = "charge",
								["enabled"] = true,
							}, -- [9]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "boss & buff.bloodlust.up & debuff.shattering_throw.down",
								["action"] = "shattering_throw",
							}, -- [1]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "defensive_stance",
								["criteria"] = "buff.defensive_stance.down",
							}, -- [2]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "cleave",
								["criteria"] = "rage.current >= settings.queueing_threshold & rage.current > action.cleave.spend + ( variable.maintain_sunder * action.devastate.spend ) + ( ( cooldown.shield_slam.remains < 2 ) * action.shield_slam.spend )",
							}, -- [3]
							{
								["action"] = "thunder_clap",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3",
								["action"] = "shockwave",
							}, -- [5]
							{
								["action"] = "revenge",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "shockwave",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "shield_block",
								["criteria"] = "( aggro || debuff.training_dummy.up ) & cooldown.thunder_clap.remains & ! buff.revenge_usable.up & cooldown.thunder_clap.remains & cooldown.shield_slam.up & rage >= action.shield_slam.spend",
							}, -- [8]
							{
								["action"] = "shield_slam",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.commanding_shout & buff.shout.remains <= 4 & buff.commanding_shout.remains <= 4",
								["action"] = "commanding_shout",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.battle_shout & buff.shout.remains <= 4 & buff.battle_shout.remains <= 4",
								["action"] = "battle_shout",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "settings.debuff_demoshout_enabled & ( ! debuff.major_ap_reduction.up || ( debuff.demoralizing_shout.up & debuff.demoralizing_shout.remains < 3 ) )",
								["action"] = "demoralizing_shout",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.shield_slam.remains & ! buff.revenge_usable.up & ( action.shield_slam.spend <= rage.current - action.devastate.spend + rage_gain * gcd )",
								["action"] = "devastate",
							}, -- [13]
						},
						["init"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( debuff.training_dummy.up & 300 ) || target.time_to_die",
								["var_name"] = "time_to_die",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "settings.debuff_sunder_enabled & variable.time_to_die > ( ( 5 - debuff.sunder_armor.stack ) * ( 1.5 + latency ) ) + 3",
								["var_name"] = "should_sunder",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "should_sunder & ! debuff.major_armor_reduction.up || ( debuff.sunder_armor.up & debuff.sunder_armor.stack < 5 )",
								["var_name"] = "build_sunder",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "should_sunder & ! variable.build_sunder & debuff.sunder_armor.stack = 5 & debuff.sunder_armor.remains < 5",
								["var_name"] = "maintain_sunder",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "should_sunder & debuff.sunder_armor.up & debuff.sunder_armor.remains < 2",
								["var_name"] = "emergency_sunder",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "build_sunder_cost",
								["value"] = "action.devastate.spend * ( 5 - debuff.sunder_armor.stack )",
								["value_else"] = "0",
								["criteria"] = "variable.build_sunder",
							}, -- [6]
						},
					},
					["version"] = 20231124,
					["warnings"] = "WARNING:  The import for 'aoe' required some automated changes.\nThe following auras were used in the action list but were not found in the addon database:\n - major_ap_reduction\n\nImported 5 action lists.\n",
					["profile"] = "## Warrior: Protection\n## https://www.wowhead.com/wotlk/guide/classes/warrior/protection/tank-rotation-cooldowns-abilities-pve\n## November 2023\n\n## Precombat\nactions.precombat+=/vigilance,if=group&active_dot.vigilance=0 \nactions.precombat+=/bloodrage,use_off_gcd=1,if=rage.current<action.commanding_shout.spend&buff.shout.remains<=60\nactions.precombat+=/commanding_shout,if=assigned_shout.commanding_shout&buff.shout.remains<=60\nactions.precombat+=/battle_shout,if=assigned_shout.battle_shout&buff.shout.remains<=60\nactions.precombat+=/berserker_stance,use_off_gcd=1,if=cooldown.recklessness.up\nactions.precombat+=/recklessness\nactions.precombat+=/defensive_stance,use_off_gcd=1,if=buff.defensive_stance.down&!cooldown.recklessness.up\nactions.precombat+=/bloodrage,use_off_gcd=1,if=rage.deficit>30&!set_bonus.tier10prot_4pc\nactions.precombat+=/charge\n\n## Default\nactions+=/call_action_list,name=init\nactions+=/charge\nactions+=/shield_bash\nactions+=/spell_reflection\nactions+=/bloodrage,use_off_gcd=1,if=rage.deficit>30&!set_bonus.tier10prot_4pc\nactions+=/use_items\nactions+=/devastate,if=variable.emergency_sunder\nactions+=/run_action_list,name=aoe,if=active_enemies>1\nactions+=/run_action_list,name=single\n\n## Init Vars\nactions.init+=/variable,name=time_to_die,value=(debuff.training_dummy.up&300)||target.time_to_die\nactions.init+=/variable,name=should_sunder,value=settings.debuff_sunder_enabled&variable.time_to_die>((5-debuff.sunder_armor.stack)*(1.5+latency))+3\nactions.init+=/variable,name=build_sunder,value=should_sunder&!debuff.major_armor_reduction.up||(debuff.sunder_armor.up&debuff.sunder_armor.stack<5)\nactions.init+=/variable,name=maintain_sunder,value=should_sunder&!variable.build_sunder&debuff.sunder_armor.stack=5&debuff.sunder_armor.remains<5\nactions.init+=/variable,name=emergency_sunder,value=should_sunder&debuff.sunder_armor.up&debuff.sunder_armor.remains<2\nactions.init+=/variable,name=build_sunder_cost,op=setif,if=variable.build_sunder,value=action.devastate.spend*(5-debuff.sunder_armor.stack),value_else=0\n\n## Single\nactions.single+=/shattering_throw,if=buff.bloodlust.up&debuff.shattering_throw.down\nactions.single+=/defensive_stance,use_off_gcd=1,if=buff.defensive_stance.down\nactions.single+=/heroic_strike,use_off_gcd=1,if=rage.current>=settings.queueing_threshold&rage.current>action.heroic_strike.spend+variable.build_sunder_cost+(variable.maintain_sunder*action.devastate.spend)+((cooldown.shield_slam.remains<2)*action.shield_slam.spend)\nactions.single+=/shield_block,if=(aggro||debuff.training_dummy.up)&cooldown.shield_slam.up&rage.current>=action.shield_slam.spend\nactions.single+=/shield_slam\nactions.single+=/revenge\nactions.single+=/commanding_shout,if=assigned_shout.commanding_shout&buff.shout.remains<=4&buff.commanding_shout.remains<=4\nactions.single+=/battle_shout,if=assigned_shout.battle_shout&buff.shout.remains<=4&buff.battle_shout.remains<=4\nactions.single+=/devastate,if=variable.build_sunder||variable.maintain_sunder\nactions.single+=/demoralizing_shout,if=settings.debuff_demoshout_enabled&(!debuff.ap_reduction.up||(debuff.demoralizing_shout.up&debuff.demoralizing_shout.remains<3))\nactions.single+=/thunder_clap,if=!debuff.attack_speed_reduction.up||(debuff.thunder_clap.up&debuff.attack_speed_reduction.remains<3)\nactions.single+=/shockwave\nactions.single+=/devastate,if=cooldown.shield_slam.remains&!buff.revenge_usable.up&(action.shield_slam.spend<=rage.current-action.devastate.spend+rage_gain*gcd)\n\n## Cleave\nactions.aoe+=/shattering_throw,if=boss&buff.bloodlust.up&debuff.shattering_throw.down\nactions.aoe+=/defensive_stance,use_off_gcd=1,if=buff.defensive_stance.down\nactions.aoe+=/cleave,use_off_gcd=1,if=rage.current>=settings.queueing_threshold&rage.current>action.cleave.spend+(variable.maintain_sunder*action.devastate.spend)+((cooldown.shield_slam.remains<2)*action.shield_slam.spend)\nactions.aoe+=/thunder_clap\nactions.aoe+=/shockwave,if=active_enemies>3\nactions.aoe+=/revenge\nactions.aoe+=/shockwave\nactions.aoe+=/shield_block,use_off_gcd=1,if=(aggro||debuff.training_dummy.up)&cooldown.thunder_clap.remains&!buff.revenge_usable.up&cooldown.thunder_clap.remains&cooldown.shield_slam.up&rage>=action.shield_slam.spend\nactions.aoe+=/shield_slam\nactions.aoe+=/commanding_shout,if=assigned_shout.commanding_shout&buff.shout.remains<=4&buff.commanding_shout.remains<=4\nactions.aoe+=/battle_shout,if=assigned_shout.battle_shout&buff.shout.remains<=4&buff.battle_shout.remains<=4\nactions.aoe+=/demoralizing_shout,if=settings.debuff_demoshout_enabled&(!debuff.major_ap_reduction.up||(debuff.demoralizing_shout.up&debuff.demoralizing_shout.remains<3))\nactions.aoe+=/devastate,if=cooldown.shield_slam.remains&!buff.revenge_usable.up&(action.shield_slam.spend<=rage.current-action.devastate.spend+rage_gain*gcd)",
					["basedOn"] = "Protection Warrior (IV)",
					["author"] = "Supernuss",
				},
				["Feral Guardian"] = {
					["builtIn"] = true,
					["date"] = 20240512.1,
					["spec"] = 11,
					["desc"] = "WotLK Feral Druid Tank Priorities\n\nToggle advanced rotation recommendations in the class options.",
					["profile"] = "actions.precombat+=/mark_of_the_wild,if=!up&!buff.mark_of_the_wild.up\nactions.precombat+=/thorns,if=!up\nactions.precombat+=/bear_form,if=!up\nactions.precombat+=/potion\n\nactions+=/use_items\nactions+=/potion\nactions+=/hyperspeed_acceleration,use_off_gcd=1\nactions+=/run_action_list,name=bear_tank_aoe,if=buff.bear_form.up&active_enemies>4\nactions+=/run_action_list,name=bear_tank,if=buff.bear_form.up\nactions+=/bear_form,if=!up\n\nactions.bear_tank+=/enrage,use_off_gcd=1,if=time<10&rage<80\nactions.bear_tank+=/feral_charge_bear,if=target.outside7\nactions.bear_tank+=/maul,use_off_gcd=1,if=rage.current>55&gcd.remains\nactions.bear_tank+=/berserk\nactions.bear_tank+=/pulverize,if=debuff.lacerate.stack=3&buff.pulverize.remains<3\nactions.bear_tank+=/lacerate,if=debuff.lacerate.up&debuff.lacerate.remains<1.5+latency&debuff.lacerate.remains<ttd&debuff.lacerate.remains<cooldown.pulverize.remains\nactions.bear_tank+=/mangle_bear\nactions.bear_tank+=/thrash\nactions.bear_tank+=/lacerate,if=!debuff.lacerate.up\nactions.bear_tank+=/faerie_fire_feral\nactions.bear_tank+=/lacerate,if=debuff.lacerate.stack<3\nactions.bear_tank+=/swipe_bear\n\n\nactions.bear_tank_aoe+=/enrage,use_off_gcd=1,if=time<10&rage<80\nactions.bear_tank_aoe+=/feral_charge_bear,if=target.outside7\nactions.bear_tank_aoe+=/maul,use_off_gcd=1,if=rage.current>55&gcd.remains\nactions.bear_tank_aoe+=/berserk\nactions.bear_tank_aoe+=/mangle_bear,if=buff.berserk.up\nactions.bear_tank_aoe+=/thrash\nactions.bear_tank_aoe+=/swipe_bear\nactions.bear_tank_aoe+=/pulverize,if=debuff.lacerate.stack=3&buff.pulverize.remains<3\nactions.bear_tank_aoe+=/mangle_bear\nactions.bear_tank_aoe+=/lacerate,if=debuff.lacerate.stack<3",
					["version"] = 20240512.1,
					["warnings"] = "Imported 4 action lists.\n",
					["author"] = "Supernuss",
					["basedOn"] = "Feral Tank (IV)",
					["lists"] = {
						["bear_tank"] = {
							{
								["enabled"] = true,
								["criteria"] = "time < 10 & rage < 80",
								["action"] = "enrage",
								["use_off_gcd"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "target.outside7",
								["action"] = "feral_charge_bear",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "rage.current > 55 & gcd.remains",
								["action"] = "maul",
								["use_off_gcd"] = 1,
							}, -- [3]
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "debuff.lacerate.stack = 3 & buff.pulverize.remains < 3",
								["action"] = "pulverize",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "debuff.lacerate.up & debuff.lacerate.remains < 1.5 + latency & debuff.lacerate.remains < ttd & debuff.lacerate.remains < cooldown.pulverize.remains",
								["action"] = "lacerate",
							}, -- [6]
							{
								["action"] = "mangle_bear",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "thrash",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.lacerate.up",
								["action"] = "lacerate",
							}, -- [9]
							{
								["action"] = "faerie_fire_feral",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "debuff.lacerate.stack < 3",
								["action"] = "lacerate",
							}, -- [11]
							{
								["action"] = "swipe_bear",
								["enabled"] = true,
							}, -- [12]
						},
						["bear_tank_aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "time < 10 & rage < 80",
								["action"] = "enrage",
								["use_off_gcd"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "target.outside7",
								["action"] = "feral_charge_bear",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "rage.current > 55 & gcd.remains",
								["action"] = "maul",
								["use_off_gcd"] = 1,
							}, -- [3]
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.berserk.up",
								["action"] = "mangle_bear",
							}, -- [5]
							{
								["action"] = "thrash",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "swipe_bear",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "debuff.lacerate.stack = 3 & buff.pulverize.remains < 3",
								["action"] = "pulverize",
							}, -- [8]
							{
								["action"] = "mangle_bear",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "debuff.lacerate.stack < 3",
								["action"] = "lacerate",
							}, -- [10]
						},
						["default"] = {
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [2]
							{
								["use_off_gcd"] = 1,
								["action"] = "hyperspeed_acceleration",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.bear_form.up & active_enemies > 4",
								["action"] = "run_action_list",
								["list_name"] = "bear_tank_aoe",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.bear_form.up",
								["action"] = "run_action_list",
								["list_name"] = "bear_tank",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "bear_form",
							}, -- [6]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "! up & ! buff.mark_of_the_wild.up",
								["action"] = "mark_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "thorns",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "bear_form",
							}, -- [3]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [4]
						},
					},
				},
				["Fury"] = {
					["builtIn"] = true,
					["date"] = 20230416,
					["spec"] = 1,
					["desc"] = "Fury Warrior priority for Hekili",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "init",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_sunder & variable.emergency_sunder",
								["action"] = "sunder_armor",
							}, -- [2]
							{
								["action"] = "pummel",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.berserker_stance.up",
								["list_name"] = "berserker_stance",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.battle_stance.up",
								["list_name"] = "battle_stance",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.defensive_stance.up",
								["list_name"] = "defensive_stance",
							}, -- [6]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["action"] = "berserker_stance",
								["criteria"] = "buff.stance.down",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.commanding_shout & buff.my_battle_shout.down & buff.my_commanding_shout.down",
								["action"] = "commanding_shout",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.battle_shout & buff.my_battle_shout.down & buff.my_commanding_shout.down",
								["action"] = "battle_shout",
							}, -- [3]
						},
						["defensive_stance"] = {
							{
								["use_off_gcd"] = 1,
								["action"] = "berserker_stance",
								["enabled"] = true,
							}, -- [1]
						},
						["battle_stance"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.up & debuff.shattering_throw.down",
								["action"] = "shattering_throw",
							}, -- [1]
							{
								["use_off_gcd"] = 1,
								["enabled"] = true,
								["criteria"] = "( cooldown.bloodthirst.up || cooldown.whirlwind.up || rage.current < 10 ) & ( debuff.shattering_throw.up || ! buff.bloodlust.up )",
								["action"] = "berserker_stance",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! up || debuff.rend.remains <= settings.rend_refresh_time",
								["action"] = "rend",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.improved_overpower.rank > 0",
								["action"] = "overpower",
							}, -- [4]
						},
						["berserker_stance"] = {
							{
								["use_off_gcd"] = 1,
								["enabled"] = true,
								["criteria"] = "rage.deficit > 20",
								["action"] = "bloodrage",
							}, -- [1]
							{
								["use_off_gcd"] = 1,
								["enabled"] = true,
								["criteria"] = "rage.current >= settings.queueing_threshold & active_enemies = 1 & ! buff.recklessness.up & ( ! variable.execute_phase || settings.execute_queueing_enabled )",
								["action"] = "heroic_strike",
							}, -- [2]
							{
								["use_off_gcd"] = 1,
								["enabled"] = true,
								["criteria"] = "rage.current >= settings.queueing_threshold & active_enemies > 1 & ! buff.recklessness.up & ( ! variable.execute_phase || settings.execute_queueing_enabled )",
								["action"] = "cleave",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_sunder & ( variable.build_sunder || variable.maintain_sunder )",
								["action"] = "sunder_armor",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "debuff.major_armor_reduction.up & ! debuff.sunder_armor.up || debuff.sunder_armor.stack = 5",
								["action"] = "death_wish",
							}, -- [5]
							{
								["use_off_gcd"] = 1,
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [6]
							{
								["use_off_gcd"] = 1,
								["action"] = "hyperspeed_acceleration",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodsurge.up & main_gcd_spell_slam & variable.should_slam_over_execute",
								["action"] = "slam",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_bloodthirst & main_gcd_spell_bt",
								["action"] = "bloodthirst",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_whirlwind & main_gcd_spell_ww",
								["action"] = "whirlwind",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodsurge.up & variable.should_slam_over_execute",
								["action"] = "slam",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_bloodthirst",
								["action"] = "bloodthirst",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_whirlwind",
								["action"] = "whirlwind",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( buff.death_wish.up || debuff.shattering_throw.up )",
								["action"] = "recklessness",
							}, -- [14]
							{
								["action"] = "execute",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodsurge.up",
								["action"] = "slam",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "settings.debuff_demoshout_enabled & ! debuff.demoralizing_shout.up",
								["action"] = "demoralizing_shout",
							}, -- [17]
							{
								["use_off_gcd"] = 1,
								["enabled"] = true,
								["criteria"] = "variable.weave_now",
								["action"] = "battle_stance",
							}, -- [18]
						},
						["init"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( debuff.training_dummy.up & 300 ) || target.time_to_die",
								["var_name"] = "time_to_die",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "target.health.pct < 20",
								["var_name"] = "execute_phase",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.execute_phase || settings.execute_slam_prio",
								["var_name"] = "should_slam_over_execute",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.execute_phase || settings.execute_bloodthirst_enabled",
								["var_name"] = "should_bloodthirst",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.execute_phase || settings.execute_whirlwind_enabled",
								["var_name"] = "should_whirlwind",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "settings.debuff_sunder_enabled & variable.time_to_die > ( ( 5 - debuff.sunder_armor.stack ) * ( 1.5 + latency ) ) + 3",
								["var_name"] = "should_sunder",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! debuff.major_armor_reduction.up || ( debuff.sunder_armor.up & debuff.sunder_armor.stack < 5 )",
								["var_name"] = "build_sunder",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.build_sunder & debuff.sunder_armor.stack = 5 & debuff.sunder_armor.remains < 7 & cooldown.bloodthirst.remains & cooldown.whirlwind.remains & ! buff.bloodsurge.up",
								["var_name"] = "maintain_sunder",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "debuff.sunder_armor.up & debuff.sunder_armor.remains < 1.5",
								["var_name"] = "emergency_sunder",
							}, -- [9]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "cooldown.bloodthirst.remains >= settings.weave_cooldown_threshold & cooldown.whirlwind.remains >= settings.weave_cooldown_threshold & cooldown.recklessness.remains > 1.5 & cooldown.death_wish.remains > 1.5 & ! buff.bloodsurge.up & ! buff.recklessness.up & ! buff.death_wish.up & rage.current <= weave_rage_threshold & target.health.pct >= settings.weave_health_threshold",
								["var_name"] = "should_weave",
							}, -- [10]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.should_weave & rage.current >= 10 & debuff.rend.remains <= settings.rend_refresh_time",
								["var_name"] = "should_rend",
							}, -- [11]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.should_weave & rage.current >= 20 & ( buff.overpower_ready.up || buff.taste_for_blood.up )",
								["var_name"] = "should_overpower",
							}, -- [12]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "settings.weaving_enabled & ( variable.should_rend || variable.should_overpower )",
								["var_name"] = "weave_now",
							}, -- [13]
						},
					},
					["version"] = 20230416,
					["warnings"] = "Imported 6 action lists.\n",
					["author"] = "Defox",
					["profile"] = "actions.precombat+=/berserker_stance,if=buff.stance.down\nactions.precombat+=/commanding_shout,if=assigned_shout.commanding_shout&buff.my_battle_shout.down&buff.my_commanding_shout.down\nactions.precombat+=/battle_shout,if=assigned_shout.battle_shout&buff.my_battle_shout.down&buff.my_commanding_shout.down\n\nactions+=/call_action_list,name=init\nactions+=/sunder_armor,if=variable.should_sunder&variable.emergency_sunder\nactions+=/pummel\nactions+=/run_action_list,name=berserker_stance,if=buff.berserker_stance.up\nactions+=/run_action_list,name=battle_stance,if=buff.battle_stance.up\nactions+=/run_action_list,name=defensive_stance,if=buff.defensive_stance.up\n\nactions.init+=/variable,name=time_to_die,value=(debuff.training_dummy.up&300)||target.time_to_die\nactions.init+=/variable,name=execute_phase,value=target.health.pct<20\nactions.init+=/variable,name=should_slam_over_execute,value=!variable.execute_phase||settings.execute_slam_prio\nactions.init+=/variable,name=should_bloodthirst,value=!variable.execute_phase||settings.execute_bloodthirst_enabled\nactions.init+=/variable,name=should_whirlwind,value=!variable.execute_phase||settings.execute_whirlwind_enabled\nactions.init+=/variable,name=should_sunder,value=settings.debuff_sunder_enabled&variable.time_to_die>((5-debuff.sunder_armor.stack)*(1.5+latency))+3\nactions.init+=/variable,name=build_sunder,value=!debuff.major_armor_reduction.up||(debuff.sunder_armor.up&debuff.sunder_armor.stack<5)\nactions.init+=/variable,name=maintain_sunder,value=!variable.build_sunder&debuff.sunder_armor.stack=5&debuff.sunder_armor.remains<7&cooldown.bloodthirst.remains&cooldown.whirlwind.remains&!buff.bloodsurge.up\nactions.init+=/variable,name=emergency_sunder,value=debuff.sunder_armor.up&debuff.sunder_armor.remains<1.5\nactions.init+=/variable,name=should_weave,value=cooldown.bloodthirst.remains>=settings.weave_cooldown_threshold&cooldown.whirlwind.remains>=settings.weave_cooldown_threshold&cooldown.recklessness.remains>1.5&cooldown.death_wish.remains>1.5&!buff.bloodsurge.up&!buff.recklessness.up&!buff.death_wish.up&rage.current<=weave_rage_threshold&target.health.pct>=settings.weave_health_threshold\nactions.init+=/variable,name=should_rend,value=variable.should_weave&rage.current>=10&debuff.rend.remains<=settings.rend_refresh_time\nactions.init+=/variable,name=should_overpower,value=variable.should_weave&rage.current>=20&(buff.overpower_ready.up||buff.taste_for_blood.up)\nactions.init+=/variable,name=weave_now,value=settings.weaving_enabled&(variable.should_rend||variable.should_overpower)\n\nactions.berserker_stance+=/bloodrage,use_off_gcd=1,if=rage.deficit>20\nactions.berserker_stance+=/heroic_strike,use_off_gcd=1,if=rage.current>=settings.queueing_threshold&active_enemies=1&!buff.recklessness.up&(!variable.execute_phase||settings.execute_queueing_enabled)\nactions.berserker_stance+=/cleave,use_off_gcd=1,if=rage.current>=settings.queueing_threshold&active_enemies>1&!buff.recklessness.up&(!variable.execute_phase||settings.execute_queueing_enabled)\nactions.berserker_stance+=/sunder_armor,if=variable.should_sunder&(variable.build_sunder||variable.maintain_sunder)\nactions.berserker_stance+=/death_wish,if=debuff.major_armor_reduction.up&!debuff.sunder_armor.up||debuff.sunder_armor.stack=5\nactions.berserker_stance+=/use_items,use_off_gcd=1\nactions.berserker_stance+=/hyperspeed_acceleration,use_off_gcd=1\nactions.berserker_stance+=/slam,if=buff.bloodsurge.up&main_gcd_spell_slam&variable.should_slam_over_execute\nactions.berserker_stance+=/bloodthirst,if=variable.should_bloodthirst&main_gcd_spell_bt\nactions.berserker_stance+=/whirlwind,if=variable.should_whirlwind&main_gcd_spell_ww\nactions.berserker_stance+=/slam,if=buff.bloodsurge.up&variable.should_slam_over_execute\nactions.berserker_stance+=/bloodthirst,if=variable.should_bloodthirst\nactions.berserker_stance+=/whirlwind,if=variable.should_whirlwind\nactions.berserker_stance+=/recklessness,if=(buff.death_wish.up||debuff.shattering_throw.up)\nactions.berserker_stance+=/execute\nactions.berserker_stance+=/slam,if=buff.bloodsurge.up\nactions.berserker_stance+=/demoralizing_shout,if=settings.debuff_demoshout_enabled&!debuff.demoralizing_shout.up\nactions.berserker_stance+=/battle_stance,use_off_gcd=1,if=variable.weave_now\n\nactions.battle_stance+=/shattering_throw,if=buff.bloodlust.up&debuff.shattering_throw.down\nactions.battle_stance+=/berserker_stance,use_off_gcd=1,if=(cooldown.bloodthirst.up||cooldown.whirlwind.up||rage.current<10)&(debuff.shattering_throw.up||!buff.bloodlust.up)\nactions.battle_stance+=/rend,if=!up||debuff.rend.remains<=settings.rend_refresh_time\nactions.battle_stance+=/overpower,if=talent.improved_overpower.rank>0\n\nactions.defensive_stance+=/berserker_stance,use_off_gcd=1",
				},
				["Arcane Wowhead"] = {
					["source"] = "https://www.wowhead.com/wotlk/guide/classes/mage/arcane/dps-rotation-cooldowns-abilities-pve",
					["builtIn"] = true,
					["date"] = 20230924,
					["spec"] = 8,
					["desc"] = "2023-09-24: Initial translation from Wowhead.",
					["lists"] = {
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "target.within10",
								["action"] = "arcane_explosion",
							}, -- [1]
							{
								["action"] = "presence_of_mind",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "blizzard",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "flamestrike",
								["enabled"] = true,
							}, -- [4]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "counterspell",
							}, -- [1]
							{
								["action"] = "spellsteal",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "remove_curse",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.incanters_absorption.enabled & buff.incanters_absorption.down & action.global_thermal_sapper_charge.ready",
								["action"] = "fire_ward",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.incanters_absorption.enabled & buff.incanters_absorption.down & buff.fire_ward.up",
								["action"] = "global_thermal_sapper_charge",
							}, -- [5]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "arcane_power",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "icy_veins",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["description"] = "Use any trinkets that aren't otherwise specified.",
								["action"] = "use_items",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2",
								["action"] = "call_action_list",
								["list_name"] = "aoe",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "debuff.arcane_blast.stack = 4 & ( buff.missile_barrage.up || prev_gcd.6.arcane_blast )",
								["action"] = "arcane_missiles",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "debuff.arcane_blast.stack = 4 & buff.missile_barrage.down & moving",
								["action"] = "arcane_barrage",
							}, -- [13]
							{
								["action"] = "arcane_blast",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "mana.pct < 70",
								["action"] = "replenish_mana",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "mana.pct < 10",
								["action"] = "evocation",
							}, -- [16]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "raid & buff.arcane_brilliance.down",
								["action"] = "arcane_brilliance",
								["description"] = "September 2023",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! raid & buff.arcane_brilliance.down & buff.arcane_intellect.down",
								["action"] = "arcane_intellect",
							}, -- [2]
							{
								["action"] = "mage_armor",
								["enabled"] = true,
							}, -- [3]
						},
					},
					["version"] = 20230924,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 4: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 5: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nImported 3 action lists.\n",
					["author"] = "Hekili",
					["profile"] = "# Mage: Arcane\n# https://www.icy-veins.com/wotlk-classic/arcane-mage-dps-pve-rotation-cooldowns-abilities\n# September 2023\n\n## Precombat\nactions.precombat+=/arcane_brilliance,if=raid&buff.arcane_brilliance.down\nactions.precombat+=/arcane_intellect,if=!raid&buff.arcane_brilliance.down&buff.arcane_intellect.down\nactions.precombat+=/mage_armor\n\n## Default\nactions+=/counterspell\nactions+=/spellsteal\nactions+=/remove_curse\n## Cooldowns\nactions+=/fire_ward,if=talent.incanters_absorption&buff.incanters_absorption.down&action.global_thermal_sapper_charge.ready\nactions+=/global_thermal_sapper_charge,if=talent.incanters_absorption&buff.incanters_absorption.down&buff.fire_ward.up\nactions+=/potion\nactions+=/arcane_power\nactions+=/icy_veins\nactions+=/mirror_image\n# Use any trinkets that aren't otherwise specified.\nactions+=/use_items\nactions+=/call_action_list,name=aoe,if=active_enemies>2\nactions+=/arcane_missiles,if=debuff.arcane_blast.stack=4&(buff.missile_barrage.up||prev_gcd.6.arcane_blast)\nactions+=/arcane_barrage,if=debuff.arcane_blast.stack=4&buff.missile_barrage.down&moving\nactions+=/arcane_blast\nactions+=/replenish_mana,if=mana.pct<70\nactions+=/evocation,if=mana.pct<10\n\nactions.aoe+=/arcane_explosion,if=target.within10\nactions.aoe+=/presence_of_mind\nactions.aoe+=/blizzard\nactions.aoe+=/flamestrike",
				},
				["Affliction"] = {
					["builtIn"] = true,
					["date"] = 20230226,
					["spec"] = 9,
					["desc"] = "2023-02-27: Fix Life Tap logic to not refresh w/o glyph active.",
					["lists"] = {
						["life"] = {
							{
								["action"] = "death_coil",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "drain_life",
								["enabled"] = true,
							}, -- [2]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies = 1 & target.health.pct > 26",
								["list_name"] = "st",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies < 4 & active_enemies > 1 & target.health.pct > 26",
								["list_name"] = "aoe",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies > 3 & target.health.pct > 26",
								["list_name"] = "seed",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "target.health.pct < 26",
								["list_name"] = "execute",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "health.pct < 25",
								["list_name"] = "life",
							}, -- [5]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.armor.down || buff.armor.remains < 180",
								["action"] = "fel_armor",
								["description"] = "APL v3.4.1-1.6.5 #",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! pet.active & combat = 0",
								["action"] = "summon_felhunter",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! pet.active & combat = 0",
								["action"] = "summon_voidwalker",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! pet.active & combat = 0",
								["action"] = "summon_imp",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "glyph.life_tap.enabled & buff.life_tap.down",
								["action"] = "life_tap",
							}, -- [5]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.improved_shadow_bolt.enabled & settings.shadow_mastery & debuff.shadow_mastery.down",
								["action"] = "shadow_bolt",
							}, -- [7]
						},
						["execute"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "dot.unstable_affliction.remains < cast_time & dot.haunt.remains > cast_time + travel_time + latency & time_to_die >= 15",
								["action"] = "unstable_affliction",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! ticking || dot.haunt.remains <= cast_time + travel_time + latency",
								["action"] = "haunt",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! ticking || persistent_multiplier > dot.corruption.pmultiplier",
								["action"] = "corruption",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "debuff.my_curse.down & time_to_die >= 24",
								["action"] = "curse_of_agony",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "mana.pct < 10 || glyph.life_tap.enabled & buff.life_tap.remains < 5",
								["action"] = "life_tap",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "time_to_die < 14",
								["action"] = "hyperspeed_acceleration",
							}, -- [8]
							{
								["interrupt_if"] = "ticks>=1&(dot.haunt.remains<=cast_time+travel_time+latency||dot.unstable_affliction.remains<=action.unstable_affliction.cast_time+latency&target.time_to_die>=15||debuff.my_curse.down&target.time_to_die>=24)",
								["action"] = "drain_soul",
								["enabled"] = true,
							}, -- [9]
						},
						["seed"] = {
							{
								["enabled"] = true,
								["criteria"] = "target.distance < 10",
								["action"] = "shadowflame",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3 & ! ticking",
								["action"] = "seed_of_corruption",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "mana.pct < 10 || glyph.life_tap.enabled & buff.life_tap.remains < 5",
								["action"] = "life_tap",
							}, -- [3]
						},
						["st"] = {
							{
								["enabled"] = true,
								["criteria"] = "! ticking & debuff.shadow_mastery.ticking || persistent_multiplier > dot.corruption.pmultiplier",
								["action"] = "corruption",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "time_to_die > 90",
								["action"] = "hyperspeed_acceleration",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "dot.haunt.remains > cast_time + travel_time + latency & dot.unstable_affliction.remains < cast_time + latency",
								["action"] = "unstable_affliction",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! ticking || dot.haunt.remains < cast_time + travel_time + latency",
								["action"] = "haunt",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & target.time_to_die > 15 & dot.unstable_affliction.remains < cast_time + latency",
								["action"] = "unstable_affliction",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "dot.haunt.remains & dot.unstable_affliction.remains & ! ticking",
								["action"] = "curse_of_agony",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die <= 60 & mana.pct > 20 & inferno_enabled",
								["action"] = "inferno",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "debuff.my_curse.down",
								["action"] = "curse_of_agony",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "mana.pct < 10 || glyph.life_tap.enabled & buff.life_tap.remains < 5",
								["action"] = "life_tap",
							}, -- [9]
							{
								["target.health.pct"] = "<26",
								["action"] = "potion",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "target.distance < 10",
								["action"] = "shadowflame",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.improved_shadow_bolt.enabled & settings.shadow_mastery & debuff.shadow_mastery.remains < cast_time + 2",
								["action"] = "shadow_bolt",
							}, -- [12]
							{
								["action"] = "shadow_bolt",
								["enabled"] = true,
							}, -- [13]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "mana.pct < 10 || glyph.life_tap.enabled & buff.life_tap.remains < 5",
								["action"] = "life_tap",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "corruption",
								["cycle_targets"] = 1,
								["max_cycle_targets"] = "1",
								["criteria"] = "! ticking",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "unstable_affliction",
								["cycle_targets"] = 1,
								["max_cycle_targets"] = "3",
								["criteria"] = "! ticking",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "curse_of_agony",
								["cycle_targets"] = 1,
								["max_cycle_targets"] = "3",
								["criteria"] = "! ticking",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "haunt",
								["cycle_targets"] = 1,
								["max_cycle_targets"] = "1",
								["criteria"] = "! ticking",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "target.health.pct < 25",
								["action"] = "drain_soul",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "dot.corruption.remains & dot.unstable_affliction.remains & dot.curse_of_agony.remains & dot.haunt.remains & active_enemies < 3",
								["action"] = "shadow_bolt",
							}, -- [7]
						},
					},
					["version"] = 20230226,
					["warnings"] = "Imported 7 action lists.\n",
					["author"] = "Kiloc",
					["profile"] = "# APL v3.4.1-1.6.5 #\nactions.precombat+=/fel_armor,if=buff.armor.down||buff.armor.remains<180\nactions.precombat+=/summon_felhunter,if=!pet.active&combat=0\nactions.precombat+=/summon_voidwalker,if=!pet.active&combat=0\nactions.precombat+=/summon_imp,if=!pet.active&combat=0\nactions.precombat+=/life_tap,if=glyph.life_tap.enabled&buff.life_tap.down\nactions.precombat+=/potion\nactions.precombat+=/shadow_bolt,if=talent.improved_shadow_bolt.enabled&settings.shadow_mastery&debuff.shadow_mastery.down\n\nactions+=/run_action_list,name=st,if=active_enemies=1&target.health.pct>26\nactions+=/run_action_list,name=aoe,if=active_enemies<4&active_enemies>1&target.health.pct>26\nactions+=/run_action_list,name=seed,if=active_enemies>3&target.health.pct>26\nactions+=/run_action_list,name=execute,if=target.health.pct<26\nactions+=/run_action_list,name=life,if=health.pct<25\n\nactions.st+=/corruption,if=!ticking&debuff.shadow_mastery.ticking||persistent_multiplier>dot.corruption.pmultiplier\nactions.st+=/hyperspeed_acceleration,if=time_to_die>90\nactions.st+=/unstable_affliction,if=dot.haunt.remains>cast_time+travel_time+latency&dot.unstable_affliction.remains<cast_time+latency\nactions.st+=/haunt,if=!ticking||dot.haunt.remains<cast_time+travel_time+latency\nactions.st+=/unstable_affliction,if=!ticking&target.time_to_die>15&dot.unstable_affliction.remains<cast_time+latency\nactions.st+=/curse_of_agony,if=dot.haunt.remains&dot.unstable_affliction.remains&!ticking\nactions.st+=/inferno,if=target.time_to_die<=60&mana.pct>20&inferno_enabled\nactions.st+=/curse_of_agony,if=debuff.my_curse.down\nactions.st+=/life_tap,if=mana.pct<10||glyph.life_tap.enabled&buff.life_tap.remains<5\nactions.st+=/potion,target.health.pct=<26\nactions.st+=/shadowflame,if=target.distance<10\nactions.st+=/shadow_bolt,if=talent.improved_shadow_bolt.enabled&settings.shadow_mastery&debuff.shadow_mastery.remains<cast_time+2\nactions.st+=/shadow_bolt\n\nactions.execute+=/potion\nactions.execute+=/use_items\nactions.execute+=/unstable_affliction,if=dot.unstable_affliction.remains<cast_time&dot.haunt.remains>cast_time+travel_time+latency&time_to_die>=15\nactions.execute+=/haunt,if=!ticking||dot.haunt.remains<=cast_time+travel_time+latency\nactions.execute+=/corruption,if=!ticking||persistent_multiplier>dot.corruption.pmultiplier\nactions.execute+=/curse_of_agony,if=debuff.my_curse.down&time_to_die>=24\nactions.execute+=/life_tap,if=mana.pct<10||glyph.life_tap.enabled&buff.life_tap.remains<5\nactions.execute+=/hyperspeed_acceleration,if=time_to_die<14\nactions.execute+=/drain_soul,interrupt_if=ticks>=1&(dot.haunt.remains<=cast_time+travel_time+latency||dot.unstable_affliction.remains<=action.unstable_affliction.cast_time+latency&target.time_to_die>=15||debuff.my_curse.down&target.time_to_die>=24)\n\nactions.seed+=/shadowflame,if=target.distance<10\nactions.seed+=/seed_of_corruption,cycle_targets=1,if=active_enemies>3&!ticking\nactions.seed+=/life_tap,if=mana.pct<10||glyph.life_tap.enabled&buff.life_tap.remains<5\n\nactions.aoe+=/life_tap,if=mana.pct<10||glyph.life_tap.enabled&buff.life_tap.remains<5\nactions.aoe+=/corruption,cycle_targets=1,max_cycle_targets=1,if=!ticking\nactions.aoe+=/unstable_affliction,cycle_targets=1,max_cycle_targets=3,if=!ticking\nactions.aoe+=/curse_of_agony,cycle_targets=1,max_cycle_targets=3,if=!ticking\nactions.aoe+=/haunt,cycle_targets=1,max_cycle_targets=1,if=!ticking\nactions.aoe+=/drain_soul,cycle_targets=1,if=target.health.pct<25\nactions.aoe+=/shadow_bolt,if=dot.corruption.remains&dot.unstable_affliction.remains&dot.curse_of_agony.remains&dot.haunt.remains&active_enemies<3\n\nactions.life+=/death_coil\nactions.life+=/drain_life",
				},
				["Shadow"] = {
					["source"] = "wowsims.github.io & wowhead.com/wotlk",
					["builtIn"] = true,
					["date"] = 20231124,
					["spec"] = 5,
					["desc"] = "Shadow Priest priority list for Hekili",
					["lists"] = {
						["single"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_die <= action.mind_flay.duration || ( moving & ! dot.devouring_plague.remains )",
								["action"] = "devouring_plague",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.inner_focus.up || ( dot.shadow_word_pain.remains < 1.5 & dot.shadow_word_pain.remains >= action.mind_flay.tick_time + latency )",
								["action"] = "mind_flay",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_die > 0",
								["action"] = "shadowfiend",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & ( ( buff.shadow_weaving.stack = 5 & variable.time_to_die >= 75 ) || ( buff.shadow_weaving.stack >= 3 & variable.time_to_die < 75 ) )",
								["action"] = "shadow_word_pain",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "dot.vampiric_touch.remains + latency < cast_time & variable.time_to_die >= 3",
								["action"] = "vampiric_touch",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! dot.devouring_plague.remains",
								["action"] = "devouring_plague",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_die >= cast_time & ( flay_over_blast || buff.replenishment.remains < 3 )",
								["action"] = "mind_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.shadow_weaving.stack = 5",
								["action"] = "inner_focus",
							}, -- [8]
							{
								["enabled"] = true,
								["sec"] = "dot.devouring_plague.remains",
								["criteria"] = "dot.devouring_plague.remains <= 0.2",
								["action"] = "wait",
							}, -- [9]
							{
								["enabled"] = true,
								["sec"] = "( dot.vampiric_touch.remains - action.vampiric_touch.cast_time )",
								["criteria"] = "dot.vampiric_touch.ticking & action.mind_flay.channeling & dot.vampiric_touch.remains <= ( action.vampiric_touch.cast_time + latency )",
								["action"] = "wait",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! buff.inner_fire.up & variable.time_to_die >= 10",
								["action"] = "inner_fire",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! up & variable.time_to_die >= 10",
								["action"] = "vampiric_embrace",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "mind_flay",
								["criteria"] = "! moving",
								["interrupt_if"] = "!buff.inner_focus.up&ticks>=2",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "moving",
								["action"] = "shadow_word_death",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "moving",
								["action"] = "devouring_plague",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "mana.percent <= 60",
								["action"] = "dispersion",
							}, -- [16]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "init",
							}, -- [1]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "hyperspeed_acceleration",
								["description"] = "having shadowform in rotation bugs out",
								["use_off_gcd"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "run_action_list",
								["list_name"] = "cleave",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single",
							}, -- [6]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.shadowform.down",
								["action"] = "shadowform",
								["description"] = "November 2023",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.divine_spirit.down & buff.prayer_of_spirit.down",
								["action"] = "divine_spirit",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.power_word_fortitude.down & buff.prayer_of_fortitude.down",
								["action"] = "power_word_fortitude",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.inner_fire.stacks < 10",
								["action"] = "inner_fire",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "vampiric_embrace",
							}, -- [5]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [6]
						},
						["cleave"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 8",
								["action"] = "mind_sear",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! dot.devouring_plague.remains",
								["action"] = "devouring_plague",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "mind_flay",
								["cycle_targets"] = 1,
								["interrupt_if"] = "!buff.inner_focus.up&ticks>=2",
								["max_cycle_targets"] = "7",
								["criteria"] = "! moving & ( dot.shadow_word_pain.remains < 1.5 & dot.shadow_word_pain.remains >= action.mind_flay.tick_time + latency )",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_die > 0",
								["action"] = "shadowfiend",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "vampiric_touch",
								["cycle_targets"] = 1,
								["max_cycle_targets"] = "7",
								["criteria"] = "dot.vampiric_touch.remains + latency < cast_time & variable.time_to_die >= 3",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "shadow_word_pain",
								["cycle_targets"] = 1,
								["max_cycle_targets"] = "7",
								["criteria"] = "! ticking & ( ( buff.shadow_weaving.stack = 5 & variable.time_to_die >= 75 ) || ( buff.shadow_weaving.stack >= 3 & variable.time_to_die < 75 ) ) & variable.time_to_die >= 10",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_die >= cast_time & ( flay_over_blast || buff.replenishment.remains < 3 )",
								["action"] = "mind_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! buff.inner_fire.up & variable.time_to_die >= 10",
								["action"] = "inner_fire",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! up & variable.time_to_die >= 10",
								["action"] = "vampiric_embrace",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_die >= cast_time / 2 & ! moving & active_enemies >= 3",
								["action"] = "mind_sear",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "mind_flay",
								["criteria"] = "variable.time_to_die >= cast_time & ! moving",
								["interrupt_if"] = "!buff.inner_focus.up&ticks>=2",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "moving",
								["action"] = "shadow_word_death",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "moving",
								["action"] = "devouring_plague",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "mana.percent <= 60",
								["action"] = "dispersion",
							}, -- [14]
						},
						["init"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( debuff.training_dummy.up & 300 ) || target.time_to_die",
								["var_name"] = "time_to_die",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "target.health.pct < 20",
								["var_name"] = "execute_phase",
							}, -- [2]
						},
					},
					["version"] = 20231124,
					["warnings"] = "Imported 5 action lists.\n",
					["profile"] = "# Priest: Shadow\n# wowsims.github.io & wowhead.com/wotlk\n# November 2023\n\n## Precombat\nactions.precombat+=/shadowform,if=buff.shadowform.down\nactions.precombat+=/divine_spirit,if=buff.divine_spirit.down&buff.prayer_of_spirit.down\nactions.precombat+=/power_word_fortitude,if=buff.power_word_fortitude.down&buff.prayer_of_fortitude.down\nactions.precombat+=/inner_fire,if=buff.inner_fire.stacks<10\nactions.precombat+=/vampiric_embrace,if=!up\nactions.precombat+=/potion\n\n## Default\nactions+=/call_action_list,name=init\nactions+=/use_items\nactions+=/potion\n# having shadowform in rotation bugs out\n#actions+=/shadowform,if=!buff.shadowform.up\nactions+=/hyperspeed_acceleration,use_off_gcd=1\nactions+=/run_action_list,name=cleave,if=active_enemies>1\nactions+=/run_action_list,name=single\n\n## Init Parameters\nactions.init+=/variable,name=time_to_die,value=(debuff.training_dummy.up&300)||target.time_to_die\nactions.init+=/variable,name=execute_phase,value=target.health.pct<20\n\n## Cleave\nactions.cleave+=/mind_sear,if=active_enemies>=8\nactions.cleave+=/devouring_plague,if=!dot.devouring_plague.remains\nactions.cleave+=/mind_flay,cycle_targets=1,max_cycle_targets=7,interrupt_if=!buff.inner_focus.up&ticks>=2,if=!moving&(dot.shadow_word_pain.remains<1.5&dot.shadow_word_pain.remains>=action.mind_flay.tick_time+latency)\nactions.cleave+=/shadowfiend,if=variable.time_to_die>0\nactions.cleave+=/vampiric_touch,cycle_targets=1,max_cycle_targets=7,if=dot.vampiric_touch.remains+latency<cast_time&variable.time_to_die>=3\nactions.cleave+=/shadow_word_pain,cycle_targets=1,max_cycle_targets=7,if=!ticking&((buff.shadow_weaving.stack=5&variable.time_to_die>=75)||(buff.shadow_weaving.stack>=3&variable.time_to_die<75))&variable.time_to_die>=10\nactions.cleave+=/mind_blast,if=variable.time_to_die>=cast_time&(flay_over_blast||buff.replenishment.remains<3)\nactions.cleave+=/inner_fire,if=!buff.inner_fire.up&variable.time_to_die>=10\nactions.cleave+=/vampiric_embrace,if=!up&variable.time_to_die>=10\nactions.cleave+=/mind_sear,if=variable.time_to_die>=cast_time/2&!moving&active_enemies>=3\nactions.cleave+=/mind_flay,interrupt_if=!buff.inner_focus.up&ticks>=2,if=variable.time_to_die>=cast_time&!moving\nactions.cleave+=/shadow_word_death,if=moving\nactions.cleave+=/devouring_plague,if=moving\nactions.cleave+=/dispersion,if=mana.percent<=60\n\n## Single\nactions.single+=/devouring_plague,if=variable.time_to_die<=action.mind_flay.duration||(moving&!dot.devouring_plague.remains)\nactions.single+=/mind_flay,if=buff.inner_focus.up||(dot.shadow_word_pain.remains<1.5&dot.shadow_word_pain.remains>=action.mind_flay.tick_time+latency)\nactions.single+=/shadowfiend,if=variable.time_to_die>0\nactions.single+=/shadow_word_pain,if=!ticking&((buff.shadow_weaving.stack=5&variable.time_to_die>=75)||(buff.shadow_weaving.stack>=3&variable.time_to_die<75))\nactions.single+=/vampiric_touch,if=dot.vampiric_touch.remains+latency<cast_time&variable.time_to_die>=3\nactions.single+=/devouring_plague,if=!dot.devouring_plague.remains\nactions.single+=/mind_blast,if=variable.time_to_die>=cast_time&(flay_over_blast||buff.replenishment.remains<3)\nactions.single+=/inner_focus,if=buff.shadow_weaving.stack=5\nactions.single+=/wait,if=dot.devouring_plague.remains<=0.2,sec=dot.devouring_plague.remains\nactions.single+=/wait,if=dot.vampiric_touch.ticking&action.mind_flay.channeling&dot.vampiric_touch.remains<=(action.vampiric_touch.cast_time+latency),sec=(dot.vampiric_touch.remains-action.vampiric_touch.cast_time)\nactions.single+=/inner_fire,if=!buff.inner_fire.up&variable.time_to_die>=10\nactions.single+=/vampiric_embrace,if=!up&variable.time_to_die>=10\nactions.single+=/mind_flay,interrupt_if=!buff.inner_focus.up&ticks>=2,if=!moving\nactions.single+=/shadow_word_death,if=moving\nactions.single+=/devouring_plague,if=moving\nactions.single+=/dispersion,if=mana.percent<=60",
					["author"] = "Supernuss",
				},
				["Protection 96"] = {
					["source"] = "https://github.com/wowsims/wotlk/blob/master/sim/paladin/protection/rotation.go",
					["builtIn"] = true,
					["date"] = 20230815.1,
					["spec"] = 2,
					["desc"] = "Protection Paladin rotation for Hekili. Based on wowsims logic, refactored for 9696 rotation",
					["lists"] = {
						["six"] = {
							{
								["enabled"] = true,
								["criteria"] = "should_hammer & ( ! should_shield || active_enemies > 1 )",
								["action"] = "hammer_of_the_righteous",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "should_shield",
								["action"] = "shield_of_righteousness",
							}, -- [2]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["action"] = "righteous_fury",
								["criteria"] = "talent.improved_righteous_fury.enabled",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_aura & assigned_aura.retribution_aura",
								["action"] = "retribution_aura",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_aura & assigned_aura.concentration_aura",
								["action"] = "concentration_aura",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_aura & assigned_aura.crusader_aura",
								["action"] = "crusader_aura",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_aura & assigned_aura.devotion_aura",
								["action"] = "devotion_aura",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_aura & assigned_aura.fire_resistance_aura",
								["action"] = "fire_resistance_aura",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_aura & assigned_aura.frost_resistance_aura",
								["action"] = "frost_resistance_aura",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_aura & assigned_aura.shadow_resistance_aura",
								["action"] = "shadow_resistance_aura",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_blessing & assigned_blessing.blessing_of_kings",
								["action"] = "blessing_of_kings",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_blessing & assigned_blessing.blessing_of_might",
								["action"] = "blessing_of_might",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_blessing & assigned_blessing.blessing_of_sanctuary",
								["action"] = "blessing_of_sanctuary",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_blessing & assigned_blessing.blessing_of_wisdom",
								["action"] = "blessing_of_wisdom",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.seal.remains < 360",
								["action"] = "seal_of_vengeance",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.sacred_shield.remains <= 0",
								["action"] = "sacred_shield",
							}, -- [14]
							{
								["action"] = "holy_shield",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [16]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "seal_of_command",
								["criteria"] = "buff.seal.down & active_enemies > 1",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.seal.down & active_enemies = 1",
								["action"] = "seal_of_vengeance",
							}, -- [2]
							{
								["action"] = "avenging_wrath",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
							{
								["use_off_gcd"] = 1,
								["action"] = "hyperspeed_acceleration",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "six",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "! ( should_hammer || should_shield )",
								["list_name"] = "nine",
							}, -- [8]
						},
						["nine"] = {
							{
								["enabled"] = true,
								["criteria"] = "aggro || debuff.training_dummy.up",
								["action"] = "holy_shield",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.devine_plea.up & ( glyph.divine_plea.enabled || ( mana.percent < settings.divine_plea_threshold ) )",
								["action"] = "divine_plea",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.sacred_shield.remains <= 0",
								["action"] = "sacred_shield",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! buff.active_consecration.up & active_enemies > 1",
								["action"] = "consecration",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "avengers_shield",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "target.health.pct <= 20",
								["action"] = "hammer_of_wrath",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.judgement.up",
								["action"] = "judgement_of_wisdom",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "glyph.avengers_shield.enabled",
								["action"] = "avengers_shield",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! buff.active_consecration.up & ! buff.active_consecration.up & ( ttd > 4 )",
								["action"] = "consecration",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( target.is_demon || target.is_undead ) & ( ( settings.squeezeHolyWrath & ( cooldown.consecration.remains > 6.850 ) ) || active_enemies >= settings.holy_wrath_threshold )",
								["action"] = "holy_wrath",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "mana.percent < settings.judgement_of_wisdom_threshold",
								["action"] = "judgement_of_wisdom",
							}, -- [11]
							{
								["action"] = "judgement_of_light",
								["enabled"] = true,
							}, -- [12]
						},
					},
					["version"] = 20230815.1,
					["warnings"] = "WARNING:  The import for 'nine' required some automated changes.\nThe following auras were used in the action list but were not found in the addon database:\n - devine_plea\n\nImported 4 action lists.\n",
					["author"] = "Supernuss",
					["basedOn"] = "Protection 69",
					["profile"] = "## Protection Paladin\n## 2023.08.30\n\nactions.precombat+=/righteous_fury,if=talent.improved_righteous_fury.enabled\nactions.precombat+=/retribution_aura,if=!up&settings.maintain_aura&assigned_aura.retribution_aura\nactions.precombat+=/concentration_aura,if=!up&settings.maintain_aura&assigned_aura.concentration_aura\nactions.precombat+=/crusader_aura,if=!up&settings.maintain_aura&assigned_aura.crusader_aura\nactions.precombat+=/devotion_aura,if=!up&settings.maintain_aura&assigned_aura.devotion_aura\nactions.precombat+=/fire_resistance_aura,if=!up&settings.maintain_aura&assigned_aura.fire_resistance_aura\nactions.precombat+=/frost_resistance_aura,if=!up&settings.maintain_aura&assigned_aura.frost_resistance_aura\nactions.precombat+=/shadow_resistance_aura,if=!up&settings.maintain_aura&assigned_aura.shadow_resistance_aura\nactions.precombat+=/blessing_of_kings,if=!up&settings.maintain_blessing&assigned_blessing.blessing_of_kings\nactions.precombat+=/blessing_of_might,if=!up&settings.maintain_blessing&assigned_blessing.blessing_of_might\nactions.precombat+=/blessing_of_sanctuary,if=!up&settings.maintain_blessing&assigned_blessing.blessing_of_sanctuary\nactions.precombat+=/blessing_of_wisdom,if=!up&settings.maintain_blessing&assigned_blessing.blessing_of_wisdom\nactions.precombat+=/seal_of_vengeance,if=buff.seal.remains<360\nactions.precombat+=/sacred_shield,if=buff.sacred_shield.remains<=0\nactions.precombat+=/holy_shield\nactions.precombat+=/potion\n\n\nactions+=/seal_of_command,if=buff.seal.down&active_enemies>1\nactions+=/seal_of_vengeance,if=buff.seal.down&active_enemies=1\nactions+=/avenging_wrath\nactions+=/use_items\nactions+=/potion\nactions+=/hyperspeed_acceleration,use_off_gcd=1\nactions+=/call_action_list,name=six\nactions+=/call_action_list,name=nine,if=!(should_hammer||should_shield)\n\n\n## Action-List for 6 Second-Spells (HotR/ShoR)\nactions.six+=/hammer_of_the_righteous,if=should_hammer&(!should_shield||active_enemies>1)\nactions.six+=/shield_of_righteousness,if=should_shield\n\n## Action-List for 9 Second-Spells (and what's left)\nactions.nine+=/holy_shield,if=aggro||debuff.training_dummy.up\nactions.nine+=/divine_plea,if=!buff.devine_plea.up&(glyph.divine_plea.enabled||(mana.percent<settings.divine_plea_threshold))\nactions.nine+=/sacred_shield,if=buff.sacred_shield.remains<=0\nactions.nine+=/consecration,if=!buff.active_consecration.up&active_enemies>1\nactions.nine+=/avengers_shield,if=active_enemies>1\nactions.nine+=/hammer_of_wrath,if=target.health.pct<=20\nactions.nine+=/judgement_of_wisdom,if=!debuff.judgement.up\nactions.nine+=/avengers_shield,if=glyph.avengers_shield.enabled\nactions.nine+=/consecration,if=!buff.active_consecration.up&!buff.active_consecration.up&(ttd>4)\nactions.nine+=/holy_wrath,if=(target.is_demon||target.is_undead)&((settings.squeezeHolyWrath&(cooldown.consecration.remains>6.850))||active_enemies>=settings.holy_wrath_threshold)\nactions.nine+=/judgement_of_wisdom,if=mana.percent<settings.judgement_of_wisdom_threshold\nactions.nine+=/judgement_of_light",
				},
				["Frost DK (IV)"] = {
					["source"] = "https://www.icy-veins.com/wotlk-classic/frost-death-knight-dps-pve-rotation-cooldowns-abilities",
					["builtIn"] = true,
					["date"] = 20221001,
					["spec"] = 6,
					["desc"] = "Frost DK priority based on Icy Veins' guide.",
					["lists"] = {
						["aoe"] = {
							{
								["action"] = "howling_blast",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! moving & fight_remains > 8",
								["action"] = "death_and_decay",
							}, -- [2]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "mind_freeze",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! dot.frost_fever.ticking",
								["action"] = "icy_touch",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "glyph.howling_blast.enabled & ! dot.frost_fever.ticking",
								["action"] = "howling_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! dot.blood_plague.ticking",
								["action"] = "plague_strike",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "dot.frost_fever.ticking & dot.blood_plague.ticking & active_dot.frost_fever + active_dot.blood_plague < 2 * true_active_enemies",
								["action"] = "pestilence",
							}, -- [5]
							{
								["action"] = "unbreakable_armor",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "blood_runes.current < 2",
								["action"] = "blood_tap",
							}, -- [7]
							{
								["action"] = "obliterate",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "glyph.disease.enabled & dot.frost_fever.ticking & dot.blood_plague.ticking & ( dot.frost_fever.refreshable || dot.blood_plague.refreshable )",
								["action"] = "pestilence",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "blood_runes.current + frost_runes.current + unholy_runes.current < 3",
								["action"] = "empower_rune_weapon",
							}, -- [10]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["strict"] = 1,
								["action"] = "call_action_list",
								["list_name"] = "aoe",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.up",
								["action"] = "frost_strike",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.freezing_fog.up",
								["action"] = "howling_blast",
							}, -- [14]
							{
								["action"] = "blood_strike",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "frost_strike",
								["enabled"] = true,
							}, -- [16]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["action"] = "blood_presence",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.horn_of_winter.down",
								["action"] = "horn_of_winter",
							}, -- [2]
						},
					},
					["version"] = 20221001,
					["warnings"] = "Imported 3 action lists.\n",
					["author"] = "Icy-Veins",
					["profile"] = "## Frost Death Knight (Icy Veins)\n## 2022-10-01\n\nactions.precombat+=/blood_presence\nactions.precombat+=/horn_of_winter,if=buff.horn_of_winter.down\n\nactions+=/mind_freeze\nactions+=/icy_touch,if=!dot.frost_fever.ticking\nactions+=/howling_blast,if=glyph.howling_blast.enabled&!dot.frost_fever.ticking\nactions+=/plague_strike,if=!dot.blood_plague.ticking\nactions+=/pestilence,if=dot.frost_fever.ticking&dot.blood_plague.ticking&active_dot.frost_fever+active_dot.blood_plague<2*true_active_enemies\nactions+=/unbreakable_armor\nactions+=/blood_tap,if=blood_runes.current<2\nactions+=/obliterate\nactions+=/pestilence,if=glyph.disease.enabled&dot.frost_fever.ticking&dot.blood_plague.ticking&(dot.frost_fever.refreshable||dot.blood_plague.refreshable)\nactions+=/empower_rune_weapon,if=blood_runes.current+frost_runes.current+unholy_runes.current<3\nactions+=/use_items\nactions+=/call_action_list,name=aoe,strict=1,if=active_enemies>1\nactions+=/frost_strike,if=buff.killing_machine.up\nactions+=/howling_blast,if=buff.freezing_fog.up\nactions+=/blood_strike\nactions+=/frost_strike\n\nactions.aoe+=/howling_blast\nactions.aoe+=/death_and_decay,if=!moving&fight_remains>8",
				},
				["Destruction"] = {
					["builtIn"] = true,
					["date"] = 20230204,
					["spec"] = 9,
					["desc"] = "Destruction warlock priority for Hekili",
					["lists"] = {
						["life"] = {
							{
								["action"] = "death_coil",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "drain_life",
								["enabled"] = true,
							}, -- [2]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies < 2",
								["list_name"] = "st",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies > 1",
								["list_name"] = "aoe",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "health.pct < 25",
								["list_name"] = "life",
							}, -- [3]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.armor.down || buff.armor.remains < 180",
								["action"] = "fel_armor",
								["description"] = "APL v3.4.0-1.4.2 #",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! pet.active",
								["action"] = "summon_imp",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "glyph.life_tap.enabled & buff.life_tap.down",
								["action"] = "life_tap",
							}, -- [3]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [4]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3 & target.distance < 10",
								["action"] = "shadowflame",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3 & ! ticking",
								["action"] = "seed_of_corruption",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! ticking",
								["action"] = "immolate",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "corruption",
								["line_cd"] = "6",
								["criteria"] = "moving",
								["cycle_targets"] = 1,
							}, -- [4]
						},
						["st"] = {
							{
								["enabled"] = true,
								["criteria"] = "debuff.my_curse.down & curse_grouped",
								["action"] = "curse_of_the_elements",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! ticking || dot.immolate.remains < 1",
								["action"] = "immolate",
							}, -- [2]
							{
								["action"] = "conflagrate",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "debuff.my_curse.down",
								["action"] = "curse_of_agony",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "glyph.life_tap.enabled & buff.life_tap.down",
								["action"] = "life_tap",
							}, -- [5]
							{
								["action"] = "chaos_bolt",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! ticking || dot.corruption.remains < 2",
								["action"] = "corruption",
							}, -- [7]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die <= 60 & mana.pct > 20 & inferno_enabled || target.health.pct < 40 & inferno_enabled",
								["action"] = "inferno",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "moving",
								["action"] = "corruption",
								["line_cd"] = "6",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "moving & mana.pct < 80 || mana.pct < 10",
								["action"] = "life_tap",
							}, -- [12]
							{
								["action"] = "incinerate",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die > 60 & debuff.my_curse.down",
								["action"] = "curse_of_doom",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die < 60 & target.time_to_die > 30",
								["action"] = "curse_of_agony",
							}, -- [15]
						},
					},
					["version"] = 20230204,
					["warnings"] = "Imported 5 action lists.\n",
					["author"] = "Kiloc-Benediction",
					["profile"] = "# APL v3.4.0-1.4.2 #\nactions.precombat+=/fel_armor,if=buff.armor.down||buff.armor.remains<180\nactions.precombat+=/summon_imp,if=!pet.active\nactions.precombat+=/life_tap,if=glyph.life_tap.enabled&buff.life_tap.down\nactions.precombat+=/potion\n    \nactions+=/run_action_list,name=st,if=active_enemies<2\nactions+=/run_action_list,name=aoe,if=active_enemies>1\nactions+=/run_action_list,name=life,if=health.pct<25    \n    \n    \nactions.st+=/group_curse,if=debuff.my_curse.down&curse_grouped\nactions.st+=/immolate,if=!ticking||dot.immolate.remains<1\nactions.st+=/conflagrate\nactions.st+=/solo_curse,if=debuff.my_curse.down\nactions.st+=/life_tap,if=glyph.life_tap.enabled&buff.life_tap.down\nactions.st+=/chaos_bolt\nactions.st+=/corruption,if=!ticking||dot.corruption.remains<2\nactions.st+=/potion\nactions.st+=/use_items\nactions.st+=/inferno,if=target.time_to_die<=60&mana.pct>20&inferno_enabled||target.health.pct<40&inferno_enabled\nactions.st+=/corruption,line_cd=6,if=moving\nactions.st+=/life_tap,if=moving&mana.pct<80||mana.pct<10    \nactions.st+=/incinerate\nactions.st+=/curse_of_doom,if=target.time_to_die>60&debuff.my_curse.down\nactions.st+=/curse_of_agony,if=target.time_to_die<60&target.time_to_die>30\n\nactions.aoe+=/shadowflame,cycle_targets=1,if=active_enemies>3&target.distance<10\nactions.aoe+=/seed_of_corruption,cycle_targets=1,if=active_enemies>3&!ticking\nactions.aoe+=/immolate,cycle_targets=1,if=!ticking\nactions.aoe+=/corruption,line_cd=6,cycle_targets=1,if=moving\n\nactions.life+=/death_coil\nactions.life+=/drain_life",
				},
				["Protection Warrior (IV)"] = {
					["source"] = "https://www.icy-veins.com/wotlk-classic/protection-warrior-tank-pve-rotation-cooldowns-abilities",
					["builtIn"] = true,
					["date"] = 20221003,
					["spec"] = 1,
					["desc"] = "This priority is based on the Icy Veins guide.",
					["lists"] = {
						["aoe"] = {
							{
								["action"] = "thunder_clap",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "shockwave",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "revenge",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "rage > 60",
								["action"] = "cleave",
							}, -- [4]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "pummel",
							}, -- [1]
							{
								["action"] = "shield_bash",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "spell_reflection",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "charge",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "bloodrage",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.up & debuff.shattering_throw.down",
								["action"] = "shattering_throw",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "tanking",
								["action"] = "shield_block",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.shield_block.up",
								["action"] = "shield_slam",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "active_enemies > 1",
								["list_name"] = "aoe",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "down",
								["action"] = "demoralizing_shout",
							}, -- [11]
							{
								["action"] = "revenge",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "shield_slam",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "stat.attack_power > 3500 || active_enemies > 1",
								["action"] = "shockwave",
							}, -- [14]
							{
								["action"] = "devastate",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "rage > 60",
								["action"] = "heroic_strike",
							}, -- [16]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["action"] = "defensive_stance",
								["criteria"] = "buff.stance.down",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.battle_shout.down",
								["action"] = "battle_shout",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.my_battle_shout.down",
								["action"] = "commanding_shout",
							}, -- [3]
						},
					},
					["version"] = 20221003,
					["warnings"] = "Imported 3 action lists.\n",
					["author"] = "Icy Veins",
					["profile"] = "## Protection Warrior (Icy Veins)\n## 2022-10-03\n\nactions.precombat+=/defensive_stance,if=buff.stance.down\nactions.precombat+=/battle_shout,if=buff.battle_shout.down\nactions.precombat+=/commanding_shout,if=buff.my_battle_shout.down\n\nactions+=/pummel\nactions+=/shield_bash\nactions+=/spell_reflection\nactions+=/charge\nactions+=/bloodrage\nactions+=/use_items\nactions+=/shattering_throw,if=buff.bloodlust.up&debuff.shattering_throw.down\nactions+=/shield_block,if=tanking\nactions+=/shield_slam,if=buff.shield_block.up\nactions+=/call_action_list,name=aoe,if=active_enemies>1\nactions+=/demoralizing_shout,if=down\nactions+=/revenge\nactions+=/shield_slam\nactions+=/shockwave,if=stat.attack_power>3500||active_enemies>1\nactions+=/devastate\nactions+=/heroic_strike,if=rage>60\n\nactions.aoe+=/thunder_clap\nactions.aoe+=/shockwave\nactions.aoe+=/revenge\nactions.aoe+=/cleave,if=rage>60",
				},
				["Frost Wowhead"] = {
					["source"] = "https://www.wowhead.com/wotlk/guide/classes/mage/frost/dps-rotation-cooldowns-abilities-pve",
					["builtIn"] = true,
					["date"] = 20230930,
					["spec"] = 8,
					["desc"] = "Mage: Frost\nhttps://www.icy-veins.com/wotlk-classic/frost-mage-dps-pve-rotation-cooldowns-abilities\nSeptember 2023",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "counterspell",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "spellsteal",
								["line_cd"] = "spellsteal_cooldown",
							}, -- [2]
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! glyph.eternal_water.enabled",
								["action"] = "summon_water_elemental",
							}, -- [4]
							{
								["action"] = "icy_veins",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "arcane_power",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "flame_cap",
								["enabled"] = true,
							}, -- [7]
							{
								["use_off_gcd"] = 1,
								["action"] = "potion",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "use_cold_snap & buff.icy_veins.down & cooldown.icy_veins.remains > 60",
								["action"] = "cold_snap",
							}, -- [9]
							{
								["enabled"] = true,
								["description"] = "Use any trinkets that aren't otherwise specified.",
								["action"] = "use_items",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "deep_freeze",
								["description"] = "Use Deep Freeze to consume your last Fingers of Frost charge simultaneously with a Frostbolt or Frostfire Bolt.",
								["criteria"] = "( debuff.frozen.up || buff.fingers_of_frost.stack = 1 ) & ( action.frostfire_bolt.in_flight || action.frostbolt.in_flight )",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.fingers_of_frost.up & talent.deep_freeze.enabled & cooldown.deep_freeze.remains < cast_time * buff.fingers_of_frost.stack",
								["action"] = "frostbolt",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.brain_freeze.react",
								["action"] = "frostfire_bolt",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 & ! moving",
								["action"] = "blizzard",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 & target.within10 & moving",
								["action"] = "cone_of_cold",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 & target.within10 & moving",
								["action"] = "arcane_explosion",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "moving & target.within20",
								["action"] = "fire_blast",
							}, -- [17]
							{
								["use_off_gcd"] = 1,
								["action"] = "best_mana_potion",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "mana.pct < 70",
								["action"] = "replenish_mana",
								["use_off_gcd"] = 1,
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "mana.pct < 30",
								["action"] = "evocation",
							}, -- [20]
							{
								["action"] = "frostbolt",
								["enabled"] = true,
							}, -- [21]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "raid & buff.arcane_brilliance.down",
								["action"] = "arcane_brilliance",
								["description"] = "September 2023",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! raid & buff.arcane_brilliance.down & buff.arcane_intellect.down",
								["action"] = "arcane_intellect",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "mana_gem_charges < 2",
								["action"] = "conjure_mana_gem",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.unique_armor.down",
								["action"] = "molten_armor",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! pet.active & glyph.eternal_water.enabled",
								["action"] = "summon_water_elemental",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "group & active_dot.focus_magic = 0",
								["action"] = "focus_magic",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "boss",
								["action"] = "pyroblast",
							}, -- [7]
						},
					},
					["version"] = 20230930,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 12: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nImported 2 action lists.\n",
					["author"] = "Hekili",
					["profile"] = "# Mage: Frost\n# https://www.icy-veins.com/wotlk-classic/frost-mage-dps-pve-rotation-cooldowns-abilities\n# September 2023\n\n## Precombat\nactions.precombat+=/arcane_brilliance,if=raid&buff.arcane_brilliance.down\nactions.precombat+=/arcane_intellect,if=!raid&buff.arcane_brilliance.down&buff.arcane_intellect.down\nactions.precombat+=/conjure_mana_gem,if=mana_gem_charges<2\nactions.precombat+=/molten_armor,if=buff.unique_armor.down\nactions.precombat+=/summon_water_elemental,if=!pet.active&glyph.eternal_water.enabled\nactions.precombat+=/focus_magic,if=group&active_dot.focus_magic=0\nactions.precombat+=/pyroblast,if=boss\n\n## Default\nactions+=/counterspell\nactions+=/spellsteal,line_cd=spellsteal_cooldown\n## Cooldowns\nactions+=/mirror_image\nactions+=/summon_water_elemental,if=!glyph.eternal_water.enabled\nactions+=/icy_veins\nactions+=/arcane_power\nactions+=/flame_cap\nactions+=/potion,use_off_gcd=1\nactions+=/cold_snap,if=use_cold_snap&buff.icy_veins.down&cooldown.icy_veins.remains>60\n# Use any trinkets that aren't otherwise specified.\nactions+=/use_items\n# Use Deep Freeze to consume your last Fingers of Frost charge simultaneously with a Frostbolt or Frostfire Bolt.\nactions+=/deep_freeze,if=(debuff.frozen.up||buff.fingers_of_frost.stack=1)&(action.frostfire_bolt.in_flight||action.frostbolt.in_flight)\nactions+=/frostbolt,if=buff.fingers_of_frost.up&talent.deep_freeze&cooldown.deep_freeze.remains<cast_time*buff.fingers_of_frost.stack\nactions+=/frostfire_bolt,if=buff.brain_freeze.react\nactions+=/blizzard,if=active_enemies>2&!moving\nactions+=/cone_of_cold,if=active_enemies>2&target.within10&moving\nactions+=/arcane_explosion,if=active_enemies>2&target.within10&moving\nactions+=/fire_blast,if=moving&target.within20\nactions+=/best_mana_potion,use_off_gcd=1\nactions+=/use_mana_gem,use_off_gcd=1,if=mana.pct<70\nactions+=/evocation,if=mana.pct<30\nactions+=/frostbolt",
				},
				["Retribution (WoWSims)"] = {
					["source"] = "https://github.com/wowsims/wotlk/blob/master/sim/paladin/retribution/rotation.go",
					["builtIn"] = true,
					["date"] = 20230222.1,
					["spec"] = 2,
					["desc"] = "Retribution Paladin rotation for Hekili",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "! settings.hor_macros & glyph.reckoning.enabled & ( debuff.training_dummy.up || ! aggro )",
								["action"] = "hand_of_reckoning",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.seal.down & active_enemies = 1",
								["action"] = "seal_of_vengeance",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.seal.down & active_enemies > 1",
								["action"] = "seal_of_command",
							}, -- [3]
							{
								["action"] = "avenging_wrath",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up",
								["action"] = "hammer_of_wrath",
							}, -- [7]
							{
								["action"] = "hyperspeed_acceleration",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "mana.percent < settings.judgement_of_wisdom_threshold",
								["action"] = "judgement_of_wisdom",
							}, -- [9]
							{
								["action"] = "judgement_of_light",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier10_2pc = 1",
								["action"] = "divine_storm",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! moving & active_enemies > 1 & ! buff.active_consecration.up",
								["action"] = "consecration",
							}, -- [12]
							{
								["action"] = "hammer_of_wrath",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( target.is_demon || target.is_undead ) & active_enemies >= settings.holy_wrath_threshold",
								["action"] = "holy_wrath",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "mana.percent < settings.divine_plea_threshold",
								["action"] = "divine_plea",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "divine_storm",
							}, -- [16]
							{
								["action"] = "crusader_strike",
								["enabled"] = true,
							}, -- [17]
							{
								["action"] = "divine_storm",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "( target.is_demon || target.is_undead ) & buff.the_art_of_war.up & next_primary_at > settings.primary_slack",
								["action"] = "exorcism",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "! buff.active_consecration.up & next_primary_at > settings.primary_slack",
								["action"] = "consecration",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "buff.the_art_of_war.up & next_primary_at > settings.primary_slack",
								["action"] = "exorcism",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "( target.is_demon || target.is_undead )",
								["action"] = "holy_wrath",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "settings.fol_on_aow & buff.the_art_of_war.up & next_primary_at > primary_slack & ! buff.divine_plea.up & cooldown.exorcism.remains > 6",
								["action"] = "flash_of_light",
							}, -- [23]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["action"] = "retribution_aura",
								["criteria"] = "! up & settings.maintain_aura & assigned_aura.retribution_aura",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_aura & assigned_aura.concentration_aura",
								["action"] = "concentration_aura",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_aura & assigned_aura.crusader_aura",
								["action"] = "crusader_aura",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_aura & assigned_aura.devotion_aura",
								["action"] = "devotion_aura",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_aura & assigned_aura.fire_resistance_aura",
								["action"] = "fire_resistance_aura",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_aura & assigned_aura.frost_resistance_aura",
								["action"] = "frost_resistance_aura",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_aura & assigned_aura.shadow_resistance_aura",
								["action"] = "shadow_resistance_aura",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_blessing & assigned_blessing.blessing_of_kings",
								["action"] = "blessing_of_kings",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_blessing & assigned_blessing.blessing_of_might",
								["action"] = "blessing_of_might",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_blessing & assigned_blessing.blessing_of_sanctuary",
								["action"] = "blessing_of_sanctuary",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! up & settings.maintain_blessing & assigned_blessing.blessing_of_wisdom",
								["action"] = "blessing_of_wisdom",
							}, -- [11]
						},
					},
					["version"] = 20230222.1,
					["warnings"] = "Imported 2 action lists.\n",
					["author"] = "Supernuss",
					["profile"] = "actions.precombat+=/retribution_aura,if=!up&settings.maintain_aura&assigned_aura.retribution_aura\nactions.precombat+=/concentration_aura,if=!up&settings.maintain_aura&assigned_aura.concentration_aura\nactions.precombat+=/crusader_aura,if=!up&settings.maintain_aura&assigned_aura.crusader_aura\nactions.precombat+=/devotion_aura,if=!up&settings.maintain_aura&assigned_aura.devotion_aura\nactions.precombat+=/fire_resistance_aura,if=!up&settings.maintain_aura&assigned_aura.fire_resistance_aura\nactions.precombat+=/frost_resistance_aura,if=!up&settings.maintain_aura&assigned_aura.frost_resistance_aura\nactions.precombat+=/shadow_resistance_aura,if=!up&settings.maintain_aura&assigned_aura.shadow_resistance_aura\nactions.precombat+=/blessing_of_kings,if=!up&settings.maintain_blessing&assigned_blessing.blessing_of_kings\nactions.precombat+=/blessing_of_might,if=!up&settings.maintain_blessing&assigned_blessing.blessing_of_might\nactions.precombat+=/blessing_of_sanctuary,if=!up&settings.maintain_blessing&assigned_blessing.blessing_of_sanctuary\nactions.precombat+=/blessing_of_wisdom,if=!up&settings.maintain_blessing&assigned_blessing.blessing_of_wisdom\n\nactions+=/hand_of_reckoning,use_off_gcd=1,if=!settings.hor_macros & glyph.reckoning.enabled & (debuff.training_dummy.up  ||!aggro )\nactions+=/seal_of_vengeance,if=buff.seal.down&active_enemies=1\nactions+=/seal_of_command,if=buff.seal.down&active_enemies>1\nactions+=/avenging_wrath\nactions+=/potion\nactions+=/use_items\nactions+=/hammer_of_wrath,if=buff.avenging_wrath.up\nactions+=/hyperspeed_acceleration\nactions+=/judgement_of_wisdom,if=mana.percent<settings.judgement_of_wisdom_threshold\nactions+=/judgement_of_light\nactions+=/divine_storm,if=set_bonus.tier10_2pc=1\nactions+=/consecration,if=!moving&active_enemies>1&!buff.active_consecration.up\nactions+=/hammer_of_wrath\nactions+=/holy_wrath,if=(target.is_demon||target.is_undead)&active_enemies>=settings.holy_wrath_threshold\nactions+=/divine_plea,if=mana.percent<settings.divine_plea_threshold\nactions+=/divine_storm,if=active_enemies > 1\nactions+=/crusader_strike\nactions+=/divine_storm\nactions+=/exorcism,if=(target.is_demon||target.is_undead)&buff.the_art_of_war.up&next_primary_at > settings.primary_slack\nactions+=/consecration,if=!buff.active_consecration.up&next_primary_at > settings.primary_slack\nactions+=/exorcism,if=buff.the_art_of_war.up&next_primary_at > settings.primary_slack\nactions+=/holy_wrath,if=(target.is_demon || target.is_undead)\nactions+=/flash_of_light,if=settings.fol_on_aow & buff.the_art_of_war.up & next_primary_at > primary_slack &  ! buff.divine_plea.up & cooldown.exorcism.remains >6",
				},
				["Balance (IV)"] = {
					["builtIn"] = true,
					["date"] = 20230228,
					["spec"] = 11,
					["desc"] = "Balance Druid priority for Hekili",
					["profile"] = "actions.precombat+=/mark_of_the_wild,if=!up&!buff.gift_of_the_wild.up\nactions.precombat+=/thorns,if=!up\nactions.precombat+=/moonkin_form,if=!up\nactions.precombat+=/potion\n\nactions+=/call_action_list,name=init\nactions+=/run_action_list,name=aoe,if=active_enemies>3\nactions+=/run_action_list,name=spam,if=variable.spam_now\nactions+=/run_action_list,name=fish\n\nactions.init+=/variable,name=lunar_spam_now,value=buff.eclipse_lunar.up\nactions.init+=/variable,name=solar_spam_now,value=buff.eclipse_solar.up\nactions.init+=/variable,name=spam_now,value=variable.lunar_spam_now||variable.solar_spam_now\nactions.init+=/variable,name=fish_now,value=!variable.lunar_spam_now&!variable.solar_spam_now\nactions.init+=/variable,name=lunar_can_proc,value=buff.eclipse_lunar.last_applied=0||query_time-buff.eclipse_lunar.last_applied>=30\nactions.init+=/variable,name=solar_can_proc,value=buff.eclipse_solar.last_applied=0||query_time-buff.eclipse_solar.last_applied>=30\nactions.init+=/variable,name=lunar_fish_now,value=variable.fish_now&variable.lunar_can_proc\nactions.init+=/variable,name=solar_fish_now,value=variable.fish_now&(variable.solar_can_proc||!variable.lunar_can_proc)\n\nactions.fish+=/starfire,if=buff.elunes_wrath.up&(!variable.lunar_fish_now||buff.elunes_wrath.remains<action.starfire.gcd||moving)\nactions.fish+=/moonfire,if=!debuff.moonfire.up&moving\nactions.fish+=/force_of_nature\nactions.fish+=/starfall\nactions.fish+=/faerie_fire,if=!up&(talent.improved_faerie_fire.enabled||group_members>=5||moving)\nactions.fish+=/insect_swarm,if=!debuff.insect_swarm.up\nactions.fish+=/typhoon,if=moving&glyph.typhoon.enabled\nactions.fish+=/moonfire,if=!debuff.moonfire.up&variable.lunar_fish_now&debuff.moonfire.remains<3\nactions.fish+=/wrath,if=variable.lunar_fish_now\nactions.fish+=/starfire,if=variable.solar_fish_now\n\nactions.spam+=/hyperspeed_acceleration,use_off_gcd=1,if=buff.eclipse_lunar.up&buff.eclipse_lunar.remains>settings.lunar_cooldown_leeway\nactions.spam+=/potion,use_off_gcd=1,if=buff.eclipse_lunar.up&buff.eclipse_lunar.remains>settings.lunar_cooldown_leeway\nactions.spam+=/use_items,use_off_gcd=1,if=buff.eclipse_lunar.up&buff.eclipse_lunar.remains>settings.lunar_cooldown_leeway\nactions.spam+=/starfire,if=buff.elunes_wrath.up\nactions.spam+=/insect_swarm,if=!debuff.insect_swarm.up&(!buff.eclipse_lunar.up||buff.eclipse_lunar.remains>7)\nactions.spam+=/wrath,if=variable.solar_spam_now\nactions.spam+=/starfire,if=variable.lunar_spam_now\n\nactions.aoe+=/typhoon,if=glyph.typhoon.enabled\nactions.aoe+=/starfall\nactions.aoe+=/hurricane",
					["version"] = 20230228,
					["warnings"] = "Imported 6 action lists.\n",
					["lists"] = {
						["fish"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.elunes_wrath.up & ( ! variable.lunar_fish_now || buff.elunes_wrath.remains < action.starfire.gcd || moving )",
								["action"] = "starfire",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.moonfire.up & moving",
								["action"] = "moonfire",
							}, -- [2]
							{
								["action"] = "force_of_nature",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "starfall",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! up & ( talent.improved_faerie_fire.enabled || group_members >= 5 || moving )",
								["action"] = "faerie_fire",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.insect_swarm.up",
								["action"] = "insect_swarm",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "moving & glyph.typhoon.enabled",
								["action"] = "typhoon",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.moonfire.up & variable.lunar_fish_now & debuff.moonfire.remains < 3",
								["action"] = "moonfire",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.lunar_fish_now",
								["action"] = "wrath",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "variable.solar_fish_now",
								["action"] = "starfire",
							}, -- [10]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "init",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3",
								["action"] = "run_action_list",
								["list_name"] = "aoe",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.spam_now",
								["action"] = "run_action_list",
								["list_name"] = "spam",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "fish",
							}, -- [4]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "! up & ! buff.gift_of_the_wild.up",
								["action"] = "mark_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "thorns",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "moonkin_form",
							}, -- [3]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [4]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "glyph.typhoon.enabled",
								["action"] = "typhoon",
							}, -- [1]
							{
								["action"] = "starfall",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "hurricane",
								["enabled"] = true,
							}, -- [3]
						},
						["spam"] = {
							{
								["enabled"] = true,
								["action"] = "hyperspeed_acceleration",
								["criteria"] = "buff.eclipse_lunar.up & buff.eclipse_lunar.remains > settings.lunar_cooldown_leeway",
								["use_off_gcd"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "potion",
								["criteria"] = "buff.eclipse_lunar.up & buff.eclipse_lunar.remains > settings.lunar_cooldown_leeway",
								["use_off_gcd"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "use_items",
								["criteria"] = "buff.eclipse_lunar.up & buff.eclipse_lunar.remains > settings.lunar_cooldown_leeway",
								["use_off_gcd"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.elunes_wrath.up",
								["action"] = "starfire",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.insect_swarm.up & ( ! buff.eclipse_lunar.up || buff.eclipse_lunar.remains > 7 )",
								["action"] = "insect_swarm",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.solar_spam_now",
								["action"] = "wrath",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.lunar_spam_now",
								["action"] = "starfire",
							}, -- [7]
						},
						["init"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.eclipse_lunar.up",
								["var_name"] = "lunar_spam_now",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.eclipse_solar.up",
								["var_name"] = "solar_spam_now",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.lunar_spam_now || variable.solar_spam_now",
								["var_name"] = "spam_now",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.lunar_spam_now & ! variable.solar_spam_now",
								["var_name"] = "fish_now",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.eclipse_lunar.last_applied = 0 || query_time - buff.eclipse_lunar.last_applied >= 30",
								["var_name"] = "lunar_can_proc",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.eclipse_solar.last_applied = 0 || query_time - buff.eclipse_solar.last_applied >= 30",
								["var_name"] = "solar_can_proc",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.fish_now & variable.lunar_can_proc",
								["var_name"] = "lunar_fish_now",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.fish_now & ( variable.solar_can_proc || ! variable.lunar_can_proc )",
								["var_name"] = "solar_fish_now",
							}, -- [8]
						},
					},
					["author"] = "Defzach",
				},
				["Enhancement (IV)"] = {
					["builtIn"] = true,
					["date"] = 20231106,
					["spec"] = 7,
					["desc"] = "WotLK enhancement shaman rotation for Hekili",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "wind_shear",
								["criteria"] = "debuff.casting.up & debuff.casting.v2 = 0",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! mainhand_imbued & ! mainhand_has_spellpower",
								["action"] = "windfury_weapon",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "flametongue_weapon",
								["criteria"] = "! mainhand_imbued & mainhand_has_spellpower",
								["rank"] = "action.flametongue_weapon.max_rank-1",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! offhand_imbued",
								["action"] = "flametongue_weapon",
							}, -- [4]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "fire_elemental_totem",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "feral_spirit",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier10enhancement_2pc = 1",
								["action"] = "shamanistic_rage",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.fire_totem.down & active_enemies > 3",
								["action"] = "magma_totem",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3",
								["action"] = "fire_nova",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & target.time_to_die >= 9 & target.outside4",
								["action"] = "flame_shock",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormstrike.down",
								["action"] = "stormstrike",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack = 5 & ( active_enemies = 1 || ! cooldown.chain_lightning.up )",
								["action"] = "lightning_bolt",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack = 5",
								["action"] = "chain_lightning",
							}, -- [16]
							{
								["action"] = "stormstrike",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & target.time_to_die >= 9",
								["action"] = "flame_shock",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.fire_totem.down",
								["action"] = "magma_totem",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "talent.static_shock.enabled & buff.shield.down",
								["action"] = "lightning_shield",
							}, -- [20]
							{
								["action"] = "earth_shock",
								["enabled"] = true,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "mana.current > settings.st_fn_mana_threshold",
								["action"] = "fire_nova",
							}, -- [22]
							{
								["action"] = "lava_lash",
								["enabled"] = true,
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "buff.magma_totem.up & buff.magma_totem.remains < 3",
								["action"] = "magma_totem",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "talent.static_shock.enabled & buff.shield.stack < buff.shield.max_stack * 0.33",
								["action"] = "lightning_shield",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "target.within10 & mana.pct < settings.shaman_rage_threshold",
								["action"] = "shamanistic_rage",
							}, -- [26]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["action"] = "windfury_weapon",
								["criteria"] = "! mainhand_imbued & ! mainhand_has_spellpower",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "flametongue_weapon",
								["criteria"] = "! mainhand_imbued & mainhand_has_spellpower",
								["rank"] = "action.flametongue_weapon.max_rank-1",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! offhand_imbued",
								["action"] = "flametongue_weapon",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.shield.down",
								["action"] = "lightning_shield",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.earth_totem.down & buff.fire_totem.down & buff.water_totem.down & buff.air_totem.down",
								["action"] = "call_of_the_elements",
							}, -- [5]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "fire_elemental_totem",
								["enabled"] = true,
							}, -- [7]
						},
					},
					["version"] = 20231106,
					["warnings"] = "Imported 2 action lists.\n",
					["author"] = "Defzach",
					["basedOn"] = "Enhancement (IV)",
					["profile"] = "actions.precombat+=/windfury_weapon,if=!mainhand_imbued&!mainhand_has_spellpower\nactions.precombat+=/flametongue_weapon,rank=action.flametongue_weapon.max_rank-1,if=!mainhand_imbued&mainhand_has_spellpower\nactions.precombat+=/flametongue_weapon,if=!offhand_imbued\nactions.precombat+=/lightning_shield,if=buff.shield.down\nactions.precombat+=/call_of_the_elements,if=buff.earth_totem.down&buff.fire_totem.down&buff.water_totem.down&buff.air_totem.down\nactions.precombat+=/potion\nactions.precombat+=/fire_elemental_totem\n\nactions+=/wind_shear,if=debuff.casting.up&debuff.casting.v2=0\nactions+=/windfury_weapon,if=!mainhand_imbued&!mainhand_has_spellpower\nactions+=/flametongue_weapon,rank=action.flametongue_weapon.max_rank-1,if=!mainhand_imbued&mainhand_has_spellpower\nactions+=/flametongue_weapon,if=!offhand_imbued\nactions+=/use_items\nactions+=/potion\nactions+=/fire_elemental_totem\nactions+=/feral_spirit\nactions+=/use_items\n\nactions+=/shamanistic_rage,if=set_bonus.tier10enhancement_2pc=1\nactions+=/magma_totem,if=buff.fire_totem.down&active_enemies>3\nactions+=/fire_nova,if=active_enemies>3\nactions+=/flame_shock,if=!ticking&target.time_to_die>=9&target.outside4\nactions+=/stormstrike,if=buff.stormstrike.down\nactions+=/lightning_bolt,if=buff.maelstrom_weapon.stack=5&(active_enemies=1||!cooldown.chain_lightning.up)\nactions+=/chain_lightning,if=buff.maelstrom_weapon.stack=5\nactions+=/stormstrike\nactions+=/flame_shock,if=!ticking&target.time_to_die>=9\nactions+=/magma_totem,if=buff.fire_totem.down\nactions+=/lightning_shield,if=talent.static_shock.enabled&buff.shield.down\nactions+=/earth_shock\nactions+=/fire_nova,if=mana.current>settings.st_fn_mana_threshold\nactions+=/lava_lash\nactions+=/magma_totem,if=buff.magma_totem.up&buff.magma_totem.remains<3\nactions+=/lightning_shield,if=talent.static_shock.enabled&buff.shield.stack<buff.shield.max_stack*0.33\nactions+=/shamanistic_rage,if=target.within10&mana.pct<settings.shaman_rage_threshold",
				},
			},
			["runOnce"] = {
				["forceReloadAllDefaultPriorities_20220228"] = true,
				["forceReloadClassDefaultOptions_20220306_2"] = true,
				["forceReloadClassDefaultOptions_20220306_8"] = true,
				["updateMaxRefreshToNewSpecOptions_20220222"] = true,
				["forceEnableAllClassesOnceDueToBug_20220225"] = true,
				["forceReloadClassDefaultOptions_20220306_6"] = true,
				["forceReloadClassDefaultOptions_20220306_9"] = true,
				["forceReloadClassDefaultOptions_20220306_5"] = true,
				["forceReloadClassDefaultOptions_20220306_1"] = true,
				["forceEnableEnhancedRecheckBoomkin_20210712"] = true,
				["forceReloadClassDefaultOptions_20220306_7"] = true,
				["forceReloadClassDefaultOptions_20220306_11"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
		},
	},
}
