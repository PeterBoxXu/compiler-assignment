open Assert
open Simulator
open X86
open Asm
let test_1 = [
  data "AAAAAAAA" [
    Quad (Lit 5073561594642308294L);
    Asciz ("GSDGXUXADLB");
    Quad (Lit 3712070778610916072L);
    Asciz ("FNRYMSPFXJTK");
    Asciz ("SIDERCXGXUCBY");
  ];
  data "AAAAAAAB" [
    Quad (Lit 3853355202454985997L);
    Quad (Lit 5254285522094074697L);
    Quad (Lit 5724094688339050823L);
    Quad (Lit 8908841922573207086L);
  ];
  data "AAAAAAAC" [
    Asciz ("QUPTKQNXPYFYFYF");
  ];
  data "AAAAAAAD" [
    Quad (Lit 4784548803276846864L);
    Quad (Lit 3574387895893163729L);
    Asciz ("DBFSEKBGTHJKNECLAJ");
    Asciz ("FXFALAQDRAVQEJQP");
    Asciz ("HLDHGLCLUWYRN");
  ];
  data "AAAAAAAE" [
    Asciz ("OKTQPJODWPYTBJXVHZQ");
    Asciz ("BKDYJVYXTXQZAJUF");
    Quad (Lit 7562869794605399289L);
  ];
  data "AAAAAAAF" [
    Asciz ("TAMBLWCLLMORMXKA");
    Asciz ("LGCRLRBNYFZVKL");
    Asciz ("FMJUQNJSHK");
  ];
  data "AAAAAAAG" [
    Quad (Lit 2275927855290346979L);
  ];
  data "AAAAAAAH" [
    Quad (Lit 4065024268539722111L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAAA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAAB"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAAC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAAD"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAAE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAAF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAAG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAAH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAAI"); ~%Rax];
];
  data "AAAAAAAI" [
    Quad (Lit 2357175412109843895L);
    Asciz ("LESNQTDMIVDZ");
    Asciz ("JXEEEILXLEERKHPJ");
    Quad (Lit 1819029641603169704L);
  ];
]
let test_1_data = [Byte '\xc6';Byte '\x1c';Byte '\xb8';Byte '\xb2';Byte '\x63';Byte '\xe9';Byte '\x68';Byte '\x46';Byte '\x47';Byte '\x53';Byte '\x44';Byte '\x47';Byte '\x58';Byte '\x55';Byte '\x58';Byte '\x41';Byte '\x44';Byte '\x4c';Byte '\x42';Byte '\x00';Byte '\xe8';Byte '\x1a';Byte '\x36';Byte '\xac';Byte '\xb4';Byte '\xec';Byte '\x83';Byte '\x33';Byte '\x46';Byte '\x4e';Byte '\x52';Byte '\x59';Byte '\x4d';Byte '\x53';Byte '\x50';Byte '\x46';Byte '\x58';Byte '\x4a';Byte '\x54';Byte '\x4b';Byte '\x00';Byte '\x53';Byte '\x49';Byte '\x44';Byte '\x45';Byte '\x52';Byte '\x43';Byte '\x58';Byte '\x47';Byte '\x58';Byte '\x55';Byte '\x43';Byte '\x42';Byte '\x59';Byte '\x00';Byte '\x0d';Byte '\x9d';Byte '\xbb';Byte '\x03';Byte '\x24';Byte '\xde';Byte '\x79';Byte '\x35';Byte '\x49';Byte '\x2b';Byte '\xe5';Byte '\x0c';Byte '\xd8';Byte '\xf8';Byte '\xea';Byte '\x48';Byte '\x47';Byte '\x41';Byte '\x26';Byte '\x9f';Byte '\xca';Byte '\x11';Byte '\x70';Byte '\x4f';Byte '\x2e';Byte '\x86';Byte '\x15';Byte '\x0b';Byte '\x87';Byte '\x90';Byte '\xa2';Byte '\x7b';Byte '\x51';Byte '\x55';Byte '\x50';Byte '\x54';Byte '\x4b';Byte '\x51';Byte '\x4e';Byte '\x58';Byte '\x50';Byte '\x59';Byte '\x46';Byte '\x59';Byte '\x46';Byte '\x59';Byte '\x46';Byte '\x00';Byte '\x10';Byte '\x37';Byte '\xd6';Byte '\x75';Byte '\xc9';Byte '\x21';Byte '\x66';Byte '\x42';Byte '\xd1';Byte '\xfe';Byte '\x2a';Byte '\x78';Byte '\xda';Byte '\xc6';Byte '\x9a';Byte '\x31';Byte '\x44';Byte '\x42';Byte '\x46';Byte '\x53';Byte '\x45';Byte '\x4b';Byte '\x42';Byte '\x47';Byte '\x54';Byte '\x48';Byte '\x4a';Byte '\x4b';Byte '\x4e';Byte '\x45';Byte '\x43';Byte '\x4c';Byte '\x41';Byte '\x4a';Byte '\x00';Byte '\x46';Byte '\x58';Byte '\x46';Byte '\x41';Byte '\x4c';Byte '\x41';Byte '\x51';Byte '\x44';Byte '\x52';Byte '\x41';Byte '\x56';Byte '\x51';Byte '\x45';Byte '\x4a';Byte '\x51';Byte '\x50';Byte '\x00';Byte '\x48';Byte '\x4c';Byte '\x44';Byte '\x48';Byte '\x47';Byte '\x4c';Byte '\x43';Byte '\x4c';Byte '\x55';Byte '\x57';Byte '\x59';Byte '\x52';Byte '\x4e';Byte '\x00';Byte '\x4f';Byte '\x4b';Byte '\x54';Byte '\x51';Byte '\x50';Byte '\x4a';Byte '\x4f';Byte '\x44';Byte '\x57';Byte '\x50';Byte '\x59';Byte '\x54';Byte '\x42';Byte '\x4a';Byte '\x58';Byte '\x56';Byte '\x48';Byte '\x5a';Byte '\x51';Byte '\x00';Byte '\x42';Byte '\x4b';Byte '\x44';Byte '\x59';Byte '\x4a';Byte '\x56';Byte '\x59';Byte '\x58';Byte '\x54';Byte '\x58';Byte '\x51';Byte '\x5a';Byte '\x41';Byte '\x4a';Byte '\x55';Byte '\x46';Byte '\x00';Byte '\xf9';Byte '\x7c';Byte '\xfc';Byte '\x25';Byte '\x02';Byte '\xb6';Byte '\xf4';Byte '\x68';Byte '\x54';Byte '\x41';Byte '\x4d';Byte '\x42';Byte '\x4c';Byte '\x57';Byte '\x43';Byte '\x4c';Byte '\x4c';Byte '\x4d';Byte '\x4f';Byte '\x52';Byte '\x4d';Byte '\x58';Byte '\x4b';Byte '\x41';Byte '\x00';Byte '\x4c';Byte '\x47';Byte '\x43';Byte '\x52';Byte '\x4c';Byte '\x52';Byte '\x42';Byte '\x4e';Byte '\x59';Byte '\x46';Byte '\x5a';Byte '\x56';Byte '\x4b';Byte '\x4c';Byte '\x00';Byte '\x46';Byte '\x4d';Byte '\x4a';Byte '\x55';Byte '\x51';Byte '\x4e';Byte '\x4a';Byte '\x53';Byte '\x48';Byte '\x4b';Byte '\x00';Byte '\xe3';Byte '\x6d';Byte '\xff';Byte '\x74';Byte '\x53';Byte '\xb8';Byte '\x95';Byte '\x1f';Byte '\x7f';Byte '\xf9';Byte '\xa6';Byte '\xe9';Byte '\x08';Byte '\xde';Byte '\x69';Byte '\x38';Byte '\xb7';Byte '\x9d';Byte '\x17';Byte '\x68';Byte '\x8c';Byte '\x5e';Byte '\xb6';Byte '\x20';Byte '\x4c';Byte '\x45';Byte '\x53';Byte '\x4e';Byte '\x51';Byte '\x54';Byte '\x44';Byte '\x4d';Byte '\x49';Byte '\x56';Byte '\x44';Byte '\x5a';Byte '\x00';Byte '\x4a';Byte '\x58';Byte '\x45';Byte '\x45';Byte '\x45';Byte '\x49';Byte '\x4c';Byte '\x58';Byte '\x4c';Byte '\x45';Byte '\x45';Byte '\x52';Byte '\x4b';Byte '\x48';Byte '\x50';Byte '\x4a';Byte '\x00';Byte '\xa8';Byte '\xbd';Byte '\xa9';Byte '\x47';Byte '\xd2';Byte '\x7d';Byte '\x3e';Byte '\x19';]
let test_1_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400048L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40007fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40009fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000afL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f1L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40011eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400149L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400151L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400159L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_2 = [
  data "AAAAAAAJ" [
    Asciz ("HIJLLYCAPCIPSLY");
    Quad (Lit 2408708068733986784L);
    Quad (Lit 9026371393448471679L);
    Quad (Lit 3207554217345950242L);
  ];
  data "AAAAAAAK" [
    Asciz ("POCVPSGRPQZAXTHT");
  ];
  data "AAAAAAAL" [
    Quad (Lit 5636202672023766732L);
    Asciz ("PSJGYWVXOP");
    Quad (Lit 8179643265702134562L);
    Asciz ("CVADKGDFXKBEWPTVJ");
    Quad (Lit 1573345820194903142L);
    Quad (Lit 8408061938736408211L);
  ];
  data "AAAAAAAM" [
    Asciz ("NVFTLDNBQSQSE");
    Quad (Lit 9024918587403136980L);
    Asciz ("TDHIOENEIS");
  ];
  data "AAAAAAAN" [
    Asciz ("CVDPMNJABKBI");
    Asciz ("HFWMDMORWQNEZOMO");
    Quad (Lit 8282599280698444088L);
    Quad (Lit 4795435585766178955L);
  ];
  data "AAAAAAAO" [
    Asciz ("APCNRUGVPSA");
  ];
  data "AAAAAAAP" [
    Quad (Lit 251416199122640963L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAAJ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAAK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAAL"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAAM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAAN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAAO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAAP"); ~%Rax];
];
]
let test_2_data = [Byte '\x48';Byte '\x49';Byte '\x4a';Byte '\x4c';Byte '\x4c';Byte '\x59';Byte '\x43';Byte '\x41';Byte '\x50';Byte '\x43';Byte '\x49';Byte '\x50';Byte '\x53';Byte '\x4c';Byte '\x59';Byte '\x00';Byte '\xe0';Byte '\xa7';Byte '\x81';Byte '\x04';Byte '\x3a';Byte '\x73';Byte '\x6d';Byte '\x21';Byte '\x7f';Byte '\x6c';Byte '\x3e';Byte '\x65';Byte '\xf5';Byte '\x1c';Byte '\x44';Byte '\x7d';Byte '\x22';Byte '\x22';Byte '\xb6';Byte '\xfa';Byte '\x90';Byte '\x85';Byte '\x83';Byte '\x2c';Byte '\x50';Byte '\x4f';Byte '\x43';Byte '\x56';Byte '\x50';Byte '\x53';Byte '\x47';Byte '\x52';Byte '\x50';Byte '\x51';Byte '\x5a';Byte '\x41';Byte '\x58';Byte '\x54';Byte '\x48';Byte '\x54';Byte '\x00';Byte '\xcc';Byte '\x86';Byte '\x15';Byte '\xe4';Byte '\x77';Byte '\xd0';Byte '\x37';Byte '\x4e';Byte '\x50';Byte '\x53';Byte '\x4a';Byte '\x47';Byte '\x59';Byte '\x57';Byte '\x56';Byte '\x58';Byte '\x4f';Byte '\x50';Byte '\x00';Byte '\x22';Byte '\x83';Byte '\x97';Byte '\x69';Byte '\x36';Byte '\xee';Byte '\x83';Byte '\x71';Byte '\x43';Byte '\x56';Byte '\x41';Byte '\x44';Byte '\x4b';Byte '\x47';Byte '\x44';Byte '\x46';Byte '\x58';Byte '\x4b';Byte '\x42';Byte '\x45';Byte '\x57';Byte '\x50';Byte '\x54';Byte '\x56';Byte '\x4a';Byte '\x00';Byte '\x66';Byte '\x14';Byte '\x90';Byte '\x01';Byte '\xb0';Byte '\xa5';Byte '\xd5';Byte '\x15';Byte '\x93';Byte '\xa6';Byte '\xdd';Byte '\x13';Byte '\xc9';Byte '\x6f';Byte '\xaf';Byte '\x74';Byte '\x4e';Byte '\x56';Byte '\x46';Byte '\x54';Byte '\x4c';Byte '\x44';Byte '\x4e';Byte '\x42';Byte '\x51';Byte '\x53';Byte '\x51';Byte '\x53';Byte '\x45';Byte '\x00';Byte '\xd4';Byte '\xef';Byte '\xfb';Byte '\xa0';Byte '\xa3';Byte '\xf3';Byte '\x3e';Byte '\x7d';Byte '\x54';Byte '\x44';Byte '\x48';Byte '\x49';Byte '\x4f';Byte '\x45';Byte '\x4e';Byte '\x45';Byte '\x49';Byte '\x53';Byte '\x00';Byte '\x43';Byte '\x56';Byte '\x44';Byte '\x50';Byte '\x4d';Byte '\x4e';Byte '\x4a';Byte '\x41';Byte '\x42';Byte '\x4b';Byte '\x42';Byte '\x49';Byte '\x00';Byte '\x48';Byte '\x46';Byte '\x57';Byte '\x4d';Byte '\x44';Byte '\x4d';Byte '\x4f';Byte '\x52';Byte '\x57';Byte '\x51';Byte '\x4e';Byte '\x45';Byte '\x5a';Byte '\x4f';Byte '\x4d';Byte '\x4f';Byte '\x00';Byte '\x38';Byte '\xc9';Byte '\xef';Byte '\xa6';Byte '\x29';Byte '\xb4';Byte '\xf1';Byte '\x72';Byte '\x8b';Byte '\x40';Byte '\xdc';Byte '\x08';Byte '\x42';Byte '\xcf';Byte '\x8c';Byte '\x42';Byte '\x41';Byte '\x50';Byte '\x43';Byte '\x4e';Byte '\x52';Byte '\x55';Byte '\x47';Byte '\x56';Byte '\x50';Byte '\x53';Byte '\x41';Byte '\x00';Byte '\x43';Byte '\xe0';Byte '\x7b';Byte '\x77';Byte '\xb3';Byte '\x35';Byte '\x7d';Byte '\x03';]
let test_2_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400038L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400060L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400071L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000aeL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000cfL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000fdL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400109L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_3 = [
  data "AAAAAAAQ" [
    Asciz ("KPHJFIIHWBG");
    Quad (Lit 3338188679494060644L);
    Quad (Lit 8636169414183459585L);
    Asciz ("IPDTTHOQAJG");
    Asciz ("PZLGXPBZAIWTN");
    Asciz ("WTWFIDQASNVTFX");
  ];
  data "AAAAAAAR" [
    Quad (Lit 8557174706039767286L);
    Quad (Lit 8623235343352369778L);
    Asciz ("AFUHAKBGCCBGKFRWF");
  ];
  data "AAAAAAAS" [
    Quad (Lit 2534568599631840860L);
    Asciz ("NDTBRYJIXNQMG");
    Asciz ("BZCWMCLNMPLJPODQ");
    Quad (Lit 7976697848679863942L);
    Quad (Lit 3853725145380689545L);
    Quad (Lit 299538267193496551L);
  ];
  data "AAAAAAAT" [
    Quad (Lit 1020287436277681758L);
    Asciz ("OVSBXZJLHUDBZXQDCKOM");
    Quad (Lit 5826567562536752463L);
    Asciz ("VXAOVGAGEJQRZ");
    Quad (Lit 2706165239589097075L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAAQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAAR"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAAS"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAAT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAAU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAAV"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAAW"); ~%Rax];
];
  data "AAAAAAAU" [
    Quad (Lit 978790600962951070L);
    Quad (Lit 7870550874131198619L);
    Quad (Lit 8530217118471957123L);
    Asciz ("XDAEAHZZTZAX");
    Quad (Lit 1995542421166708112L);
  ];
  data "AAAAAAAV" [
    Asciz ("CYITMEVAHJFDC");
    Asciz ("VQQXDCICZYT");
  ];
  data "AAAAAAAW" [
    Asciz ("TELODZQKLKUHUZDMSOJV");
    Asciz ("TLSSDWVOJEMZRCKUE");
  ];
]
let test_3_data = [Byte '\x4b';Byte '\x50';Byte '\x48';Byte '\x4a';Byte '\x46';Byte '\x49';Byte '\x49';Byte '\x48';Byte '\x57';Byte '\x42';Byte '\x47';Byte '\x00';Byte '\x64';Byte '\x4a';Byte '\x79';Byte '\xe2';Byte '\xea';Byte '\xa0';Byte '\x53';Byte '\x2e';Byte '\x01';Byte '\x9b';Byte '\x7f';Byte '\x68';Byte '\x53';Byte '\xd6';Byte '\xd9';Byte '\x77';Byte '\x49';Byte '\x50';Byte '\x44';Byte '\x54';Byte '\x54';Byte '\x48';Byte '\x4f';Byte '\x51';Byte '\x41';Byte '\x4a';Byte '\x47';Byte '\x00';Byte '\x50';Byte '\x5a';Byte '\x4c';Byte '\x47';Byte '\x58';Byte '\x50';Byte '\x42';Byte '\x5a';Byte '\x41';Byte '\x49';Byte '\x57';Byte '\x54';Byte '\x4e';Byte '\x00';Byte '\x57';Byte '\x54';Byte '\x57';Byte '\x46';Byte '\x49';Byte '\x44';Byte '\x51';Byte '\x41';Byte '\x53';Byte '\x4e';Byte '\x56';Byte '\x54';Byte '\x46';Byte '\x58';Byte '\x00';Byte '\xf6';Byte '\x40';Byte '\x75';Byte '\xaa';Byte '\x0e';Byte '\x31';Byte '\xc1';Byte '\x76';Byte '\x72';Byte '\x92';Byte '\x1c';Byte '\x5f';Byte '\xdb';Byte '\xe2';Byte '\xab';Byte '\x77';Byte '\x41';Byte '\x46';Byte '\x55';Byte '\x48';Byte '\x41';Byte '\x4b';Byte '\x42';Byte '\x47';Byte '\x43';Byte '\x43';Byte '\x42';Byte '\x47';Byte '\x4b';Byte '\x46';Byte '\x52';Byte '\x57';Byte '\x46';Byte '\x00';Byte '\x5c';Byte '\x46';Byte '\xea';Byte '\x6f';Byte '\xb6';Byte '\x98';Byte '\x2c';Byte '\x23';Byte '\x4e';Byte '\x44';Byte '\x54';Byte '\x42';Byte '\x52';Byte '\x59';Byte '\x4a';Byte '\x49';Byte '\x58';Byte '\x4e';Byte '\x51';Byte '\x4d';Byte '\x47';Byte '\x00';Byte '\x42';Byte '\x5a';Byte '\x43';Byte '\x57';Byte '\x4d';Byte '\x43';Byte '\x4c';Byte '\x4e';Byte '\x4d';Byte '\x50';Byte '\x4c';Byte '\x4a';Byte '\x50';Byte '\x4f';Byte '\x44';Byte '\x51';Byte '\x00';Byte '\x86';Byte '\x96';Byte '\x2f';Byte '\x57';Byte '\x6e';Byte '\xec';Byte '\xb2';Byte '\x6e';Byte '\x89';Byte '\x16';Byte '\x68';Byte '\x10';Byte '\x9a';Byte '\x2e';Byte '\x7b';Byte '\x35';Byte '\xe7';Byte '\x53';Byte '\xb4';Byte '\x8c';Byte '\x77';Byte '\x2c';Byte '\x28';Byte '\x04';Byte '\x5e';Byte '\x0e';Byte '\x20';Byte '\x80';Byte '\x04';Byte '\xca';Byte '\x28';Byte '\x0e';Byte '\x4f';Byte '\x56';Byte '\x53';Byte '\x42';Byte '\x58';Byte '\x5a';Byte '\x4a';Byte '\x4c';Byte '\x48';Byte '\x55';Byte '\x44';Byte '\x42';Byte '\x5a';Byte '\x58';Byte '\x51';Byte '\x44';Byte '\x43';Byte '\x4b';Byte '\x4f';Byte '\x4d';Byte '\x00';Byte '\x4f';Byte '\x15';Byte '\xd1';Byte '\xe0';Byte '\x53';Byte '\x20';Byte '\xdc';Byte '\x50';Byte '\x56';Byte '\x58';Byte '\x41';Byte '\x4f';Byte '\x56';Byte '\x47';Byte '\x41';Byte '\x47';Byte '\x45';Byte '\x4a';Byte '\x51';Byte '\x52';Byte '\x5a';Byte '\x00';Byte '\x73';Byte '\xce';Byte '\x37';Byte '\x91';Byte '\xf2';Byte '\x3a';Byte '\x8e';Byte '\x25';Byte '\x9e';Byte '\x47';Byte '\xe3';Byte '\x9f';Byte '\xdd';Byte '\x5c';Byte '\x95';Byte '\x0d';Byte '\x9b';Byte '\xf2';Byte '\x3a';Byte '\xef';Byte '\x51';Byte '\xd0';Byte '\x39';Byte '\x6d';Byte '\x83';Byte '\x2a';Byte '\x7a';Byte '\x33';Byte '\x46';Byte '\x6b';Byte '\x61';Byte '\x76';Byte '\x58';Byte '\x44';Byte '\x41';Byte '\x45';Byte '\x41';Byte '\x48';Byte '\x5a';Byte '\x5a';Byte '\x54';Byte '\x5a';Byte '\x41';Byte '\x58';Byte '\x00';Byte '\x90';Byte '\x55';Byte '\xdd';Byte '\x5b';Byte '\x42';Byte '\x97';Byte '\xb1';Byte '\x1b';Byte '\x43';Byte '\x59';Byte '\x49';Byte '\x54';Byte '\x4d';Byte '\x45';Byte '\x56';Byte '\x41';Byte '\x48';Byte '\x4a';Byte '\x46';Byte '\x44';Byte '\x43';Byte '\x00';Byte '\x56';Byte '\x51';Byte '\x51';Byte '\x58';Byte '\x44';Byte '\x43';Byte '\x49';Byte '\x43';Byte '\x5a';Byte '\x59';Byte '\x54';Byte '\x00';Byte '\x54';Byte '\x45';Byte '\x4c';Byte '\x4f';Byte '\x44';Byte '\x5a';Byte '\x51';Byte '\x4b';Byte '\x4c';Byte '\x4b';Byte '\x55';Byte '\x48';Byte '\x55';Byte '\x5a';Byte '\x44';Byte '\x4d';Byte '\x53';Byte '\x4f';Byte '\x4a';Byte '\x56';Byte '\x00';Byte '\x54';Byte '\x4c';Byte '\x53';Byte '\x53';Byte '\x44';Byte '\x57';Byte '\x56';Byte '\x4f';Byte '\x4a';Byte '\x45';Byte '\x4d';Byte '\x5a';Byte '\x52';Byte '\x43';Byte '\x4b';Byte '\x55';Byte '\x45';Byte '\x00';]
let test_3_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400038L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40007dL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40009fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000deL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400119L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400146L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400160L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_4 = [
  data "AAAAAAAX" [
    Asciz ("VNMCDLBCIEF");
    Asciz ("RKWZUSROXR");
    Quad (Lit 1812720989687783970L);
  ];
  data "AAAAAAAY" [
    Asciz ("EAHOVZUBQTLTENM");
  ];
  data "AAAAAAAZ" [
    Quad (Lit 2883420021598228105L);
    Quad (Lit 9095394452701290729L);
    Asciz ("YECSKSOBXUPEGN");
    Asciz ("YAVVJVKLXIOZL");
    Quad (Lit 3636757993429282838L);
  ];
  data "AAAAAABA" [
    Quad (Lit 7768978097818610877L);
    Quad (Lit 6247682742280511809L);
    Asciz ("DFUHYQBZZEPNMGP");
    Asciz ("LOXVVEELHKYEHREKYB");
    Quad (Lit 2124680121053569362L);
    Asciz ("CEGZRNRZXBMRUSWXJ");
  ];
  data "AAAAAABB" [
    Asciz ("OAZVJRSCVPKOIWDW");
    Asciz ("NYSPLRRFSQIIG");
    Asciz ("ZZWCXBNOKNZYALKEGFG");
    Asciz ("PWHNEESJTACKCQ");
    Quad (Lit 6337717192840266291L);
    Quad (Lit 6726951509788008158L);
  ];
  data "AAAAAABC" [
    Quad (Lit 2220918491593648014L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAAX"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAAY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAAZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAABA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAABB"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAABC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAABD"); ~%Rax];
];
  data "AAAAAABD" [
    Quad (Lit 7442204377783983898L);
    Asciz ("WDGSCSFIHBQKMAXZUK");
    Quad (Lit 2954621796242851659L);
  ];
]
let test_4_data = [Byte '\x56';Byte '\x4e';Byte '\x4d';Byte '\x43';Byte '\x44';Byte '\x4c';Byte '\x42';Byte '\x43';Byte '\x49';Byte '\x45';Byte '\x46';Byte '\x00';Byte '\x52';Byte '\x4b';Byte '\x57';Byte '\x5a';Byte '\x55';Byte '\x53';Byte '\x52';Byte '\x4f';Byte '\x58';Byte '\x52';Byte '\x00';Byte '\x22';Byte '\x22';Byte '\x3c';Byte '\xcb';Byte '\x22';Byte '\x14';Byte '\x28';Byte '\x19';Byte '\x45';Byte '\x41';Byte '\x48';Byte '\x4f';Byte '\x56';Byte '\x5a';Byte '\x55';Byte '\x42';Byte '\x51';Byte '\x54';Byte '\x4c';Byte '\x54';Byte '\x45';Byte '\x4e';Byte '\x4d';Byte '\x00';Byte '\x89';Byte '\x8e';Byte '\x9c';Byte '\x8d';Byte '\x3b';Byte '\xf7';Byte '\x03';Byte '\x28';Byte '\xe9';Byte '\xa0';Byte '\x51';Byte '\xb5';Byte '\x10';Byte '\x55';Byte '\x39';Byte '\x7e';Byte '\x59';Byte '\x45';Byte '\x43';Byte '\x53';Byte '\x4b';Byte '\x53';Byte '\x4f';Byte '\x42';Byte '\x58';Byte '\x55';Byte '\x50';Byte '\x45';Byte '\x47';Byte '\x4e';Byte '\x00';Byte '\x59';Byte '\x41';Byte '\x56';Byte '\x56';Byte '\x4a';Byte '\x56';Byte '\x4b';Byte '\x4c';Byte '\x58';Byte '\x49';Byte '\x4f';Byte '\x5a';Byte '\x4c';Byte '\x00';Byte '\x16';Byte '\x30';Byte '\x6a';Byte '\x6c';Byte '\x20';Byte '\x5c';Byte '\x78';Byte '\x32';Byte '\xbd';Byte '\xac';Byte '\x44';Byte '\x0c';Byte '\x6b';Byte '\xf4';Byte '\xd0';Byte '\x6b';Byte '\x41';Byte '\xe1';Byte '\xf7';Byte '\x3a';Byte '\x5a';Byte '\x3a';Byte '\xb4';Byte '\x56';Byte '\x44';Byte '\x46';Byte '\x55';Byte '\x48';Byte '\x59';Byte '\x51';Byte '\x42';Byte '\x5a';Byte '\x5a';Byte '\x45';Byte '\x50';Byte '\x4e';Byte '\x4d';Byte '\x47';Byte '\x50';Byte '\x00';Byte '\x4c';Byte '\x4f';Byte '\x58';Byte '\x56';Byte '\x56';Byte '\x45';Byte '\x45';Byte '\x4c';Byte '\x48';Byte '\x4b';Byte '\x59';Byte '\x45';Byte '\x48';Byte '\x52';Byte '\x45';Byte '\x4b';Byte '\x59';Byte '\x42';Byte '\x00';Byte '\x52';Byte '\x61';Byte '\xbb';Byte '\x24';Byte '\x50';Byte '\x61';Byte '\x7c';Byte '\x1d';Byte '\x43';Byte '\x45';Byte '\x47';Byte '\x5a';Byte '\x52';Byte '\x4e';Byte '\x52';Byte '\x5a';Byte '\x58';Byte '\x42';Byte '\x4d';Byte '\x52';Byte '\x55';Byte '\x53';Byte '\x57';Byte '\x58';Byte '\x4a';Byte '\x00';Byte '\x4f';Byte '\x41';Byte '\x5a';Byte '\x56';Byte '\x4a';Byte '\x52';Byte '\x53';Byte '\x43';Byte '\x56';Byte '\x50';Byte '\x4b';Byte '\x4f';Byte '\x49';Byte '\x57';Byte '\x44';Byte '\x57';Byte '\x00';Byte '\x4e';Byte '\x59';Byte '\x53';Byte '\x50';Byte '\x4c';Byte '\x52';Byte '\x52';Byte '\x46';Byte '\x53';Byte '\x51';Byte '\x49';Byte '\x49';Byte '\x47';Byte '\x00';Byte '\x5a';Byte '\x5a';Byte '\x57';Byte '\x43';Byte '\x58';Byte '\x42';Byte '\x4e';Byte '\x4f';Byte '\x4b';Byte '\x4e';Byte '\x5a';Byte '\x59';Byte '\x41';Byte '\x4c';Byte '\x4b';Byte '\x45';Byte '\x47';Byte '\x46';Byte '\x47';Byte '\x00';Byte '\x50';Byte '\x57';Byte '\x48';Byte '\x4e';Byte '\x45';Byte '\x45';Byte '\x53';Byte '\x4a';Byte '\x54';Byte '\x41';Byte '\x43';Byte '\x4b';Byte '\x43';Byte '\x51';Byte '\x00';Byte '\x33';Byte '\x42';Byte '\x21';Byte '\x4e';Byte '\x35';Byte '\x18';Byte '\xf4';Byte '\x57';Byte '\xde';Byte '\x1e';Byte '\x31';Byte '\xda';Byte '\xc1';Byte '\xee';Byte '\x5a';Byte '\x5d';Byte '\x8e';Byte '\x27';Byte '\x89';Byte '\xe6';Byte '\x99';Byte '\x49';Byte '\xd2';Byte '\x1e';Byte '\x1a';Byte '\xdf';Byte '\xab';Byte '\x7b';Byte '\x73';Byte '\x05';Byte '\x48';Byte '\x67';Byte '\x57';Byte '\x44';Byte '\x47';Byte '\x53';Byte '\x43';Byte '\x53';Byte '\x46';Byte '\x49';Byte '\x48';Byte '\x42';Byte '\x51';Byte '\x4b';Byte '\x4d';Byte '\x41';Byte '\x58';Byte '\x5a';Byte '\x55';Byte '\x4b';Byte '\x00';Byte '\x4b';Byte '\x87';Byte '\xae';Byte '\x92';Byte '\xde';Byte '\xec';Byte '\x00';Byte '\x29';]
let test_4_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400038L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400057L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400067L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40009cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000e9L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40013bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400143L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_5 = [
  data "AAAAAABE" [
    Asciz ("SSADAUENUQNKTRPIAKV");
  ];
  data "AAAAAABF" [
    Asciz ("GTHZSDLDNTPZYCDGLTE");
    Asciz ("NQDVOQXAXHKCLZUR");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAABE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAABF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAABG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAABH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAABI"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAABJ"); ~%Rax];
];
  data "AAAAAABG" [
    Quad (Lit 3395779726092383201L);
  ];
  data "AAAAAABH" [
    Asciz ("MORCQZSIJBVU");
    Quad (Lit 1079679185111637455L);
    Quad (Lit 3624252460394513611L);
    Asciz ("TAFUTIENJZSWOXVTV");
    Asciz ("RDLNDGVRSWKKIIMYI");
  ];
  data "AAAAAABI" [
    Quad (Lit 7974954365455307247L);
    Asciz ("UYMNLWNSUPN");
  ];
  data "AAAAAABJ" [
    Asciz ("NWKPRMINBPNDO");
    Quad (Lit 7331147016714870040L);
    Quad (Lit 820124045786502461L);
  ];
]
let test_5_data = [Byte '\x53';Byte '\x53';Byte '\x41';Byte '\x44';Byte '\x41';Byte '\x55';Byte '\x45';Byte '\x4e';Byte '\x55';Byte '\x51';Byte '\x4e';Byte '\x4b';Byte '\x54';Byte '\x52';Byte '\x50';Byte '\x49';Byte '\x41';Byte '\x4b';Byte '\x56';Byte '\x00';Byte '\x47';Byte '\x54';Byte '\x48';Byte '\x5a';Byte '\x53';Byte '\x44';Byte '\x4c';Byte '\x44';Byte '\x4e';Byte '\x54';Byte '\x50';Byte '\x5a';Byte '\x59';Byte '\x43';Byte '\x44';Byte '\x47';Byte '\x4c';Byte '\x54';Byte '\x45';Byte '\x00';Byte '\x4e';Byte '\x51';Byte '\x44';Byte '\x56';Byte '\x4f';Byte '\x51';Byte '\x58';Byte '\x41';Byte '\x58';Byte '\x48';Byte '\x4b';Byte '\x43';Byte '\x4c';Byte '\x5a';Byte '\x55';Byte '\x52';Byte '\x00';Byte '\xe1';Byte '\xb3';Byte '\x35';Byte '\x55';Byte '\xab';Byte '\x3b';Byte '\x20';Byte '\x2f';Byte '\x4d';Byte '\x4f';Byte '\x52';Byte '\x43';Byte '\x51';Byte '\x5a';Byte '\x53';Byte '\x49';Byte '\x4a';Byte '\x42';Byte '\x56';Byte '\x55';Byte '\x00';Byte '\xcf';Byte '\x5d';Byte '\xf6';Byte '\x9b';Byte '\x7f';Byte '\xca';Byte '\xfb';Byte '\x0e';Byte '\xcb';Byte '\x84';Byte '\x26';Byte '\x1e';Byte '\x69';Byte '\xee';Byte '\x4b';Byte '\x32';Byte '\x54';Byte '\x41';Byte '\x46';Byte '\x55';Byte '\x54';Byte '\x49';Byte '\x45';Byte '\x4e';Byte '\x4a';Byte '\x5a';Byte '\x53';Byte '\x57';Byte '\x4f';Byte '\x58';Byte '\x56';Byte '\x54';Byte '\x56';Byte '\x00';Byte '\x52';Byte '\x44';Byte '\x4c';Byte '\x4e';Byte '\x44';Byte '\x47';Byte '\x56';Byte '\x52';Byte '\x53';Byte '\x57';Byte '\x4b';Byte '\x4b';Byte '\x49';Byte '\x49';Byte '\x4d';Byte '\x59';Byte '\x49';Byte '\x00';Byte '\xef';Byte '\x11';Byte '\xea';Byte '\x04';Byte '\xbe';Byte '\xba';Byte '\xac';Byte '\x6e';Byte '\x55';Byte '\x59';Byte '\x4d';Byte '\x4e';Byte '\x4c';Byte '\x57';Byte '\x4e';Byte '\x53';Byte '\x55';Byte '\x50';Byte '\x4e';Byte '\x00';Byte '\x4e';Byte '\x57';Byte '\x4b';Byte '\x50';Byte '\x52';Byte '\x4d';Byte '\x49';Byte '\x4e';Byte '\x42';Byte '\x50';Byte '\x4e';Byte '\x44';Byte '\x4f';Byte '\x00';Byte '\x18';Byte '\x5d';Byte '\x74';Byte '\x9f';Byte '\x5e';Byte '\x77';Byte '\xbd';Byte '\x65';Byte '\x3d';Byte '\x55';Byte '\xdc';Byte '\x74';Byte '\x79';Byte '\xaa';Byte '\x61';Byte '\x0b';]
let test_5_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400030L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400044L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400069L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400071L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000b2L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c6L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_6 = [
  data "AAAAAABK" [
    Quad (Lit 6662709157091484399L);
    Asciz ("RHNOYCVUWRDRP");
    Asciz ("MOZFIBUUXCXHZP");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAABK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAABL"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAABM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAABN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAABO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAABP"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAABQ"); ~%Rax];
];
  data "AAAAAABL" [
    Quad (Lit 1799837317718851380L);
    Asciz ("VIBCUKEVZTZF");
  ];
  data "AAAAAABM" [
    Asciz ("PDWRXEOUKXYRS");
    Quad (Lit 8048334674878388927L);
    Asciz ("OISOTWFFPHIXVY");
    Quad (Lit 392440428240817342L);
  ];
  data "AAAAAABN" [
    Quad (Lit 8436058022146520883L);
    Quad (Lit 8905682173457119798L);
    Asciz ("YCPGIZHBOODMFGAIAO");
    Quad (Lit 3031054384937211734L);
  ];
  data "AAAAAABO" [
    Asciz ("CRZYBFQBPLPU");
    Quad (Lit 2962319117075567590L);
    Asciz ("UVGZHDDIQQBRC");
  ];
  data "AAAAAABP" [
    Quad (Lit 7213316672545634996L);
    Asciz ("QXDPFQIXOCURYNBDV");
    Quad (Lit 8940189096873356688L);
  ];
  data "AAAAAABQ" [
    Quad (Lit 2861528670638036965L);
    Quad (Lit 7080544996872510293L);
    Asciz ("COAUFAAGPFT");
    Quad (Lit 6259953085859034874L);
  ];
]
let test_6_data = [Byte '\xef';Byte '\x22';Byte '\x2e';Byte '\x86';Byte '\xad';Byte '\xb2';Byte '\x76';Byte '\x5c';Byte '\x52';Byte '\x48';Byte '\x4e';Byte '\x4f';Byte '\x59';Byte '\x43';Byte '\x56';Byte '\x55';Byte '\x57';Byte '\x52';Byte '\x44';Byte '\x52';Byte '\x50';Byte '\x00';Byte '\x4d';Byte '\x4f';Byte '\x5a';Byte '\x46';Byte '\x49';Byte '\x42';Byte '\x55';Byte '\x55';Byte '\x58';Byte '\x43';Byte '\x58';Byte '\x48';Byte '\x5a';Byte '\x50';Byte '\x00';Byte '\x34';Byte '\xbf';Byte '\x1f';Byte '\x28';Byte '\x81';Byte '\x4e';Byte '\xfa';Byte '\x18';Byte '\x56';Byte '\x49';Byte '\x42';Byte '\x43';Byte '\x55';Byte '\x4b';Byte '\x45';Byte '\x56';Byte '\x5a';Byte '\x54';Byte '\x5a';Byte '\x46';Byte '\x00';Byte '\x50';Byte '\x44';Byte '\x57';Byte '\x52';Byte '\x58';Byte '\x45';Byte '\x4f';Byte '\x55';Byte '\x4b';Byte '\x58';Byte '\x59';Byte '\x52';Byte '\x53';Byte '\x00';Byte '\xbf';Byte '\xda';Byte '\x95';Byte '\xb1';Byte '\xbe';Byte '\x6d';Byte '\xb1';Byte '\x6f';Byte '\x4f';Byte '\x49';Byte '\x53';Byte '\x4f';Byte '\x54';Byte '\x57';Byte '\x46';Byte '\x46';Byte '\x50';Byte '\x48';Byte '\x49';Byte '\x58';Byte '\x56';Byte '\x59';Byte '\x00';Byte '\xbe';Byte '\xcc';Byte '\xcb';Byte '\x80';Byte '\x7d';Byte '\x3a';Byte '\x72';Byte '\x05';Byte '\x33';Byte '\xb7';Byte '\xa0';Byte '\x32';Byte '\x13';Byte '\xe6';Byte '\x12';Byte '\x75';Byte '\x36';Byte '\xba';Byte '\x70';Byte '\x9f';Byte '\xc0';Byte '\x56';Byte '\x97';Byte '\x7b';Byte '\x59';Byte '\x43';Byte '\x50';Byte '\x47';Byte '\x49';Byte '\x5a';Byte '\x48';Byte '\x42';Byte '\x4f';Byte '\x4f';Byte '\x44';Byte '\x4d';Byte '\x46';Byte '\x47';Byte '\x41';Byte '\x49';Byte '\x41';Byte '\x4f';Byte '\x00';Byte '\x56';Byte '\x97';Byte '\x12';Byte '\x65';Byte '\xe7';Byte '\x77';Byte '\x10';Byte '\x2a';Byte '\x43';Byte '\x52';Byte '\x5a';Byte '\x59';Byte '\x42';Byte '\x46';Byte '\x51';Byte '\x42';Byte '\x50';Byte '\x4c';Byte '\x50';Byte '\x55';Byte '\x00';Byte '\xe6';Byte '\x53';Byte '\xa3';Byte '\xbc';Byte '\x8a';Byte '\x45';Byte '\x1c';Byte '\x29';Byte '\x55';Byte '\x56';Byte '\x47';Byte '\x5a';Byte '\x48';Byte '\x44';Byte '\x44';Byte '\x49';Byte '\x51';Byte '\x51';Byte '\x42';Byte '\x52';Byte '\x43';Byte '\x00';Byte '\xb4';Byte '\x3a';Byte '\x7c';Byte '\xbf';Byte '\x4b';Byte '\xd9';Byte '\x1a';Byte '\x64';Byte '\x51';Byte '\x58';Byte '\x44';Byte '\x50';Byte '\x46';Byte '\x51';Byte '\x49';Byte '\x58';Byte '\x4f';Byte '\x43';Byte '\x55';Byte '\x52';Byte '\x59';Byte '\x4e';Byte '\x42';Byte '\x44';Byte '\x56';Byte '\x00';Byte '\x90';Byte '\xed';Byte '\xf4';Byte '\xcf';Byte '\x9d';Byte '\xee';Byte '\x11';Byte '\x7c';Byte '\xe5';Byte '\xd7';Byte '\xf9';Byte '\x37';Byte '\x2a';Byte '\x31';Byte '\xb6';Byte '\x27';Byte '\x55';Byte '\x5b';Byte '\xc1';Byte '\x0a';Byte '\x29';Byte '\x26';Byte '\x43';Byte '\x62';Byte '\x43';Byte '\x4f';Byte '\x41';Byte '\x55';Byte '\x46';Byte '\x41';Byte '\x41';Byte '\x47';Byte '\x50';Byte '\x46';Byte '\x54';Byte '\x00';Byte '\xfa';Byte '\xf6';Byte '\x3c';Byte '\x39';Byte '\x2a';Byte '\xd2';Byte '\xdf';Byte '\x56';]
let test_6_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400038L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40005dL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400072L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40009fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000caL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000edL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40010fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_7 = [
  data "AAAAAABR" [
    Asciz ("AFWNUTYKWP");
    Asciz ("VAGKMMSMKQ");
    Quad (Lit 4663063089863911829L);
    Asciz ("EUOELNXIOAG");
    Asciz ("CJSSQRTTJCM");
  ];
  data "AAAAAABS" [
    Asciz ("LSYYURXUTUJOQRAL");
  ];
  data "AAAAAABT" [
    Quad (Lit 8641496200405680128L);
    Quad (Lit 2832260970646355532L);
    Asciz ("WAMWWRIVWKRKVLQK");
    Quad (Lit 4978455243238153585L);
    Quad (Lit 5761754104720158828L);
  ];
  data "AAAAAABU" [
    Quad (Lit 8151069781079866668L);
    Quad (Lit 3007746033582803396L);
    Asciz ("IOTQAWXGUYQSQY");
    Quad (Lit 1281816977450542661L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAABR"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAABS"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAABT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAABU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAABV"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAABW"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAABX"); ~%Rax];
];
  data "AAAAAABV" [
    Asciz ("LYBLPYGGRJKIEEWTCC");
    Asciz ("KLOOUGWFHNTGYEUPENS");
    Quad (Lit 6704398937495328181L);
    Asciz ("AMOEVKVCNWQKCPUTIYB");
    Quad (Lit 5995142892178310319L);
    Quad (Lit 3411586280784646704L);
  ];
  data "AAAAAABW" [
    Asciz ("CWSXTLAMYYPHO");
    Asciz ("ZVYLBCIXNVDJWDKSF");
    Asciz ("LHSAODGSISOZ");
    Asciz ("SUFSVFSMKA");
    Asciz ("SJHANLLMSNDOJ");
    Asciz ("EGNWLLMFPLQHJYMEIDLP");
  ];
  data "AAAAAABX" [
    Asciz ("YXGYHDFHKUHS");
    Asciz ("KZIPOBOZBMIPZPB");
    Asciz ("DHRCNYPXEFFPACPPE");
    Asciz ("UVPHEEKMLIMMTJAOKA");
  ];
]
let test_7_data = [Byte '\x41';Byte '\x46';Byte '\x57';Byte '\x4e';Byte '\x55';Byte '\x54';Byte '\x59';Byte '\x4b';Byte '\x57';Byte '\x50';Byte '\x00';Byte '\x56';Byte '\x41';Byte '\x47';Byte '\x4b';Byte '\x4d';Byte '\x4d';Byte '\x53';Byte '\x4d';Byte '\x4b';Byte '\x51';Byte '\x00';Byte '\x95';Byte '\xe9';Byte '\x92';Byte '\x9c';Byte '\x2c';Byte '\x87';Byte '\xb6';Byte '\x40';Byte '\x45';Byte '\x55';Byte '\x4f';Byte '\x45';Byte '\x4c';Byte '\x4e';Byte '\x58';Byte '\x49';Byte '\x4f';Byte '\x41';Byte '\x47';Byte '\x00';Byte '\x43';Byte '\x4a';Byte '\x53';Byte '\x53';Byte '\x51';Byte '\x52';Byte '\x54';Byte '\x54';Byte '\x4a';Byte '\x43';Byte '\x4d';Byte '\x00';Byte '\x4c';Byte '\x53';Byte '\x59';Byte '\x59';Byte '\x55';Byte '\x52';Byte '\x58';Byte '\x55';Byte '\x54';Byte '\x55';Byte '\x4a';Byte '\x4f';Byte '\x51';Byte '\x52';Byte '\x41';Byte '\x4c';Byte '\x00';Byte '\x00';Byte '\x80';Byte '\x11';Byte '\x79';Byte '\x02';Byte '\xc3';Byte '\xec';Byte '\x77';Byte '\x4c';Byte '\x3e';Byte '\x94';Byte '\xca';Byte '\x58';Byte '\x36';Byte '\x4e';Byte '\x27';Byte '\x57';Byte '\x41';Byte '\x4d';Byte '\x57';Byte '\x57';Byte '\x52';Byte '\x49';Byte '\x56';Byte '\x57';Byte '\x4b';Byte '\x52';Byte '\x4b';Byte '\x56';Byte '\x4c';Byte '\x51';Byte '\x4b';Byte '\x00';Byte '\x71';Byte '\x1d';Byte '\x64';Byte '\xaf';Byte '\xaa';Byte '\x06';Byte '\x17';Byte '\x45';Byte '\x6c';Byte '\x70';Byte '\xfe';Byte '\xc6';Byte '\xd4';Byte '\xdc';Byte '\xf5';Byte '\x4f';Byte '\x2c';Byte '\xbd';Byte '\xaf';Byte '\x98';Byte '\xc7';Byte '\x6a';Byte '\x1e';Byte '\x71';Byte '\xc4';Byte '\x09';Byte '\x4b';Byte '\xf2';Byte '\x14';Byte '\xa9';Byte '\xbd';Byte '\x29';Byte '\x49';Byte '\x4f';Byte '\x54';Byte '\x51';Byte '\x41';Byte '\x57';Byte '\x58';Byte '\x47';Byte '\x55';Byte '\x59';Byte '\x51';Byte '\x53';Byte '\x51';Byte '\x59';Byte '\x00';Byte '\x45';Byte '\x26';Byte '\x01';Byte '\xe8';Byte '\xbf';Byte '\xed';Byte '\xc9';Byte '\x11';Byte '\x4c';Byte '\x59';Byte '\x42';Byte '\x4c';Byte '\x50';Byte '\x59';Byte '\x47';Byte '\x47';Byte '\x52';Byte '\x4a';Byte '\x4b';Byte '\x49';Byte '\x45';Byte '\x45';Byte '\x57';Byte '\x54';Byte '\x43';Byte '\x43';Byte '\x00';Byte '\x4b';Byte '\x4c';Byte '\x4f';Byte '\x4f';Byte '\x55';Byte '\x47';Byte '\x57';Byte '\x46';Byte '\x48';Byte '\x4e';Byte '\x54';Byte '\x47';Byte '\x59';Byte '\x45';Byte '\x55';Byte '\x50';Byte '\x45';Byte '\x4e';Byte '\x53';Byte '\x00';Byte '\xb5';Byte '\x55';Byte '\xea';Byte '\xed';Byte '\x4f';Byte '\xcf';Byte '\x0a';Byte '\x5d';Byte '\x41';Byte '\x4d';Byte '\x4f';Byte '\x45';Byte '\x56';Byte '\x4b';Byte '\x56';Byte '\x43';Byte '\x4e';Byte '\x57';Byte '\x51';Byte '\x4b';Byte '\x43';Byte '\x50';Byte '\x55';Byte '\x54';Byte '\x49';Byte '\x59';Byte '\x42';Byte '\x00';Byte '\xaf';Byte '\x04';Byte '\xff';Byte '\x61';Byte '\xb2';Byte '\x06';Byte '\x33';Byte '\x53';Byte '\x30';Byte '\xd2';Byte '\xc3';Byte '\xa2';Byte '\xa5';Byte '\x63';Byte '\x58';Byte '\x2f';Byte '\x43';Byte '\x57';Byte '\x53';Byte '\x58';Byte '\x54';Byte '\x4c';Byte '\x41';Byte '\x4d';Byte '\x59';Byte '\x59';Byte '\x50';Byte '\x48';Byte '\x4f';Byte '\x00';Byte '\x5a';Byte '\x56';Byte '\x59';Byte '\x4c';Byte '\x42';Byte '\x43';Byte '\x49';Byte '\x58';Byte '\x4e';Byte '\x56';Byte '\x44';Byte '\x4a';Byte '\x57';Byte '\x44';Byte '\x4b';Byte '\x53';Byte '\x46';Byte '\x00';Byte '\x4c';Byte '\x48';Byte '\x53';Byte '\x41';Byte '\x4f';Byte '\x44';Byte '\x47';Byte '\x53';Byte '\x49';Byte '\x53';Byte '\x4f';Byte '\x5a';Byte '\x00';Byte '\x53';Byte '\x55';Byte '\x46';Byte '\x53';Byte '\x56';Byte '\x46';Byte '\x53';Byte '\x4d';Byte '\x4b';Byte '\x41';Byte '\x00';Byte '\x53';Byte '\x4a';Byte '\x48';Byte '\x41';Byte '\x4e';Byte '\x4c';Byte '\x4c';Byte '\x4d';Byte '\x53';Byte '\x4e';Byte '\x44';Byte '\x4f';Byte '\x4a';Byte '\x00';Byte '\x45';Byte '\x47';Byte '\x4e';Byte '\x57';Byte '\x4c';Byte '\x4c';Byte '\x4d';Byte '\x46';Byte '\x50';Byte '\x4c';Byte '\x51';Byte '\x48';Byte '\x4a';Byte '\x59';Byte '\x4d';Byte '\x45';Byte '\x49';Byte '\x44';Byte '\x4c';Byte '\x50';Byte '\x00';Byte '\x59';Byte '\x58';Byte '\x47';Byte '\x59';Byte '\x48';Byte '\x44';Byte '\x46';Byte '\x48';Byte '\x4b';Byte '\x55';Byte '\x48';Byte '\x53';Byte '\x00';Byte '\x4b';Byte '\x5a';Byte '\x49';Byte '\x50';Byte '\x4f';Byte '\x42';Byte '\x4f';Byte '\x5a';Byte '\x42';Byte '\x4d';Byte '\x49';Byte '\x50';Byte '\x5a';Byte '\x50';Byte '\x42';Byte '\x00';Byte '\x44';Byte '\x48';Byte '\x52';Byte '\x43';Byte '\x4e';Byte '\x59';Byte '\x50';Byte '\x58';Byte '\x45';Byte '\x46';Byte '\x46';Byte '\x50';Byte '\x41';Byte '\x43';Byte '\x50';Byte '\x50';Byte '\x45';Byte '\x00';Byte '\x55';Byte '\x56';Byte '\x50';Byte '\x48';Byte '\x45';Byte '\x45';Byte '\x4b';Byte '\x4d';Byte '\x4c';Byte '\x49';Byte '\x4d';Byte '\x4d';Byte '\x54';Byte '\x4a';Byte '\x41';Byte '\x4f';Byte '\x4b';Byte '\x41';Byte '\x00';]
let test_7_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400038L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40006eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40007fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000b0L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000d7L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40012aL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400185L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_8 = [
  data "AAAAAABY" [
    Asciz ("ESXNDFMZUGLRNJYLR");
  ];
  data "AAAAAABZ" [
    Asciz ("WPQJADSEAV");
    Quad (Lit 8287189202052360266L);
    Quad (Lit 9143750656225648542L);
    Asciz ("XNSQAIEKYKLKSN");
    Asciz ("GAUUXNMKUQLEFOKFJV");
  ];
  data "AAAAAACA" [
    Asciz ("DOCYEVCPSGELFFTEKD");
    Asciz ("ROYJBQLYXWQBCQXPKSX");
    Asciz ("OWRFYPWHMSPNLDIBVH");
    Asciz ("CWXKAVYKND");
    Asciz ("LKINXGHMFIUGYBO");
  ];
  data "AAAAAACB" [
    Asciz ("TLLVEUZKBKW");
    Asciz ("HJROVQVULRF");
    Quad (Lit 8799711808211749153L);
    Quad (Lit 6892378530560598097L);
    Asciz ("DKKZZPEMYM");
    Asciz ("YWWTYPQODOIMANAA");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAABY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAABZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAACA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAACB"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAACC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAACD"); ~%Rax];
];
  data "AAAAAACC" [
    Quad (Lit 749606199871611565L);
    Asciz ("KRLRUIGTZGVQAAYJPOV");
    Asciz ("NABUHYHVQNBSO");
  ];
  data "AAAAAACD" [
    Quad (Lit 453420357232000288L);
    Quad (Lit 3614296433105806750L);
    Asciz ("OPJKTJAXJMPVRUGTW");
    Quad (Lit 465534452838889228L);
  ];
]
let test_8_data = [Byte '\x45';Byte '\x53';Byte '\x58';Byte '\x4e';Byte '\x44';Byte '\x46';Byte '\x4d';Byte '\x5a';Byte '\x55';Byte '\x47';Byte '\x4c';Byte '\x52';Byte '\x4e';Byte '\x4a';Byte '\x59';Byte '\x4c';Byte '\x52';Byte '\x00';Byte '\x57';Byte '\x50';Byte '\x51';Byte '\x4a';Byte '\x41';Byte '\x44';Byte '\x53';Byte '\x45';Byte '\x41';Byte '\x56';Byte '\x00';Byte '\x4a';Byte '\xa8';Byte '\xc8';Byte '\xfe';Byte '\xab';Byte '\x02';Byte '\x02';Byte '\x73';Byte '\x9e';Byte '\x1f';Byte '\x13';Byte '\xb3';Byte '\xc6';Byte '\x20';Byte '\xe5';Byte '\x7e';Byte '\x58';Byte '\x4e';Byte '\x53';Byte '\x51';Byte '\x41';Byte '\x49';Byte '\x45';Byte '\x4b';Byte '\x59';Byte '\x4b';Byte '\x4c';Byte '\x4b';Byte '\x53';Byte '\x4e';Byte '\x00';Byte '\x47';Byte '\x41';Byte '\x55';Byte '\x55';Byte '\x58';Byte '\x4e';Byte '\x4d';Byte '\x4b';Byte '\x55';Byte '\x51';Byte '\x4c';Byte '\x45';Byte '\x46';Byte '\x4f';Byte '\x4b';Byte '\x46';Byte '\x4a';Byte '\x56';Byte '\x00';Byte '\x44';Byte '\x4f';Byte '\x43';Byte '\x59';Byte '\x45';Byte '\x56';Byte '\x43';Byte '\x50';Byte '\x53';Byte '\x47';Byte '\x45';Byte '\x4c';Byte '\x46';Byte '\x46';Byte '\x54';Byte '\x45';Byte '\x4b';Byte '\x44';Byte '\x00';Byte '\x52';Byte '\x4f';Byte '\x59';Byte '\x4a';Byte '\x42';Byte '\x51';Byte '\x4c';Byte '\x59';Byte '\x58';Byte '\x57';Byte '\x51';Byte '\x42';Byte '\x43';Byte '\x51';Byte '\x58';Byte '\x50';Byte '\x4b';Byte '\x53';Byte '\x58';Byte '\x00';Byte '\x4f';Byte '\x57';Byte '\x52';Byte '\x46';Byte '\x59';Byte '\x50';Byte '\x57';Byte '\x48';Byte '\x4d';Byte '\x53';Byte '\x50';Byte '\x4e';Byte '\x4c';Byte '\x44';Byte '\x49';Byte '\x42';Byte '\x56';Byte '\x48';Byte '\x00';Byte '\x43';Byte '\x57';Byte '\x58';Byte '\x4b';Byte '\x41';Byte '\x56';Byte '\x59';Byte '\x4b';Byte '\x4e';Byte '\x44';Byte '\x00';Byte '\x4c';Byte '\x4b';Byte '\x49';Byte '\x4e';Byte '\x58';Byte '\x47';Byte '\x48';Byte '\x4d';Byte '\x46';Byte '\x49';Byte '\x55';Byte '\x47';Byte '\x59';Byte '\x42';Byte '\x4f';Byte '\x00';Byte '\x54';Byte '\x4c';Byte '\x4c';Byte '\x56';Byte '\x45';Byte '\x55';Byte '\x5a';Byte '\x4b';Byte '\x42';Byte '\x4b';Byte '\x57';Byte '\x00';Byte '\x48';Byte '\x4a';Byte '\x52';Byte '\x4f';Byte '\x56';Byte '\x51';Byte '\x56';Byte '\x55';Byte '\x4c';Byte '\x52';Byte '\x46';Byte '\x00';Byte '\x21';Byte '\x89';Byte '\x45';Byte '\x46';Byte '\x44';Byte '\xdb';Byte '\x1e';Byte '\x7a';Byte '\x51';Byte '\xe0';Byte '\x97';Byte '\x93';Byte '\xc1';Byte '\xa5';Byte '\xa6';Byte '\x5f';Byte '\x44';Byte '\x4b';Byte '\x4b';Byte '\x5a';Byte '\x5a';Byte '\x50';Byte '\x45';Byte '\x4d';Byte '\x59';Byte '\x4d';Byte '\x00';Byte '\x59';Byte '\x57';Byte '\x57';Byte '\x54';Byte '\x59';Byte '\x50';Byte '\x51';Byte '\x4f';Byte '\x44';Byte '\x4f';Byte '\x49';Byte '\x4d';Byte '\x41';Byte '\x4e';Byte '\x41';Byte '\x41';Byte '\x00';Byte '\xad';Byte '\x22';Byte '\xc7';Byte '\x00';Byte '\xde';Byte '\x22';Byte '\x67';Byte '\x0a';Byte '\x4b';Byte '\x52';Byte '\x4c';Byte '\x52';Byte '\x55';Byte '\x49';Byte '\x47';Byte '\x54';Byte '\x5a';Byte '\x47';Byte '\x56';Byte '\x51';Byte '\x41';Byte '\x41';Byte '\x59';Byte '\x4a';Byte '\x50';Byte '\x4f';Byte '\x56';Byte '\x00';Byte '\x4e';Byte '\x41';Byte '\x42';Byte '\x55';Byte '\x48';Byte '\x59';Byte '\x48';Byte '\x56';Byte '\x51';Byte '\x4e';Byte '\x42';Byte '\x53';Byte '\x4f';Byte '\x00';Byte '\x20';Byte '\x7d';Byte '\xbe';Byte '\x9e';Byte '\x69';Byte '\xdf';Byte '\x4a';Byte '\x06';Byte '\x9e';Byte '\xa5';Byte '\x3b';Byte '\xe0';Byte '\x74';Byte '\x8f';Byte '\x28';Byte '\x32';Byte '\x4f';Byte '\x50';Byte '\x4a';Byte '\x4b';Byte '\x54';Byte '\x4a';Byte '\x41';Byte '\x58';Byte '\x4a';Byte '\x4d';Byte '\x50';Byte '\x56';Byte '\x52';Byte '\x55';Byte '\x47';Byte '\x54';Byte '\x57';Byte '\x00';Byte '\x0c';Byte '\xf7';Byte '\x2a';Byte '\x4c';Byte '\x1e';Byte '\xe9';Byte '\x75';Byte '\x06';]
let test_8_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400030L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400042L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40007fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000d4L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400118L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400142L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_9 = [
  data "AAAAAACE" [
    Quad (Lit 1289510222811586858L);
  ];
  data "AAAAAACF" [
    Asciz ("ILWYUYZIFGSCGYIY");
    Quad (Lit 5672186835180853277L);
    Asciz ("ISDYGCLJDWFIEV");
  ];
  data "AAAAAACG" [
    Quad (Lit 165923794727577971L);
  ];
  data "AAAAAACH" [
    Quad (Lit 1675213506887371671L);
    Asciz ("TFUXGEXGYBO");
    Asciz ("IRNNCMSZKKAHPDTWQ");
    Quad (Lit 2879575272747993357L);
    Asciz ("MOVPTAILXMGI");
    Asciz ("SMCEYDUKRK");
  ];
  data "AAAAAACI" [
    Asciz ("EYEAEGVECDTL");
    Asciz ("RRUFDAPROFMQQQX");
    Asciz ("QJBMRATFOG");
    Asciz ("DRALZHCCKYQEJKJ");
  ];
  data "AAAAAACJ" [
    Quad (Lit 2143754544625640003L);
    Asciz ("BTACPVZKRAXHHLM");
  ];
  data "AAAAAACK" [
    Quad (Lit 6938663102262465710L);
    Asciz ("BJYXPUDSQT");
    Quad (Lit 3147912876684084775L);
    Asciz ("KXVDAFITYYOUHJSYGKAR");
    Asciz ("TNUKMKWEQW");
    Quad (Lit 4573348832665491118L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAACE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAACF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAACG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAACH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAACI"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAACJ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAACK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAACL"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAACM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAACN"); ~%Rax];
];
  data "AAAAAACL" [
    Asciz ("YBROCJVKKXH");
    Quad (Lit 3094954923110860006L);
  ];
  data "AAAAAACM" [
    Quad (Lit 5979749034676109283L);
    Asciz ("DUMUHKXESXRHYWFBH");
    Asciz ("CFUKPCKPZUUHJAJVLEXZ");
    Quad (Lit 6990823109416581533L);
    Asciz ("BKIJWFJMJU");
  ];
  data "AAAAAACN" [
    Asciz ("BIPMWWNDBCFKSLMHE");
  ];
]
let test_9_data = [Byte '\x2a';Byte '\x61';Byte '\xeb';Byte '\x2c';Byte '\xb7';Byte '\x42';Byte '\xe5';Byte '\x11';Byte '\x49';Byte '\x4c';Byte '\x57';Byte '\x59';Byte '\x55';Byte '\x59';Byte '\x5a';Byte '\x49';Byte '\x46';Byte '\x47';Byte '\x53';Byte '\x43';Byte '\x47';Byte '\x59';Byte '\x49';Byte '\x59';Byte '\x00';Byte '\x1d';Byte '\x18';Byte '\x9a';Byte '\xc2';Byte '\xdf';Byte '\xa7';Byte '\xb7';Byte '\x4e';Byte '\x49';Byte '\x53';Byte '\x44';Byte '\x59';Byte '\x47';Byte '\x43';Byte '\x4c';Byte '\x4a';Byte '\x44';Byte '\x57';Byte '\x46';Byte '\x49';Byte '\x45';Byte '\x56';Byte '\x00';Byte '\x73';Byte '\xa9';Byte '\x85';Byte '\xec';Byte '\xcf';Byte '\x7a';Byte '\x4d';Byte '\x02';Byte '\x97';Byte '\x4b';Byte '\xf5';Byte '\x10';Byte '\xcf';Byte '\x8d';Byte '\x3f';Byte '\x17';Byte '\x54';Byte '\x46';Byte '\x55';Byte '\x58';Byte '\x47';Byte '\x45';Byte '\x58';Byte '\x47';Byte '\x59';Byte '\x42';Byte '\x4f';Byte '\x00';Byte '\x49';Byte '\x52';Byte '\x4e';Byte '\x4e';Byte '\x43';Byte '\x4d';Byte '\x53';Byte '\x5a';Byte '\x4b';Byte '\x4b';Byte '\x41';Byte '\x48';Byte '\x50';Byte '\x44';Byte '\x54';Byte '\x57';Byte '\x51';Byte '\x00';Byte '\x0d';Byte '\x89';Byte '\x24';Byte '\x34';Byte '\x74';Byte '\x4e';Byte '\xf6';Byte '\x27';Byte '\x4d';Byte '\x4f';Byte '\x56';Byte '\x50';Byte '\x54';Byte '\x41';Byte '\x49';Byte '\x4c';Byte '\x58';Byte '\x4d';Byte '\x47';Byte '\x49';Byte '\x00';Byte '\x53';Byte '\x4d';Byte '\x43';Byte '\x45';Byte '\x59';Byte '\x44';Byte '\x55';Byte '\x4b';Byte '\x52';Byte '\x4b';Byte '\x00';Byte '\x45';Byte '\x59';Byte '\x45';Byte '\x41';Byte '\x45';Byte '\x47';Byte '\x56';Byte '\x45';Byte '\x43';Byte '\x44';Byte '\x54';Byte '\x4c';Byte '\x00';Byte '\x52';Byte '\x52';Byte '\x55';Byte '\x46';Byte '\x44';Byte '\x41';Byte '\x50';Byte '\x52';Byte '\x4f';Byte '\x46';Byte '\x4d';Byte '\x51';Byte '\x51';Byte '\x51';Byte '\x58';Byte '\x00';Byte '\x51';Byte '\x4a';Byte '\x42';Byte '\x4d';Byte '\x52';Byte '\x41';Byte '\x54';Byte '\x46';Byte '\x4f';Byte '\x47';Byte '\x00';Byte '\x44';Byte '\x52';Byte '\x41';Byte '\x4c';Byte '\x5a';Byte '\x48';Byte '\x43';Byte '\x43';Byte '\x4b';Byte '\x59';Byte '\x51';Byte '\x45';Byte '\x4a';Byte '\x4b';Byte '\x4a';Byte '\x00';Byte '\x43';Byte '\x62';Byte '\x0a';Byte '\x76';Byte '\x66';Byte '\x25';Byte '\xc0';Byte '\x1d';Byte '\x42';Byte '\x54';Byte '\x41';Byte '\x43';Byte '\x50';Byte '\x56';Byte '\x5a';Byte '\x4b';Byte '\x52';Byte '\x41';Byte '\x58';Byte '\x48';Byte '\x48';Byte '\x4c';Byte '\x4d';Byte '\x00';Byte '\xae';Byte '\xd4';Byte '\x76';Byte '\x32';Byte '\x54';Byte '\x15';Byte '\x4b';Byte '\x60';Byte '\x42';Byte '\x4a';Byte '\x59';Byte '\x58';Byte '\x50';Byte '\x55';Byte '\x44';Byte '\x53';Byte '\x51';Byte '\x54';Byte '\x00';Byte '\x27';Byte '\x06';Byte '\xa2';Byte '\x3e';Byte '\x15';Byte '\xa2';Byte '\xaf';Byte '\x2b';Byte '\x4b';Byte '\x58';Byte '\x56';Byte '\x44';Byte '\x41';Byte '\x46';Byte '\x49';Byte '\x54';Byte '\x59';Byte '\x59';Byte '\x4f';Byte '\x55';Byte '\x48';Byte '\x4a';Byte '\x53';Byte '\x59';Byte '\x47';Byte '\x4b';Byte '\x41';Byte '\x52';Byte '\x00';Byte '\x54';Byte '\x4e';Byte '\x55';Byte '\x4b';Byte '\x4d';Byte '\x4b';Byte '\x57';Byte '\x45';Byte '\x51';Byte '\x57';Byte '\x00';Byte '\xae';Byte '\x56';Byte '\xf9';Byte '\x5c';Byte '\x88';Byte '\xcc';Byte '\x77';Byte '\x3f';Byte '\x59';Byte '\x42';Byte '\x52';Byte '\x4f';Byte '\x43';Byte '\x4a';Byte '\x56';Byte '\x4b';Byte '\x4b';Byte '\x58';Byte '\x48';Byte '\x00';Byte '\xe6';Byte '\x84';Byte '\xde';Byte '\xd3';Byte '\x1a';Byte '\x7d';Byte '\xf3';Byte '\x2a';Byte '\xe3';Byte '\xbf';Byte '\xda';Byte '\xa1';Byte '\x10';Byte '\x56';Byte '\xfc';Byte '\x52';Byte '\x44';Byte '\x55';Byte '\x4d';Byte '\x55';Byte '\x48';Byte '\x4b';Byte '\x58';Byte '\x45';Byte '\x53';Byte '\x58';Byte '\x52';Byte '\x48';Byte '\x59';Byte '\x57';Byte '\x46';Byte '\x42';Byte '\x48';Byte '\x00';Byte '\x43';Byte '\x46';Byte '\x55';Byte '\x4b';Byte '\x50';Byte '\x43';Byte '\x4b';Byte '\x50';Byte '\x5a';Byte '\x55';Byte '\x55';Byte '\x48';Byte '\x4a';Byte '\x41';Byte '\x4a';Byte '\x56';Byte '\x4c';Byte '\x45';Byte '\x58';Byte '\x5a';Byte '\x00';Byte '\x9d';Byte '\xf9';Byte '\x5d';Byte '\x3c';Byte '\x94';Byte '\x64';Byte '\x04';Byte '\x61';Byte '\x42';Byte '\x4b';Byte '\x49';Byte '\x4a';Byte '\x57';Byte '\x46';Byte '\x4a';Byte '\x4d';Byte '\x4a';Byte '\x55';Byte '\x00';Byte '\x42';Byte '\x49';Byte '\x50';Byte '\x4d';Byte '\x57';Byte '\x57';Byte '\x4e';Byte '\x44';Byte '\x42';Byte '\x43';Byte '\x46';Byte '\x4b';Byte '\x53';Byte '\x4c';Byte '\x4d';Byte '\x48';Byte '\x45';Byte '\x00';]
let test_9_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400050L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400058L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400080L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400088L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000ceL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400106L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40011eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400161L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400175L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001b7L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_10 = [
  data "AAAAAACO" [
    Asciz ("DQRDCWGTMZADBYH");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAACO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAACP"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAACQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAACR"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAACS"); ~%Rax];
];
  data "AAAAAACP" [
    Quad (Lit 6519218277180917565L);
  ];
  data "AAAAAACQ" [
    Asciz ("VGQBAGJFZFPLNXIVKVQX");
    Asciz ("XNVIIFSBNGMXM");
    Quad (Lit 4053215754794060104L);
  ];
  data "AAAAAACR" [
    Asciz ("UFAJNYYVMIT");
    Asciz ("RVRQYGFGSHSAXMFDH");
    Asciz ("MYHYXLLIBEOWSATK");
    Asciz ("SWEKIXOADWTZOGMXFLP");
  ];
  data "AAAAAACS" [
    Quad (Lit 3370045447954085437L);
    Quad (Lit 8643086989644508906L);
    Quad (Lit 8386319302202959588L);
  ];
]
let test_10_data = [Byte '\x44';Byte '\x51';Byte '\x52';Byte '\x44';Byte '\x43';Byte '\x57';Byte '\x47';Byte '\x54';Byte '\x4d';Byte '\x5a';Byte '\x41';Byte '\x44';Byte '\x42';Byte '\x59';Byte '\x48';Byte '\x00';Byte '\x3d';Byte '\x47';Byte '\x9a';Byte '\x98';Byte '\x7b';Byte '\xea';Byte '\x78';Byte '\x5a';Byte '\x56';Byte '\x47';Byte '\x51';Byte '\x42';Byte '\x41';Byte '\x47';Byte '\x4a';Byte '\x46';Byte '\x5a';Byte '\x46';Byte '\x50';Byte '\x4c';Byte '\x4e';Byte '\x58';Byte '\x49';Byte '\x56';Byte '\x4b';Byte '\x56';Byte '\x51';Byte '\x58';Byte '\x00';Byte '\x58';Byte '\x4e';Byte '\x56';Byte '\x49';Byte '\x49';Byte '\x46';Byte '\x53';Byte '\x42';Byte '\x4e';Byte '\x47';Byte '\x4d';Byte '\x58';Byte '\x4d';Byte '\x00';Byte '\x48';Byte '\x49';Byte '\x84';Byte '\x0e';Byte '\x41';Byte '\xea';Byte '\x3f';Byte '\x38';Byte '\x55';Byte '\x46';Byte '\x41';Byte '\x4a';Byte '\x4e';Byte '\x59';Byte '\x59';Byte '\x56';Byte '\x4d';Byte '\x49';Byte '\x54';Byte '\x00';Byte '\x52';Byte '\x56';Byte '\x52';Byte '\x51';Byte '\x59';Byte '\x47';Byte '\x46';Byte '\x47';Byte '\x53';Byte '\x48';Byte '\x53';Byte '\x41';Byte '\x58';Byte '\x4d';Byte '\x46';Byte '\x44';Byte '\x48';Byte '\x00';Byte '\x4d';Byte '\x59';Byte '\x48';Byte '\x59';Byte '\x58';Byte '\x4c';Byte '\x4c';Byte '\x49';Byte '\x42';Byte '\x45';Byte '\x4f';Byte '\x57';Byte '\x53';Byte '\x41';Byte '\x54';Byte '\x4b';Byte '\x00';Byte '\x53';Byte '\x57';Byte '\x45';Byte '\x4b';Byte '\x49';Byte '\x58';Byte '\x4f';Byte '\x41';Byte '\x44';Byte '\x57';Byte '\x54';Byte '\x5a';Byte '\x4f';Byte '\x47';Byte '\x4d';Byte '\x58';Byte '\x46';Byte '\x4c';Byte '\x50';Byte '\x00';Byte '\x3d';Byte '\xb6';Byte '\x39';Byte '\xca';Byte '\x7a';Byte '\xce';Byte '\xc4';Byte '\x2e';Byte '\xea';Byte '\xae';Byte '\x8f';Byte '\xf4';Byte '\xd2';Byte '\x69';Byte '\xf2';Byte '\x77';Byte '\xe4';Byte '\x26';Byte '\xcf';Byte '\x04';Byte '\xf9';Byte '\x30';Byte '\x62';Byte '\x74';]
let test_10_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400028L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400038L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400040L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40006bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000aeL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_11 = [
  data "AAAAAACT" [
    Asciz ("UKHUUQHOLKNXUVEIGRD");
    Quad (Lit 8610116998225348308L);
    Asciz ("ZNJCSOIKZTPZFF");
    Quad (Lit 717216281478491899L);
    Quad (Lit 7358929475812099819L);
    Asciz ("IGZCFNEKCS");
  ];
  data "AAAAAACU" [
    Asciz ("WOERWSZALZRLAMIA");
    Quad (Lit 942278990963870773L);
    Quad (Lit 3571833596463860600L);
    Asciz ("DKLKARRBFHVTKYJEVRTJ");
    Asciz ("MBGNPCVQIU");
  ];
  data "AAAAAACV" [
    Quad (Lit 6390882815364736798L);
    Asciz ("CFMVPZCTRQCV");
    Quad (Lit 1666562663105654217L);
    Quad (Lit 6041400499510123050L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAACT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAACU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAACV"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAACW"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAACX"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAACY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAACZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAADA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAADB"); ~%Rax];
];
  data "AAAAAACW" [
    Quad (Lit 2713697371092207815L);
  ];
  data "AAAAAACX" [
    Asciz ("YDIAILVRZXPTILOWWT");
    Quad (Lit 8794803161422851383L);
    Quad (Lit 1874689832403207730L);
    Quad (Lit 7330393878310162284L);
    Asciz ("RGHRHAVVVDMSBJS");
  ];
  data "AAAAAACY" [
    Asciz ("WHRUFPNCQDSDULUZFBR");
    Asciz ("PMFTRQZQUCLNEXFUSFML");
  ];
  data "AAAAAACZ" [
    Asciz ("DEEHEXBNCWFJYUENDJ");
    Asciz ("LOOGGKKLCJSBXSBXJ");
    Asciz ("MZRGGCFITRBQEPLDFBP");
    Quad (Lit 785687140162226399L);
    Quad (Lit 67134771175121867L);
  ];
  data "AAAAAADA" [
    Asciz ("AWKDXOYYNJNWY");
    Quad (Lit 7665782652867082571L);
    Asciz ("UGRGNKGFXJN");
    Asciz ("TFHUIZZNAKXIRXYUH");
  ];
  data "AAAAAADB" [
    Quad (Lit 1856588765534821638L);
  ];
]
let test_11_data = [Byte '\x55';Byte '\x4b';Byte '\x48';Byte '\x55';Byte '\x55';Byte '\x51';Byte '\x48';Byte '\x4f';Byte '\x4c';Byte '\x4b';Byte '\x4e';Byte '\x58';Byte '\x55';Byte '\x56';Byte '\x45';Byte '\x49';Byte '\x47';Byte '\x52';Byte '\x44';Byte '\x00';Byte '\xd4';Byte '\x46';Byte '\xc6';Byte '\xa1';Byte '\xca';Byte '\x47';Byte '\x7d';Byte '\x77';Byte '\x5a';Byte '\x4e';Byte '\x4a';Byte '\x43';Byte '\x53';Byte '\x4f';Byte '\x49';Byte '\x4b';Byte '\x5a';Byte '\x54';Byte '\x50';Byte '\x5a';Byte '\x46';Byte '\x46';Byte '\x00';Byte '\xfb';Byte '\xee';Byte '\xa6';Byte '\x74';Byte '\x68';Byte '\x10';Byte '\xf4';Byte '\x09';Byte '\xeb';Byte '\x86';Byte '\xee';Byte '\x74';Byte '\x5e';Byte '\x2b';Byte '\x20';Byte '\x66';Byte '\x49';Byte '\x47';Byte '\x5a';Byte '\x43';Byte '\x46';Byte '\x4e';Byte '\x45';Byte '\x4b';Byte '\x43';Byte '\x53';Byte '\x00';Byte '\x57';Byte '\x4f';Byte '\x45';Byte '\x52';Byte '\x57';Byte '\x53';Byte '\x5a';Byte '\x41';Byte '\x4c';Byte '\x5a';Byte '\x52';Byte '\x4c';Byte '\x41';Byte '\x4d';Byte '\x49';Byte '\x41';Byte '\x00';Byte '\x35';Byte '\x0c';Byte '\xb7';Byte '\xf7';Byte '\xbf';Byte '\xa5';Byte '\x13';Byte '\x0d';Byte '\x78';Byte '\xcb';Byte '\x08';Byte '\x4a';Byte '\xbb';Byte '\xb3';Byte '\x91';Byte '\x31';Byte '\x44';Byte '\x4b';Byte '\x4c';Byte '\x4b';Byte '\x41';Byte '\x52';Byte '\x52';Byte '\x42';Byte '\x46';Byte '\x48';Byte '\x56';Byte '\x54';Byte '\x4b';Byte '\x59';Byte '\x4a';Byte '\x45';Byte '\x56';Byte '\x52';Byte '\x54';Byte '\x4a';Byte '\x00';Byte '\x4d';Byte '\x42';Byte '\x47';Byte '\x4e';Byte '\x50';Byte '\x43';Byte '\x56';Byte '\x51';Byte '\x49';Byte '\x55';Byte '\x00';Byte '\x1e';Byte '\xa7';Byte '\xf6';Byte '\x6a';Byte '\x0f';Byte '\xfa';Byte '\xb0';Byte '\x58';Byte '\x43';Byte '\x46';Byte '\x4d';Byte '\x56';Byte '\x50';Byte '\x5a';Byte '\x43';Byte '\x54';Byte '\x52';Byte '\x51';Byte '\x43';Byte '\x56';Byte '\x00';Byte '\xc9';Byte '\x6d';Byte '\x57';Byte '\x8a';Byte '\xe9';Byte '\xd1';Byte '\x20';Byte '\x17';Byte '\x2a';Byte '\x1a';Byte '\x2b';Byte '\xdf';Byte '\xbe';Byte '\x5d';Byte '\xd7';Byte '\x53';Byte '\xc7';Byte '\xc8';Byte '\xdc';Byte '\x97';Byte '\x61';Byte '\xfd';Byte '\xa8';Byte '\x25';Byte '\x59';Byte '\x44';Byte '\x49';Byte '\x41';Byte '\x49';Byte '\x4c';Byte '\x56';Byte '\x52';Byte '\x5a';Byte '\x58';Byte '\x50';Byte '\x54';Byte '\x49';Byte '\x4c';Byte '\x4f';Byte '\x57';Byte '\x57';Byte '\x54';Byte '\x00';Byte '\x37';Byte '\x6d';Byte '\x17';Byte '\xe2';Byte '\xe0';Byte '\x6a';Byte '\x0d';Byte '\x7a';Byte '\x32';Byte '\x06';Byte '\x6e';Byte '\x54';Byte '\x78';Byte '\x3c';Byte '\x04';Byte '\x1a';Byte '\x6c';Byte '\x0f';Byte '\x60';Byte '\xec';Byte '\x64';Byte '\xca';Byte '\xba';Byte '\x65';Byte '\x52';Byte '\x47';Byte '\x48';Byte '\x52';Byte '\x48';Byte '\x41';Byte '\x56';Byte '\x56';Byte '\x56';Byte '\x44';Byte '\x4d';Byte '\x53';Byte '\x42';Byte '\x4a';Byte '\x53';Byte '\x00';Byte '\x57';Byte '\x48';Byte '\x52';Byte '\x55';Byte '\x46';Byte '\x50';Byte '\x4e';Byte '\x43';Byte '\x51';Byte '\x44';Byte '\x53';Byte '\x44';Byte '\x55';Byte '\x4c';Byte '\x55';Byte '\x5a';Byte '\x46';Byte '\x42';Byte '\x52';Byte '\x00';Byte '\x50';Byte '\x4d';Byte '\x46';Byte '\x54';Byte '\x52';Byte '\x51';Byte '\x5a';Byte '\x51';Byte '\x55';Byte '\x43';Byte '\x4c';Byte '\x4e';Byte '\x45';Byte '\x58';Byte '\x46';Byte '\x55';Byte '\x53';Byte '\x46';Byte '\x4d';Byte '\x4c';Byte '\x00';Byte '\x44';Byte '\x45';Byte '\x45';Byte '\x48';Byte '\x45';Byte '\x58';Byte '\x42';Byte '\x4e';Byte '\x43';Byte '\x57';Byte '\x46';Byte '\x4a';Byte '\x59';Byte '\x55';Byte '\x45';Byte '\x4e';Byte '\x44';Byte '\x4a';Byte '\x00';Byte '\x4c';Byte '\x4f';Byte '\x4f';Byte '\x47';Byte '\x47';Byte '\x4b';Byte '\x4b';Byte '\x4c';Byte '\x43';Byte '\x4a';Byte '\x53';Byte '\x42';Byte '\x58';Byte '\x53';Byte '\x42';Byte '\x58';Byte '\x4a';Byte '\x00';Byte '\x4d';Byte '\x5a';Byte '\x52';Byte '\x47';Byte '\x47';Byte '\x43';Byte '\x46';Byte '\x49';Byte '\x54';Byte '\x52';Byte '\x42';Byte '\x51';Byte '\x45';Byte '\x50';Byte '\x4c';Byte '\x44';Byte '\x46';Byte '\x42';Byte '\x50';Byte '\x00';Byte '\xdf';Byte '\x48';Byte '\xf6';Byte '\x8d';Byte '\x4a';Byte '\x52';Byte '\xe7';Byte '\x0a';Byte '\xcb';Byte '\x63';Byte '\xf8';Byte '\xfb';Byte '\xb7';Byte '\x82';Byte '\xee';Byte '\x00';Byte '\x41';Byte '\x57';Byte '\x4b';Byte '\x44';Byte '\x58';Byte '\x4f';Byte '\x59';Byte '\x59';Byte '\x4e';Byte '\x4a';Byte '\x4e';Byte '\x57';Byte '\x59';Byte '\x00';Byte '\x4b';Byte '\x79';Byte '\x7e';Byte '\x2d';Byte '\xb5';Byte '\x54';Byte '\x62';Byte '\x6a';Byte '\x55';Byte '\x47';Byte '\x52';Byte '\x47';Byte '\x4e';Byte '\x4b';Byte '\x47';Byte '\x46';Byte '\x58';Byte '\x4a';Byte '\x4e';Byte '\x00';Byte '\x54';Byte '\x46';Byte '\x48';Byte '\x55';Byte '\x49';Byte '\x5a';Byte '\x5a';Byte '\x4e';Byte '\x41';Byte '\x4b';Byte '\x58';Byte '\x49';Byte '\x52';Byte '\x58';Byte '\x59';Byte '\x55';Byte '\x48';Byte '\x00';Byte '\x06';Byte '\x1d';Byte '\xaf';Byte '\x47';Byte '\xa5';Byte '\xed';Byte '\xc3';Byte '\x19';]
let test_11_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400048L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40008eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000cfL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f4L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000fcL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400137L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400160L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001a9L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001ddL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_12 = [
  data "AAAAAADC" [
    Quad (Lit 1805142935925671545L);
  ];
  data "AAAAAADD" [
    Asciz ("PAWLTIATQNQ");
    Asciz ("ICERHEWDVEQMI");
    Quad (Lit 8768617765524418382L);
    Asciz ("VDUNVWEWQQL");
  ];
  data "AAAAAADE" [
    Quad (Lit 730647928199706433L);
    Quad (Lit 1464966698339261590L);
    Quad (Lit 126995284547536385L);
    Quad (Lit 1744254645743607747L);
    Quad (Lit 8064572270244816106L);
  ];
  data "AAAAAADF" [
    Asciz ("NVBEMBETOURNSR");
    Asciz ("RYDDASYJVXUTCKFXBL");
    Quad (Lit 2576613348195656946L);
    Quad (Lit 4910936169223832983L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAADC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAADD"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAADE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAADF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAADG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAADH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAADI"); ~%Rax];
];
  data "AAAAAADG" [
    Quad (Lit 7740771539487728183L);
    Quad (Lit 3772172369249002157L);
    Quad (Lit 7724121572247961097L);
    Quad (Lit 8335872267439825013L);
    Quad (Lit 4632264712799253721L);
    Quad (Lit 7654735217423546748L);
  ];
  data "AAAAAADH" [
    Quad (Lit 893536936610463966L);
    Asciz ("MPXXJFVBRSLLZHOAFF");
    Asciz ("XVUZHRGAONZDPZA");
    Quad (Lit 3395061498366440622L);
  ];
  data "AAAAAADI" [
    Quad (Lit 383116973096491581L);
    Asciz ("LEXNHDHUHP");
    Asciz ("PZDMRWATCCO");
  ];
]
let test_12_data = [Byte '\x79';Byte '\xc6';Byte '\xa7';Byte '\xa8';Byte '\xef';Byte '\x27';Byte '\x0d';Byte '\x19';Byte '\x50';Byte '\x41';Byte '\x57';Byte '\x4c';Byte '\x54';Byte '\x49';Byte '\x41';Byte '\x54';Byte '\x51';Byte '\x4e';Byte '\x51';Byte '\x00';Byte '\x49';Byte '\x43';Byte '\x45';Byte '\x52';Byte '\x48';Byte '\x45';Byte '\x57';Byte '\x44';Byte '\x56';Byte '\x45';Byte '\x51';Byte '\x4d';Byte '\x49';Byte '\x00';Byte '\x4e';Byte '\x2f';Byte '\x43';Byte '\x4d';Byte '\x66';Byte '\x63';Byte '\xb0';Byte '\x79';Byte '\x56';Byte '\x44';Byte '\x55';Byte '\x4e';Byte '\x56';Byte '\x57';Byte '\x45';Byte '\x57';Byte '\x51';Byte '\x51';Byte '\x4c';Byte '\x00';Byte '\x41';Byte '\xf7';Byte '\x37';Byte '\x68';Byte '\x6b';Byte '\xc8';Byte '\x23';Byte '\x0a';Byte '\x96';Byte '\xdc';Byte '\x49';Byte '\x4e';Byte '\x73';Byte '\x9b';Byte '\x54';Byte '\x14';Byte '\x01';Byte '\x06';Byte '\x9b';Byte '\xd7';Byte '\x89';Byte '\x2d';Byte '\xc3';Byte '\x01';Byte '\xc3';Byte '\x5f';Byte '\x5f';Byte '\xdd';Byte '\x5b';Byte '\xd6';Byte '\x34';Byte '\x18';Byte '\xea';Byte '\x64';Byte '\x68';Byte '\x79';Byte '\xc0';Byte '\x1d';Byte '\xeb';Byte '\x6f';Byte '\x4e';Byte '\x56';Byte '\x42';Byte '\x45';Byte '\x4d';Byte '\x42';Byte '\x45';Byte '\x54';Byte '\x4f';Byte '\x55';Byte '\x52';Byte '\x4e';Byte '\x53';Byte '\x52';Byte '\x00';Byte '\x52';Byte '\x59';Byte '\x44';Byte '\x44';Byte '\x41';Byte '\x53';Byte '\x59';Byte '\x4a';Byte '\x56';Byte '\x58';Byte '\x55';Byte '\x54';Byte '\x43';Byte '\x4b';Byte '\x46';Byte '\x58';Byte '\x42';Byte '\x4c';Byte '\x00';Byte '\xf2';Byte '\x64';Byte '\xbb';Byte '\x4e';Byte '\x30';Byte '\xf8';Byte '\xc1';Byte '\x23';Byte '\x97';Byte '\x45';Byte '\x34';Byte '\x39';Byte '\x6d';Byte '\x26';Byte '\x27';Byte '\x44';Byte '\x37';Byte '\xa2';Byte '\x9e';Byte '\xea';Byte '\xb3';Byte '\xbe';Byte '\x6c';Byte '\x6b';Byte '\xad';Byte '\x62';Byte '\xa1';Byte '\xb4';Byte '\xc8';Byte '\x72';Byte '\x59';Byte '\x34';Byte '\x09';Byte '\x7e';Byte '\xc5';Byte '\x53';Byte '\xa5';Byte '\x97';Byte '\x31';Byte '\x6b';Byte '\x75';Byte '\xe0';Byte '\xc7';Byte '\x71';Byte '\xa9';Byte '\xf7';Byte '\xae';Byte '\x73';Byte '\xd9';Byte '\xf4';Byte '\xf9';Byte '\xa7';Byte '\x36';Byte '\x1c';Byte '\x49';Byte '\x40';Byte '\x7c';Byte '\xf9';Byte '\x33';Byte '\xac';Byte '\x1f';Byte '\x15';Byte '\x3b';Byte '\x6a';Byte '\xde';Byte '\x80';Byte '\x5b';Byte '\x14';Byte '\x1c';Byte '\x7b';Byte '\x66';Byte '\x0c';Byte '\x4d';Byte '\x50';Byte '\x58';Byte '\x58';Byte '\x4a';Byte '\x46';Byte '\x56';Byte '\x42';Byte '\x52';Byte '\x53';Byte '\x4c';Byte '\x4c';Byte '\x5a';Byte '\x48';Byte '\x4f';Byte '\x41';Byte '\x46';Byte '\x46';Byte '\x00';Byte '\x58';Byte '\x56';Byte '\x55';Byte '\x5a';Byte '\x48';Byte '\x52';Byte '\x47';Byte '\x41';Byte '\x4f';Byte '\x4e';Byte '\x5a';Byte '\x44';Byte '\x50';Byte '\x5a';Byte '\x41';Byte '\x00';Byte '\xae';Byte '\xb4';Byte '\xbc';Byte '\xe8';Byte '\x71';Byte '\xae';Byte '\x1d';Byte '\x2f';Byte '\x3d';Byte '\xda';Byte '\xd6';Byte '\x70';Byte '\xdb';Byte '\x1a';Byte '\x51';Byte '\x05';Byte '\x4c';Byte '\x45';Byte '\x58';Byte '\x4e';Byte '\x48';Byte '\x44';Byte '\x48';Byte '\x55';Byte '\x48';Byte '\x50';Byte '\x00';Byte '\x50';Byte '\x5a';Byte '\x44';Byte '\x4d';Byte '\x52';Byte '\x57';Byte '\x41';Byte '\x54';Byte '\x43';Byte '\x43';Byte '\x4f';Byte '\x00';]
let test_12_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400038L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400040L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40006eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400096L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c8L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f8L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40012bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_13 = [
  data "AAAAAADJ" [
    Quad (Lit 1400404938506962984L);
    Asciz ("NKVBNIOWJBJC");
    Quad (Lit 2475043207739326871L);
    Quad (Lit 5328803012696528103L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAADJ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAADK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAADL"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAADM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAADN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAADO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAADP"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAADQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAADR"); ~%Rax];
];
  data "AAAAAADK" [
    Asciz ("CJHFRFYNDQWA");
    Asciz ("ZNSFLXQLJMTO");
    Asciz ("EFKNIKSNFWOS");
    Asciz ("RDHXFNXPRN");
    Quad (Lit 6447331188419763844L);
    Quad (Lit 967964526982029042L);
  ];
  data "AAAAAADL" [
    Asciz ("NHEBYZLMRZI");
    Asciz ("VUHXMEKKJDG");
    Quad (Lit 6441210346128707624L);
    Asciz ("LALTQDJYASA");
    Asciz ("UDQWTFPZTQA");
  ];
  data "AAAAAADM" [
    Quad (Lit 7071701697653707563L);
    Asciz ("CCWTSXOZBPTOT");
    Quad (Lit 4746026103378231717L);
    Asciz ("PYJCAZZLDXWZEOA");
  ];
  data "AAAAAADN" [
    Asciz ("LVFURUPZYTTTD");
    Quad (Lit 9088793657854682581L);
    Quad (Lit 6058723615812391799L);
    Asciz ("HRLXSHMMABVCCCRPHE");
  ];
  data "AAAAAADO" [
    Asciz ("RJYKFHWXGESWF");
    Quad (Lit 4692983870460318341L);
    Quad (Lit 5510913640922927772L);
  ];
  data "AAAAAADP" [
    Quad (Lit 8169289261725790786L);
  ];
  data "AAAAAADQ" [
    Asciz ("EYCTPDPSESYOTHOQDHO");
    Quad (Lit 1304397745051669261L);
    Quad (Lit 5786700602618063117L);
    Quad (Lit 8081859716278790186L);
    Asciz ("PFQEVOPWQPT");
    Quad (Lit 8699791204920757214L);
  ];
  data "AAAAAADR" [
    Asciz ("SHEYFKCTNWQPM");
  ];
]
let test_13_data = [Byte '\x28';Byte '\x08';Byte '\x69';Byte '\x35';Byte '\xdf';Byte '\x3c';Byte '\x6f';Byte '\x13';Byte '\x4e';Byte '\x4b';Byte '\x56';Byte '\x42';Byte '\x4e';Byte '\x49';Byte '\x4f';Byte '\x57';Byte '\x4a';Byte '\x42';Byte '\x4a';Byte '\x43';Byte '\x00';Byte '\x97';Byte '\xc1';Byte '\x0b';Byte '\x21';Byte '\xaf';Byte '\x1e';Byte '\x59';Byte '\x22';Byte '\xe7';Byte '\xd4';Byte '\xce';Byte '\x59';Byte '\x1b';Byte '\xb6';Byte '\xf3';Byte '\x49';Byte '\x43';Byte '\x4a';Byte '\x48';Byte '\x46';Byte '\x52';Byte '\x46';Byte '\x59';Byte '\x4e';Byte '\x44';Byte '\x51';Byte '\x57';Byte '\x41';Byte '\x00';Byte '\x5a';Byte '\x4e';Byte '\x53';Byte '\x46';Byte '\x4c';Byte '\x58';Byte '\x51';Byte '\x4c';Byte '\x4a';Byte '\x4d';Byte '\x54';Byte '\x4f';Byte '\x00';Byte '\x45';Byte '\x46';Byte '\x4b';Byte '\x4e';Byte '\x49';Byte '\x4b';Byte '\x53';Byte '\x4e';Byte '\x46';Byte '\x57';Byte '\x4f';Byte '\x53';Byte '\x00';Byte '\x52';Byte '\x44';Byte '\x48';Byte '\x58';Byte '\x46';Byte '\x4e';Byte '\x58';Byte '\x50';Byte '\x52';Byte '\x4e';Byte '\x00';Byte '\x84';Byte '\x9e';Byte '\x0e';Byte '\x73';Byte '\x8e';Byte '\x85';Byte '\x79';Byte '\x59';Byte '\xf2';Byte '\x5e';Byte '\xf1';Byte '\xd9';Byte '\x9b';Byte '\xe6';Byte '\x6e';Byte '\x0d';Byte '\x4e';Byte '\x48';Byte '\x45';Byte '\x42';Byte '\x59';Byte '\x5a';Byte '\x4c';Byte '\x4d';Byte '\x52';Byte '\x5a';Byte '\x49';Byte '\x00';Byte '\x56';Byte '\x55';Byte '\x48';Byte '\x58';Byte '\x4d';Byte '\x45';Byte '\x4b';Byte '\x4b';Byte '\x4a';Byte '\x44';Byte '\x47';Byte '\x00';Byte '\x28';Byte '\x90';Byte '\x92';Byte '\xcc';Byte '\xae';Byte '\xc6';Byte '\x63';Byte '\x59';Byte '\x4c';Byte '\x41';Byte '\x4c';Byte '\x54';Byte '\x51';Byte '\x44';Byte '\x4a';Byte '\x59';Byte '\x41';Byte '\x53';Byte '\x41';Byte '\x00';Byte '\x55';Byte '\x44';Byte '\x51';Byte '\x57';Byte '\x54';Byte '\x46';Byte '\x50';Byte '\x5a';Byte '\x54';Byte '\x51';Byte '\x41';Byte '\x00';Byte '\x2b';Byte '\x13';Byte '\x2d';Byte '\xfe';Byte '\x39';Byte '\xbb';Byte '\x23';Byte '\x62';Byte '\x43';Byte '\x43';Byte '\x57';Byte '\x54';Byte '\x53';Byte '\x58';Byte '\x4f';Byte '\x5a';Byte '\x42';Byte '\x50';Byte '\x54';Byte '\x4f';Byte '\x54';Byte '\x00';Byte '\xa5';Byte '\x41';Byte '\x97';Byte '\x72';Byte '\x98';Byte '\x45';Byte '\xdd';Byte '\x41';Byte '\x50';Byte '\x59';Byte '\x4a';Byte '\x43';Byte '\x41';Byte '\x5a';Byte '\x5a';Byte '\x4c';Byte '\x44';Byte '\x58';Byte '\x57';Byte '\x5a';Byte '\x45';Byte '\x4f';Byte '\x41';Byte '\x00';Byte '\x4c';Byte '\x56';Byte '\x46';Byte '\x55';Byte '\x52';Byte '\x55';Byte '\x50';Byte '\x5a';Byte '\x59';Byte '\x54';Byte '\x54';Byte '\x54';Byte '\x44';Byte '\x00';Byte '\xd5';Byte '\x65';Byte '\x40';Byte '\x65';Byte '\xad';Byte '\xe1';Byte '\x21';Byte '\x7e';Byte '\x77';Byte '\x93';Byte '\xc4';Byte '\x30';Byte '\x07';Byte '\xe9';Byte '\x14';Byte '\x54';Byte '\x48';Byte '\x52';Byte '\x4c';Byte '\x58';Byte '\x53';Byte '\x48';Byte '\x4d';Byte '\x4d';Byte '\x41';Byte '\x42';Byte '\x56';Byte '\x43';Byte '\x43';Byte '\x43';Byte '\x52';Byte '\x50';Byte '\x48';Byte '\x45';Byte '\x00';Byte '\x52';Byte '\x4a';Byte '\x59';Byte '\x4b';Byte '\x46';Byte '\x48';Byte '\x57';Byte '\x58';Byte '\x47';Byte '\x45';Byte '\x53';Byte '\x57';Byte '\x46';Byte '\x00';Byte '\x85';Byte '\xd2';Byte '\x6c';Byte '\x37';Byte '\xf7';Byte '\xd3';Byte '\x20';Byte '\x41';Byte '\x9c';Byte '\xd2';Byte '\x10';Byte '\x23';Byte '\xc2';Byte '\xb2';Byte '\x7a';Byte '\x4c';Byte '\x42';Byte '\x32';Byte '\x94';Byte '\x00';Byte '\x4d';Byte '\x25';Byte '\x5f';Byte '\x71';Byte '\x45';Byte '\x59';Byte '\x43';Byte '\x54';Byte '\x50';Byte '\x44';Byte '\x50';Byte '\x53';Byte '\x45';Byte '\x53';Byte '\x59';Byte '\x4f';Byte '\x54';Byte '\x48';Byte '\x4f';Byte '\x51';Byte '\x44';Byte '\x48';Byte '\x4f';Byte '\x00';Byte '\x0d';Byte '\x13';Byte '\xa0';Byte '\x8f';Byte '\xd6';Byte '\x26';Byte '\x1a';Byte '\x12';Byte '\x0d';Byte '\xa9';Byte '\x96';Byte '\xf0';Byte '\x89';Byte '\x7d';Byte '\x4e';Byte '\x50';Byte '\x2a';Byte '\x28';Byte '\x56';Byte '\xa9';Byte '\x97';Byte '\x88';Byte '\x28';Byte '\x70';Byte '\x50';Byte '\x46';Byte '\x51';Byte '\x45';Byte '\x56';Byte '\x4f';Byte '\x50';Byte '\x57';Byte '\x51';Byte '\x50';Byte '\x54';Byte '\x00';Byte '\xde';Byte '\x8b';Byte '\x5e';Byte '\xe5';Byte '\x01';Byte '\xde';Byte '\xbb';Byte '\x78';Byte '\x53';Byte '\x48';Byte '\x45';Byte '\x59';Byte '\x46';Byte '\x4b';Byte '\x43';Byte '\x54';Byte '\x4e';Byte '\x57';Byte '\x51';Byte '\x50';Byte '\x4d';Byte '\x00';]
let test_13_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400048L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40006dL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000afL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000e7L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400115L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400146L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400164L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40016cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001acL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_14 = [
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAADS"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAADT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAADU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAADV"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAADW"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAADX"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAADY"); ~%Rax];
];
  data "AAAAAADS" [
    Asciz ("BKEDJWVPRIERYEMEQQ");
    Asciz ("KWSGVPCNLTD");
    Quad (Lit 3664724899036424730L);
    Quad (Lit 3780794141783451584L);
  ];
  data "AAAAAADT" [
    Asciz ("ZBTZNYKAXLPGPAZ");
    Quad (Lit 9063972020534696020L);
  ];
  data "AAAAAADU" [
    Quad (Lit 3216761190928987997L);
    Quad (Lit 5297012645780628505L);
    Asciz ("ITIKIYAMFTWQIV");
    Quad (Lit 8611754705747580578L);
    Quad (Lit 5867199329495987343L);
  ];
  data "AAAAAADV" [
    Asciz ("IWVDCEBCFGUMMC");
    Asciz ("FLFEGORIQXKQQOEQQSM");
    Quad (Lit 6595752936455364785L);
    Quad (Lit 665124364803667078L);
    Asciz ("NZORFWCZPOCHLWBSQ");
    Asciz ("VDDJISPYDJNGSKY");
  ];
  data "AAAAAADW" [
    Asciz ("ABSKSRGXIAJCRDFSYLIW");
    Asciz ("WVPEAWQVOXBQQDE");
    Asciz ("ZVCWCABOBRIDUXX");
    Asciz ("BJGIFSPPHZQGXNBC");
  ];
  data "AAAAAADX" [
    Quad (Lit 4870344599092305069L);
    Quad (Lit 5245966955323268582L);
    Quad (Lit 4651855595059479669L);
    Asciz ("QGDLHTVOHYGUH");
    Quad (Lit 5571125369622548560L);
    Quad (Lit 5000660360305400213L);
  ];
  data "AAAAAADY" [
    Quad (Lit 6507245824351759481L);
  ];
]
let test_14_data = [Byte '\x42';Byte '\x4b';Byte '\x45';Byte '\x44';Byte '\x4a';Byte '\x57';Byte '\x56';Byte '\x50';Byte '\x52';Byte '\x49';Byte '\x45';Byte '\x52';Byte '\x59';Byte '\x45';Byte '\x4d';Byte '\x45';Byte '\x51';Byte '\x51';Byte '\x00';Byte '\x4b';Byte '\x57';Byte '\x53';Byte '\x47';Byte '\x56';Byte '\x50';Byte '\x43';Byte '\x4e';Byte '\x4c';Byte '\x54';Byte '\x44';Byte '\x00';Byte '\x1a';Byte '\x6a';Byte '\x98';Byte '\x0e';Byte '\xe1';Byte '\xb7';Byte '\xdb';Byte '\x32';Byte '\xc0';Byte '\x67';Byte '\xe1';Byte '\x8d';Byte '\x3d';Byte '\x14';Byte '\x78';Byte '\x34';Byte '\x5a';Byte '\x42';Byte '\x54';Byte '\x5a';Byte '\x4e';Byte '\x59';Byte '\x4b';Byte '\x41';Byte '\x58';Byte '\x4c';Byte '\x50';Byte '\x47';Byte '\x50';Byte '\x41';Byte '\x5a';Byte '\x00';Byte '\x54';Byte '\xd8';Byte '\x0c';Byte '\x9a';Byte '\x87';Byte '\xb2';Byte '\xc9';Byte '\x7d';Byte '\x5d';Byte '\xb7';Byte '\x95';Byte '\x90';Byte '\x42';Byte '\x3b';Byte '\xa4';Byte '\x2c';Byte '\x19';Byte '\xa4';Byte '\x81';Byte '\xc2';Byte '\xef';Byte '\xc4';Byte '\x82';Byte '\x49';Byte '\x49';Byte '\x54';Byte '\x49';Byte '\x4b';Byte '\x49';Byte '\x59';Byte '\x41';Byte '\x4d';Byte '\x46';Byte '\x54';Byte '\x57';Byte '\x51';Byte '\x49';Byte '\x56';Byte '\x00';Byte '\xa2';Byte '\x16';Byte '\xe2';Byte '\x20';Byte '\x47';Byte '\x19';Byte '\x83';Byte '\x77';Byte '\x8f';Byte '\xb4';Byte '\x04';Byte '\x55';Byte '\xb4';Byte '\x7a';Byte '\x6c';Byte '\x51';Byte '\x49';Byte '\x57';Byte '\x56';Byte '\x44';Byte '\x43';Byte '\x45';Byte '\x42';Byte '\x43';Byte '\x46';Byte '\x47';Byte '\x55';Byte '\x4d';Byte '\x4d';Byte '\x43';Byte '\x00';Byte '\x46';Byte '\x4c';Byte '\x46';Byte '\x45';Byte '\x47';Byte '\x4f';Byte '\x52';Byte '\x49';Byte '\x51';Byte '\x58';Byte '\x4b';Byte '\x51';Byte '\x51';Byte '\x4f';Byte '\x45';Byte '\x51';Byte '\x51';Byte '\x53';Byte '\x4d';Byte '\x00';Byte '\xb1';Byte '\x60';Byte '\xa9';Byte '\x93';Byte '\x59';Byte '\xd2';Byte '\x88';Byte '\x5b';Byte '\x86';Byte '\x74';Byte '\x94';Byte '\xf7';Byte '\x15';Byte '\xff';Byte '\x3a';Byte '\x09';Byte '\x4e';Byte '\x5a';Byte '\x4f';Byte '\x52';Byte '\x46';Byte '\x57';Byte '\x43';Byte '\x5a';Byte '\x50';Byte '\x4f';Byte '\x43';Byte '\x48';Byte '\x4c';Byte '\x57';Byte '\x42';Byte '\x53';Byte '\x51';Byte '\x00';Byte '\x56';Byte '\x44';Byte '\x44';Byte '\x4a';Byte '\x49';Byte '\x53';Byte '\x50';Byte '\x59';Byte '\x44';Byte '\x4a';Byte '\x4e';Byte '\x47';Byte '\x53';Byte '\x4b';Byte '\x59';Byte '\x00';Byte '\x41';Byte '\x42';Byte '\x53';Byte '\x4b';Byte '\x53';Byte '\x52';Byte '\x47';Byte '\x58';Byte '\x49';Byte '\x41';Byte '\x4a';Byte '\x43';Byte '\x52';Byte '\x44';Byte '\x46';Byte '\x53';Byte '\x59';Byte '\x4c';Byte '\x49';Byte '\x57';Byte '\x00';Byte '\x57';Byte '\x56';Byte '\x50';Byte '\x45';Byte '\x41';Byte '\x57';Byte '\x51';Byte '\x56';Byte '\x4f';Byte '\x58';Byte '\x42';Byte '\x51';Byte '\x51';Byte '\x44';Byte '\x45';Byte '\x00';Byte '\x5a';Byte '\x56';Byte '\x43';Byte '\x57';Byte '\x43';Byte '\x41';Byte '\x42';Byte '\x4f';Byte '\x42';Byte '\x52';Byte '\x49';Byte '\x44';Byte '\x55';Byte '\x58';Byte '\x58';Byte '\x00';Byte '\x42';Byte '\x4a';Byte '\x47';Byte '\x49';Byte '\x46';Byte '\x53';Byte '\x50';Byte '\x50';Byte '\x48';Byte '\x5a';Byte '\x51';Byte '\x47';Byte '\x58';Byte '\x4e';Byte '\x42';Byte '\x43';Byte '\x00';Byte '\xad';Byte '\x9c';Byte '\xa3';Byte '\xd2';Byte '\x9b';Byte '\xf0';Byte '\x96';Byte '\x43';Byte '\xe6';Byte '\x1d';Byte '\x7b';Byte '\xcb';Byte '\x26';Byte '\x6b';Byte '\xcd';Byte '\x48';Byte '\x75';Byte '\x04';Byte '\xef';Byte '\x61';Byte '\x04';Byte '\xb6';Byte '\x8e';Byte '\x40';Byte '\x51';Byte '\x47';Byte '\x44';Byte '\x4c';Byte '\x48';Byte '\x54';Byte '\x56';Byte '\x4f';Byte '\x48';Byte '\x59';Byte '\x47';Byte '\x55';Byte '\x48';Byte '\x00';Byte '\x50';Byte '\xd0';Byte '\x84';Byte '\xaf';Byte '\x01';Byte '\x9d';Byte '\x50';Byte '\x4d';Byte '\x95';Byte '\x59';Byte '\x61';Byte '\x62';Byte '\x1a';Byte '\xea';Byte '\x65';Byte '\x45';Byte '\x79';Byte '\x6c';Byte '\xa1';Byte '\xb2';Byte '\x99';Byte '\x61';Byte '\x4e';Byte '\x5a';]
let test_14_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400038L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400067L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40007fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000aeL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400103L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400149L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40017fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_15 = [
  data "AAAAAADZ" [
    Asciz ("DFBNVXODRZHGQJJMY");
    Quad (Lit 3520801877656443252L);
    Asciz ("CBVJABDYCKMURESDSWT");
    Quad (Lit 5430821043860481975L);
  ];
  data "AAAAAAEA" [
    Quad (Lit 4295715254006647369L);
    Quad (Lit 847621934667237219L);
    Asciz ("KLBBMXNIZCXAXVZXXIH");
    Asciz ("LQPOEJULWUAJNXMI");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAADZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAEA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAEB"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAEC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAED"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAEE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAEF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAEG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAEH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAEI"); ~%Rax];
];
  data "AAAAAAEB" [
    Asciz ("MKPHLZKROWAZPC");
    Asciz ("BNAICKVSKIUUW");
    Quad (Lit 1439421855226764196L);
    Quad (Lit 7419415894477091803L);
  ];
  data "AAAAAAEC" [
    Asciz ("KXNZHUVKAZRRX");
  ];
  data "AAAAAAED" [
    Asciz ("KZQRVXOKZSAKGSFA");
  ];
  data "AAAAAAEE" [
    Asciz ("OHQIMRNWCGDATC");
    Quad (Lit 3435344965600393117L);
    Asciz ("SYTYQOSJTFMODNNHI");
    Asciz ("INFKCHBXNTKVRJLVT");
  ];
  data "AAAAAAEF" [
    Quad (Lit 4828680115883851762L);
    Asciz ("MNRKCBICSEZLVOXMXRN");
    Asciz ("DGTXZUINNPT");
    Asciz ("PSPGAKURPCVBO");
    Quad (Lit 1153334404778690467L);
    Quad (Lit 1184432498287614344L);
  ];
  data "AAAAAAEG" [
    Asciz ("TMIOQFXIKGDZNVHGKIR");
  ];
  data "AAAAAAEH" [
    Asciz ("JGEDHYTUOI");
    Quad (Lit 6614257259282461824L);
    Asciz ("GDZAWCWDTBNDZUGVQ");
  ];
  data "AAAAAAEI" [
    Quad (Lit 7749529909071098841L);
  ];
]
let test_15_data = [Byte '\x44';Byte '\x46';Byte '\x42';Byte '\x4e';Byte '\x56';Byte '\x58';Byte '\x4f';Byte '\x44';Byte '\x52';Byte '\x5a';Byte '\x48';Byte '\x47';Byte '\x51';Byte '\x4a';Byte '\x4a';Byte '\x4d';Byte '\x59';Byte '\x00';Byte '\x74';Byte '\x99';Byte '\x3d';Byte '\x5a';Byte '\xa7';Byte '\x66';Byte '\xdc';Byte '\x30';Byte '\x43';Byte '\x42';Byte '\x56';Byte '\x4a';Byte '\x41';Byte '\x42';Byte '\x44';Byte '\x59';Byte '\x43';Byte '\x4b';Byte '\x4d';Byte '\x55';Byte '\x52';Byte '\x45';Byte '\x53';Byte '\x44';Byte '\x53';Byte '\x57';Byte '\x54';Byte '\x00';Byte '\xb7';Byte '\x27';Byte '\x05';Byte '\x36';Byte '\xf7';Byte '\x26';Byte '\x5e';Byte '\x4b';Byte '\x49';Byte '\x0a';Byte '\x4b';Byte '\x8b';Byte '\x43';Byte '\x72';Byte '\x9d';Byte '\x3b';Byte '\x63';Byte '\x87';Byte '\xab';Byte '\x9f';Byte '\xa8';Byte '\x5b';Byte '\xc3';Byte '\x0b';Byte '\x4b';Byte '\x4c';Byte '\x42';Byte '\x42';Byte '\x4d';Byte '\x58';Byte '\x4e';Byte '\x49';Byte '\x5a';Byte '\x43';Byte '\x58';Byte '\x41';Byte '\x58';Byte '\x56';Byte '\x5a';Byte '\x58';Byte '\x58';Byte '\x49';Byte '\x48';Byte '\x00';Byte '\x4c';Byte '\x51';Byte '\x50';Byte '\x4f';Byte '\x45';Byte '\x4a';Byte '\x55';Byte '\x4c';Byte '\x57';Byte '\x55';Byte '\x41';Byte '\x4a';Byte '\x4e';Byte '\x58';Byte '\x4d';Byte '\x49';Byte '\x00';Byte '\x4d';Byte '\x4b';Byte '\x50';Byte '\x48';Byte '\x4c';Byte '\x5a';Byte '\x4b';Byte '\x52';Byte '\x4f';Byte '\x57';Byte '\x41';Byte '\x5a';Byte '\x50';Byte '\x43';Byte '\x00';Byte '\x42';Byte '\x4e';Byte '\x41';Byte '\x49';Byte '\x43';Byte '\x4b';Byte '\x56';Byte '\x53';Byte '\x4b';Byte '\x49';Byte '\x55';Byte '\x55';Byte '\x57';Byte '\x00';Byte '\xa4';Byte '\x9b';Byte '\xb9';Byte '\x0a';Byte '\x8d';Byte '\xda';Byte '\xf9';Byte '\x13';Byte '\xdb';Byte '\xb3';Byte '\x31';Byte '\x3f';Byte '\x72';Byte '\x0f';Byte '\xf7';Byte '\x66';Byte '\x4b';Byte '\x58';Byte '\x4e';Byte '\x5a';Byte '\x48';Byte '\x55';Byte '\x56';Byte '\x4b';Byte '\x41';Byte '\x5a';Byte '\x52';Byte '\x52';Byte '\x58';Byte '\x00';Byte '\x4b';Byte '\x5a';Byte '\x51';Byte '\x52';Byte '\x56';Byte '\x58';Byte '\x4f';Byte '\x4b';Byte '\x5a';Byte '\x53';Byte '\x41';Byte '\x4b';Byte '\x47';Byte '\x53';Byte '\x46';Byte '\x41';Byte '\x00';Byte '\x4f';Byte '\x48';Byte '\x51';Byte '\x49';Byte '\x4d';Byte '\x52';Byte '\x4e';Byte '\x57';Byte '\x43';Byte '\x47';Byte '\x44';Byte '\x41';Byte '\x54';Byte '\x43';Byte '\x00';Byte '\x9d';Byte '\xb7';Byte '\x89';Byte '\x83';Byte '\x0b';Byte '\xcc';Byte '\xac';Byte '\x2f';Byte '\x53';Byte '\x59';Byte '\x54';Byte '\x59';Byte '\x51';Byte '\x4f';Byte '\x53';Byte '\x4a';Byte '\x54';Byte '\x46';Byte '\x4d';Byte '\x4f';Byte '\x44';Byte '\x4e';Byte '\x4e';Byte '\x48';Byte '\x49';Byte '\x00';Byte '\x49';Byte '\x4e';Byte '\x46';Byte '\x4b';Byte '\x43';Byte '\x48';Byte '\x42';Byte '\x58';Byte '\x4e';Byte '\x54';Byte '\x4b';Byte '\x56';Byte '\x52';Byte '\x4a';Byte '\x4c';Byte '\x56';Byte '\x54';Byte '\x00';Byte '\xf2';Byte '\xbf';Byte '\x3f';Byte '\x61';Byte '\xfb';Byte '\xea';Byte '\x02';Byte '\x43';Byte '\x4d';Byte '\x4e';Byte '\x52';Byte '\x4b';Byte '\x43';Byte '\x42';Byte '\x49';Byte '\x43';Byte '\x53';Byte '\x45';Byte '\x5a';Byte '\x4c';Byte '\x56';Byte '\x4f';Byte '\x58';Byte '\x4d';Byte '\x58';Byte '\x52';Byte '\x4e';Byte '\x00';Byte '\x44';Byte '\x47';Byte '\x54';Byte '\x58';Byte '\x5a';Byte '\x55';Byte '\x49';Byte '\x4e';Byte '\x4e';Byte '\x50';Byte '\x54';Byte '\x00';Byte '\x50';Byte '\x53';Byte '\x50';Byte '\x47';Byte '\x41';Byte '\x4b';Byte '\x55';Byte '\x52';Byte '\x50';Byte '\x43';Byte '\x56';Byte '\x42';Byte '\x4f';Byte '\x00';Byte '\xa3';Byte '\x07';Byte '\x12';Byte '\xd0';Byte '\x87';Byte '\x77';Byte '\x01';Byte '\x10';Byte '\x88';Byte '\x99';Byte '\xdc';Byte '\xf0';Byte '\x14';Byte '\xf3';Byte '\x6f';Byte '\x10';Byte '\x54';Byte '\x4d';Byte '\x49';Byte '\x4f';Byte '\x51';Byte '\x46';Byte '\x58';Byte '\x49';Byte '\x4b';Byte '\x47';Byte '\x44';Byte '\x5a';Byte '\x4e';Byte '\x56';Byte '\x48';Byte '\x47';Byte '\x4b';Byte '\x49';Byte '\x52';Byte '\x00';Byte '\x4a';Byte '\x47';Byte '\x45';Byte '\x44';Byte '\x48';Byte '\x59';Byte '\x54';Byte '\x55';Byte '\x4f';Byte '\x49';Byte '\x00';Byte '\x80';Byte '\x74';Byte '\x94';Byte '\xf8';Byte '\xee';Byte '\x8f';Byte '\xca';Byte '\x5b';Byte '\x47';Byte '\x44';Byte '\x5a';Byte '\x41';Byte '\x57';Byte '\x43';Byte '\x57';Byte '\x44';Byte '\x54';Byte '\x42';Byte '\x4e';Byte '\x44';Byte '\x5a';Byte '\x55';Byte '\x47';Byte '\x56';Byte '\x51';Byte '\x00';Byte '\xd9';Byte '\xb3';Byte '\x72';Byte '\xbe';Byte '\x64';Byte '\xdc';Byte '\x8b';Byte '\x6b';]
let test_15_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400050L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400086L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000bbL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000e8L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f6L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400107L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400142L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400188L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40019cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001c1L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_16 = [
  data "AAAAAAEJ" [
    Asciz ("JDSZLIZOKAVOCDC");
  ];
  data "AAAAAAEK" [
    Quad (Lit 5030488272184452968L);
  ];
  data "AAAAAAEL" [
    Quad (Lit 1267846574441477173L);
    Quad (Lit 6101912394738908951L);
    Quad (Lit 590033709553196584L);
    Quad (Lit 6865612586124781500L);
    Asciz ("MFQSWPZQUHO");
    Asciz ("FIAIOQGGAH");
  ];
  data "AAAAAAEM" [
    Asciz ("AYBESNDDIAS");
    Asciz ("MRHIPNQPBAFCQT");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAEJ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAEK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAEL"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAEM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAEN"); ~%Rax];
];
  data "AAAAAAEN" [
    Quad (Lit 8385261292012414558L);
    Quad (Lit 7858444196243983199L);
    Quad (Lit 5232773958605333245L);
  ];
]
let test_16_data = [Byte '\x4a';Byte '\x44';Byte '\x53';Byte '\x5a';Byte '\x4c';Byte '\x49';Byte '\x5a';Byte '\x4f';Byte '\x4b';Byte '\x41';Byte '\x56';Byte '\x4f';Byte '\x43';Byte '\x44';Byte '\x43';Byte '\x00';Byte '\x68';Byte '\xa7';Byte '\x52';Byte '\x4e';Byte '\x6e';Byte '\xe2';Byte '\xcf';Byte '\x45';Byte '\x35';Byte '\xb4';Byte '\x47';Byte '\xfb';Byte '\xbd';Byte '\x4b';Byte '\x98';Byte '\x11';Byte '\x17';Byte '\x3f';Byte '\xf7';Byte '\x62';Byte '\xfe';Byte '\x58';Byte '\xae';Byte '\x54';Byte '\x28';Byte '\x9e';Byte '\x6c';Byte '\x5f';Byte '\x88';Byte '\x38';Byte '\x30';Byte '\x08';Byte '\xbc';Byte '\x27';Byte '\x6b';Byte '\x81';Byte '\x45';Byte '\x8e';Byte '\x47';Byte '\x5f';Byte '\x4d';Byte '\x46';Byte '\x51';Byte '\x53';Byte '\x57';Byte '\x50';Byte '\x5a';Byte '\x51';Byte '\x55';Byte '\x48';Byte '\x4f';Byte '\x00';Byte '\x46';Byte '\x49';Byte '\x41';Byte '\x49';Byte '\x4f';Byte '\x51';Byte '\x47';Byte '\x47';Byte '\x41';Byte '\x48';Byte '\x00';Byte '\x41';Byte '\x59';Byte '\x42';Byte '\x45';Byte '\x53';Byte '\x4e';Byte '\x44';Byte '\x44';Byte '\x49';Byte '\x41';Byte '\x53';Byte '\x00';Byte '\x4d';Byte '\x52';Byte '\x48';Byte '\x49';Byte '\x50';Byte '\x4e';Byte '\x51';Byte '\x50';Byte '\x42';Byte '\x41';Byte '\x46';Byte '\x43';Byte '\x51';Byte '\x54';Byte '\x00';Byte '\x5e';Byte '\xa6';Byte '\x3b';Byte '\xd3';Byte '\xb7';Byte '\x6e';Byte '\x5e';Byte '\x74';Byte '\x5f';Byte '\x4b';Byte '\x5a';Byte '\x54';Byte '\x5c';Byte '\xcd';Byte '\x0e';Byte '\x6d';Byte '\xfd';Byte '\xe2';Byte '\x95';Byte '\xe0';Byte '\x30';Byte '\x8c';Byte '\x9e';Byte '\x48';]
let test_16_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400028L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400038L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400040L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400077L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400092L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_17 = [
  data "AAAAAAEO" [
    Quad (Lit 7220117977329691748L);
    Quad (Lit 720715754016846056L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAEO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAEP"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAEQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAER"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAES"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAET"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAEU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAEV"); ~%Rax];
];
  data "AAAAAAEP" [
    Asciz ("RYVIHDVQMOL");
    Asciz ("NRDECMUMNNSISTUJUCY");
    Quad (Lit 2462326159876692867L);
    Asciz ("XAQYEVHNBQ");
    Quad (Lit 3884625258368050889L);
  ];
  data "AAAAAAEQ" [
    Quad (Lit 524774080276657439L);
    Quad (Lit 9087685848448354772L);
    Asciz ("ATAIUKBEGATHSS");
  ];
  data "AAAAAAER" [
    Quad (Lit 9217876780673876293L);
    Quad (Lit 8000928693460929825L);
  ];
  data "AAAAAAES" [
    Quad (Lit 5265175675423190346L);
    Quad (Lit 2052483962589042330L);
    Quad (Lit 2958853731808104677L);
  ];
  data "AAAAAAET" [
    Asciz ("WRSDTSHSJSCCJTWF");
    Quad (Lit 7344684497459138050L);
  ];
  data "AAAAAAEU" [
    Quad (Lit 453423291432120344L);
    Quad (Lit 3466715895750723784L);
    Quad (Lit 1021994853963325741L);
    Quad (Lit 326719573903276717L);
    Asciz ("AKAZZFVVYJDENDITDOAX");
  ];
  data "AAAAAAEV" [
    Asciz ("HVAINDRYGDXYS");
  ];
]
let test_17_data = [Byte '\x64';Byte '\xec';Byte '\x25';Byte '\xeb';Byte '\x0b';Byte '\x03';Byte '\x33';Byte '\x64';Byte '\xe8';Byte '\xb0';Byte '\x33';Byte '\xe6';Byte '\x28';Byte '\x7f';Byte '\x00';Byte '\x0a';Byte '\x52';Byte '\x59';Byte '\x56';Byte '\x49';Byte '\x48';Byte '\x44';Byte '\x56';Byte '\x51';Byte '\x4d';Byte '\x4f';Byte '\x4c';Byte '\x00';Byte '\x4e';Byte '\x52';Byte '\x44';Byte '\x45';Byte '\x43';Byte '\x4d';Byte '\x55';Byte '\x4d';Byte '\x4e';Byte '\x4e';Byte '\x53';Byte '\x49';Byte '\x53';Byte '\x54';Byte '\x55';Byte '\x4a';Byte '\x55';Byte '\x43';Byte '\x59';Byte '\x00';Byte '\x83';Byte '\x1b';Byte '\x9a';Byte '\xb0';Byte '\x98';Byte '\xf0';Byte '\x2b';Byte '\x22';Byte '\x58';Byte '\x41';Byte '\x51';Byte '\x59';Byte '\x45';Byte '\x56';Byte '\x48';Byte '\x4e';Byte '\x42';Byte '\x51';Byte '\x00';Byte '\xc9';Byte '\xa6';Byte '\x89';Byte '\x42';Byte '\x17';Byte '\xf6';Byte '\xe8';Byte '\x35';Byte '\x1f';Byte '\xf5';Byte '\x38';Byte '\xe2';Byte '\x3e';Byte '\x5f';Byte '\x48';Byte '\x07';Byte '\xd4';Byte '\xc9';Byte '\x1b';Byte '\x6b';Byte '\x21';Byte '\xf2';Byte '\x1d';Byte '\x7e';Byte '\x41';Byte '\x54';Byte '\x41';Byte '\x49';Byte '\x55';Byte '\x4b';Byte '\x42';Byte '\x45';Byte '\x47';Byte '\x41';Byte '\x54';Byte '\x48';Byte '\x53';Byte '\x53';Byte '\x00';Byte '\x45';Byte '\x41';Byte '\x63';Byte '\xf7';Byte '\x17';Byte '\x7a';Byte '\xec';Byte '\x7f';Byte '\x21';Byte '\x0d';Byte '\xf8';Byte '\x86';Byte '\x41';Byte '\x02';Byte '\x09';Byte '\x6f';Byte '\x4a';Byte '\x6d';Byte '\xa0';Byte '\x75';Byte '\x61';Byte '\xa9';Byte '\x11';Byte '\x49';Byte '\x9a';Byte '\x56';Byte '\x4e';Byte '\x19';Byte '\x4a';Byte '\xe3';Byte '\x7b';Byte '\x1c';Byte '\xe5';Byte '\xd0';Byte '\xc2';Byte '\xda';Byte '\xca';Byte '\xf5';Byte '\x0f';Byte '\x29';Byte '\x57';Byte '\x52';Byte '\x53';Byte '\x44';Byte '\x54';Byte '\x53';Byte '\x48';Byte '\x53';Byte '\x4a';Byte '\x53';Byte '\x43';Byte '\x43';Byte '\x4a';Byte '\x54';Byte '\x57';Byte '\x46';Byte '\x00';Byte '\x02';Byte '\xce';Byte '\x5e';Byte '\xfa';Byte '\xa2';Byte '\x8f';Byte '\xed';Byte '\x65';Byte '\x18';Byte '\x30';Byte '\xb3';Byte '\xca';Byte '\x14';Byte '\xe2';Byte '\x4a';Byte '\x06';Byte '\xc8';Byte '\x08';Byte '\x6c';Byte '\x5f';Byte '\xbd';Byte '\x3f';Byte '\x1c';Byte '\x30';Byte '\x2d';Byte '\xe1';Byte '\xc2';Byte '\xa8';Byte '\xe7';Byte '\xda';Byte '\x2e';Byte '\x0e';Byte '\xad';Byte '\xfa';Byte '\xab';Byte '\xaf';Byte '\xb8';Byte '\xbd';Byte '\x88';Byte '\x04';Byte '\x41';Byte '\x4b';Byte '\x41';Byte '\x5a';Byte '\x5a';Byte '\x46';Byte '\x56';Byte '\x56';Byte '\x59';Byte '\x4a';Byte '\x44';Byte '\x45';Byte '\x4e';Byte '\x44';Byte '\x49';Byte '\x54';Byte '\x44';Byte '\x4f';Byte '\x41';Byte '\x58';Byte '\x00';Byte '\x48';Byte '\x56';Byte '\x41';Byte '\x49';Byte '\x4e';Byte '\x44';Byte '\x52';Byte '\x59';Byte '\x47';Byte '\x44';Byte '\x58';Byte '\x59';Byte '\x53';Byte '\x00';]
let test_17_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400040L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400050L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40008bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000aaL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000baL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000d2L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000ebL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400120L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_18 = [
  data "AAAAAAEW" [
    Quad (Lit 8430502133296639397L);
    Quad (Lit 4710323284186826178L);
    Asciz ("GZOMJQKBHSUCTSAD");
    Quad (Lit 8656939753969598941L);
    Quad (Lit 9013034970868231969L);
    Quad (Lit 5943276360756452156L);
  ];
  data "AAAAAAEX" [
    Quad (Lit 7240050097319007621L);
    Asciz ("RDBEHZTXPRBCCGYWAB");
  ];
  data "AAAAAAEY" [
    Quad (Lit 9155018598652044486L);
    Quad (Lit 154364148618901582L);
    Asciz ("RAAUPXQPQXVULNGOCIQV");
    Asciz ("KRZKTPWDPMJBGNF");
  ];
  data "AAAAAAEZ" [
    Quad (Lit 8389031428365622310L);
    Quad (Lit 3053225171583215751L);
    Asciz ("GMFWFIMSDAYOVDOBZ");
    Quad (Lit 8983194203193574012L);
    Asciz ("VSSPWEOFOK");
    Quad (Lit 8868502424039824021L);
  ];
  data "AAAAAAFA" [
    Quad (Lit 2575826763427253519L);
    Quad (Lit 8342677353964415557L);
    Asciz ("YKCFEXXCNXTFYYQ");
    Quad (Lit 6905117192792589175L);
    Quad (Lit 1923131942980767136L);
    Quad (Lit 6602761157732850753L);
  ];
  data "AAAAAAFB" [
    Asciz ("GIZWOHMIZWDDIUGK");
  ];
  data "AAAAAAFC" [
    Quad (Lit 1656791995349736084L);
    Asciz ("IBYWJCZXWJSU");
    Quad (Lit 608014219726509349L);
    Asciz ("XCBXETWTCJJADRGKYO");
  ];
  data "AAAAAAFD" [
    Asciz ("AQMKVTFWGLDLJ");
    Quad (Lit 6163049748272712498L);
    Asciz ("IQBWRCOOFDMOTEKAUKJ");
    Asciz ("AKTDZPNWVQL");
    Asciz ("KYQJNJHHCL");
    Asciz ("CPLGLSXBUQGPAPWUOIXF");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAEW"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAEX"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAEY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAEZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAFA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAFB"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAFC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAFD"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAFE"); ~%Rax];
];
  data "AAAAAAFE" [
    Quad (Lit 321177076594886052L);
    Asciz ("KGFILSUDKBANMH");
    Quad (Lit 1139035734432033965L);
    Asciz ("ZXWEILPYSTTROO");
    Quad (Lit 5011360885698397056L);
    Asciz ("RITGIQUDWTYALE");
  ];
]
let test_18_data = [Byte '\xa5';Byte '\xad';Byte '\x51';Byte '\x05';Byte '\x06';Byte '\x29';Byte '\xff';Byte '\x74';Byte '\xc2';Byte '\x05';Byte '\x35';Byte '\x13';Byte '\x12';Byte '\x6e';Byte '\x5e';Byte '\x41';Byte '\x47';Byte '\x5a';Byte '\x4f';Byte '\x4d';Byte '\x4a';Byte '\x51';Byte '\x4b';Byte '\x42';Byte '\x48';Byte '\x53';Byte '\x55';Byte '\x43';Byte '\x54';Byte '\x53';Byte '\x41';Byte '\x44';Byte '\x00';Byte '\xdd';Byte '\xc1';Byte '\x50';Byte '\xfd';Byte '\xd6';Byte '\xa0';Byte '\x23';Byte '\x78';Byte '\x21';Byte '\x2f';Byte '\xc6';Byte '\x8a';Byte '\x8d';Byte '\xbb';Byte '\x14';Byte '\x7d';Byte '\x3c';Byte '\x5b';Byte '\xdd';Byte '\x7c';Byte '\x5c';Byte '\xc2';Byte '\x7a';Byte '\x52';Byte '\x85';Byte '\x55';Byte '\xbb';Byte '\x3e';Byte '\x34';Byte '\xd3';Byte '\x79';Byte '\x64';Byte '\x52';Byte '\x44';Byte '\x42';Byte '\x45';Byte '\x48';Byte '\x5a';Byte '\x54';Byte '\x58';Byte '\x50';Byte '\x52';Byte '\x42';Byte '\x43';Byte '\x43';Byte '\x47';Byte '\x59';Byte '\x57';Byte '\x41';Byte '\x42';Byte '\x00';Byte '\xc6';Byte '\xe4';Byte '\xbf';Byte '\xfc';Byte '\xe8';Byte '\x28';Byte '\x0d';Byte '\x7f';Byte '\x4e';Byte '\x38';Byte '\x7c';Byte '\x14';Byte '\x60';Byte '\x69';Byte '\x24';Byte '\x02';Byte '\x52';Byte '\x41';Byte '\x41';Byte '\x55';Byte '\x50';Byte '\x58';Byte '\x51';Byte '\x50';Byte '\x51';Byte '\x58';Byte '\x56';Byte '\x55';Byte '\x4c';Byte '\x4e';Byte '\x47';Byte '\x4f';Byte '\x43';Byte '\x49';Byte '\x51';Byte '\x56';Byte '\x00';Byte '\x4b';Byte '\x52';Byte '\x5a';Byte '\x4b';Byte '\x54';Byte '\x50';Byte '\x57';Byte '\x44';Byte '\x50';Byte '\x4d';Byte '\x4a';Byte '\x42';Byte '\x47';Byte '\x4e';Byte '\x46';Byte '\x00';Byte '\x26';Byte '\x1c';Byte '\x52';Byte '\x19';Byte '\xa3';Byte '\xd3';Byte '\x6b';Byte '\x74';Byte '\x87';Byte '\xa8';Byte '\x7f';Byte '\xeb';Byte '\x1d';Byte '\x3c';Byte '\x5f';Byte '\x2a';Byte '\x47';Byte '\x4d';Byte '\x46';Byte '\x57';Byte '\x46';Byte '\x49';Byte '\x4d';Byte '\x53';Byte '\x44';Byte '\x41';Byte '\x59';Byte '\x4f';Byte '\x56';Byte '\x44';Byte '\x4f';Byte '\x42';Byte '\x5a';Byte '\x00';Byte '\x7c';Byte '\x82';Byte '\xb3';Byte '\x65';Byte '\x88';Byte '\xb7';Byte '\xaa';Byte '\x7c';Byte '\x56';Byte '\x53';Byte '\x53';Byte '\x50';Byte '\x57';Byte '\x45';Byte '\x4f';Byte '\x46';Byte '\x4f';Byte '\x4b';Byte '\x00';Byte '\x95';Byte '\x9a';Byte '\x95';Byte '\xa2';Byte '\xf7';Byte '\x3f';Byte '\x13';Byte '\x7b';Byte '\x0f';Byte '\x8d';Byte '\x06';Byte '\x45';Byte '\xcb';Byte '\x2c';Byte '\xbf';Byte '\x23';Byte '\x45';Byte '\xaa';Byte '\xbe';Byte '\x1e';Byte '\xda';Byte '\x24';Byte '\xc7';Byte '\x73';Byte '\x59';Byte '\x4b';Byte '\x43';Byte '\x46';Byte '\x45';Byte '\x58';Byte '\x58';Byte '\x43';Byte '\x4e';Byte '\x58';Byte '\x54';Byte '\x46';Byte '\x59';Byte '\x59';Byte '\x51';Byte '\x00';Byte '\x77';Byte '\x43';Byte '\xd8';Byte '\x80';Byte '\x80';Byte '\xe7';Byte '\xd3';Byte '\x5f';Byte '\xa0';Byte '\x4d';Byte '\x93';Byte '\x1d';Byte '\x50';Byte '\x56';Byte '\xb0';Byte '\x1a';Byte '\x41';Byte '\xdc';Byte '\x69';Byte '\x3f';Byte '\x4a';Byte '\xb8';Byte '\xa1';Byte '\x5b';Byte '\x47';Byte '\x49';Byte '\x5a';Byte '\x57';Byte '\x4f';Byte '\x48';Byte '\x4d';Byte '\x49';Byte '\x5a';Byte '\x57';Byte '\x44';Byte '\x44';Byte '\x49';Byte '\x55';Byte '\x47';Byte '\x4b';Byte '\x00';Byte '\x94';Byte '\x1a';Byte '\x88';Byte '\xad';Byte '\x8a';Byte '\x1b';Byte '\xfe';Byte '\x16';Byte '\x49';Byte '\x42';Byte '\x59';Byte '\x57';Byte '\x4a';Byte '\x43';Byte '\x5a';Byte '\x58';Byte '\x57';Byte '\x4a';Byte '\x53';Byte '\x55';Byte '\x00';Byte '\x25';Byte '\x55';Byte '\x2f';Byte '\x21';Byte '\xb6';Byte '\x19';Byte '\x70';Byte '\x08';Byte '\x58';Byte '\x43';Byte '\x42';Byte '\x58';Byte '\x45';Byte '\x54';Byte '\x57';Byte '\x54';Byte '\x43';Byte '\x4a';Byte '\x4a';Byte '\x41';Byte '\x44';Byte '\x52';Byte '\x47';Byte '\x4b';Byte '\x59';Byte '\x4f';Byte '\x00';Byte '\x41';Byte '\x51';Byte '\x4d';Byte '\x4b';Byte '\x56';Byte '\x54';Byte '\x46';Byte '\x57';Byte '\x47';Byte '\x4c';Byte '\x44';Byte '\x4c';Byte '\x4a';Byte '\x00';Byte '\x32';Byte '\x0b';Byte '\xdb';Byte '\xc2';Byte '\x17';Byte '\x8d';Byte '\x87';Byte '\x55';Byte '\x49';Byte '\x51';Byte '\x42';Byte '\x57';Byte '\x52';Byte '\x43';Byte '\x4f';Byte '\x4f';Byte '\x46';Byte '\x44';Byte '\x4d';Byte '\x4f';Byte '\x54';Byte '\x45';Byte '\x4b';Byte '\x41';Byte '\x55';Byte '\x4b';Byte '\x4a';Byte '\x00';Byte '\x41';Byte '\x4b';Byte '\x54';Byte '\x44';Byte '\x5a';Byte '\x50';Byte '\x4e';Byte '\x57';Byte '\x56';Byte '\x51';Byte '\x4c';Byte '\x00';Byte '\x4b';Byte '\x59';Byte '\x51';Byte '\x4a';Byte '\x4e';Byte '\x4a';Byte '\x48';Byte '\x48';Byte '\x43';Byte '\x4c';Byte '\x00';Byte '\x43';Byte '\x50';Byte '\x4c';Byte '\x47';Byte '\x4c';Byte '\x53';Byte '\x58';Byte '\x42';Byte '\x55';Byte '\x51';Byte '\x47';Byte '\x50';Byte '\x41';Byte '\x50';Byte '\x57';Byte '\x55';Byte '\x4f';Byte '\x49';Byte '\x58';Byte '\x46';Byte '\x00';Byte '\xa4';Byte '\xc5';Byte '\x6f';Byte '\x78';Byte '\xd9';Byte '\x0c';Byte '\x75';Byte '\x04';Byte '\x4b';Byte '\x47';Byte '\x46';Byte '\x49';Byte '\x4c';Byte '\x53';Byte '\x55';Byte '\x44';Byte '\x4b';Byte '\x42';Byte '\x41';Byte '\x4e';Byte '\x4d';Byte '\x48';Byte '\x00';Byte '\xad';Byte '\x2c';Byte '\x4c';Byte '\x31';Byte '\xf7';Byte '\xaa';Byte '\xce';Byte '\x0f';Byte '\x5a';Byte '\x58';Byte '\x57';Byte '\x45';Byte '\x49';Byte '\x4c';Byte '\x50';Byte '\x59';Byte '\x53';Byte '\x54';Byte '\x54';Byte '\x52';Byte '\x4f';Byte '\x4f';Byte '\x00';Byte '\x80';Byte '\x03';Byte '\x57';Byte '\x99';Byte '\x2c';Byte '\xee';Byte '\x8b';Byte '\x45';Byte '\x52';Byte '\x49';Byte '\x54';Byte '\x47';Byte '\x49';Byte '\x51';Byte '\x55';Byte '\x44';Byte '\x57';Byte '\x54';Byte '\x59';Byte '\x41';Byte '\x4c';Byte '\x45';Byte '\x00';]
let test_18_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400048L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400081L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40009cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000d1L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40010eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400146L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400157L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400187L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001ddL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_19 = [
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAFF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAFG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAFH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAFI"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAFJ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAFK"); ~%Rax];
];
  data "AAAAAAFF" [
    Quad (Lit 8967928761228053707L);
    Asciz ("HEWARGSOEQCPMMNJUGA");
    Asciz ("JEQIVPEXZJQPK");
    Quad (Lit 8022176773280309512L);
    Asciz ("IXCTLKQULYF");
  ];
  data "AAAAAAFG" [
    Asciz ("KHJRUEBAPIJ");
  ];
  data "AAAAAAFH" [
    Quad (Lit 4090913133576437224L);
    Asciz ("ZYHSPVAJWKQRURH");
    Quad (Lit 7088547463482959894L);
    Asciz ("BUIDWWIXLVKHARQA");
  ];
  data "AAAAAAFI" [
    Asciz ("BRZZYCXFALBVXA");
    Asciz ("XLMZNCPOKGSRL");
    Quad (Lit 1299985064038997389L);
    Quad (Lit 59279624673823633L);
    Quad (Lit 593795904424858349L);
    Quad (Lit 2907520471568817924L);
  ];
  data "AAAAAAFJ" [
    Asciz ("JFEBAGSJSEGBBUU");
    Asciz ("DYQYKMLDCDZYHXJ");
    Quad (Lit 2258107020553090484L);
    Asciz ("GEBPCFOTWZZEC");
  ];
  data "AAAAAAFK" [
    Asciz ("LIXICRAQSXAN");
    Quad (Lit 941640989340946577L);
    Quad (Lit 7744712510321848923L);
    Quad (Lit 1606770301324702837L);
    Asciz ("ACUJPWCOZCXDHUQDI");
    Asciz ("EWHOCQSDLXTMHPLVJ");
  ];
]
let test_19_data = [Byte '\xcb';Byte '\xcc';Byte '\x01';Byte '\xb8';Byte '\xb1';Byte '\x7b';Byte '\x74';Byte '\x7c';Byte '\x48';Byte '\x45';Byte '\x57';Byte '\x41';Byte '\x52';Byte '\x47';Byte '\x53';Byte '\x4f';Byte '\x45';Byte '\x51';Byte '\x43';Byte '\x50';Byte '\x4d';Byte '\x4d';Byte '\x4e';Byte '\x4a';Byte '\x55';Byte '\x47';Byte '\x41';Byte '\x00';Byte '\x4a';Byte '\x45';Byte '\x51';Byte '\x49';Byte '\x56';Byte '\x50';Byte '\x45';Byte '\x58';Byte '\x5a';Byte '\x4a';Byte '\x51';Byte '\x50';Byte '\x4b';Byte '\x00';Byte '\x08';Byte '\x21';Byte '\xc3';Byte '\xa0';Byte '\x45';Byte '\x7f';Byte '\x54';Byte '\x6f';Byte '\x49';Byte '\x58';Byte '\x43';Byte '\x54';Byte '\x4c';Byte '\x4b';Byte '\x51';Byte '\x55';Byte '\x4c';Byte '\x59';Byte '\x46';Byte '\x00';Byte '\x4b';Byte '\x48';Byte '\x4a';Byte '\x52';Byte '\x55';Byte '\x45';Byte '\x42';Byte '\x41';Byte '\x50';Byte '\x49';Byte '\x4a';Byte '\x00';Byte '\xe8';Byte '\xbd';Byte '\xcd';Byte '\x05';Byte '\xd2';Byte '\xd7';Byte '\xc5';Byte '\x38';Byte '\x5a';Byte '\x59';Byte '\x48';Byte '\x53';Byte '\x50';Byte '\x56';Byte '\x41';Byte '\x4a';Byte '\x57';Byte '\x4b';Byte '\x51';Byte '\x52';Byte '\x55';Byte '\x52';Byte '\x48';Byte '\x00';Byte '\x16';Byte '\xe8';Byte '\x65';Byte '\x7e';Byte '\x5c';Byte '\x94';Byte '\x5f';Byte '\x62';Byte '\x42';Byte '\x55';Byte '\x49';Byte '\x44';Byte '\x57';Byte '\x57';Byte '\x49';Byte '\x58';Byte '\x4c';Byte '\x56';Byte '\x4b';Byte '\x48';Byte '\x41';Byte '\x52';Byte '\x51';Byte '\x41';Byte '\x00';Byte '\x42';Byte '\x52';Byte '\x5a';Byte '\x5a';Byte '\x59';Byte '\x43';Byte '\x58';Byte '\x46';Byte '\x41';Byte '\x4c';Byte '\x42';Byte '\x56';Byte '\x58';Byte '\x41';Byte '\x00';Byte '\x58';Byte '\x4c';Byte '\x4d';Byte '\x5a';Byte '\x4e';Byte '\x43';Byte '\x50';Byte '\x4f';Byte '\x4b';Byte '\x47';Byte '\x53';Byte '\x52';Byte '\x4c';Byte '\x00';Byte '\x8d';Byte '\x9d';Byte '\x5b';Byte '\x33';Byte '\x87';Byte '\x79';Byte '\x0a';Byte '\x12';Byte '\x91';Byte '\x0b';Byte '\x1a';Byte '\x2b';Byte '\x81';Byte '\x9a';Byte '\xd2';Byte '\x00';Byte '\xed';Byte '\x52';Byte '\x53';Byte '\xa0';Byte '\x3a';Byte '\x96';Byte '\x3d';Byte '\x08';Byte '\x04';Byte '\x1f';Byte '\x09';Byte '\xd5';Byte '\x76';Byte '\x96';Byte '\x59';Byte '\x28';Byte '\x4a';Byte '\x46';Byte '\x45';Byte '\x42';Byte '\x41';Byte '\x47';Byte '\x53';Byte '\x4a';Byte '\x53';Byte '\x45';Byte '\x47';Byte '\x42';Byte '\x42';Byte '\x55';Byte '\x55';Byte '\x00';Byte '\x44';Byte '\x59';Byte '\x51';Byte '\x59';Byte '\x4b';Byte '\x4d';Byte '\x4c';Byte '\x44';Byte '\x43';Byte '\x44';Byte '\x5a';Byte '\x59';Byte '\x48';Byte '\x58';Byte '\x4a';Byte '\x00';Byte '\xb4';Byte '\xf5';Byte '\xe1';Byte '\x08';Byte '\x5f';Byte '\x68';Byte '\x56';Byte '\x1f';Byte '\x47';Byte '\x45';Byte '\x42';Byte '\x50';Byte '\x43';Byte '\x46';Byte '\x4f';Byte '\x54';Byte '\x57';Byte '\x5a';Byte '\x5a';Byte '\x45';Byte '\x43';Byte '\x00';Byte '\x4c';Byte '\x49';Byte '\x58';Byte '\x49';Byte '\x43';Byte '\x52';Byte '\x41';Byte '\x51';Byte '\x53';Byte '\x58';Byte '\x41';Byte '\x4e';Byte '\x00';Byte '\x91';Byte '\x50';Byte '\x9d';Byte '\xa3';Byte '\x7d';Byte '\x61';Byte '\x11';Byte '\x0d';Byte '\x5b';Byte '\xf2';Byte '\x41';Byte '\xb1';Byte '\xfe';Byte '\xbe';Byte '\x7a';Byte '\x6b';Byte '\x75';Byte '\x34';Byte '\x1b';Byte '\x76';Byte '\x13';Byte '\x65';Byte '\x4c';Byte '\x16';Byte '\x41';Byte '\x43';Byte '\x55';Byte '\x4a';Byte '\x50';Byte '\x57';Byte '\x43';Byte '\x4f';Byte '\x5a';Byte '\x43';Byte '\x58';Byte '\x44';Byte '\x48';Byte '\x55';Byte '\x51';Byte '\x44';Byte '\x49';Byte '\x00';Byte '\x45';Byte '\x57';Byte '\x48';Byte '\x4f';Byte '\x43';Byte '\x51';Byte '\x53';Byte '\x44';Byte '\x4c';Byte '\x58';Byte '\x54';Byte '\x4d';Byte '\x48';Byte '\x50';Byte '\x4c';Byte '\x56';Byte '\x4a';Byte '\x00';]
let test_19_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400030L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40006eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40007aL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000abL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000e8L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40011eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_20 = [
  data "AAAAAAFL" [
    Asciz ("TCMETFUHAXSQZAFHR");
    Quad (Lit 718992582920203031L);
    Asciz ("AWYBBUUKGTCYFLPX");
    Asciz ("TAIFTDCEWWSNLPFR");
  ];
  data "AAAAAAFM" [
    Asciz ("QGHDMSXPZJO");
    Asciz ("SYXEGKSQNMPZTPNF");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAFL"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAFM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAFN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAFO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAFP"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAFQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAFR"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAFS"); ~%Rax];
];
  data "AAAAAAFN" [
    Asciz ("QCFEDBNYJYXFKMGSRZX");
  ];
  data "AAAAAAFO" [
    Quad (Lit 1034870637200598730L);
    Quad (Lit 6513301031214517146L);
    Asciz ("GUNRVLEJQFTS");
    Quad (Lit 7578956139090940283L);
    Asciz ("YBLXIVBTQYVQQVFTJM");
    Quad (Lit 101856760522743661L);
  ];
  data "AAAAAAFP" [
    Quad (Lit 9160988262581422310L);
    Quad (Lit 1360657146593507591L);
    Asciz ("YTHNPZMJLYF");
    Quad (Lit 2173515533785894137L);
  ];
  data "AAAAAAFQ" [
    Quad (Lit 7695458215483885104L);
    Quad (Lit 8206714885663277409L);
    Asciz ("SWCCTKPJHKAJSU");
    Asciz ("YXECRDXMBOUPZT");
    Asciz ("GDBCPSYOGANQDQ");
  ];
  data "AAAAAAFR" [
    Quad (Lit 2102078225074045423L);
    Quad (Lit 1315170239653161580L);
    Quad (Lit 7507482143089335299L);
    Asciz ("DAGXGTIWJEM");
  ];
  data "AAAAAAFS" [
    Quad (Lit 205741000981638033L);
    Quad (Lit 5149559967710636225L);
  ];
]
let test_20_data = [Byte '\x54';Byte '\x43';Byte '\x4d';Byte '\x45';Byte '\x54';Byte '\x46';Byte '\x55';Byte '\x48';Byte '\x41';Byte '\x58';Byte '\x53';Byte '\x51';Byte '\x5a';Byte '\x41';Byte '\x46';Byte '\x48';Byte '\x52';Byte '\x00';Byte '\x17';Byte '\x6b';Byte '\x19';Byte '\xdd';Byte '\xf1';Byte '\x5f';Byte '\xfa';Byte '\x09';Byte '\x41';Byte '\x57';Byte '\x59';Byte '\x42';Byte '\x42';Byte '\x55';Byte '\x55';Byte '\x4b';Byte '\x47';Byte '\x54';Byte '\x43';Byte '\x59';Byte '\x46';Byte '\x4c';Byte '\x50';Byte '\x58';Byte '\x00';Byte '\x54';Byte '\x41';Byte '\x49';Byte '\x46';Byte '\x54';Byte '\x44';Byte '\x43';Byte '\x45';Byte '\x57';Byte '\x57';Byte '\x53';Byte '\x4e';Byte '\x4c';Byte '\x50';Byte '\x46';Byte '\x52';Byte '\x00';Byte '\x51';Byte '\x47';Byte '\x48';Byte '\x44';Byte '\x4d';Byte '\x53';Byte '\x58';Byte '\x50';Byte '\x5a';Byte '\x4a';Byte '\x4f';Byte '\x00';Byte '\x53';Byte '\x59';Byte '\x58';Byte '\x45';Byte '\x47';Byte '\x4b';Byte '\x53';Byte '\x51';Byte '\x4e';Byte '\x4d';Byte '\x50';Byte '\x5a';Byte '\x54';Byte '\x50';Byte '\x4e';Byte '\x46';Byte '\x00';Byte '\x51';Byte '\x43';Byte '\x46';Byte '\x45';Byte '\x44';Byte '\x42';Byte '\x4e';Byte '\x59';Byte '\x4a';Byte '\x59';Byte '\x58';Byte '\x46';Byte '\x4b';Byte '\x4d';Byte '\x47';Byte '\x53';Byte '\x52';Byte '\x5a';Byte '\x58';Byte '\x00';Byte '\xca';Byte '\xe6';Byte '\xd2';Byte '\x8e';Byte '\x5c';Byte '\x99';Byte '\x5c';Byte '\x0e';Byte '\x9a';Byte '\x0b';Byte '\xba';Byte '\x68';Byte '\xc7';Byte '\xe4';Byte '\x63';Byte '\x5a';Byte '\x47';Byte '\x55';Byte '\x4e';Byte '\x52';Byte '\x56';Byte '\x4c';Byte '\x45';Byte '\x4a';Byte '\x51';Byte '\x46';Byte '\x54';Byte '\x53';Byte '\x00';Byte '\x7b';Byte '\x11';Byte '\xc8';Byte '\x16';Byte '\x74';Byte '\xdc';Byte '\x2d';Byte '\x69';Byte '\x59';Byte '\x42';Byte '\x4c';Byte '\x58';Byte '\x49';Byte '\x56';Byte '\x42';Byte '\x54';Byte '\x51';Byte '\x59';Byte '\x56';Byte '\x51';Byte '\x51';Byte '\x56';Byte '\x46';Byte '\x54';Byte '\x4a';Byte '\x4d';Byte '\x00';Byte '\x6d';Byte '\x1f';Byte '\xee';Byte '\x1c';Byte '\x2f';Byte '\xde';Byte '\x69';Byte '\x01';Byte '\xe6';Byte '\x48';Byte '\xb0';Byte '\xae';Byte '\x49';Byte '\x5e';Byte '\x22';Byte '\x7f';Byte '\x07';Byte '\x79';Byte '\xcd';Byte '\x3b';Byte '\x77';Byte '\x06';Byte '\xe2';Byte '\x12';Byte '\x59';Byte '\x54';Byte '\x48';Byte '\x4e';Byte '\x50';Byte '\x5a';Byte '\x4d';Byte '\x4a';Byte '\x4c';Byte '\x59';Byte '\x46';Byte '\x00';Byte '\xf9';Byte '\x0c';Byte '\x1a';Byte '\xb9';Byte '\xdc';Byte '\xe0';Byte '\x29';Byte '\x1e';Byte '\x30';Byte '\x46';Byte '\xc7';Byte '\x85';Byte '\x79';Byte '\xc2';Byte '\xcb';Byte '\x6a';Byte '\x61';Byte '\xc1';Byte '\xde';Byte '\x1c';Byte '\xb5';Byte '\x1b';Byte '\xe4';Byte '\x71';Byte '\x53';Byte '\x57';Byte '\x43';Byte '\x43';Byte '\x54';Byte '\x4b';Byte '\x50';Byte '\x4a';Byte '\x48';Byte '\x4b';Byte '\x41';Byte '\x4a';Byte '\x53';Byte '\x55';Byte '\x00';Byte '\x59';Byte '\x58';Byte '\x45';Byte '\x43';Byte '\x52';Byte '\x44';Byte '\x58';Byte '\x4d';Byte '\x42';Byte '\x4f';Byte '\x55';Byte '\x50';Byte '\x5a';Byte '\x54';Byte '\x00';Byte '\x47';Byte '\x44';Byte '\x42';Byte '\x43';Byte '\x50';Byte '\x53';Byte '\x59';Byte '\x4f';Byte '\x47';Byte '\x41';Byte '\x4e';Byte '\x51';Byte '\x44';Byte '\x51';Byte '\x00';Byte '\xef';Byte '\x41';Byte '\x9f';Byte '\x27';Byte '\x02';Byte '\x15';Byte '\x2c';Byte '\x1d';Byte '\x6c';Byte '\x2a';Byte '\xb1';Byte '\x69';Byte '\x5d';Byte '\x6c';Byte '\x40';Byte '\x12';Byte '\x03';Byte '\x9c';Byte '\x6d';Byte '\x98';Byte '\x3b';Byte '\xef';Byte '\x2f';Byte '\x68';Byte '\x44';Byte '\x41';Byte '\x47';Byte '\x58';Byte '\x47';Byte '\x54';Byte '\x49';Byte '\x57';Byte '\x4a';Byte '\x45';Byte '\x4d';Byte '\x00';Byte '\x91';Byte '\x6b';Byte '\x3e';Byte '\xaf';Byte '\x59';Byte '\xf0';Byte '\xda';Byte '\x02';Byte '\xc1';Byte '\xe8';Byte '\xf6';Byte '\xd0';Byte '\x81';Byte '\xe9';Byte '\x76';Byte '\x47';]
let test_20_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400040L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40007cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400099L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000adL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000edL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400111L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40014eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400172L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_21 = [
  data "AAAAAAFT" [
    Asciz ("ILSAYOOTATED");
    Quad (Lit 4088136728673049270L);
    Asciz ("EWTKBGAFHSZ");
  ];
  data "AAAAAAFU" [
    Asciz ("KDKYHUNFFRPFATNHTLLH");
    Asciz ("SAKVGCPOFBFLMGMOKW");
    Asciz ("DQLVROYWPKAIDURLAY");
    Quad (Lit 6697192566002177406L);
    Asciz ("IUQRDBQGKPUM");
  ];
  data "AAAAAAFV" [
    Asciz ("IKVEPHRRLDZQPI");
  ];
  data "AAAAAAFW" [
    Quad (Lit 3722291633534052305L);
    Asciz ("BAEHGOWHSQDASBYERPNH");
    Asciz ("KZWHSKQBJFGZENCLMMRE");
    Quad (Lit 7679568539459003814L);
  ];
  data "AAAAAAFX" [
    Quad (Lit 2992818629472188194L);
    Quad (Lit 9134515413849283831L);
    Asciz ("AAOURSJTAQTXHEPTKOL");
    Quad (Lit 5987277197759881388L);
    Asciz ("FAPMUHZHOZCPEV");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAFT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAFU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAFV"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAFW"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAFX"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAFY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAFZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAGA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAGB"); ~%Rax];
];
  data "AAAAAAFY" [
    Asciz ("BMLLJXQAFPKB");
    Quad (Lit 766298735865036720L);
    Quad (Lit 2794239263430873808L);
    Quad (Lit 2059663429734512607L);
  ];
  data "AAAAAAFZ" [
    Asciz ("UUXWKKNAKAQXK");
    Quad (Lit 1658995750107766751L);
    Asciz ("PNWCMUGUOGCAVAWZJBRO");
    Quad (Lit 238206801041389395L);
    Quad (Lit 3119828604421314125L);
    Asciz ("FSREQSAYIZYQDHSGM");
  ];
  data "AAAAAAGA" [
    Quad (Lit 4766300634066062656L);
  ];
  data "AAAAAAGB" [
    Asciz ("CMOXFIPEPPODKXB");
    Asciz ("ORYJTMRXHHBCPDFCIVWC");
  ];
]
let test_21_data = [Byte '\x49';Byte '\x4c';Byte '\x53';Byte '\x41';Byte '\x59';Byte '\x4f';Byte '\x4f';Byte '\x54';Byte '\x41';Byte '\x54';Byte '\x45';Byte '\x44';Byte '\x00';Byte '\xb6';Byte '\xda';Byte '\xc8';Byte '\xe1';Byte '\xb1';Byte '\xfa';Byte '\xbb';Byte '\x38';Byte '\x45';Byte '\x57';Byte '\x54';Byte '\x4b';Byte '\x42';Byte '\x47';Byte '\x41';Byte '\x46';Byte '\x48';Byte '\x53';Byte '\x5a';Byte '\x00';Byte '\x4b';Byte '\x44';Byte '\x4b';Byte '\x59';Byte '\x48';Byte '\x55';Byte '\x4e';Byte '\x46';Byte '\x46';Byte '\x52';Byte '\x50';Byte '\x46';Byte '\x41';Byte '\x54';Byte '\x4e';Byte '\x48';Byte '\x54';Byte '\x4c';Byte '\x4c';Byte '\x48';Byte '\x00';Byte '\x53';Byte '\x41';Byte '\x4b';Byte '\x56';Byte '\x47';Byte '\x43';Byte '\x50';Byte '\x4f';Byte '\x46';Byte '\x42';Byte '\x46';Byte '\x4c';Byte '\x4d';Byte '\x47';Byte '\x4d';Byte '\x4f';Byte '\x4b';Byte '\x57';Byte '\x00';Byte '\x44';Byte '\x51';Byte '\x4c';Byte '\x56';Byte '\x52';Byte '\x4f';Byte '\x59';Byte '\x57';Byte '\x50';Byte '\x4b';Byte '\x41';Byte '\x49';Byte '\x44';Byte '\x55';Byte '\x52';Byte '\x4c';Byte '\x41';Byte '\x59';Byte '\x00';Byte '\x7e';Byte '\x55';Byte '\xf2';Byte '\xd0';Byte '\x27';Byte '\x35';Byte '\xf1';Byte '\x5c';Byte '\x49';Byte '\x55';Byte '\x51';Byte '\x52';Byte '\x44';Byte '\x42';Byte '\x51';Byte '\x47';Byte '\x4b';Byte '\x50';Byte '\x55';Byte '\x4d';Byte '\x00';Byte '\x49';Byte '\x4b';Byte '\x56';Byte '\x45';Byte '\x50';Byte '\x48';Byte '\x52';Byte '\x52';Byte '\x4c';Byte '\x44';Byte '\x5a';Byte '\x51';Byte '\x50';Byte '\x49';Byte '\x00';Byte '\xd1';Byte '\xa7';Byte '\x34';Byte '\xe7';Byte '\x84';Byte '\x3c';Byte '\xa8';Byte '\x33';Byte '\x42';Byte '\x41';Byte '\x45';Byte '\x48';Byte '\x47';Byte '\x4f';Byte '\x57';Byte '\x48';Byte '\x53';Byte '\x51';Byte '\x44';Byte '\x41';Byte '\x53';Byte '\x42';Byte '\x59';Byte '\x45';Byte '\x52';Byte '\x50';Byte '\x4e';Byte '\x48';Byte '\x00';Byte '\x4b';Byte '\x5a';Byte '\x57';Byte '\x48';Byte '\x53';Byte '\x4b';Byte '\x51';Byte '\x42';Byte '\x4a';Byte '\x46';Byte '\x47';Byte '\x5a';Byte '\x45';Byte '\x4e';Byte '\x43';Byte '\x4c';Byte '\x4d';Byte '\x4d';Byte '\x52';Byte '\x45';Byte '\x00';Byte '\xa6';Byte '\x25';Byte '\xb8';Byte '\x06';Byte '\xe6';Byte '\x4e';Byte '\x93';Byte '\x6a';Byte '\x22';Byte '\x77';Byte '\xdc';Byte '\xd6';Byte '\xaf';Byte '\xa0';Byte '\x88';Byte '\x29';Byte '\xf7';Byte '\x1c';Byte '\xd1';Byte '\x45';Byte '\x5f';Byte '\x51';Byte '\xc4';Byte '\x7e';Byte '\x41';Byte '\x41';Byte '\x4f';Byte '\x55';Byte '\x52';Byte '\x53';Byte '\x4a';Byte '\x54';Byte '\x41';Byte '\x51';Byte '\x54';Byte '\x58';Byte '\x48';Byte '\x45';Byte '\x50';Byte '\x54';Byte '\x4b';Byte '\x4f';Byte '\x4c';Byte '\x00';Byte '\xac';Byte '\x20';Byte '\x46';Byte '\xb0';Byte '\xe3';Byte '\x14';Byte '\x17';Byte '\x53';Byte '\x46';Byte '\x41';Byte '\x50';Byte '\x4d';Byte '\x55';Byte '\x48';Byte '\x5a';Byte '\x48';Byte '\x4f';Byte '\x5a';Byte '\x43';Byte '\x50';Byte '\x45';Byte '\x56';Byte '\x00';Byte '\x42';Byte '\x4d';Byte '\x4c';Byte '\x4c';Byte '\x4a';Byte '\x58';Byte '\x51';Byte '\x41';Byte '\x46';Byte '\x50';Byte '\x4b';Byte '\x42';Byte '\x00';Byte '\xb0';Byte '\xff';Byte '\x10';Byte '\xe7';Byte '\xa3';Byte '\x70';Byte '\xa2';Byte '\x0a';Byte '\xd0';Byte '\x12';Byte '\x3f';Byte '\x3a';Byte '\xce';Byte '\x21';Byte '\xc7';Byte '\x26';Byte '\xdf';Byte '\x37';Byte '\x30';Byte '\x0e';Byte '\xfa';Byte '\x64';Byte '\x95';Byte '\x1c';Byte '\x55';Byte '\x55';Byte '\x58';Byte '\x57';Byte '\x4b';Byte '\x4b';Byte '\x4e';Byte '\x41';Byte '\x4b';Byte '\x41';Byte '\x51';Byte '\x58';Byte '\x4b';Byte '\x00';Byte '\xdf';Byte '\x5f';Byte '\x0e';Byte '\x51';Byte '\xd8';Byte '\xef';Byte '\x05';Byte '\x17';Byte '\x50';Byte '\x4e';Byte '\x57';Byte '\x43';Byte '\x4d';Byte '\x55';Byte '\x47';Byte '\x55';Byte '\x4f';Byte '\x47';Byte '\x43';Byte '\x41';Byte '\x56';Byte '\x41';Byte '\x57';Byte '\x5a';Byte '\x4a';Byte '\x42';Byte '\x52';Byte '\x4f';Byte '\x00';Byte '\x53';Byte '\x77';Byte '\x27';Byte '\xcf';Byte '\xd2';Byte '\x47';Byte '\x4e';Byte '\x03';Byte '\x4d';Byte '\x96';Byte '\xa2';Byte '\x0e';Byte '\x96';Byte '\xdb';Byte '\x4b';Byte '\x2b';Byte '\x46';Byte '\x53';Byte '\x52';Byte '\x45';Byte '\x51';Byte '\x53';Byte '\x41';Byte '\x59';Byte '\x49';Byte '\x5a';Byte '\x59';Byte '\x51';Byte '\x44';Byte '\x48';Byte '\x53';Byte '\x47';Byte '\x4d';Byte '\x00';Byte '\x40';Byte '\x0d';Byte '\x3a';Byte '\x7a';Byte '\x2c';Byte '\x4d';Byte '\x25';Byte '\x42';Byte '\x43';Byte '\x4d';Byte '\x4f';Byte '\x58';Byte '\x46';Byte '\x49';Byte '\x50';Byte '\x45';Byte '\x50';Byte '\x50';Byte '\x4f';Byte '\x44';Byte '\x4b';Byte '\x58';Byte '\x42';Byte '\x00';Byte '\x4f';Byte '\x52';Byte '\x59';Byte '\x4a';Byte '\x54';Byte '\x4d';Byte '\x52';Byte '\x58';Byte '\x48';Byte '\x48';Byte '\x42';Byte '\x43';Byte '\x50';Byte '\x44';Byte '\x46';Byte '\x43';Byte '\x49';Byte '\x56';Byte '\x57';Byte '\x43';Byte '\x00';]
let test_21_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400048L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400069L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000b9L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c8L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400102L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40013dL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400162L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001afL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001b7L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_22 = [
  data "AAAAAAGC" [
    Asciz ("BIAGLTEVMBGED");
    Quad (Lit 6786327463449869121L);
    Asciz ("FSBAOHNGCTR");
    Asciz ("KGVRIUBBDIAPZJSLA");
  ];
  data "AAAAAAGD" [
    Asciz ("EUZSPIVKNHUI");
    Quad (Lit 998683463449115564L);
  ];
  data "AAAAAAGE" [
    Asciz ("CNMMHSBRXOGSFB");
    Asciz ("HUQNTACDRB");
    Asciz ("YJUOTWXESOHE");
  ];
  data "AAAAAAGF" [
    Quad (Lit 4581829902126171726L);
  ];
  data "AAAAAAGG" [
    Asciz ("ADCQKNUKSMTT");
    Asciz ("ZTQGARUZAODTWNTZOAQ");
  ];
  data "AAAAAAGH" [
    Quad (Lit 6139807244439907722L);
    Quad (Lit 3048371653619965885L);
    Asciz ("QYTIJUCJKUV");
  ];
  data "AAAAAAGI" [
    Asciz ("RJTILIASJPBS");
  ];
  data "AAAAAAGJ" [
    Quad (Lit 7087358704070797912L);
  ];
  data "AAAAAAGK" [
    Quad (Lit 1219730450238496652L);
    Quad (Lit 92597769571292230L);
    Quad (Lit 7833533122674512234L);
    Quad (Lit 3254457212499039664L);
    Quad (Lit 533684928270185855L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAGC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAGD"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAGE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAGF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAGG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAGH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAGI"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAGJ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAGK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAGL"); ~%Rax];
];
  data "AAAAAAGL" [
    Quad (Lit 2989791383868902422L);
    Asciz ("LSWIEYQYBSQVIVGCSYD");
    Quad (Lit 8233690699325947825L);
  ];
]
let test_22_data = [Byte '\x42';Byte '\x49';Byte '\x41';Byte '\x47';Byte '\x4c';Byte '\x54';Byte '\x45';Byte '\x56';Byte '\x4d';Byte '\x42';Byte '\x47';Byte '\x45';Byte '\x44';Byte '\x00';Byte '\x41';Byte '\x3b';Byte '\x68';Byte '\x5c';Byte '\xdf';Byte '\xe0';Byte '\x2d';Byte '\x5e';Byte '\x46';Byte '\x53';Byte '\x42';Byte '\x41';Byte '\x4f';Byte '\x48';Byte '\x4e';Byte '\x47';Byte '\x43';Byte '\x54';Byte '\x52';Byte '\x00';Byte '\x4b';Byte '\x47';Byte '\x56';Byte '\x52';Byte '\x49';Byte '\x55';Byte '\x42';Byte '\x42';Byte '\x44';Byte '\x49';Byte '\x41';Byte '\x50';Byte '\x5a';Byte '\x4a';Byte '\x53';Byte '\x4c';Byte '\x41';Byte '\x00';Byte '\x45';Byte '\x55';Byte '\x5a';Byte '\x53';Byte '\x50';Byte '\x49';Byte '\x56';Byte '\x4b';Byte '\x4e';Byte '\x48';Byte '\x55';Byte '\x49';Byte '\x00';Byte '\xac';Byte '\xfb';Byte '\xf0';Byte '\x99';Byte '\x51';Byte '\x09';Byte '\xdc';Byte '\x0d';Byte '\x43';Byte '\x4e';Byte '\x4d';Byte '\x4d';Byte '\x48';Byte '\x53';Byte '\x42';Byte '\x52';Byte '\x58';Byte '\x4f';Byte '\x47';Byte '\x53';Byte '\x46';Byte '\x42';Byte '\x00';Byte '\x48';Byte '\x55';Byte '\x51';Byte '\x4e';Byte '\x54';Byte '\x41';Byte '\x43';Byte '\x44';Byte '\x52';Byte '\x42';Byte '\x00';Byte '\x59';Byte '\x4a';Byte '\x55';Byte '\x4f';Byte '\x54';Byte '\x57';Byte '\x58';Byte '\x45';Byte '\x53';Byte '\x4f';Byte '\x48';Byte '\x45';Byte '\x00';Byte '\x4e';Byte '\x46';Byte '\x7e';Byte '\x39';Byte '\x05';Byte '\xee';Byte '\x95';Byte '\x3f';Byte '\x41';Byte '\x44';Byte '\x43';Byte '\x51';Byte '\x4b';Byte '\x4e';Byte '\x55';Byte '\x4b';Byte '\x53';Byte '\x4d';Byte '\x54';Byte '\x54';Byte '\x00';Byte '\x5a';Byte '\x54';Byte '\x51';Byte '\x47';Byte '\x41';Byte '\x52';Byte '\x55';Byte '\x5a';Byte '\x41';Byte '\x4f';Byte '\x44';Byte '\x54';Byte '\x57';Byte '\x4e';Byte '\x54';Byte '\x5a';Byte '\x4f';Byte '\x41';Byte '\x51';Byte '\x00';Byte '\x8a';Byte '\xed';Byte '\x35';Byte '\xa2';Byte '\x28';Byte '\xfa';Byte '\x34';Byte '\x55';Byte '\xbd';Byte '\x5f';Byte '\x63';Byte '\x35';Byte '\xde';Byte '\xfd';Byte '\x4d';Byte '\x2a';Byte '\x51';Byte '\x59';Byte '\x54';Byte '\x49';Byte '\x4a';Byte '\x55';Byte '\x43';Byte '\x4a';Byte '\x4b';Byte '\x55';Byte '\x56';Byte '\x00';Byte '\x52';Byte '\x4a';Byte '\x54';Byte '\x49';Byte '\x4c';Byte '\x49';Byte '\x41';Byte '\x53';Byte '\x4a';Byte '\x50';Byte '\x42';Byte '\x53';Byte '\x00';Byte '\x58';Byte '\xaa';Byte '\xe9';Byte '\xdf';Byte '\x30';Byte '\x5b';Byte '\x5b';Byte '\x62';Byte '\x8c';Byte '\x5f';Byte '\x31';Byte '\xd0';Byte '\x61';Byte '\x5a';Byte '\xed';Byte '\x10';Byte '\x46';Byte '\x54';Byte '\x4a';Byte '\x4a';Byte '\x2e';Byte '\xf9';Byte '\x48';Byte '\x01';Byte '\x6a';Byte '\x51';Byte '\x45';Byte '\x09';Byte '\xdf';Byte '\x4c';Byte '\xb6';Byte '\x6c';Byte '\xb0';Byte '\x95';Byte '\xb6';Byte '\x87';Byte '\x97';Byte '\x27';Byte '\x2a';Byte '\x2d';Byte '\x7f';Byte '\x35';Byte '\x86';Byte '\x5b';Byte '\x9d';Byte '\x07';Byte '\x68';Byte '\x07';Byte '\x16';Byte '\x8c';Byte '\x07';Byte '\x4c';Byte '\x6c';Byte '\xdf';Byte '\x7d';Byte '\x29';Byte '\x4c';Byte '\x53';Byte '\x57';Byte '\x49';Byte '\x45';Byte '\x59';Byte '\x51';Byte '\x59';Byte '\x42';Byte '\x53';Byte '\x51';Byte '\x56';Byte '\x49';Byte '\x56';Byte '\x47';Byte '\x43';Byte '\x53';Byte '\x59';Byte '\x44';Byte '\x00';Byte '\xb1';Byte '\xbf';Byte '\xc2';Byte '\x2b';Byte '\x11';Byte '\xf2';Byte '\x43';Byte '\x72';]
let test_22_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400050L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400084L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400099L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c0L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c8L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000e9L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400105L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400112L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40011aL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400142L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_23 = [
  data "AAAAAAGM" [
    Asciz ("BCTJCPCBOJMBYVOX");
    Quad (Lit 1830337600990003495L);
    Asciz ("EHXIFZGPWMXB");
    Quad (Lit 308567243290031630L);
    Asciz ("ICSOJNWHGXGFWIEO");
    Asciz ("DEPORAZJVFBEOGBAK");
  ];
  data "AAAAAAGN" [
    Asciz ("ILGOAYBKCAAFEVHA");
    Asciz ("HWLAVDUCRS");
    Asciz ("SKZQFFBEBHQJNVL");
    Asciz ("QSODSTZPUXQPMKLCZENT");
  ];
  data "AAAAAAGO" [
    Quad (Lit 4970378104786294925L);
    Quad (Lit 3952084681732183302L);
  ];
  data "AAAAAAGP" [
    Quad (Lit 4666185244482133710L);
    Asciz ("JCVPKOYWOHZAJZASZP");
    Quad (Lit 3709825437002277763L);
    Asciz ("LVGXHLMLVPHJDYBJDDKO");
    Asciz ("WTAAEDTGZSGC");
  ];
  data "AAAAAAGQ" [
    Asciz ("GLNNMOIVAMZKMA");
  ];
  data "AAAAAAGR" [
    Asciz ("PWMHRIBNUMMPX");
    Asciz ("UYVKYDCYNH");
    Quad (Lit 4417987716507999938L);
  ];
  data "AAAAAAGS" [
    Quad (Lit 6271829754355267149L);
    Quad (Lit 5686844516453580342L);
    Asciz ("JWHSJJBCOY");
    Asciz ("DYXYEOFHOKDC");
    Quad (Lit 3855941981127740796L);
  ];
  data "AAAAAAGT" [
    Asciz ("YGMRHOXFVXKQW");
    Quad (Lit 7310988385525506030L);
    Quad (Lit 7763535288508519082L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAGM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAGN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAGO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAGP"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAGQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAGR"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAGS"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAGT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAGU"); ~%Rax];
];
  data "AAAAAAGU" [
    Quad (Lit 8901005972657589849L);
  ];
]
let test_23_data = [Byte '\x42';Byte '\x43';Byte '\x54';Byte '\x4a';Byte '\x43';Byte '\x50';Byte '\x43';Byte '\x42';Byte '\x4f';Byte '\x4a';Byte '\x4d';Byte '\x42';Byte '\x59';Byte '\x56';Byte '\x4f';Byte '\x58';Byte '\x00';Byte '\x27';Byte '\xc1';Byte '\x0c';Byte '\xbe';Byte '\x59';Byte '\xaa';Byte '\x66';Byte '\x19';Byte '\x45';Byte '\x48';Byte '\x58';Byte '\x49';Byte '\x46';Byte '\x5a';Byte '\x47';Byte '\x50';Byte '\x57';Byte '\x4d';Byte '\x58';Byte '\x42';Byte '\x00';Byte '\x0e';Byte '\xb6';Byte '\x9f';Byte '\xdd';Byte '\x45';Byte '\x40';Byte '\x48';Byte '\x04';Byte '\x49';Byte '\x43';Byte '\x53';Byte '\x4f';Byte '\x4a';Byte '\x4e';Byte '\x57';Byte '\x48';Byte '\x47';Byte '\x58';Byte '\x47';Byte '\x46';Byte '\x57';Byte '\x49';Byte '\x45';Byte '\x4f';Byte '\x00';Byte '\x44';Byte '\x45';Byte '\x50';Byte '\x4f';Byte '\x52';Byte '\x41';Byte '\x5a';Byte '\x4a';Byte '\x56';Byte '\x46';Byte '\x42';Byte '\x45';Byte '\x4f';Byte '\x47';Byte '\x42';Byte '\x41';Byte '\x4b';Byte '\x00';Byte '\x49';Byte '\x4c';Byte '\x47';Byte '\x4f';Byte '\x41';Byte '\x59';Byte '\x42';Byte '\x4b';Byte '\x43';Byte '\x41';Byte '\x41';Byte '\x46';Byte '\x45';Byte '\x56';Byte '\x48';Byte '\x41';Byte '\x00';Byte '\x48';Byte '\x57';Byte '\x4c';Byte '\x41';Byte '\x56';Byte '\x44';Byte '\x55';Byte '\x43';Byte '\x52';Byte '\x53';Byte '\x00';Byte '\x53';Byte '\x4b';Byte '\x5a';Byte '\x51';Byte '\x46';Byte '\x46';Byte '\x42';Byte '\x45';Byte '\x42';Byte '\x48';Byte '\x51';Byte '\x4a';Byte '\x4e';Byte '\x56';Byte '\x4c';Byte '\x00';Byte '\x51';Byte '\x53';Byte '\x4f';Byte '\x44';Byte '\x53';Byte '\x54';Byte '\x5a';Byte '\x50';Byte '\x55';Byte '\x58';Byte '\x51';Byte '\x50';Byte '\x4d';Byte '\x4b';Byte '\x4c';Byte '\x43';Byte '\x5a';Byte '\x45';Byte '\x4e';Byte '\x54';Byte '\x00';Byte '\x8d';Byte '\x98';Byte '\x2a';Byte '\x57';Byte '\x8d';Byte '\x54';Byte '\xfa';Byte '\x44';Byte '\x06';Byte '\xd5';Byte '\xe8';Byte '\x38';Byte '\x14';Byte '\xa0';Byte '\xd8';Byte '\x36';Byte '\xce';Byte '\xde';Byte '\x86';Byte '\xe1';Byte '\xc1';Byte '\x9e';Byte '\xc1';Byte '\x40';Byte '\x4a';Byte '\x43';Byte '\x56';Byte '\x50';Byte '\x4b';Byte '\x4f';Byte '\x59';Byte '\x57';Byte '\x4f';Byte '\x48';Byte '\x5a';Byte '\x41';Byte '\x4a';Byte '\x5a';Byte '\x41';Byte '\x53';Byte '\x5a';Byte '\x50';Byte '\x00';Byte '\x83';Byte '\xa3';Byte '\x3a';Byte '\x57';Byte '\x94';Byte '\xf2';Byte '\x7b';Byte '\x33';Byte '\x4c';Byte '\x56';Byte '\x47';Byte '\x58';Byte '\x48';Byte '\x4c';Byte '\x4d';Byte '\x4c';Byte '\x56';Byte '\x50';Byte '\x48';Byte '\x4a';Byte '\x44';Byte '\x59';Byte '\x42';Byte '\x4a';Byte '\x44';Byte '\x44';Byte '\x4b';Byte '\x4f';Byte '\x00';Byte '\x57';Byte '\x54';Byte '\x41';Byte '\x41';Byte '\x45';Byte '\x44';Byte '\x54';Byte '\x47';Byte '\x5a';Byte '\x53';Byte '\x47';Byte '\x43';Byte '\x00';Byte '\x47';Byte '\x4c';Byte '\x4e';Byte '\x4e';Byte '\x4d';Byte '\x4f';Byte '\x49';Byte '\x56';Byte '\x41';Byte '\x4d';Byte '\x5a';Byte '\x4b';Byte '\x4d';Byte '\x41';Byte '\x00';Byte '\x50';Byte '\x57';Byte '\x4d';Byte '\x48';Byte '\x52';Byte '\x49';Byte '\x42';Byte '\x4e';Byte '\x55';Byte '\x4d';Byte '\x4d';Byte '\x50';Byte '\x58';Byte '\x00';Byte '\x55';Byte '\x59';Byte '\x56';Byte '\x4b';Byte '\x59';Byte '\x44';Byte '\x43';Byte '\x59';Byte '\x4e';Byte '\x48';Byte '\x00';Byte '\xc2';Byte '\x9e';Byte '\x7f';Byte '\xb0';Byte '\x6b';Byte '\xd8';Byte '\x4f';Byte '\x3d';Byte '\x4d';Byte '\x36';Byte '\x12';Byte '\x98';Byte '\xee';Byte '\x03';Byte '\x0a';Byte '\x57';Byte '\x36';Byte '\xfe';Byte '\x17';Byte '\x20';Byte '\xf5';Byte '\xba';Byte '\xeb';Byte '\x4e';Byte '\x4a';Byte '\x57';Byte '\x48';Byte '\x53';Byte '\x4a';Byte '\x4a';Byte '\x42';Byte '\x43';Byte '\x4f';Byte '\x59';Byte '\x00';Byte '\x44';Byte '\x59';Byte '\x58';Byte '\x59';Byte '\x45';Byte '\x4f';Byte '\x46';Byte '\x48';Byte '\x4f';Byte '\x4b';Byte '\x44';Byte '\x43';Byte '\x00';Byte '\x7c';Byte '\x8d';Byte '\xa2';Byte '\x5b';Byte '\xcd';Byte '\x0e';Byte '\x83';Byte '\x35';Byte '\x59';Byte '\x47';Byte '\x4d';Byte '\x52';Byte '\x48';Byte '\x4f';Byte '\x58';Byte '\x46';Byte '\x56';Byte '\x58';Byte '\x4b';Byte '\x51';Byte '\x57';Byte '\x00';Byte '\xee';Byte '\x1f';Byte '\x41';Byte '\x8c';Byte '\x33';Byte '\xd9';Byte '\x75';Byte '\x65';Byte '\xaa';Byte '\x92';Byte '\xc2';Byte '\x40';Byte '\x36';Byte '\x9e';Byte '\xbd';Byte '\x6b';Byte '\x59';Byte '\xce';Byte '\xe2';Byte '\xc7';Byte '\xc5';Byte '\xb9';Byte '\x86';Byte '\x7b';]
let test_23_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400048L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400099L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000daL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000eaL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40012fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40013eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40015fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40018fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001adL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_24 = [
  data "AAAAAAGV" [
    Asciz ("PTDVZWCBNN");
    Quad (Lit 459167013142810513L);
    Asciz ("SJWRIOEPVHDTJYB");
    Quad (Lit 3238633659129521175L);
    Quad (Lit 6108819853305774793L);
  ];
  data "AAAAAAGW" [
    Asciz ("JQASNQFOIW");
    Quad (Lit 6885358106192179944L);
    Quad (Lit 8861748976256322602L);
    Asciz ("QTONWVQZZKLCWRCDPQVQ");
    Quad (Lit 4821515833428453560L);
    Quad (Lit 7296127009373138923L);
  ];
  data "AAAAAAGX" [
    Quad (Lit 7011904109888891686L);
    Quad (Lit 7705744793951518081L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAGV"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAGW"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAGX"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAGY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAGZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAHA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAHB"); ~%Rax];
];
  data "AAAAAAGY" [
    Asciz ("ZXEXWRIMZPZHYAQMS");
    Asciz ("WGACZTHFMPAVOBTFGR");
    Quad (Lit 2595457916572741770L);
    Quad (Lit 8833923528124930507L);
    Quad (Lit 913255164522943852L);
  ];
  data "AAAAAAGZ" [
    Quad (Lit 493271916260328956L);
  ];
  data "AAAAAAHA" [
    Quad (Lit 5212411214363727354L);
    Quad (Lit 8530799292763175324L);
    Asciz ("VVHMBVDGYIJACNGBVBH");
    Asciz ("RXIOHZOHKXBZFGHXYGKT");
  ];
  data "AAAAAAHB" [
    Asciz ("LKJWYUZVFJNQHMNS");
    Quad (Lit 3331743004335926873L);
  ];
]
let test_24_data = [Byte '\x50';Byte '\x54';Byte '\x44';Byte '\x56';Byte '\x5a';Byte '\x57';Byte '\x43';Byte '\x42';Byte '\x4e';Byte '\x4e';Byte '\x00';Byte '\x91';Byte '\x4f';Byte '\xf4';Byte '\x36';Byte '\xf7';Byte '\x49';Byte '\x5f';Byte '\x06';Byte '\x53';Byte '\x4a';Byte '\x57';Byte '\x52';Byte '\x49';Byte '\x4f';Byte '\x45';Byte '\x50';Byte '\x56';Byte '\x48';Byte '\x44';Byte '\x54';Byte '\x4a';Byte '\x59';Byte '\x42';Byte '\x00';Byte '\x17';Byte '\xe4';Byte '\x09';Byte '\x6a';Byte '\x27';Byte '\xf0';Byte '\xf1';Byte '\x2c';Byte '\xc9';Byte '\x02';Byte '\x25';Byte '\x69';Byte '\x4a';Byte '\xe3';Byte '\xc6';Byte '\x54';Byte '\x4a';Byte '\x51';Byte '\x41';Byte '\x53';Byte '\x4e';Byte '\x51';Byte '\x46';Byte '\x4f';Byte '\x49';Byte '\x57';Byte '\x00';Byte '\xe8';Byte '\xf2';Byte '\xf0';Byte '\xa6';Byte '\xb7';Byte '\xb4';Byte '\x8d';Byte '\x5f';Byte '\x2a';Byte '\x8c';Byte '\x70';Byte '\x0a';Byte '\xbe';Byte '\x41';Byte '\xfb';Byte '\x7a';Byte '\x51';Byte '\x54';Byte '\x4f';Byte '\x4e';Byte '\x57';Byte '\x56';Byte '\x51';Byte '\x5a';Byte '\x5a';Byte '\x4b';Byte '\x4c';Byte '\x43';Byte '\x57';Byte '\x52';Byte '\x43';Byte '\x44';Byte '\x50';Byte '\x51';Byte '\x56';Byte '\x51';Byte '\x00';Byte '\xb8';Byte '\xa8';Byte '\x6c';Byte '\xe2';Byte '\x1a';Byte '\x77';Byte '\xe9';Byte '\x42';Byte '\xeb';Byte '\xaf';Byte '\xd1';Byte '\xc5';Byte '\xdb';Byte '\x0c';Byte '\x41';Byte '\x65';Byte '\x26';Byte '\x6b';Byte '\x07';Byte '\x25';Byte '\xa3';Byte '\x49';Byte '\x4f';Byte '\x61';Byte '\x81';Byte '\xbd';Byte '\x4b';Byte '\x35';Byte '\x10';Byte '\x4e';Byte '\xf0';Byte '\x6a';Byte '\x5a';Byte '\x58';Byte '\x45';Byte '\x58';Byte '\x57';Byte '\x52';Byte '\x49';Byte '\x4d';Byte '\x5a';Byte '\x50';Byte '\x5a';Byte '\x48';Byte '\x59';Byte '\x41';Byte '\x51';Byte '\x4d';Byte '\x53';Byte '\x00';Byte '\x57';Byte '\x47';Byte '\x41';Byte '\x43';Byte '\x5a';Byte '\x54';Byte '\x48';Byte '\x46';Byte '\x4d';Byte '\x50';Byte '\x41';Byte '\x56';Byte '\x4f';Byte '\x42';Byte '\x54';Byte '\x46';Byte '\x47';Byte '\x52';Byte '\x00';Byte '\x8a';Byte '\x30';Byte '\xcb';Byte '\x4a';Byte '\x39';Byte '\xeb';Byte '\x04';Byte '\x24';Byte '\xcb';Byte '\x19';Byte '\xda';Byte '\x0a';Byte '\xa5';Byte '\x66';Byte '\x98';Byte '\x7a';Byte '\x6c';Byte '\x55';Byte '\xae';Byte '\xc6';Byte '\xbb';Byte '\x88';Byte '\xac';Byte '\x0c';Byte '\xfc';Byte '\x85';Byte '\x5f';Byte '\xc2';Byte '\x31';Byte '\x74';Byte '\xd8';Byte '\x06';Byte '\xfa';Byte '\x95';Byte '\x69';Byte '\x07';Byte '\x62';Byte '\x34';Byte '\x56';Byte '\x48';Byte '\x9c';Byte '\x79';Byte '\x4d';Byte '\x37';Byte '\xc2';Byte '\x7c';Byte '\x63';Byte '\x76';Byte '\x56';Byte '\x56';Byte '\x48';Byte '\x4d';Byte '\x42';Byte '\x56';Byte '\x44';Byte '\x47';Byte '\x59';Byte '\x49';Byte '\x4a';Byte '\x41';Byte '\x43';Byte '\x4e';Byte '\x47';Byte '\x42';Byte '\x56';Byte '\x42';Byte '\x48';Byte '\x00';Byte '\x52';Byte '\x58';Byte '\x49';Byte '\x4f';Byte '\x48';Byte '\x5a';Byte '\x4f';Byte '\x48';Byte '\x4b';Byte '\x58';Byte '\x42';Byte '\x5a';Byte '\x46';Byte '\x47';Byte '\x48';Byte '\x58';Byte '\x59';Byte '\x47';Byte '\x4b';Byte '\x54';Byte '\x00';Byte '\x4c';Byte '\x4b';Byte '\x4a';Byte '\x57';Byte '\x59';Byte '\x55';Byte '\x5a';Byte '\x56';Byte '\x46';Byte '\x4a';Byte '\x4e';Byte '\x51';Byte '\x48';Byte '\x4d';Byte '\x4e';Byte '\x53';Byte '\x00';Byte '\x59';Byte '\xee';Byte '\x55';Byte '\x30';Byte '\x9c';Byte '\xba';Byte '\x3c';Byte '\x2e';]
let test_24_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400038L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40006bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000abL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000bbL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f8L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400100L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400139L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_25 = [
  data "AAAAAAHC" [
    Quad (Lit 734484732383953149L);
    Quad (Lit 8433712525083643942L);
    Asciz ("AYRQTHRLBDZM");
    Quad (Lit 5337250096451264489L);
    Asciz ("VOFLRVDBTGWIKH");
    Quad (Lit 1964359975621665161L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAHC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAHD"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAHE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAHF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAHG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAHH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAHI"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAHJ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAHK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAHL"); ~%Rax];
];
  data "AAAAAAHD" [
    Asciz ("YNCREWBBTJZVRU");
  ];
  data "AAAAAAHE" [
    Asciz ("SSCGXKHFDF");
    Asciz ("ZWPNLLLLBH");
  ];
  data "AAAAAAHF" [
    Quad (Lit 4718795501351779430L);
    Quad (Lit 3437468897509438320L);
    Quad (Lit 6692388202809833342L);
    Quad (Lit 2157623704378146726L);
    Quad (Lit 8988060339280256148L);
    Asciz ("MENJMHNTOBDWIE");
  ];
  data "AAAAAAHG" [
    Asciz ("LMKWUIBRNKK");
    Quad (Lit 8232631263496966262L);
    Asciz ("XTZRCQDFKTHEIWDHRPK");
    Asciz ("ESJOQGVMMDECMJGK");
  ];
  data "AAAAAAHH" [
    Asciz ("XRZGRDPGAPAGJACKVGZ");
    Asciz ("QIMZCDBSOIKEICKPCZ");
    Quad (Lit 3280245902806233370L);
    Asciz ("ITKJVQWKFOZZXKGQ");
  ];
  data "AAAAAAHI" [
    Asciz ("HAHPIABXNEVHHFMDTM");
    Asciz ("XOFWIBZPNJIB");
    Asciz ("VCVTRGUINSBFIBWLWA");
  ];
  data "AAAAAAHJ" [
    Quad (Lit 8134216845889751056L);
    Asciz ("DAVTSAWOEAKTQZCQOUVR");
    Quad (Lit 1917493625578103215L);
  ];
  data "AAAAAAHK" [
    Quad (Lit 1655532315647925001L);
    Quad (Lit 880744395509834513L);
    Quad (Lit 8281404154832155989L);
    Quad (Lit 796836945619810012L);
    Quad (Lit 3457505093836422403L);
    Asciz ("GQSWZCRWXCFSN");
  ];
  data "AAAAAAHL" [
    Quad (Lit 7127781486838593262L);
    Asciz ("MNFDUNWFDSMUN");
    Quad (Lit 7972474344779806082L);
    Quad (Lit 7584765122866876687L);
  ];
]
let test_25_data = [Byte '\xfd';Byte '\x80';Byte '\xb1';Byte '\xfe';Byte '\xf8';Byte '\x69';Byte '\x31';Byte '\x0a';Byte '\x26';Byte '\x90';Byte '\x5f';Byte '\x9b';Byte '\xdb';Byte '\x90';Byte '\x0a';Byte '\x75';Byte '\x41';Byte '\x59';Byte '\x52';Byte '\x51';Byte '\x54';Byte '\x48';Byte '\x52';Byte '\x4c';Byte '\x42';Byte '\x44';Byte '\x5a';Byte '\x4d';Byte '\x00';Byte '\xe9';Byte '\x9f';Byte '\x65';Byte '\x4c';Byte '\xaf';Byte '\xb8';Byte '\x11';Byte '\x4a';Byte '\x56';Byte '\x4f';Byte '\x46';Byte '\x4c';Byte '\x52';Byte '\x56';Byte '\x44';Byte '\x42';Byte '\x54';Byte '\x47';Byte '\x57';Byte '\x49';Byte '\x4b';Byte '\x48';Byte '\x00';Byte '\x89';Byte '\xa1';Byte '\xec';Byte '\x7d';Byte '\xfd';Byte '\xce';Byte '\x42';Byte '\x1b';Byte '\x59';Byte '\x4e';Byte '\x43';Byte '\x52';Byte '\x45';Byte '\x57';Byte '\x42';Byte '\x42';Byte '\x54';Byte '\x4a';Byte '\x5a';Byte '\x56';Byte '\x52';Byte '\x55';Byte '\x00';Byte '\x53';Byte '\x53';Byte '\x43';Byte '\x47';Byte '\x58';Byte '\x4b';Byte '\x48';Byte '\x46';Byte '\x44';Byte '\x46';Byte '\x00';Byte '\x5a';Byte '\x57';Byte '\x50';Byte '\x4e';Byte '\x4c';Byte '\x4c';Byte '\x4c';Byte '\x4c';Byte '\x42';Byte '\x48';Byte '\x00';Byte '\x66';Byte '\xbc';Byte '\xc8';Byte '\xd9';Byte '\x81';Byte '\x87';Byte '\x7c';Byte '\x41';Byte '\x70';Byte '\xf3';Byte '\x80';Byte '\xf2';Byte '\xbf';Byte '\x57';Byte '\xb4';Byte '\x2f';Byte '\x7e';Byte '\xb7';Byte '\x7e';Byte '\xd7';Byte '\x9c';Byte '\x23';Byte '\xe0';Byte '\x5c';Byte '\xa6';Byte '\xff';Byte '\x6b';Byte '\xda';Byte '\x53';Byte '\x6b';Byte '\xf1';Byte '\x1d';Byte '\x94';Byte '\x9c';Byte '\x93';Byte '\xfe';Byte '\x41';Byte '\x01';Byte '\xbc';Byte '\x7c';Byte '\x4d';Byte '\x45';Byte '\x4e';Byte '\x4a';Byte '\x4d';Byte '\x48';Byte '\x4e';Byte '\x54';Byte '\x4f';Byte '\x42';Byte '\x44';Byte '\x57';Byte '\x49';Byte '\x45';Byte '\x00';Byte '\x4c';Byte '\x4d';Byte '\x4b';Byte '\x57';Byte '\x55';Byte '\x49';Byte '\x42';Byte '\x52';Byte '\x4e';Byte '\x4b';Byte '\x4b';Byte '\x00';Byte '\x76';Byte '\x10';Byte '\x83';Byte '\x0b';Byte '\x84';Byte '\x2e';Byte '\x40';Byte '\x72';Byte '\x58';Byte '\x54';Byte '\x5a';Byte '\x52';Byte '\x43';Byte '\x51';Byte '\x44';Byte '\x46';Byte '\x4b';Byte '\x54';Byte '\x48';Byte '\x45';Byte '\x49';Byte '\x57';Byte '\x44';Byte '\x48';Byte '\x52';Byte '\x50';Byte '\x4b';Byte '\x00';Byte '\x45';Byte '\x53';Byte '\x4a';Byte '\x4f';Byte '\x51';Byte '\x47';Byte '\x56';Byte '\x4d';Byte '\x4d';Byte '\x44';Byte '\x45';Byte '\x43';Byte '\x4d';Byte '\x4a';Byte '\x47';Byte '\x4b';Byte '\x00';Byte '\x58';Byte '\x52';Byte '\x5a';Byte '\x47';Byte '\x52';Byte '\x44';Byte '\x50';Byte '\x47';Byte '\x41';Byte '\x50';Byte '\x41';Byte '\x47';Byte '\x4a';Byte '\x41';Byte '\x43';Byte '\x4b';Byte '\x56';Byte '\x47';Byte '\x5a';Byte '\x00';Byte '\x51';Byte '\x49';Byte '\x4d';Byte '\x5a';Byte '\x43';Byte '\x44';Byte '\x42';Byte '\x53';Byte '\x4f';Byte '\x49';Byte '\x4b';Byte '\x45';Byte '\x49';Byte '\x43';Byte '\x4b';Byte '\x50';Byte '\x43';Byte '\x5a';Byte '\x00';Byte '\x1a';Byte '\x31';Byte '\xb2';Byte '\xe4';Byte '\x44';Byte '\xc6';Byte '\x85';Byte '\x2d';Byte '\x49';Byte '\x54';Byte '\x4b';Byte '\x4a';Byte '\x56';Byte '\x51';Byte '\x57';Byte '\x4b';Byte '\x46';Byte '\x4f';Byte '\x5a';Byte '\x5a';Byte '\x58';Byte '\x4b';Byte '\x47';Byte '\x51';Byte '\x00';Byte '\x48';Byte '\x41';Byte '\x48';Byte '\x50';Byte '\x49';Byte '\x41';Byte '\x42';Byte '\x58';Byte '\x4e';Byte '\x45';Byte '\x56';Byte '\x48';Byte '\x48';Byte '\x46';Byte '\x4d';Byte '\x44';Byte '\x54';Byte '\x4d';Byte '\x00';Byte '\x58';Byte '\x4f';Byte '\x46';Byte '\x57';Byte '\x49';Byte '\x42';Byte '\x5a';Byte '\x50';Byte '\x4e';Byte '\x4a';Byte '\x49';Byte '\x42';Byte '\x00';Byte '\x56';Byte '\x43';Byte '\x56';Byte '\x54';Byte '\x52';Byte '\x47';Byte '\x55';Byte '\x49';Byte '\x4e';Byte '\x53';Byte '\x42';Byte '\x46';Byte '\x49';Byte '\x42';Byte '\x57';Byte '\x4c';Byte '\x57';Byte '\x41';Byte '\x00';Byte '\x10';Byte '\xc8';Byte '\x41';Byte '\xd9';Byte '\x1f';Byte '\x8b';Byte '\xe2';Byte '\x70';Byte '\x44';Byte '\x41';Byte '\x56';Byte '\x54';Byte '\x53';Byte '\x41';Byte '\x57';Byte '\x4f';Byte '\x45';Byte '\x41';Byte '\x4b';Byte '\x54';Byte '\x51';Byte '\x5a';Byte '\x43';Byte '\x51';Byte '\x4f';Byte '\x55';Byte '\x56';Byte '\x52';Byte '\x00';Byte '\xaf';Byte '\xa1';Byte '\xa8';Byte '\x0b';Byte '\x4b';Byte '\x4e';Byte '\x9c';Byte '\x1a';Byte '\x09';Byte '\xdb';Byte '\x5f';Byte '\xa4';Byte '\xde';Byte '\xa1';Byte '\xf9';Byte '\x16';Byte '\x11';Byte '\xa3';Byte '\x47';Byte '\x80';Byte '\x5c';Byte '\x08';Byte '\x39';Byte '\x0c';Byte '\x55';Byte '\xf5';Byte '\x36';Byte '\xba';Byte '\x33';Byte '\x75';Byte '\xed';Byte '\x72';Byte '\xdc';Byte '\x76';Byte '\x93';Byte '\xef';Byte '\xfa';Byte '\xee';Byte '\x0e';Byte '\x0b';Byte '\x03';Byte '\x3d';Byte '\x39';Byte '\x6f';Byte '\x90';Byte '\x86';Byte '\xfb';Byte '\x2f';Byte '\x47';Byte '\x51';Byte '\x53';Byte '\x57';Byte '\x5a';Byte '\x43';Byte '\x52';Byte '\x57';Byte '\x58';Byte '\x43';Byte '\x46';Byte '\x53';Byte '\x4e';Byte '\x00';Byte '\xee';Byte '\xb6';Byte '\x9e';Byte '\x67';Byte '\x7f';Byte '\xf7';Byte '\xea';Byte '\x62';Byte '\x4d';Byte '\x4e';Byte '\x46';Byte '\x44';Byte '\x55';Byte '\x4e';Byte '\x57';Byte '\x46';Byte '\x44';Byte '\x53';Byte '\x4d';Byte '\x55';Byte '\x4e';Byte '\x00';Byte '\x82';Byte '\xf5';Byte '\x83';Byte '\x35';Byte '\x2d';Byte '\xeb';Byte '\xa3';Byte '\x6e';Byte '\x0f';Byte '\x91';Byte '\x40';Byte '\x85';Byte '\xb1';Byte '\x7f';Byte '\x42';Byte '\x69';]
let test_25_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400050L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40008cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40009bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000b1L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000e8L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400121L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400161L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400194L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001b9L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001efL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_26 = [
  data "AAAAAAHM" [
    Quad (Lit 7555119925513193693L);
    Quad (Lit 1816976784308289238L);
    Quad (Lit 4274825576748122863L);
    Quad (Lit 3493392942367456061L);
  ];
  data "AAAAAAHN" [
    Quad (Lit 861590809845270602L);
    Asciz ("SNUVKCABRV");
    Asciz ("EJGSULGPJE");
    Quad (Lit 2943027087195931838L);
    Quad (Lit 4385420124759004064L);
    Quad (Lit 6058559265971566756L);
  ];
  data "AAAAAAHO" [
    Asciz ("DYJVGYXMONNBFECCEWQW");
    Asciz ("JNNTHTPVIDOV");
    Quad (Lit 7071912020205963637L);
    Quad (Lit 2931140111074093344L);
    Asciz ("VXWPCRXMAQDKTXCCAJZ");
  ];
  data "AAAAAAHP" [
    Asciz ("UAZYVNLUCA");
  ];
  data "AAAAAAHQ" [
    Asciz ("HGOVQXGYYRQF");
  ];
  data "AAAAAAHR" [
    Quad (Lit 2320527125712288125L);
    Quad (Lit 6172160980328898488L);
    Quad (Lit 67869789218392473L);
    Quad (Lit 6277544282050589497L);
    Asciz ("QHBCCKVGMZZSVBVLPMX");
  ];
  data "AAAAAAHS" [
    Asciz ("FZVKFDZLKMPHKIXPU");
    Quad (Lit 4685635519160228049L);
  ];
  data "AAAAAAHT" [
    Quad (Lit 801868804649128528L);
    Asciz ("BKPCHGZEXFIMT");
    Quad (Lit 1204858538590091512L);
    Quad (Lit 809868487190429965L);
    Quad (Lit 3794808948192414533L);
  ];
  data "AAAAAAHU" [
    Quad (Lit 7049577871794430170L);
    Asciz ("RHGZOCKZLOWFBJT");
  ];
  data "AAAAAAHV" [
    Quad (Lit 5573722471122104496L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAHM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAHN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAHO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAHP"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAHQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAHR"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAHS"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAHT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAHU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAHV"); ~%Rax];
];
]
let test_26_data = [Byte '\xdd';Byte '\x88';Byte '\xb0';Byte '\x23';Byte '\x8b';Byte '\x2d';Byte '\xd9';Byte '\x68';Byte '\xd6';Byte '\xbe';Byte '\xd3';Byte '\x31';Byte '\xc2';Byte '\x32';Byte '\x37';Byte '\x19';Byte '\xef';Byte '\x82';Byte '\xd3';Byte '\x8a';Byte '\x36';Byte '\x3b';Byte '\x53';Byte '\x3b';Byte '\x3d';Byte '\x3b';Byte '\xab';Byte '\x4e';Byte '\x5f';Byte '\x06';Byte '\x7b';Byte '\x30';Byte '\x4a';Byte '\x88';Byte '\x91';Byte '\xd2';Byte '\x46';Byte '\xfc';Byte '\xf4';Byte '\x0b';Byte '\x53';Byte '\x4e';Byte '\x55';Byte '\x56';Byte '\x4b';Byte '\x43';Byte '\x41';Byte '\x42';Byte '\x52';Byte '\x56';Byte '\x00';Byte '\x45';Byte '\x4a';Byte '\x47';Byte '\x53';Byte '\x55';Byte '\x4c';Byte '\x47';Byte '\x50';Byte '\x4a';Byte '\x45';Byte '\x00';Byte '\xbe';Byte '\x84';Byte '\xaa';Byte '\x00';Byte '\x8b';Byte '\xbb';Byte '\xd7';Byte '\x28';Byte '\xa0';Byte '\x13';Byte '\x1c';Byte '\x57';Byte '\x5e';Byte '\x24';Byte '\xdc';Byte '\x3c';Byte '\xa4';Byte '\xf8';Byte '\xe2';Byte '\x82';Byte '\x8d';Byte '\x53';Byte '\x14';Byte '\x54';Byte '\x44';Byte '\x59';Byte '\x4a';Byte '\x56';Byte '\x47';Byte '\x59';Byte '\x58';Byte '\x4d';Byte '\x4f';Byte '\x4e';Byte '\x4e';Byte '\x42';Byte '\x46';Byte '\x45';Byte '\x43';Byte '\x43';Byte '\x45';Byte '\x57';Byte '\x51';Byte '\x57';Byte '\x00';Byte '\x4a';Byte '\x4e';Byte '\x4e';Byte '\x54';Byte '\x48';Byte '\x54';Byte '\x50';Byte '\x56';Byte '\x49';Byte '\x44';Byte '\x4f';Byte '\x56';Byte '\x00';Byte '\x75';Byte '\x09';Byte '\x31';Byte '\x87';Byte '\x83';Byte '\x7a';Byte '\x24';Byte '\x62';Byte '\x20';Byte '\x69';Byte '\x78';Byte '\xb3';Byte '\x66';Byte '\x80';Byte '\xad';Byte '\x28';Byte '\x56';Byte '\x58';Byte '\x57';Byte '\x50';Byte '\x43';Byte '\x52';Byte '\x58';Byte '\x4d';Byte '\x41';Byte '\x51';Byte '\x44';Byte '\x4b';Byte '\x54';Byte '\x58';Byte '\x43';Byte '\x43';Byte '\x41';Byte '\x4a';Byte '\x5a';Byte '\x00';Byte '\x55';Byte '\x41';Byte '\x5a';Byte '\x59';Byte '\x56';Byte '\x4e';Byte '\x4c';Byte '\x55';Byte '\x43';Byte '\x41';Byte '\x00';Byte '\x48';Byte '\x47';Byte '\x4f';Byte '\x56';Byte '\x51';Byte '\x58';Byte '\x47';Byte '\x59';Byte '\x59';Byte '\x52';Byte '\x51';Byte '\x46';Byte '\x00';Byte '\x7d';Byte '\x39';Byte '\xbd';Byte '\x4b';Byte '\x20';Byte '\x2b';Byte '\x34';Byte '\x20';Byte '\xb8';Byte '\xdf';Byte '\x07';Byte '\xc9';Byte '\xb5';Byte '\xeb';Byte '\xa7';Byte '\x55';Byte '\x99';Byte '\xc9';Byte '\x57';Byte '\xb5';Byte '\x36';Byte '\x1f';Byte '\xf1';Byte '\x00';Byte '\x39';Byte '\xf3';Byte '\x68';Byte '\xc1';Byte '\x43';Byte '\x51';Byte '\x1e';Byte '\x57';Byte '\x51';Byte '\x48';Byte '\x42';Byte '\x43';Byte '\x43';Byte '\x4b';Byte '\x56';Byte '\x47';Byte '\x4d';Byte '\x5a';Byte '\x5a';Byte '\x53';Byte '\x56';Byte '\x42';Byte '\x56';Byte '\x4c';Byte '\x50';Byte '\x4d';Byte '\x58';Byte '\x00';Byte '\x46';Byte '\x5a';Byte '\x56';Byte '\x4b';Byte '\x46';Byte '\x44';Byte '\x5a';Byte '\x4c';Byte '\x4b';Byte '\x4d';Byte '\x50';Byte '\x48';Byte '\x4b';Byte '\x49';Byte '\x58';Byte '\x50';Byte '\x55';Byte '\x00';Byte '\xd1';Byte '\x98';Byte '\x7f';Byte '\xda';Byte '\xad';Byte '\xb8';Byte '\x06';Byte '\x41';Byte '\x50';Byte '\x12';Byte '\x94';Byte '\xe9';Byte '\x6d';Byte '\xcf';Byte '\x20';Byte '\x0b';Byte '\x42';Byte '\x4b';Byte '\x50';Byte '\x43';Byte '\x48';Byte '\x47';Byte '\x5a';Byte '\x45';Byte '\x58';Byte '\x46';Byte '\x49';Byte '\x4d';Byte '\x54';Byte '\x00';Byte '\xf8';Byte '\x38';Byte '\x42';Byte '\x0d';Byte '\x75';Byte '\x84';Byte '\xb8';Byte '\x10';Byte '\x0d';Byte '\xc1';Byte '\xc4';Byte '\x25';Byte '\x19';Byte '\x3b';Byte '\x3d';Byte '\x0b';Byte '\x45';Byte '\x8b';Byte '\x7b';Byte '\xf3';Byte '\xa1';Byte '\xde';Byte '\xa9';Byte '\x34';Byte '\xda';Byte '\xe0';Byte '\xc2';Byte '\x60';Byte '\xb9';Byte '\x21';Byte '\xd5';Byte '\x61';Byte '\x52';Byte '\x48';Byte '\x47';Byte '\x5a';Byte '\x4f';Byte '\x43';Byte '\x4b';Byte '\x5a';Byte '\x4c';Byte '\x4f';Byte '\x57';Byte '\x46';Byte '\x42';Byte '\x4a';Byte '\x54';Byte '\x00';Byte '\xb0';Byte '\x70';Byte '\xd8';Byte '\x7f';Byte '\x0e';Byte '\xd7';Byte '\x59';Byte '\x4d';]
let test_26_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400050L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400070L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000a6L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000ecL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f7L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400104L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400138L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400152L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400180L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400198L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_27 = [
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAHW"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAHX"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAHY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAHZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAIA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAIB"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAIC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAID"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAIE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAIF"); ~%Rax];
];
  data "AAAAAAHW" [
    Quad (Lit 4708009118711722804L);
  ];
  data "AAAAAAHX" [
    Quad (Lit 5714093152305320645L);
    Quad (Lit 7430392687755168281L);
    Asciz ("HCJKJCFZCFCDQSU");
    Asciz ("LWRJICOFCLZBDIM");
  ];
  data "AAAAAAHY" [
    Quad (Lit 8720992836489904067L);
    Quad (Lit 6640411443634654787L);
    Quad (Lit 149674635953874307L);
  ];
  data "AAAAAAHZ" [
    Quad (Lit 6203709579556989195L);
    Quad (Lit 450487196982515458L);
    Quad (Lit 8951456186071195765L);
  ];
  data "AAAAAAIA" [
    Quad (Lit 1434111883268760347L);
  ];
  data "AAAAAAIB" [
    Asciz ("MYKPDJZGDCNSQPBZC");
    Quad (Lit 4438790593820221290L);
    Asciz ("TIDKZHJVENEB");
    Asciz ("JSSUQIBWTOUMTODVJ");
  ];
  data "AAAAAAIC" [
    Asciz ("NWFTYAJTXVZFGE");
    Quad (Lit 7504027048946151748L);
  ];
  data "AAAAAAID" [
    Asciz ("YTWUEWHZTLDZUHYWYV");
  ];
  data "AAAAAAIE" [
    Quad (Lit 8354474863008541660L);
    Asciz ("LCJWGFMGBNYXOFFOK");
    Quad (Lit 8472642682474824768L);
    Quad (Lit 5385917596939351302L);
  ];
  data "AAAAAAIF" [
    Asciz ("UQSVAIUAASCZOFVXSANR");
    Asciz ("EXXPBCRVXSDPIUU");
    Asciz ("EEVSQLVOKR");
    Asciz ("DIYQOJNUHKMYXMUTQSXG");
    Quad (Lit 7400883586500736881L);
  ];
]
let test_27_data = [Byte '\x34';Byte '\xb3';Byte '\x1c';Byte '\x70';Byte '\x59';Byte '\x35';Byte '\x56';Byte '\x41';Byte '\xc5';Byte '\x92';Byte '\xa6';Byte '\x8c';Byte '\x72';Byte '\x89';Byte '\x4c';Byte '\x4f';Byte '\x19';Byte '\x8a';Byte '\x4e';Byte '\x17';Byte '\xc8';Byte '\x0e';Byte '\x1e';Byte '\x67';Byte '\x48';Byte '\x43';Byte '\x4a';Byte '\x4b';Byte '\x4a';Byte '\x43';Byte '\x46';Byte '\x5a';Byte '\x43';Byte '\x46';Byte '\x43';Byte '\x44';Byte '\x51';Byte '\x53';Byte '\x55';Byte '\x00';Byte '\x4c';Byte '\x57';Byte '\x52';Byte '\x4a';Byte '\x49';Byte '\x43';Byte '\x4f';Byte '\x46';Byte '\x43';Byte '\x4c';Byte '\x5a';Byte '\x42';Byte '\x44';Byte '\x49';Byte '\x4d';Byte '\x00';Byte '\xc3';Byte '\xff';Byte '\xb4';Byte '\x6b';Byte '\xc7';Byte '\x30';Byte '\x07';Byte '\x79';Byte '\x43';Byte '\x4e';Byte '\x48';Byte '\x8c';Byte '\x06';Byte '\x7b';Byte '\x27';Byte '\x5c';Byte '\x83';Byte '\xa5';Byte '\xea';Byte '\xd3';Byte '\x49';Byte '\xc0';Byte '\x13';Byte '\x02';Byte '\x0b';Byte '\xa9';Byte '\x2e';Byte '\x73';Byte '\xfe';Byte '\x00';Byte '\x18';Byte '\x56';Byte '\x02';Byte '\x17';Byte '\x01';Byte '\x08';Byte '\xb8';Byte '\x73';Byte '\x40';Byte '\x06';Byte '\x75';Byte '\x20';Byte '\x3f';Byte '\x71';Byte '\xf9';Byte '\xf5';Byte '\x39';Byte '\x7c';Byte '\x1b';Byte '\xa3';Byte '\x66';Byte '\xda';Byte '\x28';Byte '\xfd';Byte '\xe6';Byte '\x13';Byte '\x4d';Byte '\x59';Byte '\x4b';Byte '\x50';Byte '\x44';Byte '\x4a';Byte '\x5a';Byte '\x47';Byte '\x44';Byte '\x43';Byte '\x4e';Byte '\x53';Byte '\x51';Byte '\x50';Byte '\x42';Byte '\x5a';Byte '\x43';Byte '\x00';Byte '\x6a';Byte '\xdf';Byte '\xff';Byte '\x00';Byte '\x87';Byte '\xc0';Byte '\x99';Byte '\x3d';Byte '\x54';Byte '\x49';Byte '\x44';Byte '\x4b';Byte '\x5a';Byte '\x48';Byte '\x4a';Byte '\x56';Byte '\x45';Byte '\x4e';Byte '\x45';Byte '\x42';Byte '\x00';Byte '\x4a';Byte '\x53';Byte '\x53';Byte '\x55';Byte '\x51';Byte '\x49';Byte '\x42';Byte '\x57';Byte '\x54';Byte '\x4f';Byte '\x55';Byte '\x4d';Byte '\x54';Byte '\x4f';Byte '\x44';Byte '\x56';Byte '\x4a';Byte '\x00';Byte '\x4e';Byte '\x57';Byte '\x46';Byte '\x54';Byte '\x59';Byte '\x41';Byte '\x4a';Byte '\x54';Byte '\x58';Byte '\x56';Byte '\x5a';Byte '\x46';Byte '\x47';Byte '\x45';Byte '\x00';Byte '\x44';Byte '\xb1';Byte '\x5b';Byte '\xcd';Byte '\xd7';Byte '\xa8';Byte '\x23';Byte '\x68';Byte '\x59';Byte '\x54';Byte '\x57';Byte '\x55';Byte '\x45';Byte '\x57';Byte '\x48';Byte '\x5a';Byte '\x54';Byte '\x4c';Byte '\x44';Byte '\x5a';Byte '\x55';Byte '\x48';Byte '\x59';Byte '\x57';Byte '\x59';Byte '\x56';Byte '\x00';Byte '\xdc';Byte '\xeb';Byte '\x8d';Byte '\xbe';Byte '\x9f';Byte '\x0e';Byte '\xf1';Byte '\x73';Byte '\x4c';Byte '\x43';Byte '\x4a';Byte '\x57';Byte '\x47';Byte '\x46';Byte '\x4d';Byte '\x47';Byte '\x42';Byte '\x4e';Byte '\x59';Byte '\x58';Byte '\x4f';Byte '\x46';Byte '\x46';Byte '\x4f';Byte '\x4b';Byte '\x00';Byte '\x40';Byte '\x84';Byte '\xb9';Byte '\x35';Byte '\xa1';Byte '\xdf';Byte '\x94';Byte '\x75';Byte '\x06';Byte '\x75';Byte '\x18';Byte '\xc3';Byte '\x84';Byte '\x9f';Byte '\xbe';Byte '\x4a';Byte '\x55';Byte '\x51';Byte '\x53';Byte '\x56';Byte '\x41';Byte '\x49';Byte '\x55';Byte '\x41';Byte '\x41';Byte '\x53';Byte '\x43';Byte '\x5a';Byte '\x4f';Byte '\x46';Byte '\x56';Byte '\x58';Byte '\x53';Byte '\x41';Byte '\x4e';Byte '\x52';Byte '\x00';Byte '\x45';Byte '\x58';Byte '\x58';Byte '\x50';Byte '\x42';Byte '\x43';Byte '\x52';Byte '\x56';Byte '\x58';Byte '\x53';Byte '\x44';Byte '\x50';Byte '\x49';Byte '\x55';Byte '\x55';Byte '\x00';Byte '\x45';Byte '\x45';Byte '\x56';Byte '\x53';Byte '\x51';Byte '\x4c';Byte '\x56';Byte '\x4f';Byte '\x4b';Byte '\x52';Byte '\x00';Byte '\x44';Byte '\x49';Byte '\x59';Byte '\x51';Byte '\x4f';Byte '\x4a';Byte '\x4e';Byte '\x55';Byte '\x48';Byte '\x4b';Byte '\x4d';Byte '\x59';Byte '\x58';Byte '\x4d';Byte '\x55';Byte '\x54';Byte '\x51';Byte '\x53';Byte '\x58';Byte '\x47';Byte '\x00';Byte '\x71';Byte '\x37';Byte '\x65';Byte '\x0d';Byte '\x69';Byte '\x38';Byte '\xb5';Byte '\x66';]
let test_27_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400050L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400058L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400088L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000a0L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000b8L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c0L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f9L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400110L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400123L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40014dL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_28 = [
  data "AAAAAAIG" [
    Asciz ("BRSGLLBBHDNCUAP");
    Asciz ("WXWRUIRNWJKVFGUKPRNO");
  ];
  data "AAAAAAIH" [
    Asciz ("CLXVPNAKKWMFUY");
    Quad (Lit 2493006354436974405L);
  ];
  data "AAAAAAII" [
    Asciz ("LYCJKDBADFZIJFGRIH");
    Asciz ("AAUYMTQRBUMNRERFCMF");
  ];
  data "AAAAAAIJ" [
    Asciz ("WWBIGIZIXRPP");
    Asciz ("NEOGAEBSBX");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAIG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAIH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAII"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAIJ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAIK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAIL"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAIM"); ~%Rax];
];
  data "AAAAAAIK" [
    Quad (Lit 6509115549429761363L);
    Asciz ("QCONLKBPJTKNN");
    Quad (Lit 8766995983980491331L);
    Quad (Lit 3110897938097908632L);
    Asciz ("IYTUDGUQRCRPEZNO");
  ];
  data "AAAAAAIL" [
    Asciz ("QLCFWPKKBZOB");
    Quad (Lit 6277245621412198688L);
    Quad (Lit 899425720245745890L);
    Asciz ("NDUBDZMDVJUTEBUFMGDM");
    Quad (Lit 8579246080315496201L);
    Asciz ("APREEOZGTW");
  ];
  data "AAAAAAIM" [
    Quad (Lit 437364667263284434L);
    Asciz ("HNBFNKVNVA");
    Asciz ("HKXLNCQLHJAYCDY");
    Asciz ("QNYXKKRIYDNDDZ");
    Asciz ("BNZBOSUTPACVNNSO");
    Asciz ("FYRSXXNQXWGQXJIBEEV");
  ];
]
let test_28_data = [Byte '\x42';Byte '\x52';Byte '\x53';Byte '\x47';Byte '\x4c';Byte '\x4c';Byte '\x42';Byte '\x42';Byte '\x48';Byte '\x44';Byte '\x4e';Byte '\x43';Byte '\x55';Byte '\x41';Byte '\x50';Byte '\x00';Byte '\x57';Byte '\x58';Byte '\x57';Byte '\x52';Byte '\x55';Byte '\x49';Byte '\x52';Byte '\x4e';Byte '\x57';Byte '\x4a';Byte '\x4b';Byte '\x56';Byte '\x46';Byte '\x47';Byte '\x55';Byte '\x4b';Byte '\x50';Byte '\x52';Byte '\x4e';Byte '\x4f';Byte '\x00';Byte '\x43';Byte '\x4c';Byte '\x58';Byte '\x56';Byte '\x50';Byte '\x4e';Byte '\x41';Byte '\x4b';Byte '\x4b';Byte '\x57';Byte '\x4d';Byte '\x46';Byte '\x55';Byte '\x59';Byte '\x00';Byte '\x45';Byte '\xe7';Byte '\x01';Byte '\x23';Byte '\x12';Byte '\xf0';Byte '\x98';Byte '\x22';Byte '\x4c';Byte '\x59';Byte '\x43';Byte '\x4a';Byte '\x4b';Byte '\x44';Byte '\x42';Byte '\x41';Byte '\x44';Byte '\x46';Byte '\x5a';Byte '\x49';Byte '\x4a';Byte '\x46';Byte '\x47';Byte '\x52';Byte '\x49';Byte '\x48';Byte '\x00';Byte '\x41';Byte '\x41';Byte '\x55';Byte '\x59';Byte '\x4d';Byte '\x54';Byte '\x51';Byte '\x52';Byte '\x42';Byte '\x55';Byte '\x4d';Byte '\x4e';Byte '\x52';Byte '\x45';Byte '\x52';Byte '\x46';Byte '\x43';Byte '\x4d';Byte '\x46';Byte '\x00';Byte '\x57';Byte '\x57';Byte '\x42';Byte '\x49';Byte '\x47';Byte '\x49';Byte '\x5a';Byte '\x49';Byte '\x58';Byte '\x52';Byte '\x50';Byte '\x50';Byte '\x00';Byte '\x4e';Byte '\x45';Byte '\x4f';Byte '\x47';Byte '\x41';Byte '\x45';Byte '\x42';Byte '\x53';Byte '\x42';Byte '\x58';Byte '\x00';Byte '\x53';Byte '\x85';Byte '\xbb';Byte '\xfd';Byte '\x1a';Byte '\x06';Byte '\x55';Byte '\x5a';Byte '\x51';Byte '\x43';Byte '\x4f';Byte '\x4e';Byte '\x4c';Byte '\x4b';Byte '\x42';Byte '\x50';Byte '\x4a';Byte '\x54';Byte '\x4b';Byte '\x4e';Byte '\x4e';Byte '\x00';Byte '\x43';Byte '\xf2';Byte '\x6e';Byte '\xdc';Byte '\x65';Byte '\xa0';Byte '\xaa';Byte '\x79';Byte '\x98';Byte '\x2b';Byte '\xd2';Byte '\x44';Byte '\x31';Byte '\x21';Byte '\x2c';Byte '\x2b';Byte '\x49';Byte '\x59';Byte '\x54';Byte '\x55';Byte '\x44';Byte '\x47';Byte '\x55';Byte '\x51';Byte '\x52';Byte '\x43';Byte '\x52';Byte '\x50';Byte '\x45';Byte '\x5a';Byte '\x4e';Byte '\x4f';Byte '\x00';Byte '\x51';Byte '\x4c';Byte '\x43';Byte '\x46';Byte '\x57';Byte '\x50';Byte '\x4b';Byte '\x4b';Byte '\x42';Byte '\x5a';Byte '\x4f';Byte '\x42';Byte '\x00';Byte '\x20';Byte '\x79';Byte '\x26';Byte '\x68';Byte '\xa2';Byte '\x41';Byte '\x1d';Byte '\x57';Byte '\xe2';Byte '\xf8';Byte '\x18';Byte '\x5d';Byte '\xed';Byte '\x66';Byte '\x7b';Byte '\x0c';Byte '\x4e';Byte '\x44';Byte '\x55';Byte '\x42';Byte '\x44';Byte '\x5a';Byte '\x4d';Byte '\x44';Byte '\x56';Byte '\x4a';Byte '\x55';Byte '\x54';Byte '\x45';Byte '\x42';Byte '\x55';Byte '\x46';Byte '\x4d';Byte '\x47';Byte '\x44';Byte '\x4d';Byte '\x00';Byte '\x09';Byte '\x17';Byte '\xde';Byte '\xf1';Byte '\xda';Byte '\x9a';Byte '\x0f';Byte '\x77';Byte '\x41';Byte '\x50';Byte '\x52';Byte '\x45';Byte '\x45';Byte '\x4f';Byte '\x5a';Byte '\x47';Byte '\x54';Byte '\x57';Byte '\x00';Byte '\xd2';Byte '\xf4';Byte '\x88';Byte '\xfd';Byte '\xd8';Byte '\xd4';Byte '\x11';Byte '\x06';Byte '\x48';Byte '\x4e';Byte '\x42';Byte '\x46';Byte '\x4e';Byte '\x4b';Byte '\x56';Byte '\x4e';Byte '\x56';Byte '\x41';Byte '\x00';Byte '\x48';Byte '\x4b';Byte '\x58';Byte '\x4c';Byte '\x4e';Byte '\x43';Byte '\x51';Byte '\x4c';Byte '\x48';Byte '\x4a';Byte '\x41';Byte '\x59';Byte '\x43';Byte '\x44';Byte '\x59';Byte '\x00';Byte '\x51';Byte '\x4e';Byte '\x59';Byte '\x58';Byte '\x4b';Byte '\x4b';Byte '\x52';Byte '\x49';Byte '\x59';Byte '\x44';Byte '\x4e';Byte '\x44';Byte '\x44';Byte '\x5a';Byte '\x00';Byte '\x42';Byte '\x4e';Byte '\x5a';Byte '\x42';Byte '\x4f';Byte '\x53';Byte '\x55';Byte '\x54';Byte '\x50';Byte '\x41';Byte '\x43';Byte '\x56';Byte '\x4e';Byte '\x4e';Byte '\x53';Byte '\x4f';Byte '\x00';Byte '\x46';Byte '\x59';Byte '\x52';Byte '\x53';Byte '\x58';Byte '\x58';Byte '\x4e';Byte '\x51';Byte '\x58';Byte '\x57';Byte '\x47';Byte '\x51';Byte '\x58';Byte '\x4a';Byte '\x49';Byte '\x42';Byte '\x45';Byte '\x45';Byte '\x56';Byte '\x00';]
let test_28_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400038L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40005dL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400074L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40009bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000b3L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000eaL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40012fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_29 = [
  data "AAAAAAIN" [
    Asciz ("VDTOOCNBHNKVUVXJ");
  ];
  data "AAAAAAIO" [
    Asciz ("PKJQZIDYKJX");
  ];
  data "AAAAAAIP" [
    Asciz ("FBQLLWOMLFORE");
    Asciz ("OTBSNMMOLIJJVRBCF");
  ];
  data "AAAAAAIQ" [
    Quad (Lit 1079363360222770797L);
    Quad (Lit 6428170684339345082L);
    Asciz ("XDGHNWVYEHPRRSQHQEHV");
    Asciz ("MGYVUKFHSKHCQH");
  ];
  data "AAAAAAIR" [
    Quad (Lit 1320968774320473313L);
    Quad (Lit 5564621413702398892L);
    Quad (Lit 6174604908473353717L);
    Asciz ("APINBNXAUKNMTEENI");
    Quad (Lit 5321417884877388502L);
  ];
  data "AAAAAAIS" [
    Quad (Lit 1380298576704078228L);
    Asciz ("FDZZDUJHVNBCTDXWLN");
    Quad (Lit 8169721315197362620L);
    Quad (Lit 7451195353090312119L);
  ];
  data "AAAAAAIT" [
    Quad (Lit 6528406095051169022L);
    Quad (Lit 2776449275700792195L);
    Quad (Lit 201056317347985714L);
    Asciz ("KSQIZMQJWJRWWHNNCVCG");
  ];
  data "AAAAAAIU" [
    Quad (Lit 5776157553201223857L);
    Asciz ("FYVHKKLIPHKBJRG");
    Quad (Lit 2970095726594985148L);
  ];
  data "AAAAAAIV" [
    Quad (Lit 1473106202383544112L);
    Asciz ("SSRKHDZLULDRF");
    Asciz ("MAZZKSLVERXUDQTOM");
    Asciz ("GDXCAJXDDSJSR");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAIN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAIO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAIP"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAIQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAIR"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAIS"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAIT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAIU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAIV"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAIW"); ~%Rax];
];
  data "AAAAAAIW" [
    Quad (Lit 6145024527905019336L);
    Asciz ("VAWKJXCTQPTFDB");
    Quad (Lit 3371121728882877024L);
    Asciz ("KBUQBQVKGXHMCIK");
  ];
]
let test_29_data = [Byte '\x56';Byte '\x44';Byte '\x54';Byte '\x4f';Byte '\x4f';Byte '\x43';Byte '\x4e';Byte '\x42';Byte '\x48';Byte '\x4e';Byte '\x4b';Byte '\x56';Byte '\x55';Byte '\x56';Byte '\x58';Byte '\x4a';Byte '\x00';Byte '\x50';Byte '\x4b';Byte '\x4a';Byte '\x51';Byte '\x5a';Byte '\x49';Byte '\x44';Byte '\x59';Byte '\x4b';Byte '\x4a';Byte '\x58';Byte '\x00';Byte '\x46';Byte '\x42';Byte '\x51';Byte '\x4c';Byte '\x4c';Byte '\x57';Byte '\x4f';Byte '\x4d';Byte '\x4c';Byte '\x46';Byte '\x4f';Byte '\x52';Byte '\x45';Byte '\x00';Byte '\x4f';Byte '\x54';Byte '\x42';Byte '\x53';Byte '\x4e';Byte '\x4d';Byte '\x4d';Byte '\x4f';Byte '\x4c';Byte '\x49';Byte '\x4a';Byte '\x4a';Byte '\x56';Byte '\x52';Byte '\x42';Byte '\x43';Byte '\x46';Byte '\x00';Byte '\x6d';Byte '\x76';Byte '\xa6';Byte '\xe5';Byte '\x41';Byte '\xab';Byte '\xfa';Byte '\x0e';Byte '\xba';Byte '\x56';Byte '\xa0';Byte '\xf3';Byte '\x2d';Byte '\x73';Byte '\x35';Byte '\x59';Byte '\x58';Byte '\x44';Byte '\x47';Byte '\x48';Byte '\x4e';Byte '\x57';Byte '\x56';Byte '\x59';Byte '\x45';Byte '\x48';Byte '\x50';Byte '\x52';Byte '\x52';Byte '\x53';Byte '\x51';Byte '\x48';Byte '\x51';Byte '\x45';Byte '\x48';Byte '\x56';Byte '\x00';Byte '\x4d';Byte '\x47';Byte '\x59';Byte '\x56';Byte '\x55';Byte '\x4b';Byte '\x46';Byte '\x48';Byte '\x53';Byte '\x4b';Byte '\x48';Byte '\x43';Byte '\x51';Byte '\x48';Byte '\x00';Byte '\xe1';Byte '\x44';Byte '\xc1';Byte '\xf8';Byte '\x19';Byte '\x06';Byte '\x55';Byte '\x12';Byte '\xac';Byte '\x73';Byte '\x43';Byte '\x71';Byte '\xb1';Byte '\x81';Byte '\x39';Byte '\x4d';Byte '\xf5';Byte '\x05';Byte '\xf0';Byte '\x25';Byte '\x73';Byte '\x9a';Byte '\xb0';Byte '\x55';Byte '\x41';Byte '\x50';Byte '\x49';Byte '\x4e';Byte '\x42';Byte '\x4e';Byte '\x58';Byte '\x41';Byte '\x55';Byte '\x4b';Byte '\x4e';Byte '\x4d';Byte '\x54';Byte '\x45';Byte '\x45';Byte '\x4e';Byte '\x49';Byte '\x00';Byte '\xd6';Byte '\xfa';Byte '\x86';Byte '\x49';Byte '\x5f';Byte '\x79';Byte '\xd9';Byte '\x49';Byte '\x94';Byte '\x81';Byte '\x6c';Byte '\x0c';Byte '\x3e';Byte '\xce';Byte '\x27';Byte '\x13';Byte '\x46';Byte '\x44';Byte '\x5a';Byte '\x5a';Byte '\x44';Byte '\x55';Byte '\x4a';Byte '\x48';Byte '\x56';Byte '\x4e';Byte '\x42';Byte '\x43';Byte '\x54';Byte '\x44';Byte '\x58';Byte '\x57';Byte '\x4c';Byte '\x4e';Byte '\x00';Byte '\xbc';Byte '\xa1';Byte '\x46';Byte '\x4a';Byte '\x40';Byte '\xae';Byte '\x60';Byte '\x71';Byte '\xb7';Byte '\x47';Byte '\xfd';Byte '\x0c';Byte '\xb2';Byte '\xf6';Byte '\x67';Byte '\x67';Byte '\xfe';Byte '\x1c';Byte '\x05';Byte '\x25';Byte '\xc1';Byte '\x8e';Byte '\x99';Byte '\x5a';Byte '\x83';Byte '\x4b';Byte '\x09';Byte '\xef';Byte '\xe7';Byte '\xed';Byte '\x87';Byte '\x26';Byte '\x32';Byte '\xf9';Byte '\x5f';Byte '\xc7';Byte '\xa7';Byte '\x4b';Byte '\xca';Byte '\x02';Byte '\x4b';Byte '\x53';Byte '\x51';Byte '\x49';Byte '\x5a';Byte '\x4d';Byte '\x51';Byte '\x4a';Byte '\x57';Byte '\x4a';Byte '\x52';Byte '\x57';Byte '\x57';Byte '\x48';Byte '\x4e';Byte '\x4e';Byte '\x43';Byte '\x56';Byte '\x43';Byte '\x47';Byte '\x00';Byte '\xb1';Byte '\x98';Byte '\x3f';Byte '\xf5';Byte '\xb0';Byte '\x08';Byte '\x29';Byte '\x50';Byte '\x46';Byte '\x59';Byte '\x56';Byte '\x48';Byte '\x4b';Byte '\x4b';Byte '\x4c';Byte '\x49';Byte '\x50';Byte '\x48';Byte '\x4b';Byte '\x42';Byte '\x4a';Byte '\x52';Byte '\x47';Byte '\x00';Byte '\xbc';Byte '\x8c';Byte '\x99';Byte '\xbc';Byte '\x53';Byte '\xe6';Byte '\x37';Byte '\x29';Byte '\x30';Byte '\xef';Byte '\x7e';Byte '\x45';Byte '\x49';Byte '\x86';Byte '\x71';Byte '\x14';Byte '\x53';Byte '\x53';Byte '\x52';Byte '\x4b';Byte '\x48';Byte '\x44';Byte '\x5a';Byte '\x4c';Byte '\x55';Byte '\x4c';Byte '\x44';Byte '\x52';Byte '\x46';Byte '\x00';Byte '\x4d';Byte '\x41';Byte '\x5a';Byte '\x5a';Byte '\x4b';Byte '\x53';Byte '\x4c';Byte '\x56';Byte '\x45';Byte '\x52';Byte '\x58';Byte '\x55';Byte '\x44';Byte '\x51';Byte '\x54';Byte '\x4f';Byte '\x4d';Byte '\x00';Byte '\x47';Byte '\x44';Byte '\x58';Byte '\x43';Byte '\x41';Byte '\x4a';Byte '\x58';Byte '\x44';Byte '\x44';Byte '\x53';Byte '\x4a';Byte '\x53';Byte '\x52';Byte '\x00';Byte '\xc8';Byte '\x55';Byte '\xd7';Byte '\x19';Byte '\x40';Byte '\x83';Byte '\x47';Byte '\x55';Byte '\x56';Byte '\x41';Byte '\x57';Byte '\x4b';Byte '\x4a';Byte '\x58';Byte '\x43';Byte '\x54';Byte '\x51';Byte '\x50';Byte '\x54';Byte '\x46';Byte '\x44';Byte '\x42';Byte '\x00';Byte '\x60';Byte '\x22';Byte '\xaa';Byte '\xf8';Byte '\x59';Byte '\xa1';Byte '\xc8';Byte '\x2e';Byte '\x4b';Byte '\x42';Byte '\x55';Byte '\x51';Byte '\x42';Byte '\x51';Byte '\x56';Byte '\x4b';Byte '\x47';Byte '\x58';Byte '\x48';Byte '\x4d';Byte '\x43';Byte '\x49';Byte '\x4b';Byte '\x00';]
let test_29_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400050L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400061L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40006dL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40008dL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c1L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f3L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40011eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40014bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40016bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001a1L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_30 = [
  data "AAAAAAIX" [
    Quad (Lit 326696916597486284L);
  ];
  data "AAAAAAIY" [
    Quad (Lit 4255003803922693824L);
    Quad (Lit 3774652789997424696L);
    Quad (Lit 2112990930947560860L);
    Quad (Lit 5238948731172401894L);
  ];
  data "AAAAAAIZ" [
    Asciz ("MGLAXNJHYFQUHRQ");
    Asciz ("DAPRSSAKPVYUDNQAQMOA");
    Asciz ("PYJLMJLDFSZCBBBR");
    Asciz ("IJXLIGSYYWQZ");
    Quad (Lit 1439780779241170027L);
  ];
  data "AAAAAAJA" [
    Asciz ("FEFHGEGLPLAHYFPJED");
    Asciz ("WAALXVWVJDBCLIZZIGO");
    Asciz ("FPLVDXHFNCHFI");
  ];
  data "AAAAAAJB" [
    Asciz ("EIPZERZXJINFSNG");
  ];
  data "AAAAAAJC" [
    Quad (Lit 4664514916722726104L);
    Quad (Lit 2236263129185333068L);
    Asciz ("WJPVHGVJAUGUDBS");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAIX"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAIY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAIZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAJA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAJB"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAJC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAJD"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAJE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAJF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAJG"); ~%Rax];
];
  data "AAAAAAJD" [
    Quad (Lit 3368305185855216062L);
    Quad (Lit 8825546826226929339L);
    Asciz ("QEVAAVUNZWYMSEKIEG");
  ];
  data "AAAAAAJE" [
    Asciz ("XSMNVBIYYGORMTMND");
    Asciz ("IHPOPRYITLHATIOAFB");
  ];
  data "AAAAAAJF" [
    Asciz ("PYMDDQWFGMFIMCXZ");
    Quad (Lit 6289210961425361622L);
    Quad (Lit 1876701098649779032L);
    Quad (Lit 7809482424086985937L);
    Quad (Lit 7507666171979563375L);
  ];
  data "AAAAAAJG" [
    Quad (Lit 5114717538094609809L);
  ];
]
let test_30_data = [Byte '\xcc';Byte '\x32';Byte '\x02';Byte '\x5f';Byte '\x1d';Byte '\xa9';Byte '\x88';Byte '\x04';Byte '\xc0';Byte '\x7e';Byte '\xbf';Byte '\x6a';Byte '\x6a';Byte '\xcf';Byte '\x0c';Byte '\x3b';Byte '\x38';Byte '\xd0';Byte '\x3b';Byte '\xaa';Byte '\xb6';Byte '\x42';Byte '\x62';Byte '\x34';Byte '\x9c';Byte '\x55';Byte '\xc0';Byte '\x7c';Byte '\x0e';Byte '\xda';Byte '\x52';Byte '\x1d';Byte '\xe6';Byte '\xb2';Byte '\x03';Byte '\x26';Byte '\x1d';Byte '\x7c';Byte '\xb4';Byte '\x48';Byte '\x4d';Byte '\x47';Byte '\x4c';Byte '\x41';Byte '\x58';Byte '\x4e';Byte '\x4a';Byte '\x48';Byte '\x59';Byte '\x46';Byte '\x51';Byte '\x55';Byte '\x48';Byte '\x52';Byte '\x51';Byte '\x00';Byte '\x44';Byte '\x41';Byte '\x50';Byte '\x52';Byte '\x53';Byte '\x53';Byte '\x41';Byte '\x4b';Byte '\x50';Byte '\x56';Byte '\x59';Byte '\x55';Byte '\x44';Byte '\x4e';Byte '\x51';Byte '\x41';Byte '\x51';Byte '\x4d';Byte '\x4f';Byte '\x41';Byte '\x00';Byte '\x50';Byte '\x59';Byte '\x4a';Byte '\x4c';Byte '\x4d';Byte '\x4a';Byte '\x4c';Byte '\x44';Byte '\x46';Byte '\x53';Byte '\x5a';Byte '\x43';Byte '\x42';Byte '\x42';Byte '\x42';Byte '\x52';Byte '\x00';Byte '\x49';Byte '\x4a';Byte '\x58';Byte '\x4c';Byte '\x49';Byte '\x47';Byte '\x53';Byte '\x59';Byte '\x59';Byte '\x57';Byte '\x51';Byte '\x5a';Byte '\x00';Byte '\x6b';Byte '\xe4';Byte '\x1a';Byte '\x8d';Byte '\xfd';Byte '\x20';Byte '\xfb';Byte '\x13';Byte '\x46';Byte '\x45';Byte '\x46';Byte '\x48';Byte '\x47';Byte '\x45';Byte '\x47';Byte '\x4c';Byte '\x50';Byte '\x4c';Byte '\x41';Byte '\x48';Byte '\x59';Byte '\x46';Byte '\x50';Byte '\x4a';Byte '\x45';Byte '\x44';Byte '\x00';Byte '\x57';Byte '\x41';Byte '\x41';Byte '\x4c';Byte '\x58';Byte '\x56';Byte '\x57';Byte '\x56';Byte '\x4a';Byte '\x44';Byte '\x42';Byte '\x43';Byte '\x4c';Byte '\x49';Byte '\x5a';Byte '\x5a';Byte '\x49';Byte '\x47';Byte '\x4f';Byte '\x00';Byte '\x46';Byte '\x50';Byte '\x4c';Byte '\x56';Byte '\x44';Byte '\x58';Byte '\x48';Byte '\x46';Byte '\x4e';Byte '\x43';Byte '\x48';Byte '\x46';Byte '\x49';Byte '\x00';Byte '\x45';Byte '\x49';Byte '\x50';Byte '\x5a';Byte '\x45';Byte '\x52';Byte '\x5a';Byte '\x58';Byte '\x4a';Byte '\x49';Byte '\x4e';Byte '\x46';Byte '\x53';Byte '\x4e';Byte '\x47';Byte '\x00';Byte '\xd8';Byte '\xd4';Byte '\xc4';Byte '\x64';Byte '\x9a';Byte '\xaf';Byte '\xbb';Byte '\x40';Byte '\x4c';Byte '\x2f';Byte '\x65';Byte '\xbf';Byte '\x77';Byte '\xcd';Byte '\x08';Byte '\x1f';Byte '\x57';Byte '\x4a';Byte '\x50';Byte '\x56';Byte '\x48';Byte '\x47';Byte '\x56';Byte '\x4a';Byte '\x41';Byte '\x55';Byte '\x47';Byte '\x55';Byte '\x44';Byte '\x42';Byte '\x53';Byte '\x00';Byte '\xbe';Byte '\x99';Byte '\x01';Byte '\x72';Byte '\xb8';Byte '\x9f';Byte '\xbe';Byte '\x2e';Byte '\xbb';Byte '\x0e';Byte '\xd5';Byte '\x25';Byte '\x14';Byte '\xa4';Byte '\x7a';Byte '\x7a';Byte '\x51';Byte '\x45';Byte '\x56';Byte '\x41';Byte '\x41';Byte '\x56';Byte '\x55';Byte '\x4e';Byte '\x5a';Byte '\x57';Byte '\x59';Byte '\x4d';Byte '\x53';Byte '\x45';Byte '\x4b';Byte '\x49';Byte '\x45';Byte '\x47';Byte '\x00';Byte '\x58';Byte '\x53';Byte '\x4d';Byte '\x4e';Byte '\x56';Byte '\x42';Byte '\x49';Byte '\x59';Byte '\x59';Byte '\x47';Byte '\x4f';Byte '\x52';Byte '\x4d';Byte '\x54';Byte '\x4d';Byte '\x4e';Byte '\x44';Byte '\x00';Byte '\x49';Byte '\x48';Byte '\x50';Byte '\x4f';Byte '\x50';Byte '\x52';Byte '\x59';Byte '\x49';Byte '\x54';Byte '\x4c';Byte '\x48';Byte '\x41';Byte '\x54';Byte '\x49';Byte '\x4f';Byte '\x41';Byte '\x46';Byte '\x42';Byte '\x00';Byte '\x50';Byte '\x59';Byte '\x4d';Byte '\x44';Byte '\x44';Byte '\x51';Byte '\x57';Byte '\x46';Byte '\x47';Byte '\x4d';Byte '\x46';Byte '\x49';Byte '\x4d';Byte '\x43';Byte '\x58';Byte '\x5a';Byte '\x00';Byte '\xd6';Byte '\x6a';Byte '\x40';Byte '\x39';Byte '\x0c';Byte '\xc4';Byte '\x47';Byte '\x57';Byte '\x58';Byte '\xfb';Byte '\x9a';Byte '\xbe';Byte '\xb4';Byte '\x61';Byte '\x0b';Byte '\x1a';Byte '\xd1';Byte '\x7c';Byte '\x5c';Byte '\x67';Byte '\xe3';Byte '\xda';Byte '\x60';Byte '\x6c';Byte '\x6f';Byte '\x01';Byte '\x0f';Byte '\x29';Byte '\x9b';Byte '\x96';Byte '\x30';Byte '\x68';Byte '\x91';Byte '\xf5';Byte '\x96';Byte '\x80';Byte '\x80';Byte '\x20';Byte '\xfb';Byte '\x46';]
let test_30_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400050L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400058L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400078L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c3L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f8L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400108L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400128L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40014bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400170L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001a1L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_31 = [
  data "AAAAAAJH" [
    Asciz ("TKAUCWJLZAVTYQ");
    Asciz ("KWZWTNJEYECJWEZSHKAP");
    Quad (Lit 1864760866180434399L);
  ];
  data "AAAAAAJI" [
    Asciz ("APMIDCOUTWBVIK");
    Asciz ("DHLIYGHNWKFDTTKV");
  ];
  data "AAAAAAJJ" [
    Asciz ("FYOSWCAOWOTQRRF");
    Asciz ("SFUXNLZIEX");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAJH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAJI"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAJJ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAJK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAJL"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAJM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAJN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAJO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAJP"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAJQ"); ~%Rax];
];
  data "AAAAAAJK" [
    Asciz ("CXPTKOIVIF");
    Asciz ("ATYKECMRDKUGOT");
    Quad (Lit 4279480548747433963L);
    Asciz ("XKFFSSCXAOCTJO");
  ];
  data "AAAAAAJL" [
    Quad (Lit 2030490586033899160L);
  ];
  data "AAAAAAJM" [
    Quad (Lit 2982078538611415712L);
    Quad (Lit 5694723916658754909L);
    Asciz ("BIWQMPIUMM");
    Quad (Lit 2479898890535091214L);
    Quad (Lit 7320988908722519147L);
    Asciz ("HGOXJTLAZTHAJ");
  ];
  data "AAAAAAJN" [
    Quad (Lit 8218778666039482023L);
    Asciz ("JXQVDBRMWZWXMNKRGMOC");
    Quad (Lit 8523035177200197145L);
    Quad (Lit 8751274260308070661L);
    Quad (Lit 8710037321561391152L);
  ];
  data "AAAAAAJO" [
    Quad (Lit 6237680433943641938L);
  ];
  data "AAAAAAJP" [
    Quad (Lit 4061444270759961638L);
    Quad (Lit 1807622983560833799L);
  ];
  data "AAAAAAJQ" [
    Asciz ("QXUQZVNEVQJUZZE");
    Asciz ("CBNQZDCNUJB");
    Asciz ("VDIDUMAECR");
    Quad (Lit 4743965746561706193L);
  ];
]
let test_31_data = [Byte '\x54';Byte '\x4b';Byte '\x41';Byte '\x55';Byte '\x43';Byte '\x57';Byte '\x4a';Byte '\x4c';Byte '\x5a';Byte '\x41';Byte '\x56';Byte '\x54';Byte '\x59';Byte '\x51';Byte '\x00';Byte '\x4b';Byte '\x57';Byte '\x5a';Byte '\x57';Byte '\x54';Byte '\x4e';Byte '\x4a';Byte '\x45';Byte '\x59';Byte '\x45';Byte '\x43';Byte '\x4a';Byte '\x57';Byte '\x45';Byte '\x5a';Byte '\x53';Byte '\x48';Byte '\x4b';Byte '\x41';Byte '\x50';Byte '\x00';Byte '\xdf';Byte '\x09';Byte '\xbc';Byte '\xbb';Byte '\x20';Byte '\xf6';Byte '\xe0';Byte '\x19';Byte '\x41';Byte '\x50';Byte '\x4d';Byte '\x49';Byte '\x44';Byte '\x43';Byte '\x4f';Byte '\x55';Byte '\x54';Byte '\x57';Byte '\x42';Byte '\x56';Byte '\x49';Byte '\x4b';Byte '\x00';Byte '\x44';Byte '\x48';Byte '\x4c';Byte '\x49';Byte '\x59';Byte '\x47';Byte '\x48';Byte '\x4e';Byte '\x57';Byte '\x4b';Byte '\x46';Byte '\x44';Byte '\x54';Byte '\x54';Byte '\x4b';Byte '\x56';Byte '\x00';Byte '\x46';Byte '\x59';Byte '\x4f';Byte '\x53';Byte '\x57';Byte '\x43';Byte '\x41';Byte '\x4f';Byte '\x57';Byte '\x4f';Byte '\x54';Byte '\x51';Byte '\x52';Byte '\x52';Byte '\x46';Byte '\x00';Byte '\x53';Byte '\x46';Byte '\x55';Byte '\x58';Byte '\x4e';Byte '\x4c';Byte '\x5a';Byte '\x49';Byte '\x45';Byte '\x58';Byte '\x00';Byte '\x43';Byte '\x58';Byte '\x50';Byte '\x54';Byte '\x4b';Byte '\x4f';Byte '\x49';Byte '\x56';Byte '\x49';Byte '\x46';Byte '\x00';Byte '\x41';Byte '\x54';Byte '\x59';Byte '\x4b';Byte '\x45';Byte '\x43';Byte '\x4d';Byte '\x52';Byte '\x44';Byte '\x4b';Byte '\x55';Byte '\x47';Byte '\x4f';Byte '\x54';Byte '\x00';Byte '\xeb';Byte '\xd7';Byte '\x48';Byte '\xab';Byte '\xe2';Byte '\xc4';Byte '\x63';Byte '\x3b';Byte '\x58';Byte '\x4b';Byte '\x46';Byte '\x46';Byte '\x53';Byte '\x53';Byte '\x43';Byte '\x58';Byte '\x41';Byte '\x4f';Byte '\x43';Byte '\x54';Byte '\x4a';Byte '\x4f';Byte '\x00';Byte '\x98';Byte '\x46';Byte '\x53';Byte '\x14';Byte '\x6e';Byte '\xc0';Byte '\x2d';Byte '\x1c';Byte '\xa0';Byte '\xda';Byte '\x3f';Byte '\x92';Byte '\xa1';Byte '\x78';Byte '\x62';Byte '\x29';Byte '\x5d';Byte '\xc5';Byte '\x5d';Byte '\xf2';Byte '\x3a';Byte '\xb9';Byte '\x07';Byte '\x4f';Byte '\x42';Byte '\x49';Byte '\x57';Byte '\x51';Byte '\x4d';Byte '\x50';Byte '\x49';Byte '\x55';Byte '\x4d';Byte '\x4d';Byte '\x00';Byte '\x0e';Byte '\xbc';Byte '\x3a';Byte '\xe1';Byte '\xe6';Byte '\x5e';Byte '\x6a';Byte '\x22';Byte '\x6b';Byte '\xfc';Byte '\xfa';Byte '\xcc';Byte '\x9f';Byte '\x60';Byte '\x99';Byte '\x65';Byte '\x48';Byte '\x47';Byte '\x4f';Byte '\x58';Byte '\x4a';Byte '\x54';Byte '\x4c';Byte '\x41';Byte '\x5a';Byte '\x54';Byte '\x48';Byte '\x41';Byte '\x4a';Byte '\x00';Byte '\xa7';Byte '\x96';Byte '\xd7';Byte '\xdc';Byte '\xa6';Byte '\xf7';Byte '\x0e';Byte '\x72';Byte '\x4a';Byte '\x58';Byte '\x51';Byte '\x56';Byte '\x44';Byte '\x42';Byte '\x52';Byte '\x4d';Byte '\x57';Byte '\x5a';Byte '\x57';Byte '\x58';Byte '\x4d';Byte '\x4e';Byte '\x4b';Byte '\x52';Byte '\x47';Byte '\x4d';Byte '\x4f';Byte '\x43';Byte '\x00';Byte '\x19';Byte '\x1e';Byte '\x2d';Byte '\x31';Byte '\x56';Byte '\xe7';Byte '\x47';Byte '\x76';Byte '\x05';Byte '\x91';Byte '\xae';Byte '\xd1';Byte '\x92';Byte '\xc5';Byte '\x72';Byte '\x79';Byte '\x30';Byte '\xc0';Byte '\x0f';Byte '\xd4';Byte '\xcb';Byte '\x44';Byte '\xe0';Byte '\x78';Byte '\x52';Byte '\x7f';Byte '\x9d';Byte '\x57';Byte '\x4e';Byte '\xb1';Byte '\x90';Byte '\x56';Byte '\x26';Byte '\x64';Byte '\xb1';Byte '\xb9';Byte '\x0b';Byte '\x26';Byte '\x5d';Byte '\x38';Byte '\x07';Byte '\xab';Byte '\xf9';Byte '\xbe';Byte '\x86';Byte '\xf7';Byte '\x15';Byte '\x19';Byte '\x51';Byte '\x58';Byte '\x55';Byte '\x51';Byte '\x5a';Byte '\x56';Byte '\x4e';Byte '\x45';Byte '\x56';Byte '\x51';Byte '\x4a';Byte '\x55';Byte '\x5a';Byte '\x5a';Byte '\x45';Byte '\x00';Byte '\x43';Byte '\x42';Byte '\x4e';Byte '\x51';Byte '\x5a';Byte '\x44';Byte '\x43';Byte '\x4e';Byte '\x55';Byte '\x4a';Byte '\x42';Byte '\x00';Byte '\x56';Byte '\x44';Byte '\x49';Byte '\x44';Byte '\x55';Byte '\x4d';Byte '\x41';Byte '\x45';Byte '\x43';Byte '\x52';Byte '\x00';Byte '\xd1';Byte '\x68';Byte '\x6e';Byte '\x3e';Byte '\xb6';Byte '\xf3';Byte '\xd5';Byte '\x41';]
let test_31_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400050L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40007cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40009cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000b7L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000e8L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f0L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400129L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40015eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400166L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400176L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_32 = [
  data "AAAAAAJR" [
    Asciz ("GBYBVFUYJAYJGQTNBYEZ");
  ];
  data "AAAAAAJS" [
    Asciz ("YBHQNSBLMCFARKIB");
    Quad (Lit 4211630784289056080L);
    Asciz ("MVVLWQVVWPETSBYR");
  ];
  data "AAAAAAJT" [
    Asciz ("CULPKKUGUABPQK");
    Asciz ("ONXBTGPZEL");
    Asciz ("GOFWLSYAQBQKADFDXETJ");
  ];
  data "AAAAAAJU" [
    Asciz ("PAECADYPXUV");
    Quad (Lit 8563473992540281797L);
  ];
  data "AAAAAAJV" [
    Quad (Lit 8152595518660266702L);
    Asciz ("GCWATMTAIR");
    Quad (Lit 4920526064766122278L);
    Asciz ("KWTLRSYMCLIDC");
    Quad (Lit 1845103718853510756L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAJR"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAJS"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAJT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAJU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAJV"); ~%Rax];
];
]
let test_32_data = [Byte '\x47';Byte '\x42';Byte '\x59';Byte '\x42';Byte '\x56';Byte '\x46';Byte '\x55';Byte '\x59';Byte '\x4a';Byte '\x41';Byte '\x59';Byte '\x4a';Byte '\x47';Byte '\x51';Byte '\x54';Byte '\x4e';Byte '\x42';Byte '\x59';Byte '\x45';Byte '\x5a';Byte '\x00';Byte '\x59';Byte '\x42';Byte '\x48';Byte '\x51';Byte '\x4e';Byte '\x53';Byte '\x42';Byte '\x4c';Byte '\x4d';Byte '\x43';Byte '\x46';Byte '\x41';Byte '\x52';Byte '\x4b';Byte '\x49';Byte '\x42';Byte '\x00';Byte '\x50';Byte '\x25';Byte '\xa6';Byte '\x56';Byte '\xe2';Byte '\xb7';Byte '\x72';Byte '\x3a';Byte '\x4d';Byte '\x56';Byte '\x56';Byte '\x4c';Byte '\x57';Byte '\x51';Byte '\x56';Byte '\x56';Byte '\x57';Byte '\x50';Byte '\x45';Byte '\x54';Byte '\x53';Byte '\x42';Byte '\x59';Byte '\x52';Byte '\x00';Byte '\x43';Byte '\x55';Byte '\x4c';Byte '\x50';Byte '\x4b';Byte '\x4b';Byte '\x55';Byte '\x47';Byte '\x55';Byte '\x41';Byte '\x42';Byte '\x50';Byte '\x51';Byte '\x4b';Byte '\x00';Byte '\x4f';Byte '\x4e';Byte '\x58';Byte '\x42';Byte '\x54';Byte '\x47';Byte '\x50';Byte '\x5a';Byte '\x45';Byte '\x4c';Byte '\x00';Byte '\x47';Byte '\x4f';Byte '\x46';Byte '\x57';Byte '\x4c';Byte '\x53';Byte '\x59';Byte '\x41';Byte '\x51';Byte '\x42';Byte '\x51';Byte '\x4b';Byte '\x41';Byte '\x44';Byte '\x46';Byte '\x44';Byte '\x58';Byte '\x45';Byte '\x54';Byte '\x4a';Byte '\x00';Byte '\x50';Byte '\x41';Byte '\x45';Byte '\x43';Byte '\x41';Byte '\x44';Byte '\x59';Byte '\x50';Byte '\x58';Byte '\x55';Byte '\x56';Byte '\x00';Byte '\xc5';Byte '\xdb';Byte '\xa8';Byte '\x98';Byte '\x39';Byte '\x92';Byte '\xd7';Byte '\x76';Byte '\xce';Byte '\xca';Byte '\x2f';Byte '\x0f';Byte '\x6e';Byte '\xd6';Byte '\x23';Byte '\x71';Byte '\x47';Byte '\x43';Byte '\x57';Byte '\x41';Byte '\x54';Byte '\x4d';Byte '\x54';Byte '\x41';Byte '\x49';Byte '\x52';Byte '\x00';Byte '\x26';Byte '\x79';Byte '\x6f';Byte '\xc6';Byte '\x62';Byte '\x38';Byte '\x49';Byte '\x44';Byte '\x4b';Byte '\x57';Byte '\x54';Byte '\x4c';Byte '\x52';Byte '\x53';Byte '\x59';Byte '\x4d';Byte '\x43';Byte '\x4c';Byte '\x49';Byte '\x44';Byte '\x43';Byte '\x00';Byte '\x64';Byte '\x06';Byte '\x04';Byte '\x78';Byte '\x0e';Byte '\x20';Byte '\x9b';Byte '\x19';]
let test_32_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400028L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40003dL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400067L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400096L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000aaL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_33 = [
  data "AAAAAAJW" [
    Quad (Lit 5490254159596061255L);
    Quad (Lit 8579645072865352980L);
  ];
  data "AAAAAAJX" [
    Asciz ("UOKWEJZZMWKOHITMPI");
  ];
  data "AAAAAAJY" [
    Asciz ("ANSESYTFGITBGSLYNLA");
  ];
  data "AAAAAAJZ" [
    Asciz ("JYUPNSBQEJRZMT");
    Asciz ("JEOYPADTDRQMLGHKT");
    Asciz ("HDNBZAWHNWMBJEEYNKV");
    Quad (Lit 1849912636341596082L);
  ];
  data "AAAAAAKA" [
    Asciz ("BBKMGBPULWI");
    Asciz ("KZRVWYGUMAW");
    Quad (Lit 2382059401689508317L);
    Quad (Lit 2762599710040351939L);
    Asciz ("TZNFAEVFIQPOOMKH");
    Asciz ("KTGWSJZDFQKUTQRAMW");
  ];
  data "AAAAAAKB" [
    Quad (Lit 5910368519651372096L);
    Quad (Lit 766913154080086151L);
    Asciz ("SGWGUHQAUBHOZVFN");
    Asciz ("RSPCMNKRQPBTPQDBSZHM");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAJW"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAJX"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAJY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAJZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAKA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAKB"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAKC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAKD"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAKE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAKF"); ~%Rax];
];
  data "AAAAAAKC" [
    Asciz ("RUFHMNHPHMTRXL");
  ];
  data "AAAAAAKD" [
    Quad (Lit 3175131896660852259L);
    Asciz ("HQOXGPULPNULZOGPDIP");
  ];
  data "AAAAAAKE" [
    Quad (Lit 2797544003076471355L);
  ];
  data "AAAAAAKF" [
    Quad (Lit 914239279456060073L);
    Quad (Lit 4118416015059243758L);
    Asciz ("JKZGYTZDAOX");
    Quad (Lit 7487137056891500045L);
  ];
]
let test_33_data = [Byte '\x47';Byte '\x82';Byte '\x55';Byte '\xcd';Byte '\x11';Byte '\x4d';Byte '\x31';Byte '\x4c';Byte '\x14';Byte '\xdd';Byte '\x11';Byte '\xa3';Byte '\xbc';Byte '\x05';Byte '\x11';Byte '\x77';Byte '\x55';Byte '\x4f';Byte '\x4b';Byte '\x57';Byte '\x45';Byte '\x4a';Byte '\x5a';Byte '\x5a';Byte '\x4d';Byte '\x57';Byte '\x4b';Byte '\x4f';Byte '\x48';Byte '\x49';Byte '\x54';Byte '\x4d';Byte '\x50';Byte '\x49';Byte '\x00';Byte '\x41';Byte '\x4e';Byte '\x53';Byte '\x45';Byte '\x53';Byte '\x59';Byte '\x54';Byte '\x46';Byte '\x47';Byte '\x49';Byte '\x54';Byte '\x42';Byte '\x47';Byte '\x53';Byte '\x4c';Byte '\x59';Byte '\x4e';Byte '\x4c';Byte '\x41';Byte '\x00';Byte '\x4a';Byte '\x59';Byte '\x55';Byte '\x50';Byte '\x4e';Byte '\x53';Byte '\x42';Byte '\x51';Byte '\x45';Byte '\x4a';Byte '\x52';Byte '\x5a';Byte '\x4d';Byte '\x54';Byte '\x00';Byte '\x4a';Byte '\x45';Byte '\x4f';Byte '\x59';Byte '\x50';Byte '\x41';Byte '\x44';Byte '\x54';Byte '\x44';Byte '\x52';Byte '\x51';Byte '\x4d';Byte '\x4c';Byte '\x47';Byte '\x48';Byte '\x4b';Byte '\x54';Byte '\x00';Byte '\x48';Byte '\x44';Byte '\x4e';Byte '\x42';Byte '\x5a';Byte '\x41';Byte '\x57';Byte '\x48';Byte '\x4e';Byte '\x57';Byte '\x4d';Byte '\x42';Byte '\x4a';Byte '\x45';Byte '\x45';Byte '\x59';Byte '\x4e';Byte '\x4b';Byte '\x56';Byte '\x00';Byte '\xb2';Byte '\xaf';Byte '\xa5';Byte '\xd2';Byte '\xbd';Byte '\x35';Byte '\xac';Byte '\x19';Byte '\x42';Byte '\x42';Byte '\x4b';Byte '\x4d';Byte '\x47';Byte '\x42';Byte '\x50';Byte '\x55';Byte '\x4c';Byte '\x57';Byte '\x49';Byte '\x00';Byte '\x4b';Byte '\x5a';Byte '\x52';Byte '\x56';Byte '\x57';Byte '\x59';Byte '\x47';Byte '\x55';Byte '\x4d';Byte '\x41';Byte '\x57';Byte '\x00';Byte '\xdd';Byte '\x29';Byte '\x95';Byte '\xb7';Byte '\x67';Byte '\xc6';Byte '\x0e';Byte '\x21';Byte '\xc3';Byte '\x64';Byte '\x8d';Byte '\xa5';Byte '\xcc';Byte '\xb9';Byte '\x56';Byte '\x26';Byte '\x54';Byte '\x5a';Byte '\x4e';Byte '\x46';Byte '\x41';Byte '\x45';Byte '\x56';Byte '\x46';Byte '\x49';Byte '\x51';Byte '\x50';Byte '\x4f';Byte '\x4f';Byte '\x4d';Byte '\x4b';Byte '\x48';Byte '\x00';Byte '\x4b';Byte '\x54';Byte '\x47';Byte '\x57';Byte '\x53';Byte '\x4a';Byte '\x5a';Byte '\x44';Byte '\x46';Byte '\x51';Byte '\x4b';Byte '\x55';Byte '\x54';Byte '\x51';Byte '\x52';Byte '\x41';Byte '\x4d';Byte '\x57';Byte '\x00';Byte '\x40';Byte '\xac';Byte '\x78';Byte '\xa9';Byte '\xda';Byte '\xd8';Byte '\x05';Byte '\x52';Byte '\x87';Byte '\x98';Byte '\x84';Byte '\x4a';Byte '\x73';Byte '\x9f';Byte '\xa4';Byte '\x0a';Byte '\x53';Byte '\x47';Byte '\x57';Byte '\x47';Byte '\x55';Byte '\x48';Byte '\x51';Byte '\x41';Byte '\x55';Byte '\x42';Byte '\x48';Byte '\x4f';Byte '\x5a';Byte '\x56';Byte '\x46';Byte '\x4e';Byte '\x00';Byte '\x52';Byte '\x53';Byte '\x50';Byte '\x43';Byte '\x4d';Byte '\x4e';Byte '\x4b';Byte '\x52';Byte '\x51';Byte '\x50';Byte '\x42';Byte '\x54';Byte '\x50';Byte '\x51';Byte '\x44';Byte '\x42';Byte '\x53';Byte '\x5a';Byte '\x48';Byte '\x4d';Byte '\x00';Byte '\x52';Byte '\x55';Byte '\x46';Byte '\x48';Byte '\x4d';Byte '\x4e';Byte '\x48';Byte '\x50';Byte '\x48';Byte '\x4d';Byte '\x54';Byte '\x52';Byte '\x58';Byte '\x4c';Byte '\x00';Byte '\x23';Byte '\x7e';Byte '\x7b';Byte '\x2f';Byte '\xa3';Byte '\x55';Byte '\x10';Byte '\x2c';Byte '\x48';Byte '\x51';Byte '\x4f';Byte '\x58';Byte '\x47';Byte '\x50';Byte '\x55';Byte '\x4c';Byte '\x50';Byte '\x4e';Byte '\x55';Byte '\x4c';Byte '\x5a';Byte '\x4f';Byte '\x47';Byte '\x50';Byte '\x44';Byte '\x49';Byte '\x50';Byte '\x00';Byte '\x3b';Byte '\xba';Byte '\xe5';Byte '\xe2';Byte '\x72';Byte '\xdf';Byte '\xd2';Byte '\x26';Byte '\xa9';Byte '\x02';Byte '\xb0';Byte '\xe3';Byte '\xc7';Byte '\x07';Byte '\xb0';Byte '\x0c';Byte '\xee';Byte '\xd2';Byte '\xe2';Byte '\x9e';Byte '\x8b';Byte '\x8d';Byte '\x27';Byte '\x39';Byte '\x4a';Byte '\x4b';Byte '\x5a';Byte '\x47';Byte '\x59';Byte '\x54';Byte '\x5a';Byte '\x44';Byte '\x41';Byte '\x4f';Byte '\x58';Byte '\x00';Byte '\x0d';Byte '\x76';Byte '\xae';Byte '\x14';Byte '\x7c';Byte '\xa7';Byte '\xe7';Byte '\x67';]
let test_33_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400050L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400060L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400073L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400087L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c4L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400110L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400146L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400155L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400171L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400179L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_34 = [
  data "AAAAAAKG" [
    Quad (Lit 36220861650997355L);
    Asciz ("UZQNDBUVSOSE");
    Quad (Lit 4632095936297149561L);
    Asciz ("OLKLXGNLIOTFV");
  ];
  data "AAAAAAKH" [
    Quad (Lit 4904973375654929069L);
  ];
  data "AAAAAAKI" [
    Quad (Lit 2946222369110054938L);
    Quad (Lit 1728394173506889069L);
    Quad (Lit 3433294981301731773L);
    Asciz ("SKXAEQADNNY");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAKG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAKH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAKI"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAKJ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAKK"); ~%Rax];
];
  data "AAAAAAKJ" [
    Asciz ("JBAJAKWLGBPFNBIAL");
    Quad (Lit 3351064238410186248L);
  ];
  data "AAAAAAKK" [
    Asciz ("KNTDCGNBTXKITPOAXW");
    Quad (Lit 1514865619374828036L);
    Asciz ("VZPHVWTAQUCBOTCED");
    Quad (Lit 8985438356921301377L);
    Asciz ("EABNNLXUJWRBKGVKTHUI");
  ];
]
let test_34_data = [Byte '\x6b';Byte '\x90';Byte '\x2a';Byte '\x88';Byte '\xae';Byte '\xae';Byte '\x80';Byte '\x00';Byte '\x55';Byte '\x5a';Byte '\x51';Byte '\x4e';Byte '\x44';Byte '\x42';Byte '\x55';Byte '\x56';Byte '\x53';Byte '\x4f';Byte '\x53';Byte '\x45';Byte '\x00';Byte '\x79';Byte '\xa4';Byte '\x85';Byte '\x50';Byte '\xb6';Byte '\x82';Byte '\x48';Byte '\x40';Byte '\x4f';Byte '\x4c';Byte '\x4b';Byte '\x4c';Byte '\x58';Byte '\x47';Byte '\x4e';Byte '\x4c';Byte '\x49';Byte '\x4f';Byte '\x54';Byte '\x46';Byte '\x56';Byte '\x00';Byte '\xad';Byte '\x22';Byte '\xa9';Byte '\x28';Byte '\x4c';Byte '\xf7';Byte '\x11';Byte '\x44';Byte '\x1a';Byte '\x58';Byte '\x1d';Byte '\x8c';Byte '\xa2';Byte '\x15';Byte '\xe3';Byte '\x28';Byte '\x6d';Byte '\xa5';Byte '\xbb';Byte '\xe7';Byte '\x57';Byte '\x7d';Byte '\xfc';Byte '\x17';Byte '\xbd';Byte '\x01';Byte '\x9f';Byte '\x59';Byte '\x98';Byte '\x83';Byte '\xa5';Byte '\x2f';Byte '\x53';Byte '\x4b';Byte '\x58';Byte '\x41';Byte '\x45';Byte '\x51';Byte '\x41';Byte '\x44';Byte '\x4e';Byte '\x4e';Byte '\x59';Byte '\x00';Byte '\x4a';Byte '\x42';Byte '\x41';Byte '\x4a';Byte '\x41';Byte '\x4b';Byte '\x57';Byte '\x4c';Byte '\x47';Byte '\x42';Byte '\x50';Byte '\x46';Byte '\x4e';Byte '\x42';Byte '\x49';Byte '\x41';Byte '\x4c';Byte '\x00';Byte '\x08';Byte '\x3e';Byte '\xf4';Byte '\x8d';Byte '\x2b';Byte '\x5f';Byte '\x81';Byte '\x2e';Byte '\x4b';Byte '\x4e';Byte '\x54';Byte '\x44';Byte '\x43';Byte '\x47';Byte '\x4e';Byte '\x42';Byte '\x54';Byte '\x58';Byte '\x4b';Byte '\x49';Byte '\x54';Byte '\x50';Byte '\x4f';Byte '\x41';Byte '\x58';Byte '\x57';Byte '\x00';Byte '\x04';Byte '\xea';Byte '\x49';Byte '\x35';Byte '\x41';Byte '\xe2';Byte '\x05';Byte '\x15';Byte '\x56';Byte '\x5a';Byte '\x50';Byte '\x48';Byte '\x56';Byte '\x57';Byte '\x54';Byte '\x41';Byte '\x51';Byte '\x55';Byte '\x43';Byte '\x42';Byte '\x4f';Byte '\x54';Byte '\x43';Byte '\x45';Byte '\x44';Byte '\x00';Byte '\x81';Byte '\xb9';Byte '\x76';Byte '\x27';Byte '\x94';Byte '\xb0';Byte '\xb2';Byte '\x7c';Byte '\x45';Byte '\x41';Byte '\x42';Byte '\x4e';Byte '\x4e';Byte '\x4c';Byte '\x58';Byte '\x55';Byte '\x4a';Byte '\x57';Byte '\x52';Byte '\x42';Byte '\x4b';Byte '\x47';Byte '\x56';Byte '\x4b';Byte '\x54';Byte '\x48';Byte '\x55';Byte '\x49';Byte '\x00';]
let test_34_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400028L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400053L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40005bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40007fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400099L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_35 = [
  data "AAAAAAKL" [
    Asciz ("SZZNGDJOLMBUHRAY");
    Asciz ("VIKQTANYUCYCDTCNNTCW");
    Quad (Lit 1310191598227243763L);
    Asciz ("WYUVKYWKIPMXIFBUSNF");
  ];
  data "AAAAAAKM" [
    Quad (Lit 2994105349732673285L);
    Asciz ("TNODHCRVFJDMDAESY");
    Asciz ("GSMJOVXELIKYQKNKJG");
    Quad (Lit 4687451221892615423L);
    Quad (Lit 8690794304080163295L);
    Quad (Lit 2161484137414284993L);
  ];
  data "AAAAAAKN" [
    Quad (Lit 5561786482917562695L);
    Quad (Lit 3961996246297848511L);
    Quad (Lit 3153500692479950780L);
    Quad (Lit 1732486421537801137L);
    Asciz ("TOJZOSGXOGTJ");
    Quad (Lit 2689660294426454289L);
  ];
  data "AAAAAAKO" [
    Asciz ("YOPBGWRWHHWEX");
  ];
  data "AAAAAAKP" [
    Quad (Lit 2199912695846210444L);
    Asciz ("VMAYGPUKDH");
    Quad (Lit 3263082756613256679L);
    Asciz ("DQZSBXMTKVQLQ");
    Quad (Lit 1219033364477802883L);
  ];
  data "AAAAAAKQ" [
    Quad (Lit 1797983248814842016L);
    Asciz ("IBEQYWMRAJGVZVLQPHK");
    Quad (Lit 1212146607990764822L);
    Asciz ("TLQKRQTZTITNDXTER");
    Quad (Lit 65448311287752320L);
    Asciz ("NDNBYEVJPS");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAKL"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAKM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAKN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAKO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAKP"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAKQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAKR"); ~%Rax];
];
  data "AAAAAAKR" [
    Asciz ("ROBTXBCFBDRZTH");
  ];
]
let test_35_data = [Byte '\x53';Byte '\x5a';Byte '\x5a';Byte '\x4e';Byte '\x47';Byte '\x44';Byte '\x4a';Byte '\x4f';Byte '\x4c';Byte '\x4d';Byte '\x42';Byte '\x55';Byte '\x48';Byte '\x52';Byte '\x41';Byte '\x59';Byte '\x00';Byte '\x56';Byte '\x49';Byte '\x4b';Byte '\x51';Byte '\x54';Byte '\x41';Byte '\x4e';Byte '\x59';Byte '\x55';Byte '\x43';Byte '\x59';Byte '\x43';Byte '\x44';Byte '\x54';Byte '\x43';Byte '\x4e';Byte '\x4e';Byte '\x54';Byte '\x43';Byte '\x57';Byte '\x00';Byte '\xf3';Byte '\x42';Byte '\x09';Byte '\x20';Byte '\x51';Byte '\xbc';Byte '\x2e';Byte '\x12';Byte '\x57';Byte '\x59';Byte '\x55';Byte '\x56';Byte '\x4b';Byte '\x59';Byte '\x57';Byte '\x4b';Byte '\x49';Byte '\x50';Byte '\x4d';Byte '\x58';Byte '\x49';Byte '\x46';Byte '\x42';Byte '\x55';Byte '\x53';Byte '\x4e';Byte '\x46';Byte '\x00';Byte '\x05';Byte '\xa7';Byte '\xe9';Byte '\xbe';Byte '\xf3';Byte '\x32';Byte '\x8d';Byte '\x29';Byte '\x54';Byte '\x4e';Byte '\x4f';Byte '\x44';Byte '\x48';Byte '\x43';Byte '\x52';Byte '\x56';Byte '\x46';Byte '\x4a';Byte '\x44';Byte '\x4d';Byte '\x44';Byte '\x41';Byte '\x45';Byte '\x53';Byte '\x59';Byte '\x00';Byte '\x47';Byte '\x53';Byte '\x4d';Byte '\x4a';Byte '\x4f';Byte '\x56';Byte '\x58';Byte '\x45';Byte '\x4c';Byte '\x49';Byte '\x4b';Byte '\x59';Byte '\x51';Byte '\x4b';Byte '\x4e';Byte '\x4b';Byte '\x4a';Byte '\x47';Byte '\x00';Byte '\xff';Byte '\x4c';Byte '\xe1';Byte '\x16';Byte '\x0d';Byte '\x2c';Byte '\x0d';Byte '\x41';Byte '\xdf';Byte '\xb1';Byte '\xaf';Byte '\xae';Byte '\x5f';Byte '\xe7';Byte '\x9b';Byte '\x78';Byte '\xc1';Byte '\x56';Byte '\x38';Byte '\xf6';Byte '\x5e';Byte '\x22';Byte '\xff';Byte '\x1d';Byte '\x47';Byte '\xd9';Byte '\xde';Byte '\xae';Byte '\x56';Byte '\x6f';Byte '\x2f';Byte '\x4d';Byte '\xbf';Byte '\xaa';Byte '\x03';Byte '\x2e';Byte '\x98';Byte '\xd6';Byte '\xfb';Byte '\x36';Byte '\xbc';Byte '\x3f';Byte '\x37';Byte '\xfe';Byte '\x2b';Byte '\x7c';Byte '\xc3';Byte '\x2b';Byte '\xb1';Byte '\xc3';Byte '\xf2';Byte '\xa5';Byte '\x38';Byte '\x07';Byte '\x0b';Byte '\x18';Byte '\x54';Byte '\x4f';Byte '\x4a';Byte '\x5a';Byte '\x4f';Byte '\x53';Byte '\x47';Byte '\x58';Byte '\x4f';Byte '\x47';Byte '\x54';Byte '\x4a';Byte '\x00';Byte '\x11';Byte '\xe9';Byte '\xc2';Byte '\x8f';Byte '\xc9';Byte '\x97';Byte '\x53';Byte '\x25';Byte '\x59';Byte '\x4f';Byte '\x50';Byte '\x42';Byte '\x47';Byte '\x57';Byte '\x52';Byte '\x57';Byte '\x48';Byte '\x48';Byte '\x57';Byte '\x45';Byte '\x58';Byte '\x00';Byte '\x8c';Byte '\x0b';Byte '\xc9';Byte '\xf4';Byte '\xf0';Byte '\xa8';Byte '\x87';Byte '\x1e';Byte '\x56';Byte '\x4d';Byte '\x41';Byte '\x59';Byte '\x47';Byte '\x50';Byte '\x55';Byte '\x4b';Byte '\x44';Byte '\x48';Byte '\x00';Byte '\xe7';Byte '\xb5';Byte '\xa2';Byte '\x84';Byte '\x7a';Byte '\xcc';Byte '\x48';Byte '\x2d';Byte '\x44';Byte '\x51';Byte '\x5a';Byte '\x53';Byte '\x42';Byte '\x58';Byte '\x4d';Byte '\x54';Byte '\x4b';Byte '\x56';Byte '\x51';Byte '\x4c';Byte '\x51';Byte '\x00';Byte '\x83';Byte '\x79';Byte '\x0c';Byte '\xe3';Byte '\x62';Byte '\xe0';Byte '\xea';Byte '\x10';Byte '\xa0';Byte '\x20';Byte '\xb6';Byte '\x19';Byte '\x3d';Byte '\xb8';Byte '\xf3';Byte '\x18';Byte '\x49';Byte '\x42';Byte '\x45';Byte '\x51';Byte '\x59';Byte '\x57';Byte '\x4d';Byte '\x52';Byte '\x41';Byte '\x4a';Byte '\x47';Byte '\x56';Byte '\x5a';Byte '\x56';Byte '\x4c';Byte '\x51';Byte '\x50';Byte '\x48';Byte '\x4b';Byte '\x00';Byte '\x16';Byte '\xf5';Byte '\xfb';Byte '\xf0';Byte '\xea';Byte '\x68';Byte '\xd2';Byte '\x10';Byte '\x54';Byte '\x4c';Byte '\x51';Byte '\x4b';Byte '\x52';Byte '\x51';Byte '\x54';Byte '\x5a';Byte '\x54';Byte '\x49';Byte '\x54';Byte '\x4e';Byte '\x44';Byte '\x58';Byte '\x54';Byte '\x45';Byte '\x52';Byte '\x00';Byte '\x80';Byte '\xa6';Byte '\x74';Byte '\x71';Byte '\xe4';Byte '\x84';Byte '\xe8';Byte '\x00';Byte '\x4e';Byte '\x44';Byte '\x4e';Byte '\x42';Byte '\x59';Byte '\x45';Byte '\x56';Byte '\x4a';Byte '\x50';Byte '\x53';Byte '\x00';Byte '\x52';Byte '\x4f';Byte '\x42';Byte '\x54';Byte '\x58';Byte '\x42';Byte '\x43';Byte '\x46';Byte '\x42';Byte '\x44';Byte '\x52';Byte '\x5a';Byte '\x54';Byte '\x48';Byte '\x00';]
let test_35_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400038L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40007aL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000bfL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f4L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400102L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400133L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40017cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_36 = [
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAKS"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAKT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAKU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAKV"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAKW"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAKX"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAKY"); ~%Rax];
];
  data "AAAAAAKS" [
    Quad (Lit 8454592589432001125L);
    Asciz ("BVAICDVRZSYOPUDPBM");
    Quad (Lit 6416027156954048121L);
    Quad (Lit 686823372361254678L);
  ];
  data "AAAAAAKT" [
    Quad (Lit 4955216382071552434L);
    Asciz ("DHRYHSZVFED");
    Quad (Lit 3653427521235766128L);
  ];
  data "AAAAAAKU" [
    Asciz ("SDYOUTXAHQACL");
    Asciz ("KGNASFSYXVGEFRBIRAP");
    Asciz ("WNMQLNLBXYRQSEMOM");
    Asciz ("UMKYDXZOVHRNRFWF");
    Asciz ("VDXTJHNYWFWPH");
    Asciz ("MBBVEKUSZTM");
  ];
  data "AAAAAAKV" [
    Asciz ("OCGSMQSBFE");
    Quad (Lit 2061117299685242162L);
    Quad (Lit 6667805654162954353L);
    Quad (Lit 7677577770508850932L);
    Quad (Lit 2927102857668252898L);
  ];
  data "AAAAAAKW" [
    Quad (Lit 3977424272412552821L);
    Asciz ("URVDPIOHUBVV");
    Quad (Lit 9199146724131212791L);
    Asciz ("APCKDNFALU");
    Asciz ("XKAIFXOYMWQ");
    Quad (Lit 2985983836799310574L);
  ];
  data "AAAAAAKX" [
    Asciz ("XGTHHDUBDWLEMFDFSIX");
    Asciz ("BHWJCZBBKKJJ");
    Quad (Lit 7750408993839244707L);
    Quad (Lit 5661589798734460962L);
    Quad (Lit 8632034096348646239L);
    Quad (Lit 3117944458461231278L);
  ];
  data "AAAAAAKY" [
    Quad (Lit 3347973709807279401L);
    Quad (Lit 5841960927091534548L);
    Quad (Lit 7944117217944135853L);
  ];
]
let test_36_data = [Byte '\x65';Byte '\x92';Byte '\xbe';Byte '\x6d';Byte '\x2a';Byte '\xbf';Byte '\x54';Byte '\x75';Byte '\x42';Byte '\x56';Byte '\x41';Byte '\x49';Byte '\x43';Byte '\x44';Byte '\x56';Byte '\x52';Byte '\x5a';Byte '\x53';Byte '\x59';Byte '\x4f';Byte '\x50';Byte '\x55';Byte '\x44';Byte '\x50';Byte '\x42';Byte '\x4d';Byte '\x00';Byte '\x79';Byte '\x66';Byte '\x81';Byte '\xa7';Byte '\xb4';Byte '\x4e';Byte '\x0a';Byte '\x59';Byte '\x16';Byte '\x47';Byte '\x07';Byte '\xdd';Byte '\x37';Byte '\x16';Byte '\x88';Byte '\x09';Byte '\xb2';Byte '\x39';Byte '\x92';Byte '\xae';Byte '\x0b';Byte '\x77';Byte '\xc4';Byte '\x44';Byte '\x44';Byte '\x48';Byte '\x52';Byte '\x59';Byte '\x48';Byte '\x53';Byte '\x5a';Byte '\x56';Byte '\x46';Byte '\x45';Byte '\x44';Byte '\x00';Byte '\x70';Byte '\xcb';Byte '\xe4';Byte '\x4f';Byte '\xf9';Byte '\x94';Byte '\xb3';Byte '\x32';Byte '\x53';Byte '\x44';Byte '\x59';Byte '\x4f';Byte '\x55';Byte '\x54';Byte '\x58';Byte '\x41';Byte '\x48';Byte '\x51';Byte '\x41';Byte '\x43';Byte '\x4c';Byte '\x00';Byte '\x4b';Byte '\x47';Byte '\x4e';Byte '\x41';Byte '\x53';Byte '\x46';Byte '\x53';Byte '\x59';Byte '\x58';Byte '\x56';Byte '\x47';Byte '\x45';Byte '\x46';Byte '\x52';Byte '\x42';Byte '\x49';Byte '\x52';Byte '\x41';Byte '\x50';Byte '\x00';Byte '\x57';Byte '\x4e';Byte '\x4d';Byte '\x51';Byte '\x4c';Byte '\x4e';Byte '\x4c';Byte '\x42';Byte '\x58';Byte '\x59';Byte '\x52';Byte '\x51';Byte '\x53';Byte '\x45';Byte '\x4d';Byte '\x4f';Byte '\x4d';Byte '\x00';Byte '\x55';Byte '\x4d';Byte '\x4b';Byte '\x59';Byte '\x44';Byte '\x58';Byte '\x5a';Byte '\x4f';Byte '\x56';Byte '\x48';Byte '\x52';Byte '\x4e';Byte '\x52';Byte '\x46';Byte '\x57';Byte '\x46';Byte '\x00';Byte '\x56';Byte '\x44';Byte '\x58';Byte '\x54';Byte '\x4a';Byte '\x48';Byte '\x4e';Byte '\x59';Byte '\x57';Byte '\x46';Byte '\x57';Byte '\x50';Byte '\x48';Byte '\x00';Byte '\x4d';Byte '\x42';Byte '\x42';Byte '\x56';Byte '\x45';Byte '\x4b';Byte '\x55';Byte '\x53';Byte '\x5a';Byte '\x54';Byte '\x4d';Byte '\x00';Byte '\x4f';Byte '\x43';Byte '\x47';Byte '\x53';Byte '\x4d';Byte '\x51';Byte '\x53';Byte '\x42';Byte '\x46';Byte '\x45';Byte '\x00';Byte '\x32';Byte '\xb5';Byte '\x26';Byte '\x88';Byte '\x43';Byte '\x8f';Byte '\x9a';Byte '\x1c';Byte '\x71';Byte '\x58';Byte '\xb9';Byte '\x37';Byte '\xea';Byte '\xcd';Byte '\x88';Byte '\x5c';Byte '\xf4';Byte '\x96';Byte '\x9d';Byte '\x02';Byte '\x4e';Byte '\x3c';Byte '\x8c';Byte '\x6a';Byte '\xe2';Byte '\xd4';Byte '\x58';Byte '\x64';Byte '\x8a';Byte '\x28';Byte '\x9f';Byte '\x28';Byte '\x75';Byte '\xae';Byte '\x2a';Byte '\x6e';Byte '\x4d';Byte '\xa6';Byte '\x32';Byte '\x37';Byte '\x55';Byte '\x52';Byte '\x56';Byte '\x44';Byte '\x50';Byte '\x49';Byte '\x4f';Byte '\x48';Byte '\x55';Byte '\x42';Byte '\x56';Byte '\x56';Byte '\x00';Byte '\xf7';Byte '\x0d';Byte '\x8a';Byte '\xd8';Byte '\x34';Byte '\xef';Byte '\xa9';Byte '\x7f';Byte '\x41';Byte '\x50';Byte '\x43';Byte '\x4b';Byte '\x44';Byte '\x4e';Byte '\x46';Byte '\x41';Byte '\x4c';Byte '\x55';Byte '\x00';Byte '\x58';Byte '\x4b';Byte '\x41';Byte '\x49';Byte '\x46';Byte '\x58';Byte '\x4f';Byte '\x59';Byte '\x4d';Byte '\x57';Byte '\x51';Byte '\x00';Byte '\xee';Byte '\x1a';Byte '\x7b';Byte '\xa9';Byte '\x7a';Byte '\x58';Byte '\x70';Byte '\x29';Byte '\x58';Byte '\x47';Byte '\x54';Byte '\x48';Byte '\x48';Byte '\x44';Byte '\x55';Byte '\x42';Byte '\x44';Byte '\x57';Byte '\x4c';Byte '\x45';Byte '\x4d';Byte '\x46';Byte '\x44';Byte '\x46';Byte '\x53';Byte '\x49';Byte '\x58';Byte '\x00';Byte '\x42';Byte '\x48';Byte '\x57';Byte '\x4a';Byte '\x43';Byte '\x5a';Byte '\x42';Byte '\x42';Byte '\x4b';Byte '\x4b';Byte '\x4a';Byte '\x4a';Byte '\x00';Byte '\xa3';Byte '\xe5';Byte '\xc7';Byte '\x9d';Byte '\xea';Byte '\xfb';Byte '\x8e';Byte '\x6b';Byte '\x22';Byte '\xf8';Byte '\x8a';Byte '\xf1';Byte '\xec';Byte '\x01';Byte '\x92';Byte '\x4e';Byte '\x5f';Byte '\xcb';Byte '\xeb';Byte '\xb1';Byte '\x46';Byte '\x25';Byte '\xcb';Byte '\x77';Byte '\xae';Byte '\xb8';Byte '\xfa';Byte '\x23';Byte '\xf7';Byte '\x29';Byte '\x45';Byte '\x2b';Byte '\x29';Byte '\xdd';Byte '\x68';Byte '\xca';Byte '\x59';Byte '\x64';Byte '\x76';Byte '\x2e';Byte '\xd4';Byte '\xaa';Byte '\x00';Byte '\xdb';Byte '\x82';Byte '\xd0';Byte '\x12';Byte '\x51';Byte '\xad';Byte '\xe8';Byte '\x9f';Byte '\x1d';Byte '\x85';Byte '\x2c';Byte '\x3f';Byte '\x6e';]
let test_36_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400038L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400063L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40007fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000deL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400109L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400145L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400186L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_37 = [
  data "AAAAAAKZ" [
    Asciz ("PSYGQIDMZIAJBYWY");
  ];
  data "AAAAAALA" [
    Quad (Lit 3806478226499298861L);
  ];
  data "AAAAAALB" [
    Quad (Lit 6366605051208640626L);
    Asciz ("RMBFHDLVEAMOGGSEVUQK");
    Quad (Lit 7895676215743835967L);
  ];
  data "AAAAAALC" [
    Asciz ("ZGYWZAPAOXTZPSXECOO");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAKZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAALA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAALB"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAALC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAALD"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAALE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAALF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAALG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAALH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAALI"); ~%Rax];
];
  data "AAAAAALD" [
    Quad (Lit 276245929349338269L);
    Quad (Lit 1575715476674769799L);
    Asciz ("ONTGEYVTRZP");
    Quad (Lit 7763889127412804031L);
    Asciz ("FWLYESLMPNZ");
  ];
  data "AAAAAALE" [
    Asciz ("AIPWVJBNROZWPPDC");
    Quad (Lit 711233773775338497L);
    Quad (Lit 5275457851773589716L);
  ];
  data "AAAAAALF" [
    Asciz ("PSADALVZJSQHZWLTQGQ");
    Asciz ("DKDSUZFIFRFQLPGHJJJD");
  ];
  data "AAAAAALG" [
    Quad (Lit 250853768488175320L);
    Quad (Lit 8526576312410456609L);
    Quad (Lit 5648017628163825545L);
  ];
  data "AAAAAALH" [
    Asciz ("SVXUNINHYCV");
    Asciz ("LEDLSRWFXQ");
    Quad (Lit 4234953084480976376L);
    Quad (Lit 1476464076637159863L);
  ];
  data "AAAAAALI" [
    Quad (Lit 6215813499766850160L);
    Asciz ("LFAPEGEXGRZGIYHYTEP");
  ];
]
let test_37_data = [Byte '\x50';Byte '\x53';Byte '\x59';Byte '\x47';Byte '\x51';Byte '\x49';Byte '\x44';Byte '\x4d';Byte '\x5a';Byte '\x49';Byte '\x41';Byte '\x4a';Byte '\x42';Byte '\x59';Byte '\x57';Byte '\x59';Byte '\x00';Byte '\x2d';Byte '\xe6';Byte '\xbf';Byte '\x87';Byte '\xc7';Byte '\x53';Byte '\xd3';Byte '\x34';Byte '\x72';Byte '\xa8';Byte '\x7f';Byte '\xf6';Byte '\x8f';Byte '\xb9';Byte '\x5a';Byte '\x58';Byte '\x52';Byte '\x4d';Byte '\x42';Byte '\x46';Byte '\x48';Byte '\x44';Byte '\x4c';Byte '\x56';Byte '\x45';Byte '\x41';Byte '\x4d';Byte '\x4f';Byte '\x47';Byte '\x47';Byte '\x53';Byte '\x45';Byte '\x56';Byte '\x55';Byte '\x51';Byte '\x4b';Byte '\x00';Byte '\x3f';Byte '\x6f';Byte '\xe9';Byte '\x64';Byte '\xaf';Byte '\x13';Byte '\x93';Byte '\x6d';Byte '\x5a';Byte '\x47';Byte '\x59';Byte '\x57';Byte '\x5a';Byte '\x41';Byte '\x50';Byte '\x41';Byte '\x4f';Byte '\x58';Byte '\x54';Byte '\x5a';Byte '\x50';Byte '\x53';Byte '\x58';Byte '\x45';Byte '\x43';Byte '\x4f';Byte '\x4f';Byte '\x00';Byte '\x9d';Byte '\xd4';Byte '\x83';Byte '\x89';Byte '\x35';Byte '\x6c';Byte '\xd5';Byte '\x03';Byte '\x87';Byte '\xf3';Byte '\x48';Byte '\xa6';Byte '\xe0';Byte '\x10';Byte '\xde';Byte '\x15';Byte '\x4f';Byte '\x4e';Byte '\x54';Byte '\x47';Byte '\x45';Byte '\x59';Byte '\x56';Byte '\x54';Byte '\x52';Byte '\x5a';Byte '\x50';Byte '\x00';Byte '\xbf';Byte '\x29';Byte '\xf5';Byte '\xca';Byte '\x06';Byte '\xe0';Byte '\xbe';Byte '\x6b';Byte '\x46';Byte '\x57';Byte '\x4c';Byte '\x59';Byte '\x45';Byte '\x53';Byte '\x4c';Byte '\x4d';Byte '\x50';Byte '\x4e';Byte '\x5a';Byte '\x00';Byte '\x41';Byte '\x49';Byte '\x50';Byte '\x57';Byte '\x56';Byte '\x4a';Byte '\x42';Byte '\x4e';Byte '\x52';Byte '\x4f';Byte '\x5a';Byte '\x57';Byte '\x50';Byte '\x50';Byte '\x44';Byte '\x43';Byte '\x00';Byte '\x01';Byte '\xbc';Byte '\x23';Byte '\x56';Byte '\x59';Byte '\xcf';Byte '\xde';Byte '\x09';Byte '\xd4';Byte '\x98';Byte '\x82';Byte '\x32';Byte '\xf7';Byte '\x30';Byte '\x36';Byte '\x49';Byte '\x50';Byte '\x53';Byte '\x41';Byte '\x44';Byte '\x41';Byte '\x4c';Byte '\x56';Byte '\x5a';Byte '\x4a';Byte '\x53';Byte '\x51';Byte '\x48';Byte '\x5a';Byte '\x57';Byte '\x4c';Byte '\x54';Byte '\x51';Byte '\x47';Byte '\x51';Byte '\x00';Byte '\x44';Byte '\x4b';Byte '\x44';Byte '\x53';Byte '\x55';Byte '\x5a';Byte '\x46';Byte '\x49';Byte '\x46';Byte '\x52';Byte '\x46';Byte '\x51';Byte '\x4c';Byte '\x50';Byte '\x47';Byte '\x48';Byte '\x4a';Byte '\x4a';Byte '\x4a';Byte '\x44';Byte '\x00';Byte '\xd8';Byte '\x46';Byte '\x4e';Byte '\x61';Byte '\x2c';Byte '\x36';Byte '\x7b';Byte '\x03';Byte '\x21';Byte '\x42';Byte '\x7c';Byte '\xfb';Byte '\xfa';Byte '\x7b';Byte '\x54';Byte '\x76';Byte '\x89';Byte '\x5f';Byte '\xd9';Byte '\xbb';Byte '\x1b';Byte '\xca';Byte '\x61';Byte '\x4e';Byte '\x53';Byte '\x56';Byte '\x58';Byte '\x55';Byte '\x4e';Byte '\x49';Byte '\x4e';Byte '\x48';Byte '\x59';Byte '\x43';Byte '\x56';Byte '\x00';Byte '\x4c';Byte '\x45';Byte '\x44';Byte '\x4c';Byte '\x53';Byte '\x52';Byte '\x57';Byte '\x46';Byte '\x58';Byte '\x51';Byte '\x00';Byte '\xf8';Byte '\xf5';Byte '\xee';Byte '\x80';Byte '\x64';Byte '\x93';Byte '\xc5';Byte '\x3a';Byte '\xb7';Byte '\x41';Byte '\x95';Byte '\x4b';Byte '\x41';Byte '\x74';Byte '\x7d';Byte '\x14';Byte '\x70';Byte '\x42';Byte '\xae';Byte '\xfb';Byte '\x71';Byte '\x01';Byte '\x43';Byte '\x56';Byte '\x4c';Byte '\x46';Byte '\x41';Byte '\x50';Byte '\x45';Byte '\x47';Byte '\x45';Byte '\x58';Byte '\x47';Byte '\x52';Byte '\x5a';Byte '\x47';Byte '\x49';Byte '\x59';Byte '\x48';Byte '\x59';Byte '\x54';Byte '\x45';Byte '\x50';Byte '\x00';]
let test_37_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400050L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400061L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400069L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40008eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000a2L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000d2L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f3L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40011cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400134L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40015bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_38 = [
  data "AAAAAALJ" [
    Asciz ("GPZPNGEMGGNEP");
    Quad (Lit 1680772898948441446L);
  ];
  data "AAAAAALK" [
    Quad (Lit 395817778466644513L);
  ];
  data "AAAAAALL" [
    Quad (Lit 7684984289563118796L);
    Quad (Lit 3917441110617590551L);
    Quad (Lit 6753756948692563L);
    Asciz ("LXKDTQJOXSGTFPRA");
    Asciz ("MLURFFIKHEXBHPSAGN");
  ];
  data "AAAAAALM" [
    Asciz ("OLZDPHPDTT");
    Asciz ("KAEVJBQSSLCVPRLIL");
    Asciz ("YUQQSDZLZGDDISBMYA");
    Quad (Lit 1711058127644710317L);
  ];
  data "AAAAAALN" [
    Asciz ("QUETSHKMMZZSD");
    Asciz ("HQHTPDZGMPXKEWOGYGB");
    Asciz ("QHTXRZVRRTBZMCDDHUSG");
    Asciz ("BLEJJSYYDDNAVMHMSTO");
    Quad (Lit 1774284784000136811L);
    Asciz ("OVTXYKFAIGQUTEYFVI");
  ];
  data "AAAAAALO" [
    Asciz ("GXFAPUAAXRYNEDTP");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAALJ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAALK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAALL"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAALM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAALN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAALO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAALP"); ~%Rax];
];
  data "AAAAAALP" [
    Asciz ("KICQLVMDMZKDEESG");
    Quad (Lit 4428234178608178894L);
    Quad (Lit 3200608658409630821L);
    Quad (Lit 9109520700787818196L);
    Quad (Lit 2009106091351842394L);
  ];
]
let test_38_data = [Byte '\x47';Byte '\x50';Byte '\x5a';Byte '\x50';Byte '\x4e';Byte '\x47';Byte '\x45';Byte '\x4d';Byte '\x47';Byte '\x47';Byte '\x4e';Byte '\x45';Byte '\x50';Byte '\x00';Byte '\x66';Byte '\xe5';Byte '\xec';Byte '\xe5';Byte '\x0b';Byte '\x4e';Byte '\x53';Byte '\x17';Byte '\x21';Byte '\xe2';Byte '\x49';Byte '\x21';Byte '\x2c';Byte '\x3a';Byte '\x7e';Byte '\x05';Byte '\xcc';Byte '\x0c';Byte '\xde';Byte '\x9b';Byte '\x7e';Byte '\x8c';Byte '\xa6';Byte '\x6a';Byte '\x17';Byte '\x8b';Byte '\xdf';Byte '\x42';Byte '\xef';Byte '\x8b';Byte '\x5d';Byte '\x36';Byte '\x53';Byte '\x7e';Byte '\xd3';Byte '\x93';Byte '\x81';Byte '\xfe';Byte '\x17';Byte '\x00';Byte '\x4c';Byte '\x58';Byte '\x4b';Byte '\x44';Byte '\x54';Byte '\x51';Byte '\x4a';Byte '\x4f';Byte '\x58';Byte '\x53';Byte '\x47';Byte '\x54';Byte '\x46';Byte '\x50';Byte '\x52';Byte '\x41';Byte '\x00';Byte '\x4d';Byte '\x4c';Byte '\x55';Byte '\x52';Byte '\x46';Byte '\x46';Byte '\x49';Byte '\x4b';Byte '\x48';Byte '\x45';Byte '\x58';Byte '\x42';Byte '\x48';Byte '\x50';Byte '\x53';Byte '\x41';Byte '\x47';Byte '\x4e';Byte '\x00';Byte '\x4f';Byte '\x4c';Byte '\x5a';Byte '\x44';Byte '\x50';Byte '\x48';Byte '\x50';Byte '\x44';Byte '\x54';Byte '\x54';Byte '\x00';Byte '\x4b';Byte '\x41';Byte '\x45';Byte '\x56';Byte '\x4a';Byte '\x42';Byte '\x51';Byte '\x53';Byte '\x53';Byte '\x4c';Byte '\x43';Byte '\x56';Byte '\x50';Byte '\x52';Byte '\x4c';Byte '\x49';Byte '\x4c';Byte '\x00';Byte '\x59';Byte '\x55';Byte '\x51';Byte '\x51';Byte '\x53';Byte '\x44';Byte '\x5a';Byte '\x4c';Byte '\x5a';Byte '\x47';Byte '\x44';Byte '\x44';Byte '\x49';Byte '\x53';Byte '\x42';Byte '\x4d';Byte '\x59';Byte '\x41';Byte '\x00';Byte '\xad';Byte '\xd5';Byte '\x4e';Byte '\x30';Byte '\x4d';Byte '\xe6';Byte '\xbe';Byte '\x17';Byte '\x51';Byte '\x55';Byte '\x45';Byte '\x54';Byte '\x53';Byte '\x48';Byte '\x4b';Byte '\x4d';Byte '\x4d';Byte '\x5a';Byte '\x5a';Byte '\x53';Byte '\x44';Byte '\x00';Byte '\x48';Byte '\x51';Byte '\x48';Byte '\x54';Byte '\x50';Byte '\x44';Byte '\x5a';Byte '\x47';Byte '\x4d';Byte '\x50';Byte '\x58';Byte '\x4b';Byte '\x45';Byte '\x57';Byte '\x4f';Byte '\x47';Byte '\x59';Byte '\x47';Byte '\x42';Byte '\x00';Byte '\x51';Byte '\x48';Byte '\x54';Byte '\x58';Byte '\x52';Byte '\x5a';Byte '\x56';Byte '\x52';Byte '\x52';Byte '\x54';Byte '\x42';Byte '\x5a';Byte '\x4d';Byte '\x43';Byte '\x44';Byte '\x44';Byte '\x48';Byte '\x55';Byte '\x53';Byte '\x47';Byte '\x00';Byte '\x42';Byte '\x4c';Byte '\x45';Byte '\x4a';Byte '\x4a';Byte '\x53';Byte '\x59';Byte '\x59';Byte '\x44';Byte '\x44';Byte '\x4e';Byte '\x41';Byte '\x56';Byte '\x4d';Byte '\x48';Byte '\x4d';Byte '\x53';Byte '\x54';Byte '\x4f';Byte '\x00';Byte '\x6b';Byte '\x76';Byte '\xb5';Byte '\x48';Byte '\x9c';Byte '\x86';Byte '\x9f';Byte '\x18';Byte '\x4f';Byte '\x56';Byte '\x54';Byte '\x58';Byte '\x59';Byte '\x4b';Byte '\x46';Byte '\x41';Byte '\x49';Byte '\x47';Byte '\x51';Byte '\x55';Byte '\x54';Byte '\x45';Byte '\x59';Byte '\x46';Byte '\x56';Byte '\x49';Byte '\x00';Byte '\x47';Byte '\x58';Byte '\x46';Byte '\x41';Byte '\x50';Byte '\x55';Byte '\x41';Byte '\x41';Byte '\x58';Byte '\x52';Byte '\x59';Byte '\x4e';Byte '\x45';Byte '\x44';Byte '\x54';Byte '\x50';Byte '\x00';Byte '\x4b';Byte '\x49';Byte '\x43';Byte '\x51';Byte '\x4c';Byte '\x56';Byte '\x4d';Byte '\x44';Byte '\x4d';Byte '\x5a';Byte '\x4b';Byte '\x44';Byte '\x45';Byte '\x45';Byte '\x53';Byte '\x47';Byte '\x00';Byte '\xce';Byte '\x26';Byte '\x2f';Byte '\x0e';Byte '\x86';Byte '\x3f';Byte '\x74';Byte '\x3d';Byte '\x65';Byte '\xac';Byte '\x8b';Byte '\x05';Byte '\x9e';Byte '\xd8';Byte '\x6a';Byte '\x2c';Byte '\xd4';Byte '\x7e';Byte '\x86';Byte '\x24';Byte '\xd0';Byte '\x84';Byte '\x6b';Byte '\x7e';Byte '\x5a';Byte '\x9e';Byte '\x19';Byte '\x6b';Byte '\x58';Byte '\xc7';Byte '\xe1';Byte '\x1b';]
let test_38_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400038L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40004eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400056L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400092L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000caL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400130L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400141L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_39 = [
  data "AAAAAALQ" [
    Quad (Lit 6369491424112478769L);
    Asciz ("JTLDYKXEFETTYRNARY");
    Asciz ("DGLUBJRRTNFBFJH");
    Quad (Lit 5033328229837812508L);
    Quad (Lit 8090027597244561572L);
    Quad (Lit 5782472302009645294L);
  ];
  data "AAAAAALR" [
    Quad (Lit 1700331356512038564L);
    Asciz ("EFYDRZQHVVDIKWBU");
    Asciz ("AMUBFHDZZT");
    Asciz ("WUEDTADQYOPQFVODEKI");
    Quad (Lit 8932074670385440426L);
    Asciz ("MHKHSBQJTST");
  ];
  data "AAAAAALS" [
    Asciz ("OLVELPRORDRRV");
    Asciz ("VWKCAZNVQHWUJI");
    Asciz ("SLRPJYYSYEGUHTQHJMIQ");
    Quad (Lit 908536907044496273L);
    Asciz ("AEMFWDDOVKOKF");
  ];
  data "AAAAAALT" [
    Quad (Lit 783837610211716635L);
    Asciz ("LONBYDCGXMLOLP");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAALQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAALR"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAALS"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAALT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAALU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAALV"); ~%Rax];
];
  data "AAAAAALU" [
    Quad (Lit 2799359865685353313L);
    Asciz ("XGXGFRHTWDDWH");
  ];
  data "AAAAAALV" [
    Quad (Lit 6603640660182909592L);
    Asciz ("VTWSBYIAUOTIYIWP");
    Quad (Lit 6118338242232901523L);
    Quad (Lit 3397757480525605543L);
  ];
]
let test_39_data = [Byte '\x31';Byte '\x0a';Byte '\x1f';Byte '\x06';Byte '\xb4';Byte '\xfa';Byte '\x64';Byte '\x58';Byte '\x4a';Byte '\x54';Byte '\x4c';Byte '\x44';Byte '\x59';Byte '\x4b';Byte '\x58';Byte '\x45';Byte '\x46';Byte '\x45';Byte '\x54';Byte '\x54';Byte '\x59';Byte '\x52';Byte '\x4e';Byte '\x41';Byte '\x52';Byte '\x59';Byte '\x00';Byte '\x44';Byte '\x47';Byte '\x4c';Byte '\x55';Byte '\x42';Byte '\x4a';Byte '\x52';Byte '\x52';Byte '\x54';Byte '\x4e';Byte '\x46';Byte '\x42';Byte '\x46';Byte '\x4a';Byte '\x48';Byte '\x00';Byte '\x1c';Byte '\xb3';Byte '\x6d';Byte '\x79';Byte '\x5b';Byte '\xf9';Byte '\xd9';Byte '\x45';Byte '\xa4';Byte '\x78';Byte '\xde';Byte '\xa4';Byte '\x3c';Byte '\x8d';Byte '\x45';Byte '\x70';Byte '\xee';Byte '\xf8';Byte '\xd1';Byte '\xfc';Byte '\xeb';Byte '\x77';Byte '\x3f';Byte '\x50';Byte '\xa4';Byte '\xae';Byte '\x5b';Byte '\x29';Byte '\x5c';Byte '\xca';Byte '\x98';Byte '\x17';Byte '\x45';Byte '\x46';Byte '\x59';Byte '\x44';Byte '\x52';Byte '\x5a';Byte '\x51';Byte '\x48';Byte '\x56';Byte '\x56';Byte '\x44';Byte '\x49';Byte '\x4b';Byte '\x57';Byte '\x42';Byte '\x55';Byte '\x00';Byte '\x41';Byte '\x4d';Byte '\x55';Byte '\x42';Byte '\x46';Byte '\x48';Byte '\x44';Byte '\x5a';Byte '\x5a';Byte '\x54';Byte '\x00';Byte '\x57';Byte '\x55';Byte '\x45';Byte '\x44';Byte '\x54';Byte '\x41';Byte '\x44';Byte '\x51';Byte '\x59';Byte '\x4f';Byte '\x50';Byte '\x51';Byte '\x46';Byte '\x56';Byte '\x4f';Byte '\x44';Byte '\x45';Byte '\x4b';Byte '\x49';Byte '\x00';Byte '\xaa';Byte '\xa6';Byte '\x96';Byte '\xab';Byte '\x96';Byte '\x1a';Byte '\xf5';Byte '\x7b';Byte '\x4d';Byte '\x48';Byte '\x4b';Byte '\x48';Byte '\x53';Byte '\x42';Byte '\x51';Byte '\x4a';Byte '\x54';Byte '\x53';Byte '\x54';Byte '\x00';Byte '\x4f';Byte '\x4c';Byte '\x56';Byte '\x45';Byte '\x4c';Byte '\x50';Byte '\x52';Byte '\x4f';Byte '\x52';Byte '\x44';Byte '\x52';Byte '\x52';Byte '\x56';Byte '\x00';Byte '\x56';Byte '\x57';Byte '\x4b';Byte '\x43';Byte '\x41';Byte '\x5a';Byte '\x4e';Byte '\x56';Byte '\x51';Byte '\x48';Byte '\x57';Byte '\x55';Byte '\x4a';Byte '\x49';Byte '\x00';Byte '\x53';Byte '\x4c';Byte '\x52';Byte '\x50';Byte '\x4a';Byte '\x59';Byte '\x59';Byte '\x53';Byte '\x59';Byte '\x45';Byte '\x47';Byte '\x55';Byte '\x48';Byte '\x54';Byte '\x51';Byte '\x48';Byte '\x4a';Byte '\x4d';Byte '\x49';Byte '\x51';Byte '\x00';Byte '\x91';Byte '\x23';Byte '\xb8';Byte '\xd9';Byte '\x80';Byte '\xc5';Byte '\x9b';Byte '\x0c';Byte '\x41';Byte '\x45';Byte '\x4d';Byte '\x46';Byte '\x57';Byte '\x44';Byte '\x44';Byte '\x4f';Byte '\x56';Byte '\x4b';Byte '\x4f';Byte '\x4b';Byte '\x46';Byte '\x00';Byte '\x1b';Byte '\xae';Byte '\x42';Byte '\x4e';Byte '\x27';Byte '\xc0';Byte '\xe0';Byte '\x0a';Byte '\x4c';Byte '\x4f';Byte '\x4e';Byte '\x42';Byte '\x59';Byte '\x44';Byte '\x43';Byte '\x47';Byte '\x58';Byte '\x4d';Byte '\x4c';Byte '\x4f';Byte '\x4c';Byte '\x50';Byte '\x00';Byte '\x61';Byte '\x23';Byte '\xa9';Byte '\x58';Byte '\xf7';Byte '\x52';Byte '\xd9';Byte '\x26';Byte '\x58';Byte '\x47';Byte '\x58';Byte '\x47';Byte '\x46';Byte '\x52';Byte '\x48';Byte '\x54';Byte '\x57';Byte '\x44';Byte '\x44';Byte '\x57';Byte '\x48';Byte '\x00';Byte '\x98';Byte '\x42';Byte '\x87';Byte '\x5e';Byte '\x31';Byte '\xd8';Byte '\xa4';Byte '\x5b';Byte '\x56';Byte '\x54';Byte '\x57';Byte '\x53';Byte '\x42';Byte '\x59';Byte '\x49';Byte '\x41';Byte '\x55';Byte '\x4f';Byte '\x54';Byte '\x49';Byte '\x59';Byte '\x49';Byte '\x57';Byte '\x50';Byte '\x00';Byte '\x93';Byte '\xdf';Byte '\xfa';Byte '\x07';Byte '\x37';Byte '\xb4';Byte '\xe8';Byte '\x54';Byte '\xa7';Byte '\xaa';Byte '\xa7';Byte '\x2b';Byte '\x6d';Byte '\x42';Byte '\x27';Byte '\x2f';]
let test_39_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400030L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400073L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000bfL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400107L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40011eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400134L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_40 = [
  data "AAAAAALW" [
    Quad (Lit 8106381200244533487L);
    Asciz ("FQCUJDZKKVKLY");
    Quad (Lit 4905959218906175384L);
  ];
  data "AAAAAALX" [
    Quad (Lit 1761210434969751388L);
    Quad (Lit 5902840371312766036L);
  ];
  data "AAAAAALY" [
    Quad (Lit 5776687007664777813L);
    Asciz ("IEGSSWJMPEFPUXXDANW");
    Quad (Lit 1561032817759630916L);
    Asciz ("NGBXKNANDZVNMAUROTHZ");
  ];
  data "AAAAAALZ" [
    Quad (Lit 6186308726700470816L);
    Asciz ("TSNILZBIPXSW");
    Asciz ("NOYRFKCMVW");
    Quad (Lit 5147289139730823704L);
    Asciz ("RHRCKYXBJDQQZR");
  ];
  data "AAAAAAMA" [
    Asciz ("QRMTRQUQEOLXZ");
    Quad (Lit 7297433188890573623L);
    Quad (Lit 4165472097899564603L);
    Quad (Lit 5618407222056452897L);
    Asciz ("ZZZAEGIEMVWWXBYW");
    Asciz ("IDYCXWFWTWXV");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAALW"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAALX"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAALY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAALZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAMA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAMB"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAMC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAMD"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAME"); ~%Rax];
];
  data "AAAAAAMB" [
    Quad (Lit 2734722010827604869L);
    Quad (Lit 7615512147392102040L);
    Quad (Lit 6053667474645360815L);
  ];
  data "AAAAAAMC" [
    Quad (Lit 4195354700913616056L);
    Quad (Lit 8287912790654992820L);
  ];
  data "AAAAAAMD" [
    Quad (Lit 7288080207765964151L);
    Asciz ("YYLVGOAZMMEWOZCTYGC");
    Quad (Lit 4965153858059094562L);
  ];
  data "AAAAAAME" [
    Asciz ("OBWVCAWLMMNSBS");
    Quad (Lit 4117494774036759162L);
    Quad (Lit 5000832135358892271L);
    Asciz ("HUWNZFEKMCR");
  ];
]
let test_40_data = [Byte '\xef';Byte '\xe8';Byte '\x7a';Byte '\x8e';Byte '\xc0';Byte '\xa6';Byte '\x7f';Byte '\x70';Byte '\x46';Byte '\x51';Byte '\x43';Byte '\x55';Byte '\x4a';Byte '\x44';Byte '\x5a';Byte '\x4b';Byte '\x4b';Byte '\x56';Byte '\x4b';Byte '\x4c';Byte '\x59';Byte '\x00';Byte '\x98';Byte '\x97';Byte '\x74';Byte '\xad';Byte '\xea';Byte '\x77';Byte '\x15';Byte '\x44';Byte '\x5c';Byte '\x4f';Byte '\x15';Byte '\x2f';Byte '\x8f';Byte '\x13';Byte '\x71';Byte '\x18';Byte '\x54';Byte '\xac';Byte '\xee';Byte '\x09';Byte '\x0b';Byte '\x1a';Byte '\xeb';Byte '\x51';Byte '\x55';Byte '\x2a';Byte '\x79';Byte '\x2e';Byte '\x3a';Byte '\xea';Byte '\x2a';Byte '\x50';Byte '\x49';Byte '\x45';Byte '\x47';Byte '\x53';Byte '\x53';Byte '\x57';Byte '\x4a';Byte '\x4d';Byte '\x50';Byte '\x45';Byte '\x46';Byte '\x50';Byte '\x55';Byte '\x58';Byte '\x58';Byte '\x44';Byte '\x41';Byte '\x4e';Byte '\x57';Byte '\x00';Byte '\x44';Byte '\x36';Byte '\x4a';Byte '\xb9';Byte '\x13';Byte '\xe7';Byte '\xa9';Byte '\x15';Byte '\x4e';Byte '\x47';Byte '\x42';Byte '\x58';Byte '\x4b';Byte '\x4e';Byte '\x41';Byte '\x4e';Byte '\x44';Byte '\x5a';Byte '\x56';Byte '\x4e';Byte '\x4d';Byte '\x41';Byte '\x55';Byte '\x52';Byte '\x4f';Byte '\x54';Byte '\x48';Byte '\x5a';Byte '\x00';Byte '\x20';Byte '\x72';Byte '\xe1';Byte '\xad';Byte '\x02';Byte '\x2f';Byte '\xda';Byte '\x55';Byte '\x54';Byte '\x53';Byte '\x4e';Byte '\x49';Byte '\x4c';Byte '\x5a';Byte '\x42';Byte '\x49';Byte '\x50';Byte '\x58';Byte '\x53';Byte '\x57';Byte '\x00';Byte '\x4e';Byte '\x4f';Byte '\x59';Byte '\x52';Byte '\x46';Byte '\x4b';Byte '\x43';Byte '\x4d';Byte '\x56';Byte '\x57';Byte '\x00';Byte '\x18';Byte '\xba';Byte '\xe1';Byte '\x79';Byte '\x33';Byte '\xd8';Byte '\x6e';Byte '\x47';Byte '\x52';Byte '\x48';Byte '\x52';Byte '\x43';Byte '\x4b';Byte '\x59';Byte '\x58';Byte '\x42';Byte '\x4a';Byte '\x44';Byte '\x51';Byte '\x51';Byte '\x5a';Byte '\x52';Byte '\x00';Byte '\x51';Byte '\x52';Byte '\x4d';Byte '\x54';Byte '\x52';Byte '\x51';Byte '\x55';Byte '\x51';Byte '\x45';Byte '\x4f';Byte '\x4c';Byte '\x58';Byte '\x5a';Byte '\x00';Byte '\x37';Byte '\xfb';Byte '\xf7';Byte '\x63';Byte '\xd2';Byte '\xb0';Byte '\x45';Byte '\x65';Byte '\x3b';Byte '\xce';Byte '\x1a';Byte '\xad';Byte '\xcd';Byte '\xba';Byte '\xce';Byte '\x39';Byte '\x21';Byte '\x03';Byte '\x2a';Byte '\xd2';Byte '\x99';Byte '\x97';Byte '\xf8';Byte '\x4d';Byte '\x5a';Byte '\x5a';Byte '\x5a';Byte '\x41';Byte '\x45';Byte '\x47';Byte '\x49';Byte '\x45';Byte '\x4d';Byte '\x56';Byte '\x57';Byte '\x57';Byte '\x58';Byte '\x42';Byte '\x59';Byte '\x57';Byte '\x00';Byte '\x49';Byte '\x44';Byte '\x59';Byte '\x43';Byte '\x58';Byte '\x57';Byte '\x46';Byte '\x57';Byte '\x54';Byte '\x57';Byte '\x58';Byte '\x56';Byte '\x00';Byte '\x85';Byte '\x43';Byte '\xd2';Byte '\xfe';Byte '\x2d';Byte '\xaf';Byte '\xf3';Byte '\x25';Byte '\x98';Byte '\x7e';Byte '\xfa';Byte '\x07';Byte '\xf3';Byte '\xbb';Byte '\xaf';Byte '\x69';Byte '\xaf';Byte '\xa0';Byte '\x92';Byte '\x96';Byte '\x7e';Byte '\xf2';Byte '\x02';Byte '\x54';Byte '\xb8';Byte '\xa4';Byte '\xb8';Byte '\x5e';Byte '\xdf';Byte '\xe4';Byte '\x38';Byte '\x3a';Byte '\xb4';Byte '\x41';Byte '\x68';Byte '\x98';Byte '\xc5';Byte '\x94';Byte '\x04';Byte '\x73';Byte '\x77';Byte '\x05';Byte '\x72';Byte '\xc6';Byte '\x55';Byte '\x76';Byte '\x24';Byte '\x65';Byte '\x59';Byte '\x59';Byte '\x4c';Byte '\x56';Byte '\x47';Byte '\x4f';Byte '\x41';Byte '\x5a';Byte '\x4d';Byte '\x4d';Byte '\x45';Byte '\x57';Byte '\x4f';Byte '\x5a';Byte '\x43';Byte '\x54';Byte '\x59';Byte '\x47';Byte '\x43';Byte '\x00';Byte '\x22';Byte '\xca';Byte '\xc5';Byte '\x9c';Byte '\x20';Byte '\xc5';Byte '\xe7';Byte '\x44';Byte '\x4f';Byte '\x42';Byte '\x57';Byte '\x56';Byte '\x43';Byte '\x41';Byte '\x57';Byte '\x4c';Byte '\x4d';Byte '\x4d';Byte '\x4e';Byte '\x53';Byte '\x42';Byte '\x53';Byte '\x00';Byte '\x7a';Byte '\x02';Byte '\xfd';Byte '\x7a';Byte '\xae';Byte '\x47';Byte '\x24';Byte '\x39';Byte '\xef';Byte '\xc8';Byte '\x6c';Byte '\xe1';Byte '\x54';Byte '\x86';Byte '\x66';Byte '\x45';Byte '\x48';Byte '\x55';Byte '\x57';Byte '\x4e';Byte '\x5a';Byte '\x46';Byte '\x45';Byte '\x4b';Byte '\x4d';Byte '\x43';Byte '\x52';Byte '\x00';]
let test_40_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400048L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400066L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400076L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000afL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000e6L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40012aL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400142L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400152L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400176L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_41 = [
  data "AAAAAAMF" [
    Quad (Lit 6265286335105465968L);
    Asciz ("EANMVJBEQRK");
    Asciz ("ODTQLNSYAUR");
    Quad (Lit 6744264047834773775L);
    Asciz ("JKARDHIWOFDXOSL");
    Quad (Lit 3072857269369974263L);
  ];
  data "AAAAAAMG" [
    Asciz ("RYNHAADWUCTEKCTL");
    Quad (Lit 3741130512315985399L);
    Quad (Lit 6314773823933398476L);
    Quad (Lit 8758654544040691372L);
    Quad (Lit 4907383055131854457L);
  ];
  data "AAAAAAMH" [
    Quad (Lit 4504629982132041988L);
    Asciz ("TRCRQLJQBGVXNXFLYP");
  ];
  data "AAAAAAMI" [
    Quad (Lit 6430647619868190232L);
    Asciz ("AQVKCREKUXQVJY");
  ];
  data "AAAAAAMJ" [
    Quad (Lit 2847828120386296508L);
    Quad (Lit 7482402420181720616L);
  ];
  data "AAAAAAMK" [
    Asciz ("VMGPGDVERIIFQJD");
    Asciz ("ULMTIEYDHQVOOSERD");
    Asciz ("BPYGAYXFTK");
    Asciz ("NBZKQSNBFNZ");
  ];
  data "AAAAAAML" [
    Quad (Lit 8047931479227017415L);
    Quad (Lit 8084362985495599253L);
    Asciz ("JDDDPNZHKAPFZ");
    Quad (Lit 6289044624779590347L);
    Asciz ("DCRCCPAEUKIWEATQKG");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAMF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAMG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAMH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAMI"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAMJ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAMK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAML"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAMM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAMN"); ~%Rax];
];
  data "AAAAAAMM" [
    Quad (Lit 3480619484897689071L);
  ];
  data "AAAAAAMN" [
    Asciz ("AUFOZNHRVFCBSAM");
    Quad (Lit 3927423104097405925L);
    Asciz ("VEAGNOISQI");
    Quad (Lit 1812687666339460153L);
    Asciz ("JACAKQJLBBAPILOENFB");
    Quad (Lit 500286729930090472L);
  ];
]
let test_41_data = [Byte '\x70';Byte '\xfe';Byte '\x11';Byte '\x14';Byte '\xba';Byte '\xc4';Byte '\xf2';Byte '\x56';Byte '\x45';Byte '\x41';Byte '\x4e';Byte '\x4d';Byte '\x56';Byte '\x4a';Byte '\x42';Byte '\x45';Byte '\x51';Byte '\x52';Byte '\x4b';Byte '\x00';Byte '\x4f';Byte '\x44';Byte '\x54';Byte '\x51';Byte '\x4c';Byte '\x4e';Byte '\x53';Byte '\x59';Byte '\x41';Byte '\x55';Byte '\x52';Byte '\x00';Byte '\x0f';Byte '\x39';Byte '\xa1';Byte '\x3a';Byte '\x6b';Byte '\x70';Byte '\x98';Byte '\x5d';Byte '\x4a';Byte '\x4b';Byte '\x41';Byte '\x52';Byte '\x44';Byte '\x48';Byte '\x49';Byte '\x57';Byte '\x4f';Byte '\x46';Byte '\x44';Byte '\x58';Byte '\x4f';Byte '\x53';Byte '\x4c';Byte '\x00';Byte '\xf7';Byte '\x2d';Byte '\x46';Byte '\xe2';Byte '\x67';Byte '\xfb';Byte '\xa4';Byte '\x2a';Byte '\x52';Byte '\x59';Byte '\x4e';Byte '\x48';Byte '\x41';Byte '\x41';Byte '\x44';Byte '\x57';Byte '\x55';Byte '\x43';Byte '\x54';Byte '\x45';Byte '\x4b';Byte '\x43';Byte '\x54';Byte '\x4c';Byte '\x00';Byte '\xf7';Byte '\x2d';Byte '\xf8';Byte '\x2c';Byte '\x61';Byte '\x2a';Byte '\xeb';Byte '\x33';Byte '\xcc';Byte '\x3d';Byte '\x7c';Byte '\xf4';Byte '\x55';Byte '\x95';Byte '\xa2';Byte '\x57';Byte '\xac';Byte '\x06';Byte '\xe8';Byte '\x07';Byte '\xe7';Byte '\xfd';Byte '\x8c';Byte '\x79';Byte '\x79';Byte '\xc6';Byte '\xe7';Byte '\x61';Byte '\xe3';Byte '\x86';Byte '\x1a';Byte '\x44';Byte '\x04';Byte '\xf9';Byte '\x8d';Byte '\x29';Byte '\x1a';Byte '\xa9';Byte '\x83';Byte '\x3e';Byte '\x54';Byte '\x52';Byte '\x43';Byte '\x52';Byte '\x51';Byte '\x4c';Byte '\x4a';Byte '\x51';Byte '\x42';Byte '\x47';Byte '\x56';Byte '\x58';Byte '\x4e';Byte '\x58';Byte '\x46';Byte '\x4c';Byte '\x59';Byte '\x50';Byte '\x00';Byte '\x18';Byte '\x66';Byte '\xf4';Byte '\x71';Byte '\xf0';Byte '\x3f';Byte '\x3e';Byte '\x59';Byte '\x41';Byte '\x51';Byte '\x56';Byte '\x4b';Byte '\x43';Byte '\x52';Byte '\x45';Byte '\x4b';Byte '\x55';Byte '\x58';Byte '\x51';Byte '\x56';Byte '\x4a';Byte '\x59';Byte '\x00';Byte '\xbc';Byte '\x5a';Byte '\xfe';Byte '\x48';Byte '\x96';Byte '\x84';Byte '\x85';Byte '\x27';Byte '\x28';Byte '\x5e';Byte '\x74';Byte '\x91';Byte '\x5b';Byte '\xd5';Byte '\xd6';Byte '\x67';Byte '\x56';Byte '\x4d';Byte '\x47';Byte '\x50';Byte '\x47';Byte '\x44';Byte '\x56';Byte '\x45';Byte '\x52';Byte '\x49';Byte '\x49';Byte '\x46';Byte '\x51';Byte '\x4a';Byte '\x44';Byte '\x00';Byte '\x55';Byte '\x4c';Byte '\x4d';Byte '\x54';Byte '\x49';Byte '\x45';Byte '\x59';Byte '\x44';Byte '\x48';Byte '\x51';Byte '\x56';Byte '\x4f';Byte '\x4f';Byte '\x53';Byte '\x45';Byte '\x52';Byte '\x44';Byte '\x00';Byte '\x42';Byte '\x50';Byte '\x59';Byte '\x47';Byte '\x41';Byte '\x59';Byte '\x58';Byte '\x46';Byte '\x54';Byte '\x4b';Byte '\x00';Byte '\x4e';Byte '\x42';Byte '\x5a';Byte '\x4b';Byte '\x51';Byte '\x53';Byte '\x4e';Byte '\x42';Byte '\x46';Byte '\x4e';Byte '\x5a';Byte '\x00';Byte '\xc7';Byte '\xa8';Byte '\x02';Byte '\x64';Byte '\x0a';Byte '\xff';Byte '\xaf';Byte '\x6f';Byte '\x95';Byte '\x18';Byte '\xc8';Byte '\x71';Byte '\x4d';Byte '\x6d';Byte '\x31';Byte '\x70';Byte '\x4a';Byte '\x44';Byte '\x44';Byte '\x44';Byte '\x50';Byte '\x4e';Byte '\x5a';Byte '\x48';Byte '\x4b';Byte '\x41';Byte '\x50';Byte '\x46';Byte '\x5a';Byte '\x00';Byte '\xcb';Byte '\x3a';Byte '\x91';Byte '\xf4';Byte '\xc3';Byte '\x2c';Byte '\x47';Byte '\x57';Byte '\x44';Byte '\x43';Byte '\x52';Byte '\x43';Byte '\x43';Byte '\x50';Byte '\x41';Byte '\x45';Byte '\x55';Byte '\x4b';Byte '\x49';Byte '\x57';Byte '\x45';Byte '\x41';Byte '\x54';Byte '\x51';Byte '\x4b';Byte '\x47';Byte '\x00';Byte '\xef';Byte '\x3d';Byte '\xa1';Byte '\xfb';Byte '\xfa';Byte '\xa4';Byte '\x4d';Byte '\x30';Byte '\x41';Byte '\x55';Byte '\x46';Byte '\x4f';Byte '\x5a';Byte '\x4e';Byte '\x48';Byte '\x52';Byte '\x56';Byte '\x46';Byte '\x43';Byte '\x42';Byte '\x53';Byte '\x41';Byte '\x4d';Byte '\x00';Byte '\xe5';Byte '\x4b';Byte '\x63';Byte '\x3a';Byte '\x81';Byte '\x02';Byte '\x81';Byte '\x36';Byte '\x56';Byte '\x45';Byte '\x41';Byte '\x47';Byte '\x4e';Byte '\x4f';Byte '\x49';Byte '\x53';Byte '\x51';Byte '\x49';Byte '\x00';Byte '\x39';Byte '\x34';Byte '\xe5';Byte '\x18';Byte '\xd4';Byte '\xf5';Byte '\x27';Byte '\x19';Byte '\x4a';Byte '\x41';Byte '\x43';Byte '\x41';Byte '\x4b';Byte '\x51';Byte '\x4a';Byte '\x4c';Byte '\x42';Byte '\x42';Byte '\x41';Byte '\x50';Byte '\x49';Byte '\x4c';Byte '\x4f';Byte '\x45';Byte '\x4e';Byte '\x46';Byte '\x42';Byte '\x00';Byte '\xe8';Byte '\x27';Byte '\x53';Byte '\x57';Byte '\x21';Byte '\x60';Byte '\xf1';Byte '\x06';]
let test_41_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400048L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400088L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000b9L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000d4L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000ebL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000fbL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400134L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40016dL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400175L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_42 = [
  data "AAAAAAMO" [
    Quad (Lit 520222721554062402L);
    Quad (Lit 8853338682199553092L);
    Quad (Lit 121537701130257970L);
    Asciz ("TGHOSHWPSXXNJTK");
    Quad (Lit 8610497931724305531L);
  ];
  data "AAAAAAMP" [
    Quad (Lit 3284741590633746653L);
    Asciz ("EFFRCPASNITDXZXLMSLM");
    Asciz ("QJCWJVEDQHRQ");
    Asciz ("XKFPYSQVJSWFSI");
    Asciz ("ZFWQPSQLKRESAI");
  ];
  data "AAAAAAMQ" [
    Quad (Lit 5734091610460878117L);
    Quad (Lit 7594662071689342476L);
    Quad (Lit 1380876460542773756L);
  ];
  data "AAAAAAMR" [
    Asciz ("OHFMKIIUVMXDUCNFABOO");
    Asciz ("TKYCWTEZLH");
  ];
  data "AAAAAAMS" [
    Quad (Lit 623640018795203251L);
    Asciz ("EOIYUBNLVWT");
  ];
  data "AAAAAAMT" [
    Quad (Lit 3400393057417359439L);
    Quad (Lit 5430757188649035729L);
    Quad (Lit 4990840751575730455L);
  ];
  data "AAAAAAMU" [
    Asciz ("VJYRLZEHZMDB");
  ];
  data "AAAAAAMV" [
    Quad (Lit 5696711841832977660L);
    Asciz ("YPDCNTPTJT");
    Quad (Lit 8006081339891786193L);
    Asciz ("KJDMVQBUTVO");
  ];
  data "AAAAAAMW" [
    Quad (Lit 6208132813222595024L);
    Quad (Lit 4654303208525510739L);
    Asciz ("WNGBNTTDQW");
    Asciz ("COOZDGIFDGHMIBNI");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAMO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAMP"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAMQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAMR"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAMS"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAMT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAMU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAMV"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAMW"); ~%Rax];
];
]
let test_42_data = [Byte '\x42';Byte '\x1c';Byte '\x51';Byte '\x1a';Byte '\xcf';Byte '\x33';Byte '\x38';Byte '\x07';Byte '\x44';Byte '\xb4';Byte '\xba';Byte '\xdc';Byte '\x9f';Byte '\x60';Byte '\xdd';Byte '\x7a';Byte '\x32';Byte '\xc6';Byte '\xaf';Byte '\x2e';Byte '\xe5';Byte '\xc9';Byte '\xaf';Byte '\x01';Byte '\x54';Byte '\x47';Byte '\x48';Byte '\x4f';Byte '\x53';Byte '\x48';Byte '\x57';Byte '\x50';Byte '\x53';Byte '\x58';Byte '\x58';Byte '\x4e';Byte '\x4a';Byte '\x54';Byte '\x4b';Byte '\x00';Byte '\x7b';Byte '\xb4';Byte '\xa9';Byte '\x9f';Byte '\x3f';Byte '\xa2';Byte '\x7e';Byte '\x77';Byte '\xdd';Byte '\x10';Byte '\xad';Byte '\xc8';Byte '\x12';Byte '\xbf';Byte '\x95';Byte '\x2d';Byte '\x45';Byte '\x46';Byte '\x46';Byte '\x52';Byte '\x43';Byte '\x50';Byte '\x41';Byte '\x53';Byte '\x4e';Byte '\x49';Byte '\x54';Byte '\x44';Byte '\x58';Byte '\x5a';Byte '\x58';Byte '\x4c';Byte '\x4d';Byte '\x53';Byte '\x4c';Byte '\x4d';Byte '\x00';Byte '\x51';Byte '\x4a';Byte '\x43';Byte '\x57';Byte '\x4a';Byte '\x56';Byte '\x45';Byte '\x44';Byte '\x51';Byte '\x48';Byte '\x52';Byte '\x51';Byte '\x00';Byte '\x58';Byte '\x4b';Byte '\x46';Byte '\x50';Byte '\x59';Byte '\x53';Byte '\x51';Byte '\x56';Byte '\x4a';Byte '\x53';Byte '\x57';Byte '\x46';Byte '\x53';Byte '\x49';Byte '\x00';Byte '\x5a';Byte '\x46';Byte '\x57';Byte '\x51';Byte '\x50';Byte '\x53';Byte '\x51';Byte '\x4c';Byte '\x4b';Byte '\x52';Byte '\x45';Byte '\x53';Byte '\x41';Byte '\x49';Byte '\x00';Byte '\x25';Byte '\x75';Byte '\x11';Byte '\x6f';Byte '\xf0';Byte '\x95';Byte '\x93';Byte '\x4f';Byte '\x0c';Byte '\xee';Byte '\x2c';Byte '\x7c';Byte '\xea';Byte '\xa8';Byte '\x65';Byte '\x69';Byte '\xfc';Byte '\xc9';Byte '\x59';Byte '\x1d';Byte '\xd3';Byte '\xdb';Byte '\x29';Byte '\x13';Byte '\x4f';Byte '\x48';Byte '\x46';Byte '\x4d';Byte '\x4b';Byte '\x49';Byte '\x49';Byte '\x55';Byte '\x56';Byte '\x4d';Byte '\x58';Byte '\x44';Byte '\x55';Byte '\x43';Byte '\x4e';Byte '\x46';Byte '\x41';Byte '\x42';Byte '\x4f';Byte '\x4f';Byte '\x00';Byte '\x54';Byte '\x4b';Byte '\x59';Byte '\x43';Byte '\x57';Byte '\x54';Byte '\x45';Byte '\x5a';Byte '\x4c';Byte '\x48';Byte '\x00';Byte '\xb3';Byte '\x8a';Byte '\x01';Byte '\xfc';Byte '\x4a';Byte '\x9d';Byte '\xa7';Byte '\x08';Byte '\x45';Byte '\x4f';Byte '\x49';Byte '\x59';Byte '\x55';Byte '\x42';Byte '\x4e';Byte '\x4c';Byte '\x56';Byte '\x57';Byte '\x54';Byte '\x00';Byte '\x4f';Byte '\xf0';Byte '\x10';Byte '\x3c';Byte '\x78';Byte '\x9f';Byte '\x30';Byte '\x2f';Byte '\xd1';Byte '\x27';Byte '\xd3';Byte '\xc2';Byte '\xe3';Byte '\xec';Byte '\x5d';Byte '\x4b';Byte '\x17';Byte '\x09';Byte '\x37';Byte '\x90';Byte '\x38';Byte '\x07';Byte '\x43';Byte '\x45';Byte '\x56';Byte '\x4a';Byte '\x59';Byte '\x52';Byte '\x4c';Byte '\x5a';Byte '\x45';Byte '\x48';Byte '\x5a';Byte '\x4d';Byte '\x44';Byte '\x42';Byte '\x00';Byte '\xfc';Byte '\x44';Byte '\x37';Byte '\xd8';Byte '\x3c';Byte '\xc9';Byte '\x0e';Byte '\x4f';Byte '\x59';Byte '\x50';Byte '\x44';Byte '\x43';Byte '\x4e';Byte '\x54';Byte '\x50';Byte '\x54';Byte '\x4a';Byte '\x54';Byte '\x00';Byte '\xd1';Byte '\x21';Byte '\x22';Byte '\x83';Byte '\x8f';Byte '\x50';Byte '\x1b';Byte '\x6f';Byte '\x4b';Byte '\x4a';Byte '\x44';Byte '\x4d';Byte '\x56';Byte '\x51';Byte '\x42';Byte '\x55';Byte '\x54';Byte '\x56';Byte '\x4f';Byte '\x00';Byte '\xd0';Byte '\x49';Byte '\x94';Byte '\xca';Byte '\xe6';Byte '\xb7';Byte '\x27';Byte '\x56';Byte '\x53';Byte '\xb8';Byte '\x1f';Byte '\xcd';Byte '\x1b';Byte '\x68';Byte '\x97';Byte '\x40';Byte '\x57';Byte '\x4e';Byte '\x47';Byte '\x42';Byte '\x4e';Byte '\x54';Byte '\x54';Byte '\x44';Byte '\x51';Byte '\x57';Byte '\x00';Byte '\x43';Byte '\x4f';Byte '\x4f';Byte '\x5a';Byte '\x44';Byte '\x47';Byte '\x49';Byte '\x46';Byte '\x44';Byte '\x47';Byte '\x48';Byte '\x4d';Byte '\x49';Byte '\x42';Byte '\x4e';Byte '\x49';Byte '\x00';]
let test_42_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400048L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400078L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c0L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000d8L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f8L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40010cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400124L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400131L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400158L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_43 = [
  data "AAAAAAMX" [
    Asciz ("HFJCKWLHPOL");
    Quad (Lit 8260830837376487479L);
    Asciz ("AUPZKAVIJGWGNRKFONU");
    Asciz ("CLEHBNOHECUPKH");
    Asciz ("OWFITSRNJE");
    Quad (Lit 3892730726882208926L);
  ];
  data "AAAAAAMY" [
    Asciz ("HWFANDBHPZD");
    Asciz ("DZHEFPNYTBMGXZ");
    Quad (Lit 114432654274819132L);
    Quad (Lit 8108961738572610278L);
  ];
  data "AAAAAAMZ" [
    Asciz ("IOAPTQAJDKRHFV");
    Asciz ("PZQCZQVBOTJX");
    Quad (Lit 2771326376668980181L);
    Quad (Lit 7177952542474663197L);
    Quad (Lit 272022541156440888L);
    Quad (Lit 3970381295647116443L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAMX"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAMY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAMZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAANA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAANB"); ~%Rax];
];
  data "AAAAAANA" [
    Asciz ("BDMBKTQSKGY");
    Asciz ("CJAWLOQYKFZPTKSMRNT");
  ];
  data "AAAAAANB" [
    Asciz ("CZIGTRGEBVK");
    Asciz ("WOYTUEOXLKBUGM");
    Quad (Lit 2341855830582124487L);
    Asciz ("KTMJDDBWKOFZLRZS");
    Quad (Lit 1236728069701229318L);
    Quad (Lit 5636190385737217633L);
  ];
]
let test_43_data = [Byte '\x48';Byte '\x46';Byte '\x4a';Byte '\x43';Byte '\x4b';Byte '\x57';Byte '\x4c';Byte '\x48';Byte '\x50';Byte '\x4f';Byte '\x4c';Byte '\x00';Byte '\x37';Byte '\x10';Byte '\x6b';Byte '\xfb';Byte '\xe0';Byte '\x5d';Byte '\xa4';Byte '\x72';Byte '\x41';Byte '\x55';Byte '\x50';Byte '\x5a';Byte '\x4b';Byte '\x41';Byte '\x56';Byte '\x49';Byte '\x4a';Byte '\x47';Byte '\x57';Byte '\x47';Byte '\x4e';Byte '\x52';Byte '\x4b';Byte '\x46';Byte '\x4f';Byte '\x4e';Byte '\x55';Byte '\x00';Byte '\x43';Byte '\x4c';Byte '\x45';Byte '\x48';Byte '\x42';Byte '\x4e';Byte '\x4f';Byte '\x48';Byte '\x45';Byte '\x43';Byte '\x55';Byte '\x50';Byte '\x4b';Byte '\x48';Byte '\x00';Byte '\x4f';Byte '\x57';Byte '\x46';Byte '\x49';Byte '\x54';Byte '\x53';Byte '\x52';Byte '\x4e';Byte '\x4a';Byte '\x45';Byte '\x00';Byte '\x9e';Byte '\xec';Byte '\x0f';Byte '\xb6';Byte '\xf8';Byte '\xc1';Byte '\x05';Byte '\x36';Byte '\x48';Byte '\x57';Byte '\x46';Byte '\x41';Byte '\x4e';Byte '\x44';Byte '\x42';Byte '\x48';Byte '\x50';Byte '\x5a';Byte '\x44';Byte '\x00';Byte '\x44';Byte '\x5a';Byte '\x48';Byte '\x45';Byte '\x46';Byte '\x50';Byte '\x4e';Byte '\x59';Byte '\x54';Byte '\x42';Byte '\x4d';Byte '\x47';Byte '\x58';Byte '\x5a';Byte '\x00';Byte '\x3c';Byte '\x74';Byte '\xc1';Byte '\x8c';Byte '\xe4';Byte '\x8b';Byte '\x96';Byte '\x01';Byte '\xe6';Byte '\xba';Byte '\xda';Byte '\xf4';Byte '\xbc';Byte '\xd1';Byte '\x88';Byte '\x70';Byte '\x49';Byte '\x4f';Byte '\x41';Byte '\x50';Byte '\x54';Byte '\x51';Byte '\x41';Byte '\x4a';Byte '\x44';Byte '\x4b';Byte '\x52';Byte '\x48';Byte '\x46';Byte '\x56';Byte '\x00';Byte '\x50';Byte '\x5a';Byte '\x51';Byte '\x43';Byte '\x5a';Byte '\x51';Byte '\x56';Byte '\x42';Byte '\x4f';Byte '\x54';Byte '\x4a';Byte '\x58';Byte '\x00';Byte '\xd5';Byte '\x63';Byte '\x06';Byte '\x0e';Byte '\xa8';Byte '\xba';Byte '\x75';Byte '\x26';Byte '\x1d';Byte '\x75';Byte '\xd0';Byte '\x94';Byte '\xce';Byte '\x35';Byte '\x9d';Byte '\x63';Byte '\x38';Byte '\x5b';Byte '\x87';Byte '\x58';Byte '\x0f';Byte '\x6b';Byte '\xc6';Byte '\x03';Byte '\x9b';Byte '\xcc';Byte '\xe6';Byte '\x9d';Byte '\xc0';Byte '\xa0';Byte '\x19';Byte '\x37';Byte '\x42';Byte '\x44';Byte '\x4d';Byte '\x42';Byte '\x4b';Byte '\x54';Byte '\x51';Byte '\x53';Byte '\x4b';Byte '\x47';Byte '\x59';Byte '\x00';Byte '\x43';Byte '\x4a';Byte '\x41';Byte '\x57';Byte '\x4c';Byte '\x4f';Byte '\x51';Byte '\x59';Byte '\x4b';Byte '\x46';Byte '\x5a';Byte '\x50';Byte '\x54';Byte '\x4b';Byte '\x53';Byte '\x4d';Byte '\x52';Byte '\x4e';Byte '\x54';Byte '\x00';Byte '\x43';Byte '\x5a';Byte '\x49';Byte '\x47';Byte '\x54';Byte '\x52';Byte '\x47';Byte '\x45';Byte '\x42';Byte '\x56';Byte '\x4b';Byte '\x00';Byte '\x57';Byte '\x4f';Byte '\x59';Byte '\x54';Byte '\x55';Byte '\x45';Byte '\x4f';Byte '\x58';Byte '\x4c';Byte '\x4b';Byte '\x42';Byte '\x55';Byte '\x47';Byte '\x4d';Byte '\x00';Byte '\xc7';Byte '\x5f';Byte '\x06';Byte '\x61';Byte '\x78';Byte '\xf1';Byte '\x7f';Byte '\x20';Byte '\x4b';Byte '\x54';Byte '\x4d';Byte '\x4a';Byte '\x44';Byte '\x44';Byte '\x42';Byte '\x57';Byte '\x4b';Byte '\x4f';Byte '\x46';Byte '\x5a';Byte '\x4c';Byte '\x52';Byte '\x5a';Byte '\x53';Byte '\x00';Byte '\x06';Byte '\xdb';Byte '\x4b';Byte '\x7e';Byte '\xa0';Byte '\xbd';Byte '\x29';Byte '\x11';Byte '\x61';Byte '\xb6';Byte '\x56';Byte '\x44';Byte '\x4b';Byte '\xc5';Byte '\x37';Byte '\x4e';]
let test_43_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400028L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400072L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40009dL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000d9L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f9L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_44 = [
  data "AAAAAANC" [
    Quad (Lit 7513618886535260487L);
    Asciz ("WLWGTHKEOFQMBYWBXGBM");
    Asciz ("YXFIQIEEOK");
    Asciz ("OHJWUMKYZBIVLJHJP");
  ];
  data "AAAAAAND" [
    Asciz ("LETPUREYMNPMYCCT");
    Asciz ("HBBMEMYYMBLYKQSEGVPM");
    Asciz ("MSCNISGSVNCMNLYHBGS");
    Asciz ("MKVVADTZOW");
    Asciz ("FZRSZEYQJN");
    Quad (Lit 247594138368972632L);
  ];
  data "AAAAAANE" [
    Quad (Lit 4085655453060664825L);
    Asciz ("QYHDFSTSFGARP");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAANC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAND"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAANE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAANF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAANG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAANH"); ~%Rax];
];
  data "AAAAAANF" [
    Quad (Lit 3841269595923514246L);
    Asciz ("WSSFACHKNG");
    Asciz ("SPVWTHKWPSAWK");
  ];
  data "AAAAAANG" [
    Quad (Lit 7591492687425511355L);
    Quad (Lit 1030812391898644295L);
  ];
  data "AAAAAANH" [
    Quad (Lit 3025094632973176977L);
    Asciz ("ODRWHFRENVMGDZLGZDT");
    Asciz ("DOLKVAAYADXXHPMV");
  ];
]
let test_44_data = [Byte '\x47';Byte '\xa9';Byte '\x99';Byte '\x85';Byte '\x91';Byte '\xbc';Byte '\x45';Byte '\x68';Byte '\x57';Byte '\x4c';Byte '\x57';Byte '\x47';Byte '\x54';Byte '\x48';Byte '\x4b';Byte '\x45';Byte '\x4f';Byte '\x46';Byte '\x51';Byte '\x4d';Byte '\x42';Byte '\x59';Byte '\x57';Byte '\x42';Byte '\x58';Byte '\x47';Byte '\x42';Byte '\x4d';Byte '\x00';Byte '\x59';Byte '\x58';Byte '\x46';Byte '\x49';Byte '\x51';Byte '\x49';Byte '\x45';Byte '\x45';Byte '\x4f';Byte '\x4b';Byte '\x00';Byte '\x4f';Byte '\x48';Byte '\x4a';Byte '\x57';Byte '\x55';Byte '\x4d';Byte '\x4b';Byte '\x59';Byte '\x5a';Byte '\x42';Byte '\x49';Byte '\x56';Byte '\x4c';Byte '\x4a';Byte '\x48';Byte '\x4a';Byte '\x50';Byte '\x00';Byte '\x4c';Byte '\x45';Byte '\x54';Byte '\x50';Byte '\x55';Byte '\x52';Byte '\x45';Byte '\x59';Byte '\x4d';Byte '\x4e';Byte '\x50';Byte '\x4d';Byte '\x59';Byte '\x43';Byte '\x43';Byte '\x54';Byte '\x00';Byte '\x48';Byte '\x42';Byte '\x42';Byte '\x4d';Byte '\x45';Byte '\x4d';Byte '\x59';Byte '\x59';Byte '\x4d';Byte '\x42';Byte '\x4c';Byte '\x59';Byte '\x4b';Byte '\x51';Byte '\x53';Byte '\x45';Byte '\x47';Byte '\x56';Byte '\x50';Byte '\x4d';Byte '\x00';Byte '\x4d';Byte '\x53';Byte '\x43';Byte '\x4e';Byte '\x49';Byte '\x53';Byte '\x47';Byte '\x53';Byte '\x56';Byte '\x4e';Byte '\x43';Byte '\x4d';Byte '\x4e';Byte '\x4c';Byte '\x59';Byte '\x48';Byte '\x42';Byte '\x47';Byte '\x53';Byte '\x00';Byte '\x4d';Byte '\x4b';Byte '\x56';Byte '\x56';Byte '\x41';Byte '\x44';Byte '\x54';Byte '\x5a';Byte '\x4f';Byte '\x57';Byte '\x00';Byte '\x46';Byte '\x5a';Byte '\x52';Byte '\x53';Byte '\x5a';Byte '\x45';Byte '\x59';Byte '\x51';Byte '\x4a';Byte '\x4e';Byte '\x00';Byte '\x58';Byte '\x97';Byte '\xf3';Byte '\x99';Byte '\x8e';Byte '\xa1';Byte '\x6f';Byte '\x03';Byte '\xf9';Byte '\x8d';Byte '\x51';Byte '\xe2';Byte '\xfc';Byte '\x29';Byte '\xb3';Byte '\x38';Byte '\x51';Byte '\x59';Byte '\x48';Byte '\x44';Byte '\x46';Byte '\x53';Byte '\x54';Byte '\x53';Byte '\x46';Byte '\x47';Byte '\x41';Byte '\x52';Byte '\x50';Byte '\x00';Byte '\x86';Byte '\x83';Byte '\x87';Byte '\x77';Byte '\x58';Byte '\xee';Byte '\x4e';Byte '\x35';Byte '\x57';Byte '\x53';Byte '\x53';Byte '\x46';Byte '\x41';Byte '\x43';Byte '\x48';Byte '\x4b';Byte '\x4e';Byte '\x47';Byte '\x00';Byte '\x53';Byte '\x50';Byte '\x56';Byte '\x57';Byte '\x54';Byte '\x48';Byte '\x4b';Byte '\x57';Byte '\x50';Byte '\x53';Byte '\x41';Byte '\x57';Byte '\x4b';Byte '\x00';Byte '\xbb';Byte '\x1f';Byte '\xf9';Byte '\xb4';Byte '\x60';Byte '\x66';Byte '\x5a';Byte '\x69';Byte '\x47';Byte '\x7f';Byte '\x30';Byte '\xb1';Byte '\x68';Byte '\x2e';Byte '\x4e';Byte '\x0e';Byte '\x91';Byte '\x90';Byte '\x4e';Byte '\x82';Byte '\x8a';Byte '\x4b';Byte '\xfb';Byte '\x29';Byte '\x4f';Byte '\x44';Byte '\x52';Byte '\x57';Byte '\x48';Byte '\x46';Byte '\x52';Byte '\x45';Byte '\x4e';Byte '\x56';Byte '\x4d';Byte '\x47';Byte '\x44';Byte '\x5a';Byte '\x4c';Byte '\x47';Byte '\x5a';Byte '\x44';Byte '\x54';Byte '\x00';Byte '\x44';Byte '\x4f';Byte '\x4c';Byte '\x4b';Byte '\x56';Byte '\x41';Byte '\x41';Byte '\x59';Byte '\x41';Byte '\x44';Byte '\x58';Byte '\x58';Byte '\x48';Byte '\x50';Byte '\x4d';Byte '\x56';Byte '\x00';]
let test_44_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400030L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40006aL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c2L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000d8L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f9L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400109L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_45 = [
  data "AAAAAANI" [
    Asciz ("ZVLNQOMZHLR");
    Asciz ("PPUVSLKCANRGSN");
    Asciz ("ZKSKYMCMSOHLMOR");
    Asciz ("FOUTBJIUGPU");
  ];
  data "AAAAAANJ" [
    Quad (Lit 1669937874137078336L);
    Asciz ("WSFHBKMYFSOEJKVNBN");
  ];
  data "AAAAAANK" [
    Asciz ("KHRMZRXOSLTMXKTEMLC");
    Quad (Lit 2179366267776436487L);
    Asciz ("RPSPTEAMUZJNWSOZHK");
  ];
  data "AAAAAANL" [
    Asciz ("FWXZKUVGPISJLVAIMT");
    Quad (Lit 5847089137733165379L);
    Quad (Lit 6749202239588209831L);
    Quad (Lit 7457560790215698441L);
  ];
  data "AAAAAANM" [
    Asciz ("NUBCNLTUCPK");
  ];
  data "AAAAAANN" [
    Quad (Lit 6725485556545044844L);
  ];
  data "AAAAAANO" [
    Quad (Lit 2787855343942456415L);
    Asciz ("SJYCKPOWAX");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAANI"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAANJ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAANK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAANL"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAANM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAANN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAANO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAANP"); ~%Rax];
];
  data "AAAAAANP" [
    Asciz ("MLBQDGXJWEHJC");
    Quad (Lit 8566750842273830535L);
    Asciz ("ODJJGRRGAMHOXRMAGJ");
  ];
]
let test_45_data = [Byte '\x5a';Byte '\x56';Byte '\x4c';Byte '\x4e';Byte '\x51';Byte '\x4f';Byte '\x4d';Byte '\x5a';Byte '\x48';Byte '\x4c';Byte '\x52';Byte '\x00';Byte '\x50';Byte '\x50';Byte '\x55';Byte '\x56';Byte '\x53';Byte '\x4c';Byte '\x4b';Byte '\x43';Byte '\x41';Byte '\x4e';Byte '\x52';Byte '\x47';Byte '\x53';Byte '\x4e';Byte '\x00';Byte '\x5a';Byte '\x4b';Byte '\x53';Byte '\x4b';Byte '\x59';Byte '\x4d';Byte '\x43';Byte '\x4d';Byte '\x53';Byte '\x4f';Byte '\x48';Byte '\x4c';Byte '\x4d';Byte '\x4f';Byte '\x52';Byte '\x00';Byte '\x46';Byte '\x4f';Byte '\x55';Byte '\x54';Byte '\x42';Byte '\x4a';Byte '\x49';Byte '\x55';Byte '\x47';Byte '\x50';Byte '\x55';Byte '\x00';Byte '\x40';Byte '\x5a';Byte '\xe9';Byte '\x18';Byte '\xa6';Byte '\xcf';Byte '\x2c';Byte '\x17';Byte '\x57';Byte '\x53';Byte '\x46';Byte '\x48';Byte '\x42';Byte '\x4b';Byte '\x4d';Byte '\x59';Byte '\x46';Byte '\x53';Byte '\x4f';Byte '\x45';Byte '\x4a';Byte '\x4b';Byte '\x56';Byte '\x4e';Byte '\x42';Byte '\x4e';Byte '\x00';Byte '\x4b';Byte '\x48';Byte '\x52';Byte '\x4d';Byte '\x5a';Byte '\x52';Byte '\x58';Byte '\x4f';Byte '\x53';Byte '\x4c';Byte '\x54';Byte '\x4d';Byte '\x58';Byte '\x4b';Byte '\x54';Byte '\x45';Byte '\x4d';Byte '\x4c';Byte '\x43';Byte '\x00';Byte '\x07';Byte '\x89';Byte '\x48';Byte '\xe2';Byte '\x12';Byte '\xaa';Byte '\x3e';Byte '\x1e';Byte '\x52';Byte '\x50';Byte '\x53';Byte '\x50';Byte '\x54';Byte '\x45';Byte '\x41';Byte '\x4d';Byte '\x55';Byte '\x5a';Byte '\x4a';Byte '\x4e';Byte '\x57';Byte '\x53';Byte '\x4f';Byte '\x5a';Byte '\x48';Byte '\x4b';Byte '\x00';Byte '\x46';Byte '\x57';Byte '\x58';Byte '\x5a';Byte '\x4b';Byte '\x55';Byte '\x56';Byte '\x47';Byte '\x50';Byte '\x49';Byte '\x53';Byte '\x4a';Byte '\x4c';Byte '\x56';Byte '\x41';Byte '\x49';Byte '\x4d';Byte '\x54';Byte '\x00';Byte '\x43';Byte '\x61';Byte '\xa1';Byte '\x70';Byte '\x97';Byte '\x08';Byte '\x25';Byte '\x51';Byte '\xa7';Byte '\x14';Byte '\xed';Byte '\x97';Byte '\xad';Byte '\xfb';Byte '\xa9';Byte '\x5d';Byte '\x09';Byte '\x28';Byte '\xb0';Byte '\xdf';Byte '\x06';Byte '\x94';Byte '\x7e';Byte '\x67';Byte '\x4e';Byte '\x55';Byte '\x42';Byte '\x43';Byte '\x4e';Byte '\x4c';Byte '\x54';Byte '\x55';Byte '\x43';Byte '\x50';Byte '\x4b';Byte '\x00';Byte '\x6c';Byte '\x41';Byte '\xe3';Byte '\x03';Byte '\x7b';Byte '\xb9';Byte '\x55';Byte '\x5d';Byte '\x5f';Byte '\x54';Byte '\xdd';Byte '\x24';Byte '\xaa';Byte '\x73';Byte '\xb0';Byte '\x26';Byte '\x53';Byte '\x4a';Byte '\x59';Byte '\x43';Byte '\x4b';Byte '\x50';Byte '\x4f';Byte '\x57';Byte '\x41';Byte '\x58';Byte '\x00';Byte '\x4d';Byte '\x4c';Byte '\x42';Byte '\x51';Byte '\x44';Byte '\x47';Byte '\x58';Byte '\x4a';Byte '\x57';Byte '\x45';Byte '\x48';Byte '\x4a';Byte '\x43';Byte '\x00';Byte '\x87';Byte '\x96';Byte '\x02';Byte '\xa1';Byte '\x80';Byte '\x36';Byte '\xe3';Byte '\x76';Byte '\x4f';Byte '\x44';Byte '\x4a';Byte '\x4a';Byte '\x47';Byte '\x52';Byte '\x52';Byte '\x47';Byte '\x41';Byte '\x4d';Byte '\x48';Byte '\x4f';Byte '\x58';Byte '\x52';Byte '\x4d';Byte '\x41';Byte '\x47';Byte '\x4a';Byte '\x00';]
let test_45_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400040L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400077L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400092L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c1L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000ecL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f8L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400100L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400113L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_46 = [
  data "AAAAAANQ" [
    Quad (Lit 3825730027437197850L);
  ];
  data "AAAAAANR" [
    Quad (Lit 1381255451700098433L);
    Asciz ("MTUBLIPRFY");
    Asciz ("NDGVJCJACKCKAXRQH");
    Quad (Lit 63806676500494080L);
  ];
  data "AAAAAANS" [
    Quad (Lit 6368335931917301571L);
    Quad (Lit 2538499560266366258L);
    Asciz ("TVHKHMBYMFYAZMC");
    Quad (Lit 5944092830944994720L);
    Quad (Lit 8192153892345659173L);
  ];
  data "AAAAAANT" [
    Quad (Lit 3090712845187084316L);
    Asciz ("GRGZCIZPTQEDWJDUHJM");
    Asciz ("OMYNHHFNPB");
    Asciz ("NTYJBIJFHNDWKMYCSJVC");
    Quad (Lit 4708993110748578723L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAANQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAANR"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAANS"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAANT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAANU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAANV"); ~%Rax];
];
  data "AAAAAANU" [
    Quad (Lit 5292494826856043634L);
    Quad (Lit 846233020940544875L);
    Quad (Lit 9031200427545033216L);
    Asciz ("VTQCVUXJAQMUPKK");
    Quad (Lit 3413625247939164476L);
    Quad (Lit 3476831389716582455L);
  ];
  data "AAAAAANV" [
    Quad (Lit 3380347851590275593L);
    Asciz ("ITPMYFUZGIHLPKRXLKKX");
  ];
]
let test_46_data = [Byte '\x1a';Byte '\x8a';Byte '\xf0';Byte '\xbb';Byte '\x30';Byte '\xb9';Byte '\x17';Byte '\x35';Byte '\x81';Byte '\xf5';Byte '\xa7';Byte '\xde';Byte '\x83';Byte '\x34';Byte '\x2b';Byte '\x13';Byte '\x4d';Byte '\x54';Byte '\x55';Byte '\x42';Byte '\x4c';Byte '\x49';Byte '\x50';Byte '\x52';Byte '\x46';Byte '\x59';Byte '\x00';Byte '\x4e';Byte '\x44';Byte '\x47';Byte '\x56';Byte '\x4a';Byte '\x43';Byte '\x4a';Byte '\x41';Byte '\x43';Byte '\x4b';Byte '\x43';Byte '\x4b';Byte '\x41';Byte '\x58';Byte '\x52';Byte '\x51';Byte '\x48';Byte '\x00';Byte '\x00';Byte '\x37';Byte '\x1c';Byte '\x8f';Byte '\xd5';Byte '\xaf';Byte '\xe2';Byte '\x00';Byte '\x43';Byte '\x77';Byte '\x49';Byte '\x08';Byte '\xca';Byte '\xdf';Byte '\x60';Byte '\x58';Byte '\x32';Byte '\x7d';Byte '\x29';Byte '\x88';Byte '\xe6';Byte '\x8f';Byte '\x3a';Byte '\x23';Byte '\x54';Byte '\x56';Byte '\x48';Byte '\x4b';Byte '\x48';Byte '\x4d';Byte '\x42';Byte '\x59';Byte '\x4d';Byte '\x46';Byte '\x59';Byte '\x41';Byte '\x5a';Byte '\x4d';Byte '\x43';Byte '\x00';Byte '\xa0';Byte '\x25';Byte '\x6c';Byte '\xc4';Byte '\xef';Byte '\xa8';Byte '\x7d';Byte '\x52';Byte '\x25';Byte '\xbf';Byte '\x98';Byte '\xaa';Byte '\x8f';Byte '\x60';Byte '\xb0';Byte '\x71';Byte '\x1c';Byte '\xf0';Byte '\x1c';Byte '\x18';Byte '\xf5';Byte '\x6a';Byte '\xe4';Byte '\x2a';Byte '\x47';Byte '\x52';Byte '\x47';Byte '\x5a';Byte '\x43';Byte '\x49';Byte '\x5a';Byte '\x50';Byte '\x54';Byte '\x51';Byte '\x45';Byte '\x44';Byte '\x57';Byte '\x4a';Byte '\x44';Byte '\x55';Byte '\x48';Byte '\x4a';Byte '\x4d';Byte '\x00';Byte '\x4f';Byte '\x4d';Byte '\x59';Byte '\x4e';Byte '\x48';Byte '\x48';Byte '\x46';Byte '\x4e';Byte '\x50';Byte '\x42';Byte '\x00';Byte '\x4e';Byte '\x54';Byte '\x59';Byte '\x4a';Byte '\x42';Byte '\x49';Byte '\x4a';Byte '\x46';Byte '\x48';Byte '\x4e';Byte '\x44';Byte '\x57';Byte '\x4b';Byte '\x4d';Byte '\x59';Byte '\x43';Byte '\x53';Byte '\x4a';Byte '\x56';Byte '\x43';Byte '\x00';Byte '\xa3';Byte '\x43';Byte '\xee';Byte '\xef';Byte '\x48';Byte '\xb4';Byte '\x59';Byte '\x41';Byte '\x72';Byte '\xd4';Byte '\x58';Byte '\x12';Byte '\x01';Byte '\xb8';Byte '\x72';Byte '\x49';Byte '\x6b';Byte '\xeb';Byte '\x5d';Byte '\xf2';Byte '\x72';Byte '\x6c';Byte '\xbe';Byte '\x0b';Byte '\x00';Byte '\x7a';Byte '\x2d';Byte '\x83';Byte '\xf0';Byte '\x44';Byte '\x55';Byte '\x7d';Byte '\x56';Byte '\x54';Byte '\x51';Byte '\x43';Byte '\x56';Byte '\x55';Byte '\x58';Byte '\x4a';Byte '\x41';Byte '\x51';Byte '\x4d';Byte '\x55';Byte '\x50';Byte '\x4b';Byte '\x4b';Byte '\x00';Byte '\x3c';Byte '\xf9';Byte '\xb7';Byte '\xab';Byte '\x13';Byte '\xa2';Byte '\x5f';Byte '\x2f';Byte '\x37';Byte '\x10';Byte '\xfc';Byte '\x57';Byte '\xba';Byte '\x2f';Byte '\x40';Byte '\x30';Byte '\x09';Byte '\x12';Byte '\x4b';Byte '\x0f';Byte '\x76';Byte '\x68';Byte '\xe9';Byte '\x2e';Byte '\x49';Byte '\x54';Byte '\x50';Byte '\x4d';Byte '\x59';Byte '\x46';Byte '\x55';Byte '\x5a';Byte '\x47';Byte '\x49';Byte '\x48';Byte '\x4c';Byte '\x50';Byte '\x4b';Byte '\x52';Byte '\x58';Byte '\x4c';Byte '\x4b';Byte '\x4b';Byte '\x58';Byte '\x00';]
let test_46_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400030L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400038L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400065L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400095L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000d9L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400111L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_47 = [
  data "AAAAAANW" [
    Asciz ("EFHGUFABFMEDVC");
    Asciz ("YXSVYDFYXRFITLCGGE");
    Asciz ("TIMJSXWCNYSBJ");
    Quad (Lit 4101331008040648100L);
    Asciz ("XNEIGLWFJSEJZLZIV");
    Quad (Lit 8408788438190276708L);
  ];
  data "AAAAAANX" [
    Asciz ("QSGXTVXXDJTGLA");
    Quad (Lit 3516279506900500723L);
    Asciz ("HGWHAAHNMLXT");
  ];
  data "AAAAAANY" [
    Quad (Lit 3902601377828623102L);
    Quad (Lit 8012480701327777566L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAANW"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAANX"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAANY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAANZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAOA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAOB"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAOC"); ~%Rax];
];
  data "AAAAAANZ" [
    Quad (Lit 1532003532289867889L);
    Quad (Lit 7141260993770728976L);
    Quad (Lit 8622596947759557834L);
    Quad (Lit 6739708601258413713L);
    Asciz ("XMFMAPQMDEABEYX");
    Asciz ("PNRCNTUFCFHXZHF");
  ];
  data "AAAAAAOA" [
    Asciz ("PFWTNKQCJSFAATCC");
    Quad (Lit 7771459466444107921L);
    Quad (Lit 1157564313425477479L);
    Quad (Lit 5691196506904843844L);
    Quad (Lit 7183402567540841548L);
    Quad (Lit 5658071136967477900L);
  ];
  data "AAAAAAOB" [
    Quad (Lit 1538324911847611503L);
    Asciz ("VZMDPZLWCRPIG");
    Asciz ("BDEORTBTSOFJZ");
    Asciz ("SXONQEFIEAGFXLI");
  ];
  data "AAAAAAOC" [
    Asciz ("TQPYALJLRNVGUMLNB");
    Quad (Lit 7389157449950312711L);
    Asciz ("SYZESRCCRRSGV");
    Asciz ("STLKJQWKMY");
    Quad (Lit 8919773828018574351L);
  ];
]
let test_47_data = [Byte '\x45';Byte '\x46';Byte '\x48';Byte '\x47';Byte '\x55';Byte '\x46';Byte '\x41';Byte '\x42';Byte '\x46';Byte '\x4d';Byte '\x45';Byte '\x44';Byte '\x56';Byte '\x43';Byte '\x00';Byte '\x59';Byte '\x58';Byte '\x53';Byte '\x56';Byte '\x59';Byte '\x44';Byte '\x46';Byte '\x59';Byte '\x58';Byte '\x52';Byte '\x46';Byte '\x49';Byte '\x54';Byte '\x4c';Byte '\x43';Byte '\x47';Byte '\x47';Byte '\x45';Byte '\x00';Byte '\x54';Byte '\x49';Byte '\x4d';Byte '\x4a';Byte '\x53';Byte '\x58';Byte '\x57';Byte '\x43';Byte '\x4e';Byte '\x59';Byte '\x53';Byte '\x42';Byte '\x4a';Byte '\x00';Byte '\xa4';Byte '\xbd';Byte '\x8e';Byte '\x70';Byte '\xd2';Byte '\xda';Byte '\xea';Byte '\x38';Byte '\x58';Byte '\x4e';Byte '\x45';Byte '\x49';Byte '\x47';Byte '\x4c';Byte '\x57';Byte '\x46';Byte '\x4a';Byte '\x53';Byte '\x45';Byte '\x4a';Byte '\x5a';Byte '\x4c';Byte '\x5a';Byte '\x49';Byte '\x56';Byte '\x00';Byte '\x64';Byte '\x40';Byte '\xbe';Byte '\x69';Byte '\x88';Byte '\x04';Byte '\xb2';Byte '\x74';Byte '\x51';Byte '\x53';Byte '\x47';Byte '\x58';Byte '\x54';Byte '\x56';Byte '\x58';Byte '\x58';Byte '\x44';Byte '\x4a';Byte '\x54';Byte '\x47';Byte '\x4c';Byte '\x41';Byte '\x00';Byte '\xf3';Byte '\x40';Byte '\xca';Byte '\xdb';Byte '\x94';Byte '\x55';Byte '\xcc';Byte '\x30';Byte '\x48';Byte '\x47';Byte '\x57';Byte '\x48';Byte '\x41';Byte '\x41';Byte '\x48';Byte '\x4e';Byte '\x4d';Byte '\x4c';Byte '\x58';Byte '\x54';Byte '\x00';Byte '\xfe';Byte '\xd2';Byte '\x6c';Byte '\xb9';Byte '\x46';Byte '\xd3';Byte '\x28';Byte '\x36';Byte '\x1e';Byte '\x9f';Byte '\x50';Byte '\xf4';Byte '\xbe';Byte '\x0c';Byte '\x32';Byte '\x6f';Byte '\x71';Byte '\x00';Byte '\xc8';Byte '\x80';Byte '\x18';Byte '\xc5';Byte '\x42';Byte '\x15';Byte '\x10';Byte '\xae';Byte '\x0e';Byte '\xae';Byte '\x09';Byte '\xdb';Byte '\x1a';Byte '\x63';Byte '\xca';Byte '\x6c';Byte '\x93';Byte '\x50';Byte '\x3d';Byte '\x9e';Byte '\xa9';Byte '\x77';Byte '\x91';Byte '\x0e';Byte '\xa7';Byte '\xab';Byte '\x43';Byte '\x41';Byte '\x88';Byte '\x5d';Byte '\x58';Byte '\x4d';Byte '\x46';Byte '\x4d';Byte '\x41';Byte '\x50';Byte '\x51';Byte '\x4d';Byte '\x44';Byte '\x45';Byte '\x41';Byte '\x42';Byte '\x45';Byte '\x59';Byte '\x58';Byte '\x00';Byte '\x50';Byte '\x4e';Byte '\x52';Byte '\x43';Byte '\x4e';Byte '\x54';Byte '\x55';Byte '\x46';Byte '\x43';Byte '\x46';Byte '\x48';Byte '\x58';Byte '\x5a';Byte '\x48';Byte '\x46';Byte '\x00';Byte '\x50';Byte '\x46';Byte '\x57';Byte '\x54';Byte '\x4e';Byte '\x4b';Byte '\x51';Byte '\x43';Byte '\x4a';Byte '\x53';Byte '\x46';Byte '\x41';Byte '\x41';Byte '\x54';Byte '\x43';Byte '\x43';Byte '\x00';Byte '\x91';Byte '\x70';Byte '\xbf';Byte '\xb3';Byte '\x35';Byte '\xc5';Byte '\xd9';Byte '\x6b';Byte '\x67';Byte '\xff';Byte '\x64';Byte '\x2a';Byte '\x9c';Byte '\x7e';Byte '\x10';Byte '\x10';Byte '\x44';Byte '\xd6';Byte '\x01';Byte '\xdd';Byte '\x11';Byte '\x31';Byte '\xfb';Byte '\x4e';Byte '\x4c';Byte '\x9c';Byte '\xe6';Byte '\x6c';Byte '\x93';Byte '\x92';Byte '\xb0';Byte '\x63';Byte '\x8c';Byte '\x4a';Byte '\xd6';Byte '\xa8';Byte '\xb8';Byte '\x81';Byte '\x85';Byte '\x4e';Byte '\x6f';Byte '\x9c';Byte '\xcf';Byte '\x5f';Byte '\x5b';Byte '\x3a';Byte '\x59';Byte '\x15';Byte '\x56';Byte '\x5a';Byte '\x4d';Byte '\x44';Byte '\x50';Byte '\x5a';Byte '\x4c';Byte '\x57';Byte '\x43';Byte '\x52';Byte '\x50';Byte '\x49';Byte '\x47';Byte '\x00';Byte '\x42';Byte '\x44';Byte '\x45';Byte '\x4f';Byte '\x52';Byte '\x54';Byte '\x42';Byte '\x54';Byte '\x53';Byte '\x4f';Byte '\x46';Byte '\x4a';Byte '\x5a';Byte '\x00';Byte '\x53';Byte '\x58';Byte '\x4f';Byte '\x4e';Byte '\x51';Byte '\x45';Byte '\x46';Byte '\x49';Byte '\x45';Byte '\x41';Byte '\x47';Byte '\x46';Byte '\x58';Byte '\x4c';Byte '\x49';Byte '\x00';Byte '\x54';Byte '\x51';Byte '\x50';Byte '\x59';Byte '\x41';Byte '\x4c';Byte '\x4a';Byte '\x4c';Byte '\x52';Byte '\x4e';Byte '\x56';Byte '\x47';Byte '\x55';Byte '\x4d';Byte '\x4c';Byte '\x4e';Byte '\x42';Byte '\x00';Byte '\x07';Byte '\x39';Byte '\xb8';Byte '\x21';Byte '\x8d';Byte '\x8f';Byte '\x8b';Byte '\x66';Byte '\x53';Byte '\x59';Byte '\x5a';Byte '\x45';Byte '\x53';Byte '\x52';Byte '\x43';Byte '\x43';Byte '\x52';Byte '\x52';Byte '\x53';Byte '\x47';Byte '\x56';Byte '\x00';Byte '\x53';Byte '\x54';Byte '\x4c';Byte '\x4b';Byte '\x4a';Byte '\x51';Byte '\x57';Byte '\x4b';Byte '\x4d';Byte '\x59';Byte '\x00';Byte '\x0f';Byte '\x94';Byte '\xdf';Byte '\x9f';Byte '\x09';Byte '\x67';Byte '\xc9';Byte '\x7b';]
let test_47_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400038L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40008aL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000aeL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000beL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000feL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400137L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40016bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_48 = [
  data "AAAAAAOD" [
    Quad (Lit 1682110396864334414L);
    Quad (Lit 4355179035426770876L);
    Quad (Lit 6586608637220150146L);
    Asciz ("XAEQSRLVGTCNGJMCQNM");
    Quad (Lit 8754786401647790806L);
  ];
  data "AAAAAAOE" [
    Quad (Lit 7616692968701553988L);
  ];
  data "AAAAAAOF" [
    Quad (Lit 6051736532254249514L);
  ];
  data "AAAAAAOG" [
    Quad (Lit 8313441191650958390L);
    Asciz ("ZYSRZOOBXE");
    Quad (Lit 3230412219891094907L);
    Quad (Lit 1538749585441210481L);
  ];
  data "AAAAAAOH" [
    Asciz ("YJXJZUBABPLZ");
    Asciz ("CMSZQGYANTYNKHFWPX");
    Quad (Lit 6460956040217278604L);
    Quad (Lit 2303295236330188487L);
    Quad (Lit 7489000628911379607L);
    Asciz ("FQWBYRRBJKHURRX");
  ];
  data "AAAAAAOI" [
    Quad (Lit 5579507966652086971L);
    Quad (Lit 8084397180996209822L);
    Asciz ("YMDUPEBHDRAGE");
    Asciz ("ELYBZLKACKMYQJ");
    Quad (Lit 2140800699588410237L);
  ];
  data "AAAAAAOJ" [
    Asciz ("XLSHDZLVFKBK");
    Asciz ("DVIQSRZTITP");
    Quad (Lit 8206503440257015677L);
    Quad (Lit 528673619915064334L);
    Asciz ("OGSNQRJIDSHUDNVGYZNX");
  ];
  data "AAAAAAOK" [
    Quad (Lit 7911313428326860786L);
    Quad (Lit 4446858065629084842L);
    Quad (Lit 6470345343666581360L);
    Quad (Lit 8180454434486364441L);
    Quad (Lit 3182409427416726185L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAOD"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAOE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAOF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAOG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAOH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAOI"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAOJ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAOK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAOL"); ~%Rax];
];
  data "AAAAAAOL" [
    Quad (Lit 8991740391411456187L);
    Asciz ("CIJALUDKOZS");
    Asciz ("EKRFQYGWPNK");
    Asciz ("LIOFOZQLPUUYGEW");
  ];
]
let test_48_data = [Byte '\x4e';Byte '\x0a';Byte '\x17';Byte '\x66';Byte '\x7e';Byte '\x0e';Byte '\x58';Byte '\x17';Byte '\xbc';Byte '\x4f';Byte '\xd7';Byte '\x0b';Byte '\x42';Byte '\xb4';Byte '\x70';Byte '\x3c';Byte '\x82';Byte '\xdb';Byte '\x06';Byte '\x80';Byte '\xa8';Byte '\x55';Byte '\x68';Byte '\x5b';Byte '\x58';Byte '\x41';Byte '\x45';Byte '\x51';Byte '\x53';Byte '\x52';Byte '\x4c';Byte '\x56';Byte '\x47';Byte '\x54';Byte '\x43';Byte '\x4e';Byte '\x47';Byte '\x4a';Byte '\x4d';Byte '\x43';Byte '\x51';Byte '\x4e';Byte '\x4d';Byte '\x00';Byte '\xd6';Byte '\x0a';Byte '\xa3';Byte '\xf2';Byte '\xd8';Byte '\x3f';Byte '\x7f';Byte '\x79';Byte '\x44';Byte '\xed';Byte '\xab';Byte '\x6a';Byte '\xe6';Byte '\xed';Byte '\xb3';Byte '\x69';Byte '\x2a';Byte '\xd2';Byte '\x44';Byte '\x07';Byte '\x50';Byte '\x16';Byte '\xfc';Byte '\x53';Byte '\x36';Byte '\x9c';Byte '\x74';Byte '\xa1';Byte '\xb7';Byte '\x46';Byte '\x5f';Byte '\x73';Byte '\x5a';Byte '\x59';Byte '\x53';Byte '\x52';Byte '\x5a';Byte '\x4f';Byte '\x4f';Byte '\x42';Byte '\x58';Byte '\x45';Byte '\x00';Byte '\x7b';Byte '\x95';Byte '\xb0';Byte '\x6c';Byte '\xcc';Byte '\xba';Byte '\xd4';Byte '\x2c';Byte '\x71';Byte '\xc0';Byte '\x80';Byte '\x66';Byte '\x98';Byte '\xbc';Byte '\x5a';Byte '\x15';Byte '\x59';Byte '\x4a';Byte '\x58';Byte '\x4a';Byte '\x5a';Byte '\x55';Byte '\x42';Byte '\x41';Byte '\x42';Byte '\x50';Byte '\x4c';Byte '\x5a';Byte '\x00';Byte '\x43';Byte '\x4d';Byte '\x53';Byte '\x5a';Byte '\x51';Byte '\x47';Byte '\x59';Byte '\x41';Byte '\x4e';Byte '\x54';Byte '\x59';Byte '\x4e';Byte '\x4b';Byte '\x48';Byte '\x46';Byte '\x57';Byte '\x50';Byte '\x58';Byte '\x00';Byte '\x8c';Byte '\xb8';Byte '\x90';Byte '\x76';Byte '\x49';Byte '\xed';Byte '\xa9';Byte '\x59';Byte '\xc7';Byte '\x6e';Byte '\x4f';Byte '\x66';Byte '\xd0';Byte '\xf2';Byte '\xf6';Byte '\x1f';Byte '\x97';Byte '\x94';Byte '\xf0';Byte '\xc0';Byte '\x64';Byte '\x46';Byte '\xee';Byte '\x67';Byte '\x46';Byte '\x51';Byte '\x57';Byte '\x42';Byte '\x59';Byte '\x52';Byte '\x52';Byte '\x42';Byte '\x4a';Byte '\x4b';Byte '\x48';Byte '\x55';Byte '\x52';Byte '\x52';Byte '\x58';Byte '\x00';Byte '\xbb';Byte '\x7a';Byte '\xc2';Byte '\x25';Byte '\xef';Byte '\x64';Byte '\x6e';Byte '\x4d';Byte '\x9e';Byte '\xcc';Byte '\x72';Byte '\x34';Byte '\x67';Byte '\x8c';Byte '\x31';Byte '\x70';Byte '\x59';Byte '\x4d';Byte '\x44';Byte '\x55';Byte '\x50';Byte '\x45';Byte '\x42';Byte '\x48';Byte '\x44';Byte '\x52';Byte '\x41';Byte '\x47';Byte '\x45';Byte '\x00';Byte '\x45';Byte '\x4c';Byte '\x59';Byte '\x42';Byte '\x5a';Byte '\x4c';Byte '\x4b';Byte '\x41';Byte '\x43';Byte '\x4b';Byte '\x4d';Byte '\x59';Byte '\x51';Byte '\x4a';Byte '\x00';Byte '\x7d';Byte '\xfb';Byte '\xdf';Byte '\xd1';Byte '\xe4';Byte '\xa6';Byte '\xb5';Byte '\x1d';Byte '\x58';Byte '\x4c';Byte '\x53';Byte '\x48';Byte '\x44';Byte '\x5a';Byte '\x4c';Byte '\x56';Byte '\x46';Byte '\x4b';Byte '\x42';Byte '\x4b';Byte '\x00';Byte '\x44';Byte '\x56';Byte '\x49';Byte '\x51';Byte '\x53';Byte '\x52';Byte '\x5a';Byte '\x54';Byte '\x49';Byte '\x54';Byte '\x50';Byte '\x00';Byte '\x7d';Byte '\x5f';Byte '\x8a';Byte '\x24';Byte '\x66';Byte '\x5b';Byte '\xe3';Byte '\x71';Byte '\x0e';Byte '\x44';Byte '\x28';Byte '\x35';Byte '\xdb';Byte '\x39';Byte '\x56';Byte '\x07';Byte '\x4f';Byte '\x47';Byte '\x53';Byte '\x4e';Byte '\x51';Byte '\x52';Byte '\x4a';Byte '\x49';Byte '\x44';Byte '\x53';Byte '\x48';Byte '\x55';Byte '\x44';Byte '\x4e';Byte '\x56';Byte '\x47';Byte '\x59';Byte '\x5a';Byte '\x4e';Byte '\x58';Byte '\x00';Byte '\xf2';Byte '\x47';Byte '\x33';Byte '\xaa';Byte '\xa5';Byte '\xa1';Byte '\xca';Byte '\x6d';Byte '\xaa';Byte '\xfc';Byte '\x66';Byte '\xa8';Byte '\xd9';Byte '\x69';Byte '\xb6';Byte '\x3d';Byte '\x70';Byte '\x6f';Byte '\x59';Byte '\x07';Byte '\xcf';Byte '\x48';Byte '\xcb';Byte '\x59';Byte '\x19';Byte '\x29';Byte '\xd4';Byte '\x5c';Byte '\xf7';Byte '\xcf';Byte '\x86';Byte '\x71';Byte '\xa9';Byte '\x3a';Byte '\x07';Byte '\x5b';Byte '\x83';Byte '\x30';Byte '\x2a';Byte '\x2c';Byte '\xbb';Byte '\x98';Byte '\x9c';Byte '\xe6';Byte '\x3e';Byte '\x14';Byte '\xc9';Byte '\x7c';Byte '\x43';Byte '\x49';Byte '\x4a';Byte '\x41';Byte '\x4c';Byte '\x55';Byte '\x44';Byte '\x4b';Byte '\x4f';Byte '\x5a';Byte '\x53';Byte '\x00';Byte '\x45';Byte '\x4b';Byte '\x52';Byte '\x46';Byte '\x51';Byte '\x59';Byte '\x47';Byte '\x57';Byte '\x50';Byte '\x4e';Byte '\x4b';Byte '\x00';Byte '\x4c';Byte '\x49';Byte '\x4f';Byte '\x46';Byte '\x4f';Byte '\x5a';Byte '\x51';Byte '\x4c';Byte '\x50';Byte '\x55';Byte '\x55';Byte '\x59';Byte '\x47';Byte '\x45';Byte '\x57';Byte '\x00';]
let test_48_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400048L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40007cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400084L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40008cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000afL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f7L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40012cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40016aL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400192L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_49 = [
  data "AAAAAAOM" [
    Quad (Lit 8871423348910170888L);
    Quad (Lit 7319646442850030223L);
    Asciz ("DXKMPQSXOHAXLTT");
    Asciz ("QKSRWLMSKYVQPV");
    Quad (Lit 4431447979108011569L);
    Asciz ("ZSNLLGBDMEUBGFXMFZA");
  ];
  data "AAAAAAON" [
    Quad (Lit 7479952628868947111L);
    Quad (Lit 6289128793408878161L);
    Asciz ("IPWCOHGQKSDYEGZLIO");
  ];
  data "AAAAAAOO" [
    Quad (Lit 4436485270292494945L);
    Quad (Lit 1484929910908695695L);
    Asciz ("GVOPAGYFCBJDHITGVFOR");
    Quad (Lit 9136613163404415052L);
    Quad (Lit 1159324042566765152L);
    Asciz ("JKUNAKAHDXOZDFQ");
  ];
  data "AAAAAAOP" [
    Quad (Lit 6500411117736220835L);
    Quad (Lit 8430959231299880747L);
    Asciz ("ABWLHBJSLDRS");
    Quad (Lit 5987366747736946525L);
    Asciz ("ULZTYQRENTCTZTH");
  ];
  data "AAAAAAOQ" [
    Quad (Lit 4711679668000436636L);
    Quad (Lit 983743682210957878L);
    Quad (Lit 2401842555389427476L);
    Quad (Lit 3923706460518638453L);
  ];
  data "AAAAAAOR" [
    Quad (Lit 1913813558786792391L);
    Quad (Lit 7179150505597556994L);
  ];
  data "AAAAAAOS" [
    Asciz ("JZATYCJWQZCTH");
    Quad (Lit 5185852492860824995L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAOM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAON"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAOO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAOP"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAOQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAOR"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAOS"); ~%Rax];
];
]
let test_49_data = [Byte '\x08';Byte '\xa3';Byte '\xe5';Byte '\x73';Byte '\x88';Byte '\xa0';Byte '\x1d';Byte '\x7b';Byte '\x8f';Byte '\x12';Byte '\x87';Byte '\x9b';Byte '\xa8';Byte '\x9b';Byte '\x94';Byte '\x65';Byte '\x44';Byte '\x58';Byte '\x4b';Byte '\x4d';Byte '\x50';Byte '\x51';Byte '\x53';Byte '\x58';Byte '\x4f';Byte '\x48';Byte '\x41';Byte '\x58';Byte '\x4c';Byte '\x54';Byte '\x54';Byte '\x00';Byte '\x51';Byte '\x4b';Byte '\x53';Byte '\x52';Byte '\x57';Byte '\x4c';Byte '\x4d';Byte '\x53';Byte '\x4b';Byte '\x59';Byte '\x56';Byte '\x51';Byte '\x50';Byte '\x56';Byte '\x00';Byte '\x31';Byte '\x0e';Byte '\x5b';Byte '\x4b';Byte '\x75';Byte '\xaa';Byte '\x7f';Byte '\x3d';Byte '\x5a';Byte '\x53';Byte '\x4e';Byte '\x4c';Byte '\x4c';Byte '\x47';Byte '\x42';Byte '\x44';Byte '\x4d';Byte '\x45';Byte '\x55';Byte '\x42';Byte '\x47';Byte '\x46';Byte '\x58';Byte '\x4d';Byte '\x46';Byte '\x5a';Byte '\x41';Byte '\x00';Byte '\xa7';Byte '\x9c';Byte '\x7b';Byte '\x14';Byte '\x49';Byte '\x21';Byte '\xce';Byte '\x67';Byte '\x51';Byte '\x36';Byte '\xd1';Byte '\xfd';Byte '\x50';Byte '\x79';Byte '\x47';Byte '\x57';Byte '\x49';Byte '\x50';Byte '\x57';Byte '\x43';Byte '\x4f';Byte '\x48';Byte '\x47';Byte '\x51';Byte '\x4b';Byte '\x53';Byte '\x44';Byte '\x59';Byte '\x45';Byte '\x47';Byte '\x5a';Byte '\x4c';Byte '\x49';Byte '\x4f';Byte '\x00';Byte '\x61';Byte '\x7a';Byte '\x09';Byte '\x0b';Byte '\xd9';Byte '\x8f';Byte '\x91';Byte '\x3d';Byte '\x8f';Byte '\xb4';Byte '\x10';Byte '\xf0';Byte '\xe2';Byte '\x87';Byte '\x9b';Byte '\x14';Byte '\x47';Byte '\x56';Byte '\x4f';Byte '\x50';Byte '\x41';Byte '\x47';Byte '\x59';Byte '\x46';Byte '\x43';Byte '\x42';Byte '\x4a';Byte '\x44';Byte '\x48';Byte '\x49';Byte '\x54';Byte '\x47';Byte '\x56';Byte '\x46';Byte '\x4f';Byte '\x52';Byte '\x00';Byte '\x4c';Byte '\xd0';Byte '\xe0';Byte '\xa6';Byte '\x43';Byte '\xc5';Byte '\xcb';Byte '\x7e';Byte '\x60';Byte '\x0a';Byte '\xc3';Byte '\x08';Byte '\x13';Byte '\xbf';Byte '\x16';Byte '\x10';Byte '\x4a';Byte '\x4b';Byte '\x55';Byte '\x4e';Byte '\x41';Byte '\x4b';Byte '\x41';Byte '\x48';Byte '\x44';Byte '\x58';Byte '\x4f';Byte '\x5a';Byte '\x44';Byte '\x46';Byte '\x51';Byte '\x00';Byte '\xa3';Byte '\xd8';Byte '\xaa';Byte '\x8e';Byte '\x78';Byte '\x19';Byte '\x36';Byte '\x5a';Byte '\x2b';Byte '\x07';Byte '\x6e';Byte '\x71';Byte '\xc0';Byte '\xc8';Byte '\x00';Byte '\x75';Byte '\x41';Byte '\x42';Byte '\x57';Byte '\x4c';Byte '\x48';Byte '\x42';Byte '\x4a';Byte '\x53';Byte '\x4c';Byte '\x44';Byte '\x52';Byte '\x53';Byte '\x00';Byte '\x5d';Byte '\xb7';Byte '\xd8';Byte '\xaa';Byte '\x55';Byte '\x66';Byte '\x17';Byte '\x53';Byte '\x55';Byte '\x4c';Byte '\x5a';Byte '\x54';Byte '\x59';Byte '\x51';Byte '\x52';Byte '\x45';Byte '\x4e';Byte '\x54';Byte '\x43';Byte '\x54';Byte '\x5a';Byte '\x54';Byte '\x48';Byte '\x00';Byte '\x9c';Byte '\xb1';Byte '\x98';Byte '\xca';Byte '\xb1';Byte '\x3f';Byte '\x63';Byte '\x41';Byte '\x36';Byte '\x0a';Byte '\x38';Byte '\xb8';Byte '\xaa';Byte '\xf5';Byte '\xa6';Byte '\x0d';Byte '\x14';Byte '\x3f';Byte '\x67';Byte '\x20';Byte '\x14';Byte '\x0f';Byte '\x55';Byte '\x21';Byte '\x75';Byte '\x63';Byte '\x1e';Byte '\xb6';Byte '\x3c';Byte '\xce';Byte '\x73';Byte '\x36';Byte '\xc7';Byte '\x1b';Byte '\xd0';Byte '\xb9';Byte '\x4a';Byte '\x3b';Byte '\x8f';Byte '\x1a';Byte '\x02';Byte '\x59';Byte '\x35';Byte '\x1b';Byte '\x59';Byte '\x77';Byte '\xa1';Byte '\x63';Byte '\x4a';Byte '\x5a';Byte '\x41';Byte '\x54';Byte '\x59';Byte '\x43';Byte '\x4a';Byte '\x57';Byte '\x51';Byte '\x5a';Byte '\x43';Byte '\x54';Byte '\x48';Byte '\x00';Byte '\xa3';Byte '\x1d';Byte '\x8b';Byte '\xce';Byte '\x5d';Byte '\xd9';Byte '\xf7';Byte '\x47';]
let test_49_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400038L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400083L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000a6L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000ebL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400120L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400140L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400150L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_50 = [
  data "AAAAAAOT" [
    Quad (Lit 5903658251435513689L);
    Asciz ("IZXGRYPKBGYPOLZIGYLB");
    Quad (Lit 6375014567930970338L);
    Quad (Lit 6496648585662621120L);
    Quad (Lit 2872634733831732565L);
  ];
  data "AAAAAAOU" [
    Quad (Lit 8927069104695458021L);
    Asciz ("CSEEAMIZTDBSBTGYQQ");
    Asciz ("RAJYUPVNPSTFAVIQDEHS");
    Asciz ("OTLGMEYNSRSCCYS");
    Asciz ("HLCNDHDXICWPWWDZBG");
    Asciz ("MHLGZQOQWQRIB");
  ];
  data "AAAAAAOV" [
    Quad (Lit 5885639828409277102L);
    Asciz ("TTIUEBXBYEVJVVEFIRB");
    Asciz ("EZUFPUUDEPA");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAOT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAOU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAOV"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAOW"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAOX"); ~%Rax];
];
  data "AAAAAAOW" [
    Quad (Lit 3194366524721103000L);
    Asciz ("LIBWMWEFCBRS");
    Quad (Lit 4085248113439418798L);
    Quad (Lit 5698938565138360738L);
    Asciz ("SAOFPBBLQDDHZPNJKMF");
    Asciz ("ZNILBWRLHYKZPFKVKF");
  ];
  data "AAAAAAOX" [
    Asciz ("UNWMRMNARKMSLVLKGWFE");
    Asciz ("YKWRPLBHLIRW");
  ];
]
let test_50_data = [Byte '\x59';Byte '\x17';Byte '\x1e';Byte '\x98';Byte '\xe6';Byte '\x01';Byte '\xee';Byte '\x51';Byte '\x49';Byte '\x5a';Byte '\x58';Byte '\x47';Byte '\x52';Byte '\x59';Byte '\x50';Byte '\x4b';Byte '\x42';Byte '\x47';Byte '\x59';Byte '\x50';Byte '\x4f';Byte '\x4c';Byte '\x5a';Byte '\x49';Byte '\x47';Byte '\x59';Byte '\x4c';Byte '\x42';Byte '\x00';Byte '\xe2';Byte '\x40';Byte '\x77';Byte '\x27';Byte '\xf9';Byte '\x99';Byte '\x78';Byte '\x58';Byte '\xc0';Byte '\xe5';Byte '\xf6';Byte '\xca';Byte '\x77';Byte '\xbb';Byte '\x28';Byte '\x5a';Byte '\x55';Byte '\x3d';Byte '\x7d';Byte '\x0f';Byte '\x12';Byte '\xa6';Byte '\xdd';Byte '\x27';Byte '\xe5';Byte '\xb8';Byte '\xbc';Byte '\x96';Byte '\x0d';Byte '\x52';Byte '\xe3';Byte '\x7b';Byte '\x43';Byte '\x53';Byte '\x45';Byte '\x45';Byte '\x41';Byte '\x4d';Byte '\x49';Byte '\x5a';Byte '\x54';Byte '\x44';Byte '\x42';Byte '\x53';Byte '\x42';Byte '\x54';Byte '\x47';Byte '\x59';Byte '\x51';Byte '\x51';Byte '\x00';Byte '\x52';Byte '\x41';Byte '\x4a';Byte '\x59';Byte '\x55';Byte '\x50';Byte '\x56';Byte '\x4e';Byte '\x50';Byte '\x53';Byte '\x54';Byte '\x46';Byte '\x41';Byte '\x56';Byte '\x49';Byte '\x51';Byte '\x44';Byte '\x45';Byte '\x48';Byte '\x53';Byte '\x00';Byte '\x4f';Byte '\x54';Byte '\x4c';Byte '\x47';Byte '\x4d';Byte '\x45';Byte '\x59';Byte '\x4e';Byte '\x53';Byte '\x52';Byte '\x53';Byte '\x43';Byte '\x43';Byte '\x59';Byte '\x53';Byte '\x00';Byte '\x48';Byte '\x4c';Byte '\x43';Byte '\x4e';Byte '\x44';Byte '\x48';Byte '\x44';Byte '\x58';Byte '\x49';Byte '\x43';Byte '\x57';Byte '\x50';Byte '\x57';Byte '\x57';Byte '\x44';Byte '\x5a';Byte '\x42';Byte '\x47';Byte '\x00';Byte '\x4d';Byte '\x48';Byte '\x4c';Byte '\x47';Byte '\x5a';Byte '\x51';Byte '\x4f';Byte '\x51';Byte '\x57';Byte '\x51';Byte '\x52';Byte '\x49';Byte '\x42';Byte '\x00';Byte '\xae';Byte '\xda';Byte '\x39';Byte '\x90';Byte '\x3d';Byte '\xfe';Byte '\xad';Byte '\x51';Byte '\x54';Byte '\x54';Byte '\x49';Byte '\x55';Byte '\x45';Byte '\x42';Byte '\x58';Byte '\x42';Byte '\x59';Byte '\x45';Byte '\x56';Byte '\x4a';Byte '\x56';Byte '\x56';Byte '\x45';Byte '\x46';Byte '\x49';Byte '\x52';Byte '\x42';Byte '\x00';Byte '\x45';Byte '\x5a';Byte '\x55';Byte '\x46';Byte '\x50';Byte '\x55';Byte '\x55';Byte '\x44';Byte '\x45';Byte '\x50';Byte '\x41';Byte '\x00';Byte '\x98';Byte '\x80';Byte '\x66';Byte '\x04';Byte '\x6e';Byte '\xab';Byte '\x54';Byte '\x2c';Byte '\x4c';Byte '\x49';Byte '\x42';Byte '\x57';Byte '\x4d';Byte '\x57';Byte '\x45';Byte '\x46';Byte '\x43';Byte '\x42';Byte '\x52';Byte '\x53';Byte '\x00';Byte '\xae';Byte '\x29';Byte '\xe4';Byte '\xbc';Byte '\x83';Byte '\xb7';Byte '\xb1';Byte '\x38';Byte '\xa2';Byte '\xa9';Byte '\xd8';Byte '\x43';Byte '\x6e';Byte '\xb2';Byte '\x16';Byte '\x4f';Byte '\x53';Byte '\x41';Byte '\x4f';Byte '\x46';Byte '\x50';Byte '\x42';Byte '\x42';Byte '\x4c';Byte '\x51';Byte '\x44';Byte '\x44';Byte '\x48';Byte '\x5a';Byte '\x50';Byte '\x4e';Byte '\x4a';Byte '\x4b';Byte '\x4d';Byte '\x46';Byte '\x00';Byte '\x5a';Byte '\x4e';Byte '\x49';Byte '\x4c';Byte '\x42';Byte '\x57';Byte '\x52';Byte '\x4c';Byte '\x48';Byte '\x59';Byte '\x4b';Byte '\x5a';Byte '\x50';Byte '\x46';Byte '\x4b';Byte '\x56';Byte '\x4b';Byte '\x46';Byte '\x00';Byte '\x55';Byte '\x4e';Byte '\x57';Byte '\x4d';Byte '\x52';Byte '\x4d';Byte '\x4e';Byte '\x41';Byte '\x52';Byte '\x4b';Byte '\x4d';Byte '\x53';Byte '\x4c';Byte '\x56';Byte '\x4c';Byte '\x4b';Byte '\x47';Byte '\x57';Byte '\x46';Byte '\x45';Byte '\x00';Byte '\x59';Byte '\x4b';Byte '\x57';Byte '\x52';Byte '\x50';Byte '\x4c';Byte '\x42';Byte '\x48';Byte '\x4c';Byte '\x49';Byte '\x52';Byte '\x57';Byte '\x00';]
let test_50_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400028L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40005dL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000beL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000e6L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400132L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_51 = [
  data "AAAAAAOY" [
    Asciz ("FZKDBLVKLTMFNGXUG");
    Quad (Lit 2115016152050457225L);
    Quad (Lit 2923662126818908805L);
    Quad (Lit 7000986605182716163L);
    Quad (Lit 885972267232349335L);
    Asciz ("QKGRMLKDRCFCAV");
  ];
  data "AAAAAAOZ" [
    Quad (Lit 5341979602179375223L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAOY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAOZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAPA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAPB"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAPC"); ~%Rax];
];
  data "AAAAAAPA" [
    Asciz ("CPJJKWWYKXZOICJMXRC");
    Quad (Lit 6455049537555172312L);
    Asciz ("AFJSUBLKWXO");
  ];
  data "AAAAAAPB" [
    Asciz ("YCNTQZJNQCCEFVCOJMD");
    Quad (Lit 4926414554253270238L);
    Quad (Lit 1575245086751777141L);
    Asciz ("KTJPZZOIPS");
    Asciz ("QTBMEXMPIBQGTYITRKA");
  ];
  data "AAAAAAPC" [
    Quad (Lit 2588194670868735347L);
  ];
]
let test_51_data = [Byte '\x46';Byte '\x5a';Byte '\x4b';Byte '\x44';Byte '\x42';Byte '\x4c';Byte '\x56';Byte '\x4b';Byte '\x4c';Byte '\x54';Byte '\x4d';Byte '\x46';Byte '\x4e';Byte '\x47';Byte '\x58';Byte '\x55';Byte '\x47';Byte '\x00';Byte '\x89';Byte '\x5a';Byte '\x2e';Byte '\x05';Byte '\xfc';Byte '\x0b';Byte '\x5a';Byte '\x1d';Byte '\x85';Byte '\xda';Byte '\x4d';Byte '\xd0';Byte '\x36';Byte '\xef';Byte '\x92';Byte '\x28';Byte '\x03';Byte '\x09';Byte '\x2f';Byte '\x7f';Byte '\x39';Byte '\x80';Byte '\x28';Byte '\x61';Byte '\x97';Byte '\x4c';Byte '\x3b';Byte '\x3d';Byte '\x15';Byte '\x9b';Byte '\x4b';Byte '\x0c';Byte '\x51';Byte '\x4b';Byte '\x47';Byte '\x52';Byte '\x4d';Byte '\x4c';Byte '\x4b';Byte '\x44';Byte '\x52';Byte '\x43';Byte '\x46';Byte '\x43';Byte '\x41';Byte '\x56';Byte '\x00';Byte '\x77';Byte '\xc0';Byte '\x48';Byte '\x29';Byte '\x25';Byte '\x86';Byte '\x22';Byte '\x4a';Byte '\x43';Byte '\x50';Byte '\x4a';Byte '\x4a';Byte '\x4b';Byte '\x57';Byte '\x57';Byte '\x59';Byte '\x4b';Byte '\x58';Byte '\x5a';Byte '\x4f';Byte '\x49';Byte '\x43';Byte '\x4a';Byte '\x4d';Byte '\x58';Byte '\x52';Byte '\x43';Byte '\x00';Byte '\xd8';Byte '\x8b';Byte '\x86';Byte '\xa5';Byte '\x5a';Byte '\xf1';Byte '\x94';Byte '\x59';Byte '\x41';Byte '\x46';Byte '\x4a';Byte '\x53';Byte '\x55';Byte '\x42';Byte '\x4c';Byte '\x4b';Byte '\x57';Byte '\x58';Byte '\x4f';Byte '\x00';Byte '\x59';Byte '\x43';Byte '\x4e';Byte '\x54';Byte '\x51';Byte '\x5a';Byte '\x4a';Byte '\x4e';Byte '\x51';Byte '\x43';Byte '\x43';Byte '\x45';Byte '\x46';Byte '\x56';Byte '\x43';Byte '\x4f';Byte '\x4a';Byte '\x4d';Byte '\x44';Byte '\x00';Byte '\xde';Byte '\x9c';Byte '\x94';Byte '\x92';Byte '\xef';Byte '\x23';Byte '\x5e';Byte '\x44';Byte '\x75';Byte '\xe1';Byte '\x04';Byte '\x76';Byte '\x0f';Byte '\x65';Byte '\xdc';Byte '\x15';Byte '\x4b';Byte '\x54';Byte '\x4a';Byte '\x50';Byte '\x5a';Byte '\x5a';Byte '\x4f';Byte '\x49';Byte '\x50';Byte '\x53';Byte '\x00';Byte '\x51';Byte '\x54';Byte '\x42';Byte '\x4d';Byte '\x45';Byte '\x58';Byte '\x4d';Byte '\x50';Byte '\x49';Byte '\x42';Byte '\x51';Byte '\x47';Byte '\x54';Byte '\x59';Byte '\x49';Byte '\x54';Byte '\x52';Byte '\x4b';Byte '\x41';Byte '\x00';Byte '\x73';Byte '\xa5';Byte '\xb0';Byte '\x1e';Byte '\x57';Byte '\x1d';Byte '\xeb';Byte '\x23';]
let test_51_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400028L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400069L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400071L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400099L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000dcL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_52 = [
  data "AAAAAAPD" [
    Asciz ("CBBBVUQVVWAZOCISTS");
    Quad (Lit 7118505380787032084L);
    Asciz ("XGXGHJODGNHAHUL");
    Asciz ("NJGGZURIEG");
  ];
  data "AAAAAAPE" [
    Quad (Lit 6383426279567717950L);
    Asciz ("XIZRAEXFAOUU");
    Quad (Lit 6243254112266761528L);
    Asciz ("WCABQITCRNCDPQQASWW");
  ];
  data "AAAAAAPF" [
    Asciz ("AQQVOJHXBMZN");
  ];
  data "AAAAAAPG" [
    Quad (Lit 9047253381397814530L);
    Asciz ("GSJWHJUPWSYZ");
    Asciz ("WDNTPAUORKREHLPCXSY");
  ];
  data "AAAAAAPH" [
    Quad (Lit 8731161925555604082L);
    Asciz ("JCCACGVHMVNWP");
    Asciz ("WVSNPLVAEAMPF");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAPD"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAPE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAPF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAPG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAPH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAPI"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAPJ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAPK"); ~%Rax];
];
  data "AAAAAAPI" [
    Quad (Lit 4908167694905970119L);
    Asciz ("BWXSKSJUOIUQU");
    Quad (Lit 881267776887440878L);
    Asciz ("TYYRQXNDLNDVVLUA");
    Asciz ("XMDZOGQJDZKYUMP");
  ];
  data "AAAAAAPJ" [
    Asciz ("OJBPHZFOUAZVCYGFI");
    Quad (Lit 6509609926918637186L);
    Asciz ("PJNEGLKXKQHFNX");
    Asciz ("ZGTIJDEUKOCAWPAZ");
    Asciz ("AAXYQLKFQLNFF");
    Asciz ("KEJGLVTBIWB");
  ];
  data "AAAAAAPK" [
    Asciz ("UCBQSHOQHBLFH");
    Quad (Lit 3698222498941200375L);
  ];
]
let test_52_data = [Byte '\x43';Byte '\x42';Byte '\x42';Byte '\x42';Byte '\x56';Byte '\x55';Byte '\x51';Byte '\x56';Byte '\x56';Byte '\x57';Byte '\x41';Byte '\x5a';Byte '\x4f';Byte '\x43';Byte '\x49';Byte '\x53';Byte '\x54';Byte '\x53';Byte '\x00';Byte '\x14';Byte '\x90';Byte '\x84';Byte '\xa9';Byte '\xed';Byte '\x02';Byte '\xca';Byte '\x62';Byte '\x58';Byte '\x47';Byte '\x58';Byte '\x47';Byte '\x48';Byte '\x4a';Byte '\x4f';Byte '\x44';Byte '\x47';Byte '\x4e';Byte '\x48';Byte '\x41';Byte '\x48';Byte '\x55';Byte '\x4c';Byte '\x00';Byte '\x4e';Byte '\x4a';Byte '\x47';Byte '\x47';Byte '\x5a';Byte '\x55';Byte '\x52';Byte '\x49';Byte '\x45';Byte '\x47';Byte '\x00';Byte '\x3e';Byte '\xf6';Byte '\x86';Byte '\x63';Byte '\x61';Byte '\x7c';Byte '\x96';Byte '\x58';Byte '\x58';Byte '\x49';Byte '\x5a';Byte '\x52';Byte '\x41';Byte '\x45';Byte '\x58';Byte '\x46';Byte '\x41';Byte '\x4f';Byte '\x55';Byte '\x55';Byte '\x00';Byte '\x38';Byte '\x35';Byte '\x28';Byte '\x74';Byte '\x89';Byte '\x7e';Byte '\xa4';Byte '\x56';Byte '\x57';Byte '\x43';Byte '\x41';Byte '\x42';Byte '\x51';Byte '\x49';Byte '\x54';Byte '\x43';Byte '\x52';Byte '\x4e';Byte '\x43';Byte '\x44';Byte '\x50';Byte '\x51';Byte '\x51';Byte '\x41';Byte '\x53';Byte '\x57';Byte '\x57';Byte '\x00';Byte '\x41';Byte '\x51';Byte '\x51';Byte '\x56';Byte '\x4f';Byte '\x4a';Byte '\x48';Byte '\x58';Byte '\x42';Byte '\x4d';Byte '\x5a';Byte '\x4e';Byte '\x00';Byte '\x02';Byte '\x1d';Byte '\x2b';Byte '\x17';Byte '\x04';Byte '\x4d';Byte '\x8e';Byte '\x7d';Byte '\x47';Byte '\x53';Byte '\x4a';Byte '\x57';Byte '\x48';Byte '\x4a';Byte '\x55';Byte '\x50';Byte '\x57';Byte '\x53';Byte '\x59';Byte '\x5a';Byte '\x00';Byte '\x57';Byte '\x44';Byte '\x4e';Byte '\x54';Byte '\x50';Byte '\x41';Byte '\x55';Byte '\x4f';Byte '\x52';Byte '\x4b';Byte '\x52';Byte '\x45';Byte '\x48';Byte '\x4c';Byte '\x50';Byte '\x43';Byte '\x58';Byte '\x53';Byte '\x59';Byte '\x00';Byte '\x72';Byte '\x4a';Byte '\x28';Byte '\xf9';Byte '\x82';Byte '\x51';Byte '\x2b';Byte '\x79';Byte '\x4a';Byte '\x43';Byte '\x43';Byte '\x41';Byte '\x43';Byte '\x47';Byte '\x56';Byte '\x48';Byte '\x4d';Byte '\x56';Byte '\x4e';Byte '\x57';Byte '\x50';Byte '\x00';Byte '\x57';Byte '\x56';Byte '\x53';Byte '\x4e';Byte '\x50';Byte '\x4c';Byte '\x56';Byte '\x41';Byte '\x45';Byte '\x41';Byte '\x4d';Byte '\x50';Byte '\x46';Byte '\x00';Byte '\xc7';Byte '\x0d';Byte '\xeb';Byte '\x90';Byte '\x83';Byte '\x50';Byte '\x1d';Byte '\x44';Byte '\x42';Byte '\x57';Byte '\x58';Byte '\x53';Byte '\x4b';Byte '\x53';Byte '\x4a';Byte '\x55';Byte '\x4f';Byte '\x49';Byte '\x55';Byte '\x51';Byte '\x55';Byte '\x00';Byte '\xee';Byte '\xc5';Byte '\x5f';Byte '\xb9';Byte '\x5f';Byte '\xe4';Byte '\x3a';Byte '\x0c';Byte '\x54';Byte '\x59';Byte '\x59';Byte '\x52';Byte '\x51';Byte '\x58';Byte '\x4e';Byte '\x44';Byte '\x4c';Byte '\x4e';Byte '\x44';Byte '\x56';Byte '\x56';Byte '\x4c';Byte '\x55';Byte '\x41';Byte '\x00';Byte '\x58';Byte '\x4d';Byte '\x44';Byte '\x5a';Byte '\x4f';Byte '\x47';Byte '\x51';Byte '\x4a';Byte '\x44';Byte '\x5a';Byte '\x4b';Byte '\x59';Byte '\x55';Byte '\x4d';Byte '\x50';Byte '\x00';Byte '\x4f';Byte '\x4a';Byte '\x42';Byte '\x50';Byte '\x48';Byte '\x5a';Byte '\x46';Byte '\x4f';Byte '\x55';Byte '\x41';Byte '\x5a';Byte '\x56';Byte '\x43';Byte '\x59';Byte '\x47';Byte '\x46';Byte '\x49';Byte '\x00';Byte '\x82';Byte '\x86';Byte '\x57';Byte '\x38';Byte '\xbd';Byte '\xc7';Byte '\x56';Byte '\x5a';Byte '\x50';Byte '\x4a';Byte '\x4e';Byte '\x45';Byte '\x47';Byte '\x4c';Byte '\x4b';Byte '\x58';Byte '\x4b';Byte '\x51';Byte '\x48';Byte '\x46';Byte '\x4e';Byte '\x58';Byte '\x00';Byte '\x5a';Byte '\x47';Byte '\x54';Byte '\x49';Byte '\x4a';Byte '\x44';Byte '\x45';Byte '\x55';Byte '\x4b';Byte '\x4f';Byte '\x43';Byte '\x41';Byte '\x57';Byte '\x50';Byte '\x41';Byte '\x5a';Byte '\x00';Byte '\x41';Byte '\x41';Byte '\x58';Byte '\x59';Byte '\x51';Byte '\x4c';Byte '\x4b';Byte '\x46';Byte '\x51';Byte '\x4c';Byte '\x4e';Byte '\x46';Byte '\x46';Byte '\x00';Byte '\x4b';Byte '\x45';Byte '\x4a';Byte '\x47';Byte '\x4c';Byte '\x56';Byte '\x54';Byte '\x42';Byte '\x49';Byte '\x57';Byte '\x42';Byte '\x00';Byte '\x55';Byte '\x43';Byte '\x42';Byte '\x51';Byte '\x53';Byte '\x48';Byte '\x4f';Byte '\x51';Byte '\x48';Byte '\x42';Byte '\x4c';Byte '\x46';Byte '\x48';Byte '\x00';Byte '\xf7';Byte '\x67';Byte '\xbf';Byte '\xcd';Byte '\xc4';Byte '\xb9';Byte '\x52';Byte '\x33';]
let test_52_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400040L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400076L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000a7L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000b4L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000ddL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400101L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400140L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400194L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_53 = [
  data "AAAAAAPL" [
    Asciz ("GXOVZHCUEPIDBDYPCE");
  ];
  data "AAAAAAPM" [
    Quad (Lit 6143094476012034882L);
    Asciz ("YFNBOBKBBTIIPTV");
    Quad (Lit 502968394791633518L);
  ];
  data "AAAAAAPN" [
    Quad (Lit 5589754678288875115L);
    Quad (Lit 3358807602538363369L);
  ];
  data "AAAAAAPO" [
    Quad (Lit 9209009271347511446L);
  ];
  data "AAAAAAPP" [
    Quad (Lit 7325225854621032328L);
    Quad (Lit 7656737533605264421L);
    Quad (Lit 4399500373324916452L);
    Quad (Lit 1497619754092419436L);
    Quad (Lit 8136651186157390938L);
  ];
  data "AAAAAAPQ" [
    Asciz ("YLXKYITQLTRKDFLGJPU");
  ];
  data "AAAAAAPR" [
    Asciz ("MXGHPBBTDCUBASMHVJE");
    Quad (Lit 5865286449797160009L);
    Asciz ("VFLRCXFFYODUZVE");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAPL"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAPM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAPN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAPO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAPP"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAPQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAPR"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAPS"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAPT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAPU"); ~%Rax];
];
  data "AAAAAAPS" [
    Quad (Lit 3904578313638335669L);
  ];
  data "AAAAAAPT" [
    Quad (Lit 328493934707552476L);
  ];
  data "AAAAAAPU" [
    Asciz ("TCLCODSVOJE");
    Asciz ("DCUJDTDUNED");
    Asciz ("XCTCHSPOWYNSYNMJVFQF");
    Quad (Lit 6835653021454860127L);
  ];
]
let test_53_data = [Byte '\x47';Byte '\x58';Byte '\x4f';Byte '\x56';Byte '\x5a';Byte '\x48';Byte '\x43';Byte '\x55';Byte '\x45';Byte '\x50';Byte '\x49';Byte '\x44';Byte '\x42';Byte '\x44';Byte '\x59';Byte '\x50';Byte '\x43';Byte '\x45';Byte '\x00';Byte '\x42';Byte '\x9b';Byte '\x5c';Byte '\xe0';Byte '\xe0';Byte '\xa7';Byte '\x40';Byte '\x55';Byte '\x59';Byte '\x46';Byte '\x4e';Byte '\x42';Byte '\x4f';Byte '\x42';Byte '\x4b';Byte '\x42';Byte '\x42';Byte '\x54';Byte '\x49';Byte '\x49';Byte '\x50';Byte '\x54';Byte '\x56';Byte '\x00';Byte '\x6e';Byte '\xc2';Byte '\xcd';Byte '\x18';Byte '\x17';Byte '\xe7';Byte '\xfa';Byte '\x06';Byte '\x6b';Byte '\x7e';Byte '\xfc';Byte '\x9c';Byte '\x43';Byte '\xcc';Byte '\x92';Byte '\x4d';Byte '\xe9';Byte '\x39';Byte '\x2e';Byte '\x02';Byte '\xb8';Byte '\xe1';Byte '\x9c';Byte '\x2e';Byte '\x96';Byte '\x80';Byte '\xf2';Byte '\x0f';Byte '\x24';Byte '\xf9';Byte '\xcc';Byte '\x7f';Byte '\x88';Byte '\x9f';Byte '\x31';Byte '\xa4';Byte '\x1a';Byte '\x6e';Byte '\xa8';Byte '\x65';Byte '\x25';Byte '\x3c';Byte '\xf1';Byte '\x3c';Byte '\x38';Byte '\x32';Byte '\x42';Byte '\x6a';Byte '\xe4';Byte '\xe6';Byte '\x3a';Byte '\xad';Byte '\x47';Byte '\x2a';Byte '\x0e';Byte '\x3d';Byte '\x6c';Byte '\x59';Byte '\x49';Byte '\x4b';Byte '\x3b';Byte '\x9d';Byte '\xc8';Byte '\x14';Byte '\x5a';Byte '\x0c';Byte '\x2c';Byte '\xdc';Byte '\x24';Byte '\x31';Byte '\xeb';Byte '\x70';Byte '\x59';Byte '\x4c';Byte '\x58';Byte '\x4b';Byte '\x59';Byte '\x49';Byte '\x54';Byte '\x51';Byte '\x4c';Byte '\x54';Byte '\x52';Byte '\x4b';Byte '\x44';Byte '\x46';Byte '\x4c';Byte '\x47';Byte '\x4a';Byte '\x50';Byte '\x55';Byte '\x00';Byte '\x4d';Byte '\x58';Byte '\x47';Byte '\x48';Byte '\x50';Byte '\x42';Byte '\x42';Byte '\x54';Byte '\x44';Byte '\x43';Byte '\x55';Byte '\x42';Byte '\x41';Byte '\x53';Byte '\x4d';Byte '\x48';Byte '\x56';Byte '\x4a';Byte '\x45';Byte '\x00';Byte '\x49';Byte '\x5c';Byte '\x12';Byte '\x52';Byte '\xf3';Byte '\xae';Byte '\x65';Byte '\x51';Byte '\x56';Byte '\x46';Byte '\x4c';Byte '\x52';Byte '\x43';Byte '\x58';Byte '\x46';Byte '\x46';Byte '\x59';Byte '\x4f';Byte '\x44';Byte '\x55';Byte '\x5a';Byte '\x56';Byte '\x45';Byte '\x00';Byte '\xb5';Byte '\x54';Byte '\x1b';Byte '\xf6';Byte '\x49';Byte '\xd9';Byte '\x2f';Byte '\x36';Byte '\xdc';Byte '\x30';Byte '\x1d';Byte '\x41';Byte '\x7e';Byte '\x0b';Byte '\x8f';Byte '\x04';Byte '\x54';Byte '\x43';Byte '\x4c';Byte '\x43';Byte '\x4f';Byte '\x44';Byte '\x53';Byte '\x56';Byte '\x4f';Byte '\x4a';Byte '\x45';Byte '\x00';Byte '\x44';Byte '\x43';Byte '\x55';Byte '\x4a';Byte '\x44';Byte '\x54';Byte '\x44';Byte '\x55';Byte '\x4e';Byte '\x45';Byte '\x44';Byte '\x00';Byte '\x58';Byte '\x43';Byte '\x54';Byte '\x43';Byte '\x48';Byte '\x53';Byte '\x50';Byte '\x4f';Byte '\x57';Byte '\x59';Byte '\x4e';Byte '\x53';Byte '\x59';Byte '\x4e';Byte '\x4d';Byte '\x4a';Byte '\x56';Byte '\x46';Byte '\x51';Byte '\x46';Byte '\x00';Byte '\x5f';Byte '\x7f';Byte '\xa4';Byte '\xc7';Byte '\x34';Byte '\x1e';Byte '\xdd';Byte '\x5e';]
let test_53_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400050L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400063L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400083L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400093L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40009bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c3L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000d7L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400103L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40010bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400113L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_54 = [
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAPV"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAPW"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAPX"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAPY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAPZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAQA"); ~%Rax];
];
  data "AAAAAAPV" [
    Quad (Lit 5799596455924938593L);
    Asciz ("NOLMYRRDLBJCSPQFQRI");
    Quad (Lit 4626238919642630625L);
    Quad (Lit 6636311272435074705L);
    Quad (Lit 918632438902498710L);
    Asciz ("DVPSSKYCSVEDUF");
  ];
  data "AAAAAAPW" [
    Quad (Lit 3979070526000586926L);
    Asciz ("FZJGNKMGMWLAXFCSPJU");
    Asciz ("PSECLJVZBFSKHCIMWF");
    Quad (Lit 1218201760006598121L);
    Quad (Lit 5535539335624208968L);
  ];
  data "AAAAAAPX" [
    Quad (Lit 3034337280285439716L);
    Quad (Lit 7633573401012914254L);
    Asciz ("TFWDMPBRBSTMPBHUI");
    Quad (Lit 5560667595434773114L);
    Asciz ("TMHKIGIQDBS");
    Asciz ("SPFAOEDJVKEN");
  ];
  data "AAAAAAPY" [
    Quad (Lit 5515774801619977749L);
  ];
  data "AAAAAAPZ" [
    Asciz ("EEVFMDMKVIRGRFGU");
    Asciz ("MARRAAIOJKUNCHMQ");
  ];
  data "AAAAAAQA" [
    Quad (Lit 8773204781656168729L);
  ];
]
let test_54_data = [Byte '\x61';Byte '\x37';Byte '\x05';Byte '\xc4';Byte '\x3f';Byte '\x4e';Byte '\x7c';Byte '\x50';Byte '\x4e';Byte '\x4f';Byte '\x4c';Byte '\x4d';Byte '\x59';Byte '\x52';Byte '\x52';Byte '\x44';Byte '\x4c';Byte '\x42';Byte '\x4a';Byte '\x43';Byte '\x53';Byte '\x50';Byte '\x51';Byte '\x46';Byte '\x51';Byte '\x52';Byte '\x49';Byte '\x00';Byte '\xe1';Byte '\xc9';Byte '\x62';Byte '\x5b';Byte '\xc9';Byte '\xb3';Byte '\x33';Byte '\x40';Byte '\x91';Byte '\xc6';Byte '\x69';Byte '\x0c';Byte '\xf1';Byte '\xe9';Byte '\x18';Byte '\x5c';Byte '\x96';Byte '\x25';Byte '\xef';Byte '\x07';Byte '\x56';Byte '\xa3';Byte '\xbf';Byte '\x0c';Byte '\x44';Byte '\x56';Byte '\x50';Byte '\x53';Byte '\x53';Byte '\x4b';Byte '\x59';Byte '\x43';Byte '\x53';Byte '\x56';Byte '\x45';Byte '\x44';Byte '\x55';Byte '\x46';Byte '\x00';Byte '\xae';Byte '\xe0';Byte '\x7d';Byte '\xb6';Byte '\x8f';Byte '\x7f';Byte '\x38';Byte '\x37';Byte '\x46';Byte '\x5a';Byte '\x4a';Byte '\x47';Byte '\x4e';Byte '\x4b';Byte '\x4d';Byte '\x47';Byte '\x4d';Byte '\x57';Byte '\x4c';Byte '\x41';Byte '\x58';Byte '\x46';Byte '\x43';Byte '\x53';Byte '\x50';Byte '\x4a';Byte '\x55';Byte '\x00';Byte '\x50';Byte '\x53';Byte '\x45';Byte '\x43';Byte '\x4c';Byte '\x4a';Byte '\x56';Byte '\x5a';Byte '\x42';Byte '\x46';Byte '\x53';Byte '\x4b';Byte '\x48';Byte '\x43';Byte '\x49';Byte '\x4d';Byte '\x57';Byte '\x46';Byte '\x00';Byte '\xe9';Byte '\xed';Byte '\xf2';Byte '\xe1';Byte '\x0b';Byte '\xec';Byte '\xe7';Byte '\x10';Byte '\x48';Byte '\x32';Byte '\x15';Byte '\x7c';Byte '\xb2';Byte '\x2f';Byte '\xd2';Byte '\x4c';Byte '\xe4';Byte '\x76';Byte '\x23';Byte '\x08';Byte '\xae';Byte '\x21';Byte '\x1c';Byte '\x2a';Byte '\x4e';Byte '\xc8';Byte '\x3e';Byte '\x56';Byte '\x90';Byte '\xe6';Byte '\xef';Byte '\x69';Byte '\x54';Byte '\x46';Byte '\x57';Byte '\x44';Byte '\x4d';Byte '\x50';Byte '\x42';Byte '\x52';Byte '\x42';Byte '\x53';Byte '\x54';Byte '\x4d';Byte '\x50';Byte '\x42';Byte '\x48';Byte '\x55';Byte '\x49';Byte '\x00';Byte '\x7a';Byte '\x4a';Byte '\xea';Byte '\x63';Byte '\xb7';Byte '\x75';Byte '\x2b';Byte '\x4d';Byte '\x54';Byte '\x4d';Byte '\x48';Byte '\x4b';Byte '\x49';Byte '\x47';Byte '\x49';Byte '\x51';Byte '\x44';Byte '\x42';Byte '\x53';Byte '\x00';Byte '\x53';Byte '\x50';Byte '\x46';Byte '\x41';Byte '\x4f';Byte '\x45';Byte '\x44';Byte '\x4a';Byte '\x56';Byte '\x4b';Byte '\x45';Byte '\x4e';Byte '\x00';Byte '\x15';Byte '\x06';Byte '\x9c';Byte '\x4f';Byte '\xf5';Byte '\xf7';Byte '\x8b';Byte '\x4c';Byte '\x45';Byte '\x45';Byte '\x56';Byte '\x46';Byte '\x4d';Byte '\x44';Byte '\x4d';Byte '\x4b';Byte '\x56';Byte '\x49';Byte '\x52';Byte '\x47';Byte '\x52';Byte '\x46';Byte '\x47';Byte '\x55';Byte '\x00';Byte '\x4d';Byte '\x41';Byte '\x52';Byte '\x52';Byte '\x41';Byte '\x41';Byte '\x49';Byte '\x4f';Byte '\x4a';Byte '\x4b';Byte '\x55';Byte '\x4e';Byte '\x43';Byte '\x48';Byte '\x4d';Byte '\x51';Byte '\x00';Byte '\x19';Byte '\xd9';Byte '\x5f';Byte '\x38';Byte '\x44';Byte '\xaf';Byte '\xc0';Byte '\x79';]
let test_54_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400030L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400073L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000b2L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f5L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000fdL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40011fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_55 = [
  data "AAAAAAQB" [
    Asciz ("EKVEUSWSKAYWXBLDWD");
    Asciz ("VQCSCLDUZA");
    Asciz ("SGXJVYOEJK");
    Asciz ("MXINQQUWFCS");
    Asciz ("QQDDWPXLJIIXIZIKAYZ");
  ];
  data "AAAAAAQC" [
    Quad (Lit 3968716397665395886L);
    Asciz ("WXSGYYPXCTTPNLQFDHD");
  ];
  data "AAAAAAQD" [
    Asciz ("KKDYEIQYYQVC");
  ];
  data "AAAAAAQE" [
    Quad (Lit 6427696119436892671L);
    Quad (Lit 5060481743818575945L);
    Quad (Lit 2364322118873506432L);
  ];
  data "AAAAAAQF" [
    Asciz ("DNIQKJOIMRHBQEVIQN");
    Quad (Lit 5246773436336420774L);
    Asciz ("SORHMMZTZCSPRM");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAQB"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAQC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAQD"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAQE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAQF"); ~%Rax];
];
]
let test_55_data = [Byte '\x45';Byte '\x4b';Byte '\x56';Byte '\x45';Byte '\x55';Byte '\x53';Byte '\x57';Byte '\x53';Byte '\x4b';Byte '\x41';Byte '\x59';Byte '\x57';Byte '\x58';Byte '\x42';Byte '\x4c';Byte '\x44';Byte '\x57';Byte '\x44';Byte '\x00';Byte '\x56';Byte '\x51';Byte '\x43';Byte '\x53';Byte '\x43';Byte '\x4c';Byte '\x44';Byte '\x55';Byte '\x5a';Byte '\x41';Byte '\x00';Byte '\x53';Byte '\x47';Byte '\x58';Byte '\x4a';Byte '\x56';Byte '\x59';Byte '\x4f';Byte '\x45';Byte '\x4a';Byte '\x4b';Byte '\x00';Byte '\x4d';Byte '\x58';Byte '\x49';Byte '\x4e';Byte '\x51';Byte '\x51';Byte '\x55';Byte '\x57';Byte '\x46';Byte '\x43';Byte '\x53';Byte '\x00';Byte '\x51';Byte '\x51';Byte '\x44';Byte '\x44';Byte '\x57';Byte '\x50';Byte '\x58';Byte '\x4c';Byte '\x4a';Byte '\x49';Byte '\x49';Byte '\x58';Byte '\x49';Byte '\x5a';Byte '\x49';Byte '\x4b';Byte '\x41';Byte '\x59';Byte '\x5a';Byte '\x00';Byte '\xae';Byte '\x24';Byte '\x1d';Byte '\x59';Byte '\x89';Byte '\xb6';Byte '\x13';Byte '\x37';Byte '\x57';Byte '\x58';Byte '\x53';Byte '\x47';Byte '\x59';Byte '\x59';Byte '\x50';Byte '\x58';Byte '\x43';Byte '\x54';Byte '\x54';Byte '\x50';Byte '\x4e';Byte '\x4c';Byte '\x51';Byte '\x46';Byte '\x44';Byte '\x48';Byte '\x44';Byte '\x00';Byte '\x4b';Byte '\x4b';Byte '\x44';Byte '\x59';Byte '\x45';Byte '\x49';Byte '\x51';Byte '\x59';Byte '\x59';Byte '\x51';Byte '\x56';Byte '\x43';Byte '\x00';Byte '\xff';Byte '\x59';Byte '\x31';Byte '\xb3';Byte '\x90';Byte '\xc3';Byte '\x33';Byte '\x59';Byte '\x49';Byte '\xd0';Byte '\xa7';Byte '\x9c';Byte '\x55';Byte '\x71';Byte '\x3a';Byte '\x46';Byte '\x80';Byte '\xe2';Byte '\x0d';Byte '\xbe';Byte '\x70';Byte '\xc2';Byte '\xcf';Byte '\x20';Byte '\x44';Byte '\x4e';Byte '\x49';Byte '\x51';Byte '\x4b';Byte '\x4a';Byte '\x4f';Byte '\x49';Byte '\x4d';Byte '\x52';Byte '\x48';Byte '\x42';Byte '\x51';Byte '\x45';Byte '\x56';Byte '\x49';Byte '\x51';Byte '\x4e';Byte '\x00';Byte '\xa6';Byte '\xb7';Byte '\xc9';Byte '\x49';Byte '\xa4';Byte '\x48';Byte '\xd0';Byte '\x48';Byte '\x53';Byte '\x4f';Byte '\x52';Byte '\x48';Byte '\x4d';Byte '\x4d';Byte '\x5a';Byte '\x54';Byte '\x5a';Byte '\x43';Byte '\x53';Byte '\x50';Byte '\x52';Byte '\x4d';Byte '\x00';]
let test_55_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400028L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400071L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40008dL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40009aL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000b2L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_56 = [
  data "AAAAAAQG" [
    Asciz ("QBQTJWXZZGEXUULGH");
    Asciz ("EBRYQHFFKLOIZ");
    Asciz ("HSVBSEQJLMGWHI");
  ];
  data "AAAAAAQH" [
    Asciz ("NGJXGVRPUGMOKPBSQNG");
    Quad (Lit 5828278091519249324L);
    Quad (Lit 3446274784997415516L);
  ];
  data "AAAAAAQI" [
    Asciz ("TKSKFGQCWKJTORA");
    Asciz ("QWYFMXQVIYUCMVTGYA");
  ];
  data "AAAAAAQJ" [
    Quad (Lit 1247850695662099579L);
  ];
  data "AAAAAAQK" [
    Quad (Lit 7682436919897449739L);
    Asciz ("LRSMUYMRCEJPVYKKHC");
    Asciz ("YUOAAIUHSEFOVIIR");
    Asciz ("TKNQCIIMLBP");
    Quad (Lit 1465423404085413462L);
  ];
  data "AAAAAAQL" [
    Quad (Lit 3733987711757048593L);
    Quad (Lit 7725285810073228070L);
  ];
  data "AAAAAAQM" [
    Quad (Lit 8276888035783843958L);
    Asciz ("CMURKALTDPBS");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAQG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAQH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAQI"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAQJ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAQK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAQL"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAQM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAQN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAQO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAQP"); ~%Rax];
];
  data "AAAAAAQN" [
    Asciz ("RFOZAIVBXWVNUMQC");
  ];
  data "AAAAAAQO" [
    Asciz ("UFCIFFKIKYOLWFRHW");
    Asciz ("ZFSPSGBSCW");
  ];
  data "AAAAAAQP" [
    Asciz ("PHFZQQZYNSOMSVMD");
    Asciz ("OFSCDRUMNYEGCIQQROTP");
    Asciz ("SXTSFWKLHFLLLHMDUBI");
  ];
]
let test_56_data = [Byte '\x51';Byte '\x42';Byte '\x51';Byte '\x54';Byte '\x4a';Byte '\x57';Byte '\x58';Byte '\x5a';Byte '\x5a';Byte '\x47';Byte '\x45';Byte '\x58';Byte '\x55';Byte '\x55';Byte '\x4c';Byte '\x47';Byte '\x48';Byte '\x00';Byte '\x45';Byte '\x42';Byte '\x52';Byte '\x59';Byte '\x51';Byte '\x48';Byte '\x46';Byte '\x46';Byte '\x4b';Byte '\x4c';Byte '\x4f';Byte '\x49';Byte '\x5a';Byte '\x00';Byte '\x48';Byte '\x53';Byte '\x56';Byte '\x42';Byte '\x53';Byte '\x45';Byte '\x51';Byte '\x4a';Byte '\x4c';Byte '\x4d';Byte '\x47';Byte '\x57';Byte '\x48';Byte '\x49';Byte '\x00';Byte '\x4e';Byte '\x47';Byte '\x4a';Byte '\x58';Byte '\x47';Byte '\x56';Byte '\x52';Byte '\x50';Byte '\x55';Byte '\x47';Byte '\x4d';Byte '\x4f';Byte '\x4b';Byte '\x50';Byte '\x42';Byte '\x53';Byte '\x51';Byte '\x4e';Byte '\x47';Byte '\x00';Byte '\xac';Byte '\x4b';Byte '\x32';Byte '\x71';Byte '\x0b';Byte '\x34';Byte '\xe2';Byte '\x50';Byte '\x5c';Byte '\x1a';Byte '\x28';Byte '\x66';Byte '\xa8';Byte '\xa0';Byte '\xd3';Byte '\x2f';Byte '\x54';Byte '\x4b';Byte '\x53';Byte '\x4b';Byte '\x46';Byte '\x47';Byte '\x51';Byte '\x43';Byte '\x57';Byte '\x4b';Byte '\x4a';Byte '\x54';Byte '\x4f';Byte '\x52';Byte '\x41';Byte '\x00';Byte '\x51';Byte '\x57';Byte '\x59';Byte '\x46';Byte '\x4d';Byte '\x58';Byte '\x51';Byte '\x56';Byte '\x49';Byte '\x59';Byte '\x55';Byte '\x43';Byte '\x4d';Byte '\x56';Byte '\x54';Byte '\x47';Byte '\x59';Byte '\x41';Byte '\x00';Byte '\x7b';Byte '\xdc';Byte '\xa9';Byte '\xa7';Byte '\x98';Byte '\x41';Byte '\x51';Byte '\x11';Byte '\x0b';Byte '\x65';Byte '\xd5';Byte '\xe3';Byte '\xac';Byte '\x7f';Byte '\x9d';Byte '\x6a';Byte '\x4c';Byte '\x52';Byte '\x53';Byte '\x4d';Byte '\x55';Byte '\x59';Byte '\x4d';Byte '\x52';Byte '\x43';Byte '\x45';Byte '\x4a';Byte '\x50';Byte '\x56';Byte '\x59';Byte '\x4b';Byte '\x4b';Byte '\x48';Byte '\x43';Byte '\x00';Byte '\x59';Byte '\x55';Byte '\x4f';Byte '\x41';Byte '\x41';Byte '\x49';Byte '\x55';Byte '\x48';Byte '\x53';Byte '\x45';Byte '\x46';Byte '\x4f';Byte '\x56';Byte '\x49';Byte '\x49';Byte '\x52';Byte '\x00';Byte '\x54';Byte '\x4b';Byte '\x4e';Byte '\x51';Byte '\x43';Byte '\x49';Byte '\x49';Byte '\x4d';Byte '\x4c';Byte '\x42';Byte '\x50';Byte '\x00';Byte '\x56';Byte '\x06';Byte '\x0e';Byte '\x66';Byte '\xd2';Byte '\x3a';Byte '\x56';Byte '\x14';Byte '\x11';Byte '\xdb';Byte '\xf3';Byte '\x52';Byte '\x0a';Byte '\xca';Byte '\xd1';Byte '\x33';Byte '\x26';Byte '\xd3';Byte '\xc7';Byte '\x91';Byte '\x83';Byte '\xba';Byte '\x35';Byte '\x6b';Byte '\x76';Byte '\xa0';Byte '\x93';Byte '\xd2';Byte '\xd0';Byte '\x69';Byte '\xdd';Byte '\x72';Byte '\x43';Byte '\x4d';Byte '\x55';Byte '\x52';Byte '\x4b';Byte '\x41';Byte '\x4c';Byte '\x54';Byte '\x44';Byte '\x50';Byte '\x42';Byte '\x53';Byte '\x00';Byte '\x52';Byte '\x46';Byte '\x4f';Byte '\x5a';Byte '\x41';Byte '\x49';Byte '\x56';Byte '\x42';Byte '\x58';Byte '\x57';Byte '\x56';Byte '\x4e';Byte '\x55';Byte '\x4d';Byte '\x51';Byte '\x43';Byte '\x00';Byte '\x55';Byte '\x46';Byte '\x43';Byte '\x49';Byte '\x46';Byte '\x46';Byte '\x4b';Byte '\x49';Byte '\x4b';Byte '\x59';Byte '\x4f';Byte '\x4c';Byte '\x57';Byte '\x46';Byte '\x52';Byte '\x48';Byte '\x57';Byte '\x00';Byte '\x5a';Byte '\x46';Byte '\x53';Byte '\x50';Byte '\x53';Byte '\x47';Byte '\x42';Byte '\x53';Byte '\x43';Byte '\x57';Byte '\x00';Byte '\x50';Byte '\x48';Byte '\x46';Byte '\x5a';Byte '\x51';Byte '\x51';Byte '\x5a';Byte '\x59';Byte '\x4e';Byte '\x53';Byte '\x4f';Byte '\x4d';Byte '\x53';Byte '\x56';Byte '\x4d';Byte '\x44';Byte '\x00';Byte '\x4f';Byte '\x46';Byte '\x53';Byte '\x43';Byte '\x44';Byte '\x52';Byte '\x55';Byte '\x4d';Byte '\x4e';Byte '\x59';Byte '\x45';Byte '\x47';Byte '\x43';Byte '\x49';Byte '\x51';Byte '\x51';Byte '\x52';Byte '\x4f';Byte '\x54';Byte '\x50';Byte '\x00';Byte '\x53';Byte '\x58';Byte '\x54';Byte '\x53';Byte '\x46';Byte '\x57';Byte '\x4b';Byte '\x4c';Byte '\x48';Byte '\x46';Byte '\x4c';Byte '\x4c';Byte '\x4c';Byte '\x48';Byte '\x4d';Byte '\x44';Byte '\x55';Byte '\x42';Byte '\x49';Byte '\x00';]
let test_56_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400050L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40007fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000a3L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c6L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000ceL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40010eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40011eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400133L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400144L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400161L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_57 = [
  data "AAAAAAQQ" [
    Quad (Lit 5387632544434621123L);
    Asciz ("FOFNOBLBFAJSVMXT");
  ];
  data "AAAAAAQR" [
    Quad (Lit 8861836574702395544L);
  ];
  data "AAAAAAQS" [
    Asciz ("WOYPHSFTNNAPYXD");
    Quad (Lit 4171984018094529897L);
    Quad (Lit 4286705771516539253L);
    Quad (Lit 131333426284952499L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAQQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAQR"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAQS"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAQT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAQU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAQV"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAQW"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAQX"); ~%Rax];
];
  data "AAAAAAQT" [
    Asciz ("KKSYQZNJLEVTDMAU");
    Asciz ("QTUUFODENOWFIEJ");
    Asciz ("TNFUBNTXZCPPVN");
    Quad (Lit 5996976530084359787L);
    Asciz ("FZJSGBDPUAT");
  ];
  data "AAAAAAQU" [
    Quad (Lit 2933485919690328617L);
    Quad (Lit 4228149928314533097L);
    Quad (Lit 8923142977869289678L);
  ];
  data "AAAAAAQV" [
    Asciz ("GFXZVJIGBVZNR");
    Quad (Lit 5355915408415299612L);
    Asciz ("FKJJBYFZLZKHBEAMN");
    Asciz ("FKVWUPBYUSWLL");
    Quad (Lit 2293931176978374370L);
    Quad (Lit 4237307217399652460L);
  ];
  data "AAAAAAQW" [
    Quad (Lit 7046222702218863117L);
    Quad (Lit 7731636267524753790L);
    Quad (Lit 7908018392470869288L);
  ];
  data "AAAAAAQX" [
    Asciz ("ACVWMOVKBI");
    Quad (Lit 1648936171923437262L);
    Asciz ("BGXMYRMILHPCS");
  ];
]
let test_57_data = [Byte '\xc3';Byte '\x0a';Byte '\x5c';Byte '\x17';Byte '\x41';Byte '\xb7';Byte '\xc4';Byte '\x4a';Byte '\x46';Byte '\x4f';Byte '\x46';Byte '\x4e';Byte '\x4f';Byte '\x42';Byte '\x4c';Byte '\x42';Byte '\x46';Byte '\x41';Byte '\x4a';Byte '\x53';Byte '\x56';Byte '\x4d';Byte '\x58';Byte '\x54';Byte '\x00';Byte '\x98';Byte '\x60';Byte '\xb3';Byte '\xa4';Byte '\x69';Byte '\x91';Byte '\xfb';Byte '\x7a';Byte '\x57';Byte '\x4f';Byte '\x59';Byte '\x50';Byte '\x48';Byte '\x53';Byte '\x46';Byte '\x54';Byte '\x4e';Byte '\x4e';Byte '\x41';Byte '\x50';Byte '\x59';Byte '\x58';Byte '\x44';Byte '\x00';Byte '\x69';Byte '\x9d';Byte '\x21';Byte '\x3f';Byte '\x5c';Byte '\xdd';Byte '\xe5';Byte '\x39';Byte '\x75';Byte '\x31';Byte '\xdc';Byte '\xef';Byte '\x2f';Byte '\x70';Byte '\x7d';Byte '\x3b';Byte '\xb3';Byte '\x7b';Byte '\xd9';Byte '\x2c';Byte '\x0e';Byte '\x97';Byte '\xd2';Byte '\x01';Byte '\x4b';Byte '\x4b';Byte '\x53';Byte '\x59';Byte '\x51';Byte '\x5a';Byte '\x4e';Byte '\x4a';Byte '\x4c';Byte '\x45';Byte '\x56';Byte '\x54';Byte '\x44';Byte '\x4d';Byte '\x41';Byte '\x55';Byte '\x00';Byte '\x51';Byte '\x54';Byte '\x55';Byte '\x55';Byte '\x46';Byte '\x4f';Byte '\x44';Byte '\x45';Byte '\x4e';Byte '\x4f';Byte '\x57';Byte '\x46';Byte '\x49';Byte '\x45';Byte '\x4a';Byte '\x00';Byte '\x54';Byte '\x4e';Byte '\x46';Byte '\x55';Byte '\x42';Byte '\x4e';Byte '\x54';Byte '\x58';Byte '\x5a';Byte '\x43';Byte '\x50';Byte '\x50';Byte '\x56';Byte '\x4e';Byte '\x00';Byte '\x6b';Byte '\x6e';Byte '\x08';Byte '\x7a';Byte '\x61';Byte '\x8a';Byte '\x39';Byte '\x53';Byte '\x46';Byte '\x5a';Byte '\x4a';Byte '\x53';Byte '\x47';Byte '\x42';Byte '\x44';Byte '\x50';Byte '\x55';Byte '\x41';Byte '\x54';Byte '\x00';Byte '\x29';Byte '\x8a';Byte '\xc0';Byte '\xd4';Byte '\xe6';Byte '\xd5';Byte '\xb5';Byte '\x28';Byte '\xe9';Byte '\xf4';Byte '\x47';Byte '\x46';Byte '\xf5';Byte '\x67';Byte '\xad';Byte '\x3a';Byte '\xce';Byte '\x98';Byte '\xeb';Byte '\xf3';Byte '\x42';Byte '\x5f';Byte '\xd5';Byte '\x7b';Byte '\x47';Byte '\x46';Byte '\x58';Byte '\x5a';Byte '\x56';Byte '\x4a';Byte '\x49';Byte '\x47';Byte '\x42';Byte '\x56';Byte '\x5a';Byte '\x4e';Byte '\x52';Byte '\x00';Byte '\x1c';Byte '\x98';Byte '\xa2';Byte '\xe5';Byte '\xaf';Byte '\x08';Byte '\x54';Byte '\x4a';Byte '\x46';Byte '\x4b';Byte '\x4a';Byte '\x4a';Byte '\x42';Byte '\x59';Byte '\x46';Byte '\x5a';Byte '\x4c';Byte '\x5a';Byte '\x4b';Byte '\x48';Byte '\x42';Byte '\x45';Byte '\x41';Byte '\x4d';Byte '\x4e';Byte '\x00';Byte '\x46';Byte '\x4b';Byte '\x56';Byte '\x57';Byte '\x55';Byte '\x50';Byte '\x42';Byte '\x59';Byte '\x55';Byte '\x53';Byte '\x57';Byte '\x4c';Byte '\x4c';Byte '\x00';Byte '\xe2';Byte '\x5e';Byte '\xfd';Byte '\x6e';Byte '\x40';Byte '\xae';Byte '\xd5';Byte '\x1f';Byte '\x6c';Byte '\x20';Byte '\x4e';Byte '\xc9';Byte '\x76';Byte '\xf0';Byte '\xcd';Byte '\x3a';Byte '\x0d';Byte '\x62';Byte '\x0c';Byte '\x16';Byte '\x37';Byte '\x36';Byte '\xc9';Byte '\x61';Byte '\x7e';Byte '\x09';Byte '\x57';Byte '\xaa';Byte '\x38';Byte '\x4a';Byte '\x4c';Byte '\x6b';Byte '\x28';Byte '\x55';Byte '\x7b';Byte '\x58';Byte '\xd4';Byte '\xec';Byte '\xbe';Byte '\x6d';Byte '\x41';Byte '\x43';Byte '\x56';Byte '\x57';Byte '\x4d';Byte '\x4f';Byte '\x56';Byte '\x4b';Byte '\x42';Byte '\x49';Byte '\x00';Byte '\xce';Byte '\xf6';Byte '\xc9';Byte '\x40';Byte '\xb6';Byte '\x32';Byte '\xe2';Byte '\x16';Byte '\x42';Byte '\x47';Byte '\x58';Byte '\x4d';Byte '\x59';Byte '\x52';Byte '\x4d';Byte '\x49';Byte '\x4c';Byte '\x48';Byte '\x50';Byte '\x43';Byte '\x53';Byte '\x00';]
let test_57_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400040L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400059L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400061L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400089L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000cdL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000e5L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40012bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400143L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_58 = [
  data "AAAAAAQY" [
    Quad (Lit 6766929772586413123L);
  ];
  data "AAAAAAQZ" [
    Asciz ("CCNXVCEUEXERLV");
    Quad (Lit 7993632870299356225L);
    Asciz ("NRPIDVXCPJ");
  ];
  data "AAAAAARA" [
    Quad (Lit 3161828330922862760L);
    Quad (Lit 3789904797377554643L);
    Asciz ("YPZNATZKQPS");
    Quad (Lit 8332772161140767414L);
    Asciz ("LCEXBSJNLQTDBLPMJISW");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAQY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAQZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAARA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAARB"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAARC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAARD"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAARE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAARF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAARG"); ~%Rax];
];
  data "AAAAAARB" [
    Quad (Lit 8524454621482078581L);
    Quad (Lit 3771597729882882904L);
    Asciz ("VGIAHYISUWW");
    Asciz ("XGUDPDKEZXVXUMNKTEX");
    Quad (Lit 870921504904738031L);
  ];
  data "AAAAAARC" [
    Quad (Lit 3130654162570104785L);
    Asciz ("YLCEVEWUAYJMVTDFY");
    Quad (Lit 1075791120427039910L);
    Quad (Lit 8605751359229452384L);
  ];
  data "AAAAAARD" [
    Asciz ("PCKVGQXNRWOYFQ");
    Quad (Lit 5192688745806127543L);
    Asciz ("VOCKKFKJWDNRE");
    Quad (Lit 3958772170199830985L);
  ];
  data "AAAAAARE" [
    Asciz ("DLMUDLHSGVZT");
    Quad (Lit 1931952399469113977L);
    Asciz ("JLPYPYIYKNNJDBJYYL");
  ];
  data "AAAAAARF" [
    Asciz ("FYZARHTNJGRYHJXFLBS");
    Quad (Lit 328890116979247009L);
  ];
  data "AAAAAARG" [
    Asciz ("SOZVPSJMOFHGOIFQ");
    Quad (Lit 5338337575942367788L);
    Quad (Lit 1352979335022059908L);
    Quad (Lit 1113110766238783507L);
    Asciz ("XPGZIXWQWJZONYLY");
  ];
]
let test_58_data = [Byte '\x43';Byte '\x2c';Byte '\x07';Byte '\x83';Byte '\xc6';Byte '\xf6';Byte '\xe8';Byte '\x5d';Byte '\x43';Byte '\x43';Byte '\x4e';Byte '\x58';Byte '\x56';Byte '\x43';Byte '\x45';Byte '\x55';Byte '\x45';Byte '\x58';Byte '\x45';Byte '\x52';Byte '\x4c';Byte '\x56';Byte '\x00';Byte '\x41';Byte '\x4c';Byte '\x14';Byte '\x53';Byte '\xbe';Byte '\x16';Byte '\xef';Byte '\x6e';Byte '\x4e';Byte '\x52';Byte '\x50';Byte '\x49';Byte '\x44';Byte '\x56';Byte '\x58';Byte '\x43';Byte '\x50';Byte '\x4a';Byte '\x00';Byte '\xa8';Byte '\x68';Byte '\x6c';Byte '\x69';Byte '\x1d';Byte '\x12';Byte '\xe1';Byte '\x2b';Byte '\xd3';Byte '\xe8';Byte '\x3c';Byte '\x5c';Byte '\x55';Byte '\x72';Byte '\x98';Byte '\x34';Byte '\x59';Byte '\x50';Byte '\x5a';Byte '\x4e';Byte '\x41';Byte '\x54';Byte '\x5a';Byte '\x4b';Byte '\x51';Byte '\x50';Byte '\x53';Byte '\x00';Byte '\xb6';Byte '\x3a';Byte '\x0f';Byte '\xb3';Byte '\x21';Byte '\xf4';Byte '\xa3';Byte '\x73';Byte '\x4c';Byte '\x43';Byte '\x45';Byte '\x58';Byte '\x42';Byte '\x53';Byte '\x4a';Byte '\x4e';Byte '\x4c';Byte '\x51';Byte '\x54';Byte '\x44';Byte '\x42';Byte '\x4c';Byte '\x50';Byte '\x4d';Byte '\x4a';Byte '\x49';Byte '\x53';Byte '\x57';Byte '\x00';Byte '\x75';Byte '\x51';Byte '\x60';Byte '\x51';Byte '\x50';Byte '\xf2';Byte '\x4c';Byte '\x76';Byte '\x58';Byte '\xc3';Byte '\x56';Byte '\x0d';Byte '\x27';Byte '\x68';Byte '\x57';Byte '\x34';Byte '\x56';Byte '\x47';Byte '\x49';Byte '\x41';Byte '\x48';Byte '\x59';Byte '\x49';Byte '\x53';Byte '\x55';Byte '\x57';Byte '\x57';Byte '\x00';Byte '\x58';Byte '\x47';Byte '\x55';Byte '\x44';Byte '\x50';Byte '\x44';Byte '\x4b';Byte '\x45';Byte '\x5a';Byte '\x58';Byte '\x56';Byte '\x58';Byte '\x55';Byte '\x4d';Byte '\x4e';Byte '\x4b';Byte '\x54';Byte '\x45';Byte '\x58';Byte '\x00';Byte '\xef';Byte '\x74';Byte '\x18';Byte '\x8f';Byte '\x7e';Byte '\x22';Byte '\x16';Byte '\x0c';Byte '\xd1';Byte '\xcf';Byte '\x96';Byte '\xba';Byte '\x5f';Byte '\x51';Byte '\x72';Byte '\x2b';Byte '\x59';Byte '\x4c';Byte '\x43';Byte '\x45';Byte '\x56';Byte '\x45';Byte '\x57';Byte '\x55';Byte '\x41';Byte '\x59';Byte '\x4a';Byte '\x4d';Byte '\x56';Byte '\x54';Byte '\x44';Byte '\x46';Byte '\x59';Byte '\x00';Byte '\xa6';Byte '\xbc';Byte '\x92';Byte '\x01';Byte '\x53';Byte '\xfa';Byte '\xed';Byte '\x0e';Byte '\x60';Byte '\xe0';Byte '\x34';Byte '\x18';Byte '\x44';Byte '\xc5';Byte '\x6d';Byte '\x77';Byte '\x50';Byte '\x43';Byte '\x4b';Byte '\x56';Byte '\x47';Byte '\x51';Byte '\x58';Byte '\x4e';Byte '\x52';Byte '\x57';Byte '\x4f';Byte '\x59';Byte '\x46';Byte '\x51';Byte '\x00';Byte '\xb7';Byte '\x61';Byte '\xf1';Byte '\xfa';Byte '\xe6';Byte '\x22';Byte '\x10';Byte '\x48';Byte '\x56';Byte '\x4f';Byte '\x43';Byte '\x4b';Byte '\x4b';Byte '\x46';Byte '\x4b';Byte '\x4a';Byte '\x57';Byte '\x44';Byte '\x4e';Byte '\x52';Byte '\x45';Byte '\x00';Byte '\xc9';Byte '\x91';Byte '\x76';Byte '\x77';Byte '\x50';Byte '\x62';Byte '\xf0';Byte '\x36';Byte '\x44';Byte '\x4c';Byte '\x4d';Byte '\x55';Byte '\x44';Byte '\x4c';Byte '\x48';Byte '\x53';Byte '\x47';Byte '\x56';Byte '\x5a';Byte '\x54';Byte '\x00';Byte '\x79';Byte '\xf2';Byte '\x51';Byte '\xad';Byte '\x78';Byte '\xac';Byte '\xcf';Byte '\x1a';Byte '\x4a';Byte '\x4c';Byte '\x50';Byte '\x59';Byte '\x50';Byte '\x59';Byte '\x49';Byte '\x59';Byte '\x4b';Byte '\x4e';Byte '\x4e';Byte '\x4a';Byte '\x44';Byte '\x42';Byte '\x4a';Byte '\x59';Byte '\x59';Byte '\x4c';Byte '\x00';Byte '\x46';Byte '\x59';Byte '\x5a';Byte '\x41';Byte '\x52';Byte '\x48';Byte '\x54';Byte '\x4e';Byte '\x4a';Byte '\x47';Byte '\x52';Byte '\x59';Byte '\x48';Byte '\x4a';Byte '\x58';Byte '\x46';Byte '\x4c';Byte '\x42';Byte '\x53';Byte '\x00';Byte '\xa1';Byte '\x47';Byte '\xaf';Byte '\xa0';Byte '\xd1';Byte '\x73';Byte '\x90';Byte '\x04';Byte '\x53';Byte '\x4f';Byte '\x5a';Byte '\x56';Byte '\x50';Byte '\x53';Byte '\x4a';Byte '\x4d';Byte '\x4f';Byte '\x46';Byte '\x48';Byte '\x47';Byte '\x4f';Byte '\x49';Byte '\x46';Byte '\x51';Byte '\x00';Byte '\x2c';Byte '\x2a';Byte '\x2a';Byte '\xd9';Byte '\xbd';Byte '\x95';Byte '\x15';Byte '\x4a';Byte '\x84';Byte '\x21';Byte '\x6f';Byte '\x6c';Byte '\x89';Byte '\xbf';Byte '\xc6';Byte '\x12';Byte '\x13';Byte '\x58';Byte '\x53';Byte '\x29';Byte '\x58';Byte '\x90';Byte '\x72';Byte '\x0f';Byte '\x58';Byte '\x50';Byte '\x47';Byte '\x5a';Byte '\x49';Byte '\x58';Byte '\x57';Byte '\x51';Byte '\x57';Byte '\x4a';Byte '\x5a';Byte '\x4f';Byte '\x4e';Byte '\x59';Byte '\x4c';Byte '\x59';Byte '\x00';]
let test_58_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400048L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400050L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400072L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000abL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000e3L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40010dL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40013aL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400162L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40017eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_59 = [
  data "AAAAAARH" [
    Quad (Lit 3695095605656507705L);
    Asciz ("RXVPDPGLJHJOAIBZIPIZ");
    Asciz ("KPCTAARBJQVSPQIXWDFH");
    Asciz ("NOBLPPYOYLUFUXPAGLWK");
    Quad (Lit 8623554946909593667L);
    Asciz ("DRLLAIREEOY");
  ];
  data "AAAAAARI" [
    Quad (Lit 2979637770734428014L);
    Asciz ("NYHHUWIBFKU");
    Quad (Lit 1244745929027380723L);
    Quad (Lit 1139572437321814152L);
    Quad (Lit 8657633161463671716L);
    Asciz ("TEXNIHNLTXHKVB");
  ];
  data "AAAAAARJ" [
    Quad (Lit 7405873672878363783L);
    Asciz ("IWQUQVUDBAEHMHHLI");
    Asciz ("YGVMFQNWLD");
    Quad (Lit 6007953064433861490L);
    Quad (Lit 8638198367496346012L);
    Asciz ("GCCKZOPLBTTUPPMEKSW");
  ];
  data "AAAAAARK" [
    Asciz ("JOIIHHDRSHUHMQU");
    Asciz ("YIZTOGRTPAA");
  ];
  data "AAAAAARL" [
    Asciz ("EDSTXUDXJYGJIPM");
  ];
  data "AAAAAARM" [
    Quad (Lit 329511787389666655L);
    Quad (Lit 3995913688847217429L);
    Quad (Lit 4010857093638161134L);
    Asciz ("XVYDIBLEREZY");
    Asciz ("IMNPMHOJKTOWW");
  ];
  data "AAAAAARN" [
    Asciz ("GPDGCKQVJTIXWKXPC");
    Asciz ("MIVJSDJONUMIVMR");
    Asciz ("RJQIXBFAYWGC");
    Quad (Lit 12427949109019554L);
  ];
  data "AAAAAARO" [
    Asciz ("YQHMSLSWDZWSE");
    Quad (Lit 1366866440915768838L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAARH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAARI"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAARJ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAARK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAARL"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAARM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAARN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAARO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAARP"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAARQ"); ~%Rax];
];
  data "AAAAAARP" [
    Quad (Lit 5893125203352760433L);
    Asciz ("ZZGRPWZIUUDQ");
  ];
  data "AAAAAARQ" [
    Quad (Lit 7506727551814240499L);
    Quad (Lit 7327068631925319808L);
    Asciz ("NJROZTPLTAFODLOF");
    Asciz ("YMKQWTSXLWB");
  ];
]
let test_59_data = [Byte '\x39';Byte '\x55';Byte '\x43';Byte '\x3a';Byte '\xe0';Byte '\x9d';Byte '\x47';Byte '\x33';Byte '\x52';Byte '\x58';Byte '\x56';Byte '\x50';Byte '\x44';Byte '\x50';Byte '\x47';Byte '\x4c';Byte '\x4a';Byte '\x48';Byte '\x4a';Byte '\x4f';Byte '\x41';Byte '\x49';Byte '\x42';Byte '\x5a';Byte '\x49';Byte '\x50';Byte '\x49';Byte '\x5a';Byte '\x00';Byte '\x4b';Byte '\x50';Byte '\x43';Byte '\x54';Byte '\x41';Byte '\x41';Byte '\x52';Byte '\x42';Byte '\x4a';Byte '\x51';Byte '\x56';Byte '\x53';Byte '\x50';Byte '\x51';Byte '\x49';Byte '\x58';Byte '\x57';Byte '\x44';Byte '\x46';Byte '\x48';Byte '\x00';Byte '\x4e';Byte '\x4f';Byte '\x42';Byte '\x4c';Byte '\x50';Byte '\x50';Byte '\x59';Byte '\x4f';Byte '\x59';Byte '\x4c';Byte '\x55';Byte '\x46';Byte '\x55';Byte '\x58';Byte '\x50';Byte '\x41';Byte '\x47';Byte '\x4c';Byte '\x57';Byte '\x4b';Byte '\x00';Byte '\x43';Byte '\xe0';Byte '\x9b';Byte '\xdf';Byte '\x88';Byte '\x05';Byte '\xad';Byte '\x77';Byte '\x44';Byte '\x52';Byte '\x4c';Byte '\x4c';Byte '\x41';Byte '\x49';Byte '\x52';Byte '\x45';Byte '\x45';Byte '\x4f';Byte '\x59';Byte '\x00';Byte '\x6e';Byte '\x5f';Byte '\xf6';Byte '\x03';Byte '\xc4';Byte '\xcc';Byte '\x59';Byte '\x29';Byte '\x4e';Byte '\x59';Byte '\x48';Byte '\x48';Byte '\x55';Byte '\x57';Byte '\x49';Byte '\x42';Byte '\x46';Byte '\x4b';Byte '\x55';Byte '\x00';Byte '\xf3';Byte '\x65';Byte '\x4a';Byte '\xd7';Byte '\xd3';Byte '\x39';Byte '\x46';Byte '\x11';Byte '\x88';Byte '\x90';Byte '\x64';Byte '\x12';Byte '\x18';Byte '\x93';Byte '\xd0';Byte '\x0f';Byte '\xa4';Byte '\x2b';Byte '\xaf';Byte '\x80';Byte '\x7d';Byte '\x17';Byte '\x26';Byte '\x78';Byte '\x54';Byte '\x45';Byte '\x58';Byte '\x4e';Byte '\x49';Byte '\x48';Byte '\x4e';Byte '\x4c';Byte '\x54';Byte '\x58';Byte '\x48';Byte '\x4b';Byte '\x56';Byte '\x42';Byte '\x00';Byte '\x87';Byte '\x14';Byte '\x55';Byte '\x13';Byte '\xde';Byte '\xf2';Byte '\xc6';Byte '\x66';Byte '\x49';Byte '\x57';Byte '\x51';Byte '\x55';Byte '\x51';Byte '\x56';Byte '\x55';Byte '\x44';Byte '\x42';Byte '\x41';Byte '\x45';Byte '\x48';Byte '\x4d';Byte '\x48';Byte '\x48';Byte '\x4c';Byte '\x49';Byte '\x00';Byte '\x59';Byte '\x47';Byte '\x56';Byte '\x4d';Byte '\x46';Byte '\x51';Byte '\x4e';Byte '\x57';Byte '\x4c';Byte '\x44';Byte '\x00';Byte '\x72';Byte '\xc3';Byte '\xcc';Byte '\x08';Byte '\x7b';Byte '\x89';Byte '\x60';Byte '\x53';Byte '\x9c';Byte '\x99';Byte '\xfa';Byte '\xe9';Byte '\xa5';Byte '\x0b';Byte '\xe1';Byte '\x77';Byte '\x47';Byte '\x43';Byte '\x43';Byte '\x4b';Byte '\x5a';Byte '\x4f';Byte '\x50';Byte '\x4c';Byte '\x42';Byte '\x54';Byte '\x54';Byte '\x55';Byte '\x50';Byte '\x50';Byte '\x4d';Byte '\x45';Byte '\x4b';Byte '\x53';Byte '\x57';Byte '\x00';Byte '\x4a';Byte '\x4f';Byte '\x49';Byte '\x49';Byte '\x48';Byte '\x48';Byte '\x44';Byte '\x52';Byte '\x53';Byte '\x48';Byte '\x55';Byte '\x48';Byte '\x4d';Byte '\x51';Byte '\x55';Byte '\x00';Byte '\x59';Byte '\x49';Byte '\x5a';Byte '\x54';Byte '\x4f';Byte '\x47';Byte '\x52';Byte '\x54';Byte '\x50';Byte '\x41';Byte '\x41';Byte '\x00';Byte '\x45';Byte '\x44';Byte '\x53';Byte '\x54';Byte '\x58';Byte '\x55';Byte '\x44';Byte '\x58';Byte '\x4a';Byte '\x59';Byte '\x47';Byte '\x4a';Byte '\x49';Byte '\x50';Byte '\x4d';Byte '\x00';Byte '\x5f';Byte '\x45';Byte '\xaa';Byte '\x8c';Byte '\x39';Byte '\xa9';Byte '\x92';Byte '\x04';Byte '\x15';Byte '\xf3';Byte '\xdb';Byte '\x28';Byte '\x54';Byte '\x56';Byte '\x74';Byte '\x37';Byte '\xee';Byte '\x82';Byte '\x28';Byte '\xb7';Byte '\x46';Byte '\x6d';Byte '\xa9';Byte '\x37';Byte '\x58';Byte '\x56';Byte '\x59';Byte '\x44';Byte '\x49';Byte '\x42';Byte '\x4c';Byte '\x45';Byte '\x52';Byte '\x45';Byte '\x5a';Byte '\x59';Byte '\x00';Byte '\x49';Byte '\x4d';Byte '\x4e';Byte '\x50';Byte '\x4d';Byte '\x48';Byte '\x4f';Byte '\x4a';Byte '\x4b';Byte '\x54';Byte '\x4f';Byte '\x57';Byte '\x57';Byte '\x00';Byte '\x47';Byte '\x50';Byte '\x44';Byte '\x47';Byte '\x43';Byte '\x4b';Byte '\x51';Byte '\x56';Byte '\x4a';Byte '\x54';Byte '\x49';Byte '\x58';Byte '\x57';Byte '\x4b';Byte '\x58';Byte '\x50';Byte '\x43';Byte '\x00';Byte '\x4d';Byte '\x49';Byte '\x56';Byte '\x4a';Byte '\x53';Byte '\x44';Byte '\x4a';Byte '\x4f';Byte '\x4e';Byte '\x55';Byte '\x4d';Byte '\x49';Byte '\x56';Byte '\x4d';Byte '\x52';Byte '\x00';Byte '\x52';Byte '\x4a';Byte '\x51';Byte '\x49';Byte '\x58';Byte '\x42';Byte '\x46';Byte '\x41';Byte '\x59';Byte '\x57';Byte '\x47';Byte '\x43';Byte '\x00';Byte '\xa2';Byte '\x03';Byte '\xee';Byte '\x63';Byte '\x27';Byte '\x27';Byte '\x2c';Byte '\x00';Byte '\x59';Byte '\x51';Byte '\x48';Byte '\x4d';Byte '\x53';Byte '\x4c';Byte '\x53';Byte '\x57';Byte '\x44';Byte '\x5a';Byte '\x57';Byte '\x53';Byte '\x45';Byte '\x00';Byte '\x06';Byte '\xd6';Byte '\x2f';Byte '\x3a';Byte '\xc9';Byte '\x15';Byte '\xf8';Byte '\x12';Byte '\x71';Byte '\x30';Byte '\xbe';Byte '\x3a';Byte '\x26';Byte '\x96';Byte '\xc8';Byte '\x51';Byte '\x5a';Byte '\x5a';Byte '\x47';Byte '\x52';Byte '\x50';Byte '\x57';Byte '\x5a';Byte '\x49';Byte '\x55';Byte '\x55';Byte '\x44';Byte '\x51';Byte '\x00';Byte '\xf3';Byte '\x88';Byte '\x86';Byte '\x9f';Byte '\xef';Byte '\x40';Byte '\x2d';Byte '\x68';Byte '\x80';Byte '\xe8';Byte '\xd0';Byte '\xaa';Byte '\x19';Byte '\xfa';Byte '\xae';Byte '\x65';Byte '\x4e';Byte '\x4a';Byte '\x52';Byte '\x4f';Byte '\x5a';Byte '\x54';Byte '\x50';Byte '\x4c';Byte '\x54';Byte '\x41';Byte '\x46';Byte '\x4f';Byte '\x44';Byte '\x4c';Byte '\x4f';Byte '\x46';Byte '\x00';Byte '\x59';Byte '\x4d';Byte '\x4b';Byte '\x51';Byte '\x57';Byte '\x54';Byte '\x53';Byte '\x58';Byte '\x4c';Byte '\x57';Byte '\x42';Byte '\x00';]
let test_59_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400050L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000abL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000e6L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40012fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40014bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40015bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40018eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001c5L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001dbL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001f0L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_60 = [
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAARR"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAARS"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAART"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAARU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAARV"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAARW"); ~%Rax];
];
  data "AAAAAARR" [
    Quad (Lit 7596622071206496171L);
  ];
  data "AAAAAARS" [
    Asciz ("CDWCJXOXVPHKTHTV");
    Quad (Lit 5720504477033799494L);
    Asciz ("CFDAOTGBVABZKVQ");
  ];
  data "AAAAAART" [
    Asciz ("RQHNOILELGNVCSQODO");
    Asciz ("HGQZLZVILXMZPM");
    Asciz ("ECLYIGHZLESBHOFYE");
    Asciz ("MQHDRDJFHJQRDXT");
  ];
  data "AAAAAARU" [
    Quad (Lit 27801720723695697L);
  ];
  data "AAAAAARV" [
    Asciz ("SKKGCPROMGEXSHAJ");
    Asciz ("SGWJFBMTLMXLDDVY");
    Quad (Lit 2836988909664580761L);
    Quad (Lit 477391620299675613L);
    Asciz ("VCAXCEWCKAQXXDDRILP");
  ];
  data "AAAAAARW" [
    Quad (Lit 1350118426586165101L);
  ];
]
let test_60_data = [Byte '\xab';Byte '\xc7';Byte '\x27';Byte '\x6f';Byte '\x86';Byte '\x9f';Byte '\x6c';Byte '\x69';Byte '\x43';Byte '\x44';Byte '\x57';Byte '\x43';Byte '\x4a';Byte '\x58';Byte '\x4f';Byte '\x58';Byte '\x56';Byte '\x50';Byte '\x48';Byte '\x4b';Byte '\x54';Byte '\x48';Byte '\x54';Byte '\x56';Byte '\x00';Byte '\x46';Byte '\x9f';Byte '\xa1';Byte '\x69';Byte '\x83';Byte '\x50';Byte '\x63';Byte '\x4f';Byte '\x43';Byte '\x46';Byte '\x44';Byte '\x41';Byte '\x4f';Byte '\x54';Byte '\x47';Byte '\x42';Byte '\x56';Byte '\x41';Byte '\x42';Byte '\x5a';Byte '\x4b';Byte '\x56';Byte '\x51';Byte '\x00';Byte '\x52';Byte '\x51';Byte '\x48';Byte '\x4e';Byte '\x4f';Byte '\x49';Byte '\x4c';Byte '\x45';Byte '\x4c';Byte '\x47';Byte '\x4e';Byte '\x56';Byte '\x43';Byte '\x53';Byte '\x51';Byte '\x4f';Byte '\x44';Byte '\x4f';Byte '\x00';Byte '\x48';Byte '\x47';Byte '\x51';Byte '\x5a';Byte '\x4c';Byte '\x5a';Byte '\x56';Byte '\x49';Byte '\x4c';Byte '\x58';Byte '\x4d';Byte '\x5a';Byte '\x50';Byte '\x4d';Byte '\x00';Byte '\x45';Byte '\x43';Byte '\x4c';Byte '\x59';Byte '\x49';Byte '\x47';Byte '\x48';Byte '\x5a';Byte '\x4c';Byte '\x45';Byte '\x53';Byte '\x42';Byte '\x48';Byte '\x4f';Byte '\x46';Byte '\x59';Byte '\x45';Byte '\x00';Byte '\x4d';Byte '\x51';Byte '\x48';Byte '\x44';Byte '\x52';Byte '\x44';Byte '\x4a';Byte '\x46';Byte '\x48';Byte '\x4a';Byte '\x51';Byte '\x52';Byte '\x44';Byte '\x58';Byte '\x54';Byte '\x00';Byte '\x51';Byte '\x68';Byte '\xe1';Byte '\x87';Byte '\x84';Byte '\xc5';Byte '\x62';Byte '\x00';Byte '\x53';Byte '\x4b';Byte '\x4b';Byte '\x47';Byte '\x43';Byte '\x50';Byte '\x52';Byte '\x4f';Byte '\x4d';Byte '\x47';Byte '\x45';Byte '\x58';Byte '\x53';Byte '\x48';Byte '\x41';Byte '\x4a';Byte '\x00';Byte '\x53';Byte '\x47';Byte '\x57';Byte '\x4a';Byte '\x46';Byte '\x42';Byte '\x4d';Byte '\x54';Byte '\x4c';Byte '\x4d';Byte '\x58';Byte '\x4c';Byte '\x44';Byte '\x44';Byte '\x56';Byte '\x59';Byte '\x00';Byte '\x99';Byte '\xb4';Byte '\x47';Byte '\xe0';Byte '\x61';Byte '\x02';Byte '\x5f';Byte '\x27';Byte '\xdd';Byte '\xd7';Byte '\xb5';Byte '\x3a';Byte '\x26';Byte '\x09';Byte '\xa0';Byte '\x06';Byte '\x56';Byte '\x43';Byte '\x41';Byte '\x58';Byte '\x43';Byte '\x45';Byte '\x57';Byte '\x43';Byte '\x4b';Byte '\x41';Byte '\x51';Byte '\x58';Byte '\x58';Byte '\x44';Byte '\x44';Byte '\x52';Byte '\x49';Byte '\x4c';Byte '\x50';Byte '\x00';Byte '\x6d';Byte '\xaf';Byte '\x60';Byte '\x45';Byte '\x8e';Byte '\x95';Byte '\xbc';Byte '\x12';]
let test_60_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400030L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400038L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400061L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000a5L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000adL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f3L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_61 = [
  data "AAAAAARX" [
    Asciz ("RFDOAASUNMARQREGIKKN");
    Quad (Lit 1543966988219573952L);
    Asciz ("OYQJEYHLUNULZMXI");
  ];
  data "AAAAAARY" [
    Quad (Lit 1518423500780452847L);
    Quad (Lit 8177604973229038916L);
    Quad (Lit 6652722775115456914L);
    Quad (Lit 2482091348241891539L);
    Asciz ("XEEPKOTZUXZ");
    Quad (Lit 7369433536737331550L);
  ];
  data "AAAAAARZ" [
    Quad (Lit 5838303863468930822L);
    Asciz ("DUMSDFKQCCPBPEYJP");
    Asciz ("VRGAOXHETUKZGDIYT");
    Quad (Lit 2190435763368418567L);
    Quad (Lit 2073762152629931138L);
  ];
  data "AAAAAASA" [
    Quad (Lit 1102670433746189054L);
    Asciz ("HBVLPUUAPPCSLDDD");
  ];
  data "AAAAAASB" [
    Asciz ("RCHLYSSRRMIOLMMSAKO");
    Asciz ("TAVMZKJZIEDWZOMAVJ");
    Asciz ("DHMMOBPDAXBN");
    Quad (Lit 2110728923482868838L);
  ];
  data "AAAAAASC" [
    Quad (Lit 2424976029705904066L);
  ];
  data "AAAAAASD" [
    Asciz ("BUTDVLHCKWYADQHKCO");
    Asciz ("PLOAAVCXFXMWJJEFU");
    Quad (Lit 1324039108160944506L);
    Quad (Lit 1968623638892844092L);
  ];
  data "AAAAAASE" [
    Quad (Lit 7169568828176432211L);
    Quad (Lit 2863415996249408274L);
    Quad (Lit 4679204216336729922L);
    Asciz ("DMLFOVNKCCH");
    Asciz ("ICZKSXYIJDTEAFFENVNB");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAARX"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAARY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAARZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAASA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAASB"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAASC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAASD"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAASE"); ~%Rax];
];
]
let test_61_data = [Byte '\x52';Byte '\x46';Byte '\x44';Byte '\x4f';Byte '\x41';Byte '\x41';Byte '\x53';Byte '\x55';Byte '\x4e';Byte '\x4d';Byte '\x41';Byte '\x52';Byte '\x51';Byte '\x52';Byte '\x45';Byte '\x47';Byte '\x49';Byte '\x4b';Byte '\x4b';Byte '\x4e';Byte '\x00';Byte '\xc0';Byte '\xe6';Byte '\xc1';Byte '\xa5';Byte '\xcb';Byte '\x45';Byte '\x6d';Byte '\x15';Byte '\x4f';Byte '\x59';Byte '\x51';Byte '\x4a';Byte '\x45';Byte '\x59';Byte '\x48';Byte '\x4c';Byte '\x55';Byte '\x4e';Byte '\x55';Byte '\x4c';Byte '\x5a';Byte '\x4d';Byte '\x58';Byte '\x49';Byte '\x00';Byte '\xef';Byte '\xbb';Byte '\x9f';Byte '\x06';Byte '\x21';Byte '\x86';Byte '\x12';Byte '\x15';Byte '\x44';Byte '\xdd';Byte '\xc8';Byte '\x76';Byte '\x65';Byte '\xb0';Byte '\x7c';Byte '\x71';Byte '\x92';Byte '\x61';Byte '\xe8';Byte '\xc7';Byte '\x1d';Byte '\x38';Byte '\x53';Byte '\x5c';Byte '\xd3';Byte '\x40';Byte '\x07';Byte '\x38';Byte '\xee';Byte '\x28';Byte '\x72';Byte '\x22';Byte '\x58';Byte '\x45';Byte '\x45';Byte '\x50';Byte '\x4b';Byte '\x4f';Byte '\x54';Byte '\x5a';Byte '\x55';Byte '\x58';Byte '\x5a';Byte '\x00';Byte '\x5e';Byte '\x49';Byte '\x14';Byte '\xb9';Byte '\xc1';Byte '\x7c';Byte '\x45';Byte '\x66';Byte '\x06';Byte '\x37';Byte '\xdb';Byte '\x60';Byte '\x6e';Byte '\xd2';Byte '\x05';Byte '\x51';Byte '\x44';Byte '\x55';Byte '\x4d';Byte '\x53';Byte '\x44';Byte '\x46';Byte '\x4b';Byte '\x51';Byte '\x43';Byte '\x43';Byte '\x50';Byte '\x42';Byte '\x50';Byte '\x45';Byte '\x59';Byte '\x4a';Byte '\x50';Byte '\x00';Byte '\x56';Byte '\x52';Byte '\x47';Byte '\x41';Byte '\x4f';Byte '\x58';Byte '\x48';Byte '\x45';Byte '\x54';Byte '\x55';Byte '\x4b';Byte '\x5a';Byte '\x47';Byte '\x44';Byte '\x49';Byte '\x59';Byte '\x54';Byte '\x00';Byte '\x07';Byte '\xdd';Byte '\xe2';Byte '\xaa';Byte '\xb8';Byte '\xfd';Byte '\x65';Byte '\x1e';Byte '\x82';Byte '\x0c';Byte '\x28';Byte '\xc8';Byte '\xb0';Byte '\x7b';Byte '\xc7';Byte '\x1c';Byte '\xfe';Byte '\x7a';Byte '\xc4';Byte '\xd3';Byte '\xea';Byte '\x78';Byte '\x4d';Byte '\x0f';Byte '\x48';Byte '\x42';Byte '\x56';Byte '\x4c';Byte '\x50';Byte '\x55';Byte '\x55';Byte '\x41';Byte '\x50';Byte '\x50';Byte '\x43';Byte '\x53';Byte '\x4c';Byte '\x44';Byte '\x44';Byte '\x44';Byte '\x00';Byte '\x52';Byte '\x43';Byte '\x48';Byte '\x4c';Byte '\x59';Byte '\x53';Byte '\x53';Byte '\x52';Byte '\x52';Byte '\x4d';Byte '\x49';Byte '\x4f';Byte '\x4c';Byte '\x4d';Byte '\x4d';Byte '\x53';Byte '\x41';Byte '\x4b';Byte '\x4f';Byte '\x00';Byte '\x54';Byte '\x41';Byte '\x56';Byte '\x4d';Byte '\x5a';Byte '\x4b';Byte '\x4a';Byte '\x5a';Byte '\x49';Byte '\x45';Byte '\x44';Byte '\x57';Byte '\x5a';Byte '\x4f';Byte '\x4d';Byte '\x41';Byte '\x56';Byte '\x4a';Byte '\x00';Byte '\x44';Byte '\x48';Byte '\x4d';Byte '\x4d';Byte '\x4f';Byte '\x42';Byte '\x50';Byte '\x44';Byte '\x41';Byte '\x58';Byte '\x42';Byte '\x4e';Byte '\x00';Byte '\x66';Byte '\xcc';Byte '\x56';Byte '\xd5';Byte '\xc5';Byte '\xd0';Byte '\x4a';Byte '\x1d';Byte '\xc2';Byte '\x1f';Byte '\x75';Byte '\xd7';Byte '\xd9';Byte '\x3e';Byte '\xa7';Byte '\x21';Byte '\x42';Byte '\x55';Byte '\x54';Byte '\x44';Byte '\x56';Byte '\x4c';Byte '\x48';Byte '\x43';Byte '\x4b';Byte '\x57';Byte '\x59';Byte '\x41';Byte '\x44';Byte '\x51';Byte '\x48';Byte '\x4b';Byte '\x43';Byte '\x4f';Byte '\x00';Byte '\x50';Byte '\x4c';Byte '\x4f';Byte '\x41';Byte '\x41';Byte '\x56';Byte '\x43';Byte '\x58';Byte '\x46';Byte '\x58';Byte '\x4d';Byte '\x57';Byte '\x4a';Byte '\x4a';Byte '\x45';Byte '\x46';Byte '\x55';Byte '\x00';Byte '\x7a';Byte '\x79';Byte '\xa8';Byte '\xc6';Byte '\x8d';Byte '\xee';Byte '\x5f';Byte '\x12';Byte '\x3c';Byte '\x14';Byte '\xa5';Byte '\xf4';Byte '\xc4';Byte '\xf4';Byte '\x51';Byte '\x1b';Byte '\x53';Byte '\x7c';Byte '\x2b';Byte '\xfc';Byte '\xdc';Byte '\x6c';Byte '\x7f';Byte '\x63';Byte '\x12';Byte '\x03';Byte '\x9e';Byte '\x74';Byte '\xad';Byte '\xe5';Byte '\xbc';Byte '\x27';Byte '\x42';Byte '\xc7';Byte '\x42';Byte '\x7a';Byte '\x71';Byte '\xdf';Byte '\xef';Byte '\x40';Byte '\x44';Byte '\x4d';Byte '\x4c';Byte '\x46';Byte '\x4f';Byte '\x56';Byte '\x4e';Byte '\x4b';Byte '\x43';Byte '\x43';Byte '\x48';Byte '\x00';Byte '\x49';Byte '\x43';Byte '\x5a';Byte '\x4b';Byte '\x53';Byte '\x58';Byte '\x59';Byte '\x49';Byte '\x4a';Byte '\x44';Byte '\x54';Byte '\x45';Byte '\x41';Byte '\x46';Byte '\x46';Byte '\x45';Byte '\x4e';Byte '\x56';Byte '\x4e';Byte '\x42';Byte '\x00';]
let test_61_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400040L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40006eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000a2L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000deL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f7L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400133L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40013bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400170L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_62 = [
  data "AAAAAASF" [
    Quad (Lit 5129742505196304451L);
    Asciz ("DIYMQMAJVJRVAULUHZ");
    Quad (Lit 6415468509585254487L);
    Asciz ("KPQKPVTNGKXJVK");
    Quad (Lit 4473581201887838667L);
  ];
  data "AAAAAASG" [
    Quad (Lit 3677106019538044042L);
    Asciz ("YXYDAWVYSJGL");
    Asciz ("BNQICBPULDQATGTUUSHR");
  ];
  data "AAAAAASH" [
    Asciz ("IJZSLJQLXZQOMD");
    Asciz ("YKBVLJJPUWJEUONCPYD");
    Quad (Lit 2204546866420853214L);
  ];
  data "AAAAAASI" [
    Asciz ("PHTKBUVEIRLYEETYR");
    Quad (Lit 8758704808368727104L);
    Asciz ("PFDYJJTUGQTCZXQVGR");
    Asciz ("JOUEILJXSQL");
    Quad (Lit 1920179855374876901L);
  ];
  data "AAAAAASJ" [
    Quad (Lit 3909087411451272273L);
    Quad (Lit 5211662501087381492L);
    Quad (Lit 2170739350405303988L);
  ];
  data "AAAAAASK" [
    Quad (Lit 3824899053889763526L);
    Quad (Lit 2582675523571127349L);
    Quad (Lit 3165274669188227783L);
    Quad (Lit 8561691212602147840L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAASF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAASG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAASH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAASI"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAASJ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAASK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAASL"); ~%Rax];
];
  data "AAAAAASL" [
    Asciz ("LOZUIGRUBXEDIH");
  ];
]
let test_62_data = [Byte '\x43';Byte '\xb8';Byte '\x72';Byte '\x43';Byte '\xa1';Byte '\x81';Byte '\x30';Byte '\x47';Byte '\x44';Byte '\x49';Byte '\x59';Byte '\x4d';Byte '\x51';Byte '\x4d';Byte '\x41';Byte '\x4a';Byte '\x56';Byte '\x4a';Byte '\x52';Byte '\x56';Byte '\x41';Byte '\x55';Byte '\x4c';Byte '\x55';Byte '\x48';Byte '\x5a';Byte '\x00';Byte '\x57';Byte '\xa8';Byte '\x88';Byte '\x6d';Byte '\x9e';Byte '\x52';Byte '\x08';Byte '\x59';Byte '\x4b';Byte '\x50';Byte '\x51';Byte '\x4b';Byte '\x50';Byte '\x56';Byte '\x54';Byte '\x4e';Byte '\x47';Byte '\x4b';Byte '\x58';Byte '\x4a';Byte '\x56';Byte '\x4b';Byte '\x00';Byte '\xcb';Byte '\xc1';Byte '\x63';Byte '\xac';Byte '\x66';Byte '\x5a';Byte '\x15';Byte '\x3e';Byte '\x8a';Byte '\x04';Byte '\x04';Byte '\x50';Byte '\x71';Byte '\xb4';Byte '\x07';Byte '\x33';Byte '\x59';Byte '\x58';Byte '\x59';Byte '\x44';Byte '\x41';Byte '\x57';Byte '\x56';Byte '\x59';Byte '\x53';Byte '\x4a';Byte '\x47';Byte '\x4c';Byte '\x00';Byte '\x42';Byte '\x4e';Byte '\x51';Byte '\x49';Byte '\x43';Byte '\x42';Byte '\x50';Byte '\x55';Byte '\x4c';Byte '\x44';Byte '\x51';Byte '\x41';Byte '\x54';Byte '\x47';Byte '\x54';Byte '\x55';Byte '\x55';Byte '\x53';Byte '\x48';Byte '\x52';Byte '\x00';Byte '\x49';Byte '\x4a';Byte '\x5a';Byte '\x53';Byte '\x4c';Byte '\x4a';Byte '\x51';Byte '\x4c';Byte '\x58';Byte '\x5a';Byte '\x51';Byte '\x4f';Byte '\x4d';Byte '\x44';Byte '\x00';Byte '\x59';Byte '\x4b';Byte '\x42';Byte '\x56';Byte '\x4c';Byte '\x4a';Byte '\x4a';Byte '\x50';Byte '\x55';Byte '\x57';Byte '\x4a';Byte '\x45';Byte '\x55';Byte '\x4f';Byte '\x4e';Byte '\x43';Byte '\x50';Byte '\x59';Byte '\x44';Byte '\x00';Byte '\xde';Byte '\x29';Byte '\xb7';Byte '\xdf';Byte '\xb1';Byte '\x1f';Byte '\x98';Byte '\x1e';Byte '\x50';Byte '\x48';Byte '\x54';Byte '\x4b';Byte '\x42';Byte '\x55';Byte '\x56';Byte '\x45';Byte '\x49';Byte '\x52';Byte '\x4c';Byte '\x59';Byte '\x45';Byte '\x45';Byte '\x54';Byte '\x59';Byte '\x52';Byte '\x00';Byte '\x40';Byte '\xe4';Byte '\x52';Byte '\x1b';Byte '\x9e';Byte '\x2b';Byte '\x8d';Byte '\x79';Byte '\x50';Byte '\x46';Byte '\x44';Byte '\x59';Byte '\x4a';Byte '\x4a';Byte '\x54';Byte '\x55';Byte '\x47';Byte '\x51';Byte '\x54';Byte '\x43';Byte '\x5a';Byte '\x58';Byte '\x51';Byte '\x56';Byte '\x47';Byte '\x52';Byte '\x00';Byte '\x4a';Byte '\x4f';Byte '\x55';Byte '\x45';Byte '\x49';Byte '\x4c';Byte '\x4a';Byte '\x58';Byte '\x53';Byte '\x51';Byte '\x4c';Byte '\x00';Byte '\xe5';Byte '\x00';Byte '\x7b';Byte '\xa8';Byte '\x67';Byte '\xd9';Byte '\xa5';Byte '\x1a';Byte '\x51';Byte '\x1c';Byte '\x81';Byte '\x1b';Byte '\x4a';Byte '\xde';Byte '\x3f';Byte '\x36';Byte '\xf4';Byte '\x87';Byte '\x89';Byte '\xa2';Byte '\x6e';Byte '\x8b';Byte '\x53';Byte '\x48';Byte '\xb4';Byte '\xce';Byte '\xde';Byte '\x28';Byte '\xf0';Byte '\x03';Byte '\x20';Byte '\x1e';Byte '\xc6';Byte '\xb8';Byte '\xd3';Byte '\xa0';Byte '\x6c';Byte '\xc5';Byte '\x14';Byte '\x35';Byte '\x35';Byte '\x94';Byte '\x8d';Byte '\x80';Byte '\xb4';Byte '\x81';Byte '\xd7';Byte '\x23';Byte '\xc7';Byte '\xa2';Byte '\x81';Byte '\x91';Byte '\x8a';Byte '\x50';Byte '\xed';Byte '\x2b';Byte '\x00';Byte '\x04';Byte '\xbc';Byte '\xcb';Byte '\xcb';Byte '\x3c';Byte '\xd1';Byte '\x76';Byte '\x4c';Byte '\x4f';Byte '\x5a';Byte '\x55';Byte '\x49';Byte '\x47';Byte '\x52';Byte '\x55';Byte '\x42';Byte '\x58';Byte '\x45';Byte '\x44';Byte '\x49';Byte '\x48';Byte '\x00';]
let test_62_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400038L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400072L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40009cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c7L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400108L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400120L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400140L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_63 = [
  data "AAAAAASM" [
    Quad (Lit 6645999067476994689L);
    Quad (Lit 3154582867528340454L);
    Quad (Lit 8112105161345479028L);
    Quad (Lit 360230059588989917L);
  ];
  data "AAAAAASN" [
    Quad (Lit 6091863113819573960L);
    Asciz ("XXRKLJSSZZL");
    Asciz ("DOVGNUJTNWCH");
    Asciz ("EEFBEPVVZZESCFVOU");
    Asciz ("YQRMAGLKWQWHZSCWUFJ");
  ];
  data "AAAAAASO" [
    Asciz ("TLOEIXLRKIAR");
  ];
  data "AAAAAASP" [
    Asciz ("CPBRFQKVHAWWIIMMZF");
    Quad (Lit 4006980362322190549L);
    Quad (Lit 7735402366977639329L);
    Asciz ("QJHIVQFKJGBDQ");
    Quad (Lit 5288369289196422217L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAASM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAASN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAASO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAASP"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAASQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAASR"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAASS"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAST"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAASU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAASV"); ~%Rax];
];
  data "AAAAAASQ" [
    Asciz ("GFTWTQZHFFXMDGW");
    Asciz ("KAEKUCIXIZWV");
    Asciz ("LDXDGFAMFVL");
    Asciz ("SMOKIQUFKFWVVLXNKFXH");
  ];
  data "AAAAAASR" [
    Asciz ("UECYDERBVOO");
    Quad (Lit 3258250426837193905L);
    Quad (Lit 2927567760981652533L);
    Quad (Lit 4014389244648578645L);
    Quad (Lit 2588452641132472831L);
  ];
  data "AAAAAASS" [
    Asciz ("JABBBSANOFLCPOLWNU");
  ];
  data "AAAAAAST" [
    Quad (Lit 6265097490494058330L);
    Quad (Lit 4866199380168254334L);
    Asciz ("SUUTORFTRUFGJJNV");
    Quad (Lit 5086475152046803444L);
  ];
  data "AAAAAASU" [
    Asciz ("ZVSSWZYRHN");
    Asciz ("YJVVFWCKZAWMUWXCVXC");
    Quad (Lit 8177988295386766424L);
    Asciz ("VQQRRYMUPCBBMAFT");
    Quad (Lit 2976934688825705620L);
    Asciz ("RVXUATVHAOBPJUY");
  ];
  data "AAAAAASV" [
    Quad (Lit 622913887204426564L);
    Quad (Lit 7533408167268729010L);
    Asciz ("XQWECDYZXUOFUUDPX");
    Asciz ("SZKOORKNOSUKCMLJBS");
    Quad (Lit 4638324121592663939L);
    Quad (Lit 1037460973322405276L);
  ];
]
let test_63_data = [Byte '\x81';Byte '\x2a';Byte '\x8b';Byte '\x9a';Byte '\xf0';Byte '\x54';Byte '\x3b';Byte '\x5c';Byte '\xe6';Byte '\x53';Byte '\x8f';Byte '\x81';Byte '\x67';Byte '\x54';Byte '\xc7';Byte '\x2b';Byte '\x74';Byte '\x31';Byte '\x9c';Byte '\x1a';Byte '\xaa';Byte '\xfc';Byte '\x93';Byte '\x70';Byte '\xdd';Byte '\x33';Byte '\x38';Byte '\xa3';Byte '\x54';Byte '\xcb';Byte '\xff';Byte '\x04';Byte '\xc8';Byte '\x4e';Byte '\x85';Byte '\xd7';Byte '\x39';Byte '\xa5';Byte '\x8a';Byte '\x54';Byte '\x58';Byte '\x58';Byte '\x52';Byte '\x4b';Byte '\x4c';Byte '\x4a';Byte '\x53';Byte '\x53';Byte '\x5a';Byte '\x5a';Byte '\x4c';Byte '\x00';Byte '\x44';Byte '\x4f';Byte '\x56';Byte '\x47';Byte '\x4e';Byte '\x55';Byte '\x4a';Byte '\x54';Byte '\x4e';Byte '\x57';Byte '\x43';Byte '\x48';Byte '\x00';Byte '\x45';Byte '\x45';Byte '\x46';Byte '\x42';Byte '\x45';Byte '\x50';Byte '\x56';Byte '\x56';Byte '\x5a';Byte '\x5a';Byte '\x45';Byte '\x53';Byte '\x43';Byte '\x46';Byte '\x56';Byte '\x4f';Byte '\x55';Byte '\x00';Byte '\x59';Byte '\x51';Byte '\x52';Byte '\x4d';Byte '\x41';Byte '\x47';Byte '\x4c';Byte '\x4b';Byte '\x57';Byte '\x51';Byte '\x57';Byte '\x48';Byte '\x5a';Byte '\x53';Byte '\x43';Byte '\x57';Byte '\x55';Byte '\x46';Byte '\x4a';Byte '\x00';Byte '\x54';Byte '\x4c';Byte '\x4f';Byte '\x45';Byte '\x49';Byte '\x58';Byte '\x4c';Byte '\x52';Byte '\x4b';Byte '\x49';Byte '\x41';Byte '\x52';Byte '\x00';Byte '\x43';Byte '\x50';Byte '\x42';Byte '\x52';Byte '\x46';Byte '\x51';Byte '\x4b';Byte '\x56';Byte '\x48';Byte '\x41';Byte '\x57';Byte '\x57';Byte '\x49';Byte '\x49';Byte '\x4d';Byte '\x4d';Byte '\x5a';Byte '\x46';Byte '\x00';Byte '\xd5';Byte '\x20';Byte '\x2e';Byte '\xde';Byte '\x68';Byte '\xa7';Byte '\x9b';Byte '\x37';Byte '\xa1';Byte '\x03';Byte '\x6b';Byte '\x06';Byte '\x78';Byte '\xab';Byte '\x59';Byte '\x6b';Byte '\x51';Byte '\x4a';Byte '\x48';Byte '\x49';Byte '\x56';Byte '\x51';Byte '\x46';Byte '\x4b';Byte '\x4a';Byte '\x47';Byte '\x42';Byte '\x44';Byte '\x51';Byte '\x00';Byte '\x49';Byte '\x44';Byte '\xa3';Byte '\x7b';Byte '\xd9';Byte '\x0f';Byte '\x64';Byte '\x49';Byte '\x47';Byte '\x46';Byte '\x54';Byte '\x57';Byte '\x54';Byte '\x51';Byte '\x5a';Byte '\x48';Byte '\x46';Byte '\x46';Byte '\x58';Byte '\x4d';Byte '\x44';Byte '\x47';Byte '\x57';Byte '\x00';Byte '\x4b';Byte '\x41';Byte '\x45';Byte '\x4b';Byte '\x55';Byte '\x43';Byte '\x49';Byte '\x58';Byte '\x49';Byte '\x5a';Byte '\x57';Byte '\x56';Byte '\x00';Byte '\x4c';Byte '\x44';Byte '\x58';Byte '\x44';Byte '\x47';Byte '\x46';Byte '\x41';Byte '\x4d';Byte '\x46';Byte '\x56';Byte '\x4c';Byte '\x00';Byte '\x53';Byte '\x4d';Byte '\x4f';Byte '\x4b';Byte '\x49';Byte '\x51';Byte '\x55';Byte '\x46';Byte '\x4b';Byte '\x46';Byte '\x57';Byte '\x56';Byte '\x56';Byte '\x4c';Byte '\x58';Byte '\x4e';Byte '\x4b';Byte '\x46';Byte '\x58';Byte '\x48';Byte '\x00';Byte '\x55';Byte '\x45';Byte '\x43';Byte '\x59';Byte '\x44';Byte '\x45';Byte '\x52';Byte '\x42';Byte '\x56';Byte '\x4f';Byte '\x4f';Byte '\x00';Byte '\xb1';Byte '\x54';Byte '\xe5';Byte '\x10';Byte '\x80';Byte '\xa1';Byte '\x37';Byte '\x2d';Byte '\x35';Byte '\x74';Byte '\x32';Byte '\x21';Byte '\x5e';Byte '\xcf';Byte '\xa0';Byte '\x28';Byte '\x55';Byte '\x5e';Byte '\x6d';Byte '\xb5';Byte '\xbf';Byte '\xf9';Byte '\xb5';Byte '\x37';Byte '\xff';Byte '\x69';Byte '\x9f';Byte '\x80';Byte '\xf6';Byte '\x07';Byte '\xec';Byte '\x23';Byte '\x4a';Byte '\x41';Byte '\x42';Byte '\x42';Byte '\x42';Byte '\x53';Byte '\x41';Byte '\x4e';Byte '\x4f';Byte '\x46';Byte '\x4c';Byte '\x43';Byte '\x50';Byte '\x4f';Byte '\x4c';Byte '\x57';Byte '\x4e';Byte '\x55';Byte '\x00';Byte '\x5a';Byte '\xef';Byte '\x16';Byte '\x44';Byte '\xf9';Byte '\x18';Byte '\xf2';Byte '\x56';Byte '\x7e';Byte '\xa3';Byte '\x27';Byte '\xd5';Byte '\x8d';Byte '\x36';Byte '\x88';Byte '\x43';Byte '\x53';Byte '\x55';Byte '\x55';Byte '\x54';Byte '\x4f';Byte '\x52';Byte '\x46';Byte '\x54';Byte '\x52';Byte '\x55';Byte '\x46';Byte '\x47';Byte '\x4a';Byte '\x4a';Byte '\x4e';Byte '\x56';Byte '\x00';Byte '\xf4';Byte '\xc9';Byte '\x99';Byte '\x94';Byte '\x33';Byte '\xca';Byte '\x96';Byte '\x46';Byte '\x5a';Byte '\x56';Byte '\x53';Byte '\x53';Byte '\x57';Byte '\x5a';Byte '\x59';Byte '\x52';Byte '\x48';Byte '\x4e';Byte '\x00';Byte '\x59';Byte '\x4a';Byte '\x56';Byte '\x56';Byte '\x46';Byte '\x57';Byte '\x43';Byte '\x4b';Byte '\x5a';Byte '\x41';Byte '\x57';Byte '\x4d';Byte '\x55';Byte '\x57';Byte '\x58';Byte '\x43';Byte '\x56';Byte '\x58';Byte '\x43';Byte '\x00';Byte '\x58';Byte '\x9c';Byte '\xd4';Byte '\x9b';Byte '\x06';Byte '\x0d';Byte '\x7e';Byte '\x71';Byte '\x56';Byte '\x51';Byte '\x51';Byte '\x52';Byte '\x52';Byte '\x59';Byte '\x4d';Byte '\x55';Byte '\x50';Byte '\x43';Byte '\x42';Byte '\x42';Byte '\x4d';Byte '\x41';Byte '\x46';Byte '\x54';Byte '\x00';Byte '\x94';Byte '\x84';Byte '\xfe';Byte '\xb6';Byte '\x53';Byte '\x32';Byte '\x50';Byte '\x29';Byte '\x52';Byte '\x56';Byte '\x58';Byte '\x55';Byte '\x41';Byte '\x54';Byte '\x56';Byte '\x48';Byte '\x41';Byte '\x4f';Byte '\x42';Byte '\x50';Byte '\x4a';Byte '\x55';Byte '\x59';Byte '\x00';Byte '\x44';Byte '\x43';Byte '\x7a';Byte '\x4c';Byte '\xe1';Byte '\x08';Byte '\xa5';Byte '\x08';Byte '\xb2';Byte '\x40';Byte '\x14';Byte '\x7e';Byte '\xd0';Byte '\x0a';Byte '\x8c';Byte '\x68';Byte '\x58';Byte '\x51';Byte '\x57';Byte '\x45';Byte '\x43';Byte '\x44';Byte '\x59';Byte '\x5a';Byte '\x58';Byte '\x55';Byte '\x4f';Byte '\x46';Byte '\x55';Byte '\x55';Byte '\x44';Byte '\x50';Byte '\x58';Byte '\x00';Byte '\x53';Byte '\x5a';Byte '\x4b';Byte '\x4f';Byte '\x4f';Byte '\x52';Byte '\x4b';Byte '\x4e';Byte '\x4f';Byte '\x53';Byte '\x55';Byte '\x4b';Byte '\x43';Byte '\x4d';Byte '\x4c';Byte '\x4a';Byte '\x42';Byte '\x53';Byte '\x00';Byte '\x83';Byte '\x0f';Byte '\xa8';Byte '\xb4';Byte '\x36';Byte '\xa3';Byte '\x5e';Byte '\x40';Byte '\x9c';Byte '\x85';Byte '\x36';Byte '\x2f';Byte '\x42';Byte '\xcd';Byte '\x65';Byte '\x0e';]
let test_63_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400050L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400070L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000b7L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c4L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000fdL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40013bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400167L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40017aL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001a3L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001f3L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_64 = [
  data "AAAAAASW" [
    Asciz ("QPHCUKHPANRBWBL");
    Quad (Lit 6040363185370228438L);
    Quad (Lit 308568181651472275L);
    Asciz ("WHFAKNALCQ");
    Quad (Lit 8854359730895837765L);
    Quad (Lit 56759294661273746L);
  ];
  data "AAAAAASX" [
    Asciz ("MQTYWZQSXDQLN");
    Quad (Lit 1353763411904526569L);
    Quad (Lit 1160676627451000227L);
  ];
  data "AAAAAASY" [
    Quad (Lit 5071321175796608379L);
    Asciz ("UHGPFXWGQEAAH");
    Quad (Lit 3080123030368364754L);
  ];
  data "AAAAAASZ" [
    Quad (Lit 6338581286031126166L);
  ];
  data "AAAAAATA" [
    Asciz ("AOPPDTPSQGBBJ");
    Asciz ("VJNHBBJGTKCC");
    Quad (Lit 3505077923662419421L);
    Asciz ("FNWTOSJHVCZPYKRH");
    Quad (Lit 4139050793719267548L);
    Quad (Lit 7596312194841235901L);
  ];
  data "AAAAAATB" [
    Quad (Lit 8117887139542947825L);
    Asciz ("BBTLUTQMBDMI");
    Quad (Lit 1524962650923143412L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAASW"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAASX"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAASY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAASZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAATA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAATB"); ~%Rax];
];
]
let test_64_data = [Byte '\x51';Byte '\x50';Byte '\x48';Byte '\x43';Byte '\x55';Byte '\x4b';Byte '\x48';Byte '\x50';Byte '\x41';Byte '\x4e';Byte '\x52';Byte '\x42';Byte '\x57';Byte '\x42';Byte '\x4c';Byte '\x00';Byte '\xd6';Byte '\xe6';Byte '\x56';Byte '\x5a';Byte '\x50';Byte '\xae';Byte '\xd3';Byte '\x53';Byte '\x93';Byte '\xff';Byte '\x52';Byte '\x58';Byte '\x20';Byte '\x41';Byte '\x48';Byte '\x04';Byte '\x57';Byte '\x48';Byte '\x46';Byte '\x41';Byte '\x4b';Byte '\x4e';Byte '\x41';Byte '\x4c';Byte '\x43';Byte '\x51';Byte '\x00';Byte '\x45';Byte '\xda';Byte '\x91';Byte '\x49';Byte '\x43';Byte '\x01';Byte '\xe1';Byte '\x7a';Byte '\x92';Byte '\xa8';Byte '\xfc';Byte '\x1b';Byte '\x47';Byte '\xa6';Byte '\xc9';Byte '\x00';Byte '\x4d';Byte '\x51';Byte '\x54';Byte '\x59';Byte '\x57';Byte '\x5a';Byte '\x51';Byte '\x53';Byte '\x58';Byte '\x44';Byte '\x51';Byte '\x4c';Byte '\x4e';Byte '\x00';Byte '\xe9';Byte '\x78';Byte '\x7d';Byte '\x8c';Byte '\xa6';Byte '\x88';Byte '\xc9';Byte '\x12';Byte '\xa3';Byte '\xb5';Byte '\x50';Byte '\x3e';Byte '\x3e';Byte '\x8d';Byte '\x1b';Byte '\x10';Byte '\x7b';Byte '\xed';Byte '\x45';Byte '\x89';Byte '\xbd';Byte '\xf3';Byte '\x60';Byte '\x46';Byte '\x55';Byte '\x48';Byte '\x47';Byte '\x50';Byte '\x46';Byte '\x58';Byte '\x57';Byte '\x47';Byte '\x51';Byte '\x45';Byte '\x41';Byte '\x41';Byte '\x48';Byte '\x00';Byte '\xd2';Byte '\x28';Byte '\x9b';Byte '\xb1';Byte '\x93';Byte '\xcb';Byte '\xbe';Byte '\x2a';Byte '\x96';Byte '\xee';Byte '\xd2';Byte '\xad';Byte '\x18';Byte '\x2a';Byte '\xf7';Byte '\x57';Byte '\x41';Byte '\x4f';Byte '\x50';Byte '\x50';Byte '\x44';Byte '\x54';Byte '\x50';Byte '\x53';Byte '\x51';Byte '\x47';Byte '\x42';Byte '\x42';Byte '\x4a';Byte '\x00';Byte '\x56';Byte '\x4a';Byte '\x4e';Byte '\x48';Byte '\x42';Byte '\x42';Byte '\x4a';Byte '\x47';Byte '\x54';Byte '\x4b';Byte '\x43';Byte '\x43';Byte '\x00';Byte '\xdd';Byte '\x55';Byte '\xf6';Byte '\x05';Byte '\xcd';Byte '\x89';Byte '\xa4';Byte '\x30';Byte '\x46';Byte '\x4e';Byte '\x57';Byte '\x54';Byte '\x4f';Byte '\x53';Byte '\x4a';Byte '\x48';Byte '\x56';Byte '\x43';Byte '\x5a';Byte '\x50';Byte '\x59';Byte '\x4b';Byte '\x52';Byte '\x48';Byte '\x00';Byte '\xdc';Byte '\x80';Byte '\xef';Byte '\x6a';Byte '\xc4';Byte '\xdc';Byte '\x70';Byte '\x39';Byte '\xbd';Byte '\xd1';Byte '\x7a';Byte '\xb8';Byte '\xb1';Byte '\x85';Byte '\x6b';Byte '\x69';Byte '\xf1';Byte '\x57';Byte '\x2b';Byte '\xcf';Byte '\x57';Byte '\x87';Byte '\xa8';Byte '\x70';Byte '\x42';Byte '\x42';Byte '\x54';Byte '\x4c';Byte '\x55';Byte '\x54';Byte '\x51';Byte '\x4d';Byte '\x42';Byte '\x44';Byte '\x4d';Byte '\x49';Byte '\x00';Byte '\xf4';Byte '\x10';Byte '\x03';Byte '\x90';Byte '\x73';Byte '\xc1';Byte '\x29';Byte '\x15';]
let test_64_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400030L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40006bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400089L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000a7L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000afL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f3L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_65 = [
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAATC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAATD"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAATE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAATF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAATG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAATH"); ~%Rax];
];
  data "AAAAAATC" [
    Quad (Lit 6927073648613399046L);
    Asciz ("LFFWMEEIKVU");
    Quad (Lit 7027491588567892895L);
  ];
  data "AAAAAATD" [
    Asciz ("WWPXBUMDLNHTJJBYTTVQ");
    Asciz ("XCROCRAHZYBR");
    Asciz ("VQGDYIREWQOWGRXUNIMP");
    Asciz ("SAJLABNZBKJ");
  ];
  data "AAAAAATE" [
    Quad (Lit 8806241590016328579L);
  ];
  data "AAAAAATF" [
    Quad (Lit 8931200326538404475L);
    Quad (Lit 557596315539218576L);
    Asciz ("KXKETTQJVARZDEXWB");
    Quad (Lit 1627379550154101695L);
    Asciz ("SXCDVFPGNTILCXC");
  ];
  data "AAAAAATG" [
    Quad (Lit 4075434380432302245L);
    Quad (Lit 1780928074000058410L);
    Asciz ("SUWKHETTJGCKVJGEL");
    Quad (Lit 594655455683549937L);
  ];
  data "AAAAAATH" [
    Asciz ("TVDELOUTMLAXYFYDFJI");
  ];
]
let test_65_data = [Byte '\x06';Byte '\x1a';Byte '\x92';Byte '\x3e';Byte '\xc8';Byte '\xe8';Byte '\x21';Byte '\x60';Byte '\x4c';Byte '\x46';Byte '\x46';Byte '\x57';Byte '\x4d';Byte '\x45';Byte '\x45';Byte '\x49';Byte '\x4b';Byte '\x56';Byte '\x55';Byte '\x00';Byte '\x9f';Byte '\x83';Byte '\xa2';Byte '\xd6';Byte '\x5d';Byte '\xaa';Byte '\x86';Byte '\x61';Byte '\x57';Byte '\x57';Byte '\x50';Byte '\x58';Byte '\x42';Byte '\x55';Byte '\x4d';Byte '\x44';Byte '\x4c';Byte '\x4e';Byte '\x48';Byte '\x54';Byte '\x4a';Byte '\x4a';Byte '\x42';Byte '\x59';Byte '\x54';Byte '\x54';Byte '\x56';Byte '\x51';Byte '\x00';Byte '\x58';Byte '\x43';Byte '\x52';Byte '\x4f';Byte '\x43';Byte '\x52';Byte '\x41';Byte '\x48';Byte '\x5a';Byte '\x59';Byte '\x42';Byte '\x52';Byte '\x00';Byte '\x56';Byte '\x51';Byte '\x47';Byte '\x44';Byte '\x59';Byte '\x49';Byte '\x52';Byte '\x45';Byte '\x57';Byte '\x51';Byte '\x4f';Byte '\x57';Byte '\x47';Byte '\x52';Byte '\x58';Byte '\x55';Byte '\x4e';Byte '\x49';Byte '\x4d';Byte '\x50';Byte '\x00';Byte '\x53';Byte '\x41';Byte '\x4a';Byte '\x4c';Byte '\x41';Byte '\x42';Byte '\x4e';Byte '\x5a';Byte '\x42';Byte '\x4b';Byte '\x4a';Byte '\x00';Byte '\x83';Byte '\xc3';Byte '\x31';Byte '\x93';Byte '\x11';Byte '\x0e';Byte '\x36';Byte '\x7a';Byte '\x7b';Byte '\xa2';Byte '\x2c';Byte '\xa1';Byte '\x60';Byte '\xff';Byte '\xf1';Byte '\x7b';Byte '\x90';Byte '\x20';Byte '\xc8';Byte '\x0b';Byte '\xe5';Byte '\xfa';Byte '\xbc';Byte '\x07';Byte '\x4b';Byte '\x58';Byte '\x4b';Byte '\x45';Byte '\x54';Byte '\x54';Byte '\x51';Byte '\x4a';Byte '\x56';Byte '\x41';Byte '\x52';Byte '\x5a';Byte '\x44';Byte '\x45';Byte '\x58';Byte '\x57';Byte '\x42';Byte '\x00';Byte '\xbf';Byte '\x93';Byte '\xab';Byte '\x21';Byte '\x14';Byte '\x9d';Byte '\x95';Byte '\x16';Byte '\x53';Byte '\x58';Byte '\x43';Byte '\x44';Byte '\x56';Byte '\x46';Byte '\x50';Byte '\x47';Byte '\x4e';Byte '\x54';Byte '\x49';Byte '\x4c';Byte '\x43';Byte '\x58';Byte '\x43';Byte '\x00';Byte '\xa5';Byte '\xe0';Byte '\x14';Byte '\xf7';Byte '\xf9';Byte '\xd9';Byte '\x8e';Byte '\x38';Byte '\x2a';Byte '\x48';Byte '\x4b';Byte '\xc5';Byte '\xa5';Byte '\x20';Byte '\xb7';Byte '\x18';Byte '\x53';Byte '\x55';Byte '\x57';Byte '\x4b';Byte '\x48';Byte '\x45';Byte '\x54';Byte '\x54';Byte '\x4a';Byte '\x47';Byte '\x43';Byte '\x4b';Byte '\x56';Byte '\x4a';Byte '\x47';Byte '\x45';Byte '\x4c';Byte '\x00';Byte '\xf1';Byte '\x1a';Byte '\xc4';Byte '\x7f';Byte '\xfc';Byte '\xa3';Byte '\x40';Byte '\x08';Byte '\x54';Byte '\x56';Byte '\x44';Byte '\x45';Byte '\x4c';Byte '\x4f';Byte '\x55';Byte '\x54';Byte '\x4d';Byte '\x4c';Byte '\x41';Byte '\x58';Byte '\x59';Byte '\x46';Byte '\x59';Byte '\x44';Byte '\x46';Byte '\x4a';Byte '\x49';Byte '\x00';]
let test_65_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400030L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40004cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40008fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400097L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000d1L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000fbL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_66 = [
  data "AAAAAATI" [
    Asciz ("MCEFESIJACZKEH");
    Quad (Lit 2604671024151152490L);
    Quad (Lit 1220613768966708290L);
  ];
  data "AAAAAATJ" [
    Quad (Lit 410179514559433357L);
    Quad (Lit 6512777723497883069L);
    Quad (Lit 32588406530020811L);
  ];
  data "AAAAAATK" [
    Quad (Lit 8456390584082577974L);
    Quad (Lit 997009643024352805L);
    Quad (Lit 3381138244850148038L);
    Quad (Lit 9165459575989712470L);
  ];
  data "AAAAAATL" [
    Asciz ("PMBEKEBTWPG");
    Asciz ("PNUFLDINPKNY");
    Quad (Lit 7376798445078976195L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAATI"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAATJ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAATK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAATL"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAATM"); ~%Rax];
];
  data "AAAAAATM" [
    Quad (Lit 6771263775746719314L);
    Quad (Lit 4211360884965219449L);
    Asciz ("YCCGWGEYOWNNCRXBS");
    Asciz ("VVQCUNQNSQFD");
    Quad (Lit 7613988933963582767L);
    Quad (Lit 1300700668461933219L);
  ];
]
let test_66_data = [Byte '\x4d';Byte '\x43';Byte '\x45';Byte '\x46';Byte '\x45';Byte '\x53';Byte '\x49';Byte '\x4a';Byte '\x41';Byte '\x43';Byte '\x5a';Byte '\x4b';Byte '\x45';Byte '\x48';Byte '\x00';Byte '\x6a';Byte '\x47';Byte '\x48';Byte '\x0f';Byte '\x7f';Byte '\xa6';Byte '\x25';Byte '\x24';Byte '\x42';Byte '\x1c';Byte '\x36';Byte '\x7b';Byte '\xc1';Byte '\x7d';Byte '\xf0';Byte '\x10';Byte '\x8d';Byte '\x0a';Byte '\x75';Byte '\x63';Byte '\x18';Byte '\x40';Byte '\xb1';Byte '\x05';Byte '\xbd';Byte '\x25';Byte '\x2b';Byte '\x56';Byte '\xd5';Byte '\x08';Byte '\x62';Byte '\x5a';Byte '\xcb';Byte '\x95';Byte '\x04';Byte '\xab';Byte '\xfb';Byte '\xc6';Byte '\x73';Byte '\x00';Byte '\x36';Byte '\x3a';Byte '\x33';Byte '\xae';Byte '\x6e';Byte '\x22';Byte '\x5b';Byte '\x75';Byte '\x25';Byte '\x06';Byte '\x1b';Byte '\xea';Byte '\xfc';Byte '\x16';Byte '\xd6';Byte '\x0d';Byte '\xc6';Byte '\xe2';Byte '\xc7';Byte '\xd4';Byte '\x51';Byte '\x37';Byte '\xec';Byte '\x2e';Byte '\x56';Byte '\xb6';Byte '\x11';Byte '\x76';Byte '\xec';Byte '\x40';Byte '\x32';Byte '\x7f';Byte '\x50';Byte '\x4d';Byte '\x42';Byte '\x45';Byte '\x4b';Byte '\x45';Byte '\x42';Byte '\x54';Byte '\x57';Byte '\x50';Byte '\x47';Byte '\x00';Byte '\x50';Byte '\x4e';Byte '\x55';Byte '\x46';Byte '\x4c';Byte '\x44';Byte '\x49';Byte '\x4e';Byte '\x50';Byte '\x4b';Byte '\x4e';Byte '\x59';Byte '\x00';Byte '\xc3';Byte '\x16';Byte '\x96';Byte '\x12';Byte '\x1a';Byte '\xa7';Byte '\x5f';Byte '\x66';Byte '\x52';Byte '\x7e';Byte '\xda';Byte '\x41';Byte '\x87';Byte '\x5c';Byte '\xf8';Byte '\x5d';Byte '\x79';Byte '\x9c';Byte '\x53';Byte '\x81';Byte '\x69';Byte '\xc2';Byte '\x71';Byte '\x3a';Byte '\x59';Byte '\x43';Byte '\x43';Byte '\x47';Byte '\x57';Byte '\x47';Byte '\x45';Byte '\x59';Byte '\x4f';Byte '\x57';Byte '\x4e';Byte '\x4e';Byte '\x43';Byte '\x52';Byte '\x58';Byte '\x42';Byte '\x53';Byte '\x00';Byte '\x56';Byte '\x56';Byte '\x51';Byte '\x43';Byte '\x55';Byte '\x4e';Byte '\x51';Byte '\x4e';Byte '\x53';Byte '\x51';Byte '\x46';Byte '\x44';Byte '\x00';Byte '\x2f';Byte '\x8d';Byte '\xa7';Byte '\x44';Byte '\x98';Byte '\x52';Byte '\xaa';Byte '\x69';Byte '\xa3';Byte '\x62';Byte '\xc9';Byte '\xd6';Byte '\x5d';Byte '\x04';Byte '\x0d';Byte '\x12';]
let test_66_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400028L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400047L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40005fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40007fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000a0L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_67 = [
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAATN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAATO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAATP"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAATQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAATR"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAATS"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAATT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAATU"); ~%Rax];
];
  data "AAAAAATN" [
    Asciz ("WYFWVCUECBLXK");
    Quad (Lit 2453082143136032605L);
    Quad (Lit 988971619089763181L);
    Asciz ("WFSHFHLZQI");
    Quad (Lit 3984917343658187098L);
    Quad (Lit 5287115417025409668L);
  ];
  data "AAAAAATO" [
    Asciz ("HYDZSFHVKXJHGHT");
    Quad (Lit 8504783312802706280L);
    Quad (Lit 4356281344844926254L);
    Quad (Lit 3278168127273770556L);
  ];
  data "AAAAAATP" [
    Asciz ("WMGSUWSLRA");
    Asciz ("VRSGJUIZPLQ");
    Asciz ("JYCXUWPMST");
    Asciz ("OXNBVQWDLEZPSRQTYUH");
    Quad (Lit 4548600069502044808L);
    Quad (Lit 1778301299540579639L);
  ];
  data "AAAAAATQ" [
    Asciz ("KALHAYJCIBCJOSQ");
  ];
  data "AAAAAATR" [
    Asciz ("SZBGXJHPBKU");
    Quad (Lit 5224678356435914377L);
    Asciz ("SMRNZNPHJQMSDKX");
    Quad (Lit 5986503555009203383L);
    Quad (Lit 2985760378374477232L);
  ];
  data "AAAAAATS" [
    Quad (Lit 7481086653850793414L);
  ];
  data "AAAAAATT" [
    Asciz ("NUQNUGQQYCQR");
    Asciz ("VKVJSNULKCNSDHII");
    Quad (Lit 1503943733001347423L);
    Quad (Lit 7776925472462892808L);
  ];
  data "AAAAAATU" [
    Asciz ("RUXBCDBGSZQMCG");
    Quad (Lit 8662985510499967301L);
    Quad (Lit 3583040230614504850L);
    Asciz ("FCAYENSPTVJBVNS");
    Quad (Lit 8707024618983655587L);
  ];
]
let test_67_data = [Byte '\x57';Byte '\x59';Byte '\x46';Byte '\x57';Byte '\x56';Byte '\x43';Byte '\x55';Byte '\x45';Byte '\x43';Byte '\x42';Byte '\x4c';Byte '\x58';Byte '\x4b';Byte '\x00';Byte '\x5d';Byte '\x27';Byte '\x7a';Byte '\x52';Byte '\x36';Byte '\x19';Byte '\x0b';Byte '\x22';Byte '\x6d';Byte '\xcb';Byte '\xc9';Byte '\xa0';Byte '\x72';Byte '\x88';Byte '\xb9';Byte '\x0d';Byte '\x57';Byte '\x46';Byte '\x53';Byte '\x48';Byte '\x46';Byte '\x48';Byte '\x4c';Byte '\x5a';Byte '\x51';Byte '\x49';Byte '\x00';Byte '\x5a';Byte '\x19';Byte '\x0a';Byte '\x08';Byte '\x36';Byte '\x45';Byte '\x4d';Byte '\x37';Byte '\x84';Byte '\x72';Byte '\x4a';Byte '\x9e';Byte '\x75';Byte '\x9b';Byte '\x5f';Byte '\x49';Byte '\x48';Byte '\x59';Byte '\x44';Byte '\x5a';Byte '\x53';Byte '\x46';Byte '\x48';Byte '\x56';Byte '\x4b';Byte '\x58';Byte '\x4a';Byte '\x48';Byte '\x47';Byte '\x48';Byte '\x54';Byte '\x00';Byte '\x68';Byte '\x73';Byte '\x46';Byte '\xdb';Byte '\x5c';Byte '\x0f';Byte '\x07';Byte '\x76';Byte '\x2e';Byte '\x8d';Byte '\x24';Byte '\x75';Byte '\xcd';Byte '\x9e';Byte '\x74';Byte '\x3c';Byte '\x3c';Byte '\x1e';Byte '\x29';Byte '\x14';Byte '\x8b';Byte '\x64';Byte '\x7e';Byte '\x2d';Byte '\x57';Byte '\x4d';Byte '\x47';Byte '\x53';Byte '\x55';Byte '\x57';Byte '\x53';Byte '\x4c';Byte '\x52';Byte '\x41';Byte '\x00';Byte '\x56';Byte '\x52';Byte '\x53';Byte '\x47';Byte '\x4a';Byte '\x55';Byte '\x49';Byte '\x5a';Byte '\x50';Byte '\x4c';Byte '\x51';Byte '\x00';Byte '\x4a';Byte '\x59';Byte '\x43';Byte '\x58';Byte '\x55';Byte '\x57';Byte '\x50';Byte '\x4d';Byte '\x53';Byte '\x54';Byte '\x00';Byte '\x4f';Byte '\x58';Byte '\x4e';Byte '\x42';Byte '\x56';Byte '\x51';Byte '\x57';Byte '\x44';Byte '\x4c';Byte '\x45';Byte '\x5a';Byte '\x50';Byte '\x53';Byte '\x52';Byte '\x51';Byte '\x54';Byte '\x59';Byte '\x55';Byte '\x48';Byte '\x00';Byte '\x88';Byte '\x8a';Byte '\xfc';Byte '\xe7';Byte '\xa9';Byte '\xdf';Byte '\x1f';Byte '\x3f';Byte '\x37';Byte '\x55';Byte '\xbb';Byte '\x2e';Byte '\x9c';Byte '\xcb';Byte '\xad';Byte '\x18';Byte '\x4b';Byte '\x41';Byte '\x4c';Byte '\x48';Byte '\x41';Byte '\x59';Byte '\x4a';Byte '\x43';Byte '\x49';Byte '\x42';Byte '\x43';Byte '\x4a';Byte '\x4f';Byte '\x53';Byte '\x51';Byte '\x00';Byte '\x53';Byte '\x5a';Byte '\x42';Byte '\x47';Byte '\x58';Byte '\x4a';Byte '\x48';Byte '\x50';Byte '\x42';Byte '\x4b';Byte '\x55';Byte '\x00';Byte '\x89';Byte '\xce';Byte '\x08';Byte '\x9d';Byte '\x48';Byte '\xc9';Byte '\x81';Byte '\x48';Byte '\x53';Byte '\x4d';Byte '\x52';Byte '\x4e';Byte '\x5a';Byte '\x4e';Byte '\x50';Byte '\x48';Byte '\x4a';Byte '\x51';Byte '\x4d';Byte '\x53';Byte '\x44';Byte '\x4b';Byte '\x58';Byte '\x00';Byte '\xb7';Byte '\xcc';Byte '\xef';Byte '\xf2';Byte '\x43';Byte '\x55';Byte '\x14';Byte '\x53';Byte '\xb0';Byte '\x55';Byte '\x72';Byte '\xb1';Byte '\x3e';Byte '\x8d';Byte '\x6f';Byte '\x29';Byte '\xc6';Byte '\x35';Byte '\xb1';Byte '\xd8';Byte '\xac';Byte '\x28';Byte '\xd2';Byte '\x67';Byte '\x4e';Byte '\x55';Byte '\x51';Byte '\x4e';Byte '\x55';Byte '\x47';Byte '\x51';Byte '\x51';Byte '\x59';Byte '\x43';Byte '\x51';Byte '\x52';Byte '\x00';Byte '\x56';Byte '\x4b';Byte '\x56';Byte '\x4a';Byte '\x53';Byte '\x4e';Byte '\x55';Byte '\x4c';Byte '\x4b';Byte '\x43';Byte '\x4e';Byte '\x53';Byte '\x44';Byte '\x48';Byte '\x49';Byte '\x49';Byte '\x00';Byte '\x5f';Byte '\x61';Byte '\xb8';Byte '\x5f';Byte '\xdb';Byte '\x14';Byte '\xdf';Byte '\x14';Byte '\x08';Byte '\x6f';Byte '\xd6';Byte '\x66';Byte '\x83';Byte '\x30';Byte '\xed';Byte '\x6b';Byte '\x52';Byte '\x55';Byte '\x58';Byte '\x42';Byte '\x43';Byte '\x44';Byte '\x42';Byte '\x47';Byte '\x53';Byte '\x5a';Byte '\x51';Byte '\x4d';Byte '\x43';Byte '\x47';Byte '\x00';Byte '\x45';Byte '\xe1';Byte '\xb4';Byte '\x5f';Byte '\x6c';Byte '\x1b';Byte '\x39';Byte '\x78';Byte '\x92';Byte '\x15';Byte '\xb6';Byte '\x21';Byte '\x1b';Byte '\x84';Byte '\xb9';Byte '\x31';Byte '\x46';Byte '\x43';Byte '\x41';Byte '\x59';Byte '\x45';Byte '\x4e';Byte '\x53';Byte '\x50';Byte '\x54';Byte '\x56';Byte '\x4a';Byte '\x42';Byte '\x56';Byte '\x4e';Byte '\x53';Byte '\x00';Byte '\xa3';Byte '\x08';Byte '\x1a';Byte '\x59';Byte '\xc2';Byte '\x90';Byte '\xd5';Byte '\x78';]
let test_67_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400040L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400079L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000a1L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000e7L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f7L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40012bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400133L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400161L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_68 = [
  data "AAAAAATV" [
    Quad (Lit 8943180794505021717L);
    Asciz ("YMQJQFAPWNUMIZTCV");
    Asciz ("GPCHDMUFPKXXGP");
    Asciz ("MIMHWSILAUECFNVO");
    Asciz ("XDUOLMLKLY");
    Quad (Lit 7722349679676121306L);
  ];
  data "AAAAAATW" [
    Asciz ("CJWLQFXKKFBFNTZDBJI");
    Quad (Lit 6069422151040478134L);
    Quad (Lit 1288272909521771995L);
    Quad (Lit 7949794368504221558L);
  ];
  data "AAAAAATX" [
    Quad (Lit 7193840704278418995L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAATV"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAATW"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAATX"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAATY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAATZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAUA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAUB"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAUC"); ~%Rax];
];
  data "AAAAAATY" [
    Quad (Lit 7573698241893560707L);
  ];
  data "AAAAAATZ" [
    Quad (Lit 2623461721603927576L);
    Quad (Lit 1617115801352710307L);
    Quad (Lit 3941089444016239856L);
  ];
  data "AAAAAAUA" [
    Quad (Lit 4695854519966461267L);
    Asciz ("EJVLHZFSCL");
  ];
  data "AAAAAAUB" [
    Asciz ("XGHBGDDPJEXSVNJB");
    Asciz ("PRTOKTOORH");
  ];
  data "AAAAAAUC" [
    Asciz ("JPNBGZXLGPKISZIVAKT");
    Asciz ("JVCTHWUPRRTD");
    Asciz ("WYQORIVLNPRIIFH");
    Quad (Lit 6669607674135729656L);
    Asciz ("EFHODXADOSSPAH");
  ];
]
let test_68_data = [Byte '\x15';Byte '\x49';Byte '\x91';Byte '\xb2';Byte '\x8c';Byte '\x8f';Byte '\x1c';Byte '\x7c';Byte '\x59';Byte '\x4d';Byte '\x51';Byte '\x4a';Byte '\x51';Byte '\x46';Byte '\x41';Byte '\x50';Byte '\x57';Byte '\x4e';Byte '\x55';Byte '\x4d';Byte '\x49';Byte '\x5a';Byte '\x54';Byte '\x43';Byte '\x56';Byte '\x00';Byte '\x47';Byte '\x50';Byte '\x43';Byte '\x48';Byte '\x44';Byte '\x4d';Byte '\x55';Byte '\x46';Byte '\x50';Byte '\x4b';Byte '\x58';Byte '\x58';Byte '\x47';Byte '\x50';Byte '\x00';Byte '\x4d';Byte '\x49';Byte '\x4d';Byte '\x48';Byte '\x57';Byte '\x53';Byte '\x49';Byte '\x4c';Byte '\x41';Byte '\x55';Byte '\x45';Byte '\x43';Byte '\x46';Byte '\x4e';Byte '\x56';Byte '\x4f';Byte '\x00';Byte '\x58';Byte '\x44';Byte '\x55';Byte '\x4f';Byte '\x4c';Byte '\x4d';Byte '\x4c';Byte '\x4b';Byte '\x4c';Byte '\x59';Byte '\x00';Byte '\xda';Byte '\x60';Byte '\x72';Byte '\x70';Byte '\x1e';Byte '\x4c';Byte '\x2b';Byte '\x6b';Byte '\x43';Byte '\x4a';Byte '\x57';Byte '\x4c';Byte '\x51';Byte '\x46';Byte '\x58';Byte '\x4b';Byte '\x4b';Byte '\x46';Byte '\x42';Byte '\x46';Byte '\x4e';Byte '\x54';Byte '\x5a';Byte '\x44';Byte '\x42';Byte '\x4a';Byte '\x49';Byte '\x00';Byte '\xb6';Byte '\xab';Byte '\xa7';Byte '\x08';Byte '\x4a';Byte '\xeb';Byte '\x3a';Byte '\x54';Byte '\xdb';Byte '\xdd';Byte '\xcd';Byte '\xb9';Byte '\x62';Byte '\xdd';Byte '\xe0';Byte '\x11';Byte '\x76';Byte '\x4f';Byte '\x18';Byte '\xbc';Byte '\xdb';Byte '\x57';Byte '\x53';Byte '\x6e';Byte '\x33';Byte '\xd6';Byte '\x42';Byte '\x85';Byte '\x01';Byte '\xa8';Byte '\xd5';Byte '\x63';Byte '\x83';Byte '\xf1';Byte '\x10';Byte '\x80';Byte '\x6c';Byte '\x2e';Byte '\x1b';Byte '\x69';Byte '\x18';Byte '\x6e';Byte '\x09';Byte '\x3e';Byte '\x89';Byte '\x68';Byte '\x68';Byte '\x24';Byte '\xa3';Byte '\xa8';Byte '\x4c';Byte '\xe4';Byte '\x40';Byte '\x26';Byte '\x71';Byte '\x16';Byte '\xf0';Byte '\x34';Byte '\xa1';Byte '\xf2';Byte '\xf7';Byte '\x8f';Byte '\xb1';Byte '\x36';Byte '\x53';Byte '\x6d';Byte '\x83';Byte '\x63';Byte '\xce';Byte '\x06';Byte '\x2b';Byte '\x41';Byte '\x45';Byte '\x4a';Byte '\x56';Byte '\x4c';Byte '\x48';Byte '\x5a';Byte '\x46';Byte '\x53';Byte '\x43';Byte '\x4c';Byte '\x00';Byte '\x58';Byte '\x47';Byte '\x48';Byte '\x42';Byte '\x47';Byte '\x44';Byte '\x44';Byte '\x50';Byte '\x4a';Byte '\x45';Byte '\x58';Byte '\x53';Byte '\x56';Byte '\x4e';Byte '\x4a';Byte '\x42';Byte '\x00';Byte '\x50';Byte '\x52';Byte '\x54';Byte '\x4f';Byte '\x4b';Byte '\x54';Byte '\x4f';Byte '\x4f';Byte '\x52';Byte '\x48';Byte '\x00';Byte '\x4a';Byte '\x50';Byte '\x4e';Byte '\x42';Byte '\x47';Byte '\x5a';Byte '\x58';Byte '\x4c';Byte '\x47';Byte '\x50';Byte '\x4b';Byte '\x49';Byte '\x53';Byte '\x5a';Byte '\x49';Byte '\x56';Byte '\x41';Byte '\x4b';Byte '\x54';Byte '\x00';Byte '\x4a';Byte '\x56';Byte '\x43';Byte '\x54';Byte '\x48';Byte '\x57';Byte '\x55';Byte '\x50';Byte '\x52';Byte '\x52';Byte '\x54';Byte '\x44';Byte '\x00';Byte '\x57';Byte '\x59';Byte '\x51';Byte '\x4f';Byte '\x52';Byte '\x49';Byte '\x56';Byte '\x4c';Byte '\x4e';Byte '\x50';Byte '\x52';Byte '\x49';Byte '\x49';Byte '\x46';Byte '\x48';Byte '\x00';Byte '\xf8';Byte '\x55';Byte '\x14';Byte '\xb0';Byte '\xd7';Byte '\x34';Byte '\x8f';Byte '\x5c';Byte '\x45';Byte '\x46';Byte '\x48';Byte '\x4f';Byte '\x44';Byte '\x58';Byte '\x41';Byte '\x44';Byte '\x4f';Byte '\x53';Byte '\x53';Byte '\x50';Byte '\x41';Byte '\x48';Byte '\x00';]
let test_68_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400040L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40008dL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000b9L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c1L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c9L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000e1L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f4L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400110L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_69 = [
  data "AAAAAAUD" [
    Asciz ("GOCWIGQWUZJFVYBF");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAUD"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAUE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAUF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAUG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAUH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAUI"); ~%Rax];
];
  data "AAAAAAUE" [
    Asciz ("RXDLLGVQKPPMHQBFHG");
    Quad (Lit 6652883206932515886L);
    Asciz ("XQNFXWRNUKGH");
    Quad (Lit 2591023867197292768L);
    Quad (Lit 3916528453420748938L);
    Quad (Lit 998677208305690785L);
  ];
  data "AAAAAAUF" [
    Asciz ("UUGUCHBXYAXIBRONEB");
    Quad (Lit 6711903075286203691L);
  ];
  data "AAAAAAUG" [
    Quad (Lit 1140270373080006809L);
    Asciz ("WHQJPQJTSOYPAIEFO");
    Quad (Lit 2546482259206899214L);
  ];
  data "AAAAAAUH" [
    Quad (Lit 3925891575232496513L);
    Asciz ("DSKDWNBLIQNHUKFPKP");
    Asciz ("PZMNIUXHSYN");
  ];
  data "AAAAAAUI" [
    Asciz ("ZDQCPLWGHJCPZFVERDWB");
    Quad (Lit 3174084140084292902L);
  ];
]
let test_69_data = [Byte '\x47';Byte '\x4f';Byte '\x43';Byte '\x57';Byte '\x49';Byte '\x47';Byte '\x51';Byte '\x57';Byte '\x55';Byte '\x5a';Byte '\x4a';Byte '\x46';Byte '\x56';Byte '\x59';Byte '\x42';Byte '\x46';Byte '\x00';Byte '\x52';Byte '\x58';Byte '\x44';Byte '\x4c';Byte '\x4c';Byte '\x47';Byte '\x56';Byte '\x51';Byte '\x4b';Byte '\x50';Byte '\x50';Byte '\x4d';Byte '\x48';Byte '\x51';Byte '\x42';Byte '\x46';Byte '\x48';Byte '\x47';Byte '\x00';Byte '\x2e';Byte '\xcc';Byte '\x5f';Byte '\x39';Byte '\x07';Byte '\xca';Byte '\x53';Byte '\x5c';Byte '\x58';Byte '\x51';Byte '\x4e';Byte '\x46';Byte '\x58';Byte '\x57';Byte '\x52';Byte '\x4e';Byte '\x55';Byte '\x4b';Byte '\x47';Byte '\x48';Byte '\x00';Byte '\xe0';Byte '\x80';Byte '\xda';Byte '\xb8';Byte '\x7a';Byte '\x2a';Byte '\xf5';Byte '\x23';Byte '\x8a';Byte '\x90';Byte '\xda';Byte '\xb2';Byte '\xe0';Byte '\x4d';Byte '\x5a';Byte '\x36';Byte '\xa1';Byte '\xe8';Byte '\x56';Byte '\x36';Byte '\xa1';Byte '\x03';Byte '\xdc';Byte '\x0d';Byte '\x55';Byte '\x55';Byte '\x47';Byte '\x55';Byte '\x43';Byte '\x48';Byte '\x42';Byte '\x58';Byte '\x59';Byte '\x41';Byte '\x58';Byte '\x49';Byte '\x42';Byte '\x52';Byte '\x4f';Byte '\x4e';Byte '\x45';Byte '\x42';Byte '\x00';Byte '\x2b';Byte '\x3d';Byte '\x49';Byte '\x29';Byte '\x49';Byte '\x78';Byte '\x25';Byte '\x5d';Byte '\x99';Byte '\x00';Byte '\x56';Byte '\xe7';Byte '\xdc';Byte '\x0d';Byte '\xd3';Byte '\x0f';Byte '\x57';Byte '\x48';Byte '\x51';Byte '\x4a';Byte '\x50';Byte '\x51';Byte '\x4a';Byte '\x54';Byte '\x53';Byte '\x4f';Byte '\x59';Byte '\x50';Byte '\x41';Byte '\x49';Byte '\x45';Byte '\x46';Byte '\x4f';Byte '\x00';Byte '\x0e';Byte '\x86';Byte '\xdc';Byte '\x76';Byte '\x1f';Byte '\xec';Byte '\x56';Byte '\x23';Byte '\x81';Byte '\x83';Byte '\x6e';Byte '\x60';Byte '\x96';Byte '\x91';Byte '\x7b';Byte '\x36';Byte '\x44';Byte '\x53';Byte '\x4b';Byte '\x44';Byte '\x57';Byte '\x4e';Byte '\x42';Byte '\x4c';Byte '\x49';Byte '\x51';Byte '\x4e';Byte '\x48';Byte '\x55';Byte '\x4b';Byte '\x46';Byte '\x50';Byte '\x4b';Byte '\x50';Byte '\x00';Byte '\x50';Byte '\x5a';Byte '\x4d';Byte '\x4e';Byte '\x49';Byte '\x55';Byte '\x58';Byte '\x48';Byte '\x53';Byte '\x59';Byte '\x4e';Byte '\x00';Byte '\x5a';Byte '\x44';Byte '\x51';Byte '\x43';Byte '\x50';Byte '\x4c';Byte '\x57';Byte '\x47';Byte '\x48';Byte '\x4a';Byte '\x43';Byte '\x50';Byte '\x5a';Byte '\x46';Byte '\x56';Byte '\x45';Byte '\x52';Byte '\x44';Byte '\x57';Byte '\x42';Byte '\x00';Byte '\x26';Byte '\xed';Byte '\xec';Byte '\x58';Byte '\xb5';Byte '\x9c';Byte '\x0c';Byte '\x2c';]
let test_69_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400030L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400041L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400081L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40009cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000beL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000e5L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_70 = [
  data "AAAAAAUJ" [
    Quad (Lit 8411105868279802563L);
    Asciz ("ANABROXZPVAMFGFIKVK");
    Quad (Lit 4789409129203637930L);
    Asciz ("KFOTSDCLIXQLX");
    Quad (Lit 8270118041600586616L);
    Quad (Lit 891590858089218906L);
  ];
  data "AAAAAAUK" [
    Asciz ("EOEXKABOVFYL");
  ];
  data "AAAAAAUL" [
    Quad (Lit 1057755008952011927L);
  ];
  data "AAAAAAUM" [
    Asciz ("BGEVSXTPMEZ");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAUJ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAUK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAUL"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAUM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAUN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAUO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAUP"); ~%Rax];
];
  data "AAAAAAUN" [
    Asciz ("TDZMPXTMLTUJMX");
    Asciz ("ZNFPKOTQNWHEUNLDZY");
  ];
  data "AAAAAAUO" [
    Quad (Lit 1149096674286548871L);
    Asciz ("EMUDUHYFMLP");
    Asciz ("DQDCUXKKNN");
    Asciz ("DMLSNTAFNZCTKWQL");
  ];
  data "AAAAAAUP" [
    Asciz ("RLZCABVKPH");
    Quad (Lit 6703065197918947934L);
  ];
]
let test_70_data = [Byte '\xc3';Byte '\x6a';Byte '\x05';Byte '\x27';Byte '\x39';Byte '\x40';Byte '\xba';Byte '\x74';Byte '\x41';Byte '\x4e';Byte '\x41';Byte '\x42';Byte '\x52';Byte '\x4f';Byte '\x58';Byte '\x5a';Byte '\x50';Byte '\x56';Byte '\x41';Byte '\x4d';Byte '\x46';Byte '\x47';Byte '\x46';Byte '\x49';Byte '\x4b';Byte '\x56';Byte '\x4b';Byte '\x00';Byte '\xaa';Byte '\x1e';Byte '\x32';Byte '\x46';Byte '\x3a';Byte '\x66';Byte '\x77';Byte '\x42';Byte '\x4b';Byte '\x46';Byte '\x4f';Byte '\x54';Byte '\x53';Byte '\x44';Byte '\x43';Byte '\x4c';Byte '\x49';Byte '\x58';Byte '\x51';Byte '\x4c';Byte '\x58';Byte '\x00';Byte '\x78';Byte '\xf3';Byte '\x26';Byte '\xb8';Byte '\x8a';Byte '\x5c';Byte '\xc5';Byte '\x72';Byte '\x5a';Byte '\xc3';Byte '\x64';Byte '\x5d';Byte '\x29';Byte '\x91';Byte '\x5f';Byte '\x0c';Byte '\x45';Byte '\x4f';Byte '\x45';Byte '\x58';Byte '\x4b';Byte '\x41';Byte '\x42';Byte '\x4f';Byte '\x56';Byte '\x46';Byte '\x59';Byte '\x4c';Byte '\x00';Byte '\x97';Byte '\x8c';Byte '\xf9';Byte '\x8f';Byte '\x93';Byte '\xe6';Byte '\xad';Byte '\x0e';Byte '\x42';Byte '\x47';Byte '\x45';Byte '\x56';Byte '\x53';Byte '\x58';Byte '\x54';Byte '\x50';Byte '\x4d';Byte '\x45';Byte '\x5a';Byte '\x00';Byte '\x54';Byte '\x44';Byte '\x5a';Byte '\x4d';Byte '\x50';Byte '\x58';Byte '\x54';Byte '\x4d';Byte '\x4c';Byte '\x54';Byte '\x55';Byte '\x4a';Byte '\x4d';Byte '\x58';Byte '\x00';Byte '\x5a';Byte '\x4e';Byte '\x46';Byte '\x50';Byte '\x4b';Byte '\x4f';Byte '\x54';Byte '\x51';Byte '\x4e';Byte '\x57';Byte '\x48';Byte '\x45';Byte '\x55';Byte '\x4e';Byte '\x4c';Byte '\x44';Byte '\x5a';Byte '\x59';Byte '\x00';Byte '\x87';Byte '\xb7';Byte '\x6e';Byte '\x4b';Byte '\x56';Byte '\x69';Byte '\xf2';Byte '\x0f';Byte '\x45';Byte '\x4d';Byte '\x55';Byte '\x44';Byte '\x55';Byte '\x48';Byte '\x59';Byte '\x46';Byte '\x4d';Byte '\x4c';Byte '\x50';Byte '\x00';Byte '\x44';Byte '\x51';Byte '\x44';Byte '\x43';Byte '\x55';Byte '\x58';Byte '\x4b';Byte '\x4b';Byte '\x4e';Byte '\x4e';Byte '\x00';Byte '\x44';Byte '\x4d';Byte '\x4c';Byte '\x53';Byte '\x4e';Byte '\x54';Byte '\x41';Byte '\x46';Byte '\x4e';Byte '\x5a';Byte '\x43';Byte '\x54';Byte '\x4b';Byte '\x57';Byte '\x51';Byte '\x4c';Byte '\x00';Byte '\x52';Byte '\x4c';Byte '\x5a';Byte '\x43';Byte '\x41';Byte '\x42';Byte '\x56';Byte '\x4b';Byte '\x50';Byte '\x48';Byte '\x00';Byte '\x5e';Byte '\x0a';Byte '\x3e';Byte '\x7c';Byte '\x48';Byte '\x12';Byte '\x06';Byte '\x5d';]
let test_70_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400038L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40007aL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400087L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40008fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40009bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000bdL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000edL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_71 = [
  data "AAAAAAUQ" [
    Asciz ("JJHNJJWMKPHD");
    Quad (Lit 7059965831250926792L);
    Quad (Lit 779365185611314463L);
    Quad (Lit 2618049273152328044L);
    Asciz ("JKNYOVCLVMNO");
  ];
  data "AAAAAAUR" [
    Quad (Lit 3007195269638804292L);
    Asciz ("OYCUOEMGKEMIAMYHSE");
    Asciz ("ADRDDRYKMQ");
  ];
  data "AAAAAAUS" [
    Asciz ("BNXDDOVQXWLJDS");
  ];
  data "AAAAAAUT" [
    Asciz ("MIGVCGKHIUVRB");
  ];
  data "AAAAAAUU" [
    Quad (Lit 7682224265740362869L);
    Quad (Lit 2511044615291194985L);
    Quad (Lit 788544821377753770L);
    Asciz ("VVNIPUBAOGYJMIO");
    Asciz ("OPTOVWZKVMPGBEGRYD");
  ];
  data "AAAAAAUV" [
    Quad (Lit 5732835631192880489L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAUQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAUR"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAUS"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAUT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAUU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAUV"); ~%Rax];
];
]
let test_71_data = [Byte '\x4a';Byte '\x4a';Byte '\x48';Byte '\x4e';Byte '\x4a';Byte '\x4a';Byte '\x57';Byte '\x4d';Byte '\x4b';Byte '\x50';Byte '\x48';Byte '\x44';Byte '\x00';Byte '\xc8';Byte '\x5c';Byte '\x1b';Byte '\xaa';Byte '\x84';Byte '\x09';Byte '\xfa';Byte '\x61';Byte '\x1f';Byte '\x35';Byte '\xab';Byte '\xce';Byte '\x81';Byte '\xdc';Byte '\xd0';Byte '\x0a';Byte '\x6c';Byte '\xd1';Byte '\xb6';Byte '\x62';Byte '\xf1';Byte '\x2d';Byte '\x55';Byte '\x24';Byte '\x4a';Byte '\x4b';Byte '\x4e';Byte '\x59';Byte '\x4f';Byte '\x56';Byte '\x43';Byte '\x4c';Byte '\x56';Byte '\x4d';Byte '\x4e';Byte '\x4f';Byte '\x00';Byte '\x44';Byte '\x53';Byte '\x0e';Byte '\x39';Byte '\x2a';Byte '\xb4';Byte '\xbb';Byte '\x29';Byte '\x4f';Byte '\x59';Byte '\x43';Byte '\x55';Byte '\x4f';Byte '\x45';Byte '\x4d';Byte '\x47';Byte '\x4b';Byte '\x45';Byte '\x4d';Byte '\x49';Byte '\x41';Byte '\x4d';Byte '\x59';Byte '\x48';Byte '\x53';Byte '\x45';Byte '\x00';Byte '\x41';Byte '\x44';Byte '\x52';Byte '\x44';Byte '\x44';Byte '\x52';Byte '\x59';Byte '\x4b';Byte '\x4d';Byte '\x51';Byte '\x00';Byte '\x42';Byte '\x4e';Byte '\x58';Byte '\x44';Byte '\x44';Byte '\x4f';Byte '\x56';Byte '\x51';Byte '\x58';Byte '\x57';Byte '\x4c';Byte '\x4a';Byte '\x44';Byte '\x53';Byte '\x00';Byte '\x4d';Byte '\x49';Byte '\x47';Byte '\x56';Byte '\x43';Byte '\x47';Byte '\x4b';Byte '\x48';Byte '\x49';Byte '\x55';Byte '\x56';Byte '\x52';Byte '\x42';Byte '\x00';Byte '\x75';Byte '\x24';Byte '\x57';Byte '\x7c';Byte '\x44';Byte '\xbe';Byte '\x9c';Byte '\x6a';Byte '\x69';Byte '\xce';Byte '\x96';Byte '\x05';Byte '\xc6';Byte '\x05';Byte '\xd9';Byte '\x22';Byte '\xaa';Byte '\xe2';Byte '\xb1';Byte '\x4f';Byte '\x56';Byte '\x79';Byte '\xf1';Byte '\x0a';Byte '\x56';Byte '\x56';Byte '\x4e';Byte '\x49';Byte '\x50';Byte '\x55';Byte '\x42';Byte '\x41';Byte '\x4f';Byte '\x47';Byte '\x59';Byte '\x4a';Byte '\x4d';Byte '\x49';Byte '\x4f';Byte '\x00';Byte '\x4f';Byte '\x50';Byte '\x54';Byte '\x4f';Byte '\x56';Byte '\x57';Byte '\x5a';Byte '\x4b';Byte '\x56';Byte '\x4d';Byte '\x50';Byte '\x47';Byte '\x42';Byte '\x45';Byte '\x47';Byte '\x52';Byte '\x59';Byte '\x44';Byte '\x00';Byte '\x69';Byte '\x35';Byte '\xf4';Byte '\xf8';Byte '\xa1';Byte '\x1f';Byte '\x8f';Byte '\x4f';]
let test_71_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400030L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400062L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400088L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400097L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000a5L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000e0L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_72 = [
  data "AAAAAAUW" [
    Quad (Lit 771294836821243613L);
    Quad (Lit 6480152596227038171L);
    Asciz ("TJPYAUFOPT");
    Asciz ("ZZXTFYREPGMAW");
    Asciz ("OEZKVQWXONEZTUL");
  ];
  data "AAAAAAUX" [
    Asciz ("LPVSIBUNPOKBK");
  ];
  data "AAAAAAUY" [
    Quad (Lit 4892857484677581882L);
    Quad (Lit 8586108661114754361L);
    Quad (Lit 8967032732075523344L);
    Asciz ("CXWHSNSBHUQBVNVONH");
  ];
  data "AAAAAAUZ" [
    Quad (Lit 2435116982873389803L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAUW"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAUX"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAUY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAUZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAVA"); ~%Rax];
];
  data "AAAAAAVA" [
    Asciz ("SKMMKHPJLCXFAJUIN");
    Asciz ("BUZVQPTTEBUBSR");
    Asciz ("XPRDLBQGSQTPS");
    Asciz ("MBFFZZWBIHMGWEPTOY");
    Asciz ("XLZYOJYIAI");
    Asciz ("XCYHQYCNFFZ");
  ];
]
let test_72_data = [Byte '\xdd';Byte '\xb6';Byte '\xd2';Byte '\x4d';Byte '\x91';Byte '\x30';Byte '\xb4';Byte '\x0a';Byte '\xdb';Byte '\x1b';Byte '\x70';Byte '\xf4';Byte '\x73';Byte '\x20';Byte '\xee';Byte '\x59';Byte '\x54';Byte '\x4a';Byte '\x50';Byte '\x59';Byte '\x41';Byte '\x55';Byte '\x46';Byte '\x4f';Byte '\x50';Byte '\x54';Byte '\x00';Byte '\x5a';Byte '\x5a';Byte '\x58';Byte '\x54';Byte '\x46';Byte '\x59';Byte '\x52';Byte '\x45';Byte '\x50';Byte '\x47';Byte '\x4d';Byte '\x41';Byte '\x57';Byte '\x00';Byte '\x4f';Byte '\x45';Byte '\x5a';Byte '\x4b';Byte '\x56';Byte '\x51';Byte '\x57';Byte '\x58';Byte '\x4f';Byte '\x4e';Byte '\x45';Byte '\x5a';Byte '\x54';Byte '\x55';Byte '\x4c';Byte '\x00';Byte '\x4c';Byte '\x50';Byte '\x56';Byte '\x53';Byte '\x49';Byte '\x42';Byte '\x55';Byte '\x4e';Byte '\x50';Byte '\x4f';Byte '\x4b';Byte '\x42';Byte '\x4b';Byte '\x00';Byte '\x3a';Byte '\x8c';Byte '\xd1';Byte '\x76';Byte '\xf5';Byte '\xeb';Byte '\xe6';Byte '\x43';Byte '\x39';Byte '\x55';Byte '\xa6';Byte '\x0c';Byte '\x56';Byte '\xfc';Byte '\x27';Byte '\x77';Byte '\x10';Byte '\x7d';Byte '\xa9';Byte '\xac';Byte '\xc2';Byte '\x4c';Byte '\x71';Byte '\x7c';Byte '\x43';Byte '\x58';Byte '\x57';Byte '\x48';Byte '\x53';Byte '\x4e';Byte '\x53';Byte '\x42';Byte '\x48';Byte '\x55';Byte '\x51';Byte '\x42';Byte '\x56';Byte '\x4e';Byte '\x56';Byte '\x4f';Byte '\x4e';Byte '\x48';Byte '\x00';Byte '\xeb';Byte '\x7a';Byte '\xb0';Byte '\x7e';Byte '\xfe';Byte '\x45';Byte '\xcb';Byte '\x21';Byte '\x53';Byte '\x4b';Byte '\x4d';Byte '\x4d';Byte '\x4b';Byte '\x48';Byte '\x50';Byte '\x4a';Byte '\x4c';Byte '\x43';Byte '\x58';Byte '\x46';Byte '\x41';Byte '\x4a';Byte '\x55';Byte '\x49';Byte '\x4e';Byte '\x00';Byte '\x42';Byte '\x55';Byte '\x5a';Byte '\x56';Byte '\x51';Byte '\x50';Byte '\x54';Byte '\x54';Byte '\x45';Byte '\x42';Byte '\x55';Byte '\x42';Byte '\x53';Byte '\x52';Byte '\x00';Byte '\x58';Byte '\x50';Byte '\x52';Byte '\x44';Byte '\x4c';Byte '\x42';Byte '\x51';Byte '\x47';Byte '\x53';Byte '\x51';Byte '\x54';Byte '\x50';Byte '\x53';Byte '\x00';Byte '\x4d';Byte '\x42';Byte '\x46';Byte '\x46';Byte '\x5a';Byte '\x5a';Byte '\x57';Byte '\x42';Byte '\x49';Byte '\x48';Byte '\x4d';Byte '\x47';Byte '\x57';Byte '\x45';Byte '\x50';Byte '\x54';Byte '\x4f';Byte '\x59';Byte '\x00';Byte '\x58';Byte '\x4c';Byte '\x5a';Byte '\x59';Byte '\x4f';Byte '\x4a';Byte '\x59';Byte '\x49';Byte '\x41';Byte '\x49';Byte '\x00';Byte '\x58';Byte '\x43';Byte '\x59';Byte '\x48';Byte '\x51';Byte '\x59';Byte '\x43';Byte '\x4e';Byte '\x46';Byte '\x46';Byte '\x5a';Byte '\x00';]
let test_72_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400028L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400061L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40006fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40009aL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000a2L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_73 = [
  data "AAAAAAVB" [
    Quad (Lit 8321537454879188480L);
    Asciz ("ZAOYTDPZNTQ");
    Quad (Lit 5141787043663245345L);
    Asciz ("QIDSSBISZVUKXW");
  ];
  data "AAAAAAVC" [
    Asciz ("LPPJBDBHCOTOJTAM");
    Asciz ("JGWPBJJHZYDSGDTTU");
    Quad (Lit 8426746638408329937L);
  ];
  data "AAAAAAVD" [
    Quad (Lit 1882428634859458067L);
    Asciz ("ETAOSDDUFUAXIS");
  ];
  data "AAAAAAVE" [
    Quad (Lit 465843131677615051L);
    Quad (Lit 5361522987774937435L);
    Quad (Lit 9076094758287918800L);
    Asciz ("CMGKAWCSQCPGJXYFIXIS");
    Quad (Lit 5287846605264746556L);
    Asciz ("LZRZAUFOBXIQWH");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAVB"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAVC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAVD"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAVE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAVF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAVG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAVH"); ~%Rax];
];
  data "AAAAAAVF" [
    Asciz ("IQOXIVAUNBRIF");
    Quad (Lit 1165236911551888757L);
  ];
  data "AAAAAAVG" [
    Quad (Lit 1163158095233653305L);
    Quad (Lit 4994456139271153468L);
  ];
  data "AAAAAAVH" [
    Quad (Lit 6167204036382003261L);
    Quad (Lit 2877223179956183792L);
    Asciz ("SIZGUIFSOZNKDCGRCCC");
    Asciz ("IZCJQFDCIBAQYLPOC");
  ];
]
let test_73_data = [Byte '\x00';Byte '\xa6';Byte '\x2e';Byte '\xcf';Byte '\x39';Byte '\x0a';Byte '\x7c';Byte '\x73';Byte '\x5a';Byte '\x41';Byte '\x4f';Byte '\x59';Byte '\x54';Byte '\x44';Byte '\x50';Byte '\x5a';Byte '\x4e';Byte '\x54';Byte '\x51';Byte '\x00';Byte '\x21';Byte '\xf0';Byte '\x40';Byte '\xe8';Byte '\x12';Byte '\x4c';Byte '\x5b';Byte '\x47';Byte '\x51';Byte '\x49';Byte '\x44';Byte '\x53';Byte '\x53';Byte '\x42';Byte '\x49';Byte '\x53';Byte '\x5a';Byte '\x56';Byte '\x55';Byte '\x4b';Byte '\x58';Byte '\x57';Byte '\x00';Byte '\x4c';Byte '\x50';Byte '\x50';Byte '\x4a';Byte '\x42';Byte '\x44';Byte '\x42';Byte '\x48';Byte '\x43';Byte '\x4f';Byte '\x54';Byte '\x4f';Byte '\x4a';Byte '\x54';Byte '\x41';Byte '\x4d';Byte '\x00';Byte '\x4a';Byte '\x47';Byte '\x57';Byte '\x50';Byte '\x42';Byte '\x4a';Byte '\x4a';Byte '\x48';Byte '\x5a';Byte '\x59';Byte '\x44';Byte '\x53';Byte '\x47';Byte '\x44';Byte '\x54';Byte '\x54';Byte '\x55';Byte '\x00';Byte '\xd1';Byte '\xaa';Byte '\x8b';Byte '\xba';Byte '\x6b';Byte '\xd1';Byte '\xf1';Byte '\x74';Byte '\x13';Byte '\x4e';Byte '\xd2';Byte '\xaf';Byte '\xde';Byte '\xba';Byte '\x1f';Byte '\x1a';Byte '\x45';Byte '\x54';Byte '\x41';Byte '\x4f';Byte '\x53';Byte '\x44';Byte '\x44';Byte '\x55';Byte '\x46';Byte '\x55';Byte '\x41';Byte '\x58';Byte '\x49';Byte '\x53';Byte '\x00';Byte '\xcb';Byte '\x23';Byte '\xb3';Byte '\x30';Byte '\xdc';Byte '\x01';Byte '\x77';Byte '\x06';Byte '\x5b';Byte '\x89';Byte '\x6a';Byte '\x35';Byte '\xc0';Byte '\xf4';Byte '\x67';Byte '\x4a';Byte '\xd0';Byte '\x46';Byte '\x89';Byte '\x6f';Byte '\x18';Byte '\xc4';Byte '\xf4';Byte '\x7d';Byte '\x43';Byte '\x4d';Byte '\x47';Byte '\x4b';Byte '\x41';Byte '\x57';Byte '\x43';Byte '\x53';Byte '\x51';Byte '\x43';Byte '\x50';Byte '\x47';Byte '\x4a';Byte '\x58';Byte '\x59';Byte '\x46';Byte '\x49';Byte '\x58';Byte '\x49';Byte '\x53';Byte '\x00';Byte '\x3c';Byte '\x78';Byte '\x8f';Byte '\xa5';Byte '\x78';Byte '\x34';Byte '\x62';Byte '\x49';Byte '\x4c';Byte '\x5a';Byte '\x52';Byte '\x5a';Byte '\x41';Byte '\x55';Byte '\x46';Byte '\x4f';Byte '\x42';Byte '\x58';Byte '\x49';Byte '\x51';Byte '\x57';Byte '\x48';Byte '\x00';Byte '\x49';Byte '\x51';Byte '\x4f';Byte '\x58';Byte '\x49';Byte '\x56';Byte '\x41';Byte '\x55';Byte '\x4e';Byte '\x42';Byte '\x52';Byte '\x49';Byte '\x46';Byte '\x00';Byte '\x75';Byte '\x3d';Byte '\x39';Byte '\x20';Byte '\xcc';Byte '\xc0';Byte '\x2b';Byte '\x10';Byte '\x39';Byte '\x9a';Byte '\x05';Byte '\xfc';Byte '\x1f';Byte '\x5e';Byte '\x24';Byte '\x10';Byte '\x3c';Byte '\xa7';Byte '\x86';Byte '\x9b';Byte '\x65';Byte '\xdf';Byte '\x4f';Byte '\x45';Byte '\x3d';Byte '\x90';Byte '\xe7';Byte '\x55';Byte '\x65';Byte '\x4f';Byte '\x96';Byte '\x55';Byte '\xf0';Byte '\xe2';Byte '\xce';Byte '\xec';Byte '\x3c';Byte '\xf3';Byte '\xed';Byte '\x27';Byte '\x53';Byte '\x49';Byte '\x5a';Byte '\x47';Byte '\x55';Byte '\x49';Byte '\x46';Byte '\x53';Byte '\x4f';Byte '\x5a';Byte '\x4e';Byte '\x4b';Byte '\x44';Byte '\x43';Byte '\x47';Byte '\x52';Byte '\x43';Byte '\x43';Byte '\x43';Byte '\x00';Byte '\x49';Byte '\x5a';Byte '\x43';Byte '\x4a';Byte '\x51';Byte '\x46';Byte '\x44';Byte '\x43';Byte '\x49';Byte '\x42';Byte '\x41';Byte '\x51';Byte '\x59';Byte '\x4c';Byte '\x50';Byte '\x4f';Byte '\x43';Byte '\x00';]
let test_73_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400038L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400063L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40008eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000a5L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000e9L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000ffL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40010fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_74 = [
  data "AAAAAAVI" [
    Quad (Lit 560824686093813973L);
    Asciz ("ADEVUFXMFHKSMPR");
    Asciz ("XSDAWVEHHBBIPMYH");
    Asciz ("AEPDYJUQJPBZBRJTNLIE");
    Asciz ("ZDIXOIGUCALAQNNCBCZ");
    Asciz ("QHIHYPKMXNZJHUFYMUKQ");
  ];
  data "AAAAAAVJ" [
    Asciz ("VEOQWDDPJBHDKJSC");
  ];
  data "AAAAAAVK" [
    Quad (Lit 239308565472456152L);
    Quad (Lit 4479473071876977567L);
    Quad (Lit 1038999883010108408L);
    Asciz ("DZMBCGPSHZAUIJLSYL");
    Quad (Lit 500175954708655046L);
    Quad (Lit 1521566882694392947L);
  ];
  data "AAAAAAVL" [
    Asciz ("FKHOATPPIXCSCYVRWN");
    Asciz ("VRYCHVUGYGIMJ");
    Quad (Lit 8495973445194586724L);
  ];
  data "AAAAAAVM" [
    Quad (Lit 3098678034030061466L);
  ];
  data "AAAAAAVN" [
    Asciz ("DMLHKTQCYAW");
    Asciz ("WLHMWPLEUZAOAY");
  ];
  data "AAAAAAVO" [
    Asciz ("LHTABUDLBZ");
    Quad (Lit 8833103110371894033L);
    Asciz ("TFQGPWUAWRBRTB");
    Quad (Lit 4798324747044135452L);
    Asciz ("KURATVMGYI");
    Asciz ("ZEVQIOZBSPIBYF");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAVI"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAVJ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAVK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAVL"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAVM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAVN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAVO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAVP"); ~%Rax];
];
  data "AAAAAAVP" [
    Asciz ("KVFNJWECLOUOPOYWD");
  ];
]
let test_74_data = [Byte '\xd5';Byte '\x48';Byte '\xe4';Byte '\xa3';Byte '\x14';Byte '\x73';Byte '\xc8';Byte '\x07';Byte '\x41';Byte '\x44';Byte '\x45';Byte '\x56';Byte '\x55';Byte '\x46';Byte '\x58';Byte '\x4d';Byte '\x46';Byte '\x48';Byte '\x4b';Byte '\x53';Byte '\x4d';Byte '\x50';Byte '\x52';Byte '\x00';Byte '\x58';Byte '\x53';Byte '\x44';Byte '\x41';Byte '\x57';Byte '\x56';Byte '\x45';Byte '\x48';Byte '\x48';Byte '\x42';Byte '\x42';Byte '\x49';Byte '\x50';Byte '\x4d';Byte '\x59';Byte '\x48';Byte '\x00';Byte '\x41';Byte '\x45';Byte '\x50';Byte '\x44';Byte '\x59';Byte '\x4a';Byte '\x55';Byte '\x51';Byte '\x4a';Byte '\x50';Byte '\x42';Byte '\x5a';Byte '\x42';Byte '\x52';Byte '\x4a';Byte '\x54';Byte '\x4e';Byte '\x4c';Byte '\x49';Byte '\x45';Byte '\x00';Byte '\x5a';Byte '\x44';Byte '\x49';Byte '\x58';Byte '\x4f';Byte '\x49';Byte '\x47';Byte '\x55';Byte '\x43';Byte '\x41';Byte '\x4c';Byte '\x41';Byte '\x51';Byte '\x4e';Byte '\x4e';Byte '\x43';Byte '\x42';Byte '\x43';Byte '\x5a';Byte '\x00';Byte '\x51';Byte '\x48';Byte '\x49';Byte '\x48';Byte '\x59';Byte '\x50';Byte '\x4b';Byte '\x4d';Byte '\x58';Byte '\x4e';Byte '\x5a';Byte '\x4a';Byte '\x48';Byte '\x55';Byte '\x46';Byte '\x59';Byte '\x4d';Byte '\x55';Byte '\x4b';Byte '\x51';Byte '\x00';Byte '\x56';Byte '\x45';Byte '\x4f';Byte '\x51';Byte '\x57';Byte '\x44';Byte '\x44';Byte '\x50';Byte '\x4a';Byte '\x42';Byte '\x48';Byte '\x44';Byte '\x4b';Byte '\x4a';Byte '\x53';Byte '\x43';Byte '\x00';Byte '\xd8';Byte '\xad';Byte '\xb1';Byte '\x54';Byte '\xdf';Byte '\x31';Byte '\x52';Byte '\x03';Byte '\x9f';Byte '\xb3';Byte '\x27';Byte '\x8e';Byte '\x06';Byte '\x49';Byte '\x2a';Byte '\x3e';Byte '\xf8';Byte '\x6b';Byte '\x7d';Byte '\x84';Byte '\xe3';Byte '\x44';Byte '\x6b';Byte '\x0e';Byte '\x44';Byte '\x5a';Byte '\x4d';Byte '\x42';Byte '\x43';Byte '\x47';Byte '\x50';Byte '\x53';Byte '\x48';Byte '\x5a';Byte '\x41';Byte '\x55';Byte '\x49';Byte '\x4a';Byte '\x4c';Byte '\x53';Byte '\x59';Byte '\x4c';Byte '\x00';Byte '\xc6';Byte '\xeb';Byte '\x99';Byte '\x79';Byte '\x61';Byte '\xfb';Byte '\xf0';Byte '\x06';Byte '\x73';Byte '\x6c';Byte '\xff';Byte '\xa8';Byte '\x04';Byte '\xb1';Byte '\x1d';Byte '\x15';Byte '\x46';Byte '\x4b';Byte '\x48';Byte '\x4f';Byte '\x41';Byte '\x54';Byte '\x50';Byte '\x50';Byte '\x49';Byte '\x58';Byte '\x43';Byte '\x53';Byte '\x43';Byte '\x59';Byte '\x56';Byte '\x52';Byte '\x57';Byte '\x4e';Byte '\x00';Byte '\x56';Byte '\x52';Byte '\x59';Byte '\x43';Byte '\x48';Byte '\x56';Byte '\x55';Byte '\x47';Byte '\x59';Byte '\x47';Byte '\x49';Byte '\x4d';Byte '\x4a';Byte '\x00';Byte '\x64';Byte '\x9a';Byte '\xf9';Byte '\xb5';Byte '\xd5';Byte '\xc2';Byte '\xe7';Byte '\x75';Byte '\x9a';Byte '\xe7';Byte '\xaa';Byte '\x23';Byte '\x41';Byte '\xb7';Byte '\x00';Byte '\x2b';Byte '\x44';Byte '\x4d';Byte '\x4c';Byte '\x48';Byte '\x4b';Byte '\x54';Byte '\x51';Byte '\x43';Byte '\x59';Byte '\x41';Byte '\x57';Byte '\x00';Byte '\x57';Byte '\x4c';Byte '\x48';Byte '\x4d';Byte '\x57';Byte '\x50';Byte '\x4c';Byte '\x45';Byte '\x55';Byte '\x5a';Byte '\x41';Byte '\x4f';Byte '\x41';Byte '\x59';Byte '\x00';Byte '\x4c';Byte '\x48';Byte '\x54';Byte '\x41';Byte '\x42';Byte '\x55';Byte '\x44';Byte '\x4c';Byte '\x42';Byte '\x5a';Byte '\x00';Byte '\x11';Byte '\x63';Byte '\x1d';Byte '\xa6';Byte '\x7a';Byte '\x7c';Byte '\x95';Byte '\x7a';Byte '\x54';Byte '\x46';Byte '\x51';Byte '\x47';Byte '\x50';Byte '\x57';Byte '\x55';Byte '\x41';Byte '\x57';Byte '\x52';Byte '\x42';Byte '\x52';Byte '\x54';Byte '\x42';Byte '\x00';Byte '\x1c';Byte '\x22';Byte '\x88';Byte '\x50';Byte '\xef';Byte '\x12';Byte '\x97';Byte '\x42';Byte '\x4b';Byte '\x55';Byte '\x52';Byte '\x41';Byte '\x54';Byte '\x56';Byte '\x4d';Byte '\x47';Byte '\x59';Byte '\x49';Byte '\x00';Byte '\x5a';Byte '\x45';Byte '\x56';Byte '\x51';Byte '\x49';Byte '\x4f';Byte '\x5a';Byte '\x42';Byte '\x53';Byte '\x50';Byte '\x49';Byte '\x42';Byte '\x59';Byte '\x46';Byte '\x00';Byte '\x4b';Byte '\x56';Byte '\x46';Byte '\x4e';Byte '\x4a';Byte '\x57';Byte '\x45';Byte '\x43';Byte '\x4c';Byte '\x4f';Byte '\x55';Byte '\x4f';Byte '\x50';Byte '\x4f';Byte '\x59';Byte '\x57';Byte '\x44';Byte '\x00';]
let test_74_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400040L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000a7L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000b8L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f3L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40011cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400124L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40013fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400183L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_75 = [
  data "AAAAAAVQ" [
    Asciz ("LXTHRQYSGTPTHGVIE");
    Quad (Lit 2093296408770161334L);
    Asciz ("YFFAJTBRQFQBGQKRF");
    Quad (Lit 2633391881905933337L);
    Asciz ("QTYWWPRPGKWMQSU");
  ];
  data "AAAAAAVR" [
    Quad (Lit 4171353188917575195L);
    Asciz ("DTVVRDFAPBVA");
    Asciz ("FNWOXBNAUIIY");
    Quad (Lit 3318585687577187949L);
    Asciz ("UAIBICGFJBPZHH");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAVQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAVR"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAVS"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAVT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAVU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAVV"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAVW"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAVX"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAVY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAVZ"); ~%Rax];
];
  data "AAAAAAVS" [
    Quad (Lit 2347614122527326864L);
  ];
  data "AAAAAAVT" [
    Quad (Lit 1915143851923063102L);
    Quad (Lit 7005542417000184625L);
    Quad (Lit 1744127130944714861L);
    Quad (Lit 2159742938112391224L);
    Asciz ("ZAFZKFGNSQ");
  ];
  data "AAAAAAVU" [
    Asciz ("DDRGRPNPEVUGTSYEO");
    Asciz ("IBLHXTGHYFBYKPWT");
    Quad (Lit 5676350113116847053L);
    Asciz ("JDNBYZZJXSG");
    Quad (Lit 6641975583156002716L);
    Quad (Lit 7611003606450339179L);
  ];
  data "AAAAAAVV" [
    Quad (Lit 2894397484476599258L);
    Quad (Lit 4891823049276597985L);
    Quad (Lit 564905229290048940L);
    Asciz ("NTNPKHPHIGLJGRNOXV");
    Quad (Lit 2245297502122150735L);
  ];
  data "AAAAAAVW" [
    Asciz ("OMEYSVUXTYTSRQW");
    Asciz ("ZUMGWQDGLKWKNSMQFS");
    Asciz ("XHZQPHAXSZNHTT");
    Asciz ("CDXGCBNRGU");
  ];
  data "AAAAAAVX" [
    Quad (Lit 82874934347846807L);
  ];
  data "AAAAAAVY" [
    Asciz ("SCBITPDBCGS");
    Quad (Lit 5660516427356413010L);
    Quad (Lit 1833613429819758827L);
  ];
  data "AAAAAAVZ" [
    Quad (Lit 6169369749731034915L);
  ];
]
let test_75_data = [Byte '\x4c';Byte '\x58';Byte '\x54';Byte '\x48';Byte '\x52';Byte '\x51';Byte '\x59';Byte '\x53';Byte '\x47';Byte '\x54';Byte '\x50';Byte '\x54';Byte '\x48';Byte '\x47';Byte '\x56';Byte '\x49';Byte '\x45';Byte '\x00';Byte '\xb6';Byte '\xaa';Byte '\x58';Byte '\x36';Byte '\xfe';Byte '\xe1';Byte '\x0c';Byte '\x1d';Byte '\x59';Byte '\x46';Byte '\x46';Byte '\x41';Byte '\x4a';Byte '\x54';Byte '\x42';Byte '\x52';Byte '\x51';Byte '\x46';Byte '\x51';Byte '\x42';Byte '\x47';Byte '\x51';Byte '\x4b';Byte '\x52';Byte '\x46';Byte '\x00';Byte '\x19';Byte '\x8c';Byte '\x66';Byte '\xdb';Byte '\xf6';Byte '\xaf';Byte '\x8b';Byte '\x24';Byte '\x51';Byte '\x54';Byte '\x59';Byte '\x57';Byte '\x57';Byte '\x50';Byte '\x52';Byte '\x50';Byte '\x47';Byte '\x4b';Byte '\x57';Byte '\x4d';Byte '\x51';Byte '\x53';Byte '\x55';Byte '\x00';Byte '\x1b';Byte '\xfe';Byte '\x1f';Byte '\xe2';Byte '\x9f';Byte '\x9f';Byte '\xe3';Byte '\x39';Byte '\x44';Byte '\x54';Byte '\x56';Byte '\x56';Byte '\x52';Byte '\x44';Byte '\x46';Byte '\x41';Byte '\x50';Byte '\x42';Byte '\x56';Byte '\x41';Byte '\x00';Byte '\x46';Byte '\x4e';Byte '\x57';Byte '\x4f';Byte '\x58';Byte '\x42';Byte '\x4e';Byte '\x41';Byte '\x55';Byte '\x49';Byte '\x49';Byte '\x59';Byte '\x00';Byte '\x6d';Byte '\xd6';Byte '\xbb';Byte '\xa8';Byte '\x19';Byte '\xfc';Byte '\x0d';Byte '\x2e';Byte '\x55';Byte '\x41';Byte '\x49';Byte '\x42';Byte '\x49';Byte '\x43';Byte '\x47';Byte '\x46';Byte '\x4a';Byte '\x42';Byte '\x50';Byte '\x5a';Byte '\x48';Byte '\x48';Byte '\x00';Byte '\x90';Byte '\x82';Byte '\xee';Byte '\x32';Byte '\x9b';Byte '\x66';Byte '\x94';Byte '\x20';Byte '\x3e';Byte '\xc1';Byte '\xa5';Byte '\xbb';Byte '\x2f';Byte '\xf5';Byte '\x93';Byte '\x1a';Byte '\x31';Byte '\x3b';Byte '\x3a';Byte '\x18';Byte '\xb6';Byte '\xaf';Byte '\x38';Byte '\x61';Byte '\x6d';Byte '\xb8';Byte '\x14';Byte '\x83';Byte '\x62';Byte '\x62';Byte '\x34';Byte '\x18';Byte '\x38';Byte '\xf8';Byte '\x58';Byte '\x68';Byte '\xc2';Byte '\xf2';Byte '\xf8';Byte '\x1d';Byte '\x5a';Byte '\x41';Byte '\x46';Byte '\x5a';Byte '\x4b';Byte '\x46';Byte '\x47';Byte '\x4e';Byte '\x53';Byte '\x51';Byte '\x00';Byte '\x44';Byte '\x44';Byte '\x52';Byte '\x47';Byte '\x52';Byte '\x50';Byte '\x4e';Byte '\x50';Byte '\x45';Byte '\x56';Byte '\x55';Byte '\x47';Byte '\x54';Byte '\x53';Byte '\x59';Byte '\x45';Byte '\x4f';Byte '\x00';Byte '\x49';Byte '\x42';Byte '\x4c';Byte '\x48';Byte '\x58';Byte '\x54';Byte '\x47';Byte '\x48';Byte '\x59';Byte '\x46';Byte '\x42';Byte '\x59';Byte '\x4b';Byte '\x50';Byte '\x57';Byte '\x54';Byte '\x00';Byte '\xcd';Byte '\xfb';Byte '\x13';Byte '\x71';Byte '\x5a';Byte '\x72';Byte '\xc6';Byte '\x4e';Byte '\x4a';Byte '\x44';Byte '\x4e';Byte '\x42';Byte '\x59';Byte '\x5a';Byte '\x5a';Byte '\x4a';Byte '\x58';Byte '\x53';Byte '\x47';Byte '\x00';Byte '\x9c';Byte '\xdf';Byte '\xd4';Byte '\x28';Byte '\x9a';Byte '\x09';Byte '\x2d';Byte '\x5c';Byte '\x6b';Byte '\x7d';Byte '\xb0';Byte '\x8a';Byte '\x74';Byte '\xb7';Byte '\x9f';Byte '\x69';Byte '\xda';Byte '\x0b';Byte '\x03';Byte '\x4d';Byte '\x2d';Byte '\xf7';Byte '\x2a';Byte '\x28';Byte '\xe1';Byte '\x26';Byte '\x33';Byte '\x34';Byte '\x25';Byte '\x3f';Byte '\xe3';Byte '\x43';Byte '\xac';Byte '\x0d';Byte '\x98';Byte '\x23';Byte '\x50';Byte '\xf2';Byte '\xd6';Byte '\x07';Byte '\x4e';Byte '\x54';Byte '\x4e';Byte '\x50';Byte '\x4b';Byte '\x48';Byte '\x50';Byte '\x48';Byte '\x49';Byte '\x47';Byte '\x4c';Byte '\x4a';Byte '\x47';Byte '\x52';Byte '\x4e';Byte '\x4f';Byte '\x58';Byte '\x56';Byte '\x00';Byte '\x4f';Byte '\x0b';Byte '\x10';Byte '\x9d';Byte '\x2e';Byte '\xe6';Byte '\x28';Byte '\x1f';Byte '\x4f';Byte '\x4d';Byte '\x45';Byte '\x59';Byte '\x53';Byte '\x56';Byte '\x55';Byte '\x58';Byte '\x54';Byte '\x59';Byte '\x54';Byte '\x53';Byte '\x52';Byte '\x51';Byte '\x57';Byte '\x00';Byte '\x5a';Byte '\x55';Byte '\x4d';Byte '\x47';Byte '\x57';Byte '\x51';Byte '\x44';Byte '\x47';Byte '\x4c';Byte '\x4b';Byte '\x57';Byte '\x4b';Byte '\x4e';Byte '\x53';Byte '\x4d';Byte '\x51';Byte '\x46';Byte '\x53';Byte '\x00';Byte '\x58';Byte '\x48';Byte '\x5a';Byte '\x51';Byte '\x50';Byte '\x48';Byte '\x41';Byte '\x58';Byte '\x53';Byte '\x5a';Byte '\x4e';Byte '\x48';Byte '\x54';Byte '\x54';Byte '\x00';Byte '\x43';Byte '\x44';Byte '\x58';Byte '\x47';Byte '\x43';Byte '\x42';Byte '\x4e';Byte '\x52';Byte '\x47';Byte '\x55';Byte '\x00';Byte '\x97';Byte '\x54';Byte '\x96';Byte '\x4e';Byte '\x50';Byte '\x6e';Byte '\x26';Byte '\x01';Byte '\x53';Byte '\x43';Byte '\x42';Byte '\x49';Byte '\x54';Byte '\x50';Byte '\x44';Byte '\x42';Byte '\x43';Byte '\x47';Byte '\x53';Byte '\x00';Byte '\x52';Byte '\x9c';Byte '\xd7';Byte '\x31';Byte '\xb3';Byte '\x31';Byte '\x8e';Byte '\x4e';Byte '\xeb';Byte '\xd8';Byte '\xca';Byte '\x13';Byte '\xb3';Byte '\x4d';Byte '\x72';Byte '\x19';Byte '\x23';Byte '\x47';Byte '\xc2';Byte '\xc4';Byte '\x19';Byte '\x01';Byte '\x9e';Byte '\x55';]
let test_75_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400050L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400094L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000cdL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000d5L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400100L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400147L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40017aL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001b7L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001bfL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001dbL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_76 = [
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAWA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAWB"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAWC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAWD"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAWE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAWF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAWG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAWH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAWI"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAWJ"); ~%Rax];
];
  data "AAAAAAWA" [
    Asciz ("HUTDMBXMEVKJNPXU");
    Quad (Lit 5847512607125755504L);
  ];
  data "AAAAAAWB" [
    Asciz ("WOKCWHXHIHU");
  ];
  data "AAAAAAWC" [
    Asciz ("OUBOKHQGQOCYTRUYNSQ");
    Quad (Lit 6887525029377800118L);
    Quad (Lit 1899995357683247614L);
    Asciz ("NTMPWGPPZTYVFMJABOI");
    Quad (Lit 2356198260944178743L);
    Quad (Lit 7105153996504999003L);
  ];
  data "AAAAAAWD" [
    Quad (Lit 3256312075987815922L);
    Quad (Lit 7570666400925638579L);
    Asciz ("SDBHJABIUISFBJFGOGPO");
    Quad (Lit 8533647965049094560L);
  ];
  data "AAAAAAWE" [
    Asciz ("QQJIVWSUWKW");
  ];
  data "AAAAAAWF" [
    Asciz ("MCQTDOQWVF");
    Asciz ("WFPXBLJESVFVSCCD");
  ];
  data "AAAAAAWG" [
    Quad (Lit 8630514836913496617L);
    Asciz ("QZTVAZLGAMCZCILKNJJ");
    Asciz ("GRYUEBFXBEMUBU");
    Asciz ("JEVVPXYHAFIZCLBC");
  ];
  data "AAAAAAWH" [
    Quad (Lit 5236562210524957261L);
    Asciz ("EFHFIQMMIOZX");
    Quad (Lit 766820127349384837L);
    Asciz ("PCGVTOUZQKCTIUGD");
  ];
  data "AAAAAAWI" [
    Asciz ("QGWSSNTADYGRQOEHI");
    Quad (Lit 7168324459804972675L);
    Asciz ("XAVDRYGXKE");
    Quad (Lit 4544045118847337445L);
  ];
  data "AAAAAAWJ" [
    Quad (Lit 4424789973257551419L);
  ];
]
let test_76_data = [Byte '\x48';Byte '\x55';Byte '\x54';Byte '\x44';Byte '\x4d';Byte '\x42';Byte '\x58';Byte '\x4d';Byte '\x45';Byte '\x56';Byte '\x4b';Byte '\x4a';Byte '\x4e';Byte '\x50';Byte '\x58';Byte '\x55';Byte '\x00';Byte '\x70';Byte '\x56';Byte '\x59';Byte '\x17';Byte '\xbc';Byte '\x89';Byte '\x26';Byte '\x51';Byte '\x57';Byte '\x4f';Byte '\x4b';Byte '\x43';Byte '\x57';Byte '\x48';Byte '\x58';Byte '\x48';Byte '\x49';Byte '\x48';Byte '\x55';Byte '\x00';Byte '\x4f';Byte '\x55';Byte '\x42';Byte '\x4f';Byte '\x4b';Byte '\x48';Byte '\x51';Byte '\x47';Byte '\x51';Byte '\x4f';Byte '\x43';Byte '\x59';Byte '\x54';Byte '\x52';Byte '\x55';Byte '\x59';Byte '\x4e';Byte '\x53';Byte '\x51';Byte '\x00';Byte '\xb6';Byte '\xf7';Byte '\xac';Byte '\xc5';Byte '\x85';Byte '\x67';Byte '\x95';Byte '\x5f';Byte '\xfe';Byte '\xe9';Byte '\x99';Byte '\x11';Byte '\xb6';Byte '\x23';Byte '\x5e';Byte '\x1a';Byte '\x4e';Byte '\x54';Byte '\x4d';Byte '\x50';Byte '\x57';Byte '\x47';Byte '\x50';Byte '\x50';Byte '\x5a';Byte '\x54';Byte '\x59';Byte '\x56';Byte '\x46';Byte '\x4d';Byte '\x4a';Byte '\x41';Byte '\x42';Byte '\x4f';Byte '\x49';Byte '\x00';Byte '\x37';Byte '\x8e';Byte '\xf8';Byte '\xab';Byte '\xd5';Byte '\xe5';Byte '\xb2';Byte '\x20';Byte '\x5b';Byte '\xa4';Byte '\x20';Byte '\x44';Byte '\xea';Byte '\x93';Byte '\x9a';Byte '\x62';Byte '\xf2';Byte '\x8d';Byte '\x11';Byte '\x97';Byte '\x94';Byte '\xbe';Byte '\x30';Byte '\x2d';Byte '\xb3';Byte '\x5f';Byte '\x28';Byte '\x04';Byte '\xfb';Byte '\x68';Byte '\x10';Byte '\x69';Byte '\x53';Byte '\x44';Byte '\x42';Byte '\x48';Byte '\x4a';Byte '\x41';Byte '\x42';Byte '\x49';Byte '\x55';Byte '\x49';Byte '\x53';Byte '\x46';Byte '\x42';Byte '\x4a';Byte '\x46';Byte '\x47';Byte '\x4f';Byte '\x47';Byte '\x50';Byte '\x4f';Byte '\x00';Byte '\xa0';Byte '\x81';Byte '\xfc';Byte '\x6a';Byte '\x9c';Byte '\x9b';Byte '\x6d';Byte '\x76';Byte '\x51';Byte '\x51';Byte '\x4a';Byte '\x49';Byte '\x56';Byte '\x57';Byte '\x53';Byte '\x55';Byte '\x57';Byte '\x4b';Byte '\x57';Byte '\x00';Byte '\x4d';Byte '\x43';Byte '\x51';Byte '\x54';Byte '\x44';Byte '\x4f';Byte '\x51';Byte '\x57';Byte '\x56';Byte '\x46';Byte '\x00';Byte '\x57';Byte '\x46';Byte '\x50';Byte '\x58';Byte '\x42';Byte '\x4c';Byte '\x4a';Byte '\x45';Byte '\x53';Byte '\x56';Byte '\x46';Byte '\x56';Byte '\x53';Byte '\x43';Byte '\x43';Byte '\x44';Byte '\x00';Byte '\x29';Byte '\xa2';Byte '\xf7';Byte '\x8a';Byte '\x84';Byte '\xbf';Byte '\xc5';Byte '\x77';Byte '\x51';Byte '\x5a';Byte '\x54';Byte '\x56';Byte '\x41';Byte '\x5a';Byte '\x4c';Byte '\x47';Byte '\x41';Byte '\x4d';Byte '\x43';Byte '\x5a';Byte '\x43';Byte '\x49';Byte '\x4c';Byte '\x4b';Byte '\x4e';Byte '\x4a';Byte '\x4a';Byte '\x00';Byte '\x47';Byte '\x52';Byte '\x59';Byte '\x55';Byte '\x45';Byte '\x42';Byte '\x46';Byte '\x58';Byte '\x42';Byte '\x45';Byte '\x4d';Byte '\x55';Byte '\x42';Byte '\x55';Byte '\x00';Byte '\x4a';Byte '\x45';Byte '\x56';Byte '\x56';Byte '\x50';Byte '\x58';Byte '\x59';Byte '\x48';Byte '\x41';Byte '\x46';Byte '\x49';Byte '\x5a';Byte '\x43';Byte '\x4c';Byte '\x42';Byte '\x43';Byte '\x00';Byte '\x4d';Byte '\x0a';Byte '\x93';Byte '\x02';Byte '\x96';Byte '\x01';Byte '\xac';Byte '\x48';Byte '\x45';Byte '\x46';Byte '\x48';Byte '\x46';Byte '\x49';Byte '\x51';Byte '\x4d';Byte '\x4d';Byte '\x49';Byte '\x4f';Byte '\x5a';Byte '\x58';Byte '\x00';Byte '\x85';Byte '\xa6';Byte '\x47';Byte '\xd1';Byte '\xd7';Byte '\x4a';Byte '\xa4';Byte '\x0a';Byte '\x50';Byte '\x43';Byte '\x47';Byte '\x56';Byte '\x54';Byte '\x4f';Byte '\x55';Byte '\x5a';Byte '\x51';Byte '\x4b';Byte '\x43';Byte '\x54';Byte '\x49';Byte '\x55';Byte '\x47';Byte '\x44';Byte '\x00';Byte '\x51';Byte '\x47';Byte '\x57';Byte '\x53';Byte '\x53';Byte '\x4e';Byte '\x54';Byte '\x41';Byte '\x44';Byte '\x59';Byte '\x47';Byte '\x52';Byte '\x51';Byte '\x4f';Byte '\x45';Byte '\x48';Byte '\x49';Byte '\x00';Byte '\x83';Byte '\x56';Byte '\x6b';Byte '\xe5';Byte '\x1d';Byte '\x01';Byte '\x7b';Byte '\x63';Byte '\x58';Byte '\x41';Byte '\x56';Byte '\x44';Byte '\x52';Byte '\x59';Byte '\x47';Byte '\x58';Byte '\x4b';Byte '\x45';Byte '\x00';Byte '\xe5';Byte '\x43';Byte '\x3e';Byte '\xd0';Byte '\xf5';Byte '\xb0';Byte '\x0f';Byte '\x3f';Byte '\x3b';Byte '\xfe';Byte '\xb9';Byte '\x81';Byte '\x09';Byte '\x03';Byte '\x68';Byte '\x3d';]
let test_76_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400050L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400069L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400075L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000bdL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000eaL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f6L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400112L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40014eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40017cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001a9L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_77 = [
  data "AAAAAAWK" [
    Asciz ("PZKEQKWPOYFUPKFDJ");
    Quad (Lit 8660670591613857417L);
    Asciz ("MWZFVQRMHUXY");
    Asciz ("FAPUDCJFBSVWXORDZ");
  ];
  data "AAAAAAWL" [
    Quad (Lit 1446161995544817801L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAWK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAWL"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAWM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAWN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAWO"); ~%Rax];
];
  data "AAAAAAWM" [
    Asciz ("DTLWVBBWMILDRIMRIRVW");
    Quad (Lit 6764331664132036669L);
    Asciz ("YWELCSAQCDIYVF");
    Quad (Lit 4766555732282062837L);
  ];
  data "AAAAAAWN" [
    Asciz ("UBMXPYRQOCIN");
    Asciz ("QOPGDOBYJRYJBXIIX");
    Quad (Lit 6497609778070629113L);
    Quad (Lit 2830353496702631048L);
    Quad (Lit 777953484296281963L);
  ];
  data "AAAAAAWO" [
    Quad (Lit 9153018305490096725L);
    Asciz ("TZJNGVNEPASK");
    Quad (Lit 4298964099445572918L);
    Quad (Lit 5046035656098938889L);
    Asciz ("BOGXDVILAKB");
    Quad (Lit 439163391926587057L);
  ];
]
let test_77_data = [Byte '\x50';Byte '\x5a';Byte '\x4b';Byte '\x45';Byte '\x51';Byte '\x4b';Byte '\x57';Byte '\x50';Byte '\x4f';Byte '\x59';Byte '\x46';Byte '\x55';Byte '\x50';Byte '\x4b';Byte '\x46';Byte '\x44';Byte '\x4a';Byte '\x00';Byte '\x89';Byte '\xee';Byte '\xd0';Byte '\x51';Byte '\x04';Byte '\xe2';Byte '\x30';Byte '\x78';Byte '\x4d';Byte '\x57';Byte '\x5a';Byte '\x46';Byte '\x56';Byte '\x51';Byte '\x52';Byte '\x4d';Byte '\x48';Byte '\x55';Byte '\x58';Byte '\x59';Byte '\x00';Byte '\x46';Byte '\x41';Byte '\x50';Byte '\x55';Byte '\x44';Byte '\x43';Byte '\x4a';Byte '\x46';Byte '\x42';Byte '\x53';Byte '\x56';Byte '\x57';Byte '\x58';Byte '\x4f';Byte '\x52';Byte '\x44';Byte '\x5a';Byte '\x00';Byte '\x89';Byte '\x70';Byte '\x1e';Byte '\x40';Byte '\xac';Byte '\xcc';Byte '\x11';Byte '\x14';Byte '\x44';Byte '\x54';Byte '\x4c';Byte '\x57';Byte '\x56';Byte '\x42';Byte '\x42';Byte '\x57';Byte '\x4d';Byte '\x49';Byte '\x4c';Byte '\x44';Byte '\x52';Byte '\x49';Byte '\x4d';Byte '\x52';Byte '\x49';Byte '\x52';Byte '\x56';Byte '\x57';Byte '\x00';Byte '\x3d';Byte '\x58';Byte '\x84';Byte '\x3f';Byte '\xcf';Byte '\xbb';Byte '\xdf';Byte '\x5d';Byte '\x59';Byte '\x57';Byte '\x45';Byte '\x4c';Byte '\x43';Byte '\x53';Byte '\x41';Byte '\x51';Byte '\x43';Byte '\x44';Byte '\x49';Byte '\x59';Byte '\x56';Byte '\x46';Byte '\x00';Byte '\xf5';Byte '\x37';Byte '\xc6';Byte '\x28';Byte '\x2f';Byte '\x35';Byte '\x26';Byte '\x42';Byte '\x55';Byte '\x42';Byte '\x4d';Byte '\x58';Byte '\x50';Byte '\x59';Byte '\x52';Byte '\x51';Byte '\x4f';Byte '\x43';Byte '\x49';Byte '\x4e';Byte '\x00';Byte '\x51';Byte '\x4f';Byte '\x50';Byte '\x47';Byte '\x44';Byte '\x4f';Byte '\x42';Byte '\x59';Byte '\x4a';Byte '\x52';Byte '\x59';Byte '\x4a';Byte '\x42';Byte '\x58';Byte '\x49';Byte '\x49';Byte '\x58';Byte '\x00';Byte '\xf9';Byte '\x2a';Byte '\x01';Byte '\xd7';Byte '\xaa';Byte '\x25';Byte '\x2c';Byte '\x5a';Byte '\x88';Byte '\xbc';Byte '\xbe';Byte '\x67';Byte '\x82';Byte '\x6f';Byte '\x47';Byte '\x27';Byte '\x6b';Byte '\xdf';Byte '\x41';Byte '\x7b';Byte '\x92';Byte '\xd8';Byte '\xcb';Byte '\x0a';Byte '\x55';Byte '\x92';Byte '\x62';Byte '\x71';Byte '\xa7';Byte '\x0d';Byte '\x06';Byte '\x7f';Byte '\x54';Byte '\x5a';Byte '\x4a';Byte '\x4e';Byte '\x47';Byte '\x56';Byte '\x4e';Byte '\x45';Byte '\x50';Byte '\x41';Byte '\x53';Byte '\x4b';Byte '\x00';Byte '\x36';Byte '\x45';Byte '\x9c';Byte '\x51';Byte '\x12';Byte '\xfd';Byte '\xa8';Byte '\x3b';Byte '\x09';Byte '\x80';Byte '\xbb';Byte '\xb5';Byte '\xb1';Byte '\x1e';Byte '\x07';Byte '\x46';Byte '\x42';Byte '\x4f';Byte '\x47';Byte '\x58';Byte '\x44';Byte '\x56';Byte '\x49';Byte '\x4c';Byte '\x41';Byte '\x4b';Byte '\x42';Byte '\x00';Byte '\xb1';Byte '\xce';Byte '\x23';Byte '\x36';Byte '\xc7';Byte '\x38';Byte '\x18';Byte '\x06';]
let test_77_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400028L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400061L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400069L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40009dL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000d4L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_78 = [
  data "AAAAAAWP" [
    Quad (Lit 8998366903899212094L);
    Asciz ("RQZRHDQBXKHFORTRRK");
    Asciz ("XPUYZPCPAHGCFVOV");
    Quad (Lit 6973856284306322809L);
    Quad (Lit 9007285871875726841L);
  ];
  data "AAAAAAWQ" [
    Quad (Lit 9131544317922224663L);
    Quad (Lit 6922773869753471076L);
    Asciz ("NKIKPPZABZFXGLUKOPPN");
  ];
  data "AAAAAAWR" [
    Quad (Lit 7405218942785564585L);
    Asciz ("ZJFQNXAMXGTIC");
    Quad (Lit 8571131487672109014L);
    Asciz ("KDJXMLIFBYSZTTNSFJQO");
    Quad (Lit 406842347478151361L);
    Asciz ("NEAOCNRSSKH");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAWP"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAWQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAWR"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAWS"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAWT"); ~%Rax];
];
  data "AAAAAAWS" [
    Quad (Lit 3400006549442580841L);
    Quad (Lit 4376048000447167477L);
    Quad (Lit 8525942389812038665L);
    Asciz ("KQXTSQWYKVMSIZFHZJE");
    Quad (Lit 3334041496740438293L);
    Asciz ("WWCDKXPWSWFBF");
  ];
  data "AAAAAAWT" [
    Quad (Lit 2160096924718450914L);
  ];
]
let test_78_data = [Byte '\x3e';Byte '\x49';Byte '\x8b';Byte '\x11';Byte '\x06';Byte '\x9f';Byte '\xe0';Byte '\x7c';Byte '\x52';Byte '\x51';Byte '\x5a';Byte '\x52';Byte '\x48';Byte '\x44';Byte '\x51';Byte '\x42';Byte '\x58';Byte '\x4b';Byte '\x48';Byte '\x46';Byte '\x4f';Byte '\x52';Byte '\x54';Byte '\x52';Byte '\x52';Byte '\x4b';Byte '\x00';Byte '\x58';Byte '\x50';Byte '\x55';Byte '\x59';Byte '\x5a';Byte '\x50';Byte '\x43';Byte '\x50';Byte '\x41';Byte '\x48';Byte '\x47';Byte '\x43';Byte '\x46';Byte '\x56';Byte '\x4f';Byte '\x56';Byte '\x00';Byte '\x79';Byte '\x35';Byte '\xb4';Byte '\x6c';Byte '\x57';Byte '\x1d';Byte '\xc8';Byte '\x60';Byte '\xf9';Byte '\x1d';Byte '\x8c';Byte '\x1f';Byte '\xc7';Byte '\x4e';Byte '\x00';Byte '\x7d';Byte '\x17';Byte '\xaa';Byte '\x7d';Byte '\x18';Byte '\x2d';Byte '\xc3';Byte '\xb9';Byte '\x7e';Byte '\x64';Byte '\x10';Byte '\x03';Byte '\xf7';Byte '\x27';Byte '\xa2';Byte '\x12';Byte '\x60';Byte '\x4e';Byte '\x4b';Byte '\x49';Byte '\x4b';Byte '\x50';Byte '\x50';Byte '\x5a';Byte '\x41';Byte '\x42';Byte '\x5a';Byte '\x46';Byte '\x58';Byte '\x47';Byte '\x4c';Byte '\x55';Byte '\x4b';Byte '\x4f';Byte '\x50';Byte '\x50';Byte '\x4e';Byte '\x00';Byte '\xa9';Byte '\x2f';Byte '\xba';Byte '\xd8';Byte '\x64';Byte '\x9f';Byte '\xc4';Byte '\x66';Byte '\x5a';Byte '\x4a';Byte '\x46';Byte '\x51';Byte '\x4e';Byte '\x58';Byte '\x41';Byte '\x4d';Byte '\x58';Byte '\x47';Byte '\x54';Byte '\x49';Byte '\x43';Byte '\x00';Byte '\xd6';Byte '\x87';Byte '\xdc';Byte '\x1d';Byte '\xad';Byte '\xc6';Byte '\xf2';Byte '\x76';Byte '\x4b';Byte '\x44';Byte '\x4a';Byte '\x58';Byte '\x4d';Byte '\x4c';Byte '\x49';Byte '\x46';Byte '\x42';Byte '\x59';Byte '\x53';Byte '\x5a';Byte '\x54';Byte '\x54';Byte '\x4e';Byte '\x53';Byte '\x46';Byte '\x4a';Byte '\x51';Byte '\x4f';Byte '\x00';Byte '\xc1';Byte '\x70';Byte '\x05';Byte '\xa1';Byte '\xf5';Byte '\x64';Byte '\xa5';Byte '\x05';Byte '\x4e';Byte '\x45';Byte '\x41';Byte '\x4f';Byte '\x43';Byte '\x4e';Byte '\x52';Byte '\x53';Byte '\x53';Byte '\x4b';Byte '\x48';Byte '\x00';Byte '\x69';Byte '\xd1';Byte '\x86';Byte '\x55';Byte '\xf1';Byte '\x3f';Byte '\x2f';Byte '\x2f';Byte '\xf5';Byte '\x3b';Byte '\xb6';Byte '\x9a';Byte '\x78';Byte '\xd8';Byte '\xba';Byte '\x3c';Byte '\x09';Byte '\x0c';Byte '\x31';Byte '\x60';Byte '\x6e';Byte '\x3b';Byte '\x52';Byte '\x76';Byte '\x4b';Byte '\x51';Byte '\x58';Byte '\x54';Byte '\x53';Byte '\x51';Byte '\x57';Byte '\x59';Byte '\x4b';Byte '\x56';Byte '\x4d';Byte '\x53';Byte '\x49';Byte '\x5a';Byte '\x46';Byte '\x48';Byte '\x5a';Byte '\x4a';Byte '\x45';Byte '\x00';Byte '\x15';Byte '\x21';Byte '\xa0';Byte '\xa7';Byte '\x13';Byte '\xe5';Byte '\x44';Byte '\x2e';Byte '\x57';Byte '\x57';Byte '\x43';Byte '\x44';Byte '\x4b';Byte '\x58';Byte '\x50';Byte '\x57';Byte '\x53';Byte '\x57';Byte '\x46';Byte '\x42';Byte '\x46';Byte '\x00';Byte '\xe2';Byte '\xc8';Byte '\x41';Byte '\x56';Byte '\xb5';Byte '\x34';Byte '\xfa';Byte '\x1d';]
let test_78_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400028L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400064L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400089L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000d0L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400112L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_79 = [
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAWU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAWV"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAWW"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAWX"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAWY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAWZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAXA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAXB"); ~%Rax];
];
  data "AAAAAAWU" [
    Asciz ("ZIWVCVUEKDEN");
    Asciz ("JDESWZGRDINQRU");
  ];
  data "AAAAAAWV" [
    Quad (Lit 5867345422922241274L);
    Asciz ("CZRTGPURLSM");
    Asciz ("EDIFMWYFQYMGXUF");
  ];
  data "AAAAAAWW" [
    Asciz ("ITGRJYNHUQHUMAF");
    Asciz ("GJIFFYLDOIZTZTYIPX");
    Asciz ("EVFXSGTSNGKSPZE");
    Quad (Lit 8512038602948169311L);
    Quad (Lit 5296129871329376066L);
  ];
  data "AAAAAAWX" [
    Asciz ("LULNCFGOGU");
    Quad (Lit 3391374445362367164L);
    Asciz ("KFTTLUXHARGBUJ");
    Asciz ("ORIVBLTPVS");
  ];
  data "AAAAAAWY" [
    Quad (Lit 7478304266276057241L);
    Asciz ("DRKQAMMBPALJFL");
    Quad (Lit 6163158977194713942L);
    Quad (Lit 9176235831437648898L);
    Quad (Lit 5683862291311332532L);
  ];
  data "AAAAAAWZ" [
    Quad (Lit 3864732270070471039L);
    Quad (Lit 8404908099438892862L);
  ];
  data "AAAAAAXA" [
    Asciz ("PGXKKYHRWNUBTJQASNB");
    Asciz ("THGWGLOCQUIOKAEQ");
    Asciz ("WHDEHVGHWXBPDODYHLY");
    Quad (Lit 2573246934349927989L);
    Asciz ("UGXCWJMSJHW");
  ];
  data "AAAAAAXB" [
    Asciz ("TEXKCLFXPFHBXSXCU");
    Quad (Lit 5929808346099248916L);
    Asciz ("EWOEVMJEZSEXSSSHATPI");
    Quad (Lit 4942120272531441001L);
  ];
]
let test_79_data = [Byte '\x5a';Byte '\x49';Byte '\x57';Byte '\x56';Byte '\x43';Byte '\x56';Byte '\x55';Byte '\x45';Byte '\x4b';Byte '\x44';Byte '\x45';Byte '\x4e';Byte '\x00';Byte '\x4a';Byte '\x44';Byte '\x45';Byte '\x53';Byte '\x57';Byte '\x5a';Byte '\x47';Byte '\x52';Byte '\x44';Byte '\x49';Byte '\x4e';Byte '\x51';Byte '\x52';Byte '\x55';Byte '\x00';Byte '\xfa';Byte '\x54';Byte '\xcb';Byte '\x5b';Byte '\x93';Byte '\xff';Byte '\x6c';Byte '\x51';Byte '\x43';Byte '\x5a';Byte '\x52';Byte '\x54';Byte '\x47';Byte '\x50';Byte '\x55';Byte '\x52';Byte '\x4c';Byte '\x53';Byte '\x4d';Byte '\x00';Byte '\x45';Byte '\x44';Byte '\x49';Byte '\x46';Byte '\x4d';Byte '\x57';Byte '\x59';Byte '\x46';Byte '\x51';Byte '\x59';Byte '\x4d';Byte '\x47';Byte '\x58';Byte '\x55';Byte '\x46';Byte '\x00';Byte '\x49';Byte '\x54';Byte '\x47';Byte '\x52';Byte '\x4a';Byte '\x59';Byte '\x4e';Byte '\x48';Byte '\x55';Byte '\x51';Byte '\x48';Byte '\x55';Byte '\x4d';Byte '\x41';Byte '\x46';Byte '\x00';Byte '\x47';Byte '\x4a';Byte '\x49';Byte '\x46';Byte '\x46';Byte '\x59';Byte '\x4c';Byte '\x44';Byte '\x4f';Byte '\x49';Byte '\x5a';Byte '\x54';Byte '\x5a';Byte '\x54';Byte '\x59';Byte '\x49';Byte '\x50';Byte '\x58';Byte '\x00';Byte '\x45';Byte '\x56';Byte '\x46';Byte '\x58';Byte '\x53';Byte '\x47';Byte '\x54';Byte '\x53';Byte '\x4e';Byte '\x47';Byte '\x4b';Byte '\x53';Byte '\x50';Byte '\x5a';Byte '\x45';Byte '\x00';Byte '\x5f';Byte '\x4e';Byte '\x23';Byte '\xbb';Byte '\x02';Byte '\xd6';Byte '\x20';Byte '\x76';Byte '\x42';Byte '\x37';Byte '\xec';Byte '\xd0';Byte '\x0e';Byte '\xa2';Byte '\x7f';Byte '\x49';Byte '\x4c';Byte '\x55';Byte '\x4c';Byte '\x4e';Byte '\x43';Byte '\x46';Byte '\x47';Byte '\x4f';Byte '\x47';Byte '\x55';Byte '\x00';Byte '\xbc';Byte '\x4a';Byte '\x29';Byte '\xfc';Byte '\x16';Byte '\x95';Byte '\x10';Byte '\x2f';Byte '\x4b';Byte '\x46';Byte '\x54';Byte '\x54';Byte '\x4c';Byte '\x55';Byte '\x58';Byte '\x48';Byte '\x41';Byte '\x52';Byte '\x47';Byte '\x42';Byte '\x55';Byte '\x4a';Byte '\x00';Byte '\x4f';Byte '\x52';Byte '\x49';Byte '\x56';Byte '\x42';Byte '\x4c';Byte '\x54';Byte '\x50';Byte '\x56';Byte '\x53';Byte '\x00';Byte '\x99';Byte '\x30';Byte '\xac';Byte '\xc1';Byte '\x1b';Byte '\x46';Byte '\xc8';Byte '\x67';Byte '\x44';Byte '\x52';Byte '\x4b';Byte '\x51';Byte '\x41';Byte '\x4d';Byte '\x4d';Byte '\x42';Byte '\x50';Byte '\x41';Byte '\x4c';Byte '\x4a';Byte '\x46';Byte '\x4c';Byte '\x00';Byte '\x56';Byte '\x63';Byte '\xf3';Byte '\x99';Byte '\x6f';Byte '\xf0';Byte '\x87';Byte '\x55';Byte '\x02';Byte '\x64';Byte '\x0d';Byte '\xf4';Byte '\xde';Byte '\x89';Byte '\x58';Byte '\x7f';Byte '\xb4';Byte '\x8c';Byte '\xd9';Byte '\xb9';Byte '\xa3';Byte '\x22';Byte '\xe1';Byte '\x4e';Byte '\x7f';Byte '\x19';Byte '\x8a';Byte '\xfd';Byte '\x85';Byte '\x49';Byte '\xa2';Byte '\x35';Byte '\x3e';Byte '\xd7';Byte '\xdb';Byte '\xa4';Byte '\x62';Byte '\x3b';Byte '\xa4';Byte '\x74';Byte '\x50';Byte '\x47';Byte '\x58';Byte '\x4b';Byte '\x4b';Byte '\x59';Byte '\x48';Byte '\x52';Byte '\x57';Byte '\x4e';Byte '\x55';Byte '\x42';Byte '\x54';Byte '\x4a';Byte '\x51';Byte '\x41';Byte '\x53';Byte '\x4e';Byte '\x42';Byte '\x00';Byte '\x54';Byte '\x48';Byte '\x47';Byte '\x57';Byte '\x47';Byte '\x4c';Byte '\x4f';Byte '\x43';Byte '\x51';Byte '\x55';Byte '\x49';Byte '\x4f';Byte '\x4b';Byte '\x41';Byte '\x45';Byte '\x51';Byte '\x00';Byte '\x57';Byte '\x48';Byte '\x44';Byte '\x45';Byte '\x48';Byte '\x56';Byte '\x47';Byte '\x48';Byte '\x57';Byte '\x58';Byte '\x42';Byte '\x50';Byte '\x44';Byte '\x4f';Byte '\x44';Byte '\x59';Byte '\x48';Byte '\x4c';Byte '\x59';Byte '\x00';Byte '\x35';Byte '\x56';Byte '\x4a';Byte '\x01';Byte '\x74';Byte '\x02';Byte '\xb6';Byte '\x23';Byte '\x55';Byte '\x47';Byte '\x58';Byte '\x43';Byte '\x57';Byte '\x4a';Byte '\x4d';Byte '\x53';Byte '\x4a';Byte '\x48';Byte '\x57';Byte '\x00';Byte '\x54';Byte '\x45';Byte '\x58';Byte '\x4b';Byte '\x43';Byte '\x4c';Byte '\x46';Byte '\x58';Byte '\x50';Byte '\x46';Byte '\x48';Byte '\x42';Byte '\x58';Byte '\x53';Byte '\x58';Byte '\x43';Byte '\x55';Byte '\x00';Byte '\x14';Byte '\x6f';Byte '\x64';Byte '\xf7';Byte '\x45';Byte '\xe9';Byte '\x4a';Byte '\x52';Byte '\x45';Byte '\x57';Byte '\x4f';Byte '\x45';Byte '\x56';Byte '\x4d';Byte '\x4a';Byte '\x45';Byte '\x5a';Byte '\x53';Byte '\x45';Byte '\x58';Byte '\x53';Byte '\x53';Byte '\x53';Byte '\x48';Byte '\x41';Byte '\x54';Byte '\x50';Byte '\x49';Byte '\x00';Byte '\x69';Byte '\x45';Byte '\x7e';Byte '\x11';Byte '\x34';Byte '\xf0';Byte '\x95';Byte '\x44';]
let test_79_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400040L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40005cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400080L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c3L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f0L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40011fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40012fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40017cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_80 = [
  data "AAAAAAXC" [
    Asciz ("KLBSVDNSUWWMGHCLPMXB");
    Quad (Lit 8324716720444722101L);
    Quad (Lit 9052522146879929771L);
    Quad (Lit 6753316609782963903L);
    Asciz ("FVQBNKKUZPRGW");
    Quad (Lit 7940538283916186919L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAXC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAXD"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAXE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAXF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAXG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAXH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAXI"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAXJ"); ~%Rax];
];
  data "AAAAAAXD" [
    Quad (Lit 935739436392300710L);
    Quad (Lit 3960536545562749398L);
  ];
  data "AAAAAAXE" [
    Quad (Lit 7888939685438244184L);
    Quad (Lit 3951315965044986240L);
  ];
  data "AAAAAAXF" [
    Asciz ("MPGDVNRSJNBKK");
    Asciz ("OZLHSOHBMM");
    Asciz ("NAFXSNUJOFMVJDVDYKF");
    Asciz ("HOVRQFUCGWE");
    Quad (Lit 6514401512643500854L);
  ];
  data "AAAAAAXG" [
    Quad (Lit 482086873616731495L);
    Asciz ("SXDPRFOIQOQTGTZNVDUT");
    Quad (Lit 686461769503390341L);
  ];
  data "AAAAAAXH" [
    Asciz ("HTFNOCMNKCM");
    Asciz ("XGAFVIZXWRRG");
    Quad (Lit 7763355698678972553L);
  ];
  data "AAAAAAXI" [
    Asciz ("MJTVVWRIDUO");
  ];
  data "AAAAAAXJ" [
    Asciz ("KOCBNWDJTKHKHZJSEXVX");
    Asciz ("OQGZOUFHFPHGLHQ");
  ];
]
let test_80_data = [Byte '\x4b';Byte '\x4c';Byte '\x42';Byte '\x53';Byte '\x56';Byte '\x44';Byte '\x4e';Byte '\x53';Byte '\x55';Byte '\x57';Byte '\x57';Byte '\x4d';Byte '\x47';Byte '\x48';Byte '\x43';Byte '\x4c';Byte '\x50';Byte '\x4d';Byte '\x58';Byte '\x42';Byte '\x00';Byte '\xb5';Byte '\xcb';Byte '\xdc';Byte '\x41';Byte '\xc0';Byte '\x55';Byte '\x87';Byte '\x73';Byte '\xab';Byte '\x7d';Byte '\x22';Byte '\x26';Byte '\xee';Byte '\x04';Byte '\xa1';Byte '\x7d';Byte '\xbf';Byte '\xde';Byte '\xdb';Byte '\x0d';Byte '\xad';Byte '\x99';Byte '\xb8';Byte '\x5d';Byte '\x46';Byte '\x56';Byte '\x51';Byte '\x42';Byte '\x4e';Byte '\x4b';Byte '\x4b';Byte '\x55';Byte '\x5a';Byte '\x50';Byte '\x52';Byte '\x47';Byte '\x57';Byte '\x00';Byte '\x27';Byte '\xd5';Byte '\x36';Byte '\x9a';Byte '\x7f';Byte '\x75';Byte '\x32';Byte '\x6e';Byte '\xa6';Byte '\xc0';Byte '\x7c';Byte '\x44';Byte '\x0f';Byte '\x6a';Byte '\xfc';Byte '\x0c';Byte '\xd6';Byte '\x69';Byte '\x38';Byte '\x1e';Byte '\x01';Byte '\xa7';Byte '\xf6';Byte '\x36';Byte '\x58';Byte '\x45';Byte '\x07';Byte '\xb5';Byte '\xd8';Byte '\x24';Byte '\x7b';Byte '\x6d';Byte '\x80';Byte '\x11';Byte '\xd6';Byte '\x6b';Byte '\xef';Byte '\xe4';Byte '\xd5';Byte '\x36';Byte '\x4d';Byte '\x50';Byte '\x47';Byte '\x44';Byte '\x56';Byte '\x4e';Byte '\x52';Byte '\x53';Byte '\x4a';Byte '\x4e';Byte '\x42';Byte '\x4b';Byte '\x4b';Byte '\x00';Byte '\x4f';Byte '\x5a';Byte '\x4c';Byte '\x48';Byte '\x53';Byte '\x4f';Byte '\x48';Byte '\x42';Byte '\x4d';Byte '\x4d';Byte '\x00';Byte '\x4e';Byte '\x41';Byte '\x46';Byte '\x58';Byte '\x53';Byte '\x4e';Byte '\x55';Byte '\x4a';Byte '\x4f';Byte '\x46';Byte '\x4d';Byte '\x56';Byte '\x4a';Byte '\x44';Byte '\x56';Byte '\x44';Byte '\x59';Byte '\x4b';Byte '\x46';Byte '\x00';Byte '\x48';Byte '\x4f';Byte '\x56';Byte '\x52';Byte '\x51';Byte '\x46';Byte '\x55';Byte '\x43';Byte '\x47';Byte '\x57';Byte '\x45';Byte '\x00';Byte '\x36';Byte '\x1b';Byte '\x62';Byte '\x35';Byte '\xa9';Byte '\xcd';Byte '\x67';Byte '\x5a';Byte '\x67';Byte '\xcd';Byte '\xcd';Byte '\x14';Byte '\x75';Byte '\xb7';Byte '\xb0';Byte '\x06';Byte '\x53';Byte '\x58';Byte '\x44';Byte '\x50';Byte '\x52';Byte '\x46';Byte '\x4f';Byte '\x49';Byte '\x51';Byte '\x4f';Byte '\x51';Byte '\x54';Byte '\x47';Byte '\x54';Byte '\x5a';Byte '\x4e';Byte '\x56';Byte '\x44';Byte '\x55';Byte '\x54';Byte '\x00';Byte '\x85';Byte '\xba';Byte '\x22';Byte '\xa3';Byte '\x57';Byte '\xcd';Byte '\x86';Byte '\x09';Byte '\x48';Byte '\x54';Byte '\x46';Byte '\x4e';Byte '\x4f';Byte '\x43';Byte '\x4d';Byte '\x4e';Byte '\x4b';Byte '\x43';Byte '\x4d';Byte '\x00';Byte '\x58';Byte '\x47';Byte '\x41';Byte '\x46';Byte '\x56';Byte '\x49';Byte '\x5a';Byte '\x58';Byte '\x57';Byte '\x52';Byte '\x52';Byte '\x47';Byte '\x00';Byte '\x89';Byte '\xc0';Byte '\xc3';Byte '\x3c';Byte '\xe0';Byte '\xfa';Byte '\xbc';Byte '\x6b';Byte '\x4d';Byte '\x4a';Byte '\x54';Byte '\x56';Byte '\x56';Byte '\x57';Byte '\x52';Byte '\x49';Byte '\x44';Byte '\x55';Byte '\x4f';Byte '\x00';Byte '\x4b';Byte '\x4f';Byte '\x43';Byte '\x42';Byte '\x4e';Byte '\x57';Byte '\x44';Byte '\x4a';Byte '\x54';Byte '\x4b';Byte '\x48';Byte '\x4b';Byte '\x48';Byte '\x5a';Byte '\x4a';Byte '\x53';Byte '\x45';Byte '\x58';Byte '\x56';Byte '\x58';Byte '\x00';Byte '\x4f';Byte '\x51';Byte '\x47';Byte '\x5a';Byte '\x4f';Byte '\x55';Byte '\x46';Byte '\x48';Byte '\x46';Byte '\x50';Byte '\x48';Byte '\x47';Byte '\x4c';Byte '\x48';Byte '\x51';Byte '\x00';]
let test_80_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400040L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400083L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400093L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000a3L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000e4L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400109L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40012aL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400136L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_81 = [
  data "AAAAAAXK" [
    Quad (Lit 4906523697604268158L);
    Asciz ("OYKHMTJQRDWAVPUA");
    Quad (Lit 1119783351409136718L);
  ];
  data "AAAAAAXL" [
    Asciz ("OUQVTYCDXTAJICOQ");
    Quad (Lit 6821001303079778932L);
    Asciz ("NPINUEDVEPRGCBHUTLEB");
    Asciz ("WSHPAGAWNJOZSJRAP");
  ];
  data "AAAAAAXM" [
    Quad (Lit 6802772878582540501L);
    Quad (Lit 1891356572823437069L);
    Asciz ("LWTEPQUDVZHCTWLSVF");
    Asciz ("SEDJLQCYSWWJU");
  ];
  data "AAAAAAXN" [
    Asciz ("UXZQTMBOJSOG");
    Asciz ("YZYHOJDOKYSG");
    Asciz ("HALHTCIGKJIMEKYVJ");
    Quad (Lit 3229086598330728846L);
    Quad (Lit 4929980944740203424L);
    Quad (Lit 5927697032213042163L);
  ];
  data "AAAAAAXO" [
    Quad (Lit 3341719681963052289L);
    Quad (Lit 6002626615060863077L);
    Quad (Lit 8479493979723536947L);
    Asciz ("FAZMDOYFUDCJNXOZMQH");
    Quad (Lit 116583864263085928L);
    Quad (Lit 3049602217313428829L);
  ];
  data "AAAAAAXP" [
    Asciz ("SAXSLJSFICPMCG");
    Asciz ("TDORORXOPSPVPWRGLWY");
    Quad (Lit 3865788464743355467L);
    Quad (Lit 3233001115637549193L);
  ];
  data "AAAAAAXQ" [
    Asciz ("GPTGLGSKCWCI");
    Quad (Lit 6381755730262121079L);
    Quad (Lit 311397368733508981L);
    Quad (Lit 6509676078797476336L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAXK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAXL"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAXM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAXN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAXO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAXP"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAXQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAXR"); ~%Rax];
];
  data "AAAAAAXR" [
    Quad (Lit 5272453166876937821L);
    Asciz ("FPSXJQQKDBMWPEUE");
  ];
]
let test_81_data = [Byte '\x7e';Byte '\x10';Byte '\xbd';Byte '\x9d';Byte '\x4e';Byte '\x79';Byte '\x17';Byte '\x44';Byte '\x4f';Byte '\x59';Byte '\x4b';Byte '\x48';Byte '\x4d';Byte '\x54';Byte '\x4a';Byte '\x51';Byte '\x52';Byte '\x44';Byte '\x57';Byte '\x41';Byte '\x56';Byte '\x50';Byte '\x55';Byte '\x41';Byte '\x00';Byte '\x4e';Byte '\x54';Byte '\x23';Byte '\x76';Byte '\x06';Byte '\x45';Byte '\x8a';Byte '\x0f';Byte '\x4f';Byte '\x55';Byte '\x51';Byte '\x56';Byte '\x54';Byte '\x59';Byte '\x43';Byte '\x44';Byte '\x58';Byte '\x54';Byte '\x41';Byte '\x4a';Byte '\x49';Byte '\x43';Byte '\x4f';Byte '\x51';Byte '\x00';Byte '\x74';Byte '\xfa';Byte '\x8b';Byte '\xc2';Byte '\x8b';Byte '\x10';Byte '\xa9';Byte '\x5e';Byte '\x4e';Byte '\x50';Byte '\x49';Byte '\x4e';Byte '\x55';Byte '\x45';Byte '\x44';Byte '\x56';Byte '\x45';Byte '\x50';Byte '\x52';Byte '\x47';Byte '\x43';Byte '\x42';Byte '\x48';Byte '\x55';Byte '\x54';Byte '\x4c';Byte '\x45';Byte '\x42';Byte '\x00';Byte '\x57';Byte '\x53';Byte '\x48';Byte '\x50';Byte '\x41';Byte '\x47';Byte '\x41';Byte '\x57';Byte '\x4e';Byte '\x4a';Byte '\x4f';Byte '\x5a';Byte '\x53';Byte '\x4a';Byte '\x52';Byte '\x41';Byte '\x50';Byte '\x00';Byte '\xd5';Byte '\xe8';Byte '\x92';Byte '\xf3';Byte '\xe3';Byte '\x4d';Byte '\x68';Byte '\x5e';Byte '\x0d';Byte '\xbf';Byte '\xbd';Byte '\x3a';Byte '\xc8';Byte '\x72';Byte '\x3f';Byte '\x1a';Byte '\x4c';Byte '\x57';Byte '\x54';Byte '\x45';Byte '\x50';Byte '\x51';Byte '\x55';Byte '\x44';Byte '\x56';Byte '\x5a';Byte '\x48';Byte '\x43';Byte '\x54';Byte '\x57';Byte '\x4c';Byte '\x53';Byte '\x56';Byte '\x46';Byte '\x00';Byte '\x53';Byte '\x45';Byte '\x44';Byte '\x4a';Byte '\x4c';Byte '\x51';Byte '\x43';Byte '\x59';Byte '\x53';Byte '\x57';Byte '\x57';Byte '\x4a';Byte '\x55';Byte '\x00';Byte '\x55';Byte '\x58';Byte '\x5a';Byte '\x51';Byte '\x54';Byte '\x4d';Byte '\x42';Byte '\x4f';Byte '\x4a';Byte '\x53';Byte '\x4f';Byte '\x47';Byte '\x00';Byte '\x59';Byte '\x5a';Byte '\x59';Byte '\x48';Byte '\x4f';Byte '\x4a';Byte '\x44';Byte '\x4f';Byte '\x4b';Byte '\x59';Byte '\x53';Byte '\x47';Byte '\x00';Byte '\x48';Byte '\x41';Byte '\x4c';Byte '\x48';Byte '\x54';Byte '\x43';Byte '\x49';Byte '\x47';Byte '\x4b';Byte '\x4a';Byte '\x49';Byte '\x4d';Byte '\x45';Byte '\x4b';Byte '\x59';Byte '\x56';Byte '\x4a';Byte '\x00';Byte '\x8e';Byte '\x41';Byte '\x7a';Byte '\x1a';Byte '\x27';Byte '\x05';Byte '\xd0';Byte '\x2c';Byte '\xa0';Byte '\x3b';Byte '\xaf';Byte '\x90';Byte '\x8c';Byte '\xcf';Byte '\x6a';Byte '\x44';Byte '\xf3';Byte '\x13';Byte '\x32';Byte '\x65';Byte '\x0b';Byte '\x69';Byte '\x43';Byte '\x52';Byte '\x01';Byte '\xcd';Byte '\x56';Byte '\x76';Byte '\x58';Byte '\x2c';Byte '\x60';Byte '\x2e';Byte '\x65';Byte '\x18';Byte '\x02';Byte '\x66';Byte '\x1a';Byte '\x9d';Byte '\x4d';Byte '\x53';Byte '\x33';Byte '\x1a';Byte '\x7c';Byte '\x28';Byte '\xd9';Byte '\x36';Byte '\xad';Byte '\x75';Byte '\x46';Byte '\x41';Byte '\x5a';Byte '\x4d';Byte '\x44';Byte '\x4f';Byte '\x59';Byte '\x46';Byte '\x55';Byte '\x44';Byte '\x43';Byte '\x4a';Byte '\x4e';Byte '\x58';Byte '\x4f';Byte '\x5a';Byte '\x4d';Byte '\x51';Byte '\x48';Byte '\x00';Byte '\x68';Byte '\x8f';Byte '\xf1';Byte '\x27';Byte '\x68';Byte '\x30';Byte '\x9e';Byte '\x01';Byte '\x5d';Byte '\xe5';Byte '\x35';Byte '\x25';Byte '\x0f';Byte '\x5d';Byte '\x52';Byte '\x2a';Byte '\x53';Byte '\x41';Byte '\x58';Byte '\x53';Byte '\x4c';Byte '\x4a';Byte '\x53';Byte '\x46';Byte '\x49';Byte '\x43';Byte '\x50';Byte '\x4d';Byte '\x43';Byte '\x47';Byte '\x00';Byte '\x54';Byte '\x44';Byte '\x4f';Byte '\x52';Byte '\x4f';Byte '\x52';Byte '\x58';Byte '\x4f';Byte '\x50';Byte '\x53';Byte '\x50';Byte '\x56';Byte '\x50';Byte '\x57';Byte '\x52';Byte '\x47';Byte '\x4c';Byte '\x57';Byte '\x59';Byte '\x00';Byte '\x4b';Byte '\x94';Byte '\xd4';Byte '\x79';Byte '\x20';Byte '\x0a';Byte '\xa6';Byte '\x35';Byte '\x89';Byte '\x88';Byte '\x04';Byte '\xb0';Byte '\x62';Byte '\xed';Byte '\xdd';Byte '\x2c';Byte '\x47';Byte '\x50';Byte '\x54';Byte '\x47';Byte '\x4c';Byte '\x47';Byte '\x53';Byte '\x4b';Byte '\x43';Byte '\x57';Byte '\x43';Byte '\x49';Byte '\x00';Byte '\x77';Byte '\x5a';Byte '\x96';Byte '\x51';Byte '\x06';Byte '\x8d';Byte '\x90';Byte '\x58';Byte '\x75';Byte '\x25';Byte '\x5a';Byte '\xcb';Byte '\x41';Byte '\x4e';Byte '\x52';Byte '\x04';Byte '\xf0';Byte '\xd1';Byte '\x94';Byte '\x67';Byte '\xe7';Byte '\x03';Byte '\x57';Byte '\x5a';Byte '\x5d';Byte '\x4e';Byte '\x95';Byte '\x7a';Byte '\x38';Byte '\x84';Byte '\x2b';Byte '\x49';Byte '\x46';Byte '\x50';Byte '\x53';Byte '\x58';Byte '\x4a';Byte '\x51';Byte '\x51';Byte '\x4b';Byte '\x44';Byte '\x42';Byte '\x4d';Byte '\x57';Byte '\x50';Byte '\x45';Byte '\x55';Byte '\x45';Byte '\x00';]
let test_81_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400040L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400061L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000a1L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000d2L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400116L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400152L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400185L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001aaL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_82 = [
  data "AAAAAAXS" [
    Asciz ("XRWOJMQWUV");
    Asciz ("XCTVOFYUANCOT");
    Quad (Lit 6079349923304749938L);
    Asciz ("WAIHKDBUAEVKCSUFXLOD");
    Asciz ("JHAHCGLJQUQOQ");
    Asciz ("EXCYPMJRADGOC");
  ];
  data "AAAAAAXT" [
    Quad (Lit 6605476249841515196L);
    Asciz ("CQFMTIVZTPNIFXAWXTTB");
    Asciz ("IHOUZCSVRJKML");
    Asciz ("DZOWTLFQVTZRBG");
    Quad (Lit 3722037944635246557L);
  ];
  data "AAAAAAXU" [
    Quad (Lit 7734894265122735068L);
    Asciz ("WFKJTTUSZQDZ");
    Quad (Lit 2074161379978747350L);
  ];
  data "AAAAAAXV" [
    Asciz ("WAWHOEFBGKHPYCYI");
    Quad (Lit 4231232533277775620L);
    Quad (Lit 9133113457867022386L);
    Quad (Lit 4973378429143795381L);
    Quad (Lit 1515527675137104296L);
    Asciz ("HDZSPIDFIURISSPISTF");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAXS"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAXT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAXU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAXV"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAXW"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAXX"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAXY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAXZ"); ~%Rax];
];
  data "AAAAAAXW" [
    Quad (Lit 3077333990746598710L);
    Quad (Lit 5439329183500903126L);
    Asciz ("RDRSUPZIPGMFDBOOFT");
    Asciz ("DVZYNMKQTD");
    Asciz ("VLSCWOPVGZMJVNABTSAN");
    Quad (Lit 1116005957311938051L);
  ];
  data "AAAAAAXX" [
    Quad (Lit 2035453415002451139L);
  ];
  data "AAAAAAXY" [
    Asciz ("CUAUNDNVPVUQC");
    Quad (Lit 4461375739384179984L);
    Asciz ("FKBEIGTWFZDDNOZVQT");
    Quad (Lit 3235721008345547105L);
  ];
  data "AAAAAAXZ" [
    Quad (Lit 1608074139247919809L);
    Quad (Lit 1178808752429448577L);
    Quad (Lit 3278429714242666116L);
    Asciz ("RAMZVUAEHETAIHKR");
    Asciz ("NFVDAIJRMWLB");
    Quad (Lit 6130808585006986975L);
  ];
]
let test_82_data = [Byte '\x58';Byte '\x52';Byte '\x57';Byte '\x4f';Byte '\x4a';Byte '\x4d';Byte '\x51';Byte '\x57';Byte '\x55';Byte '\x56';Byte '\x00';Byte '\x58';Byte '\x43';Byte '\x54';Byte '\x56';Byte '\x4f';Byte '\x46';Byte '\x59';Byte '\x55';Byte '\x41';Byte '\x4e';Byte '\x43';Byte '\x4f';Byte '\x54';Byte '\x00';Byte '\x72';Byte '\xbb';Byte '\xe0';Byte '\xa3';Byte '\x8b';Byte '\x30';Byte '\x5e';Byte '\x54';Byte '\x57';Byte '\x41';Byte '\x49';Byte '\x48';Byte '\x4b';Byte '\x44';Byte '\x42';Byte '\x55';Byte '\x41';Byte '\x45';Byte '\x56';Byte '\x4b';Byte '\x43';Byte '\x53';Byte '\x55';Byte '\x46';Byte '\x58';Byte '\x4c';Byte '\x4f';Byte '\x44';Byte '\x00';Byte '\x4a';Byte '\x48';Byte '\x41';Byte '\x48';Byte '\x43';Byte '\x47';Byte '\x4c';Byte '\x4a';Byte '\x51';Byte '\x55';Byte '\x51';Byte '\x4f';Byte '\x51';Byte '\x00';Byte '\x45';Byte '\x58';Byte '\x43';Byte '\x59';Byte '\x50';Byte '\x4d';Byte '\x4a';Byte '\x52';Byte '\x41';Byte '\x44';Byte '\x47';Byte '\x4f';Byte '\x43';Byte '\x00';Byte '\xbc';Byte '\x3a';Byte '\x15';Byte '\xe4';Byte '\xa6';Byte '\x5d';Byte '\xab';Byte '\x5b';Byte '\x43';Byte '\x51';Byte '\x46';Byte '\x4d';Byte '\x54';Byte '\x49';Byte '\x56';Byte '\x5a';Byte '\x54';Byte '\x50';Byte '\x4e';Byte '\x49';Byte '\x46';Byte '\x58';Byte '\x41';Byte '\x57';Byte '\x58';Byte '\x54';Byte '\x54';Byte '\x42';Byte '\x00';Byte '\x49';Byte '\x48';Byte '\x4f';Byte '\x55';Byte '\x5a';Byte '\x43';Byte '\x53';Byte '\x56';Byte '\x52';Byte '\x4a';Byte '\x4b';Byte '\x4d';Byte '\x4c';Byte '\x00';Byte '\x44';Byte '\x5a';Byte '\x4f';Byte '\x57';Byte '\x54';Byte '\x4c';Byte '\x46';Byte '\x51';Byte '\x56';Byte '\x54';Byte '\x5a';Byte '\x52';Byte '\x42';Byte '\x47';Byte '\x00';Byte '\xdd';Byte '\x47';Byte '\x82';Byte '\x5a';Byte '\xca';Byte '\x55';Byte '\xa7';Byte '\x33';Byte '\xdc';Byte '\xc3';Byte '\xd8';Byte '\x57';Byte '\x5a';Byte '\xdd';Byte '\x57';Byte '\x6b';Byte '\x57';Byte '\x46';Byte '\x4b';Byte '\x4a';Byte '\x54';Byte '\x54';Byte '\x55';Byte '\x53';Byte '\x5a';Byte '\x51';Byte '\x44';Byte '\x5a';Byte '\x00';Byte '\xd6';Byte '\x9d';Byte '\x77';Byte '\x24';Byte '\xc9';Byte '\xe6';Byte '\xc8';Byte '\x1c';Byte '\x57';Byte '\x41';Byte '\x57';Byte '\x48';Byte '\x4f';Byte '\x45';Byte '\x46';Byte '\x42';Byte '\x47';Byte '\x4b';Byte '\x48';Byte '\x50';Byte '\x59';Byte '\x43';Byte '\x59';Byte '\x49';Byte '\x00';Byte '\x04';Byte '\x17';Byte '\x19';Byte '\x2c';Byte '\x92';Byte '\x5b';Byte '\xb8';Byte '\x3a';Byte '\x32';Byte '\xe0';Byte '\x80';Byte '\xf5';Byte '\x4c';Byte '\x56';Byte '\xbf';Byte '\x7e';Byte '\xb5';Byte '\xc6';Byte '\xb4';Byte '\xca';Byte '\x54';Byte '\xfd';Byte '\x04';Byte '\x45';Byte '\xa8';Byte '\x19';Byte '\xd2';Byte '\x13';Byte '\x64';Byte '\x3c';Byte '\x08';Byte '\x15';Byte '\x48';Byte '\x44';Byte '\x5a';Byte '\x53';Byte '\x50';Byte '\x49';Byte '\x44';Byte '\x46';Byte '\x49';Byte '\x55';Byte '\x52';Byte '\x49';Byte '\x53';Byte '\x53';Byte '\x50';Byte '\x49';Byte '\x53';Byte '\x54';Byte '\x46';Byte '\x00';Byte '\x36';Byte '\xad';Byte '\xaf';Byte '\xcd';Byte '\xf5';Byte '\xe2';Byte '\xb4';Byte '\x2a';Byte '\xd6';Byte '\xa2';Byte '\xfc';Byte '\xd6';Byte '\x12';Byte '\x61';Byte '\x7c';Byte '\x4b';Byte '\x52';Byte '\x44';Byte '\x52';Byte '\x53';Byte '\x55';Byte '\x50';Byte '\x5a';Byte '\x49';Byte '\x50';Byte '\x47';Byte '\x4d';Byte '\x46';Byte '\x44';Byte '\x42';Byte '\x4f';Byte '\x4f';Byte '\x46';Byte '\x54';Byte '\x00';Byte '\x44';Byte '\x56';Byte '\x5a';Byte '\x59';Byte '\x4e';Byte '\x4d';Byte '\x4b';Byte '\x51';Byte '\x54';Byte '\x44';Byte '\x00';Byte '\x56';Byte '\x4c';Byte '\x53';Byte '\x43';Byte '\x57';Byte '\x4f';Byte '\x50';Byte '\x56';Byte '\x47';Byte '\x5a';Byte '\x4d';Byte '\x4a';Byte '\x56';Byte '\x4e';Byte '\x41';Byte '\x42';Byte '\x54';Byte '\x53';Byte '\x41';Byte '\x4e';Byte '\x00';Byte '\x03';Byte '\x3e';Byte '\xcc';Byte '\x5c';Byte '\x81';Byte '\xd9';Byte '\x7c';Byte '\x0f';Byte '\xc3';Byte '\xac';Byte '\x13';Byte '\xbe';Byte '\x18';Byte '\x62';Byte '\x3f';Byte '\x1c';Byte '\x43';Byte '\x55';Byte '\x41';Byte '\x55';Byte '\x4e';Byte '\x44';Byte '\x4e';Byte '\x56';Byte '\x50';Byte '\x56';Byte '\x55';Byte '\x51';Byte '\x43';Byte '\x00';Byte '\x10';Byte '\x2d';Byte '\x8a';Byte '\xfb';Byte '\x98';Byte '\xfd';Byte '\xe9';Byte '\x3d';Byte '\x46';Byte '\x4b';Byte '\x42';Byte '\x45';Byte '\x49';Byte '\x47';Byte '\x54';Byte '\x57';Byte '\x46';Byte '\x5a';Byte '\x44';Byte '\x44';Byte '\x4e';Byte '\x4f';Byte '\x5a';Byte '\x56';Byte '\x51';Byte '\x54';Byte '\x00';Byte '\x61';Byte '\x81';Byte '\xb4';Byte '\x0e';Byte '\x1d';Byte '\x97';Byte '\xe7';Byte '\x2c';Byte '\xc1';Byte '\x42';Byte '\x5d';Byte '\xe2';Byte '\xe8';Byte '\x06';Byte '\x51';Byte '\x16';Byte '\x81';Byte '\xbd';Byte '\xad';Byte '\x92';Byte '\x50';Byte '\xf8';Byte '\x5b';Byte '\x10';Byte '\x84';Byte '\xfe';Byte '\x84';Byte '\x8a';Byte '\x74';Byte '\x52';Byte '\x7f';Byte '\x2d';Byte '\x52';Byte '\x41';Byte '\x4d';Byte '\x5a';Byte '\x56';Byte '\x55';Byte '\x41';Byte '\x45';Byte '\x48';Byte '\x45';Byte '\x54';Byte '\x41';Byte '\x49';Byte '\x48';Byte '\x4b';Byte '\x52';Byte '\x00';Byte '\x4e';Byte '\x46';Byte '\x56';Byte '\x44';Byte '\x41';Byte '\x49';Byte '\x4a';Byte '\x52';Byte '\x4d';Byte '\x57';Byte '\x4c';Byte '\x42';Byte '\x00';Byte '\xdf';Byte '\xb6';Byte '\x41';Byte '\xf7';Byte '\xec';Byte '\x01';Byte '\x15';Byte '\x55';]
let test_82_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400040L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400092L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000d4L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f1L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400136L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400181L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400189L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001baL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_83 = [
  data "AAAAAAYA" [
    Quad (Lit 5954433776447767948L);
    Quad (Lit 4867907688825625135L);
    Asciz ("RBNJBZFCTHFBFHNZFB");
    Quad (Lit 4524061811210752827L);
    Asciz ("XOYHTICMVJUJCKXLRKZ");
    Quad (Lit 1213938354361352683L);
  ];
  data "AAAAAAYB" [
    Asciz ("OVTECCOFJT");
    Asciz ("HWOBVRWPGBDBVBK");
    Quad (Lit 4309744690553340664L);
    Asciz ("AWJBUGDYLOLACAQSR");
  ];
  data "AAAAAAYC" [
    Quad (Lit 1995032578799764578L);
    Asciz ("ESHGBHFMVTVHXJWFY");
    Asciz ("GAZQSAOUUCEVNVOZ");
    Quad (Lit 421722944846169293L);
    Asciz ("UPTERXHCWLIIC");
  ];
  data "AAAAAAYD" [
    Asciz ("TBKRVKALQRIOREZZPPN");
    Asciz ("WMEZNLJROQV");
    Asciz ("YQFMZSFKSEIBGLQVWZ");
    Quad (Lit 4283849110531981508L);
    Asciz ("PZSJNZWQQSPZIRCFCLK");
  ];
  data "AAAAAAYE" [
    Asciz ("UVVAKBMPNYFLWGBGEQX");
    Quad (Lit 6345550753925964553L);
    Asciz ("QGBJPREGJLU");
    Asciz ("ZTBGIPVPXKKA");
  ];
  data "AAAAAAYF" [
    Quad (Lit 3350115387665009694L);
    Quad (Lit 3038772809857216148L);
    Quad (Lit 7025213781188226781L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAYA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAYB"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAYC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAYD"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAYE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAYF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAYG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAYH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAYI"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAYJ"); ~%Rax];
];
  data "AAAAAAYG" [
    Asciz ("HHXYOOXRIFGHLYUVGU");
    Asciz ("UVHIYNECSERJXIZOPFIE");
  ];
  data "AAAAAAYH" [
    Asciz ("CGYLPOBENHQTSIBNQKU");
    Asciz ("NSORRFBAAZG");
    Asciz ("AIOMHQLNSNWC");
    Asciz ("YCWDNDYECTQHZGAUGPEW");
    Asciz ("KXHEOJSEPZWFA");
  ];
  data "AAAAAAYI" [
    Quad (Lit 2633388457166364111L);
    Asciz ("SHSKHJSURQNOCXTZQLR");
    Quad (Lit 5393260135633892449L);
    Asciz ("NAQZNYNIVJHS");
  ];
  data "AAAAAAYJ" [
    Asciz ("FYEPPKDXNQPKZNNMBV");
    Quad (Lit 2612008031790175999L);
    Quad (Lit 524683720522766821L);
    Quad (Lit 7934958345890783569L);
  ];
]
let test_83_data = [Byte '\x8c';Byte '\xc5';Byte '\xc1';Byte '\xc3';Byte '\xf8';Byte '\x65';Byte '\xa2';Byte '\x52';Byte '\x2f';Byte '\x1a';Byte '\xd8';Byte '\x6f';Byte '\x40';Byte '\x48';Byte '\x8e';Byte '\x43';Byte '\x52';Byte '\x42';Byte '\x4e';Byte '\x4a';Byte '\x42';Byte '\x5a';Byte '\x46';Byte '\x43';Byte '\x54';Byte '\x48';Byte '\x46';Byte '\x42';Byte '\x46';Byte '\x48';Byte '\x4e';Byte '\x5a';Byte '\x46';Byte '\x42';Byte '\x00';Byte '\x3b';Byte '\x93';Byte '\x20';Byte '\x6f';Byte '\x3f';Byte '\xb2';Byte '\xc8';Byte '\x3e';Byte '\x58';Byte '\x4f';Byte '\x59';Byte '\x48';Byte '\x54';Byte '\x49';Byte '\x43';Byte '\x4d';Byte '\x56';Byte '\x4a';Byte '\x55';Byte '\x4a';Byte '\x43';Byte '\x4b';Byte '\x58';Byte '\x4c';Byte '\x52';Byte '\x4b';Byte '\x5a';Byte '\x00';Byte '\xeb';Byte '\x41';Byte '\xee';Byte '\x66';Byte '\x80';Byte '\xc6';Byte '\xd8';Byte '\x10';Byte '\x4f';Byte '\x56';Byte '\x54';Byte '\x45';Byte '\x43';Byte '\x43';Byte '\x4f';Byte '\x46';Byte '\x4a';Byte '\x54';Byte '\x00';Byte '\x48';Byte '\x57';Byte '\x4f';Byte '\x42';Byte '\x56';Byte '\x52';Byte '\x57';Byte '\x50';Byte '\x47';Byte '\x42';Byte '\x44';Byte '\x42';Byte '\x56';Byte '\x42';Byte '\x4b';Byte '\x00';Byte '\xf8';Byte '\xc2';Byte '\x0e';Byte '\x49';Byte '\xf6';Byte '\x49';Byte '\xcf';Byte '\x3b';Byte '\x41';Byte '\x57';Byte '\x4a';Byte '\x42';Byte '\x55';Byte '\x47';Byte '\x44';Byte '\x59';Byte '\x4c';Byte '\x4f';Byte '\x4c';Byte '\x41';Byte '\x43';Byte '\x41';Byte '\x51';Byte '\x53';Byte '\x52';Byte '\x00';Byte '\x62';Byte '\x04';Byte '\xb1';Byte '\x6e';Byte '\x8f';Byte '\xc7';Byte '\xaf';Byte '\x1b';Byte '\x45';Byte '\x53';Byte '\x48';Byte '\x47';Byte '\x42';Byte '\x48';Byte '\x46';Byte '\x4d';Byte '\x56';Byte '\x54';Byte '\x56';Byte '\x48';Byte '\x58';Byte '\x4a';Byte '\x57';Byte '\x46';Byte '\x59';Byte '\x00';Byte '\x47';Byte '\x41';Byte '\x5a';Byte '\x51';Byte '\x53';Byte '\x41';Byte '\x4f';Byte '\x55';Byte '\x55';Byte '\x43';Byte '\x45';Byte '\x56';Byte '\x4e';Byte '\x56';Byte '\x4f';Byte '\x5a';Byte '\x00';Byte '\xcd';Byte '\x04';Byte '\x30';Byte '\xb1';Byte '\xc8';Byte '\x42';Byte '\xda';Byte '\x05';Byte '\x55';Byte '\x50';Byte '\x54';Byte '\x45';Byte '\x52';Byte '\x58';Byte '\x48';Byte '\x43';Byte '\x57';Byte '\x4c';Byte '\x49';Byte '\x49';Byte '\x43';Byte '\x00';Byte '\x54';Byte '\x42';Byte '\x4b';Byte '\x52';Byte '\x56';Byte '\x4b';Byte '\x41';Byte '\x4c';Byte '\x51';Byte '\x52';Byte '\x49';Byte '\x4f';Byte '\x52';Byte '\x45';Byte '\x5a';Byte '\x5a';Byte '\x50';Byte '\x50';Byte '\x4e';Byte '\x00';Byte '\x57';Byte '\x4d';Byte '\x45';Byte '\x5a';Byte '\x4e';Byte '\x4c';Byte '\x4a';Byte '\x52';Byte '\x4f';Byte '\x51';Byte '\x56';Byte '\x00';Byte '\x59';Byte '\x51';Byte '\x46';Byte '\x4d';Byte '\x5a';Byte '\x53';Byte '\x46';Byte '\x4b';Byte '\x53';Byte '\x45';Byte '\x49';Byte '\x42';Byte '\x47';Byte '\x4c';Byte '\x51';Byte '\x56';Byte '\x57';Byte '\x5a';Byte '\x00';Byte '\xc4';Byte '\xc0';Byte '\xa1';Byte '\xb8';Byte '\x11';Byte '\x4a';Byte '\x73';Byte '\x3b';Byte '\x50';Byte '\x5a';Byte '\x53';Byte '\x4a';Byte '\x4e';Byte '\x5a';Byte '\x57';Byte '\x51';Byte '\x51';Byte '\x53';Byte '\x50';Byte '\x5a';Byte '\x49';Byte '\x52';Byte '\x43';Byte '\x46';Byte '\x43';Byte '\x4c';Byte '\x4b';Byte '\x00';Byte '\x55';Byte '\x56';Byte '\x56';Byte '\x41';Byte '\x4b';Byte '\x42';Byte '\x4d';Byte '\x50';Byte '\x4e';Byte '\x59';Byte '\x46';Byte '\x4c';Byte '\x57';Byte '\x47';Byte '\x42';Byte '\x47';Byte '\x45';Byte '\x51';Byte '\x58';Byte '\x00';Byte '\x09';Byte '\x23';Byte '\xf8';Byte '\x5f';Byte '\xca';Byte '\xec';Byte '\x0f';Byte '\x58';Byte '\x51';Byte '\x47';Byte '\x42';Byte '\x4a';Byte '\x50';Byte '\x52';Byte '\x45';Byte '\x47';Byte '\x4a';Byte '\x4c';Byte '\x55';Byte '\x00';Byte '\x5a';Byte '\x54';Byte '\x42';Byte '\x47';Byte '\x49';Byte '\x50';Byte '\x56';Byte '\x50';Byte '\x58';Byte '\x4b';Byte '\x4b';Byte '\x41';Byte '\x00';Byte '\x1e';Byte '\xcc';Byte '\x57';Byte '\x06';Byte '\x32';Byte '\x00';Byte '\x7e';Byte '\x2e';Byte '\x94';Byte '\xae';Byte '\xa7';Byte '\x3c';Byte '\xc5';Byte '\xe3';Byte '\x2b';Byte '\x2a';Byte '\xdd';Byte '\x2e';Byte '\xe7';Byte '\x7a';Byte '\xb6';Byte '\x92';Byte '\x7e';Byte '\x61';Byte '\x48';Byte '\x48';Byte '\x58';Byte '\x59';Byte '\x4f';Byte '\x4f';Byte '\x58';Byte '\x52';Byte '\x49';Byte '\x46';Byte '\x47';Byte '\x48';Byte '\x4c';Byte '\x59';Byte '\x55';Byte '\x56';Byte '\x47';Byte '\x55';Byte '\x00';Byte '\x55';Byte '\x56';Byte '\x48';Byte '\x49';Byte '\x59';Byte '\x4e';Byte '\x45';Byte '\x43';Byte '\x53';Byte '\x45';Byte '\x52';Byte '\x4a';Byte '\x58';Byte '\x49';Byte '\x5a';Byte '\x4f';Byte '\x50';Byte '\x46';Byte '\x49';Byte '\x45';Byte '\x00';Byte '\x43';Byte '\x47';Byte '\x59';Byte '\x4c';Byte '\x50';Byte '\x4f';Byte '\x42';Byte '\x45';Byte '\x4e';Byte '\x48';Byte '\x51';Byte '\x54';Byte '\x53';Byte '\x49';Byte '\x42';Byte '\x4e';Byte '\x51';Byte '\x4b';Byte '\x55';Byte '\x00';Byte '\x4e';Byte '\x53';Byte '\x4f';Byte '\x52';Byte '\x52';Byte '\x46';Byte '\x42';Byte '\x41';Byte '\x41';Byte '\x5a';Byte '\x47';Byte '\x00';Byte '\x41';Byte '\x49';Byte '\x4f';Byte '\x4d';Byte '\x48';Byte '\x51';Byte '\x4c';Byte '\x4e';Byte '\x53';Byte '\x4e';Byte '\x57';Byte '\x43';Byte '\x00';Byte '\x59';Byte '\x43';Byte '\x57';Byte '\x44';Byte '\x4e';Byte '\x44';Byte '\x59';Byte '\x45';Byte '\x43';Byte '\x54';Byte '\x51';Byte '\x48';Byte '\x5a';Byte '\x47';Byte '\x41';Byte '\x55';Byte '\x47';Byte '\x50';Byte '\x45';Byte '\x57';Byte '\x00';Byte '\x4b';Byte '\x58';Byte '\x48';Byte '\x45';Byte '\x4f';Byte '\x4a';Byte '\x53';Byte '\x45';Byte '\x50';Byte '\x5a';Byte '\x57';Byte '\x46';Byte '\x41';Byte '\x00';Byte '\xcf';Byte '\xdd';Byte '\x03';Byte '\x79';Byte '\xd9';Byte '\xac';Byte '\x8b';Byte '\x24';Byte '\x53';Byte '\x48';Byte '\x53';Byte '\x4b';Byte '\x48';Byte '\x4a';Byte '\x53';Byte '\x55';Byte '\x52';Byte '\x51';Byte '\x4e';Byte '\x4f';Byte '\x43';Byte '\x58';Byte '\x54';Byte '\x5a';Byte '\x51';Byte '\x4c';Byte '\x52';Byte '\x00';Byte '\x61';Byte '\xb4';Byte '\xbb';Byte '\xc5';Byte '\x84';Byte '\xb5';Byte '\xd8';Byte '\x4a';Byte '\x4e';Byte '\x41';Byte '\x51';Byte '\x5a';Byte '\x4e';Byte '\x59';Byte '\x4e';Byte '\x49';Byte '\x56';Byte '\x4a';Byte '\x48';Byte '\x53';Byte '\x00';Byte '\x46';Byte '\x59';Byte '\x45';Byte '\x50';Byte '\x50';Byte '\x4b';Byte '\x44';Byte '\x58';Byte '\x4e';Byte '\x51';Byte '\x50';Byte '\x4b';Byte '\x5a';Byte '\x4e';Byte '\x4e';Byte '\x4d';Byte '\x42';Byte '\x56';Byte '\x00';Byte '\xff';Byte '\x16';Byte '\x52';Byte '\x45';Byte '\x77';Byte '\xb7';Byte '\x3f';Byte '\x24';Byte '\xe5';Byte '\x99';Byte '\x30';Byte '\x5d';Byte '\x10';Byte '\x0d';Byte '\x48';Byte '\x07';Byte '\x51';Byte '\x61';Byte '\x57';Byte '\x0a';Byte '\x93';Byte '\xa2';Byte '\x1e';Byte '\x6e';]
let test_83_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400050L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400097L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000ccL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40010dL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40015cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400191L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001a9L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001d1L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400221L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400252L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_84 = [
  data "AAAAAAYK" [
    Asciz ("ELEPMMRLQNX");
    Asciz ("CJEJQBPRDMFGJEII");
    Quad (Lit 1269181419899845119L);
    Asciz ("RITPEGHVQPWP");
    Asciz ("EPFYRKBYOCOTXW");
    Quad (Lit 1973262344837015230L);
  ];
  data "AAAAAAYL" [
    Quad (Lit 2717712123450580848L);
    Quad (Lit 3154243745269467267L);
    Quad (Lit 1782621776021415490L);
  ];
  data "AAAAAAYM" [
    Asciz ("ZFWBZJLKKAJDX");
    Asciz ("FCCEPNVIQWAS");
    Quad (Lit 899347019667588831L);
  ];
  data "AAAAAAYN" [
    Asciz ("BWVIOGMLKZSYHRCDTACC");
    Quad (Lit 9003108243101070734L);
    Quad (Lit 4801048843966717045L);
    Asciz ("BPBXUENBMXLZOHJP");
    Asciz ("NDUSRAMXIWTQHDIPK");
  ];
  data "AAAAAAYO" [
    Asciz ("SHYHDUMFNWCPXITBABV");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAYK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAYL"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAYM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAYN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAYO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAYP"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAYQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAYR"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAYS"); ~%Rax];
];
  data "AAAAAAYP" [
    Asciz ("JHRINOGBICPJFQ");
    Quad (Lit 4751903374869233567L);
  ];
  data "AAAAAAYQ" [
    Asciz ("YFSCMFYUCQTPROUYRJXU");
    Quad (Lit 3494229407389209983L);
  ];
  data "AAAAAAYR" [
    Quad (Lit 7362839531649580790L);
    Asciz ("LSPTQAPPICNE");
    Asciz ("ZTWCQOFRKDL");
    Quad (Lit 7698607997357935001L);
    Quad (Lit 4058085401290501297L);
  ];
  data "AAAAAAYS" [
    Quad (Lit 4718817998891342927L);
    Asciz ("SHEJIIRBOTEIGXBHCJ");
    Quad (Lit 2302235055970653013L);
  ];
]
let test_84_data = [Byte '\x45';Byte '\x4c';Byte '\x45';Byte '\x50';Byte '\x4d';Byte '\x4d';Byte '\x52';Byte '\x4c';Byte '\x51';Byte '\x4e';Byte '\x58';Byte '\x00';Byte '\x43';Byte '\x4a';Byte '\x45';Byte '\x4a';Byte '\x51';Byte '\x42';Byte '\x50';Byte '\x52';Byte '\x44';Byte '\x4d';Byte '\x46';Byte '\x47';Byte '\x4a';Byte '\x45';Byte '\x49';Byte '\x49';Byte '\x00';Byte '\xff';Byte '\xf9';Byte '\xa7';Byte '\xe8';Byte '\xc6';Byte '\x09';Byte '\x9d';Byte '\x11';Byte '\x52';Byte '\x49';Byte '\x54';Byte '\x50';Byte '\x45';Byte '\x47';Byte '\x48';Byte '\x56';Byte '\x51';Byte '\x50';Byte '\x57';Byte '\x50';Byte '\x00';Byte '\x45';Byte '\x50';Byte '\x46';Byte '\x59';Byte '\x52';Byte '\x4b';Byte '\x42';Byte '\x59';Byte '\x4f';Byte '\x43';Byte '\x4f';Byte '\x54';Byte '\x58';Byte '\x57';Byte '\x00';Byte '\xbe';Byte '\x26';Byte '\xaa';Byte '\xd8';Byte '\xa5';Byte '\x6f';Byte '\x62';Byte '\x1b';Byte '\x70';Byte '\x5f';Byte '\x0b';Byte '\xf8';Byte '\xc6';Byte '\x40';Byte '\xb7';Byte '\x25';Byte '\x83';Byte '\xc8';Byte '\xc8';Byte '\x73';Byte '\xf9';Byte '\x1f';Byte '\xc6';Byte '\x2b';Byte '\x42';Byte '\xe6';Byte '\xa1';Byte '\x80';Byte '\x0f';Byte '\x25';Byte '\xbd';Byte '\x18';Byte '\x5a';Byte '\x46';Byte '\x57';Byte '\x42';Byte '\x5a';Byte '\x4a';Byte '\x4c';Byte '\x4b';Byte '\x4b';Byte '\x41';Byte '\x4a';Byte '\x44';Byte '\x58';Byte '\x00';Byte '\x46';Byte '\x43';Byte '\x43';Byte '\x45';Byte '\x50';Byte '\x4e';Byte '\x56';Byte '\x49';Byte '\x51';Byte '\x57';Byte '\x41';Byte '\x53';Byte '\x00';Byte '\xdf';Byte '\xc6';Byte '\x17';Byte '\x75';Byte '\x59';Byte '\x1f';Byte '\x7b';Byte '\x0c';Byte '\x42';Byte '\x57';Byte '\x56';Byte '\x49';Byte '\x4f';Byte '\x47';Byte '\x4d';Byte '\x4c';Byte '\x4b';Byte '\x5a';Byte '\x53';Byte '\x59';Byte '\x48';Byte '\x52';Byte '\x43';Byte '\x44';Byte '\x54';Byte '\x41';Byte '\x43';Byte '\x43';Byte '\x00';Byte '\x8e';Byte '\x35';Byte '\x6e';Byte '\x20';Byte '\x3f';Byte '\x77';Byte '\xf1';Byte '\x7c';Byte '\x75';Byte '\x9c';Byte '\xef';Byte '\x8d';Byte '\x7c';Byte '\xc0';Byte '\xa0';Byte '\x42';Byte '\x42';Byte '\x50';Byte '\x42';Byte '\x58';Byte '\x55';Byte '\x45';Byte '\x4e';Byte '\x42';Byte '\x4d';Byte '\x58';Byte '\x4c';Byte '\x5a';Byte '\x4f';Byte '\x48';Byte '\x4a';Byte '\x50';Byte '\x00';Byte '\x4e';Byte '\x44';Byte '\x55';Byte '\x53';Byte '\x52';Byte '\x41';Byte '\x4d';Byte '\x58';Byte '\x49';Byte '\x57';Byte '\x54';Byte '\x51';Byte '\x48';Byte '\x44';Byte '\x49';Byte '\x50';Byte '\x4b';Byte '\x00';Byte '\x53';Byte '\x48';Byte '\x59';Byte '\x48';Byte '\x44';Byte '\x55';Byte '\x4d';Byte '\x46';Byte '\x4e';Byte '\x57';Byte '\x43';Byte '\x50';Byte '\x58';Byte '\x49';Byte '\x54';Byte '\x42';Byte '\x41';Byte '\x42';Byte '\x56';Byte '\x00';Byte '\x4a';Byte '\x48';Byte '\x52';Byte '\x49';Byte '\x4e';Byte '\x4f';Byte '\x47';Byte '\x42';Byte '\x49';Byte '\x43';Byte '\x50';Byte '\x4a';Byte '\x46';Byte '\x51';Byte '\x00';Byte '\x9f';Byte '\x7f';Byte '\x0f';Byte '\x5a';Byte '\xf1';Byte '\x26';Byte '\xf2';Byte '\x41';Byte '\x59';Byte '\x46';Byte '\x53';Byte '\x43';Byte '\x4d';Byte '\x46';Byte '\x59';Byte '\x55';Byte '\x43';Byte '\x51';Byte '\x54';Byte '\x50';Byte '\x52';Byte '\x4f';Byte '\x55';Byte '\x59';Byte '\x52';Byte '\x4a';Byte '\x58';Byte '\x55';Byte '\x00';Byte '\x7f';Byte '\x55';Byte '\x28';Byte '\xff';Byte '\x21';Byte '\xff';Byte '\x7d';Byte '\x30';Byte '\xf6';Byte '\x3e';Byte '\x2d';Byte '\x46';Byte '\x8b';Byte '\x0f';Byte '\x2e';Byte '\x66';Byte '\x4c';Byte '\x53';Byte '\x50';Byte '\x54';Byte '\x51';Byte '\x41';Byte '\x50';Byte '\x50';Byte '\x49';Byte '\x43';Byte '\x4e';Byte '\x45';Byte '\x00';Byte '\x5a';Byte '\x54';Byte '\x57';Byte '\x43';Byte '\x51';Byte '\x4f';Byte '\x46';Byte '\x52';Byte '\x4b';Byte '\x44';Byte '\x4c';Byte '\x00';Byte '\x99';Byte '\x49';Byte '\x80';Byte '\x43';Byte '\x2f';Byte '\xf3';Byte '\xd6';Byte '\x6a';Byte '\xb1';Byte '\x6c';Byte '\x1e';Byte '\xfc';Byte '\x2b';Byte '\x37';Byte '\x51';Byte '\x38';Byte '\x4f';Byte '\x5c';Byte '\xa3';Byte '\xf7';Byte '\xf7';Byte '\x9b';Byte '\x7c';Byte '\x41';Byte '\x53';Byte '\x48';Byte '\x45';Byte '\x4a';Byte '\x49';Byte '\x49';Byte '\x52';Byte '\x42';Byte '\x4f';Byte '\x54';Byte '\x45';Byte '\x49';Byte '\x47';Byte '\x58';Byte '\x42';Byte '\x48';Byte '\x43';Byte '\x4a';Byte '\x00';Byte '\x55';Byte '\x13';Byte '\x95';Byte '\xec';Byte '\x95';Byte '\x2e';Byte '\xf3';Byte '\x1f';]
let test_84_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400048L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400091L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000a9L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000ccL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400114L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400128L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40013fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40015cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40018dL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_85 = [
  data "AAAAAAYT" [
    Quad (Lit 8680287740653327870L);
    Quad (Lit 9161350792845456562L);
    Quad (Lit 1959400231577012884L);
    Quad (Lit 7221552252323043470L);
    Asciz ("UOSQOFTQZOX");
  ];
  data "AAAAAAYU" [
    Asciz ("TRQSYVAFDZNAQFFHQMD");
    Asciz ("TBXJPLGCNMWEKX");
  ];
  data "AAAAAAYV" [
    Quad (Lit 6996942184833195625L);
    Quad (Lit 2699164187949270920L);
    Asciz ("APHQARIVQUMXV");
    Asciz ("KPPDEWBOUB");
    Quad (Lit 5156088054955064315L);
    Asciz ("EBXYANJQTL");
  ];
  data "AAAAAAYW" [
    Asciz ("FLLCFBKNNWYRIHY");
    Asciz ("PMLKLVKYPWFH");
    Quad (Lit 8533559007305243363L);
    Quad (Lit 2601777356973715319L);
    Asciz ("DNCWTYWKACAUKIF");
    Asciz ("VPOYVOYMMFIWMZHA");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAYT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAYU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAYV"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAYW"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAYX"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAYY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAYZ"); ~%Rax];
];
  data "AAAAAAYX" [
    Quad (Lit 6860834117052906313L);
    Quad (Lit 3473057108007290818L);
  ];
  data "AAAAAAYY" [
    Asciz ("GXIJSXMJOJXOMD");
  ];
  data "AAAAAAYZ" [
    Asciz ("FUKFZSGQJZFOPHHVWPN");
  ];
]
let test_85_data = [Byte '\xfe';Byte '\xd5';Byte '\xd1';Byte '\xc1';Byte '\xb5';Byte '\x93';Byte '\x76';Byte '\x78';Byte '\xb2';Byte '\xf4';Byte '\x4b';Byte '\xd6';Byte '\x01';Byte '\xa8';Byte '\x23';Byte '\x7f';Byte '\x94';Byte '\x4a';Byte '\xf7';Byte '\x17';Byte '\x21';Byte '\x30';Byte '\x31';Byte '\x1b';Byte '\x8e';Byte '\x18';Byte '\xa3';Byte '\x16';Byte '\x83';Byte '\x1b';Byte '\x38';Byte '\x64';Byte '\x55';Byte '\x4f';Byte '\x53';Byte '\x51';Byte '\x4f';Byte '\x46';Byte '\x54';Byte '\x51';Byte '\x5a';Byte '\x4f';Byte '\x58';Byte '\x00';Byte '\x54';Byte '\x52';Byte '\x51';Byte '\x53';Byte '\x59';Byte '\x56';Byte '\x41';Byte '\x46';Byte '\x44';Byte '\x5a';Byte '\x4e';Byte '\x41';Byte '\x51';Byte '\x46';Byte '\x46';Byte '\x48';Byte '\x51';Byte '\x4d';Byte '\x44';Byte '\x00';Byte '\x54';Byte '\x42';Byte '\x58';Byte '\x4a';Byte '\x50';Byte '\x4c';Byte '\x47';Byte '\x43';Byte '\x4e';Byte '\x4d';Byte '\x57';Byte '\x45';Byte '\x4b';Byte '\x58';Byte '\x00';Byte '\x69';Byte '\x9e';Byte '\xed';Byte '\x80';Byte '\xd8';Byte '\x21';Byte '\x1a';Byte '\x61';Byte '\x88';Byte '\x07';Byte '\x2c';Byte '\x35';Byte '\x87';Byte '\x5b';Byte '\x75';Byte '\x25';Byte '\x41';Byte '\x50';Byte '\x48';Byte '\x51';Byte '\x41';Byte '\x52';Byte '\x49';Byte '\x56';Byte '\x51';Byte '\x55';Byte '\x4d';Byte '\x58';Byte '\x56';Byte '\x00';Byte '\x4b';Byte '\x50';Byte '\x50';Byte '\x44';Byte '\x45';Byte '\x57';Byte '\x42';Byte '\x4f';Byte '\x55';Byte '\x42';Byte '\x00';Byte '\xfb';Byte '\x3b';Byte '\x3b';Byte '\x92';Byte '\xc4';Byte '\x1a';Byte '\x8e';Byte '\x47';Byte '\x45';Byte '\x42';Byte '\x58';Byte '\x59';Byte '\x41';Byte '\x4e';Byte '\x4a';Byte '\x51';Byte '\x54';Byte '\x4c';Byte '\x00';Byte '\x46';Byte '\x4c';Byte '\x4c';Byte '\x43';Byte '\x46';Byte '\x42';Byte '\x4b';Byte '\x4e';Byte '\x4e';Byte '\x57';Byte '\x59';Byte '\x52';Byte '\x49';Byte '\x48';Byte '\x59';Byte '\x00';Byte '\x50';Byte '\x4d';Byte '\x4c';Byte '\x4b';Byte '\x4c';Byte '\x56';Byte '\x4b';Byte '\x59';Byte '\x50';Byte '\x57';Byte '\x46';Byte '\x48';Byte '\x00';Byte '\xe3';Byte '\x9a';Byte '\x43';Byte '\x54';Byte '\xb4';Byte '\x4a';Byte '\x6d';Byte '\x76';Byte '\x77';Byte '\xaf';Byte '\x12';Byte '\xab';Byte '\xb8';Byte '\x5e';Byte '\x1b';Byte '\x24';Byte '\x44';Byte '\x4e';Byte '\x43';Byte '\x57';Byte '\x54';Byte '\x59';Byte '\x57';Byte '\x4b';Byte '\x41';Byte '\x43';Byte '\x41';Byte '\x55';Byte '\x4b';Byte '\x49';Byte '\x46';Byte '\x00';Byte '\x56';Byte '\x50';Byte '\x4f';Byte '\x59';Byte '\x56';Byte '\x4f';Byte '\x59';Byte '\x4d';Byte '\x4d';Byte '\x46';Byte '\x49';Byte '\x57';Byte '\x4d';Byte '\x5a';Byte '\x48';Byte '\x41';Byte '\x00';Byte '\x49';Byte '\xbb';Byte '\xd1';Byte '\x79';Byte '\x47';Byte '\x94';Byte '\x36';Byte '\x5f';Byte '\xc2';Byte '\x87';Byte '\x6b';Byte '\xe7';Byte '\x09';Byte '\xc7';Byte '\x32';Byte '\x30';Byte '\x47';Byte '\x58';Byte '\x49';Byte '\x4a';Byte '\x53';Byte '\x58';Byte '\x4d';Byte '\x4a';Byte '\x4f';Byte '\x4a';Byte '\x58';Byte '\x4f';Byte '\x4d';Byte '\x44';Byte '\x00';Byte '\x46';Byte '\x55';Byte '\x4b';Byte '\x46';Byte '\x5a';Byte '\x53';Byte '\x47';Byte '\x51';Byte '\x4a';Byte '\x5a';Byte '\x46';Byte '\x4f';Byte '\x50';Byte '\x48';Byte '\x48';Byte '\x56';Byte '\x57';Byte '\x50';Byte '\x4e';Byte '\x00';]
let test_85_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400038L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400064L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400087L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c3L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400111L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400121L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400130L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_86 = [
  data "AAAAAAZA" [
    Asciz ("GIYYCDGOXFCG");
    Asciz ("ZNBIGCGTKJAHINXO");
  ];
  data "AAAAAAZB" [
    Asciz ("ANHXTVMWVELMEXXBAP");
    Asciz ("ASTXGFCDIZCR");
    Asciz ("YMGGBCWGIIDNJWZQ");
    Quad (Lit 1855836389082672620L);
    Asciz ("MVUENAHGLXVWDVTRZWQ");
  ];
  data "AAAAAAZC" [
    Asciz ("AOOWAJOXXUNMX");
    Asciz ("BBWVLEOGHWX");
    Quad (Lit 5503910443321945466L);
    Quad (Lit 4604505207712113935L);
    Asciz ("HBNYNNRRGIRII");
    Asciz ("GQZVLAXVCXGORR");
  ];
  data "AAAAAAZD" [
    Quad (Lit 6425563948763771633L);
    Quad (Lit 7917787420579731612L);
  ];
  data "AAAAAAZE" [
    Asciz ("KSVZNBFIBKVLSGJWTBF");
    Quad (Lit 7246085698902503302L);
    Asciz ("JUPUWWZCGNCZVQLBUSK");
    Quad (Lit 3445995407098490910L);
  ];
  data "AAAAAAZF" [
    Quad (Lit 3618399959710702554L);
    Quad (Lit 1548007483613810828L);
    Asciz ("NGYEVLJGGAVGFWFT");
  ];
  data "AAAAAAZG" [
    Quad (Lit 5084695981190641463L);
    Quad (Lit 610851420530859744L);
    Quad (Lit 3886093778254045497L);
  ];
  data "AAAAAAZH" [
    Asciz ("WVJMYAPKRPY");
    Asciz ("TRBMIWBRPWLEXN");
    Quad (Lit 6002152889567249911L);
    Asciz ("XTEBJTAMTBWTBPYK");
    Quad (Lit 5213181337771716440L);
  ];
  data "AAAAAAZI" [
    Asciz ("NIUIHVNWUT");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAZA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAZB"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAZC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAZD"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAZE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAZF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAZG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAZH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAZI"); ~%Rax];
];
]
let test_86_data = [Byte '\x47';Byte '\x49';Byte '\x59';Byte '\x59';Byte '\x43';Byte '\x44';Byte '\x47';Byte '\x4f';Byte '\x58';Byte '\x46';Byte '\x43';Byte '\x47';Byte '\x00';Byte '\x5a';Byte '\x4e';Byte '\x42';Byte '\x49';Byte '\x47';Byte '\x43';Byte '\x47';Byte '\x54';Byte '\x4b';Byte '\x4a';Byte '\x41';Byte '\x48';Byte '\x49';Byte '\x4e';Byte '\x58';Byte '\x4f';Byte '\x00';Byte '\x41';Byte '\x4e';Byte '\x48';Byte '\x58';Byte '\x54';Byte '\x56';Byte '\x4d';Byte '\x57';Byte '\x56';Byte '\x45';Byte '\x4c';Byte '\x4d';Byte '\x45';Byte '\x58';Byte '\x58';Byte '\x42';Byte '\x41';Byte '\x50';Byte '\x00';Byte '\x41';Byte '\x53';Byte '\x54';Byte '\x58';Byte '\x47';Byte '\x46';Byte '\x43';Byte '\x44';Byte '\x49';Byte '\x5a';Byte '\x43';Byte '\x52';Byte '\x00';Byte '\x59';Byte '\x4d';Byte '\x47';Byte '\x47';Byte '\x42';Byte '\x43';Byte '\x57';Byte '\x47';Byte '\x49';Byte '\x49';Byte '\x44';Byte '\x4e';Byte '\x4a';Byte '\x57';Byte '\x5a';Byte '\x51';Byte '\x00';Byte '\xec';Byte '\x2d';Byte '\x84';Byte '\xfc';Byte '\x5c';Byte '\x41';Byte '\xc1';Byte '\x19';Byte '\x4d';Byte '\x56';Byte '\x55';Byte '\x45';Byte '\x4e';Byte '\x41';Byte '\x48';Byte '\x47';Byte '\x4c';Byte '\x58';Byte '\x56';Byte '\x57';Byte '\x44';Byte '\x56';Byte '\x54';Byte '\x52';Byte '\x5a';Byte '\x57';Byte '\x51';Byte '\x00';Byte '\x41';Byte '\x4f';Byte '\x4f';Byte '\x57';Byte '\x41';Byte '\x4a';Byte '\x4f';Byte '\x58';Byte '\x58';Byte '\x55';Byte '\x4e';Byte '\x4d';Byte '\x58';Byte '\x00';Byte '\x42';Byte '\x42';Byte '\x57';Byte '\x56';Byte '\x4c';Byte '\x45';Byte '\x4f';Byte '\x47';Byte '\x48';Byte '\x57';Byte '\x58';Byte '\x00';Byte '\x7a';Byte '\x6d';Byte '\xc4';Byte '\x21';Byte '\x63';Byte '\xd1';Byte '\x61';Byte '\x4c';Byte '\x0f';Byte '\xe5';Byte '\x1d';Byte '\x38';Byte '\x17';Byte '\x7d';Byte '\xe6';Byte '\x3f';Byte '\x48';Byte '\x42';Byte '\x4e';Byte '\x59';Byte '\x4e';Byte '\x4e';Byte '\x52';Byte '\x52';Byte '\x47';Byte '\x49';Byte '\x52';Byte '\x49';Byte '\x49';Byte '\x00';Byte '\x47';Byte '\x51';Byte '\x5a';Byte '\x56';Byte '\x4c';Byte '\x41';Byte '\x58';Byte '\x56';Byte '\x43';Byte '\x58';Byte '\x47';Byte '\x4f';Byte '\x52';Byte '\x52';Byte '\x00';Byte '\xf1';Byte '\xf2';Byte '\x9e';Byte '\x07';Byte '\x5e';Byte '\x30';Byte '\x2c';Byte '\x59';Byte '\x9c';Byte '\x18';Byte '\xb6';Byte '\x72';Byte '\xb5';Byte '\xa1';Byte '\xe1';Byte '\x6d';Byte '\x4b';Byte '\x53';Byte '\x56';Byte '\x5a';Byte '\x4e';Byte '\x42';Byte '\x46';Byte '\x49';Byte '\x42';Byte '\x4b';Byte '\x56';Byte '\x4c';Byte '\x53';Byte '\x47';Byte '\x4a';Byte '\x57';Byte '\x54';Byte '\x42';Byte '\x46';Byte '\x00';Byte '\x86';Byte '\x2f';Byte '\x1f';Byte '\x3f';Byte '\x8d';Byte '\x44';Byte '\x8f';Byte '\x64';Byte '\x4a';Byte '\x55';Byte '\x50';Byte '\x55';Byte '\x57';Byte '\x57';Byte '\x5a';Byte '\x43';Byte '\x47';Byte '\x4e';Byte '\x43';Byte '\x5a';Byte '\x56';Byte '\x51';Byte '\x4c';Byte '\x42';Byte '\x55';Byte '\x53';Byte '\x4b';Byte '\x00';Byte '\x1e';Byte '\xb0';Byte '\xbb';Byte '\xa9';Byte '\x90';Byte '\xa2';Byte '\xd2';Byte '\x2f';Byte '\xda';Byte '\x1b';Byte '\xd8';Byte '\x9d';Byte '\x97';Byte '\x23';Byte '\x37';Byte '\x32';Byte '\x8c';Byte '\x90';Byte '\x72';Byte '\xca';Byte '\x9a';Byte '\xa0';Byte '\x7b';Byte '\x15';Byte '\x4e';Byte '\x47';Byte '\x59';Byte '\x45';Byte '\x56';Byte '\x4c';Byte '\x4a';Byte '\x47';Byte '\x47';Byte '\x41';Byte '\x56';Byte '\x47';Byte '\x46';Byte '\x57';Byte '\x46';Byte '\x54';Byte '\x00';Byte '\x37';Byte '\x77';Byte '\xb9';Byte '\x15';Byte '\x0e';Byte '\x78';Byte '\x90';Byte '\x46';Byte '\xe0';Byte '\xde';Byte '\x48';Byte '\x6b';Byte '\x21';Byte '\x2e';Byte '\x7a';Byte '\x08';Byte '\x39';Byte '\x21';Byte '\xb0';Byte '\xb0';Byte '\xb3';Byte '\x2d';Byte '\xee';Byte '\x35';Byte '\x57';Byte '\x56';Byte '\x4a';Byte '\x4d';Byte '\x59';Byte '\x41';Byte '\x50';Byte '\x4b';Byte '\x52';Byte '\x50';Byte '\x59';Byte '\x00';Byte '\x54';Byte '\x52';Byte '\x42';Byte '\x4d';Byte '\x49';Byte '\x57';Byte '\x42';Byte '\x52';Byte '\x50';Byte '\x57';Byte '\x4c';Byte '\x45';Byte '\x58';Byte '\x4e';Byte '\x00';Byte '\xf7';Byte '\x85';Byte '\x3d';Byte '\x96';Byte '\x40';Byte '\xee';Byte '\x4b';Byte '\x53';Byte '\x58';Byte '\x54';Byte '\x45';Byte '\x42';Byte '\x4a';Byte '\x54';Byte '\x41';Byte '\x4d';Byte '\x54';Byte '\x42';Byte '\x57';Byte '\x54';Byte '\x42';Byte '\x50';Byte '\x59';Byte '\x4b';Byte '\x00';Byte '\x58';Byte '\x2f';Byte '\x94';Byte '\x5b';Byte '\xce';Byte '\xf0';Byte '\x58';Byte '\x48';Byte '\x4e';Byte '\x49';Byte '\x55';Byte '\x49';Byte '\x48';Byte '\x56';Byte '\x4e';Byte '\x57';Byte '\x55';Byte '\x54';Byte '\x00';]
let test_86_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400048L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400066L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000b3L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000faL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40010aL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400142L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400163L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40017bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001b7L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_87 = [
  data "AAAAAAZJ" [
    Quad (Lit 7511333293084881918L);
    Asciz ("LFFWUNFCUWJVKXDM");
    Quad (Lit 8793208787459534193L);
  ];
  data "AAAAAAZK" [
    Asciz ("CRMGDMDWLENUJDL");
  ];
  data "AAAAAAZL" [
    Asciz ("KCOKGSYWHCPRODJMCXHT");
    Quad (Lit 2531653552206853395L);
  ];
  data "AAAAAAZM" [
    Quad (Lit 8623382884017273074L);
  ];
  data "AAAAAAZN" [
    Quad (Lit 3356317409165534258L);
    Quad (Lit 8171845399936664517L);
  ];
  data "AAAAAAZO" [
    Asciz ("BJKXOFGWHUYASC");
  ];
  data "AAAAAAZP" [
    Asciz ("ICRARGEJEBUKWEHFQW");
    Asciz ("UXKHSCAMAPFRL");
    Asciz ("FEJWAXIIPH");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAZJ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAZK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAZL"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAZM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAZN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAZO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAZP"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAZQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAZR"); ~%Rax];
];
  data "AAAAAAZQ" [
    Asciz ("TMEKMLWOOA");
    Asciz ("MPSXPPVXNIVGP");
    Quad (Lit 4327154824233532240L);
    Asciz ("HWJGYHISXWX");
  ];
  data "AAAAAAZR" [
    Quad (Lit 1412242599831481034L);
    Quad (Lit 3531630112761687556L);
  ];
]
let test_87_data = [Byte '\xfe';Byte '\xb3';Byte '\xe3';Byte '\x53';Byte '\xd5';Byte '\x9d';Byte '\x3d';Byte '\x68';Byte '\x4c';Byte '\x46';Byte '\x46';Byte '\x57';Byte '\x55';Byte '\x4e';Byte '\x46';Byte '\x43';Byte '\x55';Byte '\x57';Byte '\x4a';Byte '\x56';Byte '\x4b';Byte '\x58';Byte '\x44';Byte '\x4d';Byte '\x00';Byte '\x71';Byte '\x6d';Byte '\x5e';Byte '\xc4';Byte '\xcd';Byte '\xc0';Byte '\x07';Byte '\x7a';Byte '\x43';Byte '\x52';Byte '\x4d';Byte '\x47';Byte '\x44';Byte '\x4d';Byte '\x44';Byte '\x57';Byte '\x4c';Byte '\x45';Byte '\x4e';Byte '\x55';Byte '\x4a';Byte '\x44';Byte '\x4c';Byte '\x00';Byte '\x4b';Byte '\x43';Byte '\x4f';Byte '\x4b';Byte '\x47';Byte '\x53';Byte '\x59';Byte '\x57';Byte '\x48';Byte '\x43';Byte '\x50';Byte '\x52';Byte '\x4f';Byte '\x44';Byte '\x4a';Byte '\x4d';Byte '\x43';Byte '\x58';Byte '\x48';Byte '\x54';Byte '\x00';Byte '\x13';Byte '\x35';Byte '\xa5';Byte '\x11';Byte '\x7e';Byte '\x3d';Byte '\x22';Byte '\x23';Byte '\xf2';Byte '\x78';Byte '\x08';Byte '\x5c';Byte '\x0b';Byte '\x69';Byte '\xac';Byte '\x77';Byte '\x32';Byte '\x64';Byte '\xc5';Byte '\xae';Byte '\xe6';Byte '\x08';Byte '\x94';Byte '\x2e';Byte '\xc5';Byte '\x83';Byte '\xa2';Byte '\x4e';Byte '\x18';Byte '\x3a';Byte '\x68';Byte '\x71';Byte '\x42';Byte '\x4a';Byte '\x4b';Byte '\x58';Byte '\x4f';Byte '\x46';Byte '\x47';Byte '\x57';Byte '\x48';Byte '\x55';Byte '\x59';Byte '\x41';Byte '\x53';Byte '\x43';Byte '\x00';Byte '\x49';Byte '\x43';Byte '\x52';Byte '\x41';Byte '\x52';Byte '\x47';Byte '\x45';Byte '\x4a';Byte '\x45';Byte '\x42';Byte '\x55';Byte '\x4b';Byte '\x57';Byte '\x45';Byte '\x48';Byte '\x46';Byte '\x51';Byte '\x57';Byte '\x00';Byte '\x55';Byte '\x58';Byte '\x4b';Byte '\x48';Byte '\x53';Byte '\x43';Byte '\x41';Byte '\x4d';Byte '\x41';Byte '\x50';Byte '\x46';Byte '\x52';Byte '\x4c';Byte '\x00';Byte '\x46';Byte '\x45';Byte '\x4a';Byte '\x57';Byte '\x41';Byte '\x58';Byte '\x49';Byte '\x49';Byte '\x50';Byte '\x48';Byte '\x00';Byte '\x54';Byte '\x4d';Byte '\x45';Byte '\x4b';Byte '\x4d';Byte '\x4c';Byte '\x57';Byte '\x4f';Byte '\x4f';Byte '\x41';Byte '\x00';Byte '\x4d';Byte '\x50';Byte '\x53';Byte '\x58';Byte '\x50';Byte '\x50';Byte '\x56';Byte '\x58';Byte '\x4e';Byte '\x49';Byte '\x56';Byte '\x47';Byte '\x50';Byte '\x00';Byte '\x50';Byte '\xbb';Byte '\x8e';Byte '\xea';Byte '\x62';Byte '\x24';Byte '\x0d';Byte '\x3c';Byte '\x48';Byte '\x57';Byte '\x4a';Byte '\x47';Byte '\x59';Byte '\x48';Byte '\x49';Byte '\x53';Byte '\x58';Byte '\x57';Byte '\x58';Byte '\x00';Byte '\xca';Byte '\x2a';Byte '\xa1';Byte '\x83';Byte '\x29';Byte '\x4b';Byte '\x99';Byte '\x13';Byte '\x04';Byte '\xae';Byte '\x3b';Byte '\x4d';Byte '\xe0';Byte '\xde';Byte '\x02';Byte '\x31';]
let test_87_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400048L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400069L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400079L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400096L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40009eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000aeL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000bdL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000e9L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400116L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_88 = [
  data "AAAAAAZS" [
    Quad (Lit 2615974946712743403L);
    Quad (Lit 2860409175138813833L);
    Asciz ("WKKSRUBQZXQWOV");
  ];
  data "AAAAAAZT" [
    Quad (Lit 3357829926591293536L);
  ];
  data "AAAAAAZU" [
    Asciz ("QRMUDEHDUNRBFABBGN");
    Quad (Lit 7961091838604880756L);
    Asciz ("YAPVIVOQLQ");
    Quad (Lit 3668688763927618605L);
    Quad (Lit 876152030902290294L);
    Asciz ("JOTRTOWGKWSR");
  ];
  data "AAAAAAZV" [
    Quad (Lit 7066306623561388762L);
    Quad (Lit 5843931714023854263L);
    Quad (Lit 7546073151637911658L);
    Asciz ("UHMVFXHIQWGK");
    Quad (Lit 6485516016040084118L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAZS"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAZT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAZU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAZV"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAZW"); ~%Rax];
];
  data "AAAAAAZW" [
    Asciz ("JNQJKVZBUMSSNFSLATVZ");
    Asciz ("KBBAFOIDBC");
    Asciz ("HDZQOYBQHIKSGH");
  ];
]
let test_88_data = [Byte '\xeb';Byte '\x6d';Byte '\x22';Byte '\xa0';Byte '\x5a';Byte '\xcf';Byte '\x4d';Byte '\x24';Byte '\x89';Byte '\xc7';Byte '\x6a';Byte '\x5c';Byte '\xfd';Byte '\x36';Byte '\xb2';Byte '\x27';Byte '\x57';Byte '\x4b';Byte '\x4b';Byte '\x53';Byte '\x52';Byte '\x55';Byte '\x42';Byte '\x51';Byte '\x5a';Byte '\x58';Byte '\x51';Byte '\x57';Byte '\x4f';Byte '\x56';Byte '\x00';Byte '\x60';Byte '\x68';Byte '\xa6';Byte '\x16';Byte '\x87';Byte '\x68';Byte '\x99';Byte '\x2e';Byte '\x51';Byte '\x52';Byte '\x4d';Byte '\x55';Byte '\x44';Byte '\x45';Byte '\x48';Byte '\x44';Byte '\x55';Byte '\x4e';Byte '\x52';Byte '\x42';Byte '\x46';Byte '\x41';Byte '\x42';Byte '\x42';Byte '\x47';Byte '\x4e';Byte '\x00';Byte '\x74';Byte '\x2b';Byte '\x4e';Byte '\xf8';Byte '\xd8';Byte '\x7a';Byte '\x7b';Byte '\x6e';Byte '\x59';Byte '\x41';Byte '\x50';Byte '\x56';Byte '\x49';Byte '\x56';Byte '\x4f';Byte '\x51';Byte '\x4c';Byte '\x51';Byte '\x00';Byte '\x2d';Byte '\x64';Byte '\x5f';Byte '\x45';Byte '\xfe';Byte '\xcc';Byte '\xe9';Byte '\x32';Byte '\x76';Byte '\x07';Byte '\x2b';Byte '\x4b';Byte '\xa1';Byte '\xb7';Byte '\x28';Byte '\x0c';Byte '\x4a';Byte '\x4f';Byte '\x54';Byte '\x52';Byte '\x54';Byte '\x4f';Byte '\x57';Byte '\x47';Byte '\x4b';Byte '\x57';Byte '\x53';Byte '\x52';Byte '\x00';Byte '\xda';Byte '\xd2';Byte '\x5d';Byte '\x6b';Byte '\x6f';Byte '\x90';Byte '\x10';Byte '\x62';Byte '\xb7';Byte '\x10';Byte '\x08';Byte '\x72';Byte '\xee';Byte '\xd0';Byte '\x19';Byte '\x51';Byte '\x6a';Byte '\x78';Byte '\x7d';Byte '\xf4';Byte '\x8c';Byte '\x09';Byte '\xb9';Byte '\x68';Byte '\x55';Byte '\x48';Byte '\x4d';Byte '\x56';Byte '\x46';Byte '\x58';Byte '\x48';Byte '\x49';Byte '\x51';Byte '\x57';Byte '\x47';Byte '\x4b';Byte '\x00';Byte '\x96';Byte '\x02';Byte '\x2d';Byte '\x71';Byte '\x74';Byte '\x2e';Byte '\x01';Byte '\x5a';Byte '\x4a';Byte '\x4e';Byte '\x51';Byte '\x4a';Byte '\x4b';Byte '\x56';Byte '\x5a';Byte '\x42';Byte '\x55';Byte '\x4d';Byte '\x53';Byte '\x53';Byte '\x4e';Byte '\x46';Byte '\x53';Byte '\x4c';Byte '\x41';Byte '\x54';Byte '\x56';Byte '\x5a';Byte '\x00';Byte '\x4b';Byte '\x42';Byte '\x42';Byte '\x41';Byte '\x46';Byte '\x4f';Byte '\x49';Byte '\x44';Byte '\x42';Byte '\x43';Byte '\x00';Byte '\x48';Byte '\x44';Byte '\x5a';Byte '\x51';Byte '\x4f';Byte '\x59';Byte '\x42';Byte '\x51';Byte '\x48';Byte '\x49';Byte '\x4b';Byte '\x53';Byte '\x47';Byte '\x48';Byte '\x00';]
let test_88_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400028L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400047L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40004fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400092L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000bfL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_89 = [
  data "AAAAAAZX" [
    Quad (Lit 2956082456372043118L);
    Asciz ("EEKGGFJRRUUHNKP");
    Asciz ("GYBFTWDYNYDCDMPFHP");
    Quad (Lit 7755786138844979081L);
    Asciz ("ITWWEFQLPJRYQBBNH");
  ];
  data "AAAAAAZY" [
    Asciz ("XCHNLWYJUWOXGKQMQA");
    Quad (Lit 6144369752779174328L);
    Quad (Lit 3470826804711085410L);
    Asciz ("NJLQQIOMSF");
    Quad (Lit 7308974242333708166L);
    Quad (Lit 2134517704984279920L);
  ];
  data "AAAAAAZZ" [
    Asciz ("GGLTCAWBWCVGQSP");
    Quad (Lit 3819278235286863690L);
  ];
  data "AAAAABAA" [
    Asciz ("XFKONEPJZWQZP");
    Asciz ("HYZMDSVLQNTLGNJXTWX");
    Quad (Lit 34358504031039919L);
    Quad (Lit 1514435173360724426L);
  ];
  data "AAAAABAB" [
    Quad (Lit 732610212775846043L);
    Quad (Lit 6406692864846187139L);
    Asciz ("IDDYINPEOUURJIDWNS");
    Asciz ("VWTYWNKNFPW");
    Asciz ("QEUZUZLSYHH");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAAAZX"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAZY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAAAZZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABAA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABAB"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABAC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABAD"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABAE"); ~%Rax];
];
  data "AAAAABAC" [
    Quad (Lit 8055494884478921026L);
    Asciz ("RJDZQJFTZCT");
  ];
  data "AAAAABAD" [
    Quad (Lit 5302812683462888584L);
  ];
  data "AAAAABAE" [
    Quad (Lit 107066804542921934L);
    Asciz ("FBIHNJCQBVEABCBOFY");
    Asciz ("UVHDUKMKYW");
    Asciz ("ZCLHIAZFRZZO");
    Asciz ("NLFFOXQTVRHKIUILDX");
    Asciz ("OHFAPSSHEZEX");
  ];
]
let test_89_data = [Byte '\x6e';Byte '\xdd';Byte '\xd1';Byte '\x02';Byte '\x55';Byte '\x1d';Byte '\x06';Byte '\x29';Byte '\x45';Byte '\x45';Byte '\x4b';Byte '\x47';Byte '\x47';Byte '\x46';Byte '\x4a';Byte '\x52';Byte '\x52';Byte '\x55';Byte '\x55';Byte '\x48';Byte '\x4e';Byte '\x4b';Byte '\x50';Byte '\x00';Byte '\x47';Byte '\x59';Byte '\x42';Byte '\x46';Byte '\x54';Byte '\x57';Byte '\x44';Byte '\x59';Byte '\x4e';Byte '\x59';Byte '\x44';Byte '\x43';Byte '\x44';Byte '\x4d';Byte '\x50';Byte '\x46';Byte '\x48';Byte '\x50';Byte '\x00';Byte '\x89';Byte '\xdf';Byte '\xc0';Byte '\xbf';Byte '\x66';Byte '\x16';Byte '\xa2';Byte '\x6b';Byte '\x49';Byte '\x54';Byte '\x57';Byte '\x57';Byte '\x45';Byte '\x46';Byte '\x51';Byte '\x4c';Byte '\x50';Byte '\x4a';Byte '\x52';Byte '\x59';Byte '\x51';Byte '\x42';Byte '\x42';Byte '\x4e';Byte '\x48';Byte '\x00';Byte '\x58';Byte '\x43';Byte '\x48';Byte '\x4e';Byte '\x4c';Byte '\x57';Byte '\x59';Byte '\x4a';Byte '\x55';Byte '\x57';Byte '\x4f';Byte '\x58';Byte '\x47';Byte '\x4b';Byte '\x51';Byte '\x4d';Byte '\x51';Byte '\x41';Byte '\x00';Byte '\xb8';Byte '\xb1';Byte '\x0e';Byte '\x63';Byte '\xbc';Byte '\x2f';Byte '\x45';Byte '\x55';Byte '\x62';Byte '\x55';Byte '\xb5';Byte '\xf3';Byte '\x96';Byte '\xda';Byte '\x2a';Byte '\x30';Byte '\x4e';Byte '\x4a';Byte '\x4c';Byte '\x51';Byte '\x51';Byte '\x49';Byte '\x4f';Byte '\x4d';Byte '\x53';Byte '\x46';Byte '\x00';Byte '\x86';Byte '\xcf';Byte '\xc7';Byte '\x4a';Byte '\x59';Byte '\xb1';Byte '\x6e';Byte '\x65';Byte '\x70';Byte '\xbb';Byte '\x5e';Byte '\x24';Byte '\x8b';Byte '\x54';Byte '\x9f';Byte '\x1d';Byte '\x47';Byte '\x47';Byte '\x4c';Byte '\x54';Byte '\x43';Byte '\x41';Byte '\x57';Byte '\x42';Byte '\x57';Byte '\x43';Byte '\x56';Byte '\x47';Byte '\x51';Byte '\x53';Byte '\x50';Byte '\x00';Byte '\x4a';Byte '\x7f';Byte '\xa7';Byte '\xd0';Byte '\x51';Byte '\xcd';Byte '\x00';Byte '\x35';Byte '\x58';Byte '\x46';Byte '\x4b';Byte '\x4f';Byte '\x4e';Byte '\x45';Byte '\x50';Byte '\x4a';Byte '\x5a';Byte '\x57';Byte '\x51';Byte '\x5a';Byte '\x50';Byte '\x00';Byte '\x48';Byte '\x59';Byte '\x5a';Byte '\x4d';Byte '\x44';Byte '\x53';Byte '\x56';Byte '\x4c';Byte '\x51';Byte '\x4e';Byte '\x54';Byte '\x4c';Byte '\x47';Byte '\x4e';Byte '\x4a';Byte '\x58';Byte '\x54';Byte '\x57';Byte '\x58';Byte '\x00';Byte '\xaf';Byte '\xb1';Byte '\xc8';Byte '\x9b';Byte '\xe0';Byte '\x10';Byte '\x7a';Byte '\x00';Byte '\xca';Byte '\xe9';Byte '\x85';Byte '\x2f';Byte '\xc4';Byte '\x5a';Byte '\x04';Byte '\x15';Byte '\x9b';Byte '\xe0';Byte '\x53';Byte '\x63';Byte '\x1b';Byte '\xc1';Byte '\x2a';Byte '\x0a';Byte '\x83';Byte '\xca';Byte '\x2f';Byte '\x6a';Byte '\x37';Byte '\x25';Byte '\xe9';Byte '\x58';Byte '\x49';Byte '\x44';Byte '\x44';Byte '\x59';Byte '\x49';Byte '\x4e';Byte '\x50';Byte '\x45';Byte '\x4f';Byte '\x55';Byte '\x55';Byte '\x52';Byte '\x4a';Byte '\x49';Byte '\x44';Byte '\x57';Byte '\x4e';Byte '\x53';Byte '\x00';Byte '\x56';Byte '\x57';Byte '\x54';Byte '\x59';Byte '\x57';Byte '\x4e';Byte '\x4b';Byte '\x4e';Byte '\x46';Byte '\x50';Byte '\x57';Byte '\x00';Byte '\x51';Byte '\x45';Byte '\x55';Byte '\x5a';Byte '\x55';Byte '\x5a';Byte '\x4c';Byte '\x53';Byte '\x59';Byte '\x48';Byte '\x48';Byte '\x00';Byte '\x42';Byte '\xa9';Byte '\x57';Byte '\xe7';Byte '\xea';Byte '\xdd';Byte '\xca';Byte '\x6f';Byte '\x52';Byte '\x4a';Byte '\x44';Byte '\x5a';Byte '\x51';Byte '\x4a';Byte '\x46';Byte '\x54';Byte '\x5a';Byte '\x43';Byte '\x54';Byte '\x00';Byte '\x88';Byte '\xcc';Byte '\x3d';Byte '\x44';Byte '\x0a';Byte '\x60';Byte '\x97';Byte '\x49';Byte '\xce';Byte '\x5c';Byte '\x04';Byte '\x04';Byte '\xb1';Byte '\x60';Byte '\x7c';Byte '\x01';Byte '\x46';Byte '\x42';Byte '\x49';Byte '\x48';Byte '\x4e';Byte '\x4a';Byte '\x43';Byte '\x51';Byte '\x42';Byte '\x56';Byte '\x45';Byte '\x41';Byte '\x42';Byte '\x43';Byte '\x42';Byte '\x4f';Byte '\x46';Byte '\x59';Byte '\x00';Byte '\x55';Byte '\x56';Byte '\x48';Byte '\x44';Byte '\x55';Byte '\x4b';Byte '\x4d';Byte '\x4b';Byte '\x59';Byte '\x57';Byte '\x00';Byte '\x5a';Byte '\x43';Byte '\x4c';Byte '\x48';Byte '\x49';Byte '\x41';Byte '\x5a';Byte '\x46';Byte '\x52';Byte '\x5a';Byte '\x5a';Byte '\x4f';Byte '\x00';Byte '\x4e';Byte '\x4c';Byte '\x46';Byte '\x46';Byte '\x4f';Byte '\x58';Byte '\x51';Byte '\x54';Byte '\x56';Byte '\x52';Byte '\x48';Byte '\x4b';Byte '\x49';Byte '\x55';Byte '\x49';Byte '\x4c';Byte '\x44';Byte '\x58';Byte '\x00';Byte '\x4f';Byte '\x48';Byte '\x46';Byte '\x41';Byte '\x50';Byte '\x53';Byte '\x53';Byte '\x48';Byte '\x45';Byte '\x5a';Byte '\x45';Byte '\x58';Byte '\x00';]
let test_89_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400040L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400085L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c3L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000dbL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40010dL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400148L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40015cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400164L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_90 = [
  data "AAAAABAF" [
    Asciz ("BKLNYSTLSQZNWPFI");
    Asciz ("QRTXQCCRIMBNHHDSXJQI");
    Quad (Lit 3993416765857408811L);
    Asciz ("NIKRJBDZHXDHVDB");
    Asciz ("FNOBZSYLCXN");
    Asciz ("GDAKVAJQYZWGG");
  ];
  data "AAAAABAG" [
    Quad (Lit 8495856295417494320L);
    Quad (Lit 4980576659909615147L);
  ];
  data "AAAAABAH" [
    Quad (Lit 358737828805868079L);
  ];
  data "AAAAABAI" [
    Quad (Lit 958894418786732909L);
    Quad (Lit 7218434589331909760L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAABAF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABAG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABAH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABAI"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABAJ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABAK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABAL"); ~%Rax];
];
  data "AAAAABAJ" [
    Quad (Lit 2497920679341647664L);
  ];
  data "AAAAABAK" [
    Asciz ("APLULWLLMEDCIXKDGXHM");
    Asciz ("EWUJTKDWGZHHZNKZZ");
    Quad (Lit 4370779933175352466L);
    Asciz ("QNWGMUYTORPPEJ");
    Quad (Lit 4366440727730769049L);
    Quad (Lit 8511474867860723912L);
  ];
  data "AAAAABAL" [
    Quad (Lit 3659566683020477214L);
  ];
]
let test_90_data = [Byte '\x42';Byte '\x4b';Byte '\x4c';Byte '\x4e';Byte '\x59';Byte '\x53';Byte '\x54';Byte '\x4c';Byte '\x53';Byte '\x51';Byte '\x5a';Byte '\x4e';Byte '\x57';Byte '\x50';Byte '\x46';Byte '\x49';Byte '\x00';Byte '\x51';Byte '\x52';Byte '\x54';Byte '\x58';Byte '\x51';Byte '\x43';Byte '\x43';Byte '\x52';Byte '\x49';Byte '\x4d';Byte '\x42';Byte '\x4e';Byte '\x48';Byte '\x48';Byte '\x44';Byte '\x53';Byte '\x58';Byte '\x4a';Byte '\x51';Byte '\x49';Byte '\x00';Byte '\x2b';Byte '\x27';Byte '\x05';Byte '\xf9';Byte '\x63';Byte '\x77';Byte '\x6b';Byte '\x37';Byte '\x4e';Byte '\x49';Byte '\x4b';Byte '\x52';Byte '\x4a';Byte '\x42';Byte '\x44';Byte '\x5a';Byte '\x48';Byte '\x58';Byte '\x44';Byte '\x48';Byte '\x56';Byte '\x44';Byte '\x42';Byte '\x00';Byte '\x46';Byte '\x4e';Byte '\x4f';Byte '\x42';Byte '\x5a';Byte '\x53';Byte '\x59';Byte '\x4c';Byte '\x43';Byte '\x58';Byte '\x4e';Byte '\x00';Byte '\x47';Byte '\x44';Byte '\x41';Byte '\x4b';Byte '\x56';Byte '\x41';Byte '\x4a';Byte '\x51';Byte '\x59';Byte '\x5a';Byte '\x57';Byte '\x47';Byte '\x47';Byte '\x00';Byte '\x30';Byte '\x3b';Byte '\x20';Byte '\xa7';Byte '\x49';Byte '\x58';Byte '\xe7';Byte '\x75';Byte '\x2b';Byte '\x9e';Byte '\x83';Byte '\x7e';Byte '\x15';Byte '\x90';Byte '\x1e';Byte '\x45';Byte '\x2f';Byte '\xfa';Byte '\x77';Byte '\x95';Byte '\x27';Byte '\x7e';Byte '\xfa';Byte '\x04';Byte '\x6d';Byte '\x4b';Byte '\xe3';Byte '\xb8';Byte '\x64';Byte '\xad';Byte '\x4e';Byte '\x0d';Byte '\x80';Byte '\x6c';Byte '\x85';Byte '\x9b';Byte '\x03';Byte '\x08';Byte '\x2d';Byte '\x64';Byte '\x30';Byte '\xe7';Byte '\x42';Byte '\x91';Byte '\x9f';Byte '\x65';Byte '\xaa';Byte '\x22';Byte '\x41';Byte '\x50';Byte '\x4c';Byte '\x55';Byte '\x4c';Byte '\x57';Byte '\x4c';Byte '\x4c';Byte '\x4d';Byte '\x45';Byte '\x44';Byte '\x43';Byte '\x49';Byte '\x58';Byte '\x4b';Byte '\x44';Byte '\x47';Byte '\x58';Byte '\x48';Byte '\x4d';Byte '\x00';Byte '\x45';Byte '\x57';Byte '\x55';Byte '\x4a';Byte '\x54';Byte '\x4b';Byte '\x44';Byte '\x57';Byte '\x47';Byte '\x5a';Byte '\x48';Byte '\x48';Byte '\x5a';Byte '\x4e';Byte '\x4b';Byte '\x5a';Byte '\x5a';Byte '\x00';Byte '\x92';Byte '\x8c';Byte '\x52';Byte '\x1c';Byte '\x31';Byte '\x21';Byte '\xa8';Byte '\x3c';Byte '\x51';Byte '\x4e';Byte '\x57';Byte '\x47';Byte '\x4d';Byte '\x55';Byte '\x59';Byte '\x54';Byte '\x4f';Byte '\x52';Byte '\x50';Byte '\x50';Byte '\x45';Byte '\x4a';Byte '\x00';Byte '\x99';Byte '\xcc';Byte '\x30';Byte '\x1d';Byte '\xb5';Byte '\xb6';Byte '\x98';Byte '\x3c';Byte '\xc8';Byte '\xd8';Byte '\x80';Byte '\xed';Byte '\x4b';Byte '\xd5';Byte '\x1e';Byte '\x76';Byte '\x1e';Byte '\x43';Byte '\x4a';Byte '\x4d';Byte '\x82';Byte '\x64';Byte '\xc9';Byte '\x32';]
let test_90_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400038L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400090L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000a0L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000a8L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000b8L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c0L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40010eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_91 = [
  data "AAAAABAM" [
    Quad (Lit 4055666362724837962L);
    Asciz ("JLNSGJGKYYRGB");
    Quad (Lit 6331877182618609676L);
  ];
  data "AAAAABAN" [
    Quad (Lit 5280316175035279109L);
    Quad (Lit 4737446987969274562L);
    Asciz ("LGKCJMWUHHKFRUZSU");
  ];
  data "AAAAABAO" [
    Quad (Lit 7487388796815880564L);
    Quad (Lit 2610060531786664951L);
    Asciz ("VFHDXJMTZELHLACG");
    Quad (Lit 7884845552551136112L);
    Quad (Lit 1124158763547424077L);
    Asciz ("UJOTDREVTHREJZZLDPZI");
  ];
  data "AAAAABAP" [
    Asciz ("FQPJBJUNTSQRRNR");
    Quad (Lit 5328737343833260154L);
    Asciz ("DRPHPBPRVTUOEDYC");
    Asciz ("GUQDMSEWLZUXRBZUT");
    Quad (Lit 6980456264309083357L);
    Asciz ("LRXYACLDDBWZLRYZSK");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAABAM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABAN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABAO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABAP"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABAQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABAR"); ~%Rax];
];
  data "AAAAABAQ" [
    Asciz ("DZHYRASOII");
    Quad (Lit 8631893859906311694L);
  ];
  data "AAAAABAR" [
    Asciz ("MLDCUTNAYDTBYTNULZJM");
    Quad (Lit 5060428940091651392L);
    Quad (Lit 7557488215618816905L);
    Asciz ("ARQLAAHLWTSYEFRR");
    Quad (Lit 1030814564563861701L);
    Quad (Lit 2757466607649646946L);
  ];
]
let test_91_data = [Byte '\x4a';Byte '\xea';Byte '\xb6';Byte '\xad';Byte '\x11';Byte '\x9f';Byte '\x48';Byte '\x38';Byte '\x4a';Byte '\x4c';Byte '\x4e';Byte '\x53';Byte '\x47';Byte '\x4a';Byte '\x47';Byte '\x4b';Byte '\x59';Byte '\x59';Byte '\x52';Byte '\x47';Byte '\x42';Byte '\x00';Byte '\x0c';Byte '\x28';Byte '\x62';Byte '\xf7';Byte '\xbf';Byte '\x58';Byte '\xdf';Byte '\x57';Byte '\x05';Byte '\x27';Byte '\xba';Byte '\xba';Byte '\x95';Byte '\x73';Byte '\x47';Byte '\x49';Byte '\xc2';Byte '\x22';Byte '\x27';Byte '\x7c';Byte '\xef';Byte '\xca';Byte '\xbe';Byte '\x41';Byte '\x4c';Byte '\x47';Byte '\x4b';Byte '\x43';Byte '\x4a';Byte '\x4d';Byte '\x57';Byte '\x55';Byte '\x48';Byte '\x48';Byte '\x4b';Byte '\x46';Byte '\x52';Byte '\x55';Byte '\x5a';Byte '\x53';Byte '\x55';Byte '\x00';Byte '\x74';Byte '\x31';Byte '\x73';Byte '\xd9';Byte '\x70';Byte '\x8c';Byte '\xe8';Byte '\x67';Byte '\xf7';Byte '\x4b';Byte '\x69';Byte '\x97';Byte '\x39';Byte '\xcc';Byte '\x38';Byte '\x24';Byte '\x56';Byte '\x46';Byte '\x48';Byte '\x44';Byte '\x58';Byte '\x4a';Byte '\x4d';Byte '\x54';Byte '\x5a';Byte '\x45';Byte '\x4c';Byte '\x48';Byte '\x4c';Byte '\x41';Byte '\x43';Byte '\x47';Byte '\x00';Byte '\x70';Byte '\x0b';Byte '\xa1';Byte '\x1c';Byte '\x41';Byte '\x99';Byte '\x6c';Byte '\x6d';Byte '\x4d';Byte '\xf5';Byte '\x62';Byte '\x7c';Byte '\x70';Byte '\xd0';Byte '\x99';Byte '\x0f';Byte '\x55';Byte '\x4a';Byte '\x4f';Byte '\x54';Byte '\x44';Byte '\x52';Byte '\x45';Byte '\x56';Byte '\x54';Byte '\x48';Byte '\x52';Byte '\x45';Byte '\x4a';Byte '\x5a';Byte '\x5a';Byte '\x4c';Byte '\x44';Byte '\x50';Byte '\x5a';Byte '\x49';Byte '\x00';Byte '\x46';Byte '\x51';Byte '\x50';Byte '\x4a';Byte '\x42';Byte '\x4a';Byte '\x55';Byte '\x4e';Byte '\x54';Byte '\x53';Byte '\x51';Byte '\x52';Byte '\x52';Byte '\x4e';Byte '\x52';Byte '\x00';Byte '\x7a';Byte '\x40';Byte '\x8a';Byte '\xa0';Byte '\x61';Byte '\x7a';Byte '\xf3';Byte '\x49';Byte '\x44';Byte '\x52';Byte '\x50';Byte '\x48';Byte '\x50';Byte '\x42';Byte '\x50';Byte '\x52';Byte '\x56';Byte '\x54';Byte '\x55';Byte '\x4f';Byte '\x45';Byte '\x44';Byte '\x59';Byte '\x43';Byte '\x00';Byte '\x47';Byte '\x55';Byte '\x51';Byte '\x44';Byte '\x4d';Byte '\x53';Byte '\x45';Byte '\x57';Byte '\x4c';Byte '\x5a';Byte '\x55';Byte '\x58';Byte '\x52';Byte '\x42';Byte '\x5a';Byte '\x55';Byte '\x54';Byte '\x00';Byte '\xdd';Byte '\x0c';Byte '\x4b';Byte '\x04';Byte '\xfd';Byte '\x8f';Byte '\xdf';Byte '\x60';Byte '\x4c';Byte '\x52';Byte '\x58';Byte '\x59';Byte '\x41';Byte '\x43';Byte '\x4c';Byte '\x44';Byte '\x44';Byte '\x42';Byte '\x57';Byte '\x5a';Byte '\x4c';Byte '\x52';Byte '\x59';Byte '\x5a';Byte '\x53';Byte '\x4b';Byte '\x00';Byte '\x44';Byte '\x5a';Byte '\x48';Byte '\x59';Byte '\x52';Byte '\x41';Byte '\x53';Byte '\x4f';Byte '\x49';Byte '\x49';Byte '\x00';Byte '\x0e';Byte '\x56';Byte '\x97';Byte '\x5a';Byte '\xbb';Byte '\xa5';Byte '\xca';Byte '\x77';Byte '\x4d';Byte '\x4c';Byte '\x44';Byte '\x43';Byte '\x55';Byte '\x54';Byte '\x4e';Byte '\x41';Byte '\x59';Byte '\x44';Byte '\x54';Byte '\x42';Byte '\x59';Byte '\x54';Byte '\x4e';Byte '\x55';Byte '\x4c';Byte '\x5a';Byte '\x4a';Byte '\x4d';Byte '\x00';Byte '\x40';Byte '\xf5';Byte '\x44';Byte '\x49';Byte '\x4f';Byte '\x41';Byte '\x3a';Byte '\x46';Byte '\x89';Byte '\x0b';Byte '\x29';Byte '\xa6';Byte '\x7d';Byte '\x97';Byte '\xe1';Byte '\x68';Byte '\x41';Byte '\x52';Byte '\x51';Byte '\x4c';Byte '\x41';Byte '\x41';Byte '\x48';Byte '\x4c';Byte '\x57';Byte '\x54';Byte '\x53';Byte '\x59';Byte '\x45';Byte '\x46';Byte '\x52';Byte '\x52';Byte '\x00';Byte '\xc5';Byte '\xc0';Byte '\x20';Byte '\x8e';Byte '\x62';Byte '\x30';Byte '\x4e';Byte '\x0e';Byte '\x62';Byte '\x69';Byte '\xf5';Byte '\x1c';Byte '\x45';Byte '\x7d';Byte '\x44';Byte '\x26';]
let test_91_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400030L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40004eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400070L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000b6L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40010cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40011fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_92 = [
  data "AAAAABAS" [
    Asciz ("PSASXRXJFJTAVUHP");
    Quad (Lit 1527661482255686551L);
    Quad (Lit 5042859915377906752L);
    Asciz ("KQKNLZYVQMFJ");
    Asciz ("VPZIUJJVFVIX");
  ];
  data "AAAAABAT" [
    Quad (Lit 5082751594476461933L);
    Asciz ("SEOVLOPJNEZHQCJ");
    Asciz ("TAWHGCYIAS");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAABAS"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABAT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABAU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABAV"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABAW"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABAX"); ~%Rax];
];
  data "AAAAABAU" [
    Quad (Lit 6559275261055465940L);
    Asciz ("CSWGFRAEACCMYCLOVKQ");
  ];
  data "AAAAABAV" [
    Asciz ("PJCTBYXDCAGRDFOXJIGS");
    Quad (Lit 3375111869196430013L);
    Quad (Lit 6983376081561950306L);
    Quad (Lit 7114453753077700013L);
  ];
  data "AAAAABAW" [
    Asciz ("AMNQUKSHVNPS");
  ];
  data "AAAAABAX" [
    Quad (Lit 2395345521778484926L);
    Asciz ("INDFMFDBPHUW");
    Asciz ("QSSSJRNAOEQL");
    Asciz ("QTEFRZAGXZLITFL");
  ];
]
let test_92_data = [Byte '\x50';Byte '\x53';Byte '\x41';Byte '\x53';Byte '\x58';Byte '\x52';Byte '\x58';Byte '\x4a';Byte '\x46';Byte '\x4a';Byte '\x54';Byte '\x41';Byte '\x56';Byte '\x55';Byte '\x48';Byte '\x50';Byte '\x00';Byte '\x97';Byte '\x9b';Byte '\xe5';Byte '\x32';Byte '\x06';Byte '\x58';Byte '\x33';Byte '\x15';Byte '\x40';Byte '\x14';Byte '\x28';Byte '\xf4';Byte '\x5f';Byte '\xd6';Byte '\xfb';Byte '\x45';Byte '\x4b';Byte '\x51';Byte '\x4b';Byte '\x4e';Byte '\x4c';Byte '\x5a';Byte '\x59';Byte '\x56';Byte '\x51';Byte '\x4d';Byte '\x46';Byte '\x4a';Byte '\x00';Byte '\x56';Byte '\x50';Byte '\x5a';Byte '\x49';Byte '\x55';Byte '\x4a';Byte '\x4a';Byte '\x56';Byte '\x46';Byte '\x56';Byte '\x49';Byte '\x58';Byte '\x00';Byte '\x6d';Byte '\xdf';Byte '\x51';Byte '\x46';Byte '\xa5';Byte '\x8f';Byte '\x89';Byte '\x46';Byte '\x53';Byte '\x45';Byte '\x4f';Byte '\x56';Byte '\x4c';Byte '\x4f';Byte '\x50';Byte '\x4a';Byte '\x4e';Byte '\x45';Byte '\x5a';Byte '\x48';Byte '\x51';Byte '\x43';Byte '\x4a';Byte '\x00';Byte '\x54';Byte '\x41';Byte '\x57';Byte '\x48';Byte '\x47';Byte '\x43';Byte '\x59';Byte '\x49';Byte '\x41';Byte '\x53';Byte '\x00';Byte '\xd4';Byte '\xf9';Byte '\x37';Byte '\xef';Byte '\x18';Byte '\x3a';Byte '\x07';Byte '\x5b';Byte '\x43';Byte '\x53';Byte '\x57';Byte '\x47';Byte '\x46';Byte '\x52';Byte '\x41';Byte '\x45';Byte '\x41';Byte '\x43';Byte '\x43';Byte '\x4d';Byte '\x59';Byte '\x43';Byte '\x4c';Byte '\x4f';Byte '\x56';Byte '\x4b';Byte '\x51';Byte '\x00';Byte '\x50';Byte '\x4a';Byte '\x43';Byte '\x54';Byte '\x42';Byte '\x59';Byte '\x58';Byte '\x44';Byte '\x43';Byte '\x41';Byte '\x47';Byte '\x52';Byte '\x44';Byte '\x46';Byte '\x4f';Byte '\x58';Byte '\x4a';Byte '\x49';Byte '\x47';Byte '\x53';Byte '\x00';Byte '\xbd';Byte '\x6a';Byte '\xa8';Byte '\xe8';Byte '\x5c';Byte '\xce';Byte '\xd6';Byte '\x2e';Byte '\x62';Byte '\x98';Byte '\x75';Byte '\xf2';Byte '\x8b';Byte '\xef';Byte '\xe9';Byte '\x60';Byte '\xad';Byte '\x15';Byte '\x24';Byte '\x93';Byte '\xfe';Byte '\x9d';Byte '\xbb';Byte '\x62';Byte '\x41';Byte '\x4d';Byte '\x4e';Byte '\x51';Byte '\x55';Byte '\x4b';Byte '\x53';Byte '\x48';Byte '\x56';Byte '\x4e';Byte '\x50';Byte '\x53';Byte '\x00';Byte '\xbe';Byte '\xe6';Byte '\xed';Byte '\x9b';Byte '\x0f';Byte '\xfa';Byte '\x3d';Byte '\x21';Byte '\x49';Byte '\x4e';Byte '\x44';Byte '\x46';Byte '\x4d';Byte '\x46';Byte '\x44';Byte '\x42';Byte '\x50';Byte '\x48';Byte '\x55';Byte '\x57';Byte '\x00';Byte '\x51';Byte '\x53';Byte '\x53';Byte '\x53';Byte '\x4a';Byte '\x52';Byte '\x4e';Byte '\x41';Byte '\x4f';Byte '\x45';Byte '\x51';Byte '\x4c';Byte '\x00';Byte '\x51';Byte '\x54';Byte '\x45';Byte '\x46';Byte '\x52';Byte '\x5a';Byte '\x41';Byte '\x47';Byte '\x58';Byte '\x5a';Byte '\x4c';Byte '\x49';Byte '\x54';Byte '\x46';Byte '\x4c';Byte '\x00';]
let test_92_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400030L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40006bL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40008eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000aaL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000d7L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000e4L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_93 = [
  data "AAAAABAY" [
    Asciz ("PJDUTTTGVAG");
    Quad (Lit 556335542511783367L);
  ];
  data "AAAAABAZ" [
    Asciz ("TYPUMPVTHKM");
    Asciz ("OAOGYDFKVEESDEXINWSA");
  ];
  data "AAAAABBA" [
    Quad (Lit 4670235098292055683L);
    Quad (Lit 1073830245651353042L);
    Asciz ("ZJXESSTUAKK");
    Asciz ("WOZZFOVQRRNKRK");
  ];
  data "AAAAABBB" [
    Quad (Lit 5081492621808054344L);
    Asciz ("TVHRUUYFWSKUNZ");
    Quad (Lit 4446543438874163684L);
    Asciz ("GWAKIOTPHAYM");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAABAY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABAZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABBA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABBB"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABBC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABBD"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABBE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABBF"); ~%Rax];
];
  data "AAAAABBC" [
    Asciz ("JQTAOVRMYZRZCTG");
    Asciz ("TRADEZYPXZNP");
    Asciz ("ZLLOEACWMIJI");
    Quad (Lit 2553584592828286096L);
    Quad (Lit 8776324977818360120L);
    Quad (Lit 9187870550295498673L);
  ];
  data "AAAAABBD" [
    Quad (Lit 713005448835328430L);
    Quad (Lit 2932123391797025718L);
    Quad (Lit 548360886301091307L);
    Asciz ("RTFMVKHJTLAYALXVSA");
  ];
  data "AAAAABBE" [
    Asciz ("ZXRSGMVRCA");
  ];
  data "AAAAABBF" [
    Quad (Lit 4887872979740025802L);
    Asciz ("CQIFGBOQTROMFRWC");
  ];
]
let test_93_data = [Byte '\x50';Byte '\x4a';Byte '\x44';Byte '\x55';Byte '\x54';Byte '\x54';Byte '\x54';Byte '\x47';Byte '\x56';Byte '\x41';Byte '\x47';Byte '\x00';Byte '\xc7';Byte '\xcd';Byte '\x56';Byte '\x73';Byte '\x3a';Byte '\x80';Byte '\xb8';Byte '\x07';Byte '\x54';Byte '\x59';Byte '\x50';Byte '\x55';Byte '\x4d';Byte '\x50';Byte '\x56';Byte '\x54';Byte '\x48';Byte '\x4b';Byte '\x4d';Byte '\x00';Byte '\x4f';Byte '\x41';Byte '\x4f';Byte '\x47';Byte '\x59';Byte '\x44';Byte '\x46';Byte '\x4b';Byte '\x56';Byte '\x45';Byte '\x45';Byte '\x53';Byte '\x44';Byte '\x45';Byte '\x58';Byte '\x49';Byte '\x4e';Byte '\x57';Byte '\x53';Byte '\x41';Byte '\x00';Byte '\x83';Byte '\x6e';Byte '\x42';Byte '\xf3';Byte '\x13';Byte '\x02';Byte '\xd0';Byte '\x40';Byte '\xd2';Byte '\x8d';Byte '\x1e';Byte '\x45';Byte '\xeb';Byte '\x02';Byte '\xe7';Byte '\x0e';Byte '\x5a';Byte '\x4a';Byte '\x58';Byte '\x45';Byte '\x53';Byte '\x53';Byte '\x54';Byte '\x55';Byte '\x41';Byte '\x4b';Byte '\x4b';Byte '\x00';Byte '\x57';Byte '\x4f';Byte '\x5a';Byte '\x5a';Byte '\x46';Byte '\x4f';Byte '\x56';Byte '\x51';Byte '\x52';Byte '\x52';Byte '\x4e';Byte '\x4b';Byte '\x52';Byte '\x4b';Byte '\x00';Byte '\x48';Byte '\x30';Byte '\xa3';Byte '\xdb';Byte '\x9d';Byte '\x16';Byte '\x85';Byte '\x46';Byte '\x54';Byte '\x56';Byte '\x48';Byte '\x52';Byte '\x55';Byte '\x55';Byte '\x59';Byte '\x46';Byte '\x57';Byte '\x53';Byte '\x4b';Byte '\x55';Byte '\x4e';Byte '\x5a';Byte '\x00';Byte '\xe4';Byte '\x39';Byte '\x70';Byte '\xe8';Byte '\xb2';Byte '\x4b';Byte '\xb5';Byte '\x3d';Byte '\x47';Byte '\x57';Byte '\x41';Byte '\x4b';Byte '\x49';Byte '\x4f';Byte '\x54';Byte '\x50';Byte '\x48';Byte '\x41';Byte '\x59';Byte '\x4d';Byte '\x00';Byte '\x4a';Byte '\x51';Byte '\x54';Byte '\x41';Byte '\x4f';Byte '\x56';Byte '\x52';Byte '\x4d';Byte '\x59';Byte '\x5a';Byte '\x52';Byte '\x5a';Byte '\x43';Byte '\x54';Byte '\x47';Byte '\x00';Byte '\x54';Byte '\x52';Byte '\x41';Byte '\x44';Byte '\x45';Byte '\x5a';Byte '\x59';Byte '\x50';Byte '\x58';Byte '\x5a';Byte '\x4e';Byte '\x50';Byte '\x00';Byte '\x5a';Byte '\x4c';Byte '\x4c';Byte '\x4f';Byte '\x45';Byte '\x41';Byte '\x43';Byte '\x57';Byte '\x4d';Byte '\x49';Byte '\x4a';Byte '\x49';Byte '\x00';Byte '\x90';Byte '\xc4';Byte '\x70';Byte '\x5f';Byte '\xa8';Byte '\x27';Byte '\x70';Byte '\x23';Byte '\x38';Byte '\x59';Byte '\x40';Byte '\x80';Byte '\x11';Byte '\xc5';Byte '\xcb';Byte '\x79';Byte '\xb1';Byte '\xcf';Byte '\xa2';Byte '\x08';Byte '\x96';Byte '\xdf';Byte '\x81';Byte '\x7f';Byte '\xae';Byte '\x69';Byte '\xbf';Byte '\x94';Byte '\xad';Byte '\x1a';Byte '\xe5';Byte '\x09';Byte '\xb6';Byte '\xdb';Byte '\xac';Byte '\x95';Byte '\xb0';Byte '\xfe';Byte '\xb0';Byte '\x28';Byte '\xeb';Byte '\xe5';Byte '\xb1';Byte '\x1c';Byte '\x52';Byte '\x2b';Byte '\x9c';Byte '\x07';Byte '\x52';Byte '\x54';Byte '\x46';Byte '\x4d';Byte '\x56';Byte '\x4b';Byte '\x48';Byte '\x4a';Byte '\x54';Byte '\x4c';Byte '\x41';Byte '\x59';Byte '\x41';Byte '\x4c';Byte '\x58';Byte '\x56';Byte '\x53';Byte '\x41';Byte '\x00';Byte '\x5a';Byte '\x58';Byte '\x52';Byte '\x53';Byte '\x47';Byte '\x4d';Byte '\x56';Byte '\x52';Byte '\x43';Byte '\x41';Byte '\x00';Byte '\xca';Byte '\x63';Byte '\xa2';Byte '\xf8';Byte '\x93';Byte '\x36';Byte '\xd5';Byte '\x43';Byte '\x43';Byte '\x51';Byte '\x49';Byte '\x46';Byte '\x47';Byte '\x42';Byte '\x4f';Byte '\x51';Byte '\x54';Byte '\x52';Byte '\x4f';Byte '\x4d';Byte '\x46';Byte '\x52';Byte '\x57';Byte '\x43';Byte '\x00';]
let test_93_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400040L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400054L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400075L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000a0L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000ccL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40010eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400139L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400144L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_94 = [
  data "AAAAABBG" [
    Asciz ("OODGKHQPVKEVUSY");
    Quad (Lit 6239651535673304368L);
    Quad (Lit 6782233784885502611L);
    Asciz ("ZVJLLMOBAYEPFROJXMT");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAABBG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABBH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABBI"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABBJ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABBK"); ~%Rax];
];
  data "AAAAABBH" [
    Asciz ("CPUFDYFSDUUNXDQXF");
    Quad (Lit 1661606011311245563L);
    Quad (Lit 6660498695653762781L);
    Asciz ("FGATLEKBLOB");
    Asciz ("ZIIGTOUJUIGQUW");
  ];
  data "AAAAABBI" [
    Asciz ("XYUKPNXDVXWCHDZPQSX");
  ];
  data "AAAAABBJ" [
    Quad (Lit 7253989385373872108L);
    Asciz ("GQJNQXFIHTOFZ");
    Quad (Lit 159617876572012330L);
  ];
  data "AAAAABBK" [
    Quad (Lit 3771917968924459100L);
    Quad (Lit 4882895781135745802L);
    Quad (Lit 7848906572316408780L);
    Quad (Lit 622324414156734719L);
    Asciz ("ZLXEQGFCQIGTFAFZF");
    Asciz ("DGZTKZSDPWAFQW");
  ];
]
let test_94_data = [Byte '\x4f';Byte '\x4f';Byte '\x44';Byte '\x47';Byte '\x4b';Byte '\x48';Byte '\x51';Byte '\x50';Byte '\x56';Byte '\x4b';Byte '\x45';Byte '\x56';Byte '\x55';Byte '\x53';Byte '\x59';Byte '\x00';Byte '\x30';Byte '\x25';Byte '\x07';Byte '\x3a';Byte '\x03';Byte '\xb2';Byte '\x97';Byte '\x56';Byte '\x93';Byte '\xe2';Byte '\xc0';Byte '\x8b';Byte '\xb1';Byte '\x55';Byte '\x1f';Byte '\x5e';Byte '\x5a';Byte '\x56';Byte '\x4a';Byte '\x4c';Byte '\x4c';Byte '\x4d';Byte '\x4f';Byte '\x42';Byte '\x41';Byte '\x59';Byte '\x45';Byte '\x50';Byte '\x46';Byte '\x52';Byte '\x4f';Byte '\x4a';Byte '\x58';Byte '\x4d';Byte '\x54';Byte '\x00';Byte '\x43';Byte '\x50';Byte '\x55';Byte '\x46';Byte '\x44';Byte '\x59';Byte '\x46';Byte '\x53';Byte '\x44';Byte '\x55';Byte '\x55';Byte '\x4e';Byte '\x58';Byte '\x44';Byte '\x51';Byte '\x58';Byte '\x46';Byte '\x00';Byte '\xfb';Byte '\x48';Byte '\xdc';Byte '\x1c';Byte '\xdd';Byte '\x35';Byte '\x0f';Byte '\x17';Byte '\xdd';Byte '\x26';Byte '\x65';Byte '\x5d';Byte '\x46';Byte '\xd8';Byte '\x6e';Byte '\x5c';Byte '\x46';Byte '\x47';Byte '\x41';Byte '\x54';Byte '\x4c';Byte '\x45';Byte '\x4b';Byte '\x42';Byte '\x4c';Byte '\x4f';Byte '\x42';Byte '\x00';Byte '\x5a';Byte '\x49';Byte '\x49';Byte '\x47';Byte '\x54';Byte '\x4f';Byte '\x55';Byte '\x4a';Byte '\x55';Byte '\x49';Byte '\x47';Byte '\x51';Byte '\x55';Byte '\x57';Byte '\x00';Byte '\x58';Byte '\x59';Byte '\x55';Byte '\x4b';Byte '\x50';Byte '\x4e';Byte '\x58';Byte '\x44';Byte '\x56';Byte '\x58';Byte '\x57';Byte '\x43';Byte '\x48';Byte '\x44';Byte '\x5a';Byte '\x50';Byte '\x51';Byte '\x53';Byte '\x58';Byte '\x00';Byte '\xec';Byte '\xef';Byte '\xa9';Byte '\xa7';Byte '\xe9';Byte '\x58';Byte '\xab';Byte '\x64';Byte '\x47';Byte '\x51';Byte '\x4a';Byte '\x4e';Byte '\x51';Byte '\x58';Byte '\x46';Byte '\x49';Byte '\x48';Byte '\x54';Byte '\x4f';Byte '\x46';Byte '\x5a';Byte '\x00';Byte '\x2a';Byte '\x7f';Byte '\xe0';Byte '\xf0';Byte '\x9c';Byte '\x13';Byte '\x37';Byte '\x02';Byte '\x5c';Byte '\xc0';Byte '\xa7';Byte '\x83';Byte '\x68';Byte '\x8b';Byte '\x58';Byte '\x34';Byte '\x0a';Byte '\x83';Byte '\xd9';Byte '\x9d';Byte '\xd7';Byte '\x87';Byte '\xc3';Byte '\x43';Byte '\xcc';Byte '\xfb';Byte '\x25';Byte '\x36';Byte '\xf1';Byte '\xea';Byte '\xec';Byte '\x6c';Byte '\xff';Byte '\x80';Byte '\xdd';Byte '\xe8';Byte '\xc1';Byte '\xf0';Byte '\xa2';Byte '\x08';Byte '\x5a';Byte '\x4c';Byte '\x58';Byte '\x45';Byte '\x51';Byte '\x47';Byte '\x46';Byte '\x43';Byte '\x51';Byte '\x49';Byte '\x47';Byte '\x54';Byte '\x46';Byte '\x41';Byte '\x46';Byte '\x5a';Byte '\x46';Byte '\x00';Byte '\x44';Byte '\x47';Byte '\x5a';Byte '\x54';Byte '\x4b';Byte '\x5a';Byte '\x53';Byte '\x44';Byte '\x50';Byte '\x57';Byte '\x41';Byte '\x46';Byte '\x51';Byte '\x57';Byte '\x00';]
let test_94_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400028L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40005cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400099L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000adL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000cbL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_95 = [
text "main" [
  Leaq, [Ind1 (Lbl "AAAAABBL"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABBM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABBN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABBO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABBP"); ~%Rax];
];
  data "AAAAABBL" [
    Asciz ("VSMAUFIAMODTLXNH");
    Quad (Lit 6117486801432435213L);
    Quad (Lit 313306886208175026L);
    Asciz ("HEVWKJAXUSZRY");
    Quad (Lit 835239784574803231L);
  ];
  data "AAAAABBM" [
    Asciz ("ALSSJAOYHPMCNJHVZZO");
    Quad (Lit 7762288759380553091L);
    Quad (Lit 9172371376544706371L);
  ];
  data "AAAAABBN" [
    Asciz ("IPAUBUXXRMURWXUR");
    Asciz ("UIPPTJBONWTFJSIJ");
    Quad (Lit 7971113540578510212L);
    Asciz ("GFQYVASWBFOCVWF");
    Quad (Lit 1003660336581267263L);
  ];
  data "AAAAABBO" [
    Asciz ("IBCFDMQTTTDDOTTSKDC");
    Quad (Lit 4731891887954769793L);
    Quad (Lit 7372580038550607592L);
    Quad (Lit 901738246172819706L);
    Quad (Lit 1417140697634151932L);
  ];
  data "AAAAABBP" [
    Asciz ("KGUHRKBLDKTHAUVJEBE");
  ];
]
let test_95_data = [Byte '\x56';Byte '\x53';Byte '\x4d';Byte '\x41';Byte '\x55';Byte '\x46';Byte '\x49';Byte '\x41';Byte '\x4d';Byte '\x4f';Byte '\x44';Byte '\x54';Byte '\x4c';Byte '\x58';Byte '\x4e';Byte '\x48';Byte '\x00';Byte '\x0d';Byte '\x5a';Byte '\x85';Byte '\x85';Byte '\xd5';Byte '\xad';Byte '\xe5';Byte '\x54';Byte '\xb2';Byte '\x3b';Byte '\x1f';Byte '\xfa';Byte '\xf3';Byte '\x16';Byte '\x59';Byte '\x04';Byte '\x48';Byte '\x45';Byte '\x56';Byte '\x57';Byte '\x4b';Byte '\x4a';Byte '\x41';Byte '\x58';Byte '\x55';Byte '\x53';Byte '\x5a';Byte '\x52';Byte '\x59';Byte '\x00';Byte '\x1f';Byte '\xdd';Byte '\xda';Byte '\xa5';Byte '\x28';Byte '\x5e';Byte '\x97';Byte '\x0b';Byte '\x41';Byte '\x4c';Byte '\x53';Byte '\x53';Byte '\x4a';Byte '\x41';Byte '\x4f';Byte '\x59';Byte '\x48';Byte '\x50';Byte '\x4d';Byte '\x43';Byte '\x4e';Byte '\x4a';Byte '\x48';Byte '\x56';Byte '\x5a';Byte '\x5a';Byte '\x4f';Byte '\x00';Byte '\x83';Byte '\xad';Byte '\xe2';Byte '\x12';Byte '\x80';Byte '\x30';Byte '\xb9';Byte '\x6b';Byte '\x43';Byte '\x6f';Byte '\xe8';Byte '\x6e';Byte '\x2b';Byte '\xcf';Byte '\x4a';Byte '\x7f';Byte '\x49';Byte '\x50';Byte '\x41';Byte '\x55';Byte '\x42';Byte '\x55';Byte '\x58';Byte '\x58';Byte '\x52';Byte '\x4d';Byte '\x55';Byte '\x52';Byte '\x57';Byte '\x58';Byte '\x55';Byte '\x52';Byte '\x00';Byte '\x55';Byte '\x49';Byte '\x50';Byte '\x50';Byte '\x54';Byte '\x4a';Byte '\x42';Byte '\x4f';Byte '\x4e';Byte '\x57';Byte '\x54';Byte '\x46';Byte '\x4a';Byte '\x53';Byte '\x49';Byte '\x4a';Byte '\x00';Byte '\x84';Byte '\x05';Byte '\x7d';Byte '\x4a';Byte '\x88';Byte '\x15';Byte '\x9f';Byte '\x6e';Byte '\x47';Byte '\x46';Byte '\x51';Byte '\x59';Byte '\x56';Byte '\x41';Byte '\x53';Byte '\x57';Byte '\x42';Byte '\x46';Byte '\x4f';Byte '\x43';Byte '\x56';Byte '\x57';Byte '\x46';Byte '\x00';Byte '\x3f';Byte '\x4f';Byte '\x13';Byte '\x2d';Byte '\xc2';Byte '\xb7';Byte '\xed';Byte '\x0d';Byte '\x49';Byte '\x42';Byte '\x43';Byte '\x46';Byte '\x44';Byte '\x4d';Byte '\x51';Byte '\x54';Byte '\x54';Byte '\x54';Byte '\x44';Byte '\x44';Byte '\x4f';Byte '\x54';Byte '\x54';Byte '\x53';Byte '\x4b';Byte '\x44';Byte '\x43';Byte '\x00';Byte '\x81';Byte '\xb7';Byte '\x18';Byte '\xf9';Byte '\x99';Byte '\x0e';Byte '\xab';Byte '\x41';Byte '\xe8';Byte '\xd6';Byte '\xf1';Byte '\xc3';Byte '\x7b';Byte '\xaa';Byte '\x50';Byte '\x66';Byte '\xfa';Byte '\xc0';Byte '\x83';Byte '\x43';Byte '\x28';Byte '\x9e';Byte '\x83';Byte '\x0c';Byte '\xfc';Byte '\x9d';Byte '\x3b';Byte '\xc7';Byte '\xf4';Byte '\xb1';Byte '\xaa';Byte '\x13';Byte '\x4b';Byte '\x47';Byte '\x55';Byte '\x48';Byte '\x52';Byte '\x4b';Byte '\x42';Byte '\x4c';Byte '\x44';Byte '\x4b';Byte '\x54';Byte '\x48';Byte '\x41';Byte '\x55';Byte '\x56';Byte '\x4a';Byte '\x45';Byte '\x42';Byte '\x45';Byte '\x00';]
let test_95_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400028L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40005fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400083L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c5L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f9L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_96 = [
  data "AAAAABBQ" [
    Quad (Lit 3140380074253201168L);
    Asciz ("QLDHQYVXIORMWHUPFNH");
    Quad (Lit 1708591140310323728L);
    Quad (Lit 9101030770270409439L);
    Quad (Lit 6051470164170670158L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAABBQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABBR"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABBS"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABBT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABBU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABBV"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABBW"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABBX"); ~%Rax];
];
  data "AAAAABBR" [
    Quad (Lit 5522769308667373177L);
  ];
  data "AAAAABBS" [
    Quad (Lit 2716501193433767163L);
    Asciz ("WWZSXFUWSDXLGEGPUGV");
    Quad (Lit 6947190175605121471L);
    Quad (Lit 1701970825307505795L);
    Asciz ("XFGYMPISUF");
  ];
  data "AAAAABBT" [
    Quad (Lit 9065037017628398576L);
    Quad (Lit 5635114650777402039L);
  ];
  data "AAAAABBU" [
    Asciz ("TCRZKOGXJMZDQZ");
  ];
  data "AAAAABBV" [
    Quad (Lit 512305266622461779L);
    Asciz ("JYMNZLJGBHUFNKJYJGHL");
    Quad (Lit 8836427898653662680L);
  ];
  data "AAAAABBW" [
    Quad (Lit 4307313115883188462L);
  ];
  data "AAAAABBX" [
    Asciz ("WFTIZNPSUFNPUEMWR");
    Quad (Lit 5856808737953105801L);
    Asciz ("NTFDCFWQYIQITFPGHK");
    Quad (Lit 2420215314977255410L);
  ];
]
let test_96_data = [Byte '\x10';Byte '\xaf';Byte '\x93';Byte '\x01';Byte '\x0a';Byte '\xdf';Byte '\x94';Byte '\x2b';Byte '\x51';Byte '\x4c';Byte '\x44';Byte '\x48';Byte '\x51';Byte '\x59';Byte '\x56';Byte '\x58';Byte '\x49';Byte '\x4f';Byte '\x52';Byte '\x4d';Byte '\x57';Byte '\x48';Byte '\x55';Byte '\x50';Byte '\x46';Byte '\x4e';Byte '\x48';Byte '\x00';Byte '\x10';Byte '\x92';Byte '\x93';Byte '\xf0';Byte '\x96';Byte '\x22';Byte '\xb6';Byte '\x17';Byte '\xdf';Byte '\x12';Byte '\xde';Byte '\x27';Byte '\x44';Byte '\x5b';Byte '\x4d';Byte '\x7e';Byte '\x4e';Byte '\x80';Byte '\x44';Byte '\x60';Byte '\x0d';Byte '\x24';Byte '\xfb';Byte '\x53';Byte '\x79';Byte '\x66';Byte '\x8c';Byte '\xe3';Byte '\x6c';Byte '\xd1';Byte '\xa4';Byte '\x4c';Byte '\xfb';Byte '\x5c';Byte '\x8b';Byte '\x5a';Byte '\x71';Byte '\xf3';Byte '\xb2';Byte '\x25';Byte '\x57';Byte '\x57';Byte '\x5a';Byte '\x53';Byte '\x58';Byte '\x46';Byte '\x55';Byte '\x57';Byte '\x53';Byte '\x44';Byte '\x58';Byte '\x4c';Byte '\x47';Byte '\x45';Byte '\x47';Byte '\x50';Byte '\x55';Byte '\x47';Byte '\x56';Byte '\x00';Byte '\xbf';Byte '\xe1';Byte '\x06';Byte '\x2c';Byte '\xa8';Byte '\x60';Byte '\x69';Byte '\x60';Byte '\x83';Byte '\x44';Byte '\x88';Byte '\xbc';Byte '\x72';Byte '\x9d';Byte '\x9e';Byte '\x17';Byte '\x58';Byte '\x46';Byte '\x47';Byte '\x59';Byte '\x4d';Byte '\x50';Byte '\x49';Byte '\x53';Byte '\x55';Byte '\x46';Byte '\x00';Byte '\xf0';Byte '\xd3';Byte '\x81';Byte '\x8f';Byte '\x23';Byte '\x7b';Byte '\xcd';Byte '\x7d';Byte '\xb7';Byte '\xba';Byte '\x2f';Byte '\x34';Byte '\xeb';Byte '\xf2';Byte '\x33';Byte '\x4e';Byte '\x54';Byte '\x43';Byte '\x52';Byte '\x5a';Byte '\x4b';Byte '\x4f';Byte '\x47';Byte '\x58';Byte '\x4a';Byte '\x4d';Byte '\x5a';Byte '\x44';Byte '\x51';Byte '\x5a';Byte '\x00';Byte '\x53';Byte '\xf7';Byte '\x97';Byte '\xf9';Byte '\xec';Byte '\x12';Byte '\x1c';Byte '\x07';Byte '\x4a';Byte '\x59';Byte '\x4d';Byte '\x4e';Byte '\x5a';Byte '\x4c';Byte '\x4a';Byte '\x47';Byte '\x42';Byte '\x48';Byte '\x55';Byte '\x46';Byte '\x4e';Byte '\x4b';Byte '\x4a';Byte '\x59';Byte '\x4a';Byte '\x47';Byte '\x48';Byte '\x4c';Byte '\x00';Byte '\xd8';Byte '\x5d';Byte '\x9a';Byte '\x3e';Byte '\x5b';Byte '\x4c';Byte '\xa1';Byte '\x7a';Byte '\xee';Byte '\x30';Byte '\x99';Byte '\x30';Byte '\x75';Byte '\xa6';Byte '\xc6';Byte '\x3b';Byte '\x57';Byte '\x46';Byte '\x54';Byte '\x49';Byte '\x5a';Byte '\x4e';Byte '\x50';Byte '\x53';Byte '\x55';Byte '\x46';Byte '\x4e';Byte '\x50';Byte '\x55';Byte '\x45';Byte '\x4d';Byte '\x57';Byte '\x52';Byte '\x00';Byte '\x89';Byte '\x47';Byte '\x19';Byte '\x37';Byte '\x84';Byte '\x90';Byte '\x47';Byte '\x51';Byte '\x4e';Byte '\x54';Byte '\x46';Byte '\x44';Byte '\x43';Byte '\x46';Byte '\x57';Byte '\x51';Byte '\x59';Byte '\x49';Byte '\x51';Byte '\x49';Byte '\x54';Byte '\x46';Byte '\x50';Byte '\x47';Byte '\x48';Byte '\x4b';Byte '\x00';Byte '\xf2';Byte '\xef';Byte '\x2d';Byte '\x91';Byte '\x01';Byte '\x55';Byte '\x96';Byte '\x21';]
let test_96_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400040L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400074L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40007cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000b3L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c3L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000d2L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f7L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000ffL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_97 = [
  data "AAAAABBY" [
    Quad (Lit 6146220749285322357L);
    Asciz ("LOECECNVUSHP");
    Quad (Lit 6747503496368584187L);
  ];
  data "AAAAABBZ" [
    Quad (Lit 2617401692157307673L);
    Asciz ("BCEYPAXQHE");
    Asciz ("HOKIIHWTQRIV");
    Asciz ("EGDESSSMMGBYIMCRR");
    Asciz ("XFDUAZPOZVHL");
  ];
  data "AAAAABCA" [
    Quad (Lit 1871262272780274922L);
    Asciz ("BNKSGYYVWPJOHMSXTYYC");
    Quad (Lit 5373834396130604756L);
    Asciz ("WQKWWTRJQOCJOUCSIQV");
  ];
  data "AAAAABCB" [
    Quad (Lit 657672141426240231L);
    Asciz ("VMLMQRLHAPTJ");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAABBY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABBZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABCA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABCB"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABCC"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABCD"); ~%Rax];
];
  data "AAAAABCC" [
    Asciz ("KDXNEZNIYNVNJOUSK");
  ];
  data "AAAAABCD" [
    Asciz ("CSLRPJKSDIBU");
    Quad (Lit 5376146101349479876L);
  ];
]
let test_97_data = [Byte '\x75';Byte '\x6e';Byte '\x49';Byte '\x18';Byte '\x35';Byte '\xc3';Byte '\x4b';Byte '\x55';Byte '\x4c';Byte '\x4f';Byte '\x45';Byte '\x43';Byte '\x45';Byte '\x43';Byte '\x4e';Byte '\x56';Byte '\x55';Byte '\x53';Byte '\x48';Byte '\x50';Byte '\x00';Byte '\xfb';Byte '\x75';Byte '\xc1';Byte '\x1d';Byte '\xae';Byte '\xf2';Byte '\xa3';Byte '\x5d';Byte '\x19';Byte '\xeb';Byte '\x8a';Byte '\xaf';Byte '\xf8';Byte '\xe0';Byte '\x52';Byte '\x24';Byte '\x42';Byte '\x43';Byte '\x45';Byte '\x59';Byte '\x50';Byte '\x41';Byte '\x58';Byte '\x51';Byte '\x48';Byte '\x45';Byte '\x00';Byte '\x48';Byte '\x4f';Byte '\x4b';Byte '\x49';Byte '\x49';Byte '\x48';Byte '\x57';Byte '\x54';Byte '\x51';Byte '\x52';Byte '\x49';Byte '\x56';Byte '\x00';Byte '\x45';Byte '\x47';Byte '\x44';Byte '\x45';Byte '\x53';Byte '\x53';Byte '\x53';Byte '\x4d';Byte '\x4d';Byte '\x47';Byte '\x42';Byte '\x59';Byte '\x49';Byte '\x4d';Byte '\x43';Byte '\x52';Byte '\x52';Byte '\x00';Byte '\x58';Byte '\x46';Byte '\x44';Byte '\x55';Byte '\x41';Byte '\x5a';Byte '\x50';Byte '\x4f';Byte '\x5a';Byte '\x56';Byte '\x48';Byte '\x4c';Byte '\x00';Byte '\xea';Byte '\x8c';Byte '\xa8';Byte '\x6a';Byte '\x1f';Byte '\x0f';Byte '\xf8';Byte '\x19';Byte '\x42';Byte '\x4e';Byte '\x4b';Byte '\x53';Byte '\x47';Byte '\x59';Byte '\x59';Byte '\x56';Byte '\x57';Byte '\x50';Byte '\x4a';Byte '\x4f';Byte '\x48';Byte '\x4d';Byte '\x53';Byte '\x58';Byte '\x54';Byte '\x59';Byte '\x59';Byte '\x43';Byte '\x00';Byte '\xd4';Byte '\xf6';Byte '\x23';Byte '\x57';Byte '\xe9';Byte '\xb1';Byte '\x93';Byte '\x4a';Byte '\x57';Byte '\x51';Byte '\x4b';Byte '\x57';Byte '\x57';Byte '\x54';Byte '\x52';Byte '\x4a';Byte '\x51';Byte '\x4f';Byte '\x43';Byte '\x4a';Byte '\x4f';Byte '\x55';Byte '\x43';Byte '\x53';Byte '\x49';Byte '\x51';Byte '\x56';Byte '\x00';Byte '\xe7';Byte '\xaa';Byte '\x61';Byte '\x00';Byte '\x54';Byte '\x85';Byte '\x20';Byte '\x09';Byte '\x56';Byte '\x4d';Byte '\x4c';Byte '\x4d';Byte '\x51';Byte '\x52';Byte '\x4c';Byte '\x48';Byte '\x41';Byte '\x50';Byte '\x54';Byte '\x4a';Byte '\x00';Byte '\x4b';Byte '\x44';Byte '\x58';Byte '\x4e';Byte '\x45';Byte '\x5a';Byte '\x4e';Byte '\x49';Byte '\x59';Byte '\x4e';Byte '\x56';Byte '\x4e';Byte '\x4a';Byte '\x4f';Byte '\x55';Byte '\x53';Byte '\x4b';Byte '\x00';Byte '\x43';Byte '\x53';Byte '\x4c';Byte '\x52';Byte '\x50';Byte '\x4a';Byte '\x4b';Byte '\x53';Byte '\x44';Byte '\x49';Byte '\x42';Byte '\x55';Byte '\x00';Byte '\xc4';Byte '\x75';Byte '\x89';Byte '\x27';Byte '\x65';Byte '\xe8';Byte '\x9b';Byte '\x4a';]
let test_97_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400030L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40004dL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40008cL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c5L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000daL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000ecL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_98 = [
text "main" [
  Leaq, [Ind1 (Lbl "AAAAABCE"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABCF"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABCG"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABCH"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABCI"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABCJ"); ~%Rax];
];
  data "AAAAABCE" [
    Quad (Lit 1171795812182479299L);
  ];
  data "AAAAABCF" [
    Asciz ("KRHCOQZYMN");
  ];
  data "AAAAABCG" [
    Quad (Lit 5814785666888525181L);
    Quad (Lit 851306252155998266L);
    Asciz ("IZIKISCSTGMUS");
  ];
  data "AAAAABCH" [
    Quad (Lit 1414399410720614321L);
    Asciz ("MKORSIZTFMTUBYFJXL");
    Quad (Lit 693374128626731828L);
  ];
  data "AAAAABCI" [
    Asciz ("FYZFVAOKIW");
    Asciz ("UMFXWSYXSBSELZ");
    Asciz ("DEQQTYOVYMBDIO");
    Quad (Lit 1846713610907296949L);
    Quad (Lit 635352122223889010L);
  ];
  data "AAAAABCJ" [
    Asciz ("JPFZCHESKYOLGOPAFXG");
    Quad (Lit 850692765108283327L);
  ];
]
let test_98_data = [Byte '\xc3';Byte '\x51';Byte '\x6d';Byte '\x2e';Byte '\x15';Byte '\x0e';Byte '\x43';Byte '\x10';Byte '\x4b';Byte '\x52';Byte '\x48';Byte '\x43';Byte '\x4f';Byte '\x51';Byte '\x5a';Byte '\x59';Byte '\x4d';Byte '\x4e';Byte '\x00';Byte '\x7d';Byte '\x65';Byte '\xec';Byte '\x87';Byte '\xc1';Byte '\x44';Byte '\xb2';Byte '\x50';Byte '\x3a';Byte '\xd0';Byte '\xd3';Byte '\xa2';Byte '\x86';Byte '\x72';Byte '\xd0';Byte '\x0b';Byte '\x49';Byte '\x5a';Byte '\x49';Byte '\x4b';Byte '\x49';Byte '\x53';Byte '\x43';Byte '\x53';Byte '\x54';Byte '\x47';Byte '\x4d';Byte '\x55';Byte '\x53';Byte '\x00';Byte '\xb1';Byte '\x27';Byte '\x86';Byte '\x2e';Byte '\xc5';Byte '\xf4';Byte '\xa0';Byte '\x13';Byte '\x4d';Byte '\x4b';Byte '\x4f';Byte '\x52';Byte '\x53';Byte '\x49';Byte '\x5a';Byte '\x54';Byte '\x46';Byte '\x4d';Byte '\x54';Byte '\x55';Byte '\x42';Byte '\x59';Byte '\x46';Byte '\x4a';Byte '\x58';Byte '\x4c';Byte '\x00';Byte '\x34';Byte '\x0b';Byte '\x3e';Byte '\xa9';Byte '\x18';Byte '\x5c';Byte '\x9f';Byte '\x09';Byte '\x46';Byte '\x59';Byte '\x5a';Byte '\x46';Byte '\x56';Byte '\x41';Byte '\x4f';Byte '\x4b';Byte '\x49';Byte '\x57';Byte '\x00';Byte '\x55';Byte '\x4d';Byte '\x46';Byte '\x58';Byte '\x57';Byte '\x53';Byte '\x59';Byte '\x58';Byte '\x53';Byte '\x42';Byte '\x53';Byte '\x45';Byte '\x4c';Byte '\x5a';Byte '\x00';Byte '\x44';Byte '\x45';Byte '\x51';Byte '\x51';Byte '\x54';Byte '\x59';Byte '\x4f';Byte '\x56';Byte '\x59';Byte '\x4d';Byte '\x42';Byte '\x44';Byte '\x49';Byte '\x4f';Byte '\x00';Byte '\xb5';Byte '\x24';Byte '\x02';Byte '\xac';Byte '\x3e';Byte '\xd8';Byte '\xa0';Byte '\x19';Byte '\x72';Byte '\x0a';Byte '\x72';Byte '\x90';Byte '\x63';Byte '\x39';Byte '\xd1';Byte '\x08';Byte '\x4a';Byte '\x50';Byte '\x46';Byte '\x5a';Byte '\x43';Byte '\x48';Byte '\x45';Byte '\x53';Byte '\x4b';Byte '\x59';Byte '\x4f';Byte '\x4c';Byte '\x47';Byte '\x4f';Byte '\x50';Byte '\x41';Byte '\x46';Byte '\x58';Byte '\x47';Byte '\x00';Byte '\xbf';Byte '\x27';Byte '\x46';Byte '\x0d';Byte '\x90';Byte '\x44';Byte '\xce';Byte '\x0b';]
let test_98_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400030L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400038L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400043L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400061L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400084L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000bdL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_99 = [
  data "AAAAABCK" [
    Quad (Lit 1853291121473130218L);
    Asciz ("ZLCHACMGGOTPICHUKQY");
    Quad (Lit 7006622014204905268L);
    Asciz ("WWIKLZCYPRVKJJGLUQU");
    Asciz ("UHDOBRJNXUYITJY");
    Quad (Lit 210896788918426015L);
  ];
  data "AAAAABCL" [
    Quad (Lit 3128824994911103049L);
    Quad (Lit 6583216934373371277L);
    Quad (Lit 5220866228384481212L);
    Asciz ("RDDRWHTECTEAOXUNRBIQ");
    Asciz ("MYQDGFFWPBHVKR");
    Asciz ("SQKEOSNJIIBSYJU");
  ];
  data "AAAAABCM" [
    Asciz ("DBFAQOZUQBB");
    Asciz ("TIJSALYCUJH");
    Quad (Lit 3147357499377221031L);
  ];
  data "AAAAABCN" [
    Quad (Lit 8959936370349081849L);
    Asciz ("NRGBTELZGWTYJ");
    Quad (Lit 1890383339584129523L);
    Quad (Lit 5434199629481639668L);
    Asciz ("PJYZIYIHQTTCGOMCRSHQ");
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAABCK"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABCL"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABCM"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABCN"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABCO"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABCP"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABCQ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABCR"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABCS"); ~%Rax];
];
  data "AAAAABCO" [
    Asciz ("ZSPFBLUTRGZRNG");
  ];
  data "AAAAABCP" [
    Asciz ("VINIJDXBXAJIP");
    Asciz ("DWDTLYDQQJQXKEWQQEY");
    Quad (Lit 204569977492305466L);
    Asciz ("ZIIWORDRHCMDMQ");
    Quad (Lit 1237438670383692303L);
    Quad (Lit 2181665884182173159L);
  ];
  data "AAAAABCQ" [
    Quad (Lit 3607646405108172528L);
    Quad (Lit 3144974408966658324L);
    Quad (Lit 526353867530535132L);
    Quad (Lit 2327960333921772250L);
  ];
  data "AAAAABCR" [
    Asciz ("AQJNBZVGSO");
    Asciz ("BADPLVTTFJU");
    Asciz ("QCELPVCGJGBGXFAZVO");
    Quad (Lit 4624477266708157138L);
    Asciz ("IVBJKPNSSRRZTWROWUGZ");
  ];
  data "AAAAABCS" [
    Asciz ("BDJRTEGJBPCKYSMWTBIP");
    Quad (Lit 3550435992275280857L);
    Quad (Lit 7570195587133529347L);
  ];
]
let test_99_data = [Byte '\xea';Byte '\x8e';Byte '\xca';Byte '\xb0';Byte '\x74';Byte '\x36';Byte '\xb8';Byte '\x19';Byte '\x5a';Byte '\x4c';Byte '\x43';Byte '\x48';Byte '\x41';Byte '\x43';Byte '\x4d';Byte '\x47';Byte '\x47';Byte '\x4f';Byte '\x54';Byte '\x50';Byte '\x49';Byte '\x43';Byte '\x48';Byte '\x55';Byte '\x4b';Byte '\x51';Byte '\x59';Byte '\x00';Byte '\x34';Byte '\x87';Byte '\x1d';Byte '\x68';Byte '\x99';Byte '\x85';Byte '\x3c';Byte '\x61';Byte '\x57';Byte '\x57';Byte '\x49';Byte '\x4b';Byte '\x4c';Byte '\x5a';Byte '\x43';Byte '\x59';Byte '\x50';Byte '\x52';Byte '\x56';Byte '\x4b';Byte '\x4a';Byte '\x4a';Byte '\x47';Byte '\x4c';Byte '\x55';Byte '\x51';Byte '\x55';Byte '\x00';Byte '\x55';Byte '\x48';Byte '\x44';Byte '\x4f';Byte '\x42';Byte '\x52';Byte '\x4a';Byte '\x4e';Byte '\x58';Byte '\x55';Byte '\x59';Byte '\x49';Byte '\x54';Byte '\x4a';Byte '\x59';Byte '\x00';Byte '\x9f';Byte '\xd9';Byte '\xc0';Byte '\x1b';Byte '\x83';Byte '\x41';Byte '\xed';Byte '\x02';Byte '\x49';Byte '\x28';Byte '\x0a';Byte '\x72';Byte '\xc1';Byte '\xd1';Byte '\x6b';Byte '\x2b';Byte '\x8d';Byte '\x2d';Byte '\xa9';Byte '\x24';Byte '\xec';Byte '\x48';Byte '\x5c';Byte '\x5b';Byte '\xbc';Byte '\xbf';Byte '\xb0';Byte '\x62';Byte '\x2c';Byte '\x3e';Byte '\x74';Byte '\x48';Byte '\x52';Byte '\x44';Byte '\x44';Byte '\x52';Byte '\x57';Byte '\x48';Byte '\x54';Byte '\x45';Byte '\x43';Byte '\x54';Byte '\x45';Byte '\x41';Byte '\x4f';Byte '\x58';Byte '\x55';Byte '\x4e';Byte '\x52';Byte '\x42';Byte '\x49';Byte '\x51';Byte '\x00';Byte '\x4d';Byte '\x59';Byte '\x51';Byte '\x44';Byte '\x47';Byte '\x46';Byte '\x46';Byte '\x57';Byte '\x50';Byte '\x42';Byte '\x48';Byte '\x56';Byte '\x4b';Byte '\x52';Byte '\x00';Byte '\x53';Byte '\x51';Byte '\x4b';Byte '\x45';Byte '\x4f';Byte '\x53';Byte '\x4e';Byte '\x4a';Byte '\x49';Byte '\x49';Byte '\x42';Byte '\x53';Byte '\x59';Byte '\x4a';Byte '\x55';Byte '\x00';Byte '\x44';Byte '\x42';Byte '\x46';Byte '\x41';Byte '\x51';Byte '\x4f';Byte '\x5a';Byte '\x55';Byte '\x51';Byte '\x42';Byte '\x42';Byte '\x00';Byte '\x54';Byte '\x49';Byte '\x4a';Byte '\x53';Byte '\x41';Byte '\x4c';Byte '\x59';Byte '\x43';Byte '\x55';Byte '\x4a';Byte '\x48';Byte '\x00';Byte '\xa7';Byte '\x7d';Byte '\x8a';Byte '\x63';Byte '\xf8';Byte '\xa8';Byte '\xad';Byte '\x2b';Byte '\xf9';Byte '\x84';Byte '\xc2';Byte '\x34';Byte '\xa8';Byte '\x16';Byte '\x58';Byte '\x7c';Byte '\x4e';Byte '\x52';Byte '\x47';Byte '\x42';Byte '\x54';Byte '\x45';Byte '\x4c';Byte '\x5a';Byte '\x47';Byte '\x57';Byte '\x54';Byte '\x59';Byte '\x4a';Byte '\x00';Byte '\xf3';Byte '\x89';Byte '\x3a';Byte '\xb5';Byte '\xa1';Byte '\xfd';Byte '\x3b';Byte '\x1a';Byte '\xf4';Byte '\xfe';Byte '\xcf';Byte '\x79';Byte '\xc5';Byte '\x27';Byte '\x6a';Byte '\x4b';Byte '\x50';Byte '\x4a';Byte '\x59';Byte '\x5a';Byte '\x49';Byte '\x59';Byte '\x49';Byte '\x48';Byte '\x51';Byte '\x54';Byte '\x54';Byte '\x43';Byte '\x47';Byte '\x4f';Byte '\x4d';Byte '\x43';Byte '\x52';Byte '\x53';Byte '\x48';Byte '\x51';Byte '\x00';Byte '\x5a';Byte '\x53';Byte '\x50';Byte '\x46';Byte '\x42';Byte '\x4c';Byte '\x55';Byte '\x54';Byte '\x52';Byte '\x47';Byte '\x5a';Byte '\x52';Byte '\x4e';Byte '\x47';Byte '\x00';Byte '\x56';Byte '\x49';Byte '\x4e';Byte '\x49';Byte '\x4a';Byte '\x44';Byte '\x58';Byte '\x42';Byte '\x58';Byte '\x41';Byte '\x4a';Byte '\x49';Byte '\x50';Byte '\x00';Byte '\x44';Byte '\x57';Byte '\x44';Byte '\x54';Byte '\x4c';Byte '\x59';Byte '\x44';Byte '\x51';Byte '\x51';Byte '\x4a';Byte '\x51';Byte '\x58';Byte '\x4b';Byte '\x45';Byte '\x57';Byte '\x51';Byte '\x51';Byte '\x45';Byte '\x59';Byte '\x00';Byte '\x3a';Byte '\x76';Byte '\x23';Byte '\x88';Byte '\x4f';Byte '\xc7';Byte '\xd6';Byte '\x02';Byte '\x5a';Byte '\x49';Byte '\x49';Byte '\x57';Byte '\x4f';Byte '\x52';Byte '\x44';Byte '\x52';Byte '\x48';Byte '\x43';Byte '\x4d';Byte '\x44';Byte '\x4d';Byte '\x51';Byte '\x00';Byte '\x0f';Byte '\x3a';Byte '\x8d';Byte '\x1b';Byte '\xea';Byte '\x43';Byte '\x2c';Byte '\x11';Byte '\xe7';Byte '\x55';Byte '\x44';Byte '\x0d';Byte '\x90';Byte '\xd5';Byte '\x46';Byte '\x1e';Byte '\xf0';Byte '\x06';Byte '\xb0';Byte '\x93';Byte '\x4a';Byte '\xef';Byte '\x10';Byte '\x32';Byte '\x14';Byte '\xd9';Byte '\x26';Byte '\xea';Byte '\x8f';Byte '\x31';Byte '\xa5';Byte '\x2b';Byte '\xdc';Byte '\x80';Byte '\x4f';Byte '\xc4';Byte '\x0d';Byte '\xfc';Byte '\x4d';Byte '\x07';Byte '\xda';Byte '\x62';Byte '\x9b';Byte '\xf2';Byte '\x96';Byte '\x93';Byte '\x4e';Byte '\x20';Byte '\x41';Byte '\x51';Byte '\x4a';Byte '\x4e';Byte '\x42';Byte '\x5a';Byte '\x56';Byte '\x47';Byte '\x53';Byte '\x4f';Byte '\x00';Byte '\x42';Byte '\x41';Byte '\x44';Byte '\x50';Byte '\x4c';Byte '\x56';Byte '\x54';Byte '\x54';Byte '\x46';Byte '\x4a';Byte '\x55';Byte '\x00';Byte '\x51';Byte '\x43';Byte '\x45';Byte '\x4c';Byte '\x50';Byte '\x56';Byte '\x43';Byte '\x47';Byte '\x4a';Byte '\x47';Byte '\x42';Byte '\x47';Byte '\x58';Byte '\x46';Byte '\x41';Byte '\x5a';Byte '\x56';Byte '\x4f';Byte '\x00';Byte '\xd2';Byte '\x52';Byte '\x02';Byte '\x92';Byte '\x92';Byte '\x71';Byte '\x2d';Byte '\x40';Byte '\x49';Byte '\x56';Byte '\x42';Byte '\x4a';Byte '\x4b';Byte '\x50';Byte '\x4e';Byte '\x53';Byte '\x53';Byte '\x52';Byte '\x52';Byte '\x5a';Byte '\x54';Byte '\x57';Byte '\x52';Byte '\x4f';Byte '\x57';Byte '\x55';Byte '\x47';Byte '\x5a';Byte '\x00';Byte '\x42';Byte '\x44';Byte '\x4a';Byte '\x52';Byte '\x54';Byte '\x45';Byte '\x47';Byte '\x4a';Byte '\x42';Byte '\x50';Byte '\x43';Byte '\x4b';Byte '\x59';Byte '\x53';Byte '\x4d';Byte '\x57';Byte '\x54';Byte '\x42';Byte '\x49';Byte '\x50';Byte '\x00';Byte '\xd9';Byte '\x63';Byte '\x54';Byte '\x55';Byte '\xb9';Byte '\xae';Byte '\x45';Byte '\x31';Byte '\x03';Byte '\xdd';Byte '\x52';Byte '\x23';Byte '\xc7';Byte '\xbc';Byte '\x0e';Byte '\x69';]
let test_99_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400048L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400098L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000e4L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400104L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40013fL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40014eL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400197L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001b7L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4001feL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let test_100 = [
  data "AAAAABCT" [
    Quad (Lit 3721372587715528449L);
    Asciz ("LIASLYMSRACILTKBU");
    Quad (Lit 750083798462524890L);
  ];
  data "AAAAABCU" [
    Quad (Lit 4361850959603212918L);
    Asciz ("PGMLRJYKCIMWALKRVCD");
    Asciz ("JDZJHELKNVWHBQ");
    Asciz ("HISJZIZOAIRU");
    Quad (Lit 7774511487966069250L);
  ];
  data "AAAAABCV" [
    Quad (Lit 4949309354177537786L);
    Quad (Lit 4086022178144277695L);
  ];
  data "AAAAABCW" [
    Quad (Lit 6241428646469159395L);
  ];
text "main" [
  Leaq, [Ind1 (Lbl "AAAAABCT"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABCU"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABCV"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABCW"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABCX"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABCY"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABCZ"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABDA"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABDB"); ~%Rax];
  Leaq, [Ind1 (Lbl "AAAAABDC"); ~%Rax];
];
  data "AAAAABCX" [
    Asciz ("FJTSJXQJNUDRAYFDMP");
  ];
  data "AAAAABCY" [
    Asciz ("WWETGPXZUVUANTZQ");
    Quad (Lit 3992836313518001725L);
  ];
  data "AAAAABCZ" [
    Asciz ("FRKOULACMZGPFRUTLVO");
  ];
  data "AAAAABDA" [
    Quad (Lit 8815613746309894982L);
    Asciz ("MZQTEQWWZVP");
    Quad (Lit 3937853536522059034L);
  ];
  data "AAAAABDB" [
    Asciz ("XSVVPJGKCFWYOSOTPS");
    Quad (Lit 2485695678273559414L);
  ];
  data "AAAAABDC" [
    Quad (Lit 785990894032154074L);
    Quad (Lit 8337455662286722994L);
    Quad (Lit 7604681694973960386L);
  ];
]
let test_100_data = [Byte '\x01';Byte '\x07';Byte '\xa9';Byte '\xdf';Byte '\xa6';Byte '\xf8';Byte '\xa4';Byte '\x33';Byte '\x4c';Byte '\x49';Byte '\x41';Byte '\x53';Byte '\x4c';Byte '\x59';Byte '\x4d';Byte '\x53';Byte '\x52';Byte '\x41';Byte '\x43';Byte '\x49';Byte '\x4c';Byte '\x54';Byte '\x4b';Byte '\x42';Byte '\x55';Byte '\x00';Byte '\xda';Byte '\x6d';Byte '\x22';Byte '\x97';Byte '\x3d';Byte '\xd5';Byte '\x68';Byte '\x0a';Byte '\x76';Byte '\xa2';Byte '\x58';Byte '\x72';Byte '\x56';Byte '\x68';Byte '\x88';Byte '\x3c';Byte '\x50';Byte '\x47';Byte '\x4d';Byte '\x4c';Byte '\x52';Byte '\x4a';Byte '\x59';Byte '\x4b';Byte '\x43';Byte '\x49';Byte '\x4d';Byte '\x57';Byte '\x41';Byte '\x4c';Byte '\x4b';Byte '\x52';Byte '\x56';Byte '\x43';Byte '\x44';Byte '\x00';Byte '\x4a';Byte '\x44';Byte '\x5a';Byte '\x4a';Byte '\x48';Byte '\x45';Byte '\x4c';Byte '\x4b';Byte '\x4e';Byte '\x56';Byte '\x57';Byte '\x48';Byte '\x42';Byte '\x51';Byte '\x00';Byte '\x48';Byte '\x49';Byte '\x53';Byte '\x4a';Byte '\x5a';Byte '\x49';Byte '\x5a';Byte '\x4f';Byte '\x41';Byte '\x49';Byte '\x52';Byte '\x55';Byte '\x00';Byte '\x02';Byte '\x42';Byte '\x69';Byte '\xd6';Byte '\x01';Byte '\x9d';Byte '\xe4';Byte '\x6b';Byte '\xfa';Byte '\x26';Byte '\x45';Byte '\x93';Byte '\xa2';Byte '\x7a';Byte '\xaf';Byte '\x44';Byte '\xbf';Byte '\x54';Byte '\xa8';Byte '\xb8';Byte '\x85';Byte '\x77';Byte '\xb4';Byte '\x38';Byte '\xe3';Byte '\xc9';Byte '\xbd';Byte '\x13';Byte '\x49';Byte '\x02';Byte '\x9e';Byte '\x56';Byte '\x46';Byte '\x4a';Byte '\x54';Byte '\x53';Byte '\x4a';Byte '\x58';Byte '\x51';Byte '\x4a';Byte '\x4e';Byte '\x55';Byte '\x44';Byte '\x52';Byte '\x41';Byte '\x59';Byte '\x46';Byte '\x44';Byte '\x4d';Byte '\x50';Byte '\x00';Byte '\x57';Byte '\x57';Byte '\x45';Byte '\x54';Byte '\x47';Byte '\x50';Byte '\x58';Byte '\x5a';Byte '\x55';Byte '\x56';Byte '\x55';Byte '\x41';Byte '\x4e';Byte '\x54';Byte '\x5a';Byte '\x51';Byte '\x00';Byte '\x3d';Byte '\x4e';Byte '\x85';Byte '\xe1';Byte '\x78';Byte '\x67';Byte '\x69';Byte '\x37';Byte '\x46';Byte '\x52';Byte '\x4b';Byte '\x4f';Byte '\x55';Byte '\x4c';Byte '\x41';Byte '\x43';Byte '\x4d';Byte '\x5a';Byte '\x47';Byte '\x50';Byte '\x46';Byte '\x52';Byte '\x55';Byte '\x54';Byte '\x4c';Byte '\x56';Byte '\x4f';Byte '\x00';Byte '\x46';Byte '\x13';Byte '\xda';Byte '\xc1';Byte '\xfe';Byte '\x59';Byte '\x57';Byte '\x7a';Byte '\x4d';Byte '\x5a';Byte '\x51';Byte '\x54';Byte '\x45';Byte '\x51';Byte '\x57';Byte '\x57';Byte '\x5a';Byte '\x56';Byte '\x50';Byte '\x00';Byte '\x1a';Byte '\xbd';Byte '\xe9';Byte '\x85';Byte '\xed';Byte '\x10';Byte '\xa6';Byte '\x36';Byte '\x58';Byte '\x53';Byte '\x56';Byte '\x56';Byte '\x50';Byte '\x4a';Byte '\x47';Byte '\x4b';Byte '\x43';Byte '\x46';Byte '\x57';Byte '\x59';Byte '\x4f';Byte '\x53';Byte '\x4f';Byte '\x54';Byte '\x50';Byte '\x53';Byte '\x00';Byte '\x76';Byte '\x1b';Byte '\x38';Byte '\xb3';Byte '\x0c';Byte '\xf7';Byte '\x7e';Byte '\x22';Byte '\xda';Byte '\x6d';Byte '\x7a';Byte '\xc3';Byte '\x8d';Byte '\x66';Byte '\xe8';Byte '\x0a';Byte '\xb2';Byte '\x57';Byte '\x2b';Byte '\x49';Byte '\xc0';Byte '\x97';Byte '\xb4';Byte '\x73';Byte '\xc2';Byte '\xa0';Byte '\xd6';Byte '\xd2';Byte '\xb5';Byte '\x41';Byte '\x89';Byte '\x69';]
let test_100_text = [
InsB0 (Leaq, [Ind1 (Lit 0x400050L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400072L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000b2L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000c2L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000caL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000ddL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x4000f6L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x40010aL); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400126L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
InsB0 (Leaq, [Ind1 (Lit 0x400141L); Reg Rax]); InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;InsFrag;
]
let kek_tests = [
("kek1_tp", assert_eqf (fun () -> (assemble test_1).text_pos) 0x400000L);

("kek1_tp", assert_eqf (fun () -> (assemble test_1).data_pos) 0x400048L);

("kek1_text", assert_eqf (fun () -> (assemble test_1).text_seg) test_1_text);
("kek1_data", assert_eqf (fun () -> (assemble test_1).data_seg) test_1_data);
("kek2_tp", assert_eqf (fun () -> (assemble test_2).text_pos) 0x400000L);

("kek2_tp", assert_eqf (fun () -> (assemble test_2).data_pos) 0x400038L);

("kek2_text", assert_eqf (fun () -> (assemble test_2).text_seg) test_2_text);
("kek2_data", assert_eqf (fun () -> (assemble test_2).data_seg) test_2_data);
("kek3_tp", assert_eqf (fun () -> (assemble test_3).text_pos) 0x400000L);

("kek3_tp", assert_eqf (fun () -> (assemble test_3).data_pos) 0x400038L);

("kek3_text", assert_eqf (fun () -> (assemble test_3).text_seg) test_3_text);
("kek3_data", assert_eqf (fun () -> (assemble test_3).data_seg) test_3_data);
("kek4_tp", assert_eqf (fun () -> (assemble test_4).text_pos) 0x400000L);

("kek4_tp", assert_eqf (fun () -> (assemble test_4).data_pos) 0x400038L);

("kek4_text", assert_eqf (fun () -> (assemble test_4).text_seg) test_4_text);
("kek4_data", assert_eqf (fun () -> (assemble test_4).data_seg) test_4_data);
("kek5_tp", assert_eqf (fun () -> (assemble test_5).text_pos) 0x400000L);

("kek5_tp", assert_eqf (fun () -> (assemble test_5).data_pos) 0x400030L);

("kek5_text", assert_eqf (fun () -> (assemble test_5).text_seg) test_5_text);
("kek5_data", assert_eqf (fun () -> (assemble test_5).data_seg) test_5_data);
("kek6_tp", assert_eqf (fun () -> (assemble test_6).text_pos) 0x400000L);

("kek6_tp", assert_eqf (fun () -> (assemble test_6).data_pos) 0x400038L);

("kek6_text", assert_eqf (fun () -> (assemble test_6).text_seg) test_6_text);
("kek6_data", assert_eqf (fun () -> (assemble test_6).data_seg) test_6_data);
("kek7_tp", assert_eqf (fun () -> (assemble test_7).text_pos) 0x400000L);

("kek7_tp", assert_eqf (fun () -> (assemble test_7).data_pos) 0x400038L);

("kek7_text", assert_eqf (fun () -> (assemble test_7).text_seg) test_7_text);
("kek7_data", assert_eqf (fun () -> (assemble test_7).data_seg) test_7_data);
("kek8_tp", assert_eqf (fun () -> (assemble test_8).text_pos) 0x400000L);

("kek8_tp", assert_eqf (fun () -> (assemble test_8).data_pos) 0x400030L);

("kek8_text", assert_eqf (fun () -> (assemble test_8).text_seg) test_8_text);
("kek8_data", assert_eqf (fun () -> (assemble test_8).data_seg) test_8_data);
("kek9_tp", assert_eqf (fun () -> (assemble test_9).text_pos) 0x400000L);

("kek9_tp", assert_eqf (fun () -> (assemble test_9).data_pos) 0x400050L);

("kek9_text", assert_eqf (fun () -> (assemble test_9).text_seg) test_9_text);
("kek9_data", assert_eqf (fun () -> (assemble test_9).data_seg) test_9_data);
("kek10_tp", assert_eqf (fun () -> (assemble test_10).text_pos) 0x400000L);

("kek10_tp", assert_eqf (fun () -> (assemble test_10).data_pos) 0x400028L);

("kek10_text", assert_eqf (fun () -> (assemble test_10).text_seg) test_10_text);
("kek10_data", assert_eqf (fun () -> (assemble test_10).data_seg) test_10_data);
("kek11_tp", assert_eqf (fun () -> (assemble test_11).text_pos) 0x400000L);

("kek11_tp", assert_eqf (fun () -> (assemble test_11).data_pos) 0x400048L);

("kek11_text", assert_eqf (fun () -> (assemble test_11).text_seg) test_11_text);
("kek11_data", assert_eqf (fun () -> (assemble test_11).data_seg) test_11_data);
("kek12_tp", assert_eqf (fun () -> (assemble test_12).text_pos) 0x400000L);

("kek12_tp", assert_eqf (fun () -> (assemble test_12).data_pos) 0x400038L);

("kek12_text", assert_eqf (fun () -> (assemble test_12).text_seg) test_12_text);
("kek12_data", assert_eqf (fun () -> (assemble test_12).data_seg) test_12_data);
("kek13_tp", assert_eqf (fun () -> (assemble test_13).text_pos) 0x400000L);

("kek13_tp", assert_eqf (fun () -> (assemble test_13).data_pos) 0x400048L);

("kek13_text", assert_eqf (fun () -> (assemble test_13).text_seg) test_13_text);
("kek13_data", assert_eqf (fun () -> (assemble test_13).data_seg) test_13_data);
("kek14_tp", assert_eqf (fun () -> (assemble test_14).text_pos) 0x400000L);

("kek14_tp", assert_eqf (fun () -> (assemble test_14).data_pos) 0x400038L);

("kek14_text", assert_eqf (fun () -> (assemble test_14).text_seg) test_14_text);
("kek14_data", assert_eqf (fun () -> (assemble test_14).data_seg) test_14_data);
("kek15_tp", assert_eqf (fun () -> (assemble test_15).text_pos) 0x400000L);

("kek15_tp", assert_eqf (fun () -> (assemble test_15).data_pos) 0x400050L);

("kek15_text", assert_eqf (fun () -> (assemble test_15).text_seg) test_15_text);
("kek15_data", assert_eqf (fun () -> (assemble test_15).data_seg) test_15_data);
("kek16_tp", assert_eqf (fun () -> (assemble test_16).text_pos) 0x400000L);

("kek16_tp", assert_eqf (fun () -> (assemble test_16).data_pos) 0x400028L);

("kek16_text", assert_eqf (fun () -> (assemble test_16).text_seg) test_16_text);
("kek16_data", assert_eqf (fun () -> (assemble test_16).data_seg) test_16_data);
("kek17_tp", assert_eqf (fun () -> (assemble test_17).text_pos) 0x400000L);

("kek17_tp", assert_eqf (fun () -> (assemble test_17).data_pos) 0x400040L);

("kek17_text", assert_eqf (fun () -> (assemble test_17).text_seg) test_17_text);
("kek17_data", assert_eqf (fun () -> (assemble test_17).data_seg) test_17_data);
("kek18_tp", assert_eqf (fun () -> (assemble test_18).text_pos) 0x400000L);

("kek18_tp", assert_eqf (fun () -> (assemble test_18).data_pos) 0x400048L);

("kek18_text", assert_eqf (fun () -> (assemble test_18).text_seg) test_18_text);
("kek18_data", assert_eqf (fun () -> (assemble test_18).data_seg) test_18_data);
("kek19_tp", assert_eqf (fun () -> (assemble test_19).text_pos) 0x400000L);

("kek19_tp", assert_eqf (fun () -> (assemble test_19).data_pos) 0x400030L);

("kek19_text", assert_eqf (fun () -> (assemble test_19).text_seg) test_19_text);
("kek19_data", assert_eqf (fun () -> (assemble test_19).data_seg) test_19_data);
("kek20_tp", assert_eqf (fun () -> (assemble test_20).text_pos) 0x400000L);

("kek20_tp", assert_eqf (fun () -> (assemble test_20).data_pos) 0x400040L);

("kek20_text", assert_eqf (fun () -> (assemble test_20).text_seg) test_20_text);
("kek20_data", assert_eqf (fun () -> (assemble test_20).data_seg) test_20_data);
("kek21_tp", assert_eqf (fun () -> (assemble test_21).text_pos) 0x400000L);

("kek21_tp", assert_eqf (fun () -> (assemble test_21).data_pos) 0x400048L);

("kek21_text", assert_eqf (fun () -> (assemble test_21).text_seg) test_21_text);
("kek21_data", assert_eqf (fun () -> (assemble test_21).data_seg) test_21_data);
("kek22_tp", assert_eqf (fun () -> (assemble test_22).text_pos) 0x400000L);

("kek22_tp", assert_eqf (fun () -> (assemble test_22).data_pos) 0x400050L);

("kek22_text", assert_eqf (fun () -> (assemble test_22).text_seg) test_22_text);
("kek22_data", assert_eqf (fun () -> (assemble test_22).data_seg) test_22_data);
("kek23_tp", assert_eqf (fun () -> (assemble test_23).text_pos) 0x400000L);

("kek23_tp", assert_eqf (fun () -> (assemble test_23).data_pos) 0x400048L);

("kek23_text", assert_eqf (fun () -> (assemble test_23).text_seg) test_23_text);
("kek23_data", assert_eqf (fun () -> (assemble test_23).data_seg) test_23_data);
("kek24_tp", assert_eqf (fun () -> (assemble test_24).text_pos) 0x400000L);

("kek24_tp", assert_eqf (fun () -> (assemble test_24).data_pos) 0x400038L);

("kek24_text", assert_eqf (fun () -> (assemble test_24).text_seg) test_24_text);
("kek24_data", assert_eqf (fun () -> (assemble test_24).data_seg) test_24_data);
("kek25_tp", assert_eqf (fun () -> (assemble test_25).text_pos) 0x400000L);

("kek25_tp", assert_eqf (fun () -> (assemble test_25).data_pos) 0x400050L);

("kek25_text", assert_eqf (fun () -> (assemble test_25).text_seg) test_25_text);
("kek25_data", assert_eqf (fun () -> (assemble test_25).data_seg) test_25_data);
("kek26_tp", assert_eqf (fun () -> (assemble test_26).text_pos) 0x400000L);

("kek26_tp", assert_eqf (fun () -> (assemble test_26).data_pos) 0x400050L);

("kek26_text", assert_eqf (fun () -> (assemble test_26).text_seg) test_26_text);
("kek26_data", assert_eqf (fun () -> (assemble test_26).data_seg) test_26_data);
("kek27_tp", assert_eqf (fun () -> (assemble test_27).text_pos) 0x400000L);

("kek27_tp", assert_eqf (fun () -> (assemble test_27).data_pos) 0x400050L);

("kek27_text", assert_eqf (fun () -> (assemble test_27).text_seg) test_27_text);
("kek27_data", assert_eqf (fun () -> (assemble test_27).data_seg) test_27_data);
("kek28_tp", assert_eqf (fun () -> (assemble test_28).text_pos) 0x400000L);

("kek28_tp", assert_eqf (fun () -> (assemble test_28).data_pos) 0x400038L);

("kek28_text", assert_eqf (fun () -> (assemble test_28).text_seg) test_28_text);
("kek28_data", assert_eqf (fun () -> (assemble test_28).data_seg) test_28_data);
("kek29_tp", assert_eqf (fun () -> (assemble test_29).text_pos) 0x400000L);

("kek29_tp", assert_eqf (fun () -> (assemble test_29).data_pos) 0x400050L);

("kek29_text", assert_eqf (fun () -> (assemble test_29).text_seg) test_29_text);
("kek29_data", assert_eqf (fun () -> (assemble test_29).data_seg) test_29_data);
("kek30_tp", assert_eqf (fun () -> (assemble test_30).text_pos) 0x400000L);

("kek30_tp", assert_eqf (fun () -> (assemble test_30).data_pos) 0x400050L);

("kek30_text", assert_eqf (fun () -> (assemble test_30).text_seg) test_30_text);
("kek30_data", assert_eqf (fun () -> (assemble test_30).data_seg) test_30_data);
("kek31_tp", assert_eqf (fun () -> (assemble test_31).text_pos) 0x400000L);

("kek31_tp", assert_eqf (fun () -> (assemble test_31).data_pos) 0x400050L);

("kek31_text", assert_eqf (fun () -> (assemble test_31).text_seg) test_31_text);
("kek31_data", assert_eqf (fun () -> (assemble test_31).data_seg) test_31_data);
("kek32_tp", assert_eqf (fun () -> (assemble test_32).text_pos) 0x400000L);

("kek32_tp", assert_eqf (fun () -> (assemble test_32).data_pos) 0x400028L);

("kek32_text", assert_eqf (fun () -> (assemble test_32).text_seg) test_32_text);
("kek32_data", assert_eqf (fun () -> (assemble test_32).data_seg) test_32_data);
("kek33_tp", assert_eqf (fun () -> (assemble test_33).text_pos) 0x400000L);

("kek33_tp", assert_eqf (fun () -> (assemble test_33).data_pos) 0x400050L);

("kek33_text", assert_eqf (fun () -> (assemble test_33).text_seg) test_33_text);
("kek33_data", assert_eqf (fun () -> (assemble test_33).data_seg) test_33_data);
("kek34_tp", assert_eqf (fun () -> (assemble test_34).text_pos) 0x400000L);

("kek34_tp", assert_eqf (fun () -> (assemble test_34).data_pos) 0x400028L);

("kek34_text", assert_eqf (fun () -> (assemble test_34).text_seg) test_34_text);
("kek34_data", assert_eqf (fun () -> (assemble test_34).data_seg) test_34_data);
("kek35_tp", assert_eqf (fun () -> (assemble test_35).text_pos) 0x400000L);

("kek35_tp", assert_eqf (fun () -> (assemble test_35).data_pos) 0x400038L);

("kek35_text", assert_eqf (fun () -> (assemble test_35).text_seg) test_35_text);
("kek35_data", assert_eqf (fun () -> (assemble test_35).data_seg) test_35_data);
("kek36_tp", assert_eqf (fun () -> (assemble test_36).text_pos) 0x400000L);

("kek36_tp", assert_eqf (fun () -> (assemble test_36).data_pos) 0x400038L);

("kek36_text", assert_eqf (fun () -> (assemble test_36).text_seg) test_36_text);
("kek36_data", assert_eqf (fun () -> (assemble test_36).data_seg) test_36_data);
("kek37_tp", assert_eqf (fun () -> (assemble test_37).text_pos) 0x400000L);

("kek37_tp", assert_eqf (fun () -> (assemble test_37).data_pos) 0x400050L);

("kek37_text", assert_eqf (fun () -> (assemble test_37).text_seg) test_37_text);
("kek37_data", assert_eqf (fun () -> (assemble test_37).data_seg) test_37_data);
("kek38_tp", assert_eqf (fun () -> (assemble test_38).text_pos) 0x400000L);

("kek38_tp", assert_eqf (fun () -> (assemble test_38).data_pos) 0x400038L);

("kek38_text", assert_eqf (fun () -> (assemble test_38).text_seg) test_38_text);
("kek38_data", assert_eqf (fun () -> (assemble test_38).data_seg) test_38_data);
("kek39_tp", assert_eqf (fun () -> (assemble test_39).text_pos) 0x400000L);

("kek39_tp", assert_eqf (fun () -> (assemble test_39).data_pos) 0x400030L);

("kek39_text", assert_eqf (fun () -> (assemble test_39).text_seg) test_39_text);
("kek39_data", assert_eqf (fun () -> (assemble test_39).data_seg) test_39_data);
("kek40_tp", assert_eqf (fun () -> (assemble test_40).text_pos) 0x400000L);

("kek40_tp", assert_eqf (fun () -> (assemble test_40).data_pos) 0x400048L);

("kek40_text", assert_eqf (fun () -> (assemble test_40).text_seg) test_40_text);
("kek40_data", assert_eqf (fun () -> (assemble test_40).data_seg) test_40_data);
("kek41_tp", assert_eqf (fun () -> (assemble test_41).text_pos) 0x400000L);

("kek41_tp", assert_eqf (fun () -> (assemble test_41).data_pos) 0x400048L);

("kek41_text", assert_eqf (fun () -> (assemble test_41).text_seg) test_41_text);
("kek41_data", assert_eqf (fun () -> (assemble test_41).data_seg) test_41_data);
("kek42_tp", assert_eqf (fun () -> (assemble test_42).text_pos) 0x400000L);

("kek42_tp", assert_eqf (fun () -> (assemble test_42).data_pos) 0x400048L);

("kek42_text", assert_eqf (fun () -> (assemble test_42).text_seg) test_42_text);
("kek42_data", assert_eqf (fun () -> (assemble test_42).data_seg) test_42_data);
("kek43_tp", assert_eqf (fun () -> (assemble test_43).text_pos) 0x400000L);

("kek43_tp", assert_eqf (fun () -> (assemble test_43).data_pos) 0x400028L);

("kek43_text", assert_eqf (fun () -> (assemble test_43).text_seg) test_43_text);
("kek43_data", assert_eqf (fun () -> (assemble test_43).data_seg) test_43_data);
("kek44_tp", assert_eqf (fun () -> (assemble test_44).text_pos) 0x400000L);

("kek44_tp", assert_eqf (fun () -> (assemble test_44).data_pos) 0x400030L);

("kek44_text", assert_eqf (fun () -> (assemble test_44).text_seg) test_44_text);
("kek44_data", assert_eqf (fun () -> (assemble test_44).data_seg) test_44_data);
("kek45_tp", assert_eqf (fun () -> (assemble test_45).text_pos) 0x400000L);

("kek45_tp", assert_eqf (fun () -> (assemble test_45).data_pos) 0x400040L);

("kek45_text", assert_eqf (fun () -> (assemble test_45).text_seg) test_45_text);
("kek45_data", assert_eqf (fun () -> (assemble test_45).data_seg) test_45_data);
("kek46_tp", assert_eqf (fun () -> (assemble test_46).text_pos) 0x400000L);

("kek46_tp", assert_eqf (fun () -> (assemble test_46).data_pos) 0x400030L);

("kek46_text", assert_eqf (fun () -> (assemble test_46).text_seg) test_46_text);
("kek46_data", assert_eqf (fun () -> (assemble test_46).data_seg) test_46_data);
("kek47_tp", assert_eqf (fun () -> (assemble test_47).text_pos) 0x400000L);

("kek47_tp", assert_eqf (fun () -> (assemble test_47).data_pos) 0x400038L);

("kek47_text", assert_eqf (fun () -> (assemble test_47).text_seg) test_47_text);
("kek47_data", assert_eqf (fun () -> (assemble test_47).data_seg) test_47_data);
("kek48_tp", assert_eqf (fun () -> (assemble test_48).text_pos) 0x400000L);

("kek48_tp", assert_eqf (fun () -> (assemble test_48).data_pos) 0x400048L);

("kek48_text", assert_eqf (fun () -> (assemble test_48).text_seg) test_48_text);
("kek48_data", assert_eqf (fun () -> (assemble test_48).data_seg) test_48_data);
("kek49_tp", assert_eqf (fun () -> (assemble test_49).text_pos) 0x400000L);

("kek49_tp", assert_eqf (fun () -> (assemble test_49).data_pos) 0x400038L);

("kek49_text", assert_eqf (fun () -> (assemble test_49).text_seg) test_49_text);
("kek49_data", assert_eqf (fun () -> (assemble test_49).data_seg) test_49_data);
("kek50_tp", assert_eqf (fun () -> (assemble test_50).text_pos) 0x400000L);

("kek50_tp", assert_eqf (fun () -> (assemble test_50).data_pos) 0x400028L);

("kek50_text", assert_eqf (fun () -> (assemble test_50).text_seg) test_50_text);
("kek50_data", assert_eqf (fun () -> (assemble test_50).data_seg) test_50_data);
("kek51_tp", assert_eqf (fun () -> (assemble test_51).text_pos) 0x400000L);

("kek51_tp", assert_eqf (fun () -> (assemble test_51).data_pos) 0x400028L);

("kek51_text", assert_eqf (fun () -> (assemble test_51).text_seg) test_51_text);
("kek51_data", assert_eqf (fun () -> (assemble test_51).data_seg) test_51_data);
("kek52_tp", assert_eqf (fun () -> (assemble test_52).text_pos) 0x400000L);

("kek52_tp", assert_eqf (fun () -> (assemble test_52).data_pos) 0x400040L);

("kek52_text", assert_eqf (fun () -> (assemble test_52).text_seg) test_52_text);
("kek52_data", assert_eqf (fun () -> (assemble test_52).data_seg) test_52_data);
("kek53_tp", assert_eqf (fun () -> (assemble test_53).text_pos) 0x400000L);

("kek53_tp", assert_eqf (fun () -> (assemble test_53).data_pos) 0x400050L);

("kek53_text", assert_eqf (fun () -> (assemble test_53).text_seg) test_53_text);
("kek53_data", assert_eqf (fun () -> (assemble test_53).data_seg) test_53_data);
("kek54_tp", assert_eqf (fun () -> (assemble test_54).text_pos) 0x400000L);

("kek54_tp", assert_eqf (fun () -> (assemble test_54).data_pos) 0x400030L);

("kek54_text", assert_eqf (fun () -> (assemble test_54).text_seg) test_54_text);
("kek54_data", assert_eqf (fun () -> (assemble test_54).data_seg) test_54_data);
("kek55_tp", assert_eqf (fun () -> (assemble test_55).text_pos) 0x400000L);

("kek55_tp", assert_eqf (fun () -> (assemble test_55).data_pos) 0x400028L);

("kek55_text", assert_eqf (fun () -> (assemble test_55).text_seg) test_55_text);
("kek55_data", assert_eqf (fun () -> (assemble test_55).data_seg) test_55_data);
("kek56_tp", assert_eqf (fun () -> (assemble test_56).text_pos) 0x400000L);

("kek56_tp", assert_eqf (fun () -> (assemble test_56).data_pos) 0x400050L);

("kek56_text", assert_eqf (fun () -> (assemble test_56).text_seg) test_56_text);
("kek56_data", assert_eqf (fun () -> (assemble test_56).data_seg) test_56_data);
("kek57_tp", assert_eqf (fun () -> (assemble test_57).text_pos) 0x400000L);

("kek57_tp", assert_eqf (fun () -> (assemble test_57).data_pos) 0x400040L);

("kek57_text", assert_eqf (fun () -> (assemble test_57).text_seg) test_57_text);
("kek57_data", assert_eqf (fun () -> (assemble test_57).data_seg) test_57_data);
("kek58_tp", assert_eqf (fun () -> (assemble test_58).text_pos) 0x400000L);

("kek58_tp", assert_eqf (fun () -> (assemble test_58).data_pos) 0x400048L);

("kek58_text", assert_eqf (fun () -> (assemble test_58).text_seg) test_58_text);
("kek58_data", assert_eqf (fun () -> (assemble test_58).data_seg) test_58_data);
("kek59_tp", assert_eqf (fun () -> (assemble test_59).text_pos) 0x400000L);

("kek59_tp", assert_eqf (fun () -> (assemble test_59).data_pos) 0x400050L);

("kek59_text", assert_eqf (fun () -> (assemble test_59).text_seg) test_59_text);
("kek59_data", assert_eqf (fun () -> (assemble test_59).data_seg) test_59_data);
("kek60_tp", assert_eqf (fun () -> (assemble test_60).text_pos) 0x400000L);

("kek60_tp", assert_eqf (fun () -> (assemble test_60).data_pos) 0x400030L);

("kek60_text", assert_eqf (fun () -> (assemble test_60).text_seg) test_60_text);
("kek60_data", assert_eqf (fun () -> (assemble test_60).data_seg) test_60_data);
("kek61_tp", assert_eqf (fun () -> (assemble test_61).text_pos) 0x400000L);

("kek61_tp", assert_eqf (fun () -> (assemble test_61).data_pos) 0x400040L);

("kek61_text", assert_eqf (fun () -> (assemble test_61).text_seg) test_61_text);
("kek61_data", assert_eqf (fun () -> (assemble test_61).data_seg) test_61_data);
("kek62_tp", assert_eqf (fun () -> (assemble test_62).text_pos) 0x400000L);

("kek62_tp", assert_eqf (fun () -> (assemble test_62).data_pos) 0x400038L);

("kek62_text", assert_eqf (fun () -> (assemble test_62).text_seg) test_62_text);
("kek62_data", assert_eqf (fun () -> (assemble test_62).data_seg) test_62_data);
("kek63_tp", assert_eqf (fun () -> (assemble test_63).text_pos) 0x400000L);

("kek63_tp", assert_eqf (fun () -> (assemble test_63).data_pos) 0x400050L);

("kek63_text", assert_eqf (fun () -> (assemble test_63).text_seg) test_63_text);
("kek63_data", assert_eqf (fun () -> (assemble test_63).data_seg) test_63_data);
("kek64_tp", assert_eqf (fun () -> (assemble test_64).text_pos) 0x400000L);

("kek64_tp", assert_eqf (fun () -> (assemble test_64).data_pos) 0x400030L);

("kek64_text", assert_eqf (fun () -> (assemble test_64).text_seg) test_64_text);
("kek64_data", assert_eqf (fun () -> (assemble test_64).data_seg) test_64_data);
("kek65_tp", assert_eqf (fun () -> (assemble test_65).text_pos) 0x400000L);

("kek65_tp", assert_eqf (fun () -> (assemble test_65).data_pos) 0x400030L);

("kek65_text", assert_eqf (fun () -> (assemble test_65).text_seg) test_65_text);
("kek65_data", assert_eqf (fun () -> (assemble test_65).data_seg) test_65_data);
("kek66_tp", assert_eqf (fun () -> (assemble test_66).text_pos) 0x400000L);

("kek66_tp", assert_eqf (fun () -> (assemble test_66).data_pos) 0x400028L);

("kek66_text", assert_eqf (fun () -> (assemble test_66).text_seg) test_66_text);
("kek66_data", assert_eqf (fun () -> (assemble test_66).data_seg) test_66_data);
("kek67_tp", assert_eqf (fun () -> (assemble test_67).text_pos) 0x400000L);

("kek67_tp", assert_eqf (fun () -> (assemble test_67).data_pos) 0x400040L);

("kek67_text", assert_eqf (fun () -> (assemble test_67).text_seg) test_67_text);
("kek67_data", assert_eqf (fun () -> (assemble test_67).data_seg) test_67_data);
("kek68_tp", assert_eqf (fun () -> (assemble test_68).text_pos) 0x400000L);

("kek68_tp", assert_eqf (fun () -> (assemble test_68).data_pos) 0x400040L);

("kek68_text", assert_eqf (fun () -> (assemble test_68).text_seg) test_68_text);
("kek68_data", assert_eqf (fun () -> (assemble test_68).data_seg) test_68_data);
("kek69_tp", assert_eqf (fun () -> (assemble test_69).text_pos) 0x400000L);

("kek69_tp", assert_eqf (fun () -> (assemble test_69).data_pos) 0x400030L);

("kek69_text", assert_eqf (fun () -> (assemble test_69).text_seg) test_69_text);
("kek69_data", assert_eqf (fun () -> (assemble test_69).data_seg) test_69_data);
("kek70_tp", assert_eqf (fun () -> (assemble test_70).text_pos) 0x400000L);

("kek70_tp", assert_eqf (fun () -> (assemble test_70).data_pos) 0x400038L);

("kek70_text", assert_eqf (fun () -> (assemble test_70).text_seg) test_70_text);
("kek70_data", assert_eqf (fun () -> (assemble test_70).data_seg) test_70_data);
("kek71_tp", assert_eqf (fun () -> (assemble test_71).text_pos) 0x400000L);

("kek71_tp", assert_eqf (fun () -> (assemble test_71).data_pos) 0x400030L);

("kek71_text", assert_eqf (fun () -> (assemble test_71).text_seg) test_71_text);
("kek71_data", assert_eqf (fun () -> (assemble test_71).data_seg) test_71_data);
("kek72_tp", assert_eqf (fun () -> (assemble test_72).text_pos) 0x400000L);

("kek72_tp", assert_eqf (fun () -> (assemble test_72).data_pos) 0x400028L);

("kek72_text", assert_eqf (fun () -> (assemble test_72).text_seg) test_72_text);
("kek72_data", assert_eqf (fun () -> (assemble test_72).data_seg) test_72_data);
("kek73_tp", assert_eqf (fun () -> (assemble test_73).text_pos) 0x400000L);

("kek73_tp", assert_eqf (fun () -> (assemble test_73).data_pos) 0x400038L);

("kek73_text", assert_eqf (fun () -> (assemble test_73).text_seg) test_73_text);
("kek73_data", assert_eqf (fun () -> (assemble test_73).data_seg) test_73_data);
("kek74_tp", assert_eqf (fun () -> (assemble test_74).text_pos) 0x400000L);

("kek74_tp", assert_eqf (fun () -> (assemble test_74).data_pos) 0x400040L);

("kek74_text", assert_eqf (fun () -> (assemble test_74).text_seg) test_74_text);
("kek74_data", assert_eqf (fun () -> (assemble test_74).data_seg) test_74_data);
("kek75_tp", assert_eqf (fun () -> (assemble test_75).text_pos) 0x400000L);

("kek75_tp", assert_eqf (fun () -> (assemble test_75).data_pos) 0x400050L);

("kek75_text", assert_eqf (fun () -> (assemble test_75).text_seg) test_75_text);
("kek75_data", assert_eqf (fun () -> (assemble test_75).data_seg) test_75_data);
("kek76_tp", assert_eqf (fun () -> (assemble test_76).text_pos) 0x400000L);

("kek76_tp", assert_eqf (fun () -> (assemble test_76).data_pos) 0x400050L);

("kek76_text", assert_eqf (fun () -> (assemble test_76).text_seg) test_76_text);
("kek76_data", assert_eqf (fun () -> (assemble test_76).data_seg) test_76_data);
("kek77_tp", assert_eqf (fun () -> (assemble test_77).text_pos) 0x400000L);

("kek77_tp", assert_eqf (fun () -> (assemble test_77).data_pos) 0x400028L);

("kek77_text", assert_eqf (fun () -> (assemble test_77).text_seg) test_77_text);
("kek77_data", assert_eqf (fun () -> (assemble test_77).data_seg) test_77_data);
("kek78_tp", assert_eqf (fun () -> (assemble test_78).text_pos) 0x400000L);

("kek78_tp", assert_eqf (fun () -> (assemble test_78).data_pos) 0x400028L);

("kek78_text", assert_eqf (fun () -> (assemble test_78).text_seg) test_78_text);
("kek78_data", assert_eqf (fun () -> (assemble test_78).data_seg) test_78_data);
("kek79_tp", assert_eqf (fun () -> (assemble test_79).text_pos) 0x400000L);

("kek79_tp", assert_eqf (fun () -> (assemble test_79).data_pos) 0x400040L);

("kek79_text", assert_eqf (fun () -> (assemble test_79).text_seg) test_79_text);
("kek79_data", assert_eqf (fun () -> (assemble test_79).data_seg) test_79_data);
("kek80_tp", assert_eqf (fun () -> (assemble test_80).text_pos) 0x400000L);

("kek80_tp", assert_eqf (fun () -> (assemble test_80).data_pos) 0x400040L);

("kek80_text", assert_eqf (fun () -> (assemble test_80).text_seg) test_80_text);
("kek80_data", assert_eqf (fun () -> (assemble test_80).data_seg) test_80_data);
("kek81_tp", assert_eqf (fun () -> (assemble test_81).text_pos) 0x400000L);

("kek81_tp", assert_eqf (fun () -> (assemble test_81).data_pos) 0x400040L);

("kek81_text", assert_eqf (fun () -> (assemble test_81).text_seg) test_81_text);
("kek81_data", assert_eqf (fun () -> (assemble test_81).data_seg) test_81_data);
("kek82_tp", assert_eqf (fun () -> (assemble test_82).text_pos) 0x400000L);

("kek82_tp", assert_eqf (fun () -> (assemble test_82).data_pos) 0x400040L);

("kek82_text", assert_eqf (fun () -> (assemble test_82).text_seg) test_82_text);
("kek82_data", assert_eqf (fun () -> (assemble test_82).data_seg) test_82_data);
("kek83_tp", assert_eqf (fun () -> (assemble test_83).text_pos) 0x400000L);

("kek83_tp", assert_eqf (fun () -> (assemble test_83).data_pos) 0x400050L);

("kek83_text", assert_eqf (fun () -> (assemble test_83).text_seg) test_83_text);
("kek83_data", assert_eqf (fun () -> (assemble test_83).data_seg) test_83_data);
("kek84_tp", assert_eqf (fun () -> (assemble test_84).text_pos) 0x400000L);

("kek84_tp", assert_eqf (fun () -> (assemble test_84).data_pos) 0x400048L);

("kek84_text", assert_eqf (fun () -> (assemble test_84).text_seg) test_84_text);
("kek84_data", assert_eqf (fun () -> (assemble test_84).data_seg) test_84_data);
("kek85_tp", assert_eqf (fun () -> (assemble test_85).text_pos) 0x400000L);

("kek85_tp", assert_eqf (fun () -> (assemble test_85).data_pos) 0x400038L);

("kek85_text", assert_eqf (fun () -> (assemble test_85).text_seg) test_85_text);
("kek85_data", assert_eqf (fun () -> (assemble test_85).data_seg) test_85_data);
("kek86_tp", assert_eqf (fun () -> (assemble test_86).text_pos) 0x400000L);

("kek86_tp", assert_eqf (fun () -> (assemble test_86).data_pos) 0x400048L);

("kek86_text", assert_eqf (fun () -> (assemble test_86).text_seg) test_86_text);
("kek86_data", assert_eqf (fun () -> (assemble test_86).data_seg) test_86_data);
("kek87_tp", assert_eqf (fun () -> (assemble test_87).text_pos) 0x400000L);

("kek87_tp", assert_eqf (fun () -> (assemble test_87).data_pos) 0x400048L);

("kek87_text", assert_eqf (fun () -> (assemble test_87).text_seg) test_87_text);
("kek87_data", assert_eqf (fun () -> (assemble test_87).data_seg) test_87_data);
("kek88_tp", assert_eqf (fun () -> (assemble test_88).text_pos) 0x400000L);

("kek88_tp", assert_eqf (fun () -> (assemble test_88).data_pos) 0x400028L);

("kek88_text", assert_eqf (fun () -> (assemble test_88).text_seg) test_88_text);
("kek88_data", assert_eqf (fun () -> (assemble test_88).data_seg) test_88_data);
("kek89_tp", assert_eqf (fun () -> (assemble test_89).text_pos) 0x400000L);

("kek89_tp", assert_eqf (fun () -> (assemble test_89).data_pos) 0x400040L);

("kek89_text", assert_eqf (fun () -> (assemble test_89).text_seg) test_89_text);
("kek89_data", assert_eqf (fun () -> (assemble test_89).data_seg) test_89_data);
("kek90_tp", assert_eqf (fun () -> (assemble test_90).text_pos) 0x400000L);

("kek90_tp", assert_eqf (fun () -> (assemble test_90).data_pos) 0x400038L);

("kek90_text", assert_eqf (fun () -> (assemble test_90).text_seg) test_90_text);
("kek90_data", assert_eqf (fun () -> (assemble test_90).data_seg) test_90_data);
("kek91_tp", assert_eqf (fun () -> (assemble test_91).text_pos) 0x400000L);

("kek91_tp", assert_eqf (fun () -> (assemble test_91).data_pos) 0x400030L);

("kek91_text", assert_eqf (fun () -> (assemble test_91).text_seg) test_91_text);
("kek91_data", assert_eqf (fun () -> (assemble test_91).data_seg) test_91_data);
("kek92_tp", assert_eqf (fun () -> (assemble test_92).text_pos) 0x400000L);

("kek92_tp", assert_eqf (fun () -> (assemble test_92).data_pos) 0x400030L);

("kek92_text", assert_eqf (fun () -> (assemble test_92).text_seg) test_92_text);
("kek92_data", assert_eqf (fun () -> (assemble test_92).data_seg) test_92_data);
("kek93_tp", assert_eqf (fun () -> (assemble test_93).text_pos) 0x400000L);

("kek93_tp", assert_eqf (fun () -> (assemble test_93).data_pos) 0x400040L);

("kek93_text", assert_eqf (fun () -> (assemble test_93).text_seg) test_93_text);
("kek93_data", assert_eqf (fun () -> (assemble test_93).data_seg) test_93_data);
("kek94_tp", assert_eqf (fun () -> (assemble test_94).text_pos) 0x400000L);

("kek94_tp", assert_eqf (fun () -> (assemble test_94).data_pos) 0x400028L);

("kek94_text", assert_eqf (fun () -> (assemble test_94).text_seg) test_94_text);
("kek94_data", assert_eqf (fun () -> (assemble test_94).data_seg) test_94_data);
("kek95_tp", assert_eqf (fun () -> (assemble test_95).text_pos) 0x400000L);

("kek95_tp", assert_eqf (fun () -> (assemble test_95).data_pos) 0x400028L);

("kek95_text", assert_eqf (fun () -> (assemble test_95).text_seg) test_95_text);
("kek95_data", assert_eqf (fun () -> (assemble test_95).data_seg) test_95_data);
("kek96_tp", assert_eqf (fun () -> (assemble test_96).text_pos) 0x400000L);

("kek96_tp", assert_eqf (fun () -> (assemble test_96).data_pos) 0x400040L);

("kek96_text", assert_eqf (fun () -> (assemble test_96).text_seg) test_96_text);
("kek96_data", assert_eqf (fun () -> (assemble test_96).data_seg) test_96_data);
("kek97_tp", assert_eqf (fun () -> (assemble test_97).text_pos) 0x400000L);

("kek97_tp", assert_eqf (fun () -> (assemble test_97).data_pos) 0x400030L);

("kek97_text", assert_eqf (fun () -> (assemble test_97).text_seg) test_97_text);
("kek97_data", assert_eqf (fun () -> (assemble test_97).data_seg) test_97_data);
("kek98_tp", assert_eqf (fun () -> (assemble test_98).text_pos) 0x400000L);

("kek98_tp", assert_eqf (fun () -> (assemble test_98).data_pos) 0x400030L);

("kek98_text", assert_eqf (fun () -> (assemble test_98).text_seg) test_98_text);
("kek98_data", assert_eqf (fun () -> (assemble test_98).data_seg) test_98_data);
("kek99_tp", assert_eqf (fun () -> (assemble test_99).text_pos) 0x400000L);

("kek99_tp", assert_eqf (fun () -> (assemble test_99).data_pos) 0x400048L);

("kek99_text", assert_eqf (fun () -> (assemble test_99).text_seg) test_99_text);
("kek99_data", assert_eqf (fun () -> (assemble test_99).data_seg) test_99_data);
("kek100_tp", assert_eqf (fun () -> (assemble test_100).text_pos) 0x400000L);

("kek100_tp", assert_eqf (fun () -> (assemble test_100).data_pos) 0x400050L);

("kek100_text", assert_eqf (fun () -> (assemble test_100).text_seg) test_100_text);
("kek100_data", assert_eqf (fun () -> (assemble test_100).data_seg) test_100_data);
]

