/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Pineda/Desktop/2017/arquitectura/Procesador2/Procesador2/SEU.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_0992986323_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 4473);
    *((int *)t1) = 13;
    t2 = (t0 + 4477);
    *((int *)t2) = 31;
    t3 = 13;
    t4 = 31;

LAB2:    if (t3 <= t4)
        goto LAB3;

LAB5:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t8 = (12 - 12);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t5 = (t0 + 2752);
    t6 = (t5 + 56U);
    t13 = *((char **)t6);
    t19 = (t13 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t1, 13U);
    xsi_driver_first_trans_delta(t5, 19U, 13U, 0LL);
    t1 = (t0 + 2672);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(45, ng0);
    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t7 = (12 - 12);
    t8 = (t7 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t5 = (t6 + t10);
    t11 = *((unsigned char *)t5);
    t12 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, (unsigned char)2, t11);
    t13 = (t0 + 4473);
    t14 = *((int *)t13);
    t15 = (t14 - 31);
    t16 = (t15 * -1);
    t17 = (1 * t16);
    t18 = (0U + t17);
    t19 = (t0 + 2752);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = t12;
    xsi_driver_first_trans_delta(t19, t18, 1, 0LL);

LAB4:    t1 = (t0 + 4473);
    t3 = *((int *)t1);
    t2 = (t0 + 4477);
    t4 = *((int *)t2);
    if (t3 == t4)
        goto LAB5;

LAB6:    t7 = (t3 + 1);
    t3 = t7;
    t5 = (t0 + 4473);
    *((int *)t5) = t3;
    goto LAB2;

}


extern void work_a_0992986323_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0992986323_3212880686_p_0};
	xsi_register_didat("work_a_0992986323_3212880686", "isim/tb_Procesador_isim_beh.exe.sim/work/a_0992986323_3212880686.didat");
	xsi_register_executes(pe);
}
