
CREATE TABLE flingua (
	cod_film integer,
	cod_ling integer,
	Foreign key(cod_film) references filme(cod_film),
	Foreign key(cod_ling) references lingua(cod_ling)
);

select * from flingua;

insert into flingua (cod_film,cod_ling)
values
	(1,14),
	(2,17),
	(3,39),
	(4,52),
	(5,14),
	(7,20),
	(7,45),
	(8,14),
	(9,35),
	(10,14),
	(11,9),
	(11,28),
	(11,35),
	(12,14),
	(12,20),
	(14,41),
	(15,28),
	(16,28),
	(18,52),
	(19,17),
	(20,9),
	(22,28),
	(23,17),
	(24,21),
	(25,28),
	(26,14),
	(28,14),
	(29,55),
	(30,17),
	(30,20),
	(31,41),
	(33,14),
	(37,14),
	(38,28),
	(39,28),
	(41,9),
	(41,14),
	(41,35),
	(42,28),
	(43,46),
	(44,4),
	(44,41),
	(45,17),
	(46,14),
	(46,27),
	(47,14),
	(47,42),
	(49,20),
	(49,41),
	(50,43),
	(51,27),
	(52,14),
	(53,14),
	(54,14),
	(55,54),
	(58,30),
	(59,14),
	(61,14),
	(62,13),
	(62,14),
	(62,20),
	(63,52),
	(64,3),
	(64,14),
	(64,17),
	(65,14),
	(68,17),
	(69,17),
	(70,21),
	(70,27),
	(71,17),
	(72,28),
	(74,28),
	(75,14),
	(76,14),
	(76,46),
	(77,28),
	(78,17),
	(80,14),
	(81,6),
	(81,14),
	(82,14),
	(82,17),
	(82,29),
	(82,59),
	(83,16),
	(83,20),
	(84,14),
	(87,9),
	(88,11),
	(89,14),
	(89,17),
	(90,17),
	(90,33),
	(91,14),
	(91,17),
	(91,20),
	(91,21),
	(91,33),
	(92,14),
	(92,54),
	(93,14),
	(94,3),
	(94,41),
	(95,14),
	(96,14),
	(96,52),
	(97,60),
	(98,41),
	(99,14),
	(99,17),
	(101,14),
	(103,14),
	(104,14),
	(105,3),
	(105,41),
	(108,17),
	(109,14),
	(110,14),
	(110,17),
	(111,14),
	(111,17),
	(111,21),
	(112,14),
	(112,17),
	(112,20),
	(113,14),
	(113,17),
	(117,31),
	(118,17),
	(118,38),
	(118,52),
	(120,14),
	(120,20),
	(121,14),
	(121,20),
	(122,14),
	(122,20),
	(123,14),
	(123,20),
	(124,14),
	(124,20),
	(125,14),
	(125,20),
	(126,14),
	(126,20),
	(127,14),
	(127,20),
	(128,14),
	(128,20),
	(129,14),
	(129,20),
	(130,14),
	(130,20),
	(131,14),
	(131,20),
	(132,14),
	(132,20),
	(133,14),
	(133,20),
	(134,27),
	(135,9),
	(136,35),
	(137,14),
	(138,43),
	(139,43),
	(140,14),
	(141,14),
	(142,28),
	(144,57),
	(146,14),
	(147,14),
	(147,17),
	(148,14),
	(151,14),
	(152,28),
	(153,14),
	(155,54),
	(156,14),
	(156,17),
	(156,20),
	(156,52),
	(157,14),
	(158,14),
	(160,14),
	(161,14),
	(162,14),
	(162,16),
	(163,14),
	(163,20),
	(163,27),
	(163,52),
	(164,42),
	(165,3),
	(165,7),
	(165,14),
	(165,23),
	(165,41),
	(166,14),
	(167,43),
	(168,11),
	(169,14),
	(172,14),
	(173,55),
	(174,14),
	(174,17),
	(174,27),
	(175,50),
	(177,14),
	(178,6),
	(178,14),
	(179,28),
	(180,28),
	(181,45),
	(182,14),
	(182,17),
	(183,3),
	(183,17),
	(184,14),
	(184,39),
	(185,9),
	(185,14),
	(185,28),
	(185,35),
	(186,27),
	(187,17),
	(188,20),
	(189,20),
	(190,17),
	(191,35),
	(191,38),
	(191,46),
	(193,14),
	(194,58),
	(195,14),
	(196,14),
	(200,27),
	(202,14),
	(203,14),
	(205,14),
	(207,14),
	(209,17),
	(210,17),
	(211,14),
	(212,14),
	(212,28),
	(213,14),
	(214,41),
	(214,58),
	(215,17),
	(216,52),
	(217,35),
	(218,11),
	(221,9),
	(221,14),
	(221,35),
	(221,55),
	(222,14),
	(222,27),
	(223,14),
	(224,28),
	(224,30),
	(226,28),
	(229,46),
	(230,17),
	(232,14),
	(232,17),
	(232,28),
	(232,35),
	(234,3),
	(234,14),
	(234,17),
	(234,51),
	(234,56),
	(235,11),
	(235,20),
	(236,17),
	(237,28),
	(238,27),
	(240,14),
	(241,27),
	(242,21),
	(243,17),
	(244,14),
	(245,28),
	(249,58),
	(250,17),
	(251,14),
	(251,35),
	(252,14),
	(253,14),
	(253,17),
	(253,20),
	(253,40),
	(254,14),
	(255,17),
	(257,43),
	(259,28),
	(260,14),
	(262,14),
	(262,21),
	(262,27),
	(263,14),
	(264,16),
	(264,54),
	(265,55),
	(266,55),
	(267,55),
	(268,55),
	(269,55),
	(270,55),
	(272,14),
	(272,24),
	(274,14),
	(275,17),
	(277,14),
	(277,20),
	(279,14),
	(280,27),
	(281,26),
	(282,54),
	(283,54),
	(284,54),
	(285,54),
	(286,54),
	(287,14),
	(287,17),
	(287,27),
	(288,11),
	(288,13),
	(288,14),
	(288,20),
	(288,27),
	(289,14),
	(289,17),
	(289,52),
	(289,59),
	(290,14),
	(290,28),
	(290,35),
	(291,35),
	(292,14),
	(292,20),
	(293,20),
	(294,39),
	(295,28),
	(297,14),
	(297,27),
	(298,28),
	(299,39),
	(300,41),
	(302,39),
	(304,28),
	(305,9),
	(305,35),
	(306,28),
	(306,30),
	(307,14),
	(308,13),
	(308,14),
	(308,17),
	(308,20),
	(308,34),
	(309,28),
	(310,14),
	(311,17),
	(312,28),
	(313,43),
	(314,27),
	(315,17),
	(316,14),
	(317,36),
	(318,42),
	(319,17),
	(320,28),
	(321,14),
	(322,41),
	(323,17),
	(325,20),
	(325,27),
	(326,14),
	(326,17),
	(326,20),
	(326,27),
	(327,17),
	(328,12),
	(329,17),
	(330,14),
	(330,28),
	(331,14),
	(331,52),
	(332,14),
	(332,52),
	(333,14),
	(334,35),
	(335,14),
	(336,39),
	(337,27),
	(338,14),
	(338,26),
	(339,14),
	(339,52),
	(340,14),
	(341,14),
	(343,28),
	(344,14),
	(344,24),
	(346,14),
	(346,21),
	(346,27),
	(347,14),
	(348,14),
	(348,52),
	(349,54),
	(350,15),
	(350,55),
	(351,14),
	(352,14),
	(352,17),
	(352,28),
	(353,14),
	(354,28),
	(357,14),
	(357,52),
	(358,14),
	(360,17),
	(361,14),
	(362,14),
	(362,28),
	(363,14),
	(363,17),
	(363,20),
	(363,27),
	(363,43),
	(364,28),
	(365,3),
	(365,14),
	(365,17),
	(365,20),
	(365,21),
	(365,26),
	(365,31),
	(365,41),
	(365,52),
	(365,58),
	(367,9),
	(367,14),
	(368,3),
	(369,28),
	(372,27),
	(373,28),
	(374,27),
	(375,14),
	(377,14),
	(378,42),
	(379,39),
	(381,28),
	(382,27),
	(383,27),
	(384,27),
	(387,14),
	(387,17),
	(388,12),
	(388,14),
	(388,46),
	(388,54),
	(389,14),
	(390,14),
	(391,14),
	(392,14),
	(393,14),
	(396,9),
	(396,35),
	(397,14),
	(398,17),
	(399,43),
	(400,17),
	(400,59),
	(401,14),
	(401,42),
	(402,28),
	(403,11),
	(404,28),
	(405,27),
	(407,28),
	(411,14),
	(411,25),
	(411,37),
	(412,28),
	(413,28),
	(414,28),
	(414,52),
	(416,17),
	(417,17),
	(418,17),
	(419,14),
	(420,17),
	(421,20),
	(421,58),
	(422,14),
	(422,17),
	(422,20),
	(423,14),
	(423,17),
	(423,27),
	(423,52),
	(424,9),
	(424,35),
	(425,28),
	(426,28),
	(428,58),
	(429,20),
	(430,14),
	(431,28),
	(432,17),
	(432,28),
	(433,28),
	(439,14),
	(439,17),
	(440,28),
	(446,14),
	(446,17),
	(447,14),
	(447,17),
	(448,14),
	(448,17),
	(449,17),
	(449,20),
	(450,17),
	(452,14),
	(452,17),
	(453,14),
	(453,17),
	(453,20),
	(453,27),
	(457,27),
	(458,17),
	(459,17),
	(459,45),
	(460,39),
	(462,27),
	(463,17),
	(464,20),
	(465,21),
	(469,28),
	(472,17),
	(474,17),
	(476,17),
	(477,42),
	(478,42),
	(479,42),
	(480,42),
	(481,42),
	(482,42),
	(483,42),
	(484,42),
	(485,42),
	(486,42),
	(487,42),
	(488,17),
	(489,17),
	(490,17),
	(493,17),
	(494,3),
	(494,14),
	(494,17),
	(494,24),
	(495,3),
	(496,20),
	(497,20),
	(498,14),
	(498,16),
	(500,17),
	(501,17),
	(501,27),
	(502,17),
	(503,17),
	(503,20),
	(505,14),
	(505,17),
	(507,28),
	(510,27),
	(512,13),
	(513,14),
	(516,14),
	(517,28),
	(518,28),
	(519,11),
	(523,14),
	(524,14),
	(525,14),
	(525,20),
	(525,28),
	(526,10),
	(526,20),
	(528,14),
	(530,14),
	(531,14),
	(531,17),
	(532,14),
	(532,17),
	(533,20),
	(534,14),
	(534,17),
	(534,52),
	(538,28),
	(539,28),
	(540,14),
	(541,20),
	(542,14),
	(542,17),
	(543,17),
	(544,14),
	(545,27),
	(550,14),
	(551,17),
	(555,52),
	(556,20),
	(557,11),
	(557,20),
	(558,31),
	(558,41),
	(559,41),
	(560,14),
	(561,14),
	(561,62),
	(562,14),
	(562,17),
	(562,54),
	(564,43),
	(565,17),
	(566,14),
	(567,14),
	(567,21),
	(567,27),
	(567,58),
	(569,14),
	(570,14),
	(571,14),
	(572,14),
	(573,14),
	(573,20),
	(573,26),
	(574,52),
	(575,14),
	(577,14),
	(578,28),
	(579,28),
	(579,35),
	(580,14),
	(581,14),
	(583,14),
	(584,14),
	(585,17),
	(586,17),
	(587,14),
	(587,17),
	(588,17),
	(589,14),
	(589,25),
	(590,5),
	(590,17),
	(591,46),
	(592,17),
	(592,60),
	(593,14),
	(594,17),
	(595,14),
	(596,28),
	(597,28),
	(598,14),
	(598,52),
	(599,17),
	(600,14),
	(600,26),
	(600,52),
	(601,14),
	(603,54),
	(604,28),
	(605,28),
	(606,17),
	(607,14),
	(609,14),
	(609,27),
	(609,28),
	(610,3),
	(610,14),
	(613,14),
	(613,17),
	(613,28),
	(613,57),
	(614,14),
	(615,17),
	(617,52),
	(619,17),
	(620,17),
	(621,14),
	(621,16),
	(621,17),
	(621,20),
	(621,27),
	(622,27),
	(623,14),
	(624,17),
	(627,28),
	(628,43),
	(629,14),
	(631,14),
	(631,55),
	(632,14),
	(633,20),
	(634,14),
	(634,20),
	(634,53),
	(635,28),
	(636,14),
	(636,54),
	(640,30),
	(642,14),
	(643,39),
	(644,58),
	(645,28),
	(646,28),
	(647,3),
	(647,14),
	(647,17),
	(647,58),
	(648,14),
	(649,14),
	(650,12),
	(651,28),
	(652,14),
	(652,20),
	(653,28),
	(655,43),
	(656,14),
	(657,28),
	(658,14),
	(658,27),
	(659,14),
	(659,17),
	(660,14),
	(660,17),
	(661,14),
	(661,17),
	(662,14),
	(662,17),
	(663,14),
	(663,17),
	(664,14),
	(664,17),
	(665,14),
	(665,17),
	(666,14),
	(666,17),
	(667,3),
	(667,14),
	(667,17),
	(669,35),
	(670,20),
	(670,27),
	(670,33),
	(670,47),
	(672,20),
	(672,27),
	(673,27),
	(674,14),
	(674,17),
	(674,27),
	(675,14),
	(675,52),
	(676,14),
	(677,14),
	(679,6),
	(682,28),
	(683,54),
	(686,17),
	(687,17),
	(688,14),
	(689,17),
	(690,51),
	(691,17),
	(692,27),
	(693,10),
	(693,14),
	(693,17),
	(693,20),
	(693,27),
	(693,30),
	(693,43),
	(693,46),
	(693,52),
	(694,20),
	(695,14),
	(696,52),
	(697,14),
	(697,17),
	(697,20),
	(698,39),
	(699,3),
	(699,17),
	(700,14),
	(701,28),
	(703,28),
	(704,3),
	(705,14),
	(705,17),
	(705,20),
	(706,28),
	(709,14),
	(710,14),
	(710,17),
	(710,52),
	(711,28),
	(712,14),
	(712,17),
	(712,27),
	(713,12),
	(715,12),
	(716,14),
	(718,14),
	(718,27),
	(719,14),
	(720,14),
	(721,14),
	(723,14),
	(723,17),
	(724,35),
	(726,12),
	(728,28),
	(729,14),
	(730,12),
	(731,28),
	(732,14),
	(733,14),
	(734,28),
	(736,40),
	(737,14),
	(738,14),
	(739,3),
	(740,17),
	(741,27),
	(743,14),
	(744,14),
	(745,17),
	(745,20),
	(747,27),
	(748,14),
	(748,25),
	(749,41),
	(750,39),
	(752,14),
	(752,27),
	(753,28),
	(755,17),
	(756,28),
	(757,28),
	(758,28),
	(759,54),
	(760,26),
	(761,26),
	(762,26),
	(763,26),
	(764,26),
	(765,26),
	(766,26),
	(767,14),
	(768,14),
	(768,20),
	(769,14),
	(777,9),
	(778,41),
	(779,30),
	(780,14),
	(782,14),
	(784,20),
	(784,27),
	(785,20),
	(785,27),
	(785,52),
	(786,35),
	(788,14),
	(789,14),
	(791,12),
	(792,28),
	(793,17),
	(795,14),
	(796,14),
	(796,27),
	(798,14),
	(799,14),
	(800,52),
	(801,28),
	(802,14),
	(802,17),
	(802,52),
	(803,28),
	(804,28),
	(805,14),
	(806,28),
	(808,54),
	(809,14),
	(810,17),
	(811,14),
	(811,27),
	(812,17),
	(812,20),
	(812,21),
	(812,24),
	(812,26),
	(812,42),
	(812,46),
	(812,51),
	(812,62),
	(813,28),
	(815,20),
	(815,21),
	(816,28),
	(818,14),
	(821,20),
	(822,14),
	(823,14),
	(824,14),
	(825,28),
	(826,28),
	(827,14),
	(829,27),
	(830,17),
	(830,20),
	(831,14),
	(831,26),
	(832,14),
	(833,14),
	(834,28),
	(835,14),
	(835,28),
	(836,54),
	(837,17),
	(839,14),
	(840,14),
	(840,20),
	(840,27),
	(840,33),
	(840,46),
	(841,28),
	(842,17),
	(843,14),
	(844,14),
	(845,28),
	(846,28),
	(847,57),
	(849,35),
	(850,28),
	(851,14),
	(851,62),
	(852,28),
	(854,41),
	(855,17),
	(856,14),
	(856,43),
	(856,52),
	(857,14),
	(857,52),
	(859,14),
	(860,17),
	(861,14),
	(862,14),
	(863,14),
	(863,17),
	(864,14),
	(864,20),
	(864,53),
	(865,14),
	(865,17),
	(865,20),
	(866,57),
	(867,14),
	(868,14),
	(869,14),
	(870,20),
	(871,28),
	(872,17),
	(873,28),
	(874,14),
	(874,17),
	(875,14),
	(876,17),
	(877,54),
	(878,54),
	(879,54),
	(880,54),
	(883,14),
	(884,27),
	(885,20),
	(886,17),
	(887,35),
	(888,14),
	(889,14),
	(889,17),
	(890,35),
	(891,17),
	(892,14),
	(893,28),
	(894,14),
	(894,28),
	(895,14),
	(896,14),
	(897,38),
	(898,14),
	(899,27),
	(900,14),
	(900,30),
	(901,14),
	(902,27),
	(905,14),
	(906,14),
	(907,14),
	(911,28),
	(914,14),
	(914,46),
	(915,45),
	(917,17),
	(918,17),
	(918,52),
	(921,3),
	(923,14),
	(929,20),
	(930,14),
	(932,28),
	(933,27),
	(934,14),
	(936,14),
	(937,14),
	(938,14),
	(938,27),
	(939,14),
	(939,17),
	(939,27),
	(941,14),
	(943,43),
	(945,14),
	(946,14),
	(948,14),
	(953,28),
	(954,14),
	(955,14),
	(956,14),
	(957,14),
	(958,14),
	(959,14),
	(960,14),
	(961,14),
	(962,14),
	(963,14),
	(964,14),
	(970,14),
	(970,20),
	(970,27),
	(971,14),
	(971,17),
	(973,14),
	(974,14),
	(975,11),
	(976,17),
	(977,14),
	(980,27),
	(981,43),
	(982,14),
	(983,17),
	(983,27),
	(984,14),
	(984,52),
	(985,28),
	(987,14),
	(989,14),
	(990,46),
	(991,17),
	(992,14),
	(992,52),
	(993,14),
	(994,17),
	(995,14),
	(997,14),
	(998,14),
	(999,28),
	(1000,14),
	(1001,14),
	(1003,28),
	(1004,28),
	(1005,48),
	(1006,14),
	(1006,17),
	(1006,20),
	(1007,14),
	(1008,28),
	(1009,27),
	(1010,17),
	(1012,44),
	(1012,52),
	(1013,14),
	(1013,20),
	(1014,14),
	(1014,22),
	(1014,33),
	(1014,52),
	(1015,14),
	(1015,46),
	(1017,28),
	(1018,17),
	(1019,27),
	(1021,14),
	(1023,13),
	(1023,17),
	(1025,39),
	(1026,8),
	(1026,17),
	(1026,48),
	(1028,39),
	(1029,14),
	(1029,20),
	(1029,46),
	(1030,14),
	(1030,36),
	(1031,17),
	(1031,20),
	(1034,26),
	(1036,14),
	(1037,28),
	(1039,14),
	(1039,20),
	(1039,26),
	(1040,28),
	(1041,3),
	(1041,14),
	(1043,28),
	(1044,14),
	(1045,14),
	(1046,14),
	(1046,24),
	(1046,46),
	(1047,14),
	(1048,14),
	(1049,42),
	(1051,18),
	(1051,52),
	(1052,41),
	(1053,46),
	(1054,52),
	(1056,17),
	(1057,14),
	(1058,54),
	(1060,51),
	(1060,62),
	(1061,7),
	(1061,14),
	(1061,52),
	(1062,7),
	(1062,14),
	(1062,52),
	(1063,17),
	(1064,14),
	(1064,17),
	(1064,43),
	(1066,28),
	(1067,41),
	(1069,14),
	(1070,12),
	(1070,14),
	(1070,54),
	(1071,14),
	(1071,17),
	(1071,27),
	(1072,46),
	(1073,14),
	(1073,30),
	(1075,35),
	(1076,28),
	(1078,28),
	(1079,28),
	(1080,28),
	(1081,28),
	(1082,14),
	(1084,17),
	(1085,14),
	(1085,28),
	(1086,17),
	(1087,14),
	(1087,20),
	(1087,46),
	(1088,20),
	(1088,24),
	(1088,27),
	(1088,42),
	(1088,46),
	(1089,21),
	(1090,14),
	(1091,14),
	(1092,27),
	(1093,14),
	(1094,14),
	(1094,17),
	(1095,20),
	(1095,26),
	(1096,14),
	(1097,28),
	(1098,26),
	(1099,14),
	(1100,17),
	(1101,17),
	(1103,11),
	(1104,14),
	(1105,20),
	(1105,54),
	(1107,17),
	(1107,27),
	(1108,28),
	(1109,27),
	(1110,35),
	(1111,21),
	(1112,41),
	(1113,41),
	(1114,20),
	(1114,27),
	(1114,33),
	(1114,42),
	(1116,17),
	(1116,20),
	(1116,27),
	(1116,28),
	(1118,41),
	(1119,45),
	(1120,14),
	(1120,28),
	(1120,52),
	(1120,55),
	(1122,6),
	(1122,14),
	(1123,14),
	(1124,14),
	(1125,17),
	(1126,17),
	(1127,19),
	(1127,46),
	(1128,46),
	(1130,57),
	(1131,14),
	(1132,28),
	(1136,14),
	(1137,58),
	(1138,28),
	(1139,28),
	(1140,28),
	(1141,33),
	(1141,54),
	(1142,41),
	(1143,2),
	(1143,14),
	(1143,20),
	(1143,27),
	(1143,41),
	(1144,2),
	(1144,14),
	(1144,20),
	(1144,27),
	(1144,41),
	(1149,27),
	(1149,58),
	(1150,14),
	(1150,42),
	(1151,14),
	(1152,28),
	(1153,28),
	(1154,28),
	(1155,28),
	(1157,14),
	(1157,28),
	(1157,35),
	(1158,14),
	(1158,28),
	(1158,35),
	(1159,14),
	(1159,28),
	(1159,35),
	(1160,14),
	(1160,28),
	(1160,35),
	(1161,28),
	(1162,14),
	(1162,20),
	(1162,28),
	(1163,14),
	(1164,17),
	(1165,3),
	(1165,17),
	(1165,60),
	(1166,14),
	(1166,17),
	(1167,13),
	(1167,14),
	(1167,17),
	(1168,13),
	(1168,17),
	(1169,14),
	(1170,28),
	(1171,28),
	(1174,57),
	(1175,14),
	(1175,17),
	(1176,1),
	(1176,61),
	(1176,63),
	(1177,3),
	(1177,14),
	(1177,31),
	(1179,28),
	(1180,14),
	(1180,17),
	(1182,27),
	(1184,14),
	(1184,17),
	(1185,28),
	(1186,17),
	(1189,17),
	(1189,32),
	(1189,57),
	(1190,14),
	(1190,17),
	(1191,17),
	(1192,14),
	(1193,28),
	(1195,14),
	(1198,39),
	(1199,11),
	(1200,17),
	(1201,20),
	(1202,14),
	(1202,27),
	(1203,14),
	(1204,52),
	(1205,14),
	(1206,14),
	(1206,62),
	(1207,28),
	(1208,14),
	(1208,52),
	(1209,17),
	(1209,27),
	(1211,17),
	(1212,28),
	(1213,27),
	(1214,27),
	(1214,46),
	(1215,3),
	(1215,17),
	(1216,14),
	(1217,3),
	(1218,14),
	(1218,27),
	(1218,46),
	(1219,14),
	(1219,27),
	(1219,46),
	(1220,14),
	(1220,27),
	(1220,46),
	(1221,14),
	(1221,27),
	(1221,46),
	(1223,27),
	(1224,55),
	(1226,46),
	(1227,26),
	(1227,51),
	(1228,14),
	(1228,55),
	(1229,14),
	(1229,55),
	(1230,14),
	(1230,55),
	(1231,14),
	(1231,55),
	(1232,14),
	(1232,55),
	(1233,14),
	(1233,55),
	(1234,14),
	(1236,28),
	(1237,49),
	(1238,17),
	(1239,17),
	(1239,27),
	(1241,28),
	(1243,14),
	(1245,48),
	(1247,14),
	(1248,33),
	(1248,54),
	(1249,41),
	(1250,14),
	(1251,39),
	(1252,58),
	(1253,14),
	(1254,14),
	(1254,33),
	(1255,28),
	(1256,42),
	(1257,28),
	(1258,28),
	(1259,17),
	(1260,28),
	(1261,14),
	(1262,14),
	(1263,57),
	(1264,20),
	(1265,14),
	(1266,35),
	(1269,20),
	(1269,58),
	(1270,14),
	(1270,55),
	(1272,28),
	(1273,31),
	(1273,58),
	(1274,12),
	(1275,48),
	(1277,28),
	(1278,14),
	(1280,14),
	(1280,20);

/*
_____spoken_languages:____ 10 colunas!
Afrikaans
Albanian
Arabic
Azerbaijani
Bambara
Bengali
Bosnian
Bulgarian
Cantonese
Croatian
Czech
Danish
Dutch
English
Filipino
Finnish
French
Galician
Georgian
German
Greek
Hungarian
Italian
Japanese
Korean
Kurdish
Latin
Mandarin
Maori
Mongolian
No Language
Norwegian
Persian
Polish
Portuguese
Quechua
Romanian
Russian
Serbian
Serbo-Croatian
Sinhalese
Slovak
Spanish
Swedish
Tagalog
Thai
Turkish
Wolof
Guarani
Hebrew
Hindi
Lao
Vietnamese
Xhosa
Yiddish
Khmer
Marathi
Swahili
Zulu
Latvian
Tamil
Hausa
Sardinian
*/
