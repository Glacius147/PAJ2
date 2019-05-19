/// @description ?

#region Gestion force flamme

/// @description On suit le mouvement de la caisse
light[|eLight.X] = id_source.x;
light[|eLight.Y] = id_source.y;

var _alea = irandom_range(-3,3);

var _range_cible  = light[|eLight.Range] + _alea;

light[|eLight.Range] = min(max (_range_cible,lum_min),lum_max);


light[|eLight.Intensity] = light[|eLight.Range]/75;

#endregion