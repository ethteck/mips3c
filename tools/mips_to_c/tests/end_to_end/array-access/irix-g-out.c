void test(struct A *a, s32 b) {
    D_410140 = (int *) a->array[b];
    D_410140 = (int *) &a->array[b];
    D_410140 = (int *) a->array2[b].x;
    D_410140 = &a->array2[b].x;
    D_410140 = (int *) a[b].y;
    D_410140 = (int *) a->array2[3].x;
    D_410140 = &a->array2[3].x;
}
