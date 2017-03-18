 // off: 0 = [0.95] execVM "lights.sqf";
// on: 0 = [0] execVM "lights.sqf";

_types = ["CUP_A2_lamp_small_ep1","CUP_A2_lamp_street1_ep1","CUP_A2_lamp_street1_off_pmc","CUP_A2_lamp_street2_ep1","CUP_A2_lamp_street2_off_ep1",
"CUP_A2_lampa_ind","CUP_A2_lampa_ind_ep1","CUP_A2_lampa_ind_zebr","CUP_A2_lampa_sidl","CUP_A2_lampa_sidl","CUP_A2_lampa_sidl_2",
"CUP_A2_lampa_sidl_3","CUP_A2_fluor_lamp","Misc_Wall_lamp","CUP_A1_lampa_STROP","CUP_A1_lampa_cut","CUP_A1_lampa_ind","CUP_A1_lampa_ind_b",
"CUP_A1_lampa_ind_zebr","CUP_A1_lampa_sidl","CUP_A1_lampa_sidl_2""CUP_A1_lampa_sidl_3","CUP_A1_Lampa_valec","CUP_A1_Lampa_vysoka",
"CUP_A1_Lampa_vysoka_bez","CUP_A1_lampadrevo","CUP_A1_lampazel","CUP_A1_tlampac_stozarvn_1","CUP_A1_tlampac_vo_seda","Lamps_Base_F",
"PowerLines_base_F","Land_PowerPoleWooden_L_F","Land_PortableLight_double_F","Land_PortableLight_single_F"];
_onoff = _this select 0;
_center = _this select 1;
_range = _this select 2;

sleep 1;
for [{_i=0},{_i < (count _types)},{_i=_i+1}] do
{
	_lamps = _center nearObjects [_types select _i, _range];
	sleep 0.1;
	{
		_x setDamage _onoff;
	}forEach _lamps;
};


