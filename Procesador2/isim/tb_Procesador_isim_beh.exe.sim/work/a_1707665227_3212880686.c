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
extern char *STD_TEXTIO;
static const char *ng1 = "romfile";
extern char *STD_STANDARD;
extern char *IEEE_P_2592010699;
static const char *ng4 = "C:/Users/Pineda/Desktop/2017/arquitectura/Procesador2/Procesador2/IM.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_2592010699_sub_393209765_503743352(char *, char *, char *, char *);
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


char *work_a_1707665227_3212880686_sub_3189348355_3057020925(char *t1, char *t2, char *t3)
{
    char t4[328];
    char t5[24];
    char t17[16];
    char t24[32];
    char t28[32];
    char t36[2048];
    char t49[16];
    char *t0;
    char *t6;
    char *t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    char *t27;
    char *t29;
    char *t30;
    int t31;
    char *t32;
    int t33;
    char *t34;
    char *t35;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    unsigned char t43;
    char *t44;
    int t45;
    int t46;
    char *t47;
    char *t48;
    unsigned int t50;
    unsigned int t51;

LAB0:    t6 = ((STD_TEXTIO) + 3440);
    t7 = (t3 + 12U);
    t8 = *((unsigned int *)t7);
    t8 = (t8 * 1U);
    t9 = (t4 + 4U);
    t10 = xsi_create_file_variable_in_buffer(0, ng1, t6, t2, t8, 1);
    *((char **)t9) = t10;
    t11 = (t4 + 12U);
    t12 = ((STD_TEXTIO) + 3280);
    t13 = (t11 + 56U);
    *((char **)t13) = t12;
    t14 = (t11 + 40U);
    *((char **)t14) = 0;
    t15 = (t11 + 64U);
    *((int *)t15) = 1;
    t16 = (t11 + 48U);
    *((char **)t16) = 0;
    t18 = (t17 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 31;
    t19 = (t18 + 4U);
    *((int *)t19) = 0;
    t19 = (t18 + 8U);
    *((int *)t19) = -1;
    t20 = (0 - 31);
    t21 = (t20 * -1);
    t21 = (t21 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t21;
    t19 = (t4 + 84U);
    t22 = ((STD_STANDARD) + 1112);
    t23 = (t19 + 88U);
    *((char **)t23) = t22;
    t25 = (t19 + 56U);
    *((char **)t25) = t24;
    xsi_type_set_default_value(t22, t24, t17);
    t26 = (t19 + 64U);
    *((char **)t26) = t17;
    t27 = (t19 + 80U);
    *((unsigned int *)t27) = 32U;
    t29 = (t28 + 0U);
    t30 = (t29 + 0U);
    *((int *)t30) = 0;
    t30 = (t29 + 4U);
    *((int *)t30) = 63;
    t30 = (t29 + 8U);
    *((int *)t30) = 1;
    t31 = (63 - 0);
    t21 = (t31 * 1);
    t21 = (t21 + 1);
    t30 = (t29 + 12U);
    *((unsigned int *)t30) = t21;
    t30 = (t28 + 16U);
    t32 = (t30 + 0U);
    *((int *)t32) = 31;
    t32 = (t30 + 4U);
    *((int *)t32) = 0;
    t32 = (t30 + 8U);
    *((int *)t32) = -1;
    t33 = (0 - 31);
    t21 = (t33 * -1);
    t21 = (t21 + 1);
    t32 = (t30 + 12U);
    *((unsigned int *)t32) = t21;
    t32 = (t4 + 204U);
    t34 = (t1 + 3408);
    t35 = (t32 + 88U);
    *((char **)t35) = t34;
    t37 = (t32 + 56U);
    *((char **)t37) = t36;
    xsi_type_set_default_value(t34, t36, 0);
    t38 = (t32 + 64U);
    t39 = (t34 + 80U);
    t40 = *((char **)t39);
    *((char **)t38) = t40;
    t41 = (t32 + 80U);
    *((unsigned int *)t41) = 2048U;
    t42 = (t5 + 4U);
    t43 = (t2 != 0);
    if (t43 == 1)
        goto LAB3;

LAB2:    t44 = (t5 + 12U);
    *((char **)t44) = t3;
    t45 = 0;
    t46 = 63;

LAB4:    if (t45 <= t46)
        goto LAB5;

LAB7:    t6 = (t32 + 56U);
    t7 = *((char **)t6);
    t43 = (2048U != 2048U);
    if (t43 == 1)
        goto LAB9;

LAB10:    t0 = xsi_get_transient_memory(2048U);
    memcpy(t0, t7, 2048U);

LAB1:    xsi_access_variable_delete(t11);
    t6 = (t4 + 4U);
    t7 = *((char **)t6);
    xsi_delete_file_variable(t7);
    return t0;
LAB3:    *((char **)t42) = t2;
    goto LAB2;

LAB5:    t47 = (t4 + 4U);
    t48 = *((char **)t47);
    std_textio_readline(STD_TEXTIO, (char *)0, t48, t11);
    t6 = (t19 + 56U);
    t7 = *((char **)t6);
    std_textio_read4(STD_TEXTIO, (char *)0, t11, t7, t17);
    t6 = (t19 + 56U);
    t7 = *((char **)t6);
    t6 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t49, t7, t17);
    t9 = (t32 + 56U);
    t10 = *((char **)t9);
    t20 = (t45 - 0);
    t8 = (t20 * 1);
    xsi_vhdl_check_range_of_index(0, 63, 1, t45);
    t21 = (32U * t8);
    t50 = (0 + t21);
    t9 = (t10 + t50);
    t12 = (t49 + 12U);
    t51 = *((unsigned int *)t12);
    t51 = (t51 * 1U);
    memcpy(t9, t6, t51);

LAB6:    if (t45 == t46)
        goto LAB7;

LAB8:    t20 = (t45 + 1);
    t45 = t20;
    goto LAB4;

LAB9:    xsi_size_not_matching(2048U, 2048U, 0);
    goto LAB10;

LAB11:;
}

static void work_a_1707665227_3212880686_p_0(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(62, ng4);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t4 = (31 - 5);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t3 + t6);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 5;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t10 = (0 - 5);
    t11 = (t10 * -1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t12 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t1, t7);
    t13 = (t12 - 0);
    t11 = (t13 * 1);
    xsi_vhdl_check_range_of_index(0, 63, 1, t12);
    t14 = (32U * t11);
    t15 = (0 + t14);
    t9 = (t2 + t15);
    t16 = (t0 + 2912);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t9, 32U);
    xsi_driver_first_trans_fast_port(t16);

LAB2:    t21 = (t0 + 2832);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1707665227_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1707665227_3212880686_p_0};
	static char *se[] = {(void *)work_a_1707665227_3212880686_sub_3189348355_3057020925};
	xsi_register_didat("work_a_1707665227_3212880686", "isim/tb_Procesador_isim_beh.exe.sim/work/a_1707665227_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
