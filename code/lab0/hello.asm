
hello:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	c791                	beqz	a5,100c0 <register_fini+0x10>
   100b6:	6549                	lui	a0,0x12
   100b8:	48250513          	addi	a0,a0,1154 # 12482 <__libc_fini_array>
   100bc:	7250106f          	j	11fe0 <atexit>
   100c0:	8082                	ret

00000000000100c2 <_start>:
   100c2:	0000f197          	auipc	gp,0xf
   100c6:	abe18193          	addi	gp,gp,-1346 # 1eb80 <__global_pointer$>
   100ca:	77018513          	addi	a0,gp,1904 # 1f2f0 <__malloc_max_total_mem>
   100ce:	0000f617          	auipc	a2,0xf
   100d2:	2b260613          	addi	a2,a2,690 # 1f380 <__BSS_END__>
   100d6:	8e09                	sub	a2,a2,a0
   100d8:	4581                	li	a1,0
   100da:	118000ef          	jal	ra,101f2 <memset>
   100de:	00002517          	auipc	a0,0x2
   100e2:	f0250513          	addi	a0,a0,-254 # 11fe0 <atexit>
   100e6:	c519                	beqz	a0,100f4 <_start+0x32>
   100e8:	00002517          	auipc	a0,0x2
   100ec:	39a50513          	addi	a0,a0,922 # 12482 <__libc_fini_array>
   100f0:	6f1010ef          	jal	ra,11fe0 <atexit>
   100f4:	094000ef          	jal	ra,10188 <__libc_init_array>
   100f8:	4502                	lw	a0,0(sp)
   100fa:	002c                	addi	a1,sp,8
   100fc:	4601                	li	a2,0
   100fe:	04e000ef          	jal	ra,1014c <main>
   10102:	a0a5                	j	1016a <exit>

0000000000010104 <__do_global_dtors_aux>:
   10104:	1141                	addi	sp,sp,-16
   10106:	e022                	sd	s0,0(sp)
   10108:	7a01c783          	lbu	a5,1952(gp) # 1f320 <completed.1>
   1010c:	e406                	sd	ra,8(sp)
   1010e:	ef91                	bnez	a5,1012a <__do_global_dtors_aux+0x26>
   10110:	00000793          	li	a5,0
   10114:	cb81                	beqz	a5,10124 <__do_global_dtors_aux+0x20>
   10116:	6579                	lui	a0,0x1e
   10118:	17850513          	addi	a0,a0,376 # 1e178 <__FRAME_END__>
   1011c:	00000097          	auipc	ra,0x0
   10120:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10124:	4785                	li	a5,1
   10126:	7af18023          	sb	a5,1952(gp) # 1f320 <completed.1>
   1012a:	60a2                	ld	ra,8(sp)
   1012c:	6402                	ld	s0,0(sp)
   1012e:	0141                	addi	sp,sp,16
   10130:	8082                	ret

0000000000010132 <frame_dummy>:
   10132:	00000793          	li	a5,0
   10136:	cb91                	beqz	a5,1014a <frame_dummy+0x18>
   10138:	6579                	lui	a0,0x1e
   1013a:	7a818593          	addi	a1,gp,1960 # 1f328 <object.0>
   1013e:	17850513          	addi	a0,a0,376 # 1e178 <__FRAME_END__>
   10142:	00000317          	auipc	t1,0x0
   10146:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   1014a:	8082                	ret

000000000001014c <main>:
   1014c:	1141                	addi	sp,sp,-16
   1014e:	e406                	sd	ra,8(sp)
   10150:	e022                	sd	s0,0(sp)
   10152:	0800                	addi	s0,sp,16
   10154:	67f1                	lui	a5,0x1c
   10156:	25078513          	addi	a0,a5,592 # 1c250 <__clzdi2+0x38>
   1015a:	164000ef          	jal	ra,102be <printf>
   1015e:	4781                	li	a5,0
   10160:	853e                	mv	a0,a5
   10162:	60a2                	ld	ra,8(sp)
   10164:	6402                	ld	s0,0(sp)
   10166:	0141                	addi	sp,sp,16
   10168:	8082                	ret

000000000001016a <exit>:
   1016a:	1141                	addi	sp,sp,-16
   1016c:	4581                	li	a1,0
   1016e:	e022                	sd	s0,0(sp)
   10170:	e406                	sd	ra,8(sp)
   10172:	842a                	mv	s0,a0
   10174:	5ab010ef          	jal	ra,11f1e <__call_exitprocs>
   10178:	7481b503          	ld	a0,1864(gp) # 1f2c8 <_global_impure_ptr>
   1017c:	6d3c                	ld	a5,88(a0)
   1017e:	c391                	beqz	a5,10182 <exit+0x18>
   10180:	9782                	jalr	a5
   10182:	8522                	mv	a0,s0
   10184:	2590a0ef          	jal	ra,1abdc <_exit>

0000000000010188 <__libc_init_array>:
   10188:	1101                	addi	sp,sp,-32
   1018a:	e822                	sd	s0,16(sp)
   1018c:	e04a                	sd	s2,0(sp)
   1018e:	6479                	lui	s0,0x1e
   10190:	6979                	lui	s2,0x1e
   10192:	17c40793          	addi	a5,s0,380 # 1e17c <__preinit_array_end>
   10196:	17c90913          	addi	s2,s2,380 # 1e17c <__preinit_array_end>
   1019a:	40f90933          	sub	s2,s2,a5
   1019e:	ec06                	sd	ra,24(sp)
   101a0:	e426                	sd	s1,8(sp)
   101a2:	40395913          	srai	s2,s2,0x3
   101a6:	00090b63          	beqz	s2,101bc <__libc_init_array+0x34>
   101aa:	17c40413          	addi	s0,s0,380
   101ae:	4481                	li	s1,0
   101b0:	601c                	ld	a5,0(s0)
   101b2:	0485                	addi	s1,s1,1
   101b4:	0421                	addi	s0,s0,8
   101b6:	9782                	jalr	a5
   101b8:	fe991ce3          	bne	s2,s1,101b0 <__libc_init_array+0x28>
   101bc:	6479                	lui	s0,0x1e
   101be:	6979                	lui	s2,0x1e
   101c0:	18040793          	addi	a5,s0,384 # 1e180 <__init_array_start>
   101c4:	19090913          	addi	s2,s2,400 # 1e190 <__do_global_dtors_aux_fini_array_entry>
   101c8:	40f90933          	sub	s2,s2,a5
   101cc:	40395913          	srai	s2,s2,0x3
   101d0:	00090b63          	beqz	s2,101e6 <__libc_init_array+0x5e>
   101d4:	18040413          	addi	s0,s0,384
   101d8:	4481                	li	s1,0
   101da:	601c                	ld	a5,0(s0)
   101dc:	0485                	addi	s1,s1,1
   101de:	0421                	addi	s0,s0,8
   101e0:	9782                	jalr	a5
   101e2:	fe991ce3          	bne	s2,s1,101da <__libc_init_array+0x52>
   101e6:	60e2                	ld	ra,24(sp)
   101e8:	6442                	ld	s0,16(sp)
   101ea:	64a2                	ld	s1,8(sp)
   101ec:	6902                	ld	s2,0(sp)
   101ee:	6105                	addi	sp,sp,32
   101f0:	8082                	ret

00000000000101f2 <memset>:
   101f2:	433d                	li	t1,15
   101f4:	872a                	mv	a4,a0
   101f6:	02c37163          	bgeu	t1,a2,10218 <memset+0x26>
   101fa:	00f77793          	andi	a5,a4,15
   101fe:	e3c1                	bnez	a5,1027e <memset+0x8c>
   10200:	e1bd                	bnez	a1,10266 <memset+0x74>
   10202:	ff067693          	andi	a3,a2,-16
   10206:	8a3d                	andi	a2,a2,15
   10208:	96ba                	add	a3,a3,a4
   1020a:	e30c                	sd	a1,0(a4)
   1020c:	e70c                	sd	a1,8(a4)
   1020e:	0741                	addi	a4,a4,16
   10210:	fed76de3          	bltu	a4,a3,1020a <memset+0x18>
   10214:	e211                	bnez	a2,10218 <memset+0x26>
   10216:	8082                	ret
   10218:	40c306b3          	sub	a3,t1,a2
   1021c:	068a                	slli	a3,a3,0x2
   1021e:	00000297          	auipc	t0,0x0
   10222:	9696                	add	a3,a3,t0
   10224:	00a68067          	jr	10(a3)
   10228:	00b70723          	sb	a1,14(a4)
   1022c:	00b706a3          	sb	a1,13(a4)
   10230:	00b70623          	sb	a1,12(a4)
   10234:	00b705a3          	sb	a1,11(a4)
   10238:	00b70523          	sb	a1,10(a4)
   1023c:	00b704a3          	sb	a1,9(a4)
   10240:	00b70423          	sb	a1,8(a4)
   10244:	00b703a3          	sb	a1,7(a4)
   10248:	00b70323          	sb	a1,6(a4)
   1024c:	00b702a3          	sb	a1,5(a4)
   10250:	00b70223          	sb	a1,4(a4)
   10254:	00b701a3          	sb	a1,3(a4)
   10258:	00b70123          	sb	a1,2(a4)
   1025c:	00b700a3          	sb	a1,1(a4)
   10260:	00b70023          	sb	a1,0(a4)
   10264:	8082                	ret
   10266:	0ff5f593          	zext.b	a1,a1
   1026a:	00859693          	slli	a3,a1,0x8
   1026e:	8dd5                	or	a1,a1,a3
   10270:	01059693          	slli	a3,a1,0x10
   10274:	8dd5                	or	a1,a1,a3
   10276:	02059693          	slli	a3,a1,0x20
   1027a:	8dd5                	or	a1,a1,a3
   1027c:	b759                	j	10202 <memset+0x10>
   1027e:	00279693          	slli	a3,a5,0x2
   10282:	00000297          	auipc	t0,0x0
   10286:	9696                	add	a3,a3,t0
   10288:	8286                	mv	t0,ra
   1028a:	fa2680e7          	jalr	-94(a3)
   1028e:	8096                	mv	ra,t0
   10290:	17c1                	addi	a5,a5,-16
   10292:	8f1d                	sub	a4,a4,a5
   10294:	963e                	add	a2,a2,a5
   10296:	f8c371e3          	bgeu	t1,a2,10218 <memset+0x26>
   1029a:	b79d                	j	10200 <memset+0xe>

000000000001029c <_printf_r>:
   1029c:	715d                	addi	sp,sp,-80
   1029e:	f032                	sd	a2,32(sp)
   102a0:	f436                	sd	a3,40(sp)
   102a2:	f83a                	sd	a4,48(sp)
   102a4:	fc3e                	sd	a5,56(sp)
   102a6:	e0c2                	sd	a6,64(sp)
   102a8:	e4c6                	sd	a7,72(sp)
   102aa:	862e                	mv	a2,a1
   102ac:	690c                	ld	a1,16(a0)
   102ae:	1014                	addi	a3,sp,32
   102b0:	ec06                	sd	ra,24(sp)
   102b2:	e436                	sd	a3,8(sp)
   102b4:	036000ef          	jal	ra,102ea <_vfprintf_r>
   102b8:	60e2                	ld	ra,24(sp)
   102ba:	6161                	addi	sp,sp,80
   102bc:	8082                	ret

00000000000102be <printf>:
   102be:	7581b303          	ld	t1,1880(gp) # 1f2d8 <_impure_ptr>
   102c2:	711d                	addi	sp,sp,-96
   102c4:	f832                	sd	a2,48(sp)
   102c6:	fc36                	sd	a3,56(sp)
   102c8:	f42e                	sd	a1,40(sp)
   102ca:	e0ba                	sd	a4,64(sp)
   102cc:	e4be                	sd	a5,72(sp)
   102ce:	e8c2                	sd	a6,80(sp)
   102d0:	ecc6                	sd	a7,88(sp)
   102d2:	01033583          	ld	a1,16(t1) # 10152 <main+0x6>
   102d6:	1034                	addi	a3,sp,40
   102d8:	862a                	mv	a2,a0
   102da:	851a                	mv	a0,t1
   102dc:	ec06                	sd	ra,24(sp)
   102de:	e436                	sd	a3,8(sp)
   102e0:	00a000ef          	jal	ra,102ea <_vfprintf_r>
   102e4:	60e2                	ld	ra,24(sp)
   102e6:	6125                	addi	sp,sp,96
   102e8:	8082                	ret

00000000000102ea <_vfprintf_r>:
   102ea:	d8010113          	addi	sp,sp,-640
   102ee:	26113c23          	sd	ra,632(sp)
   102f2:	27213023          	sd	s2,608(sp)
   102f6:	25413823          	sd	s4,592(sp)
   102fa:	23913423          	sd	s9,552(sp)
   102fe:	892e                	mv	s2,a1
   10300:	8cb2                	mv	s9,a2
   10302:	e836                	sd	a3,16(sp)
   10304:	26813823          	sd	s0,624(sp)
   10308:	26913423          	sd	s1,616(sp)
   1030c:	25313c23          	sd	s3,600(sp)
   10310:	25513423          	sd	s5,584(sp)
   10314:	25613023          	sd	s6,576(sp)
   10318:	23713c23          	sd	s7,568(sp)
   1031c:	23813823          	sd	s8,560(sp)
   10320:	23a13023          	sd	s10,544(sp)
   10324:	21b13c23          	sd	s11,536(sp)
   10328:	8a2a                	mv	s4,a0
   1032a:	5e4040ef          	jal	ra,1490e <_localeconv_r>
   1032e:	611c                	ld	a5,0(a0)
   10330:	853e                	mv	a0,a5
   10332:	f8be                	sd	a5,112(sp)
   10334:	585050ef          	jal	ra,160b8 <strlen>
   10338:	f4aa                	sd	a0,104(sp)
   1033a:	e202                	sd	zero,256(sp)
   1033c:	e602                	sd	zero,264(sp)
   1033e:	000a0663          	beqz	s4,1034a <_vfprintf_r+0x60>
   10342:	050a2783          	lw	a5,80(s4)
   10346:	5a078863          	beqz	a5,108f6 <_vfprintf_r+0x60c>
   1034a:	01091703          	lh	a4,16(s2)
   1034e:	6689                	lui	a3,0x2
   10350:	03071793          	slli	a5,a4,0x30
   10354:	93c1                	srli	a5,a5,0x30
   10356:	00d7f633          	and	a2,a5,a3
   1035a:	e215                	bnez	a2,1037e <_vfprintf_r+0x94>
   1035c:	0ac92603          	lw	a2,172(s2)
   10360:	00d767b3          	or	a5,a4,a3
   10364:	0107979b          	slliw	a5,a5,0x10
   10368:	7779                	lui	a4,0xffffe
   1036a:	4107d79b          	sraiw	a5,a5,0x10
   1036e:	177d                	addi	a4,a4,-1
   10370:	8f71                	and	a4,a4,a2
   10372:	00f91823          	sh	a5,16(s2)
   10376:	17c2                	slli	a5,a5,0x30
   10378:	0ae92623          	sw	a4,172(s2)
   1037c:	93c1                	srli	a5,a5,0x30
   1037e:	0087f713          	andi	a4,a5,8
   10382:	26070a63          	beqz	a4,105f6 <_vfprintf_r+0x30c>
   10386:	01893703          	ld	a4,24(s2)
   1038a:	26070663          	beqz	a4,105f6 <_vfprintf_r+0x30c>
   1038e:	8be9                	andi	a5,a5,26
   10390:	4729                	li	a4,10
   10392:	26e78f63          	beq	a5,a4,10610 <_vfprintf_r+0x326>
   10396:	67f1                	lui	a5,0x1c
   10398:	4f87b783          	ld	a5,1272(a5) # 1c4f8 <zeroes.0+0x20>
   1039c:	19010b13          	addi	s6,sp,400
   103a0:	ea5a                	sd	s6,272(sp)
   103a2:	e93e                	sd	a5,144(sp)
   103a4:	67f1                	lui	a5,0x1c
   103a6:	5087b783          	ld	a5,1288(a5) # 1c508 <zeroes.0+0x30>
   103aa:	f202                	sd	zero,288(sp)
   103ac:	10012c23          	sw	zero,280(sp)
   103b0:	ed3e                	sd	a5,152(sp)
   103b2:	67f1                	lui	a5,0x1c
   103b4:	5187b783          	ld	a5,1304(a5) # 1c518 <zeroes.0+0x40>
   103b8:	f002                	sd	zero,32(sp)
   103ba:	f402                	sd	zero,40(sp)
   103bc:	f13e                	sd	a5,160(sp)
   103be:	000cc783          	lbu	a5,0(s9)
   103c2:	fc82                	sd	zero,120(sp)
   103c4:	f082                	sd	zero,96(sp)
   103c6:	e102                	sd	zero,128(sp)
   103c8:	e502                	sd	zero,136(sp)
   103ca:	e402                	sd	zero,8(sp)
   103cc:	835a                	mv	t1,s6
   103ce:	1c078563          	beqz	a5,10598 <_vfprintf_r+0x2ae>
   103d2:	8466                	mv	s0,s9
   103d4:	02500713          	li	a4,37
   103d8:	30e78263          	beq	a5,a4,106dc <_vfprintf_r+0x3f2>
   103dc:	00144783          	lbu	a5,1(s0)
   103e0:	0405                	addi	s0,s0,1
   103e2:	fbfd                	bnez	a5,103d8 <_vfprintf_r+0xee>
   103e4:	419404bb          	subw	s1,s0,s9
   103e8:	1a048863          	beqz	s1,10598 <_vfprintf_r+0x2ae>
   103ec:	11812783          	lw	a5,280(sp)
   103f0:	7712                	ld	a4,288(sp)
   103f2:	01933023          	sd	s9,0(t1)
   103f6:	2785                	addiw	a5,a5,1
   103f8:	9726                	add	a4,a4,s1
   103fa:	00933423          	sd	s1,8(t1)
   103fe:	f23a                	sd	a4,288(sp)
   10400:	10f12c23          	sw	a5,280(sp)
   10404:	0007871b          	sext.w	a4,a5
   10408:	479d                	li	a5,7
   1040a:	0341                	addi	t1,t1,16
   1040c:	2ce7cf63          	blt	a5,a4,106ea <_vfprintf_r+0x400>
   10410:	6722                	ld	a4,8(sp)
   10412:	00044783          	lbu	a5,0(s0)
   10416:	9f25                	addw	a4,a4,s1
   10418:	e43a                	sd	a4,8(sp)
   1041a:	16078f63          	beqz	a5,10598 <_vfprintf_r+0x2ae>
   1041e:	67f1                	lui	a5,0x1c
   10420:	00144e03          	lbu	t3,1(s0)
   10424:	0c010fa3          	sb	zero,223(sp)
   10428:	0405                	addi	s0,s0,1
   1042a:	5c7d                	li	s8,-1
   1042c:	4a81                	li	s5,0
   1042e:	4481                	li	s1,0
   10430:	05a00993          	li	s3,90
   10434:	2c078b93          	addi	s7,a5,704 # 1c2c0 <__clzdi2+0xa8>
   10438:	4da5                	li	s11,9
   1043a:	0405                	addi	s0,s0,1
   1043c:	000e0d1b          	sext.w	s10,t3
   10440:	02a00693          	li	a3,42
   10444:	fe0d079b          	addiw	a5,s10,-32
   10448:	0007871b          	sext.w	a4,a5
   1044c:	04e9e363          	bltu	s3,a4,10492 <_vfprintf_r+0x1a8>
   10450:	02079713          	slli	a4,a5,0x20
   10454:	01e75793          	srli	a5,a4,0x1e
   10458:	97de                	add	a5,a5,s7
   1045a:	439c                	lw	a5,0(a5)
   1045c:	8782                	jr	a5
   1045e:	4a81                	li	s5,0
   10460:	00044703          	lbu	a4,0(s0)
   10464:	002a979b          	slliw	a5,s5,0x2
   10468:	015787bb          	addw	a5,a5,s5
   1046c:	fd0d0e1b          	addiw	t3,s10,-48
   10470:	0017979b          	slliw	a5,a5,0x1
   10474:	fd07061b          	addiw	a2,a4,-48
   10478:	0405                	addi	s0,s0,1
   1047a:	00fe0abb          	addw	s5,t3,a5
   1047e:	00070d1b          	sext.w	s10,a4
   10482:	fccdffe3          	bgeu	s11,a2,10460 <_vfprintf_r+0x176>
   10486:	fe0d079b          	addiw	a5,s10,-32
   1048a:	0007871b          	sext.w	a4,a5
   1048e:	fce9f1e3          	bgeu	s3,a4,10450 <_vfprintf_r+0x166>
   10492:	100d0363          	beqz	s10,10598 <_vfprintf_r+0x2ae>
   10496:	13a10423          	sb	s10,296(sp)
   1049a:	0c010fa3          	sb	zero,223(sp)
   1049e:	4985                	li	s3,1
   104a0:	4b85                	li	s7,1
   104a2:	12810c93          	addi	s9,sp,296
   104a6:	ec02                	sd	zero,24(sp)
   104a8:	4c01                	li	s8,0
   104aa:	e882                	sd	zero,80(sp)
   104ac:	ec82                	sd	zero,88(sp)
   104ae:	e482                	sd	zero,72(sp)
   104b0:	0024f293          	andi	t0,s1,2
   104b4:	00028363          	beqz	t0,104ba <_vfprintf_r+0x1d0>
   104b8:	2989                	addiw	s3,s3,2
   104ba:	0844fd93          	andi	s11,s1,132
   104be:	7792                	ld	a5,288(sp)
   104c0:	000d9663          	bnez	s11,104cc <_vfprintf_r+0x1e2>
   104c4:	413a86bb          	subw	a3,s5,s3
   104c8:	08d049e3          	bgtz	a3,10d5a <_vfprintf_r+0xa70>
   104cc:	0df14703          	lbu	a4,223(sp)
   104d0:	c70d                	beqz	a4,104fa <_vfprintf_r+0x210>
   104d2:	11812703          	lw	a4,280(sp)
   104d6:	0df10693          	addi	a3,sp,223
   104da:	00d33023          	sd	a3,0(t1)
   104de:	2705                	addiw	a4,a4,1
   104e0:	4685                	li	a3,1
   104e2:	0785                	addi	a5,a5,1
   104e4:	00d33423          	sd	a3,8(t1)
   104e8:	10e12c23          	sw	a4,280(sp)
   104ec:	0007069b          	sext.w	a3,a4
   104f0:	f23e                	sd	a5,288(sp)
   104f2:	471d                	li	a4,7
   104f4:	0341                	addi	t1,t1,16
   104f6:	28d74463          	blt	a4,a3,1077e <_vfprintf_r+0x494>
   104fa:	02028563          	beqz	t0,10524 <_vfprintf_r+0x23a>
   104fe:	11812703          	lw	a4,280(sp)
   10502:	1194                	addi	a3,sp,224
   10504:	00d33023          	sd	a3,0(t1)
   10508:	2705                	addiw	a4,a4,1
   1050a:	4689                	li	a3,2
   1050c:	0789                	addi	a5,a5,2
   1050e:	00d33423          	sd	a3,8(t1)
   10512:	10e12c23          	sw	a4,280(sp)
   10516:	0007069b          	sext.w	a3,a4
   1051a:	f23e                	sd	a5,288(sp)
   1051c:	471d                	li	a4,7
   1051e:	0341                	addi	t1,t1,16
   10520:	0cd747e3          	blt	a4,a3,10dee <_vfprintf_r+0xb04>
   10524:	08000713          	li	a4,128
   10528:	6eed8263          	beq	s11,a4,10c0c <_vfprintf_r+0x922>
   1052c:	417c0c3b          	subw	s8,s8,s7
   10530:	77804563          	bgtz	s8,10c9a <_vfprintf_r+0x9b0>
   10534:	1004f713          	andi	a4,s1,256
   10538:	60071263          	bnez	a4,10b3c <_vfprintf_r+0x852>
   1053c:	11812703          	lw	a4,280(sp)
   10540:	97de                	add	a5,a5,s7
   10542:	01933023          	sd	s9,0(t1)
   10546:	0017069b          	addiw	a3,a4,1
   1054a:	8736                	mv	a4,a3
   1054c:	01733423          	sd	s7,8(t1)
   10550:	10e12c23          	sw	a4,280(sp)
   10554:	f23e                	sd	a5,288(sp)
   10556:	471d                	li	a4,7
   10558:	2ed74363          	blt	a4,a3,1083e <_vfprintf_r+0x554>
   1055c:	0341                	addi	t1,t1,16
   1055e:	8891                	andi	s1,s1,4
   10560:	c489                	beqz	s1,1056a <_vfprintf_r+0x280>
   10562:	413a84bb          	subw	s1,s5,s3
   10566:	08904ee3          	bgtz	s1,10e02 <_vfprintf_r+0xb18>
   1056a:	8756                	mv	a4,s5
   1056c:	013ad363          	bge	s5,s3,10572 <_vfprintf_r+0x288>
   10570:	874e                	mv	a4,s3
   10572:	66a2                	ld	a3,8(sp)
   10574:	9f35                	addw	a4,a4,a3
   10576:	e43a                	sd	a4,8(sp)
   10578:	7a079263          	bnez	a5,10d1c <_vfprintf_r+0xa32>
   1057c:	67e2                	ld	a5,24(sp)
   1057e:	10012c23          	sw	zero,280(sp)
   10582:	c789                	beqz	a5,1058c <_vfprintf_r+0x2a2>
   10584:	65e2                	ld	a1,24(sp)
   10586:	8552                	mv	a0,s4
   10588:	002020ef          	jal	ra,1258a <_free_r>
   1058c:	835a                	mv	t1,s6
   1058e:	8ca2                	mv	s9,s0
   10590:	000cc783          	lbu	a5,0(s9)
   10594:	e2079fe3          	bnez	a5,103d2 <_vfprintf_r+0xe8>
   10598:	7792                	ld	a5,288(sp)
   1059a:	c399                	beqz	a5,105a0 <_vfprintf_r+0x2b6>
   1059c:	31a0106f          	j	118b6 <_vfprintf_r+0x15cc>
   105a0:	01095783          	lhu	a5,16(s2)
   105a4:	0407f793          	andi	a5,a5,64
   105a8:	c399                	beqz	a5,105ae <_vfprintf_r+0x2c4>
   105aa:	5b00106f          	j	11b5a <_vfprintf_r+0x1870>
   105ae:	27813083          	ld	ra,632(sp)
   105b2:	27013403          	ld	s0,624(sp)
   105b6:	6522                	ld	a0,8(sp)
   105b8:	26813483          	ld	s1,616(sp)
   105bc:	26013903          	ld	s2,608(sp)
   105c0:	25813983          	ld	s3,600(sp)
   105c4:	25013a03          	ld	s4,592(sp)
   105c8:	24813a83          	ld	s5,584(sp)
   105cc:	24013b03          	ld	s6,576(sp)
   105d0:	23813b83          	ld	s7,568(sp)
   105d4:	23013c03          	ld	s8,560(sp)
   105d8:	22813c83          	ld	s9,552(sp)
   105dc:	22013d03          	ld	s10,544(sp)
   105e0:	21813d83          	ld	s11,536(sp)
   105e4:	28010113          	addi	sp,sp,640
   105e8:	8082                	ret
   105ea:	0104e493          	ori	s1,s1,16
   105ee:	00044e03          	lbu	t3,0(s0)
   105f2:	2481                	sext.w	s1,s1
   105f4:	b599                	j	1043a <_vfprintf_r+0x150>
   105f6:	85ca                	mv	a1,s2
   105f8:	8552                	mv	a0,s4
   105fa:	02d010ef          	jal	ra,11e26 <__swsetup_r>
   105fe:	c119                	beqz	a0,10604 <_vfprintf_r+0x31a>
   10600:	55a0106f          	j	11b5a <_vfprintf_r+0x1870>
   10604:	01095783          	lhu	a5,16(s2)
   10608:	4729                	li	a4,10
   1060a:	8be9                	andi	a5,a5,26
   1060c:	d8e795e3          	bne	a5,a4,10396 <_vfprintf_r+0xac>
   10610:	01291783          	lh	a5,18(s2)
   10614:	d807c1e3          	bltz	a5,10396 <_vfprintf_r+0xac>
   10618:	66c2                	ld	a3,16(sp)
   1061a:	8666                	mv	a2,s9
   1061c:	85ca                	mv	a1,s2
   1061e:	8552                	mv	a0,s4
   10620:	772010ef          	jal	ra,11d92 <__sbprintf>
   10624:	e42a                	sd	a0,8(sp)
   10626:	b761                	j	105ae <_vfprintf_r+0x2c4>
   10628:	0104e493          	ori	s1,s1,16
   1062c:	2481                	sext.w	s1,s1
   1062e:	66c2                	ld	a3,16(sp)
   10630:	0204f793          	andi	a5,s1,32
   10634:	00868713          	addi	a4,a3,8 # 2008 <register_fini-0xe0a8>
   10638:	22078c63          	beqz	a5,10870 <_vfprintf_r+0x586>
   1063c:	629c                	ld	a5,0(a3)
   1063e:	89be                	mv	s3,a5
   10640:	2407ca63          	bltz	a5,10894 <_vfprintf_r+0x5aa>
   10644:	57fd                	li	a5,-1
   10646:	26fc01e3          	beq	s8,a5,110a8 <_vfprintf_r+0xdbe>
   1064a:	f7f4fd93          	andi	s11,s1,-129
   1064e:	e83a                	sd	a4,16(sp)
   10650:	2d81                	sext.w	s11,s11
   10652:	6e099863          	bnez	s3,10d42 <_vfprintf_r+0xa58>
   10656:	6e0c1963          	bnez	s8,10d48 <_vfprintf_r+0xa5e>
   1065a:	84ee                	mv	s1,s11
   1065c:	4c01                	li	s8,0
   1065e:	4b81                	li	s7,0
   10660:	18c10c93          	addi	s9,sp,396
   10664:	0df14783          	lbu	a5,223(sp)
   10668:	000b899b          	sext.w	s3,s7
   1066c:	018bd463          	bge	s7,s8,10674 <_vfprintf_r+0x38a>
   10670:	000c099b          	sext.w	s3,s8
   10674:	ec02                	sd	zero,24(sp)
   10676:	e882                	sd	zero,80(sp)
   10678:	ec82                	sd	zero,88(sp)
   1067a:	e482                	sd	zero,72(sp)
   1067c:	e2078ae3          	beqz	a5,104b0 <_vfprintf_r+0x1c6>
   10680:	2985                	addiw	s3,s3,1
   10682:	b53d                	j	104b0 <_vfprintf_r+0x1c6>
   10684:	0104e493          	ori	s1,s1,16
   10688:	2481                	sext.w	s1,s1
   1068a:	66c2                	ld	a3,16(sp)
   1068c:	0204f793          	andi	a5,s1,32
   10690:	00868713          	addi	a4,a3,8
   10694:	1a078f63          	beqz	a5,10852 <_vfprintf_r+0x568>
   10698:	0006b983          	ld	s3,0(a3)
   1069c:	bff4fd93          	andi	s11,s1,-1025
   106a0:	2d81                	sext.w	s11,s11
   106a2:	e83a                	sd	a4,16(sp)
   106a4:	4781                	li	a5,0
   106a6:	4701                	li	a4,0
   106a8:	0ce10fa3          	sb	a4,223(sp)
   106ac:	577d                	li	a4,-1
   106ae:	1eec0f63          	beq	s8,a4,108ac <_vfprintf_r+0x5c2>
   106b2:	f7fdf493          	andi	s1,s11,-129
   106b6:	2481                	sext.w	s1,s1
   106b8:	68099163          	bnez	s3,10d3a <_vfprintf_r+0xa50>
   106bc:	440c1363          	bnez	s8,10b02 <_vfprintf_r+0x818>
   106c0:	ffd1                	bnez	a5,1065c <_vfprintf_r+0x372>
   106c2:	001dfb93          	andi	s7,s11,1
   106c6:	18c10c93          	addi	s9,sp,396
   106ca:	f80b8de3          	beqz	s7,10664 <_vfprintf_r+0x37a>
   106ce:	03000793          	li	a5,48
   106d2:	18f105a3          	sb	a5,395(sp)
   106d6:	18b10c93          	addi	s9,sp,395
   106da:	b769                	j	10664 <_vfprintf_r+0x37a>
   106dc:	419404bb          	subw	s1,s0,s9
   106e0:	d00496e3          	bnez	s1,103ec <_vfprintf_r+0x102>
   106e4:	00044783          	lbu	a5,0(s0)
   106e8:	bb0d                	j	1041a <_vfprintf_r+0x130>
   106ea:	0a10                	addi	a2,sp,272
   106ec:	85ca                	mv	a1,s2
   106ee:	8552                	mv	a0,s4
   106f0:	5ba070ef          	jal	ra,17caa <__sprint_r>
   106f4:	ea0516e3          	bnez	a0,105a0 <_vfprintf_r+0x2b6>
   106f8:	835a                	mv	t1,s6
   106fa:	bb19                	j	10410 <_vfprintf_r+0x126>
   106fc:	0084f793          	andi	a5,s1,8
   10700:	180789e3          	beqz	a5,11092 <_vfprintf_r+0xda8>
   10704:	67c2                	ld	a5,16(sp)
   10706:	07bd                	addi	a5,a5,15
   10708:	ff07f713          	andi	a4,a5,-16
   1070c:	631c                	ld	a5,0(a4)
   1070e:	670c                	ld	a1,8(a4)
   10710:	0741                	addi	a4,a4,16
   10712:	e83a                	sd	a4,16(sp)
   10714:	0208                	addi	a0,sp,256
   10716:	ec1a                	sd	t1,24(sp)
   10718:	e23e                	sd	a5,256(sp)
   1071a:	e62e                	sd	a1,264(sp)
   1071c:	1aa040ef          	jal	ra,148c6 <_ldcheck>
   10720:	d5aa                	sw	a0,232(sp)
   10722:	4789                	li	a5,2
   10724:	6362                	ld	t1,24(sp)
   10726:	50f509e3          	beq	a0,a5,11438 <_vfprintf_r+0x114e>
   1072a:	4785                	li	a5,1
   1072c:	68f500e3          	beq	a0,a5,115ac <_vfprintf_r+0x12c2>
   10730:	06100793          	li	a5,97
   10734:	2efd09e3          	beq	s10,a5,11226 <_vfprintf_r+0xf3c>
   10738:	04100793          	li	a5,65
   1073c:	05800713          	li	a4,88
   10740:	2efd05e3          	beq	s10,a5,1122a <_vfprintf_r+0xf40>
   10744:	fdfd7713          	andi	a4,s10,-33
   10748:	57fd                	li	a5,-1
   1074a:	ecba                	sd	a4,88(sp)
   1074c:	00fc1463          	bne	s8,a5,10754 <_vfprintf_r+0x46a>
   10750:	5000106f          	j	11c50 <_vfprintf_r+0x1966>
   10754:	04700793          	li	a5,71
   10758:	00f71463          	bne	a4,a5,10760 <_vfprintf_r+0x476>
   1075c:	4e60106f          	j	11c42 <_vfprintf_r+0x1958>
   10760:	69b2                	ld	s3,264(sp)
   10762:	1004e793          	ori	a5,s1,256
   10766:	f526                	sd	s1,168(sp)
   10768:	6b92                	ld	s7,256(sp)
   1076a:	2781                	sext.w	a5,a5
   1076c:	0009d463          	bgez	s3,10774 <_vfprintf_r+0x48a>
   10770:	15e0106f          	j	118ce <_vfprintf_r+0x15e4>
   10774:	e582                	sd	zero,200(sp)
   10776:	84be                	mv	s1,a5
   10778:	ec02                	sd	zero,24(sp)
   1077a:	2f10006f          	j	1126a <_vfprintf_r+0xf80>
   1077e:	0a10                	addi	a2,sp,272
   10780:	85ca                	mv	a1,s2
   10782:	8552                	mv	a0,s4
   10784:	f816                	sd	t0,48(sp)
   10786:	524070ef          	jal	ra,17caa <__sprint_r>
   1078a:	5a051063          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   1078e:	7792                	ld	a5,288(sp)
   10790:	72c2                	ld	t0,48(sp)
   10792:	835a                	mv	t1,s6
   10794:	b39d                	j	104fa <_vfprintf_r+0x210>
   10796:	11812683          	lw	a3,280(sp)
   1079a:	00178d13          	addi	s10,a5,1
   1079e:	7782                	ld	a5,32(sp)
   107a0:	00168b9b          	addiw	s7,a3,1
   107a4:	4605                	li	a2,1
   107a6:	01933023          	sd	s9,0(t1)
   107aa:	86de                	mv	a3,s7
   107ac:	01030c13          	addi	s8,t1,16
   107b0:	7ef65e63          	bge	a2,a5,10fac <_vfprintf_r+0xcc2>
   107b4:	4605                	li	a2,1
   107b6:	10d12c23          	sw	a3,280(sp)
   107ba:	00c33423          	sd	a2,8(t1)
   107be:	f26a                	sd	s10,288(sp)
   107c0:	469d                	li	a3,7
   107c2:	3b76c2e3          	blt	a3,s7,11366 <_vfprintf_r+0x107c>
   107c6:	77a6                	ld	a5,104(sp)
   107c8:	7746                	ld	a4,112(sp)
   107ca:	2b85                	addiw	s7,s7,1
   107cc:	9d3e                	add	s10,s10,a5
   107ce:	00ec3023          	sd	a4,0(s8)
   107d2:	00fc3423          	sd	a5,8(s8)
   107d6:	f26a                	sd	s10,288(sp)
   107d8:	11712c23          	sw	s7,280(sp)
   107dc:	469d                	li	a3,7
   107de:	0c41                	addi	s8,s8,16
   107e0:	3b76c0e3          	blt	a3,s7,11380 <_vfprintf_r+0x1096>
   107e4:	6512                	ld	a0,256(sp)
   107e6:	65b2                	ld	a1,264(sp)
   107e8:	4681                	li	a3,0
   107ea:	4601                	li	a2,0
   107ec:	5c20a0ef          	jal	ra,1adae <__eqtf2>
   107f0:	7782                	ld	a5,32(sp)
   107f2:	fff7869b          	addiw	a3,a5,-1
   107f6:	7e050463          	beqz	a0,10fde <_vfprintf_r+0xcf4>
   107fa:	2b85                	addiw	s7,s7,1
   107fc:	001c8813          	addi	a6,s9,1
   10800:	865e                	mv	a2,s7
   10802:	9d36                	add	s10,s10,a3
   10804:	010c3023          	sd	a6,0(s8)
   10808:	00dc3423          	sd	a3,8(s8)
   1080c:	f26a                	sd	s10,288(sp)
   1080e:	10c12c23          	sw	a2,280(sp)
   10812:	469d                	li	a3,7
   10814:	0c41                	addi	s8,s8,16
   10816:	7b76c763          	blt	a3,s7,10fc4 <_vfprintf_r+0xcda>
   1081a:	7766                	ld	a4,120(sp)
   1081c:	1994                	addi	a3,sp,240
   1081e:	001b861b          	addiw	a2,s7,1
   10822:	01a707b3          	add	a5,a4,s10
   10826:	00dc3023          	sd	a3,0(s8)
   1082a:	00ec3423          	sd	a4,8(s8)
   1082e:	f23e                	sd	a5,288(sp)
   10830:	10c12c23          	sw	a2,280(sp)
   10834:	469d                	li	a3,7
   10836:	010c0313          	addi	t1,s8,16
   1083a:	d2c6d2e3          	bge	a3,a2,1055e <_vfprintf_r+0x274>
   1083e:	0a10                	addi	a2,sp,272
   10840:	85ca                	mv	a1,s2
   10842:	8552                	mv	a0,s4
   10844:	466070ef          	jal	ra,17caa <__sprint_r>
   10848:	4e051163          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   1084c:	7792                	ld	a5,288(sp)
   1084e:	835a                	mv	t1,s6
   10850:	b339                	j	1055e <_vfprintf_r+0x274>
   10852:	0104f793          	andi	a5,s1,16
   10856:	020799e3          	bnez	a5,11088 <_vfprintf_r+0xd9e>
   1085a:	66c2                	ld	a3,16(sp)
   1085c:	0404f793          	andi	a5,s1,64
   10860:	0006a983          	lw	s3,0(a3)
   10864:	4c0782e3          	beqz	a5,11528 <_vfprintf_r+0x123e>
   10868:	19c2                	slli	s3,s3,0x30
   1086a:	0309d993          	srli	s3,s3,0x30
   1086e:	b53d                	j	1069c <_vfprintf_r+0x3b2>
   10870:	0104f793          	andi	a5,s1,16
   10874:	7e079e63          	bnez	a5,11070 <_vfprintf_r+0xd86>
   10878:	66c2                	ld	a3,16(sp)
   1087a:	0404f793          	andi	a5,s1,64
   1087e:	0006a983          	lw	s3,0(a3)
   10882:	4a078be3          	beqz	a5,11538 <_vfprintf_r+0x124e>
   10886:	0109999b          	slliw	s3,s3,0x10
   1088a:	4109d99b          	sraiw	s3,s3,0x10
   1088e:	87ce                	mv	a5,s3
   10890:	da07dae3          	bgez	a5,10644 <_vfprintf_r+0x35a>
   10894:	e83a                	sd	a4,16(sp)
   10896:	02d00713          	li	a4,45
   1089a:	0ce10fa3          	sb	a4,223(sp)
   1089e:	577d                	li	a4,-1
   108a0:	413009b3          	neg	s3,s3
   108a4:	8da6                	mv	s11,s1
   108a6:	4785                	li	a5,1
   108a8:	e0ec15e3          	bne	s8,a4,106b2 <_vfprintf_r+0x3c8>
   108ac:	4705                	li	a4,1
   108ae:	48e78a63          	beq	a5,a4,10d42 <_vfprintf_r+0xa58>
   108b2:	4709                	li	a4,2
   108b4:	26e78063          	beq	a5,a4,10b14 <_vfprintf_r+0x82a>
   108b8:	18c10b93          	addi	s7,sp,396
   108bc:	8cde                	mv	s9,s7
   108be:	0079f793          	andi	a5,s3,7
   108c2:	03078793          	addi	a5,a5,48
   108c6:	fefc8fa3          	sb	a5,-1(s9)
   108ca:	0039d993          	srli	s3,s3,0x3
   108ce:	8766                	mv	a4,s9
   108d0:	1cfd                	addi	s9,s9,-1
   108d2:	fe0996e3          	bnez	s3,108be <_vfprintf_r+0x5d4>
   108d6:	001df693          	andi	a3,s11,1
   108da:	24068d63          	beqz	a3,10b34 <_vfprintf_r+0x84a>
   108de:	03000693          	li	a3,48
   108e2:	24d78963          	beq	a5,a3,10b34 <_vfprintf_r+0x84a>
   108e6:	1779                	addi	a4,a4,-2
   108e8:	fedc8fa3          	sb	a3,-1(s9)
   108ec:	40eb8bbb          	subw	s7,s7,a4
   108f0:	84ee                	mv	s1,s11
   108f2:	8cba                	mv	s9,a4
   108f4:	bb85                	j	10664 <_vfprintf_r+0x37a>
   108f6:	8552                	mv	a0,s4
   108f8:	363010ef          	jal	ra,1245a <__sinit>
   108fc:	b4b9                	j	1034a <_vfprintf_r+0x60>
   108fe:	67c2                	ld	a5,16(sp)
   10900:	0c010fa3          	sb	zero,223(sp)
   10904:	0007bc83          	ld	s9,0(a5)
   10908:	00878d93          	addi	s11,a5,8
   1090c:	0a0c8be3          	beqz	s9,111c2 <_vfprintf_r+0xed8>
   10910:	57fd                	li	a5,-1
   10912:	36fc0ae3          	beq	s8,a5,11486 <_vfprintf_r+0x119c>
   10916:	8662                	mv	a2,s8
   10918:	4581                	li	a1,0
   1091a:	8566                	mv	a0,s9
   1091c:	e81a                	sd	t1,16(sp)
   1091e:	7ae040ef          	jal	ra,150cc <memchr>
   10922:	ec2a                	sd	a0,24(sp)
   10924:	6342                	ld	t1,16(sp)
   10926:	e119                	bnez	a0,1092c <_vfprintf_r+0x642>
   10928:	1a40106f          	j	11acc <_vfprintf_r+0x17e2>
   1092c:	67e2                	ld	a5,24(sp)
   1092e:	e86e                	sd	s11,16(sp)
   10930:	ec02                	sd	zero,24(sp)
   10932:	41978bbb          	subw	s7,a5,s9
   10936:	0df14783          	lbu	a5,223(sp)
   1093a:	fffbc993          	not	s3,s7
   1093e:	43f9d993          	srai	s3,s3,0x3f
   10942:	e882                	sd	zero,80(sp)
   10944:	ec82                	sd	zero,88(sp)
   10946:	e482                	sd	zero,72(sp)
   10948:	0179f9b3          	and	s3,s3,s7
   1094c:	4c01                	li	s8,0
   1094e:	d20799e3          	bnez	a5,10680 <_vfprintf_r+0x396>
   10952:	beb9                	j	104b0 <_vfprintf_r+0x1c6>
   10954:	6742                	ld	a4,16(sp)
   10956:	0c010fa3          	sb	zero,223(sp)
   1095a:	4985                	li	s3,1
   1095c:	431c                	lw	a5,0(a4)
   1095e:	0721                	addi	a4,a4,8
   10960:	e83a                	sd	a4,16(sp)
   10962:	12f10423          	sb	a5,296(sp)
   10966:	4b85                	li	s7,1
   10968:	12810c93          	addi	s9,sp,296
   1096c:	be2d                	j	104a6 <_vfprintf_r+0x1bc>
   1096e:	67c2                	ld	a5,16(sp)
   10970:	0007aa83          	lw	s5,0(a5)
   10974:	07a1                	addi	a5,a5,8
   10976:	6e0ad363          	bgez	s5,1105c <_vfprintf_r+0xd72>
   1097a:	41500abb          	negw	s5,s5
   1097e:	e83e                	sd	a5,16(sp)
   10980:	0044e493          	ori	s1,s1,4
   10984:	00044e03          	lbu	t3,0(s0)
   10988:	2481                	sext.w	s1,s1
   1098a:	bc45                	j	1043a <_vfprintf_r+0x150>
   1098c:	02b00793          	li	a5,43
   10990:	00044e03          	lbu	t3,0(s0)
   10994:	0cf10fa3          	sb	a5,223(sp)
   10998:	b44d                	j	1043a <_vfprintf_r+0x150>
   1099a:	0804e493          	ori	s1,s1,128
   1099e:	00044e03          	lbu	t3,0(s0)
   109a2:	2481                	sext.w	s1,s1
   109a4:	bc59                	j	1043a <_vfprintf_r+0x150>
   109a6:	00044d03          	lbu	s10,0(s0)
   109aa:	00140793          	addi	a5,s0,1
   109ae:	00dd1463          	bne	s10,a3,109b6 <_vfprintf_r+0x6cc>
   109b2:	39a0106f          	j	11d4c <_vfprintf_r+0x1a62>
   109b6:	fd0d071b          	addiw	a4,s10,-48
   109ba:	843e                	mv	s0,a5
   109bc:	4c01                	li	s8,0
   109be:	a8ede3e3          	bltu	s11,a4,10444 <_vfprintf_r+0x15a>
   109c2:	00044d03          	lbu	s10,0(s0)
   109c6:	002c179b          	slliw	a5,s8,0x2
   109ca:	018787bb          	addw	a5,a5,s8
   109ce:	0017979b          	slliw	a5,a5,0x1
   109d2:	00e78c3b          	addw	s8,a5,a4
   109d6:	fd0d071b          	addiw	a4,s10,-48
   109da:	0405                	addi	s0,s0,1
   109dc:	feedf3e3          	bgeu	s11,a4,109c2 <_vfprintf_r+0x6d8>
   109e0:	b495                	j	10444 <_vfprintf_r+0x15a>
   109e2:	8552                	mv	a0,s4
   109e4:	ec1a                	sd	t1,24(sp)
   109e6:	729030ef          	jal	ra,1490e <_localeconv_r>
   109ea:	651c                	ld	a5,8(a0)
   109ec:	853e                	mv	a0,a5
   109ee:	e53e                	sd	a5,136(sp)
   109f0:	6c8050ef          	jal	ra,160b8 <strlen>
   109f4:	87aa                	mv	a5,a0
   109f6:	8552                	mv	a0,s4
   109f8:	8d3e                	mv	s10,a5
   109fa:	e13e                	sd	a5,128(sp)
   109fc:	713030ef          	jal	ra,1490e <_localeconv_r>
   10a00:	691c                	ld	a5,16(a0)
   10a02:	6362                	ld	t1,24(sp)
   10a04:	00044e03          	lbu	t3,0(s0)
   10a08:	f0be                	sd	a5,96(sp)
   10a0a:	a20d08e3          	beqz	s10,1043a <_vfprintf_r+0x150>
   10a0e:	a20786e3          	beqz	a5,1043a <_vfprintf_r+0x150>
   10a12:	0007c783          	lbu	a5,0(a5)
   10a16:	a20782e3          	beqz	a5,1043a <_vfprintf_r+0x150>
   10a1a:	4004e493          	ori	s1,s1,1024
   10a1e:	2481                	sext.w	s1,s1
   10a20:	bc29                	j	1043a <_vfprintf_r+0x150>
   10a22:	0014e493          	ori	s1,s1,1
   10a26:	00044e03          	lbu	t3,0(s0)
   10a2a:	2481                	sext.w	s1,s1
   10a2c:	b439                	j	1043a <_vfprintf_r+0x150>
   10a2e:	0df14783          	lbu	a5,223(sp)
   10a32:	00044e03          	lbu	t3,0(s0)
   10a36:	a00792e3          	bnez	a5,1043a <_vfprintf_r+0x150>
   10a3a:	02000793          	li	a5,32
   10a3e:	0cf10fa3          	sb	a5,223(sp)
   10a42:	bae5                	j	1043a <_vfprintf_r+0x150>
   10a44:	0084e493          	ori	s1,s1,8
   10a48:	00044e03          	lbu	t3,0(s0)
   10a4c:	2481                	sext.w	s1,s1
   10a4e:	b2f5                	j	1043a <_vfprintf_r+0x150>
   10a50:	0104ed93          	ori	s11,s1,16
   10a54:	2d81                	sext.w	s11,s11
   10a56:	66c2                	ld	a3,16(sp)
   10a58:	020df793          	andi	a5,s11,32
   10a5c:	00868713          	addi	a4,a3,8
   10a60:	5c078863          	beqz	a5,11030 <_vfprintf_r+0xd46>
   10a64:	0006b983          	ld	s3,0(a3)
   10a68:	4785                	li	a5,1
   10a6a:	e83a                	sd	a4,16(sp)
   10a6c:	b92d                	j	106a6 <_vfprintf_r+0x3bc>
   10a6e:	0204e493          	ori	s1,s1,32
   10a72:	00044e03          	lbu	t3,0(s0)
   10a76:	2481                	sext.w	s1,s1
   10a78:	b2c9                	j	1043a <_vfprintf_r+0x150>
   10a7a:	6742                	ld	a4,16(sp)
   10a7c:	77e1                	lui	a5,0xffff8
   10a7e:	8307c793          	xori	a5,a5,-2000
   10a82:	0ef11023          	sh	a5,224(sp)
   10a86:	00870793          	addi	a5,a4,8 # ffffffffffffe008 <__BSS_END__+0xfffffffffffdec88>
   10a8a:	e83e                	sd	a5,16(sp)
   10a8c:	67f1                	lui	a5,0x1c
   10a8e:	28078793          	addi	a5,a5,640 # 1c280 <__clzdi2+0x68>
   10a92:	0024ed93          	ori	s11,s1,2
   10a96:	f43e                	sd	a5,40(sp)
   10a98:	00073983          	ld	s3,0(a4)
   10a9c:	2d81                	sext.w	s11,s11
   10a9e:	4789                	li	a5,2
   10aa0:	07800d13          	li	s10,120
   10aa4:	b109                	j	106a6 <_vfprintf_r+0x3bc>
   10aa6:	66c2                	ld	a3,16(sp)
   10aa8:	0204f793          	andi	a5,s1,32
   10aac:	6298                	ld	a4,0(a3)
   10aae:	06a1                	addi	a3,a3,8
   10ab0:	e836                	sd	a3,16(sp)
   10ab2:	5a079a63          	bnez	a5,11066 <_vfprintf_r+0xd7c>
   10ab6:	0104f793          	andi	a5,s1,16
   10aba:	5a079663          	bnez	a5,11066 <_vfprintf_r+0xd7c>
   10abe:	0404f793          	andi	a5,s1,64
   10ac2:	5c0791e3          	bnez	a5,11884 <_vfprintf_r+0x159a>
   10ac6:	2004f493          	andi	s1,s1,512
   10aca:	67a2                	ld	a5,8(sp)
   10acc:	e099                	bnez	s1,10ad2 <_vfprintf_r+0x7e8>
   10ace:	1880106f          	j	11c56 <_vfprintf_r+0x196c>
   10ad2:	00f70023          	sb	a5,0(a4)
   10ad6:	8ca2                	mv	s9,s0
   10ad8:	bc65                	j	10590 <_vfprintf_r+0x2a6>
   10ada:	00044e03          	lbu	t3,0(s0)
   10ade:	06c00793          	li	a5,108
   10ae2:	6afe0e63          	beq	t3,a5,1119e <_vfprintf_r+0xeb4>
   10ae6:	0104e493          	ori	s1,s1,16
   10aea:	2481                	sext.w	s1,s1
   10aec:	b2b9                	j	1043a <_vfprintf_r+0x150>
   10aee:	00044e03          	lbu	t3,0(s0)
   10af2:	06800793          	li	a5,104
   10af6:	68fe0763          	beq	t3,a5,11184 <_vfprintf_r+0xe9a>
   10afa:	0404e493          	ori	s1,s1,64
   10afe:	2481                	sext.w	s1,s1
   10b00:	ba2d                	j	1043a <_vfprintf_r+0x150>
   10b02:	4705                	li	a4,1
   10b04:	00e79463          	bne	a5,a4,10b0c <_vfprintf_r+0x822>
   10b08:	12a0106f          	j	11c32 <_vfprintf_r+0x1948>
   10b0c:	4709                	li	a4,2
   10b0e:	8da6                	mv	s11,s1
   10b10:	dae794e3          	bne	a5,a4,108b8 <_vfprintf_r+0x5ce>
   10b14:	18c10b93          	addi	s7,sp,396
   10b18:	8cde                	mv	s9,s7
   10b1a:	7722                	ld	a4,40(sp)
   10b1c:	00f9f793          	andi	a5,s3,15
   10b20:	1cfd                	addi	s9,s9,-1
   10b22:	97ba                	add	a5,a5,a4
   10b24:	0007c783          	lbu	a5,0(a5)
   10b28:	0049d993          	srli	s3,s3,0x4
   10b2c:	00fc8023          	sb	a5,0(s9)
   10b30:	fe0995e3          	bnez	s3,10b1a <_vfprintf_r+0x830>
   10b34:	419b8bbb          	subw	s7,s7,s9
   10b38:	84ee                	mv	s1,s11
   10b3a:	b62d                	j	10664 <_vfprintf_r+0x37a>
   10b3c:	06500713          	li	a4,101
   10b40:	c5a75be3          	bge	a4,s10,10796 <_vfprintf_r+0x4ac>
   10b44:	6512                	ld	a0,256(sp)
   10b46:	65b2                	ld	a1,264(sp)
   10b48:	4601                	li	a2,0
   10b4a:	4681                	li	a3,0
   10b4c:	fc3e                	sd	a5,56(sp)
   10b4e:	f81a                	sd	t1,48(sp)
   10b50:	25e0a0ef          	jal	ra,1adae <__eqtf2>
   10b54:	7342                	ld	t1,48(sp)
   10b56:	77e2                	ld	a5,56(sp)
   10b58:	32051663          	bnez	a0,10e84 <_vfprintf_r+0xb9a>
   10b5c:	11812703          	lw	a4,280(sp)
   10b60:	66f1                	lui	a3,0x1c
   10b62:	2b868693          	addi	a3,a3,696 # 1c2b8 <__clzdi2+0xa0>
   10b66:	2705                	addiw	a4,a4,1
   10b68:	00d33023          	sd	a3,0(t1)
   10b6c:	0785                	addi	a5,a5,1
   10b6e:	4685                	li	a3,1
   10b70:	00d33423          	sd	a3,8(t1)
   10b74:	10e12c23          	sw	a4,280(sp)
   10b78:	0007069b          	sext.w	a3,a4
   10b7c:	f23e                	sd	a5,288(sp)
   10b7e:	471d                	li	a4,7
   10b80:	0341                	addi	t1,t1,16
   10b82:	08d748e3          	blt	a4,a3,11412 <_vfprintf_r+0x1128>
   10b86:	572e                	lw	a4,232(sp)
   10b88:	7682                	ld	a3,32(sp)
   10b8a:	4cd75463          	bge	a4,a3,11052 <_vfprintf_r+0xd68>
   10b8e:	76a6                	ld	a3,104(sp)
   10b90:	11812703          	lw	a4,280(sp)
   10b94:	7646                	ld	a2,112(sp)
   10b96:	97b6                	add	a5,a5,a3
   10b98:	2705                	addiw	a4,a4,1
   10b9a:	00d33423          	sd	a3,8(t1)
   10b9e:	00c33023          	sd	a2,0(t1)
   10ba2:	0007069b          	sext.w	a3,a4
   10ba6:	10e12c23          	sw	a4,280(sp)
   10baa:	f23e                	sd	a5,288(sp)
   10bac:	471d                	li	a4,7
   10bae:	0341                	addi	t1,t1,16
   10bb0:	5ed74f63          	blt	a4,a3,111ae <_vfprintf_r+0xec4>
   10bb4:	7702                	ld	a4,32(sp)
   10bb6:	fff70b9b          	addiw	s7,a4,-1
   10bba:	9b7052e3          	blez	s7,1055e <_vfprintf_r+0x274>
   10bbe:	68f1                	lui	a7,0x1c
   10bc0:	46c1                	li	a3,16
   10bc2:	11812703          	lw	a4,280(sp)
   10bc6:	4d888d93          	addi	s11,a7,1240 # 1c4d8 <zeroes.0>
   10bca:	4cc1                	li	s9,16
   10bcc:	4c1d                	li	s8,7
   10bce:	0176c763          	blt	a3,s7,10bdc <_vfprintf_r+0x8f2>
   10bd2:	0570006f          	j	11428 <_vfprintf_r+0x113e>
   10bd6:	3bc1                	addiw	s7,s7,-16
   10bd8:	057cd8e3          	bge	s9,s7,11428 <_vfprintf_r+0x113e>
   10bdc:	2705                	addiw	a4,a4,1
   10bde:	07c1                	addi	a5,a5,16
   10be0:	01b33023          	sd	s11,0(t1)
   10be4:	01933423          	sd	s9,8(t1)
   10be8:	f23e                	sd	a5,288(sp)
   10bea:	10e12c23          	sw	a4,280(sp)
   10bee:	0341                	addi	t1,t1,16
   10bf0:	feec53e3          	bge	s8,a4,10bd6 <_vfprintf_r+0x8ec>
   10bf4:	0a10                	addi	a2,sp,272
   10bf6:	85ca                	mv	a1,s2
   10bf8:	8552                	mv	a0,s4
   10bfa:	0b0070ef          	jal	ra,17caa <__sprint_r>
   10bfe:	12051663          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   10c02:	7792                	ld	a5,288(sp)
   10c04:	11812703          	lw	a4,280(sp)
   10c08:	835a                	mv	t1,s6
   10c0a:	b7f1                	j	10bd6 <_vfprintf_r+0x8ec>
   10c0c:	413a86bb          	subw	a3,s5,s3
   10c10:	90d05ee3          	blez	a3,1052c <_vfprintf_r+0x242>
   10c14:	68f1                	lui	a7,0x1c
   10c16:	4641                	li	a2,16
   10c18:	11812703          	lw	a4,280(sp)
   10c1c:	4d888d93          	addi	s11,a7,1240 # 1c4d8 <zeroes.0>
   10c20:	4f41                	li	t5,16
   10c22:	4f9d                	li	t6,7
   10c24:	00d64663          	blt	a2,a3,10c30 <_vfprintf_r+0x946>
   10c28:	a089                	j	10c6a <_vfprintf_r+0x980>
   10c2a:	36c1                	addiw	a3,a3,-16
   10c2c:	02df5f63          	bge	t5,a3,10c6a <_vfprintf_r+0x980>
   10c30:	2705                	addiw	a4,a4,1
   10c32:	07c1                	addi	a5,a5,16
   10c34:	01b33023          	sd	s11,0(t1)
   10c38:	01e33423          	sd	t5,8(t1)
   10c3c:	f23e                	sd	a5,288(sp)
   10c3e:	10e12c23          	sw	a4,280(sp)
   10c42:	0341                	addi	t1,t1,16
   10c44:	feefd3e3          	bge	t6,a4,10c2a <_vfprintf_r+0x940>
   10c48:	0a10                	addi	a2,sp,272
   10c4a:	85ca                	mv	a1,s2
   10c4c:	8552                	mv	a0,s4
   10c4e:	f836                	sd	a3,48(sp)
   10c50:	05a070ef          	jal	ra,17caa <__sprint_r>
   10c54:	e979                	bnez	a0,10d2a <_vfprintf_r+0xa40>
   10c56:	76c2                	ld	a3,48(sp)
   10c58:	4f41                	li	t5,16
   10c5a:	7792                	ld	a5,288(sp)
   10c5c:	36c1                	addiw	a3,a3,-16
   10c5e:	11812703          	lw	a4,280(sp)
   10c62:	835a                	mv	t1,s6
   10c64:	4f9d                	li	t6,7
   10c66:	fcdf45e3          	blt	t5,a3,10c30 <_vfprintf_r+0x946>
   10c6a:	2705                	addiw	a4,a4,1
   10c6c:	97b6                	add	a5,a5,a3
   10c6e:	00d33423          	sd	a3,8(t1)
   10c72:	01b33023          	sd	s11,0(t1)
   10c76:	0007069b          	sext.w	a3,a4
   10c7a:	10e12c23          	sw	a4,280(sp)
   10c7e:	f23e                	sd	a5,288(sp)
   10c80:	471d                	li	a4,7
   10c82:	0341                	addi	t1,t1,16
   10c84:	8ad754e3          	bge	a4,a3,1052c <_vfprintf_r+0x242>
   10c88:	0a10                	addi	a2,sp,272
   10c8a:	85ca                	mv	a1,s2
   10c8c:	8552                	mv	a0,s4
   10c8e:	01c070ef          	jal	ra,17caa <__sprint_r>
   10c92:	ed41                	bnez	a0,10d2a <_vfprintf_r+0xa40>
   10c94:	7792                	ld	a5,288(sp)
   10c96:	835a                	mv	t1,s6
   10c98:	b851                	j	1052c <_vfprintf_r+0x242>
   10c9a:	68f1                	lui	a7,0x1c
   10c9c:	4641                	li	a2,16
   10c9e:	11812703          	lw	a4,280(sp)
   10ca2:	4d888d93          	addi	s11,a7,1240 # 1c4d8 <zeroes.0>
   10ca6:	4ec1                	li	t4,16
   10ca8:	4f1d                	li	t5,7
   10caa:	01864663          	blt	a2,s8,10cb6 <_vfprintf_r+0x9cc>
   10cae:	a83d                	j	10cec <_vfprintf_r+0xa02>
   10cb0:	3c41                	addiw	s8,s8,-16
   10cb2:	038edd63          	bge	t4,s8,10cec <_vfprintf_r+0xa02>
   10cb6:	2705                	addiw	a4,a4,1
   10cb8:	07c1                	addi	a5,a5,16
   10cba:	01b33023          	sd	s11,0(t1)
   10cbe:	01d33423          	sd	t4,8(t1)
   10cc2:	f23e                	sd	a5,288(sp)
   10cc4:	10e12c23          	sw	a4,280(sp)
   10cc8:	0341                	addi	t1,t1,16
   10cca:	feef53e3          	bge	t5,a4,10cb0 <_vfprintf_r+0x9c6>
   10cce:	0a10                	addi	a2,sp,272
   10cd0:	85ca                	mv	a1,s2
   10cd2:	8552                	mv	a0,s4
   10cd4:	7d7060ef          	jal	ra,17caa <__sprint_r>
   10cd8:	e929                	bnez	a0,10d2a <_vfprintf_r+0xa40>
   10cda:	4ec1                	li	t4,16
   10cdc:	3c41                	addiw	s8,s8,-16
   10cde:	7792                	ld	a5,288(sp)
   10ce0:	11812703          	lw	a4,280(sp)
   10ce4:	835a                	mv	t1,s6
   10ce6:	4f1d                	li	t5,7
   10ce8:	fd8ec7e3          	blt	t4,s8,10cb6 <_vfprintf_r+0x9cc>
   10cec:	0017069b          	addiw	a3,a4,1
   10cf0:	97e2                	add	a5,a5,s8
   10cf2:	01b33023          	sd	s11,0(t1)
   10cf6:	01833423          	sd	s8,8(t1)
   10cfa:	f23e                	sd	a5,288(sp)
   10cfc:	10d12c23          	sw	a3,280(sp)
   10d00:	471d                	li	a4,7
   10d02:	0341                	addi	t1,t1,16
   10d04:	82d758e3          	bge	a4,a3,10534 <_vfprintf_r+0x24a>
   10d08:	0a10                	addi	a2,sp,272
   10d0a:	85ca                	mv	a1,s2
   10d0c:	8552                	mv	a0,s4
   10d0e:	79d060ef          	jal	ra,17caa <__sprint_r>
   10d12:	ed01                	bnez	a0,10d2a <_vfprintf_r+0xa40>
   10d14:	7792                	ld	a5,288(sp)
   10d16:	835a                	mv	t1,s6
   10d18:	81dff06f          	j	10534 <_vfprintf_r+0x24a>
   10d1c:	0a10                	addi	a2,sp,272
   10d1e:	85ca                	mv	a1,s2
   10d20:	8552                	mv	a0,s4
   10d22:	789060ef          	jal	ra,17caa <__sprint_r>
   10d26:	84050be3          	beqz	a0,1057c <_vfprintf_r+0x292>
   10d2a:	67e2                	ld	a5,24(sp)
   10d2c:	86078ae3          	beqz	a5,105a0 <_vfprintf_r+0x2b6>
   10d30:	85be                	mv	a1,a5
   10d32:	8552                	mv	a0,s4
   10d34:	057010ef          	jal	ra,1258a <_free_r>
   10d38:	b0a5                	j	105a0 <_vfprintf_r+0x2b6>
   10d3a:	4705                	li	a4,1
   10d3c:	8da6                	mv	s11,s1
   10d3e:	b6e79ae3          	bne	a5,a4,108b2 <_vfprintf_r+0x5c8>
   10d42:	47a5                	li	a5,9
   10d44:	3737e763          	bltu	a5,s3,110b2 <_vfprintf_r+0xdc8>
   10d48:	0309899b          	addiw	s3,s3,48
   10d4c:	193105a3          	sb	s3,395(sp)
   10d50:	84ee                	mv	s1,s11
   10d52:	4b85                	li	s7,1
   10d54:	18b10c93          	addi	s9,sp,395
   10d58:	b231                	j	10664 <_vfprintf_r+0x37a>
   10d5a:	68f1                	lui	a7,0x1c
   10d5c:	4641                	li	a2,16
   10d5e:	11812703          	lw	a4,280(sp)
   10d62:	4c888893          	addi	a7,a7,1224 # 1c4c8 <blanks.1>
   10d66:	4f41                	li	t5,16
   10d68:	439d                	li	t2,7
   10d6a:	00d64663          	blt	a2,a3,10d76 <_vfprintf_r+0xa8c>
   10d6e:	a0a9                	j	10db8 <_vfprintf_r+0xace>
   10d70:	36c1                	addiw	a3,a3,-16
   10d72:	04df5363          	bge	t5,a3,10db8 <_vfprintf_r+0xace>
   10d76:	2705                	addiw	a4,a4,1
   10d78:	07c1                	addi	a5,a5,16
   10d7a:	01133023          	sd	a7,0(t1)
   10d7e:	01e33423          	sd	t5,8(t1)
   10d82:	f23e                	sd	a5,288(sp)
   10d84:	10e12c23          	sw	a4,280(sp)
   10d88:	0341                	addi	t1,t1,16
   10d8a:	fee3d3e3          	bge	t2,a4,10d70 <_vfprintf_r+0xa86>
   10d8e:	0a10                	addi	a2,sp,272
   10d90:	85ca                	mv	a1,s2
   10d92:	8552                	mv	a0,s4
   10d94:	e0c6                	sd	a7,64(sp)
   10d96:	fc36                	sd	a3,56(sp)
   10d98:	f816                	sd	t0,48(sp)
   10d9a:	711060ef          	jal	ra,17caa <__sprint_r>
   10d9e:	f551                	bnez	a0,10d2a <_vfprintf_r+0xa40>
   10da0:	76e2                	ld	a3,56(sp)
   10da2:	4f41                	li	t5,16
   10da4:	7792                	ld	a5,288(sp)
   10da6:	36c1                	addiw	a3,a3,-16
   10da8:	11812703          	lw	a4,280(sp)
   10dac:	6886                	ld	a7,64(sp)
   10dae:	72c2                	ld	t0,48(sp)
   10db0:	835a                	mv	t1,s6
   10db2:	439d                	li	t2,7
   10db4:	fcdf41e3          	blt	t5,a3,10d76 <_vfprintf_r+0xa8c>
   10db8:	2705                	addiw	a4,a4,1
   10dba:	97b6                	add	a5,a5,a3
   10dbc:	00d33423          	sd	a3,8(t1)
   10dc0:	01133023          	sd	a7,0(t1)
   10dc4:	0007069b          	sext.w	a3,a4
   10dc8:	10e12c23          	sw	a4,280(sp)
   10dcc:	f23e                	sd	a5,288(sp)
   10dce:	471d                	li	a4,7
   10dd0:	0341                	addi	t1,t1,16
   10dd2:	eed75d63          	bge	a4,a3,104cc <_vfprintf_r+0x1e2>
   10dd6:	0a10                	addi	a2,sp,272
   10dd8:	85ca                	mv	a1,s2
   10dda:	8552                	mv	a0,s4
   10ddc:	f816                	sd	t0,48(sp)
   10dde:	6cd060ef          	jal	ra,17caa <__sprint_r>
   10de2:	f521                	bnez	a0,10d2a <_vfprintf_r+0xa40>
   10de4:	7792                	ld	a5,288(sp)
   10de6:	72c2                	ld	t0,48(sp)
   10de8:	835a                	mv	t1,s6
   10dea:	ee2ff06f          	j	104cc <_vfprintf_r+0x1e2>
   10dee:	0a10                	addi	a2,sp,272
   10df0:	85ca                	mv	a1,s2
   10df2:	8552                	mv	a0,s4
   10df4:	6b7060ef          	jal	ra,17caa <__sprint_r>
   10df8:	f90d                	bnez	a0,10d2a <_vfprintf_r+0xa40>
   10dfa:	7792                	ld	a5,288(sp)
   10dfc:	835a                	mv	t1,s6
   10dfe:	f26ff06f          	j	10524 <_vfprintf_r+0x23a>
   10e02:	68f1                	lui	a7,0x1c
   10e04:	46c1                	li	a3,16
   10e06:	11812703          	lw	a4,280(sp)
   10e0a:	4c888893          	addi	a7,a7,1224 # 1c4c8 <blanks.1>
   10e0e:	4bc1                	li	s7,16
   10e10:	4c1d                	li	s8,7
   10e12:	0096c663          	blt	a3,s1,10e1e <_vfprintf_r+0xb34>
   10e16:	a081                	j	10e56 <_vfprintf_r+0xb6c>
   10e18:	34c1                	addiw	s1,s1,-16
   10e1a:	029bde63          	bge	s7,s1,10e56 <_vfprintf_r+0xb6c>
   10e1e:	2705                	addiw	a4,a4,1
   10e20:	07c1                	addi	a5,a5,16
   10e22:	01133023          	sd	a7,0(t1)
   10e26:	01733423          	sd	s7,8(t1)
   10e2a:	f23e                	sd	a5,288(sp)
   10e2c:	10e12c23          	sw	a4,280(sp)
   10e30:	0341                	addi	t1,t1,16
   10e32:	feec53e3          	bge	s8,a4,10e18 <_vfprintf_r+0xb2e>
   10e36:	0a10                	addi	a2,sp,272
   10e38:	85ca                	mv	a1,s2
   10e3a:	8552                	mv	a0,s4
   10e3c:	f846                	sd	a7,48(sp)
   10e3e:	66d060ef          	jal	ra,17caa <__sprint_r>
   10e42:	ee0514e3          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   10e46:	34c1                	addiw	s1,s1,-16
   10e48:	7792                	ld	a5,288(sp)
   10e4a:	11812703          	lw	a4,280(sp)
   10e4e:	78c2                	ld	a7,48(sp)
   10e50:	835a                	mv	t1,s6
   10e52:	fc9bc6e3          	blt	s7,s1,10e1e <_vfprintf_r+0xb34>
   10e56:	0017069b          	addiw	a3,a4,1
   10e5a:	97a6                	add	a5,a5,s1
   10e5c:	01133023          	sd	a7,0(t1)
   10e60:	00933423          	sd	s1,8(t1)
   10e64:	f23e                	sd	a5,288(sp)
   10e66:	10d12c23          	sw	a3,280(sp)
   10e6a:	471d                	li	a4,7
   10e6c:	eed75f63          	bge	a4,a3,1056a <_vfprintf_r+0x280>
   10e70:	0a10                	addi	a2,sp,272
   10e72:	85ca                	mv	a1,s2
   10e74:	8552                	mv	a0,s4
   10e76:	635060ef          	jal	ra,17caa <__sprint_r>
   10e7a:	ea0518e3          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   10e7e:	7792                	ld	a5,288(sp)
   10e80:	eeaff06f          	j	1056a <_vfprintf_r+0x280>
   10e84:	562e                	lw	a2,232(sp)
   10e86:	50c05a63          	blez	a2,1139a <_vfprintf_r+0x10b0>
   10e8a:	6726                	ld	a4,72(sp)
   10e8c:	7682                	ld	a3,32(sp)
   10e8e:	00070b9b          	sext.w	s7,a4
   10e92:	2ae6c063          	blt	a3,a4,11132 <_vfprintf_r+0xe48>
   10e96:	03705263          	blez	s7,10eba <_vfprintf_r+0xbd0>
   10e9a:	11812703          	lw	a4,280(sp)
   10e9e:	97de                	add	a5,a5,s7
   10ea0:	01933023          	sd	s9,0(t1)
   10ea4:	0017069b          	addiw	a3,a4,1
   10ea8:	01733423          	sd	s7,8(t1)
   10eac:	f23e                	sd	a5,288(sp)
   10eae:	10d12c23          	sw	a3,280(sp)
   10eb2:	471d                	li	a4,7
   10eb4:	0341                	addi	t1,t1,16
   10eb6:	0ad74ae3          	blt	a4,a3,1176a <_vfprintf_r+0x1480>
   10eba:	fffbc713          	not	a4,s7
   10ebe:	977d                	srai	a4,a4,0x3f
   10ec0:	00ebfbb3          	and	s7,s7,a4
   10ec4:	6726                	ld	a4,72(sp)
   10ec6:	41770bbb          	subw	s7,a4,s7
   10eca:	31704863          	bgtz	s7,111da <_vfprintf_r+0xef0>
   10ece:	66a6                	ld	a3,72(sp)
   10ed0:	4004f713          	andi	a4,s1,1024
   10ed4:	00dc8c33          	add	s8,s9,a3
   10ed8:	70071f63          	bnez	a4,115f6 <_vfprintf_r+0x130c>
   10edc:	572e                	lw	a4,232(sp)
   10ede:	7682                	ld	a3,32(sp)
   10ee0:	00d74663          	blt	a4,a3,10eec <_vfprintf_r+0xc02>
   10ee4:	0014f693          	andi	a3,s1,1
   10ee8:	08068ee3          	beqz	a3,11784 <_vfprintf_r+0x149a>
   10eec:	7626                	ld	a2,104(sp)
   10eee:	11812683          	lw	a3,280(sp)
   10ef2:	75c6                	ld	a1,112(sp)
   10ef4:	97b2                	add	a5,a5,a2
   10ef6:	2685                	addiw	a3,a3,1
   10ef8:	00c33423          	sd	a2,8(t1)
   10efc:	00b33023          	sd	a1,0(t1)
   10f00:	0006861b          	sext.w	a2,a3
   10f04:	10d12c23          	sw	a3,280(sp)
   10f08:	f23e                	sd	a5,288(sp)
   10f0a:	469d                	li	a3,7
   10f0c:	0341                	addi	t1,t1,16
   10f0e:	3ac6c3e3          	blt	a3,a2,11ab4 <_vfprintf_r+0x17ca>
   10f12:	7682                	ld	a3,32(sp)
   10f14:	00dc8833          	add	a6,s9,a3
   10f18:	41880bb3          	sub	s7,a6,s8
   10f1c:	9e99                	subw	a3,a3,a4
   10f1e:	000b861b          	sext.w	a2,s7
   10f22:	00c6d363          	bge	a3,a2,10f28 <_vfprintf_r+0xc3e>
   10f26:	8bb6                	mv	s7,a3
   10f28:	2b81                	sext.w	s7,s7
   10f2a:	03705263          	blez	s7,10f4e <_vfprintf_r+0xc64>
   10f2e:	11812703          	lw	a4,280(sp)
   10f32:	97de                	add	a5,a5,s7
   10f34:	01833023          	sd	s8,0(t1)
   10f38:	0017061b          	addiw	a2,a4,1
   10f3c:	01733423          	sd	s7,8(t1)
   10f40:	f23e                	sd	a5,288(sp)
   10f42:	10c12c23          	sw	a2,280(sp)
   10f46:	471d                	li	a4,7
   10f48:	0341                	addi	t1,t1,16
   10f4a:	38c74fe3          	blt	a4,a2,11ae8 <_vfprintf_r+0x17fe>
   10f4e:	fffbc713          	not	a4,s7
   10f52:	977d                	srai	a4,a4,0x3f
   10f54:	00ebfbb3          	and	s7,s7,a4
   10f58:	41768bbb          	subw	s7,a3,s7
   10f5c:	e1705163          	blez	s7,1055e <_vfprintf_r+0x274>
   10f60:	68f1                	lui	a7,0x1c
   10f62:	46c1                	li	a3,16
   10f64:	11812703          	lw	a4,280(sp)
   10f68:	4d888d93          	addi	s11,a7,1240 # 1c4d8 <zeroes.0>
   10f6c:	4cc1                	li	s9,16
   10f6e:	4c1d                	li	s8,7
   10f70:	0176c663          	blt	a3,s7,10f7c <_vfprintf_r+0xc92>
   10f74:	a955                	j	11428 <_vfprintf_r+0x113e>
   10f76:	3bc1                	addiw	s7,s7,-16
   10f78:	4b7cd863          	bge	s9,s7,11428 <_vfprintf_r+0x113e>
   10f7c:	2705                	addiw	a4,a4,1
   10f7e:	07c1                	addi	a5,a5,16
   10f80:	01b33023          	sd	s11,0(t1)
   10f84:	01933423          	sd	s9,8(t1)
   10f88:	f23e                	sd	a5,288(sp)
   10f8a:	10e12c23          	sw	a4,280(sp)
   10f8e:	0341                	addi	t1,t1,16
   10f90:	feec53e3          	bge	s8,a4,10f76 <_vfprintf_r+0xc8c>
   10f94:	0a10                	addi	a2,sp,272
   10f96:	85ca                	mv	a1,s2
   10f98:	8552                	mv	a0,s4
   10f9a:	511060ef          	jal	ra,17caa <__sprint_r>
   10f9e:	d80516e3          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   10fa2:	7792                	ld	a5,288(sp)
   10fa4:	11812703          	lw	a4,280(sp)
   10fa8:	835a                	mv	t1,s6
   10faa:	b7f1                	j	10f76 <_vfprintf_r+0xc8c>
   10fac:	0014f593          	andi	a1,s1,1
   10fb0:	800592e3          	bnez	a1,107b4 <_vfprintf_r+0x4ca>
   10fb4:	00c33423          	sd	a2,8(t1)
   10fb8:	f26a                	sd	s10,288(sp)
   10fba:	11712c23          	sw	s7,280(sp)
   10fbe:	469d                	li	a3,7
   10fc0:	8576dde3          	bge	a3,s7,1081a <_vfprintf_r+0x530>
   10fc4:	0a10                	addi	a2,sp,272
   10fc6:	85ca                	mv	a1,s2
   10fc8:	8552                	mv	a0,s4
   10fca:	4e1060ef          	jal	ra,17caa <__sprint_r>
   10fce:	d4051ee3          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   10fd2:	7d12                	ld	s10,288(sp)
   10fd4:	11812b83          	lw	s7,280(sp)
   10fd8:	8c5a                	mv	s8,s6
   10fda:	841ff06f          	j	1081a <_vfprintf_r+0x530>
   10fde:	82d05ee3          	blez	a3,1081a <_vfprintf_r+0x530>
   10fe2:	68f1                	lui	a7,0x1c
   10fe4:	4641                	li	a2,16
   10fe6:	4d888d93          	addi	s11,a7,1240 # 1c4d8 <zeroes.0>
   10fea:	4841                	li	a6,16
   10fec:	4c9d                	li	s9,7
   10fee:	00d64663          	blt	a2,a3,10ffa <_vfprintf_r+0xd10>
   10ff2:	a159                	j	11478 <_vfprintf_r+0x118e>
   10ff4:	36c1                	addiw	a3,a3,-16
   10ff6:	48d85163          	bge	a6,a3,11478 <_vfprintf_r+0x118e>
   10ffa:	2b85                	addiw	s7,s7,1
   10ffc:	0d41                	addi	s10,s10,16
   10ffe:	01bc3023          	sd	s11,0(s8)
   11002:	010c3423          	sd	a6,8(s8)
   11006:	f26a                	sd	s10,288(sp)
   11008:	11712c23          	sw	s7,280(sp)
   1100c:	0c41                	addi	s8,s8,16
   1100e:	ff7cd3e3          	bge	s9,s7,10ff4 <_vfprintf_r+0xd0a>
   11012:	0a10                	addi	a2,sp,272
   11014:	85ca                	mv	a1,s2
   11016:	8552                	mv	a0,s4
   11018:	f836                	sd	a3,48(sp)
   1101a:	491060ef          	jal	ra,17caa <__sprint_r>
   1101e:	d00516e3          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   11022:	7d12                	ld	s10,288(sp)
   11024:	11812b83          	lw	s7,280(sp)
   11028:	76c2                	ld	a3,48(sp)
   1102a:	8c5a                	mv	s8,s6
   1102c:	4841                	li	a6,16
   1102e:	b7d9                	j	10ff4 <_vfprintf_r+0xd0a>
   11030:	010df793          	andi	a5,s11,16
   11034:	e3b9                	bnez	a5,1107a <_vfprintf_r+0xd90>
   11036:	66c2                	ld	a3,16(sp)
   11038:	040df793          	andi	a5,s11,64
   1103c:	0006a983          	lw	s3,0(a3)
   11040:	4c078363          	beqz	a5,11506 <_vfprintf_r+0x121c>
   11044:	19c2                	slli	s3,s3,0x30
   11046:	0309d993          	srli	s3,s3,0x30
   1104a:	e83a                	sd	a4,16(sp)
   1104c:	4785                	li	a5,1
   1104e:	e58ff06f          	j	106a6 <_vfprintf_r+0x3bc>
   11052:	0014f713          	andi	a4,s1,1
   11056:	d0070463          	beqz	a4,1055e <_vfprintf_r+0x274>
   1105a:	be15                	j	10b8e <_vfprintf_r+0x8a4>
   1105c:	00044e03          	lbu	t3,0(s0)
   11060:	e83e                	sd	a5,16(sp)
   11062:	bd8ff06f          	j	1043a <_vfprintf_r+0x150>
   11066:	67a2                	ld	a5,8(sp)
   11068:	8ca2                	mv	s9,s0
   1106a:	e31c                	sd	a5,0(a4)
   1106c:	d24ff06f          	j	10590 <_vfprintf_r+0x2a6>
   11070:	67c2                	ld	a5,16(sp)
   11072:	639c                	ld	a5,0(a5)
   11074:	89be                	mv	s3,a5
   11076:	dcaff06f          	j	10640 <_vfprintf_r+0x356>
   1107a:	67c2                	ld	a5,16(sp)
   1107c:	e83a                	sd	a4,16(sp)
   1107e:	0007b983          	ld	s3,0(a5)
   11082:	4785                	li	a5,1
   11084:	e22ff06f          	j	106a6 <_vfprintf_r+0x3bc>
   11088:	67c2                	ld	a5,16(sp)
   1108a:	0007b983          	ld	s3,0(a5)
   1108e:	e0eff06f          	j	1069c <_vfprintf_r+0x3b2>
   11092:	67c2                	ld	a5,16(sp)
   11094:	ec1a                	sd	t1,24(sp)
   11096:	2388                	fld	fa0,0(a5)
   11098:	07a1                	addi	a5,a5,8
   1109a:	e83e                	sd	a5,16(sp)
   1109c:	6990a0ef          	jal	ra,1bf34 <__extenddftf2>
   110a0:	6362                	ld	t1,24(sp)
   110a2:	87aa                	mv	a5,a0
   110a4:	e70ff06f          	j	10714 <_vfprintf_r+0x42a>
   110a8:	e83a                	sd	a4,16(sp)
   110aa:	47a5                	li	a5,9
   110ac:	8da6                	mv	s11,s1
   110ae:	c937fde3          	bgeu	a5,s3,10d48 <_vfprintf_r+0xa5e>
   110b2:	18c10b93          	addi	s7,sp,396
   110b6:	400df713          	andi	a4,s11,1024
   110ba:	f002                	sd	zero,32(sp)
   110bc:	865e                	mv	a2,s7
   110be:	44a9                	li	s1,10
   110c0:	46a5                	li	a3,9
   110c2:	0ff00893          	li	a7,255
   110c6:	a039                	j	110d4 <_vfprintf_r+0xdea>
   110c8:	0299d7b3          	divu	a5,s3,s1
   110cc:	a736f4e3          	bgeu	a3,s3,10b34 <_vfprintf_r+0x84a>
   110d0:	89be                	mv	s3,a5
   110d2:	8666                	mv	a2,s9
   110d4:	7582                	ld	a1,32(sp)
   110d6:	fff60c93          	addi	s9,a2,-1
   110da:	2585                	addiw	a1,a1,1
   110dc:	f02e                	sd	a1,32(sp)
   110de:	0299f7b3          	remu	a5,s3,s1
   110e2:	0307879b          	addiw	a5,a5,48
   110e6:	fef60fa3          	sb	a5,-1(a2)
   110ea:	df79                	beqz	a4,110c8 <_vfprintf_r+0xdde>
   110ec:	7786                	ld	a5,96(sp)
   110ee:	0007c783          	lbu	a5,0(a5)
   110f2:	fcf59be3          	bne	a1,a5,110c8 <_vfprintf_r+0xdde>
   110f6:	fd1789e3          	beq	a5,a7,110c8 <_vfprintf_r+0xdde>
   110fa:	a336fde3          	bgeu	a3,s3,10b34 <_vfprintf_r+0x84a>
   110fe:	678a                	ld	a5,128(sp)
   11100:	65aa                	ld	a1,136(sp)
   11102:	f83a                	sd	a4,48(sp)
   11104:	40fc8cb3          	sub	s9,s9,a5
   11108:	863e                	mv	a2,a5
   1110a:	8566                	mv	a0,s9
   1110c:	ec1a                	sd	t1,24(sp)
   1110e:	03a050ef          	jal	ra,16148 <strncpy>
   11112:	7706                	ld	a4,96(sp)
   11114:	0299d7b3          	divu	a5,s3,s1
   11118:	6362                	ld	t1,24(sp)
   1111a:	00174603          	lbu	a2,1(a4)
   1111e:	f002                	sd	zero,32(sp)
   11120:	46a5                	li	a3,9
   11122:	00c03633          	snez	a2,a2
   11126:	9732                	add	a4,a4,a2
   11128:	f0ba                	sd	a4,96(sp)
   1112a:	0ff00893          	li	a7,255
   1112e:	7742                	ld	a4,48(sp)
   11130:	b745                	j	110d0 <_vfprintf_r+0xde6>
   11132:	00068b9b          	sext.w	s7,a3
   11136:	d77042e3          	bgtz	s7,10e9a <_vfprintf_r+0xbb0>
   1113a:	b341                	j	10eba <_vfprintf_r+0xbd0>
   1113c:	8da6                	mv	s11,s1
   1113e:	ba21                	j	10a56 <_vfprintf_r+0x76c>
   11140:	67f1                	lui	a5,0x1c
   11142:	28078793          	addi	a5,a5,640 # 1c280 <__clzdi2+0x68>
   11146:	f43e                	sd	a5,40(sp)
   11148:	66c2                	ld	a3,16(sp)
   1114a:	0204f793          	andi	a5,s1,32
   1114e:	00868713          	addi	a4,a3,8
   11152:	20078363          	beqz	a5,11358 <_vfprintf_r+0x106e>
   11156:	0006b983          	ld	s3,0(a3)
   1115a:	0014f793          	andi	a5,s1,1
   1115e:	cf81                	beqz	a5,11176 <_vfprintf_r+0xe8c>
   11160:	00098b63          	beqz	s3,11176 <_vfprintf_r+0xe8c>
   11164:	0024e493          	ori	s1,s1,2
   11168:	03000793          	li	a5,48
   1116c:	0ef10023          	sb	a5,224(sp)
   11170:	0fa100a3          	sb	s10,225(sp)
   11174:	2481                	sext.w	s1,s1
   11176:	bff4fd93          	andi	s11,s1,-1025
   1117a:	2d81                	sext.w	s11,s11
   1117c:	e83a                	sd	a4,16(sp)
   1117e:	4789                	li	a5,2
   11180:	d26ff06f          	j	106a6 <_vfprintf_r+0x3bc>
   11184:	2004e493          	ori	s1,s1,512
   11188:	00144e03          	lbu	t3,1(s0)
   1118c:	2481                	sext.w	s1,s1
   1118e:	0405                	addi	s0,s0,1
   11190:	aaaff06f          	j	1043a <_vfprintf_r+0x150>
   11194:	67f1                	lui	a5,0x1c
   11196:	29878793          	addi	a5,a5,664 # 1c298 <__clzdi2+0x80>
   1119a:	f43e                	sd	a5,40(sp)
   1119c:	b775                	j	11148 <_vfprintf_r+0xe5e>
   1119e:	0204e493          	ori	s1,s1,32
   111a2:	00144e03          	lbu	t3,1(s0)
   111a6:	2481                	sext.w	s1,s1
   111a8:	0405                	addi	s0,s0,1
   111aa:	a90ff06f          	j	1043a <_vfprintf_r+0x150>
   111ae:	0a10                	addi	a2,sp,272
   111b0:	85ca                	mv	a1,s2
   111b2:	8552                	mv	a0,s4
   111b4:	2f7060ef          	jal	ra,17caa <__sprint_r>
   111b8:	b60519e3          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   111bc:	7792                	ld	a5,288(sp)
   111be:	835a                	mv	t1,s6
   111c0:	bad5                	j	10bb4 <_vfprintf_r+0x8ca>
   111c2:	4799                	li	a5,6
   111c4:	000c0b9b          	sext.w	s7,s8
   111c8:	5b87ec63          	bltu	a5,s8,11780 <_vfprintf_r+0x1496>
   111cc:	6871                	lui	a6,0x1c
   111ce:	89de                	mv	s3,s7
   111d0:	e86e                	sd	s11,16(sp)
   111d2:	2b080c93          	addi	s9,a6,688 # 1c2b0 <__clzdi2+0x98>
   111d6:	ad0ff06f          	j	104a6 <_vfprintf_r+0x1bc>
   111da:	68f1                	lui	a7,0x1c
   111dc:	46c1                	li	a3,16
   111de:	11812703          	lw	a4,280(sp)
   111e2:	4d888d93          	addi	s11,a7,1240 # 1c4d8 <zeroes.0>
   111e6:	4d41                	li	s10,16
   111e8:	4c1d                	li	s8,7
   111ea:	0176c663          	blt	a3,s7,111f6 <_vfprintf_r+0xf0c>
   111ee:	aee1                	j	115c6 <_vfprintf_r+0x12dc>
   111f0:	3bc1                	addiw	s7,s7,-16
   111f2:	3d7d5a63          	bge	s10,s7,115c6 <_vfprintf_r+0x12dc>
   111f6:	2705                	addiw	a4,a4,1
   111f8:	07c1                	addi	a5,a5,16
   111fa:	01b33023          	sd	s11,0(t1)
   111fe:	01a33423          	sd	s10,8(t1)
   11202:	f23e                	sd	a5,288(sp)
   11204:	10e12c23          	sw	a4,280(sp)
   11208:	0341                	addi	t1,t1,16
   1120a:	feec53e3          	bge	s8,a4,111f0 <_vfprintf_r+0xf06>
   1120e:	0a10                	addi	a2,sp,272
   11210:	85ca                	mv	a1,s2
   11212:	8552                	mv	a0,s4
   11214:	297060ef          	jal	ra,17caa <__sprint_r>
   11218:	b00519e3          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   1121c:	7792                	ld	a5,288(sp)
   1121e:	11812703          	lw	a4,280(sp)
   11222:	835a                	mv	t1,s6
   11224:	b7f1                	j	111f0 <_vfprintf_r+0xf06>
   11226:	07800713          	li	a4,120
   1122a:	0024e793          	ori	a5,s1,2
   1122e:	03000693          	li	a3,48
   11232:	2781                	sext.w	a5,a5
   11234:	0ee100a3          	sb	a4,225(sp)
   11238:	0ed10023          	sb	a3,224(sp)
   1123c:	06300713          	li	a4,99
   11240:	f53e                	sd	a5,168(sp)
   11242:	ec02                	sd	zero,24(sp)
   11244:	12810c93          	addi	s9,sp,296
   11248:	6b874a63          	blt	a4,s8,118fc <_vfprintf_r+0x1612>
   1124c:	69b2                	ld	s3,264(sp)
   1124e:	fdfd7793          	andi	a5,s10,-33
   11252:	1024e493          	ori	s1,s1,258
   11256:	ecbe                	sd	a5,88(sp)
   11258:	e582                	sd	zero,200(sp)
   1125a:	6b92                	ld	s7,256(sp)
   1125c:	2481                	sext.w	s1,s1
   1125e:	6609ca63          	bltz	s3,118d2 <_vfprintf_r+0x15e8>
   11262:	06100793          	li	a5,97
   11266:	1efd0ce3          	beq	s10,a5,11c5e <_vfprintf_r+0x1974>
   1126a:	fbfd079b          	addiw	a5,s10,-65
   1126e:	0007869b          	sext.w	a3,a5
   11272:	02500713          	li	a4,37
   11276:	00d76c63          	bltu	a4,a3,1128e <_vfprintf_r+0xfa4>
   1127a:	02079713          	slli	a4,a5,0x20
   1127e:	01e75793          	srli	a5,a4,0x1e
   11282:	6771                	lui	a4,0x1c
   11284:	42c70713          	addi	a4,a4,1068 # 1c42c <__clzdi2+0x214>
   11288:	97ba                	add	a5,a5,a4
   1128a:	439c                	lw	a5,0(a5)
   1128c:	8782                	jr	a5
   1128e:	8de2                	mv	s11,s8
   11290:	4689                	li	a3,2
   11292:	11bc                	addi	a5,sp,232
   11294:	876e                	mv	a4,s11
   11296:	0f810893          	addi	a7,sp,248
   1129a:	0ec10813          	addi	a6,sp,236
   1129e:	85de                	mv	a1,s7
   112a0:	864e                	mv	a2,s3
   112a2:	8552                	mv	a0,s4
   112a4:	f01a                	sd	t1,32(sp)
   112a6:	03d020ef          	jal	ra,13ae2 <_ldtoa_r>
   112aa:	6766                	ld	a4,88(sp)
   112ac:	04700793          	li	a5,71
   112b0:	7302                	ld	t1,32(sp)
   112b2:	8caa                	mv	s9,a0
   112b4:	7cf70463          	beq	a4,a5,11a7c <_vfprintf_r+0x1792>
   112b8:	04600793          	li	a5,70
   112bc:	01b508b3          	add	a7,a0,s11
   112c0:	00f71a63          	bne	a4,a5,112d4 <_vfprintf_r+0xfea>
   112c4:	00054703          	lbu	a4,0(a0)
   112c8:	03000793          	li	a5,48
   112cc:	64f70463          	beq	a4,a5,11914 <_vfprintf_r+0x162a>
   112d0:	572e                	lw	a4,232(sp)
   112d2:	98ba                	add	a7,a7,a4
   112d4:	4681                	li	a3,0
   112d6:	4601                	li	a2,0
   112d8:	855e                	mv	a0,s7
   112da:	85ce                	mv	a1,s3
   112dc:	f846                	sd	a7,48(sp)
   112de:	f01a                	sd	t1,32(sp)
   112e0:	2cf090ef          	jal	ra,1adae <__eqtf2>
   112e4:	78c2                	ld	a7,48(sp)
   112e6:	7302                	ld	t1,32(sp)
   112e8:	86c6                	mv	a3,a7
   112ea:	e929                	bnez	a0,1133c <_vfprintf_r+0x1052>
   112ec:	419687bb          	subw	a5,a3,s9
   112f0:	f03e                	sd	a5,32(sp)
   112f2:	572e                	lw	a4,232(sp)
   112f4:	04700793          	li	a5,71
   112f8:	e4ba                	sd	a4,72(sp)
   112fa:	6766                	ld	a4,88(sp)
   112fc:	24f70963          	beq	a4,a5,1154e <_vfprintf_r+0x1264>
   11300:	6766                	ld	a4,88(sp)
   11302:	04600793          	li	a5,70
   11306:	4af71163          	bne	a4,a5,117a8 <_vfprintf_r+0x14be>
   1130a:	77aa                	ld	a5,168(sp)
   1130c:	6726                	ld	a4,72(sp)
   1130e:	8b85                	andi	a5,a5,1
   11310:	00fc67b3          	or	a5,s8,a5
   11314:	20e055e3          	blez	a4,11d1e <_vfprintf_r+0x1a34>
   11318:	1e079ae3          	bnez	a5,11d0c <_vfprintf_r+0x1a22>
   1131c:	6ba6                	ld	s7,72(sp)
   1131e:	06600d13          	li	s10,102
   11322:	77aa                	ld	a5,168(sp)
   11324:	4007f793          	andi	a5,a5,1024
   11328:	16079be3          	bnez	a5,11c9e <_vfprintf_r+0x19b4>
   1132c:	fffbc993          	not	s3,s7
   11330:	43f9d993          	srai	s3,s3,0x3f
   11334:	013bf9b3          	and	s3,s7,s3
   11338:	2981                	sext.w	s3,s3
   1133a:	aca1                	j	11592 <_vfprintf_r+0x12a8>
   1133c:	76ee                	ld	a3,248(sp)
   1133e:	fb16f7e3          	bgeu	a3,a7,112ec <_vfprintf_r+0x1002>
   11342:	03000713          	li	a4,48
   11346:	00168793          	addi	a5,a3,1
   1134a:	fdbe                	sd	a5,248(sp)
   1134c:	00e68023          	sb	a4,0(a3)
   11350:	76ee                	ld	a3,248(sp)
   11352:	ff16eae3          	bltu	a3,a7,11346 <_vfprintf_r+0x105c>
   11356:	bf59                	j	112ec <_vfprintf_r+0x1002>
   11358:	0104f793          	andi	a5,s1,16
   1135c:	c3c5                	beqz	a5,113fc <_vfprintf_r+0x1112>
   1135e:	67c2                	ld	a5,16(sp)
   11360:	0007b983          	ld	s3,0(a5)
   11364:	bbdd                	j	1115a <_vfprintf_r+0xe70>
   11366:	0a10                	addi	a2,sp,272
   11368:	85ca                	mv	a1,s2
   1136a:	8552                	mv	a0,s4
   1136c:	13f060ef          	jal	ra,17caa <__sprint_r>
   11370:	9a051de3          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   11374:	7d12                	ld	s10,288(sp)
   11376:	11812b83          	lw	s7,280(sp)
   1137a:	8c5a                	mv	s8,s6
   1137c:	c4aff06f          	j	107c6 <_vfprintf_r+0x4dc>
   11380:	0a10                	addi	a2,sp,272
   11382:	85ca                	mv	a1,s2
   11384:	8552                	mv	a0,s4
   11386:	125060ef          	jal	ra,17caa <__sprint_r>
   1138a:	9a0510e3          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   1138e:	7d12                	ld	s10,288(sp)
   11390:	11812b83          	lw	s7,280(sp)
   11394:	8c5a                	mv	s8,s6
   11396:	c4eff06f          	j	107e4 <_vfprintf_r+0x4fa>
   1139a:	11812703          	lw	a4,280(sp)
   1139e:	66f1                	lui	a3,0x1c
   113a0:	2b868693          	addi	a3,a3,696 # 1c2b8 <__clzdi2+0xa0>
   113a4:	2705                	addiw	a4,a4,1
   113a6:	00d33023          	sd	a3,0(t1)
   113aa:	0785                	addi	a5,a5,1
   113ac:	4685                	li	a3,1
   113ae:	00d33423          	sd	a3,8(t1)
   113b2:	10e12c23          	sw	a4,280(sp)
   113b6:	0007069b          	sext.w	a3,a4
   113ba:	f23e                	sd	a5,288(sp)
   113bc:	471d                	li	a4,7
   113be:	0341                	addi	t1,t1,16
   113c0:	38d74663          	blt	a4,a3,1174c <_vfprintf_r+0x1462>
   113c4:	0e061a63          	bnez	a2,114b8 <_vfprintf_r+0x11ce>
   113c8:	7682                	ld	a3,32(sp)
   113ca:	0014f713          	andi	a4,s1,1
   113ce:	8f55                	or	a4,a4,a3
   113d0:	98070763          	beqz	a4,1055e <_vfprintf_r+0x274>
   113d4:	76a6                	ld	a3,104(sp)
   113d6:	11812703          	lw	a4,280(sp)
   113da:	7646                	ld	a2,112(sp)
   113dc:	97b6                	add	a5,a5,a3
   113de:	2705                	addiw	a4,a4,1
   113e0:	00d33423          	sd	a3,8(t1)
   113e4:	10e12c23          	sw	a4,280(sp)
   113e8:	0007069b          	sext.w	a3,a4
   113ec:	00c33023          	sd	a2,0(t1)
   113f0:	f23e                	sd	a5,288(sp)
   113f2:	471d                	li	a4,7
   113f4:	4ed74763          	blt	a4,a3,118e2 <_vfprintf_r+0x15f8>
   113f8:	0341                	addi	t1,t1,16
   113fa:	a0e5                	j	114e2 <_vfprintf_r+0x11f8>
   113fc:	66c2                	ld	a3,16(sp)
   113fe:	0404f793          	andi	a5,s1,64
   11402:	0006a983          	lw	s3,0(a3)
   11406:	10078a63          	beqz	a5,1151a <_vfprintf_r+0x1230>
   1140a:	19c2                	slli	s3,s3,0x30
   1140c:	0309d993          	srli	s3,s3,0x30
   11410:	b3a9                	j	1115a <_vfprintf_r+0xe70>
   11412:	0a10                	addi	a2,sp,272
   11414:	85ca                	mv	a1,s2
   11416:	8552                	mv	a0,s4
   11418:	093060ef          	jal	ra,17caa <__sprint_r>
   1141c:	900517e3          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   11420:	7792                	ld	a5,288(sp)
   11422:	835a                	mv	t1,s6
   11424:	f62ff06f          	j	10b86 <_vfprintf_r+0x89c>
   11428:	0017069b          	addiw	a3,a4,1
   1142c:	8736                	mv	a4,a3
   1142e:	97de                	add	a5,a5,s7
   11430:	01b33023          	sd	s11,0(t1)
   11434:	918ff06f          	j	1054c <_vfprintf_r+0x262>
   11438:	6512                	ld	a0,256(sp)
   1143a:	65b2                	ld	a1,264(sp)
   1143c:	4601                	li	a2,0
   1143e:	4681                	li	a3,0
   11440:	2b5090ef          	jal	ra,1aef4 <__letf2>
   11444:	6362                	ld	t1,24(sp)
   11446:	66054263          	bltz	a0,11aaa <_vfprintf_r+0x17c0>
   1144a:	0df14783          	lbu	a5,223(sp)
   1144e:	04700713          	li	a4,71
   11452:	31a75863          	bge	a4,s10,11762 <_vfprintf_r+0x1478>
   11456:	6871                	lui	a6,0x1c
   11458:	26880c93          	addi	s9,a6,616 # 1c268 <__clzdi2+0x50>
   1145c:	f7f4f493          	andi	s1,s1,-129
   11460:	ec02                	sd	zero,24(sp)
   11462:	e882                	sd	zero,80(sp)
   11464:	ec82                	sd	zero,88(sp)
   11466:	e482                	sd	zero,72(sp)
   11468:	2481                	sext.w	s1,s1
   1146a:	498d                	li	s3,3
   1146c:	4b8d                	li	s7,3
   1146e:	4c01                	li	s8,0
   11470:	a0079863          	bnez	a5,10680 <_vfprintf_r+0x396>
   11474:	83cff06f          	j	104b0 <_vfprintf_r+0x1c6>
   11478:	2b85                	addiw	s7,s7,1
   1147a:	865e                	mv	a2,s7
   1147c:	9d36                	add	s10,s10,a3
   1147e:	01bc3023          	sd	s11,0(s8)
   11482:	b86ff06f          	j	10808 <_vfprintf_r+0x51e>
   11486:	8566                	mv	a0,s9
   11488:	f81a                	sd	t1,48(sp)
   1148a:	42f040ef          	jal	ra,160b8 <strlen>
   1148e:	00050b9b          	sext.w	s7,a0
   11492:	0df14783          	lbu	a5,223(sp)
   11496:	fffbc993          	not	s3,s7
   1149a:	43f9d993          	srai	s3,s3,0x3f
   1149e:	e86e                	sd	s11,16(sp)
   114a0:	ec02                	sd	zero,24(sp)
   114a2:	e882                	sd	zero,80(sp)
   114a4:	ec82                	sd	zero,88(sp)
   114a6:	e482                	sd	zero,72(sp)
   114a8:	7342                	ld	t1,48(sp)
   114aa:	0179f9b3          	and	s3,s3,s7
   114ae:	4c01                	li	s8,0
   114b0:	9c079863          	bnez	a5,10680 <_vfprintf_r+0x396>
   114b4:	ffdfe06f          	j	104b0 <_vfprintf_r+0x1c6>
   114b8:	76a6                	ld	a3,104(sp)
   114ba:	11812703          	lw	a4,280(sp)
   114be:	75c6                	ld	a1,112(sp)
   114c0:	97b6                	add	a5,a5,a3
   114c2:	2705                	addiw	a4,a4,1
   114c4:	00d33423          	sd	a3,8(t1)
   114c8:	00b33023          	sd	a1,0(t1)
   114cc:	0007069b          	sext.w	a3,a4
   114d0:	10e12c23          	sw	a4,280(sp)
   114d4:	f23e                	sd	a5,288(sp)
   114d6:	471d                	li	a4,7
   114d8:	0341                	addi	t1,t1,16
   114da:	40d74463          	blt	a4,a3,118e2 <_vfprintf_r+0x15f8>
   114de:	62064863          	bltz	a2,11b0e <_vfprintf_r+0x1824>
   114e2:	7702                	ld	a4,32(sp)
   114e4:	0016861b          	addiw	a2,a3,1
   114e8:	01933023          	sd	s9,0(t1)
   114ec:	97ba                	add	a5,a5,a4
   114ee:	00e33423          	sd	a4,8(t1)
   114f2:	f23e                	sd	a5,288(sp)
   114f4:	10c12c23          	sw	a2,280(sp)
   114f8:	471d                	li	a4,7
   114fa:	00c74463          	blt	a4,a2,11502 <_vfprintf_r+0x1218>
   114fe:	85eff06f          	j	1055c <_vfprintf_r+0x272>
   11502:	b3cff06f          	j	1083e <_vfprintf_r+0x554>
   11506:	200df793          	andi	a5,s11,512
   1150a:	38078f63          	beqz	a5,118a8 <_vfprintf_r+0x15be>
   1150e:	0ff9f993          	zext.b	s3,s3
   11512:	e83a                	sd	a4,16(sp)
   11514:	4785                	li	a5,1
   11516:	990ff06f          	j	106a6 <_vfprintf_r+0x3bc>
   1151a:	2004f793          	andi	a5,s1,512
   1151e:	38078163          	beqz	a5,118a0 <_vfprintf_r+0x15b6>
   11522:	0ff9f993          	zext.b	s3,s3
   11526:	b915                	j	1115a <_vfprintf_r+0xe70>
   11528:	2004f793          	andi	a5,s1,512
   1152c:	36078563          	beqz	a5,11896 <_vfprintf_r+0x15ac>
   11530:	0ff9f993          	zext.b	s3,s3
   11534:	968ff06f          	j	1069c <_vfprintf_r+0x3b2>
   11538:	2004f793          	andi	a5,s1,512
   1153c:	34078a63          	beqz	a5,11890 <_vfprintf_r+0x15a6>
   11540:	0189999b          	slliw	s3,s3,0x18
   11544:	4189d99b          	sraiw	s3,s3,0x18
   11548:	87ce                	mv	a5,s3
   1154a:	8f6ff06f          	j	10640 <_vfprintf_r+0x356>
   1154e:	6726                	ld	a4,72(sp)
   11550:	57f5                	li	a5,-3
   11552:	24f74763          	blt	a4,a5,117a0 <_vfprintf_r+0x14b6>
   11556:	24ec4563          	blt	s8,a4,117a0 <_vfprintf_r+0x14b6>
   1155a:	7782                	ld	a5,32(sp)
   1155c:	6726                	ld	a4,72(sp)
   1155e:	60f74263          	blt	a4,a5,11b62 <_vfprintf_r+0x1878>
   11562:	77aa                	ld	a5,168(sp)
   11564:	6726                	ld	a4,72(sp)
   11566:	8b85                	andi	a5,a5,1
   11568:	8bba                	mv	s7,a4
   1156a:	c781                	beqz	a5,11572 <_vfprintf_r+0x1288>
   1156c:	77a6                	ld	a5,104(sp)
   1156e:	00e78bbb          	addw	s7,a5,a4
   11572:	77aa                	ld	a5,168(sp)
   11574:	4007f793          	andi	a5,a5,1024
   11578:	c781                	beqz	a5,11580 <_vfprintf_r+0x1296>
   1157a:	67a6                	ld	a5,72(sp)
   1157c:	70f04f63          	bgtz	a5,11c9a <_vfprintf_r+0x19b0>
   11580:	fffbc993          	not	s3,s7
   11584:	43f9d993          	srai	s3,s3,0x3f
   11588:	013bf9b3          	and	s3,s7,s3
   1158c:	2981                	sext.w	s3,s3
   1158e:	06700d13          	li	s10,103
   11592:	e882                	sd	zero,80(sp)
   11594:	ec82                	sd	zero,88(sp)
   11596:	67ae                	ld	a5,200(sp)
   11598:	4c078a63          	beqz	a5,11a6c <_vfprintf_r+0x1782>
   1159c:	02d00793          	li	a5,45
   115a0:	0cf10fa3          	sb	a5,223(sp)
   115a4:	4c01                	li	s8,0
   115a6:	2985                	addiw	s3,s3,1
   115a8:	f09fe06f          	j	104b0 <_vfprintf_r+0x1c6>
   115ac:	67b2                	ld	a5,264(sp)
   115ae:	3007cb63          	bltz	a5,118c4 <_vfprintf_r+0x15da>
   115b2:	0df14783          	lbu	a5,223(sp)
   115b6:	04700713          	li	a4,71
   115ba:	55a75663          	bge	a4,s10,11b06 <_vfprintf_r+0x181c>
   115be:	6871                	lui	a6,0x1c
   115c0:	27880c93          	addi	s9,a6,632 # 1c278 <__clzdi2+0x60>
   115c4:	bd61                	j	1145c <_vfprintf_r+0x1172>
   115c6:	0017069b          	addiw	a3,a4,1
   115ca:	97de                	add	a5,a5,s7
   115cc:	01b33023          	sd	s11,0(t1)
   115d0:	01733423          	sd	s7,8(t1)
   115d4:	f23e                	sd	a5,288(sp)
   115d6:	10d12c23          	sw	a3,280(sp)
   115da:	471d                	li	a4,7
   115dc:	0341                	addi	t1,t1,16
   115de:	8ed758e3          	bge	a4,a3,10ece <_vfprintf_r+0xbe4>
   115e2:	0a10                	addi	a2,sp,272
   115e4:	85ca                	mv	a1,s2
   115e6:	8552                	mv	a0,s4
   115e8:	6c2060ef          	jal	ra,17caa <__sprint_r>
   115ec:	f2051f63          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   115f0:	7792                	ld	a5,288(sp)
   115f2:	835a                	mv	t1,s6
   115f4:	b8e9                	j	10ece <_vfprintf_r+0xbe4>
   115f6:	7702                	ld	a4,32(sp)
   115f8:	6ef1                	lui	t4,0x1c
   115fa:	4b9d                	li	s7,7
   115fc:	9766                	add	a4,a4,s9
   115fe:	fc3a                	sd	a4,56(sp)
   11600:	6766                	ld	a4,88(sp)
   11602:	4dc1                	li	s11,16
   11604:	4d8e8d13          	addi	s10,t4,1240 # 1c4d8 <zeroes.0>
   11608:	cb49                	beqz	a4,1169a <_vfprintf_r+0x13b0>
   1160a:	6746                	ld	a4,80(sp)
   1160c:	eb51                	bnez	a4,116a0 <_vfprintf_r+0x13b6>
   1160e:	7706                	ld	a4,96(sp)
   11610:	177d                	addi	a4,a4,-1
   11612:	f0ba                	sd	a4,96(sp)
   11614:	6766                	ld	a4,88(sp)
   11616:	377d                	addiw	a4,a4,-1
   11618:	ecba                	sd	a4,88(sp)
   1161a:	668a                	ld	a3,128(sp)
   1161c:	11812703          	lw	a4,280(sp)
   11620:	662a                	ld	a2,136(sp)
   11622:	97b6                	add	a5,a5,a3
   11624:	2705                	addiw	a4,a4,1
   11626:	00d33423          	sd	a3,8(t1)
   1162a:	00c33023          	sd	a2,0(t1)
   1162e:	f23e                	sd	a5,288(sp)
   11630:	0007069b          	sext.w	a3,a4
   11634:	10e12c23          	sw	a4,280(sp)
   11638:	0341                	addi	t1,t1,16
   1163a:	0cdbce63          	blt	s7,a3,11716 <_vfprintf_r+0x142c>
   1163e:	7706                	ld	a4,96(sp)
   11640:	00074603          	lbu	a2,0(a4)
   11644:	7762                	ld	a4,56(sp)
   11646:	418706b3          	sub	a3,a4,s8
   1164a:	0006859b          	sext.w	a1,a3
   1164e:	0006071b          	sext.w	a4,a2
   11652:	00b65363          	bge	a2,a1,11658 <_vfprintf_r+0x136e>
   11656:	86ba                	mv	a3,a4
   11658:	2681                	sext.w	a3,a3
   1165a:	02d05663          	blez	a3,11686 <_vfprintf_r+0x139c>
   1165e:	11812703          	lw	a4,280(sp)
   11662:	97b6                	add	a5,a5,a3
   11664:	01833023          	sd	s8,0(t1)
   11668:	0017061b          	addiw	a2,a4,1
   1166c:	00d33423          	sd	a3,8(t1)
   11670:	f23e                	sd	a5,288(sp)
   11672:	10c12c23          	sw	a2,280(sp)
   11676:	0acbca63          	blt	s7,a2,1172a <_vfprintf_r+0x1440>
   1167a:	7706                	ld	a4,96(sp)
   1167c:	0341                	addi	t1,t1,16
   1167e:	00074603          	lbu	a2,0(a4)
   11682:	0006071b          	sext.w	a4,a2
   11686:	fff6c593          	not	a1,a3
   1168a:	95fd                	srai	a1,a1,0x3f
   1168c:	8eed                	and	a3,a3,a1
   1168e:	9f15                	subw	a4,a4,a3
   11690:	00e04c63          	bgtz	a4,116a8 <_vfprintf_r+0x13be>
   11694:	9c32                	add	s8,s8,a2
   11696:	6766                	ld	a4,88(sp)
   11698:	fb2d                	bnez	a4,1160a <_vfprintf_r+0x1320>
   1169a:	6746                	ld	a4,80(sp)
   1169c:	3c070163          	beqz	a4,11a5e <_vfprintf_r+0x1774>
   116a0:	6746                	ld	a4,80(sp)
   116a2:	377d                	addiw	a4,a4,-1
   116a4:	e8ba                	sd	a4,80(sp)
   116a6:	bf95                	j	1161a <_vfprintf_r+0x1330>
   116a8:	11812683          	lw	a3,280(sp)
   116ac:	00edc663          	blt	s11,a4,116b8 <_vfprintf_r+0x13ce>
   116b0:	a081                	j	116f0 <_vfprintf_r+0x1406>
   116b2:	3741                	addiw	a4,a4,-16
   116b4:	02edde63          	bge	s11,a4,116f0 <_vfprintf_r+0x1406>
   116b8:	2685                	addiw	a3,a3,1
   116ba:	07c1                	addi	a5,a5,16
   116bc:	01a33023          	sd	s10,0(t1)
   116c0:	01b33423          	sd	s11,8(t1)
   116c4:	f23e                	sd	a5,288(sp)
   116c6:	10d12c23          	sw	a3,280(sp)
   116ca:	0341                	addi	t1,t1,16
   116cc:	fedbd3e3          	bge	s7,a3,116b2 <_vfprintf_r+0x13c8>
   116d0:	0a10                	addi	a2,sp,272
   116d2:	85ca                	mv	a1,s2
   116d4:	8552                	mv	a0,s4
   116d6:	f83a                	sd	a4,48(sp)
   116d8:	5d2060ef          	jal	ra,17caa <__sprint_r>
   116dc:	e4051763          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   116e0:	7742                	ld	a4,48(sp)
   116e2:	7792                	ld	a5,288(sp)
   116e4:	11812683          	lw	a3,280(sp)
   116e8:	3741                	addiw	a4,a4,-16
   116ea:	835a                	mv	t1,s6
   116ec:	fcedc6e3          	blt	s11,a4,116b8 <_vfprintf_r+0x13ce>
   116f0:	2685                	addiw	a3,a3,1
   116f2:	97ba                	add	a5,a5,a4
   116f4:	00e33423          	sd	a4,8(t1)
   116f8:	01a33023          	sd	s10,0(t1)
   116fc:	f23e                	sd	a5,288(sp)
   116fe:	0006871b          	sext.w	a4,a3
   11702:	10d12c23          	sw	a3,280(sp)
   11706:	38ebc463          	blt	s7,a4,11a8e <_vfprintf_r+0x17a4>
   1170a:	7706                	ld	a4,96(sp)
   1170c:	0341                	addi	t1,t1,16
   1170e:	00074603          	lbu	a2,0(a4)
   11712:	9c32                	add	s8,s8,a2
   11714:	b749                	j	11696 <_vfprintf_r+0x13ac>
   11716:	0a10                	addi	a2,sp,272
   11718:	85ca                	mv	a1,s2
   1171a:	8552                	mv	a0,s4
   1171c:	58e060ef          	jal	ra,17caa <__sprint_r>
   11720:	e0051563          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   11724:	7792                	ld	a5,288(sp)
   11726:	835a                	mv	t1,s6
   11728:	bf19                	j	1163e <_vfprintf_r+0x1354>
   1172a:	0a10                	addi	a2,sp,272
   1172c:	85ca                	mv	a1,s2
   1172e:	8552                	mv	a0,s4
   11730:	f836                	sd	a3,48(sp)
   11732:	578060ef          	jal	ra,17caa <__sprint_r>
   11736:	de051a63          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   1173a:	7786                	ld	a5,96(sp)
   1173c:	76c2                	ld	a3,48(sp)
   1173e:	835a                	mv	t1,s6
   11740:	0007c603          	lbu	a2,0(a5)
   11744:	7792                	ld	a5,288(sp)
   11746:	0006071b          	sext.w	a4,a2
   1174a:	bf35                	j	11686 <_vfprintf_r+0x139c>
   1174c:	0a10                	addi	a2,sp,272
   1174e:	85ca                	mv	a1,s2
   11750:	8552                	mv	a0,s4
   11752:	558060ef          	jal	ra,17caa <__sprint_r>
   11756:	dc051a63          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   1175a:	562e                	lw	a2,232(sp)
   1175c:	7792                	ld	a5,288(sp)
   1175e:	835a                	mv	t1,s6
   11760:	b195                	j	113c4 <_vfprintf_r+0x10da>
   11762:	6871                	lui	a6,0x1c
   11764:	26080c93          	addi	s9,a6,608 # 1c260 <__clzdi2+0x48>
   11768:	b9d5                	j	1145c <_vfprintf_r+0x1172>
   1176a:	0a10                	addi	a2,sp,272
   1176c:	85ca                	mv	a1,s2
   1176e:	8552                	mv	a0,s4
   11770:	53a060ef          	jal	ra,17caa <__sprint_r>
   11774:	da051b63          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   11778:	7792                	ld	a5,288(sp)
   1177a:	835a                	mv	t1,s6
   1177c:	f3eff06f          	j	10eba <_vfprintf_r+0xbd0>
   11780:	4b99                	li	s7,6
   11782:	b4a9                	j	111cc <_vfprintf_r+0xee2>
   11784:	7682                	ld	a3,32(sp)
   11786:	00dc8bb3          	add	s7,s9,a3
   1178a:	418b8bb3          	sub	s7,s7,s8
   1178e:	9e99                	subw	a3,a3,a4
   11790:	000b861b          	sext.w	a2,s7
   11794:	00c6d363          	bge	a3,a2,1179a <_vfprintf_r+0x14b0>
   11798:	8bb6                	mv	s7,a3
   1179a:	2b81                	sext.w	s7,s7
   1179c:	fb2ff06f          	j	10f4e <_vfprintf_r+0xc64>
   117a0:	3d79                	addiw	s10,s10,-2
   117a2:	fdfd7793          	andi	a5,s10,-33
   117a6:	ecbe                	sd	a5,88(sp)
   117a8:	67a6                	ld	a5,72(sp)
   117aa:	65e6                	ld	a1,88(sp)
   117ac:	04100713          	li	a4,65
   117b0:	fff7869b          	addiw	a3,a5,-1
   117b4:	d5b6                	sw	a3,232(sp)
   117b6:	0ffd7793          	zext.b	a5,s10
   117ba:	4601                	li	a2,0
   117bc:	00e59663          	bne	a1,a4,117c8 <_vfprintf_r+0x14de>
   117c0:	27bd                	addiw	a5,a5,15
   117c2:	0ff7f793          	zext.b	a5,a5
   117c6:	4605                	li	a2,1
   117c8:	0ef10823          	sb	a5,240(sp)
   117cc:	02b00793          	li	a5,43
   117d0:	0006d763          	bgez	a3,117de <_vfprintf_r+0x14f4>
   117d4:	67a6                	ld	a5,72(sp)
   117d6:	4685                	li	a3,1
   117d8:	9e9d                	subw	a3,a3,a5
   117da:	02d00793          	li	a5,45
   117de:	0ef108a3          	sb	a5,241(sp)
   117e2:	47a5                	li	a5,9
   117e4:	3cd7dc63          	bge	a5,a3,11bbc <_vfprintf_r+0x18d2>
   117e8:	0ff10e93          	addi	t4,sp,255
   117ec:	8676                	mv	a2,t4
   117ee:	45a9                	li	a1,10
   117f0:	06300793          	li	a5,99
   117f4:	02b6e73b          	remw	a4,a3,a1
   117f8:	88b2                	mv	a7,a2
   117fa:	8536                	mv	a0,a3
   117fc:	167d                	addi	a2,a2,-1
   117fe:	0307071b          	addiw	a4,a4,48
   11802:	fee88fa3          	sb	a4,-1(a7)
   11806:	02b6c6bb          	divw	a3,a3,a1
   1180a:	fea7c5e3          	blt	a5,a0,117f4 <_vfprintf_r+0x150a>
   1180e:	0306869b          	addiw	a3,a3,48
   11812:	0ff6f693          	zext.b	a3,a3
   11816:	ffe88793          	addi	a5,a7,-2
   1181a:	fed60fa3          	sb	a3,-1(a2)
   1181e:	55d7f763          	bgeu	a5,t4,11d6c <_vfprintf_r+0x1a82>
   11822:	0f210713          	addi	a4,sp,242
   11826:	a019                	j	1182c <_vfprintf_r+0x1542>
   11828:	0007c683          	lbu	a3,0(a5)
   1182c:	00d70023          	sb	a3,0(a4)
   11830:	0785                	addi	a5,a5,1
   11832:	0705                	addi	a4,a4,1
   11834:	ffd79ae3          	bne	a5,t4,11828 <_vfprintf_r+0x153e>
   11838:	10110793          	addi	a5,sp,257
   1183c:	0f210713          	addi	a4,sp,242
   11840:	411787b3          	sub	a5,a5,a7
   11844:	97ba                	add	a5,a5,a4
   11846:	1998                	addi	a4,sp,240
   11848:	9f99                	subw	a5,a5,a4
   1184a:	fcbe                	sd	a5,120(sp)
   1184c:	77e6                	ld	a5,120(sp)
   1184e:	7682                	ld	a3,32(sp)
   11850:	4705                	li	a4,1
   11852:	00f68bbb          	addw	s7,a3,a5
   11856:	87de                	mv	a5,s7
   11858:	3ed75063          	bge	a4,a3,11c38 <_vfprintf_r+0x194e>
   1185c:	7726                	ld	a4,104(sp)
   1185e:	00e78bbb          	addw	s7,a5,a4
   11862:	77aa                	ld	a5,168(sp)
   11864:	fffbc993          	not	s3,s7
   11868:	43f9d993          	srai	s3,s3,0x3f
   1186c:	bff7f493          	andi	s1,a5,-1025
   11870:	2481                	sext.w	s1,s1
   11872:	013bf9b3          	and	s3,s7,s3
   11876:	1004e493          	ori	s1,s1,256
   1187a:	2981                	sext.w	s3,s3
   1187c:	e882                	sd	zero,80(sp)
   1187e:	ec82                	sd	zero,88(sp)
   11880:	e482                	sd	zero,72(sp)
   11882:	bb11                	j	11596 <_vfprintf_r+0x12ac>
   11884:	67a2                	ld	a5,8(sp)
   11886:	8ca2                	mv	s9,s0
   11888:	00f71023          	sh	a5,0(a4)
   1188c:	d05fe06f          	j	10590 <_vfprintf_r+0x2a6>
   11890:	87ce                	mv	a5,s3
   11892:	daffe06f          	j	10640 <_vfprintf_r+0x356>
   11896:	1982                	slli	s3,s3,0x20
   11898:	0209d993          	srli	s3,s3,0x20
   1189c:	e01fe06f          	j	1069c <_vfprintf_r+0x3b2>
   118a0:	1982                	slli	s3,s3,0x20
   118a2:	0209d993          	srli	s3,s3,0x20
   118a6:	b855                	j	1115a <_vfprintf_r+0xe70>
   118a8:	1982                	slli	s3,s3,0x20
   118aa:	0209d993          	srli	s3,s3,0x20
   118ae:	e83a                	sd	a4,16(sp)
   118b0:	4785                	li	a5,1
   118b2:	df5fe06f          	j	106a6 <_vfprintf_r+0x3bc>
   118b6:	0a10                	addi	a2,sp,272
   118b8:	85ca                	mv	a1,s2
   118ba:	8552                	mv	a0,s4
   118bc:	3ee060ef          	jal	ra,17caa <__sprint_r>
   118c0:	ce1fe06f          	j	105a0 <_vfprintf_r+0x2b6>
   118c4:	02d00793          	li	a5,45
   118c8:	0cf10fa3          	sb	a5,223(sp)
   118cc:	b1ed                	j	115b6 <_vfprintf_r+0x12cc>
   118ce:	ec02                	sd	zero,24(sp)
   118d0:	84be                	mv	s1,a5
   118d2:	57fd                	li	a5,-1
   118d4:	17fe                	slli	a5,a5,0x3f
   118d6:	00f9c9b3          	xor	s3,s3,a5
   118da:	02d00793          	li	a5,45
   118de:	e5be                	sd	a5,200(sp)
   118e0:	b249                	j	11262 <_vfprintf_r+0xf78>
   118e2:	0a10                	addi	a2,sp,272
   118e4:	85ca                	mv	a1,s2
   118e6:	8552                	mv	a0,s4
   118e8:	3c2060ef          	jal	ra,17caa <__sprint_r>
   118ec:	c2051f63          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   118f0:	562e                	lw	a2,232(sp)
   118f2:	7792                	ld	a5,288(sp)
   118f4:	11812683          	lw	a3,280(sp)
   118f8:	835a                	mv	t1,s6
   118fa:	b6d5                	j	114de <_vfprintf_r+0x11f4>
   118fc:	001c059b          	addiw	a1,s8,1
   11900:	8552                	mv	a0,s4
   11902:	ec1a                	sd	t1,24(sp)
   11904:	1b4030ef          	jal	ra,14ab8 <_malloc_r>
   11908:	6362                	ld	t1,24(sp)
   1190a:	8caa                	mv	s9,a0
   1190c:	46050363          	beqz	a0,11d72 <_vfprintf_r+0x1a88>
   11910:	ec2a                	sd	a0,24(sp)
   11912:	ba2d                	j	1124c <_vfprintf_r+0xf62>
   11914:	4601                	li	a2,0
   11916:	4681                	li	a3,0
   11918:	855e                	mv	a0,s7
   1191a:	85ce                	mv	a1,s3
   1191c:	f846                	sd	a7,48(sp)
   1191e:	f01a                	sd	t1,32(sp)
   11920:	48e090ef          	jal	ra,1adae <__eqtf2>
   11924:	7302                	ld	t1,32(sp)
   11926:	78c2                	ld	a7,48(sp)
   11928:	9a0504e3          	beqz	a0,112d0 <_vfprintf_r+0xfe6>
   1192c:	4785                	li	a5,1
   1192e:	41b7873b          	subw	a4,a5,s11
   11932:	d5ba                	sw	a4,232(sp)
   11934:	98ba                	add	a7,a7,a4
   11936:	ba79                	j	112d4 <_vfprintf_r+0xfea>
   11938:	001c0d9b          	addiw	s11,s8,1
   1193c:	4689                	li	a3,2
   1193e:	ba91                	j	11292 <_vfprintf_r+0xfa8>
   11940:	8de2                	mv	s11,s8
   11942:	468d                	li	a3,3
   11944:	b2b9                	j	11292 <_vfprintf_r+0xfa8>
   11946:	85ce                	mv	a1,s3
   11948:	855e                	mv	a0,s7
   1194a:	f81a                	sd	t1,48(sp)
   1194c:	6ac0a0ef          	jal	ra,1bff8 <__trunctfdf2>
   11950:	11a8                	addi	a0,sp,232
   11952:	4b2040ef          	jal	ra,15e04 <frexp>
   11956:	5de0a0ef          	jal	ra,1bf34 <__extenddftf2>
   1195a:	768a                	ld	a3,160(sp)
   1195c:	4601                	li	a2,0
   1195e:	63c090ef          	jal	ra,1af9a <__multf3>
   11962:	4601                	li	a2,0
   11964:	4681                	li	a3,0
   11966:	8baa                	mv	s7,a0
   11968:	f02e                	sd	a1,32(sp)
   1196a:	444090ef          	jal	ra,1adae <__eqtf2>
   1196e:	7f82                	ld	t6,32(sp)
   11970:	7342                	ld	t1,48(sp)
   11972:	e119                	bnez	a0,11978 <_vfprintf_r+0x168e>
   11974:	4785                	li	a5,1
   11976:	d5be                	sw	a5,232(sp)
   11978:	67f1                	lui	a5,0x1c
   1197a:	29878793          	addi	a5,a5,664 # 1c298 <__clzdi2+0x80>
   1197e:	e4be                	sd	a5,72(sp)
   11980:	020c1793          	slli	a5,s8,0x20
   11984:	9381                	srli	a5,a5,0x20
   11986:	0785                	addi	a5,a5,1
   11988:	97e6                	add	a5,a5,s9
   1198a:	f93e                	sd	a5,176(sp)
   1198c:	018c87bb          	addw	a5,s9,s8
   11990:	8de6                	mv	s11,s9
   11992:	c3be                	sw	a5,196(sp)
   11994:	a829                	j	119ae <_vfprintf_r+0x16c4>
   11996:	4601                	li	a2,0
   11998:	4681                	li	a3,0
   1199a:	f01a                	sd	t1,32(sp)
   1199c:	fc2e                	sd	a1,56(sp)
   1199e:	f82a                	sd	a0,48(sp)
   119a0:	40e090ef          	jal	ra,1adae <__eqtf2>
   119a4:	77e2                	ld	a5,56(sp)
   119a6:	7302                	ld	t1,32(sp)
   119a8:	88de                	mv	a7,s7
   119aa:	8fbe                	mv	t6,a5
   119ac:	cd31                	beqz	a0,11a08 <_vfprintf_r+0x171e>
   119ae:	66ca                	ld	a3,144(sp)
   119b0:	4601                	li	a2,0
   119b2:	85fe                	mv	a1,t6
   119b4:	855e                	mv	a0,s7
   119b6:	f81a                	sd	t1,48(sp)
   119b8:	5e2090ef          	jal	ra,1af9a <__multf3>
   119bc:	8bae                	mv	s7,a1
   119be:	f02a                	sd	a0,32(sp)
   119c0:	48c0a0ef          	jal	ra,1be4c <__fixtfsi>
   119c4:	0005099b          	sext.w	s3,a0
   119c8:	854e                	mv	a0,s3
   119ca:	5140a0ef          	jal	ra,1bede <__floatsitf>
   119ce:	7782                	ld	a5,32(sp)
   119d0:	86ae                	mv	a3,a1
   119d2:	862a                	mv	a2,a0
   119d4:	85de                	mv	a1,s7
   119d6:	853e                	mv	a0,a5
   119d8:	3ed090ef          	jal	ra,1b5c4 <__subtf3>
   119dc:	67a6                	ld	a5,72(sp)
   119de:	471e                	lw	a4,196(sp)
   119e0:	fd6e                	sd	s11,184(sp)
   119e2:	97ce                	add	a5,a5,s3
   119e4:	0d85                	addi	s11,s11,1
   119e6:	0007c683          	lbu	a3,0(a5)
   119ea:	41b7073b          	subw	a4,a4,s11
   119ee:	e8ba                	sd	a4,80(sp)
   119f0:	774a                	ld	a4,176(sp)
   119f2:	fedd8fa3          	sb	a3,-1(s11)
   119f6:	e0ae                	sd	a1,64(sp)
   119f8:	7342                	ld	t1,48(sp)
   119fa:	87ae                	mv	a5,a1
   119fc:	88aa                	mv	a7,a0
   119fe:	8baa                	mv	s7,a0
   11a00:	f9b71be3          	bne	a4,s11,11996 <_vfprintf_r+0x16ac>
   11a04:	577d                	li	a4,-1
   11a06:	e8ba                	sd	a4,80(sp)
   11a08:	66ea                	ld	a3,152(sp)
   11a0a:	4601                	li	a2,0
   11a0c:	8546                	mv	a0,a7
   11a0e:	85be                	mv	a1,a5
   11a10:	f01a                	sd	t1,32(sp)
   11a12:	fc46                	sd	a7,56(sp)
   11a14:	f83e                	sd	a5,48(sp)
   11a16:	438090ef          	jal	ra,1ae4e <__getf2>
   11a1a:	7302                	ld	t1,32(sp)
   11a1c:	1ca04463          	bgtz	a0,11be4 <_vfprintf_r+0x18fa>
   11a20:	78e2                	ld	a7,56(sp)
   11a22:	77c2                	ld	a5,48(sp)
   11a24:	66ea                	ld	a3,152(sp)
   11a26:	4601                	li	a2,0
   11a28:	8546                	mv	a0,a7
   11a2a:	85be                	mv	a1,a5
   11a2c:	382090ef          	jal	ra,1adae <__eqtf2>
   11a30:	7302                	ld	t1,32(sp)
   11a32:	e509                	bnez	a0,11a3c <_vfprintf_r+0x1752>
   11a34:	0019f993          	andi	s3,s3,1
   11a38:	1a099663          	bnez	s3,11be4 <_vfprintf_r+0x18fa>
   11a3c:	6746                	ld	a4,80(sp)
   11a3e:	03000693          	li	a3,48
   11a42:	0017079b          	addiw	a5,a4,1
   11a46:	97ee                	add	a5,a5,s11
   11a48:	00074763          	bltz	a4,11a56 <_vfprintf_r+0x176c>
   11a4c:	0d85                	addi	s11,s11,1
   11a4e:	fedd8fa3          	sb	a3,-1(s11)
   11a52:	ffb79de3          	bne	a5,s11,11a4c <_vfprintf_r+0x1762>
   11a56:	419d87bb          	subw	a5,s11,s9
   11a5a:	f03e                	sd	a5,32(sp)
   11a5c:	b859                	j	112f2 <_vfprintf_r+0x1008>
   11a5e:	7702                	ld	a4,32(sp)
   11a60:	9766                	add	a4,a4,s9
   11a62:	c7877d63          	bgeu	a4,s8,10edc <_vfprintf_r+0xbf2>
   11a66:	8c3a                	mv	s8,a4
   11a68:	c74ff06f          	j	10edc <_vfprintf_r+0xbf2>
   11a6c:	0df14783          	lbu	a5,223(sp)
   11a70:	4c01                	li	s8,0
   11a72:	c399                	beqz	a5,11a78 <_vfprintf_r+0x178e>
   11a74:	c0dfe06f          	j	10680 <_vfprintf_r+0x396>
   11a78:	a39fe06f          	j	104b0 <_vfprintf_r+0x1c6>
   11a7c:	77aa                	ld	a5,168(sp)
   11a7e:	01b508b3          	add	a7,a0,s11
   11a82:	8b85                	andi	a5,a5,1
   11a84:	840798e3          	bnez	a5,112d4 <_vfprintf_r+0xfea>
   11a88:	76ee                	ld	a3,248(sp)
   11a8a:	863ff06f          	j	112ec <_vfprintf_r+0x1002>
   11a8e:	0a10                	addi	a2,sp,272
   11a90:	85ca                	mv	a1,s2
   11a92:	8552                	mv	a0,s4
   11a94:	216060ef          	jal	ra,17caa <__sprint_r>
   11a98:	a8051963          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   11a9c:	7786                	ld	a5,96(sp)
   11a9e:	835a                	mv	t1,s6
   11aa0:	0007c603          	lbu	a2,0(a5)
   11aa4:	7792                	ld	a5,288(sp)
   11aa6:	9c32                	add	s8,s8,a2
   11aa8:	b6fd                	j	11696 <_vfprintf_r+0x13ac>
   11aaa:	02d00793          	li	a5,45
   11aae:	0cf10fa3          	sb	a5,223(sp)
   11ab2:	ba71                	j	1144e <_vfprintf_r+0x1164>
   11ab4:	0a10                	addi	a2,sp,272
   11ab6:	85ca                	mv	a1,s2
   11ab8:	8552                	mv	a0,s4
   11aba:	1f0060ef          	jal	ra,17caa <__sprint_r>
   11abe:	a6051663          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   11ac2:	572e                	lw	a4,232(sp)
   11ac4:	7792                	ld	a5,288(sp)
   11ac6:	835a                	mv	t1,s6
   11ac8:	c4aff06f          	j	10f12 <_vfprintf_r+0xc28>
   11acc:	0df14783          	lbu	a5,223(sp)
   11ad0:	e86e                	sd	s11,16(sp)
   11ad2:	e882                	sd	zero,80(sp)
   11ad4:	ec82                	sd	zero,88(sp)
   11ad6:	e482                	sd	zero,72(sp)
   11ad8:	89e2                	mv	s3,s8
   11ada:	8be2                	mv	s7,s8
   11adc:	4c01                	li	s8,0
   11ade:	c399                	beqz	a5,11ae4 <_vfprintf_r+0x17fa>
   11ae0:	ba1fe06f          	j	10680 <_vfprintf_r+0x396>
   11ae4:	9cdfe06f          	j	104b0 <_vfprintf_r+0x1c6>
   11ae8:	0a10                	addi	a2,sp,272
   11aea:	85ca                	mv	a1,s2
   11aec:	8552                	mv	a0,s4
   11aee:	1bc060ef          	jal	ra,17caa <__sprint_r>
   11af2:	a2051c63          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   11af6:	56ae                	lw	a3,232(sp)
   11af8:	7702                	ld	a4,32(sp)
   11afa:	7792                	ld	a5,288(sp)
   11afc:	835a                	mv	t1,s6
   11afe:	40d706bb          	subw	a3,a4,a3
   11b02:	c4cff06f          	j	10f4e <_vfprintf_r+0xc64>
   11b06:	6871                	lui	a6,0x1c
   11b08:	27080c93          	addi	s9,a6,624 # 1c270 <__clzdi2+0x58>
   11b0c:	ba81                	j	1145c <_vfprintf_r+0x1172>
   11b0e:	68f1                	lui	a7,0x1c
   11b10:	5741                	li	a4,-16
   11b12:	40c00c3b          	negw	s8,a2
   11b16:	4d888d93          	addi	s11,a7,1240 # 1c4d8 <zeroes.0>
   11b1a:	4bc1                	li	s7,16
   11b1c:	4d1d                	li	s10,7
   11b1e:	00e64663          	blt	a2,a4,11b2a <_vfprintf_r+0x1840>
   11b22:	a0ad                	j	11b8c <_vfprintf_r+0x18a2>
   11b24:	3c41                	addiw	s8,s8,-16
   11b26:	078bd363          	bge	s7,s8,11b8c <_vfprintf_r+0x18a2>
   11b2a:	2685                	addiw	a3,a3,1
   11b2c:	07c1                	addi	a5,a5,16
   11b2e:	01b33023          	sd	s11,0(t1)
   11b32:	01733423          	sd	s7,8(t1)
   11b36:	f23e                	sd	a5,288(sp)
   11b38:	10d12c23          	sw	a3,280(sp)
   11b3c:	0341                	addi	t1,t1,16
   11b3e:	fedd53e3          	bge	s10,a3,11b24 <_vfprintf_r+0x183a>
   11b42:	0a10                	addi	a2,sp,272
   11b44:	85ca                	mv	a1,s2
   11b46:	8552                	mv	a0,s4
   11b48:	162060ef          	jal	ra,17caa <__sprint_r>
   11b4c:	9c051f63          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   11b50:	7792                	ld	a5,288(sp)
   11b52:	11812683          	lw	a3,280(sp)
   11b56:	835a                	mv	t1,s6
   11b58:	b7f1                	j	11b24 <_vfprintf_r+0x183a>
   11b5a:	57fd                	li	a5,-1
   11b5c:	e43e                	sd	a5,8(sp)
   11b5e:	a51fe06f          	j	105ae <_vfprintf_r+0x2c4>
   11b62:	7702                	ld	a4,32(sp)
   11b64:	77a6                	ld	a5,104(sp)
   11b66:	06700d13          	li	s10,103
   11b6a:	00e78bbb          	addw	s7,a5,a4
   11b6e:	6726                	ld	a4,72(sp)
   11b70:	fae04963          	bgtz	a4,11322 <_vfprintf_r+0x1038>
   11b74:	40eb87bb          	subw	a5,s7,a4
   11b78:	2785                	addiw	a5,a5,1
   11b7a:	00078b9b          	sext.w	s7,a5
   11b7e:	fffbc713          	not	a4,s7
   11b82:	977d                	srai	a4,a4,0x3f
   11b84:	8ff9                	and	a5,a5,a4
   11b86:	0007899b          	sext.w	s3,a5
   11b8a:	b421                	j	11592 <_vfprintf_r+0x12a8>
   11b8c:	2685                	addiw	a3,a3,1
   11b8e:	97e2                	add	a5,a5,s8
   11b90:	01b33023          	sd	s11,0(t1)
   11b94:	01833423          	sd	s8,8(t1)
   11b98:	f23e                	sd	a5,288(sp)
   11b9a:	10d12c23          	sw	a3,280(sp)
   11b9e:	471d                	li	a4,7
   11ba0:	84d75ce3          	bge	a4,a3,113f8 <_vfprintf_r+0x110e>
   11ba4:	0a10                	addi	a2,sp,272
   11ba6:	85ca                	mv	a1,s2
   11ba8:	8552                	mv	a0,s4
   11baa:	100060ef          	jal	ra,17caa <__sprint_r>
   11bae:	96051e63          	bnez	a0,10d2a <_vfprintf_r+0xa40>
   11bb2:	7792                	ld	a5,288(sp)
   11bb4:	11812683          	lw	a3,280(sp)
   11bb8:	835a                	mv	t1,s6
   11bba:	b225                	j	114e2 <_vfprintf_r+0x11f8>
   11bbc:	0f210713          	addi	a4,sp,242
   11bc0:	e619                	bnez	a2,11bce <_vfprintf_r+0x18e4>
   11bc2:	03000793          	li	a5,48
   11bc6:	0ef10923          	sb	a5,242(sp)
   11bca:	0f310713          	addi	a4,sp,243
   11bce:	0306879b          	addiw	a5,a3,48
   11bd2:	0c14                	addi	a3,sp,528
   11bd4:	40d706b3          	sub	a3,a4,a3
   11bd8:	00f70023          	sb	a5,0(a4)
   11bdc:	1216879b          	addiw	a5,a3,289
   11be0:	fcbe                	sd	a5,120(sp)
   11be2:	b1ad                	j	1184c <_vfprintf_r+0x1562>
   11be4:	77ea                	ld	a5,184(sp)
   11be6:	fdbe                	sd	a5,248(sp)
   11be8:	67a6                	ld	a5,72(sp)
   11bea:	fffdc683          	lbu	a3,-1(s11)
   11bee:	00f7c603          	lbu	a2,15(a5)
   11bf2:	87ee                	mv	a5,s11
   11bf4:	00d61e63          	bne	a2,a3,11c10 <_vfprintf_r+0x1926>
   11bf8:	03000593          	li	a1,48
   11bfc:	feb78fa3          	sb	a1,-1(a5)
   11c00:	77ee                	ld	a5,248(sp)
   11c02:	fff78693          	addi	a3,a5,-1
   11c06:	fdb6                	sd	a3,248(sp)
   11c08:	fff7c683          	lbu	a3,-1(a5)
   11c0c:	fed608e3          	beq	a2,a3,11bfc <_vfprintf_r+0x1912>
   11c10:	0016861b          	addiw	a2,a3,1
   11c14:	03900593          	li	a1,57
   11c18:	0ff67613          	zext.b	a2,a2
   11c1c:	00b68563          	beq	a3,a1,11c26 <_vfprintf_r+0x193c>
   11c20:	fec78fa3          	sb	a2,-1(a5)
   11c24:	bd0d                	j	11a56 <_vfprintf_r+0x176c>
   11c26:	6726                	ld	a4,72(sp)
   11c28:	00a74603          	lbu	a2,10(a4)
   11c2c:	fec78fa3          	sb	a2,-1(a5)
   11c30:	b51d                	j	11a56 <_vfprintf_r+0x176c>
   11c32:	8da6                	mv	s11,s1
   11c34:	914ff06f          	j	10d48 <_vfprintf_r+0xa5e>
   11c38:	772a                	ld	a4,168(sp)
   11c3a:	8b05                	andi	a4,a4,1
   11c3c:	c20703e3          	beqz	a4,11862 <_vfprintf_r+0x1578>
   11c40:	b931                	j	1185c <_vfprintf_r+0x1572>
   11c42:	000c0463          	beqz	s8,11c4a <_vfprintf_r+0x1960>
   11c46:	b1bfe06f          	j	10760 <_vfprintf_r+0x476>
   11c4a:	4c05                	li	s8,1
   11c4c:	b15fe06f          	j	10760 <_vfprintf_r+0x476>
   11c50:	4c19                	li	s8,6
   11c52:	b0ffe06f          	j	10760 <_vfprintf_r+0x476>
   11c56:	c31c                	sw	a5,0(a4)
   11c58:	8ca2                	mv	s9,s0
   11c5a:	937fe06f          	j	10590 <_vfprintf_r+0x2a6>
   11c5e:	85ce                	mv	a1,s3
   11c60:	855e                	mv	a0,s7
   11c62:	f81a                	sd	t1,48(sp)
   11c64:	3940a0ef          	jal	ra,1bff8 <__trunctfdf2>
   11c68:	11a8                	addi	a0,sp,232
   11c6a:	19a040ef          	jal	ra,15e04 <frexp>
   11c6e:	2c60a0ef          	jal	ra,1bf34 <__extenddftf2>
   11c72:	768a                	ld	a3,160(sp)
   11c74:	4601                	li	a2,0
   11c76:	324090ef          	jal	ra,1af9a <__multf3>
   11c7a:	4601                	li	a2,0
   11c7c:	4681                	li	a3,0
   11c7e:	8baa                	mv	s7,a0
   11c80:	f02e                	sd	a1,32(sp)
   11c82:	12c090ef          	jal	ra,1adae <__eqtf2>
   11c86:	7f82                	ld	t6,32(sp)
   11c88:	7342                	ld	t1,48(sp)
   11c8a:	e119                	bnez	a0,11c90 <_vfprintf_r+0x19a6>
   11c8c:	4785                	li	a5,1
   11c8e:	d5be                	sw	a5,232(sp)
   11c90:	67f1                	lui	a5,0x1c
   11c92:	28078793          	addi	a5,a5,640 # 1c280 <__clzdi2+0x68>
   11c96:	e4be                	sd	a5,72(sp)
   11c98:	b1e5                	j	11980 <_vfprintf_r+0x1696>
   11c9a:	06700d13          	li	s10,103
   11c9e:	7786                	ld	a5,96(sp)
   11ca0:	0ff00713          	li	a4,255
   11ca4:	e882                	sd	zero,80(sp)
   11ca6:	0007c783          	lbu	a5,0(a5)
   11caa:	ec82                	sd	zero,88(sp)
   11cac:	02e78863          	beq	a5,a4,11cdc <_vfprintf_r+0x19f2>
   11cb0:	0ff00693          	li	a3,255
   11cb4:	6626                	ld	a2,72(sp)
   11cb6:	0007871b          	sext.w	a4,a5
   11cba:	02c7d163          	bge	a5,a2,11cdc <_vfprintf_r+0x19f2>
   11cbe:	7586                	ld	a1,96(sp)
   11cc0:	40e6073b          	subw	a4,a2,a4
   11cc4:	e4ba                	sd	a4,72(sp)
   11cc6:	0015c783          	lbu	a5,1(a1)
   11cca:	cb95                	beqz	a5,11cfe <_vfprintf_r+0x1a14>
   11ccc:	6766                	ld	a4,88(sp)
   11cce:	2705                	addiw	a4,a4,1
   11cd0:	ecba                	sd	a4,88(sp)
   11cd2:	00158713          	addi	a4,a1,1
   11cd6:	f0ba                	sd	a4,96(sp)
   11cd8:	fcd79ee3          	bne	a5,a3,11cb4 <_vfprintf_r+0x19ca>
   11cdc:	6766                	ld	a4,88(sp)
   11cde:	67c6                	ld	a5,80(sp)
   11ce0:	9fb9                	addw	a5,a5,a4
   11ce2:	670a                	ld	a4,128(sp)
   11ce4:	02e787bb          	mulw	a5,a5,a4
   11ce8:	017787bb          	addw	a5,a5,s7
   11cec:	00078b9b          	sext.w	s7,a5
   11cf0:	fffbc713          	not	a4,s7
   11cf4:	977d                	srai	a4,a4,0x3f
   11cf6:	8ff9                	and	a5,a5,a4
   11cf8:	0007899b          	sext.w	s3,a5
   11cfc:	b869                	j	11596 <_vfprintf_r+0x12ac>
   11cfe:	6746                	ld	a4,80(sp)
   11d00:	7786                	ld	a5,96(sp)
   11d02:	2705                	addiw	a4,a4,1
   11d04:	0007c783          	lbu	a5,0(a5)
   11d08:	e8ba                	sd	a4,80(sp)
   11d0a:	b7f9                	j	11cd8 <_vfprintf_r+0x19ee>
   11d0c:	77a6                	ld	a5,104(sp)
   11d0e:	06600d13          	li	s10,102
   11d12:	00e78bbb          	addw	s7,a5,a4
   11d16:	018b8bbb          	addw	s7,s7,s8
   11d1a:	e08ff06f          	j	11322 <_vfprintf_r+0x1038>
   11d1e:	e799                	bnez	a5,11d2c <_vfprintf_r+0x1a42>
   11d20:	4985                	li	s3,1
   11d22:	06600d13          	li	s10,102
   11d26:	4b85                	li	s7,1
   11d28:	86bff06f          	j	11592 <_vfprintf_r+0x12a8>
   11d2c:	77a6                	ld	a5,104(sp)
   11d2e:	06600d13          	li	s10,102
   11d32:	2785                	addiw	a5,a5,1
   11d34:	018787bb          	addw	a5,a5,s8
   11d38:	00078b9b          	sext.w	s7,a5
   11d3c:	fffbc713          	not	a4,s7
   11d40:	977d                	srai	a4,a4,0x3f
   11d42:	8ff9                	and	a5,a5,a4
   11d44:	0007899b          	sext.w	s3,a5
   11d48:	84bff06f          	j	11592 <_vfprintf_r+0x12a8>
   11d4c:	66c2                	ld	a3,16(sp)
   11d4e:	4298                	lw	a4,0(a3)
   11d50:	00868613          	addi	a2,a3,8
   11d54:	86ba                	mv	a3,a4
   11d56:	00075363          	bgez	a4,11d5c <_vfprintf_r+0x1a72>
   11d5a:	56fd                	li	a3,-1
   11d5c:	00144e03          	lbu	t3,1(s0)
   11d60:	00068c1b          	sext.w	s8,a3
   11d64:	e832                	sd	a2,16(sp)
   11d66:	843e                	mv	s0,a5
   11d68:	ed2fe06f          	j	1043a <_vfprintf_r+0x150>
   11d6c:	4789                	li	a5,2
   11d6e:	fcbe                	sd	a5,120(sp)
   11d70:	bcf1                	j	1184c <_vfprintf_r+0x1562>
   11d72:	01095783          	lhu	a5,16(s2)
   11d76:	0407e793          	ori	a5,a5,64
   11d7a:	00f91823          	sh	a5,16(s2)
   11d7e:	823fe06f          	j	105a0 <_vfprintf_r+0x2b6>

0000000000011d82 <vfprintf>:
   11d82:	87aa                	mv	a5,a0
   11d84:	7581b503          	ld	a0,1880(gp) # 1f2d8 <_impure_ptr>
   11d88:	86b2                	mv	a3,a2
   11d8a:	862e                	mv	a2,a1
   11d8c:	85be                	mv	a1,a5
   11d8e:	d5cfe06f          	j	102ea <_vfprintf_r>

0000000000011d92 <__sbprintf>:
   11d92:	0105d783          	lhu	a5,16(a1)
   11d96:	0ac5ae03          	lw	t3,172(a1)
   11d9a:	0125d303          	lhu	t1,18(a1)
   11d9e:	0305b883          	ld	a7,48(a1)
   11da2:	0405b803          	ld	a6,64(a1)
   11da6:	b3010113          	addi	sp,sp,-1232
   11daa:	9bf5                	andi	a5,a5,-3
   11dac:	40000713          	li	a4,1024
   11db0:	4c813023          	sd	s0,1216(sp)
   11db4:	00f11823          	sh	a5,16(sp)
   11db8:	842e                	mv	s0,a1
   11dba:	191c                	addi	a5,sp,176
   11dbc:	858a                	mv	a1,sp
   11dbe:	4a913c23          	sd	s1,1208(sp)
   11dc2:	4b213823          	sd	s2,1200(sp)
   11dc6:	4c113423          	sd	ra,1224(sp)
   11dca:	892a                	mv	s2,a0
   11dcc:	d772                	sw	t3,172(sp)
   11dce:	00611923          	sh	t1,18(sp)
   11dd2:	f846                	sd	a7,48(sp)
   11dd4:	e0c2                	sd	a6,64(sp)
   11dd6:	e03e                	sd	a5,0(sp)
   11dd8:	ec3e                	sd	a5,24(sp)
   11dda:	c63a                	sw	a4,12(sp)
   11ddc:	d03a                	sw	a4,32(sp)
   11dde:	d402                	sw	zero,40(sp)
   11de0:	d0afe0ef          	jal	ra,102ea <_vfprintf_r>
   11de4:	84aa                	mv	s1,a0
   11de6:	02055963          	bgez	a0,11e18 <__sbprintf+0x86>
   11dea:	01015783          	lhu	a5,16(sp)
   11dee:	0407f793          	andi	a5,a5,64
   11df2:	c799                	beqz	a5,11e00 <__sbprintf+0x6e>
   11df4:	01045783          	lhu	a5,16(s0)
   11df8:	0407e793          	ori	a5,a5,64
   11dfc:	00f41823          	sh	a5,16(s0)
   11e00:	4c813083          	ld	ra,1224(sp)
   11e04:	4c013403          	ld	s0,1216(sp)
   11e08:	4b013903          	ld	s2,1200(sp)
   11e0c:	8526                	mv	a0,s1
   11e0e:	4b813483          	ld	s1,1208(sp)
   11e12:	4d010113          	addi	sp,sp,1232
   11e16:	8082                	ret
   11e18:	858a                	mv	a1,sp
   11e1a:	854a                	mv	a0,s2
   11e1c:	362000ef          	jal	ra,1217e <_fflush_r>
   11e20:	d569                	beqz	a0,11dea <__sbprintf+0x58>
   11e22:	54fd                	li	s1,-1
   11e24:	b7d9                	j	11dea <__sbprintf+0x58>

0000000000011e26 <__swsetup_r>:
   11e26:	7581b783          	ld	a5,1880(gp) # 1f2d8 <_impure_ptr>
   11e2a:	1101                	addi	sp,sp,-32
   11e2c:	e822                	sd	s0,16(sp)
   11e2e:	e426                	sd	s1,8(sp)
   11e30:	ec06                	sd	ra,24(sp)
   11e32:	84aa                	mv	s1,a0
   11e34:	842e                	mv	s0,a1
   11e36:	c399                	beqz	a5,11e3c <__swsetup_r+0x16>
   11e38:	4bb8                	lw	a4,80(a5)
   11e3a:	cf21                	beqz	a4,11e92 <__swsetup_r+0x6c>
   11e3c:	01041703          	lh	a4,16(s0)
   11e40:	03071793          	slli	a5,a4,0x30
   11e44:	00877693          	andi	a3,a4,8
   11e48:	93c1                	srli	a5,a5,0x30
   11e4a:	ceb9                	beqz	a3,11ea8 <__swsetup_r+0x82>
   11e4c:	6c14                	ld	a3,24(s0)
   11e4e:	cabd                	beqz	a3,11ec4 <__swsetup_r+0x9e>
   11e50:	0017f613          	andi	a2,a5,1
   11e54:	ce11                	beqz	a2,11e70 <__swsetup_r+0x4a>
   11e56:	5010                	lw	a2,32(s0)
   11e58:	00042623          	sw	zero,12(s0)
   11e5c:	4501                	li	a0,0
   11e5e:	40c0063b          	negw	a2,a2
   11e62:	d410                	sw	a2,40(s0)
   11e64:	ce91                	beqz	a3,11e80 <__swsetup_r+0x5a>
   11e66:	60e2                	ld	ra,24(sp)
   11e68:	6442                	ld	s0,16(sp)
   11e6a:	64a2                	ld	s1,8(sp)
   11e6c:	6105                	addi	sp,sp,32
   11e6e:	8082                	ret
   11e70:	0027f613          	andi	a2,a5,2
   11e74:	4581                	li	a1,0
   11e76:	e211                	bnez	a2,11e7a <__swsetup_r+0x54>
   11e78:	500c                	lw	a1,32(s0)
   11e7a:	c44c                	sw	a1,12(s0)
   11e7c:	4501                	li	a0,0
   11e7e:	f6e5                	bnez	a3,11e66 <__swsetup_r+0x40>
   11e80:	0807f793          	andi	a5,a5,128
   11e84:	d3ed                	beqz	a5,11e66 <__swsetup_r+0x40>
   11e86:	04076713          	ori	a4,a4,64
   11e8a:	00e41823          	sh	a4,16(s0)
   11e8e:	557d                	li	a0,-1
   11e90:	bfd9                	j	11e66 <__swsetup_r+0x40>
   11e92:	853e                	mv	a0,a5
   11e94:	5c6000ef          	jal	ra,1245a <__sinit>
   11e98:	01041703          	lh	a4,16(s0)
   11e9c:	03071793          	slli	a5,a4,0x30
   11ea0:	00877693          	andi	a3,a4,8
   11ea4:	93c1                	srli	a5,a5,0x30
   11ea6:	f2dd                	bnez	a3,11e4c <__swsetup_r+0x26>
   11ea8:	0107f693          	andi	a3,a5,16
   11eac:	c2ad                	beqz	a3,11f0e <__swsetup_r+0xe8>
   11eae:	8b91                	andi	a5,a5,4
   11eb0:	eb9d                	bnez	a5,11ee6 <__swsetup_r+0xc0>
   11eb2:	6c14                	ld	a3,24(s0)
   11eb4:	00876713          	ori	a4,a4,8
   11eb8:	03071793          	slli	a5,a4,0x30
   11ebc:	00e41823          	sh	a4,16(s0)
   11ec0:	93c1                	srli	a5,a5,0x30
   11ec2:	f6d9                	bnez	a3,11e50 <__swsetup_r+0x2a>
   11ec4:	2807f613          	andi	a2,a5,640
   11ec8:	20000593          	li	a1,512
   11ecc:	f8b602e3          	beq	a2,a1,11e50 <__swsetup_r+0x2a>
   11ed0:	85a2                	mv	a1,s0
   11ed2:	8526                	mv	a0,s1
   11ed4:	247020ef          	jal	ra,1491a <__smakebuf_r>
   11ed8:	01041703          	lh	a4,16(s0)
   11edc:	6c14                	ld	a3,24(s0)
   11ede:	03071793          	slli	a5,a4,0x30
   11ee2:	93c1                	srli	a5,a5,0x30
   11ee4:	b7b5                	j	11e50 <__swsetup_r+0x2a>
   11ee6:	6c2c                	ld	a1,88(s0)
   11ee8:	cd81                	beqz	a1,11f00 <__swsetup_r+0xda>
   11eea:	07440793          	addi	a5,s0,116
   11eee:	00f58763          	beq	a1,a5,11efc <__swsetup_r+0xd6>
   11ef2:	8526                	mv	a0,s1
   11ef4:	696000ef          	jal	ra,1258a <_free_r>
   11ef8:	01041703          	lh	a4,16(s0)
   11efc:	04043c23          	sd	zero,88(s0)
   11f00:	6c14                	ld	a3,24(s0)
   11f02:	fdb77713          	andi	a4,a4,-37
   11f06:	00042423          	sw	zero,8(s0)
   11f0a:	e014                	sd	a3,0(s0)
   11f0c:	b765                	j	11eb4 <__swsetup_r+0x8e>
   11f0e:	47a5                	li	a5,9
   11f10:	c09c                	sw	a5,0(s1)
   11f12:	04076713          	ori	a4,a4,64
   11f16:	00e41823          	sh	a4,16(s0)
   11f1a:	557d                	li	a0,-1
   11f1c:	b7a9                	j	11e66 <__swsetup_r+0x40>

0000000000011f1e <__call_exitprocs>:
   11f1e:	715d                	addi	sp,sp,-80
   11f20:	f052                	sd	s4,32(sp)
   11f22:	7481ba03          	ld	s4,1864(gp) # 1f2c8 <_global_impure_ptr>
   11f26:	f84a                	sd	s2,48(sp)
   11f28:	e486                	sd	ra,72(sp)
   11f2a:	1f8a3903          	ld	s2,504(s4)
   11f2e:	e0a2                	sd	s0,64(sp)
   11f30:	fc26                	sd	s1,56(sp)
   11f32:	f44e                	sd	s3,40(sp)
   11f34:	ec56                	sd	s5,24(sp)
   11f36:	e85a                	sd	s6,16(sp)
   11f38:	e45e                	sd	s7,8(sp)
   11f3a:	e062                	sd	s8,0(sp)
   11f3c:	02090863          	beqz	s2,11f6c <__call_exitprocs+0x4e>
   11f40:	8b2a                	mv	s6,a0
   11f42:	8bae                	mv	s7,a1
   11f44:	4a85                	li	s5,1
   11f46:	59fd                	li	s3,-1
   11f48:	00892483          	lw	s1,8(s2)
   11f4c:	fff4841b          	addiw	s0,s1,-1
   11f50:	00044e63          	bltz	s0,11f6c <__call_exitprocs+0x4e>
   11f54:	048e                	slli	s1,s1,0x3
   11f56:	94ca                	add	s1,s1,s2
   11f58:	020b8663          	beqz	s7,11f84 <__call_exitprocs+0x66>
   11f5c:	2084b783          	ld	a5,520(s1)
   11f60:	03778263          	beq	a5,s7,11f84 <__call_exitprocs+0x66>
   11f64:	347d                	addiw	s0,s0,-1
   11f66:	14e1                	addi	s1,s1,-8
   11f68:	ff3418e3          	bne	s0,s3,11f58 <__call_exitprocs+0x3a>
   11f6c:	60a6                	ld	ra,72(sp)
   11f6e:	6406                	ld	s0,64(sp)
   11f70:	74e2                	ld	s1,56(sp)
   11f72:	7942                	ld	s2,48(sp)
   11f74:	79a2                	ld	s3,40(sp)
   11f76:	7a02                	ld	s4,32(sp)
   11f78:	6ae2                	ld	s5,24(sp)
   11f7a:	6b42                	ld	s6,16(sp)
   11f7c:	6ba2                	ld	s7,8(sp)
   11f7e:	6c02                	ld	s8,0(sp)
   11f80:	6161                	addi	sp,sp,80
   11f82:	8082                	ret
   11f84:	00892783          	lw	a5,8(s2)
   11f88:	6498                	ld	a4,8(s1)
   11f8a:	37fd                	addiw	a5,a5,-1
   11f8c:	04878463          	beq	a5,s0,11fd4 <__call_exitprocs+0xb6>
   11f90:	0004b423          	sd	zero,8(s1)
   11f94:	db61                	beqz	a4,11f64 <__call_exitprocs+0x46>
   11f96:	31092783          	lw	a5,784(s2)
   11f9a:	008a96bb          	sllw	a3,s5,s0
   11f9e:	00892c03          	lw	s8,8(s2)
   11fa2:	8ff5                	and	a5,a5,a3
   11fa4:	2781                	sext.w	a5,a5
   11fa6:	ef89                	bnez	a5,11fc0 <__call_exitprocs+0xa2>
   11fa8:	9702                	jalr	a4
   11faa:	00892703          	lw	a4,8(s2)
   11fae:	1f8a3783          	ld	a5,504(s4)
   11fb2:	01871463          	bne	a4,s8,11fba <__call_exitprocs+0x9c>
   11fb6:	fb2787e3          	beq	a5,s2,11f64 <__call_exitprocs+0x46>
   11fba:	dbcd                	beqz	a5,11f6c <__call_exitprocs+0x4e>
   11fbc:	893e                	mv	s2,a5
   11fbe:	b769                	j	11f48 <__call_exitprocs+0x2a>
   11fc0:	31492783          	lw	a5,788(s2)
   11fc4:	1084b583          	ld	a1,264(s1)
   11fc8:	8ff5                	and	a5,a5,a3
   11fca:	2781                	sext.w	a5,a5
   11fcc:	e799                	bnez	a5,11fda <__call_exitprocs+0xbc>
   11fce:	855a                	mv	a0,s6
   11fd0:	9702                	jalr	a4
   11fd2:	bfe1                	j	11faa <__call_exitprocs+0x8c>
   11fd4:	00892423          	sw	s0,8(s2)
   11fd8:	bf75                	j	11f94 <__call_exitprocs+0x76>
   11fda:	852e                	mv	a0,a1
   11fdc:	9702                	jalr	a4
   11fde:	b7f1                	j	11faa <__call_exitprocs+0x8c>

0000000000011fe0 <atexit>:
   11fe0:	85aa                	mv	a1,a0
   11fe2:	4681                	li	a3,0
   11fe4:	4601                	li	a2,0
   11fe6:	4501                	li	a0,0
   11fe8:	1f30606f          	j	189da <__register_exitproc>

0000000000011fec <__sflush_r>:
   11fec:	01059783          	lh	a5,16(a1)
   11ff0:	7179                	addi	sp,sp,-48
   11ff2:	f022                	sd	s0,32(sp)
   11ff4:	e44e                	sd	s3,8(sp)
   11ff6:	f406                	sd	ra,40(sp)
   11ff8:	ec26                	sd	s1,24(sp)
   11ffa:	e84a                	sd	s2,16(sp)
   11ffc:	0087f693          	andi	a3,a5,8
   12000:	842e                	mv	s0,a1
   12002:	89aa                	mv	s3,a0
   12004:	ead5                	bnez	a3,120b8 <__sflush_r+0xcc>
   12006:	6705                	lui	a4,0x1
   12008:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf8b0>
   1200c:	4594                	lw	a3,8(a1)
   1200e:	8fd9                	or	a5,a5,a4
   12010:	00f59823          	sh	a5,16(a1)
   12014:	10d05063          	blez	a3,12114 <__sflush_r+0x128>
   12018:	6438                	ld	a4,72(s0)
   1201a:	c759                	beqz	a4,120a8 <__sflush_r+0xbc>
   1201c:	17c2                	slli	a5,a5,0x30
   1201e:	93c1                	srli	a5,a5,0x30
   12020:	6685                	lui	a3,0x1
   12022:	0009a483          	lw	s1,0(s3)
   12026:	8efd                	and	a3,a3,a5
   12028:	0009a023          	sw	zero,0(s3)
   1202c:	780c                	ld	a1,48(s0)
   1202e:	e6fd                	bnez	a3,1211c <__sflush_r+0x130>
   12030:	4601                	li	a2,0
   12032:	4685                	li	a3,1
   12034:	854e                	mv	a0,s3
   12036:	9702                	jalr	a4
   12038:	57fd                	li	a5,-1
   1203a:	862a                	mv	a2,a0
   1203c:	10f50763          	beq	a0,a5,1214a <__sflush_r+0x15e>
   12040:	01045783          	lhu	a5,16(s0)
   12044:	6438                	ld	a4,72(s0)
   12046:	780c                	ld	a1,48(s0)
   12048:	8b91                	andi	a5,a5,4
   1204a:	c799                	beqz	a5,12058 <__sflush_r+0x6c>
   1204c:	4414                	lw	a3,8(s0)
   1204e:	6c3c                	ld	a5,88(s0)
   12050:	8e15                	sub	a2,a2,a3
   12052:	c399                	beqz	a5,12058 <__sflush_r+0x6c>
   12054:	583c                	lw	a5,112(s0)
   12056:	8e1d                	sub	a2,a2,a5
   12058:	4681                	li	a3,0
   1205a:	854e                	mv	a0,s3
   1205c:	9702                	jalr	a4
   1205e:	57fd                	li	a5,-1
   12060:	0cf51063          	bne	a0,a5,12120 <__sflush_r+0x134>
   12064:	0009a703          	lw	a4,0(s3)
   12068:	01041783          	lh	a5,16(s0)
   1206c:	cf6d                	beqz	a4,12166 <__sflush_r+0x17a>
   1206e:	46f5                	li	a3,29
   12070:	00d70563          	beq	a4,a3,1207a <__sflush_r+0x8e>
   12074:	46d9                	li	a3,22
   12076:	0ed71e63          	bne	a4,a3,12172 <__sflush_r+0x186>
   1207a:	6c14                	ld	a3,24(s0)
   1207c:	777d                	lui	a4,0xfffff
   1207e:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffe047f>
   12082:	8ff9                	and	a5,a5,a4
   12084:	00f41823          	sh	a5,16(s0)
   12088:	00042423          	sw	zero,8(s0)
   1208c:	e014                	sd	a3,0(s0)
   1208e:	6c2c                	ld	a1,88(s0)
   12090:	0099a023          	sw	s1,0(s3)
   12094:	c991                	beqz	a1,120a8 <__sflush_r+0xbc>
   12096:	07440793          	addi	a5,s0,116
   1209a:	00f58563          	beq	a1,a5,120a4 <__sflush_r+0xb8>
   1209e:	854e                	mv	a0,s3
   120a0:	4ea000ef          	jal	ra,1258a <_free_r>
   120a4:	04043c23          	sd	zero,88(s0)
   120a8:	4501                	li	a0,0
   120aa:	70a2                	ld	ra,40(sp)
   120ac:	7402                	ld	s0,32(sp)
   120ae:	64e2                	ld	s1,24(sp)
   120b0:	6942                	ld	s2,16(sp)
   120b2:	69a2                	ld	s3,8(sp)
   120b4:	6145                	addi	sp,sp,48
   120b6:	8082                	ret
   120b8:	0185b903          	ld	s2,24(a1)
   120bc:	fe0906e3          	beqz	s2,120a8 <__sflush_r+0xbc>
   120c0:	6184                	ld	s1,0(a1)
   120c2:	03079713          	slli	a4,a5,0x30
   120c6:	9341                	srli	a4,a4,0x30
   120c8:	8b0d                	andi	a4,a4,3
   120ca:	0125b023          	sd	s2,0(a1)
   120ce:	412484bb          	subw	s1,s1,s2
   120d2:	4781                	li	a5,0
   120d4:	e311                	bnez	a4,120d8 <__sflush_r+0xec>
   120d6:	519c                	lw	a5,32(a1)
   120d8:	c45c                	sw	a5,12(s0)
   120da:	00904663          	bgtz	s1,120e6 <__sflush_r+0xfa>
   120de:	b7e9                	j	120a8 <__sflush_r+0xbc>
   120e0:	992a                	add	s2,s2,a0
   120e2:	fc9053e3          	blez	s1,120a8 <__sflush_r+0xbc>
   120e6:	603c                	ld	a5,64(s0)
   120e8:	780c                	ld	a1,48(s0)
   120ea:	86a6                	mv	a3,s1
   120ec:	864a                	mv	a2,s2
   120ee:	854e                	mv	a0,s3
   120f0:	9782                	jalr	a5
   120f2:	9c89                	subw	s1,s1,a0
   120f4:	fea046e3          	bgtz	a0,120e0 <__sflush_r+0xf4>
   120f8:	01045783          	lhu	a5,16(s0)
   120fc:	70a2                	ld	ra,40(sp)
   120fe:	64e2                	ld	s1,24(sp)
   12100:	0407e793          	ori	a5,a5,64
   12104:	00f41823          	sh	a5,16(s0)
   12108:	7402                	ld	s0,32(sp)
   1210a:	6942                	ld	s2,16(sp)
   1210c:	69a2                	ld	s3,8(sp)
   1210e:	557d                	li	a0,-1
   12110:	6145                	addi	sp,sp,48
   12112:	8082                	ret
   12114:	59b8                	lw	a4,112(a1)
   12116:	f0e041e3          	bgtz	a4,12018 <__sflush_r+0x2c>
   1211a:	b779                	j	120a8 <__sflush_r+0xbc>
   1211c:	6850                	ld	a2,144(s0)
   1211e:	b72d                	j	12048 <__sflush_r+0x5c>
   12120:	01045783          	lhu	a5,16(s0)
   12124:	777d                	lui	a4,0xfffff
   12126:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffe047f>
   1212a:	8ff9                	and	a5,a5,a4
   1212c:	6c14                	ld	a3,24(s0)
   1212e:	0107979b          	slliw	a5,a5,0x10
   12132:	4107d79b          	sraiw	a5,a5,0x10
   12136:	6705                	lui	a4,0x1
   12138:	00f41823          	sh	a5,16(s0)
   1213c:	00042423          	sw	zero,8(s0)
   12140:	e014                	sd	a3,0(s0)
   12142:	8ff9                	and	a5,a5,a4
   12144:	d7a9                	beqz	a5,1208e <__sflush_r+0xa2>
   12146:	e848                	sd	a0,144(s0)
   12148:	b799                	j	1208e <__sflush_r+0xa2>
   1214a:	0009a783          	lw	a5,0(s3)
   1214e:	ee0789e3          	beqz	a5,12040 <__sflush_r+0x54>
   12152:	4775                	li	a4,29
   12154:	00e78563          	beq	a5,a4,1215e <__sflush_r+0x172>
   12158:	4759                	li	a4,22
   1215a:	f8e79fe3          	bne	a5,a4,120f8 <__sflush_r+0x10c>
   1215e:	0099a023          	sw	s1,0(s3)
   12162:	4501                	li	a0,0
   12164:	b799                	j	120aa <__sflush_r+0xbe>
   12166:	777d                	lui	a4,0xfffff
   12168:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffe047f>
   1216c:	6c14                	ld	a3,24(s0)
   1216e:	8ff9                	and	a5,a5,a4
   12170:	b7d9                	j	12136 <__sflush_r+0x14a>
   12172:	0407e793          	ori	a5,a5,64
   12176:	00f41823          	sh	a5,16(s0)
   1217a:	557d                	li	a0,-1
   1217c:	b73d                	j	120aa <__sflush_r+0xbe>

000000000001217e <_fflush_r>:
   1217e:	1101                	addi	sp,sp,-32
   12180:	e822                	sd	s0,16(sp)
   12182:	ec06                	sd	ra,24(sp)
   12184:	842a                	mv	s0,a0
   12186:	c119                	beqz	a0,1218c <_fflush_r+0xe>
   12188:	493c                	lw	a5,80(a0)
   1218a:	cb89                	beqz	a5,1219c <_fflush_r+0x1e>
   1218c:	01059783          	lh	a5,16(a1)
   12190:	ef89                	bnez	a5,121aa <_fflush_r+0x2c>
   12192:	60e2                	ld	ra,24(sp)
   12194:	6442                	ld	s0,16(sp)
   12196:	4501                	li	a0,0
   12198:	6105                	addi	sp,sp,32
   1219a:	8082                	ret
   1219c:	e42e                	sd	a1,8(sp)
   1219e:	2bc000ef          	jal	ra,1245a <__sinit>
   121a2:	65a2                	ld	a1,8(sp)
   121a4:	01059783          	lh	a5,16(a1)
   121a8:	d7ed                	beqz	a5,12192 <_fflush_r+0x14>
   121aa:	8522                	mv	a0,s0
   121ac:	6442                	ld	s0,16(sp)
   121ae:	60e2                	ld	ra,24(sp)
   121b0:	6105                	addi	sp,sp,32
   121b2:	bd2d                	j	11fec <__sflush_r>

00000000000121b4 <fflush>:
   121b4:	cd1d                	beqz	a0,121f2 <fflush+0x3e>
   121b6:	1101                	addi	sp,sp,-32
   121b8:	e822                	sd	s0,16(sp)
   121ba:	842a                	mv	s0,a0
   121bc:	7581b503          	ld	a0,1880(gp) # 1f2d8 <_impure_ptr>
   121c0:	ec06                	sd	ra,24(sp)
   121c2:	c119                	beqz	a0,121c8 <fflush+0x14>
   121c4:	493c                	lw	a5,80(a0)
   121c6:	cf91                	beqz	a5,121e2 <fflush+0x2e>
   121c8:	01041783          	lh	a5,16(s0)
   121cc:	e791                	bnez	a5,121d8 <fflush+0x24>
   121ce:	60e2                	ld	ra,24(sp)
   121d0:	6442                	ld	s0,16(sp)
   121d2:	4501                	li	a0,0
   121d4:	6105                	addi	sp,sp,32
   121d6:	8082                	ret
   121d8:	85a2                	mv	a1,s0
   121da:	6442                	ld	s0,16(sp)
   121dc:	60e2                	ld	ra,24(sp)
   121de:	6105                	addi	sp,sp,32
   121e0:	b531                	j	11fec <__sflush_r>
   121e2:	e42a                	sd	a0,8(sp)
   121e4:	276000ef          	jal	ra,1245a <__sinit>
   121e8:	01041783          	lh	a5,16(s0)
   121ec:	6522                	ld	a0,8(sp)
   121ee:	d3e5                	beqz	a5,121ce <fflush+0x1a>
   121f0:	b7e5                	j	121d8 <fflush+0x24>
   121f2:	7481b503          	ld	a0,1864(gp) # 1f2c8 <_global_impure_ptr>
   121f6:	65c9                	lui	a1,0x12
   121f8:	17e58593          	addi	a1,a1,382 # 1217e <_fflush_r>
   121fc:	a58d                	j	1285e <_fwalk_reent>

00000000000121fe <__fp_lock>:
   121fe:	4501                	li	a0,0
   12200:	8082                	ret

0000000000012202 <_cleanup_r>:
   12202:	65e5                	lui	a1,0x19
   12204:	b8058593          	addi	a1,a1,-1152 # 18b80 <_fclose_r>
   12208:	ad99                	j	1285e <_fwalk_reent>

000000000001220a <__fp_unlock>:
   1220a:	4501                	li	a0,0
   1220c:	8082                	ret

000000000001220e <__sinit.part.0>:
   1220e:	7139                	addi	sp,sp,-64
   12210:	67c9                	lui	a5,0x12
   12212:	fc06                	sd	ra,56(sp)
   12214:	f822                	sd	s0,48(sp)
   12216:	f426                	sd	s1,40(sp)
   12218:	f04a                	sd	s2,32(sp)
   1221a:	ec4e                	sd	s3,24(sp)
   1221c:	e852                	sd	s4,16(sp)
   1221e:	e456                	sd	s5,8(sp)
   12220:	e05a                	sd	s6,0(sp)
   12222:	6500                	ld	s0,8(a0)
   12224:	20278793          	addi	a5,a5,514 # 12202 <_cleanup_r>
   12228:	ed3c                	sd	a5,88(a0)
   1222a:	53850713          	addi	a4,a0,1336
   1222e:	478d                	li	a5,3
   12230:	52e53823          	sd	a4,1328(a0)
   12234:	52f52423          	sw	a5,1320(a0)
   12238:	52053023          	sd	zero,1312(a0)
   1223c:	4791                	li	a5,4
   1223e:	892a                	mv	s2,a0
   12240:	c81c                	sw	a5,16(s0)
   12242:	4621                	li	a2,8
   12244:	4581                	li	a1,0
   12246:	0a042623          	sw	zero,172(s0)
   1224a:	00043023          	sd	zero,0(s0)
   1224e:	00043423          	sd	zero,8(s0)
   12252:	00043c23          	sd	zero,24(s0)
   12256:	02042023          	sw	zero,32(s0)
   1225a:	02042423          	sw	zero,40(s0)
   1225e:	0a440513          	addi	a0,s0,164
   12262:	f91fd0ef          	jal	ra,101f2 <memset>
   12266:	6b59                	lui	s6,0x16
   12268:	01093483          	ld	s1,16(s2)
   1226c:	6ad9                	lui	s5,0x16
   1226e:	6a59                	lui	s4,0x16
   12270:	69d9                	lui	s3,0x16
   12272:	f42b0b13          	addi	s6,s6,-190 # 15f42 <__sread>
   12276:	f7ea8a93          	addi	s5,s5,-130 # 15f7e <__swrite>
   1227a:	fd2a0a13          	addi	s4,s4,-46 # 15fd2 <__sseek>
   1227e:	01498993          	addi	s3,s3,20 # 16014 <__sclose>
   12282:	67c1                	lui	a5,0x10
   12284:	03643c23          	sd	s6,56(s0)
   12288:	05543023          	sd	s5,64(s0)
   1228c:	05443423          	sd	s4,72(s0)
   12290:	05343823          	sd	s3,80(s0)
   12294:	f800                	sd	s0,48(s0)
   12296:	07a5                	addi	a5,a5,9
   12298:	c89c                	sw	a5,16(s1)
   1229a:	4621                	li	a2,8
   1229c:	4581                	li	a1,0
   1229e:	0a04a623          	sw	zero,172(s1)
   122a2:	0004b023          	sd	zero,0(s1)
   122a6:	0004b423          	sd	zero,8(s1)
   122aa:	0004bc23          	sd	zero,24(s1)
   122ae:	0204a023          	sw	zero,32(s1)
   122b2:	0204a423          	sw	zero,40(s1)
   122b6:	0a448513          	addi	a0,s1,164
   122ba:	f39fd0ef          	jal	ra,101f2 <memset>
   122be:	01893403          	ld	s0,24(s2)
   122c2:	000207b7          	lui	a5,0x20
   122c6:	0364bc23          	sd	s6,56(s1)
   122ca:	0554b023          	sd	s5,64(s1)
   122ce:	0544b423          	sd	s4,72(s1)
   122d2:	0534b823          	sd	s3,80(s1)
   122d6:	f884                	sd	s1,48(s1)
   122d8:	07c9                	addi	a5,a5,18
   122da:	c81c                	sw	a5,16(s0)
   122dc:	0a042623          	sw	zero,172(s0)
   122e0:	00043023          	sd	zero,0(s0)
   122e4:	00043423          	sd	zero,8(s0)
   122e8:	00043c23          	sd	zero,24(s0)
   122ec:	02042023          	sw	zero,32(s0)
   122f0:	02042423          	sw	zero,40(s0)
   122f4:	0a440513          	addi	a0,s0,164
   122f8:	4621                	li	a2,8
   122fa:	4581                	li	a1,0
   122fc:	ef7fd0ef          	jal	ra,101f2 <memset>
   12300:	70e2                	ld	ra,56(sp)
   12302:	03643c23          	sd	s6,56(s0)
   12306:	05543023          	sd	s5,64(s0)
   1230a:	05443423          	sd	s4,72(s0)
   1230e:	05343823          	sd	s3,80(s0)
   12312:	f800                	sd	s0,48(s0)
   12314:	7442                	ld	s0,48(sp)
   12316:	4785                	li	a5,1
   12318:	04f92823          	sw	a5,80(s2)
   1231c:	74a2                	ld	s1,40(sp)
   1231e:	7902                	ld	s2,32(sp)
   12320:	69e2                	ld	s3,24(sp)
   12322:	6a42                	ld	s4,16(sp)
   12324:	6aa2                	ld	s5,8(sp)
   12326:	6b02                	ld	s6,0(sp)
   12328:	6121                	addi	sp,sp,64
   1232a:	8082                	ret

000000000001232c <__sfmoreglue>:
   1232c:	1101                	addi	sp,sp,-32
   1232e:	e426                	sd	s1,8(sp)
   12330:	0b000793          	li	a5,176
   12334:	fff5849b          	addiw	s1,a1,-1
   12338:	02f484b3          	mul	s1,s1,a5
   1233c:	e04a                	sd	s2,0(sp)
   1233e:	892e                	mv	s2,a1
   12340:	e822                	sd	s0,16(sp)
   12342:	ec06                	sd	ra,24(sp)
   12344:	0c848593          	addi	a1,s1,200
   12348:	770020ef          	jal	ra,14ab8 <_malloc_r>
   1234c:	842a                	mv	s0,a0
   1234e:	cd01                	beqz	a0,12366 <__sfmoreglue+0x3a>
   12350:	0561                	addi	a0,a0,24
   12352:	00043023          	sd	zero,0(s0)
   12356:	01242423          	sw	s2,8(s0)
   1235a:	e808                	sd	a0,16(s0)
   1235c:	0b048613          	addi	a2,s1,176
   12360:	4581                	li	a1,0
   12362:	e91fd0ef          	jal	ra,101f2 <memset>
   12366:	60e2                	ld	ra,24(sp)
   12368:	8522                	mv	a0,s0
   1236a:	6442                	ld	s0,16(sp)
   1236c:	64a2                	ld	s1,8(sp)
   1236e:	6902                	ld	s2,0(sp)
   12370:	6105                	addi	sp,sp,32
   12372:	8082                	ret

0000000000012374 <__sfp>:
   12374:	7179                	addi	sp,sp,-48
   12376:	ec26                	sd	s1,24(sp)
   12378:	7481b483          	ld	s1,1864(gp) # 1f2c8 <_global_impure_ptr>
   1237c:	e84a                	sd	s2,16(sp)
   1237e:	f406                	sd	ra,40(sp)
   12380:	48bc                	lw	a5,80(s1)
   12382:	f022                	sd	s0,32(sp)
   12384:	e44e                	sd	s3,8(sp)
   12386:	e052                	sd	s4,0(sp)
   12388:	892a                	mv	s2,a0
   1238a:	c3d9                	beqz	a5,12410 <__sfp+0x9c>
   1238c:	52048493          	addi	s1,s1,1312
   12390:	0b000993          	li	s3,176
   12394:	4a11                	li	s4,4
   12396:	449c                	lw	a5,8(s1)
   12398:	6880                	ld	s0,16(s1)
   1239a:	06f05763          	blez	a5,12408 <__sfp+0x94>
   1239e:	37fd                	addiw	a5,a5,-1
   123a0:	1782                	slli	a5,a5,0x20
   123a2:	9381                	srli	a5,a5,0x20
   123a4:	0785                	addi	a5,a5,1
   123a6:	033787b3          	mul	a5,a5,s3
   123aa:	97a2                	add	a5,a5,s0
   123ac:	a029                	j	123b6 <__sfp+0x42>
   123ae:	0b040413          	addi	s0,s0,176
   123b2:	04f40b63          	beq	s0,a5,12408 <__sfp+0x94>
   123b6:	01041703          	lh	a4,16(s0)
   123ba:	fb75                	bnez	a4,123ae <__sfp+0x3a>
   123bc:	77c1                	lui	a5,0xffff0
   123be:	0785                	addi	a5,a5,1
   123c0:	0a042623          	sw	zero,172(s0)
   123c4:	00043023          	sd	zero,0(s0)
   123c8:	00043423          	sd	zero,8(s0)
   123cc:	c81c                	sw	a5,16(s0)
   123ce:	00043c23          	sd	zero,24(s0)
   123d2:	02042023          	sw	zero,32(s0)
   123d6:	02042423          	sw	zero,40(s0)
   123da:	4621                	li	a2,8
   123dc:	4581                	li	a1,0
   123de:	0a440513          	addi	a0,s0,164
   123e2:	e11fd0ef          	jal	ra,101f2 <memset>
   123e6:	04043c23          	sd	zero,88(s0)
   123ea:	06042023          	sw	zero,96(s0)
   123ee:	06043c23          	sd	zero,120(s0)
   123f2:	08042023          	sw	zero,128(s0)
   123f6:	70a2                	ld	ra,40(sp)
   123f8:	8522                	mv	a0,s0
   123fa:	7402                	ld	s0,32(sp)
   123fc:	64e2                	ld	s1,24(sp)
   123fe:	6942                	ld	s2,16(sp)
   12400:	69a2                	ld	s3,8(sp)
   12402:	6a02                	ld	s4,0(sp)
   12404:	6145                	addi	sp,sp,48
   12406:	8082                	ret
   12408:	6080                	ld	s0,0(s1)
   1240a:	c419                	beqz	s0,12418 <__sfp+0xa4>
   1240c:	84a2                	mv	s1,s0
   1240e:	b761                	j	12396 <__sfp+0x22>
   12410:	8526                	mv	a0,s1
   12412:	dfdff0ef          	jal	ra,1220e <__sinit.part.0>
   12416:	bf9d                	j	1238c <__sfp+0x18>
   12418:	2d800593          	li	a1,728
   1241c:	854a                	mv	a0,s2
   1241e:	69a020ef          	jal	ra,14ab8 <_malloc_r>
   12422:	842a                	mv	s0,a0
   12424:	cd19                	beqz	a0,12442 <__sfp+0xce>
   12426:	0561                	addi	a0,a0,24
   12428:	00043023          	sd	zero,0(s0)
   1242c:	01442423          	sw	s4,8(s0)
   12430:	e808                	sd	a0,16(s0)
   12432:	2c000613          	li	a2,704
   12436:	4581                	li	a1,0
   12438:	dbbfd0ef          	jal	ra,101f2 <memset>
   1243c:	e080                	sd	s0,0(s1)
   1243e:	84a2                	mv	s1,s0
   12440:	bf99                	j	12396 <__sfp+0x22>
   12442:	0004b023          	sd	zero,0(s1)
   12446:	47b1                	li	a5,12
   12448:	00f92023          	sw	a5,0(s2)
   1244c:	b76d                	j	123f6 <__sfp+0x82>

000000000001244e <_cleanup>:
   1244e:	7481b503          	ld	a0,1864(gp) # 1f2c8 <_global_impure_ptr>
   12452:	65e5                	lui	a1,0x19
   12454:	b8058593          	addi	a1,a1,-1152 # 18b80 <_fclose_r>
   12458:	a119                	j	1285e <_fwalk_reent>

000000000001245a <__sinit>:
   1245a:	493c                	lw	a5,80(a0)
   1245c:	c391                	beqz	a5,12460 <__sinit+0x6>
   1245e:	8082                	ret
   12460:	b37d                	j	1220e <__sinit.part.0>

0000000000012462 <__sfp_lock_acquire>:
   12462:	8082                	ret

0000000000012464 <__sfp_lock_release>:
   12464:	8082                	ret

0000000000012466 <__sinit_lock_acquire>:
   12466:	8082                	ret

0000000000012468 <__sinit_lock_release>:
   12468:	8082                	ret

000000000001246a <__fp_lock_all>:
   1246a:	7581b503          	ld	a0,1880(gp) # 1f2d8 <_impure_ptr>
   1246e:	65c9                	lui	a1,0x12
   12470:	1fe58593          	addi	a1,a1,510 # 121fe <__fp_lock>
   12474:	a6a5                	j	127dc <_fwalk>

0000000000012476 <__fp_unlock_all>:
   12476:	7581b503          	ld	a0,1880(gp) # 1f2d8 <_impure_ptr>
   1247a:	65c9                	lui	a1,0x12
   1247c:	20a58593          	addi	a1,a1,522 # 1220a <__fp_unlock>
   12480:	aeb1                	j	127dc <_fwalk>

0000000000012482 <__libc_fini_array>:
   12482:	1101                	addi	sp,sp,-32
   12484:	e822                	sd	s0,16(sp)
   12486:	67f9                	lui	a5,0x1e
   12488:	6479                	lui	s0,0x1e
   1248a:	19078793          	addi	a5,a5,400 # 1e190 <__do_global_dtors_aux_fini_array_entry>
   1248e:	19840413          	addi	s0,s0,408 # 1e198 <impure_data>
   12492:	8c1d                	sub	s0,s0,a5
   12494:	e426                	sd	s1,8(sp)
   12496:	ec06                	sd	ra,24(sp)
   12498:	40345493          	srai	s1,s0,0x3
   1249c:	c881                	beqz	s1,124ac <__libc_fini_array+0x2a>
   1249e:	1461                	addi	s0,s0,-8
   124a0:	943e                	add	s0,s0,a5
   124a2:	601c                	ld	a5,0(s0)
   124a4:	14fd                	addi	s1,s1,-1
   124a6:	1461                	addi	s0,s0,-8
   124a8:	9782                	jalr	a5
   124aa:	fce5                	bnez	s1,124a2 <__libc_fini_array+0x20>
   124ac:	60e2                	ld	ra,24(sp)
   124ae:	6442                	ld	s0,16(sp)
   124b0:	64a2                	ld	s1,8(sp)
   124b2:	6105                	addi	sp,sp,32
   124b4:	8082                	ret

00000000000124b6 <_malloc_trim_r>:
   124b6:	7179                	addi	sp,sp,-48
   124b8:	e44e                	sd	s3,8(sp)
   124ba:	0001f9b7          	lui	s3,0x1f
   124be:	f022                	sd	s0,32(sp)
   124c0:	ec26                	sd	s1,24(sp)
   124c2:	e84a                	sd	s2,16(sp)
   124c4:	e052                	sd	s4,0(sp)
   124c6:	f406                	sd	ra,40(sp)
   124c8:	8a2e                	mv	s4,a1
   124ca:	892a                	mv	s2,a0
   124cc:	8e098993          	addi	s3,s3,-1824 # 1e8e0 <__malloc_av_>
   124d0:	48b020ef          	jal	ra,1515a <__malloc_lock>
   124d4:	0109b703          	ld	a4,16(s3)
   124d8:	6785                	lui	a5,0x1
   124da:	fdf78413          	addi	s0,a5,-33 # fdf <register_fini-0xf0d1>
   124de:	6704                	ld	s1,8(a4)
   124e0:	41440433          	sub	s0,s0,s4
   124e4:	98f1                	andi	s1,s1,-4
   124e6:	9426                	add	s0,s0,s1
   124e8:	8031                	srli	s0,s0,0xc
   124ea:	147d                	addi	s0,s0,-1
   124ec:	0432                	slli	s0,s0,0xc
   124ee:	00f44b63          	blt	s0,a5,12504 <_malloc_trim_r+0x4e>
   124f2:	4581                	li	a1,0
   124f4:	854a                	mv	a0,s2
   124f6:	18b030ef          	jal	ra,15e80 <_sbrk_r>
   124fa:	0109b783          	ld	a5,16(s3)
   124fe:	97a6                	add	a5,a5,s1
   12500:	00f50e63          	beq	a0,a5,1251c <_malloc_trim_r+0x66>
   12504:	854a                	mv	a0,s2
   12506:	457020ef          	jal	ra,1515c <__malloc_unlock>
   1250a:	70a2                	ld	ra,40(sp)
   1250c:	7402                	ld	s0,32(sp)
   1250e:	64e2                	ld	s1,24(sp)
   12510:	6942                	ld	s2,16(sp)
   12512:	69a2                	ld	s3,8(sp)
   12514:	6a02                	ld	s4,0(sp)
   12516:	4501                	li	a0,0
   12518:	6145                	addi	sp,sp,48
   1251a:	8082                	ret
   1251c:	408005b3          	neg	a1,s0
   12520:	854a                	mv	a0,s2
   12522:	15f030ef          	jal	ra,15e80 <_sbrk_r>
   12526:	57fd                	li	a5,-1
   12528:	02f50b63          	beq	a0,a5,1255e <_malloc_trim_r+0xa8>
   1252c:	0001f7b7          	lui	a5,0x1f
   12530:	35878793          	addi	a5,a5,856 # 1f358 <__malloc_current_mallinfo>
   12534:	4398                	lw	a4,0(a5)
   12536:	0109b683          	ld	a3,16(s3)
   1253a:	8c81                	sub	s1,s1,s0
   1253c:	0014e493          	ori	s1,s1,1
   12540:	9f01                	subw	a4,a4,s0
   12542:	854a                	mv	a0,s2
   12544:	e684                	sd	s1,8(a3)
   12546:	c398                	sw	a4,0(a5)
   12548:	415020ef          	jal	ra,1515c <__malloc_unlock>
   1254c:	70a2                	ld	ra,40(sp)
   1254e:	7402                	ld	s0,32(sp)
   12550:	64e2                	ld	s1,24(sp)
   12552:	6942                	ld	s2,16(sp)
   12554:	69a2                	ld	s3,8(sp)
   12556:	6a02                	ld	s4,0(sp)
   12558:	4505                	li	a0,1
   1255a:	6145                	addi	sp,sp,48
   1255c:	8082                	ret
   1255e:	4581                	li	a1,0
   12560:	854a                	mv	a0,s2
   12562:	11f030ef          	jal	ra,15e80 <_sbrk_r>
   12566:	0109b703          	ld	a4,16(s3)
   1256a:	46fd                	li	a3,31
   1256c:	40e507b3          	sub	a5,a0,a4
   12570:	f8f6dae3          	bge	a3,a5,12504 <_malloc_trim_r+0x4e>
   12574:	7601b683          	ld	a3,1888(gp) # 1f2e0 <__malloc_sbrk_base>
   12578:	0017e793          	ori	a5,a5,1
   1257c:	e71c                	sd	a5,8(a4)
   1257e:	8d15                	sub	a0,a0,a3
   12580:	0001f6b7          	lui	a3,0x1f
   12584:	34a6ac23          	sw	a0,856(a3) # 1f358 <__malloc_current_mallinfo>
   12588:	bfb5                	j	12504 <_malloc_trim_r+0x4e>

000000000001258a <_free_r>:
   1258a:	c9e5                	beqz	a1,1267a <_free_r+0xf0>
   1258c:	1101                	addi	sp,sp,-32
   1258e:	e822                	sd	s0,16(sp)
   12590:	e426                	sd	s1,8(sp)
   12592:	842e                	mv	s0,a1
   12594:	84aa                	mv	s1,a0
   12596:	ec06                	sd	ra,24(sp)
   12598:	3c3020ef          	jal	ra,1515a <__malloc_lock>
   1259c:	ff843503          	ld	a0,-8(s0)
   125a0:	ff040713          	addi	a4,s0,-16
   125a4:	0001f5b7          	lui	a1,0x1f
   125a8:	ffe57793          	andi	a5,a0,-2
   125ac:	00f70633          	add	a2,a4,a5
   125b0:	8e058593          	addi	a1,a1,-1824 # 1e8e0 <__malloc_av_>
   125b4:	6614                	ld	a3,8(a2)
   125b6:	0105b803          	ld	a6,16(a1)
   125ba:	9af1                	andi	a3,a3,-4
   125bc:	14c80263          	beq	a6,a2,12700 <_free_r+0x176>
   125c0:	e614                	sd	a3,8(a2)
   125c2:	8905                	andi	a0,a0,1
   125c4:	00d60833          	add	a6,a2,a3
   125c8:	e149                	bnez	a0,1264a <_free_r+0xc0>
   125ca:	ff043303          	ld	t1,-16(s0)
   125ce:	00883803          	ld	a6,8(a6)
   125d2:	0001f537          	lui	a0,0x1f
   125d6:	40670733          	sub	a4,a4,t1
   125da:	01073883          	ld	a7,16(a4)
   125de:	8f050513          	addi	a0,a0,-1808 # 1e8f0 <__malloc_av_+0x10>
   125e2:	979a                	add	a5,a5,t1
   125e4:	00187813          	andi	a6,a6,1
   125e8:	0ea88963          	beq	a7,a0,126da <_free_r+0x150>
   125ec:	01873303          	ld	t1,24(a4)
   125f0:	0068bc23          	sd	t1,24(a7)
   125f4:	01133823          	sd	a7,16(t1)
   125f8:	14080e63          	beqz	a6,12754 <_free_r+0x1ca>
   125fc:	0017e693          	ori	a3,a5,1
   12600:	e714                	sd	a3,8(a4)
   12602:	e21c                	sd	a5,0(a2)
   12604:	1ff00693          	li	a3,511
   12608:	08f6e363          	bltu	a3,a5,1268e <_free_r+0x104>
   1260c:	838d                	srli	a5,a5,0x3
   1260e:	0017869b          	addiw	a3,a5,1
   12612:	0016969b          	slliw	a3,a3,0x1
   12616:	068e                	slli	a3,a3,0x3
   12618:	0085b803          	ld	a6,8(a1)
   1261c:	96ae                	add	a3,a3,a1
   1261e:	6288                	ld	a0,0(a3)
   12620:	4027d61b          	sraiw	a2,a5,0x2
   12624:	4785                	li	a5,1
   12626:	00c797b3          	sll	a5,a5,a2
   1262a:	0107e7b3          	or	a5,a5,a6
   1262e:	ff068613          	addi	a2,a3,-16
   12632:	ef10                	sd	a2,24(a4)
   12634:	eb08                	sd	a0,16(a4)
   12636:	e59c                	sd	a5,8(a1)
   12638:	e298                	sd	a4,0(a3)
   1263a:	ed18                	sd	a4,24(a0)
   1263c:	6442                	ld	s0,16(sp)
   1263e:	60e2                	ld	ra,24(sp)
   12640:	8526                	mv	a0,s1
   12642:	64a2                	ld	s1,8(sp)
   12644:	6105                	addi	sp,sp,32
   12646:	3170206f          	j	1515c <__malloc_unlock>
   1264a:	00883503          	ld	a0,8(a6)
   1264e:	8905                	andi	a0,a0,1
   12650:	e515                	bnez	a0,1267c <_free_r+0xf2>
   12652:	0001f537          	lui	a0,0x1f
   12656:	97b6                	add	a5,a5,a3
   12658:	8f050513          	addi	a0,a0,-1808 # 1e8f0 <__malloc_av_+0x10>
   1265c:	6a14                	ld	a3,16(a2)
   1265e:	0017e893          	ori	a7,a5,1
   12662:	00f70833          	add	a6,a4,a5
   12666:	10a68163          	beq	a3,a0,12768 <_free_r+0x1de>
   1266a:	6e10                	ld	a2,24(a2)
   1266c:	ee90                	sd	a2,24(a3)
   1266e:	ea14                	sd	a3,16(a2)
   12670:	01173423          	sd	a7,8(a4)
   12674:	00f83023          	sd	a5,0(a6)
   12678:	b771                	j	12604 <_free_r+0x7a>
   1267a:	8082                	ret
   1267c:	0017e693          	ori	a3,a5,1
   12680:	fed43c23          	sd	a3,-8(s0)
   12684:	e21c                	sd	a5,0(a2)
   12686:	1ff00693          	li	a3,511
   1268a:	f8f6f1e3          	bgeu	a3,a5,1260c <_free_r+0x82>
   1268e:	0097d693          	srli	a3,a5,0x9
   12692:	4611                	li	a2,4
   12694:	08d66f63          	bltu	a2,a3,12732 <_free_r+0x1a8>
   12698:	0067d693          	srli	a3,a5,0x6
   1269c:	0396851b          	addiw	a0,a3,57
   126a0:	0015151b          	slliw	a0,a0,0x1
   126a4:	0386861b          	addiw	a2,a3,56
   126a8:	050e                	slli	a0,a0,0x3
   126aa:	952e                	add	a0,a0,a1
   126ac:	6114                	ld	a3,0(a0)
   126ae:	1541                	addi	a0,a0,-16
   126b0:	0cd50563          	beq	a0,a3,1277a <_free_r+0x1f0>
   126b4:	6690                	ld	a2,8(a3)
   126b6:	9a71                	andi	a2,a2,-4
   126b8:	00c7f563          	bgeu	a5,a2,126c2 <_free_r+0x138>
   126bc:	6a94                	ld	a3,16(a3)
   126be:	fed51be3          	bne	a0,a3,126b4 <_free_r+0x12a>
   126c2:	6e88                	ld	a0,24(a3)
   126c4:	ef08                	sd	a0,24(a4)
   126c6:	eb14                	sd	a3,16(a4)
   126c8:	6442                	ld	s0,16(sp)
   126ca:	e918                	sd	a4,16(a0)
   126cc:	60e2                	ld	ra,24(sp)
   126ce:	8526                	mv	a0,s1
   126d0:	64a2                	ld	s1,8(sp)
   126d2:	ee98                	sd	a4,24(a3)
   126d4:	6105                	addi	sp,sp,32
   126d6:	2870206f          	j	1515c <__malloc_unlock>
   126da:	0e081c63          	bnez	a6,127d2 <_free_r+0x248>
   126de:	6e0c                	ld	a1,24(a2)
   126e0:	6a10                	ld	a2,16(a2)
   126e2:	96be                	add	a3,a3,a5
   126e4:	6442                	ld	s0,16(sp)
   126e6:	ee0c                	sd	a1,24(a2)
   126e8:	e990                	sd	a2,16(a1)
   126ea:	0016e793          	ori	a5,a3,1
   126ee:	60e2                	ld	ra,24(sp)
   126f0:	e71c                	sd	a5,8(a4)
   126f2:	8526                	mv	a0,s1
   126f4:	9736                	add	a4,a4,a3
   126f6:	64a2                	ld	s1,8(sp)
   126f8:	e314                	sd	a3,0(a4)
   126fa:	6105                	addi	sp,sp,32
   126fc:	2610206f          	j	1515c <__malloc_unlock>
   12700:	8905                	andi	a0,a0,1
   12702:	96be                	add	a3,a3,a5
   12704:	e909                	bnez	a0,12716 <_free_r+0x18c>
   12706:	ff043503          	ld	a0,-16(s0)
   1270a:	8f09                	sub	a4,a4,a0
   1270c:	6f1c                	ld	a5,24(a4)
   1270e:	6b10                	ld	a2,16(a4)
   12710:	96aa                	add	a3,a3,a0
   12712:	ee1c                	sd	a5,24(a2)
   12714:	eb90                	sd	a2,16(a5)
   12716:	0016e613          	ori	a2,a3,1
   1271a:	7681b783          	ld	a5,1896(gp) # 1f2e8 <__malloc_trim_threshold>
   1271e:	e710                	sd	a2,8(a4)
   12720:	e998                	sd	a4,16(a1)
   12722:	f0f6ede3          	bltu	a3,a5,1263c <_free_r+0xb2>
   12726:	7801b583          	ld	a1,1920(gp) # 1f300 <__malloc_top_pad>
   1272a:	8526                	mv	a0,s1
   1272c:	d8bff0ef          	jal	ra,124b6 <_malloc_trim_r>
   12730:	b731                	j	1263c <_free_r+0xb2>
   12732:	4651                	li	a2,20
   12734:	02d67263          	bgeu	a2,a3,12758 <_free_r+0x1ce>
   12738:	05400613          	li	a2,84
   1273c:	04d66a63          	bltu	a2,a3,12790 <_free_r+0x206>
   12740:	00c7d693          	srli	a3,a5,0xc
   12744:	06f6851b          	addiw	a0,a3,111
   12748:	0015151b          	slliw	a0,a0,0x1
   1274c:	06e6861b          	addiw	a2,a3,110
   12750:	050e                	slli	a0,a0,0x3
   12752:	bfa1                	j	126aa <_free_r+0x120>
   12754:	97b6                	add	a5,a5,a3
   12756:	b719                	j	1265c <_free_r+0xd2>
   12758:	05c6851b          	addiw	a0,a3,92
   1275c:	0015151b          	slliw	a0,a0,0x1
   12760:	05b6861b          	addiw	a2,a3,91
   12764:	050e                	slli	a0,a0,0x3
   12766:	b791                	j	126aa <_free_r+0x120>
   12768:	f598                	sd	a4,40(a1)
   1276a:	f198                	sd	a4,32(a1)
   1276c:	ef08                	sd	a0,24(a4)
   1276e:	eb08                	sd	a0,16(a4)
   12770:	01173423          	sd	a7,8(a4)
   12774:	00f83023          	sd	a5,0(a6)
   12778:	b5d1                	j	1263c <_free_r+0xb2>
   1277a:	0085b803          	ld	a6,8(a1)
   1277e:	4026561b          	sraiw	a2,a2,0x2
   12782:	4785                	li	a5,1
   12784:	00c797b3          	sll	a5,a5,a2
   12788:	0107e7b3          	or	a5,a5,a6
   1278c:	e59c                	sd	a5,8(a1)
   1278e:	bf1d                	j	126c4 <_free_r+0x13a>
   12790:	15400613          	li	a2,340
   12794:	00d66c63          	bltu	a2,a3,127ac <_free_r+0x222>
   12798:	00f7d693          	srli	a3,a5,0xf
   1279c:	0786851b          	addiw	a0,a3,120
   127a0:	0015151b          	slliw	a0,a0,0x1
   127a4:	0776861b          	addiw	a2,a3,119
   127a8:	050e                	slli	a0,a0,0x3
   127aa:	b701                	j	126aa <_free_r+0x120>
   127ac:	55400613          	li	a2,1364
   127b0:	00d66c63          	bltu	a2,a3,127c8 <_free_r+0x23e>
   127b4:	0127d693          	srli	a3,a5,0x12
   127b8:	07d6851b          	addiw	a0,a3,125
   127bc:	0015151b          	slliw	a0,a0,0x1
   127c0:	07c6861b          	addiw	a2,a3,124
   127c4:	050e                	slli	a0,a0,0x3
   127c6:	b5d5                	j	126aa <_free_r+0x120>
   127c8:	7f000513          	li	a0,2032
   127cc:	07e00613          	li	a2,126
   127d0:	bde9                	j	126aa <_free_r+0x120>
   127d2:	0017e693          	ori	a3,a5,1
   127d6:	e714                	sd	a3,8(a4)
   127d8:	e21c                	sd	a5,0(a2)
   127da:	b58d                	j	1263c <_free_r+0xb2>

00000000000127dc <_fwalk>:
   127dc:	715d                	addi	sp,sp,-80
   127de:	f84a                	sd	s2,48(sp)
   127e0:	f44e                	sd	s3,40(sp)
   127e2:	f052                	sd	s4,32(sp)
   127e4:	ec56                	sd	s5,24(sp)
   127e6:	e85a                	sd	s6,16(sp)
   127e8:	e45e                	sd	s7,8(sp)
   127ea:	e486                	sd	ra,72(sp)
   127ec:	e0a2                	sd	s0,64(sp)
   127ee:	fc26                	sd	s1,56(sp)
   127f0:	8a2e                	mv	s4,a1
   127f2:	52050913          	addi	s2,a0,1312
   127f6:	4b01                	li	s6,0
   127f8:	0b000a93          	li	s5,176
   127fc:	4b85                	li	s7,1
   127fe:	59fd                	li	s3,-1
   12800:	00892783          	lw	a5,8(s2)
   12804:	01093403          	ld	s0,16(s2)
   12808:	02f05b63          	blez	a5,1283e <_fwalk+0x62>
   1280c:	fff7849b          	addiw	s1,a5,-1
   12810:	1482                	slli	s1,s1,0x20
   12812:	9081                	srli	s1,s1,0x20
   12814:	0485                	addi	s1,s1,1
   12816:	035484b3          	mul	s1,s1,s5
   1281a:	94a2                	add	s1,s1,s0
   1281c:	01045783          	lhu	a5,16(s0)
   12820:	00fbfb63          	bgeu	s7,a5,12836 <_fwalk+0x5a>
   12824:	01241783          	lh	a5,18(s0)
   12828:	8522                	mv	a0,s0
   1282a:	01378663          	beq	a5,s3,12836 <_fwalk+0x5a>
   1282e:	9a02                	jalr	s4
   12830:	01656b33          	or	s6,a0,s6
   12834:	2b01                	sext.w	s6,s6
   12836:	0b040413          	addi	s0,s0,176
   1283a:	fe8491e3          	bne	s1,s0,1281c <_fwalk+0x40>
   1283e:	00093903          	ld	s2,0(s2)
   12842:	fa091fe3          	bnez	s2,12800 <_fwalk+0x24>
   12846:	60a6                	ld	ra,72(sp)
   12848:	6406                	ld	s0,64(sp)
   1284a:	74e2                	ld	s1,56(sp)
   1284c:	7942                	ld	s2,48(sp)
   1284e:	79a2                	ld	s3,40(sp)
   12850:	7a02                	ld	s4,32(sp)
   12852:	6ae2                	ld	s5,24(sp)
   12854:	6ba2                	ld	s7,8(sp)
   12856:	855a                	mv	a0,s6
   12858:	6b42                	ld	s6,16(sp)
   1285a:	6161                	addi	sp,sp,80
   1285c:	8082                	ret

000000000001285e <_fwalk_reent>:
   1285e:	715d                	addi	sp,sp,-80
   12860:	f84a                	sd	s2,48(sp)
   12862:	f44e                	sd	s3,40(sp)
   12864:	f052                	sd	s4,32(sp)
   12866:	ec56                	sd	s5,24(sp)
   12868:	e85a                	sd	s6,16(sp)
   1286a:	e45e                	sd	s7,8(sp)
   1286c:	e062                	sd	s8,0(sp)
   1286e:	e486                	sd	ra,72(sp)
   12870:	e0a2                	sd	s0,64(sp)
   12872:	fc26                	sd	s1,56(sp)
   12874:	8c2a                	mv	s8,a0
   12876:	8a2e                	mv	s4,a1
   12878:	52050913          	addi	s2,a0,1312
   1287c:	4b01                	li	s6,0
   1287e:	0b000a93          	li	s5,176
   12882:	4b85                	li	s7,1
   12884:	59fd                	li	s3,-1
   12886:	00892783          	lw	a5,8(s2)
   1288a:	01093403          	ld	s0,16(s2)
   1288e:	02f05c63          	blez	a5,128c6 <_fwalk_reent+0x68>
   12892:	fff7849b          	addiw	s1,a5,-1
   12896:	1482                	slli	s1,s1,0x20
   12898:	9081                	srli	s1,s1,0x20
   1289a:	0485                	addi	s1,s1,1
   1289c:	035484b3          	mul	s1,s1,s5
   128a0:	94a2                	add	s1,s1,s0
   128a2:	01045783          	lhu	a5,16(s0)
   128a6:	00fbfc63          	bgeu	s7,a5,128be <_fwalk_reent+0x60>
   128aa:	01241783          	lh	a5,18(s0)
   128ae:	85a2                	mv	a1,s0
   128b0:	8562                	mv	a0,s8
   128b2:	01378663          	beq	a5,s3,128be <_fwalk_reent+0x60>
   128b6:	9a02                	jalr	s4
   128b8:	01656b33          	or	s6,a0,s6
   128bc:	2b01                	sext.w	s6,s6
   128be:	0b040413          	addi	s0,s0,176
   128c2:	fe8490e3          	bne	s1,s0,128a2 <_fwalk_reent+0x44>
   128c6:	00093903          	ld	s2,0(s2)
   128ca:	fa091ee3          	bnez	s2,12886 <_fwalk_reent+0x28>
   128ce:	60a6                	ld	ra,72(sp)
   128d0:	6406                	ld	s0,64(sp)
   128d2:	74e2                	ld	s1,56(sp)
   128d4:	7942                	ld	s2,48(sp)
   128d6:	79a2                	ld	s3,40(sp)
   128d8:	7a02                	ld	s4,32(sp)
   128da:	6ae2                	ld	s5,24(sp)
   128dc:	6ba2                	ld	s7,8(sp)
   128de:	6c02                	ld	s8,0(sp)
   128e0:	855a                	mv	a0,s6
   128e2:	6b42                	ld	s6,16(sp)
   128e4:	6161                	addi	sp,sp,80
   128e6:	8082                	ret

00000000000128e8 <eshdn1>:
   128e8:	00450693          	addi	a3,a0,4
   128ec:	4781                	li	a5,0
   128ee:	0569                	addi	a0,a0,26
   128f0:	7861                	lui	a6,0xffff8
   128f2:	a811                	j	12906 <eshdn1+0x1e>
   128f4:	0017979b          	slliw	a5,a5,0x1
   128f8:	00e69023          	sh	a4,0(a3)
   128fc:	17c2                	slli	a5,a5,0x30
   128fe:	0689                	addi	a3,a3,2
   12900:	93c1                	srli	a5,a5,0x30
   12902:	02d50863          	beq	a0,a3,12932 <eshdn1+0x4a>
   12906:	0006d703          	lhu	a4,0(a3)
   1290a:	00177613          	andi	a2,a4,1
   1290e:	c219                	beqz	a2,12914 <eshdn1+0x2c>
   12910:	0017e793          	ori	a5,a5,1
   12914:	8305                	srli	a4,a4,0x1
   12916:	0027f613          	andi	a2,a5,2
   1291a:	010765b3          	or	a1,a4,a6
   1291e:	da79                	beqz	a2,128f4 <eshdn1+0xc>
   12920:	0017979b          	slliw	a5,a5,0x1
   12924:	00b69023          	sh	a1,0(a3)
   12928:	17c2                	slli	a5,a5,0x30
   1292a:	0689                	addi	a3,a3,2
   1292c:	93c1                	srli	a5,a5,0x30
   1292e:	fcd51ce3          	bne	a0,a3,12906 <eshdn1+0x1e>
   12932:	8082                	ret

0000000000012934 <eshup1>:
   12934:	01850693          	addi	a3,a0,24
   12938:	4701                	li	a4,0
   1293a:	0509                	addi	a0,a0,2
   1293c:	a811                	j	12950 <eshup1+0x1c>
   1293e:	0017171b          	slliw	a4,a4,0x1
   12942:	00f69023          	sh	a5,0(a3)
   12946:	1742                	slli	a4,a4,0x30
   12948:	16f9                	addi	a3,a3,-2
   1294a:	9341                	srli	a4,a4,0x30
   1294c:	02d50b63          	beq	a0,a3,12982 <eshup1+0x4e>
   12950:	0006d783          	lhu	a5,0(a3)
   12954:	00f7d613          	srli	a2,a5,0xf
   12958:	0017979b          	slliw	a5,a5,0x1
   1295c:	c219                	beqz	a2,12962 <eshup1+0x2e>
   1295e:	00176713          	ori	a4,a4,1
   12962:	17c2                	slli	a5,a5,0x30
   12964:	93c1                	srli	a5,a5,0x30
   12966:	00277613          	andi	a2,a4,2
   1296a:	0017e593          	ori	a1,a5,1
   1296e:	da61                	beqz	a2,1293e <eshup1+0xa>
   12970:	0017171b          	slliw	a4,a4,0x1
   12974:	00b69023          	sh	a1,0(a3)
   12978:	1742                	slli	a4,a4,0x30
   1297a:	16f9                	addi	a3,a3,-2
   1297c:	9341                	srli	a4,a4,0x30
   1297e:	fcd519e3          	bne	a0,a3,12950 <eshup1+0x1c>
   12982:	8082                	ret

0000000000012984 <m16m>:
   12984:	1101                	addi	sp,sp,-32
   12986:	6e41                	lui	t3,0x10
   12988:	00011b23          	sh	zero,22(sp)
   1298c:	00011c23          	sh	zero,24(sp)
   12990:	05e1                	addi	a1,a1,24
   12992:	083c                	addi	a5,sp,24
   12994:	00410813          	addi	a6,sp,4
   12998:	1e7d                	addi	t3,t3,-1
   1299a:	0005d703          	lhu	a4,0(a1)
   1299e:	17f9                	addi	a5,a5,-2
   129a0:	15f9                	addi	a1,a1,-2
   129a2:	c705                	beqz	a4,129ca <m16m+0x46>
   129a4:	02a70733          	mul	a4,a4,a0
   129a8:	0027d883          	lhu	a7,2(a5)
   129ac:	0007d303          	lhu	t1,0(a5)
   129b0:	01c776b3          	and	a3,a4,t3
   129b4:	96c6                	add	a3,a3,a7
   129b6:	8341                	srli	a4,a4,0x10
   129b8:	0106d893          	srli	a7,a3,0x10
   129bc:	971a                	add	a4,a4,t1
   129be:	9746                	add	a4,a4,a7
   129c0:	00e79023          	sh	a4,0(a5)
   129c4:	00d79123          	sh	a3,2(a5)
   129c8:	8341                	srli	a4,a4,0x10
   129ca:	fee79f23          	sh	a4,-2(a5)
   129ce:	fd0796e3          	bne	a5,a6,1299a <m16m+0x16>
   129d2:	0611                	addi	a2,a2,4
   129d4:	01a10693          	addi	a3,sp,26
   129d8:	0007d703          	lhu	a4,0(a5)
   129dc:	0789                	addi	a5,a5,2
   129de:	0609                	addi	a2,a2,2
   129e0:	fee61f23          	sh	a4,-2(a2)
   129e4:	fed79ae3          	bne	a5,a3,129d8 <m16m+0x54>
   129e8:	6105                	addi	sp,sp,32
   129ea:	8082                	ret

00000000000129ec <emovo.constprop.0>:
   129ec:	00055703          	lhu	a4,0(a0)
   129f0:	00255783          	lhu	a5,2(a0)
   129f4:	c319                	beqz	a4,129fa <emovo.constprop.0+0xe>
   129f6:	6721                	lui	a4,0x8
   129f8:	8fd9                	or	a5,a5,a4
   129fa:	00f59923          	sh	a5,18(a1)
   129fe:	00255703          	lhu	a4,2(a0)
   12a02:	67a1                	lui	a5,0x8
   12a04:	17fd                	addi	a5,a5,-1
   12a06:	00f70f63          	beq	a4,a5,12a24 <emovo.constprop.0+0x38>
   12a0a:	00650793          	addi	a5,a0,6
   12a0e:	05c1                	addi	a1,a1,16
   12a10:	0561                	addi	a0,a0,24
   12a12:	0007d703          	lhu	a4,0(a5) # 8000 <register_fini-0x80b0>
   12a16:	0789                	addi	a5,a5,2
   12a18:	15f9                	addi	a1,a1,-2
   12a1a:	00e59123          	sh	a4,2(a1)
   12a1e:	fea79ae3          	bne	a5,a0,12a12 <emovo.constprop.0+0x26>
   12a22:	8082                	ret
   12a24:	00650793          	addi	a5,a0,6
   12a28:	0569                	addi	a0,a0,26
   12a2a:	0007d703          	lhu	a4,0(a5)
   12a2e:	0789                	addi	a5,a5,2
   12a30:	e31d                	bnez	a4,12a56 <emovo.constprop.0+0x6a>
   12a32:	fea79ce3          	bne	a5,a0,12a2a <emovo.constprop.0+0x3e>
   12a36:	01258713          	addi	a4,a1,18
   12a3a:	87ae                	mv	a5,a1
   12a3c:	0789                	addi	a5,a5,2
   12a3e:	fe079f23          	sh	zero,-2(a5)
   12a42:	fef71de3          	bne	a4,a5,12a3c <emovo.constprop.0+0x50>
   12a46:	0125d783          	lhu	a5,18(a1)
   12a4a:	6721                	lui	a4,0x8
   12a4c:	177d                	addi	a4,a4,-1
   12a4e:	8fd9                	or	a5,a5,a4
   12a50:	00f59923          	sh	a5,18(a1)
   12a54:	8082                	ret
   12a56:	01058713          	addi	a4,a1,16
   12a5a:	87ae                	mv	a5,a1
   12a5c:	0789                	addi	a5,a5,2
   12a5e:	fe079f23          	sh	zero,-2(a5)
   12a62:	fef71de3          	bne	a4,a5,12a5c <emovo.constprop.0+0x70>
   12a66:	77f1                	lui	a5,0xffffc
   12a68:	00f59823          	sh	a5,16(a1)
   12a6c:	77e1                	lui	a5,0xffff8
   12a6e:	fff7c793          	not	a5,a5
   12a72:	00f59923          	sh	a5,18(a1)
   12a76:	8082                	ret

0000000000012a78 <enormlz>:
   12a78:	00455783          	lhu	a5,4(a0)
   12a7c:	1101                	addi	sp,sp,-32
   12a7e:	e426                	sd	s1,8(sp)
   12a80:	ec06                	sd	ra,24(sp)
   12a82:	e822                	sd	s0,16(sp)
   12a84:	e04a                	sd	s2,0(sp)
   12a86:	84aa                	mv	s1,a0
   12a88:	efc9                	bnez	a5,12b22 <enormlz+0xaa>
   12a8a:	00655703          	lhu	a4,6(a0)
   12a8e:	4401                	li	s0,0
   12a90:	00f75793          	srli	a5,a4,0xf
   12a94:	e3c1                	bnez	a5,12b14 <enormlz+0x9c>
   12a96:	01a50693          	addi	a3,a0,26
   12a9a:	0a000613          	li	a2,160
   12a9e:	e31d                	bnez	a4,12ac4 <enormlz+0x4c>
   12aa0:	00648793          	addi	a5,s1,6
   12aa4:	a019                	j	12aaa <enormlz+0x32>
   12aa6:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd8c80>
   12aaa:	0789                	addi	a5,a5,2
   12aac:	fee79e23          	sh	a4,-4(a5)
   12ab0:	fed79be3          	bne	a5,a3,12aa6 <enormlz+0x2e>
   12ab4:	00049c23          	sh	zero,24(s1)
   12ab8:	2441                	addiw	s0,s0,16
   12aba:	04c40d63          	beq	s0,a2,12b14 <enormlz+0x9c>
   12abe:	0064d703          	lhu	a4,6(s1)
   12ac2:	df79                	beqz	a4,12aa0 <enormlz+0x28>
   12ac4:	f0077793          	andi	a5,a4,-256
   12ac8:	eb8d                	bnez	a5,12afa <enormlz+0x82>
   12aca:	01848513          	addi	a0,s1,24
   12ace:	00248593          	addi	a1,s1,2
   12ad2:	4781                	li	a5,0
   12ad4:	872a                	mv	a4,a0
   12ad6:	00075683          	lhu	a3,0(a4) # 8000 <register_fini-0x80b0>
   12ada:	1779                	addi	a4,a4,-2
   12adc:	0086961b          	slliw	a2,a3,0x8
   12ae0:	8fd1                	or	a5,a5,a2
   12ae2:	00f71123          	sh	a5,2(a4)
   12ae6:	0086d793          	srli	a5,a3,0x8
   12aea:	feb716e3          	bne	a4,a1,12ad6 <enormlz+0x5e>
   12aee:	0064d703          	lhu	a4,6(s1)
   12af2:	2421                	addiw	s0,s0,8
   12af4:	f0077793          	andi	a5,a4,-256
   12af8:	dfe9                	beqz	a5,12ad2 <enormlz+0x5a>
   12afa:	0a000913          	li	s2,160
   12afe:	a801                	j	12b0e <enormlz+0x96>
   12b00:	2405                	addiw	s0,s0,1
   12b02:	e33ff0ef          	jal	ra,12934 <eshup1>
   12b06:	00894763          	blt	s2,s0,12b14 <enormlz+0x9c>
   12b0a:	0064d703          	lhu	a4,6(s1)
   12b0e:	833d                	srli	a4,a4,0xf
   12b10:	8526                	mv	a0,s1
   12b12:	d77d                	beqz	a4,12b00 <enormlz+0x88>
   12b14:	60e2                	ld	ra,24(sp)
   12b16:	8522                	mv	a0,s0
   12b18:	6442                	ld	s0,16(sp)
   12b1a:	64a2                	ld	s1,8(sp)
   12b1c:	6902                	ld	s2,0(sp)
   12b1e:	6105                	addi	sp,sp,32
   12b20:	8082                	ret
   12b22:	f007f713          	andi	a4,a5,-256
   12b26:	4401                	li	s0,0
   12b28:	e705                	bnez	a4,12b50 <enormlz+0xd8>
   12b2a:	f6f00913          	li	s2,-145
   12b2e:	a801                	j	12b3e <enormlz+0xc6>
   12b30:	347d                	addiw	s0,s0,-1
   12b32:	db7ff0ef          	jal	ra,128e8 <eshdn1>
   12b36:	fd240fe3          	beq	s0,s2,12b14 <enormlz+0x9c>
   12b3a:	0044d783          	lhu	a5,4(s1)
   12b3e:	8526                	mv	a0,s1
   12b40:	fbe5                	bnez	a5,12b30 <enormlz+0xb8>
   12b42:	60e2                	ld	ra,24(sp)
   12b44:	8522                	mv	a0,s0
   12b46:	6442                	ld	s0,16(sp)
   12b48:	64a2                	ld	s1,8(sp)
   12b4a:	6902                	ld	s2,0(sp)
   12b4c:	6105                	addi	sp,sp,32
   12b4e:	8082                	ret
   12b50:	00450693          	addi	a3,a0,4
   12b54:	01a50593          	addi	a1,a0,26
   12b58:	4701                	li	a4,0
   12b5a:	a019                	j	12b60 <enormlz+0xe8>
   12b5c:	0006d783          	lhu	a5,0(a3)
   12b60:	0087d61b          	srliw	a2,a5,0x8
   12b64:	8f51                	or	a4,a4,a2
   12b66:	0087979b          	slliw	a5,a5,0x8
   12b6a:	00e69023          	sh	a4,0(a3)
   12b6e:	03079713          	slli	a4,a5,0x30
   12b72:	0689                	addi	a3,a3,2
   12b74:	9341                	srli	a4,a4,0x30
   12b76:	fed593e3          	bne	a1,a3,12b5c <enormlz+0xe4>
   12b7a:	0044d783          	lhu	a5,4(s1)
   12b7e:	5461                	li	s0,-8
   12b80:	b76d                	j	12b2a <enormlz+0xb2>

0000000000012b82 <eshift.part.0>:
   12b82:	7179                	addi	sp,sp,-48
   12b84:	f022                	sd	s0,32(sp)
   12b86:	ec26                	sd	s1,24(sp)
   12b88:	f406                	sd	ra,40(sp)
   12b8a:	e84a                	sd	s2,16(sp)
   12b8c:	e44e                	sd	s3,8(sp)
   12b8e:	84ae                	mv	s1,a1
   12b90:	842a                	mv	s0,a0
   12b92:	0605cb63          	bltz	a1,12c08 <eshift.part.0+0x86>
   12b96:	47bd                	li	a5,15
   12b98:	862e                	mv	a2,a1
   12b9a:	0511                	addi	a0,a0,4
   12b9c:	01840693          	addi	a3,s0,24
   12ba0:	45bd                	li	a1,15
   12ba2:	0297d063          	bge	a5,s1,12bc2 <eshift.part.0+0x40>
   12ba6:	87aa                	mv	a5,a0
   12ba8:	0027d703          	lhu	a4,2(a5)
   12bac:	0789                	addi	a5,a5,2
   12bae:	fee79f23          	sh	a4,-2(a5)
   12bb2:	fef69be3          	bne	a3,a5,12ba8 <eshift.part.0+0x26>
   12bb6:	00041c23          	sh	zero,24(s0)
   12bba:	3641                	addiw	a2,a2,-16
   12bbc:	fec5c5e3          	blt	a1,a2,12ba6 <eshift.part.0+0x24>
   12bc0:	88bd                	andi	s1,s1,15
   12bc2:	479d                	li	a5,7
   12bc4:	0297d463          	bge	a5,s1,12bec <eshift.part.0+0x6a>
   12bc8:	01840713          	addi	a4,s0,24
   12bcc:	00240593          	addi	a1,s0,2
   12bd0:	4781                	li	a5,0
   12bd2:	00075683          	lhu	a3,0(a4)
   12bd6:	1779                	addi	a4,a4,-2
   12bd8:	0086961b          	slliw	a2,a3,0x8
   12bdc:	8fd1                	or	a5,a5,a2
   12bde:	00f71123          	sh	a5,2(a4)
   12be2:	0086d793          	srli	a5,a3,0x8
   12be6:	fee596e3          	bne	a1,a4,12bd2 <eshift.part.0+0x50>
   12bea:	34e1                	addiw	s1,s1,-8
   12bec:	c491                	beqz	s1,12bf8 <eshift.part.0+0x76>
   12bee:	34fd                	addiw	s1,s1,-1
   12bf0:	8522                	mv	a0,s0
   12bf2:	d43ff0ef          	jal	ra,12934 <eshup1>
   12bf6:	fce5                	bnez	s1,12bee <eshift.part.0+0x6c>
   12bf8:	70a2                	ld	ra,40(sp)
   12bfa:	7402                	ld	s0,32(sp)
   12bfc:	64e2                	ld	s1,24(sp)
   12bfe:	6942                	ld	s2,16(sp)
   12c00:	69a2                	ld	s3,8(sp)
   12c02:	4501                	li	a0,0
   12c04:	6145                	addi	sp,sp,48
   12c06:	8082                	ret
   12c08:	57c5                	li	a5,-15
   12c0a:	40b0093b          	negw	s2,a1
   12c0e:	06f5db63          	bge	a1,a5,12c84 <eshift.part.0+0x102>
   12c12:	01850593          	addi	a1,a0,24
   12c16:	4981                	li	s3,0
   12c18:	00450693          	addi	a3,a0,4
   12c1c:	463d                	li	a2,15
   12c1e:	01845703          	lhu	a4,24(s0)
   12c22:	87ae                	mv	a5,a1
   12c24:	00e9e9b3          	or	s3,s3,a4
   12c28:	ffe7d703          	lhu	a4,-2(a5)
   12c2c:	17f9                	addi	a5,a5,-2
   12c2e:	00e79123          	sh	a4,2(a5)
   12c32:	fed79be3          	bne	a5,a3,12c28 <eshift.part.0+0xa6>
   12c36:	00041223          	sh	zero,4(s0)
   12c3a:	3941                	addiw	s2,s2,-16
   12c3c:	ff2641e3          	blt	a2,s2,12c1e <eshift.part.0+0x9c>
   12c40:	5941                	li	s2,-16
   12c42:	5745                	li	a4,-15
   12c44:	4099093b          	subw	s2,s2,s1
   12c48:	4781                	li	a5,0
   12c4a:	06e4cb63          	blt	s1,a4,12cc0 <eshift.part.0+0x13e>
   12c4e:	00f9093b          	addw	s2,s2,a5
   12c52:	479d                	li	a5,7
   12c54:	0327ce63          	blt	a5,s2,12c90 <eshift.part.0+0x10e>
   12c58:	00090d63          	beqz	s2,12c72 <eshift.part.0+0xf0>
   12c5c:	01845783          	lhu	a5,24(s0)
   12c60:	397d                	addiw	s2,s2,-1
   12c62:	8522                	mv	a0,s0
   12c64:	8b85                	andi	a5,a5,1
   12c66:	00f9e9b3          	or	s3,s3,a5
   12c6a:	c7fff0ef          	jal	ra,128e8 <eshdn1>
   12c6e:	fe0917e3          	bnez	s2,12c5c <eshift.part.0+0xda>
   12c72:	70a2                	ld	ra,40(sp)
   12c74:	7402                	ld	s0,32(sp)
   12c76:	64e2                	ld	s1,24(sp)
   12c78:	6942                	ld	s2,16(sp)
   12c7a:	01303533          	snez	a0,s3
   12c7e:	69a2                	ld	s3,8(sp)
   12c80:	6145                	addi	sp,sp,48
   12c82:	8082                	ret
   12c84:	57e5                	li	a5,-7
   12c86:	4981                	li	s3,0
   12c88:	00450693          	addi	a3,a0,4
   12c8c:	fcf5d8e3          	bge	a1,a5,12c5c <eshift.part.0+0xda>
   12c90:	01844783          	lbu	a5,24(s0)
   12c94:	01a40593          	addi	a1,s0,26
   12c98:	00f9e9b3          	or	s3,s3,a5
   12c9c:	4781                	li	a5,0
   12c9e:	0006d703          	lhu	a4,0(a3)
   12ca2:	0689                	addi	a3,a3,2
   12ca4:	0087561b          	srliw	a2,a4,0x8
   12ca8:	8fd1                	or	a5,a5,a2
   12caa:	0087171b          	slliw	a4,a4,0x8
   12cae:	fef69f23          	sh	a5,-2(a3)
   12cb2:	03071793          	slli	a5,a4,0x30
   12cb6:	93c1                	srli	a5,a5,0x30
   12cb8:	feb693e3          	bne	a3,a1,12c9e <eshift.part.0+0x11c>
   12cbc:	3961                	addiw	s2,s2,-8
   12cbe:	bf69                	j	12c58 <eshift.part.0+0xd6>
   12cc0:	ff097793          	andi	a5,s2,-16
   12cc4:	40f007bb          	negw	a5,a5
   12cc8:	00f9093b          	addw	s2,s2,a5
   12ccc:	479d                	li	a5,7
   12cce:	f927d5e3          	bge	a5,s2,12c58 <eshift.part.0+0xd6>
   12cd2:	bf7d                	j	12c90 <eshift.part.0+0x10e>

0000000000012cd4 <emovi>:
   12cd4:	01255783          	lhu	a5,18(a0)
   12cd8:	6621                	lui	a2,0x8
   12cda:	167d                	addi	a2,a2,-1
   12cdc:	00f7d79b          	srliw	a5,a5,0xf
   12ce0:	40f007bb          	negw	a5,a5
   12ce4:	00f59023          	sh	a5,0(a1)
   12ce8:	01255683          	lhu	a3,18(a0)
   12cec:	01050793          	addi	a5,a0,16
   12cf0:	00458713          	addi	a4,a1,4
   12cf4:	8ef1                	and	a3,a3,a2
   12cf6:	00d59123          	sh	a3,2(a1)
   12cfa:	0006881b          	sext.w	a6,a3
   12cfe:	02c68263          	beq	a3,a2,12d22 <emovi+0x4e>
   12d02:	00658713          	addi	a4,a1,6
   12d06:	00059223          	sh	zero,4(a1)
   12d0a:	1579                	addi	a0,a0,-2
   12d0c:	0007d683          	lhu	a3,0(a5)
   12d10:	17f9                	addi	a5,a5,-2
   12d12:	0709                	addi	a4,a4,2
   12d14:	fed71f23          	sh	a3,-2(a4)
   12d18:	fef51ae3          	bne	a0,a5,12d0c <emovi+0x38>
   12d1c:	00059c23          	sh	zero,24(a1)
   12d20:	8082                	ret
   12d22:	01255683          	lhu	a3,18(a0)
   12d26:	0106f6b3          	and	a3,a3,a6
   12d2a:	01069b63          	bne	a3,a6,12d40 <emovi+0x6c>
   12d2e:	01250813          	addi	a6,a0,18
   12d32:	86aa                	mv	a3,a0
   12d34:	0006d603          	lhu	a2,0(a3)
   12d38:	0689                	addi	a3,a3,2
   12d3a:	ea11                	bnez	a2,12d4e <emovi+0x7a>
   12d3c:	ff069ce3          	bne	a3,a6,12d34 <emovi+0x60>
   12d40:	05e9                	addi	a1,a1,26
   12d42:	0709                	addi	a4,a4,2
   12d44:	fe071f23          	sh	zero,-2(a4)
   12d48:	fee59de3          	bne	a1,a4,12d42 <emovi+0x6e>
   12d4c:	8082                	ret
   12d4e:	00658713          	addi	a4,a1,6
   12d52:	00059223          	sh	zero,4(a1)
   12d56:	1571                	addi	a0,a0,-4
   12d58:	0007d683          	lhu	a3,0(a5)
   12d5c:	17f9                	addi	a5,a5,-2
   12d5e:	0709                	addi	a4,a4,2
   12d60:	fed71f23          	sh	a3,-2(a4)
   12d64:	fea79ae3          	bne	a5,a0,12d58 <emovi+0x84>
   12d68:	8082                	ret

0000000000012d6a <ecmp>:
   12d6a:	01255783          	lhu	a5,18(a0)
   12d6e:	715d                	addi	sp,sp,-80
   12d70:	e0a2                	sd	s0,64(sp)
   12d72:	fff7c793          	not	a5,a5
   12d76:	e486                	sd	ra,72(sp)
   12d78:	03179713          	slli	a4,a5,0x31
   12d7c:	842e                	mv	s0,a1
   12d7e:	eb11                	bnez	a4,12d92 <ecmp+0x28>
   12d80:	01250693          	addi	a3,a0,18
   12d84:	87aa                	mv	a5,a0
   12d86:	0007d703          	lhu	a4,0(a5)
   12d8a:	0789                	addi	a5,a5,2
   12d8c:	eb25                	bnez	a4,12dfc <ecmp+0x92>
   12d8e:	fed79ce3          	bne	a5,a3,12d86 <ecmp+0x1c>
   12d92:	01245783          	lhu	a5,18(s0)
   12d96:	fff7c793          	not	a5,a5
   12d9a:	03179713          	slli	a4,a5,0x31
   12d9e:	c331                	beqz	a4,12de2 <ecmp+0x78>
   12da0:	858a                	mv	a1,sp
   12da2:	f33ff0ef          	jal	ra,12cd4 <emovi>
   12da6:	100c                	addi	a1,sp,32
   12da8:	8522                	mv	a0,s0
   12daa:	f2bff0ef          	jal	ra,12cd4 <emovi>
   12dae:	00015583          	lhu	a1,0(sp)
   12db2:	02015783          	lhu	a5,32(sp)
   12db6:	04b78863          	beq	a5,a1,12e06 <ecmp+0x9c>
   12dba:	00210793          	addi	a5,sp,2
   12dbe:	02210713          	addi	a4,sp,34
   12dc2:	0830                	addi	a2,sp,24
   12dc4:	0007d683          	lhu	a3,0(a5)
   12dc8:	0789                	addi	a5,a5,2
   12dca:	eea5                	bnez	a3,12e42 <ecmp+0xd8>
   12dcc:	00075683          	lhu	a3,0(a4)
   12dd0:	0709                	addi	a4,a4,2
   12dd2:	eaa5                	bnez	a3,12e42 <ecmp+0xd8>
   12dd4:	fef618e3          	bne	a2,a5,12dc4 <ecmp+0x5a>
   12dd8:	4501                	li	a0,0
   12dda:	60a6                	ld	ra,72(sp)
   12ddc:	6406                	ld	s0,64(sp)
   12dde:	6161                	addi	sp,sp,80
   12de0:	8082                	ret
   12de2:	87a2                	mv	a5,s0
   12de4:	0007d703          	lhu	a4,0(a5)
   12de8:	01240693          	addi	a3,s0,18
   12dec:	0789                	addi	a5,a5,2
   12dee:	e719                	bnez	a4,12dfc <ecmp+0x92>
   12df0:	fad788e3          	beq	a5,a3,12da0 <ecmp+0x36>
   12df4:	0007d703          	lhu	a4,0(a5)
   12df8:	0789                	addi	a5,a5,2
   12dfa:	db7d                	beqz	a4,12df0 <ecmp+0x86>
   12dfc:	60a6                	ld	ra,72(sp)
   12dfe:	6406                	ld	s0,64(sp)
   12e00:	5579                	li	a0,-2
   12e02:	6161                	addi	sp,sp,80
   12e04:	8082                	ret
   12e06:	4505                	li	a0,1
   12e08:	e1a9                	bnez	a1,12e4a <ecmp+0xe0>
   12e0a:	00215603          	lhu	a2,2(sp)
   12e0e:	02215683          	lhu	a3,34(sp)
   12e12:	00210713          	addi	a4,sp,2
   12e16:	02210793          	addi	a5,sp,34
   12e1a:	182c                	addi	a1,sp,56
   12e1c:	0789                	addi	a5,a5,2
   12e1e:	0709                	addi	a4,a4,2
   12e20:	00d61c63          	bne	a2,a3,12e38 <ecmp+0xce>
   12e24:	fab78ae3          	beq	a5,a1,12dd8 <ecmp+0x6e>
   12e28:	00075603          	lhu	a2,0(a4)
   12e2c:	0007d683          	lhu	a3,0(a5)
   12e30:	0709                	addi	a4,a4,2
   12e32:	0789                	addi	a5,a5,2
   12e34:	fed608e3          	beq	a2,a3,12e24 <ecmp+0xba>
   12e38:	fac6e1e3          	bltu	a3,a2,12dda <ecmp+0x70>
   12e3c:	40a0053b          	negw	a0,a0
   12e40:	bf69                	j	12dda <ecmp+0x70>
   12e42:	4505                	li	a0,1
   12e44:	d9d9                	beqz	a1,12dda <ecmp+0x70>
   12e46:	557d                	li	a0,-1
   12e48:	bf49                	j	12dda <ecmp+0x70>
   12e4a:	557d                	li	a0,-1
   12e4c:	bf7d                	j	12e0a <ecmp+0xa0>

0000000000012e4e <emdnorm>:
   12e4e:	715d                	addi	sp,sp,-80
   12e50:	e0a2                	sd	s0,64(sp)
   12e52:	fc26                	sd	s1,56(sp)
   12e54:	f84a                	sd	s2,48(sp)
   12e56:	f44e                	sd	s3,40(sp)
   12e58:	f052                	sd	s4,32(sp)
   12e5a:	ec56                	sd	s5,24(sp)
   12e5c:	8936                	mv	s2,a3
   12e5e:	84be                	mv	s1,a5
   12e60:	e486                	sd	ra,72(sp)
   12e62:	e85a                	sd	s6,16(sp)
   12e64:	e45e                	sd	s7,8(sp)
   12e66:	842a                	mv	s0,a0
   12e68:	89ae                	mv	s3,a1
   12e6a:	8a32                	mv	s4,a2
   12e6c:	8aba                	mv	s5,a4
   12e6e:	c0bff0ef          	jal	ra,12a78 <enormlz>
   12e72:	09000793          	li	a5,144
   12e76:	40a90933          	sub	s2,s2,a0
   12e7a:	10a7dc63          	bge	a5,a0,12f92 <emdnorm+0x144>
   12e7e:	67a1                	lui	a5,0x8
   12e80:	17f9                	addi	a5,a5,-2
   12e82:	1f27dd63          	bge	a5,s2,1307c <emdnorm+0x22e>
   12e86:	1c0a8b63          	beqz	s5,1305c <emdnorm+0x20e>
   12e8a:	0044aa83          	lw	s5,4(s1)
   12e8e:	4094                	lw	a3,0(s1)
   12e90:	01a48713          	addi	a4,s1,26
   12e94:	03448793          	addi	a5,s1,52
   12e98:	23568463          	beq	a3,s5,130c0 <emdnorm+0x272>
   12e9c:	0709                	addi	a4,a4,2
   12e9e:	fe071f23          	sh	zero,-2(a4)
   12ea2:	fef71de3          	bne	a4,a5,12e9c <emdnorm+0x4e>
   12ea6:	03800793          	li	a5,56
   12eaa:	28fa8363          	beq	s5,a5,13130 <emdnorm+0x2e2>
   12eae:	1157d163          	bge	a5,s5,12fb0 <emdnorm+0x162>
   12eb2:	04000793          	li	a5,64
   12eb6:	22fa8b63          	beq	s5,a5,130ec <emdnorm+0x29e>
   12eba:	07100793          	li	a5,113
   12ebe:	28fa9363          	bne	s5,a5,13144 <emdnorm+0x2f6>
   12ec2:	6721                	lui	a4,0x8
   12ec4:	177d                	addi	a4,a4,-1
   12ec6:	6591                	lui	a1,0x4
   12ec8:	4b51                	li	s6,20
   12eca:	4ba9                	li	s7,10
   12ecc:	67a1                	lui	a5,0x8
   12ece:	4629                	li	a2,10
   12ed0:	00860693          	addi	a3,a2,8 # 8008 <register_fini-0x80a8>
   12ed4:	0686                	slli	a3,a3,0x1
   12ed6:	00e49a23          	sh	a4,20(s1)
   12eda:	0174a423          	sw	s7,8(s1)
   12ede:	00b49b23          	sh	a1,22(s1)
   12ee2:	00f49c23          	sh	a5,24(s1)
   12ee6:	c4d0                	sw	a2,12(s1)
   12ee8:	00d48733          	add	a4,s1,a3
   12eec:	00f71523          	sh	a5,10(a4) # 800a <register_fini-0x80a6>
   12ef0:	0154a023          	sw	s5,0(s1)
   12ef4:	9b22                	add	s6,s6,s0
   12ef6:	1d205c63          	blez	s2,130ce <emdnorm+0x280>
   12efa:	000b5703          	lhu	a4,0(s6)
   12efe:	0144d683          	lhu	a3,20(s1)
   12f02:	08f00793          	li	a5,143
   12f06:	00d77633          	and	a2,a4,a3
   12f0a:	0557c163          	blt	a5,s5,12f4c <emdnorm+0xfe>
   12f0e:	001b879b          	addiw	a5,s7,1
   12f12:	45b1                	li	a1,12
   12f14:	02f5cc63          	blt	a1,a5,12f4c <emdnorm+0xfe>
   12f18:	472d                	li	a4,11
   12f1a:	4177073b          	subw	a4,a4,s7
   12f1e:	1702                	slli	a4,a4,0x20
   12f20:	9301                	srli	a4,a4,0x20
   12f22:	975e                	add	a4,a4,s7
   12f24:	0786                	slli	a5,a5,0x1
   12f26:	0706                	slli	a4,a4,0x1
   12f28:	00440693          	addi	a3,s0,4
   12f2c:	97a2                	add	a5,a5,s0
   12f2e:	9736                	add	a4,a4,a3
   12f30:	0007d683          	lhu	a3,0(a5) # 8000 <register_fini-0x80b0>
   12f34:	c299                	beqz	a3,12f3a <emdnorm+0xec>
   12f36:	00166613          	ori	a2,a2,1
   12f3a:	00079023          	sh	zero,0(a5)
   12f3e:	0789                	addi	a5,a5,2
   12f40:	fee798e3          	bne	a5,a4,12f30 <emdnorm+0xe2>
   12f44:	000b5703          	lhu	a4,0(s6)
   12f48:	0144d683          	lhu	a3,20(s1)
   12f4c:	fff6c693          	not	a3,a3
   12f50:	8f75                	and	a4,a4,a3
   12f52:	00eb1023          	sh	a4,0(s6)
   12f56:	0164d783          	lhu	a5,22(s1)
   12f5a:	00c7f733          	and	a4,a5,a2
   12f5e:	eb51                	bnez	a4,12ff2 <emdnorm+0x1a4>
   12f60:	0d205d63          	blez	s2,1303a <emdnorm+0x1ec>
   12f64:	00445783          	lhu	a5,4(s0)
   12f68:	1a079463          	bnez	a5,13110 <emdnorm+0x2c2>
   12f6c:	67a1                	lui	a5,0x8
   12f6e:	00041c23          	sh	zero,24(s0)
   12f72:	17f9                	addi	a5,a5,-2
   12f74:	0f27c663          	blt	a5,s2,13060 <emdnorm+0x212>
   12f78:	01241123          	sh	s2,2(s0)
   12f7c:	60a6                	ld	ra,72(sp)
   12f7e:	6406                	ld	s0,64(sp)
   12f80:	74e2                	ld	s1,56(sp)
   12f82:	7942                	ld	s2,48(sp)
   12f84:	79a2                	ld	s3,40(sp)
   12f86:	7a02                	ld	s4,32(sp)
   12f88:	6ae2                	ld	s5,24(sp)
   12f8a:	6b42                	ld	s6,16(sp)
   12f8c:	6ba2                	ld	s7,8(sp)
   12f8e:	6161                	addi	sp,sp,80
   12f90:	8082                	ret
   12f92:	10095c63          	bgez	s2,130aa <emdnorm+0x25c>
   12f96:	f7000793          	li	a5,-144
   12f9a:	0ef95a63          	bge	s2,a5,1308e <emdnorm+0x240>
   12f9e:	00240793          	addi	a5,s0,2
   12fa2:	0469                	addi	s0,s0,26
   12fa4:	0789                	addi	a5,a5,2
   12fa6:	fe079f23          	sh	zero,-2(a5) # 7ffe <register_fini-0x80b2>
   12faa:	fe879de3          	bne	a5,s0,12fa4 <emdnorm+0x156>
   12fae:	b7f9                	j	12f7c <emdnorm+0x12e>
   12fb0:	47e1                	li	a5,24
   12fb2:	14fa8563          	beq	s5,a5,130fc <emdnorm+0x2ae>
   12fb6:	03500793          	li	a5,53
   12fba:	18fa9563          	bne	s5,a5,13144 <emdnorm+0x2f6>
   12fbe:	6785                	lui	a5,0x1
   12fc0:	7ff00713          	li	a4,2047
   12fc4:	40000593          	li	a1,1024
   12fc8:	4b31                	li	s6,12
   12fca:	4b99                	li	s7,6
   12fcc:	80078793          	addi	a5,a5,-2048 # 800 <register_fini-0xf8b0>
   12fd0:	4619                	li	a2,6
   12fd2:	bdfd                	j	12ed0 <emdnorm+0x82>
   12fd4:	0144d703          	lhu	a4,20(s1)
   12fd8:	000b5603          	lhu	a2,0(s6)
   12fdc:	fff74793          	not	a5,a4
   12fe0:	8ff1                	and	a5,a5,a2
   12fe2:	00fb1023          	sh	a5,0(s6)
   12fe6:	0164d783          	lhu	a5,22(s1)
   12fea:	8e79                	and	a2,a2,a4
   12fec:	00c7f733          	and	a4,a5,a2
   12ff0:	cf21                	beqz	a4,13048 <emdnorm+0x1fa>
   12ff2:	00c79d63          	bne	a5,a2,1300c <emdnorm+0x1be>
   12ff6:	12099a63          	bnez	s3,1312a <emdnorm+0x2dc>
   12ffa:	44dc                	lw	a5,12(s1)
   12ffc:	0184d703          	lhu	a4,24(s1)
   13000:	0786                	slli	a5,a5,0x1
   13002:	97a2                	add	a5,a5,s0
   13004:	0007d783          	lhu	a5,0(a5)
   13008:	8ff9                	and	a5,a5,a4
   1300a:	dbb9                	beqz	a5,12f60 <emdnorm+0x112>
   1300c:	03248613          	addi	a2,s1,50
   13010:	01840693          	addi	a3,s0,24
   13014:	04f1                	addi	s1,s1,28
   13016:	4781                	li	a5,0
   13018:	00065703          	lhu	a4,0(a2)
   1301c:	0006d583          	lhu	a1,0(a3)
   13020:	16f9                	addi	a3,a3,-2
   13022:	1679                	addi	a2,a2,-2
   13024:	972e                	add	a4,a4,a1
   13026:	973e                	add	a4,a4,a5
   13028:	01075793          	srli	a5,a4,0x10
   1302c:	00e69123          	sh	a4,2(a3)
   13030:	8b85                	andi	a5,a5,1
   13032:	fec493e3          	bne	s1,a2,13018 <emdnorm+0x1ca>
   13036:	f32047e3          	bgtz	s2,12f64 <emdnorm+0x116>
   1303a:	09000793          	li	a5,144
   1303e:	00fa8563          	beq	s5,a5,13048 <emdnorm+0x1fa>
   13042:	8522                	mv	a0,s0
   13044:	8f1ff0ef          	jal	ra,12934 <eshup1>
   13048:	00445783          	lhu	a5,4(s0)
   1304c:	e3f1                	bnez	a5,13110 <emdnorm+0x2c2>
   1304e:	00041c23          	sh	zero,24(s0)
   13052:	f20953e3          	bgez	s2,12f78 <emdnorm+0x12a>
   13056:	00041123          	sh	zero,2(s0)
   1305a:	b70d                	j	12f7c <emdnorm+0x12e>
   1305c:	00041c23          	sh	zero,24(s0)
   13060:	77e1                	lui	a5,0xffff8
   13062:	fff7c793          	not	a5,a5
   13066:	00f41123          	sh	a5,2(s0)
   1306a:	00440793          	addi	a5,s0,4
   1306e:	0461                	addi	s0,s0,24
   13070:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd8c80>
   13074:	0789                	addi	a5,a5,2
   13076:	fe879de3          	bne	a5,s0,13070 <emdnorm+0x222>
   1307a:	b709                	j	12f7c <emdnorm+0x12e>
   1307c:	00240793          	addi	a5,s0,2
   13080:	0469                	addi	s0,s0,26
   13082:	0789                	addi	a5,a5,2
   13084:	fe079f23          	sh	zero,-2(a5)
   13088:	fef41de3          	bne	s0,a5,13082 <emdnorm+0x234>
   1308c:	bdc5                	j	12f7c <emdnorm+0x12e>
   1308e:	0009059b          	sext.w	a1,s2
   13092:	8522                	mv	a0,s0
   13094:	aefff0ef          	jal	ra,12b82 <eshift.part.0>
   13098:	c111                	beqz	a0,1309c <emdnorm+0x24e>
   1309a:	4985                	li	s3,1
   1309c:	de0a97e3          	bnez	s5,12e8a <emdnorm+0x3c>
   130a0:	00041c23          	sh	zero,24(s0)
   130a4:	00041123          	sh	zero,2(s0)
   130a8:	bdd1                	j	12f7c <emdnorm+0x12e>
   130aa:	ec0a81e3          	beqz	s5,12f6c <emdnorm+0x11e>
   130ae:	0044aa83          	lw	s5,4(s1)
   130b2:	4094                	lw	a3,0(s1)
   130b4:	01a48713          	addi	a4,s1,26
   130b8:	03448793          	addi	a5,s1,52
   130bc:	df5690e3          	bne	a3,s5,12e9c <emdnorm+0x4e>
   130c0:	0084ab83          	lw	s7,8(s1)
   130c4:	001b9b13          	slli	s6,s7,0x1
   130c8:	9b22                	add	s6,s6,s0
   130ca:	e32048e3          	bgtz	s2,12efa <emdnorm+0xac>
   130ce:	09000793          	li	a5,144
   130d2:	f0fa81e3          	beq	s5,a5,12fd4 <emdnorm+0x186>
   130d6:	01845783          	lhu	a5,24(s0)
   130da:	8522                	mv	a0,s0
   130dc:	8b85                	andi	a5,a5,1
   130de:	00f9e7b3          	or	a5,s3,a5
   130e2:	0007899b          	sext.w	s3,a5
   130e6:	803ff0ef          	jal	ra,128e8 <eshdn1>
   130ea:	bd01                	j	12efa <emdnorm+0xac>
   130ec:	6741                	lui	a4,0x10
   130ee:	177d                	addi	a4,a4,-1
   130f0:	65a1                	lui	a1,0x8
   130f2:	4b39                	li	s6,14
   130f4:	4b9d                	li	s7,7
   130f6:	4785                	li	a5,1
   130f8:	4619                	li	a2,6
   130fa:	bbd9                	j	12ed0 <emdnorm+0x82>
   130fc:	0ff00713          	li	a4,255
   13100:	08000593          	li	a1,128
   13104:	4b21                	li	s6,8
   13106:	4b91                	li	s7,4
   13108:	10000793          	li	a5,256
   1310c:	4611                	li	a2,4
   1310e:	b3c9                	j	12ed0 <emdnorm+0x82>
   13110:	8522                	mv	a0,s0
   13112:	fd6ff0ef          	jal	ra,128e8 <eshdn1>
   13116:	67a1                	lui	a5,0x8
   13118:	0905                	addi	s2,s2,1
   1311a:	00041c23          	sh	zero,24(s0)
   1311e:	17f9                	addi	a5,a5,-2
   13120:	f527c0e3          	blt	a5,s2,13060 <emdnorm+0x212>
   13124:	f20949e3          	bltz	s2,13056 <emdnorm+0x208>
   13128:	bd81                	j	12f78 <emdnorm+0x12a>
   1312a:	ee0a01e3          	beqz	s4,1300c <emdnorm+0x1be>
   1312e:	bd0d                	j	12f60 <emdnorm+0x112>
   13130:	0ff00713          	li	a4,255
   13134:	08000593          	li	a1,128
   13138:	4b31                	li	s6,12
   1313a:	4b99                	li	s7,6
   1313c:	10000793          	li	a5,256
   13140:	4619                	li	a2,6
   13142:	b379                	j	12ed0 <emdnorm+0x82>
   13144:	6741                	lui	a4,0x10
   13146:	177d                	addi	a4,a4,-1
   13148:	65a1                	lui	a1,0x8
   1314a:	4b61                	li	s6,24
   1314c:	4bb1                	li	s7,12
   1314e:	4785                	li	a5,1
   13150:	462d                	li	a2,11
   13152:	bbbd                	j	12ed0 <emdnorm+0x82>

0000000000013154 <eiremain>:
   13154:	711d                	addi	sp,sp,-96
   13156:	e0ca                	sd	s2,64(sp)
   13158:	fc4e                	sd	s3,56(sp)
   1315a:	892e                	mv	s2,a1
   1315c:	00255983          	lhu	s3,2(a0)
   13160:	ec86                	sd	ra,88(sp)
   13162:	e8a2                	sd	s0,80(sp)
   13164:	e4a6                	sd	s1,72(sp)
   13166:	f852                	sd	s4,48(sp)
   13168:	84b2                	mv	s1,a2
   1316a:	ec5e                	sd	s7,24(sp)
   1316c:	f456                	sd	s5,40(sp)
   1316e:	f05a                	sd	s6,32(sp)
   13170:	e862                	sd	s8,16(sp)
   13172:	e466                	sd	s9,8(sp)
   13174:	e06a                	sd	s10,0(sp)
   13176:	8baa                	mv	s7,a0
   13178:	901ff0ef          	jal	ra,12a78 <enormlz>
   1317c:	00295403          	lhu	s0,2(s2)
   13180:	87aa                	mv	a5,a0
   13182:	854a                	mv	a0,s2
   13184:	40f989b3          	sub	s3,s3,a5
   13188:	03448a13          	addi	s4,s1,52
   1318c:	8edff0ef          	jal	ra,12a78 <enormlz>
   13190:	8c09                	sub	s0,s0,a0
   13192:	04e48713          	addi	a4,s1,78
   13196:	87d2                	mv	a5,s4
   13198:	0789                	addi	a5,a5,2
   1319a:	fe079f23          	sh	zero,-2(a5) # 7ffe <register_fini-0x80b2>
   1319e:	fee79de3          	bne	a5,a4,13198 <eiremain+0x44>
   131a2:	07344a63          	blt	s0,s3,13216 <eiremain+0xc2>
   131a6:	004b8b13          	addi	s6,s7,4
   131aa:	00490a93          	addi	s5,s2,4
   131ae:	01ab8c13          	addi	s8,s7,26
   131b2:	00290d13          	addi	s10,s2,2
   131b6:	8756                	mv	a4,s5
   131b8:	87da                	mv	a5,s6
   131ba:	0007d603          	lhu	a2,0(a5)
   131be:	00075683          	lhu	a3,0(a4) # 10000 <register_fini-0xb0>
   131c2:	0789                	addi	a5,a5,2
   131c4:	0709                	addi	a4,a4,2
   131c6:	06d61c63          	bne	a2,a3,1323e <eiremain+0xea>
   131ca:	ff8798e3          	bne	a5,s8,131ba <eiremain+0x66>
   131ce:	018b8613          	addi	a2,s7,24
   131d2:	01890713          	addi	a4,s2,24
   131d6:	4681                	li	a3,0
   131d8:	00075783          	lhu	a5,0(a4)
   131dc:	00065583          	lhu	a1,0(a2)
   131e0:	1779                	addi	a4,a4,-2
   131e2:	8f95                	sub	a5,a5,a3
   131e4:	8f8d                	sub	a5,a5,a1
   131e6:	0107d693          	srli	a3,a5,0x10
   131ea:	00f71123          	sh	a5,2(a4)
   131ee:	8a85                	andi	a3,a3,1
   131f0:	1679                	addi	a2,a2,-2
   131f2:	feed13e3          	bne	s10,a4,131d8 <eiremain+0x84>
   131f6:	4c85                	li	s9,1
   131f8:	8552                	mv	a0,s4
   131fa:	f3aff0ef          	jal	ra,12934 <eshup1>
   131fe:	04c4d783          	lhu	a5,76(s1)
   13202:	147d                	addi	s0,s0,-1
   13204:	854a                	mv	a0,s2
   13206:	00fce7b3          	or	a5,s9,a5
   1320a:	04f49623          	sh	a5,76(s1)
   1320e:	f26ff0ef          	jal	ra,12934 <eshup1>
   13212:	fb3452e3          	bge	s0,s3,131b6 <eiremain+0x62>
   13216:	86a2                	mv	a3,s0
   13218:	6446                	ld	s0,80(sp)
   1321a:	60e6                	ld	ra,88(sp)
   1321c:	79e2                	ld	s3,56(sp)
   1321e:	7a42                	ld	s4,48(sp)
   13220:	7aa2                	ld	s5,40(sp)
   13222:	7b02                	ld	s6,32(sp)
   13224:	6be2                	ld	s7,24(sp)
   13226:	6c42                	ld	s8,16(sp)
   13228:	6ca2                	ld	s9,8(sp)
   1322a:	6d02                	ld	s10,0(sp)
   1322c:	87a6                	mv	a5,s1
   1322e:	854a                	mv	a0,s2
   13230:	64a6                	ld	s1,72(sp)
   13232:	6906                	ld	s2,64(sp)
   13234:	4701                	li	a4,0
   13236:	4601                	li	a2,0
   13238:	4581                	li	a1,0
   1323a:	6125                	addi	sp,sp,96
   1323c:	b909                	j	12e4e <emdnorm>
   1323e:	4c81                	li	s9,0
   13240:	fac6ece3          	bltu	a3,a2,131f8 <eiremain+0xa4>
   13244:	b769                	j	131ce <eiremain+0x7a>

0000000000013246 <e113toe.isra.0>:
   13246:	7179                	addi	sp,sp,-48
   13248:	f022                	sd	s0,32(sp)
   1324a:	f406                	sd	ra,40(sp)
   1324c:	842e                	mv	s0,a1
   1324e:	878a                	mv	a5,sp
   13250:	01a10713          	addi	a4,sp,26
   13254:	0789                	addi	a5,a5,2
   13256:	fe079f23          	sh	zero,-2(a5)
   1325a:	fee79de3          	bne	a5,a4,13254 <e113toe.isra.0+0xe>
   1325e:	00e55783          	lhu	a5,14(a0)
   13262:	6721                	lui	a4,0x8
   13264:	177d                	addi	a4,a4,-1
   13266:	03079693          	slli	a3,a5,0x30
   1326a:	96fd                	srai	a3,a3,0x3f
   1326c:	00d11023          	sh	a3,0(sp)
   13270:	00e7f6b3          	and	a3,a5,a4
   13274:	8636                	mv	a2,a3
   13276:	04e68363          	beq	a3,a4,132bc <e113toe.isra.0+0x76>
   1327a:	00e50793          	addi	a5,a0,14
   1327e:	00d11123          	sh	a3,2(sp)
   13282:	00610713          	addi	a4,sp,6
   13286:	ffe7d683          	lhu	a3,-2(a5)
   1328a:	17f9                	addi	a5,a5,-2
   1328c:	0709                	addi	a4,a4,2
   1328e:	fed71f23          	sh	a3,-2(a4) # 7ffe <register_fini-0x80b2>
   13292:	fef51ae3          	bne	a0,a5,13286 <e113toe.isra.0+0x40>
   13296:	ea19                	bnez	a2,132ac <e113toe.isra.0+0x66>
   13298:	00011223          	sh	zero,4(sp)
   1329c:	85a2                	mv	a1,s0
   1329e:	850a                	mv	a0,sp
   132a0:	f4cff0ef          	jal	ra,129ec <emovo.constprop.0>
   132a4:	70a2                	ld	ra,40(sp)
   132a6:	7402                	ld	s0,32(sp)
   132a8:	6145                	addi	sp,sp,48
   132aa:	8082                	ret
   132ac:	4785                	li	a5,1
   132ae:	55fd                	li	a1,-1
   132b0:	850a                	mv	a0,sp
   132b2:	00f11223          	sh	a5,4(sp)
   132b6:	8cdff0ef          	jal	ra,12b82 <eshift.part.0>
   132ba:	b7cd                	j	1329c <e113toe.isra.0+0x56>
   132bc:	87aa                	mv	a5,a0
   132be:	00e50693          	addi	a3,a0,14
   132c2:	0007d703          	lhu	a4,0(a5)
   132c6:	0789                	addi	a5,a5,2
   132c8:	ef21                	bnez	a4,13320 <e113toe.isra.0+0xda>
   132ca:	fef69ce3          	bne	a3,a5,132c2 <e113toe.isra.0+0x7c>
   132ce:	01440713          	addi	a4,s0,20
   132d2:	87a2                	mv	a5,s0
   132d4:	0789                	addi	a5,a5,2
   132d6:	fe079f23          	sh	zero,-2(a5)
   132da:	fee79de3          	bne	a5,a4,132d4 <e113toe.isra.0+0x8e>
   132de:	01240713          	addi	a4,s0,18
   132e2:	87a2                	mv	a5,s0
   132e4:	0789                	addi	a5,a5,2
   132e6:	fe079f23          	sh	zero,-2(a5)
   132ea:	fef71de3          	bne	a4,a5,132e4 <e113toe.isra.0+0x9e>
   132ee:	01245783          	lhu	a5,18(s0)
   132f2:	66a1                	lui	a3,0x8
   132f4:	16fd                	addi	a3,a3,-1
   132f6:	8fd5                	or	a5,a5,a3
   132f8:	17c2                	slli	a5,a5,0x30
   132fa:	93c1                	srli	a5,a5,0x30
   132fc:	00f41923          	sh	a5,18(s0)
   13300:	00e51683          	lh	a3,14(a0)
   13304:	fa06d0e3          	bgez	a3,132a4 <e113toe.isra.0+0x5e>
   13308:	86a2                	mv	a3,s0
   1330a:	0006d603          	lhu	a2,0(a3) # 8000 <register_fini-0x80b0>
   1330e:	0689                	addi	a3,a3,2
   13310:	fa51                	bnez	a2,132a4 <e113toe.isra.0+0x5e>
   13312:	fed71ce3          	bne	a4,a3,1330a <e113toe.isra.0+0xc4>
   13316:	7761                	lui	a4,0xffff8
   13318:	8fb9                	xor	a5,a5,a4
   1331a:	00f41923          	sh	a5,18(s0)
   1331e:	b759                	j	132a4 <e113toe.isra.0+0x5e>
   13320:	01040713          	addi	a4,s0,16
   13324:	87a2                	mv	a5,s0
   13326:	0789                	addi	a5,a5,2
   13328:	fe079f23          	sh	zero,-2(a5)
   1332c:	fee79de3          	bne	a5,a4,13326 <e113toe.isra.0+0xe0>
   13330:	77f1                	lui	a5,0xffffc
   13332:	00f41823          	sh	a5,16(s0)
   13336:	77e1                	lui	a5,0xffff8
   13338:	fff7c793          	not	a5,a5
   1333c:	00f41923          	sh	a5,18(s0)
   13340:	b795                	j	132a4 <e113toe.isra.0+0x5e>

0000000000013342 <ediv>:
   13342:	01255783          	lhu	a5,18(a0)
   13346:	7115                	addi	sp,sp,-224
   13348:	e9a2                	sd	s0,208(sp)
   1334a:	fff7c793          	not	a5,a5
   1334e:	e5a6                	sd	s1,200(sp)
   13350:	e1ca                	sd	s2,192(sp)
   13352:	fd4e                	sd	s3,184(sp)
   13354:	ed86                	sd	ra,216(sp)
   13356:	f952                	sd	s4,176(sp)
   13358:	f556                	sd	s5,168(sp)
   1335a:	f15a                	sd	s6,160(sp)
   1335c:	ed5e                	sd	s7,152(sp)
   1335e:	e962                	sd	s8,144(sp)
   13360:	e566                	sd	s9,136(sp)
   13362:	e16a                	sd	s10,128(sp)
   13364:	fcee                	sd	s11,120(sp)
   13366:	03179713          	slli	a4,a5,0x31
   1336a:	84aa                	mv	s1,a0
   1336c:	89ae                	mv	s3,a1
   1336e:	8432                	mv	s0,a2
   13370:	8936                	mv	s2,a3
   13372:	eb19                	bnez	a4,13388 <ediv+0x46>
   13374:	01250693          	addi	a3,a0,18
   13378:	87aa                	mv	a5,a0
   1337a:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd8c80>
   1337e:	0789                	addi	a5,a5,2
   13380:	22071a63          	bnez	a4,135b4 <ediv+0x272>
   13384:	fed79be3          	bne	a5,a3,1337a <ediv+0x38>
   13388:	0129d783          	lhu	a5,18(s3)
   1338c:	fff7c793          	not	a5,a5
   13390:	03179713          	slli	a4,a5,0x31
   13394:	eb19                	bnez	a4,133aa <ediv+0x68>
   13396:	01298693          	addi	a3,s3,18
   1339a:	87ce                	mv	a5,s3
   1339c:	0007d703          	lhu	a4,0(a5)
   133a0:	0789                	addi	a5,a5,2
   133a2:	22071463          	bnez	a4,135ca <ediv+0x288>
   133a6:	fed79be3          	bne	a5,a3,1339c <ediv+0x5a>
   133aa:	6a71                	lui	s4,0x1c
   133ac:	5d8a0593          	addi	a1,s4,1496 # 1c5d8 <ezero>
   133b0:	8526                	mv	a0,s1
   133b2:	9b9ff0ef          	jal	ra,12d6a <ecmp>
   133b6:	22050563          	beqz	a0,135e0 <ediv+0x29e>
   133ba:	0124d603          	lhu	a2,18(s1)
   133be:	0129d703          	lhu	a4,18(s3)
   133c2:	67a1                	lui	a5,0x8
   133c4:	17fd                	addi	a5,a5,-1
   133c6:	00f67533          	and	a0,a2,a5
   133ca:	00f775b3          	and	a1,a4,a5
   133ce:	06f51a63          	bne	a0,a5,13442 <ediv+0x100>
   133d2:	01248813          	addi	a6,s1,18
   133d6:	87a6                	mv	a5,s1
   133d8:	0007d683          	lhu	a3,0(a5) # 8000 <register_fini-0x80b0>
   133dc:	0789                	addi	a5,a5,2
   133de:	e2a5                	bnez	a3,1343e <ediv+0xfc>
   133e0:	ff079ce3          	bne	a5,a6,133d8 <ediv+0x96>
   133e4:	67a1                	lui	a5,0x8
   133e6:	17fd                	addi	a5,a5,-1
   133e8:	20f59663          	bne	a1,a5,135f4 <ediv+0x2b2>
   133ec:	01298693          	addi	a3,s3,18
   133f0:	87ce                	mv	a5,s3
   133f2:	0007d583          	lhu	a1,0(a5) # 8000 <register_fini-0x80b0>
   133f6:	0789                	addi	a5,a5,2
   133f8:	36059163          	bnez	a1,1375a <ediv+0x418>
   133fc:	fed79be3          	bne	a5,a3,133f2 <ediv+0xb0>
   13400:	01040713          	addi	a4,s0,16
   13404:	87a2                	mv	a5,s0
   13406:	0789                	addi	a5,a5,2
   13408:	fe079f23          	sh	zero,-2(a5)
   1340c:	fee79de3          	bne	a5,a4,13406 <ediv+0xc4>
   13410:	77f1                	lui	a5,0xffffc
   13412:	00f41823          	sh	a5,16(s0)
   13416:	77e1                	lui	a5,0xffff8
   13418:	fff7c793          	not	a5,a5
   1341c:	00f41923          	sh	a5,18(s0)
   13420:	60ee                	ld	ra,216(sp)
   13422:	644e                	ld	s0,208(sp)
   13424:	64ae                	ld	s1,200(sp)
   13426:	690e                	ld	s2,192(sp)
   13428:	79ea                	ld	s3,184(sp)
   1342a:	7a4a                	ld	s4,176(sp)
   1342c:	7aaa                	ld	s5,168(sp)
   1342e:	7b0a                	ld	s6,160(sp)
   13430:	6bea                	ld	s7,152(sp)
   13432:	6c4a                	ld	s8,144(sp)
   13434:	6caa                	ld	s9,136(sp)
   13436:	6d0a                	ld	s10,128(sp)
   13438:	7de6                	ld	s11,120(sp)
   1343a:	612d                	addi	sp,sp,224
   1343c:	8082                	ret
   1343e:	67a1                	lui	a5,0x8
   13440:	17fd                	addi	a5,a5,-1
   13442:	1cf58163          	beq	a1,a5,13604 <ediv+0x2c2>
   13446:	8526                	mv	a0,s1
   13448:	080c                	addi	a1,sp,16
   1344a:	88bff0ef          	jal	ra,12cd4 <emovi>
   1344e:	180c                	addi	a1,sp,48
   13450:	854e                	mv	a0,s3
   13452:	883ff0ef          	jal	ra,12cd4 <emovi>
   13456:	03215a83          	lhu	s5,50(sp)
   1345a:	01215483          	lhu	s1,18(sp)
   1345e:	200a8963          	beqz	s5,13670 <ediv+0x32e>
   13462:	e456                	sd	s5,8(sp)
   13464:	8726                	mv	a4,s1
   13466:	e026                	sd	s1,0(sp)
   13468:	085c                	addi	a5,sp,20
   1346a:	1034                	addi	a3,sp,40
   1346c:	ef09                	bnez	a4,13486 <ediv+0x144>
   1346e:	2af68e63          	beq	a3,a5,1372a <ediv+0x3e8>
   13472:	0007d703          	lhu	a4,0(a5) # 8000 <register_fini-0x80b0>
   13476:	0789                	addi	a5,a5,2
   13478:	db7d                	beqz	a4,1346e <ediv+0x12c>
   1347a:	0808                	addi	a0,sp,16
   1347c:	dfcff0ef          	jal	ra,12a78 <enormlz>
   13480:	40a487b3          	sub	a5,s1,a0
   13484:	e03e                	sd	a5,0(sp)
   13486:	5742                	lw	a4,48(sp)
   13488:	03890a93          	addi	s5,s2,56
   1348c:	87d6                	mv	a5,s5
   1348e:	02e92a23          	sw	a4,52(s2)
   13492:	04e90493          	addi	s1,s2,78
   13496:	0789                	addi	a5,a5,2
   13498:	fe079f23          	sh	zero,-2(a5)
   1349c:	fef49de3          	bne	s1,a5,13496 <ediv+0x154>
   134a0:	1808                	addi	a0,sp,48
   134a2:	c46ff0ef          	jal	ra,128e8 <eshdn1>
   134a6:	01615b03          	lhu	s6,22(sp)
   134aa:	69c1                	lui	s3,0x10
   134ac:	04810c13          	addi	s8,sp,72
   134b0:	010b1a13          	slli	s4,s6,0x10
   134b4:	416a0a33          	sub	s4,s4,s6
   134b8:	03210c93          	addi	s9,sp,50
   134bc:	19fd                	addi	s3,s3,-1
   134be:	06a10d13          	addi	s10,sp,106
   134c2:	05210d93          	addi	s11,sp,82
   134c6:	03415783          	lhu	a5,52(sp)
   134ca:	03615703          	lhu	a4,54(sp)
   134ce:	8bce                	mv	s7,s3
   134d0:	07c2                	slli	a5,a5,0x10
   134d2:	97ba                	add	a5,a5,a4
   134d4:	00fa6863          	bltu	s4,a5,134e4 <ediv+0x1a2>
   134d8:	0367d7b3          	divu	a5,a5,s6
   134dc:	03079b93          	slli	s7,a5,0x30
   134e0:	030bdb93          	srli	s7,s7,0x30
   134e4:	0890                	addi	a2,sp,80
   134e6:	080c                	addi	a1,sp,16
   134e8:	855e                	mv	a0,s7
   134ea:	c9aff0ef          	jal	ra,12984 <m16m>
   134ee:	1858                	addi	a4,sp,52
   134f0:	08dc                	addi	a5,sp,84
   134f2:	0007d603          	lhu	a2,0(a5)
   134f6:	00075683          	lhu	a3,0(a4) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd8c80>
   134fa:	0789                	addi	a5,a5,2
   134fc:	0709                	addi	a4,a4,2
   134fe:	18d61b63          	bne	a2,a3,13694 <ediv+0x352>
   13502:	ffa798e3          	bne	a5,s10,134f2 <ediv+0x1b0>
   13506:	4781                	li	a5,0
   13508:	10b4                	addi	a3,sp,104
   1350a:	8662                	mv	a2,s8
   1350c:	00065703          	lhu	a4,0(a2)
   13510:	0006d583          	lhu	a1,0(a3)
   13514:	1679                	addi	a2,a2,-2
   13516:	8f1d                	sub	a4,a4,a5
   13518:	8f0d                	sub	a4,a4,a1
   1351a:	01075793          	srli	a5,a4,0x10
   1351e:	00e61123          	sh	a4,2(a2)
   13522:	8b85                	andi	a5,a5,1
   13524:	16f9                	addi	a3,a3,-2
   13526:	ff9613e3          	bne	a2,s9,1350c <ediv+0x1ca>
   1352a:	017a9023          	sh	s7,0(s5)
   1352e:	185c                	addi	a5,sp,52
   13530:	0027d703          	lhu	a4,2(a5)
   13534:	0789                	addi	a5,a5,2
   13536:	fee79f23          	sh	a4,-2(a5)
   1353a:	ff879be3          	bne	a5,s8,13530 <ediv+0x1ee>
   1353e:	04011423          	sh	zero,72(sp)
   13542:	0a89                	addi	s5,s5,2
   13544:	f95491e3          	bne	s1,s5,134c6 <ediv+0x184>
   13548:	4701                	li	a4,0
   1354a:	185c                	addi	a5,sp,52
   1354c:	04a10613          	addi	a2,sp,74
   13550:	0007d683          	lhu	a3,0(a5)
   13554:	0789                	addi	a5,a5,2
   13556:	8f55                	or	a4,a4,a3
   13558:	fec79ce3          	bne	a5,a2,13550 <ediv+0x20e>
   1355c:	2701                	sext.w	a4,a4
   1355e:	00e035b3          	snez	a1,a4
   13562:	181c                	addi	a5,sp,48
   13564:	03490713          	addi	a4,s2,52
   13568:	00075683          	lhu	a3,0(a4)
   1356c:	0789                	addi	a5,a5,2
   1356e:	0709                	addi	a4,a4,2
   13570:	fed79f23          	sh	a3,-2(a5)
   13574:	fef61ae3          	bne	a2,a5,13568 <ediv+0x226>
   13578:	67a2                	ld	a5,8(sp)
   1357a:	6702                	ld	a4,0(sp)
   1357c:	6691                	lui	a3,0x4
   1357e:	16fd                	addi	a3,a3,-1
   13580:	40e78ab3          	sub	s5,a5,a4
   13584:	1808                	addi	a0,sp,48
   13586:	87ca                	mv	a5,s2
   13588:	04000713          	li	a4,64
   1358c:	96d6                	add	a3,a3,s5
   1358e:	4601                	li	a2,0
   13590:	8bfff0ef          	jal	ra,12e4e <emdnorm>
   13594:	03015703          	lhu	a4,48(sp)
   13598:	01015783          	lhu	a5,16(sp)
   1359c:	85a2                	mv	a1,s0
   1359e:	1808                	addi	a0,sp,48
   135a0:	8f99                	sub	a5,a5,a4
   135a2:	00f037b3          	snez	a5,a5
   135a6:	40f007bb          	negw	a5,a5
   135aa:	02f11823          	sh	a5,48(sp)
   135ae:	c3eff0ef          	jal	ra,129ec <emovo.constprop.0>
   135b2:	b5bd                	j	13420 <ediv+0xde>
   135b4:	01448713          	addi	a4,s1,20
   135b8:	0004d783          	lhu	a5,0(s1)
   135bc:	0489                	addi	s1,s1,2
   135be:	0409                	addi	s0,s0,2
   135c0:	fef41f23          	sh	a5,-2(s0)
   135c4:	fee49ae3          	bne	s1,a4,135b8 <ediv+0x276>
   135c8:	bda1                	j	13420 <ediv+0xde>
   135ca:	01440713          	addi	a4,s0,20
   135ce:	0009d783          	lhu	a5,0(s3) # 10000 <register_fini-0xb0>
   135d2:	0409                	addi	s0,s0,2
   135d4:	0989                	addi	s3,s3,2
   135d6:	fef41f23          	sh	a5,-2(s0)
   135da:	fee41ae3          	bne	s0,a4,135ce <ediv+0x28c>
   135de:	b589                	j	13420 <ediv+0xde>
   135e0:	5d8a0593          	addi	a1,s4,1496
   135e4:	854e                	mv	a0,s3
   135e6:	f84ff0ef          	jal	ra,12d6a <ecmp>
   135ea:	dc0518e3          	bnez	a0,133ba <ediv+0x78>
   135ee:	bd09                	j	13400 <ediv+0xbe>
   135f0:	e4080be3          	beqz	a6,13446 <ediv+0x104>
   135f4:	01440793          	addi	a5,s0,20
   135f8:	0409                	addi	s0,s0,2
   135fa:	fe041f23          	sh	zero,-2(s0)
   135fe:	fef41de3          	bne	s0,a5,135f8 <ediv+0x2b6>
   13602:	bd39                	j	13420 <ediv+0xde>
   13604:	4801                	li	a6,0
   13606:	01298693          	addi	a3,s3,18
   1360a:	87ce                	mv	a5,s3
   1360c:	0007d583          	lhu	a1,0(a5)
   13610:	0789                	addi	a5,a5,2
   13612:	fdf9                	bnez	a1,135f0 <ediv+0x2ae>
   13614:	fed79ce3          	bne	a5,a3,1360c <ediv+0x2ca>
   13618:	67a1                	lui	a5,0x8
   1361a:	17fd                	addi	a5,a5,-1
   1361c:	04f50163          	beq	a0,a5,1365e <ediv+0x31c>
   13620:	823d                	srli	a2,a2,0xf
   13622:	0009d783          	lhu	a5,0(s3)
   13626:	0989                	addi	s3,s3,2
   13628:	12079563          	bnez	a5,13752 <ediv+0x410>
   1362c:	fed99be3          	bne	s3,a3,13622 <ediv+0x2e0>
   13630:	00f75793          	srli	a5,a4,0xf
   13634:	8fb1                	xor	a5,a5,a2
   13636:	00f7979b          	slliw	a5,a5,0xf
   1363a:	00f41923          	sh	a5,18(s0)
   1363e:	01240713          	addi	a4,s0,18
   13642:	87a2                	mv	a5,s0
   13644:	0789                	addi	a5,a5,2
   13646:	fe079f23          	sh	zero,-2(a5) # 7ffe <register_fini-0x80b2>
   1364a:	fef71de3          	bne	a4,a5,13644 <ediv+0x302>
   1364e:	01245783          	lhu	a5,18(s0)
   13652:	6721                	lui	a4,0x8
   13654:	177d                	addi	a4,a4,-1
   13656:	8fd9                	or	a5,a5,a4
   13658:	00f41923          	sh	a5,18(s0)
   1365c:	b3d1                	j	13420 <ediv+0xde>
   1365e:	01248593          	addi	a1,s1,18
   13662:	0004d783          	lhu	a5,0(s1)
   13666:	0489                	addi	s1,s1,2
   13668:	e7fd                	bnez	a5,13756 <ediv+0x414>
   1366a:	feb49ce3          	bne	s1,a1,13662 <ediv+0x320>
   1366e:	bf4d                	j	13620 <ediv+0x2de>
   13670:	185c                	addi	a5,sp,52
   13672:	04810c13          	addi	s8,sp,72
   13676:	0afc0263          	beq	s8,a5,1371a <ediv+0x3d8>
   1367a:	0007d703          	lhu	a4,0(a5)
   1367e:	0789                	addi	a5,a5,2
   13680:	db7d                	beqz	a4,13676 <ediv+0x334>
   13682:	1808                	addi	a0,sp,48
   13684:	bf4ff0ef          	jal	ra,12a78 <enormlz>
   13688:	40a007b3          	neg	a5,a0
   1368c:	01215703          	lhu	a4,18(sp)
   13690:	e43e                	sd	a5,8(sp)
   13692:	bbd1                	j	13466 <ediv+0x124>
   13694:	e6c6f9e3          	bgeu	a3,a2,13506 <ediv+0x1c4>
   13698:	fffb879b          	addiw	a5,s7,-1
   1369c:	03079893          	slli	a7,a5,0x30
   136a0:	0308d893          	srli	a7,a7,0x30
   136a4:	4681                	li	a3,0
   136a6:	1030                	addi	a2,sp,40
   136a8:	10b8                	addi	a4,sp,104
   136aa:	00075783          	lhu	a5,0(a4) # 8000 <register_fini-0x80b0>
   136ae:	00065583          	lhu	a1,0(a2)
   136b2:	1779                	addi	a4,a4,-2
   136b4:	8f95                	sub	a5,a5,a3
   136b6:	8f8d                	sub	a5,a5,a1
   136b8:	0107d693          	srli	a3,a5,0x10
   136bc:	00f71123          	sh	a5,2(a4)
   136c0:	8a85                	andi	a3,a3,1
   136c2:	1679                	addi	a2,a2,-2
   136c4:	ffb713e3          	bne	a4,s11,136aa <ediv+0x368>
   136c8:	1858                	addi	a4,sp,52
   136ca:	08dc                	addi	a5,sp,84
   136cc:	0007d603          	lhu	a2,0(a5)
   136d0:	00075683          	lhu	a3,0(a4)
   136d4:	0789                	addi	a5,a5,2
   136d6:	0709                	addi	a4,a4,2
   136d8:	00d61663          	bne	a2,a3,136e4 <ediv+0x3a2>
   136dc:	ffa798e3          	bne	a5,s10,136cc <ediv+0x38a>
   136e0:	8bc6                	mv	s7,a7
   136e2:	b515                	j	13506 <ediv+0x1c4>
   136e4:	fec6fee3          	bgeu	a3,a2,136e0 <ediv+0x39e>
   136e8:	ffeb851b          	addiw	a0,s7,-2
   136ec:	03051b93          	slli	s7,a0,0x30
   136f0:	030bdb93          	srli	s7,s7,0x30
   136f4:	4681                	li	a3,0
   136f6:	1030                	addi	a2,sp,40
   136f8:	10b8                	addi	a4,sp,104
   136fa:	00075783          	lhu	a5,0(a4)
   136fe:	00065583          	lhu	a1,0(a2)
   13702:	1779                	addi	a4,a4,-2
   13704:	8f95                	sub	a5,a5,a3
   13706:	8f8d                	sub	a5,a5,a1
   13708:	0107d693          	srli	a3,a5,0x10
   1370c:	00f71123          	sh	a5,2(a4)
   13710:	8a85                	andi	a3,a3,1
   13712:	1679                	addi	a2,a2,-2
   13714:	ffb713e3          	bne	a4,s11,136fa <ediv+0x3b8>
   13718:	b3fd                	j	13506 <ediv+0x1c4>
   1371a:	01440793          	addi	a5,s0,20
   1371e:	0409                	addi	s0,s0,2
   13720:	fe041f23          	sh	zero,-2(s0)
   13724:	fef41de3          	bne	s0,a5,1371e <ediv+0x3dc>
   13728:	b9e5                	j	13420 <ediv+0xde>
   1372a:	01015683          	lhu	a3,16(sp)
   1372e:	03015603          	lhu	a2,48(sp)
   13732:	01240713          	addi	a4,s0,18
   13736:	87a2                	mv	a5,s0
   13738:	8e91                	sub	a3,a3,a2
   1373a:	00d036b3          	snez	a3,a3
   1373e:	00f6969b          	slliw	a3,a3,0xf
   13742:	00d41923          	sh	a3,18(s0)
   13746:	0789                	addi	a5,a5,2
   13748:	fe079f23          	sh	zero,-2(a5)
   1374c:	fef71de3          	bne	a4,a5,13746 <ediv+0x404>
   13750:	bdfd                	j	1364e <ediv+0x30c>
   13752:	4781                	li	a5,0
   13754:	b5c5                	j	13634 <ediv+0x2f2>
   13756:	4601                	li	a2,0
   13758:	b5e9                	j	13622 <ediv+0x2e0>
   1375a:	4805                	li	a6,1
   1375c:	b57d                	j	1360a <ediv+0x2c8>

000000000001375e <emul>:
   1375e:	7131                	addi	sp,sp,-192
   13760:	f526                	sd	s1,168(sp)
   13762:	84aa                	mv	s1,a0
   13764:	01255503          	lhu	a0,18(a0)
   13768:	6721                	lui	a4,0x8
   1376a:	177d                	addi	a4,a4,-1
   1376c:	f922                	sd	s0,176(sp)
   1376e:	f14a                	sd	s2,160(sp)
   13770:	e952                	sd	s4,144(sp)
   13772:	fd06                	sd	ra,184(sp)
   13774:	ed4e                	sd	s3,152(sp)
   13776:	e556                	sd	s5,136(sp)
   13778:	e15a                	sd	s6,128(sp)
   1377a:	fcde                	sd	s7,120(sp)
   1377c:	f8e2                	sd	s8,112(sp)
   1377e:	f4e6                	sd	s9,104(sp)
   13780:	00e57833          	and	a6,a0,a4
   13784:	892e                	mv	s2,a1
   13786:	8432                	mv	s0,a2
   13788:	8a36                	mv	s4,a3
   1378a:	00e81b63          	bne	a6,a4,137a0 <emul+0x42>
   1378e:	01248993          	addi	s3,s1,18
   13792:	8726                	mv	a4,s1
   13794:	00075603          	lhu	a2,0(a4) # 8000 <register_fini-0x80b0>
   13798:	0709                	addi	a4,a4,2
   1379a:	e67d                	bnez	a2,13888 <emul+0x12a>
   1379c:	ff371ce3          	bne	a4,s3,13794 <emul+0x36>
   137a0:	01295603          	lhu	a2,18(s2)
   137a4:	67a1                	lui	a5,0x8
   137a6:	17fd                	addi	a5,a5,-1
   137a8:	00f675b3          	and	a1,a2,a5
   137ac:	06f58c63          	beq	a1,a5,13824 <emul+0xc6>
   137b0:	10f81363          	bne	a6,a5,138b6 <emul+0x158>
   137b4:	01248993          	addi	s3,s1,18
   137b8:	87a6                	mv	a5,s1
   137ba:	0007d703          	lhu	a4,0(a5) # 8000 <register_fini-0x80b0>
   137be:	0789                	addi	a5,a5,2
   137c0:	1c071b63          	bnez	a4,13996 <emul+0x238>
   137c4:	fef99be3          	bne	s3,a5,137ba <emul+0x5c>
   137c8:	65f1                	lui	a1,0x1c
   137ca:	5d858593          	addi	a1,a1,1496 # 1c5d8 <ezero>
   137ce:	854a                	mv	a0,s2
   137d0:	d9aff0ef          	jal	ra,12d6a <ecmp>
   137d4:	1a050063          	beqz	a0,13974 <emul+0x216>
   137d8:	01295603          	lhu	a2,18(s2)
   137dc:	67a1                	lui	a5,0x8
   137de:	17fd                	addi	a5,a5,-1
   137e0:	00f675b3          	and	a1,a2,a5
   137e4:	1af58d63          	beq	a1,a5,1399e <emul+0x240>
   137e8:	0124d503          	lhu	a0,18(s1)
   137ec:	00f57733          	and	a4,a0,a5
   137f0:	0cf71363          	bne	a4,a5,138b6 <emul+0x158>
   137f4:	87a6                	mv	a5,s1
   137f6:	0007d703          	lhu	a4,0(a5) # 8000 <register_fini-0x80b0>
   137fa:	0789                	addi	a5,a5,2
   137fc:	0e071a63          	bnez	a4,138f0 <emul+0x192>
   13800:	fef99be3          	bne	s3,a5,137f6 <emul+0x98>
   13804:	0004d783          	lhu	a5,0(s1)
   13808:	0489                	addi	s1,s1,2
   1380a:	28079e63          	bnez	a5,13aa6 <emul+0x348>
   1380e:	ff349be3          	bne	s1,s3,13804 <emul+0xa6>
   13812:	00f55713          	srli	a4,a0,0xf
   13816:	67a1                	lui	a5,0x8
   13818:	17fd                	addi	a5,a5,-1
   1381a:	10f59b63          	bne	a1,a5,13930 <emul+0x1d2>
   1381e:	01290693          	addi	a3,s2,18
   13822:	a201                	j	13922 <emul+0x1c4>
   13824:	01290693          	addi	a3,s2,18
   13828:	874a                	mv	a4,s2
   1382a:	00075783          	lhu	a5,0(a4)
   1382e:	0709                	addi	a4,a4,2
   13830:	12079763          	bnez	a5,1395e <emul+0x200>
   13834:	fee69be3          	bne	a3,a4,1382a <emul+0xcc>
   13838:	67a1                	lui	a5,0x8
   1383a:	17fd                	addi	a5,a5,-1
   1383c:	f6f80ce3          	beq	a6,a5,137b4 <emul+0x56>
   13840:	87ca                	mv	a5,s2
   13842:	0007d703          	lhu	a4,0(a5) # 8000 <register_fini-0x80b0>
   13846:	0789                	addi	a5,a5,2
   13848:	28071163          	bnez	a4,13aca <emul+0x36c>
   1384c:	fef69be3          	bne	a3,a5,13842 <emul+0xe4>
   13850:	65f1                	lui	a1,0x1c
   13852:	5d858593          	addi	a1,a1,1496 # 1c5d8 <ezero>
   13856:	8526                	mv	a0,s1
   13858:	d12ff0ef          	jal	ra,12d6a <ecmp>
   1385c:	10050c63          	beqz	a0,13974 <emul+0x216>
   13860:	0124d503          	lhu	a0,18(s1)
   13864:	01295603          	lhu	a2,18(s2)
   13868:	67a1                	lui	a5,0x8
   1386a:	17fd                	addi	a5,a5,-1
   1386c:	00f576b3          	and	a3,a0,a5
   13870:	00f67733          	and	a4,a2,a5
   13874:	8836                	mv	a6,a3
   13876:	0007059b          	sext.w	a1,a4
   1387a:	06f69d63          	bne	a3,a5,138f4 <emul+0x196>
   1387e:	01248993          	addi	s3,s1,18
   13882:	0007059b          	sext.w	a1,a4
   13886:	b7bd                	j	137f4 <emul+0x96>
   13888:	01440713          	addi	a4,s0,20
   1388c:	0004d783          	lhu	a5,0(s1)
   13890:	0409                	addi	s0,s0,2
   13892:	0489                	addi	s1,s1,2
   13894:	fef41f23          	sh	a5,-2(s0)
   13898:	fee41ae3          	bne	s0,a4,1388c <emul+0x12e>
   1389c:	70ea                	ld	ra,184(sp)
   1389e:	744a                	ld	s0,176(sp)
   138a0:	74aa                	ld	s1,168(sp)
   138a2:	790a                	ld	s2,160(sp)
   138a4:	69ea                	ld	s3,152(sp)
   138a6:	6a4a                	ld	s4,144(sp)
   138a8:	6aaa                	ld	s5,136(sp)
   138aa:	6b0a                	ld	s6,128(sp)
   138ac:	7be6                	ld	s7,120(sp)
   138ae:	7c46                	ld	s8,112(sp)
   138b0:	7ca6                	ld	s9,104(sp)
   138b2:	6129                	addi	sp,sp,192
   138b4:	8082                	ret
   138b6:	8526                	mv	a0,s1
   138b8:	858a                	mv	a1,sp
   138ba:	c1aff0ef          	jal	ra,12cd4 <emovi>
   138be:	100c                	addi	a1,sp,32
   138c0:	854a                	mv	a0,s2
   138c2:	c12ff0ef          	jal	ra,12cd4 <emovi>
   138c6:	00215483          	lhu	s1,2(sp)
   138ca:	02215983          	lhu	s3,34(sp)
   138ce:	e8f9                	bnez	s1,139a4 <emul+0x246>
   138d0:	005c                	addi	a5,sp,4
   138d2:	0834                	addi	a3,sp,24
   138d4:	1cf68b63          	beq	a3,a5,13aaa <emul+0x34c>
   138d8:	0007d703          	lhu	a4,0(a5) # 8000 <register_fini-0x80b0>
   138dc:	0789                	addi	a5,a5,2
   138de:	db7d                	beqz	a4,138d4 <emul+0x176>
   138e0:	850a                	mv	a0,sp
   138e2:	996ff0ef          	jal	ra,12a78 <enormlz>
   138e6:	02215703          	lhu	a4,34(sp)
   138ea:	40a004b3          	neg	s1,a0
   138ee:	a865                	j	139a6 <emul+0x248>
   138f0:	6821                	lui	a6,0x8
   138f2:	187d                	addi	a6,a6,-1
   138f4:	67a1                	lui	a5,0x8
   138f6:	17fd                	addi	a5,a5,-1
   138f8:	faf59fe3          	bne	a1,a5,138b6 <emul+0x158>
   138fc:	01290693          	addi	a3,s2,18
   13900:	87ca                	mv	a5,s2
   13902:	0007d703          	lhu	a4,0(a5) # 8000 <register_fini-0x80b0>
   13906:	0789                	addi	a5,a5,2
   13908:	f75d                	bnez	a4,138b6 <emul+0x158>
   1390a:	fed79ce3          	bne	a5,a3,13902 <emul+0x1a4>
   1390e:	67a1                	lui	a5,0x8
   13910:	2801                	sext.w	a6,a6
   13912:	17fd                	addi	a5,a5,-1
   13914:	00f55713          	srli	a4,a0,0xf
   13918:	01248993          	addi	s3,s1,18
   1391c:	85c2                	mv	a1,a6
   1391e:	eef803e3          	beq	a6,a5,13804 <emul+0xa6>
   13922:	00095783          	lhu	a5,0(s2)
   13926:	0909                	addi	s2,s2,2
   13928:	16079d63          	bnez	a5,13aa2 <emul+0x344>
   1392c:	fed91be3          	bne	s2,a3,13922 <emul+0x1c4>
   13930:	00f65793          	srli	a5,a2,0xf
   13934:	8fb9                	xor	a5,a5,a4
   13936:	00f7979b          	slliw	a5,a5,0xf
   1393a:	00f41923          	sh	a5,18(s0)
   1393e:	01240713          	addi	a4,s0,18
   13942:	87a2                	mv	a5,s0
   13944:	0789                	addi	a5,a5,2
   13946:	fe079f23          	sh	zero,-2(a5) # 7ffe <register_fini-0x80b2>
   1394a:	fee79de3          	bne	a5,a4,13944 <emul+0x1e6>
   1394e:	01245783          	lhu	a5,18(s0)
   13952:	6721                	lui	a4,0x8
   13954:	177d                	addi	a4,a4,-1
   13956:	8fd9                	or	a5,a5,a4
   13958:	00f41923          	sh	a5,18(s0)
   1395c:	b781                	j	1389c <emul+0x13e>
   1395e:	01490713          	addi	a4,s2,20
   13962:	00095783          	lhu	a5,0(s2)
   13966:	0909                	addi	s2,s2,2
   13968:	0409                	addi	s0,s0,2
   1396a:	fef41f23          	sh	a5,-2(s0)
   1396e:	fee91ae3          	bne	s2,a4,13962 <emul+0x204>
   13972:	b72d                	j	1389c <emul+0x13e>
   13974:	01040713          	addi	a4,s0,16
   13978:	87a2                	mv	a5,s0
   1397a:	0789                	addi	a5,a5,2
   1397c:	fe079f23          	sh	zero,-2(a5)
   13980:	fee79de3          	bne	a5,a4,1397a <emul+0x21c>
   13984:	77f1                	lui	a5,0xffffc
   13986:	00f41823          	sh	a5,16(s0)
   1398a:	77e1                	lui	a5,0xffff8
   1398c:	fff7c793          	not	a5,a5
   13990:	00f41923          	sh	a5,18(s0)
   13994:	b721                	j	1389c <emul+0x13e>
   13996:	67a1                	lui	a5,0x8
   13998:	17fd                	addi	a5,a5,-1
   1399a:	e4f59de3          	bne	a1,a5,137f4 <emul+0x96>
   1399e:	01290693          	addi	a3,s2,18
   139a2:	bd79                	j	13840 <emul+0xe2>
   139a4:	874e                	mv	a4,s3
   139a6:	894e                	mv	s2,s3
   139a8:	105c                	addi	a5,sp,36
   139aa:	1834                	addi	a3,sp,56
   139ac:	ef11                	bnez	a4,139c8 <emul+0x26a>
   139ae:	10d78663          	beq	a5,a3,13aba <emul+0x35c>
   139b2:	0007d703          	lhu	a4,0(a5) # 8000 <register_fini-0x80b0>
   139b6:	0789                	addi	a5,a5,2
   139b8:	db7d                	beqz	a4,139ae <emul+0x250>
   139ba:	1008                	addi	a0,sp,32
   139bc:	8bcff0ef          	jal	ra,12a78 <enormlz>
   139c0:	02215703          	lhu	a4,34(sp)
   139c4:	40a98933          	sub	s2,s3,a0
   139c8:	02015783          	lhu	a5,32(sp)
   139cc:	038a0993          	addi	s3,s4,56
   139d0:	02ea1b23          	sh	a4,54(s4)
   139d4:	02fa1a23          	sh	a5,52(s4)
   139d8:	04ea0713          	addi	a4,s4,78
   139dc:	87ce                	mv	a5,s3
   139de:	00079023          	sh	zero,0(a5)
   139e2:	0789                	addi	a5,a5,2
   139e4:	fee79de3          	bne	a5,a4,139de <emul+0x280>
   139e8:	04ca0c13          	addi	s8,s4,76
   139ec:	4b81                	li	s7,0
   139ee:	01810a93          	addi	s5,sp,24
   139f2:	00410c93          	addi	s9,sp,4
   139f6:	04210b13          	addi	s6,sp,66
   139fa:	000ad503          	lhu	a0,0(s5)
   139fe:	1af9                	addi	s5,s5,-2
   13a00:	e935                	bnez	a0,13a74 <emul+0x316>
   13a02:	04ca5783          	lhu	a5,76(s4)
   13a06:	8762                	mv	a4,s8
   13a08:	00fbebb3          	or	s7,s7,a5
   13a0c:	ffe75603          	lhu	a2,-2(a4) # 7ffe <register_fini-0x80b2>
   13a10:	1779                	addi	a4,a4,-2
   13a12:	00c71123          	sh	a2,2(a4)
   13a16:	fee99be3          	bne	s3,a4,13a0c <emul+0x2ae>
   13a1a:	020a1c23          	sh	zero,56(s4)
   13a1e:	fd9a9ee3          	bne	s5,s9,139fa <emul+0x29c>
   13a22:	034a0713          	addi	a4,s4,52
   13a26:	101c                	addi	a5,sp,32
   13a28:	03a10613          	addi	a2,sp,58
   13a2c:	00075683          	lhu	a3,0(a4)
   13a30:	0789                	addi	a5,a5,2
   13a32:	0709                	addi	a4,a4,2
   13a34:	fed79f23          	sh	a3,-2(a5)
   13a38:	fec79ae3          	bne	a5,a2,13a2c <emul+0x2ce>
   13a3c:	76f1                	lui	a3,0xffffc
   13a3e:	94ca                	add	s1,s1,s2
   13a40:	0689                	addi	a3,a3,2
   13a42:	85de                	mv	a1,s7
   13a44:	1008                	addi	a0,sp,32
   13a46:	87d2                	mv	a5,s4
   13a48:	04000713          	li	a4,64
   13a4c:	96a6                	add	a3,a3,s1
   13a4e:	4601                	li	a2,0
   13a50:	bfeff0ef          	jal	ra,12e4e <emdnorm>
   13a54:	02015703          	lhu	a4,32(sp)
   13a58:	00015783          	lhu	a5,0(sp)
   13a5c:	85a2                	mv	a1,s0
   13a5e:	1008                	addi	a0,sp,32
   13a60:	8f99                	sub	a5,a5,a4
   13a62:	00f037b3          	snez	a5,a5
   13a66:	40f007bb          	negw	a5,a5
   13a6a:	02f11023          	sh	a5,32(sp)
   13a6e:	f7ffe0ef          	jal	ra,129ec <emovo.constprop.0>
   13a72:	b52d                	j	1389c <emul+0x13e>
   13a74:	0090                	addi	a2,sp,64
   13a76:	100c                	addi	a1,sp,32
   13a78:	f0dfe0ef          	jal	ra,12984 <m16m>
   13a7c:	8562                	mv	a0,s8
   13a7e:	4581                	li	a1,0
   13a80:	08b0                	addi	a2,sp,88
   13a82:	00055783          	lhu	a5,0(a0)
   13a86:	00065703          	lhu	a4,0(a2)
   13a8a:	1579                	addi	a0,a0,-2
   13a8c:	1679                	addi	a2,a2,-2
   13a8e:	973e                	add	a4,a4,a5
   13a90:	972e                	add	a4,a4,a1
   13a92:	01075593          	srli	a1,a4,0x10
   13a96:	00e51123          	sh	a4,2(a0)
   13a9a:	8985                	andi	a1,a1,1
   13a9c:	ff6613e3          	bne	a2,s6,13a82 <emul+0x324>
   13aa0:	b78d                	j	13a02 <emul+0x2a4>
   13aa2:	4781                	li	a5,0
   13aa4:	bd41                	j	13934 <emul+0x1d6>
   13aa6:	4701                	li	a4,0
   13aa8:	b3bd                	j	13816 <emul+0xb8>
   13aaa:	01440793          	addi	a5,s0,20
   13aae:	0409                	addi	s0,s0,2
   13ab0:	fe041f23          	sh	zero,-2(s0)
   13ab4:	fef41de3          	bne	s0,a5,13aae <emul+0x350>
   13ab8:	b3d5                	j	1389c <emul+0x13e>
   13aba:	01440793          	addi	a5,s0,20
   13abe:	0409                	addi	s0,s0,2
   13ac0:	fe041f23          	sh	zero,-2(s0)
   13ac4:	fef41de3          	bne	s0,a5,13abe <emul+0x360>
   13ac8:	bbd1                	j	1389c <emul+0x13e>
   13aca:	0124d503          	lhu	a0,18(s1)
   13ace:	67a1                	lui	a5,0x8
   13ad0:	17fd                	addi	a5,a5,-1
   13ad2:	00f575b3          	and	a1,a0,a5
   13ad6:	01248993          	addi	s3,s1,18
   13ada:	882e                	mv	a6,a1
   13adc:	e2f592e3          	bne	a1,a5,13900 <emul+0x1a2>
   13ae0:	bb11                	j	137f4 <emul+0x96>

0000000000013ae2 <_ldtoa_r>:
   13ae2:	d9010113          	addi	sp,sp,-624
   13ae6:	09100313          	li	t1,145
   13aea:	f4b2                	sd	a2,104(sp)
   13aec:	06053e03          	ld	t3,96(a0)
   13af0:	02031613          	slli	a2,t1,0x20
   13af4:	167d                	addi	a2,a2,-1
   13af6:	f43e                	sd	a5,40(sp)
   13af8:	09000793          	li	a5,144
   13afc:	26813023          	sd	s0,608(sp)
   13b00:	25313423          	sd	s3,584(sp)
   13b04:	26113423          	sd	ra,616(sp)
   13b08:	24913c23          	sd	s1,600(sp)
   13b0c:	25213823          	sd	s2,592(sp)
   13b10:	25413023          	sd	s4,576(sp)
   13b14:	23513c23          	sd	s5,568(sp)
   13b18:	23613823          	sd	s6,560(sp)
   13b1c:	23713423          	sd	s7,552(sp)
   13b20:	23813023          	sd	s8,544(sp)
   13b24:	21913c23          	sd	s9,536(sp)
   13b28:	21a13823          	sd	s10,528(sp)
   13b2c:	21b13423          	sd	s11,520(sp)
   13b30:	f0ae                	sd	a1,96(sp)
   13b32:	fb32                	sd	a2,432(sp)
   13b34:	e436                	sd	a3,8(sp)
   13b36:	ec3a                	sd	a4,24(sp)
   13b38:	f846                	sd	a7,48(sp)
   13b3a:	f03e                	sd	a5,32(sp)
   13b3c:	89aa                	mv	s3,a0
   13b3e:	8442                	mv	s0,a6
   13b40:	020e0263          	beqz	t3,13b64 <_ldtoa_r+0x82>
   13b44:	5538                	lw	a4,104(a0)
   13b46:	4785                	li	a5,1
   13b48:	85f2                	mv	a1,t3
   13b4a:	00e797bb          	sllw	a5,a5,a4
   13b4e:	00fe2623          	sw	a5,12(t3) # 1000c <register_fini-0xa4>
   13b52:	00ee2423          	sw	a4,8(t3)
   13b56:	66a010ef          	jal	ra,151c0 <_Bfree>
   13b5a:	1b412783          	lw	a5,436(sp)
   13b5e:	0609b023          	sd	zero,96(s3)
   13b62:	f03e                	sd	a5,32(sp)
   13b64:	090c                	addi	a1,sp,144
   13b66:	1088                	addi	a0,sp,96
   13b68:	edeff0ef          	jal	ra,13246 <e113toe.isra.0>
   13b6c:	0a215683          	lhu	a3,162(sp)
   13b70:	67a1                	lui	a5,0x8
   13b72:	17fd                	addi	a5,a5,-1
   13b74:	00f6f5b3          	and	a1,a3,a5
   13b78:	00f59c63          	bne	a1,a5,13b90 <_ldtoa_r+0xae>
   13b7c:	091c                	addi	a5,sp,144
   13b7e:	0a210613          	addi	a2,sp,162
   13b82:	0007d703          	lhu	a4,0(a5) # 8000 <register_fini-0x80b0>
   13b86:	0789                	addi	a5,a5,2
   13b88:	0c0715e3          	bnez	a4,14452 <_ldtoa_r+0x970>
   13b8c:	fec79be3          	bne	a5,a2,13b82 <_ldtoa_r+0xa0>
   13b90:	82bd                	srli	a3,a3,0xf
   13b92:	6722                	ld	a4,8(sp)
   13b94:	c014                	sw	a3,0(s0)
   13b96:	478d                	li	a5,3
   13b98:	66f70c63          	beq	a4,a5,14210 <_ldtoa_r+0x72e>
   13b9c:	47d1                	li	a5,20
   13b9e:	e83e                	sd	a5,16(sp)
   13ba0:	0a071ce3          	bnez	a4,14458 <_ldtoa_r+0x976>
   13ba4:	67a1                	lui	a5,0x8
   13ba6:	17fd                	addi	a5,a5,-1
   13ba8:	00f59c63          	bne	a1,a5,13bc0 <_ldtoa_r+0xde>
   13bac:	091c                	addi	a5,sp,144
   13bae:	0a210693          	addi	a3,sp,162
   13bb2:	0007d703          	lhu	a4,0(a5) # 8000 <register_fini-0x80b0>
   13bb6:	0789                	addi	a5,a5,2
   13bb8:	6a071d63          	bnez	a4,14272 <_ldtoa_r+0x790>
   13bbc:	fed79be3          	bne	a5,a3,13bb2 <_ldtoa_r+0xd0>
   13bc0:	09000793          	li	a5,144
   13bc4:	1af12a23          	sw	a5,436(sp)
   13bc8:	1918                	addi	a4,sp,176
   13bca:	091c                	addi	a5,sp,144
   13bcc:	1150                	addi	a2,sp,164
   13bce:	0007d683          	lhu	a3,0(a5)
   13bd2:	0789                	addi	a5,a5,2
   13bd4:	0709                	addi	a4,a4,2
   13bd6:	fed71f23          	sh	a3,-2(a4)
   13bda:	fec79ae3          	bne	a5,a2,13bce <_ldtoa_r+0xec>
   13bde:	0c215603          	lhu	a2,194(sp)
   13be2:	4c01                	li	s8,0
   13be4:	00f65793          	srli	a5,a2,0xf
   13be8:	3e079d63          	bnez	a5,13fe2 <_ldtoa_r+0x500>
   13bec:	6af1                	lui	s5,0x1c
   13bee:	5d8a8b93          	addi	s7,s5,1496 # 1c5d8 <ezero>
   13bf2:	018b8b13          	addi	s6,s7,24
   13bf6:	4681                	li	a3,0
   13bf8:	099c                	addi	a5,sp,208
   13bfa:	875a                	mv	a4,s6
   13bfc:	0e410d93          	addi	s11,sp,228
   13c00:	a019                	j	13c06 <_ldtoa_r+0x124>
   13c02:	00075683          	lhu	a3,0(a4)
   13c06:	0789                	addi	a5,a5,2
   13c08:	fed79f23          	sh	a3,-2(a5)
   13c0c:	0709                	addi	a4,a4,2
   13c0e:	ffb79ae3          	bne	a5,s11,13c02 <_ldtoa_r+0x120>
   13c12:	0e060963          	beqz	a2,13d04 <_ldtoa_r+0x222>
   13c16:	67a1                	lui	a5,0x8
   13c18:	17fd                	addi	a5,a5,-1
   13c1a:	18f609e3          	beq	a2,a5,145ac <_ldtoa_r+0xaca>
   13c1e:	0c011783          	lh	a5,192(sp)
   13c22:	1e07d7e3          	bgez	a5,14610 <_ldtoa_r+0xb2e>
   13c26:	190c                	addi	a1,sp,176
   13c28:	855a                	mv	a0,s6
   13c2a:	940ff0ef          	jal	ra,12d6a <ecmp>
   13c2e:	0e050563          	beqz	a0,13d18 <_ldtoa_r+0x236>
   13c32:	64054c63          	bltz	a0,1428a <_ldtoa_r+0x7a8>
   13c36:	0c215783          	lhu	a5,194(sp)
   13c3a:	240798e3          	bnez	a5,1468a <_ldtoa_r+0xba8>
   13c3e:	0c011783          	lh	a5,192(sp)
   13c42:	4481                	li	s1,0
   13c44:	1b010913          	addi	s2,sp,432
   13c48:	0007cf63          	bltz	a5,13c66 <_ldtoa_r+0x184>
   13c4c:	120b8413          	addi	s0,s7,288
   13c50:	1910                	addi	a2,sp,176
   13c52:	86ca                	mv	a3,s2
   13c54:	85b2                	mv	a1,a2
   13c56:	8522                	mv	a0,s0
   13c58:	b07ff0ef          	jal	ra,1375e <emul>
   13c5c:	0c011783          	lh	a5,192(sp)
   13c60:	34fd                	addiw	s1,s1,-1
   13c62:	fe07d7e3          	bgez	a5,13c50 <_ldtoa_r+0x16e>
   13c66:	0a00                	addi	s0,sp,272
   13c68:	12810a13          	addi	s4,sp,296
   13c6c:	8722                	mv	a4,s0
   13c6e:	191c                	addi	a5,sp,176
   13c70:	01d0                	addi	a2,sp,196
   13c72:	0007d683          	lhu	a3,0(a5) # 8000 <register_fini-0x80b0>
   13c76:	0789                	addi	a5,a5,2
   13c78:	0709                	addi	a4,a4,2
   13c7a:	fed71f23          	sh	a3,-2(a4)
   13c7e:	fec79ae3          	bne	a5,a2,13c72 <_ldtoa_r+0x190>
   13c82:	4681                	li	a3,0
   13c84:	099c                	addi	a5,sp,208
   13c86:	875a                	mv	a4,s6
   13c88:	a019                	j	13c8e <_ldtoa_r+0x1ac>
   13c8a:	00075683          	lhu	a3,0(a4)
   13c8e:	0789                	addi	a5,a5,2
   13c90:	fed79f23          	sh	a3,-2(a5)
   13c94:	0709                	addi	a4,a4,2
   13c96:	ffb79ae3          	bne	a5,s11,13c8a <_ldtoa_r+0x1a8>
   13c9a:	030b8d93          	addi	s11,s7,48
   13c9e:	138b8c93          	addi	s9,s7,312
   13ca2:	7d7d                	lui	s10,0xfffff
   13ca4:	228b8b93          	addi	s7,s7,552
   13ca8:	a019                	j	13cae <_ldtoa_r+0x1cc>
   13caa:	0cd1                	addi	s9,s9,20
   13cac:	0dd1                	addi	s11,s11,20
   13cae:	85a2                	mv	a1,s0
   13cb0:	855a                	mv	a0,s6
   13cb2:	8b8ff0ef          	jal	ra,12d6a <ecmp>
   13cb6:	02a05e63          	blez	a0,13cf2 <_ldtoa_r+0x210>
   13cba:	85a2                	mv	a1,s0
   13cbc:	8566                	mv	a0,s9
   13cbe:	8acff0ef          	jal	ra,12d6a <ecmp>
   13cc2:	02054063          	bltz	a0,13ce2 <_ldtoa_r+0x200>
   13cc6:	86ca                	mv	a3,s2
   13cc8:	8622                	mv	a2,s0
   13cca:	85a2                	mv	a1,s0
   13ccc:	856e                	mv	a0,s11
   13cce:	a91ff0ef          	jal	ra,1375e <emul>
   13cd2:	0990                	addi	a2,sp,208
   13cd4:	86ca                	mv	a3,s2
   13cd6:	85b2                	mv	a1,a2
   13cd8:	856e                	mv	a0,s11
   13cda:	a85ff0ef          	jal	ra,1375e <emul>
   13cde:	009d04bb          	addw	s1,s10,s1
   13ce2:	01fd579b          	srliw	a5,s10,0x1f
   13ce6:	01a787bb          	addw	a5,a5,s10
   13cea:	4017dd1b          	sraiw	s10,a5,0x1
   13cee:	fb7c9ee3          	bne	s9,s7,13caa <_ldtoa_r+0x1c8>
   13cf2:	0990                	addi	a2,sp,208
   13cf4:	86ca                	mv	a3,s2
   13cf6:	85da                	mv	a1,s6
   13cf8:	8532                	mv	a0,a2
   13cfa:	e48ff0ef          	jal	ra,13342 <ediv>
   13cfe:	17010c93          	addi	s9,sp,368
   13d02:	a01d                	j	13d28 <_ldtoa_r+0x246>
   13d04:	191c                	addi	a5,sp,176
   13d06:	0c210693          	addi	a3,sp,194
   13d0a:	0007d703          	lhu	a4,0(a5)
   13d0e:	f0071ce3          	bnez	a4,13c26 <_ldtoa_r+0x144>
   13d12:	0789                	addi	a5,a5,2
   13d14:	fed79be3          	bne	a5,a3,13d0a <_ldtoa_r+0x228>
   13d18:	4481                	li	s1,0
   13d1a:	17010c93          	addi	s9,sp,368
   13d1e:	1b010913          	addi	s2,sp,432
   13d22:	0a00                	addi	s0,sp,272
   13d24:	12810a13          	addi	s4,sp,296
   13d28:	85a2                	mv	a1,s0
   13d2a:	0988                	addi	a0,sp,208
   13d2c:	fa9fe0ef          	jal	ra,12cd4 <emovi>
   13d30:	0998                	addi	a4,sp,208
   13d32:	87a2                	mv	a5,s0
   13d34:	0007d683          	lhu	a3,0(a5)
   13d38:	0789                	addi	a5,a5,2
   13d3a:	0709                	addi	a4,a4,2
   13d3c:	fed71f23          	sh	a3,-2(a4)
   13d40:	ff479ae3          	bne	a5,s4,13d34 <_ldtoa_r+0x252>
   13d44:	85a2                	mv	a1,s0
   13d46:	1908                	addi	a0,sp,176
   13d48:	0e011423          	sh	zero,232(sp)
   13d4c:	f89fe0ef          	jal	ra,12cd4 <emovi>
   13d50:	191c                	addi	a5,sp,176
   13d52:	00045703          	lhu	a4,0(s0)
   13d56:	0409                	addi	s0,s0,2
   13d58:	0789                	addi	a5,a5,2
   13d5a:	fee79f23          	sh	a4,-2(a5)
   13d5e:	ff441ae3          	bne	s0,s4,13d52 <_ldtoa_r+0x270>
   13d62:	864a                	mv	a2,s2
   13d64:	190c                	addi	a1,sp,176
   13d66:	0988                	addi	a0,sp,208
   13d68:	0c011423          	sh	zero,200(sp)
   13d6c:	be8ff0ef          	jal	ra,13154 <eiremain>
   13d70:	1fc15b03          	lhu	s6,508(sp)
   13d74:	100b1863          	bnez	s6,13e84 <_ldtoa_r+0x3a2>
   13d78:	0c810b93          	addi	s7,sp,200
   13d7c:	0b210d13          	addi	s10,sp,178
   13d80:	0f210413          	addi	s0,sp,242
   13d84:	5d8a8593          	addi	a1,s5,1496
   13d88:	1908                	addi	a0,sp,176
   13d8a:	fe1fe0ef          	jal	ra,12d6a <ecmp>
   13d8e:	c97d                	beqz	a0,13e84 <_ldtoa_r+0x3a2>
   13d90:	4701                	li	a4,0
   13d92:	86de                	mv	a3,s7
   13d94:	0006d783          	lhu	a5,0(a3) # ffffffffffffc000 <__BSS_END__+0xfffffffffffdcc80>
   13d98:	00f7d613          	srli	a2,a5,0xf
   13d9c:	c219                	beqz	a2,13da2 <_ldtoa_r+0x2c0>
   13d9e:	00176713          	ori	a4,a4,1
   13da2:	0017979b          	slliw	a5,a5,0x1
   13da6:	17c2                	slli	a5,a5,0x30
   13da8:	00277613          	andi	a2,a4,2
   13dac:	93c1                	srli	a5,a5,0x30
   13dae:	c219                	beqz	a2,13db4 <_ldtoa_r+0x2d2>
   13db0:	0017e793          	ori	a5,a5,1
   13db4:	0017171b          	slliw	a4,a4,0x1
   13db8:	00f69023          	sh	a5,0(a3)
   13dbc:	1742                	slli	a4,a4,0x30
   13dbe:	16f9                	addi	a3,a3,-2
   13dc0:	9341                	srli	a4,a4,0x30
   13dc2:	fda699e3          	bne	a3,s10,13d94 <_ldtoa_r+0x2b2>
   13dc6:	1998                	addi	a4,sp,240
   13dc8:	191c                	addi	a5,sp,176
   13dca:	0007d683          	lhu	a3,0(a5)
   13dce:	0789                	addi	a5,a5,2
   13dd0:	0709                	addi	a4,a4,2
   13dd2:	fed71f23          	sh	a3,-2(a4)
   13dd6:	ff779ae3          	bne	a5,s7,13dca <_ldtoa_r+0x2e8>
   13dda:	10011423          	sh	zero,264(sp)
   13dde:	4701                	li	a4,0
   13de0:	0234                	addi	a3,sp,264
   13de2:	0006d783          	lhu	a5,0(a3)
   13de6:	00f7d613          	srli	a2,a5,0xf
   13dea:	c219                	beqz	a2,13df0 <_ldtoa_r+0x30e>
   13dec:	00176713          	ori	a4,a4,1
   13df0:	0017979b          	slliw	a5,a5,0x1
   13df4:	17c2                	slli	a5,a5,0x30
   13df6:	00277613          	andi	a2,a4,2
   13dfa:	93c1                	srli	a5,a5,0x30
   13dfc:	c219                	beqz	a2,13e02 <_ldtoa_r+0x320>
   13dfe:	0017e793          	ori	a5,a5,1
   13e02:	0017171b          	slliw	a4,a4,0x1
   13e06:	00f69023          	sh	a5,0(a3)
   13e0a:	1742                	slli	a4,a4,0x30
   13e0c:	16f9                	addi	a3,a3,-2
   13e0e:	9341                	srli	a4,a4,0x30
   13e10:	fc8699e3          	bne	a3,s0,13de2 <_ldtoa_r+0x300>
   13e14:	4701                	li	a4,0
   13e16:	0234                	addi	a3,sp,264
   13e18:	0006d783          	lhu	a5,0(a3)
   13e1c:	00f7d613          	srli	a2,a5,0xf
   13e20:	c219                	beqz	a2,13e26 <_ldtoa_r+0x344>
   13e22:	00176713          	ori	a4,a4,1
   13e26:	0017979b          	slliw	a5,a5,0x1
   13e2a:	17c2                	slli	a5,a5,0x30
   13e2c:	00277613          	andi	a2,a4,2
   13e30:	93c1                	srli	a5,a5,0x30
   13e32:	c219                	beqz	a2,13e38 <_ldtoa_r+0x356>
   13e34:	0017e793          	ori	a5,a5,1
   13e38:	0017171b          	slliw	a4,a4,0x1
   13e3c:	00f69023          	sh	a5,0(a3)
   13e40:	1742                	slli	a4,a4,0x30
   13e42:	16f9                	addi	a3,a3,-2
   13e44:	9341                	srli	a4,a4,0x30
   13e46:	fc8699e3          	bne	a3,s0,13e18 <_ldtoa_r+0x336>
   13e4a:	4601                	li	a2,0
   13e4c:	86de                	mv	a3,s7
   13e4e:	0238                	addi	a4,sp,264
   13e50:	0006d583          	lhu	a1,0(a3)
   13e54:	00075783          	lhu	a5,0(a4)
   13e58:	16f9                	addi	a3,a3,-2
   13e5a:	1779                	addi	a4,a4,-2
   13e5c:	97ae                	add	a5,a5,a1
   13e5e:	97b2                	add	a5,a5,a2
   13e60:	0107d613          	srli	a2,a5,0x10
   13e64:	00f69123          	sh	a5,2(a3)
   13e68:	8a05                	andi	a2,a2,1
   13e6a:	fe8713e3          	bne	a4,s0,13e50 <_ldtoa_r+0x36e>
   13e6e:	864a                	mv	a2,s2
   13e70:	190c                	addi	a1,sp,176
   13e72:	0988                	addi	a0,sp,208
   13e74:	ae0ff0ef          	jal	ra,13154 <eiremain>
   13e78:	1fc15783          	lhu	a5,508(sp)
   13e7c:	34fd                	addiw	s1,s1,-1
   13e7e:	f00783e3          	beqz	a5,13d84 <_ldtoa_r+0x2a2>
   13e82:	8b3e                	mv	s6,a5
   13e84:	02d00793          	li	a5,45
   13e88:	000c1463          	bnez	s8,13e90 <_ldtoa_r+0x3ae>
   13e8c:	02000793          	li	a5,32
   13e90:	66a2                	ld	a3,8(sp)
   13e92:	16f10823          	sb	a5,368(sp)
   13e96:	470d                	li	a4,3
   13e98:	67c2                	ld	a5,16(sp)
   13e9a:	00e69363          	bne	a3,a4,13ea0 <_ldtoa_r+0x3be>
   13e9e:	9fa5                	addw	a5,a5,s1
   13ea0:	02a00713          	li	a4,42
   13ea4:	0007841b          	sext.w	s0,a5
   13ea8:	00f75463          	bge	a4,a5,13eb0 <_ldtoa_r+0x3ce>
   13eac:	02a00413          	li	s0,42
   13eb0:	4729                	li	a4,10
   13eb2:	38eb0d63          	beq	s6,a4,1424c <_ldtoa_r+0x76a>
   13eb6:	030b0b1b          	addiw	s6,s6,48
   13eba:	02e00713          	li	a4,46
   13ebe:	176108a3          	sb	s6,369(sp)
   13ec2:	16e10923          	sb	a4,370(sp)
   13ec6:	1207c663          	bltz	a5,13ff2 <_ldtoa_r+0x510>
   13eca:	17310c13          	addi	s8,sp,371
   13ece:	4a01                	li	s4,0
   13ed0:	0f010d13          	addi	s10,sp,240
   13ed4:	0c810b93          	addi	s7,sp,200
   13ed8:	0b210d93          	addi	s11,sp,178
   13edc:	0f210b13          	addi	s6,sp,242
   13ee0:	4601                	li	a2,0
   13ee2:	85de                	mv	a1,s7
   13ee4:	0005d783          	lhu	a5,0(a1)
   13ee8:	00f7d513          	srli	a0,a5,0xf
   13eec:	c119                	beqz	a0,13ef2 <_ldtoa_r+0x410>
   13eee:	00166613          	ori	a2,a2,1
   13ef2:	0017979b          	slliw	a5,a5,0x1
   13ef6:	17c2                	slli	a5,a5,0x30
   13ef8:	00267513          	andi	a0,a2,2
   13efc:	93c1                	srli	a5,a5,0x30
   13efe:	c119                	beqz	a0,13f04 <_ldtoa_r+0x422>
   13f00:	0017e793          	ori	a5,a5,1
   13f04:	0016161b          	slliw	a2,a2,0x1
   13f08:	00f59023          	sh	a5,0(a1)
   13f0c:	1642                	slli	a2,a2,0x30
   13f0e:	15f9                	addi	a1,a1,-2
   13f10:	9241                	srli	a2,a2,0x30
   13f12:	fdb599e3          	bne	a1,s11,13ee4 <_ldtoa_r+0x402>
   13f16:	866a                	mv	a2,s10
   13f18:	191c                	addi	a5,sp,176
   13f1a:	0007d583          	lhu	a1,0(a5)
   13f1e:	0789                	addi	a5,a5,2
   13f20:	0609                	addi	a2,a2,2
   13f22:	feb61f23          	sh	a1,-2(a2)
   13f26:	ff779ae3          	bne	a5,s7,13f1a <_ldtoa_r+0x438>
   13f2a:	10011423          	sh	zero,264(sp)
   13f2e:	4601                	li	a2,0
   13f30:	022c                	addi	a1,sp,264
   13f32:	0005d783          	lhu	a5,0(a1)
   13f36:	00f7d513          	srli	a0,a5,0xf
   13f3a:	c119                	beqz	a0,13f40 <_ldtoa_r+0x45e>
   13f3c:	00166613          	ori	a2,a2,1
   13f40:	0017979b          	slliw	a5,a5,0x1
   13f44:	17c2                	slli	a5,a5,0x30
   13f46:	00267513          	andi	a0,a2,2
   13f4a:	93c1                	srli	a5,a5,0x30
   13f4c:	c119                	beqz	a0,13f52 <_ldtoa_r+0x470>
   13f4e:	0017e793          	ori	a5,a5,1
   13f52:	0016161b          	slliw	a2,a2,0x1
   13f56:	00f59023          	sh	a5,0(a1)
   13f5a:	1642                	slli	a2,a2,0x30
   13f5c:	15f9                	addi	a1,a1,-2
   13f5e:	9241                	srli	a2,a2,0x30
   13f60:	fd6599e3          	bne	a1,s6,13f32 <_ldtoa_r+0x450>
   13f64:	4601                	li	a2,0
   13f66:	022c                	addi	a1,sp,264
   13f68:	0005d783          	lhu	a5,0(a1)
   13f6c:	00f7d513          	srli	a0,a5,0xf
   13f70:	c119                	beqz	a0,13f76 <_ldtoa_r+0x494>
   13f72:	00166613          	ori	a2,a2,1
   13f76:	0017979b          	slliw	a5,a5,0x1
   13f7a:	17c2                	slli	a5,a5,0x30
   13f7c:	00267513          	andi	a0,a2,2
   13f80:	93c1                	srli	a5,a5,0x30
   13f82:	c119                	beqz	a0,13f88 <_ldtoa_r+0x4a6>
   13f84:	0017e793          	ori	a5,a5,1
   13f88:	0016161b          	slliw	a2,a2,0x1
   13f8c:	00f59023          	sh	a5,0(a1)
   13f90:	1642                	slli	a2,a2,0x30
   13f92:	15f9                	addi	a1,a1,-2
   13f94:	9241                	srli	a2,a2,0x30
   13f96:	fd6599e3          	bne	a1,s6,13f68 <_ldtoa_r+0x486>
   13f9a:	4501                	li	a0,0
   13f9c:	85de                	mv	a1,s7
   13f9e:	0230                	addi	a2,sp,264
   13fa0:	0005d803          	lhu	a6,0(a1)
   13fa4:	00065783          	lhu	a5,0(a2)
   13fa8:	15f9                	addi	a1,a1,-2
   13faa:	1679                	addi	a2,a2,-2
   13fac:	97c2                	add	a5,a5,a6
   13fae:	97aa                	add	a5,a5,a0
   13fb0:	0107d513          	srli	a0,a5,0x10
   13fb4:	00f59123          	sh	a5,2(a1)
   13fb8:	8905                	andi	a0,a0,1
   13fba:	ff6613e3          	bne	a2,s6,13fa0 <_ldtoa_r+0x4be>
   13fbe:	864a                	mv	a2,s2
   13fc0:	190c                	addi	a1,sp,176
   13fc2:	0988                	addi	a0,sp,208
   13fc4:	990ff0ef          	jal	ra,13154 <eiremain>
   13fc8:	1fc15603          	lhu	a2,508(sp)
   13fcc:	001c0793          	addi	a5,s8,1
   13fd0:	2a05                	addiw	s4,s4,1
   13fd2:	0306059b          	addiw	a1,a2,48
   13fd6:	feb78fa3          	sb	a1,-1(a5)
   13fda:	03444263          	blt	s0,s4,13ffe <_ldtoa_r+0x51c>
   13fde:	8c3e                	mv	s8,a5
   13fe0:	b701                	j	13ee0 <_ldtoa_r+0x3fe>
   13fe2:	1646                	slli	a2,a2,0x31
   13fe4:	9245                	srli	a2,a2,0x31
   13fe6:	67c1                	lui	a5,0x10
   13fe8:	0cc11123          	sh	a2,194(sp)
   13fec:	fff78c13          	addi	s8,a5,-1 # ffff <register_fini-0xb1>
   13ff0:	bef5                	j	13bec <_ldtoa_r+0x10a>
   13ff2:	1fc15603          	lhu	a2,508(sp)
   13ff6:	17210c13          	addi	s8,sp,370
   13ffa:	17310793          	addi	a5,sp,371
   13ffe:	4711                	li	a4,4
   14000:	04c75663          	bge	a4,a2,1404c <_ldtoa_r+0x56a>
   14004:	4715                	li	a4,5
   14006:	62e60163          	beq	a2,a4,14628 <_ldtoa_r+0xb46>
   1400a:	ffe7c703          	lbu	a4,-2(a5)
   1400e:	ffe78613          	addi	a2,a5,-2
   14012:	07f77593          	andi	a1,a4,127
   14016:	872e                	mv	a4,a1
   14018:	02044563          	bltz	s0,14042 <_ldtoa_r+0x560>
   1401c:	02e00513          	li	a0,46
   14020:	03800813          	li	a6,56
   14024:	03000893          	li	a7,48
   14028:	5aa58463          	beq	a1,a0,145d0 <_ldtoa_r+0xaee>
   1402c:	5ae85e63          	bge	a6,a4,145e8 <_ldtoa_r+0xb06>
   14030:	fff64783          	lbu	a5,-1(a2)
   14034:	01160023          	sb	a7,0(a2)
   14038:	167d                	addi	a2,a2,-1
   1403a:	07f7f593          	andi	a1,a5,127
   1403e:	872e                	mv	a4,a1
   14040:	b7e5                	j	14028 <_ldtoa_r+0x546>
   14042:	03100713          	li	a4,49
   14046:	fee78f23          	sb	a4,-2(a5)
   1404a:	2485                	addiw	s1,s1,1
   1404c:	65f1                	lui	a1,0x1c
   1404e:	8626                	mv	a2,s1
   14050:	54858593          	addi	a1,a1,1352 # 1c548 <zeroes.0+0x70>
   14054:	8562                	mv	a0,s8
   14056:	6a3010ef          	jal	ra,15ef8 <sprintf>
   1405a:	0a215783          	lhu	a5,162(sp)
   1405e:	7702                	ld	a4,32(sp)
   14060:	1c912023          	sw	s1,448(sp)
   14064:	fff7c793          	not	a5,a5
   14068:	1ae12a23          	sw	a4,436(sp)
   1406c:	03179713          	slli	a4,a5,0x31
   14070:	14070363          	beqz	a4,141b6 <_ldtoa_r+0x6d4>
   14074:	76a2                	ld	a3,40(sp)
   14076:	17014703          	lbu	a4,368(sp)
   1407a:	0014879b          	addiw	a5,s1,1
   1407e:	c29c                	sw	a5,0(a3)
   14080:	87e6                	mv	a5,s9
   14082:	c70d                	beqz	a4,140ac <_ldtoa_r+0x5ca>
   14084:	02e00693          	li	a3,46
   14088:	1ad70063          	beq	a4,a3,14228 <_ldtoa_r+0x746>
   1408c:	0017c703          	lbu	a4,1(a5)
   14090:	0785                	addi	a5,a5,1
   14092:	fb7d                	bnez	a4,14088 <_ldtoa_r+0x5a6>
   14094:	04500693          	li	a3,69
   14098:	00fce563          	bltu	s9,a5,140a2 <_ldtoa_r+0x5c0>
   1409c:	a801                	j	140ac <_ldtoa_r+0x5ca>
   1409e:	01978763          	beq	a5,s9,140ac <_ldtoa_r+0x5ca>
   140a2:	fff7c703          	lbu	a4,-1(a5)
   140a6:	17fd                	addi	a5,a5,-1
   140a8:	fed71be3          	bne	a4,a3,1409e <_ldtoa_r+0x5bc>
   140ac:	00078023          	sb	zero,0(a5)
   140b0:	87e6                	mv	a5,s9
   140b2:	02000693          	li	a3,32
   140b6:	02d00613          	li	a2,45
   140ba:	0007c703          	lbu	a4,0(a5)
   140be:	00d70463          	beq	a4,a3,140c6 <_ldtoa_r+0x5e4>
   140c2:	00c71463          	bne	a4,a2,140ca <_ldtoa_r+0x5e8>
   140c6:	0785                	addi	a5,a5,1
   140c8:	bfcd                	j	140ba <_ldtoa_r+0x5d8>
   140ca:	8466                	mv	s0,s9
   140cc:	a021                	j	140d4 <_ldtoa_r+0x5f2>
   140ce:	0007c703          	lbu	a4,0(a5)
   140d2:	8436                	mv	s0,a3
   140d4:	00e40023          	sb	a4,0(s0)
   140d8:	00140693          	addi	a3,s0,1
   140dc:	0785                	addi	a5,a5,1
   140de:	fb65                	bnez	a4,140ce <_ldtoa_r+0x5ec>
   140e0:	6722                	ld	a4,8(sp)
   140e2:	4789                	li	a5,2
   140e4:	fff44683          	lbu	a3,-1(s0)
   140e8:	0ef70763          	beq	a4,a5,141d6 <_ldtoa_r+0x6f4>
   140ec:	6742                	ld	a4,16(sp)
   140ee:	87ba                	mv	a5,a4
   140f0:	00975363          	bge	a4,s1,140f6 <_ldtoa_r+0x614>
   140f4:	87a6                	mv	a5,s1
   140f6:	03000613          	li	a2,48
   140fa:	0007871b          	sext.w	a4,a5
   140fe:	02c69463          	bne	a3,a2,14126 <_ldtoa_r+0x644>
   14102:	419407b3          	sub	a5,s0,s9
   14106:	02f75063          	bge	a4,a5,14126 <_ldtoa_r+0x644>
   1410a:	03000693          	li	a3,48
   1410e:	a029                	j	14118 <_ldtoa_r+0x636>
   14110:	419407b3          	sub	a5,s0,s9
   14114:	00f75963          	bge	a4,a5,14126 <_ldtoa_r+0x644>
   14118:	ffe44783          	lbu	a5,-2(s0)
   1411c:	fe040fa3          	sb	zero,-1(s0)
   14120:	147d                	addi	s0,s0,-1
   14122:	fed787e3          	beq	a5,a3,14110 <_ldtoa_r+0x62e>
   14126:	6722                	ld	a4,8(sp)
   14128:	478d                	li	a5,3
   1412a:	0cf70063          	beq	a4,a5,141ea <_ldtoa_r+0x708>
   1412e:	67e2                	ld	a5,24(sp)
   14130:	0609a423          	sw	zero,104(s3)
   14134:	0097861b          	addiw	a2,a5,9
   14138:	47fd                	li	a5,31
   1413a:	0cc7f963          	bgeu	a5,a2,1420c <_ldtoa_r+0x72a>
   1413e:	4705                	li	a4,1
   14140:	4791                	li	a5,4
   14142:	0017979b          	slliw	a5,a5,0x1
   14146:	01c78693          	addi	a3,a5,28
   1414a:	0007059b          	sext.w	a1,a4
   1414e:	2705                	addiw	a4,a4,1
   14150:	fed679e3          	bgeu	a2,a3,14142 <_ldtoa_r+0x660>
   14154:	06b9a423          	sw	a1,104(s3)
   14158:	854e                	mv	a0,s3
   1415a:	004010ef          	jal	ra,1515e <_Balloc>
   1415e:	84aa                	mv	s1,a0
   14160:	66050063          	beqz	a0,147c0 <_ldtoa_r+0xcde>
   14164:	06a9b023          	sd	a0,96(s3)
   14168:	85e6                	mv	a1,s9
   1416a:	6b3010ef          	jal	ra,1601c <strcpy>
   1416e:	7742                	ld	a4,48(sp)
   14170:	c709                	beqz	a4,1417a <_ldtoa_r+0x698>
   14172:	419407b3          	sub	a5,s0,s9
   14176:	97a6                	add	a5,a5,s1
   14178:	e31c                	sd	a5,0(a4)
   1417a:	26813083          	ld	ra,616(sp)
   1417e:	26013403          	ld	s0,608(sp)
   14182:	25013903          	ld	s2,592(sp)
   14186:	24813983          	ld	s3,584(sp)
   1418a:	24013a03          	ld	s4,576(sp)
   1418e:	23813a83          	ld	s5,568(sp)
   14192:	23013b03          	ld	s6,560(sp)
   14196:	22813b83          	ld	s7,552(sp)
   1419a:	22013c03          	ld	s8,544(sp)
   1419e:	21813c83          	ld	s9,536(sp)
   141a2:	21013d03          	ld	s10,528(sp)
   141a6:	20813d83          	ld	s11,520(sp)
   141aa:	8526                	mv	a0,s1
   141ac:	25813483          	ld	s1,600(sp)
   141b0:	27010113          	addi	sp,sp,624
   141b4:	8082                	ret
   141b6:	091c                	addi	a5,sp,144
   141b8:	0a210693          	addi	a3,sp,162
   141bc:	0007d703          	lhu	a4,0(a5)
   141c0:	0789                	addi	a5,a5,2
   141c2:	42071763          	bnez	a4,145f0 <_ldtoa_r+0xb0e>
   141c6:	fed79be3          	bne	a5,a3,141bc <_ldtoa_r+0x6da>
   141ca:	7722                	ld	a4,40(sp)
   141cc:	6789                	lui	a5,0x2
   141ce:	70f78793          	addi	a5,a5,1807 # 270f <register_fini-0xd9a1>
   141d2:	c31c                	sw	a5,0(a4)
   141d4:	bdf1                	j	140b0 <_ldtoa_r+0x5ce>
   141d6:	03000793          	li	a5,48
   141da:	f4f69ae3          	bne	a3,a5,1412e <_ldtoa_r+0x64c>
   141de:	419407b3          	sub	a5,s0,s9
   141e2:	4705                	li	a4,1
   141e4:	f2f743e3          	blt	a4,a5,1410a <_ldtoa_r+0x628>
   141e8:	b799                	j	1412e <_ldtoa_r+0x64c>
   141ea:	67c2                	ld	a5,16(sp)
   141ec:	9cbd                	addw	s1,s1,a5
   141ee:	3a04c063          	bltz	s1,1458e <_ldtoa_r+0xaac>
   141f2:	77a2                	ld	a5,40(sp)
   141f4:	6762                	ld	a4,24(sp)
   141f6:	439c                	lw	a5,0(a5)
   141f8:	9fb9                	addw	a5,a5,a4
   141fa:	ec3e                	sd	a5,24(sp)
   141fc:	67e2                	ld	a5,24(sp)
   141fe:	0609a423          	sw	zero,104(s3)
   14202:	0037861b          	addiw	a2,a5,3
   14206:	47fd                	li	a5,31
   14208:	f2c7ebe3          	bltu	a5,a2,1413e <_ldtoa_r+0x65c>
   1420c:	4581                	li	a1,0
   1420e:	b7a9                	j	14158 <_ldtoa_r+0x676>
   14210:	67e2                	ld	a5,24(sp)
   14212:	02a00713          	li	a4,42
   14216:	8c3e                	mv	s8,a5
   14218:	00f75463          	bge	a4,a5,14220 <_ldtoa_r+0x73e>
   1421c:	02a00c13          	li	s8,42
   14220:	000c079b          	sext.w	a5,s8
   14224:	e83e                	sd	a5,16(sp)
   14226:	babd                	j	13ba4 <_ldtoa_r+0xc2>
   14228:	0007c703          	lbu	a4,0(a5)
   1422c:	e60704e3          	beqz	a4,14094 <_ldtoa_r+0x5b2>
   14230:	0017c703          	lbu	a4,1(a5)
   14234:	0785                	addi	a5,a5,1
   14236:	fee78fa3          	sb	a4,-1(a5)
   1423a:	e4070de3          	beqz	a4,14094 <_ldtoa_r+0x5b2>
   1423e:	0017c703          	lbu	a4,1(a5)
   14242:	0785                	addi	a5,a5,1
   14244:	fee78fa3          	sb	a4,-1(a5)
   14248:	f765                	bnez	a4,14230 <_ldtoa_r+0x74e>
   1424a:	b5a9                	j	14094 <_ldtoa_r+0x5b2>
   1424c:	03100713          	li	a4,49
   14250:	16e108a3          	sb	a4,369(sp)
   14254:	02e00713          	li	a4,46
   14258:	16e10923          	sb	a4,370(sp)
   1425c:	2485                	addiw	s1,s1,1
   1425e:	1ef05563          	blez	a5,14448 <_ldtoa_r+0x966>
   14262:	03000793          	li	a5,48
   14266:	16f109a3          	sb	a5,371(sp)
   1426a:	347d                	addiw	s0,s0,-1
   1426c:	17410c13          	addi	s8,sp,372
   14270:	b9b9                	j	13ece <_ldtoa_r+0x3ec>
   14272:	17010c93          	addi	s9,sp,368
   14276:	65f1                	lui	a1,0x1c
   14278:	5d058593          	addi	a1,a1,1488 # 1c5d0 <zeroes.0+0xf8>
   1427c:	8566                	mv	a0,s9
   1427e:	6489                	lui	s1,0x2
   14280:	479010ef          	jal	ra,15ef8 <sprintf>
   14284:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   14288:	bbc9                	j	1405a <_ldtoa_r+0x578>
   1428a:	0f010d13          	addi	s10,sp,240
   1428e:	876a                	mv	a4,s10
   14290:	191c                	addi	a5,sp,176
   14292:	01d0                	addi	a2,sp,196
   14294:	0007d683          	lhu	a3,0(a5)
   14298:	0789                	addi	a5,a5,2
   1429a:	0709                	addi	a4,a4,2
   1429c:	fed71f23          	sh	a3,-2(a4)
   142a0:	fec79ae3          	bne	a5,a2,14294 <_ldtoa_r+0x7b2>
   142a4:	6791                	lui	a5,0x4
   142a6:	08e78793          	addi	a5,a5,142 # 408e <register_fini-0xc022>
   142aa:	10f11123          	sh	a5,258(sp)
   142ae:	47c1                	li	a5,16
   142b0:	fc3e                	sd	a5,56(sp)
   142b2:	67a1                	lui	a5,0x8
   142b4:	17fd                	addi	a5,a5,-1
   142b6:	e4be                	sd	a5,72(sp)
   142b8:	77f1                	lui	a5,0xffffc
   142ba:	2789                	addiw	a5,a5,2
   142bc:	4481                	li	s1,0
   142be:	0d0b8313          	addi	t1,s7,208
   142c2:	17010c93          	addi	s9,sp,368
   142c6:	1b010913          	addi	s2,sp,432
   142ca:	0a00                	addi	s0,sp,272
   142cc:	0e210a13          	addi	s4,sp,226
   142d0:	cabe                	sw	a5,84(sp)
   142d2:	851a                	mv	a0,t1
   142d4:	86ca                	mv	a3,s2
   142d6:	0990                	addi	a2,sp,208
   142d8:	85ea                	mv	a1,s10
   142da:	e09a                	sd	t1,64(sp)
   142dc:	866ff0ef          	jal	ra,13342 <ediv>
   142e0:	6306                	ld	t1,64(sp)
   142e2:	18b8                	addi	a4,sp,120
   142e4:	099c                	addi	a5,sp,208
   142e6:	0007d683          	lhu	a3,0(a5) # ffffffffffffc000 <__BSS_END__+0xfffffffffffdcc80>
   142ea:	0789                	addi	a5,a5,2
   142ec:	0709                	addi	a4,a4,2
   142ee:	fed71f23          	sh	a3,-2(a4)
   142f2:	ffb79ae3          	bne	a5,s11,142e6 <_ldtoa_r+0x804>
   142f6:	67a6                	ld	a5,72(sp)
   142f8:	08a15503          	lhu	a0,138(sp)
   142fc:	00f57e33          	and	t3,a0,a5
   14300:	47d6                	lw	a5,84(sp)
   14302:	00fe07bb          	addw	a5,t3,a5
   14306:	8e3e                	mv	t3,a5
   14308:	28f05a63          	blez	a5,1459c <_ldtoa_r+0xaba>
   1430c:	09000593          	li	a1,144
   14310:	9d9d                	subw	a1,a1,a5
   14312:	8722                	mv	a4,s0
   14314:	18bc                	addi	a5,sp,120
   14316:	0170                	addi	a2,sp,140
   14318:	0007d683          	lhu	a3,0(a5)
   1431c:	0789                	addi	a5,a5,2
   1431e:	0709                	addi	a4,a4,2
   14320:	fed71f23          	sh	a3,-2(a4)
   14324:	fec79ae3          	bne	a5,a2,14318 <_ldtoa_r+0x836>
   14328:	04b05963          	blez	a1,1437a <_ldtoa_r+0x898>
   1432c:	47bd                	li	a5,15
   1432e:	8722                	mv	a4,s0
   14330:	02b7d963          	bge	a5,a1,14362 <_ldtoa_r+0x880>
   14334:	08000693          	li	a3,128
   14338:	41c686bb          	subw	a3,a3,t3
   1433c:	0046d69b          	srliw	a3,a3,0x4
   14340:	0016871b          	addiw	a4,a3,1
   14344:	0706                	slli	a4,a4,0x1
   14346:	9722                	add	a4,a4,s0
   14348:	87a2                	mv	a5,s0
   1434a:	0789                	addi	a5,a5,2
   1434c:	fe079f23          	sh	zero,-2(a5)
   14350:	fee79de3          	bne	a5,a4,1434a <_ldtoa_r+0x868>
   14354:	08000593          	li	a1,128
   14358:	41c585bb          	subw	a1,a1,t3
   1435c:	0046969b          	slliw	a3,a3,0x4
   14360:	9d95                	subw	a1,a1,a3
   14362:	00159793          	slli	a5,a1,0x1
   14366:	97de                	add	a5,a5,s7
   14368:	00075683          	lhu	a3,0(a4)
   1436c:	2407d783          	lhu	a5,576(a5)
   14370:	8ff5                	and	a5,a5,a3
   14372:	00f71023          	sh	a5,0(a4)
   14376:	813d                	srli	a0,a0,0xf
   14378:	e17d                	bnez	a0,1445e <_ldtoa_r+0x97c>
   1437a:	099c                	addi	a5,sp,208
   1437c:	8722                	mv	a4,s0
   1437e:	0007d603          	lhu	a2,0(a5)
   14382:	00075683          	lhu	a3,0(a4)
   14386:	02d61263          	bne	a2,a3,143aa <_ldtoa_r+0x8c8>
   1438a:	0789                	addi	a5,a5,2
   1438c:	0709                	addi	a4,a4,2
   1438e:	fefa18e3          	bne	s4,a5,1437e <_ldtoa_r+0x89c>
   14392:	876a                	mv	a4,s10
   14394:	099c                	addi	a5,sp,208
   14396:	0007d683          	lhu	a3,0(a5)
   1439a:	0789                	addi	a5,a5,2
   1439c:	0709                	addi	a4,a4,2
   1439e:	fed71f23          	sh	a3,-2(a4)
   143a2:	ffb79ae3          	bne	a5,s11,14396 <_ldtoa_r+0x8b4>
   143a6:	77e2                	ld	a5,56(sp)
   143a8:	9cbd                	addw	s1,s1,a5
   143aa:	7762                	ld	a4,56(sp)
   143ac:	0351                	addi	t1,t1,20
   143ae:	134b8793          	addi	a5,s7,308
   143b2:	8305                	srli	a4,a4,0x1
   143b4:	fc3a                	sd	a4,56(sp)
   143b6:	f0f31ee3          	bne	t1,a5,142d2 <_ldtoa_r+0x7f0>
   143ba:	10215783          	lhu	a5,258(sp)
   143be:	0c215703          	lhu	a4,194(sp)
   143c2:	0250                	addi	a2,sp,260
   143c4:	9fb9                	addw	a5,a5,a4
   143c6:	7771                	lui	a4,0xffffc
   143c8:	f727071b          	addiw	a4,a4,-142
   143cc:	9fb9                	addw	a5,a5,a4
   143ce:	10f11123          	sh	a5,258(sp)
   143d2:	1918                	addi	a4,sp,176
   143d4:	87ea                	mv	a5,s10
   143d6:	0007d683          	lhu	a3,0(a5)
   143da:	0789                	addi	a5,a5,2
   143dc:	0709                	addi	a4,a4,2
   143de:	fed71f23          	sh	a3,-2(a4) # ffffffffffffbffe <__BSS_END__+0xfffffffffffdcc7e>
   143e2:	fec79ae3          	bne	a5,a2,143d6 <_ldtoa_r+0x8f4>
   143e6:	4701                	li	a4,0
   143e8:	099c                	addi	a5,sp,208
   143ea:	a019                	j	143f0 <_ldtoa_r+0x90e>
   143ec:	000b5703          	lhu	a4,0(s6)
   143f0:	0789                	addi	a5,a5,2
   143f2:	fee79f23          	sh	a4,-2(a5)
   143f6:	0b09                	addi	s6,s6,2
   143f8:	ffb79ae3          	bne	a5,s11,143ec <_ldtoa_r+0x90a>
   143fc:	030b8d93          	addi	s11,s7,48
   14400:	6b05                	lui	s6,0x1
   14402:	120b8b93          	addi	s7,s7,288
   14406:	a031                	j	14412 <_ldtoa_r+0x930>
   14408:	001b5b13          	srli	s6,s6,0x1
   1440c:	1b7d8e63          	beq	s11,s7,145c8 <_ldtoa_r+0xae6>
   14410:	0dd1                	addi	s11,s11,20
   14412:	85ea                	mv	a1,s10
   14414:	855e                	mv	a0,s7
   14416:	955fe0ef          	jal	ra,12d6a <ecmp>
   1441a:	1aa04763          	bgtz	a0,145c8 <_ldtoa_r+0xae6>
   1441e:	85ea                	mv	a1,s10
   14420:	856e                	mv	a0,s11
   14422:	949fe0ef          	jal	ra,12d6a <ecmp>
   14426:	fea041e3          	bgtz	a0,14408 <_ldtoa_r+0x926>
   1442a:	86ca                	mv	a3,s2
   1442c:	866a                	mv	a2,s10
   1442e:	85ea                	mv	a1,s10
   14430:	856e                	mv	a0,s11
   14432:	f11fe0ef          	jal	ra,13342 <ediv>
   14436:	0990                	addi	a2,sp,208
   14438:	86ca                	mv	a3,s2
   1443a:	85b2                	mv	a1,a2
   1443c:	856e                	mv	a0,s11
   1443e:	b20ff0ef          	jal	ra,1375e <emul>
   14442:	009b04bb          	addw	s1,s6,s1
   14446:	b7c9                	j	14408 <_ldtoa_r+0x926>
   14448:	17310c13          	addi	s8,sp,371
   1444c:	c00790e3          	bnez	a5,1404c <_ldtoa_r+0x56a>
   14450:	bcbd                	j	13ece <_ldtoa_r+0x3ec>
   14452:	4681                	li	a3,0
   14454:	f3eff06f          	j	13b92 <_ldtoa_r+0xb0>
   14458:	67e2                	ld	a5,24(sp)
   1445a:	37fd                	addiw	a5,a5,-1
   1445c:	bb5d                	j	14212 <_ldtoa_r+0x730>
   1445e:	18bc                	addi	a5,sp,120
   14460:	8722                	mv	a4,s0
   14462:	a039                	j	14470 <_ldtoa_r+0x98e>
   14464:	0789                	addi	a5,a5,2
   14466:	08a10693          	addi	a3,sp,138
   1446a:	0709                	addi	a4,a4,2
   1446c:	f0d787e3          	beq	a5,a3,1437a <_ldtoa_r+0x898>
   14470:	0007d603          	lhu	a2,0(a5)
   14474:	00075683          	lhu	a3,0(a4)
   14478:	fed606e3          	beq	a2,a3,14464 <_ldtoa_r+0x982>
   1447c:	12215783          	lhu	a5,290(sp)
   14480:	6726                	ld	a4,72(sp)
   14482:	8ff9                	and	a5,a5,a4
   14484:	2ce78d63          	beq	a5,a4,1475e <_ldtoa_r+0xc7c>
   14488:	1a0c                	addi	a1,sp,304
   1448a:	855a                	mv	a0,s6
   1448c:	e09a                	sd	t1,64(sp)
   1448e:	847fe0ef          	jal	ra,12cd4 <emovi>
   14492:	0a8c                	addi	a1,sp,336
   14494:	8522                	mv	a0,s0
   14496:	83ffe0ef          	jal	ra,12cd4 <emovi>
   1449a:	13015703          	lhu	a4,304(sp)
   1449e:	15215603          	lhu	a2,338(sp)
   144a2:	13215503          	lhu	a0,306(sp)
   144a6:	fff74713          	not	a4,a4
   144aa:	1742                	slli	a4,a4,0x30
   144ac:	9341                	srli	a4,a4,0x30
   144ae:	12e11823          	sh	a4,304(sp)
   144b2:	40c505b3          	sub	a1,a0,a2
   144b6:	6306                	ld	t1,64(sp)
   144b8:	86b2                	mv	a3,a2
   144ba:	04b05e63          	blez	a1,14516 <_ldtoa_r+0xa34>
   144be:	85e6                	mv	a1,s9
   144c0:	0a94                	addi	a3,sp,336
   144c2:	12bc                	addi	a5,sp,360
   144c4:	0006de03          	lhu	t3,0(a3)
   144c8:	0689                	addi	a3,a3,2
   144ca:	0589                	addi	a1,a1,2
   144cc:	ffc59f23          	sh	t3,-2(a1)
   144d0:	fef69ae3          	bne	a3,a5,144c4 <_ldtoa_r+0x9e2>
   144d4:	18011423          	sh	zero,392(sp)
   144d8:	0a94                	addi	a3,sp,336
   144da:	1a0c                	addi	a1,sp,304
   144dc:	a019                	j	144e2 <_ldtoa_r+0xa00>
   144de:	0005d703          	lhu	a4,0(a1)
   144e2:	0689                	addi	a3,a3,2
   144e4:	fee69f23          	sh	a4,-2(a3)
   144e8:	0589                	addi	a1,a1,2
   144ea:	fef69ae3          	bne	a3,a5,144de <_ldtoa_r+0x9fc>
   144ee:	16011423          	sh	zero,360(sp)
   144f2:	1a18                	addi	a4,sp,304
   144f4:	87e6                	mv	a5,s9
   144f6:	032c                	addi	a1,sp,392
   144f8:	0007d683          	lhu	a3,0(a5)
   144fc:	0789                	addi	a5,a5,2
   144fe:	0709                	addi	a4,a4,2
   14500:	fed71f23          	sh	a3,-2(a4)
   14504:	feb79ae3          	bne	a5,a1,144f8 <_ldtoa_r+0xa16>
   14508:	15215683          	lhu	a3,338(sp)
   1450c:	40a605b3          	sub	a1,a2,a0
   14510:	14011423          	sh	zero,328(sp)
   14514:	8636                	mv	a2,a3
   14516:	26058963          	beqz	a1,14788 <_ldtoa_r+0xca6>
   1451a:	ecb6                	sd	a3,88(sp)
   1451c:	f6f00793          	li	a5,-145
   14520:	06f5c063          	blt	a1,a5,14580 <_ldtoa_r+0xa9e>
   14524:	2581                	sext.w	a1,a1
   14526:	1a08                	addi	a0,sp,304
   14528:	e09a                	sd	t1,64(sp)
   1452a:	e58fe0ef          	jal	ra,12b82 <eshift.part.0>
   1452e:	6306                	ld	t1,64(sp)
   14530:	66e6                	ld	a3,88(sp)
   14532:	85aa                	mv	a1,a0
   14534:	12bc                	addi	a5,sp,360
   14536:	02b8                	addi	a4,sp,328
   14538:	13015503          	lhu	a0,304(sp)
   1453c:	15015603          	lhu	a2,336(sp)
   14540:	2cc50463          	beq	a0,a2,14808 <_ldtoa_r+0xd26>
   14544:	4e01                	li	t3,0
   14546:	15210513          	addi	a0,sp,338
   1454a:	0007d603          	lhu	a2,0(a5)
   1454e:	00075e83          	lhu	t4,0(a4)
   14552:	17f9                	addi	a5,a5,-2
   14554:	41c60633          	sub	a2,a2,t3
   14558:	41d60633          	sub	a2,a2,t4
   1455c:	01065e13          	srli	t3,a2,0x10
   14560:	00c79123          	sh	a2,2(a5)
   14564:	001e7e13          	andi	t3,t3,1
   14568:	1779                	addi	a4,a4,-2
   1456a:	fea790e3          	bne	a5,a0,1454a <_ldtoa_r+0xa68>
   1456e:	4605                	li	a2,1
   14570:	87ca                	mv	a5,s2
   14572:	04000713          	li	a4,64
   14576:	0a88                	addi	a0,sp,336
   14578:	e09a                	sd	t1,64(sp)
   1457a:	8d5fe0ef          	jal	ra,12e4e <emdnorm>
   1457e:	6306                	ld	t1,64(sp)
   14580:	85a2                	mv	a1,s0
   14582:	0a88                	addi	a0,sp,336
   14584:	e09a                	sd	t1,64(sp)
   14586:	c66fe0ef          	jal	ra,129ec <emovo.constprop.0>
   1458a:	6306                	ld	t1,64(sp)
   1458c:	b3fd                	j	1437a <_ldtoa_r+0x898>
   1458e:	77a2                	ld	a5,40(sp)
   14590:	16010823          	sb	zero,368(sp)
   14594:	8466                	mv	s0,s9
   14596:	0007a023          	sw	zero,0(a5)
   1459a:	b18d                	j	141fc <_ldtoa_r+0x71a>
   1459c:	87a2                	mv	a5,s0
   1459e:	1258                	addi	a4,sp,292
   145a0:	0789                	addi	a5,a5,2
   145a2:	fe079f23          	sh	zero,-2(a5)
   145a6:	fee79de3          	bne	a5,a4,145a0 <_ldtoa_r+0xabe>
   145aa:	b3f1                	j	14376 <_ldtoa_r+0x894>
   145ac:	17010c93          	addi	s9,sp,368
   145b0:	0a0c0f63          	beqz	s8,1466e <_ldtoa_r+0xb8c>
   145b4:	65f1                	lui	a1,0x1c
   145b6:	52058593          	addi	a1,a1,1312 # 1c520 <zeroes.0+0x48>
   145ba:	8566                	mv	a0,s9
   145bc:	6489                	lui	s1,0x2
   145be:	13b010ef          	jal	ra,15ef8 <sprintf>
   145c2:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   145c6:	bc51                	j	1405a <_ldtoa_r+0x578>
   145c8:	12810a13          	addi	s4,sp,296
   145cc:	f5cff06f          	j	13d28 <_ldtoa_r+0x246>
   145d0:	fff64783          	lbu	a5,-1(a2)
   145d4:	03800713          	li	a4,56
   145d8:	0af77563          	bgeu	a4,a5,14682 <_ldtoa_r+0xba0>
   145dc:	03100793          	li	a5,49
   145e0:	2485                	addiw	s1,s1,1
   145e2:	fef60fa3          	sb	a5,-1(a2)
   145e6:	b49d                	j	1404c <_ldtoa_r+0x56a>
   145e8:	2585                	addiw	a1,a1,1
   145ea:	00b60023          	sb	a1,0(a2)
   145ee:	bcb9                	j	1404c <_ldtoa_r+0x56a>
   145f0:	091c                	addi	a5,sp,144
   145f2:	0a210693          	addi	a3,sp,162
   145f6:	a019                	j	145fc <_ldtoa_r+0xb1a>
   145f8:	a6d78ee3          	beq	a5,a3,14074 <_ldtoa_r+0x592>
   145fc:	0007d703          	lhu	a4,0(a5)
   14600:	0789                	addi	a5,a5,2
   14602:	db7d                	beqz	a4,145f8 <_ldtoa_r+0xb16>
   14604:	7722                	ld	a4,40(sp)
   14606:	6789                	lui	a5,0x2
   14608:	70f78793          	addi	a5,a5,1807 # 270f <register_fini-0xd9a1>
   1460c:	c31c                	sw	a5,0(a4)
   1460e:	b44d                	j	140b0 <_ldtoa_r+0x5ce>
   14610:	17010c93          	addi	s9,sp,368
   14614:	65f1                	lui	a1,0x1c
   14616:	54058593          	addi	a1,a1,1344 # 1c540 <zeroes.0+0x68>
   1461a:	8566                	mv	a0,s9
   1461c:	6489                	lui	s1,0x2
   1461e:	0db010ef          	jal	ra,15ef8 <sprintf>
   14622:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   14626:	bc15                	j	1405a <_ldtoa_r+0x578>
   14628:	098c                	addi	a1,sp,208
   1462a:	1908                	addi	a0,sp,176
   1462c:	fc3e                	sd	a5,56(sp)
   1462e:	bbefe0ef          	jal	ra,129ec <emovo.constprop.0>
   14632:	5d8a8593          	addi	a1,s5,1496
   14636:	0988                	addi	a0,sp,208
   14638:	f32fe0ef          	jal	ra,12d6a <ecmp>
   1463c:	77e2                	ld	a5,56(sp)
   1463e:	9c0516e3          	bnez	a0,1400a <_ldtoa_r+0x528>
   14642:	a00445e3          	bltz	s0,1404c <_ldtoa_r+0x56a>
   14646:	ffe7c703          	lbu	a4,-2(a5)
   1464a:	fd270613          	addi	a2,a4,-46
   1464e:	00163613          	seqz	a2,a2
   14652:	fff64613          	not	a2,a2
   14656:	9662                	add	a2,a2,s8
   14658:	00064603          	lbu	a2,0(a2)
   1465c:	8a05                	andi	a2,a2,1
   1465e:	9e0607e3          	beqz	a2,1404c <_ldtoa_r+0x56a>
   14662:	07f77593          	andi	a1,a4,127
   14666:	ffe78613          	addi	a2,a5,-2
   1466a:	872e                	mv	a4,a1
   1466c:	ba45                	j	1401c <_ldtoa_r+0x53a>
   1466e:	65f1                	lui	a1,0x1c
   14670:	53058593          	addi	a1,a1,1328 # 1c530 <zeroes.0+0x58>
   14674:	8566                	mv	a0,s9
   14676:	6489                	lui	s1,0x2
   14678:	081010ef          	jal	ra,15ef8 <sprintf>
   1467c:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   14680:	bae9                	j	1405a <_ldtoa_r+0x578>
   14682:	2785                	addiw	a5,a5,1
   14684:	fef60fa3          	sb	a5,-1(a2)
   14688:	b2d1                	j	1404c <_ldtoa_r+0x56a>
   1468a:	0a00                	addi	s0,sp,272
   1468c:	85a2                	mv	a1,s0
   1468e:	1908                	addi	a0,sp,176
   14690:	e44fe0ef          	jal	ra,12cd4 <emovi>
   14694:	6791                	lui	a5,0x4
   14696:	4481                	li	s1,0
   14698:	12810a13          	addi	s4,sp,296
   1469c:	10810913          	addi	s2,sp,264
   146a0:	11210c93          	addi	s9,sp,274
   146a4:	ffe78d13          	addi	s10,a5,-2 # 3ffe <register_fini-0xc0b2>
   146a8:	12815783          	lhu	a5,296(sp)
   146ac:	8b9d                	andi	a5,a5,7
   146ae:	e3c5                	bnez	a5,1474e <_ldtoa_r+0xc6c>
   146b0:	1998                	addi	a4,sp,240
   146b2:	87a2                	mv	a5,s0
   146b4:	0007d683          	lhu	a3,0(a5)
   146b8:	0789                	addi	a5,a5,2
   146ba:	0709                	addi	a4,a4,2
   146bc:	fed71f23          	sh	a3,-2(a4)
   146c0:	ff479ae3          	bne	a5,s4,146b4 <_ldtoa_r+0xbd2>
   146c4:	1988                	addi	a0,sp,240
   146c6:	10011423          	sh	zero,264(sp)
   146ca:	a1efe0ef          	jal	ra,128e8 <eshdn1>
   146ce:	1988                	addi	a0,sp,240
   146d0:	a18fe0ef          	jal	ra,128e8 <eshdn1>
   146d4:	4601                	li	a2,0
   146d6:	86ca                	mv	a3,s2
   146d8:	8752                	mv	a4,s4
   146da:	0006d583          	lhu	a1,0(a3)
   146de:	00075783          	lhu	a5,0(a4)
   146e2:	16f9                	addi	a3,a3,-2
   146e4:	1779                	addi	a4,a4,-2
   146e6:	97ae                	add	a5,a5,a1
   146e8:	97b2                	add	a5,a5,a2
   146ea:	0107d613          	srli	a2,a5,0x10
   146ee:	00f69123          	sh	a5,2(a3)
   146f2:	8a05                	andi	a2,a2,1
   146f4:	ff9713e3          	bne	a4,s9,146da <_ldtoa_r+0xbf8>
   146f8:	0f215783          	lhu	a5,242(sp)
   146fc:	0f415703          	lhu	a4,244(sp)
   14700:	278d                	addiw	a5,a5,3
   14702:	0ef11923          	sh	a5,242(sp)
   14706:	cf01                	beqz	a4,1471e <_ldtoa_r+0xc3c>
   14708:	1988                	addi	a0,sp,240
   1470a:	9defe0ef          	jal	ra,128e8 <eshdn1>
   1470e:	0f215783          	lhu	a5,242(sp)
   14712:	0f415703          	lhu	a4,244(sp)
   14716:	2785                	addiw	a5,a5,1
   14718:	0ef11923          	sh	a5,242(sp)
   1471c:	f775                	bnez	a4,14708 <_ldtoa_r+0xc26>
   1471e:	10815783          	lhu	a5,264(sp)
   14722:	e795                	bnez	a5,1474e <_ldtoa_r+0xc6c>
   14724:	0f215783          	lhu	a5,242(sp)
   14728:	02fd6363          	bltu	s10,a5,1474e <_ldtoa_r+0xc6c>
   1472c:	8722                	mv	a4,s0
   1472e:	199c                	addi	a5,sp,240
   14730:	0007d683          	lhu	a3,0(a5)
   14734:	0789                	addi	a5,a5,2
   14736:	0709                	addi	a4,a4,2
   14738:	fed71f23          	sh	a3,-2(a4)
   1473c:	ff279ae3          	bne	a5,s2,14730 <_ldtoa_r+0xc4e>
   14740:	12011423          	sh	zero,296(sp)
   14744:	34fd                	addiw	s1,s1,-1
   14746:	fd500793          	li	a5,-43
   1474a:	f4f49fe3          	bne	s1,a5,146a8 <_ldtoa_r+0xbc6>
   1474e:	190c                	addi	a1,sp,176
   14750:	8522                	mv	a0,s0
   14752:	a9afe0ef          	jal	ra,129ec <emovo.constprop.0>
   14756:	1b010913          	addi	s2,sp,432
   1475a:	d12ff06f          	j	13c6c <_ldtoa_r+0x18a>
   1475e:	87a2                	mv	a5,s0
   14760:	0007d703          	lhu	a4,0(a5)
   14764:	0789                	addi	a5,a5,2
   14766:	c0071ae3          	bnez	a4,1437a <_ldtoa_r+0x898>
   1476a:	12210713          	addi	a4,sp,290
   1476e:	fee799e3          	bne	a5,a4,14760 <_ldtoa_r+0xc7e>
   14772:	87a2                	mv	a5,s0
   14774:	0007d703          	lhu	a4,0(a5)
   14778:	0789                	addi	a5,a5,2
   1477a:	d00717e3          	bnez	a4,14488 <_ldtoa_r+0x9a6>
   1477e:	12210713          	addi	a4,sp,290
   14782:	fee799e3          	bne	a5,a4,14774 <_ldtoa_r+0xc92>
   14786:	bed5                	j	1437a <_ldtoa_r+0x898>
   14788:	0ad8                	addi	a4,sp,340
   1478a:	1a5c                	addi	a5,sp,308
   1478c:	0007d503          	lhu	a0,0(a5)
   14790:	00075583          	lhu	a1,0(a4)
   14794:	0789                	addi	a5,a5,2
   14796:	0709                	addi	a4,a4,2
   14798:	04b51063          	bne	a0,a1,147d8 <_ldtoa_r+0xcf6>
   1479c:	14a10593          	addi	a1,sp,330
   147a0:	feb796e3          	bne	a5,a1,1478c <_ldtoa_r+0xcaa>
   147a4:	13015703          	lhu	a4,304(sp)
   147a8:	15015783          	lhu	a5,336(sp)
   147ac:	02f70c63          	beq	a4,a5,147e4 <_ldtoa_r+0xd02>
   147b0:	87a2                	mv	a5,s0
   147b2:	1258                	addi	a4,sp,292
   147b4:	0789                	addi	a5,a5,2
   147b6:	fe079f23          	sh	zero,-2(a5)
   147ba:	fee79de3          	bne	a5,a4,147b4 <_ldtoa_r+0xcd2>
   147be:	be75                	j	1437a <_ldtoa_r+0x898>
   147c0:	66f1                	lui	a3,0x1c
   147c2:	6585                	lui	a1,0x1
   147c4:	6571                	lui	a0,0x1c
   147c6:	55068693          	addi	a3,a3,1360 # 1c550 <zeroes.0+0x78>
   147ca:	4601                	li	a2,0
   147cc:	b6e58593          	addi	a1,a1,-1170 # b6e <register_fini-0xf542>
   147d0:	56850513          	addi	a0,a0,1384 # 1c568 <zeroes.0+0x90>
   147d4:	27c040ef          	jal	ra,18a50 <__assert_func>
   147d8:	04a5ec63          	bltu	a1,a0,14830 <_ldtoa_r+0xd4e>
   147dc:	4581                	li	a1,0
   147de:	12bc                	addi	a5,sp,360
   147e0:	02b8                	addi	a4,sp,328
   147e2:	bb99                	j	14538 <_ldtoa_r+0xa56>
   147e4:	8736                	mv	a4,a3
   147e6:	e689                	bnez	a3,147f0 <_ldtoa_r+0xd0e>
   147e8:	15611783          	lh	a5,342(sp)
   147ec:	0807db63          	bgez	a5,14882 <_ldtoa_r+0xda0>
   147f0:	15210713          	addi	a4,sp,338
   147f4:	12bc                	addi	a5,sp,360
   147f6:	00075583          	lhu	a1,0(a4)
   147fa:	e1e9                	bnez	a1,148bc <_ldtoa_r+0xdda>
   147fc:	0709                	addi	a4,a4,2
   147fe:	fee79ce3          	bne	a5,a4,147f6 <_ldtoa_r+0xd14>
   14802:	14c11923          	sh	a2,338(sp)
   14806:	bbad                	j	14580 <_ldtoa_r+0xa9e>
   14808:	4501                	li	a0,0
   1480a:	13210e13          	addi	t3,sp,306
   1480e:	0007de83          	lhu	t4,0(a5)
   14812:	00075603          	lhu	a2,0(a4)
   14816:	17f9                	addi	a5,a5,-2
   14818:	1779                	addi	a4,a4,-2
   1481a:	9676                	add	a2,a2,t4
   1481c:	962a                	add	a2,a2,a0
   1481e:	01065513          	srli	a0,a2,0x10
   14822:	00c79123          	sh	a2,2(a5)
   14826:	8905                	andi	a0,a0,1
   14828:	ffc713e3          	bne	a4,t3,1480e <_ldtoa_r+0xd2c>
   1482c:	4601                	li	a2,0
   1482e:	b389                	j	14570 <_ldtoa_r+0xa8e>
   14830:	8666                	mv	a2,s9
   14832:	0a98                	addi	a4,sp,336
   14834:	12bc                	addi	a5,sp,360
   14836:	00075583          	lhu	a1,0(a4)
   1483a:	0709                	addi	a4,a4,2
   1483c:	0609                	addi	a2,a2,2
   1483e:	feb61f23          	sh	a1,-2(a2)
   14842:	fef71ae3          	bne	a4,a5,14836 <_ldtoa_r+0xd54>
   14846:	18011423          	sh	zero,392(sp)
   1484a:	0a8c                	addi	a1,sp,336
   1484c:	1a10                	addi	a2,sp,304
   1484e:	02b8                	addi	a4,sp,328
   14850:	00065503          	lhu	a0,0(a2)
   14854:	0609                	addi	a2,a2,2
   14856:	0589                	addi	a1,a1,2
   14858:	fea59f23          	sh	a0,-2(a1)
   1485c:	fee61ae3          	bne	a2,a4,14850 <_ldtoa_r+0xd6e>
   14860:	16011423          	sh	zero,360(sp)
   14864:	1a08                	addi	a0,sp,304
   14866:	8666                	mv	a2,s9
   14868:	032c                	addi	a1,sp,392
   1486a:	00065e03          	lhu	t3,0(a2)
   1486e:	0609                	addi	a2,a2,2
   14870:	0509                	addi	a0,a0,2
   14872:	ffc51f23          	sh	t3,-2(a0)
   14876:	feb61ae3          	bne	a2,a1,1486a <_ldtoa_r+0xd88>
   1487a:	14011423          	sh	zero,328(sp)
   1487e:	4581                	li	a1,0
   14880:	b965                	j	14538 <_ldtoa_r+0xa56>
   14882:	12b4                	addi	a3,sp,360
   14884:	15210513          	addi	a0,sp,338
   14888:	0006d783          	lhu	a5,0(a3)
   1488c:	00f7d613          	srli	a2,a5,0xf
   14890:	c219                	beqz	a2,14896 <_ldtoa_r+0xdb4>
   14892:	00176713          	ori	a4,a4,1
   14896:	0017979b          	slliw	a5,a5,0x1
   1489a:	17c2                	slli	a5,a5,0x30
   1489c:	00277613          	andi	a2,a4,2
   148a0:	93c1                	srli	a5,a5,0x30
   148a2:	c219                	beqz	a2,148a8 <_ldtoa_r+0xdc6>
   148a4:	0017e793          	ori	a5,a5,1
   148a8:	0017171b          	slliw	a4,a4,0x1
   148ac:	00f69023          	sh	a5,0(a3)
   148b0:	1742                	slli	a4,a4,0x30
   148b2:	16f9                	addi	a3,a3,-2
   148b4:	9341                	srli	a4,a4,0x30
   148b6:	fca699e3          	bne	a3,a0,14888 <_ldtoa_r+0xda6>
   148ba:	b1d9                	j	14580 <_ldtoa_r+0xa9e>
   148bc:	00168613          	addi	a2,a3,1
   148c0:	14c11923          	sh	a2,338(sp)
   148c4:	b975                	j	14580 <_ldtoa_r+0xa9e>

00000000000148c6 <_ldcheck>:
   148c6:	6118                	ld	a4,0(a0)
   148c8:	651c                	ld	a5,8(a0)
   148ca:	7139                	addi	sp,sp,-64
   148cc:	850a                	mv	a0,sp
   148ce:	080c                	addi	a1,sp,16
   148d0:	e03a                	sd	a4,0(sp)
   148d2:	e43e                	sd	a5,8(sp)
   148d4:	fc06                	sd	ra,56(sp)
   148d6:	971fe0ef          	jal	ra,13246 <e113toe.isra.0>
   148da:	02215783          	lhu	a5,34(sp)
   148de:	4501                	li	a0,0
   148e0:	fff7c793          	not	a5,a5
   148e4:	03179713          	slli	a4,a5,0x31
   148e8:	eb19                	bnez	a4,148fe <_ldcheck+0x38>
   148ea:	081c                	addi	a5,sp,16
   148ec:	02210693          	addi	a3,sp,34
   148f0:	0007d703          	lhu	a4,0(a5)
   148f4:	0789                	addi	a5,a5,2
   148f6:	e719                	bnez	a4,14904 <_ldcheck+0x3e>
   148f8:	fed79ce3          	bne	a5,a3,148f0 <_ldcheck+0x2a>
   148fc:	4509                	li	a0,2
   148fe:	70e2                	ld	ra,56(sp)
   14900:	6121                	addi	sp,sp,64
   14902:	8082                	ret
   14904:	4505                	li	a0,1
   14906:	bfe5                	j	148fe <_ldcheck+0x38>

0000000000014908 <__localeconv_l>:
   14908:	10050513          	addi	a0,a0,256
   1490c:	8082                	ret

000000000001490e <_localeconv_r>:
   1490e:	67018513          	addi	a0,gp,1648 # 1f1f0 <__global_locale+0x100>
   14912:	8082                	ret

0000000000014914 <localeconv>:
   14914:	67018513          	addi	a0,gp,1648 # 1f1f0 <__global_locale+0x100>
   14918:	8082                	ret

000000000001491a <__smakebuf_r>:
   1491a:	0105d783          	lhu	a5,16(a1)
   1491e:	7135                	addi	sp,sp,-160
   14920:	e922                	sd	s0,144(sp)
   14922:	ed06                	sd	ra,152(sp)
   14924:	e526                	sd	s1,136(sp)
   14926:	e14a                	sd	s2,128(sp)
   14928:	fcce                	sd	s3,120(sp)
   1492a:	f8d2                	sd	s4,112(sp)
   1492c:	0027f713          	andi	a4,a5,2
   14930:	842e                	mv	s0,a1
   14932:	cf19                	beqz	a4,14950 <__smakebuf_r+0x36>
   14934:	07758793          	addi	a5,a1,119
   14938:	e19c                	sd	a5,0(a1)
   1493a:	ed9c                	sd	a5,24(a1)
   1493c:	4785                	li	a5,1
   1493e:	d19c                	sw	a5,32(a1)
   14940:	60ea                	ld	ra,152(sp)
   14942:	644a                	ld	s0,144(sp)
   14944:	64aa                	ld	s1,136(sp)
   14946:	690a                	ld	s2,128(sp)
   14948:	79e6                	ld	s3,120(sp)
   1494a:	7a46                	ld	s4,112(sp)
   1494c:	610d                	addi	sp,sp,160
   1494e:	8082                	ret
   14950:	01259583          	lh	a1,18(a1)
   14954:	84aa                	mv	s1,a0
   14956:	0605c863          	bltz	a1,149c6 <__smakebuf_r+0xac>
   1495a:	0030                	addi	a2,sp,8
   1495c:	45c040ef          	jal	ra,18db8 <_fstat_r>
   14960:	06054163          	bltz	a0,149c2 <__smakebuf_r+0xa8>
   14964:	4932                	lw	s2,12(sp)
   14966:	67bd                	lui	a5,0xf
   14968:	6985                	lui	s3,0x1
   1496a:	00f97933          	and	s2,s2,a5
   1496e:	6789                	lui	a5,0x2
   14970:	40f90933          	sub	s2,s2,a5
   14974:	00193913          	seqz	s2,s2
   14978:	40000a13          	li	s4,1024
   1497c:	80098993          	addi	s3,s3,-2048 # 800 <register_fini-0xf8b0>
   14980:	85d2                	mv	a1,s4
   14982:	8526                	mv	a0,s1
   14984:	134000ef          	jal	ra,14ab8 <_malloc_r>
   14988:	01041783          	lh	a5,16(s0)
   1498c:	c939                	beqz	a0,149e2 <__smakebuf_r+0xc8>
   1498e:	6749                	lui	a4,0x12
   14990:	20270713          	addi	a4,a4,514 # 12202 <_cleanup_r>
   14994:	ecb8                	sd	a4,88(s1)
   14996:	0807e793          	ori	a5,a5,128
   1499a:	00f41823          	sh	a5,16(s0)
   1499e:	e008                	sd	a0,0(s0)
   149a0:	ec08                	sd	a0,24(s0)
   149a2:	03442023          	sw	s4,32(s0)
   149a6:	06091163          	bnez	s2,14a08 <__smakebuf_r+0xee>
   149aa:	0137e7b3          	or	a5,a5,s3
   149ae:	60ea                	ld	ra,152(sp)
   149b0:	00f41823          	sh	a5,16(s0)
   149b4:	644a                	ld	s0,144(sp)
   149b6:	64aa                	ld	s1,136(sp)
   149b8:	690a                	ld	s2,128(sp)
   149ba:	79e6                	ld	s3,120(sp)
   149bc:	7a46                	ld	s4,112(sp)
   149be:	610d                	addi	sp,sp,160
   149c0:	8082                	ret
   149c2:	01045783          	lhu	a5,16(s0)
   149c6:	0807f793          	andi	a5,a5,128
   149ca:	4901                	li	s2,0
   149cc:	cb95                	beqz	a5,14a00 <__smakebuf_r+0xe6>
   149ce:	04000a13          	li	s4,64
   149d2:	85d2                	mv	a1,s4
   149d4:	8526                	mv	a0,s1
   149d6:	0e2000ef          	jal	ra,14ab8 <_malloc_r>
   149da:	01041783          	lh	a5,16(s0)
   149de:	4981                	li	s3,0
   149e0:	f55d                	bnez	a0,1498e <__smakebuf_r+0x74>
   149e2:	2007f713          	andi	a4,a5,512
   149e6:	ff29                	bnez	a4,14940 <__smakebuf_r+0x26>
   149e8:	9bf1                	andi	a5,a5,-4
   149ea:	0027e793          	ori	a5,a5,2
   149ee:	07740713          	addi	a4,s0,119
   149f2:	00f41823          	sh	a5,16(s0)
   149f6:	4785                	li	a5,1
   149f8:	e018                	sd	a4,0(s0)
   149fa:	ec18                	sd	a4,24(s0)
   149fc:	d01c                	sw	a5,32(s0)
   149fe:	b789                	j	14940 <__smakebuf_r+0x26>
   14a00:	40000a13          	li	s4,1024
   14a04:	4981                	li	s3,0
   14a06:	bfad                	j	14980 <__smakebuf_r+0x66>
   14a08:	01241583          	lh	a1,18(s0)
   14a0c:	8526                	mv	a0,s1
   14a0e:	712040ef          	jal	ra,19120 <_isatty_r>
   14a12:	e501                	bnez	a0,14a1a <__smakebuf_r+0x100>
   14a14:	01041783          	lh	a5,16(s0)
   14a18:	bf49                	j	149aa <__smakebuf_r+0x90>
   14a1a:	01045783          	lhu	a5,16(s0)
   14a1e:	9bf1                	andi	a5,a5,-4
   14a20:	0017e793          	ori	a5,a5,1
   14a24:	0107979b          	slliw	a5,a5,0x10
   14a28:	4107d79b          	sraiw	a5,a5,0x10
   14a2c:	bfbd                	j	149aa <__smakebuf_r+0x90>

0000000000014a2e <__swhatbuf_r>:
   14a2e:	7175                	addi	sp,sp,-144
   14a30:	e122                	sd	s0,128(sp)
   14a32:	842e                	mv	s0,a1
   14a34:	01259583          	lh	a1,18(a1)
   14a38:	fca6                	sd	s1,120(sp)
   14a3a:	f8ca                	sd	s2,112(sp)
   14a3c:	e506                	sd	ra,136(sp)
   14a3e:	84b2                	mv	s1,a2
   14a40:	8936                	mv	s2,a3
   14a42:	0205cc63          	bltz	a1,14a7a <__swhatbuf_r+0x4c>
   14a46:	0030                	addi	a2,sp,8
   14a48:	370040ef          	jal	ra,18db8 <_fstat_r>
   14a4c:	02054763          	bltz	a0,14a7a <__swhatbuf_r+0x4c>
   14a50:	47b2                	lw	a5,12(sp)
   14a52:	673d                	lui	a4,0xf
   14a54:	60aa                	ld	ra,136(sp)
   14a56:	8ff9                	and	a5,a5,a4
   14a58:	6709                	lui	a4,0x2
   14a5a:	8f99                	sub	a5,a5,a4
   14a5c:	640a                	ld	s0,128(sp)
   14a5e:	0017b793          	seqz	a5,a5
   14a62:	00f92023          	sw	a5,0(s2)
   14a66:	40000713          	li	a4,1024
   14a6a:	e098                	sd	a4,0(s1)
   14a6c:	6505                	lui	a0,0x1
   14a6e:	74e6                	ld	s1,120(sp)
   14a70:	7946                	ld	s2,112(sp)
   14a72:	80050513          	addi	a0,a0,-2048 # 800 <register_fini-0xf8b0>
   14a76:	6149                	addi	sp,sp,144
   14a78:	8082                	ret
   14a7a:	01045783          	lhu	a5,16(s0)
   14a7e:	0807f793          	andi	a5,a5,128
   14a82:	cf91                	beqz	a5,14a9e <__swhatbuf_r+0x70>
   14a84:	60aa                	ld	ra,136(sp)
   14a86:	640a                	ld	s0,128(sp)
   14a88:	4781                	li	a5,0
   14a8a:	00f92023          	sw	a5,0(s2)
   14a8e:	04000713          	li	a4,64
   14a92:	e098                	sd	a4,0(s1)
   14a94:	7946                	ld	s2,112(sp)
   14a96:	74e6                	ld	s1,120(sp)
   14a98:	4501                	li	a0,0
   14a9a:	6149                	addi	sp,sp,144
   14a9c:	8082                	ret
   14a9e:	60aa                	ld	ra,136(sp)
   14aa0:	640a                	ld	s0,128(sp)
   14aa2:	4781                	li	a5,0
   14aa4:	00f92023          	sw	a5,0(s2)
   14aa8:	40000713          	li	a4,1024
   14aac:	e098                	sd	a4,0(s1)
   14aae:	7946                	ld	s2,112(sp)
   14ab0:	74e6                	ld	s1,120(sp)
   14ab2:	4501                	li	a0,0
   14ab4:	6149                	addi	sp,sp,144
   14ab6:	8082                	ret

0000000000014ab8 <_malloc_r>:
   14ab8:	711d                	addi	sp,sp,-96
   14aba:	e4a6                	sd	s1,72(sp)
   14abc:	e0ca                	sd	s2,64(sp)
   14abe:	ec86                	sd	ra,88(sp)
   14ac0:	e8a2                	sd	s0,80(sp)
   14ac2:	fc4e                	sd	s3,56(sp)
   14ac4:	f852                	sd	s4,48(sp)
   14ac6:	f456                	sd	s5,40(sp)
   14ac8:	f05a                	sd	s6,32(sp)
   14aca:	ec5e                	sd	s7,24(sp)
   14acc:	e862                	sd	s8,16(sp)
   14ace:	e466                	sd	s9,8(sp)
   14ad0:	01758493          	addi	s1,a1,23
   14ad4:	02e00793          	li	a5,46
   14ad8:	892a                	mv	s2,a0
   14ada:	0497e863          	bltu	a5,s1,14b2a <_malloc_r+0x72>
   14ade:	02000793          	li	a5,32
   14ae2:	1eb7e463          	bltu	a5,a1,14cca <_malloc_r+0x212>
   14ae6:	674000ef          	jal	ra,1515a <__malloc_lock>
   14aea:	02000493          	li	s1,32
   14aee:	05000793          	li	a5,80
   14af2:	4611                	li	a2,4
   14af4:	0001f9b7          	lui	s3,0x1f
   14af8:	8e098993          	addi	s3,s3,-1824 # 1e8e0 <__malloc_av_>
   14afc:	97ce                	add	a5,a5,s3
   14afe:	6780                	ld	s0,8(a5)
   14b00:	ff078713          	addi	a4,a5,-16 # 1ff0 <register_fini-0xe0c0>
   14b04:	1ee40463          	beq	s0,a4,14cec <_malloc_r+0x234>
   14b08:	641c                	ld	a5,8(s0)
   14b0a:	6c14                	ld	a3,24(s0)
   14b0c:	6810                	ld	a2,16(s0)
   14b0e:	9bf1                	andi	a5,a5,-4
   14b10:	97a2                	add	a5,a5,s0
   14b12:	6798                	ld	a4,8(a5)
   14b14:	ee14                	sd	a3,24(a2)
   14b16:	ea90                	sd	a2,16(a3)
   14b18:	00176713          	ori	a4,a4,1
   14b1c:	854a                	mv	a0,s2
   14b1e:	e798                	sd	a4,8(a5)
   14b20:	63c000ef          	jal	ra,1515c <__malloc_unlock>
   14b24:	01040513          	addi	a0,s0,16
   14b28:	a26d                	j	14cd2 <_malloc_r+0x21a>
   14b2a:	800007b7          	lui	a5,0x80000
   14b2e:	98c1                	andi	s1,s1,-16
   14b30:	fff7c793          	not	a5,a5
   14b34:	1897eb63          	bltu	a5,s1,14cca <_malloc_r+0x212>
   14b38:	18b4e963          	bltu	s1,a1,14cca <_malloc_r+0x212>
   14b3c:	61e000ef          	jal	ra,1515a <__malloc_lock>
   14b40:	1f700793          	li	a5,503
   14b44:	3a97f363          	bgeu	a5,s1,14eea <_malloc_r+0x432>
   14b48:	0094d793          	srli	a5,s1,0x9
   14b4c:	26078f63          	beqz	a5,14dca <_malloc_r+0x312>
   14b50:	4711                	li	a4,4
   14b52:	30f76363          	bltu	a4,a5,14e58 <_malloc_r+0x3a0>
   14b56:	0064d793          	srli	a5,s1,0x6
   14b5a:	0397861b          	addiw	a2,a5,57
   14b5e:	0016169b          	slliw	a3,a2,0x1
   14b62:	0387851b          	addiw	a0,a5,56
   14b66:	068e                	slli	a3,a3,0x3
   14b68:	0001f9b7          	lui	s3,0x1f
   14b6c:	8e098993          	addi	s3,s3,-1824 # 1e8e0 <__malloc_av_>
   14b70:	96ce                	add	a3,a3,s3
   14b72:	6680                	ld	s0,8(a3)
   14b74:	16c1                	addi	a3,a3,-16
   14b76:	16868f63          	beq	a3,s0,14cf4 <_malloc_r+0x23c>
   14b7a:	45fd                	li	a1,31
   14b7c:	a031                	j	14b88 <_malloc_r+0xd0>
   14b7e:	28075763          	bgez	a4,14e0c <_malloc_r+0x354>
   14b82:	6c00                	ld	s0,24(s0)
   14b84:	16868863          	beq	a3,s0,14cf4 <_malloc_r+0x23c>
   14b88:	641c                	ld	a5,8(s0)
   14b8a:	9bf1                	andi	a5,a5,-4
   14b8c:	40978733          	sub	a4,a5,s1
   14b90:	fee5d7e3          	bge	a1,a4,14b7e <_malloc_r+0xc6>
   14b94:	0209b403          	ld	s0,32(s3)
   14b98:	0001f837          	lui	a6,0x1f
   14b9c:	8f080813          	addi	a6,a6,-1808 # 1e8f0 <__malloc_av_+0x10>
   14ba0:	862a                	mv	a2,a0
   14ba2:	17041163          	bne	s0,a6,14d04 <_malloc_r+0x24c>
   14ba6:	0089b783          	ld	a5,8(s3)
   14baa:	4026571b          	sraiw	a4,a2,0x2
   14bae:	4585                	li	a1,1
   14bb0:	00e595b3          	sll	a1,a1,a4
   14bb4:	1ab7f863          	bgeu	a5,a1,14d64 <_malloc_r+0x2ac>
   14bb8:	0109b403          	ld	s0,16(s3)
   14bbc:	00843a83          	ld	s5,8(s0)
   14bc0:	ffcafa93          	andi	s5,s5,-4
   14bc4:	009ae763          	bltu	s5,s1,14bd2 <_malloc_r+0x11a>
   14bc8:	409a87b3          	sub	a5,s5,s1
   14bcc:	477d                	li	a4,31
   14bce:	22f74063          	blt	a4,a5,14dee <_malloc_r+0x336>
   14bd2:	7801ba03          	ld	s4,1920(gp) # 1f300 <__malloc_top_pad>
   14bd6:	7601b703          	ld	a4,1888(gp) # 1f2e0 <__malloc_sbrk_base>
   14bda:	57fd                	li	a5,-1
   14bdc:	01540c33          	add	s8,s0,s5
   14be0:	9a26                	add	s4,s4,s1
   14be2:	3af70263          	beq	a4,a5,14f86 <_malloc_r+0x4ce>
   14be6:	6785                	lui	a5,0x1
   14be8:	07fd                	addi	a5,a5,31
   14bea:	9a3e                	add	s4,s4,a5
   14bec:	77fd                	lui	a5,0xfffff
   14bee:	00fa7a33          	and	s4,s4,a5
   14bf2:	85d2                	mv	a1,s4
   14bf4:	854a                	mv	a0,s2
   14bf6:	28a010ef          	jal	ra,15e80 <_sbrk_r>
   14bfa:	57fd                	li	a5,-1
   14bfc:	8b2a                	mv	s6,a0
   14bfe:	30f50b63          	beq	a0,a5,14f14 <_malloc_r+0x45c>
   14c02:	31856763          	bltu	a0,s8,14f10 <_malloc_r+0x458>
   14c06:	7d818b93          	addi	s7,gp,2008 # 1f358 <__malloc_current_mallinfo>
   14c0a:	000ba703          	lw	a4,0(s7)
   14c0e:	014707bb          	addw	a5,a4,s4
   14c12:	00fba023          	sw	a5,0(s7)
   14c16:	86be                	mv	a3,a5
   14c18:	3eac0a63          	beq	s8,a0,1500c <_malloc_r+0x554>
   14c1c:	7601b703          	ld	a4,1888(gp) # 1f2e0 <__malloc_sbrk_base>
   14c20:	57fd                	li	a5,-1
   14c22:	40f70163          	beq	a4,a5,15024 <_malloc_r+0x56c>
   14c26:	418b07b3          	sub	a5,s6,s8
   14c2a:	9fb5                	addw	a5,a5,a3
   14c2c:	00fba023          	sw	a5,0(s7)
   14c30:	00fb7c93          	andi	s9,s6,15
   14c34:	360c8763          	beqz	s9,14fa2 <_malloc_r+0x4ea>
   14c38:	6785                	lui	a5,0x1
   14c3a:	419b0b33          	sub	s6,s6,s9
   14c3e:	01078c13          	addi	s8,a5,16 # 1010 <register_fini-0xf0a0>
   14c42:	0b41                	addi	s6,s6,16
   14c44:	419c0c33          	sub	s8,s8,s9
   14c48:	9a5a                	add	s4,s4,s6
   14c4a:	17fd                	addi	a5,a5,-1
   14c4c:	414c0c33          	sub	s8,s8,s4
   14c50:	00fc7c33          	and	s8,s8,a5
   14c54:	85e2                	mv	a1,s8
   14c56:	854a                	mv	a0,s2
   14c58:	228010ef          	jal	ra,15e80 <_sbrk_r>
   14c5c:	57fd                	li	a5,-1
   14c5e:	40f50863          	beq	a0,a5,1506e <_malloc_r+0x5b6>
   14c62:	41650533          	sub	a0,a0,s6
   14c66:	000c071b          	sext.w	a4,s8
   14c6a:	01850a33          	add	s4,a0,s8
   14c6e:	000ba783          	lw	a5,0(s7)
   14c72:	0169b823          	sd	s6,16(s3)
   14c76:	001a6a13          	ori	s4,s4,1
   14c7a:	9fb9                	addw	a5,a5,a4
   14c7c:	00fba023          	sw	a5,0(s7)
   14c80:	014b3423          	sd	s4,8(s6) # 1008 <register_fini-0xf0a8>
   14c84:	3b340363          	beq	s0,s3,1502a <_malloc_r+0x572>
   14c88:	467d                	li	a2,31
   14c8a:	3b567263          	bgeu	a2,s5,1502e <_malloc_r+0x576>
   14c8e:	6414                	ld	a3,8(s0)
   14c90:	fe8a8713          	addi	a4,s5,-24
   14c94:	9b41                	andi	a4,a4,-16
   14c96:	8a85                	andi	a3,a3,1
   14c98:	8ed9                	or	a3,a3,a4
   14c9a:	e414                	sd	a3,8(s0)
   14c9c:	45a5                	li	a1,9
   14c9e:	00e406b3          	add	a3,s0,a4
   14ca2:	e68c                	sd	a1,8(a3)
   14ca4:	ea8c                	sd	a1,16(a3)
   14ca6:	3ce66a63          	bltu	a2,a4,1507a <_malloc_r+0x5c2>
   14caa:	008b3a03          	ld	s4,8(s6)
   14cae:	845a                	mv	s0,s6
   14cb0:	7781b683          	ld	a3,1912(gp) # 1f2f8 <__malloc_max_sbrked_mem>
   14cb4:	00f6f463          	bgeu	a3,a5,14cbc <_malloc_r+0x204>
   14cb8:	76f1bc23          	sd	a5,1912(gp) # 1f2f8 <__malloc_max_sbrked_mem>
   14cbc:	7701b683          	ld	a3,1904(gp) # 1f2f0 <__malloc_max_total_mem>
   14cc0:	24f6fe63          	bgeu	a3,a5,14f1c <_malloc_r+0x464>
   14cc4:	76f1b823          	sd	a5,1904(gp) # 1f2f0 <__malloc_max_total_mem>
   14cc8:	ac91                	j	14f1c <_malloc_r+0x464>
   14cca:	47b1                	li	a5,12
   14ccc:	00f92023          	sw	a5,0(s2)
   14cd0:	4501                	li	a0,0
   14cd2:	60e6                	ld	ra,88(sp)
   14cd4:	6446                	ld	s0,80(sp)
   14cd6:	64a6                	ld	s1,72(sp)
   14cd8:	6906                	ld	s2,64(sp)
   14cda:	79e2                	ld	s3,56(sp)
   14cdc:	7a42                	ld	s4,48(sp)
   14cde:	7aa2                	ld	s5,40(sp)
   14ce0:	7b02                	ld	s6,32(sp)
   14ce2:	6be2                	ld	s7,24(sp)
   14ce4:	6c42                	ld	s8,16(sp)
   14ce6:	6ca2                	ld	s9,8(sp)
   14ce8:	6125                	addi	sp,sp,96
   14cea:	8082                	ret
   14cec:	6f80                	ld	s0,24(a5)
   14cee:	2609                	addiw	a2,a2,2
   14cf0:	e0879ce3          	bne	a5,s0,14b08 <_malloc_r+0x50>
   14cf4:	0209b403          	ld	s0,32(s3)
   14cf8:	0001f837          	lui	a6,0x1f
   14cfc:	8f080813          	addi	a6,a6,-1808 # 1e8f0 <__malloc_av_+0x10>
   14d00:	eb0403e3          	beq	s0,a6,14ba6 <_malloc_r+0xee>
   14d04:	641c                	ld	a5,8(s0)
   14d06:	46fd                	li	a3,31
   14d08:	9bf1                	andi	a5,a5,-4
   14d0a:	40978733          	sub	a4,a5,s1
   14d0e:	1ae6c763          	blt	a3,a4,14ebc <_malloc_r+0x404>
   14d12:	0309b423          	sd	a6,40(s3)
   14d16:	0309b023          	sd	a6,32(s3)
   14d1a:	0a075f63          	bgez	a4,14dd8 <_malloc_r+0x320>
   14d1e:	1ff00713          	li	a4,511
   14d22:	0ef76863          	bltu	a4,a5,14e12 <_malloc_r+0x35a>
   14d26:	838d                	srli	a5,a5,0x3
   14d28:	0017871b          	addiw	a4,a5,1
   14d2c:	0017171b          	slliw	a4,a4,0x1
   14d30:	070e                	slli	a4,a4,0x3
   14d32:	0089b503          	ld	a0,8(s3)
   14d36:	974e                	add	a4,a4,s3
   14d38:	630c                	ld	a1,0(a4)
   14d3a:	4027d69b          	sraiw	a3,a5,0x2
   14d3e:	4785                	li	a5,1
   14d40:	00d797b3          	sll	a5,a5,a3
   14d44:	8fc9                	or	a5,a5,a0
   14d46:	ff070693          	addi	a3,a4,-16 # 1ff0 <register_fini-0xe0c0>
   14d4a:	ec14                	sd	a3,24(s0)
   14d4c:	e80c                	sd	a1,16(s0)
   14d4e:	00f9b423          	sd	a5,8(s3)
   14d52:	e300                	sd	s0,0(a4)
   14d54:	ed80                	sd	s0,24(a1)
   14d56:	4026571b          	sraiw	a4,a2,0x2
   14d5a:	4585                	li	a1,1
   14d5c:	00e595b3          	sll	a1,a1,a4
   14d60:	e4b7ece3          	bltu	a5,a1,14bb8 <_malloc_r+0x100>
   14d64:	00f5f733          	and	a4,a1,a5
   14d68:	ef01                	bnez	a4,14d80 <_malloc_r+0x2c8>
   14d6a:	0586                	slli	a1,a1,0x1
   14d6c:	9a71                	andi	a2,a2,-4
   14d6e:	00f5f733          	and	a4,a1,a5
   14d72:	2611                	addiw	a2,a2,4
   14d74:	e711                	bnez	a4,14d80 <_malloc_r+0x2c8>
   14d76:	0586                	slli	a1,a1,0x1
   14d78:	00f5f733          	and	a4,a1,a5
   14d7c:	2611                	addiw	a2,a2,4
   14d7e:	df65                	beqz	a4,14d76 <_malloc_r+0x2be>
   14d80:	48fd                	li	a7,31
   14d82:	0016031b          	addiw	t1,a2,1
   14d86:	0013131b          	slliw	t1,t1,0x1
   14d8a:	030e                	slli	t1,t1,0x3
   14d8c:	1341                	addi	t1,t1,-16
   14d8e:	934e                	add	t1,t1,s3
   14d90:	851a                	mv	a0,t1
   14d92:	6d1c                	ld	a5,24(a0)
   14d94:	8e32                	mv	t3,a2
   14d96:	0ef50263          	beq	a0,a5,14e7a <_malloc_r+0x3c2>
   14d9a:	6798                	ld	a4,8(a5)
   14d9c:	843e                	mv	s0,a5
   14d9e:	6f9c                	ld	a5,24(a5)
   14da0:	9b71                	andi	a4,a4,-4
   14da2:	409706b3          	sub	a3,a4,s1
   14da6:	0ed8c163          	blt	a7,a3,14e88 <_malloc_r+0x3d0>
   14daa:	fe06c6e3          	bltz	a3,14d96 <_malloc_r+0x2de>
   14dae:	9722                	add	a4,a4,s0
   14db0:	6714                	ld	a3,8(a4)
   14db2:	6810                	ld	a2,16(s0)
   14db4:	854a                	mv	a0,s2
   14db6:	0016e693          	ori	a3,a3,1
   14dba:	e714                	sd	a3,8(a4)
   14dbc:	ee1c                	sd	a5,24(a2)
   14dbe:	eb90                	sd	a2,16(a5)
   14dc0:	39c000ef          	jal	ra,1515c <__malloc_unlock>
   14dc4:	01040513          	addi	a0,s0,16
   14dc8:	b729                	j	14cd2 <_malloc_r+0x21a>
   14dca:	40000693          	li	a3,1024
   14dce:	04000613          	li	a2,64
   14dd2:	03f00513          	li	a0,63
   14dd6:	bb49                	j	14b68 <_malloc_r+0xb0>
   14dd8:	97a2                	add	a5,a5,s0
   14dda:	6798                	ld	a4,8(a5)
   14ddc:	854a                	mv	a0,s2
   14dde:	00176713          	ori	a4,a4,1
   14de2:	e798                	sd	a4,8(a5)
   14de4:	378000ef          	jal	ra,1515c <__malloc_unlock>
   14de8:	01040513          	addi	a0,s0,16
   14dec:	b5dd                	j	14cd2 <_malloc_r+0x21a>
   14dee:	0014e713          	ori	a4,s1,1
   14df2:	e418                	sd	a4,8(s0)
   14df4:	94a2                	add	s1,s1,s0
   14df6:	0099b823          	sd	s1,16(s3)
   14dfa:	0017e793          	ori	a5,a5,1
   14dfe:	854a                	mv	a0,s2
   14e00:	e49c                	sd	a5,8(s1)
   14e02:	35a000ef          	jal	ra,1515c <__malloc_unlock>
   14e06:	01040513          	addi	a0,s0,16
   14e0a:	b5e1                	j	14cd2 <_malloc_r+0x21a>
   14e0c:	6c14                	ld	a3,24(s0)
   14e0e:	6810                	ld	a2,16(s0)
   14e10:	b301                	j	14b10 <_malloc_r+0x58>
   14e12:	0097d713          	srli	a4,a5,0x9
   14e16:	4691                	li	a3,4
   14e18:	0ee6f263          	bgeu	a3,a4,14efc <_malloc_r+0x444>
   14e1c:	46d1                	li	a3,20
   14e1e:	1ae6e263          	bltu	a3,a4,14fc2 <_malloc_r+0x50a>
   14e22:	05c7059b          	addiw	a1,a4,92
   14e26:	0015959b          	slliw	a1,a1,0x1
   14e2a:	05b7069b          	addiw	a3,a4,91
   14e2e:	058e                	slli	a1,a1,0x3
   14e30:	95ce                	add	a1,a1,s3
   14e32:	6198                	ld	a4,0(a1)
   14e34:	15c1                	addi	a1,a1,-16
   14e36:	14e58b63          	beq	a1,a4,14f8c <_malloc_r+0x4d4>
   14e3a:	6714                	ld	a3,8(a4)
   14e3c:	9af1                	andi	a3,a3,-4
   14e3e:	00d7f563          	bgeu	a5,a3,14e48 <_malloc_r+0x390>
   14e42:	6b18                	ld	a4,16(a4)
   14e44:	fee59be3          	bne	a1,a4,14e3a <_malloc_r+0x382>
   14e48:	6f0c                	ld	a1,24(a4)
   14e4a:	0089b783          	ld	a5,8(s3)
   14e4e:	ec0c                	sd	a1,24(s0)
   14e50:	e818                	sd	a4,16(s0)
   14e52:	e980                	sd	s0,16(a1)
   14e54:	ef00                	sd	s0,24(a4)
   14e56:	b701                	j	14d56 <_malloc_r+0x29e>
   14e58:	4751                	li	a4,20
   14e5a:	0cf77f63          	bgeu	a4,a5,14f38 <_malloc_r+0x480>
   14e5e:	05400713          	li	a4,84
   14e62:	16f76e63          	bltu	a4,a5,14fde <_malloc_r+0x526>
   14e66:	00c4d793          	srli	a5,s1,0xc
   14e6a:	06f7861b          	addiw	a2,a5,111
   14e6e:	0016169b          	slliw	a3,a2,0x1
   14e72:	06e7851b          	addiw	a0,a5,110
   14e76:	068e                	slli	a3,a3,0x3
   14e78:	b9c5                	j	14b68 <_malloc_r+0xb0>
   14e7a:	2e05                	addiw	t3,t3,1
   14e7c:	003e7793          	andi	a5,t3,3
   14e80:	0541                	addi	a0,a0,16
   14e82:	cbe1                	beqz	a5,14f52 <_malloc_r+0x49a>
   14e84:	6d1c                	ld	a5,24(a0)
   14e86:	bf01                	j	14d96 <_malloc_r+0x2de>
   14e88:	6810                	ld	a2,16(s0)
   14e8a:	0014e593          	ori	a1,s1,1
   14e8e:	e40c                	sd	a1,8(s0)
   14e90:	ee1c                	sd	a5,24(a2)
   14e92:	eb90                	sd	a2,16(a5)
   14e94:	94a2                	add	s1,s1,s0
   14e96:	0299b423          	sd	s1,40(s3)
   14e9a:	0299b023          	sd	s1,32(s3)
   14e9e:	0016e793          	ori	a5,a3,1
   14ea2:	0104bc23          	sd	a6,24(s1)
   14ea6:	0104b823          	sd	a6,16(s1)
   14eaa:	e49c                	sd	a5,8(s1)
   14eac:	9722                	add	a4,a4,s0
   14eae:	854a                	mv	a0,s2
   14eb0:	e314                	sd	a3,0(a4)
   14eb2:	2aa000ef          	jal	ra,1515c <__malloc_unlock>
   14eb6:	01040513          	addi	a0,s0,16
   14eba:	bd21                	j	14cd2 <_malloc_r+0x21a>
   14ebc:	0014e693          	ori	a3,s1,1
   14ec0:	e414                	sd	a3,8(s0)
   14ec2:	94a2                	add	s1,s1,s0
   14ec4:	0299b423          	sd	s1,40(s3)
   14ec8:	0299b023          	sd	s1,32(s3)
   14ecc:	00176693          	ori	a3,a4,1
   14ed0:	0104bc23          	sd	a6,24(s1)
   14ed4:	0104b823          	sd	a6,16(s1)
   14ed8:	e494                	sd	a3,8(s1)
   14eda:	97a2                	add	a5,a5,s0
   14edc:	854a                	mv	a0,s2
   14ede:	e398                	sd	a4,0(a5)
   14ee0:	27c000ef          	jal	ra,1515c <__malloc_unlock>
   14ee4:	01040513          	addi	a0,s0,16
   14ee8:	b3ed                	j	14cd2 <_malloc_r+0x21a>
   14eea:	0034d613          	srli	a2,s1,0x3
   14eee:	0016079b          	addiw	a5,a2,1
   14ef2:	0017979b          	slliw	a5,a5,0x1
   14ef6:	2601                	sext.w	a2,a2
   14ef8:	078e                	slli	a5,a5,0x3
   14efa:	beed                	j	14af4 <_malloc_r+0x3c>
   14efc:	0067d713          	srli	a4,a5,0x6
   14f00:	0397059b          	addiw	a1,a4,57
   14f04:	0015959b          	slliw	a1,a1,0x1
   14f08:	0387069b          	addiw	a3,a4,56
   14f0c:	058e                	slli	a1,a1,0x3
   14f0e:	b70d                	j	14e30 <_malloc_r+0x378>
   14f10:	0f340563          	beq	s0,s3,14ffa <_malloc_r+0x542>
   14f14:	0109b403          	ld	s0,16(s3)
   14f18:	00843a03          	ld	s4,8(s0)
   14f1c:	ffca7a13          	andi	s4,s4,-4
   14f20:	409a07b3          	sub	a5,s4,s1
   14f24:	009a6563          	bltu	s4,s1,14f2e <_malloc_r+0x476>
   14f28:	477d                	li	a4,31
   14f2a:	ecf742e3          	blt	a4,a5,14dee <_malloc_r+0x336>
   14f2e:	854a                	mv	a0,s2
   14f30:	22c000ef          	jal	ra,1515c <__malloc_unlock>
   14f34:	4501                	li	a0,0
   14f36:	bb71                	j	14cd2 <_malloc_r+0x21a>
   14f38:	05c7861b          	addiw	a2,a5,92
   14f3c:	0016169b          	slliw	a3,a2,0x1
   14f40:	05b7851b          	addiw	a0,a5,91
   14f44:	068e                	slli	a3,a3,0x3
   14f46:	b10d                	j	14b68 <_malloc_r+0xb0>
   14f48:	01033783          	ld	a5,16(t1)
   14f4c:	367d                	addiw	a2,a2,-1
   14f4e:	16679c63          	bne	a5,t1,150c6 <_malloc_r+0x60e>
   14f52:	00367793          	andi	a5,a2,3
   14f56:	1341                	addi	t1,t1,-16
   14f58:	fbe5                	bnez	a5,14f48 <_malloc_r+0x490>
   14f5a:	0089b703          	ld	a4,8(s3)
   14f5e:	fff5c793          	not	a5,a1
   14f62:	8ff9                	and	a5,a5,a4
   14f64:	00f9b423          	sd	a5,8(s3)
   14f68:	0586                	slli	a1,a1,0x1
   14f6a:	c4b7e7e3          	bltu	a5,a1,14bb8 <_malloc_r+0x100>
   14f6e:	c40585e3          	beqz	a1,14bb8 <_malloc_r+0x100>
   14f72:	00f5f733          	and	a4,a1,a5
   14f76:	e711                	bnez	a4,14f82 <_malloc_r+0x4ca>
   14f78:	0586                	slli	a1,a1,0x1
   14f7a:	00f5f733          	and	a4,a1,a5
   14f7e:	2e11                	addiw	t3,t3,4
   14f80:	df65                	beqz	a4,14f78 <_malloc_r+0x4c0>
   14f82:	8672                	mv	a2,t3
   14f84:	bbfd                	j	14d82 <_malloc_r+0x2ca>
   14f86:	020a0a13          	addi	s4,s4,32
   14f8a:	b1a5                	j	14bf2 <_malloc_r+0x13a>
   14f8c:	0089b503          	ld	a0,8(s3)
   14f90:	4026d69b          	sraiw	a3,a3,0x2
   14f94:	4785                	li	a5,1
   14f96:	00d797b3          	sll	a5,a5,a3
   14f9a:	8fc9                	or	a5,a5,a0
   14f9c:	00f9b423          	sd	a5,8(s3)
   14fa0:	b57d                	j	14e4e <_malloc_r+0x396>
   14fa2:	014b0c33          	add	s8,s6,s4
   14fa6:	41800c33          	neg	s8,s8
   14faa:	1c52                	slli	s8,s8,0x34
   14fac:	034c5c13          	srli	s8,s8,0x34
   14fb0:	85e2                	mv	a1,s8
   14fb2:	854a                	mv	a0,s2
   14fb4:	6cd000ef          	jal	ra,15e80 <_sbrk_r>
   14fb8:	57fd                	li	a5,-1
   14fba:	4701                	li	a4,0
   14fbc:	caf513e3          	bne	a0,a5,14c62 <_malloc_r+0x1aa>
   14fc0:	b17d                	j	14c6e <_malloc_r+0x1b6>
   14fc2:	05400693          	li	a3,84
   14fc6:	06e6e863          	bltu	a3,a4,15036 <_malloc_r+0x57e>
   14fca:	00c7d713          	srli	a4,a5,0xc
   14fce:	06f7059b          	addiw	a1,a4,111
   14fd2:	0015959b          	slliw	a1,a1,0x1
   14fd6:	06e7069b          	addiw	a3,a4,110
   14fda:	058e                	slli	a1,a1,0x3
   14fdc:	bd91                	j	14e30 <_malloc_r+0x378>
   14fde:	15400713          	li	a4,340
   14fe2:	06f76863          	bltu	a4,a5,15052 <_malloc_r+0x59a>
   14fe6:	00f4d793          	srli	a5,s1,0xf
   14fea:	0787861b          	addiw	a2,a5,120
   14fee:	0016169b          	slliw	a3,a2,0x1
   14ff2:	0777851b          	addiw	a0,a5,119
   14ff6:	068e                	slli	a3,a3,0x3
   14ff8:	be85                	j	14b68 <_malloc_r+0xb0>
   14ffa:	7d818b93          	addi	s7,gp,2008 # 1f358 <__malloc_current_mallinfo>
   14ffe:	000ba783          	lw	a5,0(s7)
   15002:	014786bb          	addw	a3,a5,s4
   15006:	00dba023          	sw	a3,0(s7)
   1500a:	b909                	j	14c1c <_malloc_r+0x164>
   1500c:	034c1713          	slli	a4,s8,0x34
   15010:	c00716e3          	bnez	a4,14c1c <_malloc_r+0x164>
   15014:	0109b403          	ld	s0,16(s3)
   15018:	9a56                	add	s4,s4,s5
   1501a:	001a6a13          	ori	s4,s4,1
   1501e:	01443423          	sd	s4,8(s0)
   15022:	b179                	j	14cb0 <_malloc_r+0x1f8>
   15024:	7761b023          	sd	s6,1888(gp) # 1f2e0 <__malloc_sbrk_base>
   15028:	b121                	j	14c30 <_malloc_r+0x178>
   1502a:	845a                	mv	s0,s6
   1502c:	b151                	j	14cb0 <_malloc_r+0x1f8>
   1502e:	4785                	li	a5,1
   15030:	00fb3423          	sd	a5,8(s6)
   15034:	bded                	j	14f2e <_malloc_r+0x476>
   15036:	15400693          	li	a3,340
   1503a:	04e6ec63          	bltu	a3,a4,15092 <_malloc_r+0x5da>
   1503e:	00f7d713          	srli	a4,a5,0xf
   15042:	0787059b          	addiw	a1,a4,120
   15046:	0015959b          	slliw	a1,a1,0x1
   1504a:	0777069b          	addiw	a3,a4,119
   1504e:	058e                	slli	a1,a1,0x3
   15050:	b3c5                	j	14e30 <_malloc_r+0x378>
   15052:	55400713          	li	a4,1364
   15056:	04f76c63          	bltu	a4,a5,150ae <_malloc_r+0x5f6>
   1505a:	0124d793          	srli	a5,s1,0x12
   1505e:	07d7861b          	addiw	a2,a5,125
   15062:	0016169b          	slliw	a3,a2,0x1
   15066:	07c7851b          	addiw	a0,a5,124
   1506a:	068e                	slli	a3,a3,0x3
   1506c:	bcf5                	j	14b68 <_malloc_r+0xb0>
   1506e:	1cc1                	addi	s9,s9,-16
   15070:	9a66                	add	s4,s4,s9
   15072:	416a0a33          	sub	s4,s4,s6
   15076:	4701                	li	a4,0
   15078:	bedd                	j	14c6e <_malloc_r+0x1b6>
   1507a:	01040593          	addi	a1,s0,16
   1507e:	854a                	mv	a0,s2
   15080:	d0afd0ef          	jal	ra,1258a <_free_r>
   15084:	0109b403          	ld	s0,16(s3)
   15088:	000ba783          	lw	a5,0(s7)
   1508c:	00843a03          	ld	s4,8(s0)
   15090:	b105                	j	14cb0 <_malloc_r+0x1f8>
   15092:	55400693          	li	a3,1364
   15096:	02e6e363          	bltu	a3,a4,150bc <_malloc_r+0x604>
   1509a:	0127d713          	srli	a4,a5,0x12
   1509e:	07d7059b          	addiw	a1,a4,125
   150a2:	0015959b          	slliw	a1,a1,0x1
   150a6:	07c7069b          	addiw	a3,a4,124
   150aa:	058e                	slli	a1,a1,0x3
   150ac:	b351                	j	14e30 <_malloc_r+0x378>
   150ae:	7f000693          	li	a3,2032
   150b2:	07f00613          	li	a2,127
   150b6:	07e00513          	li	a0,126
   150ba:	b47d                	j	14b68 <_malloc_r+0xb0>
   150bc:	7f000593          	li	a1,2032
   150c0:	07e00693          	li	a3,126
   150c4:	b3b5                	j	14e30 <_malloc_r+0x378>
   150c6:	0089b783          	ld	a5,8(s3)
   150ca:	bd79                	j	14f68 <_malloc_r+0x4b0>

00000000000150cc <memchr>:
   150cc:	00757793          	andi	a5,a0,7
   150d0:	0ff5f693          	zext.b	a3,a1
   150d4:	c395                	beqz	a5,150f8 <memchr+0x2c>
   150d6:	fff60793          	addi	a5,a2,-1
   150da:	c605                	beqz	a2,15102 <memchr+0x36>
   150dc:	567d                	li	a2,-1
   150de:	a801                	j	150ee <memchr+0x22>
   150e0:	0505                	addi	a0,a0,1
   150e2:	00757713          	andi	a4,a0,7
   150e6:	cb11                	beqz	a4,150fa <memchr+0x2e>
   150e8:	17fd                	addi	a5,a5,-1
   150ea:	00c78c63          	beq	a5,a2,15102 <memchr+0x36>
   150ee:	00054703          	lbu	a4,0(a0)
   150f2:	fed717e3          	bne	a4,a3,150e0 <memchr+0x14>
   150f6:	8082                	ret
   150f8:	87b2                	mv	a5,a2
   150fa:	471d                	li	a4,7
   150fc:	00f76f63          	bltu	a4,a5,1511a <memchr+0x4e>
   15100:	e399                	bnez	a5,15106 <memchr+0x3a>
   15102:	4501                	li	a0,0
   15104:	8082                	ret
   15106:	97aa                	add	a5,a5,a0
   15108:	a021                	j	15110 <memchr+0x44>
   1510a:	0505                	addi	a0,a0,1
   1510c:	fea78be3          	beq	a5,a0,15102 <memchr+0x36>
   15110:	00054703          	lbu	a4,0(a0)
   15114:	fed71be3          	bne	a4,a3,1510a <memchr+0x3e>
   15118:	8082                	ret
   1511a:	0ff5f593          	zext.b	a1,a1
   1511e:	00859613          	slli	a2,a1,0x8
   15122:	8e4d                	or	a2,a2,a1
   15124:	01061713          	slli	a4,a2,0x10
   15128:	8f51                	or	a4,a4,a2
   1512a:	7181b883          	ld	a7,1816(gp) # 1f298 <__SDATA_BEGIN__>
   1512e:	7201b803          	ld	a6,1824(gp) # 1f2a0 <__SDATA_BEGIN__+0x8>
   15132:	02071593          	slli	a1,a4,0x20
   15136:	8dd9                	or	a1,a1,a4
   15138:	431d                	li	t1,7
   1513a:	6118                	ld	a4,0(a0)
   1513c:	8f2d                	xor	a4,a4,a1
   1513e:	01170633          	add	a2,a4,a7
   15142:	fff74713          	not	a4,a4
   15146:	8f71                	and	a4,a4,a2
   15148:	01077733          	and	a4,a4,a6
   1514c:	ff4d                	bnez	a4,15106 <memchr+0x3a>
   1514e:	17e1                	addi	a5,a5,-8
   15150:	0521                	addi	a0,a0,8
   15152:	fef364e3          	bltu	t1,a5,1513a <memchr+0x6e>
   15156:	fbc5                	bnez	a5,15106 <memchr+0x3a>
   15158:	b76d                	j	15102 <memchr+0x36>

000000000001515a <__malloc_lock>:
   1515a:	8082                	ret

000000000001515c <__malloc_unlock>:
   1515c:	8082                	ret

000000000001515e <_Balloc>:
   1515e:	7d3c                	ld	a5,120(a0)
   15160:	1101                	addi	sp,sp,-32
   15162:	e822                	sd	s0,16(sp)
   15164:	e426                	sd	s1,8(sp)
   15166:	ec06                	sd	ra,24(sp)
   15168:	e04a                	sd	s2,0(sp)
   1516a:	842a                	mv	s0,a0
   1516c:	84ae                	mv	s1,a1
   1516e:	c385                	beqz	a5,1518e <_Balloc+0x30>
   15170:	00349713          	slli	a4,s1,0x3
   15174:	97ba                	add	a5,a5,a4
   15176:	6388                	ld	a0,0(a5)
   15178:	c50d                	beqz	a0,151a2 <_Balloc+0x44>
   1517a:	6118                	ld	a4,0(a0)
   1517c:	e398                	sd	a4,0(a5)
   1517e:	00053823          	sd	zero,16(a0)
   15182:	60e2                	ld	ra,24(sp)
   15184:	6442                	ld	s0,16(sp)
   15186:	64a2                	ld	s1,8(sp)
   15188:	6902                	ld	s2,0(sp)
   1518a:	6105                	addi	sp,sp,32
   1518c:	8082                	ret
   1518e:	04100613          	li	a2,65
   15192:	45a1                	li	a1,8
   15194:	105030ef          	jal	ra,18a98 <_calloc_r>
   15198:	fc28                	sd	a0,120(s0)
   1519a:	87aa                	mv	a5,a0
   1519c:	f971                	bnez	a0,15170 <_Balloc+0x12>
   1519e:	4501                	li	a0,0
   151a0:	b7cd                	j	15182 <_Balloc+0x24>
   151a2:	4905                	li	s2,1
   151a4:	0099163b          	sllw	a2,s2,s1
   151a8:	8932                	mv	s2,a2
   151aa:	061d                	addi	a2,a2,7
   151ac:	060a                	slli	a2,a2,0x2
   151ae:	4585                	li	a1,1
   151b0:	8522                	mv	a0,s0
   151b2:	0e7030ef          	jal	ra,18a98 <_calloc_r>
   151b6:	d565                	beqz	a0,1519e <_Balloc+0x40>
   151b8:	c504                	sw	s1,8(a0)
   151ba:	01252623          	sw	s2,12(a0)
   151be:	b7c1                	j	1517e <_Balloc+0x20>

00000000000151c0 <_Bfree>:
   151c0:	c981                	beqz	a1,151d0 <_Bfree+0x10>
   151c2:	4598                	lw	a4,8(a1)
   151c4:	7d3c                	ld	a5,120(a0)
   151c6:	070e                	slli	a4,a4,0x3
   151c8:	97ba                	add	a5,a5,a4
   151ca:	6398                	ld	a4,0(a5)
   151cc:	e198                	sd	a4,0(a1)
   151ce:	e38c                	sd	a1,0(a5)
   151d0:	8082                	ret

00000000000151d2 <__multadd>:
   151d2:	7179                	addi	sp,sp,-48
   151d4:	ec26                	sd	s1,24(sp)
   151d6:	49c4                	lw	s1,20(a1)
   151d8:	6341                	lui	t1,0x10
   151da:	f022                	sd	s0,32(sp)
   151dc:	e84a                	sd	s2,16(sp)
   151de:	e44e                	sd	s3,8(sp)
   151e0:	f406                	sd	ra,40(sp)
   151e2:	e052                	sd	s4,0(sp)
   151e4:	892e                	mv	s2,a1
   151e6:	89aa                	mv	s3,a0
   151e8:	8436                	mv	s0,a3
   151ea:	01858813          	addi	a6,a1,24
   151ee:	4881                	li	a7,0
   151f0:	137d                	addi	t1,t1,-1
   151f2:	00082783          	lw	a5,0(a6)
   151f6:	0811                	addi	a6,a6,4
   151f8:	2885                	addiw	a7,a7,1
   151fa:	0067f733          	and	a4,a5,t1
   151fe:	02c7073b          	mulw	a4,a4,a2
   15202:	0107d69b          	srliw	a3,a5,0x10
   15206:	02c686bb          	mulw	a3,a3,a2
   1520a:	008707bb          	addw	a5,a4,s0
   1520e:	0107d71b          	srliw	a4,a5,0x10
   15212:	00f377b3          	and	a5,t1,a5
   15216:	9eb9                	addw	a3,a3,a4
   15218:	0106971b          	slliw	a4,a3,0x10
   1521c:	9fb9                	addw	a5,a5,a4
   1521e:	fef82e23          	sw	a5,-4(a6)
   15222:	0106d41b          	srliw	s0,a3,0x10
   15226:	fc98c6e3          	blt	a7,s1,151f2 <__multadd+0x20>
   1522a:	cc09                	beqz	s0,15244 <__multadd+0x72>
   1522c:	00c92783          	lw	a5,12(s2)
   15230:	02f4d363          	bge	s1,a5,15256 <__multadd+0x84>
   15234:	00448793          	addi	a5,s1,4
   15238:	078a                	slli	a5,a5,0x2
   1523a:	97ca                	add	a5,a5,s2
   1523c:	c780                	sw	s0,8(a5)
   1523e:	2485                	addiw	s1,s1,1
   15240:	00992a23          	sw	s1,20(s2)
   15244:	70a2                	ld	ra,40(sp)
   15246:	7402                	ld	s0,32(sp)
   15248:	64e2                	ld	s1,24(sp)
   1524a:	69a2                	ld	s3,8(sp)
   1524c:	6a02                	ld	s4,0(sp)
   1524e:	854a                	mv	a0,s2
   15250:	6942                	ld	s2,16(sp)
   15252:	6145                	addi	sp,sp,48
   15254:	8082                	ret
   15256:	00892583          	lw	a1,8(s2)
   1525a:	854e                	mv	a0,s3
   1525c:	2585                	addiw	a1,a1,1
   1525e:	f01ff0ef          	jal	ra,1515e <_Balloc>
   15262:	8a2a                	mv	s4,a0
   15264:	cd1d                	beqz	a0,152a2 <__multadd+0xd0>
   15266:	01492603          	lw	a2,20(s2)
   1526a:	01090593          	addi	a1,s2,16
   1526e:	0541                	addi	a0,a0,16
   15270:	0609                	addi	a2,a2,2
   15272:	060a                	slli	a2,a2,0x2
   15274:	002040ef          	jal	ra,19276 <memcpy>
   15278:	00892703          	lw	a4,8(s2)
   1527c:	0789b783          	ld	a5,120(s3)
   15280:	070e                	slli	a4,a4,0x3
   15282:	97ba                	add	a5,a5,a4
   15284:	6398                	ld	a4,0(a5)
   15286:	00e93023          	sd	a4,0(s2)
   1528a:	0127b023          	sd	s2,0(a5)
   1528e:	00448793          	addi	a5,s1,4
   15292:	8952                	mv	s2,s4
   15294:	078a                	slli	a5,a5,0x2
   15296:	97ca                	add	a5,a5,s2
   15298:	c780                	sw	s0,8(a5)
   1529a:	2485                	addiw	s1,s1,1
   1529c:	00992a23          	sw	s1,20(s2)
   152a0:	b755                	j	15244 <__multadd+0x72>
   152a2:	66f1                	lui	a3,0x1c
   152a4:	6575                	lui	a0,0x1d
   152a6:	55068693          	addi	a3,a3,1360 # 1c550 <zeroes.0+0x78>
   152aa:	4601                	li	a2,0
   152ac:	0b500593          	li	a1,181
   152b0:	84050513          	addi	a0,a0,-1984 # 1c840 <bmask+0x28>
   152b4:	79c030ef          	jal	ra,18a50 <__assert_func>

00000000000152b8 <__s2b>:
   152b8:	7139                	addi	sp,sp,-64
   152ba:	f822                	sd	s0,48(sp)
   152bc:	f426                	sd	s1,40(sp)
   152be:	f04a                	sd	s2,32(sp)
   152c0:	ec4e                	sd	s3,24(sp)
   152c2:	e852                	sd	s4,16(sp)
   152c4:	84b6                	mv	s1,a3
   152c6:	842e                	mv	s0,a1
   152c8:	26a1                	addiw	a3,a3,8
   152ca:	45a5                	li	a1,9
   152cc:	fc06                	sd	ra,56(sp)
   152ce:	e456                	sd	s5,8(sp)
   152d0:	e05a                	sd	s6,0(sp)
   152d2:	47a5                	li	a5,9
   152d4:	02b6c6bb          	divw	a3,a3,a1
   152d8:	892a                	mv	s2,a0
   152da:	89b2                	mv	s3,a2
   152dc:	8a3a                	mv	s4,a4
   152de:	0a97d363          	bge	a5,s1,15384 <__s2b+0xcc>
   152e2:	4785                	li	a5,1
   152e4:	4581                	li	a1,0
   152e6:	0017979b          	slliw	a5,a5,0x1
   152ea:	2585                	addiw	a1,a1,1
   152ec:	fed7cde3          	blt	a5,a3,152e6 <__s2b+0x2e>
   152f0:	854a                	mv	a0,s2
   152f2:	e6dff0ef          	jal	ra,1515e <_Balloc>
   152f6:	85aa                	mv	a1,a0
   152f8:	c941                	beqz	a0,15388 <__s2b+0xd0>
   152fa:	4785                	li	a5,1
   152fc:	c95c                	sw	a5,20(a0)
   152fe:	01452c23          	sw	s4,24(a0)
   15302:	47a5                	li	a5,9
   15304:	0737dd63          	bge	a5,s3,1537e <__s2b+0xc6>
   15308:	02099793          	slli	a5,s3,0x20
   1530c:	00940b13          	addi	s6,s0,9
   15310:	9381                	srli	a5,a5,0x20
   15312:	00098a9b          	sext.w	s5,s3
   15316:	943e                	add	s0,s0,a5
   15318:	8a5a                	mv	s4,s6
   1531a:	000a4683          	lbu	a3,0(s4)
   1531e:	4629                	li	a2,10
   15320:	854a                	mv	a0,s2
   15322:	fd06869b          	addiw	a3,a3,-48
   15326:	eadff0ef          	jal	ra,151d2 <__multadd>
   1532a:	0a05                	addi	s4,s4,1
   1532c:	85aa                	mv	a1,a0
   1532e:	fe8a16e3          	bne	s4,s0,1531a <__s2b+0x62>
   15332:	3ae1                	addiw	s5,s5,-8
   15334:	1a82                	slli	s5,s5,0x20
   15336:	020ada93          	srli	s5,s5,0x20
   1533a:	015b0433          	add	s0,s6,s5
   1533e:	0299d563          	bge	s3,s1,15368 <__s2b+0xb0>
   15342:	34fd                	addiw	s1,s1,-1
   15344:	413484bb          	subw	s1,s1,s3
   15348:	1482                	slli	s1,s1,0x20
   1534a:	9081                	srli	s1,s1,0x20
   1534c:	0485                	addi	s1,s1,1
   1534e:	94a2                	add	s1,s1,s0
   15350:	00044683          	lbu	a3,0(s0)
   15354:	4629                	li	a2,10
   15356:	854a                	mv	a0,s2
   15358:	fd06869b          	addiw	a3,a3,-48
   1535c:	e77ff0ef          	jal	ra,151d2 <__multadd>
   15360:	0405                	addi	s0,s0,1
   15362:	85aa                	mv	a1,a0
   15364:	fe9416e3          	bne	s0,s1,15350 <__s2b+0x98>
   15368:	70e2                	ld	ra,56(sp)
   1536a:	7442                	ld	s0,48(sp)
   1536c:	74a2                	ld	s1,40(sp)
   1536e:	7902                	ld	s2,32(sp)
   15370:	69e2                	ld	s3,24(sp)
   15372:	6a42                	ld	s4,16(sp)
   15374:	6aa2                	ld	s5,8(sp)
   15376:	6b02                	ld	s6,0(sp)
   15378:	852e                	mv	a0,a1
   1537a:	6121                	addi	sp,sp,64
   1537c:	8082                	ret
   1537e:	0429                	addi	s0,s0,10
   15380:	49a5                	li	s3,9
   15382:	bf75                	j	1533e <__s2b+0x86>
   15384:	4581                	li	a1,0
   15386:	b7ad                	j	152f0 <__s2b+0x38>
   15388:	66f1                	lui	a3,0x1c
   1538a:	6575                	lui	a0,0x1d
   1538c:	55068693          	addi	a3,a3,1360 # 1c550 <zeroes.0+0x78>
   15390:	4601                	li	a2,0
   15392:	0ce00593          	li	a1,206
   15396:	84050513          	addi	a0,a0,-1984 # 1c840 <bmask+0x28>
   1539a:	6b6030ef          	jal	ra,18a50 <__assert_func>

000000000001539e <__hi0bits>:
   1539e:	7741                	lui	a4,0xffff0
   153a0:	8f69                	and	a4,a4,a0
   153a2:	87aa                	mv	a5,a0
   153a4:	4501                	li	a0,0
   153a6:	e701                	bnez	a4,153ae <__hi0bits+0x10>
   153a8:	0107979b          	slliw	a5,a5,0x10
   153ac:	4541                	li	a0,16
   153ae:	ff000737          	lui	a4,0xff000
   153b2:	8f7d                	and	a4,a4,a5
   153b4:	e701                	bnez	a4,153bc <__hi0bits+0x1e>
   153b6:	0087979b          	slliw	a5,a5,0x8
   153ba:	2521                	addiw	a0,a0,8
   153bc:	f0000737          	lui	a4,0xf0000
   153c0:	8f7d                	and	a4,a4,a5
   153c2:	e701                	bnez	a4,153ca <__hi0bits+0x2c>
   153c4:	0047979b          	slliw	a5,a5,0x4
   153c8:	2511                	addiw	a0,a0,4
   153ca:	c0000737          	lui	a4,0xc0000
   153ce:	8f7d                	and	a4,a4,a5
   153d0:	e701                	bnez	a4,153d8 <__hi0bits+0x3a>
   153d2:	0027979b          	slliw	a5,a5,0x2
   153d6:	2509                	addiw	a0,a0,2
   153d8:	0007c663          	bltz	a5,153e4 <__hi0bits+0x46>
   153dc:	83f9                	srli	a5,a5,0x1e
   153de:	8b85                	andi	a5,a5,1
   153e0:	2505                	addiw	a0,a0,1
   153e2:	c391                	beqz	a5,153e6 <__hi0bits+0x48>
   153e4:	8082                	ret
   153e6:	02000513          	li	a0,32
   153ea:	8082                	ret

00000000000153ec <__lo0bits>:
   153ec:	411c                	lw	a5,0(a0)
   153ee:	872a                	mv	a4,a0
   153f0:	0077f693          	andi	a3,a5,7
   153f4:	863e                	mv	a2,a5
   153f6:	ce81                	beqz	a3,1540e <__lo0bits+0x22>
   153f8:	0017f693          	andi	a3,a5,1
   153fc:	4501                	li	a0,0
   153fe:	ee9d                	bnez	a3,1543c <__lo0bits+0x50>
   15400:	8a09                	andi	a2,a2,2
   15402:	ce25                	beqz	a2,1547a <__lo0bits+0x8e>
   15404:	0017d79b          	srliw	a5,a5,0x1
   15408:	c31c                	sw	a5,0(a4)
   1540a:	4505                	li	a0,1
   1540c:	8082                	ret
   1540e:	03079693          	slli	a3,a5,0x30
   15412:	92c1                	srli	a3,a3,0x30
   15414:	4501                	li	a0,0
   15416:	cab9                	beqz	a3,1546c <__lo0bits+0x80>
   15418:	0ff7f693          	zext.b	a3,a5
   1541c:	c2a9                	beqz	a3,1545e <__lo0bits+0x72>
   1541e:	00f7f693          	andi	a3,a5,15
   15422:	c69d                	beqz	a3,15450 <__lo0bits+0x64>
   15424:	0037f693          	andi	a3,a5,3
   15428:	ce89                	beqz	a3,15442 <__lo0bits+0x56>
   1542a:	0017f693          	andi	a3,a5,1
   1542e:	ea81                	bnez	a3,1543e <__lo0bits+0x52>
   15430:	0017d79b          	srliw	a5,a5,0x1
   15434:	2505                	addiw	a0,a0,1
   15436:	e781                	bnez	a5,1543e <__lo0bits+0x52>
   15438:	02000513          	li	a0,32
   1543c:	8082                	ret
   1543e:	c31c                	sw	a5,0(a4)
   15440:	8082                	ret
   15442:	0027d79b          	srliw	a5,a5,0x2
   15446:	0017f693          	andi	a3,a5,1
   1544a:	2509                	addiw	a0,a0,2
   1544c:	faed                	bnez	a3,1543e <__lo0bits+0x52>
   1544e:	b7cd                	j	15430 <__lo0bits+0x44>
   15450:	0047d79b          	srliw	a5,a5,0x4
   15454:	0037f693          	andi	a3,a5,3
   15458:	2511                	addiw	a0,a0,4
   1545a:	fae1                	bnez	a3,1542a <__lo0bits+0x3e>
   1545c:	b7dd                	j	15442 <__lo0bits+0x56>
   1545e:	0087d79b          	srliw	a5,a5,0x8
   15462:	00f7f693          	andi	a3,a5,15
   15466:	2521                	addiw	a0,a0,8
   15468:	fed5                	bnez	a3,15424 <__lo0bits+0x38>
   1546a:	b7dd                	j	15450 <__lo0bits+0x64>
   1546c:	0107d79b          	srliw	a5,a5,0x10
   15470:	0ff7f693          	zext.b	a3,a5
   15474:	4541                	li	a0,16
   15476:	f6c5                	bnez	a3,1541e <__lo0bits+0x32>
   15478:	b7dd                	j	1545e <__lo0bits+0x72>
   1547a:	0027d79b          	srliw	a5,a5,0x2
   1547e:	c31c                	sw	a5,0(a4)
   15480:	4509                	li	a0,2
   15482:	8082                	ret

0000000000015484 <__i2b>:
   15484:	7d3c                	ld	a5,120(a0)
   15486:	1101                	addi	sp,sp,-32
   15488:	e822                	sd	s0,16(sp)
   1548a:	e426                	sd	s1,8(sp)
   1548c:	ec06                	sd	ra,24(sp)
   1548e:	842a                	mv	s0,a0
   15490:	84ae                	mv	s1,a1
   15492:	cf91                	beqz	a5,154ae <__i2b+0x2a>
   15494:	6788                	ld	a0,8(a5)
   15496:	cd1d                	beqz	a0,154d4 <__i2b+0x50>
   15498:	6118                	ld	a4,0(a0)
   1549a:	e798                	sd	a4,8(a5)
   1549c:	60e2                	ld	ra,24(sp)
   1549e:	6442                	ld	s0,16(sp)
   154a0:	4785                	li	a5,1
   154a2:	1782                	slli	a5,a5,0x20
   154a4:	cd04                	sw	s1,24(a0)
   154a6:	e91c                	sd	a5,16(a0)
   154a8:	64a2                	ld	s1,8(sp)
   154aa:	6105                	addi	sp,sp,32
   154ac:	8082                	ret
   154ae:	04100613          	li	a2,65
   154b2:	45a1                	li	a1,8
   154b4:	5e4030ef          	jal	ra,18a98 <_calloc_r>
   154b8:	fc28                	sd	a0,120(s0)
   154ba:	87aa                	mv	a5,a0
   154bc:	fd61                	bnez	a0,15494 <__i2b+0x10>
   154be:	66f1                	lui	a3,0x1c
   154c0:	6575                	lui	a0,0x1d
   154c2:	55068693          	addi	a3,a3,1360 # 1c550 <zeroes.0+0x78>
   154c6:	4601                	li	a2,0
   154c8:	14000593          	li	a1,320
   154cc:	84050513          	addi	a0,a0,-1984 # 1c840 <bmask+0x28>
   154d0:	580030ef          	jal	ra,18a50 <__assert_func>
   154d4:	02400613          	li	a2,36
   154d8:	4585                	li	a1,1
   154da:	8522                	mv	a0,s0
   154dc:	5bc030ef          	jal	ra,18a98 <_calloc_r>
   154e0:	dd79                	beqz	a0,154be <__i2b+0x3a>
   154e2:	4785                	li	a5,1
   154e4:	1786                	slli	a5,a5,0x21
   154e6:	0785                	addi	a5,a5,1
   154e8:	e51c                	sd	a5,8(a0)
   154ea:	bf4d                	j	1549c <__i2b+0x18>

00000000000154ec <__multiply>:
   154ec:	7179                	addi	sp,sp,-48
   154ee:	e84a                	sd	s2,16(sp)
   154f0:	e44e                	sd	s3,8(sp)
   154f2:	01462903          	lw	s2,20(a2)
   154f6:	0145a983          	lw	s3,20(a1)
   154fa:	ec26                	sd	s1,24(sp)
   154fc:	e052                	sd	s4,0(sp)
   154fe:	f406                	sd	ra,40(sp)
   15500:	f022                	sd	s0,32(sp)
   15502:	8a2e                	mv	s4,a1
   15504:	84b2                	mv	s1,a2
   15506:	0129c763          	blt	s3,s2,15514 <__multiply+0x28>
   1550a:	87ca                	mv	a5,s2
   1550c:	84ae                	mv	s1,a1
   1550e:	894e                	mv	s2,s3
   15510:	8a32                	mv	s4,a2
   15512:	89be                	mv	s3,a5
   15514:	44dc                	lw	a5,12(s1)
   15516:	0139043b          	addw	s0,s2,s3
   1551a:	448c                	lw	a1,8(s1)
   1551c:	0087d363          	bge	a5,s0,15522 <__multiply+0x36>
   15520:	2585                	addiw	a1,a1,1
   15522:	c3dff0ef          	jal	ra,1515e <_Balloc>
   15526:	14050b63          	beqz	a0,1567c <__multiply+0x190>
   1552a:	01850313          	addi	t1,a0,24
   1552e:	00241893          	slli	a7,s0,0x2
   15532:	989a                	add	a7,a7,t1
   15534:	879a                	mv	a5,t1
   15536:	01137763          	bgeu	t1,a7,15544 <__multiply+0x58>
   1553a:	0007a023          	sw	zero,0(a5)
   1553e:	0791                	addi	a5,a5,4
   15540:	ff17ede3          	bltu	a5,a7,1553a <__multiply+0x4e>
   15544:	018a0813          	addi	a6,s4,24
   15548:	00299e13          	slli	t3,s3,0x2
   1554c:	01848e93          	addi	t4,s1,24
   15550:	00291593          	slli	a1,s2,0x2
   15554:	9e42                	add	t3,t3,a6
   15556:	95f6                	add	a1,a1,t4
   15558:	0fc87963          	bgeu	a6,t3,1564a <__multiply+0x15e>
   1555c:	01948793          	addi	a5,s1,25
   15560:	4f11                	li	t5,4
   15562:	10f5f663          	bgeu	a1,a5,1566e <__multiply+0x182>
   15566:	66c1                	lui	a3,0x10
   15568:	16fd                	addi	a3,a3,-1
   1556a:	a809                	j	1557c <__multiply+0x90>
   1556c:	0102d29b          	srliw	t0,t0,0x10
   15570:	06029b63          	bnez	t0,155e6 <__multiply+0xfa>
   15574:	0811                	addi	a6,a6,4
   15576:	0311                	addi	t1,t1,4
   15578:	0dc87963          	bgeu	a6,t3,1564a <__multiply+0x15e>
   1557c:	00082283          	lw	t0,0(a6)
   15580:	00d2f3b3          	and	t2,t0,a3
   15584:	fe0384e3          	beqz	t2,1556c <__multiply+0x80>
   15588:	829a                	mv	t0,t1
   1558a:	8ff6                	mv	t6,t4
   1558c:	4481                	li	s1,0
   1558e:	000fa703          	lw	a4,0(t6)
   15592:	0002a603          	lw	a2,0(t0) # 10282 <memset+0x90>
   15596:	0291                	addi	t0,t0,4
   15598:	00d777b3          	and	a5,a4,a3
   1559c:	027787bb          	mulw	a5,a5,t2
   155a0:	0107571b          	srliw	a4,a4,0x10
   155a4:	00d67933          	and	s2,a2,a3
   155a8:	0106561b          	srliw	a2,a2,0x10
   155ac:	0f91                	addi	t6,t6,4
   155ae:	0277073b          	mulw	a4,a4,t2
   155b2:	012787bb          	addw	a5,a5,s2
   155b6:	9fa5                	addw	a5,a5,s1
   155b8:	0107d49b          	srliw	s1,a5,0x10
   155bc:	8ff5                	and	a5,a5,a3
   155be:	9f31                	addw	a4,a4,a2
   155c0:	9f25                	addw	a4,a4,s1
   155c2:	0107161b          	slliw	a2,a4,0x10
   155c6:	8fd1                	or	a5,a5,a2
   155c8:	fef2ae23          	sw	a5,-4(t0)
   155cc:	0107549b          	srliw	s1,a4,0x10
   155d0:	fabfefe3          	bltu	t6,a1,1558e <__multiply+0xa2>
   155d4:	01e307b3          	add	a5,t1,t5
   155d8:	c384                	sw	s1,0(a5)
   155da:	00082283          	lw	t0,0(a6)
   155de:	0102d29b          	srliw	t0,t0,0x10
   155e2:	f80289e3          	beqz	t0,15574 <__multiply+0x88>
   155e6:	00032603          	lw	a2,0(t1) # 10000 <register_fini-0xb0>
   155ea:	839a                	mv	t2,t1
   155ec:	8ff6                	mv	t6,t4
   155ee:	84b2                	mv	s1,a2
   155f0:	4701                	li	a4,0
   155f2:	000fa783          	lw	a5,0(t6)
   155f6:	0104d99b          	srliw	s3,s1,0x10
   155fa:	8e75                	and	a2,a2,a3
   155fc:	8ff5                	and	a5,a5,a3
   155fe:	025787bb          	mulw	a5,a5,t0
   15602:	0043a483          	lw	s1,4(t2)
   15606:	0391                	addi	t2,t2,4
   15608:	0f91                	addi	t6,t6,4
   1560a:	00d4f933          	and	s2,s1,a3
   1560e:	013787bb          	addw	a5,a5,s3
   15612:	9fb9                	addw	a5,a5,a4
   15614:	0107971b          	slliw	a4,a5,0x10
   15618:	8e59                	or	a2,a2,a4
   1561a:	fec3ae23          	sw	a2,-4(t2)
   1561e:	ffefd703          	lhu	a4,-2(t6)
   15622:	0107d79b          	srliw	a5,a5,0x10
   15626:	0257073b          	mulw	a4,a4,t0
   1562a:	0127073b          	addw	a4,a4,s2
   1562e:	9fb9                	addw	a5,a5,a4
   15630:	0007861b          	sext.w	a2,a5
   15634:	0107d71b          	srliw	a4,a5,0x10
   15638:	fabfede3          	bltu	t6,a1,155f2 <__multiply+0x106>
   1563c:	01e307b3          	add	a5,t1,t5
   15640:	c390                	sw	a2,0(a5)
   15642:	0811                	addi	a6,a6,4
   15644:	0311                	addi	t1,t1,4
   15646:	f3c86be3          	bltu	a6,t3,1557c <__multiply+0x90>
   1564a:	00804563          	bgtz	s0,15654 <__multiply+0x168>
   1564e:	a039                	j	1565c <__multiply+0x170>
   15650:	347d                	addiw	s0,s0,-1
   15652:	c409                	beqz	s0,1565c <__multiply+0x170>
   15654:	ffc8a783          	lw	a5,-4(a7)
   15658:	18f1                	addi	a7,a7,-4
   1565a:	dbfd                	beqz	a5,15650 <__multiply+0x164>
   1565c:	70a2                	ld	ra,40(sp)
   1565e:	c940                	sw	s0,20(a0)
   15660:	7402                	ld	s0,32(sp)
   15662:	64e2                	ld	s1,24(sp)
   15664:	6942                	ld	s2,16(sp)
   15666:	69a2                	ld	s3,8(sp)
   15668:	6a02                	ld	s4,0(sp)
   1566a:	6145                	addi	sp,sp,48
   1566c:	8082                	ret
   1566e:	409587b3          	sub	a5,a1,s1
   15672:	179d                	addi	a5,a5,-25
   15674:	9bf1                	andi	a5,a5,-4
   15676:	00478f13          	addi	t5,a5,4
   1567a:	b5f5                	j	15566 <__multiply+0x7a>
   1567c:	66f1                	lui	a3,0x1c
   1567e:	6575                	lui	a0,0x1d
   15680:	55068693          	addi	a3,a3,1360 # 1c550 <zeroes.0+0x78>
   15684:	4601                	li	a2,0
   15686:	15d00593          	li	a1,349
   1568a:	84050513          	addi	a0,a0,-1984 # 1c840 <bmask+0x28>
   1568e:	3c2030ef          	jal	ra,18a50 <__assert_func>

0000000000015692 <__pow5mult>:
   15692:	7179                	addi	sp,sp,-48
   15694:	f022                	sd	s0,32(sp)
   15696:	e84a                	sd	s2,16(sp)
   15698:	e44e                	sd	s3,8(sp)
   1569a:	f406                	sd	ra,40(sp)
   1569c:	ec26                	sd	s1,24(sp)
   1569e:	00367793          	andi	a5,a2,3
   156a2:	8432                	mv	s0,a2
   156a4:	89aa                	mv	s3,a0
   156a6:	892e                	mv	s2,a1
   156a8:	ebb5                	bnez	a5,1571c <__pow5mult+0x8a>
   156aa:	8409                	srai	s0,s0,0x2
   156ac:	c421                	beqz	s0,156f4 <__pow5mult+0x62>
   156ae:	0709b483          	ld	s1,112(s3)
   156b2:	c0c9                	beqz	s1,15734 <__pow5mult+0xa2>
   156b4:	00147793          	andi	a5,s0,1
   156b8:	eb89                	bnez	a5,156ca <__pow5mult+0x38>
   156ba:	8405                	srai	s0,s0,0x1
   156bc:	cc05                	beqz	s0,156f4 <__pow5mult+0x62>
   156be:	6088                	ld	a0,0(s1)
   156c0:	c131                	beqz	a0,15704 <__pow5mult+0x72>
   156c2:	84aa                	mv	s1,a0
   156c4:	00147793          	andi	a5,s0,1
   156c8:	dbed                	beqz	a5,156ba <__pow5mult+0x28>
   156ca:	8626                	mv	a2,s1
   156cc:	85ca                	mv	a1,s2
   156ce:	854e                	mv	a0,s3
   156d0:	e1dff0ef          	jal	ra,154ec <__multiply>
   156d4:	04090263          	beqz	s2,15718 <__pow5mult+0x86>
   156d8:	00892703          	lw	a4,8(s2)
   156dc:	0789b783          	ld	a5,120(s3)
   156e0:	8405                	srai	s0,s0,0x1
   156e2:	070e                	slli	a4,a4,0x3
   156e4:	97ba                	add	a5,a5,a4
   156e6:	6398                	ld	a4,0(a5)
   156e8:	00e93023          	sd	a4,0(s2)
   156ec:	0127b023          	sd	s2,0(a5)
   156f0:	892a                	mv	s2,a0
   156f2:	f471                	bnez	s0,156be <__pow5mult+0x2c>
   156f4:	70a2                	ld	ra,40(sp)
   156f6:	7402                	ld	s0,32(sp)
   156f8:	64e2                	ld	s1,24(sp)
   156fa:	69a2                	ld	s3,8(sp)
   156fc:	854a                	mv	a0,s2
   156fe:	6942                	ld	s2,16(sp)
   15700:	6145                	addi	sp,sp,48
   15702:	8082                	ret
   15704:	8626                	mv	a2,s1
   15706:	85a6                	mv	a1,s1
   15708:	854e                	mv	a0,s3
   1570a:	de3ff0ef          	jal	ra,154ec <__multiply>
   1570e:	e088                	sd	a0,0(s1)
   15710:	00053023          	sd	zero,0(a0)
   15714:	84aa                	mv	s1,a0
   15716:	b77d                	j	156c4 <__pow5mult+0x32>
   15718:	892a                	mv	s2,a0
   1571a:	b745                	j	156ba <__pow5mult+0x28>
   1571c:	37fd                	addiw	a5,a5,-1
   1571e:	6775                	lui	a4,0x1d
   15720:	8a870713          	addi	a4,a4,-1880 # 1c8a8 <p05.0>
   15724:	078a                	slli	a5,a5,0x2
   15726:	97ba                	add	a5,a5,a4
   15728:	4390                	lw	a2,0(a5)
   1572a:	4681                	li	a3,0
   1572c:	aa7ff0ef          	jal	ra,151d2 <__multadd>
   15730:	892a                	mv	s2,a0
   15732:	bfa5                	j	156aa <__pow5mult+0x18>
   15734:	4585                	li	a1,1
   15736:	854e                	mv	a0,s3
   15738:	a27ff0ef          	jal	ra,1515e <_Balloc>
   1573c:	84aa                	mv	s1,a0
   1573e:	c919                	beqz	a0,15754 <__pow5mult+0xc2>
   15740:	27100793          	li	a5,625
   15744:	cd1c                	sw	a5,24(a0)
   15746:	4785                	li	a5,1
   15748:	c95c                	sw	a5,20(a0)
   1574a:	06a9b823          	sd	a0,112(s3)
   1574e:	00053023          	sd	zero,0(a0)
   15752:	b78d                	j	156b4 <__pow5mult+0x22>
   15754:	66f1                	lui	a3,0x1c
   15756:	6575                	lui	a0,0x1d
   15758:	55068693          	addi	a3,a3,1360 # 1c550 <zeroes.0+0x78>
   1575c:	4601                	li	a2,0
   1575e:	14000593          	li	a1,320
   15762:	84050513          	addi	a0,a0,-1984 # 1c840 <bmask+0x28>
   15766:	2ea030ef          	jal	ra,18a50 <__assert_func>

000000000001576a <__lshift>:
   1576a:	7139                	addi	sp,sp,-64
   1576c:	f04a                	sd	s2,32(sp)
   1576e:	0145a903          	lw	s2,20(a1)
   15772:	45dc                	lw	a5,12(a1)
   15774:	e456                	sd	s5,8(sp)
   15776:	40565a9b          	sraiw	s5,a2,0x5
   1577a:	012a893b          	addw	s2,s5,s2
   1577e:	f822                	sd	s0,48(sp)
   15780:	f426                	sd	s1,40(sp)
   15782:	ec4e                	sd	s3,24(sp)
   15784:	e852                	sd	s4,16(sp)
   15786:	e05a                	sd	s6,0(sp)
   15788:	fc06                	sd	ra,56(sp)
   1578a:	0019049b          	addiw	s1,s2,1
   1578e:	842e                	mv	s0,a1
   15790:	8a32                	mv	s4,a2
   15792:	458c                	lw	a1,8(a1)
   15794:	89aa                	mv	s3,a0
   15796:	40565b13          	srai	s6,a2,0x5
   1579a:	0097d763          	bge	a5,s1,157a8 <__lshift+0x3e>
   1579e:	0017979b          	slliw	a5,a5,0x1
   157a2:	2585                	addiw	a1,a1,1
   157a4:	fe97cde3          	blt	a5,s1,1579e <__lshift+0x34>
   157a8:	854e                	mv	a0,s3
   157aa:	9b5ff0ef          	jal	ra,1515e <_Balloc>
   157ae:	c969                	beqz	a0,15880 <__lshift+0x116>
   157b0:	01850693          	addi	a3,a0,24
   157b4:	03605563          	blez	s6,157de <__lshift+0x74>
   157b8:	fffa871b          	addiw	a4,s5,-1
   157bc:	02071793          	slli	a5,a4,0x20
   157c0:	01e7d713          	srli	a4,a5,0x1e
   157c4:	0771                	addi	a4,a4,28
   157c6:	972a                	add	a4,a4,a0
   157c8:	87b6                	mv	a5,a3
   157ca:	0791                	addi	a5,a5,4
   157cc:	fe07ae23          	sw	zero,-4(a5)
   157d0:	fee79de3          	bne	a5,a4,157ca <__lshift+0x60>
   157d4:	020a9793          	slli	a5,s5,0x20
   157d8:	01e7da93          	srli	s5,a5,0x1e
   157dc:	96d6                	add	a3,a3,s5
   157de:	01442883          	lw	a7,20(s0)
   157e2:	01840793          	addi	a5,s0,24
   157e6:	01fa7613          	andi	a2,s4,31
   157ea:	088a                	slli	a7,a7,0x2
   157ec:	98be                	add	a7,a7,a5
   157ee:	ca35                	beqz	a2,15862 <__lshift+0xf8>
   157f0:	02000313          	li	t1,32
   157f4:	40c3033b          	subw	t1,t1,a2
   157f8:	85b6                	mv	a1,a3
   157fa:	4701                	li	a4,0
   157fc:	0007a803          	lw	a6,0(a5)
   15800:	0591                	addi	a1,a1,4
   15802:	0791                	addi	a5,a5,4
   15804:	00c8183b          	sllw	a6,a6,a2
   15808:	01076733          	or	a4,a4,a6
   1580c:	fee5ae23          	sw	a4,-4(a1)
   15810:	ffc7a703          	lw	a4,-4(a5)
   15814:	0067573b          	srlw	a4,a4,t1
   15818:	ff17e2e3          	bltu	a5,a7,157fc <__lshift+0x92>
   1581c:	01940793          	addi	a5,s0,25
   15820:	4611                	li	a2,4
   15822:	00f8e863          	bltu	a7,a5,15832 <__lshift+0xc8>
   15826:	408887b3          	sub	a5,a7,s0
   1582a:	179d                	addi	a5,a5,-25
   1582c:	9bf1                	andi	a5,a5,-4
   1582e:	00478613          	addi	a2,a5,4
   15832:	96b2                	add	a3,a3,a2
   15834:	c298                	sw	a4,0(a3)
   15836:	c311                	beqz	a4,1583a <__lshift+0xd0>
   15838:	8926                	mv	s2,s1
   1583a:	4418                	lw	a4,8(s0)
   1583c:	0789b783          	ld	a5,120(s3)
   15840:	01252a23          	sw	s2,20(a0)
   15844:	070e                	slli	a4,a4,0x3
   15846:	97ba                	add	a5,a5,a4
   15848:	6398                	ld	a4,0(a5)
   1584a:	70e2                	ld	ra,56(sp)
   1584c:	74a2                	ld	s1,40(sp)
   1584e:	e018                	sd	a4,0(s0)
   15850:	e380                	sd	s0,0(a5)
   15852:	7442                	ld	s0,48(sp)
   15854:	7902                	ld	s2,32(sp)
   15856:	69e2                	ld	s3,24(sp)
   15858:	6a42                	ld	s4,16(sp)
   1585a:	6aa2                	ld	s5,8(sp)
   1585c:	6b02                	ld	s6,0(sp)
   1585e:	6121                	addi	sp,sp,64
   15860:	8082                	ret
   15862:	4398                	lw	a4,0(a5)
   15864:	0791                	addi	a5,a5,4
   15866:	0691                	addi	a3,a3,4
   15868:	fee6ae23          	sw	a4,-4(a3)
   1586c:	fd17f7e3          	bgeu	a5,a7,1583a <__lshift+0xd0>
   15870:	4398                	lw	a4,0(a5)
   15872:	0791                	addi	a5,a5,4
   15874:	0691                	addi	a3,a3,4
   15876:	fee6ae23          	sw	a4,-4(a3)
   1587a:	ff17e4e3          	bltu	a5,a7,15862 <__lshift+0xf8>
   1587e:	bf75                	j	1583a <__lshift+0xd0>
   15880:	66f1                	lui	a3,0x1c
   15882:	6575                	lui	a0,0x1d
   15884:	55068693          	addi	a3,a3,1360 # 1c550 <zeroes.0+0x78>
   15888:	4601                	li	a2,0
   1588a:	1d900593          	li	a1,473
   1588e:	84050513          	addi	a0,a0,-1984 # 1c840 <bmask+0x28>
   15892:	1be030ef          	jal	ra,18a50 <__assert_func>

0000000000015896 <__mcmp>:
   15896:	49dc                	lw	a5,20(a1)
   15898:	882a                	mv	a6,a0
   1589a:	4948                	lw	a0,20(a0)
   1589c:	9d1d                	subw	a0,a0,a5
   1589e:	e50d                	bnez	a0,158c8 <__mcmp+0x32>
   158a0:	078a                	slli	a5,a5,0x2
   158a2:	0861                	addi	a6,a6,24
   158a4:	05e1                	addi	a1,a1,24
   158a6:	00f80733          	add	a4,a6,a5
   158aa:	97ae                	add	a5,a5,a1
   158ac:	a019                	j	158b2 <__mcmp+0x1c>
   158ae:	00e87d63          	bgeu	a6,a4,158c8 <__mcmp+0x32>
   158b2:	ffc72603          	lw	a2,-4(a4)
   158b6:	ffc7a683          	lw	a3,-4(a5)
   158ba:	1771                	addi	a4,a4,-4
   158bc:	17f1                	addi	a5,a5,-4
   158be:	fed608e3          	beq	a2,a3,158ae <__mcmp+0x18>
   158c2:	557d                	li	a0,-1
   158c4:	00d67363          	bgeu	a2,a3,158ca <__mcmp+0x34>
   158c8:	8082                	ret
   158ca:	4505                	li	a0,1
   158cc:	8082                	ret

00000000000158ce <__mdiff>:
   158ce:	1101                	addi	sp,sp,-32
   158d0:	4a5c                	lw	a5,20(a2)
   158d2:	e04a                	sd	s2,0(sp)
   158d4:	0145a903          	lw	s2,20(a1)
   158d8:	e822                	sd	s0,16(sp)
   158da:	e426                	sd	s1,8(sp)
   158dc:	ec06                	sd	ra,24(sp)
   158de:	40f9093b          	subw	s2,s2,a5
   158e2:	84ae                	mv	s1,a1
   158e4:	8432                	mv	s0,a2
   158e6:	14091163          	bnez	s2,15a28 <__mdiff+0x15a>
   158ea:	00279693          	slli	a3,a5,0x2
   158ee:	05e1                	addi	a1,a1,24
   158f0:	01860713          	addi	a4,a2,24
   158f4:	00d587b3          	add	a5,a1,a3
   158f8:	9736                	add	a4,a4,a3
   158fa:	a019                	j	15900 <__mdiff+0x32>
   158fc:	12f5fa63          	bgeu	a1,a5,15a30 <__mdiff+0x162>
   15900:	ffc7a603          	lw	a2,-4(a5)
   15904:	ffc72683          	lw	a3,-4(a4)
   15908:	17f1                	addi	a5,a5,-4
   1590a:	1771                	addi	a4,a4,-4
   1590c:	fed608e3          	beq	a2,a3,158fc <__mdiff+0x2e>
   15910:	10d66763          	bltu	a2,a3,15a1e <__mdiff+0x150>
   15914:	448c                	lw	a1,8(s1)
   15916:	849ff0ef          	jal	ra,1515e <_Balloc>
   1591a:	12050963          	beqz	a0,15a4c <__mdiff+0x17e>
   1591e:	0144a303          	lw	t1,20(s1)
   15922:	01442f83          	lw	t6,20(s0)
   15926:	04e1                	addi	s1,s1,24
   15928:	00231e13          	slli	t3,t1,0x2
   1592c:	01840813          	addi	a6,s0,24
   15930:	0f8a                	slli	t6,t6,0x2
   15932:	01850593          	addi	a1,a0,24
   15936:	6ec1                	lui	t4,0x10
   15938:	01252823          	sw	s2,16(a0)
   1593c:	9e26                	add	t3,t3,s1
   1593e:	9fc2                	add	t6,t6,a6
   15940:	862e                	mv	a2,a1
   15942:	8f26                	mv	t5,s1
   15944:	4881                	li	a7,0
   15946:	1efd                	addi	t4,t4,-1
   15948:	000f2703          	lw	a4,0(t5)
   1594c:	00082683          	lw	a3,0(a6)
   15950:	0611                	addi	a2,a2,4
   15952:	01d777b3          	and	a5,a4,t4
   15956:	011787bb          	addw	a5,a5,a7
   1595a:	01d6f8b3          	and	a7,a3,t4
   1595e:	411787bb          	subw	a5,a5,a7
   15962:	0106d69b          	srliw	a3,a3,0x10
   15966:	0107571b          	srliw	a4,a4,0x10
   1596a:	9f15                	subw	a4,a4,a3
   1596c:	4107d69b          	sraiw	a3,a5,0x10
   15970:	9f35                	addw	a4,a4,a3
   15972:	0107169b          	slliw	a3,a4,0x10
   15976:	01d7f7b3          	and	a5,a5,t4
   1597a:	8fd5                	or	a5,a5,a3
   1597c:	2781                	sext.w	a5,a5
   1597e:	0811                	addi	a6,a6,4
   15980:	fef62e23          	sw	a5,-4(a2)
   15984:	0f11                	addi	t5,t5,4
   15986:	4107589b          	sraiw	a7,a4,0x10
   1598a:	fbf86fe3          	bltu	a6,t6,15948 <__mdiff+0x7a>
   1598e:	408f86b3          	sub	a3,t6,s0
   15992:	169d                	addi	a3,a3,-25
   15994:	0465                	addi	s0,s0,25
   15996:	8289                	srli	a3,a3,0x2
   15998:	4701                	li	a4,0
   1599a:	008fe463          	bltu	t6,s0,159a2 <__mdiff+0xd4>
   1599e:	00269713          	slli	a4,a3,0x2
   159a2:	972e                	add	a4,a4,a1
   159a4:	4611                	li	a2,4
   159a6:	008fe563          	bltu	t6,s0,159b0 <__mdiff+0xe2>
   159aa:	0685                	addi	a3,a3,1
   159ac:	00269613          	slli	a2,a3,0x2
   159b0:	94b2                	add	s1,s1,a2
   159b2:	00c58eb3          	add	t4,a1,a2
   159b6:	05c4f663          	bgeu	s1,t3,15a02 <__mdiff+0x134>
   159ba:	65c1                	lui	a1,0x10
   159bc:	8676                	mv	a2,t4
   159be:	86a6                	mv	a3,s1
   159c0:	15fd                	addi	a1,a1,-1
   159c2:	4298                	lw	a4,0(a3)
   159c4:	0611                	addi	a2,a2,4
   159c6:	0691                	addi	a3,a3,4
   159c8:	00b777b3          	and	a5,a4,a1
   159cc:	011787bb          	addw	a5,a5,a7
   159d0:	4107d81b          	sraiw	a6,a5,0x10
   159d4:	0107571b          	srliw	a4,a4,0x10
   159d8:	0107073b          	addw	a4,a4,a6
   159dc:	0107181b          	slliw	a6,a4,0x10
   159e0:	8fed                	and	a5,a5,a1
   159e2:	0107e7b3          	or	a5,a5,a6
   159e6:	2781                	sext.w	a5,a5
   159e8:	fef62e23          	sw	a5,-4(a2)
   159ec:	4107589b          	sraiw	a7,a4,0x10
   159f0:	fdc6e9e3          	bltu	a3,t3,159c2 <__mdiff+0xf4>
   159f4:	1e7d                	addi	t3,t3,-1
   159f6:	409e0e33          	sub	t3,t3,s1
   159fa:	ffce7e13          	andi	t3,t3,-4
   159fe:	01ce8733          	add	a4,t4,t3
   15a02:	e791                	bnez	a5,15a0e <__mdiff+0x140>
   15a04:	ffc72783          	lw	a5,-4(a4)
   15a08:	337d                	addiw	t1,t1,-1
   15a0a:	1771                	addi	a4,a4,-4
   15a0c:	dfe5                	beqz	a5,15a04 <__mdiff+0x136>
   15a0e:	60e2                	ld	ra,24(sp)
   15a10:	6442                	ld	s0,16(sp)
   15a12:	00652a23          	sw	t1,20(a0)
   15a16:	64a2                	ld	s1,8(sp)
   15a18:	6902                	ld	s2,0(sp)
   15a1a:	6105                	addi	sp,sp,32
   15a1c:	8082                	ret
   15a1e:	87a6                	mv	a5,s1
   15a20:	4905                	li	s2,1
   15a22:	84a2                	mv	s1,s0
   15a24:	843e                	mv	s0,a5
   15a26:	b5fd                	j	15914 <__mdiff+0x46>
   15a28:	fe094be3          	bltz	s2,15a1e <__mdiff+0x150>
   15a2c:	4901                	li	s2,0
   15a2e:	b5dd                	j	15914 <__mdiff+0x46>
   15a30:	4581                	li	a1,0
   15a32:	f2cff0ef          	jal	ra,1515e <_Balloc>
   15a36:	c515                	beqz	a0,15a62 <__mdiff+0x194>
   15a38:	60e2                	ld	ra,24(sp)
   15a3a:	6442                	ld	s0,16(sp)
   15a3c:	4785                	li	a5,1
   15a3e:	c95c                	sw	a5,20(a0)
   15a40:	00052c23          	sw	zero,24(a0)
   15a44:	64a2                	ld	s1,8(sp)
   15a46:	6902                	ld	s2,0(sp)
   15a48:	6105                	addi	sp,sp,32
   15a4a:	8082                	ret
   15a4c:	66f1                	lui	a3,0x1c
   15a4e:	6575                	lui	a0,0x1d
   15a50:	55068693          	addi	a3,a3,1360 # 1c550 <zeroes.0+0x78>
   15a54:	4601                	li	a2,0
   15a56:	24000593          	li	a1,576
   15a5a:	84050513          	addi	a0,a0,-1984 # 1c840 <bmask+0x28>
   15a5e:	7f3020ef          	jal	ra,18a50 <__assert_func>
   15a62:	66f1                	lui	a3,0x1c
   15a64:	6575                	lui	a0,0x1d
   15a66:	55068693          	addi	a3,a3,1360 # 1c550 <zeroes.0+0x78>
   15a6a:	4601                	li	a2,0
   15a6c:	23200593          	li	a1,562
   15a70:	84050513          	addi	a0,a0,-1984 # 1c840 <bmask+0x28>
   15a74:	7dd020ef          	jal	ra,18a50 <__assert_func>

0000000000015a78 <__ulp>:
   15a78:	e20507d3          	fmv.x.d	a5,fa0
   15a7c:	7ff00737          	lui	a4,0x7ff00
   15a80:	4681                	li	a3,0
   15a82:	9381                	srli	a5,a5,0x20
   15a84:	8ff9                	and	a5,a5,a4
   15a86:	fcc00737          	lui	a4,0xfcc00
   15a8a:	9fb9                	addw	a5,a5,a4
   15a8c:	00f05963          	blez	a5,15a9e <__ulp+0x26>
   15a90:	1682                	slli	a3,a3,0x20
   15a92:	9281                	srli	a3,a3,0x20
   15a94:	1782                	slli	a5,a5,0x20
   15a96:	8fd5                	or	a5,a5,a3
   15a98:	f2078553          	fmv.d.x	fa0,a5
   15a9c:	8082                	ret
   15a9e:	40f0073b          	negw	a4,a5
   15aa2:	4147569b          	sraiw	a3,a4,0x14
   15aa6:	47cd                	li	a5,19
   15aa8:	00d7ce63          	blt	a5,a3,15ac4 <__ulp+0x4c>
   15aac:	000807b7          	lui	a5,0x80
   15ab0:	40d7d7bb          	sraw	a5,a5,a3
   15ab4:	4681                	li	a3,0
   15ab6:	1682                	slli	a3,a3,0x20
   15ab8:	9281                	srli	a3,a3,0x20
   15aba:	1782                	slli	a5,a5,0x20
   15abc:	8fd5                	or	a5,a5,a3
   15abe:	f2078553          	fmv.d.x	fa0,a5
   15ac2:	8082                	ret
   15ac4:	fec6871b          	addiw	a4,a3,-20
   15ac8:	47f9                	li	a5,30
   15aca:	4685                	li	a3,1
   15acc:	00e7c663          	blt	a5,a4,15ad8 <__ulp+0x60>
   15ad0:	800006b7          	lui	a3,0x80000
   15ad4:	00e6d6bb          	srlw	a3,a3,a4
   15ad8:	4781                	li	a5,0
   15ada:	1682                	slli	a3,a3,0x20
   15adc:	9281                	srli	a3,a3,0x20
   15ade:	1782                	slli	a5,a5,0x20
   15ae0:	8fd5                	or	a5,a5,a3
   15ae2:	f2078553          	fmv.d.x	fa0,a5
   15ae6:	8082                	ret

0000000000015ae8 <__b2d>:
   15ae8:	7179                	addi	sp,sp,-48
   15aea:	ec26                	sd	s1,24(sp)
   15aec:	4944                	lw	s1,20(a0)
   15aee:	f022                	sd	s0,32(sp)
   15af0:	01850413          	addi	s0,a0,24
   15af4:	048a                	slli	s1,s1,0x2
   15af6:	94a2                	add	s1,s1,s0
   15af8:	e84a                	sd	s2,16(sp)
   15afa:	ffc4a903          	lw	s2,-4(s1)
   15afe:	e44e                	sd	s3,8(sp)
   15b00:	e052                	sd	s4,0(sp)
   15b02:	854a                	mv	a0,s2
   15b04:	89ae                	mv	s3,a1
   15b06:	f406                	sd	ra,40(sp)
   15b08:	897ff0ef          	jal	ra,1539e <__hi0bits>
   15b0c:	02000793          	li	a5,32
   15b10:	40a7873b          	subw	a4,a5,a0
   15b14:	00e9a023          	sw	a4,0(s3)
   15b18:	4729                	li	a4,10
   15b1a:	ffc48a13          	addi	s4,s1,-4
   15b1e:	06a75d63          	bge	a4,a0,15b98 <__b2d+0xb0>
   15b22:	ff55061b          	addiw	a2,a0,-11
   15b26:	05447263          	bgeu	s0,s4,15b6a <__b2d+0x82>
   15b2a:	ff84a703          	lw	a4,-8(s1)
   15b2e:	c221                	beqz	a2,15b6e <__b2d+0x86>
   15b30:	40c786bb          	subw	a3,a5,a2
   15b34:	00d757bb          	srlw	a5,a4,a3
   15b38:	00c9193b          	sllw	s2,s2,a2
   15b3c:	00f96933          	or	s2,s2,a5
   15b40:	3ff007b7          	lui	a5,0x3ff00
   15b44:	00f96933          	or	s2,s2,a5
   15b48:	00c7163b          	sllw	a2,a4,a2
   15b4c:	ff848593          	addi	a1,s1,-8
   15b50:	02091793          	slli	a5,s2,0x20
   15b54:	0006071b          	sext.w	a4,a2
   15b58:	02b47163          	bgeu	s0,a1,15b7a <__b2d+0x92>
   15b5c:	ff44a703          	lw	a4,-12(s1)
   15b60:	00d7573b          	srlw	a4,a4,a3
   15b64:	8f51                	or	a4,a4,a2
   15b66:	2701                	sext.w	a4,a4
   15b68:	a809                	j	15b7a <__b2d+0x92>
   15b6a:	4701                	li	a4,0
   15b6c:	ee21                	bnez	a2,15bc4 <__b2d+0xdc>
   15b6e:	3ff007b7          	lui	a5,0x3ff00
   15b72:	00f96933          	or	s2,s2,a5
   15b76:	02091793          	slli	a5,s2,0x20
   15b7a:	70a2                	ld	ra,40(sp)
   15b7c:	7402                	ld	s0,32(sp)
   15b7e:	9381                	srli	a5,a5,0x20
   15b80:	1702                	slli	a4,a4,0x20
   15b82:	9301                	srli	a4,a4,0x20
   15b84:	1782                	slli	a5,a5,0x20
   15b86:	8fd9                	or	a5,a5,a4
   15b88:	64e2                	ld	s1,24(sp)
   15b8a:	6942                	ld	s2,16(sp)
   15b8c:	69a2                	ld	s3,8(sp)
   15b8e:	6a02                	ld	s4,0(sp)
   15b90:	f2078553          	fmv.d.x	fa0,a5
   15b94:	6145                	addi	sp,sp,48
   15b96:	8082                	ret
   15b98:	46ad                	li	a3,11
   15b9a:	9e89                	subw	a3,a3,a0
   15b9c:	3ff00737          	lui	a4,0x3ff00
   15ba0:	00d957bb          	srlw	a5,s2,a3
   15ba4:	8fd9                	or	a5,a5,a4
   15ba6:	1782                	slli	a5,a5,0x20
   15ba8:	4701                	li	a4,0
   15baa:	01447663          	bgeu	s0,s4,15bb6 <__b2d+0xce>
   15bae:	ff84a703          	lw	a4,-8(s1)
   15bb2:	00d7573b          	srlw	a4,a4,a3
   15bb6:	2555                	addiw	a0,a0,21
   15bb8:	00a9193b          	sllw	s2,s2,a0
   15bbc:	01276733          	or	a4,a4,s2
   15bc0:	2701                	sext.w	a4,a4
   15bc2:	bf65                	j	15b7a <__b2d+0x92>
   15bc4:	3ff007b7          	lui	a5,0x3ff00
   15bc8:	00c9193b          	sllw	s2,s2,a2
   15bcc:	00f96933          	or	s2,s2,a5
   15bd0:	02091793          	slli	a5,s2,0x20
   15bd4:	4701                	li	a4,0
   15bd6:	b755                	j	15b7a <__b2d+0x92>

0000000000015bd8 <__d2b>:
   15bd8:	7139                	addi	sp,sp,-64
   15bda:	e852                	sd	s4,16(sp)
   15bdc:	8a2e                	mv	s4,a1
   15bde:	4585                	li	a1,1
   15be0:	f822                	sd	s0,48(sp)
   15be2:	f04a                	sd	s2,32(sp)
   15be4:	fc06                	sd	ra,56(sp)
   15be6:	f426                	sd	s1,40(sp)
   15be8:	ec4e                	sd	s3,24(sp)
   15bea:	e2050453          	fmv.x.d	s0,fa0
   15bee:	8932                	mv	s2,a2
   15bf0:	d6eff0ef          	jal	ra,1515e <_Balloc>
   15bf4:	cd5d                	beqz	a0,15cb2 <__d2b+0xda>
   15bf6:	42045793          	srai	a5,s0,0x20
   15bfa:	0147d99b          	srliw	s3,a5,0x14
   15bfe:	7ff9f993          	andi	s3,s3,2047
   15c02:	17b2                	slli	a5,a5,0x2c
   15c04:	84aa                	mv	s1,a0
   15c06:	93b1                	srli	a5,a5,0x2c
   15c08:	00098563          	beqz	s3,15c12 <__d2b+0x3a>
   15c0c:	00100737          	lui	a4,0x100
   15c10:	8fd9                	or	a5,a5,a4
   15c12:	c63e                	sw	a5,12(sp)
   15c14:	2401                	sext.w	s0,s0
   15c16:	e029                	bnez	s0,15c58 <__d2b+0x80>
   15c18:	0068                	addi	a0,sp,12
   15c1a:	fd2ff0ef          	jal	ra,153ec <__lo0bits>
   15c1e:	47b2                	lw	a5,12(sp)
   15c20:	4405                	li	s0,1
   15c22:	c8c0                	sw	s0,20(s1)
   15c24:	cc9c                	sw	a5,24(s1)
   15c26:	0205051b          	addiw	a0,a0,32
   15c2a:	06098263          	beqz	s3,15c8e <__d2b+0xb6>
   15c2e:	bcd9899b          	addiw	s3,s3,-1075
   15c32:	00a989bb          	addw	s3,s3,a0
   15c36:	03500413          	li	s0,53
   15c3a:	013a2023          	sw	s3,0(s4)
   15c3e:	40a4053b          	subw	a0,s0,a0
   15c42:	70e2                	ld	ra,56(sp)
   15c44:	7442                	ld	s0,48(sp)
   15c46:	00a92023          	sw	a0,0(s2)
   15c4a:	69e2                	ld	s3,24(sp)
   15c4c:	7902                	ld	s2,32(sp)
   15c4e:	6a42                	ld	s4,16(sp)
   15c50:	8526                	mv	a0,s1
   15c52:	74a2                	ld	s1,40(sp)
   15c54:	6121                	addi	sp,sp,64
   15c56:	8082                	ret
   15c58:	0028                	addi	a0,sp,8
   15c5a:	c422                	sw	s0,8(sp)
   15c5c:	f90ff0ef          	jal	ra,153ec <__lo0bits>
   15c60:	47b2                	lw	a5,12(sp)
   15c62:	c529                	beqz	a0,15cac <__d2b+0xd4>
   15c64:	46a2                	lw	a3,8(sp)
   15c66:	02000713          	li	a4,32
   15c6a:	9f09                	subw	a4,a4,a0
   15c6c:	00e7973b          	sllw	a4,a5,a4
   15c70:	00a7d63b          	srlw	a2,a5,a0
   15c74:	00e6e7b3          	or	a5,a3,a4
   15c78:	cc9c                	sw	a5,24(s1)
   15c7a:	c632                	sw	a2,12(sp)
   15c7c:	0006079b          	sext.w	a5,a2
   15c80:	00f03433          	snez	s0,a5
   15c84:	0405                	addi	s0,s0,1
   15c86:	ccdc                	sw	a5,28(s1)
   15c88:	c8c0                	sw	s0,20(s1)
   15c8a:	fa0992e3          	bnez	s3,15c2e <__d2b+0x56>
   15c8e:	bce5051b          	addiw	a0,a0,-1074
   15c92:	00241793          	slli	a5,s0,0x2
   15c96:	00aa2023          	sw	a0,0(s4)
   15c9a:	97a6                	add	a5,a5,s1
   15c9c:	4bc8                	lw	a0,20(a5)
   15c9e:	0054141b          	slliw	s0,s0,0x5
   15ca2:	efcff0ef          	jal	ra,1539e <__hi0bits>
   15ca6:	40a4053b          	subw	a0,s0,a0
   15caa:	bf61                	j	15c42 <__d2b+0x6a>
   15cac:	4722                	lw	a4,8(sp)
   15cae:	cc98                	sw	a4,24(s1)
   15cb0:	bfc1                	j	15c80 <__d2b+0xa8>
   15cb2:	66f1                	lui	a3,0x1c
   15cb4:	6575                	lui	a0,0x1d
   15cb6:	55068693          	addi	a3,a3,1360 # 1c550 <zeroes.0+0x78>
   15cba:	4601                	li	a2,0
   15cbc:	30a00593          	li	a1,778
   15cc0:	84050513          	addi	a0,a0,-1984 # 1c840 <bmask+0x28>
   15cc4:	58d020ef          	jal	ra,18a50 <__assert_func>

0000000000015cc8 <__ratio>:
   15cc8:	7179                	addi	sp,sp,-48
   15cca:	ec26                	sd	s1,24(sp)
   15ccc:	84ae                	mv	s1,a1
   15cce:	002c                	addi	a1,sp,8
   15cd0:	f406                	sd	ra,40(sp)
   15cd2:	f022                	sd	s0,32(sp)
   15cd4:	e84a                	sd	s2,16(sp)
   15cd6:	892a                	mv	s2,a0
   15cd8:	e11ff0ef          	jal	ra,15ae8 <__b2d>
   15cdc:	006c                	addi	a1,sp,12
   15cde:	8526                	mv	a0,s1
   15ce0:	e2050453          	fmv.x.d	s0,fa0
   15ce4:	e05ff0ef          	jal	ra,15ae8 <__b2d>
   15ce8:	01492783          	lw	a5,20(s2)
   15cec:	48d0                	lw	a2,20(s1)
   15cee:	46b2                	lw	a3,12(sp)
   15cf0:	4722                	lw	a4,8(sp)
   15cf2:	9f91                	subw	a5,a5,a2
   15cf4:	0057979b          	slliw	a5,a5,0x5
   15cf8:	9f15                	subw	a4,a4,a3
   15cfa:	00e786bb          	addw	a3,a5,a4
   15cfe:	87b6                	mv	a5,a3
   15d00:	e2050753          	fmv.x.d	a4,fa0
   15d04:	02d05963          	blez	a3,15d36 <__ratio+0x6e>
   15d08:	02045693          	srli	a3,s0,0x20
   15d0c:	0147979b          	slliw	a5,a5,0x14
   15d10:	9fb5                	addw	a5,a5,a3
   15d12:	56fd                	li	a3,-1
   15d14:	9281                	srli	a3,a3,0x20
   15d16:	1782                	slli	a5,a5,0x20
   15d18:	8ee1                	and	a3,a3,s0
   15d1a:	00f6e433          	or	s0,a3,a5
   15d1e:	f20407d3          	fmv.d.x	fa5,s0
   15d22:	70a2                	ld	ra,40(sp)
   15d24:	7402                	ld	s0,32(sp)
   15d26:	f2070753          	fmv.d.x	fa4,a4
   15d2a:	64e2                	ld	s1,24(sp)
   15d2c:	6942                	ld	s2,16(sp)
   15d2e:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   15d32:	6145                	addi	sp,sp,48
   15d34:	8082                	ret
   15d36:	02075693          	srli	a3,a4,0x20
   15d3a:	0147979b          	slliw	a5,a5,0x14
   15d3e:	40f687bb          	subw	a5,a3,a5
   15d42:	56fd                	li	a3,-1
   15d44:	9281                	srli	a3,a3,0x20
   15d46:	1782                	slli	a5,a5,0x20
   15d48:	8f75                	and	a4,a4,a3
   15d4a:	8f5d                	or	a4,a4,a5
   15d4c:	bfc9                	j	15d1e <__ratio+0x56>

0000000000015d4e <_mprec_log10>:
   15d4e:	47dd                	li	a5,23
   15d50:	00a7db63          	bge	a5,a0,15d66 <_mprec_log10+0x18>
   15d54:	7281b507          	fld	fa0,1832(gp) # 1f2a8 <__SDATA_BEGIN__+0x10>
   15d58:	7301b787          	fld	fa5,1840(gp) # 1f2b0 <__SDATA_BEGIN__+0x18>
   15d5c:	357d                	addiw	a0,a0,-1
   15d5e:	12f57553          	fmul.d	fa0,fa0,fa5
   15d62:	fd6d                	bnez	a0,15d5c <_mprec_log10+0xe>
   15d64:	8082                	ret
   15d66:	67f5                	lui	a5,0x1d
   15d68:	050e                	slli	a0,a0,0x3
   15d6a:	8a878793          	addi	a5,a5,-1880 # 1c8a8 <p05.0>
   15d6e:	97aa                	add	a5,a5,a0
   15d70:	2b88                	fld	fa0,16(a5)
   15d72:	8082                	ret

0000000000015d74 <__copybits>:
   15d74:	4a54                	lw	a3,20(a2)
   15d76:	35fd                	addiw	a1,a1,-1
   15d78:	4055d59b          	sraiw	a1,a1,0x5
   15d7c:	2585                	addiw	a1,a1,1
   15d7e:	01860793          	addi	a5,a2,24
   15d82:	068a                	slli	a3,a3,0x2
   15d84:	058a                	slli	a1,a1,0x2
   15d86:	96be                	add	a3,a3,a5
   15d88:	95aa                	add	a1,a1,a0
   15d8a:	02d7f163          	bgeu	a5,a3,15dac <__copybits+0x38>
   15d8e:	872a                	mv	a4,a0
   15d90:	0007a803          	lw	a6,0(a5)
   15d94:	0791                	addi	a5,a5,4
   15d96:	0711                	addi	a4,a4,4
   15d98:	ff072e23          	sw	a6,-4(a4) # ffffc <__BSS_END__+0xe0c7c>
   15d9c:	fed7eae3          	bltu	a5,a3,15d90 <__copybits+0x1c>
   15da0:	40c687b3          	sub	a5,a3,a2
   15da4:	179d                	addi	a5,a5,-25
   15da6:	9bf1                	andi	a5,a5,-4
   15da8:	0791                	addi	a5,a5,4
   15daa:	953e                	add	a0,a0,a5
   15dac:	00b57763          	bgeu	a0,a1,15dba <__copybits+0x46>
   15db0:	0511                	addi	a0,a0,4
   15db2:	fe052e23          	sw	zero,-4(a0)
   15db6:	feb56de3          	bltu	a0,a1,15db0 <__copybits+0x3c>
   15dba:	8082                	ret

0000000000015dbc <__any_on>:
   15dbc:	4958                	lw	a4,20(a0)
   15dbe:	4055d613          	srai	a2,a1,0x5
   15dc2:	01850693          	addi	a3,a0,24
   15dc6:	00c75d63          	bge	a4,a2,15de0 <__any_on+0x24>
   15dca:	070a                	slli	a4,a4,0x2
   15dcc:	00e687b3          	add	a5,a3,a4
   15dd0:	02f6f863          	bgeu	a3,a5,15e00 <__any_on+0x44>
   15dd4:	ffc7a703          	lw	a4,-4(a5)
   15dd8:	17f1                	addi	a5,a5,-4
   15dda:	db7d                	beqz	a4,15dd0 <__any_on+0x14>
   15ddc:	4505                	li	a0,1
   15dde:	8082                	ret
   15de0:	00261793          	slli	a5,a2,0x2
   15de4:	97b6                	add	a5,a5,a3
   15de6:	fee655e3          	bge	a2,a4,15dd0 <__any_on+0x14>
   15dea:	89fd                	andi	a1,a1,31
   15dec:	d1f5                	beqz	a1,15dd0 <__any_on+0x14>
   15dee:	4390                	lw	a2,0(a5)
   15df0:	4505                	li	a0,1
   15df2:	00b6573b          	srlw	a4,a2,a1
   15df6:	00b7173b          	sllw	a4,a4,a1
   15dfa:	fcc70be3          	beq	a4,a2,15dd0 <__any_on+0x14>
   15dfe:	8082                	ret
   15e00:	4501                	li	a0,0
   15e02:	8082                	ret

0000000000015e04 <frexp>:
   15e04:	e20507d3          	fmv.x.d	a5,fa0
   15e08:	80000637          	lui	a2,0x80000
   15e0c:	fff64613          	not	a2,a2
   15e10:	4207d593          	srai	a1,a5,0x20
   15e14:	00c5f733          	and	a4,a1,a2
   15e18:	00052023          	sw	zero,0(a0)
   15e1c:	7ff00837          	lui	a6,0x7ff00
   15e20:	86ae                	mv	a3,a1
   15e22:	05075c63          	bge	a4,a6,15e7a <frexp+0x76>
   15e26:	00f76833          	or	a6,a4,a5
   15e2a:	2801                	sext.w	a6,a6
   15e2c:	04080763          	beqz	a6,15e7a <frexp+0x76>
   15e30:	7ff00837          	lui	a6,0x7ff00
   15e34:	0105f5b3          	and	a1,a1,a6
   15e38:	4801                	li	a6,0
   15e3a:	ed89                	bnez	a1,15e54 <frexp+0x50>
   15e3c:	7381b787          	fld	fa5,1848(gp) # 1f2b8 <__SDATA_BEGIN__+0x20>
   15e40:	fca00813          	li	a6,-54
   15e44:	12f577d3          	fmul.d	fa5,fa0,fa5
   15e48:	e20787d3          	fmv.x.d	a5,fa5
   15e4c:	4207d693          	srai	a3,a5,0x20
   15e50:	00c6f733          	and	a4,a3,a2
   15e54:	80100637          	lui	a2,0x80100
   15e58:	167d                	addi	a2,a2,-1
   15e5a:	8ef1                	and	a3,a3,a2
   15e5c:	3fe00637          	lui	a2,0x3fe00
   15e60:	8ed1                	or	a3,a3,a2
   15e62:	4147571b          	sraiw	a4,a4,0x14
   15e66:	567d                	li	a2,-1
   15e68:	c027071b          	addiw	a4,a4,-1022
   15e6c:	9201                	srli	a2,a2,0x20
   15e6e:	0107073b          	addw	a4,a4,a6
   15e72:	1682                	slli	a3,a3,0x20
   15e74:	8ff1                	and	a5,a5,a2
   15e76:	c118                	sw	a4,0(a0)
   15e78:	8fd5                	or	a5,a5,a3
   15e7a:	f2078553          	fmv.d.x	fa0,a5
   15e7e:	8082                	ret

0000000000015e80 <_sbrk_r>:
   15e80:	1101                	addi	sp,sp,-32
   15e82:	e822                	sd	s0,16(sp)
   15e84:	e426                	sd	s1,8(sp)
   15e86:	842a                	mv	s0,a0
   15e88:	852e                	mv	a0,a1
   15e8a:	ec06                	sd	ra,24(sp)
   15e8c:	7801a823          	sw	zero,1936(gp) # 1f310 <errno>
   15e90:	645040ef          	jal	ra,1acd4 <_sbrk>
   15e94:	57fd                	li	a5,-1
   15e96:	00f50763          	beq	a0,a5,15ea4 <_sbrk_r+0x24>
   15e9a:	60e2                	ld	ra,24(sp)
   15e9c:	6442                	ld	s0,16(sp)
   15e9e:	64a2                	ld	s1,8(sp)
   15ea0:	6105                	addi	sp,sp,32
   15ea2:	8082                	ret
   15ea4:	7901a783          	lw	a5,1936(gp) # 1f310 <errno>
   15ea8:	dbed                	beqz	a5,15e9a <_sbrk_r+0x1a>
   15eaa:	60e2                	ld	ra,24(sp)
   15eac:	c01c                	sw	a5,0(s0)
   15eae:	6442                	ld	s0,16(sp)
   15eb0:	64a2                	ld	s1,8(sp)
   15eb2:	6105                	addi	sp,sp,32
   15eb4:	8082                	ret

0000000000015eb6 <_sprintf_r>:
   15eb6:	7111                	addi	sp,sp,-256
   15eb8:	0d810e93          	addi	t4,sp,216
   15ebc:	f5be                	sd	a5,232(sp)
   15ebe:	80000337          	lui	t1,0x80000
   15ec2:	77c1                	lui	a5,0xffff0
   15ec4:	8e2e                	mv	t3,a1
   15ec6:	fff34313          	not	t1,t1
   15eca:	edb6                	sd	a3,216(sp)
   15ecc:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffd0e88>
   15ed0:	080c                	addi	a1,sp,16
   15ed2:	86f6                	mv	a3,t4
   15ed4:	e586                	sd	ra,200(sp)
   15ed6:	d03e                	sw	a5,32(sp)
   15ed8:	f1ba                	sd	a4,224(sp)
   15eda:	f9c2                	sd	a6,240(sp)
   15edc:	fdc6                	sd	a7,248(sp)
   15ede:	e872                	sd	t3,16(sp)
   15ee0:	f472                	sd	t3,40(sp)
   15ee2:	d81a                	sw	t1,48(sp)
   15ee4:	ce1a                	sw	t1,28(sp)
   15ee6:	e476                	sd	t4,8(sp)
   15ee8:	2d2000ef          	jal	ra,161ba <_svfprintf_r>
   15eec:	67c2                	ld	a5,16(sp)
   15eee:	00078023          	sb	zero,0(a5)
   15ef2:	60ae                	ld	ra,200(sp)
   15ef4:	6111                	addi	sp,sp,256
   15ef6:	8082                	ret

0000000000015ef8 <sprintf>:
   15ef8:	8e2a                	mv	t3,a0
   15efa:	7111                	addi	sp,sp,-256
   15efc:	7581b503          	ld	a0,1880(gp) # 1f2d8 <_impure_ptr>
   15f00:	0d010e93          	addi	t4,sp,208
   15f04:	f5be                	sd	a5,232(sp)
   15f06:	80000337          	lui	t1,0x80000
   15f0a:	77c1                	lui	a5,0xffff0
   15f0c:	fff34313          	not	t1,t1
   15f10:	e9b2                	sd	a2,208(sp)
   15f12:	edb6                	sd	a3,216(sp)
   15f14:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffd0e88>
   15f18:	862e                	mv	a2,a1
   15f1a:	86f6                	mv	a3,t4
   15f1c:	080c                	addi	a1,sp,16
   15f1e:	e586                	sd	ra,200(sp)
   15f20:	d03e                	sw	a5,32(sp)
   15f22:	f1ba                	sd	a4,224(sp)
   15f24:	f9c2                	sd	a6,240(sp)
   15f26:	fdc6                	sd	a7,248(sp)
   15f28:	e872                	sd	t3,16(sp)
   15f2a:	f472                	sd	t3,40(sp)
   15f2c:	d81a                	sw	t1,48(sp)
   15f2e:	ce1a                	sw	t1,28(sp)
   15f30:	e476                	sd	t4,8(sp)
   15f32:	288000ef          	jal	ra,161ba <_svfprintf_r>
   15f36:	67c2                	ld	a5,16(sp)
   15f38:	00078023          	sb	zero,0(a5)
   15f3c:	60ae                	ld	ra,200(sp)
   15f3e:	6111                	addi	sp,sp,256
   15f40:	8082                	ret

0000000000015f42 <__sread>:
   15f42:	1141                	addi	sp,sp,-16
   15f44:	e022                	sd	s0,0(sp)
   15f46:	842e                	mv	s0,a1
   15f48:	01259583          	lh	a1,18(a1) # 10012 <register_fini-0x9e>
   15f4c:	e406                	sd	ra,8(sp)
   15f4e:	4e6030ef          	jal	ra,19434 <_read_r>
   15f52:	00054963          	bltz	a0,15f64 <__sread+0x22>
   15f56:	685c                	ld	a5,144(s0)
   15f58:	60a2                	ld	ra,8(sp)
   15f5a:	97aa                	add	a5,a5,a0
   15f5c:	e85c                	sd	a5,144(s0)
   15f5e:	6402                	ld	s0,0(sp)
   15f60:	0141                	addi	sp,sp,16
   15f62:	8082                	ret
   15f64:	01045783          	lhu	a5,16(s0)
   15f68:	777d                	lui	a4,0xfffff
   15f6a:	177d                	addi	a4,a4,-1
   15f6c:	8ff9                	and	a5,a5,a4
   15f6e:	60a2                	ld	ra,8(sp)
   15f70:	00f41823          	sh	a5,16(s0)
   15f74:	6402                	ld	s0,0(sp)
   15f76:	0141                	addi	sp,sp,16
   15f78:	8082                	ret

0000000000015f7a <__seofread>:
   15f7a:	4501                	li	a0,0
   15f7c:	8082                	ret

0000000000015f7e <__swrite>:
   15f7e:	01059783          	lh	a5,16(a1)
   15f82:	7179                	addi	sp,sp,-48
   15f84:	f022                	sd	s0,32(sp)
   15f86:	ec26                	sd	s1,24(sp)
   15f88:	e84a                	sd	s2,16(sp)
   15f8a:	e44e                	sd	s3,8(sp)
   15f8c:	f406                	sd	ra,40(sp)
   15f8e:	1007f713          	andi	a4,a5,256
   15f92:	842e                	mv	s0,a1
   15f94:	84aa                	mv	s1,a0
   15f96:	8932                	mv	s2,a2
   15f98:	89b6                	mv	s3,a3
   15f9a:	e31d                	bnez	a4,15fc0 <__swrite+0x42>
   15f9c:	777d                	lui	a4,0xfffff
   15f9e:	177d                	addi	a4,a4,-1
   15fa0:	8ff9                	and	a5,a5,a4
   15fa2:	01241583          	lh	a1,18(s0)
   15fa6:	00f41823          	sh	a5,16(s0)
   15faa:	7402                	ld	s0,32(sp)
   15fac:	70a2                	ld	ra,40(sp)
   15fae:	86ce                	mv	a3,s3
   15fb0:	864a                	mv	a2,s2
   15fb2:	69a2                	ld	s3,8(sp)
   15fb4:	6942                	ld	s2,16(sp)
   15fb6:	8526                	mv	a0,s1
   15fb8:	64e2                	ld	s1,24(sp)
   15fba:	6145                	addi	sp,sp,48
   15fbc:	1e30206f          	j	1899e <_write_r>
   15fc0:	01259583          	lh	a1,18(a1)
   15fc4:	4689                	li	a3,2
   15fc6:	4601                	li	a2,0
   15fc8:	22c030ef          	jal	ra,191f4 <_lseek_r>
   15fcc:	01041783          	lh	a5,16(s0)
   15fd0:	b7f1                	j	15f9c <__swrite+0x1e>

0000000000015fd2 <__sseek>:
   15fd2:	1141                	addi	sp,sp,-16
   15fd4:	e022                	sd	s0,0(sp)
   15fd6:	842e                	mv	s0,a1
   15fd8:	01259583          	lh	a1,18(a1)
   15fdc:	e406                	sd	ra,8(sp)
   15fde:	216030ef          	jal	ra,191f4 <_lseek_r>
   15fe2:	57fd                	li	a5,-1
   15fe4:	00f50d63          	beq	a0,a5,15ffe <__sseek+0x2c>
   15fe8:	01045783          	lhu	a5,16(s0)
   15fec:	6705                	lui	a4,0x1
   15fee:	60a2                	ld	ra,8(sp)
   15ff0:	8fd9                	or	a5,a5,a4
   15ff2:	e848                	sd	a0,144(s0)
   15ff4:	00f41823          	sh	a5,16(s0)
   15ff8:	6402                	ld	s0,0(sp)
   15ffa:	0141                	addi	sp,sp,16
   15ffc:	8082                	ret
   15ffe:	01045783          	lhu	a5,16(s0)
   16002:	777d                	lui	a4,0xfffff
   16004:	177d                	addi	a4,a4,-1
   16006:	8ff9                	and	a5,a5,a4
   16008:	60a2                	ld	ra,8(sp)
   1600a:	00f41823          	sh	a5,16(s0)
   1600e:	6402                	ld	s0,0(sp)
   16010:	0141                	addi	sp,sp,16
   16012:	8082                	ret

0000000000016014 <__sclose>:
   16014:	01259583          	lh	a1,18(a1)
   16018:	32d0206f          	j	18b44 <_close_r>

000000000001601c <strcpy>:
   1601c:	00b567b3          	or	a5,a0,a1
   16020:	8b9d                	andi	a5,a5,7
   16022:	efad                	bnez	a5,1609c <strcpy+0x80>
   16024:	7401b683          	ld	a3,1856(gp) # 1f2c0 <mask>
   16028:	6198                	ld	a4,0(a1)
   1602a:	567d                	li	a2,-1
   1602c:	00d777b3          	and	a5,a4,a3
   16030:	97b6                	add	a5,a5,a3
   16032:	8fd9                	or	a5,a5,a4
   16034:	8fd5                	or	a5,a5,a3
   16036:	06c79c63          	bne	a5,a2,160ae <strcpy+0x92>
   1603a:	862a                	mv	a2,a0
   1603c:	587d                	li	a6,-1
   1603e:	e218                	sd	a4,0(a2)
   16040:	6598                	ld	a4,8(a1)
   16042:	05a1                	addi	a1,a1,8
   16044:	0621                	addi	a2,a2,8
   16046:	00d777b3          	and	a5,a4,a3
   1604a:	97b6                	add	a5,a5,a3
   1604c:	8fd9                	or	a5,a5,a4
   1604e:	8fd5                	or	a5,a5,a3
   16050:	ff0787e3          	beq	a5,a6,1603e <strcpy+0x22>
   16054:	0005c783          	lbu	a5,0(a1)
   16058:	0015c703          	lbu	a4,1(a1)
   1605c:	0025c683          	lbu	a3,2(a1)
   16060:	00f60023          	sb	a5,0(a2) # 3fe00000 <__BSS_END__+0x3fde0c80>
   16064:	cb9d                	beqz	a5,1609a <strcpy+0x7e>
   16066:	00e600a3          	sb	a4,1(a2)
   1606a:	cb05                	beqz	a4,1609a <strcpy+0x7e>
   1606c:	0035c783          	lbu	a5,3(a1)
   16070:	00d60123          	sb	a3,2(a2)
   16074:	c29d                	beqz	a3,1609a <strcpy+0x7e>
   16076:	0045c703          	lbu	a4,4(a1)
   1607a:	00f601a3          	sb	a5,3(a2)
   1607e:	cf91                	beqz	a5,1609a <strcpy+0x7e>
   16080:	0055c783          	lbu	a5,5(a1)
   16084:	00e60223          	sb	a4,4(a2)
   16088:	cb09                	beqz	a4,1609a <strcpy+0x7e>
   1608a:	0065c703          	lbu	a4,6(a1)
   1608e:	00f602a3          	sb	a5,5(a2)
   16092:	c781                	beqz	a5,1609a <strcpy+0x7e>
   16094:	00e60323          	sb	a4,6(a2)
   16098:	ef09                	bnez	a4,160b2 <strcpy+0x96>
   1609a:	8082                	ret
   1609c:	87aa                	mv	a5,a0
   1609e:	0005c703          	lbu	a4,0(a1)
   160a2:	0785                	addi	a5,a5,1
   160a4:	0585                	addi	a1,a1,1
   160a6:	fee78fa3          	sb	a4,-1(a5)
   160aa:	fb75                	bnez	a4,1609e <strcpy+0x82>
   160ac:	8082                	ret
   160ae:	862a                	mv	a2,a0
   160b0:	b755                	j	16054 <strcpy+0x38>
   160b2:	000603a3          	sb	zero,7(a2)
   160b6:	8082                	ret

00000000000160b8 <strlen>:
   160b8:	00757793          	andi	a5,a0,7
   160bc:	872a                	mv	a4,a0
   160be:	eba9                	bnez	a5,16110 <strlen+0x58>
   160c0:	7401b683          	ld	a3,1856(gp) # 1f2c0 <mask>
   160c4:	55fd                	li	a1,-1
   160c6:	6310                	ld	a2,0(a4)
   160c8:	0721                	addi	a4,a4,8
   160ca:	00d677b3          	and	a5,a2,a3
   160ce:	97b6                	add	a5,a5,a3
   160d0:	8fd1                	or	a5,a5,a2
   160d2:	8fd5                	or	a5,a5,a3
   160d4:	feb789e3          	beq	a5,a1,160c6 <strlen+0xe>
   160d8:	ff874683          	lbu	a3,-8(a4) # ffffffffffffeff8 <__BSS_END__+0xfffffffffffdfc78>
   160dc:	40a707b3          	sub	a5,a4,a0
   160e0:	c6a9                	beqz	a3,1612a <strlen+0x72>
   160e2:	ff974683          	lbu	a3,-7(a4)
   160e6:	ce9d                	beqz	a3,16124 <strlen+0x6c>
   160e8:	ffa74683          	lbu	a3,-6(a4)
   160ec:	c6a9                	beqz	a3,16136 <strlen+0x7e>
   160ee:	ffb74683          	lbu	a3,-5(a4)
   160f2:	ce9d                	beqz	a3,16130 <strlen+0x78>
   160f4:	ffc74683          	lbu	a3,-4(a4)
   160f8:	c2b1                	beqz	a3,1613c <strlen+0x84>
   160fa:	ffd74683          	lbu	a3,-3(a4)
   160fe:	c2b1                	beqz	a3,16142 <strlen+0x8a>
   16100:	ffe74503          	lbu	a0,-2(a4)
   16104:	00a03533          	snez	a0,a0
   16108:	953e                	add	a0,a0,a5
   1610a:	1579                	addi	a0,a0,-2
   1610c:	8082                	ret
   1610e:	dacd                	beqz	a3,160c0 <strlen+0x8>
   16110:	00074783          	lbu	a5,0(a4)
   16114:	0705                	addi	a4,a4,1
   16116:	00777693          	andi	a3,a4,7
   1611a:	fbf5                	bnez	a5,1610e <strlen+0x56>
   1611c:	8f09                	sub	a4,a4,a0
   1611e:	fff70513          	addi	a0,a4,-1
   16122:	8082                	ret
   16124:	ff978513          	addi	a0,a5,-7
   16128:	8082                	ret
   1612a:	ff878513          	addi	a0,a5,-8
   1612e:	8082                	ret
   16130:	ffb78513          	addi	a0,a5,-5
   16134:	8082                	ret
   16136:	ffa78513          	addi	a0,a5,-6
   1613a:	8082                	ret
   1613c:	ffc78513          	addi	a0,a5,-4
   16140:	8082                	ret
   16142:	ffd78513          	addi	a0,a5,-3
   16146:	8082                	ret

0000000000016148 <strncpy>:
   16148:	00b567b3          	or	a5,a0,a1
   1614c:	8b9d                	andi	a5,a5,7
   1614e:	872a                	mv	a4,a0
   16150:	e7b1                	bnez	a5,1619c <strncpy+0x54>
   16152:	479d                	li	a5,7
   16154:	04c7f463          	bgeu	a5,a2,1619c <strncpy+0x54>
   16158:	7181b303          	ld	t1,1816(gp) # 1f298 <__SDATA_BEGIN__>
   1615c:	7201b883          	ld	a7,1824(gp) # 1f2a0 <__SDATA_BEGIN__+0x8>
   16160:	4e1d                	li	t3,7
   16162:	6194                	ld	a3,0(a1)
   16164:	006687b3          	add	a5,a3,t1
   16168:	fff6c813          	not	a6,a3
   1616c:	0107f7b3          	and	a5,a5,a6
   16170:	0117f7b3          	and	a5,a5,a7
   16174:	e785                	bnez	a5,1619c <strncpy+0x54>
   16176:	e314                	sd	a3,0(a4)
   16178:	1661                	addi	a2,a2,-8
   1617a:	0721                	addi	a4,a4,8
   1617c:	05a1                	addi	a1,a1,8
   1617e:	fece62e3          	bltu	t3,a2,16162 <strncpy+0x1a>
   16182:	0585                	addi	a1,a1,1
   16184:	00170793          	addi	a5,a4,1
   16188:	ce11                	beqz	a2,161a4 <strncpy+0x5c>
   1618a:	fff5c683          	lbu	a3,-1(a1)
   1618e:	fff60813          	addi	a6,a2,-1
   16192:	fed78fa3          	sb	a3,-1(a5)
   16196:	ca81                	beqz	a3,161a6 <strncpy+0x5e>
   16198:	873e                	mv	a4,a5
   1619a:	8642                	mv	a2,a6
   1619c:	0585                	addi	a1,a1,1
   1619e:	00170793          	addi	a5,a4,1
   161a2:	f665                	bnez	a2,1618a <strncpy+0x42>
   161a4:	8082                	ret
   161a6:	9732                	add	a4,a4,a2
   161a8:	00080863          	beqz	a6,161b8 <strncpy+0x70>
   161ac:	0785                	addi	a5,a5,1
   161ae:	fe078fa3          	sb	zero,-1(a5)
   161b2:	fee79de3          	bne	a5,a4,161ac <strncpy+0x64>
   161b6:	8082                	ret
   161b8:	8082                	ret

00000000000161ba <_svfprintf_r>:
   161ba:	d8010113          	addi	sp,sp,-640
   161be:	26113c23          	sd	ra,632(sp)
   161c2:	25313c23          	sd	s3,600(sp)
   161c6:	25413823          	sd	s4,592(sp)
   161ca:	23913423          	sd	s9,552(sp)
   161ce:	8a2e                	mv	s4,a1
   161d0:	8cb2                	mv	s9,a2
   161d2:	e836                	sd	a3,16(sp)
   161d4:	26813823          	sd	s0,624(sp)
   161d8:	26913423          	sd	s1,616(sp)
   161dc:	27213023          	sd	s2,608(sp)
   161e0:	25513423          	sd	s5,584(sp)
   161e4:	25613023          	sd	s6,576(sp)
   161e8:	23713c23          	sd	s7,568(sp)
   161ec:	23813823          	sd	s8,560(sp)
   161f0:	23a13023          	sd	s10,544(sp)
   161f4:	21b13c23          	sd	s11,536(sp)
   161f8:	89aa                	mv	s3,a0
   161fa:	f14fe0ef          	jal	ra,1490e <_localeconv_r>
   161fe:	611c                	ld	a5,0(a0)
   16200:	853e                	mv	a0,a5
   16202:	f8be                	sd	a5,112(sp)
   16204:	eb5ff0ef          	jal	ra,160b8 <strlen>
   16208:	010a5783          	lhu	a5,16(s4)
   1620c:	e202                	sd	zero,256(sp)
   1620e:	e602                	sd	zero,264(sp)
   16210:	0807f793          	andi	a5,a5,128
   16214:	f4aa                	sd	a0,104(sp)
   16216:	c789                	beqz	a5,16220 <_svfprintf_r+0x66>
   16218:	018a3783          	ld	a5,24(s4)
   1621c:	5a0782e3          	beqz	a5,16fc0 <_svfprintf_r+0xe06>
   16220:	67f1                	lui	a5,0x1c
   16222:	4f87b783          	ld	a5,1272(a5) # 1c4f8 <zeroes.0+0x20>
   16226:	19010b13          	addi	s6,sp,400
   1622a:	ea5a                	sd	s6,272(sp)
   1622c:	e93e                	sd	a5,144(sp)
   1622e:	67f1                	lui	a5,0x1c
   16230:	5087b783          	ld	a5,1288(a5) # 1c508 <zeroes.0+0x30>
   16234:	f202                	sd	zero,288(sp)
   16236:	10012c23          	sw	zero,280(sp)
   1623a:	ed3e                	sd	a5,152(sp)
   1623c:	67f1                	lui	a5,0x1c
   1623e:	5187b783          	ld	a5,1304(a5) # 1c518 <zeroes.0+0x40>
   16242:	f002                	sd	zero,32(sp)
   16244:	f402                	sd	zero,40(sp)
   16246:	f13e                	sd	a5,160(sp)
   16248:	000cc783          	lbu	a5,0(s9)
   1624c:	fc82                	sd	zero,120(sp)
   1624e:	f082                	sd	zero,96(sp)
   16250:	e102                	sd	zero,128(sp)
   16252:	e502                	sd	zero,136(sp)
   16254:	e402                	sd	zero,8(sp)
   16256:	835a                	mv	t1,s6
   16258:	1c078563          	beqz	a5,16422 <_svfprintf_r+0x268>
   1625c:	8466                	mv	s0,s9
   1625e:	02500713          	li	a4,37
   16262:	2ce78e63          	beq	a5,a4,1653e <_svfprintf_r+0x384>
   16266:	00144783          	lbu	a5,1(s0)
   1626a:	0405                	addi	s0,s0,1
   1626c:	fbfd                	bnez	a5,16262 <_svfprintf_r+0xa8>
   1626e:	419404bb          	subw	s1,s0,s9
   16272:	1a048863          	beqz	s1,16422 <_svfprintf_r+0x268>
   16276:	11812783          	lw	a5,280(sp)
   1627a:	7712                	ld	a4,288(sp)
   1627c:	01933023          	sd	s9,0(t1) # ffffffff80000000 <__BSS_END__+0xffffffff7ffe0c80>
   16280:	2785                	addiw	a5,a5,1
   16282:	9726                	add	a4,a4,s1
   16284:	00933423          	sd	s1,8(t1)
   16288:	f23a                	sd	a4,288(sp)
   1628a:	10f12c23          	sw	a5,280(sp)
   1628e:	0007871b          	sext.w	a4,a5
   16292:	479d                	li	a5,7
   16294:	0341                	addi	t1,t1,16
   16296:	2ae7cb63          	blt	a5,a4,1654c <_svfprintf_r+0x392>
   1629a:	6722                	ld	a4,8(sp)
   1629c:	00044783          	lbu	a5,0(s0)
   162a0:	9f25                	addw	a4,a4,s1
   162a2:	e43a                	sd	a4,8(sp)
   162a4:	16078f63          	beqz	a5,16422 <_svfprintf_r+0x268>
   162a8:	67f5                	lui	a5,0x1d
   162aa:	00144e03          	lbu	t3,1(s0)
   162ae:	0c010fa3          	sb	zero,223(sp)
   162b2:	0405                	addi	s0,s0,1
   162b4:	5c7d                	li	s8,-1
   162b6:	4a81                	li	s5,0
   162b8:	4481                	li	s1,0
   162ba:	05a00913          	li	s2,90
   162be:	9d078b93          	addi	s7,a5,-1584 # 1c9d0 <__mprec_bigtens+0x28>
   162c2:	4da5                	li	s11,9
   162c4:	0405                	addi	s0,s0,1
   162c6:	000e0d1b          	sext.w	s10,t3
   162ca:	02a00693          	li	a3,42
   162ce:	fe0d079b          	addiw	a5,s10,-32
   162d2:	0007871b          	sext.w	a4,a5
   162d6:	04e96363          	bltu	s2,a4,1631c <_svfprintf_r+0x162>
   162da:	02079713          	slli	a4,a5,0x20
   162de:	01e75793          	srli	a5,a4,0x1e
   162e2:	97de                	add	a5,a5,s7
   162e4:	439c                	lw	a5,0(a5)
   162e6:	8782                	jr	a5
   162e8:	4a81                	li	s5,0
   162ea:	00044703          	lbu	a4,0(s0)
   162ee:	002a979b          	slliw	a5,s5,0x2
   162f2:	015787bb          	addw	a5,a5,s5
   162f6:	fd0d0e1b          	addiw	t3,s10,-48
   162fa:	0017979b          	slliw	a5,a5,0x1
   162fe:	fd07061b          	addiw	a2,a4,-48
   16302:	0405                	addi	s0,s0,1
   16304:	00fe0abb          	addw	s5,t3,a5
   16308:	00070d1b          	sext.w	s10,a4
   1630c:	fccdffe3          	bgeu	s11,a2,162ea <_svfprintf_r+0x130>
   16310:	fe0d079b          	addiw	a5,s10,-32
   16314:	0007871b          	sext.w	a4,a5
   16318:	fce971e3          	bgeu	s2,a4,162da <_svfprintf_r+0x120>
   1631c:	100d0363          	beqz	s10,16422 <_svfprintf_r+0x268>
   16320:	13a10423          	sb	s10,296(sp)
   16324:	0c010fa3          	sb	zero,223(sp)
   16328:	4905                	li	s2,1
   1632a:	4b85                	li	s7,1
   1632c:	12810c93          	addi	s9,sp,296
   16330:	ec02                	sd	zero,24(sp)
   16332:	4c01                	li	s8,0
   16334:	e882                	sd	zero,80(sp)
   16336:	ec82                	sd	zero,88(sp)
   16338:	e482                	sd	zero,72(sp)
   1633a:	0024f293          	andi	t0,s1,2
   1633e:	00028363          	beqz	t0,16344 <_svfprintf_r+0x18a>
   16342:	2909                	addiw	s2,s2,2
   16344:	0844fd93          	andi	s11,s1,132
   16348:	7792                	ld	a5,288(sp)
   1634a:	000d9663          	bnez	s11,16356 <_svfprintf_r+0x19c>
   1634e:	412a86bb          	subw	a3,s5,s2
   16352:	04d04be3          	bgtz	a3,16ba8 <_svfprintf_r+0x9ee>
   16356:	0df14703          	lbu	a4,223(sp)
   1635a:	c70d                	beqz	a4,16384 <_svfprintf_r+0x1ca>
   1635c:	11812703          	lw	a4,280(sp)
   16360:	0df10693          	addi	a3,sp,223
   16364:	00d33023          	sd	a3,0(t1)
   16368:	2705                	addiw	a4,a4,1
   1636a:	4685                	li	a3,1
   1636c:	0785                	addi	a5,a5,1
   1636e:	00d33423          	sd	a3,8(t1)
   16372:	10e12c23          	sw	a4,280(sp)
   16376:	0007069b          	sext.w	a3,a4
   1637a:	f23e                	sd	a5,288(sp)
   1637c:	471d                	li	a4,7
   1637e:	0341                	addi	t1,t1,16
   16380:	26d74363          	blt	a4,a3,165e6 <_svfprintf_r+0x42c>
   16384:	02028563          	beqz	t0,163ae <_svfprintf_r+0x1f4>
   16388:	11812703          	lw	a4,280(sp)
   1638c:	1194                	addi	a3,sp,224
   1638e:	00d33023          	sd	a3,0(t1)
   16392:	2705                	addiw	a4,a4,1
   16394:	4689                	li	a3,2
   16396:	0789                	addi	a5,a5,2
   16398:	00d33423          	sd	a3,8(t1)
   1639c:	10e12c23          	sw	a4,280(sp)
   163a0:	0007069b          	sext.w	a3,a4
   163a4:	f23e                	sd	a5,288(sp)
   163a6:	471d                	li	a4,7
   163a8:	0341                	addi	t1,t1,16
   163aa:	08d749e3          	blt	a4,a3,16c3c <_svfprintf_r+0xa82>
   163ae:	08000713          	li	a4,128
   163b2:	6aed8f63          	beq	s11,a4,16a70 <_svfprintf_r+0x8b6>
   163b6:	417c0c3b          	subw	s8,s8,s7
   163ba:	75804563          	bgtz	s8,16b04 <_svfprintf_r+0x94a>
   163be:	1004f713          	andi	a4,s1,256
   163c2:	5a071263          	bnez	a4,16966 <_svfprintf_r+0x7ac>
   163c6:	11812703          	lw	a4,280(sp)
   163ca:	97de                	add	a5,a5,s7
   163cc:	01933023          	sd	s9,0(t1)
   163d0:	0017069b          	addiw	a3,a4,1
   163d4:	8736                	mv	a4,a3
   163d6:	01733423          	sd	s7,8(t1)
   163da:	10e12c23          	sw	a4,280(sp)
   163de:	f23e                	sd	a5,288(sp)
   163e0:	471d                	li	a4,7
   163e2:	2cd74263          	blt	a4,a3,166a6 <_svfprintf_r+0x4ec>
   163e6:	0341                	addi	t1,t1,16
   163e8:	8891                	andi	s1,s1,4
   163ea:	c489                	beqz	s1,163f4 <_svfprintf_r+0x23a>
   163ec:	412a84bb          	subw	s1,s5,s2
   163f0:	069040e3          	bgtz	s1,16c50 <_svfprintf_r+0xa96>
   163f4:	8756                	mv	a4,s5
   163f6:	012ad363          	bge	s5,s2,163fc <_svfprintf_r+0x242>
   163fa:	874a                	mv	a4,s2
   163fc:	66a2                	ld	a3,8(sp)
   163fe:	9f35                	addw	a4,a4,a3
   16400:	e43a                	sd	a4,8(sp)
   16402:	78079263          	bnez	a5,16b86 <_svfprintf_r+0x9cc>
   16406:	67e2                	ld	a5,24(sp)
   16408:	10012c23          	sw	zero,280(sp)
   1640c:	c789                	beqz	a5,16416 <_svfprintf_r+0x25c>
   1640e:	65e2                	ld	a1,24(sp)
   16410:	854e                	mv	a0,s3
   16412:	978fc0ef          	jal	ra,1258a <_free_r>
   16416:	835a                	mv	t1,s6
   16418:	8ca2                	mv	s9,s0
   1641a:	000cc783          	lbu	a5,0(s9)
   1641e:	e2079fe3          	bnez	a5,1625c <_svfprintf_r+0xa2>
   16422:	7792                	ld	a5,288(sp)
   16424:	c399                	beqz	a5,1642a <_svfprintf_r+0x270>
   16426:	35c0106f          	j	17782 <_svfprintf_r+0x15c8>
   1642a:	010a5783          	lhu	a5,16(s4)
   1642e:	0407f793          	andi	a5,a5,64
   16432:	c399                	beqz	a5,16438 <_svfprintf_r+0x27e>
   16434:	6960106f          	j	17aca <_svfprintf_r+0x1910>
   16438:	27813083          	ld	ra,632(sp)
   1643c:	27013403          	ld	s0,624(sp)
   16440:	6522                	ld	a0,8(sp)
   16442:	26813483          	ld	s1,616(sp)
   16446:	26013903          	ld	s2,608(sp)
   1644a:	25813983          	ld	s3,600(sp)
   1644e:	25013a03          	ld	s4,592(sp)
   16452:	24813a83          	ld	s5,584(sp)
   16456:	24013b03          	ld	s6,576(sp)
   1645a:	23813b83          	ld	s7,568(sp)
   1645e:	23013c03          	ld	s8,560(sp)
   16462:	22813c83          	ld	s9,552(sp)
   16466:	22013d03          	ld	s10,544(sp)
   1646a:	21813d83          	ld	s11,536(sp)
   1646e:	28010113          	addi	sp,sp,640
   16472:	8082                	ret
   16474:	0104e493          	ori	s1,s1,16
   16478:	00044e03          	lbu	t3,0(s0)
   1647c:	2481                	sext.w	s1,s1
   1647e:	b599                	j	162c4 <_svfprintf_r+0x10a>
   16480:	0104e493          	ori	s1,s1,16
   16484:	2481                	sext.w	s1,s1
   16486:	66c2                	ld	a3,16(sp)
   16488:	0204f793          	andi	a5,s1,32
   1648c:	00868713          	addi	a4,a3,8
   16490:	24078463          	beqz	a5,166d8 <_svfprintf_r+0x51e>
   16494:	629c                	ld	a5,0(a3)
   16496:	893e                	mv	s2,a5
   16498:	2607c263          	bltz	a5,166fc <_svfprintf_r+0x542>
   1649c:	57fd                	li	a5,-1
   1649e:	62fc09e3          	beq	s8,a5,172d0 <_svfprintf_r+0x1116>
   164a2:	f7f4fd93          	andi	s11,s1,-129
   164a6:	e83a                	sd	a4,16(sp)
   164a8:	2d81                	sext.w	s11,s11
   164aa:	140908e3          	beqz	s2,16dfa <_svfprintf_r+0xc40>
   164ae:	47a5                	li	a5,9
   164b0:	4f27eae3          	bltu	a5,s2,171a4 <_svfprintf_r+0xfea>
   164b4:	0309091b          	addiw	s2,s2,48
   164b8:	192105a3          	sb	s2,395(sp)
   164bc:	84ee                	mv	s1,s11
   164be:	4b85                	li	s7,1
   164c0:	18b10c93          	addi	s9,sp,395
   164c4:	0df14783          	lbu	a5,223(sp)
   164c8:	000c091b          	sext.w	s2,s8
   164cc:	017c5463          	bge	s8,s7,164d4 <_svfprintf_r+0x31a>
   164d0:	000b891b          	sext.w	s2,s7
   164d4:	ec02                	sd	zero,24(sp)
   164d6:	e882                	sd	zero,80(sp)
   164d8:	ec82                	sd	zero,88(sp)
   164da:	e482                	sd	zero,72(sp)
   164dc:	e4078fe3          	beqz	a5,1633a <_svfprintf_r+0x180>
   164e0:	2905                	addiw	s2,s2,1
   164e2:	bda1                	j	1633a <_svfprintf_r+0x180>
   164e4:	0104e493          	ori	s1,s1,16
   164e8:	2481                	sext.w	s1,s1
   164ea:	66c2                	ld	a3,16(sp)
   164ec:	0204f793          	andi	a5,s1,32
   164f0:	00868713          	addi	a4,a3,8
   164f4:	1c078363          	beqz	a5,166ba <_svfprintf_r+0x500>
   164f8:	0006b903          	ld	s2,0(a3)
   164fc:	bff4fd93          	andi	s11,s1,-1025
   16500:	2d81                	sext.w	s11,s11
   16502:	e83a                	sd	a4,16(sp)
   16504:	4781                	li	a5,0
   16506:	4701                	li	a4,0
   16508:	0ce10fa3          	sb	a4,223(sp)
   1650c:	577d                	li	a4,-1
   1650e:	20ec0363          	beq	s8,a4,16714 <_svfprintf_r+0x55a>
   16512:	f7fdf493          	andi	s1,s11,-129
   16516:	2481                	sext.w	s1,s1
   16518:	68091663          	bnez	s2,16ba4 <_svfprintf_r+0x9ea>
   1651c:	500c1d63          	bnez	s8,16a36 <_svfprintf_r+0x87c>
   16520:	0e0790e3          	bnez	a5,16e00 <_svfprintf_r+0xc46>
   16524:	001dfb93          	andi	s7,s11,1
   16528:	18c10c93          	addi	s9,sp,396
   1652c:	f80b8ce3          	beqz	s7,164c4 <_svfprintf_r+0x30a>
   16530:	03000793          	li	a5,48
   16534:	18f105a3          	sb	a5,395(sp)
   16538:	18b10c93          	addi	s9,sp,395
   1653c:	b761                	j	164c4 <_svfprintf_r+0x30a>
   1653e:	419404bb          	subw	s1,s0,s9
   16542:	d2049ae3          	bnez	s1,16276 <_svfprintf_r+0xbc>
   16546:	00044783          	lbu	a5,0(s0)
   1654a:	bba9                	j	162a4 <_svfprintf_r+0xea>
   1654c:	0a10                	addi	a2,sp,272
   1654e:	85d2                	mv	a1,s4
   16550:	854e                	mv	a0,s3
   16552:	502030ef          	jal	ra,19a54 <__ssprint_r>
   16556:	ec051ae3          	bnez	a0,1642a <_svfprintf_r+0x270>
   1655a:	835a                	mv	t1,s6
   1655c:	bb3d                	j	1629a <_svfprintf_r+0xe0>
   1655e:	0084f793          	andi	a5,s1,8
   16562:	1a079de3          	bnez	a5,16f1c <_svfprintf_r+0xd62>
   16566:	67c2                	ld	a5,16(sp)
   16568:	ec1a                	sd	t1,24(sp)
   1656a:	2388                	fld	fa0,0(a5)
   1656c:	07a1                	addi	a5,a5,8
   1656e:	e83e                	sd	a5,16(sp)
   16570:	1c5050ef          	jal	ra,1bf34 <__extenddftf2>
   16574:	6362                	ld	t1,24(sp)
   16576:	87aa                	mv	a5,a0
   16578:	0208                	addi	a0,sp,256
   1657a:	ec1a                	sd	t1,24(sp)
   1657c:	e23e                	sd	a5,256(sp)
   1657e:	e62e                	sd	a1,264(sp)
   16580:	b46fe0ef          	jal	ra,148c6 <_ldcheck>
   16584:	d5aa                	sw	a0,232(sp)
   16586:	4789                	li	a5,2
   16588:	6362                	ld	t1,24(sp)
   1658a:	58f50be3          	beq	a0,a5,17320 <_svfprintf_r+0x1166>
   1658e:	4785                	li	a5,1
   16590:	00f51463          	bne	a0,a5,16598 <_svfprintf_r+0x3de>
   16594:	1300106f          	j	176c4 <_svfprintf_r+0x150a>
   16598:	06100793          	li	a5,97
   1659c:	6afd04e3          	beq	s10,a5,17444 <_svfprintf_r+0x128a>
   165a0:	04100793          	li	a5,65
   165a4:	05800713          	li	a4,88
   165a8:	6afd00e3          	beq	s10,a5,17448 <_svfprintf_r+0x128e>
   165ac:	fdfd7713          	andi	a4,s10,-33
   165b0:	57fd                	li	a5,-1
   165b2:	ecba                	sd	a4,88(sp)
   165b4:	00fc1463          	bne	s8,a5,165bc <_svfprintf_r+0x402>
   165b8:	2180106f          	j	177d0 <_svfprintf_r+0x1616>
   165bc:	04700793          	li	a5,71
   165c0:	00f71463          	bne	a4,a5,165c8 <_svfprintf_r+0x40e>
   165c4:	4f80106f          	j	17abc <_svfprintf_r+0x1902>
   165c8:	6932                	ld	s2,264(sp)
   165ca:	1004e793          	ori	a5,s1,256
   165ce:	f526                	sd	s1,168(sp)
   165d0:	6b92                	ld	s7,256(sp)
   165d2:	2781                	sext.w	a5,a5
   165d4:	00095463          	bgez	s2,165dc <_svfprintf_r+0x422>
   165d8:	7830006f          	j	1755a <_svfprintf_r+0x13a0>
   165dc:	e582                	sd	zero,200(sp)
   165de:	84be                	mv	s1,a5
   165e0:	ec02                	sd	zero,24(sp)
   165e2:	6a70006f          	j	17488 <_svfprintf_r+0x12ce>
   165e6:	0a10                	addi	a2,sp,272
   165e8:	85d2                	mv	a1,s4
   165ea:	854e                	mv	a0,s3
   165ec:	f816                	sd	t0,48(sp)
   165ee:	466030ef          	jal	ra,19a54 <__ssprint_r>
   165f2:	5a051163          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   165f6:	7792                	ld	a5,288(sp)
   165f8:	72c2                	ld	t0,48(sp)
   165fa:	835a                	mv	t1,s6
   165fc:	b361                	j	16384 <_svfprintf_r+0x1ca>
   165fe:	11812683          	lw	a3,280(sp)
   16602:	00178d13          	addi	s10,a5,1
   16606:	7782                	ld	a5,32(sp)
   16608:	00168b9b          	addiw	s7,a3,1
   1660c:	4605                	li	a2,1
   1660e:	01933023          	sd	s9,0(t1)
   16612:	86de                	mv	a3,s7
   16614:	01030c13          	addi	s8,t1,16
   16618:	7ef65a63          	bge	a2,a5,16e0c <_svfprintf_r+0xc52>
   1661c:	4605                	li	a2,1
   1661e:	10d12c23          	sw	a3,280(sp)
   16622:	00c33423          	sd	a2,8(t1)
   16626:	f26a                	sd	s10,288(sp)
   16628:	469d                	li	a3,7
   1662a:	0976c4e3          	blt	a3,s7,16eb2 <_svfprintf_r+0xcf8>
   1662e:	77a6                	ld	a5,104(sp)
   16630:	7746                	ld	a4,112(sp)
   16632:	2b85                	addiw	s7,s7,1
   16634:	9d3e                	add	s10,s10,a5
   16636:	00ec3023          	sd	a4,0(s8)
   1663a:	00fc3423          	sd	a5,8(s8)
   1663e:	f26a                	sd	s10,288(sp)
   16640:	11712c23          	sw	s7,280(sp)
   16644:	469d                	li	a3,7
   16646:	0c41                	addi	s8,s8,16
   16648:	0976c2e3          	blt	a3,s7,16ecc <_svfprintf_r+0xd12>
   1664c:	6512                	ld	a0,256(sp)
   1664e:	65b2                	ld	a1,264(sp)
   16650:	4681                	li	a3,0
   16652:	4601                	li	a2,0
   16654:	75a040ef          	jal	ra,1adae <__eqtf2>
   16658:	7782                	ld	a5,32(sp)
   1665a:	fff7869b          	addiw	a3,a5,-1
   1665e:	7e050063          	beqz	a0,16e3e <_svfprintf_r+0xc84>
   16662:	2b85                	addiw	s7,s7,1
   16664:	001c8813          	addi	a6,s9,1
   16668:	865e                	mv	a2,s7
   1666a:	9d36                	add	s10,s10,a3
   1666c:	010c3023          	sd	a6,0(s8)
   16670:	00dc3423          	sd	a3,8(s8)
   16674:	f26a                	sd	s10,288(sp)
   16676:	10c12c23          	sw	a2,280(sp)
   1667a:	469d                	li	a3,7
   1667c:	0c41                	addi	s8,s8,16
   1667e:	7b76c363          	blt	a3,s7,16e24 <_svfprintf_r+0xc6a>
   16682:	7766                	ld	a4,120(sp)
   16684:	1994                	addi	a3,sp,240
   16686:	001b861b          	addiw	a2,s7,1
   1668a:	01a707b3          	add	a5,a4,s10
   1668e:	00dc3023          	sd	a3,0(s8)
   16692:	00ec3423          	sd	a4,8(s8)
   16696:	f23e                	sd	a5,288(sp)
   16698:	10c12c23          	sw	a2,280(sp)
   1669c:	469d                	li	a3,7
   1669e:	010c0313          	addi	t1,s8,16
   166a2:	d4c6d3e3          	bge	a3,a2,163e8 <_svfprintf_r+0x22e>
   166a6:	0a10                	addi	a2,sp,272
   166a8:	85d2                	mv	a1,s4
   166aa:	854e                	mv	a0,s3
   166ac:	3a8030ef          	jal	ra,19a54 <__ssprint_r>
   166b0:	4e051263          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   166b4:	7792                	ld	a5,288(sp)
   166b6:	835a                	mv	t1,s6
   166b8:	bb05                	j	163e8 <_svfprintf_r+0x22e>
   166ba:	0104f793          	andi	a5,s1,16
   166be:	04079ae3          	bnez	a5,16f12 <_svfprintf_r+0xd58>
   166c2:	66c2                	ld	a3,16(sp)
   166c4:	0404f793          	andi	a5,s1,64
   166c8:	0006a903          	lw	s2,0(a3)
   166cc:	52078fe3          	beqz	a5,1740a <_svfprintf_r+0x1250>
   166d0:	1942                	slli	s2,s2,0x30
   166d2:	03095913          	srli	s2,s2,0x30
   166d6:	b51d                	j	164fc <_svfprintf_r+0x342>
   166d8:	0104f793          	andi	a5,s1,16
   166dc:	020796e3          	bnez	a5,16f08 <_svfprintf_r+0xd4e>
   166e0:	66c2                	ld	a3,16(sp)
   166e2:	0404f793          	andi	a5,s1,64
   166e6:	0006a903          	lw	s2,0(a3)
   166ea:	520788e3          	beqz	a5,1741a <_svfprintf_r+0x1260>
   166ee:	0109191b          	slliw	s2,s2,0x10
   166f2:	4109591b          	sraiw	s2,s2,0x10
   166f6:	87ca                	mv	a5,s2
   166f8:	da07d2e3          	bgez	a5,1649c <_svfprintf_r+0x2e2>
   166fc:	e83a                	sd	a4,16(sp)
   166fe:	02d00713          	li	a4,45
   16702:	0ce10fa3          	sb	a4,223(sp)
   16706:	577d                	li	a4,-1
   16708:	41200933          	neg	s2,s2
   1670c:	8da6                	mv	s11,s1
   1670e:	4785                	li	a5,1
   16710:	e0ec11e3          	bne	s8,a4,16512 <_svfprintf_r+0x358>
   16714:	4705                	li	a4,1
   16716:	d8e78ce3          	beq	a5,a4,164ae <_svfprintf_r+0x2f4>
   1671a:	4709                	li	a4,2
   1671c:	32e78663          	beq	a5,a4,16a48 <_svfprintf_r+0x88e>
   16720:	18c10b93          	addi	s7,sp,396
   16724:	8cde                	mv	s9,s7
   16726:	00797793          	andi	a5,s2,7
   1672a:	03078793          	addi	a5,a5,48
   1672e:	fefc8fa3          	sb	a5,-1(s9)
   16732:	00395913          	srli	s2,s2,0x3
   16736:	8766                	mv	a4,s9
   16738:	1cfd                	addi	s9,s9,-1
   1673a:	fe0916e3          	bnez	s2,16726 <_svfprintf_r+0x56c>
   1673e:	001df693          	andi	a3,s11,1
   16742:	32068363          	beqz	a3,16a68 <_svfprintf_r+0x8ae>
   16746:	03000693          	li	a3,48
   1674a:	30d78f63          	beq	a5,a3,16a68 <_svfprintf_r+0x8ae>
   1674e:	1779                	addi	a4,a4,-2
   16750:	fedc8fa3          	sb	a3,-1(s9)
   16754:	40eb8bbb          	subw	s7,s7,a4
   16758:	84ee                	mv	s1,s11
   1675a:	8cba                	mv	s9,a4
   1675c:	b3a5                	j	164c4 <_svfprintf_r+0x30a>
   1675e:	6742                	ld	a4,16(sp)
   16760:	0c010fa3          	sb	zero,223(sp)
   16764:	4905                	li	s2,1
   16766:	431c                	lw	a5,0(a4)
   16768:	0721                	addi	a4,a4,8
   1676a:	e83a                	sd	a4,16(sp)
   1676c:	12f10423          	sb	a5,296(sp)
   16770:	4b85                	li	s7,1
   16772:	12810c93          	addi	s9,sp,296
   16776:	be6d                	j	16330 <_svfprintf_r+0x176>
   16778:	67c2                	ld	a5,16(sp)
   1677a:	0c010fa3          	sb	zero,223(sp)
   1677e:	0007bc83          	ld	s9,0(a5)
   16782:	00878d93          	addi	s11,a5,8
   16786:	3c0c8de3          	beqz	s9,17360 <_svfprintf_r+0x11a6>
   1678a:	57fd                	li	a5,-1
   1678c:	0afc01e3          	beq	s8,a5,1702e <_svfprintf_r+0xe74>
   16790:	8662                	mv	a2,s8
   16792:	4581                	li	a1,0
   16794:	8566                	mv	a0,s9
   16796:	e81a                	sd	t1,16(sp)
   16798:	935fe0ef          	jal	ra,150cc <memchr>
   1679c:	ec2a                	sd	a0,24(sp)
   1679e:	6342                	ld	t1,16(sp)
   167a0:	e119                	bnez	a0,167a6 <_svfprintf_r+0x5ec>
   167a2:	1f60106f          	j	17998 <_svfprintf_r+0x17de>
   167a6:	67e2                	ld	a5,24(sp)
   167a8:	e86e                	sd	s11,16(sp)
   167aa:	ec02                	sd	zero,24(sp)
   167ac:	41978bbb          	subw	s7,a5,s9
   167b0:	0df14783          	lbu	a5,223(sp)
   167b4:	fffbc913          	not	s2,s7
   167b8:	43f95913          	srai	s2,s2,0x3f
   167bc:	e882                	sd	zero,80(sp)
   167be:	ec82                	sd	zero,88(sp)
   167c0:	e482                	sd	zero,72(sp)
   167c2:	01797933          	and	s2,s2,s7
   167c6:	4c01                	li	s8,0
   167c8:	d0079ce3          	bnez	a5,164e0 <_svfprintf_r+0x326>
   167cc:	b6bd                	j	1633a <_svfprintf_r+0x180>
   167ce:	67c2                	ld	a5,16(sp)
   167d0:	0007aa83          	lw	s5,0(a5)
   167d4:	07a1                	addi	a5,a5,8
   167d6:	700add63          	bgez	s5,16ef0 <_svfprintf_r+0xd36>
   167da:	41500abb          	negw	s5,s5
   167de:	e83e                	sd	a5,16(sp)
   167e0:	0044e493          	ori	s1,s1,4
   167e4:	00044e03          	lbu	t3,0(s0)
   167e8:	2481                	sext.w	s1,s1
   167ea:	bce9                	j	162c4 <_svfprintf_r+0x10a>
   167ec:	0104ed93          	ori	s11,s1,16
   167f0:	2d81                	sext.w	s11,s11
   167f2:	66c2                	ld	a3,16(sp)
   167f4:	020df793          	andi	a5,s11,32
   167f8:	00868713          	addi	a4,a3,8
   167fc:	68078a63          	beqz	a5,16e90 <_svfprintf_r+0xcd6>
   16800:	0006b903          	ld	s2,0(a3)
   16804:	4785                	li	a5,1
   16806:	e83a                	sd	a4,16(sp)
   16808:	b9fd                	j	16506 <_svfprintf_r+0x34c>
   1680a:	02b00793          	li	a5,43
   1680e:	00044e03          	lbu	t3,0(s0)
   16812:	0cf10fa3          	sb	a5,223(sp)
   16816:	b47d                	j	162c4 <_svfprintf_r+0x10a>
   16818:	0204e493          	ori	s1,s1,32
   1681c:	00044e03          	lbu	t3,0(s0)
   16820:	2481                	sext.w	s1,s1
   16822:	b44d                	j	162c4 <_svfprintf_r+0x10a>
   16824:	6742                	ld	a4,16(sp)
   16826:	77e1                	lui	a5,0xffff8
   16828:	8307c793          	xori	a5,a5,-2000
   1682c:	0ef11023          	sh	a5,224(sp)
   16830:	00870793          	addi	a5,a4,8
   16834:	e83e                	sd	a5,16(sp)
   16836:	67f1                	lui	a5,0x1c
   16838:	28078793          	addi	a5,a5,640 # 1c280 <__clzdi2+0x68>
   1683c:	0024ed93          	ori	s11,s1,2
   16840:	f43e                	sd	a5,40(sp)
   16842:	00073903          	ld	s2,0(a4)
   16846:	2d81                	sext.w	s11,s11
   16848:	4789                	li	a5,2
   1684a:	07800d13          	li	s10,120
   1684e:	b965                	j	16506 <_svfprintf_r+0x34c>
   16850:	66c2                	ld	a3,16(sp)
   16852:	0204f793          	andi	a5,s1,32
   16856:	6298                	ld	a4,0(a3)
   16858:	06a1                	addi	a3,a3,8
   1685a:	e836                	sd	a3,16(sp)
   1685c:	e395                	bnez	a5,16880 <_svfprintf_r+0x6c6>
   1685e:	0104f793          	andi	a5,s1,16
   16862:	ef99                	bnez	a5,16880 <_svfprintf_r+0x6c6>
   16864:	0404f793          	andi	a5,s1,64
   16868:	6e079fe3          	bnez	a5,17766 <_svfprintf_r+0x15ac>
   1686c:	2004f493          	andi	s1,s1,512
   16870:	67a2                	ld	a5,8(sp)
   16872:	e099                	bnez	s1,16878 <_svfprintf_r+0x6be>
   16874:	25e0106f          	j	17ad2 <_svfprintf_r+0x1918>
   16878:	00f70023          	sb	a5,0(a4)
   1687c:	8ca2                	mv	s9,s0
   1687e:	be71                	j	1641a <_svfprintf_r+0x260>
   16880:	67a2                	ld	a5,8(sp)
   16882:	8ca2                	mv	s9,s0
   16884:	e31c                	sd	a5,0(a4)
   16886:	be51                	j	1641a <_svfprintf_r+0x260>
   16888:	00044e03          	lbu	t3,0(s0)
   1688c:	06c00793          	li	a5,108
   16890:	70fe0363          	beq	t3,a5,16f96 <_svfprintf_r+0xddc>
   16894:	0104e493          	ori	s1,s1,16
   16898:	2481                	sext.w	s1,s1
   1689a:	b42d                	j	162c4 <_svfprintf_r+0x10a>
   1689c:	00044e03          	lbu	t3,0(s0)
   168a0:	06800793          	li	a5,104
   168a4:	70fe0163          	beq	t3,a5,16fa6 <_svfprintf_r+0xdec>
   168a8:	0404e493          	ori	s1,s1,64
   168ac:	2481                	sext.w	s1,s1
   168ae:	bc19                	j	162c4 <_svfprintf_r+0x10a>
   168b0:	0084e493          	ori	s1,s1,8
   168b4:	00044e03          	lbu	t3,0(s0)
   168b8:	2481                	sext.w	s1,s1
   168ba:	b429                	j	162c4 <_svfprintf_r+0x10a>
   168bc:	854e                	mv	a0,s3
   168be:	ec1a                	sd	t1,24(sp)
   168c0:	84efe0ef          	jal	ra,1490e <_localeconv_r>
   168c4:	651c                	ld	a5,8(a0)
   168c6:	853e                	mv	a0,a5
   168c8:	e53e                	sd	a5,136(sp)
   168ca:	feeff0ef          	jal	ra,160b8 <strlen>
   168ce:	87aa                	mv	a5,a0
   168d0:	854e                	mv	a0,s3
   168d2:	8d3e                	mv	s10,a5
   168d4:	e13e                	sd	a5,128(sp)
   168d6:	838fe0ef          	jal	ra,1490e <_localeconv_r>
   168da:	691c                	ld	a5,16(a0)
   168dc:	6362                	ld	t1,24(sp)
   168de:	00044e03          	lbu	t3,0(s0)
   168e2:	f0be                	sd	a5,96(sp)
   168e4:	9e0d00e3          	beqz	s10,162c4 <_svfprintf_r+0x10a>
   168e8:	9c078ee3          	beqz	a5,162c4 <_svfprintf_r+0x10a>
   168ec:	0007c783          	lbu	a5,0(a5)
   168f0:	9c078ae3          	beqz	a5,162c4 <_svfprintf_r+0x10a>
   168f4:	4004e493          	ori	s1,s1,1024
   168f8:	2481                	sext.w	s1,s1
   168fa:	b2e9                	j	162c4 <_svfprintf_r+0x10a>
   168fc:	0014e493          	ori	s1,s1,1
   16900:	00044e03          	lbu	t3,0(s0)
   16904:	2481                	sext.w	s1,s1
   16906:	ba7d                	j	162c4 <_svfprintf_r+0x10a>
   16908:	0df14783          	lbu	a5,223(sp)
   1690c:	00044e03          	lbu	t3,0(s0)
   16910:	9a079ae3          	bnez	a5,162c4 <_svfprintf_r+0x10a>
   16914:	02000793          	li	a5,32
   16918:	0cf10fa3          	sb	a5,223(sp)
   1691c:	b265                	j	162c4 <_svfprintf_r+0x10a>
   1691e:	0804e493          	ori	s1,s1,128
   16922:	00044e03          	lbu	t3,0(s0)
   16926:	2481                	sext.w	s1,s1
   16928:	ba71                	j	162c4 <_svfprintf_r+0x10a>
   1692a:	00044d03          	lbu	s10,0(s0)
   1692e:	00140793          	addi	a5,s0,1
   16932:	00dd1463          	bne	s10,a3,1693a <_svfprintf_r+0x780>
   16936:	2620106f          	j	17b98 <_svfprintf_r+0x19de>
   1693a:	fd0d071b          	addiw	a4,s10,-48
   1693e:	843e                	mv	s0,a5
   16940:	4c01                	li	s8,0
   16942:	98ede6e3          	bltu	s11,a4,162ce <_svfprintf_r+0x114>
   16946:	00044d03          	lbu	s10,0(s0)
   1694a:	002c179b          	slliw	a5,s8,0x2
   1694e:	018787bb          	addw	a5,a5,s8
   16952:	0017979b          	slliw	a5,a5,0x1
   16956:	00e78c3b          	addw	s8,a5,a4
   1695a:	fd0d071b          	addiw	a4,s10,-48
   1695e:	0405                	addi	s0,s0,1
   16960:	feedf3e3          	bgeu	s11,a4,16946 <_svfprintf_r+0x78c>
   16964:	b2ad                	j	162ce <_svfprintf_r+0x114>
   16966:	06500713          	li	a4,101
   1696a:	c9a75ae3          	bge	a4,s10,165fe <_svfprintf_r+0x444>
   1696e:	6512                	ld	a0,256(sp)
   16970:	65b2                	ld	a1,264(sp)
   16972:	4601                	li	a2,0
   16974:	4681                	li	a3,0
   16976:	fc3e                	sd	a5,56(sp)
   16978:	f81a                	sd	t1,48(sp)
   1697a:	434040ef          	jal	ra,1adae <__eqtf2>
   1697e:	7342                	ld	t1,48(sp)
   16980:	77e2                	ld	a5,56(sp)
   16982:	34051863          	bnez	a0,16cd2 <_svfprintf_r+0xb18>
   16986:	11812703          	lw	a4,280(sp)
   1698a:	66f1                	lui	a3,0x1c
   1698c:	2b868693          	addi	a3,a3,696 # 1c2b8 <__clzdi2+0xa0>
   16990:	2705                	addiw	a4,a4,1
   16992:	00d33023          	sd	a3,0(t1)
   16996:	0785                	addi	a5,a5,1
   16998:	4685                	li	a3,1
   1699a:	00d33423          	sd	a3,8(t1)
   1699e:	10e12c23          	sw	a4,280(sp)
   169a2:	0007069b          	sext.w	a3,a4
   169a6:	f23e                	sd	a5,288(sp)
   169a8:	471d                	li	a4,7
   169aa:	0341                	addi	t1,t1,16
   169ac:	12d746e3          	blt	a4,a3,172d8 <_svfprintf_r+0x111e>
   169b0:	572e                	lw	a4,232(sp)
   169b2:	7682                	ld	a3,32(sp)
   169b4:	52d75963          	bge	a4,a3,16ee6 <_svfprintf_r+0xd2c>
   169b8:	76a6                	ld	a3,104(sp)
   169ba:	11812703          	lw	a4,280(sp)
   169be:	7646                	ld	a2,112(sp)
   169c0:	97b6                	add	a5,a5,a3
   169c2:	2705                	addiw	a4,a4,1
   169c4:	00d33423          	sd	a3,8(t1)
   169c8:	00c33023          	sd	a2,0(t1)
   169cc:	0007069b          	sext.w	a3,a4
   169d0:	10e12c23          	sw	a4,280(sp)
   169d4:	f23e                	sd	a5,288(sp)
   169d6:	471d                	li	a4,7
   169d8:	0341                	addi	t1,t1,16
   169da:	5ad74463          	blt	a4,a3,16f82 <_svfprintf_r+0xdc8>
   169de:	7702                	ld	a4,32(sp)
   169e0:	fff70b9b          	addiw	s7,a4,-1
   169e4:	a17052e3          	blez	s7,163e8 <_svfprintf_r+0x22e>
   169e8:	68f5                	lui	a7,0x1d
   169ea:	46c1                	li	a3,16
   169ec:	11812703          	lw	a4,280(sp)
   169f0:	be888d93          	addi	s11,a7,-1048 # 1cbe8 <zeroes.0>
   169f4:	4cc1                	li	s9,16
   169f6:	4c1d                	li	s8,7
   169f8:	0176c763          	blt	a3,s7,16a06 <_svfprintf_r+0x84c>
   169fc:	0f30006f          	j	172ee <_svfprintf_r+0x1134>
   16a00:	3bc1                	addiw	s7,s7,-16
   16a02:	0f7cd6e3          	bge	s9,s7,172ee <_svfprintf_r+0x1134>
   16a06:	2705                	addiw	a4,a4,1
   16a08:	07c1                	addi	a5,a5,16
   16a0a:	01b33023          	sd	s11,0(t1)
   16a0e:	01933423          	sd	s9,8(t1)
   16a12:	f23e                	sd	a5,288(sp)
   16a14:	10e12c23          	sw	a4,280(sp)
   16a18:	0341                	addi	t1,t1,16
   16a1a:	feec53e3          	bge	s8,a4,16a00 <_svfprintf_r+0x846>
   16a1e:	0a10                	addi	a2,sp,272
   16a20:	85d2                	mv	a1,s4
   16a22:	854e                	mv	a0,s3
   16a24:	030030ef          	jal	ra,19a54 <__ssprint_r>
   16a28:	16051663          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   16a2c:	7792                	ld	a5,288(sp)
   16a2e:	11812703          	lw	a4,280(sp)
   16a32:	835a                	mv	t1,s6
   16a34:	b7f1                	j	16a00 <_svfprintf_r+0x846>
   16a36:	4705                	li	a4,1
   16a38:	00e79463          	bne	a5,a4,16a40 <_svfprintf_r+0x886>
   16a3c:	0160106f          	j	17a52 <_svfprintf_r+0x1898>
   16a40:	4709                	li	a4,2
   16a42:	8da6                	mv	s11,s1
   16a44:	cce79ee3          	bne	a5,a4,16720 <_svfprintf_r+0x566>
   16a48:	18c10b93          	addi	s7,sp,396
   16a4c:	8cde                	mv	s9,s7
   16a4e:	7722                	ld	a4,40(sp)
   16a50:	00f97793          	andi	a5,s2,15
   16a54:	1cfd                	addi	s9,s9,-1
   16a56:	97ba                	add	a5,a5,a4
   16a58:	0007c783          	lbu	a5,0(a5)
   16a5c:	00495913          	srli	s2,s2,0x4
   16a60:	00fc8023          	sb	a5,0(s9)
   16a64:	fe0915e3          	bnez	s2,16a4e <_svfprintf_r+0x894>
   16a68:	419b8bbb          	subw	s7,s7,s9
   16a6c:	84ee                	mv	s1,s11
   16a6e:	bc99                	j	164c4 <_svfprintf_r+0x30a>
   16a70:	412a86bb          	subw	a3,s5,s2
   16a74:	94d051e3          	blez	a3,163b6 <_svfprintf_r+0x1fc>
   16a78:	68f5                	lui	a7,0x1d
   16a7a:	4641                	li	a2,16
   16a7c:	11812703          	lw	a4,280(sp)
   16a80:	be888d93          	addi	s11,a7,-1048 # 1cbe8 <zeroes.0>
   16a84:	4f41                	li	t5,16
   16a86:	4f9d                	li	t6,7
   16a88:	00d64663          	blt	a2,a3,16a94 <_svfprintf_r+0x8da>
   16a8c:	a089                	j	16ace <_svfprintf_r+0x914>
   16a8e:	36c1                	addiw	a3,a3,-16
   16a90:	02df5f63          	bge	t5,a3,16ace <_svfprintf_r+0x914>
   16a94:	2705                	addiw	a4,a4,1
   16a96:	07c1                	addi	a5,a5,16
   16a98:	01b33023          	sd	s11,0(t1)
   16a9c:	01e33423          	sd	t5,8(t1)
   16aa0:	f23e                	sd	a5,288(sp)
   16aa2:	10e12c23          	sw	a4,280(sp)
   16aa6:	0341                	addi	t1,t1,16
   16aa8:	feefd3e3          	bge	t6,a4,16a8e <_svfprintf_r+0x8d4>
   16aac:	0a10                	addi	a2,sp,272
   16aae:	85d2                	mv	a1,s4
   16ab0:	854e                	mv	a0,s3
   16ab2:	f836                	sd	a3,48(sp)
   16ab4:	7a1020ef          	jal	ra,19a54 <__ssprint_r>
   16ab8:	ed71                	bnez	a0,16b94 <_svfprintf_r+0x9da>
   16aba:	76c2                	ld	a3,48(sp)
   16abc:	4f41                	li	t5,16
   16abe:	7792                	ld	a5,288(sp)
   16ac0:	36c1                	addiw	a3,a3,-16
   16ac2:	11812703          	lw	a4,280(sp)
   16ac6:	835a                	mv	t1,s6
   16ac8:	4f9d                	li	t6,7
   16aca:	fcdf45e3          	blt	t5,a3,16a94 <_svfprintf_r+0x8da>
   16ace:	2705                	addiw	a4,a4,1
   16ad0:	97b6                	add	a5,a5,a3
   16ad2:	00d33423          	sd	a3,8(t1)
   16ad6:	01b33023          	sd	s11,0(t1)
   16ada:	0007069b          	sext.w	a3,a4
   16ade:	10e12c23          	sw	a4,280(sp)
   16ae2:	f23e                	sd	a5,288(sp)
   16ae4:	471d                	li	a4,7
   16ae6:	0341                	addi	t1,t1,16
   16ae8:	8cd757e3          	bge	a4,a3,163b6 <_svfprintf_r+0x1fc>
   16aec:	0a10                	addi	a2,sp,272
   16aee:	85d2                	mv	a1,s4
   16af0:	854e                	mv	a0,s3
   16af2:	763020ef          	jal	ra,19a54 <__ssprint_r>
   16af6:	ed59                	bnez	a0,16b94 <_svfprintf_r+0x9da>
   16af8:	417c0c3b          	subw	s8,s8,s7
   16afc:	7792                	ld	a5,288(sp)
   16afe:	835a                	mv	t1,s6
   16b00:	8b805fe3          	blez	s8,163be <_svfprintf_r+0x204>
   16b04:	68f5                	lui	a7,0x1d
   16b06:	4641                	li	a2,16
   16b08:	11812703          	lw	a4,280(sp)
   16b0c:	be888d93          	addi	s11,a7,-1048 # 1cbe8 <zeroes.0>
   16b10:	4ec1                	li	t4,16
   16b12:	4f1d                	li	t5,7
   16b14:	01864663          	blt	a2,s8,16b20 <_svfprintf_r+0x966>
   16b18:	a83d                	j	16b56 <_svfprintf_r+0x99c>
   16b1a:	3c41                	addiw	s8,s8,-16
   16b1c:	038edd63          	bge	t4,s8,16b56 <_svfprintf_r+0x99c>
   16b20:	2705                	addiw	a4,a4,1
   16b22:	07c1                	addi	a5,a5,16
   16b24:	01b33023          	sd	s11,0(t1)
   16b28:	01d33423          	sd	t4,8(t1)
   16b2c:	f23e                	sd	a5,288(sp)
   16b2e:	10e12c23          	sw	a4,280(sp)
   16b32:	0341                	addi	t1,t1,16
   16b34:	feef53e3          	bge	t5,a4,16b1a <_svfprintf_r+0x960>
   16b38:	0a10                	addi	a2,sp,272
   16b3a:	85d2                	mv	a1,s4
   16b3c:	854e                	mv	a0,s3
   16b3e:	717020ef          	jal	ra,19a54 <__ssprint_r>
   16b42:	e929                	bnez	a0,16b94 <_svfprintf_r+0x9da>
   16b44:	4ec1                	li	t4,16
   16b46:	3c41                	addiw	s8,s8,-16
   16b48:	7792                	ld	a5,288(sp)
   16b4a:	11812703          	lw	a4,280(sp)
   16b4e:	835a                	mv	t1,s6
   16b50:	4f1d                	li	t5,7
   16b52:	fd8ec7e3          	blt	t4,s8,16b20 <_svfprintf_r+0x966>
   16b56:	0017069b          	addiw	a3,a4,1
   16b5a:	97e2                	add	a5,a5,s8
   16b5c:	01b33023          	sd	s11,0(t1)
   16b60:	01833423          	sd	s8,8(t1)
   16b64:	f23e                	sd	a5,288(sp)
   16b66:	10d12c23          	sw	a3,280(sp)
   16b6a:	471d                	li	a4,7
   16b6c:	0341                	addi	t1,t1,16
   16b6e:	84d758e3          	bge	a4,a3,163be <_svfprintf_r+0x204>
   16b72:	0a10                	addi	a2,sp,272
   16b74:	85d2                	mv	a1,s4
   16b76:	854e                	mv	a0,s3
   16b78:	6dd020ef          	jal	ra,19a54 <__ssprint_r>
   16b7c:	ed01                	bnez	a0,16b94 <_svfprintf_r+0x9da>
   16b7e:	7792                	ld	a5,288(sp)
   16b80:	835a                	mv	t1,s6
   16b82:	83dff06f          	j	163be <_svfprintf_r+0x204>
   16b86:	0a10                	addi	a2,sp,272
   16b88:	85d2                	mv	a1,s4
   16b8a:	854e                	mv	a0,s3
   16b8c:	6c9020ef          	jal	ra,19a54 <__ssprint_r>
   16b90:	86050be3          	beqz	a0,16406 <_svfprintf_r+0x24c>
   16b94:	67e2                	ld	a5,24(sp)
   16b96:	88078ae3          	beqz	a5,1642a <_svfprintf_r+0x270>
   16b9a:	85be                	mv	a1,a5
   16b9c:	854e                	mv	a0,s3
   16b9e:	9edfb0ef          	jal	ra,1258a <_free_r>
   16ba2:	b061                	j	1642a <_svfprintf_r+0x270>
   16ba4:	8da6                	mv	s11,s1
   16ba6:	b6bd                	j	16714 <_svfprintf_r+0x55a>
   16ba8:	68f5                	lui	a7,0x1d
   16baa:	4641                	li	a2,16
   16bac:	11812703          	lw	a4,280(sp)
   16bb0:	bd888893          	addi	a7,a7,-1064 # 1cbd8 <blanks.1>
   16bb4:	4f41                	li	t5,16
   16bb6:	439d                	li	t2,7
   16bb8:	00d64663          	blt	a2,a3,16bc4 <_svfprintf_r+0xa0a>
   16bbc:	a0a9                	j	16c06 <_svfprintf_r+0xa4c>
   16bbe:	36c1                	addiw	a3,a3,-16
   16bc0:	04df5363          	bge	t5,a3,16c06 <_svfprintf_r+0xa4c>
   16bc4:	2705                	addiw	a4,a4,1
   16bc6:	07c1                	addi	a5,a5,16
   16bc8:	01133023          	sd	a7,0(t1)
   16bcc:	01e33423          	sd	t5,8(t1)
   16bd0:	f23e                	sd	a5,288(sp)
   16bd2:	10e12c23          	sw	a4,280(sp)
   16bd6:	0341                	addi	t1,t1,16
   16bd8:	fee3d3e3          	bge	t2,a4,16bbe <_svfprintf_r+0xa04>
   16bdc:	0a10                	addi	a2,sp,272
   16bde:	85d2                	mv	a1,s4
   16be0:	854e                	mv	a0,s3
   16be2:	e0c6                	sd	a7,64(sp)
   16be4:	fc36                	sd	a3,56(sp)
   16be6:	f816                	sd	t0,48(sp)
   16be8:	66d020ef          	jal	ra,19a54 <__ssprint_r>
   16bec:	f545                	bnez	a0,16b94 <_svfprintf_r+0x9da>
   16bee:	76e2                	ld	a3,56(sp)
   16bf0:	4f41                	li	t5,16
   16bf2:	7792                	ld	a5,288(sp)
   16bf4:	36c1                	addiw	a3,a3,-16
   16bf6:	11812703          	lw	a4,280(sp)
   16bfa:	6886                	ld	a7,64(sp)
   16bfc:	72c2                	ld	t0,48(sp)
   16bfe:	835a                	mv	t1,s6
   16c00:	439d                	li	t2,7
   16c02:	fcdf41e3          	blt	t5,a3,16bc4 <_svfprintf_r+0xa0a>
   16c06:	2705                	addiw	a4,a4,1
   16c08:	97b6                	add	a5,a5,a3
   16c0a:	00d33423          	sd	a3,8(t1)
   16c0e:	01133023          	sd	a7,0(t1)
   16c12:	0007069b          	sext.w	a3,a4
   16c16:	10e12c23          	sw	a4,280(sp)
   16c1a:	f23e                	sd	a5,288(sp)
   16c1c:	471d                	li	a4,7
   16c1e:	0341                	addi	t1,t1,16
   16c20:	f2d75b63          	bge	a4,a3,16356 <_svfprintf_r+0x19c>
   16c24:	0a10                	addi	a2,sp,272
   16c26:	85d2                	mv	a1,s4
   16c28:	854e                	mv	a0,s3
   16c2a:	f816                	sd	t0,48(sp)
   16c2c:	629020ef          	jal	ra,19a54 <__ssprint_r>
   16c30:	f135                	bnez	a0,16b94 <_svfprintf_r+0x9da>
   16c32:	7792                	ld	a5,288(sp)
   16c34:	72c2                	ld	t0,48(sp)
   16c36:	835a                	mv	t1,s6
   16c38:	f1eff06f          	j	16356 <_svfprintf_r+0x19c>
   16c3c:	0a10                	addi	a2,sp,272
   16c3e:	85d2                	mv	a1,s4
   16c40:	854e                	mv	a0,s3
   16c42:	613020ef          	jal	ra,19a54 <__ssprint_r>
   16c46:	f539                	bnez	a0,16b94 <_svfprintf_r+0x9da>
   16c48:	7792                	ld	a5,288(sp)
   16c4a:	835a                	mv	t1,s6
   16c4c:	f62ff06f          	j	163ae <_svfprintf_r+0x1f4>
   16c50:	68f5                	lui	a7,0x1d
   16c52:	46c1                	li	a3,16
   16c54:	11812703          	lw	a4,280(sp)
   16c58:	bd888893          	addi	a7,a7,-1064 # 1cbd8 <blanks.1>
   16c5c:	4bc1                	li	s7,16
   16c5e:	4c1d                	li	s8,7
   16c60:	0096c663          	blt	a3,s1,16c6c <_svfprintf_r+0xab2>
   16c64:	a081                	j	16ca4 <_svfprintf_r+0xaea>
   16c66:	34c1                	addiw	s1,s1,-16
   16c68:	029bde63          	bge	s7,s1,16ca4 <_svfprintf_r+0xaea>
   16c6c:	2705                	addiw	a4,a4,1
   16c6e:	07c1                	addi	a5,a5,16
   16c70:	01133023          	sd	a7,0(t1)
   16c74:	01733423          	sd	s7,8(t1)
   16c78:	f23e                	sd	a5,288(sp)
   16c7a:	10e12c23          	sw	a4,280(sp)
   16c7e:	0341                	addi	t1,t1,16
   16c80:	feec53e3          	bge	s8,a4,16c66 <_svfprintf_r+0xaac>
   16c84:	0a10                	addi	a2,sp,272
   16c86:	85d2                	mv	a1,s4
   16c88:	854e                	mv	a0,s3
   16c8a:	f846                	sd	a7,48(sp)
   16c8c:	5c9020ef          	jal	ra,19a54 <__ssprint_r>
   16c90:	f00512e3          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   16c94:	34c1                	addiw	s1,s1,-16
   16c96:	7792                	ld	a5,288(sp)
   16c98:	11812703          	lw	a4,280(sp)
   16c9c:	78c2                	ld	a7,48(sp)
   16c9e:	835a                	mv	t1,s6
   16ca0:	fc9bc6e3          	blt	s7,s1,16c6c <_svfprintf_r+0xab2>
   16ca4:	0017069b          	addiw	a3,a4,1
   16ca8:	97a6                	add	a5,a5,s1
   16caa:	01133023          	sd	a7,0(t1)
   16cae:	00933423          	sd	s1,8(t1)
   16cb2:	f23e                	sd	a5,288(sp)
   16cb4:	10d12c23          	sw	a3,280(sp)
   16cb8:	471d                	li	a4,7
   16cba:	f2d75d63          	bge	a4,a3,163f4 <_svfprintf_r+0x23a>
   16cbe:	0a10                	addi	a2,sp,272
   16cc0:	85d2                	mv	a1,s4
   16cc2:	854e                	mv	a0,s3
   16cc4:	591020ef          	jal	ra,19a54 <__ssprint_r>
   16cc8:	ec0516e3          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   16ccc:	7792                	ld	a5,288(sp)
   16cce:	f26ff06f          	j	163f4 <_svfprintf_r+0x23a>
   16cd2:	562e                	lw	a2,232(sp)
   16cd4:	54c05863          	blez	a2,17224 <_svfprintf_r+0x106a>
   16cd8:	6726                	ld	a4,72(sp)
   16cda:	7682                	ld	a3,32(sp)
   16cdc:	00070b9b          	sext.w	s7,a4
   16ce0:	24e6c863          	blt	a3,a4,16f30 <_svfprintf_r+0xd76>
   16ce4:	03705263          	blez	s7,16d08 <_svfprintf_r+0xb4e>
   16ce8:	11812703          	lw	a4,280(sp)
   16cec:	97de                	add	a5,a5,s7
   16cee:	01933023          	sd	s9,0(t1)
   16cf2:	0017069b          	addiw	a3,a4,1
   16cf6:	01733423          	sd	s7,8(t1)
   16cfa:	f23e                	sd	a5,288(sp)
   16cfc:	10d12c23          	sw	a3,280(sp)
   16d00:	471d                	li	a4,7
   16d02:	0341                	addi	t1,t1,16
   16d04:	20d74ae3          	blt	a4,a3,17718 <_svfprintf_r+0x155e>
   16d08:	fffbc713          	not	a4,s7
   16d0c:	977d                	srai	a4,a4,0x3f
   16d0e:	00ebfbb3          	and	s7,s7,a4
   16d12:	6726                	ld	a4,72(sp)
   16d14:	41770bbb          	subw	s7,a4,s7
   16d18:	2d704563          	bgtz	s7,16fe2 <_svfprintf_r+0xe28>
   16d1c:	66a6                	ld	a3,72(sp)
   16d1e:	4004f713          	andi	a4,s1,1024
   16d22:	00dc8c33          	add	s8,s9,a3
   16d26:	32071d63          	bnez	a4,17060 <_svfprintf_r+0xea6>
   16d2a:	572e                	lw	a4,232(sp)
   16d2c:	7682                	ld	a3,32(sp)
   16d2e:	00d74663          	blt	a4,a3,16d3a <_svfprintf_r+0xb80>
   16d32:	0014f693          	andi	a3,s1,1
   16d36:	1e068ee3          	beqz	a3,17732 <_svfprintf_r+0x1578>
   16d3a:	7626                	ld	a2,104(sp)
   16d3c:	11812683          	lw	a3,280(sp)
   16d40:	75c6                	ld	a1,112(sp)
   16d42:	97b2                	add	a5,a5,a2
   16d44:	2685                	addiw	a3,a3,1
   16d46:	00c33423          	sd	a2,8(t1)
   16d4a:	00b33023          	sd	a1,0(t1)
   16d4e:	0006861b          	sext.w	a2,a3
   16d52:	10d12c23          	sw	a3,280(sp)
   16d56:	f23e                	sd	a5,288(sp)
   16d58:	469d                	li	a3,7
   16d5a:	0341                	addi	t1,t1,16
   16d5c:	42c6c2e3          	blt	a3,a2,17980 <_svfprintf_r+0x17c6>
   16d60:	7682                	ld	a3,32(sp)
   16d62:	00dc8833          	add	a6,s9,a3
   16d66:	41880bb3          	sub	s7,a6,s8
   16d6a:	9e99                	subw	a3,a3,a4
   16d6c:	000b861b          	sext.w	a2,s7
   16d70:	00c6d363          	bge	a3,a2,16d76 <_svfprintf_r+0xbbc>
   16d74:	8bb6                	mv	s7,a3
   16d76:	2b81                	sext.w	s7,s7
   16d78:	03705263          	blez	s7,16d9c <_svfprintf_r+0xbe2>
   16d7c:	11812703          	lw	a4,280(sp)
   16d80:	97de                	add	a5,a5,s7
   16d82:	01833023          	sd	s8,0(t1)
   16d86:	0017061b          	addiw	a2,a4,1
   16d8a:	01733423          	sd	s7,8(t1)
   16d8e:	f23e                	sd	a5,288(sp)
   16d90:	10c12c23          	sw	a2,280(sp)
   16d94:	471d                	li	a4,7
   16d96:	0341                	addi	t1,t1,16
   16d98:	40c74ee3          	blt	a4,a2,179b4 <_svfprintf_r+0x17fa>
   16d9c:	fffbc713          	not	a4,s7
   16da0:	977d                	srai	a4,a4,0x3f
   16da2:	00ebfbb3          	and	s7,s7,a4
   16da6:	41768bbb          	subw	s7,a3,s7
   16daa:	e3705f63          	blez	s7,163e8 <_svfprintf_r+0x22e>
   16dae:	68f5                	lui	a7,0x1d
   16db0:	46c1                	li	a3,16
   16db2:	11812703          	lw	a4,280(sp)
   16db6:	be888d93          	addi	s11,a7,-1048 # 1cbe8 <zeroes.0>
   16dba:	4cc1                	li	s9,16
   16dbc:	4c1d                	li	s8,7
   16dbe:	0176c663          	blt	a3,s7,16dca <_svfprintf_r+0xc10>
   16dc2:	a335                	j	172ee <_svfprintf_r+0x1134>
   16dc4:	3bc1                	addiw	s7,s7,-16
   16dc6:	537cd463          	bge	s9,s7,172ee <_svfprintf_r+0x1134>
   16dca:	2705                	addiw	a4,a4,1
   16dcc:	07c1                	addi	a5,a5,16
   16dce:	01b33023          	sd	s11,0(t1)
   16dd2:	01933423          	sd	s9,8(t1)
   16dd6:	f23e                	sd	a5,288(sp)
   16dd8:	10e12c23          	sw	a4,280(sp)
   16ddc:	0341                	addi	t1,t1,16
   16dde:	feec53e3          	bge	s8,a4,16dc4 <_svfprintf_r+0xc0a>
   16de2:	0a10                	addi	a2,sp,272
   16de4:	85d2                	mv	a1,s4
   16de6:	854e                	mv	a0,s3
   16de8:	46d020ef          	jal	ra,19a54 <__ssprint_r>
   16dec:	da0514e3          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   16df0:	7792                	ld	a5,288(sp)
   16df2:	11812703          	lw	a4,280(sp)
   16df6:	835a                	mv	t1,s6
   16df8:	b7f1                	j	16dc4 <_svfprintf_r+0xc0a>
   16dfa:	ea0c1d63          	bnez	s8,164b4 <_svfprintf_r+0x2fa>
   16dfe:	84ee                	mv	s1,s11
   16e00:	4c01                	li	s8,0
   16e02:	4b81                	li	s7,0
   16e04:	18c10c93          	addi	s9,sp,396
   16e08:	ebcff06f          	j	164c4 <_svfprintf_r+0x30a>
   16e0c:	0014f593          	andi	a1,s1,1
   16e10:	800596e3          	bnez	a1,1661c <_svfprintf_r+0x462>
   16e14:	00c33423          	sd	a2,8(t1)
   16e18:	f26a                	sd	s10,288(sp)
   16e1a:	11712c23          	sw	s7,280(sp)
   16e1e:	469d                	li	a3,7
   16e20:	8776d1e3          	bge	a3,s7,16682 <_svfprintf_r+0x4c8>
   16e24:	0a10                	addi	a2,sp,272
   16e26:	85d2                	mv	a1,s4
   16e28:	854e                	mv	a0,s3
   16e2a:	42b020ef          	jal	ra,19a54 <__ssprint_r>
   16e2e:	d60513e3          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   16e32:	7d12                	ld	s10,288(sp)
   16e34:	11812b83          	lw	s7,280(sp)
   16e38:	8c5a                	mv	s8,s6
   16e3a:	849ff06f          	j	16682 <_svfprintf_r+0x4c8>
   16e3e:	84d052e3          	blez	a3,16682 <_svfprintf_r+0x4c8>
   16e42:	68f5                	lui	a7,0x1d
   16e44:	4641                	li	a2,16
   16e46:	be888d93          	addi	s11,a7,-1048 # 1cbe8 <zeroes.0>
   16e4a:	4841                	li	a6,16
   16e4c:	4c9d                	li	s9,7
   16e4e:	00d64663          	blt	a2,a3,16e5a <_svfprintf_r+0xca0>
   16e52:	ab71                	j	173ee <_svfprintf_r+0x1234>
   16e54:	36c1                	addiw	a3,a3,-16
   16e56:	58d85c63          	bge	a6,a3,173ee <_svfprintf_r+0x1234>
   16e5a:	2b85                	addiw	s7,s7,1
   16e5c:	0d41                	addi	s10,s10,16
   16e5e:	01bc3023          	sd	s11,0(s8)
   16e62:	010c3423          	sd	a6,8(s8)
   16e66:	f26a                	sd	s10,288(sp)
   16e68:	11712c23          	sw	s7,280(sp)
   16e6c:	0c41                	addi	s8,s8,16
   16e6e:	ff7cd3e3          	bge	s9,s7,16e54 <_svfprintf_r+0xc9a>
   16e72:	0a10                	addi	a2,sp,272
   16e74:	85d2                	mv	a1,s4
   16e76:	854e                	mv	a0,s3
   16e78:	f836                	sd	a3,48(sp)
   16e7a:	3db020ef          	jal	ra,19a54 <__ssprint_r>
   16e7e:	d0051be3          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   16e82:	7d12                	ld	s10,288(sp)
   16e84:	11812b83          	lw	s7,280(sp)
   16e88:	76c2                	ld	a3,48(sp)
   16e8a:	8c5a                	mv	s8,s6
   16e8c:	4841                	li	a6,16
   16e8e:	b7d9                	j	16e54 <_svfprintf_r+0xc9a>
   16e90:	010df793          	andi	a5,s11,16
   16e94:	e3bd                	bnez	a5,16efa <_svfprintf_r+0xd40>
   16e96:	66c2                	ld	a3,16(sp)
   16e98:	040df793          	andi	a5,s11,64
   16e9c:	0006a903          	lw	s2,0(a3)
   16ea0:	58078863          	beqz	a5,17430 <_svfprintf_r+0x1276>
   16ea4:	1942                	slli	s2,s2,0x30
   16ea6:	03095913          	srli	s2,s2,0x30
   16eaa:	e83a                	sd	a4,16(sp)
   16eac:	4785                	li	a5,1
   16eae:	e58ff06f          	j	16506 <_svfprintf_r+0x34c>
   16eb2:	0a10                	addi	a2,sp,272
   16eb4:	85d2                	mv	a1,s4
   16eb6:	854e                	mv	a0,s3
   16eb8:	39d020ef          	jal	ra,19a54 <__ssprint_r>
   16ebc:	cc051ce3          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   16ec0:	7d12                	ld	s10,288(sp)
   16ec2:	11812b83          	lw	s7,280(sp)
   16ec6:	8c5a                	mv	s8,s6
   16ec8:	f66ff06f          	j	1662e <_svfprintf_r+0x474>
   16ecc:	0a10                	addi	a2,sp,272
   16ece:	85d2                	mv	a1,s4
   16ed0:	854e                	mv	a0,s3
   16ed2:	383020ef          	jal	ra,19a54 <__ssprint_r>
   16ed6:	ca051fe3          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   16eda:	7d12                	ld	s10,288(sp)
   16edc:	11812b83          	lw	s7,280(sp)
   16ee0:	8c5a                	mv	s8,s6
   16ee2:	f6aff06f          	j	1664c <_svfprintf_r+0x492>
   16ee6:	0014f713          	andi	a4,s1,1
   16eea:	ce070f63          	beqz	a4,163e8 <_svfprintf_r+0x22e>
   16eee:	b4e9                	j	169b8 <_svfprintf_r+0x7fe>
   16ef0:	00044e03          	lbu	t3,0(s0)
   16ef4:	e83e                	sd	a5,16(sp)
   16ef6:	bceff06f          	j	162c4 <_svfprintf_r+0x10a>
   16efa:	67c2                	ld	a5,16(sp)
   16efc:	e83a                	sd	a4,16(sp)
   16efe:	0007b903          	ld	s2,0(a5)
   16f02:	4785                	li	a5,1
   16f04:	e02ff06f          	j	16506 <_svfprintf_r+0x34c>
   16f08:	67c2                	ld	a5,16(sp)
   16f0a:	639c                	ld	a5,0(a5)
   16f0c:	893e                	mv	s2,a5
   16f0e:	d8aff06f          	j	16498 <_svfprintf_r+0x2de>
   16f12:	67c2                	ld	a5,16(sp)
   16f14:	0007b903          	ld	s2,0(a5)
   16f18:	de4ff06f          	j	164fc <_svfprintf_r+0x342>
   16f1c:	67c2                	ld	a5,16(sp)
   16f1e:	07bd                	addi	a5,a5,15
   16f20:	ff07f713          	andi	a4,a5,-16
   16f24:	631c                	ld	a5,0(a4)
   16f26:	670c                	ld	a1,8(a4)
   16f28:	0741                	addi	a4,a4,16
   16f2a:	e83a                	sd	a4,16(sp)
   16f2c:	e4cff06f          	j	16578 <_svfprintf_r+0x3be>
   16f30:	00068b9b          	sext.w	s7,a3
   16f34:	db704ae3          	bgtz	s7,16ce8 <_svfprintf_r+0xb2e>
   16f38:	bbc1                	j	16d08 <_svfprintf_r+0xb4e>
   16f3a:	67f1                	lui	a5,0x1c
   16f3c:	28078793          	addi	a5,a5,640 # 1c280 <__clzdi2+0x68>
   16f40:	f43e                	sd	a5,40(sp)
   16f42:	66c2                	ld	a3,16(sp)
   16f44:	0204f793          	andi	a5,s1,32
   16f48:	00868713          	addi	a4,a3,8
   16f4c:	22078a63          	beqz	a5,17180 <_svfprintf_r+0xfc6>
   16f50:	0006b903          	ld	s2,0(a3)
   16f54:	0014f793          	andi	a5,s1,1
   16f58:	cf81                	beqz	a5,16f70 <_svfprintf_r+0xdb6>
   16f5a:	00090b63          	beqz	s2,16f70 <_svfprintf_r+0xdb6>
   16f5e:	0024e493          	ori	s1,s1,2
   16f62:	03000793          	li	a5,48
   16f66:	0ef10023          	sb	a5,224(sp)
   16f6a:	0fa100a3          	sb	s10,225(sp)
   16f6e:	2481                	sext.w	s1,s1
   16f70:	bff4fd93          	andi	s11,s1,-1025
   16f74:	2d81                	sext.w	s11,s11
   16f76:	e83a                	sd	a4,16(sp)
   16f78:	4789                	li	a5,2
   16f7a:	d8cff06f          	j	16506 <_svfprintf_r+0x34c>
   16f7e:	8da6                	mv	s11,s1
   16f80:	b88d                	j	167f2 <_svfprintf_r+0x638>
   16f82:	0a10                	addi	a2,sp,272
   16f84:	85d2                	mv	a1,s4
   16f86:	854e                	mv	a0,s3
   16f88:	2cd020ef          	jal	ra,19a54 <__ssprint_r>
   16f8c:	c00514e3          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   16f90:	7792                	ld	a5,288(sp)
   16f92:	835a                	mv	t1,s6
   16f94:	b4a9                	j	169de <_svfprintf_r+0x824>
   16f96:	0204e493          	ori	s1,s1,32
   16f9a:	00144e03          	lbu	t3,1(s0)
   16f9e:	2481                	sext.w	s1,s1
   16fa0:	0405                	addi	s0,s0,1
   16fa2:	b22ff06f          	j	162c4 <_svfprintf_r+0x10a>
   16fa6:	2004e493          	ori	s1,s1,512
   16faa:	00144e03          	lbu	t3,1(s0)
   16fae:	2481                	sext.w	s1,s1
   16fb0:	0405                	addi	s0,s0,1
   16fb2:	b12ff06f          	j	162c4 <_svfprintf_r+0x10a>
   16fb6:	67f1                	lui	a5,0x1c
   16fb8:	29878793          	addi	a5,a5,664 # 1c298 <__clzdi2+0x80>
   16fbc:	f43e                	sd	a5,40(sp)
   16fbe:	b751                	j	16f42 <_svfprintf_r+0xd88>
   16fc0:	04000593          	li	a1,64
   16fc4:	854e                	mv	a0,s3
   16fc6:	af3fd0ef          	jal	ra,14ab8 <_malloc_r>
   16fca:	00aa3023          	sd	a0,0(s4)
   16fce:	00aa3c23          	sd	a0,24(s4)
   16fd2:	420503e3          	beqz	a0,17bf8 <_svfprintf_r+0x1a3e>
   16fd6:	04000793          	li	a5,64
   16fda:	02fa2023          	sw	a5,32(s4)
   16fde:	a42ff06f          	j	16220 <_svfprintf_r+0x66>
   16fe2:	68f5                	lui	a7,0x1d
   16fe4:	46c1                	li	a3,16
   16fe6:	11812703          	lw	a4,280(sp)
   16fea:	be888d93          	addi	s11,a7,-1048 # 1cbe8 <zeroes.0>
   16fee:	4d41                	li	s10,16
   16ff0:	4c1d                	li	s8,7
   16ff2:	0176c663          	blt	a3,s7,16ffe <_svfprintf_r+0xe44>
   16ff6:	a5e5                	j	176de <_svfprintf_r+0x1524>
   16ff8:	3bc1                	addiw	s7,s7,-16
   16ffa:	6f7d5263          	bge	s10,s7,176de <_svfprintf_r+0x1524>
   16ffe:	2705                	addiw	a4,a4,1
   17000:	07c1                	addi	a5,a5,16
   17002:	01b33023          	sd	s11,0(t1)
   17006:	01a33423          	sd	s10,8(t1)
   1700a:	f23e                	sd	a5,288(sp)
   1700c:	10e12c23          	sw	a4,280(sp)
   17010:	0341                	addi	t1,t1,16
   17012:	feec53e3          	bge	s8,a4,16ff8 <_svfprintf_r+0xe3e>
   17016:	0a10                	addi	a2,sp,272
   17018:	85d2                	mv	a1,s4
   1701a:	854e                	mv	a0,s3
   1701c:	239020ef          	jal	ra,19a54 <__ssprint_r>
   17020:	b6051ae3          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   17024:	7792                	ld	a5,288(sp)
   17026:	11812703          	lw	a4,280(sp)
   1702a:	835a                	mv	t1,s6
   1702c:	b7f1                	j	16ff8 <_svfprintf_r+0xe3e>
   1702e:	8566                	mv	a0,s9
   17030:	f81a                	sd	t1,48(sp)
   17032:	886ff0ef          	jal	ra,160b8 <strlen>
   17036:	00050b9b          	sext.w	s7,a0
   1703a:	0df14783          	lbu	a5,223(sp)
   1703e:	fffbc913          	not	s2,s7
   17042:	43f95913          	srai	s2,s2,0x3f
   17046:	e86e                	sd	s11,16(sp)
   17048:	ec02                	sd	zero,24(sp)
   1704a:	e882                	sd	zero,80(sp)
   1704c:	ec82                	sd	zero,88(sp)
   1704e:	e482                	sd	zero,72(sp)
   17050:	7342                	ld	t1,48(sp)
   17052:	01797933          	and	s2,s2,s7
   17056:	4c01                	li	s8,0
   17058:	c8079463          	bnez	a5,164e0 <_svfprintf_r+0x326>
   1705c:	adeff06f          	j	1633a <_svfprintf_r+0x180>
   17060:	7702                	ld	a4,32(sp)
   17062:	6ef5                	lui	t4,0x1d
   17064:	4b9d                	li	s7,7
   17066:	9766                	add	a4,a4,s9
   17068:	fc3a                	sd	a4,56(sp)
   1706a:	6766                	ld	a4,88(sp)
   1706c:	4dc1                	li	s11,16
   1706e:	be8e8d13          	addi	s10,t4,-1048 # 1cbe8 <zeroes.0>
   17072:	cb49                	beqz	a4,17104 <_svfprintf_r+0xf4a>
   17074:	6746                	ld	a4,80(sp)
   17076:	eb51                	bnez	a4,1710a <_svfprintf_r+0xf50>
   17078:	7706                	ld	a4,96(sp)
   1707a:	177d                	addi	a4,a4,-1
   1707c:	f0ba                	sd	a4,96(sp)
   1707e:	6766                	ld	a4,88(sp)
   17080:	377d                	addiw	a4,a4,-1
   17082:	ecba                	sd	a4,88(sp)
   17084:	668a                	ld	a3,128(sp)
   17086:	11812703          	lw	a4,280(sp)
   1708a:	662a                	ld	a2,136(sp)
   1708c:	97b6                	add	a5,a5,a3
   1708e:	2705                	addiw	a4,a4,1
   17090:	00d33423          	sd	a3,8(t1)
   17094:	00c33023          	sd	a2,0(t1)
   17098:	f23e                	sd	a5,288(sp)
   1709a:	0007069b          	sext.w	a3,a4
   1709e:	10e12c23          	sw	a4,280(sp)
   170a2:	0341                	addi	t1,t1,16
   170a4:	0edbc663          	blt	s7,a3,17190 <_svfprintf_r+0xfd6>
   170a8:	7706                	ld	a4,96(sp)
   170aa:	00074603          	lbu	a2,0(a4)
   170ae:	7762                	ld	a4,56(sp)
   170b0:	418706b3          	sub	a3,a4,s8
   170b4:	0006859b          	sext.w	a1,a3
   170b8:	0006071b          	sext.w	a4,a2
   170bc:	00b65363          	bge	a2,a1,170c2 <_svfprintf_r+0xf08>
   170c0:	86ba                	mv	a3,a4
   170c2:	2681                	sext.w	a3,a3
   170c4:	02d05663          	blez	a3,170f0 <_svfprintf_r+0xf36>
   170c8:	11812703          	lw	a4,280(sp)
   170cc:	97b6                	add	a5,a5,a3
   170ce:	01833023          	sd	s8,0(t1)
   170d2:	0017061b          	addiw	a2,a4,1
   170d6:	00d33423          	sd	a3,8(t1)
   170da:	f23e                	sd	a5,288(sp)
   170dc:	10c12c23          	sw	a2,280(sp)
   170e0:	20cbcf63          	blt	s7,a2,172fe <_svfprintf_r+0x1144>
   170e4:	7706                	ld	a4,96(sp)
   170e6:	0341                	addi	t1,t1,16
   170e8:	00074603          	lbu	a2,0(a4)
   170ec:	0006071b          	sext.w	a4,a2
   170f0:	fff6c593          	not	a1,a3
   170f4:	95fd                	srai	a1,a1,0x3f
   170f6:	8eed                	and	a3,a3,a1
   170f8:	9f15                	subw	a4,a4,a3
   170fa:	00e04c63          	bgtz	a4,17112 <_svfprintf_r+0xf58>
   170fe:	9c32                	add	s8,s8,a2
   17100:	6766                	ld	a4,88(sp)
   17102:	fb2d                	bnez	a4,17074 <_svfprintf_r+0xeba>
   17104:	6746                	ld	a4,80(sp)
   17106:	020702e3          	beqz	a4,1792a <_svfprintf_r+0x1770>
   1710a:	6746                	ld	a4,80(sp)
   1710c:	377d                	addiw	a4,a4,-1
   1710e:	e8ba                	sd	a4,80(sp)
   17110:	bf95                	j	17084 <_svfprintf_r+0xeca>
   17112:	11812683          	lw	a3,280(sp)
   17116:	00edc663          	blt	s11,a4,17122 <_svfprintf_r+0xf68>
   1711a:	a081                	j	1715a <_svfprintf_r+0xfa0>
   1711c:	3741                	addiw	a4,a4,-16
   1711e:	02edde63          	bge	s11,a4,1715a <_svfprintf_r+0xfa0>
   17122:	2685                	addiw	a3,a3,1
   17124:	07c1                	addi	a5,a5,16
   17126:	01a33023          	sd	s10,0(t1)
   1712a:	01b33423          	sd	s11,8(t1)
   1712e:	f23e                	sd	a5,288(sp)
   17130:	10d12c23          	sw	a3,280(sp)
   17134:	0341                	addi	t1,t1,16
   17136:	fedbd3e3          	bge	s7,a3,1711c <_svfprintf_r+0xf62>
   1713a:	0a10                	addi	a2,sp,272
   1713c:	85d2                	mv	a1,s4
   1713e:	854e                	mv	a0,s3
   17140:	f83a                	sd	a4,48(sp)
   17142:	113020ef          	jal	ra,19a54 <__ssprint_r>
   17146:	a40517e3          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   1714a:	7742                	ld	a4,48(sp)
   1714c:	7792                	ld	a5,288(sp)
   1714e:	11812683          	lw	a3,280(sp)
   17152:	3741                	addiw	a4,a4,-16
   17154:	835a                	mv	t1,s6
   17156:	fcedc6e3          	blt	s11,a4,17122 <_svfprintf_r+0xf68>
   1715a:	2685                	addiw	a3,a3,1
   1715c:	97ba                	add	a5,a5,a4
   1715e:	00e33423          	sd	a4,8(t1)
   17162:	01a33023          	sd	s10,0(t1)
   17166:	f23e                	sd	a5,288(sp)
   17168:	0006871b          	sext.w	a4,a3
   1716c:	10d12c23          	sw	a3,280(sp)
   17170:	7eebc463          	blt	s7,a4,17958 <_svfprintf_r+0x179e>
   17174:	7706                	ld	a4,96(sp)
   17176:	0341                	addi	t1,t1,16
   17178:	00074603          	lbu	a2,0(a4)
   1717c:	9c32                	add	s8,s8,a2
   1717e:	b749                	j	17100 <_svfprintf_r+0xf46>
   17180:	0104f793          	andi	a5,s1,16
   17184:	12078b63          	beqz	a5,172ba <_svfprintf_r+0x1100>
   17188:	67c2                	ld	a5,16(sp)
   1718a:	0007b903          	ld	s2,0(a5)
   1718e:	b3d9                	j	16f54 <_svfprintf_r+0xd9a>
   17190:	0a10                	addi	a2,sp,272
   17192:	85d2                	mv	a1,s4
   17194:	854e                	mv	a0,s3
   17196:	0bf020ef          	jal	ra,19a54 <__ssprint_r>
   1719a:	9e051de3          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   1719e:	7792                	ld	a5,288(sp)
   171a0:	835a                	mv	t1,s6
   171a2:	b719                	j	170a8 <_svfprintf_r+0xeee>
   171a4:	18c10b93          	addi	s7,sp,396
   171a8:	400df713          	andi	a4,s11,1024
   171ac:	f002                	sd	zero,32(sp)
   171ae:	865e                	mv	a2,s7
   171b0:	44a9                	li	s1,10
   171b2:	46a5                	li	a3,9
   171b4:	0ff00893          	li	a7,255
   171b8:	a039                	j	171c6 <_svfprintf_r+0x100c>
   171ba:	029957b3          	divu	a5,s2,s1
   171be:	8b26f5e3          	bgeu	a3,s2,16a68 <_svfprintf_r+0x8ae>
   171c2:	893e                	mv	s2,a5
   171c4:	8666                	mv	a2,s9
   171c6:	7582                	ld	a1,32(sp)
   171c8:	fff60c93          	addi	s9,a2,-1
   171cc:	2585                	addiw	a1,a1,1
   171ce:	f02e                	sd	a1,32(sp)
   171d0:	029977b3          	remu	a5,s2,s1
   171d4:	0307879b          	addiw	a5,a5,48
   171d8:	fef60fa3          	sb	a5,-1(a2)
   171dc:	df79                	beqz	a4,171ba <_svfprintf_r+0x1000>
   171de:	7786                	ld	a5,96(sp)
   171e0:	0007c783          	lbu	a5,0(a5)
   171e4:	fcf59be3          	bne	a1,a5,171ba <_svfprintf_r+0x1000>
   171e8:	fd1789e3          	beq	a5,a7,171ba <_svfprintf_r+0x1000>
   171ec:	8726fee3          	bgeu	a3,s2,16a68 <_svfprintf_r+0x8ae>
   171f0:	678a                	ld	a5,128(sp)
   171f2:	65aa                	ld	a1,136(sp)
   171f4:	f83a                	sd	a4,48(sp)
   171f6:	40fc8cb3          	sub	s9,s9,a5
   171fa:	863e                	mv	a2,a5
   171fc:	8566                	mv	a0,s9
   171fe:	ec1a                	sd	t1,24(sp)
   17200:	f49fe0ef          	jal	ra,16148 <strncpy>
   17204:	7706                	ld	a4,96(sp)
   17206:	029957b3          	divu	a5,s2,s1
   1720a:	6362                	ld	t1,24(sp)
   1720c:	00174603          	lbu	a2,1(a4)
   17210:	f002                	sd	zero,32(sp)
   17212:	46a5                	li	a3,9
   17214:	00c03633          	snez	a2,a2
   17218:	9732                	add	a4,a4,a2
   1721a:	f0ba                	sd	a4,96(sp)
   1721c:	0ff00893          	li	a7,255
   17220:	7742                	ld	a4,48(sp)
   17222:	b745                	j	171c2 <_svfprintf_r+0x1008>
   17224:	11812703          	lw	a4,280(sp)
   17228:	66f1                	lui	a3,0x1c
   1722a:	2b868693          	addi	a3,a3,696 # 1c2b8 <__clzdi2+0xa0>
   1722e:	2705                	addiw	a4,a4,1
   17230:	00d33023          	sd	a3,0(t1)
   17234:	0785                	addi	a5,a5,1
   17236:	4685                	li	a3,1
   17238:	00d33423          	sd	a3,8(t1)
   1723c:	10e12c23          	sw	a4,280(sp)
   17240:	0007069b          	sext.w	a3,a4
   17244:	f23e                	sd	a5,288(sp)
   17246:	471d                	li	a4,7
   17248:	0341                	addi	t1,t1,16
   1724a:	04d74d63          	blt	a4,a3,172a4 <_svfprintf_r+0x10ea>
   1724e:	12061563          	bnez	a2,17378 <_svfprintf_r+0x11be>
   17252:	7682                	ld	a3,32(sp)
   17254:	0014f713          	andi	a4,s1,1
   17258:	8f55                	or	a4,a4,a3
   1725a:	98070763          	beqz	a4,163e8 <_svfprintf_r+0x22e>
   1725e:	76a6                	ld	a3,104(sp)
   17260:	11812703          	lw	a4,280(sp)
   17264:	7646                	ld	a2,112(sp)
   17266:	97b6                	add	a5,a5,a3
   17268:	2705                	addiw	a4,a4,1
   1726a:	00d33423          	sd	a3,8(t1)
   1726e:	10e12c23          	sw	a4,280(sp)
   17272:	0007069b          	sext.w	a3,a4
   17276:	00c33023          	sd	a2,0(t1)
   1727a:	f23e                	sd	a5,288(sp)
   1727c:	471d                	li	a4,7
   1727e:	50d74e63          	blt	a4,a3,1779a <_svfprintf_r+0x15e0>
   17282:	0341                	addi	t1,t1,16
   17284:	7702                	ld	a4,32(sp)
   17286:	0016861b          	addiw	a2,a3,1
   1728a:	01933023          	sd	s9,0(t1)
   1728e:	97ba                	add	a5,a5,a4
   17290:	00e33423          	sd	a4,8(t1)
   17294:	f23e                	sd	a5,288(sp)
   17296:	10c12c23          	sw	a2,280(sp)
   1729a:	471d                	li	a4,7
   1729c:	94c75563          	bge	a4,a2,163e6 <_svfprintf_r+0x22c>
   172a0:	c06ff06f          	j	166a6 <_svfprintf_r+0x4ec>
   172a4:	0a10                	addi	a2,sp,272
   172a6:	85d2                	mv	a1,s4
   172a8:	854e                	mv	a0,s3
   172aa:	7aa020ef          	jal	ra,19a54 <__ssprint_r>
   172ae:	8e0513e3          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   172b2:	562e                	lw	a2,232(sp)
   172b4:	7792                	ld	a5,288(sp)
   172b6:	835a                	mv	t1,s6
   172b8:	bf59                	j	1724e <_svfprintf_r+0x1094>
   172ba:	66c2                	ld	a3,16(sp)
   172bc:	0404f793          	andi	a5,s1,64
   172c0:	0006a903          	lw	s2,0(a3)
   172c4:	12078c63          	beqz	a5,173fc <_svfprintf_r+0x1242>
   172c8:	1942                	slli	s2,s2,0x30
   172ca:	03095913          	srli	s2,s2,0x30
   172ce:	b159                	j	16f54 <_svfprintf_r+0xd9a>
   172d0:	8da6                	mv	s11,s1
   172d2:	e83a                	sd	a4,16(sp)
   172d4:	9daff06f          	j	164ae <_svfprintf_r+0x2f4>
   172d8:	0a10                	addi	a2,sp,272
   172da:	85d2                	mv	a1,s4
   172dc:	854e                	mv	a0,s3
   172de:	776020ef          	jal	ra,19a54 <__ssprint_r>
   172e2:	8a0519e3          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   172e6:	7792                	ld	a5,288(sp)
   172e8:	835a                	mv	t1,s6
   172ea:	ec6ff06f          	j	169b0 <_svfprintf_r+0x7f6>
   172ee:	0017069b          	addiw	a3,a4,1
   172f2:	8736                	mv	a4,a3
   172f4:	97de                	add	a5,a5,s7
   172f6:	01b33023          	sd	s11,0(t1)
   172fa:	8dcff06f          	j	163d6 <_svfprintf_r+0x21c>
   172fe:	0a10                	addi	a2,sp,272
   17300:	85d2                	mv	a1,s4
   17302:	854e                	mv	a0,s3
   17304:	f836                	sd	a3,48(sp)
   17306:	74e020ef          	jal	ra,19a54 <__ssprint_r>
   1730a:	880515e3          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   1730e:	7786                	ld	a5,96(sp)
   17310:	76c2                	ld	a3,48(sp)
   17312:	835a                	mv	t1,s6
   17314:	0007c603          	lbu	a2,0(a5)
   17318:	7792                	ld	a5,288(sp)
   1731a:	0006071b          	sext.w	a4,a2
   1731e:	bbc9                	j	170f0 <_svfprintf_r+0xf36>
   17320:	6512                	ld	a0,256(sp)
   17322:	65b2                	ld	a1,264(sp)
   17324:	4601                	li	a2,0
   17326:	4681                	li	a3,0
   17328:	3cd030ef          	jal	ra,1aef4 <__letf2>
   1732c:	6362                	ld	t1,24(sp)
   1732e:	64054463          	bltz	a0,17976 <_svfprintf_r+0x17bc>
   17332:	0df14783          	lbu	a5,223(sp)
   17336:	04700713          	li	a4,71
   1733a:	3da75b63          	bge	a4,s10,17710 <_svfprintf_r+0x1556>
   1733e:	6871                	lui	a6,0x1c
   17340:	26880c93          	addi	s9,a6,616 # 1c268 <__clzdi2+0x50>
   17344:	f7f4f493          	andi	s1,s1,-129
   17348:	ec02                	sd	zero,24(sp)
   1734a:	e882                	sd	zero,80(sp)
   1734c:	ec82                	sd	zero,88(sp)
   1734e:	e482                	sd	zero,72(sp)
   17350:	2481                	sext.w	s1,s1
   17352:	490d                	li	s2,3
   17354:	4b8d                	li	s7,3
   17356:	4c01                	li	s8,0
   17358:	98079463          	bnez	a5,164e0 <_svfprintf_r+0x326>
   1735c:	fdffe06f          	j	1633a <_svfprintf_r+0x180>
   17360:	4799                	li	a5,6
   17362:	000c0b9b          	sext.w	s7,s8
   17366:	3d87e463          	bltu	a5,s8,1772e <_svfprintf_r+0x1574>
   1736a:	6871                	lui	a6,0x1c
   1736c:	895e                	mv	s2,s7
   1736e:	e86e                	sd	s11,16(sp)
   17370:	2b080c93          	addi	s9,a6,688 # 1c2b0 <__clzdi2+0x98>
   17374:	fbdfe06f          	j	16330 <_svfprintf_r+0x176>
   17378:	76a6                	ld	a3,104(sp)
   1737a:	11812703          	lw	a4,280(sp)
   1737e:	75c6                	ld	a1,112(sp)
   17380:	97b6                	add	a5,a5,a3
   17382:	2705                	addiw	a4,a4,1
   17384:	00d33423          	sd	a3,8(t1)
   17388:	00b33023          	sd	a1,0(t1)
   1738c:	0007069b          	sext.w	a3,a4
   17390:	10e12c23          	sw	a4,280(sp)
   17394:	f23e                	sd	a5,288(sp)
   17396:	471d                	li	a4,7
   17398:	0341                	addi	t1,t1,16
   1739a:	40d74063          	blt	a4,a3,1779a <_svfprintf_r+0x15e0>
   1739e:	ee0653e3          	bgez	a2,17284 <_svfprintf_r+0x10ca>
   173a2:	68f5                	lui	a7,0x1d
   173a4:	5741                	li	a4,-16
   173a6:	40c00c3b          	negw	s8,a2
   173aa:	be888d93          	addi	s11,a7,-1048 # 1cbe8 <zeroes.0>
   173ae:	4bc1                	li	s7,16
   173b0:	4d1d                	li	s10,7
   173b2:	00e64663          	blt	a2,a4,173be <_svfprintf_r+0x1204>
   173b6:	a54d                	j	17a58 <_svfprintf_r+0x189e>
   173b8:	3c41                	addiw	s8,s8,-16
   173ba:	698bdf63          	bge	s7,s8,17a58 <_svfprintf_r+0x189e>
   173be:	2685                	addiw	a3,a3,1
   173c0:	07c1                	addi	a5,a5,16
   173c2:	01b33023          	sd	s11,0(t1)
   173c6:	01733423          	sd	s7,8(t1)
   173ca:	f23e                	sd	a5,288(sp)
   173cc:	10d12c23          	sw	a3,280(sp)
   173d0:	0341                	addi	t1,t1,16
   173d2:	fedd53e3          	bge	s10,a3,173b8 <_svfprintf_r+0x11fe>
   173d6:	0a10                	addi	a2,sp,272
   173d8:	85d2                	mv	a1,s4
   173da:	854e                	mv	a0,s3
   173dc:	678020ef          	jal	ra,19a54 <__ssprint_r>
   173e0:	fa051a63          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   173e4:	7792                	ld	a5,288(sp)
   173e6:	11812683          	lw	a3,280(sp)
   173ea:	835a                	mv	t1,s6
   173ec:	b7f1                	j	173b8 <_svfprintf_r+0x11fe>
   173ee:	2b85                	addiw	s7,s7,1
   173f0:	865e                	mv	a2,s7
   173f2:	9d36                	add	s10,s10,a3
   173f4:	01bc3023          	sd	s11,0(s8)
   173f8:	a78ff06f          	j	16670 <_svfprintf_r+0x4b6>
   173fc:	2004f793          	andi	a5,s1,512
   17400:	34078763          	beqz	a5,1774e <_svfprintf_r+0x1594>
   17404:	0ff97913          	zext.b	s2,s2
   17408:	b6b1                	j	16f54 <_svfprintf_r+0xd9a>
   1740a:	2004f793          	andi	a5,s1,512
   1740e:	36078563          	beqz	a5,17778 <_svfprintf_r+0x15be>
   17412:	0ff97913          	zext.b	s2,s2
   17416:	8e6ff06f          	j	164fc <_svfprintf_r+0x342>
   1741a:	2004f793          	andi	a5,s1,512
   1741e:	34078a63          	beqz	a5,17772 <_svfprintf_r+0x15b8>
   17422:	0189191b          	slliw	s2,s2,0x18
   17426:	4189591b          	sraiw	s2,s2,0x18
   1742a:	87ca                	mv	a5,s2
   1742c:	86cff06f          	j	16498 <_svfprintf_r+0x2de>
   17430:	200df793          	andi	a5,s11,512
   17434:	32078263          	beqz	a5,17758 <_svfprintf_r+0x159e>
   17438:	0ff97913          	zext.b	s2,s2
   1743c:	e83a                	sd	a4,16(sp)
   1743e:	4785                	li	a5,1
   17440:	8c6ff06f          	j	16506 <_svfprintf_r+0x34c>
   17444:	07800713          	li	a4,120
   17448:	0024e793          	ori	a5,s1,2
   1744c:	03000693          	li	a3,48
   17450:	2781                	sext.w	a5,a5
   17452:	0ee100a3          	sb	a4,225(sp)
   17456:	0ed10023          	sb	a3,224(sp)
   1745a:	06300713          	li	a4,99
   1745e:	f53e                	sd	a5,168(sp)
   17460:	ec02                	sd	zero,24(sp)
   17462:	12810c93          	addi	s9,sp,296
   17466:	35874963          	blt	a4,s8,177b8 <_svfprintf_r+0x15fe>
   1746a:	6932                	ld	s2,264(sp)
   1746c:	fdfd7793          	andi	a5,s10,-33
   17470:	1024e493          	ori	s1,s1,258
   17474:	ecbe                	sd	a5,88(sp)
   17476:	e582                	sd	zero,200(sp)
   17478:	6b92                	ld	s7,256(sp)
   1747a:	2481                	sext.w	s1,s1
   1747c:	0e094163          	bltz	s2,1755e <_svfprintf_r+0x13a4>
   17480:	06100793          	li	a5,97
   17484:	64fd0b63          	beq	s10,a5,17ada <_svfprintf_r+0x1920>
   17488:	fbfd079b          	addiw	a5,s10,-65
   1748c:	0007869b          	sext.w	a3,a5
   17490:	02500713          	li	a4,37
   17494:	00d76c63          	bltu	a4,a3,174ac <_svfprintf_r+0x12f2>
   17498:	02079713          	slli	a4,a5,0x20
   1749c:	01e75793          	srli	a5,a4,0x1e
   174a0:	6775                	lui	a4,0x1d
   174a2:	b3c70713          	addi	a4,a4,-1220 # 1cb3c <__mprec_bigtens+0x194>
   174a6:	97ba                	add	a5,a5,a4
   174a8:	439c                	lw	a5,0(a5)
   174aa:	8782                	jr	a5
   174ac:	8de2                	mv	s11,s8
   174ae:	4689                	li	a3,2
   174b0:	11bc                	addi	a5,sp,232
   174b2:	876e                	mv	a4,s11
   174b4:	0f810893          	addi	a7,sp,248
   174b8:	0ec10813          	addi	a6,sp,236
   174bc:	85de                	mv	a1,s7
   174be:	864a                	mv	a2,s2
   174c0:	854e                	mv	a0,s3
   174c2:	f01a                	sd	t1,32(sp)
   174c4:	e1efc0ef          	jal	ra,13ae2 <_ldtoa_r>
   174c8:	6766                	ld	a4,88(sp)
   174ca:	04700793          	li	a5,71
   174ce:	7302                	ld	t1,32(sp)
   174d0:	8caa                	mv	s9,a0
   174d2:	46f70b63          	beq	a4,a5,17948 <_svfprintf_r+0x178e>
   174d6:	04600793          	li	a5,70
   174da:	01b508b3          	add	a7,a0,s11
   174de:	00f71a63          	bne	a4,a5,174f2 <_svfprintf_r+0x1338>
   174e2:	00054703          	lbu	a4,0(a0)
   174e6:	03000793          	li	a5,48
   174ea:	2ef70b63          	beq	a4,a5,177e0 <_svfprintf_r+0x1626>
   174ee:	572e                	lw	a4,232(sp)
   174f0:	98ba                	add	a7,a7,a4
   174f2:	4681                	li	a3,0
   174f4:	4601                	li	a2,0
   174f6:	855e                	mv	a0,s7
   174f8:	85ca                	mv	a1,s2
   174fa:	f846                	sd	a7,48(sp)
   174fc:	f01a                	sd	t1,32(sp)
   174fe:	0b1030ef          	jal	ra,1adae <__eqtf2>
   17502:	78c2                	ld	a7,48(sp)
   17504:	7302                	ld	t1,32(sp)
   17506:	86c6                	mv	a3,a7
   17508:	e13d                	bnez	a0,1756e <_svfprintf_r+0x13b4>
   1750a:	419687bb          	subw	a5,a3,s9
   1750e:	f03e                	sd	a5,32(sp)
   17510:	572e                	lw	a4,232(sp)
   17512:	04700793          	li	a5,71
   17516:	e4ba                	sd	a4,72(sp)
   17518:	6766                	ld	a4,88(sp)
   1751a:	06f70863          	beq	a4,a5,1758a <_svfprintf_r+0x13d0>
   1751e:	6766                	ld	a4,88(sp)
   17520:	04600793          	li	a5,70
   17524:	0cf71663          	bne	a4,a5,175f0 <_svfprintf_r+0x1436>
   17528:	77aa                	ld	a5,168(sp)
   1752a:	6726                	ld	a4,72(sp)
   1752c:	8b85                	andi	a5,a5,1
   1752e:	00fc67b3          	or	a5,s8,a5
   17532:	68e05363          	blez	a4,17bb8 <_svfprintf_r+0x19fe>
   17536:	64079963          	bnez	a5,17b88 <_svfprintf_r+0x19ce>
   1753a:	6ba6                	ld	s7,72(sp)
   1753c:	06600d13          	li	s10,102
   17540:	77aa                	ld	a5,168(sp)
   17542:	4007f793          	andi	a5,a5,1024
   17546:	5c079a63          	bnez	a5,17b1a <_svfprintf_r+0x1960>
   1754a:	fffbc913          	not	s2,s7
   1754e:	43f95913          	srai	s2,s2,0x3f
   17552:	012bf933          	and	s2,s7,s2
   17556:	2901                	sext.w	s2,s2
   17558:	a89d                	j	175ce <_svfprintf_r+0x1414>
   1755a:	ec02                	sd	zero,24(sp)
   1755c:	84be                	mv	s1,a5
   1755e:	57fd                	li	a5,-1
   17560:	17fe                	slli	a5,a5,0x3f
   17562:	00f94933          	xor	s2,s2,a5
   17566:	02d00793          	li	a5,45
   1756a:	e5be                	sd	a5,200(sp)
   1756c:	bf11                	j	17480 <_svfprintf_r+0x12c6>
   1756e:	76ee                	ld	a3,248(sp)
   17570:	f916fde3          	bgeu	a3,a7,1750a <_svfprintf_r+0x1350>
   17574:	03000713          	li	a4,48
   17578:	00168793          	addi	a5,a3,1
   1757c:	fdbe                	sd	a5,248(sp)
   1757e:	00e68023          	sb	a4,0(a3)
   17582:	76ee                	ld	a3,248(sp)
   17584:	ff16eae3          	bltu	a3,a7,17578 <_svfprintf_r+0x13be>
   17588:	b749                	j	1750a <_svfprintf_r+0x1350>
   1758a:	6726                	ld	a4,72(sp)
   1758c:	57f5                	li	a5,-3
   1758e:	04f74d63          	blt	a4,a5,175e8 <_svfprintf_r+0x142e>
   17592:	04ec4b63          	blt	s8,a4,175e8 <_svfprintf_r+0x142e>
   17596:	7782                	ld	a5,32(sp)
   17598:	6726                	ld	a4,72(sp)
   1759a:	44f74063          	blt	a4,a5,179da <_svfprintf_r+0x1820>
   1759e:	77aa                	ld	a5,168(sp)
   175a0:	6726                	ld	a4,72(sp)
   175a2:	8b85                	andi	a5,a5,1
   175a4:	8bba                	mv	s7,a4
   175a6:	c781                	beqz	a5,175ae <_svfprintf_r+0x13f4>
   175a8:	77a6                	ld	a5,104(sp)
   175aa:	00e78bbb          	addw	s7,a5,a4
   175ae:	77aa                	ld	a5,168(sp)
   175b0:	4007f793          	andi	a5,a5,1024
   175b4:	c781                	beqz	a5,175bc <_svfprintf_r+0x1402>
   175b6:	67a6                	ld	a5,72(sp)
   175b8:	54f04f63          	bgtz	a5,17b16 <_svfprintf_r+0x195c>
   175bc:	fffbc913          	not	s2,s7
   175c0:	43f95913          	srai	s2,s2,0x3f
   175c4:	012bf933          	and	s2,s7,s2
   175c8:	2901                	sext.w	s2,s2
   175ca:	06700d13          	li	s10,103
   175ce:	e882                	sd	zero,80(sp)
   175d0:	ec82                	sd	zero,88(sp)
   175d2:	67ae                	ld	a5,200(sp)
   175d4:	36078263          	beqz	a5,17938 <_svfprintf_r+0x177e>
   175d8:	02d00793          	li	a5,45
   175dc:	0cf10fa3          	sb	a5,223(sp)
   175e0:	4c01                	li	s8,0
   175e2:	2905                	addiw	s2,s2,1
   175e4:	d57fe06f          	j	1633a <_svfprintf_r+0x180>
   175e8:	3d79                	addiw	s10,s10,-2
   175ea:	fdfd7793          	andi	a5,s10,-33
   175ee:	ecbe                	sd	a5,88(sp)
   175f0:	67a6                	ld	a5,72(sp)
   175f2:	65e6                	ld	a1,88(sp)
   175f4:	04100713          	li	a4,65
   175f8:	fff7869b          	addiw	a3,a5,-1
   175fc:	d5b6                	sw	a3,232(sp)
   175fe:	0ffd7793          	zext.b	a5,s10
   17602:	4601                	li	a2,0
   17604:	1ce58963          	beq	a1,a4,177d6 <_svfprintf_r+0x161c>
   17608:	0ef10823          	sb	a5,240(sp)
   1760c:	02b00793          	li	a5,43
   17610:	0006d763          	bgez	a3,1761e <_svfprintf_r+0x1464>
   17614:	67a6                	ld	a5,72(sp)
   17616:	4685                	li	a3,1
   17618:	9e9d                	subw	a3,a3,a5
   1761a:	02d00793          	li	a5,45
   1761e:	0ef108a3          	sb	a5,241(sp)
   17622:	47a5                	li	a5,9
   17624:	46d7d363          	bge	a5,a3,17a8a <_svfprintf_r+0x18d0>
   17628:	0ff10e93          	addi	t4,sp,255
   1762c:	8676                	mv	a2,t4
   1762e:	45a9                	li	a1,10
   17630:	06300793          	li	a5,99
   17634:	02b6e73b          	remw	a4,a3,a1
   17638:	88b2                	mv	a7,a2
   1763a:	8536                	mv	a0,a3
   1763c:	167d                	addi	a2,a2,-1
   1763e:	0307071b          	addiw	a4,a4,48
   17642:	fee88fa3          	sb	a4,-1(a7)
   17646:	02b6c6bb          	divw	a3,a3,a1
   1764a:	fea7c5e3          	blt	a5,a0,17634 <_svfprintf_r+0x147a>
   1764e:	0306869b          	addiw	a3,a3,48
   17652:	0ff6f693          	zext.b	a3,a3
   17656:	ffe88793          	addi	a5,a7,-2
   1765a:	fed60fa3          	sb	a3,-1(a2)
   1765e:	59d7f263          	bgeu	a5,t4,17be2 <_svfprintf_r+0x1a28>
   17662:	0f210713          	addi	a4,sp,242
   17666:	a019                	j	1766c <_svfprintf_r+0x14b2>
   17668:	0007c683          	lbu	a3,0(a5)
   1766c:	00d70023          	sb	a3,0(a4)
   17670:	0785                	addi	a5,a5,1
   17672:	0705                	addi	a4,a4,1
   17674:	ffd79ae3          	bne	a5,t4,17668 <_svfprintf_r+0x14ae>
   17678:	10110793          	addi	a5,sp,257
   1767c:	0f210713          	addi	a4,sp,242
   17680:	411787b3          	sub	a5,a5,a7
   17684:	97ba                	add	a5,a5,a4
   17686:	1998                	addi	a4,sp,240
   17688:	9f99                	subw	a5,a5,a4
   1768a:	fcbe                	sd	a5,120(sp)
   1768c:	77e6                	ld	a5,120(sp)
   1768e:	7682                	ld	a3,32(sp)
   17690:	4705                	li	a4,1
   17692:	00f68bbb          	addw	s7,a3,a5
   17696:	87de                	mv	a5,s7
   17698:	40d75d63          	bge	a4,a3,17ab2 <_svfprintf_r+0x18f8>
   1769c:	7726                	ld	a4,104(sp)
   1769e:	00e78bbb          	addw	s7,a5,a4
   176a2:	77aa                	ld	a5,168(sp)
   176a4:	fffbc913          	not	s2,s7
   176a8:	43f95913          	srai	s2,s2,0x3f
   176ac:	bff7f493          	andi	s1,a5,-1025
   176b0:	2481                	sext.w	s1,s1
   176b2:	012bf933          	and	s2,s7,s2
   176b6:	1004e493          	ori	s1,s1,256
   176ba:	2901                	sext.w	s2,s2
   176bc:	e882                	sd	zero,80(sp)
   176be:	ec82                	sd	zero,88(sp)
   176c0:	e482                	sd	zero,72(sp)
   176c2:	bf01                	j	175d2 <_svfprintf_r+0x1418>
   176c4:	67b2                	ld	a5,264(sp)
   176c6:	0c07c563          	bltz	a5,17790 <_svfprintf_r+0x15d6>
   176ca:	0df14783          	lbu	a5,223(sp)
   176ce:	04700713          	li	a4,71
   176d2:	31a75063          	bge	a4,s10,179d2 <_svfprintf_r+0x1818>
   176d6:	6871                	lui	a6,0x1c
   176d8:	27880c93          	addi	s9,a6,632 # 1c278 <__clzdi2+0x60>
   176dc:	b1a5                	j	17344 <_svfprintf_r+0x118a>
   176de:	0017069b          	addiw	a3,a4,1
   176e2:	97de                	add	a5,a5,s7
   176e4:	01b33023          	sd	s11,0(t1)
   176e8:	01733423          	sd	s7,8(t1)
   176ec:	f23e                	sd	a5,288(sp)
   176ee:	10d12c23          	sw	a3,280(sp)
   176f2:	471d                	li	a4,7
   176f4:	0341                	addi	t1,t1,16
   176f6:	e2d75363          	bge	a4,a3,16d1c <_svfprintf_r+0xb62>
   176fa:	0a10                	addi	a2,sp,272
   176fc:	85d2                	mv	a1,s4
   176fe:	854e                	mv	a0,s3
   17700:	354020ef          	jal	ra,19a54 <__ssprint_r>
   17704:	c8051863          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   17708:	7792                	ld	a5,288(sp)
   1770a:	835a                	mv	t1,s6
   1770c:	e10ff06f          	j	16d1c <_svfprintf_r+0xb62>
   17710:	6871                	lui	a6,0x1c
   17712:	26080c93          	addi	s9,a6,608 # 1c260 <__clzdi2+0x48>
   17716:	b13d                	j	17344 <_svfprintf_r+0x118a>
   17718:	0a10                	addi	a2,sp,272
   1771a:	85d2                	mv	a1,s4
   1771c:	854e                	mv	a0,s3
   1771e:	336020ef          	jal	ra,19a54 <__ssprint_r>
   17722:	c6051963          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   17726:	7792                	ld	a5,288(sp)
   17728:	835a                	mv	t1,s6
   1772a:	ddeff06f          	j	16d08 <_svfprintf_r+0xb4e>
   1772e:	4b99                	li	s7,6
   17730:	b92d                	j	1736a <_svfprintf_r+0x11b0>
   17732:	7682                	ld	a3,32(sp)
   17734:	00dc8bb3          	add	s7,s9,a3
   17738:	418b8bb3          	sub	s7,s7,s8
   1773c:	9e99                	subw	a3,a3,a4
   1773e:	000b861b          	sext.w	a2,s7
   17742:	00c6d363          	bge	a3,a2,17748 <_svfprintf_r+0x158e>
   17746:	8bb6                	mv	s7,a3
   17748:	2b81                	sext.w	s7,s7
   1774a:	e52ff06f          	j	16d9c <_svfprintf_r+0xbe2>
   1774e:	1902                	slli	s2,s2,0x20
   17750:	02095913          	srli	s2,s2,0x20
   17754:	801ff06f          	j	16f54 <_svfprintf_r+0xd9a>
   17758:	1902                	slli	s2,s2,0x20
   1775a:	02095913          	srli	s2,s2,0x20
   1775e:	e83a                	sd	a4,16(sp)
   17760:	4785                	li	a5,1
   17762:	da5fe06f          	j	16506 <_svfprintf_r+0x34c>
   17766:	67a2                	ld	a5,8(sp)
   17768:	8ca2                	mv	s9,s0
   1776a:	00f71023          	sh	a5,0(a4)
   1776e:	cadfe06f          	j	1641a <_svfprintf_r+0x260>
   17772:	87ca                	mv	a5,s2
   17774:	d25fe06f          	j	16498 <_svfprintf_r+0x2de>
   17778:	1902                	slli	s2,s2,0x20
   1777a:	02095913          	srli	s2,s2,0x20
   1777e:	d7ffe06f          	j	164fc <_svfprintf_r+0x342>
   17782:	0a10                	addi	a2,sp,272
   17784:	85d2                	mv	a1,s4
   17786:	854e                	mv	a0,s3
   17788:	2cc020ef          	jal	ra,19a54 <__ssprint_r>
   1778c:	c9ffe06f          	j	1642a <_svfprintf_r+0x270>
   17790:	02d00793          	li	a5,45
   17794:	0cf10fa3          	sb	a5,223(sp)
   17798:	bf1d                	j	176ce <_svfprintf_r+0x1514>
   1779a:	0a10                	addi	a2,sp,272
   1779c:	85d2                	mv	a1,s4
   1779e:	854e                	mv	a0,s3
   177a0:	2b4020ef          	jal	ra,19a54 <__ssprint_r>
   177a4:	be051863          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   177a8:	562e                	lw	a2,232(sp)
   177aa:	7792                	ld	a5,288(sp)
   177ac:	11812683          	lw	a3,280(sp)
   177b0:	835a                	mv	t1,s6
   177b2:	ac0659e3          	bgez	a2,17284 <_svfprintf_r+0x10ca>
   177b6:	b6f5                	j	173a2 <_svfprintf_r+0x11e8>
   177b8:	001c059b          	addiw	a1,s8,1
   177bc:	854e                	mv	a0,s3
   177be:	ec1a                	sd	t1,24(sp)
   177c0:	af8fd0ef          	jal	ra,14ab8 <_malloc_r>
   177c4:	6362                	ld	t1,24(sp)
   177c6:	8caa                	mv	s9,a0
   177c8:	42050063          	beqz	a0,17be8 <_svfprintf_r+0x1a2e>
   177cc:	ec2a                	sd	a0,24(sp)
   177ce:	b971                	j	1746a <_svfprintf_r+0x12b0>
   177d0:	4c19                	li	s8,6
   177d2:	df7fe06f          	j	165c8 <_svfprintf_r+0x40e>
   177d6:	27bd                	addiw	a5,a5,15
   177d8:	0ff7f793          	zext.b	a5,a5
   177dc:	4605                	li	a2,1
   177de:	b52d                	j	17608 <_svfprintf_r+0x144e>
   177e0:	4601                	li	a2,0
   177e2:	4681                	li	a3,0
   177e4:	855e                	mv	a0,s7
   177e6:	85ca                	mv	a1,s2
   177e8:	f846                	sd	a7,48(sp)
   177ea:	f01a                	sd	t1,32(sp)
   177ec:	5c2030ef          	jal	ra,1adae <__eqtf2>
   177f0:	7302                	ld	t1,32(sp)
   177f2:	78c2                	ld	a7,48(sp)
   177f4:	ce050de3          	beqz	a0,174ee <_svfprintf_r+0x1334>
   177f8:	4785                	li	a5,1
   177fa:	41b7873b          	subw	a4,a5,s11
   177fe:	d5ba                	sw	a4,232(sp)
   17800:	98ba                	add	a7,a7,a4
   17802:	b9c5                	j	174f2 <_svfprintf_r+0x1338>
   17804:	001c0d9b          	addiw	s11,s8,1
   17808:	4689                	li	a3,2
   1780a:	b15d                	j	174b0 <_svfprintf_r+0x12f6>
   1780c:	8de2                	mv	s11,s8
   1780e:	468d                	li	a3,3
   17810:	b145                	j	174b0 <_svfprintf_r+0x12f6>
   17812:	85ca                	mv	a1,s2
   17814:	855e                	mv	a0,s7
   17816:	f81a                	sd	t1,48(sp)
   17818:	7e0040ef          	jal	ra,1bff8 <__trunctfdf2>
   1781c:	11a8                	addi	a0,sp,232
   1781e:	de6fe0ef          	jal	ra,15e04 <frexp>
   17822:	712040ef          	jal	ra,1bf34 <__extenddftf2>
   17826:	768a                	ld	a3,160(sp)
   17828:	4601                	li	a2,0
   1782a:	770030ef          	jal	ra,1af9a <__multf3>
   1782e:	4601                	li	a2,0
   17830:	4681                	li	a3,0
   17832:	8baa                	mv	s7,a0
   17834:	f02e                	sd	a1,32(sp)
   17836:	578030ef          	jal	ra,1adae <__eqtf2>
   1783a:	7f82                	ld	t6,32(sp)
   1783c:	7342                	ld	t1,48(sp)
   1783e:	e119                	bnez	a0,17844 <_svfprintf_r+0x168a>
   17840:	4785                	li	a5,1
   17842:	d5be                	sw	a5,232(sp)
   17844:	67f1                	lui	a5,0x1c
   17846:	29878793          	addi	a5,a5,664 # 1c298 <__clzdi2+0x80>
   1784a:	e4be                	sd	a5,72(sp)
   1784c:	020c1793          	slli	a5,s8,0x20
   17850:	9381                	srli	a5,a5,0x20
   17852:	0785                	addi	a5,a5,1
   17854:	97e6                	add	a5,a5,s9
   17856:	f93e                	sd	a5,176(sp)
   17858:	018c87bb          	addw	a5,s9,s8
   1785c:	8de6                	mv	s11,s9
   1785e:	c3be                	sw	a5,196(sp)
   17860:	a829                	j	1787a <_svfprintf_r+0x16c0>
   17862:	4601                	li	a2,0
   17864:	4681                	li	a3,0
   17866:	f01a                	sd	t1,32(sp)
   17868:	fc2e                	sd	a1,56(sp)
   1786a:	f82a                	sd	a0,48(sp)
   1786c:	542030ef          	jal	ra,1adae <__eqtf2>
   17870:	77e2                	ld	a5,56(sp)
   17872:	7302                	ld	t1,32(sp)
   17874:	88de                	mv	a7,s7
   17876:	8fbe                	mv	t6,a5
   17878:	cd31                	beqz	a0,178d4 <_svfprintf_r+0x171a>
   1787a:	66ca                	ld	a3,144(sp)
   1787c:	4601                	li	a2,0
   1787e:	85fe                	mv	a1,t6
   17880:	855e                	mv	a0,s7
   17882:	f81a                	sd	t1,48(sp)
   17884:	716030ef          	jal	ra,1af9a <__multf3>
   17888:	8bae                	mv	s7,a1
   1788a:	f02a                	sd	a0,32(sp)
   1788c:	5c0040ef          	jal	ra,1be4c <__fixtfsi>
   17890:	0005091b          	sext.w	s2,a0
   17894:	854a                	mv	a0,s2
   17896:	648040ef          	jal	ra,1bede <__floatsitf>
   1789a:	7782                	ld	a5,32(sp)
   1789c:	86ae                	mv	a3,a1
   1789e:	862a                	mv	a2,a0
   178a0:	85de                	mv	a1,s7
   178a2:	853e                	mv	a0,a5
   178a4:	521030ef          	jal	ra,1b5c4 <__subtf3>
   178a8:	67a6                	ld	a5,72(sp)
   178aa:	471e                	lw	a4,196(sp)
   178ac:	fd6e                	sd	s11,184(sp)
   178ae:	97ca                	add	a5,a5,s2
   178b0:	0d85                	addi	s11,s11,1
   178b2:	0007c683          	lbu	a3,0(a5)
   178b6:	41b7073b          	subw	a4,a4,s11
   178ba:	e8ba                	sd	a4,80(sp)
   178bc:	774a                	ld	a4,176(sp)
   178be:	fedd8fa3          	sb	a3,-1(s11)
   178c2:	e0ae                	sd	a1,64(sp)
   178c4:	7342                	ld	t1,48(sp)
   178c6:	87ae                	mv	a5,a1
   178c8:	88aa                	mv	a7,a0
   178ca:	8baa                	mv	s7,a0
   178cc:	f9b71be3          	bne	a4,s11,17862 <_svfprintf_r+0x16a8>
   178d0:	577d                	li	a4,-1
   178d2:	e8ba                	sd	a4,80(sp)
   178d4:	66ea                	ld	a3,152(sp)
   178d6:	4601                	li	a2,0
   178d8:	8546                	mv	a0,a7
   178da:	85be                	mv	a1,a5
   178dc:	f01a                	sd	t1,32(sp)
   178de:	fc46                	sd	a7,56(sp)
   178e0:	f83e                	sd	a5,48(sp)
   178e2:	56c030ef          	jal	ra,1ae4e <__getf2>
   178e6:	7302                	ld	t1,32(sp)
   178e8:	10a04e63          	bgtz	a0,17a04 <_svfprintf_r+0x184a>
   178ec:	78e2                	ld	a7,56(sp)
   178ee:	77c2                	ld	a5,48(sp)
   178f0:	66ea                	ld	a3,152(sp)
   178f2:	4601                	li	a2,0
   178f4:	8546                	mv	a0,a7
   178f6:	85be                	mv	a1,a5
   178f8:	4b6030ef          	jal	ra,1adae <__eqtf2>
   178fc:	7302                	ld	t1,32(sp)
   178fe:	e509                	bnez	a0,17908 <_svfprintf_r+0x174e>
   17900:	00197913          	andi	s2,s2,1
   17904:	10091063          	bnez	s2,17a04 <_svfprintf_r+0x184a>
   17908:	6746                	ld	a4,80(sp)
   1790a:	03000693          	li	a3,48
   1790e:	0017079b          	addiw	a5,a4,1
   17912:	97ee                	add	a5,a5,s11
   17914:	00074763          	bltz	a4,17922 <_svfprintf_r+0x1768>
   17918:	0d85                	addi	s11,s11,1
   1791a:	fedd8fa3          	sb	a3,-1(s11)
   1791e:	ffb79de3          	bne	a5,s11,17918 <_svfprintf_r+0x175e>
   17922:	419d87bb          	subw	a5,s11,s9
   17926:	f03e                	sd	a5,32(sp)
   17928:	b6e5                	j	17510 <_svfprintf_r+0x1356>
   1792a:	7702                	ld	a4,32(sp)
   1792c:	9766                	add	a4,a4,s9
   1792e:	bf877e63          	bgeu	a4,s8,16d2a <_svfprintf_r+0xb70>
   17932:	8c3a                	mv	s8,a4
   17934:	bf6ff06f          	j	16d2a <_svfprintf_r+0xb70>
   17938:	0df14783          	lbu	a5,223(sp)
   1793c:	4c01                	li	s8,0
   1793e:	c399                	beqz	a5,17944 <_svfprintf_r+0x178a>
   17940:	ba1fe06f          	j	164e0 <_svfprintf_r+0x326>
   17944:	9f7fe06f          	j	1633a <_svfprintf_r+0x180>
   17948:	77aa                	ld	a5,168(sp)
   1794a:	01b508b3          	add	a7,a0,s11
   1794e:	8b85                	andi	a5,a5,1
   17950:	ba0791e3          	bnez	a5,174f2 <_svfprintf_r+0x1338>
   17954:	76ee                	ld	a3,248(sp)
   17956:	be55                	j	1750a <_svfprintf_r+0x1350>
   17958:	0a10                	addi	a2,sp,272
   1795a:	85d2                	mv	a1,s4
   1795c:	854e                	mv	a0,s3
   1795e:	0f6020ef          	jal	ra,19a54 <__ssprint_r>
   17962:	a2051963          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   17966:	7786                	ld	a5,96(sp)
   17968:	835a                	mv	t1,s6
   1796a:	0007c603          	lbu	a2,0(a5)
   1796e:	7792                	ld	a5,288(sp)
   17970:	9c32                	add	s8,s8,a2
   17972:	f8eff06f          	j	17100 <_svfprintf_r+0xf46>
   17976:	02d00793          	li	a5,45
   1797a:	0cf10fa3          	sb	a5,223(sp)
   1797e:	ba65                	j	17336 <_svfprintf_r+0x117c>
   17980:	0a10                	addi	a2,sp,272
   17982:	85d2                	mv	a1,s4
   17984:	854e                	mv	a0,s3
   17986:	0ce020ef          	jal	ra,19a54 <__ssprint_r>
   1798a:	a0051563          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   1798e:	572e                	lw	a4,232(sp)
   17990:	7792                	ld	a5,288(sp)
   17992:	835a                	mv	t1,s6
   17994:	bccff06f          	j	16d60 <_svfprintf_r+0xba6>
   17998:	0df14783          	lbu	a5,223(sp)
   1799c:	e86e                	sd	s11,16(sp)
   1799e:	e882                	sd	zero,80(sp)
   179a0:	ec82                	sd	zero,88(sp)
   179a2:	e482                	sd	zero,72(sp)
   179a4:	8962                	mv	s2,s8
   179a6:	8be2                	mv	s7,s8
   179a8:	4c01                	li	s8,0
   179aa:	c399                	beqz	a5,179b0 <_svfprintf_r+0x17f6>
   179ac:	b35fe06f          	j	164e0 <_svfprintf_r+0x326>
   179b0:	98bfe06f          	j	1633a <_svfprintf_r+0x180>
   179b4:	0a10                	addi	a2,sp,272
   179b6:	85d2                	mv	a1,s4
   179b8:	854e                	mv	a0,s3
   179ba:	09a020ef          	jal	ra,19a54 <__ssprint_r>
   179be:	9c051b63          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   179c2:	56ae                	lw	a3,232(sp)
   179c4:	7702                	ld	a4,32(sp)
   179c6:	7792                	ld	a5,288(sp)
   179c8:	835a                	mv	t1,s6
   179ca:	40d706bb          	subw	a3,a4,a3
   179ce:	bceff06f          	j	16d9c <_svfprintf_r+0xbe2>
   179d2:	6871                	lui	a6,0x1c
   179d4:	27080c93          	addi	s9,a6,624 # 1c270 <__clzdi2+0x58>
   179d8:	b2b5                	j	17344 <_svfprintf_r+0x118a>
   179da:	7702                	ld	a4,32(sp)
   179dc:	77a6                	ld	a5,104(sp)
   179de:	06700d13          	li	s10,103
   179e2:	00e78bbb          	addw	s7,a5,a4
   179e6:	6726                	ld	a4,72(sp)
   179e8:	b4e04ce3          	bgtz	a4,17540 <_svfprintf_r+0x1386>
   179ec:	40eb87bb          	subw	a5,s7,a4
   179f0:	2785                	addiw	a5,a5,1
   179f2:	00078b9b          	sext.w	s7,a5
   179f6:	fffbc713          	not	a4,s7
   179fa:	977d                	srai	a4,a4,0x3f
   179fc:	8ff9                	and	a5,a5,a4
   179fe:	0007891b          	sext.w	s2,a5
   17a02:	b6f1                	j	175ce <_svfprintf_r+0x1414>
   17a04:	77ea                	ld	a5,184(sp)
   17a06:	fdbe                	sd	a5,248(sp)
   17a08:	67a6                	ld	a5,72(sp)
   17a0a:	fffdc683          	lbu	a3,-1(s11)
   17a0e:	00f7c603          	lbu	a2,15(a5)
   17a12:	87ee                	mv	a5,s11
   17a14:	00d61e63          	bne	a2,a3,17a30 <_svfprintf_r+0x1876>
   17a18:	03000593          	li	a1,48
   17a1c:	feb78fa3          	sb	a1,-1(a5)
   17a20:	77ee                	ld	a5,248(sp)
   17a22:	fff78693          	addi	a3,a5,-1
   17a26:	fdb6                	sd	a3,248(sp)
   17a28:	fff7c683          	lbu	a3,-1(a5)
   17a2c:	fed608e3          	beq	a2,a3,17a1c <_svfprintf_r+0x1862>
   17a30:	0016861b          	addiw	a2,a3,1
   17a34:	03900593          	li	a1,57
   17a38:	0ff67613          	zext.b	a2,a2
   17a3c:	00b68563          	beq	a3,a1,17a46 <_svfprintf_r+0x188c>
   17a40:	fec78fa3          	sb	a2,-1(a5)
   17a44:	bdf9                	j	17922 <_svfprintf_r+0x1768>
   17a46:	6726                	ld	a4,72(sp)
   17a48:	00a74603          	lbu	a2,10(a4)
   17a4c:	fec78fa3          	sb	a2,-1(a5)
   17a50:	bdc9                	j	17922 <_svfprintf_r+0x1768>
   17a52:	8da6                	mv	s11,s1
   17a54:	a61fe06f          	j	164b4 <_svfprintf_r+0x2fa>
   17a58:	2685                	addiw	a3,a3,1
   17a5a:	97e2                	add	a5,a5,s8
   17a5c:	01b33023          	sd	s11,0(t1)
   17a60:	01833423          	sd	s8,8(t1)
   17a64:	f23e                	sd	a5,288(sp)
   17a66:	10d12c23          	sw	a3,280(sp)
   17a6a:	471d                	li	a4,7
   17a6c:	80d75be3          	bge	a4,a3,17282 <_svfprintf_r+0x10c8>
   17a70:	0a10                	addi	a2,sp,272
   17a72:	85d2                	mv	a1,s4
   17a74:	854e                	mv	a0,s3
   17a76:	7df010ef          	jal	ra,19a54 <__ssprint_r>
   17a7a:	90051d63          	bnez	a0,16b94 <_svfprintf_r+0x9da>
   17a7e:	7792                	ld	a5,288(sp)
   17a80:	11812683          	lw	a3,280(sp)
   17a84:	835a                	mv	t1,s6
   17a86:	ffeff06f          	j	17284 <_svfprintf_r+0x10ca>
   17a8a:	0f210713          	addi	a4,sp,242
   17a8e:	e619                	bnez	a2,17a9c <_svfprintf_r+0x18e2>
   17a90:	03000793          	li	a5,48
   17a94:	0ef10923          	sb	a5,242(sp)
   17a98:	0f310713          	addi	a4,sp,243
   17a9c:	0306879b          	addiw	a5,a3,48
   17aa0:	0c14                	addi	a3,sp,528
   17aa2:	40d706b3          	sub	a3,a4,a3
   17aa6:	00f70023          	sb	a5,0(a4)
   17aaa:	1216879b          	addiw	a5,a3,289
   17aae:	fcbe                	sd	a5,120(sp)
   17ab0:	bef1                	j	1768c <_svfprintf_r+0x14d2>
   17ab2:	772a                	ld	a4,168(sp)
   17ab4:	8b05                	andi	a4,a4,1
   17ab6:	be0706e3          	beqz	a4,176a2 <_svfprintf_r+0x14e8>
   17aba:	b6cd                	j	1769c <_svfprintf_r+0x14e2>
   17abc:	000c0463          	beqz	s8,17ac4 <_svfprintf_r+0x190a>
   17ac0:	b09fe06f          	j	165c8 <_svfprintf_r+0x40e>
   17ac4:	4c05                	li	s8,1
   17ac6:	b03fe06f          	j	165c8 <_svfprintf_r+0x40e>
   17aca:	57fd                	li	a5,-1
   17acc:	e43e                	sd	a5,8(sp)
   17ace:	96bfe06f          	j	16438 <_svfprintf_r+0x27e>
   17ad2:	c31c                	sw	a5,0(a4)
   17ad4:	8ca2                	mv	s9,s0
   17ad6:	945fe06f          	j	1641a <_svfprintf_r+0x260>
   17ada:	85ca                	mv	a1,s2
   17adc:	855e                	mv	a0,s7
   17ade:	f81a                	sd	t1,48(sp)
   17ae0:	518040ef          	jal	ra,1bff8 <__trunctfdf2>
   17ae4:	11a8                	addi	a0,sp,232
   17ae6:	b1efe0ef          	jal	ra,15e04 <frexp>
   17aea:	44a040ef          	jal	ra,1bf34 <__extenddftf2>
   17aee:	768a                	ld	a3,160(sp)
   17af0:	4601                	li	a2,0
   17af2:	4a8030ef          	jal	ra,1af9a <__multf3>
   17af6:	4601                	li	a2,0
   17af8:	4681                	li	a3,0
   17afa:	8baa                	mv	s7,a0
   17afc:	f02e                	sd	a1,32(sp)
   17afe:	2b0030ef          	jal	ra,1adae <__eqtf2>
   17b02:	7f82                	ld	t6,32(sp)
   17b04:	7342                	ld	t1,48(sp)
   17b06:	e119                	bnez	a0,17b0c <_svfprintf_r+0x1952>
   17b08:	4785                	li	a5,1
   17b0a:	d5be                	sw	a5,232(sp)
   17b0c:	67f1                	lui	a5,0x1c
   17b0e:	28078793          	addi	a5,a5,640 # 1c280 <__clzdi2+0x68>
   17b12:	e4be                	sd	a5,72(sp)
   17b14:	bb25                	j	1784c <_svfprintf_r+0x1692>
   17b16:	06700d13          	li	s10,103
   17b1a:	7786                	ld	a5,96(sp)
   17b1c:	0ff00713          	li	a4,255
   17b20:	e882                	sd	zero,80(sp)
   17b22:	0007c783          	lbu	a5,0(a5)
   17b26:	ec82                	sd	zero,88(sp)
   17b28:	02e78863          	beq	a5,a4,17b58 <_svfprintf_r+0x199e>
   17b2c:	0ff00693          	li	a3,255
   17b30:	6626                	ld	a2,72(sp)
   17b32:	0007871b          	sext.w	a4,a5
   17b36:	02c7d163          	bge	a5,a2,17b58 <_svfprintf_r+0x199e>
   17b3a:	7586                	ld	a1,96(sp)
   17b3c:	40e6073b          	subw	a4,a2,a4
   17b40:	e4ba                	sd	a4,72(sp)
   17b42:	0015c783          	lbu	a5,1(a1)
   17b46:	cb95                	beqz	a5,17b7a <_svfprintf_r+0x19c0>
   17b48:	6766                	ld	a4,88(sp)
   17b4a:	2705                	addiw	a4,a4,1
   17b4c:	ecba                	sd	a4,88(sp)
   17b4e:	00158713          	addi	a4,a1,1
   17b52:	f0ba                	sd	a4,96(sp)
   17b54:	fcd79ee3          	bne	a5,a3,17b30 <_svfprintf_r+0x1976>
   17b58:	6766                	ld	a4,88(sp)
   17b5a:	67c6                	ld	a5,80(sp)
   17b5c:	9fb9                	addw	a5,a5,a4
   17b5e:	670a                	ld	a4,128(sp)
   17b60:	02e787bb          	mulw	a5,a5,a4
   17b64:	017787bb          	addw	a5,a5,s7
   17b68:	00078b9b          	sext.w	s7,a5
   17b6c:	fffbc713          	not	a4,s7
   17b70:	977d                	srai	a4,a4,0x3f
   17b72:	8ff9                	and	a5,a5,a4
   17b74:	0007891b          	sext.w	s2,a5
   17b78:	bca9                	j	175d2 <_svfprintf_r+0x1418>
   17b7a:	6746                	ld	a4,80(sp)
   17b7c:	7786                	ld	a5,96(sp)
   17b7e:	2705                	addiw	a4,a4,1
   17b80:	0007c783          	lbu	a5,0(a5)
   17b84:	e8ba                	sd	a4,80(sp)
   17b86:	b7f9                	j	17b54 <_svfprintf_r+0x199a>
   17b88:	77a6                	ld	a5,104(sp)
   17b8a:	06600d13          	li	s10,102
   17b8e:	00e78bbb          	addw	s7,a5,a4
   17b92:	018b8bbb          	addw	s7,s7,s8
   17b96:	b26d                	j	17540 <_svfprintf_r+0x1386>
   17b98:	66c2                	ld	a3,16(sp)
   17b9a:	4298                	lw	a4,0(a3)
   17b9c:	00868613          	addi	a2,a3,8
   17ba0:	86ba                	mv	a3,a4
   17ba2:	00075363          	bgez	a4,17ba8 <_svfprintf_r+0x19ee>
   17ba6:	56fd                	li	a3,-1
   17ba8:	00144e03          	lbu	t3,1(s0)
   17bac:	00068c1b          	sext.w	s8,a3
   17bb0:	e832                	sd	a2,16(sp)
   17bb2:	843e                	mv	s0,a5
   17bb4:	f10fe06f          	j	162c4 <_svfprintf_r+0x10a>
   17bb8:	e791                	bnez	a5,17bc4 <_svfprintf_r+0x1a0a>
   17bba:	4905                	li	s2,1
   17bbc:	06600d13          	li	s10,102
   17bc0:	4b85                	li	s7,1
   17bc2:	b431                	j	175ce <_svfprintf_r+0x1414>
   17bc4:	77a6                	ld	a5,104(sp)
   17bc6:	06600d13          	li	s10,102
   17bca:	2785                	addiw	a5,a5,1
   17bcc:	018787bb          	addw	a5,a5,s8
   17bd0:	00078b9b          	sext.w	s7,a5
   17bd4:	fffbc713          	not	a4,s7
   17bd8:	977d                	srai	a4,a4,0x3f
   17bda:	8ff9                	and	a5,a5,a4
   17bdc:	0007891b          	sext.w	s2,a5
   17be0:	b2fd                	j	175ce <_svfprintf_r+0x1414>
   17be2:	4789                	li	a5,2
   17be4:	fcbe                	sd	a5,120(sp)
   17be6:	b45d                	j	1768c <_svfprintf_r+0x14d2>
   17be8:	010a5783          	lhu	a5,16(s4)
   17bec:	0407e793          	ori	a5,a5,64
   17bf0:	00fa1823          	sh	a5,16(s4)
   17bf4:	837fe06f          	j	1642a <_svfprintf_r+0x270>
   17bf8:	47b1                	li	a5,12
   17bfa:	00f9a023          	sw	a5,0(s3)
   17bfe:	57fd                	li	a5,-1
   17c00:	e43e                	sd	a5,8(sp)
   17c02:	837fe06f          	j	16438 <_svfprintf_r+0x27e>

0000000000017c06 <__sprint_r.part.0>:
   17c06:	0ac5a783          	lw	a5,172(a1)
   17c0a:	715d                	addi	sp,sp,-80
   17c0c:	ec56                	sd	s5,24(sp)
   17c0e:	83b5                	srli	a5,a5,0xd
   17c10:	e486                	sd	ra,72(sp)
   17c12:	e0a2                	sd	s0,64(sp)
   17c14:	fc26                	sd	s1,56(sp)
   17c16:	f84a                	sd	s2,48(sp)
   17c18:	f44e                	sd	s3,40(sp)
   17c1a:	f052                	sd	s4,32(sp)
   17c1c:	e85a                	sd	s6,16(sp)
   17c1e:	e45e                	sd	s7,8(sp)
   17c20:	8b85                	andi	a5,a5,1
   17c22:	8ab2                	mv	s5,a2
   17c24:	c3c1                	beqz	a5,17ca4 <__sprint_r.part.0+0x9e>
   17c26:	6a1c                	ld	a5,16(a2)
   17c28:	00063b03          	ld	s6,0(a2)
   17c2c:	892e                	mv	s2,a1
   17c2e:	89aa                	mv	s3,a0
   17c30:	5a7d                	li	s4,-1
   17c32:	c7bd                	beqz	a5,17ca0 <__sprint_r.part.0+0x9a>
   17c34:	008b3483          	ld	s1,8(s6)
   17c38:	000b3403          	ld	s0,0(s6)
   17c3c:	8089                	srli	s1,s1,0x2
   17c3e:	00048b9b          	sext.w	s7,s1
   17c42:	05705863          	blez	s7,17c92 <__sprint_r.part.0+0x8c>
   17c46:	34fd                	addiw	s1,s1,-1
   17c48:	02049793          	slli	a5,s1,0x20
   17c4c:	01e7d493          	srli	s1,a5,0x1e
   17c50:	00440793          	addi	a5,s0,4
   17c54:	94be                	add	s1,s1,a5
   17c56:	a019                	j	17c5c <__sprint_r.part.0+0x56>
   17c58:	02848b63          	beq	s1,s0,17c8e <__sprint_r.part.0+0x88>
   17c5c:	400c                	lw	a1,0(s0)
   17c5e:	864a                	mv	a2,s2
   17c60:	854e                	mv	a0,s3
   17c62:	0e6010ef          	jal	ra,18d48 <_fputwc_r>
   17c66:	2501                	sext.w	a0,a0
   17c68:	0411                	addi	s0,s0,4
   17c6a:	ff4517e3          	bne	a0,s4,17c58 <__sprint_r.part.0+0x52>
   17c6e:	557d                	li	a0,-1
   17c70:	60a6                	ld	ra,72(sp)
   17c72:	6406                	ld	s0,64(sp)
   17c74:	000ab823          	sd	zero,16(s5)
   17c78:	000aa423          	sw	zero,8(s5)
   17c7c:	74e2                	ld	s1,56(sp)
   17c7e:	7942                	ld	s2,48(sp)
   17c80:	79a2                	ld	s3,40(sp)
   17c82:	7a02                	ld	s4,32(sp)
   17c84:	6ae2                	ld	s5,24(sp)
   17c86:	6b42                	ld	s6,16(sp)
   17c88:	6ba2                	ld	s7,8(sp)
   17c8a:	6161                	addi	sp,sp,80
   17c8c:	8082                	ret
   17c8e:	010ab783          	ld	a5,16(s5)
   17c92:	0b8a                	slli	s7,s7,0x2
   17c94:	417787b3          	sub	a5,a5,s7
   17c98:	00fab823          	sd	a5,16(s5)
   17c9c:	0b41                	addi	s6,s6,16
   17c9e:	fbd9                	bnez	a5,17c34 <__sprint_r.part.0+0x2e>
   17ca0:	4501                	li	a0,0
   17ca2:	b7f9                	j	17c70 <__sprint_r.part.0+0x6a>
   17ca4:	14e010ef          	jal	ra,18df2 <__sfvwrite_r>
   17ca8:	b7e1                	j	17c70 <__sprint_r.part.0+0x6a>

0000000000017caa <__sprint_r>:
   17caa:	6a18                	ld	a4,16(a2)
   17cac:	c311                	beqz	a4,17cb0 <__sprint_r+0x6>
   17cae:	bfa1                	j	17c06 <__sprint_r.part.0>
   17cb0:	00062423          	sw	zero,8(a2)
   17cb4:	4501                	li	a0,0
   17cb6:	8082                	ret

0000000000017cb8 <_vfiprintf_r>:
   17cb8:	7145                	addi	sp,sp,-464
   17cba:	f74e                	sd	s3,424(sp)
   17cbc:	ef56                	sd	s5,408(sp)
   17cbe:	f6ee                	sd	s11,360(sp)
   17cc0:	e786                	sd	ra,456(sp)
   17cc2:	e3a2                	sd	s0,448(sp)
   17cc4:	ff26                	sd	s1,440(sp)
   17cc6:	fb4a                	sd	s2,432(sp)
   17cc8:	f352                	sd	s4,416(sp)
   17cca:	eb5a                	sd	s6,400(sp)
   17ccc:	e75e                	sd	s7,392(sp)
   17cce:	e362                	sd	s8,384(sp)
   17cd0:	fee6                	sd	s9,376(sp)
   17cd2:	faea                	sd	s10,368(sp)
   17cd4:	e436                	sd	a3,8(sp)
   17cd6:	8aaa                	mv	s5,a0
   17cd8:	89ae                	mv	s3,a1
   17cda:	8db2                	mv	s11,a2
   17cdc:	c501                	beqz	a0,17ce4 <_vfiprintf_r+0x2c>
   17cde:	493c                	lw	a5,80(a0)
   17ce0:	42078663          	beqz	a5,1810c <_vfiprintf_r+0x454>
   17ce4:	01099703          	lh	a4,16(s3)
   17ce8:	6689                	lui	a3,0x2
   17cea:	03071793          	slli	a5,a4,0x30
   17cee:	93c1                	srli	a5,a5,0x30
   17cf0:	00d7f633          	and	a2,a5,a3
   17cf4:	e215                	bnez	a2,17d18 <_vfiprintf_r+0x60>
   17cf6:	0ac9a603          	lw	a2,172(s3)
   17cfa:	00d767b3          	or	a5,a4,a3
   17cfe:	0107979b          	slliw	a5,a5,0x10
   17d02:	7779                	lui	a4,0xffffe
   17d04:	4107d79b          	sraiw	a5,a5,0x10
   17d08:	177d                	addi	a4,a4,-1
   17d0a:	8f71                	and	a4,a4,a2
   17d0c:	00f99823          	sh	a5,16(s3)
   17d10:	17c2                	slli	a5,a5,0x30
   17d12:	0ae9a623          	sw	a4,172(s3)
   17d16:	93c1                	srli	a5,a5,0x30
   17d18:	0087f713          	andi	a4,a5,8
   17d1c:	28070e63          	beqz	a4,17fb8 <_vfiprintf_r+0x300>
   17d20:	0189b703          	ld	a4,24(s3)
   17d24:	28070a63          	beqz	a4,17fb8 <_vfiprintf_r+0x300>
   17d28:	8be9                	andi	a5,a5,26
   17d2a:	4729                	li	a4,10
   17d2c:	2ae78263          	beq	a5,a4,17fd0 <_vfiprintf_r+0x318>
   17d30:	67f5                	lui	a5,0x1d
   17d32:	1180                	addi	s0,sp,224
   17d34:	bf878793          	addi	a5,a5,-1032 # 1cbf8 <zeroes.0+0x10>
   17d38:	6b75                	lui	s6,0x1d
   17d3a:	6975                	lui	s2,0x1d
   17d3c:	f0a2                	sd	s0,96(sp)
   17d3e:	f882                	sd	zero,112(sp)
   17d40:	d482                	sw	zero,104(sp)
   17d42:	8722                	mv	a4,s0
   17d44:	e802                	sd	zero,16(sp)
   17d46:	fc02                	sd	zero,56(sp)
   17d48:	e482                	sd	zero,72(sp)
   17d4a:	e082                	sd	zero,64(sp)
   17d4c:	e002                	sd	zero,0(sp)
   17d4e:	ec3e                	sd	a5,24(sp)
   17d50:	d68b0b13          	addi	s6,s6,-664 # 1cd68 <blanks.1>
   17d54:	d7890913          	addi	s2,s2,-648 # 1cd78 <zeroes.0>
   17d58:	000dc783          	lbu	a5,0(s11)
   17d5c:	1c078363          	beqz	a5,17f22 <_vfiprintf_r+0x26a>
   17d60:	84ee                	mv	s1,s11
   17d62:	02500693          	li	a3,37
   17d66:	2ed78a63          	beq	a5,a3,1805a <_vfiprintf_r+0x3a2>
   17d6a:	0014c783          	lbu	a5,1(s1)
   17d6e:	0485                	addi	s1,s1,1
   17d70:	fbfd                	bnez	a5,17d66 <_vfiprintf_r+0xae>
   17d72:	41b48a3b          	subw	s4,s1,s11
   17d76:	1a0a0663          	beqz	s4,17f22 <_vfiprintf_r+0x26a>
   17d7a:	57a6                	lw	a5,104(sp)
   17d7c:	76c6                	ld	a3,112(sp)
   17d7e:	01b73023          	sd	s11,0(a4) # ffffffffffffe000 <__BSS_END__+0xfffffffffffdec80>
   17d82:	0017861b          	addiw	a2,a5,1
   17d86:	96d2                	add	a3,a3,s4
   17d88:	01473423          	sd	s4,8(a4)
   17d8c:	f8b6                	sd	a3,112(sp)
   17d8e:	d4b2                	sw	a2,104(sp)
   17d90:	479d                	li	a5,7
   17d92:	0741                	addi	a4,a4,16
   17d94:	00c7dc63          	bge	a5,a2,17dac <_vfiprintf_r+0xf4>
   17d98:	060689e3          	beqz	a3,1860a <_vfiprintf_r+0x952>
   17d9c:	1090                	addi	a2,sp,96
   17d9e:	85ce                	mv	a1,s3
   17da0:	8556                	mv	a0,s5
   17da2:	e65ff0ef          	jal	ra,17c06 <__sprint_r.part.0>
   17da6:	18051163          	bnez	a0,17f28 <_vfiprintf_r+0x270>
   17daa:	8722                	mv	a4,s0
   17dac:	6682                	ld	a3,0(sp)
   17dae:	0004c783          	lbu	a5,0(s1)
   17db2:	014686bb          	addw	a3,a3,s4
   17db6:	e036                	sd	a3,0(sp)
   17db8:	16078563          	beqz	a5,17f22 <_vfiprintf_r+0x26a>
   17dbc:	0014c783          	lbu	a5,1(s1)
   17dc0:	00148d93          	addi	s11,s1,1
   17dc4:	04010ba3          	sb	zero,87(sp)
   17dc8:	5cfd                	li	s9,-1
   17dca:	4481                	li	s1,0
   17dcc:	4d01                	li	s10,0
   17dce:	05a00a13          	li	s4,90
   17dd2:	4ba5                	li	s7,9
   17dd4:	0d85                	addi	s11,s11,1
   17dd6:	2781                	sext.w	a5,a5
   17dd8:	02a00593          	li	a1,42
   17ddc:	fe07869b          	addiw	a3,a5,-32
   17de0:	0006861b          	sext.w	a2,a3
   17de4:	04ca6363          	bltu	s4,a2,17e2a <_vfiprintf_r+0x172>
   17de8:	02069613          	slli	a2,a3,0x20
   17dec:	01e65693          	srli	a3,a2,0x1e
   17df0:	6662                	ld	a2,24(sp)
   17df2:	96b2                	add	a3,a3,a2
   17df4:	4294                	lw	a3,0(a3)
   17df6:	8682                	jr	a3
   17df8:	4481                	li	s1,0
   17dfa:	000dc603          	lbu	a2,0(s11)
   17dfe:	0024969b          	slliw	a3,s1,0x2
   17e02:	9ea5                	addw	a3,a3,s1
   17e04:	fd07879b          	addiw	a5,a5,-48
   17e08:	0016969b          	slliw	a3,a3,0x1
   17e0c:	fd06051b          	addiw	a0,a2,-48
   17e10:	00d784bb          	addw	s1,a5,a3
   17e14:	0d85                	addi	s11,s11,1
   17e16:	0006079b          	sext.w	a5,a2
   17e1a:	feabf0e3          	bgeu	s7,a0,17dfa <_vfiprintf_r+0x142>
   17e1e:	fe07869b          	addiw	a3,a5,-32
   17e22:	0006861b          	sext.w	a2,a3
   17e26:	fcca71e3          	bgeu	s4,a2,17de8 <_vfiprintf_r+0x130>
   17e2a:	0e078c63          	beqz	a5,17f22 <_vfiprintf_r+0x26a>
   17e2e:	06f10c23          	sb	a5,120(sp)
   17e32:	04010ba3          	sb	zero,87(sp)
   17e36:	4b85                	li	s7,1
   17e38:	4a05                	li	s4,1
   17e3a:	07810c13          	addi	s8,sp,120
   17e3e:	4c81                	li	s9,0
   17e40:	002d7293          	andi	t0,s10,2
   17e44:	00028363          	beqz	t0,17e4a <_vfiprintf_r+0x192>
   17e48:	2b89                	addiw	s7,s7,2
   17e4a:	56a6                	lw	a3,104(sp)
   17e4c:	084d7f93          	andi	t6,s10,132
   17e50:	77c6                	ld	a5,112(sp)
   17e52:	0016861b          	addiw	a2,a3,1
   17e56:	85b2                	mv	a1,a2
   17e58:	000f9663          	bnez	t6,17e64 <_vfiprintf_r+0x1ac>
   17e5c:	41748ebb          	subw	t4,s1,s7
   17e60:	65d04f63          	bgtz	t4,184be <_vfiprintf_r+0x806>
   17e64:	05714583          	lbu	a1,87(sp)
   17e68:	cd99                	beqz	a1,17e86 <_vfiprintf_r+0x1ce>
   17e6a:	05710693          	addi	a3,sp,87
   17e6e:	0785                	addi	a5,a5,1
   17e70:	e314                	sd	a3,0(a4)
   17e72:	4685                	li	a3,1
   17e74:	e714                	sd	a3,8(a4)
   17e76:	f8be                	sd	a5,112(sp)
   17e78:	d4b2                	sw	a2,104(sp)
   17e7a:	469d                	li	a3,7
   17e7c:	5cc6cb63          	blt	a3,a2,18452 <_vfiprintf_r+0x79a>
   17e80:	86b2                	mv	a3,a2
   17e82:	0741                	addi	a4,a4,16
   17e84:	2605                	addiw	a2,a2,1
   17e86:	02028b63          	beqz	t0,17ebc <_vfiprintf_r+0x204>
   17e8a:	08b4                	addi	a3,sp,88
   17e8c:	0789                	addi	a5,a5,2
   17e8e:	e314                	sd	a3,0(a4)
   17e90:	4689                	li	a3,2
   17e92:	e714                	sd	a3,8(a4)
   17e94:	f8be                	sd	a5,112(sp)
   17e96:	d4b2                	sw	a2,104(sp)
   17e98:	469d                	li	a3,7
   17e9a:	5ec6dd63          	bge	a3,a2,18494 <_vfiprintf_r+0x7dc>
   17e9e:	78078a63          	beqz	a5,18632 <_vfiprintf_r+0x97a>
   17ea2:	1090                	addi	a2,sp,96
   17ea4:	85ce                	mv	a1,s3
   17ea6:	8556                	mv	a0,s5
   17ea8:	f07e                	sd	t6,32(sp)
   17eaa:	d5dff0ef          	jal	ra,17c06 <__sprint_r.part.0>
   17eae:	ed2d                	bnez	a0,17f28 <_vfiprintf_r+0x270>
   17eb0:	56a6                	lw	a3,104(sp)
   17eb2:	77c6                	ld	a5,112(sp)
   17eb4:	7f82                	ld	t6,32(sp)
   17eb6:	8722                	mv	a4,s0
   17eb8:	0016861b          	addiw	a2,a3,1
   17ebc:	08000593          	li	a1,128
   17ec0:	46bf8663          	beq	t6,a1,1832c <_vfiprintf_r+0x674>
   17ec4:	414c8cbb          	subw	s9,s9,s4
   17ec8:	4f904e63          	bgtz	s9,183c4 <_vfiprintf_r+0x70c>
   17ecc:	97d2                	add	a5,a5,s4
   17ece:	01873023          	sd	s8,0(a4)
   17ed2:	01473423          	sd	s4,8(a4)
   17ed6:	f8be                	sd	a5,112(sp)
   17ed8:	d4b2                	sw	a2,104(sp)
   17eda:	469d                	li	a3,7
   17edc:	42c6d163          	bge	a3,a2,182fe <_vfiprintf_r+0x646>
   17ee0:	66078463          	beqz	a5,18548 <_vfiprintf_r+0x890>
   17ee4:	1090                	addi	a2,sp,96
   17ee6:	85ce                	mv	a1,s3
   17ee8:	8556                	mv	a0,s5
   17eea:	d1dff0ef          	jal	ra,17c06 <__sprint_r.part.0>
   17eee:	ed0d                	bnez	a0,17f28 <_vfiprintf_r+0x270>
   17ef0:	77c6                	ld	a5,112(sp)
   17ef2:	8722                	mv	a4,s0
   17ef4:	004d7313          	andi	t1,s10,4
   17ef8:	00030663          	beqz	t1,17f04 <_vfiprintf_r+0x24c>
   17efc:	41748a3b          	subw	s4,s1,s7
   17f00:	65404e63          	bgtz	s4,1855c <_vfiprintf_r+0x8a4>
   17f04:	8726                	mv	a4,s1
   17f06:	0174d363          	bge	s1,s7,17f0c <_vfiprintf_r+0x254>
   17f0a:	875e                	mv	a4,s7
   17f0c:	6682                	ld	a3,0(sp)
   17f0e:	9f35                	addw	a4,a4,a3
   17f10:	e03a                	sd	a4,0(sp)
   17f12:	52079463          	bnez	a5,1843a <_vfiprintf_r+0x782>
   17f16:	000dc783          	lbu	a5,0(s11)
   17f1a:	d482                	sw	zero,104(sp)
   17f1c:	8722                	mv	a4,s0
   17f1e:	e40791e3          	bnez	a5,17d60 <_vfiprintf_r+0xa8>
   17f22:	77c6                	ld	a5,112(sp)
   17f24:	16079fe3          	bnez	a5,188a2 <_vfiprintf_r+0xbea>
   17f28:	0109d783          	lhu	a5,16(s3)
   17f2c:	0407f793          	andi	a5,a5,64
   17f30:	18079ae3          	bnez	a5,188c4 <_vfiprintf_r+0xc0c>
   17f34:	60be                	ld	ra,456(sp)
   17f36:	641e                	ld	s0,448(sp)
   17f38:	6502                	ld	a0,0(sp)
   17f3a:	74fa                	ld	s1,440(sp)
   17f3c:	795a                	ld	s2,432(sp)
   17f3e:	79ba                	ld	s3,424(sp)
   17f40:	7a1a                	ld	s4,416(sp)
   17f42:	6afa                	ld	s5,408(sp)
   17f44:	6b5a                	ld	s6,400(sp)
   17f46:	6bba                	ld	s7,392(sp)
   17f48:	6c1a                	ld	s8,384(sp)
   17f4a:	7cf6                	ld	s9,376(sp)
   17f4c:	7d56                	ld	s10,368(sp)
   17f4e:	7db6                	ld	s11,360(sp)
   17f50:	6179                	addi	sp,sp,464
   17f52:	8082                	ret
   17f54:	010d6313          	ori	t1,s10,16
   17f58:	000dc783          	lbu	a5,0(s11)
   17f5c:	00030d1b          	sext.w	s10,t1
   17f60:	bd95                	j	17dd4 <_vfiprintf_r+0x11c>
   17f62:	010d6313          	ori	t1,s10,16
   17f66:	00030d1b          	sext.w	s10,t1
   17f6a:	66a2                	ld	a3,8(sp)
   17f6c:	020d7793          	andi	a5,s10,32
   17f70:	00868613          	addi	a2,a3,8 # 2008 <register_fini-0xe0a8>
   17f74:	cbf5                	beqz	a5,18068 <_vfiprintf_r+0x3b0>
   17f76:	629c                	ld	a5,0(a3)
   17f78:	8bbe                	mv	s7,a5
   17f7a:	1007c963          	bltz	a5,1808c <_vfiprintf_r+0x3d4>
   17f7e:	57fd                	li	a5,-1
   17f80:	04fc80e3          	beq	s9,a5,187c0 <_vfiprintf_r+0xb08>
   17f84:	f7fd7693          	andi	a3,s10,-129
   17f88:	2681                	sext.w	a3,a3
   17f8a:	7a0b9063          	bnez	s7,1872a <_vfiprintf_r+0xa72>
   17f8e:	140c94e3          	bnez	s9,188d6 <_vfiprintf_r+0xc1e>
   17f92:	8d36                	mv	s10,a3
   17f94:	e432                	sd	a2,8(sp)
   17f96:	4c81                	li	s9,0
   17f98:	4a01                	li	s4,0
   17f9a:	0dc10c13          	addi	s8,sp,220
   17f9e:	87e6                	mv	a5,s9
   17fa0:	014cd363          	bge	s9,s4,17fa6 <_vfiprintf_r+0x2ee>
   17fa4:	87d2                	mv	a5,s4
   17fa6:	05714683          	lbu	a3,87(sp)
   17faa:	00078b9b          	sext.w	s7,a5
   17fae:	e80689e3          	beqz	a3,17e40 <_vfiprintf_r+0x188>
   17fb2:	00178b9b          	addiw	s7,a5,1
   17fb6:	b569                	j	17e40 <_vfiprintf_r+0x188>
   17fb8:	85ce                	mv	a1,s3
   17fba:	8556                	mv	a0,s5
   17fbc:	e6bf90ef          	jal	ra,11e26 <__swsetup_r>
   17fc0:	100512e3          	bnez	a0,188c4 <_vfiprintf_r+0xc0c>
   17fc4:	0109d783          	lhu	a5,16(s3)
   17fc8:	4729                	li	a4,10
   17fca:	8be9                	andi	a5,a5,26
   17fcc:	d6e792e3          	bne	a5,a4,17d30 <_vfiprintf_r+0x78>
   17fd0:	01299783          	lh	a5,18(s3)
   17fd4:	d407cee3          	bltz	a5,17d30 <_vfiprintf_r+0x78>
   17fd8:	641e                	ld	s0,448(sp)
   17fda:	66a2                	ld	a3,8(sp)
   17fdc:	60be                	ld	ra,456(sp)
   17fde:	74fa                	ld	s1,440(sp)
   17fe0:	795a                	ld	s2,432(sp)
   17fe2:	7a1a                	ld	s4,416(sp)
   17fe4:	6b5a                	ld	s6,400(sp)
   17fe6:	6bba                	ld	s7,392(sp)
   17fe8:	6c1a                	ld	s8,384(sp)
   17fea:	7cf6                	ld	s9,376(sp)
   17fec:	7d56                	ld	s10,368(sp)
   17fee:	866e                	mv	a2,s11
   17ff0:	85ce                	mv	a1,s3
   17ff2:	7db6                	ld	s11,360(sp)
   17ff4:	79ba                	ld	s3,424(sp)
   17ff6:	8556                	mv	a0,s5
   17ff8:	6afa                	ld	s5,408(sp)
   17ffa:	6179                	addi	sp,sp,464
   17ffc:	10f0006f          	j	1890a <__sbprintf>
   18000:	010d6313          	ori	t1,s10,16
   18004:	00030d1b          	sext.w	s10,t1
   18008:	66a2                	ld	a3,8(sp)
   1800a:	020d7793          	andi	a5,s10,32
   1800e:	00868613          	addi	a2,a3,8
   18012:	cff1                	beqz	a5,180ee <_vfiprintf_r+0x436>
   18014:	0006bb83          	ld	s7,0(a3)
   18018:	bffd7693          	andi	a3,s10,-1025
   1801c:	2681                	sext.w	a3,a3
   1801e:	e432                	sd	a2,8(sp)
   18020:	4781                	li	a5,0
   18022:	4601                	li	a2,0
   18024:	04c10ba3          	sb	a2,87(sp)
   18028:	567d                	li	a2,-1
   1802a:	06cc8d63          	beq	s9,a2,180a4 <_vfiprintf_r+0x3ec>
   1802e:	f7f6f313          	andi	t1,a3,-129
   18032:	00030d1b          	sext.w	s10,t1
   18036:	460b9463          	bnez	s7,1849e <_vfiprintf_r+0x7e6>
   1803a:	780c9663          	bnez	s9,187c6 <_vfiprintf_r+0xb0e>
   1803e:	ffa1                	bnez	a5,17f96 <_vfiprintf_r+0x2de>
   18040:	0016fa13          	andi	s4,a3,1
   18044:	0dc10c13          	addi	s8,sp,220
   18048:	f40a0be3          	beqz	s4,17f9e <_vfiprintf_r+0x2e6>
   1804c:	03000793          	li	a5,48
   18050:	0cf10da3          	sb	a5,219(sp)
   18054:	0db10c13          	addi	s8,sp,219
   18058:	b799                	j	17f9e <_vfiprintf_r+0x2e6>
   1805a:	41b48a3b          	subw	s4,s1,s11
   1805e:	d00a1ee3          	bnez	s4,17d7a <_vfiprintf_r+0xc2>
   18062:	0004c783          	lbu	a5,0(s1)
   18066:	bb89                	j	17db8 <_vfiprintf_r+0x100>
   18068:	010d7793          	andi	a5,s10,16
   1806c:	6a079463          	bnez	a5,18714 <_vfiprintf_r+0xa5c>
   18070:	66a2                	ld	a3,8(sp)
   18072:	040d7793          	andi	a5,s10,64
   18076:	0006ab83          	lw	s7,0(a3)
   1807a:	7a078c63          	beqz	a5,18832 <_vfiprintf_r+0xb7a>
   1807e:	010b9b9b          	slliw	s7,s7,0x10
   18082:	410bdb9b          	sraiw	s7,s7,0x10
   18086:	87de                	mv	a5,s7
   18088:	ee07dbe3          	bgez	a5,17f7e <_vfiprintf_r+0x2c6>
   1808c:	e432                	sd	a2,8(sp)
   1808e:	02d00613          	li	a2,45
   18092:	04c10ba3          	sb	a2,87(sp)
   18096:	567d                	li	a2,-1
   18098:	41700bb3          	neg	s7,s7
   1809c:	86ea                	mv	a3,s10
   1809e:	4785                	li	a5,1
   180a0:	f8cc97e3          	bne	s9,a2,1802e <_vfiprintf_r+0x376>
   180a4:	4605                	li	a2,1
   180a6:	40c78063          	beq	a5,a2,184a6 <_vfiprintf_r+0x7ee>
   180aa:	4609                	li	a2,2
   180ac:	24c78c63          	beq	a5,a2,18304 <_vfiprintf_r+0x64c>
   180b0:	0dc10a13          	addi	s4,sp,220
   180b4:	8c52                	mv	s8,s4
   180b6:	007bf793          	andi	a5,s7,7
   180ba:	03078793          	addi	a5,a5,48
   180be:	fefc0fa3          	sb	a5,-1(s8)
   180c2:	003bdb93          	srli	s7,s7,0x3
   180c6:	8662                	mv	a2,s8
   180c8:	1c7d                	addi	s8,s8,-1
   180ca:	fe0b96e3          	bnez	s7,180b6 <_vfiprintf_r+0x3fe>
   180ce:	0016f593          	andi	a1,a3,1
   180d2:	24058963          	beqz	a1,18324 <_vfiprintf_r+0x66c>
   180d6:	03000593          	li	a1,48
   180da:	24b78563          	beq	a5,a1,18324 <_vfiprintf_r+0x66c>
   180de:	1679                	addi	a2,a2,-2
   180e0:	febc0fa3          	sb	a1,-1(s8)
   180e4:	40ca0a3b          	subw	s4,s4,a2
   180e8:	8d36                	mv	s10,a3
   180ea:	8c32                	mv	s8,a2
   180ec:	bd4d                	j	17f9e <_vfiprintf_r+0x2e6>
   180ee:	010d7793          	andi	a5,s10,16
   180f2:	60079d63          	bnez	a5,1870c <_vfiprintf_r+0xa54>
   180f6:	66a2                	ld	a3,8(sp)
   180f8:	040d7793          	andi	a5,s10,64
   180fc:	0006ab83          	lw	s7,0(a3)
   18100:	72078263          	beqz	a5,18824 <_vfiprintf_r+0xb6c>
   18104:	1bc2                	slli	s7,s7,0x30
   18106:	030bdb93          	srli	s7,s7,0x30
   1810a:	b739                	j	18018 <_vfiprintf_r+0x360>
   1810c:	b4efa0ef          	jal	ra,1245a <__sinit>
   18110:	bed1                	j	17ce4 <_vfiprintf_r+0x2c>
   18112:	67a2                	ld	a5,8(sp)
   18114:	04010ba3          	sb	zero,87(sp)
   18118:	0007bc03          	ld	s8,0(a5)
   1811c:	00878693          	addi	a3,a5,8
   18120:	6c0c0d63          	beqz	s8,187fa <_vfiprintf_r+0xb42>
   18124:	57fd                	li	a5,-1
   18126:	66fc8863          	beq	s9,a5,18796 <_vfiprintf_r+0xade>
   1812a:	8666                	mv	a2,s9
   1812c:	4581                	li	a1,0
   1812e:	8562                	mv	a0,s8
   18130:	f036                	sd	a3,32(sp)
   18132:	e43a                	sd	a4,8(sp)
   18134:	f99fc0ef          	jal	ra,150cc <memchr>
   18138:	6722                	ld	a4,8(sp)
   1813a:	7682                	ld	a3,32(sp)
   1813c:	76050a63          	beqz	a0,188b0 <_vfiprintf_r+0xbf8>
   18140:	41850a3b          	subw	s4,a0,s8
   18144:	e436                	sd	a3,8(sp)
   18146:	4c81                	li	s9,0
   18148:	bd99                	j	17f9e <_vfiprintf_r+0x2e6>
   1814a:	66a2                	ld	a3,8(sp)
   1814c:	04010ba3          	sb	zero,87(sp)
   18150:	4b85                	li	s7,1
   18152:	429c                	lw	a5,0(a3)
   18154:	06a1                	addi	a3,a3,8
   18156:	e436                	sd	a3,8(sp)
   18158:	06f10c23          	sb	a5,120(sp)
   1815c:	4a05                	li	s4,1
   1815e:	07810c13          	addi	s8,sp,120
   18162:	b9f1                	j	17e3e <_vfiprintf_r+0x186>
   18164:	67a2                	ld	a5,8(sp)
   18166:	4384                	lw	s1,0(a5)
   18168:	00878c13          	addi	s8,a5,8
   1816c:	5404dd63          	bgez	s1,186c6 <_vfiprintf_r+0xa0e>
   18170:	409004bb          	negw	s1,s1
   18174:	e462                	sd	s8,8(sp)
   18176:	004d6313          	ori	t1,s10,4
   1817a:	000dc783          	lbu	a5,0(s11)
   1817e:	00030d1b          	sext.w	s10,t1
   18182:	b989                	j	17dd4 <_vfiprintf_r+0x11c>
   18184:	020d6313          	ori	t1,s10,32
   18188:	000dc783          	lbu	a5,0(s11)
   1818c:	00030d1b          	sext.w	s10,t1
   18190:	b191                	j	17dd4 <_vfiprintf_r+0x11c>
   18192:	6622                	ld	a2,8(sp)
   18194:	77e1                	lui	a5,0xffff8
   18196:	8307c793          	xori	a5,a5,-2000
   1819a:	002d6693          	ori	a3,s10,2
   1819e:	04f11c23          	sh	a5,88(sp)
   181a2:	6d71                	lui	s10,0x1c
   181a4:	00860793          	addi	a5,a2,8
   181a8:	e43e                	sd	a5,8(sp)
   181aa:	280d0793          	addi	a5,s10,640 # 1c280 <__clzdi2+0x68>
   181ae:	e83e                	sd	a5,16(sp)
   181b0:	00063b83          	ld	s7,0(a2)
   181b4:	2681                	sext.w	a3,a3
   181b6:	4789                	li	a5,2
   181b8:	b5ad                	j	18022 <_vfiprintf_r+0x36a>
   181ba:	6622                	ld	a2,8(sp)
   181bc:	020d7793          	andi	a5,s10,32
   181c0:	6214                	ld	a3,0(a2)
   181c2:	0621                	addi	a2,a2,8
   181c4:	e432                	sd	a2,8(sp)
   181c6:	e385                	bnez	a5,181e6 <_vfiprintf_r+0x52e>
   181c8:	010d7793          	andi	a5,s10,16
   181cc:	ef89                	bnez	a5,181e6 <_vfiprintf_r+0x52e>
   181ce:	040d7793          	andi	a5,s10,64
   181d2:	6a079063          	bnez	a5,18872 <_vfiprintf_r+0xbba>
   181d6:	200d7313          	andi	t1,s10,512
   181da:	6782                	ld	a5,0(sp)
   181dc:	6e030a63          	beqz	t1,188d0 <_vfiprintf_r+0xc18>
   181e0:	00f68023          	sb	a5,0(a3)
   181e4:	be95                	j	17d58 <_vfiprintf_r+0xa0>
   181e6:	6782                	ld	a5,0(sp)
   181e8:	e29c                	sd	a5,0(a3)
   181ea:	b6bd                	j	17d58 <_vfiprintf_r+0xa0>
   181ec:	02b00693          	li	a3,43
   181f0:	000dc783          	lbu	a5,0(s11)
   181f4:	04d10ba3          	sb	a3,87(sp)
   181f8:	bef1                	j	17dd4 <_vfiprintf_r+0x11c>
   181fa:	080d6313          	ori	t1,s10,128
   181fe:	000dc783          	lbu	a5,0(s11)
   18202:	00030d1b          	sext.w	s10,t1
   18206:	b6f9                	j	17dd4 <_vfiprintf_r+0x11c>
   18208:	000dc783          	lbu	a5,0(s11)
   1820c:	001d8693          	addi	a3,s11,1
   18210:	6cb78563          	beq	a5,a1,188da <_vfiprintf_r+0xc22>
   18214:	fd07861b          	addiw	a2,a5,-48
   18218:	8db6                	mv	s11,a3
   1821a:	4c81                	li	s9,0
   1821c:	bccbe0e3          	bltu	s7,a2,17ddc <_vfiprintf_r+0x124>
   18220:	000dc783          	lbu	a5,0(s11)
   18224:	002c969b          	slliw	a3,s9,0x2
   18228:	019686bb          	addw	a3,a3,s9
   1822c:	0016969b          	slliw	a3,a3,0x1
   18230:	00c68cbb          	addw	s9,a3,a2
   18234:	fd07861b          	addiw	a2,a5,-48
   18238:	0d85                	addi	s11,s11,1
   1823a:	fecbf3e3          	bgeu	s7,a2,18220 <_vfiprintf_r+0x568>
   1823e:	be79                	j	17ddc <_vfiprintf_r+0x124>
   18240:	8556                	mv	a0,s5
   18242:	f03a                	sd	a4,32(sp)
   18244:	ecafc0ef          	jal	ra,1490e <_localeconv_r>
   18248:	651c                	ld	a5,8(a0)
   1824a:	853e                	mv	a0,a5
   1824c:	e0be                	sd	a5,64(sp)
   1824e:	e6bfd0ef          	jal	ra,160b8 <strlen>
   18252:	87aa                	mv	a5,a0
   18254:	8556                	mv	a0,s5
   18256:	8c3e                	mv	s8,a5
   18258:	e4be                	sd	a5,72(sp)
   1825a:	eb4fc0ef          	jal	ra,1490e <_localeconv_r>
   1825e:	6914                	ld	a3,16(a0)
   18260:	7702                	ld	a4,32(sp)
   18262:	000dc783          	lbu	a5,0(s11)
   18266:	fc36                	sd	a3,56(sp)
   18268:	b60c06e3          	beqz	s8,17dd4 <_vfiprintf_r+0x11c>
   1826c:	b60684e3          	beqz	a3,17dd4 <_vfiprintf_r+0x11c>
   18270:	0006c683          	lbu	a3,0(a3)
   18274:	b60680e3          	beqz	a3,17dd4 <_vfiprintf_r+0x11c>
   18278:	400d6313          	ori	t1,s10,1024
   1827c:	00030d1b          	sext.w	s10,t1
   18280:	be91                	j	17dd4 <_vfiprintf_r+0x11c>
   18282:	001d6313          	ori	t1,s10,1
   18286:	000dc783          	lbu	a5,0(s11)
   1828a:	00030d1b          	sext.w	s10,t1
   1828e:	b699                	j	17dd4 <_vfiprintf_r+0x11c>
   18290:	05714683          	lbu	a3,87(sp)
   18294:	000dc783          	lbu	a5,0(s11)
   18298:	b2069ee3          	bnez	a3,17dd4 <_vfiprintf_r+0x11c>
   1829c:	02000693          	li	a3,32
   182a0:	04d10ba3          	sb	a3,87(sp)
   182a4:	be05                	j	17dd4 <_vfiprintf_r+0x11c>
   182a6:	000dc783          	lbu	a5,0(s11)
   182aa:	06c00693          	li	a3,108
   182ae:	52d78d63          	beq	a5,a3,187e8 <_vfiprintf_r+0xb30>
   182b2:	010d6313          	ori	t1,s10,16
   182b6:	00030d1b          	sext.w	s10,t1
   182ba:	be29                	j	17dd4 <_vfiprintf_r+0x11c>
   182bc:	000dc783          	lbu	a5,0(s11)
   182c0:	06800693          	li	a3,104
   182c4:	50d78963          	beq	a5,a3,187d6 <_vfiprintf_r+0xb1e>
   182c8:	040d6313          	ori	t1,s10,64
   182cc:	00030d1b          	sext.w	s10,t1
   182d0:	b611                	j	17dd4 <_vfiprintf_r+0x11c>
   182d2:	010d6693          	ori	a3,s10,16
   182d6:	2681                	sext.w	a3,a3
   182d8:	65a2                	ld	a1,8(sp)
   182da:	0206f793          	andi	a5,a3,32
   182de:	00858613          	addi	a2,a1,8
   182e2:	32078863          	beqz	a5,18612 <_vfiprintf_r+0x95a>
   182e6:	0005bb83          	ld	s7,0(a1)
   182ea:	4785                	li	a5,1
   182ec:	e432                	sd	a2,8(sp)
   182ee:	bb15                	j	18022 <_vfiprintf_r+0x36a>
   182f0:	4705                	li	a4,1
   182f2:	d4ba                	sw	a4,104(sp)
   182f4:	87d2                	mv	a5,s4
   182f6:	f1e2                	sd	s8,224(sp)
   182f8:	f5d2                	sd	s4,232(sp)
   182fa:	f8d2                	sd	s4,112(sp)
   182fc:	8722                	mv	a4,s0
   182fe:	0741                	addi	a4,a4,16
   18300:	bed5                	j	17ef4 <_vfiprintf_r+0x23c>
   18302:	86ea                	mv	a3,s10
   18304:	0dc10a13          	addi	s4,sp,220
   18308:	8c52                	mv	s8,s4
   1830a:	6642                	ld	a2,16(sp)
   1830c:	00fbf793          	andi	a5,s7,15
   18310:	1c7d                	addi	s8,s8,-1
   18312:	97b2                	add	a5,a5,a2
   18314:	0007c783          	lbu	a5,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd8c80>
   18318:	004bdb93          	srli	s7,s7,0x4
   1831c:	00fc0023          	sb	a5,0(s8)
   18320:	fe0b95e3          	bnez	s7,1830a <_vfiprintf_r+0x652>
   18324:	418a0a3b          	subw	s4,s4,s8
   18328:	8d36                	mv	s10,a3
   1832a:	b995                	j	17f9e <_vfiprintf_r+0x2e6>
   1832c:	41748ebb          	subw	t4,s1,s7
   18330:	b9d05ae3          	blez	t4,17ec4 <_vfiprintf_r+0x20c>
   18334:	45c1                	li	a1,16
   18336:	59d5db63          	bge	a1,t4,188cc <_vfiprintf_r+0xc14>
   1833a:	4f41                	li	t5,16
   1833c:	4f9d                	li	t6,7
   1833e:	a801                	j	1834e <_vfiprintf_r+0x696>
   18340:	0026851b          	addiw	a0,a3,2
   18344:	0741                	addi	a4,a4,16
   18346:	86ae                	mv	a3,a1
   18348:	3ec1                	addiw	t4,t4,-16
   1834a:	05df5163          	bge	t5,t4,1838c <_vfiprintf_r+0x6d4>
   1834e:	0016859b          	addiw	a1,a3,1
   18352:	07c1                	addi	a5,a5,16
   18354:	01273023          	sd	s2,0(a4)
   18358:	01e73423          	sd	t5,8(a4)
   1835c:	f8be                	sd	a5,112(sp)
   1835e:	d4ae                	sw	a1,104(sp)
   18360:	febfd0e3          	bge	t6,a1,18340 <_vfiprintf_r+0x688>
   18364:	c3fd                	beqz	a5,1844a <_vfiprintf_r+0x792>
   18366:	1090                	addi	a2,sp,96
   18368:	85ce                	mv	a1,s3
   1836a:	8556                	mv	a0,s5
   1836c:	f076                	sd	t4,32(sp)
   1836e:	899ff0ef          	jal	ra,17c06 <__sprint_r.part.0>
   18372:	ba051be3          	bnez	a0,17f28 <_vfiprintf_r+0x270>
   18376:	7e82                	ld	t4,32(sp)
   18378:	56a6                	lw	a3,104(sp)
   1837a:	4f41                	li	t5,16
   1837c:	3ec1                	addiw	t4,t4,-16
   1837e:	77c6                	ld	a5,112(sp)
   18380:	8722                	mv	a4,s0
   18382:	0016851b          	addiw	a0,a3,1
   18386:	4f9d                	li	t6,7
   18388:	fddf43e3          	blt	t5,t4,1834e <_vfiprintf_r+0x696>
   1838c:	97f6                	add	a5,a5,t4
   1838e:	01273023          	sd	s2,0(a4)
   18392:	01d73423          	sd	t4,8(a4)
   18396:	f8be                	sd	a5,112(sp)
   18398:	d4aa                	sw	a0,104(sp)
   1839a:	469d                	li	a3,7
   1839c:	34a6dc63          	bge	a3,a0,186f4 <_vfiprintf_r+0xa3c>
   183a0:	4a078963          	beqz	a5,18852 <_vfiprintf_r+0xb9a>
   183a4:	1090                	addi	a2,sp,96
   183a6:	85ce                	mv	a1,s3
   183a8:	8556                	mv	a0,s5
   183aa:	85dff0ef          	jal	ra,17c06 <__sprint_r.part.0>
   183ae:	b6051de3          	bnez	a0,17f28 <_vfiprintf_r+0x270>
   183b2:	56a6                	lw	a3,104(sp)
   183b4:	414c8cbb          	subw	s9,s9,s4
   183b8:	77c6                	ld	a5,112(sp)
   183ba:	8722                	mv	a4,s0
   183bc:	0016861b          	addiw	a2,a3,1
   183c0:	b19056e3          	blez	s9,17ecc <_vfiprintf_r+0x214>
   183c4:	45c1                	li	a1,16
   183c6:	0595d963          	bge	a1,s9,18418 <_vfiprintf_r+0x760>
   183ca:	4ec1                	li	t4,16
   183cc:	4f1d                	li	t5,7
   183ce:	a801                	j	183de <_vfiprintf_r+0x726>
   183d0:	0026861b          	addiw	a2,a3,2
   183d4:	0741                	addi	a4,a4,16
   183d6:	86ae                	mv	a3,a1
   183d8:	3cc1                	addiw	s9,s9,-16
   183da:	039edf63          	bge	t4,s9,18418 <_vfiprintf_r+0x760>
   183de:	0016859b          	addiw	a1,a3,1
   183e2:	07c1                	addi	a5,a5,16
   183e4:	01273023          	sd	s2,0(a4)
   183e8:	01d73423          	sd	t4,8(a4)
   183ec:	f8be                	sd	a5,112(sp)
   183ee:	d4ae                	sw	a1,104(sp)
   183f0:	febf50e3          	bge	t5,a1,183d0 <_vfiprintf_r+0x718>
   183f4:	cf9d                	beqz	a5,18432 <_vfiprintf_r+0x77a>
   183f6:	1090                	addi	a2,sp,96
   183f8:	85ce                	mv	a1,s3
   183fa:	8556                	mv	a0,s5
   183fc:	80bff0ef          	jal	ra,17c06 <__sprint_r.part.0>
   18400:	b20514e3          	bnez	a0,17f28 <_vfiprintf_r+0x270>
   18404:	56a6                	lw	a3,104(sp)
   18406:	4ec1                	li	t4,16
   18408:	3cc1                	addiw	s9,s9,-16
   1840a:	77c6                	ld	a5,112(sp)
   1840c:	8722                	mv	a4,s0
   1840e:	0016861b          	addiw	a2,a3,1
   18412:	4f1d                	li	t5,7
   18414:	fd9ec5e3          	blt	t4,s9,183de <_vfiprintf_r+0x726>
   18418:	97e6                	add	a5,a5,s9
   1841a:	01273023          	sd	s2,0(a4)
   1841e:	01973423          	sd	s9,8(a4)
   18422:	f8be                	sd	a5,112(sp)
   18424:	d4b2                	sw	a2,104(sp)
   18426:	469d                	li	a3,7
   18428:	1cc6c363          	blt	a3,a2,185ee <_vfiprintf_r+0x936>
   1842c:	0741                	addi	a4,a4,16
   1842e:	2605                	addiw	a2,a2,1
   18430:	bc71                	j	17ecc <_vfiprintf_r+0x214>
   18432:	4605                	li	a2,1
   18434:	4681                	li	a3,0
   18436:	8722                	mv	a4,s0
   18438:	b745                	j	183d8 <_vfiprintf_r+0x720>
   1843a:	1090                	addi	a2,sp,96
   1843c:	85ce                	mv	a1,s3
   1843e:	8556                	mv	a0,s5
   18440:	fc6ff0ef          	jal	ra,17c06 <__sprint_r.part.0>
   18444:	ac0509e3          	beqz	a0,17f16 <_vfiprintf_r+0x25e>
   18448:	b4c5                	j	17f28 <_vfiprintf_r+0x270>
   1844a:	4505                	li	a0,1
   1844c:	4681                	li	a3,0
   1844e:	8722                	mv	a4,s0
   18450:	bde5                	j	18348 <_vfiprintf_r+0x690>
   18452:	1e078463          	beqz	a5,1863a <_vfiprintf_r+0x982>
   18456:	1090                	addi	a2,sp,96
   18458:	85ce                	mv	a1,s3
   1845a:	8556                	mv	a0,s5
   1845c:	f47e                	sd	t6,40(sp)
   1845e:	f016                	sd	t0,32(sp)
   18460:	fa6ff0ef          	jal	ra,17c06 <__sprint_r.part.0>
   18464:	ac0512e3          	bnez	a0,17f28 <_vfiprintf_r+0x270>
   18468:	56a6                	lw	a3,104(sp)
   1846a:	77c6                	ld	a5,112(sp)
   1846c:	7fa2                	ld	t6,40(sp)
   1846e:	7282                	ld	t0,32(sp)
   18470:	8722                	mv	a4,s0
   18472:	0016861b          	addiw	a2,a3,1
   18476:	bc01                	j	17e86 <_vfiprintf_r+0x1ce>
   18478:	24079c63          	bnez	a5,186d0 <_vfiprintf_r+0xa18>
   1847c:	05714703          	lbu	a4,87(sp)
   18480:	3e071063          	bnez	a4,18860 <_vfiprintf_r+0xba8>
   18484:	1a028d63          	beqz	t0,1863e <_vfiprintf_r+0x986>
   18488:	08bc                	addi	a5,sp,88
   1848a:	f1be                	sd	a5,224(sp)
   1848c:	4789                	li	a5,2
   1848e:	f5be                	sd	a5,232(sp)
   18490:	4605                	li	a2,1
   18492:	8722                	mv	a4,s0
   18494:	86b2                	mv	a3,a2
   18496:	0741                	addi	a4,a4,16
   18498:	0016861b          	addiw	a2,a3,1
   1849c:	b405                	j	17ebc <_vfiprintf_r+0x204>
   1849e:	4605                	li	a2,1
   184a0:	86ea                	mv	a3,s10
   184a2:	c0c794e3          	bne	a5,a2,180aa <_vfiprintf_r+0x3f2>
   184a6:	47a5                	li	a5,9
   184a8:	1977ef63          	bltu	a5,s7,18646 <_vfiprintf_r+0x98e>
   184ac:	030b8b9b          	addiw	s7,s7,48
   184b0:	0d710da3          	sb	s7,219(sp)
   184b4:	8d36                	mv	s10,a3
   184b6:	4a05                	li	s4,1
   184b8:	0db10c13          	addi	s8,sp,219
   184bc:	b4cd                	j	17f9e <_vfiprintf_r+0x2e6>
   184be:	4541                	li	a0,16
   184c0:	07d55163          	bge	a0,t4,18522 <_vfiprintf_r+0x86a>
   184c4:	4f41                	li	t5,16
   184c6:	439d                	li	t2,7
   184c8:	a811                	j	184dc <_vfiprintf_r+0x824>
   184ca:	0026859b          	addiw	a1,a3,2
   184ce:	0741                	addi	a4,a4,16
   184d0:	86b2                	mv	a3,a2
   184d2:	3ec1                	addiw	t4,t4,-16
   184d4:	05df5763          	bge	t5,t4,18522 <_vfiprintf_r+0x86a>
   184d8:	0016859b          	addiw	a1,a3,1
   184dc:	07c1                	addi	a5,a5,16
   184de:	01673023          	sd	s6,0(a4)
   184e2:	01e73423          	sd	t5,8(a4)
   184e6:	f8be                	sd	a5,112(sp)
   184e8:	0005861b          	sext.w	a2,a1
   184ec:	d4ae                	sw	a1,104(sp)
   184ee:	fcc3dee3          	bge	t2,a2,184ca <_vfiprintf_r+0x812>
   184f2:	c7b9                	beqz	a5,18540 <_vfiprintf_r+0x888>
   184f4:	1090                	addi	a2,sp,96
   184f6:	85ce                	mv	a1,s3
   184f8:	8556                	mv	a0,s5
   184fa:	f876                	sd	t4,48(sp)
   184fc:	f47e                	sd	t6,40(sp)
   184fe:	f016                	sd	t0,32(sp)
   18500:	f06ff0ef          	jal	ra,17c06 <__sprint_r.part.0>
   18504:	a20512e3          	bnez	a0,17f28 <_vfiprintf_r+0x270>
   18508:	7ec2                	ld	t4,48(sp)
   1850a:	56a6                	lw	a3,104(sp)
   1850c:	4f41                	li	t5,16
   1850e:	3ec1                	addiw	t4,t4,-16
   18510:	77c6                	ld	a5,112(sp)
   18512:	7fa2                	ld	t6,40(sp)
   18514:	7282                	ld	t0,32(sp)
   18516:	8722                	mv	a4,s0
   18518:	0016859b          	addiw	a1,a3,1
   1851c:	439d                	li	t2,7
   1851e:	fbdf4de3          	blt	t5,t4,184d8 <_vfiprintf_r+0x820>
   18522:	97f6                	add	a5,a5,t4
   18524:	01673023          	sd	s6,0(a4)
   18528:	01d73423          	sd	t4,8(a4)
   1852c:	f8be                	sd	a5,112(sp)
   1852e:	d4ae                	sw	a1,104(sp)
   18530:	469d                	li	a3,7
   18532:	f4b6c3e3          	blt	a3,a1,18478 <_vfiprintf_r+0x7c0>
   18536:	0741                	addi	a4,a4,16
   18538:	0015861b          	addiw	a2,a1,1
   1853c:	86ae                	mv	a3,a1
   1853e:	b21d                	j	17e64 <_vfiprintf_r+0x1ac>
   18540:	4681                	li	a3,0
   18542:	4585                	li	a1,1
   18544:	8722                	mv	a4,s0
   18546:	b771                	j	184d2 <_vfiprintf_r+0x81a>
   18548:	d482                	sw	zero,104(sp)
   1854a:	004d7313          	andi	t1,s10,4
   1854e:	08030863          	beqz	t1,185de <_vfiprintf_r+0x926>
   18552:	41748a3b          	subw	s4,s1,s7
   18556:	09405463          	blez	s4,185de <_vfiprintf_r+0x926>
   1855a:	8722                	mv	a4,s0
   1855c:	46c1                	li	a3,16
   1855e:	5626                	lw	a2,104(sp)
   18560:	3546dd63          	bge	a3,s4,188ba <_vfiprintf_r+0xc02>
   18564:	4cc1                	li	s9,16
   18566:	4c1d                	li	s8,7
   18568:	a801                	j	18578 <_vfiprintf_r+0x8c0>
   1856a:	0026069b          	addiw	a3,a2,2
   1856e:	0741                	addi	a4,a4,16
   18570:	862e                	mv	a2,a1
   18572:	3a41                	addiw	s4,s4,-16
   18574:	034cdd63          	bge	s9,s4,185ae <_vfiprintf_r+0x8f6>
   18578:	0016059b          	addiw	a1,a2,1
   1857c:	07c1                	addi	a5,a5,16
   1857e:	01673023          	sd	s6,0(a4)
   18582:	01973423          	sd	s9,8(a4)
   18586:	f8be                	sd	a5,112(sp)
   18588:	d4ae                	sw	a1,104(sp)
   1858a:	febc50e3          	bge	s8,a1,1856a <_vfiprintf_r+0x8b2>
   1858e:	c7a1                	beqz	a5,185d6 <_vfiprintf_r+0x91e>
   18590:	1090                	addi	a2,sp,96
   18592:	85ce                	mv	a1,s3
   18594:	8556                	mv	a0,s5
   18596:	e70ff0ef          	jal	ra,17c06 <__sprint_r.part.0>
   1859a:	980517e3          	bnez	a0,17f28 <_vfiprintf_r+0x270>
   1859e:	5626                	lw	a2,104(sp)
   185a0:	3a41                	addiw	s4,s4,-16
   185a2:	77c6                	ld	a5,112(sp)
   185a4:	8722                	mv	a4,s0
   185a6:	0016069b          	addiw	a3,a2,1
   185aa:	fd4cc7e3          	blt	s9,s4,18578 <_vfiprintf_r+0x8c0>
   185ae:	97d2                	add	a5,a5,s4
   185b0:	01673023          	sd	s6,0(a4)
   185b4:	01473423          	sd	s4,8(a4)
   185b8:	f8be                	sd	a5,112(sp)
   185ba:	d4b6                	sw	a3,104(sp)
   185bc:	471d                	li	a4,7
   185be:	94d753e3          	bge	a4,a3,17f04 <_vfiprintf_r+0x24c>
   185c2:	cf91                	beqz	a5,185de <_vfiprintf_r+0x926>
   185c4:	1090                	addi	a2,sp,96
   185c6:	85ce                	mv	a1,s3
   185c8:	8556                	mv	a0,s5
   185ca:	e3cff0ef          	jal	ra,17c06 <__sprint_r.part.0>
   185ce:	94051de3          	bnez	a0,17f28 <_vfiprintf_r+0x270>
   185d2:	77c6                	ld	a5,112(sp)
   185d4:	ba05                	j	17f04 <_vfiprintf_r+0x24c>
   185d6:	4685                	li	a3,1
   185d8:	4601                	li	a2,0
   185da:	8722                	mv	a4,s0
   185dc:	bf59                	j	18572 <_vfiprintf_r+0x8ba>
   185de:	87a6                	mv	a5,s1
   185e0:	0174d363          	bge	s1,s7,185e6 <_vfiprintf_r+0x92e>
   185e4:	87de                	mv	a5,s7
   185e6:	6702                	ld	a4,0(sp)
   185e8:	9fb9                	addw	a5,a5,a4
   185ea:	e03e                	sd	a5,0(sp)
   185ec:	b22d                	j	17f16 <_vfiprintf_r+0x25e>
   185ee:	d00781e3          	beqz	a5,182f0 <_vfiprintf_r+0x638>
   185f2:	1090                	addi	a2,sp,96
   185f4:	85ce                	mv	a1,s3
   185f6:	8556                	mv	a0,s5
   185f8:	e0eff0ef          	jal	ra,17c06 <__sprint_r.part.0>
   185fc:	920516e3          	bnez	a0,17f28 <_vfiprintf_r+0x270>
   18600:	5626                	lw	a2,104(sp)
   18602:	77c6                	ld	a5,112(sp)
   18604:	8722                	mv	a4,s0
   18606:	2605                	addiw	a2,a2,1
   18608:	b0d1                	j	17ecc <_vfiprintf_r+0x214>
   1860a:	d482                	sw	zero,104(sp)
   1860c:	8722                	mv	a4,s0
   1860e:	f9eff06f          	j	17dac <_vfiprintf_r+0xf4>
   18612:	0106f793          	andi	a5,a3,16
   18616:	e7ed                	bnez	a5,18700 <_vfiprintf_r+0xa48>
   18618:	65a2                	ld	a1,8(sp)
   1861a:	0406f793          	andi	a5,a3,64
   1861e:	0005ab83          	lw	s7,0(a1)
   18622:	1e078863          	beqz	a5,18812 <_vfiprintf_r+0xb5a>
   18626:	1bc2                	slli	s7,s7,0x30
   18628:	030bdb93          	srli	s7,s7,0x30
   1862c:	e432                	sd	a2,8(sp)
   1862e:	4785                	li	a5,1
   18630:	bacd                	j	18022 <_vfiprintf_r+0x36a>
   18632:	4605                	li	a2,1
   18634:	4681                	li	a3,0
   18636:	8722                	mv	a4,s0
   18638:	b051                	j	17ebc <_vfiprintf_r+0x204>
   1863a:	0e029163          	bnez	t0,1871c <_vfiprintf_r+0xa64>
   1863e:	4681                	li	a3,0
   18640:	4605                	li	a2,1
   18642:	8722                	mv	a4,s0
   18644:	b8a5                	j	17ebc <_vfiprintf_r+0x204>
   18646:	0dc10a13          	addi	s4,sp,220
   1864a:	4006ff13          	andi	t5,a3,1024
   1864e:	4581                	li	a1,0
   18650:	8652                	mv	a2,s4
   18652:	4329                	li	t1,10
   18654:	4ea5                	li	t4,9
   18656:	0ff00d13          	li	s10,255
   1865a:	a039                	j	18668 <_vfiprintf_r+0x9b0>
   1865c:	026bd7b3          	divu	a5,s7,t1
   18660:	cd7ef2e3          	bgeu	t4,s7,18324 <_vfiprintf_r+0x66c>
   18664:	8bbe                	mv	s7,a5
   18666:	8662                	mv	a2,s8
   18668:	fff60c13          	addi	s8,a2,-1
   1866c:	2585                	addiw	a1,a1,1
   1866e:	026bf7b3          	remu	a5,s7,t1
   18672:	0307879b          	addiw	a5,a5,48
   18676:	fef60fa3          	sb	a5,-1(a2)
   1867a:	fe0f01e3          	beqz	t5,1865c <_vfiprintf_r+0x9a4>
   1867e:	77e2                	ld	a5,56(sp)
   18680:	0007c783          	lbu	a5,0(a5)
   18684:	fcb79ce3          	bne	a5,a1,1865c <_vfiprintf_r+0x9a4>
   18688:	fda78ae3          	beq	a5,s10,1865c <_vfiprintf_r+0x9a4>
   1868c:	c97efce3          	bgeu	t4,s7,18324 <_vfiprintf_r+0x66c>
   18690:	67a6                	ld	a5,72(sp)
   18692:	6586                	ld	a1,64(sp)
   18694:	f87a                	sd	t5,48(sp)
   18696:	40fc0c33          	sub	s8,s8,a5
   1869a:	863e                	mv	a2,a5
   1869c:	8562                	mv	a0,s8
   1869e:	f43a                	sd	a4,40(sp)
   186a0:	f036                	sd	a3,32(sp)
   186a2:	aa7fd0ef          	jal	ra,16148 <strncpy>
   186a6:	7762                	ld	a4,56(sp)
   186a8:	4329                	li	t1,10
   186aa:	026bd7b3          	divu	a5,s7,t1
   186ae:	00174603          	lbu	a2,1(a4)
   186b2:	7682                	ld	a3,32(sp)
   186b4:	7f42                	ld	t5,48(sp)
   186b6:	00c03633          	snez	a2,a2
   186ba:	9732                	add	a4,a4,a2
   186bc:	fc3a                	sd	a4,56(sp)
   186be:	4581                	li	a1,0
   186c0:	7722                	ld	a4,40(sp)
   186c2:	4ea5                	li	t4,9
   186c4:	b745                	j	18664 <_vfiprintf_r+0x9ac>
   186c6:	000dc783          	lbu	a5,0(s11)
   186ca:	e462                	sd	s8,8(sp)
   186cc:	f08ff06f          	j	17dd4 <_vfiprintf_r+0x11c>
   186d0:	1090                	addi	a2,sp,96
   186d2:	85ce                	mv	a1,s3
   186d4:	8556                	mv	a0,s5
   186d6:	f47e                	sd	t6,40(sp)
   186d8:	f016                	sd	t0,32(sp)
   186da:	d2cff0ef          	jal	ra,17c06 <__sprint_r.part.0>
   186de:	840515e3          	bnez	a0,17f28 <_vfiprintf_r+0x270>
   186e2:	56a6                	lw	a3,104(sp)
   186e4:	77c6                	ld	a5,112(sp)
   186e6:	7fa2                	ld	t6,40(sp)
   186e8:	7282                	ld	t0,32(sp)
   186ea:	8722                	mv	a4,s0
   186ec:	0016861b          	addiw	a2,a3,1
   186f0:	f74ff06f          	j	17e64 <_vfiprintf_r+0x1ac>
   186f4:	0741                	addi	a4,a4,16
   186f6:	0015061b          	addiw	a2,a0,1
   186fa:	86aa                	mv	a3,a0
   186fc:	fc8ff06f          	j	17ec4 <_vfiprintf_r+0x20c>
   18700:	67a2                	ld	a5,8(sp)
   18702:	e432                	sd	a2,8(sp)
   18704:	0007bb83          	ld	s7,0(a5)
   18708:	4785                	li	a5,1
   1870a:	ba21                	j	18022 <_vfiprintf_r+0x36a>
   1870c:	67a2                	ld	a5,8(sp)
   1870e:	0007bb83          	ld	s7,0(a5)
   18712:	b219                	j	18018 <_vfiprintf_r+0x360>
   18714:	67a2                	ld	a5,8(sp)
   18716:	639c                	ld	a5,0(a5)
   18718:	8bbe                	mv	s7,a5
   1871a:	b085                	j	17f7a <_vfiprintf_r+0x2c2>
   1871c:	08bc                	addi	a5,sp,88
   1871e:	f1be                	sd	a5,224(sp)
   18720:	4789                	li	a5,2
   18722:	f5be                	sd	a5,232(sp)
   18724:	4685                	li	a3,1
   18726:	8722                	mv	a4,s0
   18728:	b3bd                	j	18496 <_vfiprintf_r+0x7de>
   1872a:	e432                	sd	a2,8(sp)
   1872c:	bbad                	j	184a6 <_vfiprintf_r+0x7ee>
   1872e:	65a2                	ld	a1,8(sp)
   18730:	66f1                	lui	a3,0x1c
   18732:	28068693          	addi	a3,a3,640 # 1c280 <__clzdi2+0x68>
   18736:	e836                	sd	a3,16(sp)
   18738:	020d7693          	andi	a3,s10,32
   1873c:	00858613          	addi	a2,a1,8
   18740:	c6a1                	beqz	a3,18788 <_vfiprintf_r+0xad0>
   18742:	0005bb83          	ld	s7,0(a1)
   18746:	001d7693          	andi	a3,s10,1
   1874a:	ce89                	beqz	a3,18764 <_vfiprintf_r+0xaac>
   1874c:	000b8c63          	beqz	s7,18764 <_vfiprintf_r+0xaac>
   18750:	002d6313          	ori	t1,s10,2
   18754:	03000693          	li	a3,48
   18758:	04d10c23          	sb	a3,88(sp)
   1875c:	04f10ca3          	sb	a5,89(sp)
   18760:	00030d1b          	sext.w	s10,t1
   18764:	bffd7693          	andi	a3,s10,-1025
   18768:	2681                	sext.w	a3,a3
   1876a:	e432                	sd	a2,8(sp)
   1876c:	4789                	li	a5,2
   1876e:	b855                	j	18022 <_vfiprintf_r+0x36a>
   18770:	86ea                	mv	a3,s10
   18772:	b69d                	j	182d8 <_vfiprintf_r+0x620>
   18774:	65a2                	ld	a1,8(sp)
   18776:	66f1                	lui	a3,0x1c
   18778:	29868693          	addi	a3,a3,664 # 1c298 <__clzdi2+0x80>
   1877c:	e836                	sd	a3,16(sp)
   1877e:	020d7693          	andi	a3,s10,32
   18782:	00858613          	addi	a2,a1,8
   18786:	fed5                	bnez	a3,18742 <_vfiprintf_r+0xa8a>
   18788:	010d7693          	andi	a3,s10,16
   1878c:	c285                	beqz	a3,187ac <_vfiprintf_r+0xaf4>
   1878e:	66a2                	ld	a3,8(sp)
   18790:	0006bb83          	ld	s7,0(a3)
   18794:	bf4d                	j	18746 <_vfiprintf_r+0xa8e>
   18796:	8562                	mv	a0,s8
   18798:	f03a                	sd	a4,32(sp)
   1879a:	e436                	sd	a3,8(sp)
   1879c:	91dfd0ef          	jal	ra,160b8 <strlen>
   187a0:	7702                	ld	a4,32(sp)
   187a2:	00050a1b          	sext.w	s4,a0
   187a6:	4c81                	li	s9,0
   187a8:	ff6ff06f          	j	17f9e <_vfiprintf_r+0x2e6>
   187ac:	65a2                	ld	a1,8(sp)
   187ae:	040d7693          	andi	a3,s10,64
   187b2:	0005ab83          	lw	s7,0(a1)
   187b6:	cac1                	beqz	a3,18846 <_vfiprintf_r+0xb8e>
   187b8:	1bc2                	slli	s7,s7,0x30
   187ba:	030bdb93          	srli	s7,s7,0x30
   187be:	b761                	j	18746 <_vfiprintf_r+0xa8e>
   187c0:	86ea                	mv	a3,s10
   187c2:	e432                	sd	a2,8(sp)
   187c4:	b1cd                	j	184a6 <_vfiprintf_r+0x7ee>
   187c6:	4685                	li	a3,1
   187c8:	0ed78c63          	beq	a5,a3,188c0 <_vfiprintf_r+0xc08>
   187cc:	4689                	li	a3,2
   187ce:	b2d78ae3          	beq	a5,a3,18302 <_vfiprintf_r+0x64a>
   187d2:	86ea                	mv	a3,s10
   187d4:	b8f1                	j	180b0 <_vfiprintf_r+0x3f8>
   187d6:	200d6313          	ori	t1,s10,512
   187da:	001dc783          	lbu	a5,1(s11)
   187de:	00030d1b          	sext.w	s10,t1
   187e2:	0d85                	addi	s11,s11,1
   187e4:	df0ff06f          	j	17dd4 <_vfiprintf_r+0x11c>
   187e8:	020d6313          	ori	t1,s10,32
   187ec:	001dc783          	lbu	a5,1(s11)
   187f0:	00030d1b          	sext.w	s10,t1
   187f4:	0d85                	addi	s11,s11,1
   187f6:	ddeff06f          	j	17dd4 <_vfiprintf_r+0x11c>
   187fa:	4799                	li	a5,6
   187fc:	000c8a1b          	sext.w	s4,s9
   18800:	0597ee63          	bltu	a5,s9,1885c <_vfiprintf_r+0xba4>
   18804:	6e71                	lui	t3,0x1c
   18806:	8bd2                	mv	s7,s4
   18808:	e436                	sd	a3,8(sp)
   1880a:	2b0e0c13          	addi	s8,t3,688 # 1c2b0 <__clzdi2+0x98>
   1880e:	e30ff06f          	j	17e3e <_vfiprintf_r+0x186>
   18812:	2006f793          	andi	a5,a3,512
   18816:	cbbd                	beqz	a5,1888c <_vfiprintf_r+0xbd4>
   18818:	0ffbfb93          	zext.b	s7,s7
   1881c:	e432                	sd	a2,8(sp)
   1881e:	4785                	li	a5,1
   18820:	803ff06f          	j	18022 <_vfiprintf_r+0x36a>
   18824:	200d7793          	andi	a5,s10,512
   18828:	cfa9                	beqz	a5,18882 <_vfiprintf_r+0xbca>
   1882a:	0ffbfb93          	zext.b	s7,s7
   1882e:	feaff06f          	j	18018 <_vfiprintf_r+0x360>
   18832:	200d7793          	andi	a5,s10,512
   18836:	c3b9                	beqz	a5,1887c <_vfiprintf_r+0xbc4>
   18838:	018b9b9b          	slliw	s7,s7,0x18
   1883c:	418bdb9b          	sraiw	s7,s7,0x18
   18840:	87de                	mv	a5,s7
   18842:	f38ff06f          	j	17f7a <_vfiprintf_r+0x2c2>
   18846:	200d7693          	andi	a3,s10,512
   1884a:	caa1                	beqz	a3,1889a <_vfiprintf_r+0xbe2>
   1884c:	0ffbfb93          	zext.b	s7,s7
   18850:	bddd                	j	18746 <_vfiprintf_r+0xa8e>
   18852:	4605                	li	a2,1
   18854:	4681                	li	a3,0
   18856:	8722                	mv	a4,s0
   18858:	e6cff06f          	j	17ec4 <_vfiprintf_r+0x20c>
   1885c:	4a19                	li	s4,6
   1885e:	b75d                	j	18804 <_vfiprintf_r+0xb4c>
   18860:	05710793          	addi	a5,sp,87
   18864:	f1be                	sd	a5,224(sp)
   18866:	4785                	li	a5,1
   18868:	f5be                	sd	a5,232(sp)
   1886a:	4605                	li	a2,1
   1886c:	8722                	mv	a4,s0
   1886e:	e12ff06f          	j	17e80 <_vfiprintf_r+0x1c8>
   18872:	6782                	ld	a5,0(sp)
   18874:	00f69023          	sh	a5,0(a3)
   18878:	ce0ff06f          	j	17d58 <_vfiprintf_r+0xa0>
   1887c:	87de                	mv	a5,s7
   1887e:	efcff06f          	j	17f7a <_vfiprintf_r+0x2c2>
   18882:	1b82                	slli	s7,s7,0x20
   18884:	020bdb93          	srli	s7,s7,0x20
   18888:	f90ff06f          	j	18018 <_vfiprintf_r+0x360>
   1888c:	1b82                	slli	s7,s7,0x20
   1888e:	020bdb93          	srli	s7,s7,0x20
   18892:	e432                	sd	a2,8(sp)
   18894:	4785                	li	a5,1
   18896:	f8cff06f          	j	18022 <_vfiprintf_r+0x36a>
   1889a:	1b82                	slli	s7,s7,0x20
   1889c:	020bdb93          	srli	s7,s7,0x20
   188a0:	b55d                	j	18746 <_vfiprintf_r+0xa8e>
   188a2:	1090                	addi	a2,sp,96
   188a4:	85ce                	mv	a1,s3
   188a6:	8556                	mv	a0,s5
   188a8:	b5eff0ef          	jal	ra,17c06 <__sprint_r.part.0>
   188ac:	e7cff06f          	j	17f28 <_vfiprintf_r+0x270>
   188b0:	8a66                	mv	s4,s9
   188b2:	e436                	sd	a3,8(sp)
   188b4:	4c81                	li	s9,0
   188b6:	ee8ff06f          	j	17f9e <_vfiprintf_r+0x2e6>
   188ba:	0016069b          	addiw	a3,a2,1
   188be:	b9c5                	j	185ae <_vfiprintf_r+0x8f6>
   188c0:	86ea                	mv	a3,s10
   188c2:	b6ed                	j	184ac <_vfiprintf_r+0x7f4>
   188c4:	57fd                	li	a5,-1
   188c6:	e03e                	sd	a5,0(sp)
   188c8:	e6cff06f          	j	17f34 <_vfiprintf_r+0x27c>
   188cc:	8532                	mv	a0,a2
   188ce:	bc7d                	j	1838c <_vfiprintf_r+0x6d4>
   188d0:	c29c                	sw	a5,0(a3)
   188d2:	c86ff06f          	j	17d58 <_vfiprintf_r+0xa0>
   188d6:	e432                	sd	a2,8(sp)
   188d8:	bed1                	j	184ac <_vfiprintf_r+0x7f4>
   188da:	6622                	ld	a2,8(sp)
   188dc:	421c                	lw	a5,0(a2)
   188de:	00860c13          	addi	s8,a2,8
   188e2:	883e                	mv	a6,a5
   188e4:	0007d363          	bgez	a5,188ea <_vfiprintf_r+0xc32>
   188e8:	587d                	li	a6,-1
   188ea:	001dc783          	lbu	a5,1(s11)
   188ee:	00080c9b          	sext.w	s9,a6
   188f2:	e462                	sd	s8,8(sp)
   188f4:	8db6                	mv	s11,a3
   188f6:	cdeff06f          	j	17dd4 <_vfiprintf_r+0x11c>

00000000000188fa <vfiprintf>:
   188fa:	87aa                	mv	a5,a0
   188fc:	7581b503          	ld	a0,1880(gp) # 1f2d8 <_impure_ptr>
   18900:	86b2                	mv	a3,a2
   18902:	862e                	mv	a2,a1
   18904:	85be                	mv	a1,a5
   18906:	bb2ff06f          	j	17cb8 <_vfiprintf_r>

000000000001890a <__sbprintf>:
   1890a:	0105d783          	lhu	a5,16(a1)
   1890e:	0ac5ae03          	lw	t3,172(a1)
   18912:	0125d303          	lhu	t1,18(a1)
   18916:	0305b883          	ld	a7,48(a1)
   1891a:	0405b803          	ld	a6,64(a1)
   1891e:	b3010113          	addi	sp,sp,-1232
   18922:	9bf5                	andi	a5,a5,-3
   18924:	40000713          	li	a4,1024
   18928:	4c813023          	sd	s0,1216(sp)
   1892c:	00f11823          	sh	a5,16(sp)
   18930:	842e                	mv	s0,a1
   18932:	191c                	addi	a5,sp,176
   18934:	858a                	mv	a1,sp
   18936:	4a913c23          	sd	s1,1208(sp)
   1893a:	4b213823          	sd	s2,1200(sp)
   1893e:	4c113423          	sd	ra,1224(sp)
   18942:	892a                	mv	s2,a0
   18944:	d772                	sw	t3,172(sp)
   18946:	00611923          	sh	t1,18(sp)
   1894a:	f846                	sd	a7,48(sp)
   1894c:	e0c2                	sd	a6,64(sp)
   1894e:	e03e                	sd	a5,0(sp)
   18950:	ec3e                	sd	a5,24(sp)
   18952:	c63a                	sw	a4,12(sp)
   18954:	d03a                	sw	a4,32(sp)
   18956:	d402                	sw	zero,40(sp)
   18958:	b60ff0ef          	jal	ra,17cb8 <_vfiprintf_r>
   1895c:	84aa                	mv	s1,a0
   1895e:	02055963          	bgez	a0,18990 <__sbprintf+0x86>
   18962:	01015783          	lhu	a5,16(sp)
   18966:	0407f793          	andi	a5,a5,64
   1896a:	c799                	beqz	a5,18978 <__sbprintf+0x6e>
   1896c:	01045783          	lhu	a5,16(s0)
   18970:	0407e793          	ori	a5,a5,64
   18974:	00f41823          	sh	a5,16(s0)
   18978:	4c813083          	ld	ra,1224(sp)
   1897c:	4c013403          	ld	s0,1216(sp)
   18980:	4b013903          	ld	s2,1200(sp)
   18984:	8526                	mv	a0,s1
   18986:	4b813483          	ld	s1,1208(sp)
   1898a:	4d010113          	addi	sp,sp,1232
   1898e:	8082                	ret
   18990:	858a                	mv	a1,sp
   18992:	854a                	mv	a0,s2
   18994:	feaf90ef          	jal	ra,1217e <_fflush_r>
   18998:	d569                	beqz	a0,18962 <__sbprintf+0x58>
   1899a:	54fd                	li	s1,-1
   1899c:	b7d9                	j	18962 <__sbprintf+0x58>

000000000001899e <_write_r>:
   1899e:	1101                	addi	sp,sp,-32
   189a0:	872e                	mv	a4,a1
   189a2:	e822                	sd	s0,16(sp)
   189a4:	e426                	sd	s1,8(sp)
   189a6:	85b2                	mv	a1,a2
   189a8:	842a                	mv	s0,a0
   189aa:	8636                	mv	a2,a3
   189ac:	853a                	mv	a0,a4
   189ae:	ec06                	sd	ra,24(sp)
   189b0:	7801a823          	sw	zero,1936(gp) # 1f310 <errno>
   189b4:	374020ef          	jal	ra,1ad28 <_write>
   189b8:	57fd                	li	a5,-1
   189ba:	00f50763          	beq	a0,a5,189c8 <_write_r+0x2a>
   189be:	60e2                	ld	ra,24(sp)
   189c0:	6442                	ld	s0,16(sp)
   189c2:	64a2                	ld	s1,8(sp)
   189c4:	6105                	addi	sp,sp,32
   189c6:	8082                	ret
   189c8:	7901a783          	lw	a5,1936(gp) # 1f310 <errno>
   189cc:	dbed                	beqz	a5,189be <_write_r+0x20>
   189ce:	60e2                	ld	ra,24(sp)
   189d0:	c01c                	sw	a5,0(s0)
   189d2:	6442                	ld	s0,16(sp)
   189d4:	64a2                	ld	s1,8(sp)
   189d6:	6105                	addi	sp,sp,32
   189d8:	8082                	ret

00000000000189da <__register_exitproc>:
   189da:	7481b703          	ld	a4,1864(gp) # 1f2c8 <_global_impure_ptr>
   189de:	1f873783          	ld	a5,504(a4)
   189e2:	c3b1                	beqz	a5,18a26 <__register_exitproc+0x4c>
   189e4:	4798                	lw	a4,8(a5)
   189e6:	487d                	li	a6,31
   189e8:	06e84263          	blt	a6,a4,18a4c <__register_exitproc+0x72>
   189ec:	c505                	beqz	a0,18a14 <__register_exitproc+0x3a>
   189ee:	00371813          	slli	a6,a4,0x3
   189f2:	983e                	add	a6,a6,a5
   189f4:	10c83823          	sd	a2,272(a6)
   189f8:	3107a883          	lw	a7,784(a5)
   189fc:	4605                	li	a2,1
   189fe:	00e6163b          	sllw	a2,a2,a4
   18a02:	00c8e8b3          	or	a7,a7,a2
   18a06:	3117a823          	sw	a7,784(a5)
   18a0a:	20d83823          	sd	a3,528(a6)
   18a0e:	4689                	li	a3,2
   18a10:	02d50063          	beq	a0,a3,18a30 <__register_exitproc+0x56>
   18a14:	00270693          	addi	a3,a4,2
   18a18:	068e                	slli	a3,a3,0x3
   18a1a:	2705                	addiw	a4,a4,1
   18a1c:	c798                	sw	a4,8(a5)
   18a1e:	97b6                	add	a5,a5,a3
   18a20:	e38c                	sd	a1,0(a5)
   18a22:	4501                	li	a0,0
   18a24:	8082                	ret
   18a26:	20070793          	addi	a5,a4,512
   18a2a:	1ef73c23          	sd	a5,504(a4)
   18a2e:	bf5d                	j	189e4 <__register_exitproc+0xa>
   18a30:	3147a683          	lw	a3,788(a5)
   18a34:	4501                	li	a0,0
   18a36:	8ed1                	or	a3,a3,a2
   18a38:	30d7aa23          	sw	a3,788(a5)
   18a3c:	00270693          	addi	a3,a4,2
   18a40:	068e                	slli	a3,a3,0x3
   18a42:	2705                	addiw	a4,a4,1
   18a44:	c798                	sw	a4,8(a5)
   18a46:	97b6                	add	a5,a5,a3
   18a48:	e38c                	sd	a1,0(a5)
   18a4a:	8082                	ret
   18a4c:	557d                	li	a0,-1
   18a4e:	8082                	ret

0000000000018a50 <__assert_func>:
   18a50:	7581b703          	ld	a4,1880(gp) # 1f2d8 <_impure_ptr>
   18a54:	1141                	addi	sp,sp,-16
   18a56:	87b6                	mv	a5,a3
   18a58:	8832                	mv	a6,a2
   18a5a:	e406                	sd	ra,8(sp)
   18a5c:	01873883          	ld	a7,24(a4)
   18a60:	86aa                	mv	a3,a0
   18a62:	872e                	mv	a4,a1
   18a64:	863e                	mv	a2,a5
   18a66:	00080d63          	beqz	a6,18a80 <__assert_func+0x30>
   18a6a:	67f5                	lui	a5,0x1d
   18a6c:	d8878793          	addi	a5,a5,-632 # 1cd88 <zeroes.0+0x10>
   18a70:	65f5                	lui	a1,0x1d
   18a72:	d9858593          	addi	a1,a1,-616 # 1cd98 <zeroes.0+0x20>
   18a76:	8546                	mv	a0,a7
   18a78:	1de000ef          	jal	ra,18c56 <fiprintf>
   18a7c:	595010ef          	jal	ra,1a810 <abort>
   18a80:	6871                	lui	a6,0x1c
   18a82:	2a880793          	addi	a5,a6,680 # 1c2a8 <__clzdi2+0x90>
   18a86:	2a880813          	addi	a6,a6,680
   18a8a:	b7dd                	j	18a70 <__assert_func+0x20>

0000000000018a8c <__assert>:
   18a8c:	1141                	addi	sp,sp,-16
   18a8e:	86b2                	mv	a3,a2
   18a90:	4601                	li	a2,0
   18a92:	e406                	sd	ra,8(sp)
   18a94:	fbdff0ef          	jal	ra,18a50 <__assert_func>

0000000000018a98 <_calloc_r>:
   18a98:	02c5b7b3          	mulhu	a5,a1,a2
   18a9c:	1141                	addi	sp,sp,-16
   18a9e:	e406                	sd	ra,8(sp)
   18aa0:	e022                	sd	s0,0(sp)
   18aa2:	02c585b3          	mul	a1,a1,a2
   18aa6:	efb5                	bnez	a5,18b22 <_calloc_r+0x8a>
   18aa8:	810fc0ef          	jal	ra,14ab8 <_malloc_r>
   18aac:	842a                	mv	s0,a0
   18aae:	c521                	beqz	a0,18af6 <_calloc_r+0x5e>
   18ab0:	ff853603          	ld	a2,-8(a0)
   18ab4:	04800713          	li	a4,72
   18ab8:	9a71                	andi	a2,a2,-4
   18aba:	1661                	addi	a2,a2,-8
   18abc:	04c76263          	bltu	a4,a2,18b00 <_calloc_r+0x68>
   18ac0:	02700693          	li	a3,39
   18ac4:	87aa                	mv	a5,a0
   18ac6:	02c6f263          	bgeu	a3,a2,18aea <_calloc_r+0x52>
   18aca:	00053023          	sd	zero,0(a0)
   18ace:	00053423          	sd	zero,8(a0)
   18ad2:	03700793          	li	a5,55
   18ad6:	02c7fd63          	bgeu	a5,a2,18b10 <_calloc_r+0x78>
   18ada:	00053823          	sd	zero,16(a0)
   18ade:	00053c23          	sd	zero,24(a0)
   18ae2:	02050793          	addi	a5,a0,32
   18ae6:	04e60863          	beq	a2,a4,18b36 <_calloc_r+0x9e>
   18aea:	0007b023          	sd	zero,0(a5)
   18aee:	0007b423          	sd	zero,8(a5)
   18af2:	0007b823          	sd	zero,16(a5)
   18af6:	60a2                	ld	ra,8(sp)
   18af8:	8522                	mv	a0,s0
   18afa:	6402                	ld	s0,0(sp)
   18afc:	0141                	addi	sp,sp,16
   18afe:	8082                	ret
   18b00:	4581                	li	a1,0
   18b02:	ef0f70ef          	jal	ra,101f2 <memset>
   18b06:	60a2                	ld	ra,8(sp)
   18b08:	8522                	mv	a0,s0
   18b0a:	6402                	ld	s0,0(sp)
   18b0c:	0141                	addi	sp,sp,16
   18b0e:	8082                	ret
   18b10:	01050793          	addi	a5,a0,16
   18b14:	0007b023          	sd	zero,0(a5)
   18b18:	0007b423          	sd	zero,8(a5)
   18b1c:	0007b823          	sd	zero,16(a5)
   18b20:	bfd9                	j	18af6 <_calloc_r+0x5e>
   18b22:	058000ef          	jal	ra,18b7a <__errno>
   18b26:	4401                	li	s0,0
   18b28:	47b1                	li	a5,12
   18b2a:	60a2                	ld	ra,8(sp)
   18b2c:	c11c                	sw	a5,0(a0)
   18b2e:	8522                	mv	a0,s0
   18b30:	6402                	ld	s0,0(sp)
   18b32:	0141                	addi	sp,sp,16
   18b34:	8082                	ret
   18b36:	02053023          	sd	zero,32(a0)
   18b3a:	03050793          	addi	a5,a0,48
   18b3e:	02053423          	sd	zero,40(a0)
   18b42:	b765                	j	18aea <_calloc_r+0x52>

0000000000018b44 <_close_r>:
   18b44:	1101                	addi	sp,sp,-32
   18b46:	e822                	sd	s0,16(sp)
   18b48:	e426                	sd	s1,8(sp)
   18b4a:	842a                	mv	s0,a0
   18b4c:	852e                	mv	a0,a1
   18b4e:	ec06                	sd	ra,24(sp)
   18b50:	7801a823          	sw	zero,1936(gp) # 1f310 <errno>
   18b54:	05c020ef          	jal	ra,1abb0 <_close>
   18b58:	57fd                	li	a5,-1
   18b5a:	00f50763          	beq	a0,a5,18b68 <_close_r+0x24>
   18b5e:	60e2                	ld	ra,24(sp)
   18b60:	6442                	ld	s0,16(sp)
   18b62:	64a2                	ld	s1,8(sp)
   18b64:	6105                	addi	sp,sp,32
   18b66:	8082                	ret
   18b68:	7901a783          	lw	a5,1936(gp) # 1f310 <errno>
   18b6c:	dbed                	beqz	a5,18b5e <_close_r+0x1a>
   18b6e:	60e2                	ld	ra,24(sp)
   18b70:	c01c                	sw	a5,0(s0)
   18b72:	6442                	ld	s0,16(sp)
   18b74:	64a2                	ld	s1,8(sp)
   18b76:	6105                	addi	sp,sp,32
   18b78:	8082                	ret

0000000000018b7a <__errno>:
   18b7a:	7581b503          	ld	a0,1880(gp) # 1f2d8 <_impure_ptr>
   18b7e:	8082                	ret

0000000000018b80 <_fclose_r>:
   18b80:	1101                	addi	sp,sp,-32
   18b82:	ec06                	sd	ra,24(sp)
   18b84:	e822                	sd	s0,16(sp)
   18b86:	e426                	sd	s1,8(sp)
   18b88:	e04a                	sd	s2,0(sp)
   18b8a:	c989                	beqz	a1,18b9c <_fclose_r+0x1c>
   18b8c:	842e                	mv	s0,a1
   18b8e:	84aa                	mv	s1,a0
   18b90:	c119                	beqz	a0,18b96 <_fclose_r+0x16>
   18b92:	493c                	lw	a5,80(a0)
   18b94:	cfa5                	beqz	a5,18c0c <_fclose_r+0x8c>
   18b96:	01041783          	lh	a5,16(s0)
   18b9a:	eb89                	bnez	a5,18bac <_fclose_r+0x2c>
   18b9c:	60e2                	ld	ra,24(sp)
   18b9e:	6442                	ld	s0,16(sp)
   18ba0:	4901                	li	s2,0
   18ba2:	64a2                	ld	s1,8(sp)
   18ba4:	854a                	mv	a0,s2
   18ba6:	6902                	ld	s2,0(sp)
   18ba8:	6105                	addi	sp,sp,32
   18baa:	8082                	ret
   18bac:	85a2                	mv	a1,s0
   18bae:	8526                	mv	a0,s1
   18bb0:	c3cf90ef          	jal	ra,11fec <__sflush_r>
   18bb4:	683c                	ld	a5,80(s0)
   18bb6:	892a                	mv	s2,a0
   18bb8:	c791                	beqz	a5,18bc4 <_fclose_r+0x44>
   18bba:	780c                	ld	a1,48(s0)
   18bbc:	8526                	mv	a0,s1
   18bbe:	9782                	jalr	a5
   18bc0:	04054c63          	bltz	a0,18c18 <_fclose_r+0x98>
   18bc4:	01045783          	lhu	a5,16(s0)
   18bc8:	0807f793          	andi	a5,a5,128
   18bcc:	efa1                	bnez	a5,18c24 <_fclose_r+0xa4>
   18bce:	6c2c                	ld	a1,88(s0)
   18bd0:	c991                	beqz	a1,18be4 <_fclose_r+0x64>
   18bd2:	07440793          	addi	a5,s0,116
   18bd6:	00f58563          	beq	a1,a5,18be0 <_fclose_r+0x60>
   18bda:	8526                	mv	a0,s1
   18bdc:	9aff90ef          	jal	ra,1258a <_free_r>
   18be0:	04043c23          	sd	zero,88(s0)
   18be4:	7c2c                	ld	a1,120(s0)
   18be6:	c591                	beqz	a1,18bf2 <_fclose_r+0x72>
   18be8:	8526                	mv	a0,s1
   18bea:	9a1f90ef          	jal	ra,1258a <_free_r>
   18bee:	06043c23          	sd	zero,120(s0)
   18bf2:	871f90ef          	jal	ra,12462 <__sfp_lock_acquire>
   18bf6:	00041823          	sh	zero,16(s0)
   18bfa:	86bf90ef          	jal	ra,12464 <__sfp_lock_release>
   18bfe:	60e2                	ld	ra,24(sp)
   18c00:	6442                	ld	s0,16(sp)
   18c02:	64a2                	ld	s1,8(sp)
   18c04:	854a                	mv	a0,s2
   18c06:	6902                	ld	s2,0(sp)
   18c08:	6105                	addi	sp,sp,32
   18c0a:	8082                	ret
   18c0c:	84ff90ef          	jal	ra,1245a <__sinit>
   18c10:	01041783          	lh	a5,16(s0)
   18c14:	d7c1                	beqz	a5,18b9c <_fclose_r+0x1c>
   18c16:	bf59                	j	18bac <_fclose_r+0x2c>
   18c18:	01045783          	lhu	a5,16(s0)
   18c1c:	597d                	li	s2,-1
   18c1e:	0807f793          	andi	a5,a5,128
   18c22:	d7d5                	beqz	a5,18bce <_fclose_r+0x4e>
   18c24:	6c0c                	ld	a1,24(s0)
   18c26:	8526                	mv	a0,s1
   18c28:	963f90ef          	jal	ra,1258a <_free_r>
   18c2c:	b74d                	j	18bce <_fclose_r+0x4e>

0000000000018c2e <fclose>:
   18c2e:	85aa                	mv	a1,a0
   18c30:	7581b503          	ld	a0,1880(gp) # 1f2d8 <_impure_ptr>
   18c34:	b7b1                	j	18b80 <_fclose_r>

0000000000018c36 <_fiprintf_r>:
   18c36:	715d                	addi	sp,sp,-80
   18c38:	02810313          	addi	t1,sp,40
   18c3c:	f436                	sd	a3,40(sp)
   18c3e:	869a                	mv	a3,t1
   18c40:	ec06                	sd	ra,24(sp)
   18c42:	f83a                	sd	a4,48(sp)
   18c44:	fc3e                	sd	a5,56(sp)
   18c46:	e0c2                	sd	a6,64(sp)
   18c48:	e4c6                	sd	a7,72(sp)
   18c4a:	e41a                	sd	t1,8(sp)
   18c4c:	86cff0ef          	jal	ra,17cb8 <_vfiprintf_r>
   18c50:	60e2                	ld	ra,24(sp)
   18c52:	6161                	addi	sp,sp,80
   18c54:	8082                	ret

0000000000018c56 <fiprintf>:
   18c56:	8e2a                	mv	t3,a0
   18c58:	715d                	addi	sp,sp,-80
   18c5a:	7581b503          	ld	a0,1880(gp) # 1f2d8 <_impure_ptr>
   18c5e:	02010313          	addi	t1,sp,32
   18c62:	f032                	sd	a2,32(sp)
   18c64:	f436                	sd	a3,40(sp)
   18c66:	862e                	mv	a2,a1
   18c68:	869a                	mv	a3,t1
   18c6a:	85f2                	mv	a1,t3
   18c6c:	ec06                	sd	ra,24(sp)
   18c6e:	f83a                	sd	a4,48(sp)
   18c70:	fc3e                	sd	a5,56(sp)
   18c72:	e0c2                	sd	a6,64(sp)
   18c74:	e4c6                	sd	a7,72(sp)
   18c76:	e41a                	sd	t1,8(sp)
   18c78:	840ff0ef          	jal	ra,17cb8 <_vfiprintf_r>
   18c7c:	60e2                	ld	ra,24(sp)
   18c7e:	6161                	addi	sp,sp,80
   18c80:	8082                	ret

0000000000018c82 <__fputwc>:
   18c82:	715d                	addi	sp,sp,-80
   18c84:	e0a2                	sd	s0,64(sp)
   18c86:	f44e                	sd	s3,40(sp)
   18c88:	e85a                	sd	s6,16(sp)
   18c8a:	e486                	sd	ra,72(sp)
   18c8c:	fc26                	sd	s1,56(sp)
   18c8e:	f84a                	sd	s2,48(sp)
   18c90:	f052                	sd	s4,32(sp)
   18c92:	ec56                	sd	s5,24(sp)
   18c94:	8b2a                	mv	s6,a0
   18c96:	89ae                	mv	s3,a1
   18c98:	8432                	mv	s0,a2
   18c9a:	508000ef          	jal	ra,191a2 <__locale_mb_cur_max>
   18c9e:	4785                	li	a5,1
   18ca0:	00f51e63          	bne	a0,a5,18cbc <__fputwc+0x3a>
   18ca4:	fff9879b          	addiw	a5,s3,-1
   18ca8:	0fe00713          	li	a4,254
   18cac:	00f76863          	bltu	a4,a5,18cbc <__fputwc+0x3a>
   18cb0:	0ff9f713          	zext.b	a4,s3
   18cb4:	00e10423          	sb	a4,8(sp)
   18cb8:	4905                	li	s2,1
   18cba:	a839                	j	18cd8 <__fputwc+0x56>
   18cbc:	0a440693          	addi	a3,s0,164
   18cc0:	864e                	mv	a2,s3
   18cc2:	002c                	addi	a1,sp,8
   18cc4:	855a                	mv	a0,s6
   18cc6:	28b010ef          	jal	ra,1a750 <_wcrtomb_r>
   18cca:	57fd                	li	a5,-1
   18ccc:	892a                	mv	s2,a0
   18cce:	06f50563          	beq	a0,a5,18d38 <__fputwc+0xb6>
   18cd2:	c125                	beqz	a0,18d32 <__fputwc+0xb0>
   18cd4:	00814703          	lbu	a4,8(sp)
   18cd8:	4481                	li	s1,0
   18cda:	5a7d                	li	s4,-1
   18cdc:	4aa9                	li	s5,10
   18cde:	a831                	j	18cfa <__fputwc+0x78>
   18ce0:	601c                	ld	a5,0(s0)
   18ce2:	00178693          	addi	a3,a5,1
   18ce6:	e014                	sd	a3,0(s0)
   18ce8:	00e78023          	sb	a4,0(a5)
   18cec:	0485                	addi	s1,s1,1
   18cee:	003c                	addi	a5,sp,8
   18cf0:	97a6                	add	a5,a5,s1
   18cf2:	0524f063          	bgeu	s1,s2,18d32 <__fputwc+0xb0>
   18cf6:	0007c703          	lbu	a4,0(a5)
   18cfa:	445c                	lw	a5,12(s0)
   18cfc:	37fd                	addiw	a5,a5,-1
   18cfe:	c45c                	sw	a5,12(s0)
   18d00:	fe07d0e3          	bgez	a5,18ce0 <__fputwc+0x5e>
   18d04:	5414                	lw	a3,40(s0)
   18d06:	85ba                	mv	a1,a4
   18d08:	8622                	mv	a2,s0
   18d0a:	855a                	mv	a0,s6
   18d0c:	00d7c463          	blt	a5,a3,18d14 <__fputwc+0x92>
   18d10:	fd5718e3          	bne	a4,s5,18ce0 <__fputwc+0x5e>
   18d14:	139010ef          	jal	ra,1a64c <__swbuf_r>
   18d18:	fd451ae3          	bne	a0,s4,18cec <__fputwc+0x6a>
   18d1c:	557d                	li	a0,-1
   18d1e:	60a6                	ld	ra,72(sp)
   18d20:	6406                	ld	s0,64(sp)
   18d22:	74e2                	ld	s1,56(sp)
   18d24:	7942                	ld	s2,48(sp)
   18d26:	79a2                	ld	s3,40(sp)
   18d28:	7a02                	ld	s4,32(sp)
   18d2a:	6ae2                	ld	s5,24(sp)
   18d2c:	6b42                	ld	s6,16(sp)
   18d2e:	6161                	addi	sp,sp,80
   18d30:	8082                	ret
   18d32:	0009851b          	sext.w	a0,s3
   18d36:	b7e5                	j	18d1e <__fputwc+0x9c>
   18d38:	01045783          	lhu	a5,16(s0)
   18d3c:	557d                	li	a0,-1
   18d3e:	0407e793          	ori	a5,a5,64
   18d42:	00f41823          	sh	a5,16(s0)
   18d46:	bfe1                	j	18d1e <__fputwc+0x9c>

0000000000018d48 <_fputwc_r>:
   18d48:	01061783          	lh	a5,16(a2)
   18d4c:	03279713          	slli	a4,a5,0x32
   18d50:	00074c63          	bltz	a4,18d68 <_fputwc_r+0x20>
   18d54:	0ac62703          	lw	a4,172(a2)
   18d58:	6689                	lui	a3,0x2
   18d5a:	8fd5                	or	a5,a5,a3
   18d5c:	6689                	lui	a3,0x2
   18d5e:	8f55                	or	a4,a4,a3
   18d60:	00f61823          	sh	a5,16(a2)
   18d64:	0ae62623          	sw	a4,172(a2)
   18d68:	bf29                	j	18c82 <__fputwc>

0000000000018d6a <fputwc>:
   18d6a:	1101                	addi	sp,sp,-32
   18d6c:	e822                	sd	s0,16(sp)
   18d6e:	7581b403          	ld	s0,1880(gp) # 1f2d8 <_impure_ptr>
   18d72:	ec06                	sd	ra,24(sp)
   18d74:	862e                	mv	a2,a1
   18d76:	85aa                	mv	a1,a0
   18d78:	c019                	beqz	s0,18d7e <fputwc+0x14>
   18d7a:	483c                	lw	a5,80(s0)
   18d7c:	c795                	beqz	a5,18da8 <fputwc+0x3e>
   18d7e:	01061783          	lh	a5,16(a2)
   18d82:	03279713          	slli	a4,a5,0x32
   18d86:	00074c63          	bltz	a4,18d9e <fputwc+0x34>
   18d8a:	0ac62703          	lw	a4,172(a2)
   18d8e:	6689                	lui	a3,0x2
   18d90:	8fd5                	or	a5,a5,a3
   18d92:	6689                	lui	a3,0x2
   18d94:	8f55                	or	a4,a4,a3
   18d96:	00f61823          	sh	a5,16(a2)
   18d9a:	0ae62623          	sw	a4,172(a2)
   18d9e:	8522                	mv	a0,s0
   18da0:	6442                	ld	s0,16(sp)
   18da2:	60e2                	ld	ra,24(sp)
   18da4:	6105                	addi	sp,sp,32
   18da6:	bdf1                	j	18c82 <__fputwc>
   18da8:	e02a                	sd	a0,0(sp)
   18daa:	8522                	mv	a0,s0
   18dac:	e432                	sd	a2,8(sp)
   18dae:	eacf90ef          	jal	ra,1245a <__sinit>
   18db2:	6622                	ld	a2,8(sp)
   18db4:	6582                	ld	a1,0(sp)
   18db6:	b7e1                	j	18d7e <fputwc+0x14>

0000000000018db8 <_fstat_r>:
   18db8:	1101                	addi	sp,sp,-32
   18dba:	872e                	mv	a4,a1
   18dbc:	e822                	sd	s0,16(sp)
   18dbe:	e426                	sd	s1,8(sp)
   18dc0:	842a                	mv	s0,a0
   18dc2:	85b2                	mv	a1,a2
   18dc4:	853a                	mv	a0,a4
   18dc6:	ec06                	sd	ra,24(sp)
   18dc8:	7801a823          	sw	zero,1936(gp) # 1f310 <errno>
   18dcc:	633010ef          	jal	ra,1abfe <_fstat>
   18dd0:	57fd                	li	a5,-1
   18dd2:	00f50763          	beq	a0,a5,18de0 <_fstat_r+0x28>
   18dd6:	60e2                	ld	ra,24(sp)
   18dd8:	6442                	ld	s0,16(sp)
   18dda:	64a2                	ld	s1,8(sp)
   18ddc:	6105                	addi	sp,sp,32
   18dde:	8082                	ret
   18de0:	7901a783          	lw	a5,1936(gp) # 1f310 <errno>
   18de4:	dbed                	beqz	a5,18dd6 <_fstat_r+0x1e>
   18de6:	60e2                	ld	ra,24(sp)
   18de8:	c01c                	sw	a5,0(s0)
   18dea:	6442                	ld	s0,16(sp)
   18dec:	64a2                	ld	s1,8(sp)
   18dee:	6105                	addi	sp,sp,32
   18df0:	8082                	ret

0000000000018df2 <__sfvwrite_r>:
   18df2:	6a1c                	ld	a5,16(a2)
   18df4:	1a078b63          	beqz	a5,18faa <__sfvwrite_r+0x1b8>
   18df8:	0105d683          	lhu	a3,16(a1)
   18dfc:	711d                	addi	sp,sp,-96
   18dfe:	e8a2                	sd	s0,80(sp)
   18e00:	f852                	sd	s4,48(sp)
   18e02:	f456                	sd	s5,40(sp)
   18e04:	ec86                	sd	ra,88(sp)
   18e06:	e4a6                	sd	s1,72(sp)
   18e08:	e0ca                	sd	s2,64(sp)
   18e0a:	fc4e                	sd	s3,56(sp)
   18e0c:	f05a                	sd	s6,32(sp)
   18e0e:	ec5e                	sd	s7,24(sp)
   18e10:	e862                	sd	s8,16(sp)
   18e12:	e466                	sd	s9,8(sp)
   18e14:	e06a                	sd	s10,0(sp)
   18e16:	0086f793          	andi	a5,a3,8
   18e1a:	8a32                	mv	s4,a2
   18e1c:	8aaa                	mv	s5,a0
   18e1e:	842e                	mv	s0,a1
   18e20:	cfb9                	beqz	a5,18e7e <__sfvwrite_r+0x8c>
   18e22:	6d9c                	ld	a5,24(a1)
   18e24:	cfa9                	beqz	a5,18e7e <__sfvwrite_r+0x8c>
   18e26:	0026f793          	andi	a5,a3,2
   18e2a:	000a3903          	ld	s2,0(s4)
   18e2e:	c7ad                	beqz	a5,18e98 <__sfvwrite_r+0xa6>
   18e30:	603c                	ld	a5,64(s0)
   18e32:	780c                	ld	a1,48(s0)
   18e34:	80000b37          	lui	s6,0x80000
   18e38:	4981                	li	s3,0
   18e3a:	4481                	li	s1,0
   18e3c:	c00b4b13          	xori	s6,s6,-1024
   18e40:	864e                	mv	a2,s3
   18e42:	8556                	mv	a0,s5
   18e44:	c49d                	beqz	s1,18e72 <__sfvwrite_r+0x80>
   18e46:	86a6                	mv	a3,s1
   18e48:	009b7363          	bgeu	s6,s1,18e4e <__sfvwrite_r+0x5c>
   18e4c:	86da                	mv	a3,s6
   18e4e:	2681                	sext.w	a3,a3
   18e50:	9782                	jalr	a5
   18e52:	14a05463          	blez	a0,18f9a <__sfvwrite_r+0x1a8>
   18e56:	010a3783          	ld	a5,16(s4)
   18e5a:	99aa                	add	s3,s3,a0
   18e5c:	8c89                	sub	s1,s1,a0
   18e5e:	8f89                	sub	a5,a5,a0
   18e60:	00fa3823          	sd	a5,16(s4)
   18e64:	10078763          	beqz	a5,18f72 <__sfvwrite_r+0x180>
   18e68:	603c                	ld	a5,64(s0)
   18e6a:	780c                	ld	a1,48(s0)
   18e6c:	864e                	mv	a2,s3
   18e6e:	8556                	mv	a0,s5
   18e70:	f8f9                	bnez	s1,18e46 <__sfvwrite_r+0x54>
   18e72:	00093983          	ld	s3,0(s2)
   18e76:	00893483          	ld	s1,8(s2)
   18e7a:	0941                	addi	s2,s2,16
   18e7c:	b7d1                	j	18e40 <__sfvwrite_r+0x4e>
   18e7e:	85a2                	mv	a1,s0
   18e80:	8556                	mv	a0,s5
   18e82:	fa5f80ef          	jal	ra,11e26 <__swsetup_r>
   18e86:	28051b63          	bnez	a0,1911c <__sfvwrite_r+0x32a>
   18e8a:	01045683          	lhu	a3,16(s0)
   18e8e:	000a3903          	ld	s2,0(s4)
   18e92:	0026f793          	andi	a5,a3,2
   18e96:	ffc9                	bnez	a5,18e30 <__sfvwrite_r+0x3e>
   18e98:	0016f793          	andi	a5,a3,1
   18e9c:	ebbd                	bnez	a5,18f12 <__sfvwrite_r+0x120>
   18e9e:	4444                	lw	s1,12(s0)
   18ea0:	601c                	ld	a5,0(s0)
   18ea2:	80000b37          	lui	s6,0x80000
   18ea6:	ffeb4b93          	xori	s7,s6,-2
   18eaa:	4c01                	li	s8,0
   18eac:	4981                	li	s3,0
   18eae:	fffb4b13          	not	s6,s6
   18eb2:	853e                	mv	a0,a5
   18eb4:	8ca6                	mv	s9,s1
   18eb6:	04098863          	beqz	s3,18f06 <__sfvwrite_r+0x114>
   18eba:	2006f713          	andi	a4,a3,512
   18ebe:	12070a63          	beqz	a4,18ff2 <__sfvwrite_r+0x200>
   18ec2:	8d26                	mv	s10,s1
   18ec4:	1899f863          	bgeu	s3,s1,19054 <__sfvwrite_r+0x262>
   18ec8:	8cce                	mv	s9,s3
   18eca:	8d4e                	mv	s10,s3
   18ecc:	866a                	mv	a2,s10
   18ece:	85e2                	mv	a1,s8
   18ed0:	48e000ef          	jal	ra,1935e <memmove>
   18ed4:	4458                	lw	a4,12(s0)
   18ed6:	601c                	ld	a5,0(s0)
   18ed8:	84ce                	mv	s1,s3
   18eda:	4197073b          	subw	a4,a4,s9
   18ede:	9d3e                	add	s10,s10,a5
   18ee0:	c458                	sw	a4,12(s0)
   18ee2:	01a43023          	sd	s10,0(s0)
   18ee6:	4981                	li	s3,0
   18ee8:	010a3783          	ld	a5,16(s4)
   18eec:	9c26                	add	s8,s8,s1
   18eee:	8f85                	sub	a5,a5,s1
   18ef0:	00fa3823          	sd	a5,16(s4)
   18ef4:	cfbd                	beqz	a5,18f72 <__sfvwrite_r+0x180>
   18ef6:	4444                	lw	s1,12(s0)
   18ef8:	601c                	ld	a5,0(s0)
   18efa:	01045683          	lhu	a3,16(s0)
   18efe:	8ca6                	mv	s9,s1
   18f00:	853e                	mv	a0,a5
   18f02:	fa099ce3          	bnez	s3,18eba <__sfvwrite_r+0xc8>
   18f06:	00093c03          	ld	s8,0(s2)
   18f0a:	00893983          	ld	s3,8(s2)
   18f0e:	0941                	addi	s2,s2,16
   18f10:	b74d                	j	18eb2 <__sfvwrite_r+0xc0>
   18f12:	4b81                	li	s7,0
   18f14:	4501                	li	a0,0
   18f16:	4c81                	li	s9,0
   18f18:	4c01                	li	s8,0
   18f1a:	080c0a63          	beqz	s8,18fae <__sfvwrite_r+0x1bc>
   18f1e:	c145                	beqz	a0,18fbe <__sfvwrite_r+0x1cc>
   18f20:	8b5e                	mv	s6,s7
   18f22:	017c7363          	bgeu	s8,s7,18f28 <__sfvwrite_r+0x136>
   18f26:	8b62                	mv	s6,s8
   18f28:	6008                	ld	a0,0(s0)
   18f2a:	6c18                	ld	a4,24(s0)
   18f2c:	445c                	lw	a5,12(s0)
   18f2e:	5014                	lw	a3,32(s0)
   18f30:	84da                	mv	s1,s6
   18f32:	00a77663          	bgeu	a4,a0,18f3e <__sfvwrite_r+0x14c>
   18f36:	00d789bb          	addw	s3,a5,a3
   18f3a:	0969cd63          	blt	s3,s6,18fd4 <__sfvwrite_r+0x1e2>
   18f3e:	18db4663          	blt	s6,a3,190ca <__sfvwrite_r+0x2d8>
   18f42:	603c                	ld	a5,64(s0)
   18f44:	780c                	ld	a1,48(s0)
   18f46:	8666                	mv	a2,s9
   18f48:	8556                	mv	a0,s5
   18f4a:	9782                	jalr	a5
   18f4c:	84aa                	mv	s1,a0
   18f4e:	04a05663          	blez	a0,18f9a <__sfvwrite_r+0x1a8>
   18f52:	0005079b          	sext.w	a5,a0
   18f56:	40fb8bbb          	subw	s7,s7,a5
   18f5a:	4505                	li	a0,1
   18f5c:	020b8a63          	beqz	s7,18f90 <__sfvwrite_r+0x19e>
   18f60:	010a3783          	ld	a5,16(s4)
   18f64:	9ca6                	add	s9,s9,s1
   18f66:	409c0c33          	sub	s8,s8,s1
   18f6a:	8f85                	sub	a5,a5,s1
   18f6c:	00fa3823          	sd	a5,16(s4)
   18f70:	f7cd                	bnez	a5,18f1a <__sfvwrite_r+0x128>
   18f72:	4501                	li	a0,0
   18f74:	60e6                	ld	ra,88(sp)
   18f76:	6446                	ld	s0,80(sp)
   18f78:	64a6                	ld	s1,72(sp)
   18f7a:	6906                	ld	s2,64(sp)
   18f7c:	79e2                	ld	s3,56(sp)
   18f7e:	7a42                	ld	s4,48(sp)
   18f80:	7aa2                	ld	s5,40(sp)
   18f82:	7b02                	ld	s6,32(sp)
   18f84:	6be2                	ld	s7,24(sp)
   18f86:	6c42                	ld	s8,16(sp)
   18f88:	6ca2                	ld	s9,8(sp)
   18f8a:	6d02                	ld	s10,0(sp)
   18f8c:	6125                	addi	sp,sp,96
   18f8e:	8082                	ret
   18f90:	85a2                	mv	a1,s0
   18f92:	8556                	mv	a0,s5
   18f94:	9eaf90ef          	jal	ra,1217e <_fflush_r>
   18f98:	d561                	beqz	a0,18f60 <__sfvwrite_r+0x16e>
   18f9a:	01041783          	lh	a5,16(s0)
   18f9e:	0407e793          	ori	a5,a5,64
   18fa2:	00f41823          	sh	a5,16(s0)
   18fa6:	557d                	li	a0,-1
   18fa8:	b7f1                	j	18f74 <__sfvwrite_r+0x182>
   18faa:	4501                	li	a0,0
   18fac:	8082                	ret
   18fae:	00893c03          	ld	s8,8(s2)
   18fb2:	87ca                	mv	a5,s2
   18fb4:	0941                	addi	s2,s2,16
   18fb6:	fe0c0ce3          	beqz	s8,18fae <__sfvwrite_r+0x1bc>
   18fba:	0007bc83          	ld	s9,0(a5)
   18fbe:	8662                	mv	a2,s8
   18fc0:	45a9                	li	a1,10
   18fc2:	8566                	mv	a0,s9
   18fc4:	908fc0ef          	jal	ra,150cc <memchr>
   18fc8:	14050163          	beqz	a0,1910a <__sfvwrite_r+0x318>
   18fcc:	0505                	addi	a0,a0,1
   18fce:	41950bbb          	subw	s7,a0,s9
   18fd2:	b7b9                	j	18f20 <__sfvwrite_r+0x12e>
   18fd4:	85e6                	mv	a1,s9
   18fd6:	864e                	mv	a2,s3
   18fd8:	386000ef          	jal	ra,1935e <memmove>
   18fdc:	601c                	ld	a5,0(s0)
   18fde:	85a2                	mv	a1,s0
   18fe0:	8556                	mv	a0,s5
   18fe2:	97ce                	add	a5,a5,s3
   18fe4:	e01c                	sd	a5,0(s0)
   18fe6:	998f90ef          	jal	ra,1217e <_fflush_r>
   18fea:	f945                	bnez	a0,18f9a <__sfvwrite_r+0x1a8>
   18fec:	87ce                	mv	a5,s3
   18fee:	84ce                	mv	s1,s3
   18ff0:	b79d                	j	18f56 <__sfvwrite_r+0x164>
   18ff2:	6c18                	ld	a4,24(s0)
   18ff4:	02f76863          	bltu	a4,a5,19024 <__sfvwrite_r+0x232>
   18ff8:	5018                	lw	a4,32(s0)
   18ffa:	02e9e563          	bltu	s3,a4,19024 <__sfvwrite_r+0x232>
   18ffe:	86ce                	mv	a3,s3
   19000:	013bf363          	bgeu	s7,s3,19006 <__sfvwrite_r+0x214>
   19004:	86da                	mv	a3,s6
   19006:	02e6c6bb          	divw	a3,a3,a4
   1900a:	603c                	ld	a5,64(s0)
   1900c:	780c                	ld	a1,48(s0)
   1900e:	8662                	mv	a2,s8
   19010:	8556                	mv	a0,s5
   19012:	02e686bb          	mulw	a3,a3,a4
   19016:	9782                	jalr	a5
   19018:	84aa                	mv	s1,a0
   1901a:	f8a050e3          	blez	a0,18f9a <__sfvwrite_r+0x1a8>
   1901e:	409989b3          	sub	s3,s3,s1
   19022:	b5d9                	j	18ee8 <__sfvwrite_r+0xf6>
   19024:	0099f363          	bgeu	s3,s1,1902a <__sfvwrite_r+0x238>
   19028:	84ce                	mv	s1,s3
   1902a:	853e                	mv	a0,a5
   1902c:	8626                	mv	a2,s1
   1902e:	85e2                	mv	a1,s8
   19030:	32e000ef          	jal	ra,1935e <memmove>
   19034:	4458                	lw	a4,12(s0)
   19036:	601c                	ld	a5,0(s0)
   19038:	409706bb          	subw	a3,a4,s1
   1903c:	97a6                	add	a5,a5,s1
   1903e:	c454                	sw	a3,12(s0)
   19040:	e01c                	sd	a5,0(s0)
   19042:	fef1                	bnez	a3,1901e <__sfvwrite_r+0x22c>
   19044:	85a2                	mv	a1,s0
   19046:	8556                	mv	a0,s5
   19048:	936f90ef          	jal	ra,1217e <_fflush_r>
   1904c:	f539                	bnez	a0,18f9a <__sfvwrite_r+0x1a8>
   1904e:	409989b3          	sub	s3,s3,s1
   19052:	bd59                	j	18ee8 <__sfvwrite_r+0xf6>
   19054:	4806f713          	andi	a4,a3,1152
   19058:	e6070ae3          	beqz	a4,18ecc <__sfvwrite_r+0xda>
   1905c:	5010                	lw	a2,32(s0)
   1905e:	6c0c                	ld	a1,24(s0)
   19060:	0016171b          	slliw	a4,a2,0x1
   19064:	9f31                	addw	a4,a4,a2
   19066:	8f8d                	sub	a5,a5,a1
   19068:	01f7549b          	srliw	s1,a4,0x1f
   1906c:	00078d1b          	sext.w	s10,a5
   19070:	9cb9                	addw	s1,s1,a4
   19072:	001d0713          	addi	a4,s10,1
   19076:	4014d49b          	sraiw	s1,s1,0x1
   1907a:	974e                	add	a4,a4,s3
   1907c:	00e4f663          	bgeu	s1,a4,19088 <__sfvwrite_r+0x296>
   19080:	0017871b          	addiw	a4,a5,1
   19084:	013704bb          	addw	s1,a4,s3
   19088:	4006f693          	andi	a3,a3,1024
   1908c:	cea9                	beqz	a3,190e6 <__sfvwrite_r+0x2f4>
   1908e:	85a6                	mv	a1,s1
   19090:	8556                	mv	a0,s5
   19092:	a27fb0ef          	jal	ra,14ab8 <_malloc_r>
   19096:	8caa                	mv	s9,a0
   19098:	cd25                	beqz	a0,19110 <__sfvwrite_r+0x31e>
   1909a:	6c0c                	ld	a1,24(s0)
   1909c:	866a                	mv	a2,s10
   1909e:	1d8000ef          	jal	ra,19276 <memcpy>
   190a2:	01045783          	lhu	a5,16(s0)
   190a6:	b7f7f793          	andi	a5,a5,-1153
   190aa:	0807e793          	ori	a5,a5,128
   190ae:	00f41823          	sh	a5,16(s0)
   190b2:	01ac8533          	add	a0,s9,s10
   190b6:	41a487bb          	subw	a5,s1,s10
   190ba:	01943c23          	sd	s9,24(s0)
   190be:	e008                	sd	a0,0(s0)
   190c0:	d004                	sw	s1,32(s0)
   190c2:	8cce                	mv	s9,s3
   190c4:	c45c                	sw	a5,12(s0)
   190c6:	8d4e                	mv	s10,s3
   190c8:	b511                	j	18ecc <__sfvwrite_r+0xda>
   190ca:	865a                	mv	a2,s6
   190cc:	85e6                	mv	a1,s9
   190ce:	290000ef          	jal	ra,1935e <memmove>
   190d2:	4454                	lw	a3,12(s0)
   190d4:	6018                	ld	a4,0(s0)
   190d6:	000b079b          	sext.w	a5,s6
   190da:	416686bb          	subw	a3,a3,s6
   190de:	975a                	add	a4,a4,s6
   190e0:	c454                	sw	a3,12(s0)
   190e2:	e018                	sd	a4,0(s0)
   190e4:	bd8d                	j	18f56 <__sfvwrite_r+0x164>
   190e6:	8626                	mv	a2,s1
   190e8:	8556                	mv	a0,s5
   190ea:	386000ef          	jal	ra,19470 <_realloc_r>
   190ee:	8caa                	mv	s9,a0
   190f0:	f169                	bnez	a0,190b2 <__sfvwrite_r+0x2c0>
   190f2:	6c0c                	ld	a1,24(s0)
   190f4:	8556                	mv	a0,s5
   190f6:	c94f90ef          	jal	ra,1258a <_free_r>
   190fa:	01041783          	lh	a5,16(s0)
   190fe:	4731                	li	a4,12
   19100:	00eaa023          	sw	a4,0(s5)
   19104:	f7f7f793          	andi	a5,a5,-129
   19108:	bd59                	j	18f9e <__sfvwrite_r+0x1ac>
   1910a:	001c0b9b          	addiw	s7,s8,1
   1910e:	bd09                	j	18f20 <__sfvwrite_r+0x12e>
   19110:	4731                	li	a4,12
   19112:	01041783          	lh	a5,16(s0)
   19116:	00eaa023          	sw	a4,0(s5)
   1911a:	b551                	j	18f9e <__sfvwrite_r+0x1ac>
   1911c:	557d                	li	a0,-1
   1911e:	bd99                	j	18f74 <__sfvwrite_r+0x182>

0000000000019120 <_isatty_r>:
   19120:	1101                	addi	sp,sp,-32
   19122:	e822                	sd	s0,16(sp)
   19124:	e426                	sd	s1,8(sp)
   19126:	842a                	mv	s0,a0
   19128:	852e                	mv	a0,a1
   1912a:	ec06                	sd	ra,24(sp)
   1912c:	7801a823          	sw	zero,1936(gp) # 1f310 <errno>
   19130:	313010ef          	jal	ra,1ac42 <_isatty>
   19134:	57fd                	li	a5,-1
   19136:	00f50763          	beq	a0,a5,19144 <_isatty_r+0x24>
   1913a:	60e2                	ld	ra,24(sp)
   1913c:	6442                	ld	s0,16(sp)
   1913e:	64a2                	ld	s1,8(sp)
   19140:	6105                	addi	sp,sp,32
   19142:	8082                	ret
   19144:	7901a783          	lw	a5,1936(gp) # 1f310 <errno>
   19148:	dbed                	beqz	a5,1913a <_isatty_r+0x1a>
   1914a:	60e2                	ld	ra,24(sp)
   1914c:	c01c                	sw	a5,0(s0)
   1914e:	6442                	ld	s0,16(sp)
   19150:	64a2                	ld	s1,8(sp)
   19152:	6105                	addi	sp,sp,32
   19154:	8082                	ret

0000000000019156 <_setlocale_r>:
   19156:	1101                	addi	sp,sp,-32
   19158:	ec06                	sd	ra,24(sp)
   1915a:	e822                	sd	s0,16(sp)
   1915c:	e426                	sd	s1,8(sp)
   1915e:	c20d                	beqz	a2,19180 <_setlocale_r+0x2a>
   19160:	65f5                	lui	a1,0x1d
   19162:	dd058593          	addi	a1,a1,-560 # 1cdd0 <zeroes.0+0x58>
   19166:	8532                	mv	a0,a2
   19168:	8432                	mv	s0,a2
   1916a:	001000ef          	jal	ra,1996a <strcmp>
   1916e:	64f5                	lui	s1,0x1d
   19170:	e911                	bnez	a0,19184 <_setlocale_r+0x2e>
   19172:	dc848513          	addi	a0,s1,-568 # 1cdc8 <zeroes.0+0x50>
   19176:	60e2                	ld	ra,24(sp)
   19178:	6442                	ld	s0,16(sp)
   1917a:	64a2                	ld	s1,8(sp)
   1917c:	6105                	addi	sp,sp,32
   1917e:	8082                	ret
   19180:	64f5                	lui	s1,0x1d
   19182:	bfc5                	j	19172 <_setlocale_r+0x1c>
   19184:	dc848593          	addi	a1,s1,-568 # 1cdc8 <zeroes.0+0x50>
   19188:	8522                	mv	a0,s0
   1918a:	7e0000ef          	jal	ra,1996a <strcmp>
   1918e:	d175                	beqz	a0,19172 <_setlocale_r+0x1c>
   19190:	65f1                	lui	a1,0x1c
   19192:	2a858593          	addi	a1,a1,680 # 1c2a8 <__clzdi2+0x90>
   19196:	8522                	mv	a0,s0
   19198:	7d2000ef          	jal	ra,1996a <strcmp>
   1919c:	d979                	beqz	a0,19172 <_setlocale_r+0x1c>
   1919e:	4501                	li	a0,0
   191a0:	bfd9                	j	19176 <_setlocale_r+0x20>

00000000000191a2 <__locale_mb_cur_max>:
   191a2:	6d01c503          	lbu	a0,1744(gp) # 1f250 <__global_locale+0x160>
   191a6:	8082                	ret

00000000000191a8 <setlocale>:
   191a8:	1101                	addi	sp,sp,-32
   191aa:	ec06                	sd	ra,24(sp)
   191ac:	e822                	sd	s0,16(sp)
   191ae:	e426                	sd	s1,8(sp)
   191b0:	c18d                	beqz	a1,191d2 <setlocale+0x2a>
   191b2:	842e                	mv	s0,a1
   191b4:	65f5                	lui	a1,0x1d
   191b6:	dd058593          	addi	a1,a1,-560 # 1cdd0 <zeroes.0+0x58>
   191ba:	8522                	mv	a0,s0
   191bc:	7ae000ef          	jal	ra,1996a <strcmp>
   191c0:	64f5                	lui	s1,0x1d
   191c2:	e911                	bnez	a0,191d6 <setlocale+0x2e>
   191c4:	dc848513          	addi	a0,s1,-568 # 1cdc8 <zeroes.0+0x50>
   191c8:	60e2                	ld	ra,24(sp)
   191ca:	6442                	ld	s0,16(sp)
   191cc:	64a2                	ld	s1,8(sp)
   191ce:	6105                	addi	sp,sp,32
   191d0:	8082                	ret
   191d2:	64f5                	lui	s1,0x1d
   191d4:	bfc5                	j	191c4 <setlocale+0x1c>
   191d6:	dc848593          	addi	a1,s1,-568 # 1cdc8 <zeroes.0+0x50>
   191da:	8522                	mv	a0,s0
   191dc:	78e000ef          	jal	ra,1996a <strcmp>
   191e0:	d175                	beqz	a0,191c4 <setlocale+0x1c>
   191e2:	65f1                	lui	a1,0x1c
   191e4:	2a858593          	addi	a1,a1,680 # 1c2a8 <__clzdi2+0x90>
   191e8:	8522                	mv	a0,s0
   191ea:	780000ef          	jal	ra,1996a <strcmp>
   191ee:	d979                	beqz	a0,191c4 <setlocale+0x1c>
   191f0:	4501                	li	a0,0
   191f2:	bfd9                	j	191c8 <setlocale+0x20>

00000000000191f4 <_lseek_r>:
   191f4:	1101                	addi	sp,sp,-32
   191f6:	872e                	mv	a4,a1
   191f8:	e822                	sd	s0,16(sp)
   191fa:	e426                	sd	s1,8(sp)
   191fc:	85b2                	mv	a1,a2
   191fe:	842a                	mv	s0,a0
   19200:	8636                	mv	a2,a3
   19202:	853a                	mv	a0,a4
   19204:	ec06                	sd	ra,24(sp)
   19206:	7801a823          	sw	zero,1936(gp) # 1f310 <errno>
   1920a:	273010ef          	jal	ra,1ac7c <_lseek>
   1920e:	57fd                	li	a5,-1
   19210:	00f50763          	beq	a0,a5,1921e <_lseek_r+0x2a>
   19214:	60e2                	ld	ra,24(sp)
   19216:	6442                	ld	s0,16(sp)
   19218:	64a2                	ld	s1,8(sp)
   1921a:	6105                	addi	sp,sp,32
   1921c:	8082                	ret
   1921e:	7901a783          	lw	a5,1936(gp) # 1f310 <errno>
   19222:	dbed                	beqz	a5,19214 <_lseek_r+0x20>
   19224:	60e2                	ld	ra,24(sp)
   19226:	c01c                	sw	a5,0(s0)
   19228:	6442                	ld	s0,16(sp)
   1922a:	64a2                	ld	s1,8(sp)
   1922c:	6105                	addi	sp,sp,32
   1922e:	8082                	ret

0000000000019230 <_mbtowc_r>:
   19230:	6581b783          	ld	a5,1624(gp) # 1f1d8 <__global_locale+0xe8>
   19234:	8782                	jr	a5

0000000000019236 <__ascii_mbtowc>:
   19236:	c999                	beqz	a1,1924c <__ascii_mbtowc+0x16>
   19238:	c61d                	beqz	a2,19266 <__ascii_mbtowc+0x30>
   1923a:	ca95                	beqz	a3,1926e <__ascii_mbtowc+0x38>
   1923c:	00064783          	lbu	a5,0(a2)
   19240:	c19c                	sw	a5,0(a1)
   19242:	00064503          	lbu	a0,0(a2)
   19246:	00a03533          	snez	a0,a0
   1924a:	8082                	ret
   1924c:	1141                	addi	sp,sp,-16
   1924e:	006c                	addi	a1,sp,12
   19250:	ce09                	beqz	a2,1926a <__ascii_mbtowc+0x34>
   19252:	c285                	beqz	a3,19272 <__ascii_mbtowc+0x3c>
   19254:	00064783          	lbu	a5,0(a2)
   19258:	c19c                	sw	a5,0(a1)
   1925a:	00064503          	lbu	a0,0(a2)
   1925e:	00a03533          	snez	a0,a0
   19262:	0141                	addi	sp,sp,16
   19264:	8082                	ret
   19266:	4501                	li	a0,0
   19268:	8082                	ret
   1926a:	4501                	li	a0,0
   1926c:	bfdd                	j	19262 <__ascii_mbtowc+0x2c>
   1926e:	5579                	li	a0,-2
   19270:	8082                	ret
   19272:	5579                	li	a0,-2
   19274:	b7fd                	j	19262 <__ascii_mbtowc+0x2c>

0000000000019276 <memcpy>:
   19276:	00b547b3          	xor	a5,a0,a1
   1927a:	8b9d                	andi	a5,a5,7
   1927c:	00c508b3          	add	a7,a0,a2
   19280:	eba1                	bnez	a5,192d0 <memcpy+0x5a>
   19282:	479d                	li	a5,7
   19284:	04c7f663          	bgeu	a5,a2,192d0 <memcpy+0x5a>
   19288:	00757793          	andi	a5,a0,7
   1928c:	872a                	mv	a4,a0
   1928e:	e7cd                	bnez	a5,19338 <memcpy+0xc2>
   19290:	ff88f613          	andi	a2,a7,-8
   19294:	40e606b3          	sub	a3,a2,a4
   19298:	04000793          	li	a5,64
   1929c:	04000293          	li	t0,64
   192a0:	04d7c463          	blt	a5,a3,192e8 <memcpy+0x72>
   192a4:	86ae                	mv	a3,a1
   192a6:	87ba                	mv	a5,a4
   192a8:	02c77163          	bgeu	a4,a2,192ca <memcpy+0x54>
   192ac:	0006b803          	ld	a6,0(a3) # 2000 <register_fini-0xe0b0>
   192b0:	07a1                	addi	a5,a5,8
   192b2:	06a1                	addi	a3,a3,8
   192b4:	ff07bc23          	sd	a6,-8(a5)
   192b8:	fec7eae3          	bltu	a5,a2,192ac <memcpy+0x36>
   192bc:	fff60793          	addi	a5,a2,-1
   192c0:	8f99                	sub	a5,a5,a4
   192c2:	9be1                	andi	a5,a5,-8
   192c4:	07a1                	addi	a5,a5,8
   192c6:	973e                	add	a4,a4,a5
   192c8:	95be                	add	a1,a1,a5
   192ca:	01176663          	bltu	a4,a7,192d6 <memcpy+0x60>
   192ce:	8082                	ret
   192d0:	872a                	mv	a4,a0
   192d2:	ff157ee3          	bgeu	a0,a7,192ce <memcpy+0x58>
   192d6:	0005c783          	lbu	a5,0(a1)
   192da:	0705                	addi	a4,a4,1
   192dc:	0585                	addi	a1,a1,1
   192de:	fef70fa3          	sb	a5,-1(a4)
   192e2:	ff176ae3          	bltu	a4,a7,192d6 <memcpy+0x60>
   192e6:	8082                	ret
   192e8:	6594                	ld	a3,8(a1)
   192ea:	7d9c                	ld	a5,56(a1)
   192ec:	0005bf83          	ld	t6,0(a1)
   192f0:	0105bf03          	ld	t5,16(a1)
   192f4:	0185be83          	ld	t4,24(a1)
   192f8:	0205be03          	ld	t3,32(a1)
   192fc:	0285b303          	ld	t1,40(a1)
   19300:	0305b803          	ld	a6,48(a1)
   19304:	e714                	sd	a3,8(a4)
   19306:	61b4                	ld	a3,64(a1)
   19308:	01f73023          	sd	t6,0(a4)
   1930c:	01e73823          	sd	t5,16(a4)
   19310:	01d73c23          	sd	t4,24(a4)
   19314:	03c73023          	sd	t3,32(a4)
   19318:	02673423          	sd	t1,40(a4)
   1931c:	03073823          	sd	a6,48(a4)
   19320:	ff1c                	sd	a5,56(a4)
   19322:	04870713          	addi	a4,a4,72
   19326:	40e607b3          	sub	a5,a2,a4
   1932a:	fed73c23          	sd	a3,-8(a4)
   1932e:	04858593          	addi	a1,a1,72
   19332:	faf2cbe3          	blt	t0,a5,192e8 <memcpy+0x72>
   19336:	b7bd                	j	192a4 <memcpy+0x2e>
   19338:	0005c683          	lbu	a3,0(a1)
   1933c:	0705                	addi	a4,a4,1
   1933e:	00777793          	andi	a5,a4,7
   19342:	fed70fa3          	sb	a3,-1(a4)
   19346:	0585                	addi	a1,a1,1
   19348:	d7a1                	beqz	a5,19290 <memcpy+0x1a>
   1934a:	0005c683          	lbu	a3,0(a1)
   1934e:	0705                	addi	a4,a4,1
   19350:	00777793          	andi	a5,a4,7
   19354:	fed70fa3          	sb	a3,-1(a4)
   19358:	0585                	addi	a1,a1,1
   1935a:	fff9                	bnez	a5,19338 <memcpy+0xc2>
   1935c:	bf15                	j	19290 <memcpy+0x1a>

000000000001935e <memmove>:
   1935e:	02a5f263          	bgeu	a1,a0,19382 <memmove+0x24>
   19362:	00c587b3          	add	a5,a1,a2
   19366:	00f57e63          	bgeu	a0,a5,19382 <memmove+0x24>
   1936a:	00c50733          	add	a4,a0,a2
   1936e:	ca5d                	beqz	a2,19424 <memmove+0xc6>
   19370:	fff7c683          	lbu	a3,-1(a5)
   19374:	17fd                	addi	a5,a5,-1
   19376:	177d                	addi	a4,a4,-1
   19378:	00d70023          	sb	a3,0(a4)
   1937c:	fef59ae3          	bne	a1,a5,19370 <memmove+0x12>
   19380:	8082                	ret
   19382:	47fd                	li	a5,31
   19384:	02c7e163          	bltu	a5,a2,193a6 <memmove+0x48>
   19388:	87aa                	mv	a5,a0
   1938a:	fff60693          	addi	a3,a2,-1
   1938e:	c245                	beqz	a2,1942e <memmove+0xd0>
   19390:	0685                	addi	a3,a3,1
   19392:	96be                	add	a3,a3,a5
   19394:	0005c703          	lbu	a4,0(a1)
   19398:	0785                	addi	a5,a5,1
   1939a:	0585                	addi	a1,a1,1
   1939c:	fee78fa3          	sb	a4,-1(a5)
   193a0:	fed79ae3          	bne	a5,a3,19394 <memmove+0x36>
   193a4:	8082                	ret
   193a6:	00b567b3          	or	a5,a0,a1
   193aa:	8b9d                	andi	a5,a5,7
   193ac:	efad                	bnez	a5,19426 <memmove+0xc8>
   193ae:	fe060893          	addi	a7,a2,-32
   193b2:	fe08f893          	andi	a7,a7,-32
   193b6:	02088893          	addi	a7,a7,32
   193ba:	01150833          	add	a6,a0,a7
   193be:	872e                	mv	a4,a1
   193c0:	87aa                	mv	a5,a0
   193c2:	6314                	ld	a3,0(a4)
   193c4:	02070713          	addi	a4,a4,32
   193c8:	02078793          	addi	a5,a5,32
   193cc:	fed7b023          	sd	a3,-32(a5)
   193d0:	fe873683          	ld	a3,-24(a4)
   193d4:	fed7b423          	sd	a3,-24(a5)
   193d8:	ff073683          	ld	a3,-16(a4)
   193dc:	fed7b823          	sd	a3,-16(a5)
   193e0:	ff873683          	ld	a3,-8(a4)
   193e4:	fed7bc23          	sd	a3,-8(a5)
   193e8:	fcf81de3          	bne	a6,a5,193c2 <memmove+0x64>
   193ec:	01867713          	andi	a4,a2,24
   193f0:	95c6                	add	a1,a1,a7
   193f2:	01f67813          	andi	a6,a2,31
   193f6:	cf0d                	beqz	a4,19430 <memmove+0xd2>
   193f8:	872e                	mv	a4,a1
   193fa:	88be                	mv	a7,a5
   193fc:	4e1d                	li	t3,7
   193fe:	00073303          	ld	t1,0(a4)
   19402:	0721                	addi	a4,a4,8
   19404:	40e806b3          	sub	a3,a6,a4
   19408:	0068b023          	sd	t1,0(a7)
   1940c:	96ae                	add	a3,a3,a1
   1940e:	08a1                	addi	a7,a7,8
   19410:	fede67e3          	bltu	t3,a3,193fe <memmove+0xa0>
   19414:	ff880713          	addi	a4,a6,-8
   19418:	9b61                	andi	a4,a4,-8
   1941a:	0721                	addi	a4,a4,8
   1941c:	8a1d                	andi	a2,a2,7
   1941e:	97ba                	add	a5,a5,a4
   19420:	95ba                	add	a1,a1,a4
   19422:	b7a5                	j	1938a <memmove+0x2c>
   19424:	8082                	ret
   19426:	fff60693          	addi	a3,a2,-1
   1942a:	87aa                	mv	a5,a0
   1942c:	b795                	j	19390 <memmove+0x32>
   1942e:	8082                	ret
   19430:	8642                	mv	a2,a6
   19432:	bfa1                	j	1938a <memmove+0x2c>

0000000000019434 <_read_r>:
   19434:	1101                	addi	sp,sp,-32
   19436:	872e                	mv	a4,a1
   19438:	e822                	sd	s0,16(sp)
   1943a:	e426                	sd	s1,8(sp)
   1943c:	85b2                	mv	a1,a2
   1943e:	842a                	mv	s0,a0
   19440:	8636                	mv	a2,a3
   19442:	853a                	mv	a0,a4
   19444:	ec06                	sd	ra,24(sp)
   19446:	7801a823          	sw	zero,1936(gp) # 1f310 <errno>
   1944a:	05f010ef          	jal	ra,1aca8 <_read>
   1944e:	57fd                	li	a5,-1
   19450:	00f50763          	beq	a0,a5,1945e <_read_r+0x2a>
   19454:	60e2                	ld	ra,24(sp)
   19456:	6442                	ld	s0,16(sp)
   19458:	64a2                	ld	s1,8(sp)
   1945a:	6105                	addi	sp,sp,32
   1945c:	8082                	ret
   1945e:	7901a783          	lw	a5,1936(gp) # 1f310 <errno>
   19462:	dbed                	beqz	a5,19454 <_read_r+0x20>
   19464:	60e2                	ld	ra,24(sp)
   19466:	c01c                	sw	a5,0(s0)
   19468:	6442                	ld	s0,16(sp)
   1946a:	64a2                	ld	s1,8(sp)
   1946c:	6105                	addi	sp,sp,32
   1946e:	8082                	ret

0000000000019470 <_realloc_r>:
   19470:	715d                	addi	sp,sp,-80
   19472:	f84a                	sd	s2,48(sp)
   19474:	e486                	sd	ra,72(sp)
   19476:	e0a2                	sd	s0,64(sp)
   19478:	fc26                	sd	s1,56(sp)
   1947a:	f44e                	sd	s3,40(sp)
   1947c:	f052                	sd	s4,32(sp)
   1947e:	ec56                	sd	s5,24(sp)
   19480:	e85a                	sd	s6,16(sp)
   19482:	e45e                	sd	s7,8(sp)
   19484:	e062                	sd	s8,0(sp)
   19486:	8932                	mv	s2,a2
   19488:	14058863          	beqz	a1,195d8 <_realloc_r+0x168>
   1948c:	842e                	mv	s0,a1
   1948e:	8a2a                	mv	s4,a0
   19490:	ccbfb0ef          	jal	ra,1515a <__malloc_lock>
   19494:	ff843783          	ld	a5,-8(s0)
   19498:	01790493          	addi	s1,s2,23
   1949c:	02e00713          	li	a4,46
   194a0:	ff040a93          	addi	s5,s0,-16
   194a4:	ffc7f993          	andi	s3,a5,-4
   194a8:	0a977d63          	bgeu	a4,s1,19562 <_realloc_r+0xf2>
   194ac:	80000737          	lui	a4,0x80000
   194b0:	98c1                	andi	s1,s1,-16
   194b2:	fff74713          	not	a4,a4
   194b6:	0a976a63          	bltu	a4,s1,1956a <_realloc_r+0xfa>
   194ba:	0b24e863          	bltu	s1,s2,1956a <_realloc_r+0xfa>
   194be:	0c99dc63          	bge	s3,s1,19596 <_realloc_r+0x126>
   194c2:	0001f737          	lui	a4,0x1f
   194c6:	8e070c13          	addi	s8,a4,-1824 # 1e8e0 <__malloc_av_>
   194ca:	010c3603          	ld	a2,16(s8)
   194ce:	013a86b3          	add	a3,s5,s3
   194d2:	6698                	ld	a4,8(a3)
   194d4:	14d60163          	beq	a2,a3,19616 <_realloc_r+0x1a6>
   194d8:	ffe77613          	andi	a2,a4,-2
   194dc:	9636                	add	a2,a2,a3
   194de:	6610                	ld	a2,8(a2)
   194e0:	8a05                	andi	a2,a2,1
   194e2:	e26d                	bnez	a2,195c4 <_realloc_r+0x154>
   194e4:	9b71                	andi	a4,a4,-4
   194e6:	00e98633          	add	a2,s3,a4
   194ea:	0a965163          	bge	a2,s1,1958c <_realloc_r+0x11c>
   194ee:	8b85                	andi	a5,a5,1
   194f0:	e38d                	bnez	a5,19512 <_realloc_r+0xa2>
   194f2:	ff043b83          	ld	s7,-16(s0)
   194f6:	417a8bb3          	sub	s7,s5,s7
   194fa:	008bb783          	ld	a5,8(s7)
   194fe:	9bf1                	andi	a5,a5,-4
   19500:	973e                	add	a4,a4,a5
   19502:	01370b33          	add	s6,a4,s3
   19506:	269b5463          	bge	s6,s1,1976e <_realloc_r+0x2fe>
   1950a:	00f98b33          	add	s6,s3,a5
   1950e:	1e9b5963          	bge	s6,s1,19700 <_realloc_r+0x290>
   19512:	85ca                	mv	a1,s2
   19514:	8552                	mv	a0,s4
   19516:	da2fb0ef          	jal	ra,14ab8 <_malloc_r>
   1951a:	892a                	mv	s2,a0
   1951c:	cd1d                	beqz	a0,1955a <_realloc_r+0xea>
   1951e:	ff843783          	ld	a5,-8(s0)
   19522:	ff050713          	addi	a4,a0,-16
   19526:	9bf9                	andi	a5,a5,-2
   19528:	97d6                	add	a5,a5,s5
   1952a:	1ce78663          	beq	a5,a4,196f6 <_realloc_r+0x286>
   1952e:	ff898613          	addi	a2,s3,-8
   19532:	04800793          	li	a5,72
   19536:	22c7e863          	bltu	a5,a2,19766 <_realloc_r+0x2f6>
   1953a:	02700713          	li	a4,39
   1953e:	16c76b63          	bltu	a4,a2,196b4 <_realloc_r+0x244>
   19542:	87aa                	mv	a5,a0
   19544:	8722                	mv	a4,s0
   19546:	6314                	ld	a3,0(a4)
   19548:	e394                	sd	a3,0(a5)
   1954a:	6714                	ld	a3,8(a4)
   1954c:	e794                	sd	a3,8(a5)
   1954e:	6b18                	ld	a4,16(a4)
   19550:	eb98                	sd	a4,16(a5)
   19552:	85a2                	mv	a1,s0
   19554:	8552                	mv	a0,s4
   19556:	834f90ef          	jal	ra,1258a <_free_r>
   1955a:	8552                	mv	a0,s4
   1955c:	c01fb0ef          	jal	ra,1515c <__malloc_unlock>
   19560:	a809                	j	19572 <_realloc_r+0x102>
   19562:	02000493          	li	s1,32
   19566:	f524fce3          	bgeu	s1,s2,194be <_realloc_r+0x4e>
   1956a:	47b1                	li	a5,12
   1956c:	00fa2023          	sw	a5,0(s4)
   19570:	4901                	li	s2,0
   19572:	60a6                	ld	ra,72(sp)
   19574:	6406                	ld	s0,64(sp)
   19576:	74e2                	ld	s1,56(sp)
   19578:	79a2                	ld	s3,40(sp)
   1957a:	7a02                	ld	s4,32(sp)
   1957c:	6ae2                	ld	s5,24(sp)
   1957e:	6b42                	ld	s6,16(sp)
   19580:	6ba2                	ld	s7,8(sp)
   19582:	6c02                	ld	s8,0(sp)
   19584:	854a                	mv	a0,s2
   19586:	7942                	ld	s2,48(sp)
   19588:	6161                	addi	sp,sp,80
   1958a:	8082                	ret
   1958c:	6e9c                	ld	a5,24(a3)
   1958e:	6a98                	ld	a4,16(a3)
   19590:	89b2                	mv	s3,a2
   19592:	ef1c                	sd	a5,24(a4)
   19594:	eb98                	sd	a4,16(a5)
   19596:	008ab783          	ld	a5,8(s5)
   1959a:	409986b3          	sub	a3,s3,s1
   1959e:	467d                	li	a2,31
   195a0:	8b85                	andi	a5,a5,1
   195a2:	013a8733          	add	a4,s5,s3
   195a6:	04d66763          	bltu	a2,a3,195f4 <_realloc_r+0x184>
   195aa:	00f9e7b3          	or	a5,s3,a5
   195ae:	00fab423          	sd	a5,8(s5)
   195b2:	671c                	ld	a5,8(a4)
   195b4:	0017e793          	ori	a5,a5,1
   195b8:	e71c                	sd	a5,8(a4)
   195ba:	8552                	mv	a0,s4
   195bc:	ba1fb0ef          	jal	ra,1515c <__malloc_unlock>
   195c0:	8922                	mv	s2,s0
   195c2:	bf45                	j	19572 <_realloc_r+0x102>
   195c4:	8b85                	andi	a5,a5,1
   195c6:	f7b1                	bnez	a5,19512 <_realloc_r+0xa2>
   195c8:	ff043b83          	ld	s7,-16(s0)
   195cc:	417a8bb3          	sub	s7,s5,s7
   195d0:	008bb783          	ld	a5,8(s7)
   195d4:	9bf1                	andi	a5,a5,-4
   195d6:	bf15                	j	1950a <_realloc_r+0x9a>
   195d8:	6406                	ld	s0,64(sp)
   195da:	60a6                	ld	ra,72(sp)
   195dc:	74e2                	ld	s1,56(sp)
   195de:	7942                	ld	s2,48(sp)
   195e0:	79a2                	ld	s3,40(sp)
   195e2:	7a02                	ld	s4,32(sp)
   195e4:	6ae2                	ld	s5,24(sp)
   195e6:	6b42                	ld	s6,16(sp)
   195e8:	6ba2                	ld	s7,8(sp)
   195ea:	6c02                	ld	s8,0(sp)
   195ec:	85b2                	mv	a1,a2
   195ee:	6161                	addi	sp,sp,80
   195f0:	cc8fb06f          	j	14ab8 <_malloc_r>
   195f4:	8fc5                	or	a5,a5,s1
   195f6:	00fab423          	sd	a5,8(s5)
   195fa:	009a85b3          	add	a1,s5,s1
   195fe:	0016e693          	ori	a3,a3,1
   19602:	e594                	sd	a3,8(a1)
   19604:	671c                	ld	a5,8(a4)
   19606:	05c1                	addi	a1,a1,16
   19608:	8552                	mv	a0,s4
   1960a:	0017e793          	ori	a5,a5,1
   1960e:	e71c                	sd	a5,8(a4)
   19610:	f7bf80ef          	jal	ra,1258a <_free_r>
   19614:	b75d                	j	195ba <_realloc_r+0x14a>
   19616:	9b71                	andi	a4,a4,-4
   19618:	00e986b3          	add	a3,s3,a4
   1961c:	02048613          	addi	a2,s1,32
   19620:	0ac6d763          	bge	a3,a2,196ce <_realloc_r+0x25e>
   19624:	8b85                	andi	a5,a5,1
   19626:	ee0796e3          	bnez	a5,19512 <_realloc_r+0xa2>
   1962a:	ff043b83          	ld	s7,-16(s0)
   1962e:	417a8bb3          	sub	s7,s5,s7
   19632:	008bb783          	ld	a5,8(s7)
   19636:	9bf1                	andi	a5,a5,-4
   19638:	973e                	add	a4,a4,a5
   1963a:	01370b33          	add	s6,a4,s3
   1963e:	eccb46e3          	blt	s6,a2,1950a <_realloc_r+0x9a>
   19642:	018bb783          	ld	a5,24(s7)
   19646:	010bb703          	ld	a4,16(s7)
   1964a:	ff898613          	addi	a2,s3,-8
   1964e:	04800693          	li	a3,72
   19652:	ef1c                	sd	a5,24(a4)
   19654:	eb98                	sd	a4,16(a5)
   19656:	010b8913          	addi	s2,s7,16
   1965a:	1cc6e163          	bltu	a3,a2,1981c <_realloc_r+0x3ac>
   1965e:	02700713          	li	a4,39
   19662:	87ca                	mv	a5,s2
   19664:	00c77f63          	bgeu	a4,a2,19682 <_realloc_r+0x212>
   19668:	6018                	ld	a4,0(s0)
   1966a:	03700793          	li	a5,55
   1966e:	00ebb823          	sd	a4,16(s7)
   19672:	6418                	ld	a4,8(s0)
   19674:	00ebbc23          	sd	a4,24(s7)
   19678:	1ac7e763          	bltu	a5,a2,19826 <_realloc_r+0x3b6>
   1967c:	0441                	addi	s0,s0,16
   1967e:	020b8793          	addi	a5,s7,32
   19682:	6018                	ld	a4,0(s0)
   19684:	e398                	sd	a4,0(a5)
   19686:	6418                	ld	a4,8(s0)
   19688:	e798                	sd	a4,8(a5)
   1968a:	6818                	ld	a4,16(s0)
   1968c:	eb98                	sd	a4,16(a5)
   1968e:	009b8733          	add	a4,s7,s1
   19692:	409b07b3          	sub	a5,s6,s1
   19696:	00ec3823          	sd	a4,16(s8)
   1969a:	0017e793          	ori	a5,a5,1
   1969e:	e71c                	sd	a5,8(a4)
   196a0:	008bb783          	ld	a5,8(s7)
   196a4:	8552                	mv	a0,s4
   196a6:	8b85                	andi	a5,a5,1
   196a8:	8fc5                	or	a5,a5,s1
   196aa:	00fbb423          	sd	a5,8(s7)
   196ae:	aaffb0ef          	jal	ra,1515c <__malloc_unlock>
   196b2:	b5c1                	j	19572 <_realloc_r+0x102>
   196b4:	6014                	ld	a3,0(s0)
   196b6:	03700713          	li	a4,55
   196ba:	e114                	sd	a3,0(a0)
   196bc:	6414                	ld	a3,8(s0)
   196be:	e514                	sd	a3,8(a0)
   196c0:	12c76663          	bltu	a4,a2,197ec <_realloc_r+0x37c>
   196c4:	01040713          	addi	a4,s0,16
   196c8:	01050793          	addi	a5,a0,16
   196cc:	bdad                	j	19546 <_realloc_r+0xd6>
   196ce:	9aa6                	add	s5,s5,s1
   196d0:	409687b3          	sub	a5,a3,s1
   196d4:	015c3823          	sd	s5,16(s8)
   196d8:	0017e793          	ori	a5,a5,1
   196dc:	00fab423          	sd	a5,8(s5)
   196e0:	ff843783          	ld	a5,-8(s0)
   196e4:	8552                	mv	a0,s4
   196e6:	8922                	mv	s2,s0
   196e8:	8b85                	andi	a5,a5,1
   196ea:	8fc5                	or	a5,a5,s1
   196ec:	fef43c23          	sd	a5,-8(s0)
   196f0:	a6dfb0ef          	jal	ra,1515c <__malloc_unlock>
   196f4:	bdbd                	j	19572 <_realloc_r+0x102>
   196f6:	ff853783          	ld	a5,-8(a0)
   196fa:	9bf1                	andi	a5,a5,-4
   196fc:	99be                	add	s3,s3,a5
   196fe:	bd61                	j	19596 <_realloc_r+0x126>
   19700:	018bb783          	ld	a5,24(s7)
   19704:	010bb703          	ld	a4,16(s7)
   19708:	ff898613          	addi	a2,s3,-8
   1970c:	04800693          	li	a3,72
   19710:	ef1c                	sd	a5,24(a4)
   19712:	eb98                	sd	a4,16(a5)
   19714:	010b8913          	addi	s2,s7,16
   19718:	0cc6e263          	bltu	a3,a2,197dc <_realloc_r+0x36c>
   1971c:	02700713          	li	a4,39
   19720:	87ca                	mv	a5,s2
   19722:	02c77863          	bgeu	a4,a2,19752 <_realloc_r+0x2e2>
   19726:	6018                	ld	a4,0(s0)
   19728:	03700793          	li	a5,55
   1972c:	00ebb823          	sd	a4,16(s7)
   19730:	6418                	ld	a4,8(s0)
   19732:	00ebbc23          	sd	a4,24(s7)
   19736:	0cc7f663          	bgeu	a5,a2,19802 <_realloc_r+0x392>
   1973a:	681c                	ld	a5,16(s0)
   1973c:	02fbb023          	sd	a5,32(s7)
   19740:	6c1c                	ld	a5,24(s0)
   19742:	02fbb423          	sd	a5,40(s7)
   19746:	06d60f63          	beq	a2,a3,197c4 <_realloc_r+0x354>
   1974a:	02040413          	addi	s0,s0,32
   1974e:	030b8793          	addi	a5,s7,48
   19752:	6018                	ld	a4,0(s0)
   19754:	89da                	mv	s3,s6
   19756:	8ade                	mv	s5,s7
   19758:	e398                	sd	a4,0(a5)
   1975a:	6418                	ld	a4,8(s0)
   1975c:	e798                	sd	a4,8(a5)
   1975e:	6818                	ld	a4,16(s0)
   19760:	844a                	mv	s0,s2
   19762:	eb98                	sd	a4,16(a5)
   19764:	bd0d                	j	19596 <_realloc_r+0x126>
   19766:	85a2                	mv	a1,s0
   19768:	bf7ff0ef          	jal	ra,1935e <memmove>
   1976c:	b3dd                	j	19552 <_realloc_r+0xe2>
   1976e:	6e9c                	ld	a5,24(a3)
   19770:	6a98                	ld	a4,16(a3)
   19772:	ff898613          	addi	a2,s3,-8
   19776:	04800693          	li	a3,72
   1977a:	ef1c                	sd	a5,24(a4)
   1977c:	eb98                	sd	a4,16(a5)
   1977e:	010bb703          	ld	a4,16(s7)
   19782:	018bb783          	ld	a5,24(s7)
   19786:	010b8913          	addi	s2,s7,16
   1978a:	ef1c                	sd	a5,24(a4)
   1978c:	eb98                	sd	a4,16(a5)
   1978e:	04c6e763          	bltu	a3,a2,197dc <_realloc_r+0x36c>
   19792:	02700713          	li	a4,39
   19796:	87ca                	mv	a5,s2
   19798:	fac77de3          	bgeu	a4,a2,19752 <_realloc_r+0x2e2>
   1979c:	6018                	ld	a4,0(s0)
   1979e:	03700793          	li	a5,55
   197a2:	00ebb823          	sd	a4,16(s7)
   197a6:	6418                	ld	a4,8(s0)
   197a8:	00ebbc23          	sd	a4,24(s7)
   197ac:	04c7fb63          	bgeu	a5,a2,19802 <_realloc_r+0x392>
   197b0:	6818                	ld	a4,16(s0)
   197b2:	04800793          	li	a5,72
   197b6:	02ebb023          	sd	a4,32(s7)
   197ba:	6c18                	ld	a4,24(s0)
   197bc:	02ebb423          	sd	a4,40(s7)
   197c0:	f8f615e3          	bne	a2,a5,1974a <_realloc_r+0x2da>
   197c4:	7018                	ld	a4,32(s0)
   197c6:	040b8793          	addi	a5,s7,64
   197ca:	03040413          	addi	s0,s0,48
   197ce:	02ebb823          	sd	a4,48(s7)
   197d2:	ff843703          	ld	a4,-8(s0)
   197d6:	02ebbc23          	sd	a4,56(s7)
   197da:	bfa5                	j	19752 <_realloc_r+0x2e2>
   197dc:	85a2                	mv	a1,s0
   197de:	854a                	mv	a0,s2
   197e0:	b7fff0ef          	jal	ra,1935e <memmove>
   197e4:	844a                	mv	s0,s2
   197e6:	89da                	mv	s3,s6
   197e8:	8ade                	mv	s5,s7
   197ea:	b375                	j	19596 <_realloc_r+0x126>
   197ec:	6818                	ld	a4,16(s0)
   197ee:	e918                	sd	a4,16(a0)
   197f0:	6c18                	ld	a4,24(s0)
   197f2:	ed18                	sd	a4,24(a0)
   197f4:	00f60b63          	beq	a2,a5,1980a <_realloc_r+0x39a>
   197f8:	02040713          	addi	a4,s0,32
   197fc:	02050793          	addi	a5,a0,32
   19800:	b399                	j	19546 <_realloc_r+0xd6>
   19802:	0441                	addi	s0,s0,16
   19804:	020b8793          	addi	a5,s7,32
   19808:	b7a9                	j	19752 <_realloc_r+0x2e2>
   1980a:	7014                	ld	a3,32(s0)
   1980c:	03040713          	addi	a4,s0,48
   19810:	03050793          	addi	a5,a0,48
   19814:	f114                	sd	a3,32(a0)
   19816:	7414                	ld	a3,40(s0)
   19818:	f514                	sd	a3,40(a0)
   1981a:	b335                	j	19546 <_realloc_r+0xd6>
   1981c:	85a2                	mv	a1,s0
   1981e:	854a                	mv	a0,s2
   19820:	b3fff0ef          	jal	ra,1935e <memmove>
   19824:	b5ad                	j	1968e <_realloc_r+0x21e>
   19826:	681c                	ld	a5,16(s0)
   19828:	02fbb023          	sd	a5,32(s7)
   1982c:	6c1c                	ld	a5,24(s0)
   1982e:	02fbb423          	sd	a5,40(s7)
   19832:	00d60763          	beq	a2,a3,19840 <_realloc_r+0x3d0>
   19836:	02040413          	addi	s0,s0,32
   1983a:	030b8793          	addi	a5,s7,48
   1983e:	b591                	j	19682 <_realloc_r+0x212>
   19840:	7018                	ld	a4,32(s0)
   19842:	040b8793          	addi	a5,s7,64
   19846:	03040413          	addi	s0,s0,48
   1984a:	02ebb823          	sd	a4,48(s7)
   1984e:	ff843703          	ld	a4,-8(s0)
   19852:	02ebbc23          	sd	a4,56(s7)
   19856:	b535                	j	19682 <_realloc_r+0x212>

0000000000019858 <cleanup_glue>:
   19858:	7179                	addi	sp,sp,-48
   1985a:	e84a                	sd	s2,16(sp)
   1985c:	0005b903          	ld	s2,0(a1)
   19860:	f022                	sd	s0,32(sp)
   19862:	ec26                	sd	s1,24(sp)
   19864:	f406                	sd	ra,40(sp)
   19866:	e44e                	sd	s3,8(sp)
   19868:	e052                	sd	s4,0(sp)
   1986a:	842e                	mv	s0,a1
   1986c:	84aa                	mv	s1,a0
   1986e:	02090b63          	beqz	s2,198a4 <cleanup_glue+0x4c>
   19872:	00093983          	ld	s3,0(s2)
   19876:	02098363          	beqz	s3,1989c <cleanup_glue+0x44>
   1987a:	0009ba03          	ld	s4,0(s3)
   1987e:	000a0b63          	beqz	s4,19894 <cleanup_glue+0x3c>
   19882:	000a3583          	ld	a1,0(s4)
   19886:	c199                	beqz	a1,1988c <cleanup_glue+0x34>
   19888:	fd1ff0ef          	jal	ra,19858 <cleanup_glue>
   1988c:	85d2                	mv	a1,s4
   1988e:	8526                	mv	a0,s1
   19890:	cfbf80ef          	jal	ra,1258a <_free_r>
   19894:	85ce                	mv	a1,s3
   19896:	8526                	mv	a0,s1
   19898:	cf3f80ef          	jal	ra,1258a <_free_r>
   1989c:	85ca                	mv	a1,s2
   1989e:	8526                	mv	a0,s1
   198a0:	cebf80ef          	jal	ra,1258a <_free_r>
   198a4:	85a2                	mv	a1,s0
   198a6:	7402                	ld	s0,32(sp)
   198a8:	70a2                	ld	ra,40(sp)
   198aa:	6942                	ld	s2,16(sp)
   198ac:	69a2                	ld	s3,8(sp)
   198ae:	6a02                	ld	s4,0(sp)
   198b0:	8526                	mv	a0,s1
   198b2:	64e2                	ld	s1,24(sp)
   198b4:	6145                	addi	sp,sp,48
   198b6:	cd5f806f          	j	1258a <_free_r>

00000000000198ba <_reclaim_reent>:
   198ba:	7581b783          	ld	a5,1880(gp) # 1f2d8 <_impure_ptr>
   198be:	0aa78563          	beq	a5,a0,19968 <_reclaim_reent+0xae>
   198c2:	7d2c                	ld	a1,120(a0)
   198c4:	7179                	addi	sp,sp,-48
   198c6:	ec26                	sd	s1,24(sp)
   198c8:	f406                	sd	ra,40(sp)
   198ca:	f022                	sd	s0,32(sp)
   198cc:	e84a                	sd	s2,16(sp)
   198ce:	e44e                	sd	s3,8(sp)
   198d0:	84aa                	mv	s1,a0
   198d2:	c58d                	beqz	a1,198fc <_reclaim_reent+0x42>
   198d4:	4901                	li	s2,0
   198d6:	20000993          	li	s3,512
   198da:	012587b3          	add	a5,a1,s2
   198de:	6380                	ld	s0,0(a5)
   198e0:	c801                	beqz	s0,198f0 <_reclaim_reent+0x36>
   198e2:	85a2                	mv	a1,s0
   198e4:	6000                	ld	s0,0(s0)
   198e6:	8526                	mv	a0,s1
   198e8:	ca3f80ef          	jal	ra,1258a <_free_r>
   198ec:	f87d                	bnez	s0,198e2 <_reclaim_reent+0x28>
   198ee:	7cac                	ld	a1,120(s1)
   198f0:	0921                	addi	s2,s2,8
   198f2:	ff3914e3          	bne	s2,s3,198da <_reclaim_reent+0x20>
   198f6:	8526                	mv	a0,s1
   198f8:	c93f80ef          	jal	ra,1258a <_free_r>
   198fc:	70ac                	ld	a1,96(s1)
   198fe:	c581                	beqz	a1,19906 <_reclaim_reent+0x4c>
   19900:	8526                	mv	a0,s1
   19902:	c89f80ef          	jal	ra,1258a <_free_r>
   19906:	1f84b403          	ld	s0,504(s1)
   1990a:	cc01                	beqz	s0,19922 <_reclaim_reent+0x68>
   1990c:	20048913          	addi	s2,s1,512
   19910:	01240963          	beq	s0,s2,19922 <_reclaim_reent+0x68>
   19914:	85a2                	mv	a1,s0
   19916:	6000                	ld	s0,0(s0)
   19918:	8526                	mv	a0,s1
   1991a:	c71f80ef          	jal	ra,1258a <_free_r>
   1991e:	fe891be3          	bne	s2,s0,19914 <_reclaim_reent+0x5a>
   19922:	64cc                	ld	a1,136(s1)
   19924:	c581                	beqz	a1,1992c <_reclaim_reent+0x72>
   19926:	8526                	mv	a0,s1
   19928:	c63f80ef          	jal	ra,1258a <_free_r>
   1992c:	48bc                	lw	a5,80(s1)
   1992e:	c795                	beqz	a5,1995a <_reclaim_reent+0xa0>
   19930:	6cbc                	ld	a5,88(s1)
   19932:	8526                	mv	a0,s1
   19934:	9782                	jalr	a5
   19936:	5204b403          	ld	s0,1312(s1)
   1993a:	c005                	beqz	s0,1995a <_reclaim_reent+0xa0>
   1993c:	600c                	ld	a1,0(s0)
   1993e:	c581                	beqz	a1,19946 <_reclaim_reent+0x8c>
   19940:	8526                	mv	a0,s1
   19942:	f17ff0ef          	jal	ra,19858 <cleanup_glue>
   19946:	85a2                	mv	a1,s0
   19948:	7402                	ld	s0,32(sp)
   1994a:	70a2                	ld	ra,40(sp)
   1994c:	6942                	ld	s2,16(sp)
   1994e:	69a2                	ld	s3,8(sp)
   19950:	8526                	mv	a0,s1
   19952:	64e2                	ld	s1,24(sp)
   19954:	6145                	addi	sp,sp,48
   19956:	c35f806f          	j	1258a <_free_r>
   1995a:	70a2                	ld	ra,40(sp)
   1995c:	7402                	ld	s0,32(sp)
   1995e:	64e2                	ld	s1,24(sp)
   19960:	6942                	ld	s2,16(sp)
   19962:	69a2                	ld	s3,8(sp)
   19964:	6145                	addi	sp,sp,48
   19966:	8082                	ret
   19968:	8082                	ret

000000000001996a <strcmp>:
   1996a:	00b56733          	or	a4,a0,a1
   1996e:	53fd                	li	t2,-1
   19970:	8b1d                	andi	a4,a4,7
   19972:	eb4d                	bnez	a4,19a24 <strcmp+0xba>
   19974:	00006797          	auipc	a5,0x6
   19978:	94c7b783          	ld	a5,-1716(a5) # 1f2c0 <mask>
   1997c:	6110                	ld	a2,0(a0)
   1997e:	6194                	ld	a3,0(a1)
   19980:	00f672b3          	and	t0,a2,a5
   19984:	00f66333          	or	t1,a2,a5
   19988:	92be                	add	t0,t0,a5
   1998a:	0062e2b3          	or	t0,t0,t1
   1998e:	0a729963          	bne	t0,t2,19a40 <strcmp+0xd6>
   19992:	02d61e63          	bne	a2,a3,199ce <strcmp+0x64>
   19996:	6510                	ld	a2,8(a0)
   19998:	6594                	ld	a3,8(a1)
   1999a:	00f672b3          	and	t0,a2,a5
   1999e:	00f66333          	or	t1,a2,a5
   199a2:	92be                	add	t0,t0,a5
   199a4:	0062e2b3          	or	t0,t0,t1
   199a8:	08729a63          	bne	t0,t2,19a3c <strcmp+0xd2>
   199ac:	02d61163          	bne	a2,a3,199ce <strcmp+0x64>
   199b0:	6910                	ld	a2,16(a0)
   199b2:	6994                	ld	a3,16(a1)
   199b4:	00f672b3          	and	t0,a2,a5
   199b8:	00f66333          	or	t1,a2,a5
   199bc:	92be                	add	t0,t0,a5
   199be:	0062e2b3          	or	t0,t0,t1
   199c2:	08729363          	bne	t0,t2,19a48 <strcmp+0xde>
   199c6:	0561                	addi	a0,a0,24
   199c8:	05e1                	addi	a1,a1,24
   199ca:	fad609e3          	beq	a2,a3,1997c <strcmp+0x12>
   199ce:	03061713          	slli	a4,a2,0x30
   199d2:	03069793          	slli	a5,a3,0x30
   199d6:	02f71863          	bne	a4,a5,19a06 <strcmp+0x9c>
   199da:	02061713          	slli	a4,a2,0x20
   199de:	02069793          	slli	a5,a3,0x20
   199e2:	02f71263          	bne	a4,a5,19a06 <strcmp+0x9c>
   199e6:	01061713          	slli	a4,a2,0x10
   199ea:	01069793          	slli	a5,a3,0x10
   199ee:	00f71c63          	bne	a4,a5,19a06 <strcmp+0x9c>
   199f2:	03065713          	srli	a4,a2,0x30
   199f6:	0306d793          	srli	a5,a3,0x30
   199fa:	40f70533          	sub	a0,a4,a5
   199fe:	0ff57593          	zext.b	a1,a0
   19a02:	e991                	bnez	a1,19a16 <strcmp+0xac>
   19a04:	8082                	ret
   19a06:	9341                	srli	a4,a4,0x30
   19a08:	93c1                	srli	a5,a5,0x30
   19a0a:	40f70533          	sub	a0,a4,a5
   19a0e:	0ff57593          	zext.b	a1,a0
   19a12:	e191                	bnez	a1,19a16 <strcmp+0xac>
   19a14:	8082                	ret
   19a16:	0ff77713          	zext.b	a4,a4
   19a1a:	0ff7f793          	zext.b	a5,a5
   19a1e:	40f70533          	sub	a0,a4,a5
   19a22:	8082                	ret
   19a24:	00054603          	lbu	a2,0(a0)
   19a28:	0005c683          	lbu	a3,0(a1)
   19a2c:	0505                	addi	a0,a0,1
   19a2e:	0585                	addi	a1,a1,1
   19a30:	00d61363          	bne	a2,a3,19a36 <strcmp+0xcc>
   19a34:	fa65                	bnez	a2,19a24 <strcmp+0xba>
   19a36:	40d60533          	sub	a0,a2,a3
   19a3a:	8082                	ret
   19a3c:	0521                	addi	a0,a0,8
   19a3e:	05a1                	addi	a1,a1,8
   19a40:	fed612e3          	bne	a2,a3,19a24 <strcmp+0xba>
   19a44:	4501                	li	a0,0
   19a46:	8082                	ret
   19a48:	0541                	addi	a0,a0,16
   19a4a:	05c1                	addi	a1,a1,16
   19a4c:	fcd61ce3          	bne	a2,a3,19a24 <strcmp+0xba>
   19a50:	4501                	li	a0,0
   19a52:	8082                	ret

0000000000019a54 <__ssprint_r>:
   19a54:	6a1c                	ld	a5,16(a2)
   19a56:	715d                	addi	sp,sp,-80
   19a58:	f44e                	sd	s3,40(sp)
   19a5a:	ec56                	sd	s5,24(sp)
   19a5c:	e486                	sd	ra,72(sp)
   19a5e:	e0a2                	sd	s0,64(sp)
   19a60:	fc26                	sd	s1,56(sp)
   19a62:	f84a                	sd	s2,48(sp)
   19a64:	f052                	sd	s4,32(sp)
   19a66:	e85a                	sd	s6,16(sp)
   19a68:	e45e                	sd	s7,8(sp)
   19a6a:	e062                	sd	s8,0(sp)
   19a6c:	00063983          	ld	s3,0(a2)
   19a70:	8ab2                	mv	s5,a2
   19a72:	10078d63          	beqz	a5,19b8c <__ssprint_r+0x138>
   19a76:	45d8                	lw	a4,12(a1)
   19a78:	619c                	ld	a5,0(a1)
   19a7a:	8b2a                	mv	s6,a0
   19a7c:	84ae                	mv	s1,a1
   19a7e:	4a01                	li	s4,0
   19a80:	4401                	li	s0,0
   19a82:	893a                	mv	s2,a4
   19a84:	853e                	mv	a0,a5
   19a86:	c029                	beqz	s0,19ac8 <__ssprint_r+0x74>
   19a88:	04e47663          	bgeu	s0,a4,19ad4 <__ssprint_r+0x80>
   19a8c:	0004071b          	sext.w	a4,s0
   19a90:	893a                	mv	s2,a4
   19a92:	8bba                	mv	s7,a4
   19a94:	853e                	mv	a0,a5
   19a96:	85d2                	mv	a1,s4
   19a98:	864a                	mv	a2,s2
   19a9a:	8c5ff0ef          	jal	ra,1935e <memmove>
   19a9e:	44d4                	lw	a3,12(s1)
   19aa0:	609c                	ld	a5,0(s1)
   19aa2:	010ab703          	ld	a4,16(s5)
   19aa6:	412686bb          	subw	a3,a3,s2
   19aaa:	97ca                	add	a5,a5,s2
   19aac:	c4d4                	sw	a3,12(s1)
   19aae:	e09c                	sd	a5,0(s1)
   19ab0:	41770733          	sub	a4,a4,s7
   19ab4:	00eab823          	sd	a4,16(s5)
   19ab8:	9a5e                	add	s4,s4,s7
   19aba:	41740433          	sub	s0,s0,s7
   19abe:	c779                	beqz	a4,19b8c <__ssprint_r+0x138>
   19ac0:	44d8                	lw	a4,12(s1)
   19ac2:	853e                	mv	a0,a5
   19ac4:	893a                	mv	s2,a4
   19ac6:	f069                	bnez	s0,19a88 <__ssprint_r+0x34>
   19ac8:	0009ba03          	ld	s4,0(s3)
   19acc:	0089b403          	ld	s0,8(s3)
   19ad0:	09c1                	addi	s3,s3,16
   19ad2:	bf45                	j	19a82 <__ssprint_r+0x2e>
   19ad4:	0104d703          	lhu	a4,16(s1)
   19ad8:	00040b9b          	sext.w	s7,s0
   19adc:	48077693          	andi	a3,a4,1152
   19ae0:	dadd                	beqz	a3,19a96 <__ssprint_r+0x42>
   19ae2:	5090                	lw	a2,32(s1)
   19ae4:	6c8c                	ld	a1,24(s1)
   19ae6:	0016169b          	slliw	a3,a2,0x1
   19aea:	9eb1                	addw	a3,a3,a2
   19aec:	8f8d                	sub	a5,a5,a1
   19aee:	01f6d91b          	srliw	s2,a3,0x1f
   19af2:	00078b9b          	sext.w	s7,a5
   19af6:	00d9093b          	addw	s2,s2,a3
   19afa:	001b8693          	addi	a3,s7,1
   19afe:	4019591b          	sraiw	s2,s2,0x1
   19b02:	96a2                	add	a3,a3,s0
   19b04:	00d97563          	bgeu	s2,a3,19b0e <__ssprint_r+0xba>
   19b08:	2785                	addiw	a5,a5,1
   19b0a:	0087893b          	addw	s2,a5,s0
   19b0e:	40077713          	andi	a4,a4,1024
   19b12:	c731                	beqz	a4,19b5e <__ssprint_r+0x10a>
   19b14:	85ca                	mv	a1,s2
   19b16:	855a                	mv	a0,s6
   19b18:	fa1fa0ef          	jal	ra,14ab8 <_malloc_r>
   19b1c:	8c2a                	mv	s8,a0
   19b1e:	c931                	beqz	a0,19b72 <__ssprint_r+0x11e>
   19b20:	6c8c                	ld	a1,24(s1)
   19b22:	865e                	mv	a2,s7
   19b24:	f52ff0ef          	jal	ra,19276 <memcpy>
   19b28:	0104d783          	lhu	a5,16(s1)
   19b2c:	b7f7f793          	andi	a5,a5,-1153
   19b30:	0807e793          	ori	a5,a5,128
   19b34:	00f49823          	sh	a5,16(s1)
   19b38:	017c0533          	add	a0,s8,s7
   19b3c:	41790bbb          	subw	s7,s2,s7
   19b40:	0004071b          	sext.w	a4,s0
   19b44:	0324a023          	sw	s2,32(s1)
   19b48:	0174a623          	sw	s7,12(s1)
   19b4c:	0184bc23          	sd	s8,24(s1)
   19b50:	e088                	sd	a0,0(s1)
   19b52:	893a                	mv	s2,a4
   19b54:	8bba                	mv	s7,a4
   19b56:	87aa                	mv	a5,a0
   19b58:	f2e47fe3          	bgeu	s0,a4,19a96 <__ssprint_r+0x42>
   19b5c:	bf15                	j	19a90 <__ssprint_r+0x3c>
   19b5e:	864a                	mv	a2,s2
   19b60:	855a                	mv	a0,s6
   19b62:	90fff0ef          	jal	ra,19470 <_realloc_r>
   19b66:	8c2a                	mv	s8,a0
   19b68:	f961                	bnez	a0,19b38 <__ssprint_r+0xe4>
   19b6a:	6c8c                	ld	a1,24(s1)
   19b6c:	855a                	mv	a0,s6
   19b6e:	a1df80ef          	jal	ra,1258a <_free_r>
   19b72:	0104d783          	lhu	a5,16(s1)
   19b76:	4731                	li	a4,12
   19b78:	00eb2023          	sw	a4,0(s6) # ffffffff80000000 <__BSS_END__+0xffffffff7ffe0c80>
   19b7c:	0407e793          	ori	a5,a5,64
   19b80:	00f49823          	sh	a5,16(s1)
   19b84:	000ab823          	sd	zero,16(s5)
   19b88:	557d                	li	a0,-1
   19b8a:	a011                	j	19b8e <__ssprint_r+0x13a>
   19b8c:	4501                	li	a0,0
   19b8e:	60a6                	ld	ra,72(sp)
   19b90:	6406                	ld	s0,64(sp)
   19b92:	000aa423          	sw	zero,8(s5)
   19b96:	74e2                	ld	s1,56(sp)
   19b98:	7942                	ld	s2,48(sp)
   19b9a:	79a2                	ld	s3,40(sp)
   19b9c:	7a02                	ld	s4,32(sp)
   19b9e:	6ae2                	ld	s5,24(sp)
   19ba0:	6b42                	ld	s6,16(sp)
   19ba2:	6ba2                	ld	s7,8(sp)
   19ba4:	6c02                	ld	s8,0(sp)
   19ba6:	6161                	addi	sp,sp,80
   19ba8:	8082                	ret

0000000000019baa <_svfiprintf_r>:
   19baa:	0105d783          	lhu	a5,16(a1)
   19bae:	7105                	addi	sp,sp,-480
   19bb0:	ff4e                	sd	s3,440(sp)
   19bb2:	f756                	sd	s5,424(sp)
   19bb4:	feee                	sd	s11,376(sp)
   19bb6:	ef86                	sd	ra,472(sp)
   19bb8:	eba2                	sd	s0,464(sp)
   19bba:	e7a6                	sd	s1,456(sp)
   19bbc:	e3ca                	sd	s2,448(sp)
   19bbe:	fb52                	sd	s4,432(sp)
   19bc0:	f35a                	sd	s6,416(sp)
   19bc2:	ef5e                	sd	s7,408(sp)
   19bc4:	eb62                	sd	s8,400(sp)
   19bc6:	e766                	sd	s9,392(sp)
   19bc8:	e36a                	sd	s10,384(sp)
   19bca:	0807f793          	andi	a5,a5,128
   19bce:	e836                	sd	a3,16(sp)
   19bd0:	89ae                	mv	s3,a1
   19bd2:	8aaa                	mv	s5,a0
   19bd4:	8db2                	mv	s11,a2
   19bd6:	c781                	beqz	a5,19bde <_svfiprintf_r+0x34>
   19bd8:	6d9c                	ld	a5,24(a1)
   19bda:	12078be3          	beqz	a5,1a510 <_svfiprintf_r+0x966>
   19bde:	66f5                	lui	a3,0x1d
   19be0:	0f010a13          	addi	s4,sp,240
   19be4:	de068693          	addi	a3,a3,-544 # 1cde0 <zeroes.0+0x68>
   19be8:	6b75                	lui	s6,0x1d
   19bea:	64f5                	lui	s1,0x1d
   19bec:	f8d2                	sd	s4,112(sp)
   19bee:	e102                	sd	zero,128(sp)
   19bf0:	dc82                	sw	zero,120(sp)
   19bf2:	4701                	li	a4,0
   19bf4:	87d2                	mv	a5,s4
   19bf6:	ec02                	sd	zero,24(sp)
   19bf8:	e082                	sd	zero,64(sp)
   19bfa:	e882                	sd	zero,80(sp)
   19bfc:	e482                	sd	zero,72(sp)
   19bfe:	e402                	sd	zero,8(sp)
   19c00:	f036                	sd	a3,32(sp)
   19c02:	f50b0b13          	addi	s6,s6,-176 # 1cf50 <blanks.1>
   19c06:	f6048493          	addi	s1,s1,-160 # 1cf60 <zeroes.0>
   19c0a:	000dc683          	lbu	a3,0(s11)
   19c0e:	16068e63          	beqz	a3,19d8a <_svfiprintf_r+0x1e0>
   19c12:	846e                	mv	s0,s11
   19c14:	02500613          	li	a2,37
   19c18:	28c68063          	beq	a3,a2,19e98 <_svfiprintf_r+0x2ee>
   19c1c:	00144683          	lbu	a3,1(s0)
   19c20:	0405                	addi	s0,s0,1
   19c22:	fafd                	bnez	a3,19c18 <_svfiprintf_r+0x6e>
   19c24:	41b4093b          	subw	s2,s0,s11
   19c28:	16090163          	beqz	s2,19d8a <_svfiprintf_r+0x1e0>
   19c2c:	56e6                	lw	a3,120(sp)
   19c2e:	974a                	add	a4,a4,s2
   19c30:	01b7b023          	sd	s11,0(a5)
   19c34:	0016861b          	addiw	a2,a3,1
   19c38:	0127b423          	sd	s2,8(a5)
   19c3c:	e13a                	sd	a4,128(sp)
   19c3e:	dcb2                	sw	a2,120(sp)
   19c40:	469d                	li	a3,7
   19c42:	07c1                	addi	a5,a5,16
   19c44:	26c6c163          	blt	a3,a2,19ea6 <_svfiprintf_r+0x2fc>
   19c48:	6622                	ld	a2,8(sp)
   19c4a:	00044683          	lbu	a3,0(s0)
   19c4e:	0126063b          	addw	a2,a2,s2
   19c52:	e432                	sd	a2,8(sp)
   19c54:	12068b63          	beqz	a3,19d8a <_svfiprintf_r+0x1e0>
   19c58:	00144683          	lbu	a3,1(s0)
   19c5c:	00140d93          	addi	s11,s0,1
   19c60:	060103a3          	sb	zero,103(sp)
   19c64:	5cfd                	li	s9,-1
   19c66:	4401                	li	s0,0
   19c68:	4d01                	li	s10,0
   19c6a:	05a00913          	li	s2,90
   19c6e:	4ba5                	li	s7,9
   19c70:	0d85                	addi	s11,s11,1
   19c72:	2681                	sext.w	a3,a3
   19c74:	02a00513          	li	a0,42
   19c78:	fe06861b          	addiw	a2,a3,-32
   19c7c:	0006059b          	sext.w	a1,a2
   19c80:	04b96363          	bltu	s2,a1,19cc6 <_svfiprintf_r+0x11c>
   19c84:	02061593          	slli	a1,a2,0x20
   19c88:	01e5d613          	srli	a2,a1,0x1e
   19c8c:	7582                	ld	a1,32(sp)
   19c8e:	962e                	add	a2,a2,a1
   19c90:	4210                	lw	a2,0(a2)
   19c92:	8602                	jr	a2
   19c94:	4401                	li	s0,0
   19c96:	000dc583          	lbu	a1,0(s11)
   19c9a:	0024161b          	slliw	a2,s0,0x2
   19c9e:	9e21                	addw	a2,a2,s0
   19ca0:	fd06869b          	addiw	a3,a3,-48
   19ca4:	0016161b          	slliw	a2,a2,0x1
   19ca8:	fd05881b          	addiw	a6,a1,-48
   19cac:	00c6843b          	addw	s0,a3,a2
   19cb0:	0d85                	addi	s11,s11,1
   19cb2:	0005869b          	sext.w	a3,a1
   19cb6:	ff0bf0e3          	bgeu	s7,a6,19c96 <_svfiprintf_r+0xec>
   19cba:	fe06861b          	addiw	a2,a3,-32
   19cbe:	0006059b          	sext.w	a1,a2
   19cc2:	fcb971e3          	bgeu	s2,a1,19c84 <_svfiprintf_r+0xda>
   19cc6:	c2f1                	beqz	a3,19d8a <_svfiprintf_r+0x1e0>
   19cc8:	08d10423          	sb	a3,136(sp)
   19ccc:	060103a3          	sb	zero,103(sp)
   19cd0:	4b85                	li	s7,1
   19cd2:	4905                	li	s2,1
   19cd4:	08810c13          	addi	s8,sp,136
   19cd8:	4c81                	li	s9,0
   19cda:	002d7293          	andi	t0,s10,2
   19cde:	00028363          	beqz	t0,19ce4 <_svfiprintf_r+0x13a>
   19ce2:	2b89                	addiw	s7,s7,2
   19ce4:	084d7f93          	andi	t6,s10,132
   19ce8:	56e6                	lw	a3,120(sp)
   19cea:	000f9663          	bnez	t6,19cf6 <_svfiprintf_r+0x14c>
   19cee:	41740ebb          	subw	t4,s0,s7
   19cf2:	5bd04b63          	bgtz	t4,1a2a8 <_svfiprintf_r+0x6fe>
   19cf6:	06714603          	lbu	a2,103(sp)
   19cfa:	ce11                	beqz	a2,19d16 <_svfiprintf_r+0x16c>
   19cfc:	06710593          	addi	a1,sp,103
   19d00:	e38c                	sd	a1,0(a5)
   19d02:	2685                	addiw	a3,a3,1
   19d04:	0705                	addi	a4,a4,1
   19d06:	4585                	li	a1,1
   19d08:	e78c                	sd	a1,8(a5)
   19d0a:	e13a                	sd	a4,128(sp)
   19d0c:	dcb6                	sw	a3,120(sp)
   19d0e:	461d                	li	a2,7
   19d10:	07c1                	addi	a5,a5,16
   19d12:	1ad64463          	blt	a2,a3,19eba <_svfiprintf_r+0x310>
   19d16:	00028e63          	beqz	t0,19d32 <_svfiprintf_r+0x188>
   19d1a:	10ac                	addi	a1,sp,104
   19d1c:	e38c                	sd	a1,0(a5)
   19d1e:	2685                	addiw	a3,a3,1
   19d20:	0709                	addi	a4,a4,2
   19d22:	4589                	li	a1,2
   19d24:	e78c                	sd	a1,8(a5)
   19d26:	e13a                	sd	a4,128(sp)
   19d28:	dcb6                	sw	a3,120(sp)
   19d2a:	461d                	li	a2,7
   19d2c:	07c1                	addi	a5,a5,16
   19d2e:	60d64163          	blt	a2,a3,1a330 <_svfiprintf_r+0x786>
   19d32:	08000613          	li	a2,128
   19d36:	44cf8b63          	beq	t6,a2,1a18c <_svfiprintf_r+0x5e2>
   19d3a:	412c8cbb          	subw	s9,s9,s2
   19d3e:	4d904863          	bgtz	s9,1a20e <_svfiprintf_r+0x664>
   19d42:	0016861b          	addiw	a2,a3,1
   19d46:	974a                	add	a4,a4,s2
   19d48:	0187b023          	sd	s8,0(a5)
   19d4c:	0127b423          	sd	s2,8(a5)
   19d50:	e13a                	sd	a4,128(sp)
   19d52:	dcb2                	sw	a2,120(sp)
   19d54:	469d                	li	a3,7
   19d56:	07c1                	addi	a5,a5,16
   19d58:	52c6c363          	blt	a3,a2,1a27e <_svfiprintf_r+0x6d4>
   19d5c:	004d7e13          	andi	t3,s10,4
   19d60:	000e0663          	beqz	t3,19d6c <_svfiprintf_r+0x1c2>
   19d64:	4174093b          	subw	s2,s0,s7
   19d68:	5f204163          	bgtz	s2,1a34a <_svfiprintf_r+0x7a0>
   19d6c:	87a2                	mv	a5,s0
   19d6e:	01745363          	bge	s0,s7,19d74 <_svfiprintf_r+0x1ca>
   19d72:	87de                	mv	a5,s7
   19d74:	66a2                	ld	a3,8(sp)
   19d76:	9fb5                	addw	a5,a5,a3
   19d78:	e43e                	sd	a5,8(sp)
   19d7a:	50071c63          	bnez	a4,1a292 <_svfiprintf_r+0x6e8>
   19d7e:	000dc683          	lbu	a3,0(s11)
   19d82:	dc82                	sw	zero,120(sp)
   19d84:	87d2                	mv	a5,s4
   19d86:	e80696e3          	bnez	a3,19c12 <_svfiprintf_r+0x68>
   19d8a:	060715e3          	bnez	a4,1a5f4 <_svfiprintf_r+0xa4a>
   19d8e:	0109d783          	lhu	a5,16(s3)
   19d92:	0407f793          	andi	a5,a5,64
   19d96:	080790e3          	bnez	a5,1a616 <_svfiprintf_r+0xa6c>
   19d9a:	60fe                	ld	ra,472(sp)
   19d9c:	645e                	ld	s0,464(sp)
   19d9e:	6522                	ld	a0,8(sp)
   19da0:	64be                	ld	s1,456(sp)
   19da2:	691e                	ld	s2,448(sp)
   19da4:	79fa                	ld	s3,440(sp)
   19da6:	7a5a                	ld	s4,432(sp)
   19da8:	7aba                	ld	s5,424(sp)
   19daa:	7b1a                	ld	s6,416(sp)
   19dac:	6bfa                	ld	s7,408(sp)
   19dae:	6c5a                	ld	s8,400(sp)
   19db0:	6cba                	ld	s9,392(sp)
   19db2:	6d1a                	ld	s10,384(sp)
   19db4:	7df6                	ld	s11,376(sp)
   19db6:	613d                	addi	sp,sp,480
   19db8:	8082                	ret
   19dba:	010d6e13          	ori	t3,s10,16
   19dbe:	000dc683          	lbu	a3,0(s11)
   19dc2:	000e0d1b          	sext.w	s10,t3
   19dc6:	b56d                	j	19c70 <_svfiprintf_r+0xc6>
   19dc8:	010d6e13          	ori	t3,s10,16
   19dcc:	000e0d1b          	sext.w	s10,t3
   19dd0:	65c2                	ld	a1,16(sp)
   19dd2:	020d7693          	andi	a3,s10,32
   19dd6:	00858613          	addi	a2,a1,8
   19dda:	10068e63          	beqz	a3,19ef6 <_svfiprintf_r+0x34c>
   19dde:	6194                	ld	a3,0(a1)
   19de0:	8bb6                	mv	s7,a3
   19de2:	1206cc63          	bltz	a3,19f1a <_svfiprintf_r+0x370>
   19de6:	56fd                	li	a3,-1
   19de8:	74dc8e63          	beq	s9,a3,1a544 <_svfiprintf_r+0x99a>
   19dec:	f7fd7e93          	andi	t4,s10,-129
   19df0:	e832                	sd	a2,16(sp)
   19df2:	2e81                	sext.w	t4,t4
   19df4:	5c0b8263          	beqz	s7,1a3b8 <_svfiprintf_r+0x80e>
   19df8:	46a5                	li	a3,9
   19dfa:	5f76e763          	bltu	a3,s7,1a3e8 <_svfiprintf_r+0x83e>
   19dfe:	030b8b9b          	addiw	s7,s7,48
   19e02:	0f7105a3          	sb	s7,235(sp)
   19e06:	8d76                	mv	s10,t4
   19e08:	4905                	li	s2,1
   19e0a:	0eb10c13          	addi	s8,sp,235
   19e0e:	a8b1                	j	19e6a <_svfiprintf_r+0x2c0>
   19e10:	010d6e13          	ori	t3,s10,16
   19e14:	000e0d1b          	sext.w	s10,t3
   19e18:	65c2                	ld	a1,16(sp)
   19e1a:	020d7693          	andi	a3,s10,32
   19e1e:	00858613          	addi	a2,a1,8
   19e22:	cadd                	beqz	a3,19ed8 <_svfiprintf_r+0x32e>
   19e24:	0005bb83          	ld	s7,0(a1)
   19e28:	bffd7e93          	andi	t4,s10,-1025
   19e2c:	2e81                	sext.w	t4,t4
   19e2e:	e832                	sd	a2,16(sp)
   19e30:	4681                	li	a3,0
   19e32:	4601                	li	a2,0
   19e34:	06c103a3          	sb	a2,103(sp)
   19e38:	567d                	li	a2,-1
   19e3a:	0ecc8c63          	beq	s9,a2,19f32 <_svfiprintf_r+0x388>
   19e3e:	f7fefe13          	andi	t3,t4,-129
   19e42:	000e0d1b          	sext.w	s10,t3
   19e46:	440b9f63          	bnez	s7,1a2a4 <_svfiprintf_r+0x6fa>
   19e4a:	300c9663          	bnez	s9,1a156 <_svfiprintf_r+0x5ac>
   19e4e:	56069863          	bnez	a3,1a3be <_svfiprintf_r+0x814>
   19e52:	001ef913          	andi	s2,t4,1
   19e56:	0ec10c13          	addi	s8,sp,236
   19e5a:	00090863          	beqz	s2,19e6a <_svfiprintf_r+0x2c0>
   19e5e:	03000693          	li	a3,48
   19e62:	0ed105a3          	sb	a3,235(sp)
   19e66:	0eb10c13          	addi	s8,sp,235
   19e6a:	86e6                	mv	a3,s9
   19e6c:	012cd363          	bge	s9,s2,19e72 <_svfiprintf_r+0x2c8>
   19e70:	86ca                	mv	a3,s2
   19e72:	06714603          	lbu	a2,103(sp)
   19e76:	00068b9b          	sext.w	s7,a3
   19e7a:	e60600e3          	beqz	a2,19cda <_svfiprintf_r+0x130>
   19e7e:	00168b9b          	addiw	s7,a3,1
   19e82:	bda1                	j	19cda <_svfiprintf_r+0x130>
   19e84:	4080043b          	negw	s0,s0
   19e88:	e862                	sd	s8,16(sp)
   19e8a:	004d6e13          	ori	t3,s10,4
   19e8e:	000dc683          	lbu	a3,0(s11)
   19e92:	000e0d1b          	sext.w	s10,t3
   19e96:	bbe9                	j	19c70 <_svfiprintf_r+0xc6>
   19e98:	41b4093b          	subw	s2,s0,s11
   19e9c:	d80918e3          	bnez	s2,19c2c <_svfiprintf_r+0x82>
   19ea0:	00044683          	lbu	a3,0(s0)
   19ea4:	bb45                	j	19c54 <_svfiprintf_r+0xaa>
   19ea6:	1890                	addi	a2,sp,112
   19ea8:	85ce                	mv	a1,s3
   19eaa:	8556                	mv	a0,s5
   19eac:	ba9ff0ef          	jal	ra,19a54 <__ssprint_r>
   19eb0:	ec051fe3          	bnez	a0,19d8e <_svfiprintf_r+0x1e4>
   19eb4:	670a                	ld	a4,128(sp)
   19eb6:	87d2                	mv	a5,s4
   19eb8:	bb41                	j	19c48 <_svfiprintf_r+0x9e>
   19eba:	1890                	addi	a2,sp,112
   19ebc:	85ce                	mv	a1,s3
   19ebe:	8556                	mv	a0,s5
   19ec0:	f87e                	sd	t6,48(sp)
   19ec2:	f416                	sd	t0,40(sp)
   19ec4:	b91ff0ef          	jal	ra,19a54 <__ssprint_r>
   19ec8:	ec0513e3          	bnez	a0,19d8e <_svfiprintf_r+0x1e4>
   19ecc:	670a                	ld	a4,128(sp)
   19ece:	56e6                	lw	a3,120(sp)
   19ed0:	7fc2                	ld	t6,48(sp)
   19ed2:	72a2                	ld	t0,40(sp)
   19ed4:	87d2                	mv	a5,s4
   19ed6:	b581                	j	19d16 <_svfiprintf_r+0x16c>
   19ed8:	010d7693          	andi	a3,s10,16
   19edc:	5a069063          	bnez	a3,1a47c <_svfiprintf_r+0x8d2>
   19ee0:	65c2                	ld	a1,16(sp)
   19ee2:	040d7693          	andi	a3,s10,64
   19ee6:	0005ab83          	lw	s7,0(a1)
   19eea:	6c068163          	beqz	a3,1a5ac <_svfiprintf_r+0xa02>
   19eee:	1bc2                	slli	s7,s7,0x30
   19ef0:	030bdb93          	srli	s7,s7,0x30
   19ef4:	bf15                	j	19e28 <_svfiprintf_r+0x27e>
   19ef6:	010d7693          	andi	a3,s10,16
   19efa:	56069d63          	bnez	a3,1a474 <_svfiprintf_r+0x8ca>
   19efe:	65c2                	ld	a1,16(sp)
   19f00:	040d7693          	andi	a3,s10,64
   19f04:	0005ab83          	lw	s7,0(a1)
   19f08:	68068063          	beqz	a3,1a588 <_svfiprintf_r+0x9de>
   19f0c:	010b9b9b          	slliw	s7,s7,0x10
   19f10:	410bdb9b          	sraiw	s7,s7,0x10
   19f14:	86de                	mv	a3,s7
   19f16:	ec06d8e3          	bgez	a3,19de6 <_svfiprintf_r+0x23c>
   19f1a:	e832                	sd	a2,16(sp)
   19f1c:	02d00613          	li	a2,45
   19f20:	06c103a3          	sb	a2,103(sp)
   19f24:	567d                	li	a2,-1
   19f26:	41700bb3          	neg	s7,s7
   19f2a:	8eea                	mv	t4,s10
   19f2c:	4685                	li	a3,1
   19f2e:	f0cc98e3          	bne	s9,a2,19e3e <_svfiprintf_r+0x294>
   19f32:	4605                	li	a2,1
   19f34:	ecc682e3          	beq	a3,a2,19df8 <_svfiprintf_r+0x24e>
   19f38:	4609                	li	a2,2
   19f3a:	22c68563          	beq	a3,a2,1a164 <_svfiprintf_r+0x5ba>
   19f3e:	0ec10913          	addi	s2,sp,236
   19f42:	8c4a                	mv	s8,s2
   19f44:	007bf693          	andi	a3,s7,7
   19f48:	03068693          	addi	a3,a3,48
   19f4c:	fedc0fa3          	sb	a3,-1(s8)
   19f50:	003bdb93          	srli	s7,s7,0x3
   19f54:	8662                	mv	a2,s8
   19f56:	1c7d                	addi	s8,s8,-1
   19f58:	fe0b96e3          	bnez	s7,19f44 <_svfiprintf_r+0x39a>
   19f5c:	001ef593          	andi	a1,t4,1
   19f60:	22058263          	beqz	a1,1a184 <_svfiprintf_r+0x5da>
   19f64:	03000593          	li	a1,48
   19f68:	20b68e63          	beq	a3,a1,1a184 <_svfiprintf_r+0x5da>
   19f6c:	1679                	addi	a2,a2,-2
   19f6e:	febc0fa3          	sb	a1,-1(s8)
   19f72:	40c9093b          	subw	s2,s2,a2
   19f76:	8d76                	mv	s10,t4
   19f78:	8c32                	mv	s8,a2
   19f7a:	bdc5                	j	19e6a <_svfiprintf_r+0x2c0>
   19f7c:	66c2                	ld	a3,16(sp)
   19f7e:	060103a3          	sb	zero,103(sp)
   19f82:	0006bc03          	ld	s8,0(a3)
   19f86:	00868813          	addi	a6,a3,8
   19f8a:	5e0c0263          	beqz	s8,1a56e <_svfiprintf_r+0x9c4>
   19f8e:	56fd                	li	a3,-1
   19f90:	56dc8463          	beq	s9,a3,1a4f8 <_svfiprintf_r+0x94e>
   19f94:	8666                	mv	a2,s9
   19f96:	4581                	li	a1,0
   19f98:	8562                	mv	a0,s8
   19f9a:	f842                	sd	a6,48(sp)
   19f9c:	f43e                	sd	a5,40(sp)
   19f9e:	e83a                	sd	a4,16(sp)
   19fa0:	92cfb0ef          	jal	ra,150cc <memchr>
   19fa4:	6742                	ld	a4,16(sp)
   19fa6:	77a2                	ld	a5,40(sp)
   19fa8:	7842                	ld	a6,48(sp)
   19faa:	64050c63          	beqz	a0,1a602 <_svfiprintf_r+0xa58>
   19fae:	4185093b          	subw	s2,a0,s8
   19fb2:	e842                	sd	a6,16(sp)
   19fb4:	4c81                	li	s9,0
   19fb6:	bd55                	j	19e6a <_svfiprintf_r+0x2c0>
   19fb8:	6642                	ld	a2,16(sp)
   19fba:	060103a3          	sb	zero,103(sp)
   19fbe:	4b85                	li	s7,1
   19fc0:	4214                	lw	a3,0(a2)
   19fc2:	0621                	addi	a2,a2,8
   19fc4:	e832                	sd	a2,16(sp)
   19fc6:	08d10423          	sb	a3,136(sp)
   19fca:	4905                	li	s2,1
   19fcc:	08810c13          	addi	s8,sp,136
   19fd0:	b321                	j	19cd8 <_svfiprintf_r+0x12e>
   19fd2:	080d6e13          	ori	t3,s10,128
   19fd6:	000dc683          	lbu	a3,0(s11)
   19fda:	000e0d1b          	sext.w	s10,t3
   19fde:	b949                	j	19c70 <_svfiprintf_r+0xc6>
   19fe0:	020d6e13          	ori	t3,s10,32
   19fe4:	000dc683          	lbu	a3,0(s11)
   19fe8:	000e0d1b          	sext.w	s10,t3
   19fec:	b151                	j	19c70 <_svfiprintf_r+0xc6>
   19fee:	6642                	ld	a2,16(sp)
   19ff0:	76e1                	lui	a3,0xffff8
   19ff2:	8306c693          	xori	a3,a3,-2000
   19ff6:	002d6e93          	ori	t4,s10,2
   19ffa:	06d11423          	sh	a3,104(sp)
   19ffe:	6d71                	lui	s10,0x1c
   1a000:	00860693          	addi	a3,a2,8
   1a004:	e836                	sd	a3,16(sp)
   1a006:	280d0693          	addi	a3,s10,640 # 1c280 <__clzdi2+0x68>
   1a00a:	ec36                	sd	a3,24(sp)
   1a00c:	00063b83          	ld	s7,0(a2)
   1a010:	2e81                	sext.w	t4,t4
   1a012:	4689                	li	a3,2
   1a014:	bd39                	j	19e32 <_svfiprintf_r+0x288>
   1a016:	010d6e93          	ori	t4,s10,16
   1a01a:	2e81                	sext.w	t4,t4
   1a01c:	65c2                	ld	a1,16(sp)
   1a01e:	020ef693          	andi	a3,t4,32
   1a022:	00858613          	addi	a2,a1,8
   1a026:	3a068163          	beqz	a3,1a3c8 <_svfiprintf_r+0x81e>
   1a02a:	0005bb83          	ld	s7,0(a1)
   1a02e:	4685                	li	a3,1
   1a030:	e832                	sd	a2,16(sp)
   1a032:	b501                	j	19e32 <_svfiprintf_r+0x288>
   1a034:	000dc683          	lbu	a3,0(s11)
   1a038:	001d8613          	addi	a2,s11,1
   1a03c:	5ea68163          	beq	a3,a0,1a61e <_svfiprintf_r+0xa74>
   1a040:	fd06859b          	addiw	a1,a3,-48
   1a044:	8db2                	mv	s11,a2
   1a046:	4c81                	li	s9,0
   1a048:	c2bbe8e3          	bltu	s7,a1,19c78 <_svfiprintf_r+0xce>
   1a04c:	000dc683          	lbu	a3,0(s11)
   1a050:	002c961b          	slliw	a2,s9,0x2
   1a054:	0196063b          	addw	a2,a2,s9
   1a058:	0016161b          	slliw	a2,a2,0x1
   1a05c:	00b60cbb          	addw	s9,a2,a1
   1a060:	fd06859b          	addiw	a1,a3,-48
   1a064:	0d85                	addi	s11,s11,1
   1a066:	febbf3e3          	bgeu	s7,a1,1a04c <_svfiprintf_r+0x4a2>
   1a06a:	b139                	j	19c78 <_svfiprintf_r+0xce>
   1a06c:	65c2                	ld	a1,16(sp)
   1a06e:	020d7693          	andi	a3,s10,32
   1a072:	6190                	ld	a2,0(a1)
   1a074:	05a1                	addi	a1,a1,8
   1a076:	e82e                	sd	a1,16(sp)
   1a078:	e285                	bnez	a3,1a098 <_svfiprintf_r+0x4ee>
   1a07a:	010d7693          	andi	a3,s10,16
   1a07e:	ee89                	bnez	a3,1a098 <_svfiprintf_r+0x4ee>
   1a080:	040d7693          	andi	a3,s10,64
   1a084:	56069363          	bnez	a3,1a5ea <_svfiprintf_r+0xa40>
   1a088:	200d7e13          	andi	t3,s10,512
   1a08c:	66a2                	ld	a3,8(sp)
   1a08e:	580e0163          	beqz	t3,1a610 <_svfiprintf_r+0xa66>
   1a092:	00d60023          	sb	a3,0(a2)
   1a096:	be95                	j	19c0a <_svfiprintf_r+0x60>
   1a098:	66a2                	ld	a3,8(sp)
   1a09a:	e214                	sd	a3,0(a2)
   1a09c:	b6bd                	j	19c0a <_svfiprintf_r+0x60>
   1a09e:	000dc683          	lbu	a3,0(s11)
   1a0a2:	06c00613          	li	a2,108
   1a0a6:	4ac68263          	beq	a3,a2,1a54a <_svfiprintf_r+0x9a0>
   1a0aa:	010d6e13          	ori	t3,s10,16
   1a0ae:	000e0d1b          	sext.w	s10,t3
   1a0b2:	be7d                	j	19c70 <_svfiprintf_r+0xc6>
   1a0b4:	000dc683          	lbu	a3,0(s11)
   1a0b8:	06800613          	li	a2,104
   1a0bc:	4ac68063          	beq	a3,a2,1a55c <_svfiprintf_r+0x9b2>
   1a0c0:	040d6e13          	ori	t3,s10,64
   1a0c4:	000e0d1b          	sext.w	s10,t3
   1a0c8:	b665                	j	19c70 <_svfiprintf_r+0xc6>
   1a0ca:	66c2                	ld	a3,16(sp)
   1a0cc:	4280                	lw	s0,0(a3)
   1a0ce:	00868c13          	addi	s8,a3,8 # ffffffffffff8008 <__BSS_END__+0xfffffffffffd8c88>
   1a0d2:	da0449e3          	bltz	s0,19e84 <_svfiprintf_r+0x2da>
   1a0d6:	000dc683          	lbu	a3,0(s11)
   1a0da:	e862                	sd	s8,16(sp)
   1a0dc:	be51                	j	19c70 <_svfiprintf_r+0xc6>
   1a0de:	8556                	mv	a0,s5
   1a0e0:	f43a                	sd	a4,40(sp)
   1a0e2:	f83e                	sd	a5,48(sp)
   1a0e4:	82bfa0ef          	jal	ra,1490e <_localeconv_r>
   1a0e8:	651c                	ld	a5,8(a0)
   1a0ea:	853e                	mv	a0,a5
   1a0ec:	e4be                	sd	a5,72(sp)
   1a0ee:	fcbfb0ef          	jal	ra,160b8 <strlen>
   1a0f2:	86aa                	mv	a3,a0
   1a0f4:	8556                	mv	a0,s5
   1a0f6:	8c36                	mv	s8,a3
   1a0f8:	e8b6                	sd	a3,80(sp)
   1a0fa:	815fa0ef          	jal	ra,1490e <_localeconv_r>
   1a0fe:	6910                	ld	a2,16(a0)
   1a100:	7722                	ld	a4,40(sp)
   1a102:	77c2                	ld	a5,48(sp)
   1a104:	e0b2                	sd	a2,64(sp)
   1a106:	360c0363          	beqz	s8,1a46c <_svfiprintf_r+0x8c2>
   1a10a:	000dc683          	lbu	a3,0(s11)
   1a10e:	b60601e3          	beqz	a2,19c70 <_svfiprintf_r+0xc6>
   1a112:	00064603          	lbu	a2,0(a2)
   1a116:	b4060de3          	beqz	a2,19c70 <_svfiprintf_r+0xc6>
   1a11a:	400d6e13          	ori	t3,s10,1024
   1a11e:	000e0d1b          	sext.w	s10,t3
   1a122:	b6b9                	j	19c70 <_svfiprintf_r+0xc6>
   1a124:	001d6e13          	ori	t3,s10,1
   1a128:	000dc683          	lbu	a3,0(s11)
   1a12c:	000e0d1b          	sext.w	s10,t3
   1a130:	b681                	j	19c70 <_svfiprintf_r+0xc6>
   1a132:	06714603          	lbu	a2,103(sp)
   1a136:	000dc683          	lbu	a3,0(s11)
   1a13a:	b2061be3          	bnez	a2,19c70 <_svfiprintf_r+0xc6>
   1a13e:	02000613          	li	a2,32
   1a142:	06c103a3          	sb	a2,103(sp)
   1a146:	b62d                	j	19c70 <_svfiprintf_r+0xc6>
   1a148:	02b00613          	li	a2,43
   1a14c:	000dc683          	lbu	a3,0(s11)
   1a150:	06c103a3          	sb	a2,103(sp)
   1a154:	be31                	j	19c70 <_svfiprintf_r+0xc6>
   1a156:	4605                	li	a2,1
   1a158:	4ac68963          	beq	a3,a2,1a60a <_svfiprintf_r+0xa60>
   1a15c:	4609                	li	a2,2
   1a15e:	8eea                	mv	t4,s10
   1a160:	dcc69fe3          	bne	a3,a2,19f3e <_svfiprintf_r+0x394>
   1a164:	0ec10913          	addi	s2,sp,236
   1a168:	8c4a                	mv	s8,s2
   1a16a:	6662                	ld	a2,24(sp)
   1a16c:	00fbf693          	andi	a3,s7,15
   1a170:	1c7d                	addi	s8,s8,-1
   1a172:	96b2                	add	a3,a3,a2
   1a174:	0006c683          	lbu	a3,0(a3)
   1a178:	004bdb93          	srli	s7,s7,0x4
   1a17c:	00dc0023          	sb	a3,0(s8)
   1a180:	fe0b95e3          	bnez	s7,1a16a <_svfiprintf_r+0x5c0>
   1a184:	4189093b          	subw	s2,s2,s8
   1a188:	8d76                	mv	s10,t4
   1a18a:	b1c5                	j	19e6a <_svfiprintf_r+0x2c0>
   1a18c:	41740ebb          	subw	t4,s0,s7
   1a190:	bbd055e3          	blez	t4,19d3a <_svfiprintf_r+0x190>
   1a194:	4641                	li	a2,16
   1a196:	05d65363          	bge	a2,t4,1a1dc <_svfiprintf_r+0x632>
   1a19a:	4f41                	li	t5,16
   1a19c:	4f9d                	li	t6,7
   1a19e:	a021                	j	1a1a6 <_svfiprintf_r+0x5fc>
   1a1a0:	3ec1                	addiw	t4,t4,-16
   1a1a2:	03df5d63          	bge	t5,t4,1a1dc <_svfiprintf_r+0x632>
   1a1a6:	2685                	addiw	a3,a3,1
   1a1a8:	0741                	addi	a4,a4,16
   1a1aa:	e384                	sd	s1,0(a5)
   1a1ac:	01e7b423          	sd	t5,8(a5)
   1a1b0:	e13a                	sd	a4,128(sp)
   1a1b2:	dcb6                	sw	a3,120(sp)
   1a1b4:	07c1                	addi	a5,a5,16
   1a1b6:	fedfd5e3          	bge	t6,a3,1a1a0 <_svfiprintf_r+0x5f6>
   1a1ba:	1890                	addi	a2,sp,112
   1a1bc:	85ce                	mv	a1,s3
   1a1be:	8556                	mv	a0,s5
   1a1c0:	f476                	sd	t4,40(sp)
   1a1c2:	893ff0ef          	jal	ra,19a54 <__ssprint_r>
   1a1c6:	bc0514e3          	bnez	a0,19d8e <_svfiprintf_r+0x1e4>
   1a1ca:	7ea2                	ld	t4,40(sp)
   1a1cc:	4f41                	li	t5,16
   1a1ce:	670a                	ld	a4,128(sp)
   1a1d0:	3ec1                	addiw	t4,t4,-16
   1a1d2:	56e6                	lw	a3,120(sp)
   1a1d4:	87d2                	mv	a5,s4
   1a1d6:	4f9d                	li	t6,7
   1a1d8:	fddf47e3          	blt	t5,t4,1a1a6 <_svfiprintf_r+0x5fc>
   1a1dc:	2685                	addiw	a3,a3,1
   1a1de:	9776                	add	a4,a4,t4
   1a1e0:	e384                	sd	s1,0(a5)
   1a1e2:	01d7b423          	sd	t4,8(a5)
   1a1e6:	e13a                	sd	a4,128(sp)
   1a1e8:	dcb6                	sw	a3,120(sp)
   1a1ea:	461d                	li	a2,7
   1a1ec:	07c1                	addi	a5,a5,16
   1a1ee:	b4d656e3          	bge	a2,a3,19d3a <_svfiprintf_r+0x190>
   1a1f2:	1890                	addi	a2,sp,112
   1a1f4:	85ce                	mv	a1,s3
   1a1f6:	8556                	mv	a0,s5
   1a1f8:	85dff0ef          	jal	ra,19a54 <__ssprint_r>
   1a1fc:	b80519e3          	bnez	a0,19d8e <_svfiprintf_r+0x1e4>
   1a200:	412c8cbb          	subw	s9,s9,s2
   1a204:	670a                	ld	a4,128(sp)
   1a206:	56e6                	lw	a3,120(sp)
   1a208:	87d2                	mv	a5,s4
   1a20a:	b3905ce3          	blez	s9,19d42 <_svfiprintf_r+0x198>
   1a20e:	4641                	li	a2,16
   1a210:	05965163          	bge	a2,s9,1a252 <_svfiprintf_r+0x6a8>
   1a214:	4ec1                	li	t4,16
   1a216:	4f1d                	li	t5,7
   1a218:	a021                	j	1a220 <_svfiprintf_r+0x676>
   1a21a:	3cc1                	addiw	s9,s9,-16
   1a21c:	039edb63          	bge	t4,s9,1a252 <_svfiprintf_r+0x6a8>
   1a220:	2685                	addiw	a3,a3,1
   1a222:	0741                	addi	a4,a4,16
   1a224:	e384                	sd	s1,0(a5)
   1a226:	01d7b423          	sd	t4,8(a5)
   1a22a:	e13a                	sd	a4,128(sp)
   1a22c:	dcb6                	sw	a3,120(sp)
   1a22e:	07c1                	addi	a5,a5,16
   1a230:	fedf55e3          	bge	t5,a3,1a21a <_svfiprintf_r+0x670>
   1a234:	1890                	addi	a2,sp,112
   1a236:	85ce                	mv	a1,s3
   1a238:	8556                	mv	a0,s5
   1a23a:	81bff0ef          	jal	ra,19a54 <__ssprint_r>
   1a23e:	b40518e3          	bnez	a0,19d8e <_svfiprintf_r+0x1e4>
   1a242:	4ec1                	li	t4,16
   1a244:	3cc1                	addiw	s9,s9,-16
   1a246:	670a                	ld	a4,128(sp)
   1a248:	56e6                	lw	a3,120(sp)
   1a24a:	87d2                	mv	a5,s4
   1a24c:	4f1d                	li	t5,7
   1a24e:	fd9ec9e3          	blt	t4,s9,1a220 <_svfiprintf_r+0x676>
   1a252:	2685                	addiw	a3,a3,1
   1a254:	9766                	add	a4,a4,s9
   1a256:	e384                	sd	s1,0(a5)
   1a258:	0197b423          	sd	s9,8(a5)
   1a25c:	e13a                	sd	a4,128(sp)
   1a25e:	dcb6                	sw	a3,120(sp)
   1a260:	461d                	li	a2,7
   1a262:	07c1                	addi	a5,a5,16
   1a264:	acd65fe3          	bge	a2,a3,19d42 <_svfiprintf_r+0x198>
   1a268:	1890                	addi	a2,sp,112
   1a26a:	85ce                	mv	a1,s3
   1a26c:	8556                	mv	a0,s5
   1a26e:	fe6ff0ef          	jal	ra,19a54 <__ssprint_r>
   1a272:	b0051ee3          	bnez	a0,19d8e <_svfiprintf_r+0x1e4>
   1a276:	670a                	ld	a4,128(sp)
   1a278:	56e6                	lw	a3,120(sp)
   1a27a:	87d2                	mv	a5,s4
   1a27c:	b4d9                	j	19d42 <_svfiprintf_r+0x198>
   1a27e:	1890                	addi	a2,sp,112
   1a280:	85ce                	mv	a1,s3
   1a282:	8556                	mv	a0,s5
   1a284:	fd0ff0ef          	jal	ra,19a54 <__ssprint_r>
   1a288:	b00513e3          	bnez	a0,19d8e <_svfiprintf_r+0x1e4>
   1a28c:	670a                	ld	a4,128(sp)
   1a28e:	87d2                	mv	a5,s4
   1a290:	b4f1                	j	19d5c <_svfiprintf_r+0x1b2>
   1a292:	1890                	addi	a2,sp,112
   1a294:	85ce                	mv	a1,s3
   1a296:	8556                	mv	a0,s5
   1a298:	fbcff0ef          	jal	ra,19a54 <__ssprint_r>
   1a29c:	ae0519e3          	bnez	a0,19d8e <_svfiprintf_r+0x1e4>
   1a2a0:	670a                	ld	a4,128(sp)
   1a2a2:	bcf1                	j	19d7e <_svfiprintf_r+0x1d4>
   1a2a4:	8eea                	mv	t4,s10
   1a2a6:	b171                	j	19f32 <_svfiprintf_r+0x388>
   1a2a8:	4641                	li	a2,16
   1a2aa:	05d65863          	bge	a2,t4,1a2fa <_svfiprintf_r+0x750>
   1a2ae:	4f41                	li	t5,16
   1a2b0:	439d                	li	t2,7
   1a2b2:	a021                	j	1a2ba <_svfiprintf_r+0x710>
   1a2b4:	3ec1                	addiw	t4,t4,-16
   1a2b6:	05df5263          	bge	t5,t4,1a2fa <_svfiprintf_r+0x750>
   1a2ba:	2685                	addiw	a3,a3,1
   1a2bc:	0741                	addi	a4,a4,16
   1a2be:	0167b023          	sd	s6,0(a5)
   1a2c2:	01e7b423          	sd	t5,8(a5)
   1a2c6:	e13a                	sd	a4,128(sp)
   1a2c8:	dcb6                	sw	a3,120(sp)
   1a2ca:	07c1                	addi	a5,a5,16
   1a2cc:	fed3d4e3          	bge	t2,a3,1a2b4 <_svfiprintf_r+0x70a>
   1a2d0:	1890                	addi	a2,sp,112
   1a2d2:	85ce                	mv	a1,s3
   1a2d4:	8556                	mv	a0,s5
   1a2d6:	fc76                	sd	t4,56(sp)
   1a2d8:	f87e                	sd	t6,48(sp)
   1a2da:	f416                	sd	t0,40(sp)
   1a2dc:	f78ff0ef          	jal	ra,19a54 <__ssprint_r>
   1a2e0:	aa0517e3          	bnez	a0,19d8e <_svfiprintf_r+0x1e4>
   1a2e4:	7ee2                	ld	t4,56(sp)
   1a2e6:	4f41                	li	t5,16
   1a2e8:	670a                	ld	a4,128(sp)
   1a2ea:	3ec1                	addiw	t4,t4,-16
   1a2ec:	56e6                	lw	a3,120(sp)
   1a2ee:	7fc2                	ld	t6,48(sp)
   1a2f0:	72a2                	ld	t0,40(sp)
   1a2f2:	87d2                	mv	a5,s4
   1a2f4:	439d                	li	t2,7
   1a2f6:	fddf42e3          	blt	t5,t4,1a2ba <_svfiprintf_r+0x710>
   1a2fa:	2685                	addiw	a3,a3,1
   1a2fc:	9776                	add	a4,a4,t4
   1a2fe:	0167b023          	sd	s6,0(a5)
   1a302:	01d7b423          	sd	t4,8(a5)
   1a306:	e13a                	sd	a4,128(sp)
   1a308:	dcb6                	sw	a3,120(sp)
   1a30a:	461d                	li	a2,7
   1a30c:	07c1                	addi	a5,a5,16
   1a30e:	9ed654e3          	bge	a2,a3,19cf6 <_svfiprintf_r+0x14c>
   1a312:	1890                	addi	a2,sp,112
   1a314:	85ce                	mv	a1,s3
   1a316:	8556                	mv	a0,s5
   1a318:	f87e                	sd	t6,48(sp)
   1a31a:	f416                	sd	t0,40(sp)
   1a31c:	f38ff0ef          	jal	ra,19a54 <__ssprint_r>
   1a320:	a60517e3          	bnez	a0,19d8e <_svfiprintf_r+0x1e4>
   1a324:	670a                	ld	a4,128(sp)
   1a326:	56e6                	lw	a3,120(sp)
   1a328:	7fc2                	ld	t6,48(sp)
   1a32a:	72a2                	ld	t0,40(sp)
   1a32c:	87d2                	mv	a5,s4
   1a32e:	b2e1                	j	19cf6 <_svfiprintf_r+0x14c>
   1a330:	1890                	addi	a2,sp,112
   1a332:	85ce                	mv	a1,s3
   1a334:	8556                	mv	a0,s5
   1a336:	f47e                	sd	t6,40(sp)
   1a338:	f1cff0ef          	jal	ra,19a54 <__ssprint_r>
   1a33c:	a40519e3          	bnez	a0,19d8e <_svfiprintf_r+0x1e4>
   1a340:	670a                	ld	a4,128(sp)
   1a342:	56e6                	lw	a3,120(sp)
   1a344:	7fa2                	ld	t6,40(sp)
   1a346:	87d2                	mv	a5,s4
   1a348:	b2ed                	j	19d32 <_svfiprintf_r+0x188>
   1a34a:	4641                	li	a2,16
   1a34c:	56e6                	lw	a3,120(sp)
   1a34e:	05265063          	bge	a2,s2,1a38e <_svfiprintf_r+0x7e4>
   1a352:	4cc1                	li	s9,16
   1a354:	4c1d                	li	s8,7
   1a356:	a021                	j	1a35e <_svfiprintf_r+0x7b4>
   1a358:	3941                	addiw	s2,s2,-16
   1a35a:	032cda63          	bge	s9,s2,1a38e <_svfiprintf_r+0x7e4>
   1a35e:	2685                	addiw	a3,a3,1
   1a360:	0741                	addi	a4,a4,16
   1a362:	0167b023          	sd	s6,0(a5)
   1a366:	0197b423          	sd	s9,8(a5)
   1a36a:	e13a                	sd	a4,128(sp)
   1a36c:	dcb6                	sw	a3,120(sp)
   1a36e:	07c1                	addi	a5,a5,16
   1a370:	fedc54e3          	bge	s8,a3,1a358 <_svfiprintf_r+0x7ae>
   1a374:	1890                	addi	a2,sp,112
   1a376:	85ce                	mv	a1,s3
   1a378:	8556                	mv	a0,s5
   1a37a:	edaff0ef          	jal	ra,19a54 <__ssprint_r>
   1a37e:	a00518e3          	bnez	a0,19d8e <_svfiprintf_r+0x1e4>
   1a382:	3941                	addiw	s2,s2,-16
   1a384:	670a                	ld	a4,128(sp)
   1a386:	56e6                	lw	a3,120(sp)
   1a388:	87d2                	mv	a5,s4
   1a38a:	fd2ccae3          	blt	s9,s2,1a35e <_svfiprintf_r+0x7b4>
   1a38e:	0016861b          	addiw	a2,a3,1
   1a392:	974a                	add	a4,a4,s2
   1a394:	0167b023          	sd	s6,0(a5)
   1a398:	0127b423          	sd	s2,8(a5)
   1a39c:	e13a                	sd	a4,128(sp)
   1a39e:	dcb2                	sw	a2,120(sp)
   1a3a0:	479d                	li	a5,7
   1a3a2:	9cc7d5e3          	bge	a5,a2,19d6c <_svfiprintf_r+0x1c2>
   1a3a6:	1890                	addi	a2,sp,112
   1a3a8:	85ce                	mv	a1,s3
   1a3aa:	8556                	mv	a0,s5
   1a3ac:	ea8ff0ef          	jal	ra,19a54 <__ssprint_r>
   1a3b0:	9c051fe3          	bnez	a0,19d8e <_svfiprintf_r+0x1e4>
   1a3b4:	670a                	ld	a4,128(sp)
   1a3b6:	ba5d                	j	19d6c <_svfiprintf_r+0x1c2>
   1a3b8:	a40c93e3          	bnez	s9,19dfe <_svfiprintf_r+0x254>
   1a3bc:	8d76                	mv	s10,t4
   1a3be:	4c81                	li	s9,0
   1a3c0:	4901                	li	s2,0
   1a3c2:	0ec10c13          	addi	s8,sp,236
   1a3c6:	b455                	j	19e6a <_svfiprintf_r+0x2c0>
   1a3c8:	010ef693          	andi	a3,t4,16
   1a3cc:	eec5                	bnez	a3,1a484 <_svfiprintf_r+0x8da>
   1a3ce:	65c2                	ld	a1,16(sp)
   1a3d0:	040ef693          	andi	a3,t4,64
   1a3d4:	0005ab83          	lw	s7,0(a1)
   1a3d8:	1c068263          	beqz	a3,1a59c <_svfiprintf_r+0x9f2>
   1a3dc:	1bc2                	slli	s7,s7,0x30
   1a3de:	030bdb93          	srli	s7,s7,0x30
   1a3e2:	e832                	sd	a2,16(sp)
   1a3e4:	4685                	li	a3,1
   1a3e6:	b4b1                	j	19e32 <_svfiprintf_r+0x288>
   1a3e8:	0ec10913          	addi	s2,sp,236
   1a3ec:	400eff13          	andi	t5,t4,1024
   1a3f0:	4501                	li	a0,0
   1a3f2:	85ca                	mv	a1,s2
   1a3f4:	46a9                	li	a3,10
   1a3f6:	4e25                	li	t3,9
   1a3f8:	0ff00d13          	li	s10,255
   1a3fc:	a039                	j	1a40a <_svfiprintf_r+0x860>
   1a3fe:	02dbd633          	divu	a2,s7,a3
   1a402:	d97e71e3          	bgeu	t3,s7,1a184 <_svfiprintf_r+0x5da>
   1a406:	8bb2                	mv	s7,a2
   1a408:	85e2                	mv	a1,s8
   1a40a:	fff58c13          	addi	s8,a1,-1
   1a40e:	2505                	addiw	a0,a0,1
   1a410:	02dbf633          	remu	a2,s7,a3
   1a414:	0306061b          	addiw	a2,a2,48
   1a418:	fec58fa3          	sb	a2,-1(a1)
   1a41c:	fe0f01e3          	beqz	t5,1a3fe <_svfiprintf_r+0x854>
   1a420:	6606                	ld	a2,64(sp)
   1a422:	00064603          	lbu	a2,0(a2)
   1a426:	fca61ce3          	bne	a2,a0,1a3fe <_svfiprintf_r+0x854>
   1a42a:	fda60ae3          	beq	a2,s10,1a3fe <_svfiprintf_r+0x854>
   1a42e:	d57e7be3          	bgeu	t3,s7,1a184 <_svfiprintf_r+0x5da>
   1a432:	fc3e                	sd	a5,56(sp)
   1a434:	67c6                	ld	a5,80(sp)
   1a436:	65a6                	ld	a1,72(sp)
   1a438:	ecfa                	sd	t5,88(sp)
   1a43a:	40fc0c33          	sub	s8,s8,a5
   1a43e:	863e                	mv	a2,a5
   1a440:	8562                	mv	a0,s8
   1a442:	f876                	sd	t4,48(sp)
   1a444:	f43a                	sd	a4,40(sp)
   1a446:	d03fb0ef          	jal	ra,16148 <strncpy>
   1a44a:	6786                	ld	a5,64(sp)
   1a44c:	46a9                	li	a3,10
   1a44e:	02dbd633          	divu	a2,s7,a3
   1a452:	0017c583          	lbu	a1,1(a5)
   1a456:	7722                	ld	a4,40(sp)
   1a458:	7ec2                	ld	t4,48(sp)
   1a45a:	00b035b3          	snez	a1,a1
   1a45e:	97ae                	add	a5,a5,a1
   1a460:	e0be                	sd	a5,64(sp)
   1a462:	6f66                	ld	t5,88(sp)
   1a464:	77e2                	ld	a5,56(sp)
   1a466:	4501                	li	a0,0
   1a468:	4e25                	li	t3,9
   1a46a:	bf71                	j	1a406 <_svfiprintf_r+0x85c>
   1a46c:	000dc683          	lbu	a3,0(s11)
   1a470:	801ff06f          	j	19c70 <_svfiprintf_r+0xc6>
   1a474:	66c2                	ld	a3,16(sp)
   1a476:	6294                	ld	a3,0(a3)
   1a478:	8bb6                	mv	s7,a3
   1a47a:	b2a5                	j	19de2 <_svfiprintf_r+0x238>
   1a47c:	66c2                	ld	a3,16(sp)
   1a47e:	0006bb83          	ld	s7,0(a3)
   1a482:	b25d                	j	19e28 <_svfiprintf_r+0x27e>
   1a484:	66c2                	ld	a3,16(sp)
   1a486:	e832                	sd	a2,16(sp)
   1a488:	0006bb83          	ld	s7,0(a3)
   1a48c:	4685                	li	a3,1
   1a48e:	b255                	j	19e32 <_svfiprintf_r+0x288>
   1a490:	6542                	ld	a0,16(sp)
   1a492:	6671                	lui	a2,0x1c
   1a494:	28060613          	addi	a2,a2,640 # 1c280 <__clzdi2+0x68>
   1a498:	ec32                	sd	a2,24(sp)
   1a49a:	020d7613          	andi	a2,s10,32
   1a49e:	00850593          	addi	a1,a0,8
   1a4a2:	c621                	beqz	a2,1a4ea <_svfiprintf_r+0x940>
   1a4a4:	00053b83          	ld	s7,0(a0)
   1a4a8:	001d7613          	andi	a2,s10,1
   1a4ac:	ce09                	beqz	a2,1a4c6 <_svfiprintf_r+0x91c>
   1a4ae:	000b8c63          	beqz	s7,1a4c6 <_svfiprintf_r+0x91c>
   1a4b2:	002d6e13          	ori	t3,s10,2
   1a4b6:	03000613          	li	a2,48
   1a4ba:	06c10423          	sb	a2,104(sp)
   1a4be:	06d104a3          	sb	a3,105(sp)
   1a4c2:	000e0d1b          	sext.w	s10,t3
   1a4c6:	bffd7e93          	andi	t4,s10,-1025
   1a4ca:	2e81                	sext.w	t4,t4
   1a4cc:	e82e                	sd	a1,16(sp)
   1a4ce:	4689                	li	a3,2
   1a4d0:	b28d                	j	19e32 <_svfiprintf_r+0x288>
   1a4d2:	8eea                	mv	t4,s10
   1a4d4:	b6a1                	j	1a01c <_svfiprintf_r+0x472>
   1a4d6:	6542                	ld	a0,16(sp)
   1a4d8:	6671                	lui	a2,0x1c
   1a4da:	29860613          	addi	a2,a2,664 # 1c298 <__clzdi2+0x80>
   1a4de:	ec32                	sd	a2,24(sp)
   1a4e0:	020d7613          	andi	a2,s10,32
   1a4e4:	00850593          	addi	a1,a0,8
   1a4e8:	fe55                	bnez	a2,1a4a4 <_svfiprintf_r+0x8fa>
   1a4ea:	010d7613          	andi	a2,s10,16
   1a4ee:	c229                	beqz	a2,1a530 <_svfiprintf_r+0x986>
   1a4f0:	6642                	ld	a2,16(sp)
   1a4f2:	00063b83          	ld	s7,0(a2)
   1a4f6:	bf4d                	j	1a4a8 <_svfiprintf_r+0x8fe>
   1a4f8:	8562                	mv	a0,s8
   1a4fa:	f83e                	sd	a5,48(sp)
   1a4fc:	f43a                	sd	a4,40(sp)
   1a4fe:	e842                	sd	a6,16(sp)
   1a500:	bb9fb0ef          	jal	ra,160b8 <strlen>
   1a504:	7722                	ld	a4,40(sp)
   1a506:	77c2                	ld	a5,48(sp)
   1a508:	0005091b          	sext.w	s2,a0
   1a50c:	4c81                	li	s9,0
   1a50e:	bab1                	j	19e6a <_svfiprintf_r+0x2c0>
   1a510:	04000593          	li	a1,64
   1a514:	da4fa0ef          	jal	ra,14ab8 <_malloc_r>
   1a518:	00a9b023          	sd	a0,0(s3)
   1a51c:	00a9bc23          	sd	a0,24(s3)
   1a520:	10050f63          	beqz	a0,1a63e <_svfiprintf_r+0xa94>
   1a524:	04000793          	li	a5,64
   1a528:	02f9a023          	sw	a5,32(s3)
   1a52c:	eb2ff06f          	j	19bde <_svfiprintf_r+0x34>
   1a530:	6542                	ld	a0,16(sp)
   1a532:	040d7613          	andi	a2,s10,64
   1a536:	00052b83          	lw	s7,0(a0)
   1a53a:	ce3d                	beqz	a2,1a5b8 <_svfiprintf_r+0xa0e>
   1a53c:	1bc2                	slli	s7,s7,0x30
   1a53e:	030bdb93          	srli	s7,s7,0x30
   1a542:	b79d                	j	1a4a8 <_svfiprintf_r+0x8fe>
   1a544:	8eea                	mv	t4,s10
   1a546:	e832                	sd	a2,16(sp)
   1a548:	b845                	j	19df8 <_svfiprintf_r+0x24e>
   1a54a:	020d6e13          	ori	t3,s10,32
   1a54e:	001dc683          	lbu	a3,1(s11)
   1a552:	000e0d1b          	sext.w	s10,t3
   1a556:	0d85                	addi	s11,s11,1
   1a558:	f18ff06f          	j	19c70 <_svfiprintf_r+0xc6>
   1a55c:	200d6e13          	ori	t3,s10,512
   1a560:	001dc683          	lbu	a3,1(s11)
   1a564:	000e0d1b          	sext.w	s10,t3
   1a568:	0d85                	addi	s11,s11,1
   1a56a:	f06ff06f          	j	19c70 <_svfiprintf_r+0xc6>
   1a56e:	4699                	li	a3,6
   1a570:	000c891b          	sext.w	s2,s9
   1a574:	0196f363          	bgeu	a3,s9,1a57a <_svfiprintf_r+0x9d0>
   1a578:	4919                	li	s2,6
   1a57a:	e842                	sd	a6,16(sp)
   1a57c:	6871                	lui	a6,0x1c
   1a57e:	8bca                	mv	s7,s2
   1a580:	2b080c13          	addi	s8,a6,688 # 1c2b0 <__clzdi2+0x98>
   1a584:	f54ff06f          	j	19cd8 <_svfiprintf_r+0x12e>
   1a588:	200d7693          	andi	a3,s10,512
   1a58c:	cea1                	beqz	a3,1a5e4 <_svfiprintf_r+0xa3a>
   1a58e:	018b9b9b          	slliw	s7,s7,0x18
   1a592:	418bdb9b          	sraiw	s7,s7,0x18
   1a596:	86de                	mv	a3,s7
   1a598:	84bff06f          	j	19de2 <_svfiprintf_r+0x238>
   1a59c:	200ef693          	andi	a3,t4,512
   1a5a0:	ca9d                	beqz	a3,1a5d6 <_svfiprintf_r+0xa2c>
   1a5a2:	0ffbfb93          	zext.b	s7,s7
   1a5a6:	e832                	sd	a2,16(sp)
   1a5a8:	4685                	li	a3,1
   1a5aa:	b061                	j	19e32 <_svfiprintf_r+0x288>
   1a5ac:	200d7693          	andi	a3,s10,512
   1a5b0:	ce91                	beqz	a3,1a5cc <_svfiprintf_r+0xa22>
   1a5b2:	0ffbfb93          	zext.b	s7,s7
   1a5b6:	b88d                	j	19e28 <_svfiprintf_r+0x27e>
   1a5b8:	200d7613          	andi	a2,s10,512
   1a5bc:	c601                	beqz	a2,1a5c4 <_svfiprintf_r+0xa1a>
   1a5be:	0ffbfb93          	zext.b	s7,s7
   1a5c2:	b5dd                	j	1a4a8 <_svfiprintf_r+0x8fe>
   1a5c4:	1b82                	slli	s7,s7,0x20
   1a5c6:	020bdb93          	srli	s7,s7,0x20
   1a5ca:	bdf9                	j	1a4a8 <_svfiprintf_r+0x8fe>
   1a5cc:	1b82                	slli	s7,s7,0x20
   1a5ce:	020bdb93          	srli	s7,s7,0x20
   1a5d2:	857ff06f          	j	19e28 <_svfiprintf_r+0x27e>
   1a5d6:	1b82                	slli	s7,s7,0x20
   1a5d8:	020bdb93          	srli	s7,s7,0x20
   1a5dc:	e832                	sd	a2,16(sp)
   1a5de:	4685                	li	a3,1
   1a5e0:	853ff06f          	j	19e32 <_svfiprintf_r+0x288>
   1a5e4:	86de                	mv	a3,s7
   1a5e6:	ffcff06f          	j	19de2 <_svfiprintf_r+0x238>
   1a5ea:	66a2                	ld	a3,8(sp)
   1a5ec:	00d61023          	sh	a3,0(a2)
   1a5f0:	e1aff06f          	j	19c0a <_svfiprintf_r+0x60>
   1a5f4:	1890                	addi	a2,sp,112
   1a5f6:	85ce                	mv	a1,s3
   1a5f8:	8556                	mv	a0,s5
   1a5fa:	c5aff0ef          	jal	ra,19a54 <__ssprint_r>
   1a5fe:	f90ff06f          	j	19d8e <_svfiprintf_r+0x1e4>
   1a602:	8966                	mv	s2,s9
   1a604:	e842                	sd	a6,16(sp)
   1a606:	4c81                	li	s9,0
   1a608:	b08d                	j	19e6a <_svfiprintf_r+0x2c0>
   1a60a:	8eea                	mv	t4,s10
   1a60c:	ff2ff06f          	j	19dfe <_svfiprintf_r+0x254>
   1a610:	c214                	sw	a3,0(a2)
   1a612:	df8ff06f          	j	19c0a <_svfiprintf_r+0x60>
   1a616:	57fd                	li	a5,-1
   1a618:	e43e                	sd	a5,8(sp)
   1a61a:	f80ff06f          	j	19d9a <_svfiprintf_r+0x1f0>
   1a61e:	65c2                	ld	a1,16(sp)
   1a620:	4194                	lw	a3,0(a1)
   1a622:	00858c13          	addi	s8,a1,8
   1a626:	88b6                	mv	a7,a3
   1a628:	0006d363          	bgez	a3,1a62e <_svfiprintf_r+0xa84>
   1a62c:	58fd                	li	a7,-1
   1a62e:	001dc683          	lbu	a3,1(s11)
   1a632:	00088c9b          	sext.w	s9,a7
   1a636:	e862                	sd	s8,16(sp)
   1a638:	8db2                	mv	s11,a2
   1a63a:	e36ff06f          	j	19c70 <_svfiprintf_r+0xc6>
   1a63e:	47b1                	li	a5,12
   1a640:	00faa023          	sw	a5,0(s5)
   1a644:	57fd                	li	a5,-1
   1a646:	e43e                	sd	a5,8(sp)
   1a648:	f52ff06f          	j	19d9a <_svfiprintf_r+0x1f0>

000000000001a64c <__swbuf_r>:
   1a64c:	7179                	addi	sp,sp,-48
   1a64e:	f022                	sd	s0,32(sp)
   1a650:	ec26                	sd	s1,24(sp)
   1a652:	e84a                	sd	s2,16(sp)
   1a654:	f406                	sd	ra,40(sp)
   1a656:	e44e                	sd	s3,8(sp)
   1a658:	892a                	mv	s2,a0
   1a65a:	84ae                	mv	s1,a1
   1a65c:	8432                	mv	s0,a2
   1a65e:	c119                	beqz	a0,1a664 <__swbuf_r+0x18>
   1a660:	493c                	lw	a5,80(a0)
   1a662:	cff1                	beqz	a5,1a73e <__swbuf_r+0xf2>
   1a664:	01041703          	lh	a4,16(s0)
   1a668:	5414                	lw	a3,40(s0)
   1a66a:	00877793          	andi	a5,a4,8
   1a66e:	c454                	sw	a3,12(s0)
   1a670:	03071693          	slli	a3,a4,0x30
   1a674:	92c1                	srli	a3,a3,0x30
   1a676:	cbb1                	beqz	a5,1a6ca <__swbuf_r+0x7e>
   1a678:	6c1c                	ld	a5,24(s0)
   1a67a:	cba1                	beqz	a5,1a6ca <__swbuf_r+0x7e>
   1a67c:	6609                	lui	a2,0x2
   1a67e:	0ff4f993          	zext.b	s3,s1
   1a682:	8ef1                	and	a3,a3,a2
   1a684:	84ce                	mv	s1,s3
   1a686:	c2bd                	beqz	a3,1a6ec <__swbuf_r+0xa0>
   1a688:	6018                	ld	a4,0(s0)
   1a68a:	5014                	lw	a3,32(s0)
   1a68c:	40f707bb          	subw	a5,a4,a5
   1a690:	06d7de63          	bge	a5,a3,1a70c <__swbuf_r+0xc0>
   1a694:	4454                	lw	a3,12(s0)
   1a696:	00170613          	addi	a2,a4,1
   1a69a:	e010                	sd	a2,0(s0)
   1a69c:	36fd                	addiw	a3,a3,-1
   1a69e:	c454                	sw	a3,12(s0)
   1a6a0:	01370023          	sb	s3,0(a4)
   1a6a4:	5018                	lw	a4,32(s0)
   1a6a6:	2785                	addiw	a5,a5,1
   1a6a8:	08f70463          	beq	a4,a5,1a730 <__swbuf_r+0xe4>
   1a6ac:	01045783          	lhu	a5,16(s0)
   1a6b0:	8b85                	andi	a5,a5,1
   1a6b2:	c781                	beqz	a5,1a6ba <__swbuf_r+0x6e>
   1a6b4:	47a9                	li	a5,10
   1a6b6:	06f48d63          	beq	s1,a5,1a730 <__swbuf_r+0xe4>
   1a6ba:	70a2                	ld	ra,40(sp)
   1a6bc:	7402                	ld	s0,32(sp)
   1a6be:	6942                	ld	s2,16(sp)
   1a6c0:	69a2                	ld	s3,8(sp)
   1a6c2:	8526                	mv	a0,s1
   1a6c4:	64e2                	ld	s1,24(sp)
   1a6c6:	6145                	addi	sp,sp,48
   1a6c8:	8082                	ret
   1a6ca:	85a2                	mv	a1,s0
   1a6cc:	854a                	mv	a0,s2
   1a6ce:	f58f70ef          	jal	ra,11e26 <__swsetup_r>
   1a6d2:	e525                	bnez	a0,1a73a <__swbuf_r+0xee>
   1a6d4:	01041703          	lh	a4,16(s0)
   1a6d8:	6609                	lui	a2,0x2
   1a6da:	0ff4f993          	zext.b	s3,s1
   1a6de:	03071693          	slli	a3,a4,0x30
   1a6e2:	92c1                	srli	a3,a3,0x30
   1a6e4:	8ef1                	and	a3,a3,a2
   1a6e6:	6c1c                	ld	a5,24(s0)
   1a6e8:	84ce                	mv	s1,s3
   1a6ea:	fed9                	bnez	a3,1a688 <__swbuf_r+0x3c>
   1a6ec:	0ac42683          	lw	a3,172(s0)
   1a6f0:	8f51                	or	a4,a4,a2
   1a6f2:	7679                	lui	a2,0xffffe
   1a6f4:	167d                	addi	a2,a2,-1
   1a6f6:	8ef1                	and	a3,a3,a2
   1a6f8:	00e41823          	sh	a4,16(s0)
   1a6fc:	6018                	ld	a4,0(s0)
   1a6fe:	0ad42623          	sw	a3,172(s0)
   1a702:	5014                	lw	a3,32(s0)
   1a704:	40f707bb          	subw	a5,a4,a5
   1a708:	f8d7c6e3          	blt	a5,a3,1a694 <__swbuf_r+0x48>
   1a70c:	85a2                	mv	a1,s0
   1a70e:	854a                	mv	a0,s2
   1a710:	a6ff70ef          	jal	ra,1217e <_fflush_r>
   1a714:	e11d                	bnez	a0,1a73a <__swbuf_r+0xee>
   1a716:	6018                	ld	a4,0(s0)
   1a718:	4454                	lw	a3,12(s0)
   1a71a:	4785                	li	a5,1
   1a71c:	00170613          	addi	a2,a4,1
   1a720:	36fd                	addiw	a3,a3,-1
   1a722:	e010                	sd	a2,0(s0)
   1a724:	c454                	sw	a3,12(s0)
   1a726:	01370023          	sb	s3,0(a4)
   1a72a:	5018                	lw	a4,32(s0)
   1a72c:	f8f710e3          	bne	a4,a5,1a6ac <__swbuf_r+0x60>
   1a730:	85a2                	mv	a1,s0
   1a732:	854a                	mv	a0,s2
   1a734:	a4bf70ef          	jal	ra,1217e <_fflush_r>
   1a738:	d149                	beqz	a0,1a6ba <__swbuf_r+0x6e>
   1a73a:	54fd                	li	s1,-1
   1a73c:	bfbd                	j	1a6ba <__swbuf_r+0x6e>
   1a73e:	d1df70ef          	jal	ra,1245a <__sinit>
   1a742:	b70d                	j	1a664 <__swbuf_r+0x18>

000000000001a744 <__swbuf>:
   1a744:	87aa                	mv	a5,a0
   1a746:	7581b503          	ld	a0,1880(gp) # 1f2d8 <_impure_ptr>
   1a74a:	862e                	mv	a2,a1
   1a74c:	85be                	mv	a1,a5
   1a74e:	bdfd                	j	1a64c <__swbuf_r>

000000000001a750 <_wcrtomb_r>:
   1a750:	7179                	addi	sp,sp,-48
   1a752:	f022                	sd	s0,32(sp)
   1a754:	ec26                	sd	s1,24(sp)
   1a756:	f406                	sd	ra,40(sp)
   1a758:	6501b783          	ld	a5,1616(gp) # 1f1d0 <__global_locale+0xe0>
   1a75c:	842a                	mv	s0,a0
   1a75e:	84b6                	mv	s1,a3
   1a760:	c991                	beqz	a1,1a774 <_wcrtomb_r+0x24>
   1a762:	9782                	jalr	a5
   1a764:	57fd                	li	a5,-1
   1a766:	00f50d63          	beq	a0,a5,1a780 <_wcrtomb_r+0x30>
   1a76a:	70a2                	ld	ra,40(sp)
   1a76c:	7402                	ld	s0,32(sp)
   1a76e:	64e2                	ld	s1,24(sp)
   1a770:	6145                	addi	sp,sp,48
   1a772:	8082                	ret
   1a774:	4601                	li	a2,0
   1a776:	858a                	mv	a1,sp
   1a778:	9782                	jalr	a5
   1a77a:	57fd                	li	a5,-1
   1a77c:	fef517e3          	bne	a0,a5,1a76a <_wcrtomb_r+0x1a>
   1a780:	0004a023          	sw	zero,0(s1)
   1a784:	08a00793          	li	a5,138
   1a788:	70a2                	ld	ra,40(sp)
   1a78a:	c01c                	sw	a5,0(s0)
   1a78c:	7402                	ld	s0,32(sp)
   1a78e:	64e2                	ld	s1,24(sp)
   1a790:	6145                	addi	sp,sp,48
   1a792:	8082                	ret

000000000001a794 <wcrtomb>:
   1a794:	7179                	addi	sp,sp,-48
   1a796:	f022                	sd	s0,32(sp)
   1a798:	ec26                	sd	s1,24(sp)
   1a79a:	f406                	sd	ra,40(sp)
   1a79c:	7581b483          	ld	s1,1880(gp) # 1f2d8 <_impure_ptr>
   1a7a0:	6501b783          	ld	a5,1616(gp) # 1f1d0 <__global_locale+0xe0>
   1a7a4:	8432                	mv	s0,a2
   1a7a6:	cd11                	beqz	a0,1a7c2 <wcrtomb+0x2e>
   1a7a8:	862e                	mv	a2,a1
   1a7aa:	86a2                	mv	a3,s0
   1a7ac:	85aa                	mv	a1,a0
   1a7ae:	8526                	mv	a0,s1
   1a7b0:	9782                	jalr	a5
   1a7b2:	57fd                	li	a5,-1
   1a7b4:	00f50f63          	beq	a0,a5,1a7d2 <wcrtomb+0x3e>
   1a7b8:	70a2                	ld	ra,40(sp)
   1a7ba:	7402                	ld	s0,32(sp)
   1a7bc:	64e2                	ld	s1,24(sp)
   1a7be:	6145                	addi	sp,sp,48
   1a7c0:	8082                	ret
   1a7c2:	86b2                	mv	a3,a2
   1a7c4:	858a                	mv	a1,sp
   1a7c6:	4601                	li	a2,0
   1a7c8:	8526                	mv	a0,s1
   1a7ca:	9782                	jalr	a5
   1a7cc:	57fd                	li	a5,-1
   1a7ce:	fef515e3          	bne	a0,a5,1a7b8 <wcrtomb+0x24>
   1a7d2:	00042023          	sw	zero,0(s0)
   1a7d6:	70a2                	ld	ra,40(sp)
   1a7d8:	7402                	ld	s0,32(sp)
   1a7da:	08a00793          	li	a5,138
   1a7de:	c09c                	sw	a5,0(s1)
   1a7e0:	64e2                	ld	s1,24(sp)
   1a7e2:	6145                	addi	sp,sp,48
   1a7e4:	8082                	ret

000000000001a7e6 <_wctomb_r>:
   1a7e6:	6501b783          	ld	a5,1616(gp) # 1f1d0 <__global_locale+0xe0>
   1a7ea:	8782                	jr	a5

000000000001a7ec <__ascii_wctomb>:
   1a7ec:	0006079b          	sext.w	a5,a2
   1a7f0:	cd91                	beqz	a1,1a80c <__ascii_wctomb+0x20>
   1a7f2:	0ff00713          	li	a4,255
   1a7f6:	00f76663          	bltu	a4,a5,1a802 <__ascii_wctomb+0x16>
   1a7fa:	00c58023          	sb	a2,0(a1)
   1a7fe:	4505                	li	a0,1
   1a800:	8082                	ret
   1a802:	08a00793          	li	a5,138
   1a806:	c11c                	sw	a5,0(a0)
   1a808:	557d                	li	a0,-1
   1a80a:	8082                	ret
   1a80c:	4501                	li	a0,0
   1a80e:	8082                	ret

000000000001a810 <abort>:
   1a810:	1141                	addi	sp,sp,-16
   1a812:	4519                	li	a0,6
   1a814:	e406                	sd	ra,8(sp)
   1a816:	1ae000ef          	jal	ra,1a9c4 <raise>
   1a81a:	4505                	li	a0,1
   1a81c:	3c0000ef          	jal	ra,1abdc <_exit>

000000000001a820 <_init_signal_r>:
   1a820:	51853783          	ld	a5,1304(a0)
   1a824:	c399                	beqz	a5,1a82a <_init_signal_r+0xa>
   1a826:	4501                	li	a0,0
   1a828:	8082                	ret
   1a82a:	1141                	addi	sp,sp,-16
   1a82c:	10000593          	li	a1,256
   1a830:	e022                	sd	s0,0(sp)
   1a832:	e406                	sd	ra,8(sp)
   1a834:	842a                	mv	s0,a0
   1a836:	a82fa0ef          	jal	ra,14ab8 <_malloc_r>
   1a83a:	50a43c23          	sd	a0,1304(s0)
   1a83e:	cd09                	beqz	a0,1a858 <_init_signal_r+0x38>
   1a840:	10050793          	addi	a5,a0,256
   1a844:	00053023          	sd	zero,0(a0)
   1a848:	0521                	addi	a0,a0,8
   1a84a:	fef51de3          	bne	a0,a5,1a844 <_init_signal_r+0x24>
   1a84e:	4501                	li	a0,0
   1a850:	60a2                	ld	ra,8(sp)
   1a852:	6402                	ld	s0,0(sp)
   1a854:	0141                	addi	sp,sp,16
   1a856:	8082                	ret
   1a858:	557d                	li	a0,-1
   1a85a:	bfdd                	j	1a850 <_init_signal_r+0x30>

000000000001a85c <_signal_r>:
   1a85c:	7179                	addi	sp,sp,-48
   1a85e:	ec26                	sd	s1,24(sp)
   1a860:	f406                	sd	ra,40(sp)
   1a862:	f022                	sd	s0,32(sp)
   1a864:	47fd                	li	a5,31
   1a866:	84aa                	mv	s1,a0
   1a868:	00b7ef63          	bltu	a5,a1,1a886 <_signal_r+0x2a>
   1a86c:	51853703          	ld	a4,1304(a0)
   1a870:	842e                	mv	s0,a1
   1a872:	c315                	beqz	a4,1a896 <_signal_r+0x3a>
   1a874:	040e                	slli	s0,s0,0x3
   1a876:	9722                	add	a4,a4,s0
   1a878:	6308                	ld	a0,0(a4)
   1a87a:	e310                	sd	a2,0(a4)
   1a87c:	70a2                	ld	ra,40(sp)
   1a87e:	7402                	ld	s0,32(sp)
   1a880:	64e2                	ld	s1,24(sp)
   1a882:	6145                	addi	sp,sp,48
   1a884:	8082                	ret
   1a886:	70a2                	ld	ra,40(sp)
   1a888:	7402                	ld	s0,32(sp)
   1a88a:	47d9                	li	a5,22
   1a88c:	c11c                	sw	a5,0(a0)
   1a88e:	64e2                	ld	s1,24(sp)
   1a890:	557d                	li	a0,-1
   1a892:	6145                	addi	sp,sp,48
   1a894:	8082                	ret
   1a896:	10000593          	li	a1,256
   1a89a:	e432                	sd	a2,8(sp)
   1a89c:	a1cfa0ef          	jal	ra,14ab8 <_malloc_r>
   1a8a0:	50a4bc23          	sd	a0,1304(s1)
   1a8a4:	872a                	mv	a4,a0
   1a8a6:	c919                	beqz	a0,1a8bc <_signal_r+0x60>
   1a8a8:	6622                	ld	a2,8(sp)
   1a8aa:	87aa                	mv	a5,a0
   1a8ac:	10050693          	addi	a3,a0,256
   1a8b0:	0007b023          	sd	zero,0(a5)
   1a8b4:	07a1                	addi	a5,a5,8
   1a8b6:	fef69de3          	bne	a3,a5,1a8b0 <_signal_r+0x54>
   1a8ba:	bf6d                	j	1a874 <_signal_r+0x18>
   1a8bc:	557d                	li	a0,-1
   1a8be:	bf7d                	j	1a87c <_signal_r+0x20>

000000000001a8c0 <_raise_r>:
   1a8c0:	1101                	addi	sp,sp,-32
   1a8c2:	e426                	sd	s1,8(sp)
   1a8c4:	ec06                	sd	ra,24(sp)
   1a8c6:	e822                	sd	s0,16(sp)
   1a8c8:	47fd                	li	a5,31
   1a8ca:	84aa                	mv	s1,a0
   1a8cc:	06b7e463          	bltu	a5,a1,1a934 <_raise_r+0x74>
   1a8d0:	51853783          	ld	a5,1304(a0)
   1a8d4:	842e                	mv	s0,a1
   1a8d6:	c795                	beqz	a5,1a902 <_raise_r+0x42>
   1a8d8:	00359713          	slli	a4,a1,0x3
   1a8dc:	97ba                	add	a5,a5,a4
   1a8de:	6398                	ld	a4,0(a5)
   1a8e0:	c30d                	beqz	a4,1a902 <_raise_r+0x42>
   1a8e2:	4685                	li	a3,1
   1a8e4:	04d70263          	beq	a4,a3,1a928 <_raise_r+0x68>
   1a8e8:	56fd                	li	a3,-1
   1a8ea:	02d70763          	beq	a4,a3,1a918 <_raise_r+0x58>
   1a8ee:	852e                	mv	a0,a1
   1a8f0:	0007b023          	sd	zero,0(a5)
   1a8f4:	9702                	jalr	a4
   1a8f6:	4501                	li	a0,0
   1a8f8:	60e2                	ld	ra,24(sp)
   1a8fa:	6442                	ld	s0,16(sp)
   1a8fc:	64a2                	ld	s1,8(sp)
   1a8fe:	6105                	addi	sp,sp,32
   1a900:	8082                	ret
   1a902:	8526                	mv	a0,s1
   1a904:	2aa000ef          	jal	ra,1abae <_getpid_r>
   1a908:	8622                	mv	a2,s0
   1a90a:	6442                	ld	s0,16(sp)
   1a90c:	60e2                	ld	ra,24(sp)
   1a90e:	85aa                	mv	a1,a0
   1a910:	8526                	mv	a0,s1
   1a912:	64a2                	ld	s1,8(sp)
   1a914:	6105                	addi	sp,sp,32
   1a916:	acb9                	j	1ab74 <_kill_r>
   1a918:	60e2                	ld	ra,24(sp)
   1a91a:	6442                	ld	s0,16(sp)
   1a91c:	47d9                	li	a5,22
   1a91e:	c11c                	sw	a5,0(a0)
   1a920:	64a2                	ld	s1,8(sp)
   1a922:	4505                	li	a0,1
   1a924:	6105                	addi	sp,sp,32
   1a926:	8082                	ret
   1a928:	60e2                	ld	ra,24(sp)
   1a92a:	6442                	ld	s0,16(sp)
   1a92c:	64a2                	ld	s1,8(sp)
   1a92e:	4501                	li	a0,0
   1a930:	6105                	addi	sp,sp,32
   1a932:	8082                	ret
   1a934:	47d9                	li	a5,22
   1a936:	c11c                	sw	a5,0(a0)
   1a938:	557d                	li	a0,-1
   1a93a:	bf7d                	j	1a8f8 <_raise_r+0x38>

000000000001a93c <__sigtramp_r>:
   1a93c:	47fd                	li	a5,31
   1a93e:	08b7e163          	bltu	a5,a1,1a9c0 <__sigtramp_r+0x84>
   1a942:	51853703          	ld	a4,1304(a0)
   1a946:	1101                	addi	sp,sp,-32
   1a948:	e822                	sd	s0,16(sp)
   1a94a:	e426                	sd	s1,8(sp)
   1a94c:	ec06                	sd	ra,24(sp)
   1a94e:	842e                	mv	s0,a1
   1a950:	84aa                	mv	s1,a0
   1a952:	cf05                	beqz	a4,1a98a <__sigtramp_r+0x4e>
   1a954:	00341793          	slli	a5,s0,0x3
   1a958:	973e                	add	a4,a4,a5
   1a95a:	631c                	ld	a5,0(a4)
   1a95c:	c38d                	beqz	a5,1a97e <__sigtramp_r+0x42>
   1a95e:	56fd                	li	a3,-1
   1a960:	04d78c63          	beq	a5,a3,1a9b8 <__sigtramp_r+0x7c>
   1a964:	4685                	li	a3,1
   1a966:	04d78363          	beq	a5,a3,1a9ac <__sigtramp_r+0x70>
   1a96a:	8522                	mv	a0,s0
   1a96c:	00073023          	sd	zero,0(a4)
   1a970:	9782                	jalr	a5
   1a972:	4501                	li	a0,0
   1a974:	60e2                	ld	ra,24(sp)
   1a976:	6442                	ld	s0,16(sp)
   1a978:	64a2                	ld	s1,8(sp)
   1a97a:	6105                	addi	sp,sp,32
   1a97c:	8082                	ret
   1a97e:	60e2                	ld	ra,24(sp)
   1a980:	6442                	ld	s0,16(sp)
   1a982:	64a2                	ld	s1,8(sp)
   1a984:	4505                	li	a0,1
   1a986:	6105                	addi	sp,sp,32
   1a988:	8082                	ret
   1a98a:	10000593          	li	a1,256
   1a98e:	92afa0ef          	jal	ra,14ab8 <_malloc_r>
   1a992:	50a4bc23          	sd	a0,1304(s1)
   1a996:	872a                	mv	a4,a0
   1a998:	c115                	beqz	a0,1a9bc <__sigtramp_r+0x80>
   1a99a:	87aa                	mv	a5,a0
   1a99c:	10050693          	addi	a3,a0,256
   1a9a0:	0007b023          	sd	zero,0(a5)
   1a9a4:	07a1                	addi	a5,a5,8
   1a9a6:	fed79de3          	bne	a5,a3,1a9a0 <__sigtramp_r+0x64>
   1a9aa:	b76d                	j	1a954 <__sigtramp_r+0x18>
   1a9ac:	60e2                	ld	ra,24(sp)
   1a9ae:	6442                	ld	s0,16(sp)
   1a9b0:	64a2                	ld	s1,8(sp)
   1a9b2:	450d                	li	a0,3
   1a9b4:	6105                	addi	sp,sp,32
   1a9b6:	8082                	ret
   1a9b8:	4509                	li	a0,2
   1a9ba:	bf6d                	j	1a974 <__sigtramp_r+0x38>
   1a9bc:	557d                	li	a0,-1
   1a9be:	bf5d                	j	1a974 <__sigtramp_r+0x38>
   1a9c0:	557d                	li	a0,-1
   1a9c2:	8082                	ret

000000000001a9c4 <raise>:
   1a9c4:	1101                	addi	sp,sp,-32
   1a9c6:	e426                	sd	s1,8(sp)
   1a9c8:	ec06                	sd	ra,24(sp)
   1a9ca:	e822                	sd	s0,16(sp)
   1a9cc:	47fd                	li	a5,31
   1a9ce:	7581b483          	ld	s1,1880(gp) # 1f2d8 <_impure_ptr>
   1a9d2:	06a7e363          	bltu	a5,a0,1aa38 <raise+0x74>
   1a9d6:	5184b783          	ld	a5,1304(s1)
   1a9da:	842a                	mv	s0,a0
   1a9dc:	c78d                	beqz	a5,1aa06 <raise+0x42>
   1a9de:	00351713          	slli	a4,a0,0x3
   1a9e2:	97ba                	add	a5,a5,a4
   1a9e4:	6398                	ld	a4,0(a5)
   1a9e6:	c305                	beqz	a4,1aa06 <raise+0x42>
   1a9e8:	4685                	li	a3,1
   1a9ea:	04d70163          	beq	a4,a3,1aa2c <raise+0x68>
   1a9ee:	56fd                	li	a3,-1
   1a9f0:	02d70663          	beq	a4,a3,1aa1c <raise+0x58>
   1a9f4:	0007b023          	sd	zero,0(a5)
   1a9f8:	9702                	jalr	a4
   1a9fa:	4501                	li	a0,0
   1a9fc:	60e2                	ld	ra,24(sp)
   1a9fe:	6442                	ld	s0,16(sp)
   1aa00:	64a2                	ld	s1,8(sp)
   1aa02:	6105                	addi	sp,sp,32
   1aa04:	8082                	ret
   1aa06:	8526                	mv	a0,s1
   1aa08:	1a6000ef          	jal	ra,1abae <_getpid_r>
   1aa0c:	8622                	mv	a2,s0
   1aa0e:	6442                	ld	s0,16(sp)
   1aa10:	60e2                	ld	ra,24(sp)
   1aa12:	85aa                	mv	a1,a0
   1aa14:	8526                	mv	a0,s1
   1aa16:	64a2                	ld	s1,8(sp)
   1aa18:	6105                	addi	sp,sp,32
   1aa1a:	aaa9                	j	1ab74 <_kill_r>
   1aa1c:	60e2                	ld	ra,24(sp)
   1aa1e:	6442                	ld	s0,16(sp)
   1aa20:	47d9                	li	a5,22
   1aa22:	c09c                	sw	a5,0(s1)
   1aa24:	4505                	li	a0,1
   1aa26:	64a2                	ld	s1,8(sp)
   1aa28:	6105                	addi	sp,sp,32
   1aa2a:	8082                	ret
   1aa2c:	60e2                	ld	ra,24(sp)
   1aa2e:	6442                	ld	s0,16(sp)
   1aa30:	64a2                	ld	s1,8(sp)
   1aa32:	4501                	li	a0,0
   1aa34:	6105                	addi	sp,sp,32
   1aa36:	8082                	ret
   1aa38:	47d9                	li	a5,22
   1aa3a:	c09c                	sw	a5,0(s1)
   1aa3c:	557d                	li	a0,-1
   1aa3e:	bf7d                	j	1a9fc <raise+0x38>

000000000001aa40 <signal>:
   1aa40:	1101                	addi	sp,sp,-32
   1aa42:	e04a                	sd	s2,0(sp)
   1aa44:	ec06                	sd	ra,24(sp)
   1aa46:	e822                	sd	s0,16(sp)
   1aa48:	e426                	sd	s1,8(sp)
   1aa4a:	47fd                	li	a5,31
   1aa4c:	7581b903          	ld	s2,1880(gp) # 1f2d8 <_impure_ptr>
   1aa50:	02a7e263          	bltu	a5,a0,1aa74 <signal+0x34>
   1aa54:	842a                	mv	s0,a0
   1aa56:	51893503          	ld	a0,1304(s2)
   1aa5a:	84ae                	mv	s1,a1
   1aa5c:	c515                	beqz	a0,1aa88 <signal+0x48>
   1aa5e:	040e                	slli	s0,s0,0x3
   1aa60:	008507b3          	add	a5,a0,s0
   1aa64:	6388                	ld	a0,0(a5)
   1aa66:	e384                	sd	s1,0(a5)
   1aa68:	60e2                	ld	ra,24(sp)
   1aa6a:	6442                	ld	s0,16(sp)
   1aa6c:	64a2                	ld	s1,8(sp)
   1aa6e:	6902                	ld	s2,0(sp)
   1aa70:	6105                	addi	sp,sp,32
   1aa72:	8082                	ret
   1aa74:	60e2                	ld	ra,24(sp)
   1aa76:	6442                	ld	s0,16(sp)
   1aa78:	47d9                	li	a5,22
   1aa7a:	00f92023          	sw	a5,0(s2)
   1aa7e:	64a2                	ld	s1,8(sp)
   1aa80:	6902                	ld	s2,0(sp)
   1aa82:	557d                	li	a0,-1
   1aa84:	6105                	addi	sp,sp,32
   1aa86:	8082                	ret
   1aa88:	10000593          	li	a1,256
   1aa8c:	854a                	mv	a0,s2
   1aa8e:	82afa0ef          	jal	ra,14ab8 <_malloc_r>
   1aa92:	50a93c23          	sd	a0,1304(s2)
   1aa96:	c911                	beqz	a0,1aaaa <signal+0x6a>
   1aa98:	87aa                	mv	a5,a0
   1aa9a:	10050713          	addi	a4,a0,256
   1aa9e:	0007b023          	sd	zero,0(a5)
   1aaa2:	07a1                	addi	a5,a5,8
   1aaa4:	fef71de3          	bne	a4,a5,1aa9e <signal+0x5e>
   1aaa8:	bf5d                	j	1aa5e <signal+0x1e>
   1aaaa:	557d                	li	a0,-1
   1aaac:	bf75                	j	1aa68 <signal+0x28>

000000000001aaae <_init_signal>:
   1aaae:	1141                	addi	sp,sp,-16
   1aab0:	e022                	sd	s0,0(sp)
   1aab2:	7581b403          	ld	s0,1880(gp) # 1f2d8 <_impure_ptr>
   1aab6:	e406                	sd	ra,8(sp)
   1aab8:	51843783          	ld	a5,1304(s0)
   1aabc:	c791                	beqz	a5,1aac8 <_init_signal+0x1a>
   1aabe:	4501                	li	a0,0
   1aac0:	60a2                	ld	ra,8(sp)
   1aac2:	6402                	ld	s0,0(sp)
   1aac4:	0141                	addi	sp,sp,16
   1aac6:	8082                	ret
   1aac8:	10000593          	li	a1,256
   1aacc:	8522                	mv	a0,s0
   1aace:	febf90ef          	jal	ra,14ab8 <_malloc_r>
   1aad2:	50a43c23          	sd	a0,1304(s0)
   1aad6:	c909                	beqz	a0,1aae8 <_init_signal+0x3a>
   1aad8:	10050793          	addi	a5,a0,256
   1aadc:	00053023          	sd	zero,0(a0)
   1aae0:	0521                	addi	a0,a0,8
   1aae2:	fef51de3          	bne	a0,a5,1aadc <_init_signal+0x2e>
   1aae6:	bfe1                	j	1aabe <_init_signal+0x10>
   1aae8:	557d                	li	a0,-1
   1aaea:	bfd9                	j	1aac0 <_init_signal+0x12>

000000000001aaec <__sigtramp>:
   1aaec:	1101                	addi	sp,sp,-32
   1aaee:	e426                	sd	s1,8(sp)
   1aaf0:	ec06                	sd	ra,24(sp)
   1aaf2:	e822                	sd	s0,16(sp)
   1aaf4:	47fd                	li	a5,31
   1aaf6:	7581b483          	ld	s1,1880(gp) # 1f2d8 <_impure_ptr>
   1aafa:	06a7eb63          	bltu	a5,a0,1ab70 <__sigtramp+0x84>
   1aafe:	5184b703          	ld	a4,1304(s1)
   1ab02:	842a                	mv	s0,a0
   1ab04:	cf05                	beqz	a4,1ab3c <__sigtramp+0x50>
   1ab06:	00341793          	slli	a5,s0,0x3
   1ab0a:	973e                	add	a4,a4,a5
   1ab0c:	631c                	ld	a5,0(a4)
   1ab0e:	c38d                	beqz	a5,1ab30 <__sigtramp+0x44>
   1ab10:	56fd                	li	a3,-1
   1ab12:	04d78d63          	beq	a5,a3,1ab6c <__sigtramp+0x80>
   1ab16:	4685                	li	a3,1
   1ab18:	04d78463          	beq	a5,a3,1ab60 <__sigtramp+0x74>
   1ab1c:	8522                	mv	a0,s0
   1ab1e:	00073023          	sd	zero,0(a4)
   1ab22:	9782                	jalr	a5
   1ab24:	4501                	li	a0,0
   1ab26:	60e2                	ld	ra,24(sp)
   1ab28:	6442                	ld	s0,16(sp)
   1ab2a:	64a2                	ld	s1,8(sp)
   1ab2c:	6105                	addi	sp,sp,32
   1ab2e:	8082                	ret
   1ab30:	60e2                	ld	ra,24(sp)
   1ab32:	6442                	ld	s0,16(sp)
   1ab34:	64a2                	ld	s1,8(sp)
   1ab36:	4505                	li	a0,1
   1ab38:	6105                	addi	sp,sp,32
   1ab3a:	8082                	ret
   1ab3c:	10000593          	li	a1,256
   1ab40:	8526                	mv	a0,s1
   1ab42:	f77f90ef          	jal	ra,14ab8 <_malloc_r>
   1ab46:	50a4bc23          	sd	a0,1304(s1)
   1ab4a:	872a                	mv	a4,a0
   1ab4c:	c115                	beqz	a0,1ab70 <__sigtramp+0x84>
   1ab4e:	87aa                	mv	a5,a0
   1ab50:	10050693          	addi	a3,a0,256
   1ab54:	0007b023          	sd	zero,0(a5)
   1ab58:	07a1                	addi	a5,a5,8
   1ab5a:	fed79de3          	bne	a5,a3,1ab54 <__sigtramp+0x68>
   1ab5e:	b765                	j	1ab06 <__sigtramp+0x1a>
   1ab60:	60e2                	ld	ra,24(sp)
   1ab62:	6442                	ld	s0,16(sp)
   1ab64:	64a2                	ld	s1,8(sp)
   1ab66:	450d                	li	a0,3
   1ab68:	6105                	addi	sp,sp,32
   1ab6a:	8082                	ret
   1ab6c:	4509                	li	a0,2
   1ab6e:	bf65                	j	1ab26 <__sigtramp+0x3a>
   1ab70:	557d                	li	a0,-1
   1ab72:	bf55                	j	1ab26 <__sigtramp+0x3a>

000000000001ab74 <_kill_r>:
   1ab74:	1101                	addi	sp,sp,-32
   1ab76:	872e                	mv	a4,a1
   1ab78:	e822                	sd	s0,16(sp)
   1ab7a:	e426                	sd	s1,8(sp)
   1ab7c:	842a                	mv	s0,a0
   1ab7e:	85b2                	mv	a1,a2
   1ab80:	853a                	mv	a0,a4
   1ab82:	ec06                	sd	ra,24(sp)
   1ab84:	7801a823          	sw	zero,1936(gp) # 1f310 <errno>
   1ab88:	0e0000ef          	jal	ra,1ac68 <_kill>
   1ab8c:	57fd                	li	a5,-1
   1ab8e:	00f50763          	beq	a0,a5,1ab9c <_kill_r+0x28>
   1ab92:	60e2                	ld	ra,24(sp)
   1ab94:	6442                	ld	s0,16(sp)
   1ab96:	64a2                	ld	s1,8(sp)
   1ab98:	6105                	addi	sp,sp,32
   1ab9a:	8082                	ret
   1ab9c:	7901a783          	lw	a5,1936(gp) # 1f310 <errno>
   1aba0:	dbed                	beqz	a5,1ab92 <_kill_r+0x1e>
   1aba2:	60e2                	ld	ra,24(sp)
   1aba4:	c01c                	sw	a5,0(s0)
   1aba6:	6442                	ld	s0,16(sp)
   1aba8:	64a2                	ld	s1,8(sp)
   1abaa:	6105                	addi	sp,sp,32
   1abac:	8082                	ret

000000000001abae <_getpid_r>:
   1abae:	a841                	j	1ac3e <_getpid>

000000000001abb0 <_close>:
   1abb0:	1141                	addi	sp,sp,-16
   1abb2:	e406                	sd	ra,8(sp)
   1abb4:	e022                	sd	s0,0(sp)
   1abb6:	03900893          	li	a7,57
   1abba:	00000073          	ecall
   1abbe:	842a                	mv	s0,a0
   1abc0:	00054763          	bltz	a0,1abce <_close+0x1e>
   1abc4:	2501                	sext.w	a0,a0
   1abc6:	60a2                	ld	ra,8(sp)
   1abc8:	6402                	ld	s0,0(sp)
   1abca:	0141                	addi	sp,sp,16
   1abcc:	8082                	ret
   1abce:	fadfd0ef          	jal	ra,18b7a <__errno>
   1abd2:	4080043b          	negw	s0,s0
   1abd6:	c100                	sw	s0,0(a0)
   1abd8:	557d                	li	a0,-1
   1abda:	b7f5                	j	1abc6 <_close+0x16>

000000000001abdc <_exit>:
   1abdc:	05d00893          	li	a7,93
   1abe0:	00000073          	ecall
   1abe4:	00054363          	bltz	a0,1abea <_exit+0xe>
   1abe8:	a001                	j	1abe8 <_exit+0xc>
   1abea:	1141                	addi	sp,sp,-16
   1abec:	e022                	sd	s0,0(sp)
   1abee:	842a                	mv	s0,a0
   1abf0:	e406                	sd	ra,8(sp)
   1abf2:	4080043b          	negw	s0,s0
   1abf6:	f85fd0ef          	jal	ra,18b7a <__errno>
   1abfa:	c100                	sw	s0,0(a0)
   1abfc:	a001                	j	1abfc <_exit+0x20>

000000000001abfe <_fstat>:
   1abfe:	7135                	addi	sp,sp,-160
   1ac00:	e526                	sd	s1,136(sp)
   1ac02:	ed06                	sd	ra,152(sp)
   1ac04:	84ae                	mv	s1,a1
   1ac06:	e922                	sd	s0,144(sp)
   1ac08:	05000893          	li	a7,80
   1ac0c:	858a                	mv	a1,sp
   1ac0e:	00000073          	ecall
   1ac12:	842a                	mv	s0,a0
   1ac14:	00054e63          	bltz	a0,1ac30 <_fstat+0x32>
   1ac18:	0005041b          	sext.w	s0,a0
   1ac1c:	8526                	mv	a0,s1
   1ac1e:	858a                	mv	a1,sp
   1ac20:	134000ef          	jal	ra,1ad54 <_conv_stat>
   1ac24:	60ea                	ld	ra,152(sp)
   1ac26:	8522                	mv	a0,s0
   1ac28:	644a                	ld	s0,144(sp)
   1ac2a:	64aa                	ld	s1,136(sp)
   1ac2c:	610d                	addi	sp,sp,160
   1ac2e:	8082                	ret
   1ac30:	4080043b          	negw	s0,s0
   1ac34:	f47fd0ef          	jal	ra,18b7a <__errno>
   1ac38:	c100                	sw	s0,0(a0)
   1ac3a:	547d                	li	s0,-1
   1ac3c:	b7c5                	j	1ac1c <_fstat+0x1e>

000000000001ac3e <_getpid>:
   1ac3e:	4505                	li	a0,1
   1ac40:	8082                	ret

000000000001ac42 <_isatty>:
   1ac42:	7119                	addi	sp,sp,-128
   1ac44:	002c                	addi	a1,sp,8
   1ac46:	fc86                	sd	ra,120(sp)
   1ac48:	fb7ff0ef          	jal	ra,1abfe <_fstat>
   1ac4c:	57fd                	li	a5,-1
   1ac4e:	00f50963          	beq	a0,a5,1ac60 <_isatty+0x1e>
   1ac52:	4532                	lw	a0,12(sp)
   1ac54:	70e6                	ld	ra,120(sp)
   1ac56:	40d5551b          	sraiw	a0,a0,0xd
   1ac5a:	8905                	andi	a0,a0,1
   1ac5c:	6109                	addi	sp,sp,128
   1ac5e:	8082                	ret
   1ac60:	70e6                	ld	ra,120(sp)
   1ac62:	4501                	li	a0,0
   1ac64:	6109                	addi	sp,sp,128
   1ac66:	8082                	ret

000000000001ac68 <_kill>:
   1ac68:	1141                	addi	sp,sp,-16
   1ac6a:	e406                	sd	ra,8(sp)
   1ac6c:	f0ffd0ef          	jal	ra,18b7a <__errno>
   1ac70:	60a2                	ld	ra,8(sp)
   1ac72:	47d9                	li	a5,22
   1ac74:	c11c                	sw	a5,0(a0)
   1ac76:	557d                	li	a0,-1
   1ac78:	0141                	addi	sp,sp,16
   1ac7a:	8082                	ret

000000000001ac7c <_lseek>:
   1ac7c:	1141                	addi	sp,sp,-16
   1ac7e:	e406                	sd	ra,8(sp)
   1ac80:	e022                	sd	s0,0(sp)
   1ac82:	03e00893          	li	a7,62
   1ac86:	00000073          	ecall
   1ac8a:	842a                	mv	s0,a0
   1ac8c:	00054763          	bltz	a0,1ac9a <_lseek+0x1e>
   1ac90:	60a2                	ld	ra,8(sp)
   1ac92:	8522                	mv	a0,s0
   1ac94:	6402                	ld	s0,0(sp)
   1ac96:	0141                	addi	sp,sp,16
   1ac98:	8082                	ret
   1ac9a:	4080043b          	negw	s0,s0
   1ac9e:	eddfd0ef          	jal	ra,18b7a <__errno>
   1aca2:	c100                	sw	s0,0(a0)
   1aca4:	547d                	li	s0,-1
   1aca6:	b7ed                	j	1ac90 <_lseek+0x14>

000000000001aca8 <_read>:
   1aca8:	1141                	addi	sp,sp,-16
   1acaa:	e406                	sd	ra,8(sp)
   1acac:	e022                	sd	s0,0(sp)
   1acae:	03f00893          	li	a7,63
   1acb2:	00000073          	ecall
   1acb6:	842a                	mv	s0,a0
   1acb8:	00054763          	bltz	a0,1acc6 <_read+0x1e>
   1acbc:	60a2                	ld	ra,8(sp)
   1acbe:	8522                	mv	a0,s0
   1acc0:	6402                	ld	s0,0(sp)
   1acc2:	0141                	addi	sp,sp,16
   1acc4:	8082                	ret
   1acc6:	4080043b          	negw	s0,s0
   1acca:	eb1fd0ef          	jal	ra,18b7a <__errno>
   1acce:	c100                	sw	s0,0(a0)
   1acd0:	547d                	li	s0,-1
   1acd2:	b7ed                	j	1acbc <_read+0x14>

000000000001acd4 <_sbrk>:
   1acd4:	7981b703          	ld	a4,1944(gp) # 1f318 <heap_end.0>
   1acd8:	1141                	addi	sp,sp,-16
   1acda:	e406                	sd	ra,8(sp)
   1acdc:	87aa                	mv	a5,a0
   1acde:	ef01                	bnez	a4,1acf6 <_sbrk+0x22>
   1ace0:	0d600893          	li	a7,214
   1ace4:	4501                	li	a0,0
   1ace6:	00000073          	ecall
   1acea:	567d                	li	a2,-1
   1acec:	872a                	mv	a4,a0
   1acee:	02c50563          	beq	a0,a2,1ad18 <_sbrk+0x44>
   1acf2:	78a1bc23          	sd	a0,1944(gp) # 1f318 <heap_end.0>
   1acf6:	0d600893          	li	a7,214
   1acfa:	00e78533          	add	a0,a5,a4
   1acfe:	00000073          	ecall
   1ad02:	7981b703          	ld	a4,1944(gp) # 1f318 <heap_end.0>
   1ad06:	97ba                	add	a5,a5,a4
   1ad08:	00f51863          	bne	a0,a5,1ad18 <_sbrk+0x44>
   1ad0c:	60a2                	ld	ra,8(sp)
   1ad0e:	78a1bc23          	sd	a0,1944(gp) # 1f318 <heap_end.0>
   1ad12:	853a                	mv	a0,a4
   1ad14:	0141                	addi	sp,sp,16
   1ad16:	8082                	ret
   1ad18:	e63fd0ef          	jal	ra,18b7a <__errno>
   1ad1c:	60a2                	ld	ra,8(sp)
   1ad1e:	47b1                	li	a5,12
   1ad20:	c11c                	sw	a5,0(a0)
   1ad22:	557d                	li	a0,-1
   1ad24:	0141                	addi	sp,sp,16
   1ad26:	8082                	ret

000000000001ad28 <_write>:
   1ad28:	1141                	addi	sp,sp,-16
   1ad2a:	e406                	sd	ra,8(sp)
   1ad2c:	e022                	sd	s0,0(sp)
   1ad2e:	04000893          	li	a7,64
   1ad32:	00000073          	ecall
   1ad36:	842a                	mv	s0,a0
   1ad38:	00054763          	bltz	a0,1ad46 <_write+0x1e>
   1ad3c:	60a2                	ld	ra,8(sp)
   1ad3e:	8522                	mv	a0,s0
   1ad40:	6402                	ld	s0,0(sp)
   1ad42:	0141                	addi	sp,sp,16
   1ad44:	8082                	ret
   1ad46:	4080043b          	negw	s0,s0
   1ad4a:	e31fd0ef          	jal	ra,18b7a <__errno>
   1ad4e:	c100                	sw	s0,0(a0)
   1ad50:	547d                	li	s0,-1
   1ad52:	b7ed                	j	1ad3c <_write+0x14>

000000000001ad54 <_conv_stat>:
   1ad54:	0005b383          	ld	t2,0(a1)
   1ad58:	0085b283          	ld	t0,8(a1)
   1ad5c:	0105af83          	lw	t6,16(a1)
   1ad60:	0145af03          	lw	t5,20(a1)
   1ad64:	0185ae83          	lw	t4,24(a1)
   1ad68:	01c5ae03          	lw	t3,28(a1)
   1ad6c:	0205b303          	ld	t1,32(a1)
   1ad70:	0305b883          	ld	a7,48(a1)
   1ad74:	0405b803          	ld	a6,64(a1)
   1ad78:	5d90                	lw	a2,56(a1)
   1ad7a:	65b4                	ld	a3,72(a1)
   1ad7c:	6db8                	ld	a4,88(a1)
   1ad7e:	75bc                	ld	a5,104(a1)
   1ad80:	00751023          	sh	t2,0(a0)
   1ad84:	00551123          	sh	t0,2(a0)
   1ad88:	01f52223          	sw	t6,4(a0)
   1ad8c:	01e51423          	sh	t5,8(a0)
   1ad90:	01d51523          	sh	t4,10(a0)
   1ad94:	01c51623          	sh	t3,12(a0)
   1ad98:	00651723          	sh	t1,14(a0)
   1ad9c:	01153823          	sd	a7,16(a0)
   1ada0:	05053823          	sd	a6,80(a0)
   1ada4:	e530                	sd	a2,72(a0)
   1ada6:	ed14                	sd	a3,24(a0)
   1ada8:	f518                	sd	a4,40(a0)
   1adaa:	fd1c                	sd	a5,56(a0)
   1adac:	8082                	ret

000000000001adae <__eqtf2>:
   1adae:	882a                	mv	a6,a0
   1adb0:	002027f3          	frrm	a5
   1adb4:	6521                	lui	a0,0x8
   1adb6:	0305d893          	srli	a7,a1,0x30
   1adba:	157d                	addi	a0,a0,-1
   1adbc:	57fd                	li	a5,-1
   1adbe:	83c1                	srli	a5,a5,0x10
   1adc0:	0306d313          	srli	t1,a3,0x30
   1adc4:	00a8f8b3          	and	a7,a7,a0
   1adc8:	00f5f733          	and	a4,a1,a5
   1adcc:	00a37333          	and	t1,t1,a0
   1add0:	8ff5                	and	a5,a5,a3
   1add2:	91fd                	srli	a1,a1,0x3f
   1add4:	92fd                	srli	a3,a3,0x3f
   1add6:	00a89863          	bne	a7,a0,1ade6 <__eqtf2+0x38>
   1adda:	01076533          	or	a0,a4,a6
   1adde:	e10d                	bnez	a0,1ae00 <__eqtf2+0x52>
   1ade0:	03131f63          	bne	t1,a7,1ae1e <__eqtf2+0x70>
   1ade4:	a019                	j	1adea <__eqtf2+0x3c>
   1ade6:	02a31e63          	bne	t1,a0,1ae22 <__eqtf2+0x74>
   1adea:	00c7e533          	or	a0,a5,a2
   1adee:	c915                	beqz	a0,1ae22 <__eqtf2+0x74>
   1adf0:	66a1                	lui	a3,0x8
   1adf2:	16fd                	addi	a3,a3,-1
   1adf4:	00d89f63          	bne	a7,a3,1ae12 <__eqtf2+0x64>
   1adf8:	01076833          	or	a6,a4,a6
   1adfc:	00080b63          	beqz	a6,1ae12 <__eqtf2+0x64>
   1ae00:	933d                	srli	a4,a4,0x2f
   1ae02:	c331                	beqz	a4,1ae46 <__eqtf2+0x98>
   1ae04:	6721                	lui	a4,0x8
   1ae06:	177d                	addi	a4,a4,-1
   1ae08:	4505                	li	a0,1
   1ae0a:	00e31b63          	bne	t1,a4,1ae20 <__eqtf2+0x72>
   1ae0e:	8e5d                	or	a2,a2,a5
   1ae10:	ca01                	beqz	a2,1ae20 <__eqtf2+0x72>
   1ae12:	93bd                	srli	a5,a5,0x2f
   1ae14:	0017c793          	xori	a5,a5,1
   1ae18:	00479713          	slli	a4,a5,0x4
   1ae1c:	e795                	bnez	a5,1ae48 <__eqtf2+0x9a>
   1ae1e:	4505                	li	a0,1
   1ae20:	8082                	ret
   1ae22:	4505                	li	a0,1
   1ae24:	fe689ee3          	bne	a7,t1,1ae20 <__eqtf2+0x72>
   1ae28:	fef71ce3          	bne	a4,a5,1ae20 <__eqtf2+0x72>
   1ae2c:	fec81ae3          	bne	a6,a2,1ae20 <__eqtf2+0x72>
   1ae30:	00d58963          	beq	a1,a3,1ae42 <__eqtf2+0x94>
   1ae34:	fe0896e3          	bnez	a7,1ae20 <__eqtf2+0x72>
   1ae38:	01076733          	or	a4,a4,a6
   1ae3c:	00e03533          	snez	a0,a4
   1ae40:	8082                	ret
   1ae42:	4501                	li	a0,0
   1ae44:	8082                	ret
   1ae46:	4741                	li	a4,16
   1ae48:	00172073          	csrs	fflags,a4
   1ae4c:	bfc9                	j	1ae1e <__eqtf2+0x70>

000000000001ae4e <__getf2>:
   1ae4e:	88aa                	mv	a7,a0
   1ae50:	002027f3          	frrm	a5
   1ae54:	6321                	lui	t1,0x8
   1ae56:	137d                	addi	t1,t1,-1
   1ae58:	57fd                	li	a5,-1
   1ae5a:	0305d813          	srli	a6,a1,0x30
   1ae5e:	83c1                	srli	a5,a5,0x10
   1ae60:	0306d713          	srli	a4,a3,0x30
   1ae64:	00687833          	and	a6,a6,t1
   1ae68:	00f5fe33          	and	t3,a1,a5
   1ae6c:	03f5d513          	srli	a0,a1,0x3f
   1ae70:	8ff5                	and	a5,a5,a3
   1ae72:	00677733          	and	a4,a4,t1
   1ae76:	92fd                	srli	a3,a3,0x3f
   1ae78:	00681963          	bne	a6,t1,1ae8a <__getf2+0x3c>
   1ae7c:	011e65b3          	or	a1,t3,a7
   1ae80:	c5ad                	beqz	a1,1aeea <__getf2+0x9c>
   1ae82:	00186073          	csrsi	fflags,16
   1ae86:	5579                	li	a0,-2
   1ae88:	8082                	ret
   1ae8a:	00671563          	bne	a4,t1,1ae94 <__getf2+0x46>
   1ae8e:	00c7e5b3          	or	a1,a5,a2
   1ae92:	f9e5                	bnez	a1,1ae82 <__getf2+0x34>
   1ae94:	04081d63          	bnez	a6,1aeee <__getf2+0xa0>
   1ae98:	011e65b3          	or	a1,t3,a7
   1ae9c:	0015b593          	seqz	a1,a1
   1aea0:	eb0d                	bnez	a4,1aed2 <__getf2+0x84>
   1aea2:	00c7e333          	or	t1,a5,a2
   1aea6:	02031663          	bnez	t1,1aed2 <__getf2+0x84>
   1aeaa:	e185                	bnez	a1,1aeca <__getf2+0x7c>
   1aeac:	c10d                	beqz	a0,1aece <__getf2+0x80>
   1aeae:	557d                	li	a0,-1
   1aeb0:	8082                	ret
   1aeb2:	557d                	li	a0,-1
   1aeb4:	c69d                	beqz	a3,1aee2 <__getf2+0x94>
   1aeb6:	8536                	mv	a0,a3
   1aeb8:	8082                	ret
   1aeba:	ffc7e9e3          	bltu	a5,t3,1aeac <__getf2+0x5e>
   1aebe:	02fe1363          	bne	t3,a5,1aee4 <__getf2+0x96>
   1aec2:	ff1665e3          	bltu	a2,a7,1aeac <__getf2+0x5e>
   1aec6:	00c8ed63          	bltu	a7,a2,1aee0 <__getf2+0x92>
   1aeca:	4501                	li	a0,0
   1aecc:	8082                	ret
   1aece:	4505                	li	a0,1
   1aed0:	8082                	ret
   1aed2:	f1e5                	bnez	a1,1aeb2 <__getf2+0x64>
   1aed4:	fcd51ce3          	bne	a0,a3,1aeac <__getf2+0x5e>
   1aed8:	fd074ae3          	blt	a4,a6,1aeac <__getf2+0x5e>
   1aedc:	fce85fe3          	bge	a6,a4,1aeba <__getf2+0x6c>
   1aee0:	d579                	beqz	a0,1aeae <__getf2+0x60>
   1aee2:	8082                	ret
   1aee4:	fefe6ee3          	bltu	t3,a5,1aee0 <__getf2+0x92>
   1aee8:	b7cd                	j	1aeca <__getf2+0x7c>
   1aeea:	fb0702e3          	beq	a4,a6,1ae8e <__getf2+0x40>
   1aeee:	f37d                	bnez	a4,1aed4 <__getf2+0x86>
   1aef0:	4581                	li	a1,0
   1aef2:	bf45                	j	1aea2 <__getf2+0x54>

000000000001aef4 <__letf2>:
   1aef4:	88aa                	mv	a7,a0
   1aef6:	002027f3          	frrm	a5
   1aefa:	6321                	lui	t1,0x8
   1aefc:	137d                	addi	t1,t1,-1
   1aefe:	57fd                	li	a5,-1
   1af00:	0305d813          	srli	a6,a1,0x30
   1af04:	83c1                	srli	a5,a5,0x10
   1af06:	0306d713          	srli	a4,a3,0x30
   1af0a:	00687833          	and	a6,a6,t1
   1af0e:	00f5fe33          	and	t3,a1,a5
   1af12:	03f5d513          	srli	a0,a1,0x3f
   1af16:	8ff5                	and	a5,a5,a3
   1af18:	00677733          	and	a4,a4,t1
   1af1c:	92fd                	srli	a3,a3,0x3f
   1af1e:	00681963          	bne	a6,t1,1af30 <__letf2+0x3c>
   1af22:	011e65b3          	or	a1,t3,a7
   1af26:	c5ad                	beqz	a1,1af90 <__letf2+0x9c>
   1af28:	00186073          	csrsi	fflags,16
   1af2c:	4509                	li	a0,2
   1af2e:	8082                	ret
   1af30:	00671563          	bne	a4,t1,1af3a <__letf2+0x46>
   1af34:	00c7e5b3          	or	a1,a5,a2
   1af38:	f9e5                	bnez	a1,1af28 <__letf2+0x34>
   1af3a:	04081d63          	bnez	a6,1af94 <__letf2+0xa0>
   1af3e:	011e65b3          	or	a1,t3,a7
   1af42:	0015b593          	seqz	a1,a1
   1af46:	eb0d                	bnez	a4,1af78 <__letf2+0x84>
   1af48:	00c7e333          	or	t1,a5,a2
   1af4c:	02031663          	bnez	t1,1af78 <__letf2+0x84>
   1af50:	e185                	bnez	a1,1af70 <__letf2+0x7c>
   1af52:	c10d                	beqz	a0,1af74 <__letf2+0x80>
   1af54:	557d                	li	a0,-1
   1af56:	8082                	ret
   1af58:	557d                	li	a0,-1
   1af5a:	c69d                	beqz	a3,1af88 <__letf2+0x94>
   1af5c:	8536                	mv	a0,a3
   1af5e:	8082                	ret
   1af60:	ffc7e9e3          	bltu	a5,t3,1af52 <__letf2+0x5e>
   1af64:	02fe1363          	bne	t3,a5,1af8a <__letf2+0x96>
   1af68:	ff1665e3          	bltu	a2,a7,1af52 <__letf2+0x5e>
   1af6c:	00c8ed63          	bltu	a7,a2,1af86 <__letf2+0x92>
   1af70:	4501                	li	a0,0
   1af72:	8082                	ret
   1af74:	4505                	li	a0,1
   1af76:	8082                	ret
   1af78:	f1e5                	bnez	a1,1af58 <__letf2+0x64>
   1af7a:	fcd51ce3          	bne	a0,a3,1af52 <__letf2+0x5e>
   1af7e:	fd074ae3          	blt	a4,a6,1af52 <__letf2+0x5e>
   1af82:	fce85fe3          	bge	a6,a4,1af60 <__letf2+0x6c>
   1af86:	d579                	beqz	a0,1af54 <__letf2+0x60>
   1af88:	8082                	ret
   1af8a:	fefe6ee3          	bltu	t3,a5,1af86 <__letf2+0x92>
   1af8e:	b7cd                	j	1af70 <__letf2+0x7c>
   1af90:	fb0702e3          	beq	a4,a6,1af34 <__letf2+0x40>
   1af94:	f37d                	bnez	a4,1af7a <__letf2+0x86>
   1af96:	4581                	li	a1,0
   1af98:	bf45                	j	1af48 <__letf2+0x54>

000000000001af9a <__multf3>:
   1af9a:	711d                	addi	sp,sp,-96
   1af9c:	e8a2                	sd	s0,80(sp)
   1af9e:	f456                	sd	s5,40(sp)
   1afa0:	e862                	sd	s8,16(sp)
   1afa2:	ec86                	sd	ra,88(sp)
   1afa4:	e4a6                	sd	s1,72(sp)
   1afa6:	e0ca                	sd	s2,64(sp)
   1afa8:	fc4e                	sd	s3,56(sp)
   1afaa:	f852                	sd	s4,48(sp)
   1afac:	f05a                	sd	s6,32(sp)
   1afae:	ec5e                	sd	s7,24(sp)
   1afb0:	e466                	sd	s9,8(sp)
   1afb2:	842a                	mv	s0,a0
   1afb4:	8c32                	mv	s8,a2
   1afb6:	8ab6                	mv	s5,a3
   1afb8:	00202973          	frrm	s2
   1afbc:	6721                	lui	a4,0x8
   1afbe:	0305d793          	srli	a5,a1,0x30
   1afc2:	177d                	addi	a4,a4,-1
   1afc4:	01059993          	slli	s3,a1,0x10
   1afc8:	8ff9                	and	a5,a5,a4
   1afca:	2901                	sext.w	s2,s2
   1afcc:	0109d993          	srli	s3,s3,0x10
   1afd0:	03f5db13          	srli	s6,a1,0x3f
   1afd4:	c795                	beqz	a5,1b000 <__multf3+0x66>
   1afd6:	00078b9b          	sext.w	s7,a5
   1afda:	08e78463          	beq	a5,a4,1b062 <__multf3+0xc8>
   1afde:	098e                	slli	s3,s3,0x3
   1afe0:	03d55713          	srli	a4,a0,0x3d
   1afe4:	01376733          	or	a4,a4,s3
   1afe8:	7bf1                	lui	s7,0xffffc
   1afea:	4985                	li	s3,1
   1afec:	19ce                	slli	s3,s3,0x33
   1afee:	0b85                	addi	s7,s7,1
   1aff0:	013769b3          	or	s3,a4,s3
   1aff4:	00351a13          	slli	s4,a0,0x3
   1aff8:	9bbe                	add	s7,s7,a5
   1affa:	4c81                	li	s9,0
   1affc:	4481                	li	s1,0
   1affe:	a8b5                	j	1b07a <__multf3+0xe0>
   1b000:	00a9ea33          	or	s4,s3,a0
   1b004:	2c0a0263          	beqz	s4,1b2c8 <__multf3+0x32e>
   1b008:	04098263          	beqz	s3,1b04c <__multf3+0xb2>
   1b00c:	854e                	mv	a0,s3
   1b00e:	20a010ef          	jal	ra,1c218 <__clzdi2>
   1b012:	0005079b          	sext.w	a5,a0
   1b016:	ff178693          	addi	a3,a5,-15
   1b01a:	03c00613          	li	a2,60
   1b01e:	0006871b          	sext.w	a4,a3
   1b022:	02d64a63          	blt	a2,a3,1b056 <__multf3+0xbc>
   1b026:	03d00693          	li	a3,61
   1b02a:	00370a1b          	addiw	s4,a4,3
   1b02e:	40e6873b          	subw	a4,a3,a4
   1b032:	014999b3          	sll	s3,s3,s4
   1b036:	00e45733          	srl	a4,s0,a4
   1b03a:	013769b3          	or	s3,a4,s3
   1b03e:	01441a33          	sll	s4,s0,s4
   1b042:	7bf1                	lui	s7,0xffffc
   1b044:	0bc5                	addi	s7,s7,17
   1b046:	40fb8bb3          	sub	s7,s7,a5
   1b04a:	bf45                	j	1affa <__multf3+0x60>
   1b04c:	1cc010ef          	jal	ra,1c218 <__clzdi2>
   1b050:	0405079b          	addiw	a5,a0,64
   1b054:	b7c9                	j	1b016 <__multf3+0x7c>
   1b056:	fc37071b          	addiw	a4,a4,-61
   1b05a:	00e419b3          	sll	s3,s0,a4
   1b05e:	4a01                	li	s4,0
   1b060:	b7cd                	j	1b042 <__multf3+0xa8>
   1b062:	00a9ea33          	or	s4,s3,a0
   1b066:	260a0563          	beqz	s4,1b2d0 <__multf3+0x336>
   1b06a:	02f9d493          	srli	s1,s3,0x2f
   1b06e:	0014c493          	xori	s1,s1,1
   1b072:	8885                	andi	s1,s1,1
   1b074:	0492                	slli	s1,s1,0x4
   1b076:	8a2a                	mv	s4,a0
   1b078:	4c8d                	li	s9,3
   1b07a:	66a1                	lui	a3,0x8
   1b07c:	030ad613          	srli	a2,s5,0x30
   1b080:	16fd                	addi	a3,a3,-1
   1b082:	010a9413          	slli	s0,s5,0x10
   1b086:	8e75                	and	a2,a2,a3
   1b088:	87e2                	mv	a5,s8
   1b08a:	8041                	srli	s0,s0,0x10
   1b08c:	03fada93          	srli	s5,s5,0x3f
   1b090:	24060363          	beqz	a2,1b2d6 <__multf3+0x33c>
   1b094:	0006071b          	sext.w	a4,a2
   1b098:	28d60c63          	beq	a2,a3,1b330 <__multf3+0x396>
   1b09c:	040e                	slli	s0,s0,0x3
   1b09e:	03dc5713          	srli	a4,s8,0x3d
   1b0a2:	8f41                	or	a4,a4,s0
   1b0a4:	4405                	li	s0,1
   1b0a6:	144e                	slli	s0,s0,0x33
   1b0a8:	8c59                	or	s0,s0,a4
   1b0aa:	7771                	lui	a4,0xffffc
   1b0ac:	0705                	addi	a4,a4,1
   1b0ae:	003c1793          	slli	a5,s8,0x3
   1b0b2:	9732                	add	a4,a4,a2
   1b0b4:	4881                	li	a7,0
   1b0b6:	017706b3          	add	a3,a4,s7
   1b0ba:	002c9713          	slli	a4,s9,0x2
   1b0be:	01176733          	or	a4,a4,a7
   1b0c2:	45a9                	li	a1,10
   1b0c4:	015b4633          	xor	a2,s6,s5
   1b0c8:	00168813          	addi	a6,a3,1 # 8001 <register_fini-0x80af>
   1b0cc:	2ce5c163          	blt	a1,a4,1b38e <__multf3+0x3f4>
   1b0d0:	4589                	li	a1,2
   1b0d2:	28e5c363          	blt	a1,a4,1b358 <__multf3+0x3be>
   1b0d6:	177d                	addi	a4,a4,-1
   1b0d8:	4585                	li	a1,1
   1b0da:	28e5fe63          	bgeu	a1,a4,1b376 <__multf3+0x3dc>
   1b0de:	577d                	li	a4,-1
   1b0e0:	9301                	srli	a4,a4,0x20
   1b0e2:	014983b3          	add	t2,s3,s4
   1b0e6:	00878f33          	add	t5,a5,s0
   1b0ea:	020a5593          	srli	a1,s4,0x20
   1b0ee:	0207d513          	srli	a0,a5,0x20
   1b0f2:	0143bfb3          	sltu	t6,t2,s4
   1b0f6:	00ff32b3          	sltu	t0,t5,a5
   1b0fa:	00ea7a33          	and	s4,s4,a4
   1b0fe:	8ff9                	and	a5,a5,a4
   1b100:	034788b3          	mul	a7,a5,s4
   1b104:	8e7e                	mv	t3,t6
   1b106:	8316                	mv	t1,t0
   1b108:	02a58733          	mul	a4,a1,a0
   1b10c:	02f587b3          	mul	a5,a1,a5
   1b110:	03450533          	mul	a0,a0,s4
   1b114:	00f505b3          	add	a1,a0,a5
   1b118:	0208d513          	srli	a0,a7,0x20
   1b11c:	952e                	add	a0,a0,a1
   1b11e:	00f57563          	bgeu	a0,a5,1b128 <__multf3+0x18e>
   1b122:	4785                	li	a5,1
   1b124:	1782                	slli	a5,a5,0x20
   1b126:	973e                	add	a4,a4,a5
   1b128:	57fd                	li	a5,-1
   1b12a:	9381                	srli	a5,a5,0x20
   1b12c:	02055e93          	srli	t4,a0,0x20
   1b130:	8d7d                	and	a0,a0,a5
   1b132:	00f8f8b3          	and	a7,a7,a5
   1b136:	1502                	slli	a0,a0,0x20
   1b138:	0203da93          	srli	s5,t2,0x20
   1b13c:	9eba                	add	t4,t4,a4
   1b13e:	9546                	add	a0,a0,a7
   1b140:	020f5713          	srli	a4,t5,0x20
   1b144:	00f3f8b3          	and	a7,t2,a5
   1b148:	00ff77b3          	and	a5,t5,a5
   1b14c:	031785b3          	mul	a1,a5,a7
   1b150:	02fa87b3          	mul	a5,s5,a5
   1b154:	02ea8ab3          	mul	s5,s5,a4
   1b158:	03170733          	mul	a4,a4,a7
   1b15c:	00f708b3          	add	a7,a4,a5
   1b160:	0205d713          	srli	a4,a1,0x20
   1b164:	9746                	add	a4,a4,a7
   1b166:	00f77563          	bgeu	a4,a5,1b170 <__multf3+0x1d6>
   1b16a:	4785                	li	a5,1
   1b16c:	1782                	slli	a5,a5,0x20
   1b16e:	9abe                	add	s5,s5,a5
   1b170:	57fd                	li	a5,-1
   1b172:	9381                	srli	a5,a5,0x20
   1b174:	02075a13          	srli	s4,a4,0x20
   1b178:	8f7d                	and	a4,a4,a5
   1b17a:	8dfd                	and	a1,a1,a5
   1b17c:	1702                	slli	a4,a4,0x20
   1b17e:	0209d893          	srli	a7,s3,0x20
   1b182:	972e                	add	a4,a4,a1
   1b184:	00f9f9b3          	and	s3,s3,a5
   1b188:	02045593          	srli	a1,s0,0x20
   1b18c:	8fe1                	and	a5,a5,s0
   1b18e:	02f98b33          	mul	s6,s3,a5
   1b192:	02b88433          	mul	s0,a7,a1
   1b196:	02f887b3          	mul	a5,a7,a5
   1b19a:	020b5893          	srli	a7,s6,0x20
   1b19e:	033585b3          	mul	a1,a1,s3
   1b1a2:	95be                	add	a1,a1,a5
   1b1a4:	98ae                	add	a7,a7,a1
   1b1a6:	00f8f563          	bgeu	a7,a5,1b1b0 <__multf3+0x216>
   1b1aa:	4785                	li	a5,1
   1b1ac:	1782                	slli	a5,a5,0x20
   1b1ae:	943e                	add	s0,s0,a5
   1b1b0:	0208d593          	srli	a1,a7,0x20
   1b1b4:	95a2                	add	a1,a1,s0
   1b1b6:	547d                	li	s0,-1
   1b1b8:	9001                	srli	s0,s0,0x20
   1b1ba:	9776                	add	a4,a4,t4
   1b1bc:	0088f7b3          	and	a5,a7,s0
   1b1c0:	01d738b3          	sltu	a7,a4,t4
   1b1c4:	008b7b33          	and	s6,s6,s0
   1b1c8:	40600333          	neg	t1,t1
   1b1cc:	011a0433          	add	s0,s4,a7
   1b1d0:	9456                	add	s0,s0,s5
   1b1d2:	00737333          	and	t1,t1,t2
   1b1d6:	41c00e33          	neg	t3,t3
   1b1da:	9322                	add	t1,t1,s0
   1b1dc:	005fffb3          	and	t6,t6,t0
   1b1e0:	01ee7e33          	and	t3,t3,t5
   1b1e4:	011438b3          	sltu	a7,s0,a7
   1b1e8:	9e1a                	add	t3,t3,t1
   1b1ea:	98fe                	add	a7,a7,t6
   1b1ec:	00833433          	sltu	s0,t1,s0
   1b1f0:	98a2                	add	a7,a7,s0
   1b1f2:	006e3333          	sltu	t1,t3,t1
   1b1f6:	40a70f33          	sub	t5,a4,a0
   1b1fa:	01e73fb3          	sltu	t6,a4,t5
   1b1fe:	1782                	slli	a5,a5,0x20
   1b200:	989a                	add	a7,a7,t1
   1b202:	41de0333          	sub	t1,t3,t4
   1b206:	006e32b3          	sltu	t0,t3,t1
   1b20a:	97da                	add	a5,a5,s6
   1b20c:	41f30333          	sub	t1,t1,t6
   1b210:	4f81                	li	t6,0
   1b212:	01e77663          	bgeu	a4,t5,1b21e <__multf3+0x284>
   1b216:	41ce8eb3          	sub	t4,t4,t3
   1b21a:	001ebf93          	seqz	t6,t4
   1b21e:	40ff0e33          	sub	t3,t5,a5
   1b222:	98ae                	add	a7,a7,a1
   1b224:	01cf3733          	sltu	a4,t5,t3
   1b228:	40b305b3          	sub	a1,t1,a1
   1b22c:	005fefb3          	or	t6,t6,t0
   1b230:	00b33333          	sltu	t1,t1,a1
   1b234:	40e78733          	sub	a4,a5,a4
   1b238:	4e81                	li	t4,0
   1b23a:	01cf7463          	bgeu	t5,t3,1b242 <__multf3+0x2a8>
   1b23e:	0015be93          	seqz	t4,a1
   1b242:	95ba                	add	a1,a1,a4
   1b244:	00f5b733          	sltu	a4,a1,a5
   1b248:	9746                	add	a4,a4,a7
   1b24a:	41f70733          	sub	a4,a4,t6
   1b24e:	006eeeb3          	or	t4,t4,t1
   1b252:	41d70733          	sub	a4,a4,t4
   1b256:	00de1793          	slli	a5,t3,0xd
   1b25a:	0736                	slli	a4,a4,0xd
   1b25c:	0335d413          	srli	s0,a1,0x33
   1b260:	8fc9                	or	a5,a5,a0
   1b262:	8c59                	or	s0,s0,a4
   1b264:	00f037b3          	snez	a5,a5
   1b268:	033e5513          	srli	a0,t3,0x33
   1b26c:	9351                	srli	a4,a4,0x34
   1b26e:	8fc9                	or	a5,a5,a0
   1b270:	05b6                	slli	a1,a1,0xd
   1b272:	8b05                	andi	a4,a4,1
   1b274:	8fcd                	or	a5,a5,a1
   1b276:	12070d63          	beqz	a4,1b3b0 <__multf3+0x416>
   1b27a:	0017d713          	srli	a4,a5,0x1
   1b27e:	8b85                	andi	a5,a5,1
   1b280:	8f5d                	or	a4,a4,a5
   1b282:	03f41793          	slli	a5,s0,0x3f
   1b286:	8fd9                	or	a5,a5,a4
   1b288:	8005                	srli	s0,s0,0x1
   1b28a:	6711                	lui	a4,0x4
   1b28c:	177d                	addi	a4,a4,-1
   1b28e:	9742                	add	a4,a4,a6
   1b290:	1ae05c63          	blez	a4,1b448 <__multf3+0x4ae>
   1b294:	0077f693          	andi	a3,a5,7
   1b298:	12068363          	beqz	a3,1b3be <__multf3+0x424>
   1b29c:	4689                	li	a3,2
   1b29e:	0014e493          	ori	s1,s1,1
   1b2a2:	10d90d63          	beq	s2,a3,1b3bc <__multf3+0x422>
   1b2a6:	468d                	li	a3,3
   1b2a8:	10d90663          	beq	s2,a3,1b3b4 <__multf3+0x41a>
   1b2ac:	10091963          	bnez	s2,1b3be <__multf3+0x424>
   1b2b0:	00f7f693          	andi	a3,a5,15
   1b2b4:	4591                	li	a1,4
   1b2b6:	10b68463          	beq	a3,a1,1b3be <__multf3+0x424>
   1b2ba:	00478693          	addi	a3,a5,4
   1b2be:	00f6b7b3          	sltu	a5,a3,a5
   1b2c2:	943e                	add	s0,s0,a5
   1b2c4:	87b6                	mv	a5,a3
   1b2c6:	a8e5                	j	1b3be <__multf3+0x424>
   1b2c8:	4981                	li	s3,0
   1b2ca:	4b81                	li	s7,0
   1b2cc:	4c85                	li	s9,1
   1b2ce:	b33d                	j	1affc <__multf3+0x62>
   1b2d0:	4981                	li	s3,0
   1b2d2:	4c89                	li	s9,2
   1b2d4:	b325                	j	1affc <__multf3+0x62>
   1b2d6:	008c67b3          	or	a5,s8,s0
   1b2da:	c7b5                	beqz	a5,1b346 <__multf3+0x3ac>
   1b2dc:	cc15                	beqz	s0,1b318 <__multf3+0x37e>
   1b2de:	8522                	mv	a0,s0
   1b2e0:	739000ef          	jal	ra,1c218 <__clzdi2>
   1b2e4:	2501                	sext.w	a0,a0
   1b2e6:	ff150793          	addi	a5,a0,-15 # 7ff1 <register_fini-0x80bf>
   1b2ea:	03c00693          	li	a3,60
   1b2ee:	0007871b          	sext.w	a4,a5
   1b2f2:	02f6c963          	blt	a3,a5,1b324 <__multf3+0x38a>
   1b2f6:	03d00693          	li	a3,61
   1b2fa:	0037079b          	addiw	a5,a4,3
   1b2fe:	40e6873b          	subw	a4,a3,a4
   1b302:	00f41433          	sll	s0,s0,a5
   1b306:	00ec5733          	srl	a4,s8,a4
   1b30a:	8c59                	or	s0,s0,a4
   1b30c:	00fc17b3          	sll	a5,s8,a5
   1b310:	7771                	lui	a4,0xffffc
   1b312:	0745                	addi	a4,a4,17
   1b314:	8f09                	sub	a4,a4,a0
   1b316:	bb79                	j	1b0b4 <__multf3+0x11a>
   1b318:	8562                	mv	a0,s8
   1b31a:	6ff000ef          	jal	ra,1c218 <__clzdi2>
   1b31e:	0405051b          	addiw	a0,a0,64
   1b322:	b7d1                	j	1b2e6 <__multf3+0x34c>
   1b324:	fc37071b          	addiw	a4,a4,-61
   1b328:	00ec1433          	sll	s0,s8,a4
   1b32c:	4781                	li	a5,0
   1b32e:	b7cd                	j	1b310 <__multf3+0x376>
   1b330:	008c66b3          	or	a3,s8,s0
   1b334:	ce91                	beqz	a3,1b350 <__multf3+0x3b6>
   1b336:	02f45693          	srli	a3,s0,0x2f
   1b33a:	8a85                	andi	a3,a3,1
   1b33c:	488d                	li	a7,3
   1b33e:	d6069ce3          	bnez	a3,1b0b6 <__multf3+0x11c>
   1b342:	44c1                	li	s1,16
   1b344:	bb8d                	j	1b0b6 <__multf3+0x11c>
   1b346:	4401                	li	s0,0
   1b348:	4781                	li	a5,0
   1b34a:	4701                	li	a4,0
   1b34c:	4885                	li	a7,1
   1b34e:	b3a5                	j	1b0b6 <__multf3+0x11c>
   1b350:	4401                	li	s0,0
   1b352:	4781                	li	a5,0
   1b354:	4889                	li	a7,2
   1b356:	b385                	j	1b0b6 <__multf3+0x11c>
   1b358:	4585                	li	a1,1
   1b35a:	00e59733          	sll	a4,a1,a4
   1b35e:	53077513          	andi	a0,a4,1328
   1b362:	ed0d                	bnez	a0,1b39c <__multf3+0x402>
   1b364:	24077313          	andi	t1,a4,576
   1b368:	22031c63          	bnez	t1,1b5a0 <__multf3+0x606>
   1b36c:	08877713          	andi	a4,a4,136
   1b370:	d60707e3          	beqz	a4,1b0de <__multf3+0x144>
   1b374:	8656                	mv	a2,s5
   1b376:	4709                	li	a4,2
   1b378:	22e88a63          	beq	a7,a4,1b5ac <__multf3+0x612>
   1b37c:	470d                	li	a4,3
   1b37e:	22e88c63          	beq	a7,a4,1b5b6 <__multf3+0x61c>
   1b382:	4705                	li	a4,1
   1b384:	f0e893e3          	bne	a7,a4,1b28a <__multf3+0x2f0>
   1b388:	4581                	li	a1,0
   1b38a:	4501                	li	a0,0
   1b38c:	a409                	j	1b58e <__multf3+0x5f4>
   1b38e:	46bd                	li	a3,15
   1b390:	00d70a63          	beq	a4,a3,1b3a4 <__multf3+0x40a>
   1b394:	46ad                	li	a3,11
   1b396:	fcd70fe3          	beq	a4,a3,1b374 <__multf3+0x3da>
   1b39a:	865a                	mv	a2,s6
   1b39c:	844e                	mv	s0,s3
   1b39e:	87d2                	mv	a5,s4
   1b3a0:	88e6                	mv	a7,s9
   1b3a2:	bfd1                	j	1b376 <__multf3+0x3dc>
   1b3a4:	4405                	li	s0,1
   1b3a6:	143e                	slli	s0,s0,0x2f
   1b3a8:	4781                	li	a5,0
   1b3aa:	4601                	li	a2,0
   1b3ac:	488d                	li	a7,3
   1b3ae:	b7f9                	j	1b37c <__multf3+0x3e2>
   1b3b0:	8836                	mv	a6,a3
   1b3b2:	bde1                	j	1b28a <__multf3+0x2f0>
   1b3b4:	e609                	bnez	a2,1b3be <__multf3+0x424>
   1b3b6:	00878693          	addi	a3,a5,8
   1b3ba:	b711                	j	1b2be <__multf3+0x324>
   1b3bc:	fe6d                	bnez	a2,1b3b6 <__multf3+0x41c>
   1b3be:	03445693          	srli	a3,s0,0x34
   1b3c2:	8a85                	andi	a3,a3,1
   1b3c4:	c699                	beqz	a3,1b3d2 <__multf3+0x438>
   1b3c6:	577d                	li	a4,-1
   1b3c8:	1752                	slli	a4,a4,0x34
   1b3ca:	177d                	addi	a4,a4,-1
   1b3cc:	8c79                	and	s0,s0,a4
   1b3ce:	6711                	lui	a4,0x4
   1b3d0:	9742                	add	a4,a4,a6
   1b3d2:	66a1                	lui	a3,0x8
   1b3d4:	ffe68593          	addi	a1,a3,-2 # 7ffe <register_fini-0x80b2>
   1b3d8:	04e5c063          	blt	a1,a4,1b418 <__multf3+0x47e>
   1b3dc:	838d                	srli	a5,a5,0x3
   1b3de:	03d41513          	slli	a0,s0,0x3d
   1b3e2:	8d5d                	or	a0,a0,a5
   1b3e4:	00345593          	srli	a1,s0,0x3
   1b3e8:	1746                	slli	a4,a4,0x31
   1b3ea:	9345                	srli	a4,a4,0x31
   1b3ec:	063e                	slli	a2,a2,0xf
   1b3ee:	05c2                	slli	a1,a1,0x10
   1b3f0:	8e59                	or	a2,a2,a4
   1b3f2:	1642                	slli	a2,a2,0x30
   1b3f4:	81c1                	srli	a1,a1,0x10
   1b3f6:	8dd1                	or	a1,a1,a2
   1b3f8:	c099                	beqz	s1,1b3fe <__multf3+0x464>
   1b3fa:	0014a073          	csrs	fflags,s1
   1b3fe:	60e6                	ld	ra,88(sp)
   1b400:	6446                	ld	s0,80(sp)
   1b402:	64a6                	ld	s1,72(sp)
   1b404:	6906                	ld	s2,64(sp)
   1b406:	79e2                	ld	s3,56(sp)
   1b408:	7a42                	ld	s4,48(sp)
   1b40a:	7aa2                	ld	s5,40(sp)
   1b40c:	7b02                	ld	s6,32(sp)
   1b40e:	6be2                	ld	s7,24(sp)
   1b410:	6c42                	ld	s8,16(sp)
   1b412:	6ca2                	ld	s9,8(sp)
   1b414:	6125                	addi	sp,sp,96
   1b416:	8082                	ret
   1b418:	4789                	li	a5,2
   1b41a:	02f90263          	beq	s2,a5,1b43e <__multf3+0x4a4>
   1b41e:	478d                	li	a5,3
   1b420:	16fd                	addi	a3,a3,-1
   1b422:	00f90763          	beq	s2,a5,1b430 <__multf3+0x496>
   1b426:	00091663          	bnez	s2,1b432 <__multf3+0x498>
   1b42a:	4501                	li	a0,0
   1b42c:	8736                	mv	a4,a3
   1b42e:	a021                	j	1b436 <__multf3+0x49c>
   1b430:	de6d                	beqz	a2,1b42a <__multf3+0x490>
   1b432:	557d                	li	a0,-1
   1b434:	872e                	mv	a4,a1
   1b436:	0054e493          	ori	s1,s1,5
   1b43a:	85aa                	mv	a1,a0
   1b43c:	b775                	j	1b3e8 <__multf3+0x44e>
   1b43e:	da75                	beqz	a2,1b432 <__multf3+0x498>
   1b440:	4501                	li	a0,0
   1b442:	fff68713          	addi	a4,a3,-1
   1b446:	bfc5                	j	1b436 <__multf3+0x49c>
   1b448:	4685                	li	a3,1
   1b44a:	e729                	bnez	a4,1b494 <__multf3+0x4fa>
   1b44c:	0077f593          	andi	a1,a5,7
   1b450:	86a2                	mv	a3,s0
   1b452:	cd8d                	beqz	a1,1b48c <__multf3+0x4f2>
   1b454:	4589                	li	a1,2
   1b456:	0014e493          	ori	s1,s1,1
   1b45a:	02b90863          	beq	s2,a1,1b48a <__multf3+0x4f0>
   1b45e:	458d                	li	a1,3
   1b460:	02b90163          	beq	s2,a1,1b482 <__multf3+0x4e8>
   1b464:	02091463          	bnez	s2,1b48c <__multf3+0x4f2>
   1b468:	00f7f593          	andi	a1,a5,15
   1b46c:	4511                	li	a0,4
   1b46e:	00a58f63          	beq	a1,a0,1b48c <__multf3+0x4f2>
   1b472:	ffc7b693          	sltiu	a3,a5,-4
   1b476:	0016c693          	xori	a3,a3,1
   1b47a:	1682                	slli	a3,a3,0x20
   1b47c:	9281                	srli	a3,a3,0x20
   1b47e:	96a2                	add	a3,a3,s0
   1b480:	a031                	j	1b48c <__multf3+0x4f2>
   1b482:	e609                	bnez	a2,1b48c <__multf3+0x4f2>
   1b484:	ff87b693          	sltiu	a3,a5,-8
   1b488:	b7fd                	j	1b476 <__multf3+0x4dc>
   1b48a:	fe6d                	bnez	a2,1b484 <__multf3+0x4ea>
   1b48c:	92d1                	srli	a3,a3,0x34
   1b48e:	0016c693          	xori	a3,a3,1
   1b492:	8a85                	andi	a3,a3,1
   1b494:	4805                	li	a6,1
   1b496:	40e80833          	sub	a6,a6,a4
   1b49a:	07400713          	li	a4,116
   1b49e:	0d074563          	blt	a4,a6,1b568 <__multf3+0x5ce>
   1b4a2:	03f00713          	li	a4,63
   1b4a6:	0008059b          	sext.w	a1,a6
   1b4aa:	05074b63          	blt	a4,a6,1b500 <__multf3+0x566>
   1b4ae:	04000713          	li	a4,64
   1b4b2:	9f0d                	subw	a4,a4,a1
   1b4b4:	00e41533          	sll	a0,s0,a4
   1b4b8:	00b7d833          	srl	a6,a5,a1
   1b4bc:	00e79733          	sll	a4,a5,a4
   1b4c0:	01056533          	or	a0,a0,a6
   1b4c4:	00e03733          	snez	a4,a4
   1b4c8:	8d59                	or	a0,a0,a4
   1b4ca:	00b455b3          	srl	a1,s0,a1
   1b4ce:	00757793          	andi	a5,a0,7
   1b4d2:	c3a5                	beqz	a5,1b532 <__multf3+0x598>
   1b4d4:	4789                	li	a5,2
   1b4d6:	0014e493          	ori	s1,s1,1
   1b4da:	04f90b63          	beq	s2,a5,1b530 <__multf3+0x596>
   1b4de:	478d                	li	a5,3
   1b4e0:	04f90463          	beq	s2,a5,1b528 <__multf3+0x58e>
   1b4e4:	04091763          	bnez	s2,1b532 <__multf3+0x598>
   1b4e8:	00f57793          	andi	a5,a0,15
   1b4ec:	4711                	li	a4,4
   1b4ee:	04e78263          	beq	a5,a4,1b532 <__multf3+0x598>
   1b4f2:	00450793          	addi	a5,a0,4
   1b4f6:	00a7b533          	sltu	a0,a5,a0
   1b4fa:	95aa                	add	a1,a1,a0
   1b4fc:	853e                	mv	a0,a5
   1b4fe:	a815                	j	1b532 <__multf3+0x598>
   1b500:	fc05851b          	addiw	a0,a1,-64
   1b504:	04000893          	li	a7,64
   1b508:	00a45533          	srl	a0,s0,a0
   1b50c:	4701                	li	a4,0
   1b50e:	01180763          	beq	a6,a7,1b51c <__multf3+0x582>
   1b512:	08000713          	li	a4,128
   1b516:	9f0d                	subw	a4,a4,a1
   1b518:	00e41733          	sll	a4,s0,a4
   1b51c:	8f5d                	or	a4,a4,a5
   1b51e:	00e03733          	snez	a4,a4
   1b522:	8d59                	or	a0,a0,a4
   1b524:	4581                	li	a1,0
   1b526:	b765                	j	1b4ce <__multf3+0x534>
   1b528:	e609                	bnez	a2,1b532 <__multf3+0x598>
   1b52a:	00850793          	addi	a5,a0,8
   1b52e:	b7e1                	j	1b4f6 <__multf3+0x55c>
   1b530:	fe6d                	bnez	a2,1b52a <__multf3+0x590>
   1b532:	0335d793          	srli	a5,a1,0x33
   1b536:	8b85                	andi	a5,a5,1
   1b538:	cb99                	beqz	a5,1b54e <__multf3+0x5b4>
   1b53a:	0014e493          	ori	s1,s1,1
   1b53e:	4581                	li	a1,0
   1b540:	4501                	li	a0,0
   1b542:	4705                	li	a4,1
   1b544:	ea0682e3          	beqz	a3,1b3e8 <__multf3+0x44e>
   1b548:	0024e493          	ori	s1,s1,2
   1b54c:	bd71                	j	1b3e8 <__multf3+0x44e>
   1b54e:	03d59793          	slli	a5,a1,0x3d
   1b552:	810d                	srli	a0,a0,0x3
   1b554:	8d5d                	or	a0,a0,a5
   1b556:	818d                	srli	a1,a1,0x3
   1b558:	4701                	li	a4,0
   1b55a:	e80687e3          	beqz	a3,1b3e8 <__multf3+0x44e>
   1b55e:	0014f793          	andi	a5,s1,1
   1b562:	e80783e3          	beqz	a5,1b3e8 <__multf3+0x44e>
   1b566:	b7cd                	j	1b548 <__multf3+0x5ae>
   1b568:	0087e533          	or	a0,a5,s0
   1b56c:	cd11                	beqz	a0,1b588 <__multf3+0x5ee>
   1b56e:	4789                	li	a5,2
   1b570:	0014e493          	ori	s1,s1,1
   1b574:	02f90363          	beq	s2,a5,1b59a <__multf3+0x600>
   1b578:	478d                	li	a5,3
   1b57a:	00f90c63          	beq	s2,a5,1b592 <__multf3+0x5f8>
   1b57e:	4505                	li	a0,1
   1b580:	00091363          	bnez	s2,1b586 <__multf3+0x5ec>
   1b584:	4515                	li	a0,5
   1b586:	810d                	srli	a0,a0,0x3
   1b588:	0024e493          	ori	s1,s1,2
   1b58c:	4581                	li	a1,0
   1b58e:	4701                	li	a4,0
   1b590:	bda1                	j	1b3e8 <__multf3+0x44e>
   1b592:	4525                	li	a0,9
   1b594:	da6d                	beqz	a2,1b586 <__multf3+0x5ec>
   1b596:	4505                	li	a0,1
   1b598:	b7fd                	j	1b586 <__multf3+0x5ec>
   1b59a:	4525                	li	a0,9
   1b59c:	f66d                	bnez	a2,1b586 <__multf3+0x5ec>
   1b59e:	bfe5                	j	1b596 <__multf3+0x5fc>
   1b5a0:	6721                	lui	a4,0x8
   1b5a2:	15be                	slli	a1,a1,0x2f
   1b5a4:	177d                	addi	a4,a4,-1
   1b5a6:	4601                	li	a2,0
   1b5a8:	44c1                	li	s1,16
   1b5aa:	bd3d                	j	1b3e8 <__multf3+0x44e>
   1b5ac:	6721                	lui	a4,0x8
   1b5ae:	4581                	li	a1,0
   1b5b0:	4501                	li	a0,0
   1b5b2:	177d                	addi	a4,a4,-1
   1b5b4:	bd15                	j	1b3e8 <__multf3+0x44e>
   1b5b6:	4585                	li	a1,1
   1b5b8:	6721                	lui	a4,0x8
   1b5ba:	15be                	slli	a1,a1,0x2f
   1b5bc:	4501                	li	a0,0
   1b5be:	177d                	addi	a4,a4,-1
   1b5c0:	4601                	li	a2,0
   1b5c2:	b51d                	j	1b3e8 <__multf3+0x44e>

000000000001b5c4 <__subtf3>:
   1b5c4:	7179                	addi	sp,sp,-48
   1b5c6:	f406                	sd	ra,40(sp)
   1b5c8:	f022                	sd	s0,32(sp)
   1b5ca:	ec26                	sd	s1,24(sp)
   1b5cc:	e84a                	sd	s2,16(sp)
   1b5ce:	e44e                	sd	s3,8(sp)
   1b5d0:	e052                	sd	s4,0(sp)
   1b5d2:	002024f3          	frrm	s1
   1b5d6:	577d                	li	a4,-1
   1b5d8:	8341                	srli	a4,a4,0x10
   1b5da:	6e21                	lui	t3,0x8
   1b5dc:	0305d813          	srli	a6,a1,0x30
   1b5e0:	1e7d                	addi	t3,t3,-1
   1b5e2:	0306d893          	srli	a7,a3,0x30
   1b5e6:	03f5d913          	srli	s2,a1,0x3f
   1b5ea:	03f6d313          	srli	t1,a3,0x3f
   1b5ee:	8df9                	and	a1,a1,a4
   1b5f0:	8ef9                	and	a3,a3,a4
   1b5f2:	03d55793          	srli	a5,a0,0x3d
   1b5f6:	00369713          	slli	a4,a3,0x3
   1b5fa:	01c87833          	and	a6,a6,t3
   1b5fe:	03d65693          	srli	a3,a2,0x3d
   1b602:	058e                	slli	a1,a1,0x3
   1b604:	01c8f8b3          	and	a7,a7,t3
   1b608:	2481                	sext.w	s1,s1
   1b60a:	8442                	mv	s0,a6
   1b60c:	8fcd                	or	a5,a5,a1
   1b60e:	050e                	slli	a0,a0,0x3
   1b610:	8ed9                	or	a3,a3,a4
   1b612:	060e                	slli	a2,a2,0x3
   1b614:	01c89563          	bne	a7,t3,1b61e <__subtf3+0x5a>
   1b618:	00c6e733          	or	a4,a3,a2
   1b61c:	e319                	bnez	a4,1b622 <__subtf3+0x5e>
   1b61e:	00134313          	xori	t1,t1,1
   1b622:	4118073b          	subw	a4,a6,a7
   1b626:	6e21                	lui	t3,0x8
   1b628:	0007059b          	sext.w	a1,a4
   1b62c:	fffe0e93          	addi	t4,t3,-1 # 7fff <register_fini-0x80b1>
   1b630:	3b231a63          	bne	t1,s2,1b9e4 <__subtf3+0x420>
   1b634:	10b05563          	blez	a1,1b73e <__subtf3+0x17a>
   1b638:	08089163          	bnez	a7,1b6ba <__subtf3+0xf6>
   1b63c:	00c6e5b3          	or	a1,a3,a2
   1b640:	ed91                	bnez	a1,1b65c <__subtf3+0x98>
   1b642:	75d81663          	bne	a6,t4,1bd8e <__subtf3+0x7ca>
   1b646:	00a7e733          	or	a4,a5,a0
   1b64a:	78070a63          	beqz	a4,1bdde <__subtf3+0x81a>
   1b64e:	0327d713          	srli	a4,a5,0x32
   1b652:	00174713          	xori	a4,a4,1
   1b656:	8b05                	andi	a4,a4,1
   1b658:	0712                	slli	a4,a4,0x4
   1b65a:	aa01                	j	1b76a <__subtf3+0x1a6>
   1b65c:	fff7059b          	addiw	a1,a4,-1
   1b660:	e1a1                	bnez	a1,1b6a0 <__subtf3+0xdc>
   1b662:	962a                	add	a2,a2,a0
   1b664:	96be                	add	a3,a3,a5
   1b666:	00a637b3          	sltu	a5,a2,a0
   1b66a:	97b6                	add	a5,a5,a3
   1b66c:	8532                	mv	a0,a2
   1b66e:	0337d713          	srli	a4,a5,0x33
   1b672:	8b05                	andi	a4,a4,1
   1b674:	70070d63          	beqz	a4,1bd8e <__subtf3+0x7ca>
   1b678:	6721                	lui	a4,0x8
   1b67a:	0405                	addi	s0,s0,1
   1b67c:	fff70693          	addi	a3,a4,-1 # 7fff <register_fini-0x80b1>
   1b680:	34d40063          	beq	s0,a3,1b9c0 <__subtf3+0x3fc>
   1b684:	577d                	li	a4,-1
   1b686:	174e                	slli	a4,a4,0x33
   1b688:	177d                	addi	a4,a4,-1
   1b68a:	8ff9                	and	a5,a5,a4
   1b68c:	00155713          	srli	a4,a0,0x1
   1b690:	8905                	andi	a0,a0,1
   1b692:	8f49                	or	a4,a4,a0
   1b694:	03f79513          	slli	a0,a5,0x3f
   1b698:	8d59                	or	a0,a0,a4
   1b69a:	8385                	srli	a5,a5,0x1
   1b69c:	4581                	li	a1,0
   1b69e:	a4e9                	j	1b968 <__subtf3+0x3a4>
   1b6a0:	03d81263          	bne	a6,t4,1b6c4 <__subtf3+0x100>
   1b6a4:	00a7e733          	or	a4,a5,a0
   1b6a8:	72070b63          	beqz	a4,1bdde <__subtf3+0x81a>
   1b6ac:	0327d713          	srli	a4,a5,0x32
   1b6b0:	00174713          	xori	a4,a4,1
   1b6b4:	8b05                	andi	a4,a4,1
   1b6b6:	0712                	slli	a4,a4,0x4
   1b6b8:	a209                	j	1b7ba <__subtf3+0x1f6>
   1b6ba:	ffd805e3          	beq	a6,t4,1b6a4 <__subtf3+0xe0>
   1b6be:	4705                	li	a4,1
   1b6c0:	174e                	slli	a4,a4,0x33
   1b6c2:	8ed9                	or	a3,a3,a4
   1b6c4:	07400713          	li	a4,116
   1b6c8:	06b74663          	blt	a4,a1,1b734 <__subtf3+0x170>
   1b6cc:	03f00713          	li	a4,63
   1b6d0:	02b74b63          	blt	a4,a1,1b706 <__subtf3+0x142>
   1b6d4:	04000813          	li	a6,64
   1b6d8:	40b8083b          	subw	a6,a6,a1
   1b6dc:	01069733          	sll	a4,a3,a6
   1b6e0:	00b658b3          	srl	a7,a2,a1
   1b6e4:	01061833          	sll	a6,a2,a6
   1b6e8:	01176733          	or	a4,a4,a7
   1b6ec:	01003833          	snez	a6,a6
   1b6f0:	01076733          	or	a4,a4,a6
   1b6f4:	00b6d5b3          	srl	a1,a3,a1
   1b6f8:	972a                	add	a4,a4,a0
   1b6fa:	95be                	add	a1,a1,a5
   1b6fc:	00a737b3          	sltu	a5,a4,a0
   1b700:	97ae                	add	a5,a5,a1
   1b702:	853a                	mv	a0,a4
   1b704:	b7ad                	j	1b66e <__subtf3+0xaa>
   1b706:	fc05871b          	addiw	a4,a1,-64
   1b70a:	04000893          	li	a7,64
   1b70e:	00e6d733          	srl	a4,a3,a4
   1b712:	4801                	li	a6,0
   1b714:	01158863          	beq	a1,a7,1b724 <__subtf3+0x160>
   1b718:	08000813          	li	a6,128
   1b71c:	40b8083b          	subw	a6,a6,a1
   1b720:	01069833          	sll	a6,a3,a6
   1b724:	00c86833          	or	a6,a6,a2
   1b728:	01003833          	snez	a6,a6
   1b72c:	01076733          	or	a4,a4,a6
   1b730:	4581                	li	a1,0
   1b732:	b7d9                	j	1b6f8 <__subtf3+0x134>
   1b734:	00c6e733          	or	a4,a3,a2
   1b738:	00e03733          	snez	a4,a4
   1b73c:	bfd5                	j	1b730 <__subtf3+0x16c>
   1b73e:	10058563          	beqz	a1,1b848 <__subtf3+0x284>
   1b742:	06081e63          	bnez	a6,1b7be <__subtf3+0x1fa>
   1b746:	00a7e5b3          	or	a1,a5,a0
   1b74a:	ed8d                	bnez	a1,1b784 <__subtf3+0x1c0>
   1b74c:	65d89463          	bne	a7,t4,1bd94 <__subtf3+0x7d0>
   1b750:	00c6e533          	or	a0,a3,a2
   1b754:	68050163          	beqz	a0,1bdd6 <__subtf3+0x812>
   1b758:	0326d713          	srli	a4,a3,0x32
   1b75c:	00174713          	xori	a4,a4,1
   1b760:	8b05                	andi	a4,a4,1
   1b762:	0712                	slli	a4,a4,0x4
   1b764:	87b6                	mv	a5,a3
   1b766:	8532                	mv	a0,a2
   1b768:	8446                	mv	s0,a7
   1b76a:	00757693          	andi	a3,a0,7
   1b76e:	22069263          	bnez	a3,1b992 <__subtf3+0x3ce>
   1b772:	16058963          	beqz	a1,1b8e4 <__subtf3+0x320>
   1b776:	00177693          	andi	a3,a4,1
   1b77a:	16068563          	beqz	a3,1b8e4 <__subtf3+0x320>
   1b77e:	00276713          	ori	a4,a4,2
   1b782:	a28d                	j	1b8e4 <__subtf3+0x320>
   1b784:	fff74713          	not	a4,a4
   1b788:	2701                	sext.w	a4,a4
   1b78a:	eb09                	bnez	a4,1b79c <__subtf3+0x1d8>
   1b78c:	9532                	add	a0,a0,a2
   1b78e:	96be                	add	a3,a3,a5
   1b790:	00c53633          	sltu	a2,a0,a2
   1b794:	00c687b3          	add	a5,a3,a2
   1b798:	8446                	mv	s0,a7
   1b79a:	bdd1                	j	1b66e <__subtf3+0xaa>
   1b79c:	03d89863          	bne	a7,t4,1b7cc <__subtf3+0x208>
   1b7a0:	00c6e533          	or	a0,a3,a2
   1b7a4:	62050963          	beqz	a0,1bdd6 <__subtf3+0x812>
   1b7a8:	0326d713          	srli	a4,a3,0x32
   1b7ac:	00174713          	xori	a4,a4,1
   1b7b0:	8b05                	andi	a4,a4,1
   1b7b2:	0712                	slli	a4,a4,0x4
   1b7b4:	87b6                	mv	a5,a3
   1b7b6:	8532                	mv	a0,a2
   1b7b8:	8446                	mv	s0,a7
   1b7ba:	4581                	li	a1,0
   1b7bc:	b77d                	j	1b76a <__subtf3+0x1a6>
   1b7be:	ffd881e3          	beq	a7,t4,1b7a0 <__subtf3+0x1dc>
   1b7c2:	4585                	li	a1,1
   1b7c4:	15ce                	slli	a1,a1,0x33
   1b7c6:	40e0073b          	negw	a4,a4
   1b7ca:	8fcd                	or	a5,a5,a1
   1b7cc:	07400593          	li	a1,116
   1b7d0:	06e5c763          	blt	a1,a4,1b83e <__subtf3+0x27a>
   1b7d4:	03f00593          	li	a1,63
   1b7d8:	02e5cc63          	blt	a1,a4,1b810 <__subtf3+0x24c>
   1b7dc:	04000813          	li	a6,64
   1b7e0:	40e8083b          	subw	a6,a6,a4
   1b7e4:	010795b3          	sll	a1,a5,a6
   1b7e8:	00e55333          	srl	t1,a0,a4
   1b7ec:	01051833          	sll	a6,a0,a6
   1b7f0:	0065e5b3          	or	a1,a1,t1
   1b7f4:	01003833          	snez	a6,a6
   1b7f8:	0105e5b3          	or	a1,a1,a6
   1b7fc:	00e7d733          	srl	a4,a5,a4
   1b800:	00c58533          	add	a0,a1,a2
   1b804:	9736                	add	a4,a4,a3
   1b806:	00c53633          	sltu	a2,a0,a2
   1b80a:	00c707b3          	add	a5,a4,a2
   1b80e:	b769                	j	1b798 <__subtf3+0x1d4>
   1b810:	fc07059b          	addiw	a1,a4,-64
   1b814:	04000313          	li	t1,64
   1b818:	00b7d5b3          	srl	a1,a5,a1
   1b81c:	4801                	li	a6,0
   1b81e:	00670863          	beq	a4,t1,1b82e <__subtf3+0x26a>
   1b822:	08000813          	li	a6,128
   1b826:	40e8083b          	subw	a6,a6,a4
   1b82a:	01079833          	sll	a6,a5,a6
   1b82e:	00a86833          	or	a6,a6,a0
   1b832:	01003833          	snez	a6,a6
   1b836:	0105e5b3          	or	a1,a1,a6
   1b83a:	4701                	li	a4,0
   1b83c:	b7d1                	j	1b800 <__subtf3+0x23c>
   1b83e:	00a7e5b3          	or	a1,a5,a0
   1b842:	00b035b3          	snez	a1,a1
   1b846:	bfd5                	j	1b83a <__subtf3+0x276>
   1b848:	00180413          	addi	s0,a6,1
   1b84c:	ffee0713          	addi	a4,t3,-2
   1b850:	00e47333          	and	t1,s0,a4
   1b854:	0e031d63          	bnez	t1,1b94e <__subtf3+0x38a>
   1b858:	00a7e333          	or	t1,a5,a0
   1b85c:	02081a63          	bnez	a6,1b890 <__subtf3+0x2cc>
   1b860:	54030363          	beqz	t1,1bda6 <__subtf3+0x7e2>
   1b864:	00c6e733          	or	a4,a3,a2
   1b868:	36070863          	beqz	a4,1bbd8 <__subtf3+0x614>
   1b86c:	962a                	add	a2,a2,a0
   1b86e:	96be                	add	a3,a3,a5
   1b870:	00a637b3          	sltu	a5,a2,a0
   1b874:	97b6                	add	a5,a5,a3
   1b876:	0337d713          	srli	a4,a5,0x33
   1b87a:	8b05                	andi	a4,a4,1
   1b87c:	52070663          	beqz	a4,1bda8 <__subtf3+0x7e4>
   1b880:	577d                	li	a4,-1
   1b882:	174e                	slli	a4,a4,0x33
   1b884:	177d                	addi	a4,a4,-1
   1b886:	8ff9                	and	a5,a5,a4
   1b888:	8532                	mv	a0,a2
   1b88a:	4701                	li	a4,0
   1b88c:	4405                	li	s0,1
   1b88e:	bdf1                	j	1b76a <__subtf3+0x1a6>
   1b890:	03d81863          	bne	a6,t4,1b8c0 <__subtf3+0x2fc>
   1b894:	5a030863          	beqz	t1,1be44 <__subtf3+0x880>
   1b898:	0327d713          	srli	a4,a5,0x32
   1b89c:	00174713          	xori	a4,a4,1
   1b8a0:	8b05                	andi	a4,a4,1
   1b8a2:	0712                	slli	a4,a4,0x4
   1b8a4:	03089863          	bne	a7,a6,1b8d4 <__subtf3+0x310>
   1b8a8:	00c6e833          	or	a6,a3,a2
   1b8ac:	00080d63          	beqz	a6,1b8c6 <__subtf3+0x302>
   1b8b0:	0326d813          	srli	a6,a3,0x32
   1b8b4:	00187813          	andi	a6,a6,1
   1b8b8:	00081763          	bnez	a6,1b8c6 <__subtf3+0x302>
   1b8bc:	4741                	li	a4,16
   1b8be:	a021                	j	1b8c6 <__subtf3+0x302>
   1b8c0:	4701                	li	a4,0
   1b8c2:	ffd883e3          	beq	a7,t4,1b8a8 <__subtf3+0x2e4>
   1b8c6:	00031763          	bnez	t1,1b8d4 <__subtf3+0x310>
   1b8ca:	87b6                	mv	a5,a3
   1b8cc:	8532                	mv	a0,a2
   1b8ce:	6421                	lui	s0,0x8
   1b8d0:	147d                	addi	s0,s0,-1
   1b8d2:	bd61                	j	1b76a <__subtf3+0x1a6>
   1b8d4:	8ed1                	or	a3,a3,a2
   1b8d6:	dee5                	beqz	a3,1b8ce <__subtf3+0x30a>
   1b8d8:	4785                	li	a5,1
   1b8da:	6421                	lui	s0,0x8
   1b8dc:	4901                	li	s2,0
   1b8de:	17ca                	slli	a5,a5,0x32
   1b8e0:	4501                	li	a0,0
   1b8e2:	147d                	addi	s0,s0,-1
   1b8e4:	0337d693          	srli	a3,a5,0x33
   1b8e8:	8a85                	andi	a3,a3,1
   1b8ea:	ca99                	beqz	a3,1b900 <__subtf3+0x33c>
   1b8ec:	66a1                	lui	a3,0x8
   1b8ee:	0405                	addi	s0,s0,1
   1b8f0:	fff68613          	addi	a2,a3,-1 # 7fff <register_fini-0x80b1>
   1b8f4:	52c40063          	beq	s0,a2,1be14 <__subtf3+0x850>
   1b8f8:	56fd                	li	a3,-1
   1b8fa:	16ce                	slli	a3,a3,0x33
   1b8fc:	16fd                	addi	a3,a3,-1
   1b8fe:	8ff5                	and	a5,a5,a3
   1b900:	00355693          	srli	a3,a0,0x3
   1b904:	03d79513          	slli	a0,a5,0x3d
   1b908:	8d55                	or	a0,a0,a3
   1b90a:	66a1                	lui	a3,0x8
   1b90c:	16fd                	addi	a3,a3,-1
   1b90e:	838d                	srli	a5,a5,0x3
   1b910:	00d41963          	bne	s0,a3,1b922 <__subtf3+0x35e>
   1b914:	8d5d                	or	a0,a0,a5
   1b916:	4781                	li	a5,0
   1b918:	c509                	beqz	a0,1b922 <__subtf3+0x35e>
   1b91a:	4785                	li	a5,1
   1b91c:	17be                	slli	a5,a5,0x2f
   1b91e:	4501                	li	a0,0
   1b920:	4901                	li	s2,0
   1b922:	1446                	slli	s0,s0,0x31
   1b924:	00f9191b          	slliw	s2,s2,0xf
   1b928:	9045                	srli	s0,s0,0x31
   1b92a:	07c2                	slli	a5,a5,0x10
   1b92c:	01246433          	or	s0,s0,s2
   1b930:	1442                	slli	s0,s0,0x30
   1b932:	0107d593          	srli	a1,a5,0x10
   1b936:	8dc1                	or	a1,a1,s0
   1b938:	c319                	beqz	a4,1b93e <__subtf3+0x37a>
   1b93a:	00172073          	csrs	fflags,a4
   1b93e:	70a2                	ld	ra,40(sp)
   1b940:	7402                	ld	s0,32(sp)
   1b942:	64e2                	ld	s1,24(sp)
   1b944:	6942                	ld	s2,16(sp)
   1b946:	69a2                	ld	s3,8(sp)
   1b948:	6a02                	ld	s4,0(sp)
   1b94a:	6145                	addi	sp,sp,48
   1b94c:	8082                	ret
   1b94e:	01d40f63          	beq	s0,t4,1b96c <__subtf3+0x3a8>
   1b952:	962a                	add	a2,a2,a0
   1b954:	00a63533          	sltu	a0,a2,a0
   1b958:	96be                	add	a3,a3,a5
   1b95a:	96aa                	add	a3,a3,a0
   1b95c:	03f69513          	slli	a0,a3,0x3f
   1b960:	8205                	srli	a2,a2,0x1
   1b962:	8d51                	or	a0,a0,a2
   1b964:	0016d793          	srli	a5,a3,0x1
   1b968:	4701                	li	a4,0
   1b96a:	b501                	j	1b76a <__subtf3+0x1a6>
   1b96c:	c491                	beqz	s1,1b978 <__subtf3+0x3b4>
   1b96e:	478d                	li	a5,3
   1b970:	00f49863          	bne	s1,a5,1b980 <__subtf3+0x3bc>
   1b974:	00091b63          	bnez	s2,1b98a <__subtf3+0x3c6>
   1b978:	4781                	li	a5,0
   1b97a:	4501                	li	a0,0
   1b97c:	4715                	li	a4,5
   1b97e:	b79d                	j	1b8e4 <__subtf3+0x320>
   1b980:	4789                	li	a5,2
   1b982:	00f49463          	bne	s1,a5,1b98a <__subtf3+0x3c6>
   1b986:	fe0919e3          	bnez	s2,1b978 <__subtf3+0x3b4>
   1b98a:	57fd                	li	a5,-1
   1b98c:	557d                	li	a0,-1
   1b98e:	843a                	mv	s0,a4
   1b990:	4715                	li	a4,5
   1b992:	4689                	li	a3,2
   1b994:	00176713          	ori	a4,a4,1
   1b998:	46d48b63          	beq	s1,a3,1be0e <__subtf3+0x84a>
   1b99c:	468d                	li	a3,3
   1b99e:	46d48363          	beq	s1,a3,1be04 <__subtf3+0x840>
   1b9a2:	ec81                	bnez	s1,1b9ba <__subtf3+0x3f6>
   1b9a4:	00f57693          	andi	a3,a0,15
   1b9a8:	4611                	li	a2,4
   1b9aa:	00c68863          	beq	a3,a2,1b9ba <__subtf3+0x3f6>
   1b9ae:	00450693          	addi	a3,a0,4
   1b9b2:	00a6b533          	sltu	a0,a3,a0
   1b9b6:	97aa                	add	a5,a5,a0
   1b9b8:	8536                	mv	a0,a3
   1b9ba:	dc0592e3          	bnez	a1,1b77e <__subtf3+0x1ba>
   1b9be:	b71d                	j	1b8e4 <__subtf3+0x320>
   1b9c0:	dcc5                	beqz	s1,1b978 <__subtf3+0x3b4>
   1b9c2:	478d                	li	a5,3
   1b9c4:	00f49a63          	bne	s1,a5,1b9d8 <__subtf3+0x414>
   1b9c8:	fa0908e3          	beqz	s2,1b978 <__subtf3+0x3b4>
   1b9cc:	57fd                	li	a5,-1
   1b9ce:	557d                	li	a0,-1
   1b9d0:	ffe70413          	addi	s0,a4,-2
   1b9d4:	4581                	li	a1,0
   1b9d6:	bf6d                	j	1b990 <__subtf3+0x3cc>
   1b9d8:	4789                	li	a5,2
   1b9da:	fef499e3          	bne	s1,a5,1b9cc <__subtf3+0x408>
   1b9de:	f8091de3          	bnez	s2,1b978 <__subtf3+0x3b4>
   1b9e2:	b7ed                	j	1b9cc <__subtf3+0x408>
   1b9e4:	0cb05763          	blez	a1,1bab2 <__subtf3+0x4ee>
   1b9e8:	08089363          	bnez	a7,1ba6e <__subtf3+0x4aa>
   1b9ec:	00c6e5b3          	or	a1,a3,a2
   1b9f0:	c40589e3          	beqz	a1,1b642 <__subtf3+0x7e>
   1b9f4:	fff7059b          	addiw	a1,a4,-1
   1b9f8:	e58d                	bnez	a1,1ba22 <__subtf3+0x45e>
   1b9fa:	40c50633          	sub	a2,a0,a2
   1b9fe:	40d786b3          	sub	a3,a5,a3
   1ba02:	00c537b3          	sltu	a5,a0,a2
   1ba06:	40f687b3          	sub	a5,a3,a5
   1ba0a:	8532                	mv	a0,a2
   1ba0c:	0337d713          	srli	a4,a5,0x33
   1ba10:	8b05                	andi	a4,a4,1
   1ba12:	36070e63          	beqz	a4,1bd8e <__subtf3+0x7ca>
   1ba16:	00d79993          	slli	s3,a5,0xd
   1ba1a:	00d9d993          	srli	s3,s3,0xd
   1ba1e:	8a2a                	mv	s4,a0
   1ba20:	ac65                	j	1bcd8 <__subtf3+0x714>
   1ba22:	c9d801e3          	beq	a6,t4,1b6a4 <__subtf3+0xe0>
   1ba26:	07400713          	li	a4,116
   1ba2a:	06b74f63          	blt	a4,a1,1baa8 <__subtf3+0x4e4>
   1ba2e:	03f00713          	li	a4,63
   1ba32:	04b74463          	blt	a4,a1,1ba7a <__subtf3+0x4b6>
   1ba36:	04000813          	li	a6,64
   1ba3a:	40b8083b          	subw	a6,a6,a1
   1ba3e:	01069733          	sll	a4,a3,a6
   1ba42:	00b658b3          	srl	a7,a2,a1
   1ba46:	01061833          	sll	a6,a2,a6
   1ba4a:	01176733          	or	a4,a4,a7
   1ba4e:	01003833          	snez	a6,a6
   1ba52:	01076733          	or	a4,a4,a6
   1ba56:	00b6d5b3          	srl	a1,a3,a1
   1ba5a:	40e50733          	sub	a4,a0,a4
   1ba5e:	40b785b3          	sub	a1,a5,a1
   1ba62:	00e537b3          	sltu	a5,a0,a4
   1ba66:	40f587b3          	sub	a5,a1,a5
   1ba6a:	853a                	mv	a0,a4
   1ba6c:	b745                	j	1ba0c <__subtf3+0x448>
   1ba6e:	c3d80be3          	beq	a6,t4,1b6a4 <__subtf3+0xe0>
   1ba72:	4705                	li	a4,1
   1ba74:	174e                	slli	a4,a4,0x33
   1ba76:	8ed9                	or	a3,a3,a4
   1ba78:	b77d                	j	1ba26 <__subtf3+0x462>
   1ba7a:	fc05871b          	addiw	a4,a1,-64
   1ba7e:	04000893          	li	a7,64
   1ba82:	00e6d733          	srl	a4,a3,a4
   1ba86:	4801                	li	a6,0
   1ba88:	01158863          	beq	a1,a7,1ba98 <__subtf3+0x4d4>
   1ba8c:	08000813          	li	a6,128
   1ba90:	40b8083b          	subw	a6,a6,a1
   1ba94:	01069833          	sll	a6,a3,a6
   1ba98:	00c86833          	or	a6,a6,a2
   1ba9c:	01003833          	snez	a6,a6
   1baa0:	01076733          	or	a4,a4,a6
   1baa4:	4581                	li	a1,0
   1baa6:	bf55                	j	1ba5a <__subtf3+0x496>
   1baa8:	00c6e733          	or	a4,a3,a2
   1baac:	00e03733          	snez	a4,a4
   1bab0:	bfd5                	j	1baa4 <__subtf3+0x4e0>
   1bab2:	cde5                	beqz	a1,1bbaa <__subtf3+0x5e6>
   1bab4:	06081563          	bnez	a6,1bb1e <__subtf3+0x55a>
   1bab8:	00a7e5b3          	or	a1,a5,a0
   1babc:	e195                	bnez	a1,1bae0 <__subtf3+0x51c>
   1babe:	2dd89f63          	bne	a7,t4,1bd9c <__subtf3+0x7d8>
   1bac2:	00c6e533          	or	a0,a3,a2
   1bac6:	30050f63          	beqz	a0,1bde4 <__subtf3+0x820>
   1baca:	0326d713          	srli	a4,a3,0x32
   1bace:	00174713          	xori	a4,a4,1
   1bad2:	8b05                	andi	a4,a4,1
   1bad4:	0712                	slli	a4,a4,0x4
   1bad6:	87b6                	mv	a5,a3
   1bad8:	8532                	mv	a0,a2
   1bada:	8446                	mv	s0,a7
   1badc:	891a                	mv	s2,t1
   1bade:	b171                	j	1b76a <__subtf3+0x1a6>
   1bae0:	fff74713          	not	a4,a4
   1bae4:	2701                	sext.w	a4,a4
   1bae6:	eb19                	bnez	a4,1bafc <__subtf3+0x538>
   1bae8:	40a60533          	sub	a0,a2,a0
   1baec:	8e9d                	sub	a3,a3,a5
   1baee:	00a63633          	sltu	a2,a2,a0
   1baf2:	40c687b3          	sub	a5,a3,a2
   1baf6:	8446                	mv	s0,a7
   1baf8:	891a                	mv	s2,t1
   1bafa:	bf09                	j	1ba0c <__subtf3+0x448>
   1bafc:	03d89863          	bne	a7,t4,1bb2c <__subtf3+0x568>
   1bb00:	00c6e533          	or	a0,a3,a2
   1bb04:	2e050063          	beqz	a0,1bde4 <__subtf3+0x820>
   1bb08:	0326d713          	srli	a4,a3,0x32
   1bb0c:	00174713          	xori	a4,a4,1
   1bb10:	8b05                	andi	a4,a4,1
   1bb12:	0712                	slli	a4,a4,0x4
   1bb14:	87b6                	mv	a5,a3
   1bb16:	8532                	mv	a0,a2
   1bb18:	8446                	mv	s0,a7
   1bb1a:	891a                	mv	s2,t1
   1bb1c:	b979                	j	1b7ba <__subtf3+0x1f6>
   1bb1e:	ffd881e3          	beq	a7,t4,1bb00 <__subtf3+0x53c>
   1bb22:	4585                	li	a1,1
   1bb24:	15ce                	slli	a1,a1,0x33
   1bb26:	40e0073b          	negw	a4,a4
   1bb2a:	8fcd                	or	a5,a5,a1
   1bb2c:	07400593          	li	a1,116
   1bb30:	06e5c863          	blt	a1,a4,1bba0 <__subtf3+0x5dc>
   1bb34:	03f00593          	li	a1,63
   1bb38:	02e5cd63          	blt	a1,a4,1bb72 <__subtf3+0x5ae>
   1bb3c:	04000813          	li	a6,64
   1bb40:	40e8083b          	subw	a6,a6,a4
   1bb44:	010795b3          	sll	a1,a5,a6
   1bb48:	00e55e33          	srl	t3,a0,a4
   1bb4c:	01051833          	sll	a6,a0,a6
   1bb50:	01c5e5b3          	or	a1,a1,t3
   1bb54:	01003833          	snez	a6,a6
   1bb58:	0105e5b3          	or	a1,a1,a6
   1bb5c:	00e7d733          	srl	a4,a5,a4
   1bb60:	40b60533          	sub	a0,a2,a1
   1bb64:	40e68733          	sub	a4,a3,a4
   1bb68:	00a63633          	sltu	a2,a2,a0
   1bb6c:	40c707b3          	sub	a5,a4,a2
   1bb70:	b759                	j	1baf6 <__subtf3+0x532>
   1bb72:	fc07059b          	addiw	a1,a4,-64
   1bb76:	04000e13          	li	t3,64
   1bb7a:	00b7d5b3          	srl	a1,a5,a1
   1bb7e:	4801                	li	a6,0
   1bb80:	01c70863          	beq	a4,t3,1bb90 <__subtf3+0x5cc>
   1bb84:	08000813          	li	a6,128
   1bb88:	40e8083b          	subw	a6,a6,a4
   1bb8c:	01079833          	sll	a6,a5,a6
   1bb90:	00a86833          	or	a6,a6,a0
   1bb94:	01003833          	snez	a6,a6
   1bb98:	0105e5b3          	or	a1,a1,a6
   1bb9c:	4701                	li	a4,0
   1bb9e:	b7c9                	j	1bb60 <__subtf3+0x59c>
   1bba0:	00a7e5b3          	or	a1,a5,a0
   1bba4:	00b035b3          	snez	a1,a1
   1bba8:	bfd5                	j	1bb9c <__subtf3+0x5d8>
   1bbaa:	00180f13          	addi	t5,a6,1
   1bbae:	ffee0713          	addi	a4,t3,-2
   1bbb2:	00ef7733          	and	a4,t5,a4
   1bbb6:	ef65                	bnez	a4,1bcae <__subtf3+0x6ea>
   1bbb8:	00c6ee33          	or	t3,a3,a2
   1bbbc:	00a7ef33          	or	t5,a5,a0
   1bbc0:	0a081363          	bnez	a6,1bc66 <__subtf3+0x6a2>
   1bbc4:	040f1e63          	bnez	t5,1bc20 <__subtf3+0x65c>
   1bbc8:	1e0e1263          	bnez	t3,1bdac <__subtf3+0x7e8>
   1bbcc:	ffe48913          	addi	s2,s1,-2
   1bbd0:	00193913          	seqz	s2,s2
   1bbd4:	4781                	li	a5,0
   1bbd6:	4501                	li	a0,0
   1bbd8:	00f56733          	or	a4,a0,a5
   1bbdc:	22070063          	beqz	a4,1bdfc <__subtf3+0x838>
   1bbe0:	00151693          	slli	a3,a0,0x1
   1bbe4:	03f55713          	srli	a4,a0,0x3f
   1bbe8:	00179593          	slli	a1,a5,0x1
   1bbec:	0076f613          	andi	a2,a3,7
   1bbf0:	95ba                	add	a1,a1,a4
   1bbf2:	4701                	li	a4,0
   1bbf4:	c205                	beqz	a2,1bc14 <__subtf3+0x650>
   1bbf6:	4709                	li	a4,2
   1bbf8:	1ce48b63          	beq	s1,a4,1bdce <__subtf3+0x80a>
   1bbfc:	470d                	li	a4,3
   1bbfe:	1ae48d63          	beq	s1,a4,1bdb8 <__subtf3+0x7f4>
   1bc02:	4705                	li	a4,1
   1bc04:	e881                	bnez	s1,1bc14 <__subtf3+0x650>
   1bc06:	00f6f613          	andi	a2,a3,15
   1bc0a:	4811                	li	a6,4
   1bc0c:	ffc6b693          	sltiu	a3,a3,-4
   1bc10:	1b061963          	bne	a2,a6,1bdc2 <__subtf3+0x7fe>
   1bc14:	91d1                	srli	a1,a1,0x34
   1bc16:	0015c593          	xori	a1,a1,1
   1bc1a:	8985                	andi	a1,a1,1
   1bc1c:	4401                	li	s0,0
   1bc1e:	b6b1                	j	1b76a <__subtf3+0x1a6>
   1bc20:	fa0e0ce3          	beqz	t3,1bbd8 <__subtf3+0x614>
   1bc24:	40c505b3          	sub	a1,a0,a2
   1bc28:	00b53833          	sltu	a6,a0,a1
   1bc2c:	40d78733          	sub	a4,a5,a3
   1bc30:	41070733          	sub	a4,a4,a6
   1bc34:	03375813          	srli	a6,a4,0x33
   1bc38:	00187813          	andi	a6,a6,1
   1bc3c:	00080b63          	beqz	a6,1bc52 <__subtf3+0x68e>
   1bc40:	40a60533          	sub	a0,a2,a0
   1bc44:	8e9d                	sub	a3,a3,a5
   1bc46:	00a63633          	sltu	a2,a2,a0
   1bc4a:	40c687b3          	sub	a5,a3,a2
   1bc4e:	891a                	mv	s2,t1
   1bc50:	b761                	j	1bbd8 <__subtf3+0x614>
   1bc52:	00e5e533          	or	a0,a1,a4
   1bc56:	14051e63          	bnez	a0,1bdb2 <__subtf3+0x7ee>
   1bc5a:	ffe48913          	addi	s2,s1,-2
   1bc5e:	00193913          	seqz	s2,s2
   1bc62:	4781                	li	a5,0
   1bc64:	bf95                	j	1bbd8 <__subtf3+0x614>
   1bc66:	03d81663          	bne	a6,t4,1bc92 <__subtf3+0x6ce>
   1bc6a:	1c0f0963          	beqz	t5,1be3c <__subtf3+0x878>
   1bc6e:	0327d713          	srli	a4,a5,0x32
   1bc72:	00174713          	xori	a4,a4,1
   1bc76:	8b05                	andi	a4,a4,1
   1bc78:	0712                	slli	a4,a4,0x4
   1bc7a:	03089763          	bne	a7,a6,1bca8 <__subtf3+0x6e4>
   1bc7e:	000e0d63          	beqz	t3,1bc98 <__subtf3+0x6d4>
   1bc82:	0326d813          	srli	a6,a3,0x32
   1bc86:	00187813          	andi	a6,a6,1
   1bc8a:	00081763          	bnez	a6,1bc98 <__subtf3+0x6d4>
   1bc8e:	4741                	li	a4,16
   1bc90:	a021                	j	1bc98 <__subtf3+0x6d4>
   1bc92:	4701                	li	a4,0
   1bc94:	ffd885e3          	beq	a7,t4,1bc7e <__subtf3+0x6ba>
   1bc98:	000f1863          	bnez	t5,1bca8 <__subtf3+0x6e4>
   1bc9c:	140e0863          	beqz	t3,1bdec <__subtf3+0x828>
   1bca0:	87b6                	mv	a5,a3
   1bca2:	8532                	mv	a0,a2
   1bca4:	891a                	mv	s2,t1
   1bca6:	b125                	j	1b8ce <__subtf3+0x30a>
   1bca8:	c20e03e3          	beqz	t3,1b8ce <__subtf3+0x30a>
   1bcac:	b135                	j	1b8d8 <__subtf3+0x314>
   1bcae:	40c50a33          	sub	s4,a0,a2
   1bcb2:	01453733          	sltu	a4,a0,s4
   1bcb6:	40d789b3          	sub	s3,a5,a3
   1bcba:	40e989b3          	sub	s3,s3,a4
   1bcbe:	0339d713          	srli	a4,s3,0x33
   1bcc2:	8b05                	andi	a4,a4,1
   1bcc4:	cf25                	beqz	a4,1bd3c <__subtf3+0x778>
   1bcc6:	40a60a33          	sub	s4,a2,a0
   1bcca:	40f689b3          	sub	s3,a3,a5
   1bcce:	01463633          	sltu	a2,a2,s4
   1bcd2:	40c989b3          	sub	s3,s3,a2
   1bcd6:	891a                	mv	s2,t1
   1bcd8:	06098663          	beqz	s3,1bd44 <__subtf3+0x780>
   1bcdc:	854e                	mv	a0,s3
   1bcde:	53a000ef          	jal	ra,1c218 <__clzdi2>
   1bce2:	2501                	sext.w	a0,a0
   1bce4:	ff45069b          	addiw	a3,a0,-12
   1bce8:	03f00793          	li	a5,63
   1bcec:	8736                	mv	a4,a3
   1bcee:	06d7c163          	blt	a5,a3,1bd50 <__subtf3+0x78c>
   1bcf2:	04000793          	li	a5,64
   1bcf6:	9f95                	subw	a5,a5,a3
   1bcf8:	00d999b3          	sll	s3,s3,a3
   1bcfc:	00fa57b3          	srl	a5,s4,a5
   1bd00:	0137e7b3          	or	a5,a5,s3
   1bd04:	00da1533          	sll	a0,s4,a3
   1bd08:	0686ce63          	blt	a3,s0,1bd84 <__subtf3+0x7c0>
   1bd0c:	9f01                	subw	a4,a4,s0
   1bd0e:	0017061b          	addiw	a2,a4,1
   1bd12:	03f00693          	li	a3,63
   1bd16:	04c6c363          	blt	a3,a2,1bd5c <__subtf3+0x798>
   1bd1a:	04000713          	li	a4,64
   1bd1e:	9f11                	subw	a4,a4,a2
   1bd20:	00e796b3          	sll	a3,a5,a4
   1bd24:	00c555b3          	srl	a1,a0,a2
   1bd28:	00e51733          	sll	a4,a0,a4
   1bd2c:	8ecd                	or	a3,a3,a1
   1bd2e:	00e03733          	snez	a4,a4
   1bd32:	00e6e533          	or	a0,a3,a4
   1bd36:	00c7d7b3          	srl	a5,a5,a2
   1bd3a:	bd79                	j	1bbd8 <__subtf3+0x614>
   1bd3c:	013a6533          	or	a0,s4,s3
   1bd40:	fd41                	bnez	a0,1bcd8 <__subtf3+0x714>
   1bd42:	bf21                	j	1bc5a <__subtf3+0x696>
   1bd44:	8552                	mv	a0,s4
   1bd46:	4d2000ef          	jal	ra,1c218 <__clzdi2>
   1bd4a:	0405051b          	addiw	a0,a0,64
   1bd4e:	bf59                	j	1bce4 <__subtf3+0x720>
   1bd50:	fb45079b          	addiw	a5,a0,-76
   1bd54:	00fa17b3          	sll	a5,s4,a5
   1bd58:	4501                	li	a0,0
   1bd5a:	b77d                	j	1bd08 <__subtf3+0x744>
   1bd5c:	fc17071b          	addiw	a4,a4,-63
   1bd60:	04000813          	li	a6,64
   1bd64:	00e7d6b3          	srl	a3,a5,a4
   1bd68:	4701                	li	a4,0
   1bd6a:	01060763          	beq	a2,a6,1bd78 <__subtf3+0x7b4>
   1bd6e:	08000713          	li	a4,128
   1bd72:	9f11                	subw	a4,a4,a2
   1bd74:	00e79733          	sll	a4,a5,a4
   1bd78:	8f49                	or	a4,a4,a0
   1bd7a:	00e03733          	snez	a4,a4
   1bd7e:	00e6e533          	or	a0,a3,a4
   1bd82:	b5c5                	j	1bc62 <__subtf3+0x69e>
   1bd84:	577d                	li	a4,-1
   1bd86:	174e                	slli	a4,a4,0x33
   1bd88:	177d                	addi	a4,a4,-1
   1bd8a:	8c15                	sub	s0,s0,a3
   1bd8c:	8ff9                	and	a5,a5,a4
   1bd8e:	e40405e3          	beqz	s0,1bbd8 <__subtf3+0x614>
   1bd92:	b229                	j	1b69c <__subtf3+0xd8>
   1bd94:	87b6                	mv	a5,a3
   1bd96:	8532                	mv	a0,a2
   1bd98:	8446                	mv	s0,a7
   1bd9a:	bfd5                	j	1bd8e <__subtf3+0x7ca>
   1bd9c:	87b6                	mv	a5,a3
   1bd9e:	8532                	mv	a0,a2
   1bda0:	8446                	mv	s0,a7
   1bda2:	891a                	mv	s2,t1
   1bda4:	b7ed                	j	1bd8e <__subtf3+0x7ca>
   1bda6:	87b6                	mv	a5,a3
   1bda8:	8532                	mv	a0,a2
   1bdaa:	b53d                	j	1bbd8 <__subtf3+0x614>
   1bdac:	87b6                	mv	a5,a3
   1bdae:	8532                	mv	a0,a2
   1bdb0:	bd79                	j	1bc4e <__subtf3+0x68a>
   1bdb2:	87ba                	mv	a5,a4
   1bdb4:	852e                	mv	a0,a1
   1bdb6:	b50d                	j	1bbd8 <__subtf3+0x614>
   1bdb8:	4705                	li	a4,1
   1bdba:	e4091de3          	bnez	s2,1bc14 <__subtf3+0x650>
   1bdbe:	ff86b693          	sltiu	a3,a3,-8
   1bdc2:	0016c693          	xori	a3,a3,1
   1bdc6:	1682                	slli	a3,a3,0x20
   1bdc8:	9281                	srli	a3,a3,0x20
   1bdca:	95b6                	add	a1,a1,a3
   1bdcc:	b5a1                	j	1bc14 <__subtf3+0x650>
   1bdce:	4705                	li	a4,1
   1bdd0:	e40902e3          	beqz	s2,1bc14 <__subtf3+0x650>
   1bdd4:	b7ed                	j	1bdbe <__subtf3+0x7fa>
   1bdd6:	4781                	li	a5,0
   1bdd8:	8446                	mv	s0,a7
   1bdda:	4701                	li	a4,0
   1bddc:	b621                	j	1b8e4 <__subtf3+0x320>
   1bdde:	4781                	li	a5,0
   1bde0:	4501                	li	a0,0
   1bde2:	bfe5                	j	1bdda <__subtf3+0x816>
   1bde4:	4781                	li	a5,0
   1bde6:	8446                	mv	s0,a7
   1bde8:	891a                	mv	s2,t1
   1bdea:	bfc5                	j	1bdda <__subtf3+0x816>
   1bdec:	4785                	li	a5,1
   1bdee:	6421                	lui	s0,0x8
   1bdf0:	4501                	li	a0,0
   1bdf2:	4901                	li	s2,0
   1bdf4:	17ca                	slli	a5,a5,0x32
   1bdf6:	147d                	addi	s0,s0,-1
   1bdf8:	4741                	li	a4,16
   1bdfa:	b4ed                	j	1b8e4 <__subtf3+0x320>
   1bdfc:	4781                	li	a5,0
   1bdfe:	4501                	li	a0,0
   1be00:	4401                	li	s0,0
   1be02:	bfe1                	j	1bdda <__subtf3+0x816>
   1be04:	ba091be3          	bnez	s2,1b9ba <__subtf3+0x3f6>
   1be08:	00850693          	addi	a3,a0,8
   1be0c:	b65d                	j	1b9b2 <__subtf3+0x3ee>
   1be0e:	ba0906e3          	beqz	s2,1b9ba <__subtf3+0x3f6>
   1be12:	bfdd                	j	1be08 <__subtf3+0x844>
   1be14:	4501                	li	a0,0
   1be16:	cc99                	beqz	s1,1be34 <__subtf3+0x870>
   1be18:	478d                	li	a5,3
   1be1a:	00f49863          	bne	s1,a5,1be2a <__subtf3+0x866>
   1be1e:	00090b63          	beqz	s2,1be34 <__subtf3+0x870>
   1be22:	557d                	li	a0,-1
   1be24:	ffe68413          	addi	s0,a3,-2 # 7ffe <register_fini-0x80b2>
   1be28:	a031                	j	1be34 <__subtf3+0x870>
   1be2a:	4789                	li	a5,2
   1be2c:	fef49be3          	bne	s1,a5,1be22 <__subtf3+0x85e>
   1be30:	fe0909e3          	beqz	s2,1be22 <__subtf3+0x85e>
   1be34:	00576713          	ori	a4,a4,5
   1be38:	87aa                	mv	a5,a0
   1be3a:	b4d9                	j	1b900 <__subtf3+0x33c>
   1be3c:	4701                	li	a4,0
   1be3e:	e5089fe3          	bne	a7,a6,1bc9c <__subtf3+0x6d8>
   1be42:	bd35                	j	1bc7e <__subtf3+0x6ba>
   1be44:	4701                	li	a4,0
   1be46:	a90892e3          	bne	a7,a6,1b8ca <__subtf3+0x306>
   1be4a:	bcb9                	j	1b8a8 <__subtf3+0x2e4>

000000000001be4c <__fixtfsi>:
   1be4c:	862a                	mv	a2,a0
   1be4e:	002027f3          	frrm	a5
   1be52:	6811                	lui	a6,0x4
   1be54:	00159693          	slli	a3,a1,0x1
   1be58:	01059793          	slli	a5,a1,0x10
   1be5c:	92c5                	srli	a3,a3,0x31
   1be5e:	ffe80713          	addi	a4,a6,-2 # 3ffe <register_fini-0xc0b2>
   1be62:	83c1                	srli	a5,a5,0x10
   1be64:	91fd                	srli	a1,a1,0x3f
   1be66:	00d74863          	blt	a4,a3,1be76 <__fixtfsi+0x2a>
   1be6a:	e6a5                	bnez	a3,1bed2 <__fixtfsi+0x86>
   1be6c:	00f56633          	or	a2,a0,a5
   1be70:	4501                	li	a0,0
   1be72:	e61d                	bnez	a2,1bea0 <__fixtfsi+0x54>
   1be74:	8082                	ret
   1be76:	01d80713          	addi	a4,a6,29
   1be7a:	02d75563          	bge	a4,a3,1bea4 <__fixtfsi+0x58>
   1be7e:	80000737          	lui	a4,0x80000
   1be82:	fff74713          	not	a4,a4
   1be86:	00b7053b          	addw	a0,a4,a1
   1be8a:	c5b1                	beqz	a1,1bed6 <__fixtfsi+0x8a>
   1be8c:	0879                	addi	a6,a6,30
   1be8e:	4741                	li	a4,16
   1be90:	05069463          	bne	a3,a6,1bed8 <__fixtfsi+0x8c>
   1be94:	0117d693          	srli	a3,a5,0x11
   1be98:	e2a1                	bnez	a3,1bed8 <__fixtfsi+0x8c>
   1be9a:	17be                	slli	a5,a5,0x2f
   1be9c:	8fd1                	or	a5,a5,a2
   1be9e:	cb8d                	beqz	a5,1bed0 <__fixtfsi+0x84>
   1bea0:	4705                	li	a4,1
   1bea2:	a81d                	j	1bed8 <__fixtfsi+0x8c>
   1bea4:	4705                	li	a4,1
   1bea6:	1742                	slli	a4,a4,0x30
   1bea8:	8fd9                	or	a5,a5,a4
   1beaa:	6611                	lui	a2,0x4
   1beac:	7771                	lui	a4,0xffffc
   1beae:	2745                	addiw	a4,a4,17
   1beb0:	02f6061b          	addiw	a2,a2,47
   1beb4:	9f35                	addw	a4,a4,a3
   1beb6:	40d606bb          	subw	a3,a2,a3
   1beba:	00e79733          	sll	a4,a5,a4
   1bebe:	00d7d7b3          	srl	a5,a5,a3
   1bec2:	8f49                	or	a4,a4,a0
   1bec4:	0007851b          	sext.w	a0,a5
   1bec8:	c199                	beqz	a1,1bece <__fixtfsi+0x82>
   1beca:	40a0053b          	negw	a0,a0
   1bece:	fb69                	bnez	a4,1bea0 <__fixtfsi+0x54>
   1bed0:	8082                	ret
   1bed2:	4501                	li	a0,0
   1bed4:	b7f1                	j	1bea0 <__fixtfsi+0x54>
   1bed6:	4741                	li	a4,16
   1bed8:	00172073          	csrs	fflags,a4
   1bedc:	bfd5                	j	1bed0 <__fixtfsi+0x84>

000000000001bede <__floatsitf>:
   1bede:	1101                	addi	sp,sp,-32
   1bee0:	ec06                	sd	ra,24(sp)
   1bee2:	e822                	sd	s0,16(sp)
   1bee4:	e426                	sd	s1,8(sp)
   1bee6:	c139                	beqz	a0,1bf2c <__floatsitf+0x4e>
   1bee8:	0005079b          	sext.w	a5,a0
   1beec:	03f55493          	srli	s1,a0,0x3f
   1bef0:	00055463          	bgez	a0,1bef8 <__floatsitf+0x1a>
   1bef4:	40f007bb          	negw	a5,a5
   1bef8:	02079413          	slli	s0,a5,0x20
   1befc:	9001                	srli	s0,s0,0x20
   1befe:	8522                	mv	a0,s0
   1bf00:	318000ef          	jal	ra,1c218 <__clzdi2>
   1bf04:	6591                	lui	a1,0x4
   1bf06:	03e5859b          	addiw	a1,a1,62
   1bf0a:	9d89                	subw	a1,a1,a0
   1bf0c:	3545                	addiw	a0,a0,-15
   1bf0e:	00a417b3          	sll	a5,s0,a0
   1bf12:	60e2                	ld	ra,24(sp)
   1bf14:	6442                	ld	s0,16(sp)
   1bf16:	00f4949b          	slliw	s1,s1,0xf
   1bf1a:	8dc5                	or	a1,a1,s1
   1bf1c:	07c2                	slli	a5,a5,0x10
   1bf1e:	15c2                	slli	a1,a1,0x30
   1bf20:	83c1                	srli	a5,a5,0x10
   1bf22:	64a2                	ld	s1,8(sp)
   1bf24:	4501                	li	a0,0
   1bf26:	8ddd                	or	a1,a1,a5
   1bf28:	6105                	addi	sp,sp,32
   1bf2a:	8082                	ret
   1bf2c:	4781                	li	a5,0
   1bf2e:	4581                	li	a1,0
   1bf30:	4481                	li	s1,0
   1bf32:	b7c5                	j	1bf12 <__floatsitf+0x34>

000000000001bf34 <__extenddftf2>:
   1bf34:	1101                	addi	sp,sp,-32
   1bf36:	e20507d3          	fmv.x.d	a5,fa0
   1bf3a:	ec06                	sd	ra,24(sp)
   1bf3c:	e822                	sd	s0,16(sp)
   1bf3e:	e426                	sd	s1,8(sp)
   1bf40:	00202773          	frrm	a4
   1bf44:	0347d513          	srli	a0,a5,0x34
   1bf48:	7ff57513          	andi	a0,a0,2047
   1bf4c:	00c79413          	slli	s0,a5,0xc
   1bf50:	03f7d493          	srli	s1,a5,0x3f
   1bf54:	00150793          	addi	a5,a0,1
   1bf58:	7fe7f793          	andi	a5,a5,2046
   1bf5c:	8031                	srli	s0,s0,0xc
   1bf5e:	cb91                	beqz	a5,1bf72 <__extenddftf2+0x3e>
   1bf60:	6791                	lui	a5,0x4
   1bf62:	c0078793          	addi	a5,a5,-1024 # 3c00 <register_fini-0xc4b0>
   1bf66:	953e                	add	a0,a0,a5
   1bf68:	00445793          	srli	a5,s0,0x4
   1bf6c:	1472                	slli	s0,s0,0x3c
   1bf6e:	4701                	li	a4,0
   1bf70:	a8b9                	j	1bfce <__extenddftf2+0x9a>
   1bf72:	ed1d                	bnez	a0,1bfb0 <__extenddftf2+0x7c>
   1bf74:	4781                	li	a5,0
   1bf76:	dc65                	beqz	s0,1bf6e <__extenddftf2+0x3a>
   1bf78:	8522                	mv	a0,s0
   1bf7a:	29e000ef          	jal	ra,1c218 <__clzdi2>
   1bf7e:	0005071b          	sext.w	a4,a0
   1bf82:	47b9                	li	a5,14
   1bf84:	02e7c063          	blt	a5,a4,1bfa4 <__extenddftf2+0x70>
   1bf88:	47bd                	li	a5,15
   1bf8a:	9f89                	subw	a5,a5,a0
   1bf8c:	0315071b          	addiw	a4,a0,49
   1bf90:	00f457b3          	srl	a5,s0,a5
   1bf94:	00e41433          	sll	s0,s0,a4
   1bf98:	6711                	lui	a4,0x4
   1bf9a:	c0c7071b          	addiw	a4,a4,-1012
   1bf9e:	40a7053b          	subw	a0,a4,a0
   1bfa2:	b7f1                	j	1bf6e <__extenddftf2+0x3a>
   1bfa4:	ff15079b          	addiw	a5,a0,-15
   1bfa8:	00f417b3          	sll	a5,s0,a5
   1bfac:	4401                	li	s0,0
   1bfae:	b7ed                	j	1bf98 <__extenddftf2+0x64>
   1bfb0:	c021                	beqz	s0,1bff0 <__extenddftf2+0xbc>
   1bfb2:	03345713          	srli	a4,s0,0x33
   1bfb6:	00174713          	xori	a4,a4,1
   1bfba:	4685                	li	a3,1
   1bfbc:	00445793          	srli	a5,s0,0x4
   1bfc0:	8b05                	andi	a4,a4,1
   1bfc2:	16be                	slli	a3,a3,0x2f
   1bfc4:	6521                	lui	a0,0x8
   1bfc6:	0712                	slli	a4,a4,0x4
   1bfc8:	8fd5                	or	a5,a5,a3
   1bfca:	1472                	slli	s0,s0,0x3c
   1bfcc:	157d                	addi	a0,a0,-1
   1bfce:	01079593          	slli	a1,a5,0x10
   1bfd2:	00f4979b          	slliw	a5,s1,0xf
   1bfd6:	8d5d                	or	a0,a0,a5
   1bfd8:	1542                	slli	a0,a0,0x30
   1bfda:	81c1                	srli	a1,a1,0x10
   1bfdc:	8dc9                	or	a1,a1,a0
   1bfde:	c319                	beqz	a4,1bfe4 <__extenddftf2+0xb0>
   1bfe0:	00172073          	csrs	fflags,a4
   1bfe4:	60e2                	ld	ra,24(sp)
   1bfe6:	8522                	mv	a0,s0
   1bfe8:	6442                	ld	s0,16(sp)
   1bfea:	64a2                	ld	s1,8(sp)
   1bfec:	6105                	addi	sp,sp,32
   1bfee:	8082                	ret
   1bff0:	6521                	lui	a0,0x8
   1bff2:	4781                	li	a5,0
   1bff4:	157d                	addi	a0,a0,-1
   1bff6:	bfa5                	j	1bf6e <__extenddftf2+0x3a>

000000000001bff8 <__trunctfdf2>:
   1bff8:	00202673          	frrm	a2
   1bffc:	68a1                	lui	a7,0x8
   1bffe:	0305d713          	srli	a4,a1,0x30
   1c002:	fff88e13          	addi	t3,a7,-1 # 7fff <register_fini-0x80b1>
   1c006:	01c77833          	and	a6,a4,t3
   1c00a:	03f5d693          	srli	a3,a1,0x3f
   1c00e:	00180793          	addi	a5,a6,1
   1c012:	05c2                	slli	a1,a1,0x10
   1c014:	18f9                	addi	a7,a7,-2
   1c016:	81b5                	srli	a1,a1,0xd
   1c018:	03d55713          	srli	a4,a0,0x3d
   1c01c:	0117f7b3          	and	a5,a5,a7
   1c020:	2601                	sext.w	a2,a2
   1c022:	8f4d                	or	a4,a4,a1
   1c024:	00351313          	slli	t1,a0,0x3
   1c028:	16078863          	beqz	a5,1c198 <__trunctfdf2+0x1a0>
   1c02c:	77f1                	lui	a5,0xffffc
   1c02e:	40078793          	addi	a5,a5,1024 # ffffffffffffc400 <__BSS_END__+0xfffffffffffdd080>
   1c032:	983e                	add	a6,a6,a5
   1c034:	7fe00793          	li	a5,2046
   1c038:	0907db63          	bge	a5,a6,1c0ce <__trunctfdf2+0xd6>
   1c03c:	c229                	beqz	a2,1c07e <__trunctfdf2+0x86>
   1c03e:	478d                	li	a5,3
   1c040:	02f61b63          	bne	a2,a5,1c076 <__trunctfdf2+0x7e>
   1c044:	ce8d                	beqz	a3,1c07e <__trunctfdf2+0x86>
   1c046:	57fd                	li	a5,-1
   1c048:	7fe00813          	li	a6,2046
   1c04c:	4701                	li	a4,0
   1c04e:	4595                	li	a1,5
   1c050:	4509                	li	a0,2
   1c052:	0015e593          	ori	a1,a1,1
   1c056:	18a60d63          	beq	a2,a0,1c1f0 <__trunctfdf2+0x1f8>
   1c05a:	450d                	li	a0,3
   1c05c:	18a60663          	beq	a2,a0,1c1e8 <__trunctfdf2+0x1f0>
   1c060:	e619                	bnez	a2,1c06e <__trunctfdf2+0x76>
   1c062:	00f7f513          	andi	a0,a5,15
   1c066:	4891                	li	a7,4
   1c068:	01150363          	beq	a0,a7,1c06e <__trunctfdf2+0x76>
   1c06c:	0791                	addi	a5,a5,4
   1c06e:	cf01                	beqz	a4,1c086 <__trunctfdf2+0x8e>
   1c070:	0025e593          	ori	a1,a1,2
   1c074:	a809                	j	1c086 <__trunctfdf2+0x8e>
   1c076:	4789                	li	a5,2
   1c078:	fcf617e3          	bne	a2,a5,1c046 <__trunctfdf2+0x4e>
   1c07c:	d6e9                	beqz	a3,1c046 <__trunctfdf2+0x4e>
   1c07e:	4781                	li	a5,0
   1c080:	7ff00813          	li	a6,2047
   1c084:	4595                	li	a1,5
   1c086:	0377d713          	srli	a4,a5,0x37
   1c08a:	8b05                	andi	a4,a4,1
   1c08c:	cb11                	beqz	a4,1c0a0 <__trunctfdf2+0xa8>
   1c08e:	0805                	addi	a6,a6,1
   1c090:	7ff00713          	li	a4,2047
   1c094:	16e80163          	beq	a6,a4,1c1f6 <__trunctfdf2+0x1fe>
   1c098:	567d                	li	a2,-1
   1c09a:	165e                	slli	a2,a2,0x37
   1c09c:	167d                	addi	a2,a2,-1
   1c09e:	8ff1                	and	a5,a5,a2
   1c0a0:	7ff00713          	li	a4,2047
   1c0a4:	838d                	srli	a5,a5,0x3
   1c0a6:	00e81663          	bne	a6,a4,1c0b2 <__trunctfdf2+0xba>
   1c0aa:	c781                	beqz	a5,1c0b2 <__trunctfdf2+0xba>
   1c0ac:	4785                	li	a5,1
   1c0ae:	17ce                	slli	a5,a5,0x33
   1c0b0:	4681                	li	a3,0
   1c0b2:	7ff87713          	andi	a4,a6,2047
   1c0b6:	07b2                	slli	a5,a5,0xc
   1c0b8:	1752                	slli	a4,a4,0x34
   1c0ba:	83b1                	srli	a5,a5,0xc
   1c0bc:	8fd9                	or	a5,a5,a4
   1c0be:	16fe                	slli	a3,a3,0x3f
   1c0c0:	8fd5                	or	a5,a5,a3
   1c0c2:	c199                	beqz	a1,1c0c8 <__trunctfdf2+0xd0>
   1c0c4:	0015a073          	csrs	fflags,a1
   1c0c8:	f2078553          	fmv.d.x	fa0,a5
   1c0cc:	8082                	ret
   1c0ce:	0b004063          	bgtz	a6,1c16e <__trunctfdf2+0x176>
   1c0d2:	fcc00593          	li	a1,-52
   1c0d6:	4785                	li	a5,1
   1c0d8:	02b84e63          	blt	a6,a1,1c114 <__trunctfdf2+0x11c>
   1c0dc:	17ce                	slli	a5,a5,0x33
   1c0de:	03d00893          	li	a7,61
   1c0e2:	8f5d                	or	a4,a4,a5
   1c0e4:	410888b3          	sub	a7,a7,a6
   1c0e8:	03f00793          	li	a5,63
   1c0ec:	0008051b          	sext.w	a0,a6
   1c0f0:	0517cc63          	blt	a5,a7,1c148 <__trunctfdf2+0x150>
   1c0f4:	03d00793          	li	a5,61
   1c0f8:	0035059b          	addiw	a1,a0,3
   1c0fc:	9f89                	subw	a5,a5,a0
   1c0fe:	00f357b3          	srl	a5,t1,a5
   1c102:	00b31333          	sll	t1,t1,a1
   1c106:	00603333          	snez	t1,t1
   1c10a:	0067e7b3          	or	a5,a5,t1
   1c10e:	00b71733          	sll	a4,a4,a1
   1c112:	8fd9                	or	a5,a5,a4
   1c114:	00179713          	slli	a4,a5,0x1
   1c118:	00777513          	andi	a0,a4,7
   1c11c:	4581                	li	a1,0
   1c11e:	cd19                	beqz	a0,1c13c <__trunctfdf2+0x144>
   1c120:	4589                	li	a1,2
   1c122:	0ab60d63          	beq	a2,a1,1c1dc <__trunctfdf2+0x1e4>
   1c126:	458d                	li	a1,3
   1c128:	0ab60663          	beq	a2,a1,1c1d4 <__trunctfdf2+0x1dc>
   1c12c:	4585                	li	a1,1
   1c12e:	e619                	bnez	a2,1c13c <__trunctfdf2+0x144>
   1c130:	00f77513          	andi	a0,a4,15
   1c134:	4811                	li	a6,4
   1c136:	01050363          	beq	a0,a6,1c13c <__trunctfdf2+0x144>
   1c13a:	0711                	addi	a4,a4,4
   1c13c:	9361                	srli	a4,a4,0x38
   1c13e:	00174713          	xori	a4,a4,1
   1c142:	8b05                	andi	a4,a4,1
   1c144:	4801                	li	a6,0
   1c146:	a081                	j	1c186 <__trunctfdf2+0x18e>
   1c148:	57f5                	li	a5,-3
   1c14a:	9f89                	subw	a5,a5,a0
   1c14c:	04000813          	li	a6,64
   1c150:	00f757b3          	srl	a5,a4,a5
   1c154:	4581                	li	a1,0
   1c156:	01088663          	beq	a7,a6,1c162 <__trunctfdf2+0x16a>
   1c15a:	0435051b          	addiw	a0,a0,67
   1c15e:	00a715b3          	sll	a1,a4,a0
   1c162:	0065e5b3          	or	a1,a1,t1
   1c166:	00b035b3          	snez	a1,a1
   1c16a:	8fcd                	or	a5,a5,a1
   1c16c:	b765                	j	1c114 <__trunctfdf2+0x11c>
   1c16e:	00751793          	slli	a5,a0,0x7
   1c172:	00f037b3          	snez	a5,a5
   1c176:	03c35313          	srli	t1,t1,0x3c
   1c17a:	0712                	slli	a4,a4,0x4
   1c17c:	0067e7b3          	or	a5,a5,t1
   1c180:	8fd9                	or	a5,a5,a4
   1c182:	4581                	li	a1,0
   1c184:	4701                	li	a4,0
   1c186:	0077f513          	andi	a0,a5,7
   1c18a:	ec0513e3          	bnez	a0,1c050 <__trunctfdf2+0x58>
   1c18e:	ee070ce3          	beqz	a4,1c086 <__trunctfdf2+0x8e>
   1c192:	0015f713          	andi	a4,a1,1
   1c196:	bde1                	j	1c06e <__trunctfdf2+0x76>
   1c198:	006767b3          	or	a5,a4,t1
   1c19c:	00081563          	bnez	a6,1c1a6 <__trunctfdf2+0x1ae>
   1c1a0:	eb85                	bnez	a5,1c1d0 <__trunctfdf2+0x1d8>
   1c1a2:	4581                	li	a1,0
   1c1a4:	b5cd                	j	1c086 <__trunctfdf2+0x8e>
   1c1a6:	cf95                	beqz	a5,1c1e2 <__trunctfdf2+0x1ea>
   1c1a8:	4581                	li	a1,0
   1c1aa:	01c81763          	bne	a6,t3,1c1b8 <__trunctfdf2+0x1c0>
   1c1ae:	03275593          	srli	a1,a4,0x32
   1c1b2:	0015c593          	xori	a1,a1,1
   1c1b6:	0592                	slli	a1,a1,0x4
   1c1b8:	03c35793          	srli	a5,t1,0x3c
   1c1bc:	0712                	slli	a4,a4,0x4
   1c1be:	8f5d                	or	a4,a4,a5
   1c1c0:	4785                	li	a5,1
   1c1c2:	9b61                	andi	a4,a4,-8
   1c1c4:	17da                	slli	a5,a5,0x36
   1c1c6:	8fd9                	or	a5,a5,a4
   1c1c8:	7ff00813          	li	a6,2047
   1c1cc:	4701                	li	a4,0
   1c1ce:	bf65                	j	1c186 <__trunctfdf2+0x18e>
   1c1d0:	4785                	li	a5,1
   1c1d2:	b789                	j	1c114 <__trunctfdf2+0x11c>
   1c1d4:	4585                	li	a1,1
   1c1d6:	f2bd                	bnez	a3,1c13c <__trunctfdf2+0x144>
   1c1d8:	0721                	addi	a4,a4,8
   1c1da:	b78d                	j	1c13c <__trunctfdf2+0x144>
   1c1dc:	4585                	li	a1,1
   1c1de:	deb9                	beqz	a3,1c13c <__trunctfdf2+0x144>
   1c1e0:	bfe5                	j	1c1d8 <__trunctfdf2+0x1e0>
   1c1e2:	7ff00813          	li	a6,2047
   1c1e6:	bf75                	j	1c1a2 <__trunctfdf2+0x1aa>
   1c1e8:	e80693e3          	bnez	a3,1c06e <__trunctfdf2+0x76>
   1c1ec:	07a1                	addi	a5,a5,8
   1c1ee:	b541                	j	1c06e <__trunctfdf2+0x76>
   1c1f0:	e6068fe3          	beqz	a3,1c06e <__trunctfdf2+0x76>
   1c1f4:	bfe5                	j	1c1ec <__trunctfdf2+0x1f4>
   1c1f6:	4781                	li	a5,0
   1c1f8:	ce09                	beqz	a2,1c212 <__trunctfdf2+0x21a>
   1c1fa:	470d                	li	a4,3
   1c1fc:	00e61763          	bne	a2,a4,1c20a <__trunctfdf2+0x212>
   1c200:	ca89                	beqz	a3,1c212 <__trunctfdf2+0x21a>
   1c202:	57fd                	li	a5,-1
   1c204:	7fe00813          	li	a6,2046
   1c208:	a029                	j	1c212 <__trunctfdf2+0x21a>
   1c20a:	4709                	li	a4,2
   1c20c:	fee61be3          	bne	a2,a4,1c202 <__trunctfdf2+0x20a>
   1c210:	daed                	beqz	a3,1c202 <__trunctfdf2+0x20a>
   1c212:	0055e593          	ori	a1,a1,5
   1c216:	b569                	j	1c0a0 <__trunctfdf2+0xa8>

000000000001c218 <__clzdi2>:
   1c218:	03800793          	li	a5,56
   1c21c:	00f55733          	srl	a4,a0,a5
   1c220:	0ff77713          	zext.b	a4,a4
   1c224:	e319                	bnez	a4,1c22a <__clzdi2+0x12>
   1c226:	17e1                	addi	a5,a5,-8
   1c228:	fbf5                	bnez	a5,1c21c <__clzdi2+0x4>
   1c22a:	6775                	lui	a4,0x1d
   1c22c:	04000693          	li	a3,64
   1c230:	8e9d                	sub	a3,a3,a5
   1c232:	00f55533          	srl	a0,a0,a5
   1c236:	07870793          	addi	a5,a4,120 # 1d078 <__clz_tab>
   1c23a:	97aa                	add	a5,a5,a0
   1c23c:	0007c503          	lbu	a0,0(a5)
   1c240:	40a6853b          	subw	a0,a3,a0
   1c244:	8082                	ret
