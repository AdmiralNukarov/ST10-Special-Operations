private['_grp1','_grp2'];
_grp1 = _this select 0;
_grp2 = createGroup(side _grp1);
(units _grp1) joinSilent _grp2;

deleteGroup _grp1;

_grp2
