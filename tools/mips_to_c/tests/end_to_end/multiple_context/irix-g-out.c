f32 test(shape_t *s) {
    shape_t *spC;
    shape_t *sp8;
    shape_t *sp4;
    s32 temp_a1;

    temp_a1 = s->type;
    switch (temp_a1) {                              /* irregular */
    case 0:
        spC = s;
        return spC->origin.x + spC->unkC;
    case 1:
        sp8 = s;
        return sp8->origin.x + sp8->unkC;
    case 2:
        sp4 = s;
        return sp4->origin.x + sp4->unkC;
    default:
        return 0.0f;
    }
}
