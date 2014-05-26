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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ga38qol/Downloads/sc_uart_interface/Control.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_3222946569_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    int t15;
    int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    static char *nl0[] = {&&LAB6, &&LAB7, &&LAB8, &&LAB9};

LAB0:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5576);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(63, ng0);
    t3 = (t0 + 2312U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (char *)((nl0) + t5);
    goto **((char **)t3);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(65, ng0);
    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 1)
        goto LAB13;

LAB14:    t6 = (unsigned char)0;

LAB15:    if (t6 != 0)
        goto LAB10;

LAB12:    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 <= (unsigned char)2);
    if (t5 != 0)
        goto LAB19;

LAB20:
LAB11:    goto LAB5;

LAB7:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB21;

LAB23:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 5784);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB22:    goto LAB5;

LAB8:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB24;

LAB26:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)2);
    if (t5 != 0)
        goto LAB27;

LAB28:
LAB25:    goto LAB5;

LAB9:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB29;

LAB31:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB32;

LAB33:
LAB30:    goto LAB5;

LAB10:    xsi_set_current_line(66, ng0);
    t7 = (t0 + 2632U);
    t14 = *((char **)t7);
    t15 = *((int *)t14);
    t16 = (t15 + 1);
    t7 = (t0 + 5720);
    t17 = (t7 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((int *)t20) = t16;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t15 = *((int *)t3);
    t2 = (t15 == 450);
    if (t2 != 0)
        goto LAB16;

LAB18:
LAB17:    goto LAB11;

LAB13:    t7 = (t0 + 2952U);
    t11 = *((char **)t7);
    t12 = *((unsigned char *)t11);
    t13 = (t12 == (unsigned char)3);
    t6 = t13;
    goto LAB15;

LAB16:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 5720);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 5784);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 5848);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

LAB19:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 5848);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB21:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 5784);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB22;

LAB24:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 5784);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB25;

LAB27:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 5784);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB25;

LAB29:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 5784);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB30;

LAB32:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 5784);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB30;

}

static void work_a_3222946569_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(103, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 5912);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t9 = (t0 + 5592);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3222946569_3212880686_p_2(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    static char *nl0[] = {&&LAB9, &&LAB10, &&LAB11, &&LAB12};

LAB0:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 5608);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(108, ng0);
    t4 = (t0 + 2312U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t4 = (char *)((nl0) + t9);
    goto **((char **)t4);

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    goto LAB3;

LAB9:    xsi_set_current_line(111, ng0);
    t10 = (t0 + 5976);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 6040);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB8;

LAB10:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 5976);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 6040);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB8;

LAB11:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 5976);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 6040);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(134, ng0);
    t2 = (t0 + 6104);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB8;

LAB12:    xsi_set_current_line(137, ng0);
    t2 = (t0 + 5976);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(138, ng0);
    t2 = (t0 + 6040);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(140, ng0);
    t2 = (t0 + 6104);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB8;

}

static void work_a_3222946569_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(146, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6168);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5624);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3222946569_3212880686_p_4(char *t0)
{
    char *t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    int t12;
    int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(152, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5640);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(153, ng0);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)2);
    if (t7 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 2792U);
    t4 = *((char **)t1);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB16;

LAB17:    t2 = (unsigned char)0;

LAB18:    if (t2 != 0)
        goto LAB14;

LAB15:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(154, ng0);
    t4 = (t0 + 2472U);
    t11 = *((char **)t4);
    t12 = *((int *)t11);
    t13 = (t12 + 1);
    t4 = (t0 + 6232);
    t14 = (t4 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((int *)t17) = t13;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(155, ng0);
    t1 = (t0 + 2472U);
    t4 = *((char **)t1);
    t12 = *((int *)t4);
    t2 = (t12 == 450);
    if (t2 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB6;

LAB8:    t4 = (t0 + 2952U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)2);
    t3 = t10;
    goto LAB10;

LAB11:    xsi_set_current_line(156, ng0);
    t1 = (t0 + 6232);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t14 = *((char **)t11);
    *((int *)t14) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(157, ng0);
    t1 = (t0 + 6296);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB14:    xsi_set_current_line(161, ng0);
    t1 = (t0 + 6296);
    t8 = (t1 + 56U);
    t11 = *((char **)t8);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB16:    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t7 = *((unsigned char *)t5);
    t9 = (t7 == (unsigned char)3);
    t2 = t9;
    goto LAB18;

}


extern void work_a_3222946569_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3222946569_3212880686_p_0,(void *)work_a_3222946569_3212880686_p_1,(void *)work_a_3222946569_3212880686_p_2,(void *)work_a_3222946569_3212880686_p_3,(void *)work_a_3222946569_3212880686_p_4};
	xsi_register_didat("work_a_3222946569_3212880686", "isim/uart_ip_tb_isim_beh.exe.sim/work/a_3222946569_3212880686.didat");
	xsi_register_executes(pe);
}
