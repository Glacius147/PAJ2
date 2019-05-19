/// @description Suit la source ou est detruit


if instance_exists(id_source)
{

x = id_source.x;
y = id_source.y;


polygon = polygon_from_instance(id);
}
else
{
	instance_destroy();	
}


