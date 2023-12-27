#include <stdio.h>

typedef struct
{
   char key;
   void *value;
} MapElement;

typedef struct
{
   MapElement *elements;
   int size;
   int capacity;
} Map;

Map *map_new(int initial_capacity)
{
   Map *map = malloc(sizeof(Map));
   map->elements = malloc(initial_capacity * sizeof(MapElement));
   map->size = 0;
   map->capacity = initial_capacity;
   return map;
}

int map_hash(int key)
{
   return abs(key); // Uma função hash muito simples
}

void map_insert(Map *map, char key, void *value)
{
   int index = map_hash(key) % map->capacity;
   map->elements[index].key = key;
   map->elements[index].value = value;
   map->size++;
}

void *map_get(Map *map, char key)
{
   int index = map_hash(key) % map->capacity;
   if (map->elements[index].key == key)
   {
      return map->elements[index].value;
   }
   else
   {
      return NULL;
   }
}

void map_free(Map *map)
{
   for (int i = 0; i < map->size; i++)
   {
      free(map->elements[i].value);
   }
   free(map->elements);
   free(map);
}