    function targMap = targDataMap(),

    ;%***********************
    ;% Create Parameter Map *
    ;%***********************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 4;
        sectIdxOffset = 0;

        ;%
        ;% Define dummy sections & preallocate arrays
        ;%
        dumSection.nData = -1;
        dumSection.data  = [];

        dumData.logicalSrcIdx = -1;
        dumData.dtTransOffset = -1;

        ;%
        ;% Init/prealloc paramMap
        ;%
        paramMap.nSections           = nTotSects;
        paramMap.sectIdxOffset       = sectIdxOffset;
            paramMap.sections(nTotSects) = dumSection; %prealloc
        paramMap.nTotData            = -1;

        ;%
        ;% Auto data (lx5yh5b5ka)
        ;%
            section.nData     = 99;
            section.data(99)  = dumData; %prealloc

                    ;% lx5yh5b5ka.KDtheta
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% lx5yh5b5ka.KIpsi
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% lx5yh5b5ka.KItheta
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 2;

                    ;% lx5yh5b5ka.KPphi
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 3;

                    ;% lx5yh5b5ka.KPpsi
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 4;

                    ;% lx5yh5b5ka.KPtheta
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 5;

                    ;% lx5yh5b5ka.Kopenloop
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 6;

                    ;% lx5yh5b5ka.R
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 7;

                    ;% lx5yh5b5ka.W
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 8;

                    ;% lx5yh5b5ka.a_gc
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 9;

                    ;% lx5yh5b5ka.a_gd
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 10;

                    ;% lx5yh5b5ka.dot_phi_ref
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 11;

                    ;% lx5yh5b5ka.dot_theta_ref
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 12;

                    ;% lx5yh5b5ka.maxacc
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 13;

                    ;% lx5yh5b5ka.thetamy
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 14;

                    ;% lx5yh5b5ka.thres_yaw
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 15;

                    ;% lx5yh5b5ka.DiscreteTimeDerivative_ICPrevSc
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 16;

                    ;% lx5yh5b5ka.DiscreteTimeDerivati_kufcsagswk
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 17;

                    ;% lx5yh5b5ka.Preset_dot_phi_tableData
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 18;

                    ;% lx5yh5b5ka.Preset_dot_phi_bp01Data
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 39;

                    ;% lx5yh5b5ka.phiScale_Gain
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 60;

                    ;% lx5yh5b5ka.thetaScale_Gain
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 61;

                    ;% lx5yh5b5ka.Preset_dot_theta_tableData
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 62;

                    ;% lx5yh5b5ka.Preset_dot_theta_bp01Data
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 88;

                    ;% lx5yh5b5ka.dot_phi_ref_Value
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 114;

                    ;% lx5yh5b5ka.Gain_Gain
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 115;

                    ;% lx5yh5b5ka.dot_theta_ref_Value
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 116;

                    ;% lx5yh5b5ka.DiscreteTimeIntegrator1_gainval
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 117;

                    ;% lx5yh5b5ka.DiscreteTimeIntegrator1_IC
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 118;

                    ;% lx5yh5b5ka.DiscreteTimeIntegrator_gainval
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 119;

                    ;% lx5yh5b5ka.DiscreteTimeIntegrator_IC
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 120;

                    ;% lx5yh5b5ka.LowPassFilter_NumCoef
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 121;

                    ;% lx5yh5b5ka.LowPassFilter_DenCoef
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 122;

                    ;% lx5yh5b5ka.LowPassFilter_InitialStates
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 124;

                    ;% lx5yh5b5ka.TSamp_WtEt
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 125;

                    ;% lx5yh5b5ka.LowPassFilter_NumCoe_n3k3p32trn
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 126;

                    ;% lx5yh5b5ka.LowPassFilter_DenCoe_fscvyewi3q
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 127;

                    ;% lx5yh5b5ka.LowPassFilter_Initia_h5tbxo02i3
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 129;

                    ;% lx5yh5b5ka.TSamp_WtEt_kdvbunbjrq
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 130;

                    ;% lx5yh5b5ka.Switch_Threshold
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 131;

                    ;% lx5yh5b5ka.DiscreteTimeIntegrat_gvdzc4ei0l
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 132;

                    ;% lx5yh5b5ka.DiscreteTimeIntegrat_iro55nspeb
                    section.data(42).logicalSrcIdx = 41;
                    section.data(42).dtTransOffset = 133;

                    ;% lx5yh5b5ka.DiscreteTimeIntegrator2_gainval
                    section.data(43).logicalSrcIdx = 42;
                    section.data(43).dtTransOffset = 134;

                    ;% lx5yh5b5ka.DiscreteTimeIntegrator2_IC
                    section.data(44).logicalSrcIdx = 43;
                    section.data(44).dtTransOffset = 135;

                    ;% lx5yh5b5ka.resetvalue_Value
                    section.data(45).logicalSrcIdx = 44;
                    section.data(45).dtTransOffset = 136;

                    ;% lx5yh5b5ka.resetvalue1_Value
                    section.data(46).logicalSrcIdx = 45;
                    section.data(46).dtTransOffset = 137;

                    ;% lx5yh5b5ka.DiscreteTimeIntegrat_dnijyqz1tk
                    section.data(47).logicalSrcIdx = 46;
                    section.data(47).dtTransOffset = 138;

                    ;% lx5yh5b5ka.DiscreteTimeIntegrat_lqcffe0u10
                    section.data(48).logicalSrcIdx = 47;
                    section.data(48).dtTransOffset = 139;

                    ;% lx5yh5b5ka.Gain1_Gain
                    section.data(49).logicalSrcIdx = 48;
                    section.data(49).dtTransOffset = 140;

                    ;% lx5yh5b5ka.Gain1_Gain_nto21boazm
                    section.data(50).logicalSrcIdx = 49;
                    section.data(50).dtTransOffset = 141;

                    ;% lx5yh5b5ka.Gain2_Gain
                    section.data(51).logicalSrcIdx = 50;
                    section.data(51).dtTransOffset = 142;

                    ;% lx5yh5b5ka.Gain_Gain_kq4zoklcuz
                    section.data(52).logicalSrcIdx = 51;
                    section.data(52).dtTransOffset = 143;

                    ;% lx5yh5b5ka.UnitDelay_InitialCondition
                    section.data(53).logicalSrcIdx = 52;
                    section.data(53).dtTransOffset = 144;

                    ;% lx5yh5b5ka.FixPtUnitDelay1_InitialConditio
                    section.data(54).logicalSrcIdx = 53;
                    section.data(54).dtTransOffset = 145;

                    ;% lx5yh5b5ka.Gain1_Gain_ob44khflur
                    section.data(55).logicalSrcIdx = 54;
                    section.data(55).dtTransOffset = 146;

                    ;% lx5yh5b5ka.PWMVoltsforV_batt8000mV_Gain
                    section.data(56).logicalSrcIdx = 55;
                    section.data(56).dtTransOffset = 147;

                    ;% lx5yh5b5ka.Saturation_UpperSat
                    section.data(57).logicalSrcIdx = 56;
                    section.data(57).dtTransOffset = 148;

                    ;% lx5yh5b5ka.Saturation_LowerSat
                    section.data(58).logicalSrcIdx = 57;
                    section.data(58).dtTransOffset = 149;

                    ;% lx5yh5b5ka.LowPassFilterleft_NumCoef
                    section.data(59).logicalSrcIdx = 58;
                    section.data(59).dtTransOffset = 150;

                    ;% lx5yh5b5ka.LowPassFilterleft_DenCoef
                    section.data(60).logicalSrcIdx = 59;
                    section.data(60).dtTransOffset = 151;

                    ;% lx5yh5b5ka.LowPassFilterleft_InitialStates
                    section.data(61).logicalSrcIdx = 60;
                    section.data(61).dtTransOffset = 153;

                    ;% lx5yh5b5ka.PWMVoltsforV_batt800_ecnicibyea
                    section.data(62).logicalSrcIdx = 61;
                    section.data(62).dtTransOffset = 154;

                    ;% lx5yh5b5ka.Saturation_UpperSat_kbqdbd0uo5
                    section.data(63).logicalSrcIdx = 62;
                    section.data(63).dtTransOffset = 155;

                    ;% lx5yh5b5ka.Saturation_LowerSat_alf3xcaqc0
                    section.data(64).logicalSrcIdx = 63;
                    section.data(64).dtTransOffset = 156;

                    ;% lx5yh5b5ka.LowPassFilterright_NumCoef
                    section.data(65).logicalSrcIdx = 64;
                    section.data(65).dtTransOffset = 157;

                    ;% lx5yh5b5ka.LowPassFilterright_DenCoef
                    section.data(66).logicalSrcIdx = 65;
                    section.data(66).dtTransOffset = 158;

                    ;% lx5yh5b5ka.LowPassFilterright_InitialState
                    section.data(67).logicalSrcIdx = 66;
                    section.data(67).dtTransOffset = 160;

                    ;% lx5yh5b5ka.kickerScale_Gain
                    section.data(68).logicalSrcIdx = 67;
                    section.data(68).dtTransOffset = 161;

                    ;% lx5yh5b5ka.Gain1_Gain_kf5uau3cbk
                    section.data(69).logicalSrcIdx = 68;
                    section.data(69).dtTransOffset = 162;

                    ;% lx5yh5b5ka.Saturation_UpperSat_g52spn2m2e
                    section.data(70).logicalSrcIdx = 69;
                    section.data(70).dtTransOffset = 163;

                    ;% lx5yh5b5ka.Saturation_LowerSat_czg1gwzc1t
                    section.data(71).logicalSrcIdx = 70;
                    section.data(71).dtTransOffset = 164;

                    ;% lx5yh5b5ka.PWMVoltsforV_batt800_m0x4i4tgxy
                    section.data(72).logicalSrcIdx = 71;
                    section.data(72).dtTransOffset = 165;

                    ;% lx5yh5b5ka.Saturation_UpperSat_hck5vn3ggd
                    section.data(73).logicalSrcIdx = 72;
                    section.data(73).dtTransOffset = 166;

                    ;% lx5yh5b5ka.Saturation_LowerSat_h2yveghabq
                    section.data(74).logicalSrcIdx = 73;
                    section.data(74).dtTransOffset = 167;

                    ;% lx5yh5b5ka.LowPassFilterleft_Nu_nud2vicinm
                    section.data(75).logicalSrcIdx = 74;
                    section.data(75).dtTransOffset = 168;

                    ;% lx5yh5b5ka.LowPassFilterleft_De_hytjliotz0
                    section.data(76).logicalSrcIdx = 75;
                    section.data(76).dtTransOffset = 169;

                    ;% lx5yh5b5ka.LowPassFilterleft_In_avxhmhyz5o
                    section.data(77).logicalSrcIdx = 76;
                    section.data(77).dtTransOffset = 171;

                    ;% lx5yh5b5ka.PWMVoltsforV_batt800_agpsa1ihl0
                    section.data(78).logicalSrcIdx = 77;
                    section.data(78).dtTransOffset = 172;

                    ;% lx5yh5b5ka.Saturation_UpperSat_h21ahh0qn3
                    section.data(79).logicalSrcIdx = 78;
                    section.data(79).dtTransOffset = 173;

                    ;% lx5yh5b5ka.Saturation_LowerSat_boiycaf11u
                    section.data(80).logicalSrcIdx = 79;
                    section.data(80).dtTransOffset = 174;

                    ;% lx5yh5b5ka.LowPassFilterleft1_NumCoef
                    section.data(81).logicalSrcIdx = 80;
                    section.data(81).dtTransOffset = 175;

                    ;% lx5yh5b5ka.LowPassFilterleft1_DenCoef
                    section.data(82).logicalSrcIdx = 81;
                    section.data(82).dtTransOffset = 176;

                    ;% lx5yh5b5ka.LowPassFilterleft1_InitialState
                    section.data(83).logicalSrcIdx = 82;
                    section.data(83).dtTransOffset = 178;

                    ;% lx5yh5b5ka.L1VectorPosn_Value
                    section.data(84).logicalSrcIdx = 83;
                    section.data(84).dtTransOffset = 179;

                    ;% lx5yh5b5ka.sampletime_WtEt
                    section.data(85).logicalSrcIdx = 84;
                    section.data(85).dtTransOffset = 180;

                    ;% lx5yh5b5ka.DiscreteTimeIntegrat_booduq1eo1
                    section.data(86).logicalSrcIdx = 85;
                    section.data(86).dtTransOffset = 181;

                    ;% lx5yh5b5ka.DiscreteTimeIntegrat_pxa3p0npgi
                    section.data(87).logicalSrcIdx = 86;
                    section.data(87).dtTransOffset = 182;

                    ;% lx5yh5b5ka.DelayInput2_InitialCondition
                    section.data(88).logicalSrcIdx = 87;
                    section.data(88).dtTransOffset = 183;

                    ;% lx5yh5b5ka.LowPassFilter_NumCoe_indcriyspr
                    section.data(89).logicalSrcIdx = 88;
                    section.data(89).dtTransOffset = 184;

                    ;% lx5yh5b5ka.LowPassFilter_DenCoe_j0dp33fuiy
                    section.data(90).logicalSrcIdx = 89;
                    section.data(90).dtTransOffset = 185;

                    ;% lx5yh5b5ka.LowPassFilter_Initia_m5nsejmbk2
                    section.data(91).logicalSrcIdx = 90;
                    section.data(91).dtTransOffset = 187;

                    ;% lx5yh5b5ka.DiscreteTimeIntegrat_ixyylnthky
                    section.data(92).logicalSrcIdx = 91;
                    section.data(92).dtTransOffset = 188;

                    ;% lx5yh5b5ka.DiscreteTimeIntegrat_aobi04dgqy
                    section.data(93).logicalSrcIdx = 92;
                    section.data(93).dtTransOffset = 189;

                    ;% lx5yh5b5ka.LowPassFilter1_NumCoef
                    section.data(94).logicalSrcIdx = 93;
                    section.data(94).dtTransOffset = 190;

                    ;% lx5yh5b5ka.LowPassFilter1_DenCoef
                    section.data(95).logicalSrcIdx = 94;
                    section.data(95).dtTransOffset = 191;

                    ;% lx5yh5b5ka.LowPassFilter1_InitialStates
                    section.data(96).logicalSrcIdx = 95;
                    section.data(96).dtTransOffset = 193;

                    ;% lx5yh5b5ka.Constant1_Value
                    section.data(97).logicalSrcIdx = 96;
                    section.data(97).dtTransOffset = 194;

                    ;% lx5yh5b5ka.Constant2_Value
                    section.data(98).logicalSrcIdx = 97;
                    section.data(98).dtTransOffset = 195;

                    ;% lx5yh5b5ka.dot_psi_ref_Value
                    section.data(99).logicalSrcIdx = 98;
                    section.data(99).dtTransOffset = 196;

            nTotData = nTotData + section.nData;
            paramMap.sections(1) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% lx5yh5b5ka.UDPReceiveforEV3_Port
                    section.data(1).logicalSrcIdx = 99;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            paramMap.sections(2) = section;
            clear section

            section.nData     = 3;
            section.data(3)  = dumData; %prealloc

                    ;% lx5yh5b5ka.Preset_dot_theta_maxIndex
                    section.data(1).logicalSrcIdx = 100;
                    section.data(1).dtTransOffset = 0;

                    ;% lx5yh5b5ka.Preset_dot_theta_dimSizes
                    section.data(2).logicalSrcIdx = 101;
                    section.data(2).dtTransOffset = 1;

                    ;% lx5yh5b5ka.Preset_dot_theta_numYWorkElts
                    section.data(3).logicalSrcIdx = 102;
                    section.data(3).dtTransOffset = 2;

            nTotData = nTotData + section.nData;
            paramMap.sections(3) = section;
            clear section

            section.nData     = 6;
            section.data(6)  = dumData; %prealloc

                    ;% lx5yh5b5ka.FixPtUnitDelay2_InitialConditio
                    section.data(1).logicalSrcIdx = 103;
                    section.data(1).dtTransOffset = 0;

                    ;% lx5yh5b5ka.FixPtConstant_Value
                    section.data(2).logicalSrcIdx = 104;
                    section.data(2).dtTransOffset = 1;

                    ;% lx5yh5b5ka.dot_theta_ref_sel_CurrentSettin
                    section.data(3).logicalSrcIdx = 105;
                    section.data(3).dtTransOffset = 2;

                    ;% lx5yh5b5ka.ManualSwitch_CurrentSetting
                    section.data(4).logicalSrcIdx = 106;
                    section.data(4).dtTransOffset = 3;

                    ;% lx5yh5b5ka.dot_phi_ref_sel_CurrentSetting
                    section.data(5).logicalSrcIdx = 107;
                    section.data(5).dtTransOffset = 4;

                    ;% lx5yh5b5ka.ManualSwitch1_CurrentSetting
                    section.data(6).logicalSrcIdx = 108;
                    section.data(6).dtTransOffset = 5;

            nTotData = nTotData + section.nData;
            paramMap.sections(4) = section;
            clear section


            ;%
            ;% Non-auto Data (parameter)
            ;%


        ;%
        ;% Add final counts to struct.
        ;%
        paramMap.nTotData = nTotData;



    ;%**************************
    ;% Create Block Output Map *
    ;%**************************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 3;
        sectIdxOffset = 0;

        ;%
        ;% Define dummy sections & preallocate arrays
        ;%
        dumSection.nData = -1;
        dumSection.data  = [];

        dumData.logicalSrcIdx = -1;
        dumData.dtTransOffset = -1;

        ;%
        ;% Init/prealloc sigMap
        ;%
        sigMap.nSections           = nTotSects;
        sigMap.sectIdxOffset       = sectIdxOffset;
            sigMap.sections(nTotSects) = dumSection; %prealloc
        sigMap.nTotData            = -1;

        ;%
        ;% Auto data (hs4qyuwqzje)
        ;%
            section.nData     = 15;
            section.data(15)  = dumData; %prealloc

                    ;% hs4qyuwqzje.k3oe4xskav
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% hs4qyuwqzje.nkiesokajc
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 4;

                    ;% hs4qyuwqzje.cubgsukxc2
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 14;

                    ;% hs4qyuwqzje.lgm0tw0xdy
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 15;

                    ;% hs4qyuwqzje.j4fdl5m3xj
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 16;

                    ;% hs4qyuwqzje.ehfw1i3fvz
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 17;

                    ;% hs4qyuwqzje.e1rqpaw4cf
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 18;

                    ;% hs4qyuwqzje.d5frhciall
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 19;

                    ;% hs4qyuwqzje.bbgriactt3
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 20;

                    ;% hs4qyuwqzje.jh3tb5cw3h
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 21;

                    ;% hs4qyuwqzje.h4nin55ei1
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 22;

                    ;% hs4qyuwqzje.amgsdwqirr
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 23;

                    ;% hs4qyuwqzje.p2ah0xskpr
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 24;

                    ;% hs4qyuwqzje.nakdyt3ede
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 25;

                    ;% hs4qyuwqzje.j1c1pd4xhu
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 26;

            nTotData = nTotData + section.nData;
            sigMap.sections(1) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% hs4qyuwqzje.kt4ro3c5nh
                    section.data(1).logicalSrcIdx = 15;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(2) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% hs4qyuwqzje.mv0lghq4dl
                    section.data(1).logicalSrcIdx = 16;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(3) = section;
            clear section


            ;%
            ;% Non-auto Data (signal)
            ;%


        ;%
        ;% Add final counts to struct.
        ;%
        sigMap.nTotData = nTotData;



    ;%*******************
    ;% Create DWork Map *
    ;%*******************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 7;
        sectIdxOffset = 3;

        ;%
        ;% Define dummy sections & preallocate arrays
        ;%
        dumSection.nData = -1;
        dumSection.data  = [];

        dumData.logicalSrcIdx = -1;
        dumData.dtTransOffset = -1;

        ;%
        ;% Init/prealloc dworkMap
        ;%
        dworkMap.nSections           = nTotSects;
        dworkMap.sectIdxOffset       = sectIdxOffset;
            dworkMap.sections(nTotSects) = dumSection; %prealloc
        dworkMap.nTotData            = -1;

        ;%
        ;% Auto data (hd4peyvnm4c)
        ;%
            section.nData     = 36;
            section.data(36)  = dumData; %prealloc

                    ;% hd4peyvnm4c.ispbttupew
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% hd4peyvnm4c.pokosrjadj
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% hd4peyvnm4c.pvitrabwwj
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 2;

                    ;% hd4peyvnm4c.i1dgl0240b
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 3;

                    ;% hd4peyvnm4c.lryq53sxsp
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 4;

                    ;% hd4peyvnm4c.cd0lnbcx5t
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 5;

                    ;% hd4peyvnm4c.nvu3mtmqih
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 6;

                    ;% hd4peyvnm4c.blobijoog4
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 7;

                    ;% hd4peyvnm4c.bj3bgrvhlg
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 8;

                    ;% hd4peyvnm4c.ease2hvhw1
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 9;

                    ;% hd4peyvnm4c.of3bqjt5w3
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 10;

                    ;% hd4peyvnm4c.g25m5xnmhs
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 11;

                    ;% hd4peyvnm4c.j0onpa50qh
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 12;

                    ;% hd4peyvnm4c.lsdqlqa51l
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 13;

                    ;% hd4peyvnm4c.jjr0f4n50r
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 14;

                    ;% hd4peyvnm4c.dua23fjvce
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 15;

                    ;% hd4peyvnm4c.gj4ej4ekog
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 16;

                    ;% hd4peyvnm4c.dojasorybd
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 17;

                    ;% hd4peyvnm4c.igjqc2hvkv
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 18;

                    ;% hd4peyvnm4c.kx3cenhpf1
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 19;

                    ;% hd4peyvnm4c.fu5eimvil5
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 20;

                    ;% hd4peyvnm4c.fuipv3fckp
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 157;

                    ;% hd4peyvnm4c.jfb2l0o15t
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 158;

                    ;% hd4peyvnm4c.jwlfnmaos0
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 159;

                    ;% hd4peyvnm4c.hlgfunpmu1
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 160;

                    ;% hd4peyvnm4c.c4tg1w2woj
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 161;

                    ;% hd4peyvnm4c.bgigwxjhzb
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 162;

                    ;% hd4peyvnm4c.lwqoo3bqai
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 163;

                    ;% hd4peyvnm4c.hji3gyktnh
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 164;

                    ;% hd4peyvnm4c.fkwomxohxs
                    section.data(30).logicalSrcIdx = 33;
                    section.data(30).dtTransOffset = 165;

                    ;% hd4peyvnm4c.cfeuib5pt1
                    section.data(31).logicalSrcIdx = 34;
                    section.data(31).dtTransOffset = 166;

                    ;% hd4peyvnm4c.dmkhwxczqb
                    section.data(32).logicalSrcIdx = 35;
                    section.data(32).dtTransOffset = 167;

                    ;% hd4peyvnm4c.otadu0isru
                    section.data(33).logicalSrcIdx = 36;
                    section.data(33).dtTransOffset = 168;

                    ;% hd4peyvnm4c.bibii4klnq
                    section.data(34).logicalSrcIdx = 37;
                    section.data(34).dtTransOffset = 169;

                    ;% hd4peyvnm4c.adipisrxnc
                    section.data(35).logicalSrcIdx = 38;
                    section.data(35).dtTransOffset = 195;

                    ;% hd4peyvnm4c.kkkbwijiyk
                    section.data(36).logicalSrcIdx = 39;
                    section.data(36).dtTransOffset = 221;

            nTotData = nTotData + section.nData;
            dworkMap.sections(1) = section;
            clear section

            section.nData     = 10;
            section.data(10)  = dumData; %prealloc

                    ;% hd4peyvnm4c.fbzopqnyzv.LoggedData
                    section.data(1).logicalSrcIdx = 40;
                    section.data(1).dtTransOffset = 0;

                    ;% hd4peyvnm4c.n5r4ywlbi4.LoggedData
                    section.data(2).logicalSrcIdx = 41;
                    section.data(2).dtTransOffset = 2;

                    ;% hd4peyvnm4c.kpiyh2qskj.LoggedData
                    section.data(3).logicalSrcIdx = 42;
                    section.data(3).dtTransOffset = 4;

                    ;% hd4peyvnm4c.hj0sfwlrpe.LoggedData
                    section.data(4).logicalSrcIdx = 43;
                    section.data(4).dtTransOffset = 5;

                    ;% hd4peyvnm4c.p120d5miuq.LoggedData
                    section.data(5).logicalSrcIdx = 44;
                    section.data(5).dtTransOffset = 7;

                    ;% hd4peyvnm4c.cpeva3lzcd.LoggedData
                    section.data(6).logicalSrcIdx = 45;
                    section.data(6).dtTransOffset = 8;

                    ;% hd4peyvnm4c.d4p4zb1gdz.LoggedData
                    section.data(7).logicalSrcIdx = 46;
                    section.data(7).dtTransOffset = 12;

                    ;% hd4peyvnm4c.oirimqquhh
                    section.data(8).logicalSrcIdx = 47;
                    section.data(8).dtTransOffset = 13;

                    ;% hd4peyvnm4c.kqpymmxgju
                    section.data(9).logicalSrcIdx = 48;
                    section.data(9).dtTransOffset = 14;

                    ;% hd4peyvnm4c.cmtodbvylg
                    section.data(10).logicalSrcIdx = 49;
                    section.data(10).dtTransOffset = 20;

            nTotData = nTotData + section.nData;
            dworkMap.sections(2) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% hd4peyvnm4c.bco3phffae
                    section.data(1).logicalSrcIdx = 50;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(3) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% hd4peyvnm4c.aq1ks1yhsd
                    section.data(1).logicalSrcIdx = 51;
                    section.data(1).dtTransOffset = 0;

                    ;% hd4peyvnm4c.bjdct3e5yp
                    section.data(2).logicalSrcIdx = 52;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(4) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% hd4peyvnm4c.kb241nqbzk
                    section.data(1).logicalSrcIdx = 53;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(5) = section;
            clear section

            section.nData     = 3;
            section.data(3)  = dumData; %prealloc

                    ;% hd4peyvnm4c.pgxf1xq4lw
                    section.data(1).logicalSrcIdx = 54;
                    section.data(1).dtTransOffset = 0;

                    ;% hd4peyvnm4c.o4tpudc3jx
                    section.data(2).logicalSrcIdx = 55;
                    section.data(2).dtTransOffset = 1;

                    ;% hd4peyvnm4c.h5rk2qhqsm
                    section.data(3).logicalSrcIdx = 56;
                    section.data(3).dtTransOffset = 2;

            nTotData = nTotData + section.nData;
            dworkMap.sections(6) = section;
            clear section

            section.nData     = 3;
            section.data(3)  = dumData; %prealloc

                    ;% hd4peyvnm4c.gr43nggbki
                    section.data(1).logicalSrcIdx = 57;
                    section.data(1).dtTransOffset = 0;

                    ;% hd4peyvnm4c.dmuno5z3yc
                    section.data(2).logicalSrcIdx = 58;
                    section.data(2).dtTransOffset = 1;

                    ;% hd4peyvnm4c.dwzdhu04kf
                    section.data(3).logicalSrcIdx = 59;
                    section.data(3).dtTransOffset = 2;

            nTotData = nTotData + section.nData;
            dworkMap.sections(7) = section;
            clear section


            ;%
            ;% Non-auto Data (dwork)
            ;%


        ;%
        ;% Add final counts to struct.
        ;%
        dworkMap.nTotData = nTotData;



    ;%
    ;% Add individual maps to base struct.
    ;%

    targMap.paramMap  = paramMap;
    targMap.signalMap = sigMap;
    targMap.dworkMap  = dworkMap;

    ;%
    ;% Add checksums to base struct.
    ;%


    targMap.checksum0 = 3758574831;
    targMap.checksum1 = 1809579588;
    targMap.checksum2 = 3905809782;
    targMap.checksum3 = 2096183830;

