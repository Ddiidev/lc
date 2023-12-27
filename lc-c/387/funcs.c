// #include "min_hashtb.c"
#include "map.c"

int firstUniqChar_1(char *s)
{
    int len = strlen(s);

    for (int i = 0; i < len; i++)
    {
    start:
        for (int j = 0; j < len; j++)
        {
            if (i != j && s[i] == s[j])
            {
                i++;
                goto start;
            }
        }

        return i;
    }

    return 0;
}

int firstUniqChar_2(char *s)
{

    int len = strlen(s);
    Map *obj = map_new(26);
    void *objValue;
    int value;

    for (int i = 0; i < len; i++)
    {
        objValue = map_get(obj, s[i]);
        if (objValue == NULL)
            value = 0;
        else
            value = (intptr_t)objValue;
        value++;
        map_insert(obj, s[i], (void *)(intptr_t)value);
    }

    for (int i = 0; i < len; i++)
    {
        objValue = map_get(obj, s[i]);
        if (objValue != NULL && objValue == (void *)1)
            return i;
    }

    return 0;
}

int firstUniqChar_3(char *s)
{
    int len = strlen(s);
    int objs[26];

    for (int i = 0; i < len; i++)
        objs[s[i] - 'a']++;

    for (int i = 0; i < len; i++)
        if (objs[s[i] - 'a'] == 1)
            return i;

    return 0;
}