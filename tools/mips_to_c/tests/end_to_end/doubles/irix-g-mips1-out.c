f64 test(f64 arg0, s32 arg2, f64 arg4) {
    f64 sp8;
    f32 sp4;
    f64 sp0;

    sp8 = ((f64) arg2 * arg0) + (arg0 / arg4);
    sp8 -= 7.0;
    if ((sp8 < arg4) || (sp8 == arg4) || (sp8 > 9.0)) {
        sp0 = 2.3125f;
        sp4 = 0.0f;
    } else {
        sp0 = 6.0;
    }
    D_4101B0 = sp0;
    return sp0;
}
