/// tile_swap(tile layer, tile count, old bg, new bg)


var _layer, _count, _bg_old, _bg_new;
    _layer  = argument0;
    _count  = argument1;
    _bg_old = argument2;
    _bg_new = argument3;

for(i=_layer; i<_layer+_count; i+=1){
    if(tile_exists(i)){
       if(tile_get_background(i) == _bg_old){
          tile_set_background(i, _bg_new);
       }
    }
    }
