/// @description ?

#region Gestion force flamme


var _alea = irandom_range(-3,3);

var _range_cible  = light[|eLight.Range] + _alea;

light[|eLight.Range] = min(max (_range_cible,lum_min),lum_max);


light[|eLight.Intensity] = light[|eLight.Range]/75;

#endregion