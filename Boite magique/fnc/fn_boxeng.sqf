/*----------------------------------------
	Author: 	Daniels Morris for ArmApps
	Website: 	https://armapps.net
----------------------------------------*/
_terminal = _this select 0;
_boxprice = 100000;
if (player getVariable "Unconscious") exitwith {"You can't do this if you are dead.";};
if (vehicle player != player) then {hint "You can't do this in your vehicule.";};
if (player distance _terminal > 5) exitWith {hint "You need to be at less than 5 meters"};
if (life_cash <100000) exitWith {hint"Not enought money";};
_lowroll = ["arifle_MX_ACO_pointer_snds_F","arifle_MX_RCO_pointer_snds_F","arifle_MXM_SOS_pointer_F","arifle_MXM_RCO_pointer_snds_F","arifle_MXM_DMS_F","arifle_MXC_Black_F","arifle_MX_Black_F","arifle_MX_SW_Black_F","arifle_MXM_Black_F","arifle_MX_Black_Hamr_pointer_F","arifle_MX_SW_Black_Hamr_pointer_F","arifle_SDAR_F","arifle_TRG21_F","arifle_TRG20_F","arifle_TRG20_Holo_F","arifle_TRG20_ACO_pointer_F","arifle_TRG20_ACO_Flash_F","arifle_TRG20_ACO_F","arifle_TRG21_ACO_pointer_F","arifle_TRG21_ARCO_pointer_F","arifle_TRG21_MRCO_F","hgun_PDW2000_F","hgun_PDW2000_snds_F","hgun_PDW2000_Holo_F","hgun_PDW2000_Holo_snds_F","SMG_01_F","SMG_01_Holo_F","SMG_01_Holo_pointer_snds_F","SMG_01_ACO_F","SMG_02_F","SMG_02_ACO_F","SMG_02_ARCO_pointg_F","srifle_DMR_01_DMS_BI_F","srifle_DMR_01_DMS_snds_BI_F","srifle_DMR_02_F","srifle_DMR_02_camo_F","srifle_DMR_02_sniper_F","srifle_DMR_02_ACO_F","srifle_DMR_02_MRCO_F","srifle_DMR_02_SOS_F","srifle_DMR_02_DMS_F","srifle_DMR_02_sniper_AMS_LP_S_F","srifle_DMR_02_camo_AMS_LP_F","srifle_DMR_02_ARCO_F","srifle_DMR_03_F","srifle_DMR_03_khaki_F","srifle_DMR_03_tan_F","srifle_DMR_03_multicam_F","srifle_DMR_03_woodland_F","srifle_DMR_03_ACO_F","srifle_DMR_03_MRCO_F","srifle_DMR_03_SOS_F","srifle_DMR_03_DMS_F","srifle_DMR_03_tan_AMS_LP_F","srifle_DMR_03_DMS_snds_F","srifle_DMR_03_ARCO_F","srifle_DMR_03_AMS_F","srifle_DMR_05_blk_F","srifle_DMR_05_hex_F","srifle_DMR_05_tan_F","srifle_DMR_05_ACO_F","srifle_DMR_05_MRCO_F","srifle_DMR_05_SOS_F","srifle_DMR_05_DMS_F","srifle_DMR_05_KHS_LP_F","srifle_DMR_05_DMS_snds_F","srifle_DMR_05_ARCO_F","srifle_DMR_06_camo_F","srifle_DMR_06_olive_F","srifle_DMR_06_camo_khs_F","srifle_EBR_MRCO_LP_BI_F","LMG_Mk200_LP_BI_F","LMG_Mk200_BI_F","arifle_MXM_DMS_LP_BI_snds_F","arifle_MXM_Hamr_LP_BI_F","arifle_MX_khk_F","arifle_MX_khk_ACO_Pointer_F","arifle_MX_khk_Holo_Pointer_F","arifle_MX_khk_Hamr_Pointer_F","arifle_MX_khk_Hamr_Pointer_Snds_F","arifle_MX_khk_Pointer_F","arifle_MX_khk_ACO_Pointer_Snds_F","arifle_MX_SW_khk_F","arifle_MX_SW_khk_Pointer_F","arifle_MXC_khk_F","arifle_MXC_khk_Holo_Pointer_F","arifle_MXC_khk_ACO_F","arifle_MXC_khk_ACO_Pointer_Snds_F","arifle_MXM_khk_F","arifle_MXM_khk_MOS_Pointer_Bipod_F","srifle_LRR_tna_F","srifle_GM6_ghex_F","hgun_P07_khk_F","hgun_P07_khk_Snds_F","srifle_DMR_07_blk_F","srifle_DMR_07_hex_F","srifle_DMR_07_ghex_F","srifle_DMR_07_blk_DMS_F","srifle_DMR_07_blk_DMS_Snds_F","LMG_03_F","hgun_Pistol_01_F","arifle_AK12_F","arifle_AKM_F","arifle_AKM_FL_F"]; //Weapon low price
_midroll = ["srifle_DMR_01_F","srifle_DMR_01_ACO_F","srifle_DMR_01_MRCO_F","srifle_DMR_01_SOS_F","srifle_DMR_01_DMS_F","srifle_DMR_01_DMS_snds_F","srifle_DMR_01_ARCO_F","srifle_EBR_F","srifle_EBR_ACO_F","srifle_EBR_MRCO_pointer_F","srifle_EBR_ARCO_pointer_F","srifle_EBR_SOS_F","srifle_EBR_ARCO_pointer_snds_F","srifle_EBR_DMS_F","srifle_EBR_Hamr_pointer_F","srifle_EBR_DMS_pointer_snds_F","srifle_GM6_F","srifle_GM6_SOS_F","srifle_GM6_camo_F","srifle_GM6_camo_SOS_F","srifle_LRR_F","srifle_LRR_SOS_F","srifle_LRR_camo_F","srifle_LRR_camo_SOS_F","LMG_Mk200_F","LMG_Mk200_MRCO_F","LMG_Mk200_pointer_F","hgun_ACPC2_F","hgun_ACPC2_snds_F","hgun_P07_F","hgun_P07_snds_F","hgun_Pistol_heavy_01_F","hgun_Pistol_heavy_01_snds_F","hgun_Pistol_heavy_01_MRD_F","hgun_Pistol_heavy_02_F","hgun_Pistol_heavy_02_Yorris_F","hgun_Rook40_F","hgun_Rook40_snds_F","arifle_Katiba_F","arifle_Katiba_C_F","arifle_Katiba_C_ACO_pointer_F","arifle_Katiba_C_ACO_F","arifle_Katiba_ACO_F","arifle_Katiba_pointer_F","arifle_Katiba_ACO_pointer_F","arifle_Katiba_ARCO_F","arifle_Katiba_ARCO_pointer_F","arifle_Katiba_C_ACO_pointer_snds_F","arifle_Katiba_ACO_pointer_snds_F","arifle_Katiba_ARCO_pointer_snds_F","arifle_Mk20_F","arifle_Mk20_plain_F","arifle_Mk20C_F","arifle_Mk20C_plain_F","arifle_Mk20C_ACO_F","arifle_Mk20C_ACO_pointer_F","arifle_Mk20_pointer_F","arifle_Mk20_Holo_F","arifle_Mk20_ACO_F","arifle_Mk20_ACO_pointer_F","arifle_Mk20_MRCO_F","arifle_Mk20_MRCO_plain_F","arifle_Mk20_MRCO_pointer_F","arifle_MXC_F","arifle_MX_F","arifle_MX_SW_F","arifle_MXM_F","arifle_MX_pointer_F","arifle_MX_Holo_pointer_F","arifle_MX_Hamr_pointer_F","arifle_MX_ACO_pointer_F","arifle_MX_ACO_F","arifle_MXC_Holo_F","arifle_MXC_Holo_pointer_F","arifle_MX_SW_pointer_F","arifle_MX_SW_Hamr_pointer_F","arifle_MXM_Hamr_pointer_F","arifle_MXC_ACO_F","arifle_MXC_Holo_pointer_snds_F","arifle_MXC_SOS_point_snds_F","arifle_MXC_ACO_pointer_snds_F","arifle_MXC_ACO_pointer_F"]; //Weapon mid price
_highroll = ["arifle_AKS_F","arifle_ARX_blk_F","arifle_ARX_ghex_F","arifle_ARX_hex_F","arifle_ARX_hex_ARCO_Pointer_Snds_F","arifle_ARX_ghex_ARCO_Pointer_Snds_F","arifle_ARX_hex_ACO_Pointer_Snds_F","arifle_ARX_ghex_ACO_Pointer_Snds_F","arifle_ARX_hex_DMS_Pointer_Snds_Bipod_F","arifle_ARX_ghex_DMS_Pointer_Snds_Bipod_F","arifle_ARX_Viper_F","arifle_ARX_Viper_hex_F","arifle_CTAR_blk_F","arifle_CTAR_hex_F","arifle_CTAR_ghex_F","arifle_CTAR_blk_ACO_Pointer_F","arifle_CTAR_blk_Pointer_F","arifle_CTAR_blk_ACO_F","arifle_CTAR_blk_ARCO_Pointer_F","arifle_CTAR_blk_ACO_Pointer_Snds_F","arifle_CTAR_blk_ARCO_Pointer_Snds_F","arifle_CTAR_blk_ARCO_F","arifle_CTARS_blk_F","arifle_CTARS_hex_F","arifle_CTARS_ghex_F","arifle_CTARS_blk_Pointer_F","arifle_SPAR_01_blk_F","arifle_SPAR_01_khk_F","arifle_SPAR_01_snd_F","arifle_SPAR_01_blk_ERCO_Pointer_F","arifle_SPAR_01_blk_ACO_Pointer_F","arifle_SPAR_02_blk_F","arifle_SPAR_02_khk_F","arifle_SPAR_02_snd_F","arifle_SPAR_02_blk_Pointer_F","arifle_SPAR_03_blk_F","arifle_SPAR_03_khk_F","arifle_SPAR_03_snd_F","arifle_SPAR_03_blk_MOS_Pointer_Bipod_F","SMG_05_F"]; //Weapon high price

_listeroll = [_midroll, _highroll, _lowroll] call BIS_fnc_selectRandom;
_randomwep = selectRandom _listeroll;
_lancerboite = ["If you launch the MysteryBox you will loose your weapon",
"MysteryBox",
"Yes",
"No"] call Bis_fnc_guimessage;

if (_lancerboite) then {
life_cash = life_cash - _boxprice;
[myTerminal, 3] call BIS_fnc_DataTerminalAnimate;
_weapon1 = "groundweaponHolder" createVehicle position myTerminal; _weapon1 addweaponcargo [_randomwep, 1];
_weapon1 attachTo [myTerminal, [0, 0, 1]];
_weapon1 setDamage 1;
sleep 5;
_terminal say3D "alarm";
player addWeapon _randomwep;
hintSilent parseText format ["You get:<br/>%2<br/><img image='%1' size='4'/>", getText (configFile >> 'CfgWeapons' >> primaryWeapon player >> 'picture'),((configFile >> "CfgWeapons" >> currentWeapon player >> "displayName") call BIS_fnc_GetCfgData)];
[myTerminal, 0] call BIS_fnc_DataTerminalAnimate;
sleep 3;
deletevehicle _weapon1;
reventearmes = ["You can sold the weapon",
"Sell the weapon",
"Yes",
"Non"] call Bis_fnc_guimessage;
};

if (reventearmes && _listeroll isEqualto _lowroll) then {

	hint parseText format ["You sold your %1 for <t color='#02a82e'> 25.000$ </t>",((configFile >> "CfgWeapons" >> currentWeapon player >> "displayName") call BIS_fnc_GetCfgData)];
	player removeWeapon _randomwep;
	life_cash = life_cash + 25000;  //Price for lowRoll weapons
};
if (reventearmes && _listeroll isEqualto _midroll) then {

	hint parseText format ["You sold your %1 for <t color='#02a82e'> 35.000$ </t>",((configFile >> "CfgWeapons" >> currentWeapon player >> "displayName") call BIS_fnc_GetCfgData)];
	player removeWeapon _randomwep;
	life_cash = life_cash + 35000; //Price for midRoll weapons
};
if (reventearmes && _listeroll isEqualto _highroll) then {

	hint parseText format ["You sold your %1 for <t color='#02a82e'> 50.000$ </t>",((configFile >> "CfgWeapons" >> currentWeapon player >> "displayName") call BIS_fnc_GetCfgData)];
	player removeWeapon _randomwep;
	life_cash = life_cash + 50000; //Price for highRoll weapons
};

//https://gyazo.com/bdc04db15e24872df62055ac7deab3e2