
build/robot.elf:     file format elf32-littlearm

Sections:
Idx Name          Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector   00000188  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text         0000a66c  080001c0  080001c0  000101c0  2**6  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata       000005f8  0800a830  0800a830  0001a830  2**3  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array   00000004  0800ae28  0800ae28  0001ae28  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array   00000004  0800ae2c  0800ae2c  0001ae2c  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data         00000260  20000000  0800ae30  00020000  2**2  CONTENTS, ALLOC, LOAD, DATA
  6 .ccmram       00000000  10000000  10000000  00020260  2**0  CONTENTS
  7 .bss          00015554  20000260  20000260  00020260  2**3  ALLOC
  8 ._user_heap_stack 00000600  200157b4  200157b4  00020260  2**0  ALLOC
  9 .ARM.attributes 00000030  00000000  00000000  00020260  2**0  CONTENTS, READONLY
 10 .comment      0000002b  00000000  00000000  00020290  2**0  CONTENTS, READONLY
 11 .debug_info   00019969  00000000  00000000  000202bb  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_abbrev 000046c7  00000000  00000000  00039c24  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_aranges 00001068  00000000  00000000  0003e2f0  2**3  CONTENTS, READONLY, DEBUGGING
 14 .debug_ranges 00000ee8  00000000  00000000  0003f358  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_line   00007a85  00000000  00000000  00040240  2**0  CONTENTS, READONLY, DEBUGGING
 16 .debug_str    00006a9a  00000000  00000000  00047cc5  2**0  CONTENTS, READONLY, DEBUGGING
 17 .debug_frame  00003de8  00000000  00000000  0004e760  2**2  CONTENTS, READONLY, DEBUGGING
 18 .debug_loc    00006294  00000000  00000000  00052548  2**0  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

080001c0 <deregister_tm_clones>:
 80001c0:	4b04      	ldr	r3, [pc, #16]	; (80001d4 <deregister_tm_clones+0x14>)
 80001c2:	4805      	ldr	r0, [pc, #20]	; (80001d8 <deregister_tm_clones+0x18>)
 80001c4:	1a1b      	subs	r3, r3, r0
 80001c6:	2b06      	cmp	r3, #6
 80001c8:	d902      	bls.n	80001d0 <deregister_tm_clones+0x10>
 80001ca:	4b04      	ldr	r3, [pc, #16]	; (80001dc <deregister_tm_clones+0x1c>)
 80001cc:	b103      	cbz	r3, 80001d0 <deregister_tm_clones+0x10>
 80001ce:	4718      	bx	r3
 80001d0:	4770      	bx	lr
 80001d2:	bf00      	nop
 80001d4:	20000263 	.word	0x20000263
 80001d8:	20000260 	.word	0x20000260
 80001dc:	00000000 	.word	0x00000000

080001e0 <register_tm_clones>:
 80001e0:	4905      	ldr	r1, [pc, #20]	; (80001f8 <register_tm_clones+0x18>)
 80001e2:	4806      	ldr	r0, [pc, #24]	; (80001fc <register_tm_clones+0x1c>)
 80001e4:	1a09      	subs	r1, r1, r0
 80001e6:	1089      	asrs	r1, r1, #2
 80001e8:	eb01 71d1 	add.w	r1, r1, r1, lsr #31
 80001ec:	1049      	asrs	r1, r1, #1
 80001ee:	d002      	beq.n	80001f6 <register_tm_clones+0x16>
 80001f0:	4b03      	ldr	r3, [pc, #12]	; (8000200 <register_tm_clones+0x20>)
 80001f2:	b103      	cbz	r3, 80001f6 <register_tm_clones+0x16>
 80001f4:	4718      	bx	r3
 80001f6:	4770      	bx	lr
 80001f8:	20000260 	.word	0x20000260
 80001fc:	20000260 	.word	0x20000260
 8000200:	00000000 	.word	0x00000000

08000204 <__do_global_dtors_aux>:
 8000204:	b510      	push	{r4, lr}
 8000206:	4c06      	ldr	r4, [pc, #24]	; (8000220 <__do_global_dtors_aux+0x1c>)
 8000208:	7823      	ldrb	r3, [r4, #0]
 800020a:	b943      	cbnz	r3, 800021e <__do_global_dtors_aux+0x1a>
 800020c:	f7ff ffd8 	bl	80001c0 <deregister_tm_clones>
 8000210:	4b04      	ldr	r3, [pc, #16]	; (8000224 <__do_global_dtors_aux+0x20>)
 8000212:	b113      	cbz	r3, 800021a <__do_global_dtors_aux+0x16>
 8000214:	4804      	ldr	r0, [pc, #16]	; (8000228 <__do_global_dtors_aux+0x24>)
 8000216:	f3af 8000 	nop.w
 800021a:	2301      	movs	r3, #1
 800021c:	7023      	strb	r3, [r4, #0]
 800021e:	bd10      	pop	{r4, pc}
 8000220:	20000260 	.word	0x20000260
 8000224:	00000000 	.word	0x00000000
 8000228:	0800a814 	.word	0x0800a814

0800022c <frame_dummy>:
 800022c:	b508      	push	{r3, lr}
 800022e:	4b08      	ldr	r3, [pc, #32]	; (8000250 <frame_dummy+0x24>)
 8000230:	b11b      	cbz	r3, 800023a <frame_dummy+0xe>
 8000232:	4908      	ldr	r1, [pc, #32]	; (8000254 <frame_dummy+0x28>)
 8000234:	4808      	ldr	r0, [pc, #32]	; (8000258 <frame_dummy+0x2c>)
 8000236:	f3af 8000 	nop.w
 800023a:	4808      	ldr	r0, [pc, #32]	; (800025c <frame_dummy+0x30>)
 800023c:	6803      	ldr	r3, [r0, #0]
 800023e:	b913      	cbnz	r3, 8000246 <frame_dummy+0x1a>
 8000240:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000244:	e7cc      	b.n	80001e0 <register_tm_clones>
 8000246:	4b06      	ldr	r3, [pc, #24]	; (8000260 <frame_dummy+0x34>)
 8000248:	2b00      	cmp	r3, #0
 800024a:	d0f9      	beq.n	8000240 <frame_dummy+0x14>
 800024c:	4798      	blx	r3
 800024e:	e7f7      	b.n	8000240 <frame_dummy+0x14>
 8000250:	00000000 	.word	0x00000000
 8000254:	20000264 	.word	0x20000264
 8000258:	0800a814 	.word	0x0800a814
 800025c:	20000260 	.word	0x20000260
 8000260:	00000000 	.word	0x00000000

08000264 <__aeabi_drsub>:
 8000264:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
 8000268:	e002      	b.n	8000270 <__adddf3>
 800026a:	bf00      	nop

0800026c <__aeabi_dsub>:
 800026c:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

08000270 <__adddf3>:
 8000270:	b530      	push	{r4, r5, lr}
 8000272:	ea4f 0441 	mov.w	r4, r1, lsl #1
 8000276:	ea4f 0543 	mov.w	r5, r3, lsl #1
 800027a:	ea94 0f05 	teq	r4, r5
 800027e:	bf08      	it	eq
 8000280:	ea90 0f02 	teqeq	r0, r2
 8000284:	bf1f      	itttt	ne
 8000286:	ea54 0c00 	orrsne.w	ip, r4, r0
 800028a:	ea55 0c02 	orrsne.w	ip, r5, r2
 800028e:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
 8000292:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 8000296:	f000 80e2 	beq.w	800045e <__adddf3+0x1ee>
 800029a:	ea4f 5454 	mov.w	r4, r4, lsr #21
 800029e:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
 80002a2:	bfb8      	it	lt
 80002a4:	426d      	neglt	r5, r5
 80002a6:	dd0c      	ble.n	80002c2 <__adddf3+0x52>
 80002a8:	442c      	add	r4, r5
 80002aa:	ea80 0202 	eor.w	r2, r0, r2
 80002ae:	ea81 0303 	eor.w	r3, r1, r3
 80002b2:	ea82 0000 	eor.w	r0, r2, r0
 80002b6:	ea83 0101 	eor.w	r1, r3, r1
 80002ba:	ea80 0202 	eor.w	r2, r0, r2
 80002be:	ea81 0303 	eor.w	r3, r1, r3
 80002c2:	2d36      	cmp	r5, #54	; 0x36
 80002c4:	bf88      	it	hi
 80002c6:	bd30      	pophi	{r4, r5, pc}
 80002c8:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 80002cc:	ea4f 3101 	mov.w	r1, r1, lsl #12
 80002d0:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
 80002d4:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
 80002d8:	d002      	beq.n	80002e0 <__adddf3+0x70>
 80002da:	4240      	negs	r0, r0
 80002dc:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 80002e0:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
 80002e4:	ea4f 3303 	mov.w	r3, r3, lsl #12
 80002e8:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
 80002ec:	d002      	beq.n	80002f4 <__adddf3+0x84>
 80002ee:	4252      	negs	r2, r2
 80002f0:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 80002f4:	ea94 0f05 	teq	r4, r5
 80002f8:	f000 80a7 	beq.w	800044a <__adddf3+0x1da>
 80002fc:	f1a4 0401 	sub.w	r4, r4, #1
 8000300:	f1d5 0e20 	rsbs	lr, r5, #32
 8000304:	db0d      	blt.n	8000322 <__adddf3+0xb2>
 8000306:	fa02 fc0e 	lsl.w	ip, r2, lr
 800030a:	fa22 f205 	lsr.w	r2, r2, r5
 800030e:	1880      	adds	r0, r0, r2
 8000310:	f141 0100 	adc.w	r1, r1, #0
 8000314:	fa03 f20e 	lsl.w	r2, r3, lr
 8000318:	1880      	adds	r0, r0, r2
 800031a:	fa43 f305 	asr.w	r3, r3, r5
 800031e:	4159      	adcs	r1, r3
 8000320:	e00e      	b.n	8000340 <__adddf3+0xd0>
 8000322:	f1a5 0520 	sub.w	r5, r5, #32
 8000326:	f10e 0e20 	add.w	lr, lr, #32
 800032a:	2a01      	cmp	r2, #1
 800032c:	fa03 fc0e 	lsl.w	ip, r3, lr
 8000330:	bf28      	it	cs
 8000332:	f04c 0c02 	orrcs.w	ip, ip, #2
 8000336:	fa43 f305 	asr.w	r3, r3, r5
 800033a:	18c0      	adds	r0, r0, r3
 800033c:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
 8000340:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8000344:	d507      	bpl.n	8000356 <__adddf3+0xe6>
 8000346:	f04f 0e00 	mov.w	lr, #0
 800034a:	f1dc 0c00 	rsbs	ip, ip, #0
 800034e:	eb7e 0000 	sbcs.w	r0, lr, r0
 8000352:	eb6e 0101 	sbc.w	r1, lr, r1
 8000356:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800035a:	d31b      	bcc.n	8000394 <__adddf3+0x124>
 800035c:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8000360:	d30c      	bcc.n	800037c <__adddf3+0x10c>
 8000362:	0849      	lsrs	r1, r1, #1
 8000364:	ea5f 0030 	movs.w	r0, r0, rrx
 8000368:	ea4f 0c3c 	mov.w	ip, ip, rrx
 800036c:	f104 0401 	add.w	r4, r4, #1
 8000370:	ea4f 5244 	mov.w	r2, r4, lsl #21
 8000374:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
 8000378:	f080 809a 	bcs.w	80004b0 <__adddf3+0x240>
 800037c:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
 8000380:	bf08      	it	eq
 8000382:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 8000386:	f150 0000 	adcs.w	r0, r0, #0
 800038a:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 800038e:	ea41 0105 	orr.w	r1, r1, r5
 8000392:	bd30      	pop	{r4, r5, pc}
 8000394:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
 8000398:	4140      	adcs	r0, r0
 800039a:	eb41 0101 	adc.w	r1, r1, r1
 800039e:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 80003a2:	f1a4 0401 	sub.w	r4, r4, #1
 80003a6:	d1e9      	bne.n	800037c <__adddf3+0x10c>
 80003a8:	f091 0f00 	teq	r1, #0
 80003ac:	bf04      	itt	eq
 80003ae:	4601      	moveq	r1, r0
 80003b0:	2000      	moveq	r0, #0
 80003b2:	fab1 f381 	clz	r3, r1
 80003b6:	bf08      	it	eq
 80003b8:	3320      	addeq	r3, #32
 80003ba:	f1a3 030b 	sub.w	r3, r3, #11
 80003be:	f1b3 0220 	subs.w	r2, r3, #32
 80003c2:	da0c      	bge.n	80003de <__adddf3+0x16e>
 80003c4:	320c      	adds	r2, #12
 80003c6:	dd08      	ble.n	80003da <__adddf3+0x16a>
 80003c8:	f102 0c14 	add.w	ip, r2, #20
 80003cc:	f1c2 020c 	rsb	r2, r2, #12
 80003d0:	fa01 f00c 	lsl.w	r0, r1, ip
 80003d4:	fa21 f102 	lsr.w	r1, r1, r2
 80003d8:	e00c      	b.n	80003f4 <__adddf3+0x184>
 80003da:	f102 0214 	add.w	r2, r2, #20
 80003de:	bfd8      	it	le
 80003e0:	f1c2 0c20 	rsble	ip, r2, #32
 80003e4:	fa01 f102 	lsl.w	r1, r1, r2
 80003e8:	fa20 fc0c 	lsr.w	ip, r0, ip
 80003ec:	bfdc      	itt	le
 80003ee:	ea41 010c 	orrle.w	r1, r1, ip
 80003f2:	4090      	lslle	r0, r2
 80003f4:	1ae4      	subs	r4, r4, r3
 80003f6:	bfa2      	ittt	ge
 80003f8:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
 80003fc:	4329      	orrge	r1, r5
 80003fe:	bd30      	popge	{r4, r5, pc}
 8000400:	ea6f 0404 	mvn.w	r4, r4
 8000404:	3c1f      	subs	r4, #31
 8000406:	da1c      	bge.n	8000442 <__adddf3+0x1d2>
 8000408:	340c      	adds	r4, #12
 800040a:	dc0e      	bgt.n	800042a <__adddf3+0x1ba>
 800040c:	f104 0414 	add.w	r4, r4, #20
 8000410:	f1c4 0220 	rsb	r2, r4, #32
 8000414:	fa20 f004 	lsr.w	r0, r0, r4
 8000418:	fa01 f302 	lsl.w	r3, r1, r2
 800041c:	ea40 0003 	orr.w	r0, r0, r3
 8000420:	fa21 f304 	lsr.w	r3, r1, r4
 8000424:	ea45 0103 	orr.w	r1, r5, r3
 8000428:	bd30      	pop	{r4, r5, pc}
 800042a:	f1c4 040c 	rsb	r4, r4, #12
 800042e:	f1c4 0220 	rsb	r2, r4, #32
 8000432:	fa20 f002 	lsr.w	r0, r0, r2
 8000436:	fa01 f304 	lsl.w	r3, r1, r4
 800043a:	ea40 0003 	orr.w	r0, r0, r3
 800043e:	4629      	mov	r1, r5
 8000440:	bd30      	pop	{r4, r5, pc}
 8000442:	fa21 f004 	lsr.w	r0, r1, r4
 8000446:	4629      	mov	r1, r5
 8000448:	bd30      	pop	{r4, r5, pc}
 800044a:	f094 0f00 	teq	r4, #0
 800044e:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
 8000452:	bf06      	itte	eq
 8000454:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
 8000458:	3401      	addeq	r4, #1
 800045a:	3d01      	subne	r5, #1
 800045c:	e74e      	b.n	80002fc <__adddf3+0x8c>
 800045e:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 8000462:	bf18      	it	ne
 8000464:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 8000468:	d029      	beq.n	80004be <__adddf3+0x24e>
 800046a:	ea94 0f05 	teq	r4, r5
 800046e:	bf08      	it	eq
 8000470:	ea90 0f02 	teqeq	r0, r2
 8000474:	d005      	beq.n	8000482 <__adddf3+0x212>
 8000476:	ea54 0c00 	orrs.w	ip, r4, r0
 800047a:	bf04      	itt	eq
 800047c:	4619      	moveq	r1, r3
 800047e:	4610      	moveq	r0, r2
 8000480:	bd30      	pop	{r4, r5, pc}
 8000482:	ea91 0f03 	teq	r1, r3
 8000486:	bf1e      	ittt	ne
 8000488:	2100      	movne	r1, #0
 800048a:	2000      	movne	r0, #0
 800048c:	bd30      	popne	{r4, r5, pc}
 800048e:	ea5f 5c54 	movs.w	ip, r4, lsr #21
 8000492:	d105      	bne.n	80004a0 <__adddf3+0x230>
 8000494:	0040      	lsls	r0, r0, #1
 8000496:	4149      	adcs	r1, r1
 8000498:	bf28      	it	cs
 800049a:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
 800049e:	bd30      	pop	{r4, r5, pc}
 80004a0:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
 80004a4:	bf3c      	itt	cc
 80004a6:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
 80004aa:	bd30      	popcc	{r4, r5, pc}
 80004ac:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 80004b0:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
 80004b4:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80004b8:	f04f 0000 	mov.w	r0, #0
 80004bc:	bd30      	pop	{r4, r5, pc}
 80004be:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 80004c2:	bf1a      	itte	ne
 80004c4:	4619      	movne	r1, r3
 80004c6:	4610      	movne	r0, r2
 80004c8:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
 80004cc:	bf1c      	itt	ne
 80004ce:	460b      	movne	r3, r1
 80004d0:	4602      	movne	r2, r0
 80004d2:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 80004d6:	bf06      	itte	eq
 80004d8:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
 80004dc:	ea91 0f03 	teqeq	r1, r3
 80004e0:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
 80004e4:	bd30      	pop	{r4, r5, pc}
 80004e6:	bf00      	nop

080004e8 <__aeabi_ui2d>:
 80004e8:	f090 0f00 	teq	r0, #0
 80004ec:	bf04      	itt	eq
 80004ee:	2100      	moveq	r1, #0
 80004f0:	4770      	bxeq	lr
 80004f2:	b530      	push	{r4, r5, lr}
 80004f4:	f44f 6480 	mov.w	r4, #1024	; 0x400
 80004f8:	f104 0432 	add.w	r4, r4, #50	; 0x32
 80004fc:	f04f 0500 	mov.w	r5, #0
 8000500:	f04f 0100 	mov.w	r1, #0
 8000504:	e750      	b.n	80003a8 <__adddf3+0x138>
 8000506:	bf00      	nop

08000508 <__aeabi_i2d>:
 8000508:	f090 0f00 	teq	r0, #0
 800050c:	bf04      	itt	eq
 800050e:	2100      	moveq	r1, #0
 8000510:	4770      	bxeq	lr
 8000512:	b530      	push	{r4, r5, lr}
 8000514:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000518:	f104 0432 	add.w	r4, r4, #50	; 0x32
 800051c:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
 8000520:	bf48      	it	mi
 8000522:	4240      	negmi	r0, r0
 8000524:	f04f 0100 	mov.w	r1, #0
 8000528:	e73e      	b.n	80003a8 <__adddf3+0x138>
 800052a:	bf00      	nop

0800052c <__aeabi_f2d>:
 800052c:	0042      	lsls	r2, r0, #1
 800052e:	ea4f 01e2 	mov.w	r1, r2, asr #3
 8000532:	ea4f 0131 	mov.w	r1, r1, rrx
 8000536:	ea4f 7002 	mov.w	r0, r2, lsl #28
 800053a:	bf1f      	itttt	ne
 800053c:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
 8000540:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 8000544:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
 8000548:	4770      	bxne	lr
 800054a:	f092 0f00 	teq	r2, #0
 800054e:	bf14      	ite	ne
 8000550:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 8000554:	4770      	bxeq	lr
 8000556:	b530      	push	{r4, r5, lr}
 8000558:	f44f 7460 	mov.w	r4, #896	; 0x380
 800055c:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8000560:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8000564:	e720      	b.n	80003a8 <__adddf3+0x138>
 8000566:	bf00      	nop

08000568 <__aeabi_ul2d>:
 8000568:	ea50 0201 	orrs.w	r2, r0, r1
 800056c:	bf08      	it	eq
 800056e:	4770      	bxeq	lr
 8000570:	b530      	push	{r4, r5, lr}
 8000572:	f04f 0500 	mov.w	r5, #0
 8000576:	e00a      	b.n	800058e <__aeabi_l2d+0x16>

08000578 <__aeabi_l2d>:
 8000578:	ea50 0201 	orrs.w	r2, r0, r1
 800057c:	bf08      	it	eq
 800057e:	4770      	bxeq	lr
 8000580:	b530      	push	{r4, r5, lr}
 8000582:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
 8000586:	d502      	bpl.n	800058e <__aeabi_l2d+0x16>
 8000588:	4240      	negs	r0, r0
 800058a:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 800058e:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000592:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8000596:	ea5f 5c91 	movs.w	ip, r1, lsr #22
 800059a:	f43f aedc 	beq.w	8000356 <__adddf3+0xe6>
 800059e:	f04f 0203 	mov.w	r2, #3
 80005a2:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 80005a6:	bf18      	it	ne
 80005a8:	3203      	addne	r2, #3
 80005aa:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 80005ae:	bf18      	it	ne
 80005b0:	3203      	addne	r2, #3
 80005b2:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
 80005b6:	f1c2 0320 	rsb	r3, r2, #32
 80005ba:	fa00 fc03 	lsl.w	ip, r0, r3
 80005be:	fa20 f002 	lsr.w	r0, r0, r2
 80005c2:	fa01 fe03 	lsl.w	lr, r1, r3
 80005c6:	ea40 000e 	orr.w	r0, r0, lr
 80005ca:	fa21 f102 	lsr.w	r1, r1, r2
 80005ce:	4414      	add	r4, r2
 80005d0:	e6c1      	b.n	8000356 <__adddf3+0xe6>
 80005d2:	bf00      	nop

080005d4 <__aeabi_dmul>:
 80005d4:	b570      	push	{r4, r5, r6, lr}
 80005d6:	f04f 0cff 	mov.w	ip, #255	; 0xff
 80005da:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 80005de:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 80005e2:	bf1d      	ittte	ne
 80005e4:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 80005e8:	ea94 0f0c 	teqne	r4, ip
 80005ec:	ea95 0f0c 	teqne	r5, ip
 80005f0:	f000 f8de 	bleq	80007b0 <__aeabi_dmul+0x1dc>
 80005f4:	442c      	add	r4, r5
 80005f6:	ea81 0603 	eor.w	r6, r1, r3
 80005fa:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
 80005fe:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
 8000602:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
 8000606:	bf18      	it	ne
 8000608:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
 800060c:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000610:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8000614:	d038      	beq.n	8000688 <__aeabi_dmul+0xb4>
 8000616:	fba0 ce02 	umull	ip, lr, r0, r2
 800061a:	f04f 0500 	mov.w	r5, #0
 800061e:	fbe1 e502 	umlal	lr, r5, r1, r2
 8000622:	f006 4200 	and.w	r2, r6, #2147483648	; 0x80000000
 8000626:	fbe0 e503 	umlal	lr, r5, r0, r3
 800062a:	f04f 0600 	mov.w	r6, #0
 800062e:	fbe1 5603 	umlal	r5, r6, r1, r3
 8000632:	f09c 0f00 	teq	ip, #0
 8000636:	bf18      	it	ne
 8000638:	f04e 0e01 	orrne.w	lr, lr, #1
 800063c:	f1a4 04ff 	sub.w	r4, r4, #255	; 0xff
 8000640:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
 8000644:	f564 7440 	sbc.w	r4, r4, #768	; 0x300
 8000648:	d204      	bcs.n	8000654 <__aeabi_dmul+0x80>
 800064a:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
 800064e:	416d      	adcs	r5, r5
 8000650:	eb46 0606 	adc.w	r6, r6, r6
 8000654:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
 8000658:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
 800065c:	ea4f 20c5 	mov.w	r0, r5, lsl #11
 8000660:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
 8000664:	ea4f 2ece 	mov.w	lr, lr, lsl #11
 8000668:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 800066c:	bf88      	it	hi
 800066e:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8000672:	d81e      	bhi.n	80006b2 <__aeabi_dmul+0xde>
 8000674:	f1be 4f00 	cmp.w	lr, #2147483648	; 0x80000000
 8000678:	bf08      	it	eq
 800067a:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
 800067e:	f150 0000 	adcs.w	r0, r0, #0
 8000682:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8000686:	bd70      	pop	{r4, r5, r6, pc}
 8000688:	f006 4600 	and.w	r6, r6, #2147483648	; 0x80000000
 800068c:	ea46 0101 	orr.w	r1, r6, r1
 8000690:	ea40 0002 	orr.w	r0, r0, r2
 8000694:	ea81 0103 	eor.w	r1, r1, r3
 8000698:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
 800069c:	bfc2      	ittt	gt
 800069e:	ebd4 050c 	rsbsgt	r5, r4, ip
 80006a2:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 80006a6:	bd70      	popgt	{r4, r5, r6, pc}
 80006a8:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 80006ac:	f04f 0e00 	mov.w	lr, #0
 80006b0:	3c01      	subs	r4, #1
 80006b2:	f300 80ab 	bgt.w	800080c <__aeabi_dmul+0x238>
 80006b6:	f114 0f36 	cmn.w	r4, #54	; 0x36
 80006ba:	bfde      	ittt	le
 80006bc:	2000      	movle	r0, #0
 80006be:	f001 4100 	andle.w	r1, r1, #2147483648	; 0x80000000
 80006c2:	bd70      	pople	{r4, r5, r6, pc}
 80006c4:	f1c4 0400 	rsb	r4, r4, #0
 80006c8:	3c20      	subs	r4, #32
 80006ca:	da35      	bge.n	8000738 <__aeabi_dmul+0x164>
 80006cc:	340c      	adds	r4, #12
 80006ce:	dc1b      	bgt.n	8000708 <__aeabi_dmul+0x134>
 80006d0:	f104 0414 	add.w	r4, r4, #20
 80006d4:	f1c4 0520 	rsb	r5, r4, #32
 80006d8:	fa00 f305 	lsl.w	r3, r0, r5
 80006dc:	fa20 f004 	lsr.w	r0, r0, r4
 80006e0:	fa01 f205 	lsl.w	r2, r1, r5
 80006e4:	ea40 0002 	orr.w	r0, r0, r2
 80006e8:	f001 4200 	and.w	r2, r1, #2147483648	; 0x80000000
 80006ec:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80006f0:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 80006f4:	fa21 f604 	lsr.w	r6, r1, r4
 80006f8:	eb42 0106 	adc.w	r1, r2, r6
 80006fc:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000700:	bf08      	it	eq
 8000702:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000706:	bd70      	pop	{r4, r5, r6, pc}
 8000708:	f1c4 040c 	rsb	r4, r4, #12
 800070c:	f1c4 0520 	rsb	r5, r4, #32
 8000710:	fa00 f304 	lsl.w	r3, r0, r4
 8000714:	fa20 f005 	lsr.w	r0, r0, r5
 8000718:	fa01 f204 	lsl.w	r2, r1, r4
 800071c:	ea40 0002 	orr.w	r0, r0, r2
 8000720:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000724:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8000728:	f141 0100 	adc.w	r1, r1, #0
 800072c:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000730:	bf08      	it	eq
 8000732:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000736:	bd70      	pop	{r4, r5, r6, pc}
 8000738:	f1c4 0520 	rsb	r5, r4, #32
 800073c:	fa00 f205 	lsl.w	r2, r0, r5
 8000740:	ea4e 0e02 	orr.w	lr, lr, r2
 8000744:	fa20 f304 	lsr.w	r3, r0, r4
 8000748:	fa01 f205 	lsl.w	r2, r1, r5
 800074c:	ea43 0302 	orr.w	r3, r3, r2
 8000750:	fa21 f004 	lsr.w	r0, r1, r4
 8000754:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000758:	fa21 f204 	lsr.w	r2, r1, r4
 800075c:	ea20 0002 	bic.w	r0, r0, r2
 8000760:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
 8000764:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000768:	bf08      	it	eq
 800076a:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 800076e:	bd70      	pop	{r4, r5, r6, pc}
 8000770:	f094 0f00 	teq	r4, #0
 8000774:	d10f      	bne.n	8000796 <__aeabi_dmul+0x1c2>
 8000776:	f001 4600 	and.w	r6, r1, #2147483648	; 0x80000000
 800077a:	0040      	lsls	r0, r0, #1
 800077c:	eb41 0101 	adc.w	r1, r1, r1
 8000780:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000784:	bf08      	it	eq
 8000786:	3c01      	subeq	r4, #1
 8000788:	d0f7      	beq.n	800077a <__aeabi_dmul+0x1a6>
 800078a:	ea41 0106 	orr.w	r1, r1, r6
 800078e:	f095 0f00 	teq	r5, #0
 8000792:	bf18      	it	ne
 8000794:	4770      	bxne	lr
 8000796:	f003 4600 	and.w	r6, r3, #2147483648	; 0x80000000
 800079a:	0052      	lsls	r2, r2, #1
 800079c:	eb43 0303 	adc.w	r3, r3, r3
 80007a0:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
 80007a4:	bf08      	it	eq
 80007a6:	3d01      	subeq	r5, #1
 80007a8:	d0f7      	beq.n	800079a <__aeabi_dmul+0x1c6>
 80007aa:	ea43 0306 	orr.w	r3, r3, r6
 80007ae:	4770      	bx	lr
 80007b0:	ea94 0f0c 	teq	r4, ip
 80007b4:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 80007b8:	bf18      	it	ne
 80007ba:	ea95 0f0c 	teqne	r5, ip
 80007be:	d00c      	beq.n	80007da <__aeabi_dmul+0x206>
 80007c0:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 80007c4:	bf18      	it	ne
 80007c6:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 80007ca:	d1d1      	bne.n	8000770 <__aeabi_dmul+0x19c>
 80007cc:	ea81 0103 	eor.w	r1, r1, r3
 80007d0:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 80007d4:	f04f 0000 	mov.w	r0, #0
 80007d8:	bd70      	pop	{r4, r5, r6, pc}
 80007da:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 80007de:	bf06      	itte	eq
 80007e0:	4610      	moveq	r0, r2
 80007e2:	4619      	moveq	r1, r3
 80007e4:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 80007e8:	d019      	beq.n	800081e <__aeabi_dmul+0x24a>
 80007ea:	ea94 0f0c 	teq	r4, ip
 80007ee:	d102      	bne.n	80007f6 <__aeabi_dmul+0x222>
 80007f0:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
 80007f4:	d113      	bne.n	800081e <__aeabi_dmul+0x24a>
 80007f6:	ea95 0f0c 	teq	r5, ip
 80007fa:	d105      	bne.n	8000808 <__aeabi_dmul+0x234>
 80007fc:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
 8000800:	bf1c      	itt	ne
 8000802:	4610      	movne	r0, r2
 8000804:	4619      	movne	r1, r3
 8000806:	d10a      	bne.n	800081e <__aeabi_dmul+0x24a>
 8000808:	ea81 0103 	eor.w	r1, r1, r3
 800080c:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000810:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8000814:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8000818:	f04f 0000 	mov.w	r0, #0
 800081c:	bd70      	pop	{r4, r5, r6, pc}
 800081e:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8000822:	f441 0178 	orr.w	r1, r1, #16252928	; 0xf80000
 8000826:	bd70      	pop	{r4, r5, r6, pc}

08000828 <__aeabi_ddiv>:
 8000828:	b570      	push	{r4, r5, r6, lr}
 800082a:	f04f 0cff 	mov.w	ip, #255	; 0xff
 800082e:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 8000832:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8000836:	bf1d      	ittte	ne
 8000838:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 800083c:	ea94 0f0c 	teqne	r4, ip
 8000840:	ea95 0f0c 	teqne	r5, ip
 8000844:	f000 f8a7 	bleq	8000996 <__aeabi_ddiv+0x16e>
 8000848:	eba4 0405 	sub.w	r4, r4, r5
 800084c:	ea81 0e03 	eor.w	lr, r1, r3
 8000850:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8000854:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8000858:	f000 8088 	beq.w	800096c <__aeabi_ddiv+0x144>
 800085c:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8000860:	f04f 5580 	mov.w	r5, #268435456	; 0x10000000
 8000864:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
 8000868:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
 800086c:	ea4f 2202 	mov.w	r2, r2, lsl #8
 8000870:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
 8000874:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
 8000878:	ea4f 2600 	mov.w	r6, r0, lsl #8
 800087c:	f00e 4100 	and.w	r1, lr, #2147483648	; 0x80000000
 8000880:	429d      	cmp	r5, r3
 8000882:	bf08      	it	eq
 8000884:	4296      	cmpeq	r6, r2
 8000886:	f144 04fd 	adc.w	r4, r4, #253	; 0xfd
 800088a:	f504 7440 	add.w	r4, r4, #768	; 0x300
 800088e:	d202      	bcs.n	8000896 <__aeabi_ddiv+0x6e>
 8000890:	085b      	lsrs	r3, r3, #1
 8000892:	ea4f 0232 	mov.w	r2, r2, rrx
 8000896:	1ab6      	subs	r6, r6, r2
 8000898:	eb65 0503 	sbc.w	r5, r5, r3
 800089c:	085b      	lsrs	r3, r3, #1
 800089e:	ea4f 0232 	mov.w	r2, r2, rrx
 80008a2:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
 80008a6:	f44f 2c00 	mov.w	ip, #524288	; 0x80000
 80008aa:	ebb6 0e02 	subs.w	lr, r6, r2
 80008ae:	eb75 0e03 	sbcs.w	lr, r5, r3
 80008b2:	bf22      	ittt	cs
 80008b4:	1ab6      	subcs	r6, r6, r2
 80008b6:	4675      	movcs	r5, lr
 80008b8:	ea40 000c 	orrcs.w	r0, r0, ip
 80008bc:	085b      	lsrs	r3, r3, #1
 80008be:	ea4f 0232 	mov.w	r2, r2, rrx
 80008c2:	ebb6 0e02 	subs.w	lr, r6, r2
 80008c6:	eb75 0e03 	sbcs.w	lr, r5, r3
 80008ca:	bf22      	ittt	cs
 80008cc:	1ab6      	subcs	r6, r6, r2
 80008ce:	4675      	movcs	r5, lr
 80008d0:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
 80008d4:	085b      	lsrs	r3, r3, #1
 80008d6:	ea4f 0232 	mov.w	r2, r2, rrx
 80008da:	ebb6 0e02 	subs.w	lr, r6, r2
 80008de:	eb75 0e03 	sbcs.w	lr, r5, r3
 80008e2:	bf22      	ittt	cs
 80008e4:	1ab6      	subcs	r6, r6, r2
 80008e6:	4675      	movcs	r5, lr
 80008e8:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
 80008ec:	085b      	lsrs	r3, r3, #1
 80008ee:	ea4f 0232 	mov.w	r2, r2, rrx
 80008f2:	ebb6 0e02 	subs.w	lr, r6, r2
 80008f6:	eb75 0e03 	sbcs.w	lr, r5, r3
 80008fa:	bf22      	ittt	cs
 80008fc:	1ab6      	subcs	r6, r6, r2
 80008fe:	4675      	movcs	r5, lr
 8000900:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
 8000904:	ea55 0e06 	orrs.w	lr, r5, r6
 8000908:	d018      	beq.n	800093c <__aeabi_ddiv+0x114>
 800090a:	ea4f 1505 	mov.w	r5, r5, lsl #4
 800090e:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
 8000912:	ea4f 1606 	mov.w	r6, r6, lsl #4
 8000916:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 800091a:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
 800091e:	ea4f 02c2 	mov.w	r2, r2, lsl #3
 8000922:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
 8000926:	d1c0      	bne.n	80008aa <__aeabi_ddiv+0x82>
 8000928:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 800092c:	d10b      	bne.n	8000946 <__aeabi_ddiv+0x11e>
 800092e:	ea41 0100 	orr.w	r1, r1, r0
 8000932:	f04f 0000 	mov.w	r0, #0
 8000936:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
 800093a:	e7b6      	b.n	80008aa <__aeabi_ddiv+0x82>
 800093c:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000940:	bf04      	itt	eq
 8000942:	4301      	orreq	r1, r0
 8000944:	2000      	moveq	r0, #0
 8000946:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 800094a:	bf88      	it	hi
 800094c:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8000950:	f63f aeaf 	bhi.w	80006b2 <__aeabi_dmul+0xde>
 8000954:	ebb5 0c03 	subs.w	ip, r5, r3
 8000958:	bf04      	itt	eq
 800095a:	ebb6 0c02 	subseq.w	ip, r6, r2
 800095e:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 8000962:	f150 0000 	adcs.w	r0, r0, #0
 8000966:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 800096a:	bd70      	pop	{r4, r5, r6, pc}
 800096c:	f00e 4e00 	and.w	lr, lr, #2147483648	; 0x80000000
 8000970:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
 8000974:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
 8000978:	bfc2      	ittt	gt
 800097a:	ebd4 050c 	rsbsgt	r5, r4, ip
 800097e:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8000982:	bd70      	popgt	{r4, r5, r6, pc}
 8000984:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000988:	f04f 0e00 	mov.w	lr, #0
 800098c:	3c01      	subs	r4, #1
 800098e:	e690      	b.n	80006b2 <__aeabi_dmul+0xde>
 8000990:	ea45 0e06 	orr.w	lr, r5, r6
 8000994:	e68d      	b.n	80006b2 <__aeabi_dmul+0xde>
 8000996:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 800099a:	ea94 0f0c 	teq	r4, ip
 800099e:	bf08      	it	eq
 80009a0:	ea95 0f0c 	teqeq	r5, ip
 80009a4:	f43f af3b 	beq.w	800081e <__aeabi_dmul+0x24a>
 80009a8:	ea94 0f0c 	teq	r4, ip
 80009ac:	d10a      	bne.n	80009c4 <__aeabi_ddiv+0x19c>
 80009ae:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 80009b2:	f47f af34 	bne.w	800081e <__aeabi_dmul+0x24a>
 80009b6:	ea95 0f0c 	teq	r5, ip
 80009ba:	f47f af25 	bne.w	8000808 <__aeabi_dmul+0x234>
 80009be:	4610      	mov	r0, r2
 80009c0:	4619      	mov	r1, r3
 80009c2:	e72c      	b.n	800081e <__aeabi_dmul+0x24a>
 80009c4:	ea95 0f0c 	teq	r5, ip
 80009c8:	d106      	bne.n	80009d8 <__aeabi_ddiv+0x1b0>
 80009ca:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 80009ce:	f43f aefd 	beq.w	80007cc <__aeabi_dmul+0x1f8>
 80009d2:	4610      	mov	r0, r2
 80009d4:	4619      	mov	r1, r3
 80009d6:	e722      	b.n	800081e <__aeabi_dmul+0x24a>
 80009d8:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 80009dc:	bf18      	it	ne
 80009de:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 80009e2:	f47f aec5 	bne.w	8000770 <__aeabi_dmul+0x19c>
 80009e6:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
 80009ea:	f47f af0d 	bne.w	8000808 <__aeabi_dmul+0x234>
 80009ee:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
 80009f2:	f47f aeeb 	bne.w	80007cc <__aeabi_dmul+0x1f8>
 80009f6:	e712      	b.n	800081e <__aeabi_dmul+0x24a>

080009f8 <__aeabi_d2iz>:
 80009f8:	ea4f 0241 	mov.w	r2, r1, lsl #1
 80009fc:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 8000a00:	d215      	bcs.n	8000a2e <__aeabi_d2iz+0x36>
 8000a02:	d511      	bpl.n	8000a28 <__aeabi_d2iz+0x30>
 8000a04:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 8000a08:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 8000a0c:	d912      	bls.n	8000a34 <__aeabi_d2iz+0x3c>
 8000a0e:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8000a12:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 8000a16:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 8000a1a:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 8000a1e:	fa23 f002 	lsr.w	r0, r3, r2
 8000a22:	bf18      	it	ne
 8000a24:	4240      	negne	r0, r0
 8000a26:	4770      	bx	lr
 8000a28:	f04f 0000 	mov.w	r0, #0
 8000a2c:	4770      	bx	lr
 8000a2e:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 8000a32:	d105      	bne.n	8000a40 <__aeabi_d2iz+0x48>
 8000a34:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
 8000a38:	bf08      	it	eq
 8000a3a:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
 8000a3e:	4770      	bx	lr
 8000a40:	f04f 0000 	mov.w	r0, #0
 8000a44:	4770      	bx	lr
 8000a46:	bf00      	nop

08000a48 <__libc_init_array>:
 8000a48:	b570      	push	{r4, r5, r6, lr}
 8000a4a:	4e0f      	ldr	r6, [pc, #60]	; (8000a88 <__libc_init_array+0x40>)
 8000a4c:	4d0f      	ldr	r5, [pc, #60]	; (8000a8c <__libc_init_array+0x44>)
 8000a4e:	1b76      	subs	r6, r6, r5
 8000a50:	10b6      	asrs	r6, r6, #2
 8000a52:	bf18      	it	ne
 8000a54:	2400      	movne	r4, #0
 8000a56:	d005      	beq.n	8000a64 <__libc_init_array+0x1c>
 8000a58:	3401      	adds	r4, #1
 8000a5a:	f855 3b04 	ldr.w	r3, [r5], #4
 8000a5e:	4798      	blx	r3
 8000a60:	42a6      	cmp	r6, r4
 8000a62:	d1f9      	bne.n	8000a58 <__libc_init_array+0x10>
 8000a64:	4e0a      	ldr	r6, [pc, #40]	; (8000a90 <__libc_init_array+0x48>)
 8000a66:	4d0b      	ldr	r5, [pc, #44]	; (8000a94 <__libc_init_array+0x4c>)
 8000a68:	1b76      	subs	r6, r6, r5
 8000a6a:	f009 fed3 	bl	800a814 <_init>
 8000a6e:	10b6      	asrs	r6, r6, #2
 8000a70:	bf18      	it	ne
 8000a72:	2400      	movne	r4, #0
 8000a74:	d006      	beq.n	8000a84 <__libc_init_array+0x3c>
 8000a76:	3401      	adds	r4, #1
 8000a78:	f855 3b04 	ldr.w	r3, [r5], #4
 8000a7c:	4798      	blx	r3
 8000a7e:	42a6      	cmp	r6, r4
 8000a80:	d1f9      	bne.n	8000a76 <__libc_init_array+0x2e>
 8000a82:	bd70      	pop	{r4, r5, r6, pc}
 8000a84:	bd70      	pop	{r4, r5, r6, pc}
 8000a86:	bf00      	nop
 8000a88:	0800ae28 	.word	0x0800ae28
 8000a8c:	0800ae28 	.word	0x0800ae28
 8000a90:	0800ae2c 	.word	0x0800ae2c
 8000a94:	0800ae28 	.word	0x0800ae28

08000a98 <memcpy>:
 8000a98:	4684      	mov	ip, r0
 8000a9a:	ea41 0300 	orr.w	r3, r1, r0
 8000a9e:	f013 0303 	ands.w	r3, r3, #3
 8000aa2:	d16d      	bne.n	8000b80 <memcpy+0xe8>
 8000aa4:	3a40      	subs	r2, #64	; 0x40
 8000aa6:	d341      	bcc.n	8000b2c <memcpy+0x94>
 8000aa8:	f851 3b04 	ldr.w	r3, [r1], #4
 8000aac:	f840 3b04 	str.w	r3, [r0], #4
 8000ab0:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ab4:	f840 3b04 	str.w	r3, [r0], #4
 8000ab8:	f851 3b04 	ldr.w	r3, [r1], #4
 8000abc:	f840 3b04 	str.w	r3, [r0], #4
 8000ac0:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ac4:	f840 3b04 	str.w	r3, [r0], #4
 8000ac8:	f851 3b04 	ldr.w	r3, [r1], #4
 8000acc:	f840 3b04 	str.w	r3, [r0], #4
 8000ad0:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ad4:	f840 3b04 	str.w	r3, [r0], #4
 8000ad8:	f851 3b04 	ldr.w	r3, [r1], #4
 8000adc:	f840 3b04 	str.w	r3, [r0], #4
 8000ae0:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ae4:	f840 3b04 	str.w	r3, [r0], #4
 8000ae8:	f851 3b04 	ldr.w	r3, [r1], #4
 8000aec:	f840 3b04 	str.w	r3, [r0], #4
 8000af0:	f851 3b04 	ldr.w	r3, [r1], #4
 8000af4:	f840 3b04 	str.w	r3, [r0], #4
 8000af8:	f851 3b04 	ldr.w	r3, [r1], #4
 8000afc:	f840 3b04 	str.w	r3, [r0], #4
 8000b00:	f851 3b04 	ldr.w	r3, [r1], #4
 8000b04:	f840 3b04 	str.w	r3, [r0], #4
 8000b08:	f851 3b04 	ldr.w	r3, [r1], #4
 8000b0c:	f840 3b04 	str.w	r3, [r0], #4
 8000b10:	f851 3b04 	ldr.w	r3, [r1], #4
 8000b14:	f840 3b04 	str.w	r3, [r0], #4
 8000b18:	f851 3b04 	ldr.w	r3, [r1], #4
 8000b1c:	f840 3b04 	str.w	r3, [r0], #4
 8000b20:	f851 3b04 	ldr.w	r3, [r1], #4
 8000b24:	f840 3b04 	str.w	r3, [r0], #4
 8000b28:	3a40      	subs	r2, #64	; 0x40
 8000b2a:	d2bd      	bcs.n	8000aa8 <memcpy+0x10>
 8000b2c:	3230      	adds	r2, #48	; 0x30
 8000b2e:	d311      	bcc.n	8000b54 <memcpy+0xbc>
 8000b30:	f851 3b04 	ldr.w	r3, [r1], #4
 8000b34:	f840 3b04 	str.w	r3, [r0], #4
 8000b38:	f851 3b04 	ldr.w	r3, [r1], #4
 8000b3c:	f840 3b04 	str.w	r3, [r0], #4
 8000b40:	f851 3b04 	ldr.w	r3, [r1], #4
 8000b44:	f840 3b04 	str.w	r3, [r0], #4
 8000b48:	f851 3b04 	ldr.w	r3, [r1], #4
 8000b4c:	f840 3b04 	str.w	r3, [r0], #4
 8000b50:	3a10      	subs	r2, #16
 8000b52:	d2ed      	bcs.n	8000b30 <memcpy+0x98>
 8000b54:	320c      	adds	r2, #12
 8000b56:	d305      	bcc.n	8000b64 <memcpy+0xcc>
 8000b58:	f851 3b04 	ldr.w	r3, [r1], #4
 8000b5c:	f840 3b04 	str.w	r3, [r0], #4
 8000b60:	3a04      	subs	r2, #4
 8000b62:	d2f9      	bcs.n	8000b58 <memcpy+0xc0>
 8000b64:	3204      	adds	r2, #4
 8000b66:	d008      	beq.n	8000b7a <memcpy+0xe2>
 8000b68:	07d2      	lsls	r2, r2, #31
 8000b6a:	bf1c      	itt	ne
 8000b6c:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000b70:	f800 3b01 	strbne.w	r3, [r0], #1
 8000b74:	d301      	bcc.n	8000b7a <memcpy+0xe2>
 8000b76:	880b      	ldrh	r3, [r1, #0]
 8000b78:	8003      	strh	r3, [r0, #0]
 8000b7a:	4660      	mov	r0, ip
 8000b7c:	4770      	bx	lr
 8000b7e:	bf00      	nop
 8000b80:	2a08      	cmp	r2, #8
 8000b82:	d313      	bcc.n	8000bac <memcpy+0x114>
 8000b84:	078b      	lsls	r3, r1, #30
 8000b86:	d08d      	beq.n	8000aa4 <memcpy+0xc>
 8000b88:	f010 0303 	ands.w	r3, r0, #3
 8000b8c:	d08a      	beq.n	8000aa4 <memcpy+0xc>
 8000b8e:	f1c3 0304 	rsb	r3, r3, #4
 8000b92:	1ad2      	subs	r2, r2, r3
 8000b94:	07db      	lsls	r3, r3, #31
 8000b96:	bf1c      	itt	ne
 8000b98:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000b9c:	f800 3b01 	strbne.w	r3, [r0], #1
 8000ba0:	d380      	bcc.n	8000aa4 <memcpy+0xc>
 8000ba2:	f831 3b02 	ldrh.w	r3, [r1], #2
 8000ba6:	f820 3b02 	strh.w	r3, [r0], #2
 8000baa:	e77b      	b.n	8000aa4 <memcpy+0xc>
 8000bac:	3a04      	subs	r2, #4
 8000bae:	d3d9      	bcc.n	8000b64 <memcpy+0xcc>
 8000bb0:	3a01      	subs	r2, #1
 8000bb2:	f811 3b01 	ldrb.w	r3, [r1], #1
 8000bb6:	f800 3b01 	strb.w	r3, [r0], #1
 8000bba:	d2f9      	bcs.n	8000bb0 <memcpy+0x118>
 8000bbc:	780b      	ldrb	r3, [r1, #0]
 8000bbe:	7003      	strb	r3, [r0, #0]
 8000bc0:	784b      	ldrb	r3, [r1, #1]
 8000bc2:	7043      	strb	r3, [r0, #1]
 8000bc4:	788b      	ldrb	r3, [r1, #2]
 8000bc6:	7083      	strb	r3, [r0, #2]
 8000bc8:	4660      	mov	r0, ip
 8000bca:	4770      	bx	lr

08000bcc <memset>:
 8000bcc:	b470      	push	{r4, r5, r6}
 8000bce:	0784      	lsls	r4, r0, #30
 8000bd0:	d046      	beq.n	8000c60 <memset+0x94>
 8000bd2:	1e54      	subs	r4, r2, #1
 8000bd4:	2a00      	cmp	r2, #0
 8000bd6:	d041      	beq.n	8000c5c <memset+0x90>
 8000bd8:	b2cd      	uxtb	r5, r1
 8000bda:	4603      	mov	r3, r0
 8000bdc:	e002      	b.n	8000be4 <memset+0x18>
 8000bde:	1e62      	subs	r2, r4, #1
 8000be0:	b3e4      	cbz	r4, 8000c5c <memset+0x90>
 8000be2:	4614      	mov	r4, r2
 8000be4:	f803 5b01 	strb.w	r5, [r3], #1
 8000be8:	079a      	lsls	r2, r3, #30
 8000bea:	d1f8      	bne.n	8000bde <memset+0x12>
 8000bec:	2c03      	cmp	r4, #3
 8000bee:	d92e      	bls.n	8000c4e <memset+0x82>
 8000bf0:	b2cd      	uxtb	r5, r1
 8000bf2:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8000bf6:	2c0f      	cmp	r4, #15
 8000bf8:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8000bfc:	d919      	bls.n	8000c32 <memset+0x66>
 8000bfe:	f103 0210 	add.w	r2, r3, #16
 8000c02:	4626      	mov	r6, r4
 8000c04:	3e10      	subs	r6, #16
 8000c06:	2e0f      	cmp	r6, #15
 8000c08:	f842 5c10 	str.w	r5, [r2, #-16]
 8000c0c:	f842 5c0c 	str.w	r5, [r2, #-12]
 8000c10:	f842 5c08 	str.w	r5, [r2, #-8]
 8000c14:	f842 5c04 	str.w	r5, [r2, #-4]
 8000c18:	f102 0210 	add.w	r2, r2, #16
 8000c1c:	d8f2      	bhi.n	8000c04 <memset+0x38>
 8000c1e:	f1a4 0210 	sub.w	r2, r4, #16
 8000c22:	f022 020f 	bic.w	r2, r2, #15
 8000c26:	f004 040f 	and.w	r4, r4, #15
 8000c2a:	3210      	adds	r2, #16
 8000c2c:	2c03      	cmp	r4, #3
 8000c2e:	4413      	add	r3, r2
 8000c30:	d90d      	bls.n	8000c4e <memset+0x82>
 8000c32:	461e      	mov	r6, r3
 8000c34:	4622      	mov	r2, r4
 8000c36:	3a04      	subs	r2, #4
 8000c38:	2a03      	cmp	r2, #3
 8000c3a:	f846 5b04 	str.w	r5, [r6], #4
 8000c3e:	d8fa      	bhi.n	8000c36 <memset+0x6a>
 8000c40:	1f22      	subs	r2, r4, #4
 8000c42:	f022 0203 	bic.w	r2, r2, #3
 8000c46:	3204      	adds	r2, #4
 8000c48:	4413      	add	r3, r2
 8000c4a:	f004 0403 	and.w	r4, r4, #3
 8000c4e:	b12c      	cbz	r4, 8000c5c <memset+0x90>
 8000c50:	b2c9      	uxtb	r1, r1
 8000c52:	441c      	add	r4, r3
 8000c54:	f803 1b01 	strb.w	r1, [r3], #1
 8000c58:	42a3      	cmp	r3, r4
 8000c5a:	d1fb      	bne.n	8000c54 <memset+0x88>
 8000c5c:	bc70      	pop	{r4, r5, r6}
 8000c5e:	4770      	bx	lr
 8000c60:	4614      	mov	r4, r2
 8000c62:	4603      	mov	r3, r0
 8000c64:	e7c2      	b.n	8000bec <memset+0x20>
 8000c66:	bf00      	nop

08000c68 <__cvt>:
 8000c68:	e92d 4bf0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, fp, lr}
 8000c6c:	ec59 8b10 	vmov	r8, r9, d0
 8000c70:	b084      	sub	sp, #16
 8000c72:	464d      	mov	r5, r9
 8000c74:	2d00      	cmp	r5, #0
 8000c76:	460f      	mov	r7, r1
 8000c78:	4693      	mov	fp, r2
 8000c7a:	4619      	mov	r1, r3
 8000c7c:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 8000c7e:	db5d      	blt.n	8000d3c <__cvt+0xd4>
 8000c80:	2300      	movs	r3, #0
 8000c82:	700b      	strb	r3, [r1, #0]
 8000c84:	2c66      	cmp	r4, #102	; 0x66
 8000c86:	d045      	beq.n	8000d14 <__cvt+0xac>
 8000c88:	2c46      	cmp	r4, #70	; 0x46
 8000c8a:	d05f      	beq.n	8000d4c <__cvt+0xe4>
 8000c8c:	f024 0320 	bic.w	r3, r4, #32
 8000c90:	2b45      	cmp	r3, #69	; 0x45
 8000c92:	d029      	beq.n	8000ce8 <__cvt+0x80>
 8000c94:	aa03      	add	r2, sp, #12
 8000c96:	ab02      	add	r3, sp, #8
 8000c98:	9201      	str	r2, [sp, #4]
 8000c9a:	9300      	str	r3, [sp, #0]
 8000c9c:	463a      	mov	r2, r7
 8000c9e:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8000ca0:	2102      	movs	r1, #2
 8000ca2:	ec49 8b10 	vmov	d0, r8, r9
 8000ca6:	f000 fecf 	bl	8001a48 <_dtoa_r>
 8000caa:	2c67      	cmp	r4, #103	; 0x67
 8000cac:	4606      	mov	r6, r0
 8000cae:	d128      	bne.n	8000d02 <__cvt+0x9a>
 8000cb0:	f01b 0f01 	tst.w	fp, #1
 8000cb4:	d02a      	beq.n	8000d0c <__cvt+0xa4>
 8000cb6:	19f5      	adds	r5, r6, r7
 8000cb8:	4640      	mov	r0, r8
 8000cba:	4649      	mov	r1, r9
 8000cbc:	2200      	movs	r2, #0
 8000cbe:	2300      	movs	r3, #0
 8000cc0:	f002 fd32 	bl	8003728 <__aeabi_dcmpeq>
 8000cc4:	bb20      	cbnz	r0, 8000d10 <__cvt+0xa8>
 8000cc6:	9b03      	ldr	r3, [sp, #12]
 8000cc8:	429d      	cmp	r5, r3
 8000cca:	d906      	bls.n	8000cda <__cvt+0x72>
 8000ccc:	2130      	movs	r1, #48	; 0x30
 8000cce:	1c5a      	adds	r2, r3, #1
 8000cd0:	9203      	str	r2, [sp, #12]
 8000cd2:	7019      	strb	r1, [r3, #0]
 8000cd4:	9b03      	ldr	r3, [sp, #12]
 8000cd6:	429d      	cmp	r5, r3
 8000cd8:	d8f9      	bhi.n	8000cce <__cvt+0x66>
 8000cda:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 8000cdc:	1b9b      	subs	r3, r3, r6
 8000cde:	4630      	mov	r0, r6
 8000ce0:	6013      	str	r3, [r2, #0]
 8000ce2:	b004      	add	sp, #16
 8000ce4:	e8bd 8bf0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, fp, pc}
 8000ce8:	a903      	add	r1, sp, #12
 8000cea:	ab02      	add	r3, sp, #8
 8000cec:	3701      	adds	r7, #1
 8000cee:	9101      	str	r1, [sp, #4]
 8000cf0:	9300      	str	r3, [sp, #0]
 8000cf2:	463a      	mov	r2, r7
 8000cf4:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8000cf6:	2102      	movs	r1, #2
 8000cf8:	ec49 8b10 	vmov	d0, r8, r9
 8000cfc:	f000 fea4 	bl	8001a48 <_dtoa_r>
 8000d00:	4606      	mov	r6, r0
 8000d02:	2c47      	cmp	r4, #71	; 0x47
 8000d04:	d1d7      	bne.n	8000cb6 <__cvt+0x4e>
 8000d06:	f01b 0f01 	tst.w	fp, #1
 8000d0a:	d12b      	bne.n	8000d64 <__cvt+0xfc>
 8000d0c:	9b03      	ldr	r3, [sp, #12]
 8000d0e:	e7e4      	b.n	8000cda <__cvt+0x72>
 8000d10:	462b      	mov	r3, r5
 8000d12:	e7e2      	b.n	8000cda <__cvt+0x72>
 8000d14:	aa03      	add	r2, sp, #12
 8000d16:	ab02      	add	r3, sp, #8
 8000d18:	9201      	str	r2, [sp, #4]
 8000d1a:	9300      	str	r3, [sp, #0]
 8000d1c:	463a      	mov	r2, r7
 8000d1e:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8000d20:	2103      	movs	r1, #3
 8000d22:	ec49 8b10 	vmov	d0, r8, r9
 8000d26:	f000 fe8f 	bl	8001a48 <_dtoa_r>
 8000d2a:	4606      	mov	r6, r0
 8000d2c:	19c5      	adds	r5, r0, r7
 8000d2e:	7833      	ldrb	r3, [r6, #0]
 8000d30:	2b30      	cmp	r3, #48	; 0x30
 8000d32:	d01e      	beq.n	8000d72 <__cvt+0x10a>
 8000d34:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8000d36:	681f      	ldr	r7, [r3, #0]
 8000d38:	443d      	add	r5, r7
 8000d3a:	e7bd      	b.n	8000cb8 <__cvt+0x50>
 8000d3c:	f109 4300 	add.w	r3, r9, #2147483648	; 0x80000000
 8000d40:	252d      	movs	r5, #45	; 0x2d
 8000d42:	ee10 8a10 	vmov	r8, s0
 8000d46:	4699      	mov	r9, r3
 8000d48:	700d      	strb	r5, [r1, #0]
 8000d4a:	e79b      	b.n	8000c84 <__cvt+0x1c>
 8000d4c:	aa03      	add	r2, sp, #12
 8000d4e:	ab02      	add	r3, sp, #8
 8000d50:	9201      	str	r2, [sp, #4]
 8000d52:	9300      	str	r3, [sp, #0]
 8000d54:	463a      	mov	r2, r7
 8000d56:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8000d58:	2103      	movs	r1, #3
 8000d5a:	ec49 8b10 	vmov	d0, r8, r9
 8000d5e:	f000 fe73 	bl	8001a48 <_dtoa_r>
 8000d62:	4606      	mov	r6, r0
 8000d64:	2c46      	cmp	r4, #70	; 0x46
 8000d66:	eb06 0507 	add.w	r5, r6, r7
 8000d6a:	d1a5      	bne.n	8000cb8 <__cvt+0x50>
 8000d6c:	7833      	ldrb	r3, [r6, #0]
 8000d6e:	2b30      	cmp	r3, #48	; 0x30
 8000d70:	d1e0      	bne.n	8000d34 <__cvt+0xcc>
 8000d72:	2200      	movs	r2, #0
 8000d74:	2300      	movs	r3, #0
 8000d76:	4640      	mov	r0, r8
 8000d78:	4649      	mov	r1, r9
 8000d7a:	f002 fcd5 	bl	8003728 <__aeabi_dcmpeq>
 8000d7e:	2800      	cmp	r0, #0
 8000d80:	d1d8      	bne.n	8000d34 <__cvt+0xcc>
 8000d82:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8000d84:	f1c7 0701 	rsb	r7, r7, #1
 8000d88:	601f      	str	r7, [r3, #0]
 8000d8a:	443d      	add	r5, r7
 8000d8c:	e794      	b.n	8000cb8 <__cvt+0x50>
 8000d8e:	bf00      	nop

08000d90 <__exponent>:
 8000d90:	b4f0      	push	{r4, r5, r6, r7}
 8000d92:	2900      	cmp	r1, #0
 8000d94:	bfba      	itte	lt
 8000d96:	4249      	neglt	r1, r1
 8000d98:	232d      	movlt	r3, #45	; 0x2d
 8000d9a:	232b      	movge	r3, #43	; 0x2b
 8000d9c:	2909      	cmp	r1, #9
 8000d9e:	b082      	sub	sp, #8
 8000da0:	7002      	strb	r2, [r0, #0]
 8000da2:	7043      	strb	r3, [r0, #1]
 8000da4:	f100 0402 	add.w	r4, r0, #2
 8000da8:	dd2b      	ble.n	8000e02 <__exponent+0x72>
 8000daa:	f10d 0607 	add.w	r6, sp, #7
 8000dae:	4f1b      	ldr	r7, [pc, #108]	; (8000e1c <__exponent+0x8c>)
 8000db0:	4632      	mov	r2, r6
 8000db2:	fb87 3501 	smull	r3, r5, r7, r1
 8000db6:	17cb      	asrs	r3, r1, #31
 8000db8:	ebc3 03a5 	rsb	r3, r3, r5, asr #2
 8000dbc:	eb03 0583 	add.w	r5, r3, r3, lsl #2
 8000dc0:	eba1 0145 	sub.w	r1, r1, r5, lsl #1
 8000dc4:	f101 0530 	add.w	r5, r1, #48	; 0x30
 8000dc8:	2b09      	cmp	r3, #9
 8000dca:	4619      	mov	r1, r3
 8000dcc:	f802 5d01 	strb.w	r5, [r2, #-1]!
 8000dd0:	dcef      	bgt.n	8000db2 <__exponent+0x22>
 8000dd2:	3130      	adds	r1, #48	; 0x30
 8000dd4:	1e53      	subs	r3, r2, #1
 8000dd6:	b2c9      	uxtb	r1, r1
 8000dd8:	42b3      	cmp	r3, r6
 8000dda:	f802 1c01 	strb.w	r1, [r2, #-1]
 8000dde:	d21a      	bcs.n	8000e16 <__exponent+0x86>
 8000de0:	f10d 0606 	add.w	r6, sp, #6
 8000de4:	4625      	mov	r5, r4
 8000de6:	e001      	b.n	8000dec <__exponent+0x5c>
 8000de8:	f813 1f01 	ldrb.w	r1, [r3, #1]!
 8000dec:	f805 1b01 	strb.w	r1, [r5], #1
 8000df0:	429e      	cmp	r6, r3
 8000df2:	d1f9      	bne.n	8000de8 <__exponent+0x58>
 8000df4:	ab02      	add	r3, sp, #8
 8000df6:	1a9a      	subs	r2, r3, r2
 8000df8:	4422      	add	r2, r4
 8000dfa:	1a10      	subs	r0, r2, r0
 8000dfc:	b002      	add	sp, #8
 8000dfe:	bcf0      	pop	{r4, r5, r6, r7}
 8000e00:	4770      	bx	lr
 8000e02:	4622      	mov	r2, r4
 8000e04:	3130      	adds	r1, #48	; 0x30
 8000e06:	2330      	movs	r3, #48	; 0x30
 8000e08:	f802 3b02 	strb.w	r3, [r2], #2
 8000e0c:	7061      	strb	r1, [r4, #1]
 8000e0e:	1a10      	subs	r0, r2, r0
 8000e10:	b002      	add	sp, #8
 8000e12:	bcf0      	pop	{r4, r5, r6, r7}
 8000e14:	4770      	bx	lr
 8000e16:	4622      	mov	r2, r4
 8000e18:	e7f9      	b.n	8000e0e <__exponent+0x7e>
 8000e1a:	bf00      	nop
 8000e1c:	66666667 	.word	0x66666667

08000e20 <_printf_float>:
 8000e20:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000e24:	b08d      	sub	sp, #52	; 0x34
 8000e26:	460c      	mov	r4, r1
 8000e28:	4616      	mov	r6, r2
 8000e2a:	461f      	mov	r7, r3
 8000e2c:	4605      	mov	r5, r0
 8000e2e:	f8dd 8058 	ldr.w	r8, [sp, #88]	; 0x58
 8000e32:	f001 fd75 	bl	8002920 <_localeconv_r>
 8000e36:	6803      	ldr	r3, [r0, #0]
 8000e38:	9306      	str	r3, [sp, #24]
 8000e3a:	4618      	mov	r0, r3
 8000e3c:	f000 fd00 	bl	8001840 <strlen>
 8000e40:	f8d4 a000 	ldr.w	sl, [r4]
 8000e44:	9007      	str	r0, [sp, #28]
 8000e46:	2300      	movs	r3, #0
 8000e48:	f41a 7f80 	tst.w	sl, #256	; 0x100
 8000e4c:	f894 b018 	ldrb.w	fp, [r4, #24]
 8000e50:	930a      	str	r3, [sp, #40]	; 0x28
 8000e52:	f000 80d1 	beq.w	8000ff8 <_printf_float+0x1d8>
 8000e56:	f8d8 1000 	ldr.w	r1, [r8]
 8000e5a:	3107      	adds	r1, #7
 8000e5c:	f021 0107 	bic.w	r1, r1, #7
 8000e60:	e9d1 2300 	ldrd	r2, r3, [r1]
 8000e64:	3108      	adds	r1, #8
 8000e66:	f8c8 1000 	str.w	r1, [r8]
 8000e6a:	e9cd 2304 	strd	r2, r3, [sp, #16]
 8000e6e:	e9c4 2312 	strd	r2, r3, [r4, #72]	; 0x48
 8000e72:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
 8000e76:	f023 4900 	bic.w	r9, r3, #2147483648	; 0x80000000
 8000e7a:	4690      	mov	r8, r2
 8000e7c:	4610      	mov	r0, r2
 8000e7e:	4649      	mov	r1, r9
 8000e80:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8000e84:	4bb2      	ldr	r3, [pc, #712]	; (8001150 <_printf_float+0x330>)
 8000e86:	f002 fc81 	bl	800378c <__aeabi_dcmpun>
 8000e8a:	2800      	cmp	r0, #0
 8000e8c:	d16d      	bne.n	8000f6a <_printf_float+0x14a>
 8000e8e:	4640      	mov	r0, r8
 8000e90:	4649      	mov	r1, r9
 8000e92:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8000e96:	4bae      	ldr	r3, [pc, #696]	; (8001150 <_printf_float+0x330>)
 8000e98:	f002 fc5a 	bl	8003750 <__aeabi_dcmple>
 8000e9c:	2800      	cmp	r0, #0
 8000e9e:	d164      	bne.n	8000f6a <_printf_float+0x14a>
 8000ea0:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
 8000ea4:	2200      	movs	r2, #0
 8000ea6:	2300      	movs	r3, #0
 8000ea8:	f002 fc48 	bl	800373c <__aeabi_dcmplt>
 8000eac:	2800      	cmp	r0, #0
 8000eae:	f040 811d 	bne.w	80010ec <_printf_float+0x2cc>
 8000eb2:	48a8      	ldr	r0, [pc, #672]	; (8001154 <_printf_float+0x334>)
 8000eb4:	49a8      	ldr	r1, [pc, #672]	; (8001158 <_printf_float+0x338>)
 8000eb6:	f02a 0204 	bic.w	r2, sl, #4
 8000eba:	2303      	movs	r3, #3
 8000ebc:	6022      	str	r2, [r4, #0]
 8000ebe:	f1bb 0f47 	cmp.w	fp, #71	; 0x47
 8000ec2:	bf8c      	ite	hi
 8000ec4:	4681      	movhi	r9, r0
 8000ec6:	4689      	movls	r9, r1
 8000ec8:	6123      	str	r3, [r4, #16]
 8000eca:	f04f 0800 	mov.w	r8, #0
 8000ece:	9700      	str	r7, [sp, #0]
 8000ed0:	4633      	mov	r3, r6
 8000ed2:	aa0b      	add	r2, sp, #44	; 0x2c
 8000ed4:	4621      	mov	r1, r4
 8000ed6:	4628      	mov	r0, r5
 8000ed8:	f000 fa50 	bl	800137c <_printf_common>
 8000edc:	3001      	adds	r0, #1
 8000ede:	d03f      	beq.n	8000f60 <_printf_float+0x140>
 8000ee0:	6823      	ldr	r3, [r4, #0]
 8000ee2:	0558      	lsls	r0, r3, #21
 8000ee4:	f140 80fa 	bpl.w	80010dc <_printf_float+0x2bc>
 8000ee8:	f1bb 0f65 	cmp.w	fp, #101	; 0x65
 8000eec:	f240 8093 	bls.w	8001016 <_printf_float+0x1f6>
 8000ef0:	2200      	movs	r2, #0
 8000ef2:	2300      	movs	r3, #0
 8000ef4:	e9d4 0112 	ldrd	r0, r1, [r4, #72]	; 0x48
 8000ef8:	f002 fc16 	bl	8003728 <__aeabi_dcmpeq>
 8000efc:	2800      	cmp	r0, #0
 8000efe:	f040 81b7 	bne.w	8001270 <_printf_float+0x450>
 8000f02:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8000f04:	2b00      	cmp	r3, #0
 8000f06:	f340 81fc 	ble.w	8001302 <_printf_float+0x4e2>
 8000f0a:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8000f0c:	6da3      	ldr	r3, [r4, #88]	; 0x58
 8000f0e:	429a      	cmp	r2, r3
 8000f10:	bfa8      	it	ge
 8000f12:	461a      	movge	r2, r3
 8000f14:	2a00      	cmp	r2, #0
 8000f16:	4692      	mov	sl, r2
 8000f18:	dd07      	ble.n	8000f2a <_printf_float+0x10a>
 8000f1a:	4613      	mov	r3, r2
 8000f1c:	4631      	mov	r1, r6
 8000f1e:	464a      	mov	r2, r9
 8000f20:	4628      	mov	r0, r5
 8000f22:	47b8      	blx	r7
 8000f24:	3001      	adds	r0, #1
 8000f26:	d01b      	beq.n	8000f60 <_printf_float+0x140>
 8000f28:	6da3      	ldr	r3, [r4, #88]	; 0x58
 8000f2a:	ea2a 7aea 	bic.w	sl, sl, sl, asr #31
 8000f2e:	ebca 0203 	rsb	r2, sl, r3
 8000f32:	2a00      	cmp	r2, #0
 8000f34:	f340 8155 	ble.w	80011e2 <_printf_float+0x3c2>
 8000f38:	f104 0b1a 	add.w	fp, r4, #26
 8000f3c:	f04f 0800 	mov.w	r8, #0
 8000f40:	e005      	b.n	8000f4e <_printf_float+0x12e>
 8000f42:	6da3      	ldr	r3, [r4, #88]	; 0x58
 8000f44:	ebca 0203 	rsb	r2, sl, r3
 8000f48:	4542      	cmp	r2, r8
 8000f4a:	f340 814a 	ble.w	80011e2 <_printf_float+0x3c2>
 8000f4e:	2301      	movs	r3, #1
 8000f50:	465a      	mov	r2, fp
 8000f52:	4631      	mov	r1, r6
 8000f54:	4628      	mov	r0, r5
 8000f56:	47b8      	blx	r7
 8000f58:	3001      	adds	r0, #1
 8000f5a:	f108 0801 	add.w	r8, r8, #1
 8000f5e:	d1f0      	bne.n	8000f42 <_printf_float+0x122>
 8000f60:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8000f64:	b00d      	add	sp, #52	; 0x34
 8000f66:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000f6a:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
 8000f6e:	4602      	mov	r2, r0
 8000f70:	460b      	mov	r3, r1
 8000f72:	f002 fc0b 	bl	800378c <__aeabi_dcmpun>
 8000f76:	2800      	cmp	r0, #0
 8000f78:	f040 80db 	bne.w	8001132 <_printf_float+0x312>
 8000f7c:	6861      	ldr	r1, [r4, #4]
 8000f7e:	1c48      	adds	r0, r1, #1
 8000f80:	f000 810a 	beq.w	8001198 <_printf_float+0x378>
 8000f84:	f1bb 0f67 	cmp.w	fp, #103	; 0x67
 8000f88:	f000 81a2 	beq.w	80012d0 <_printf_float+0x4b0>
 8000f8c:	f1bb 0f47 	cmp.w	fp, #71	; 0x47
 8000f90:	f000 80b0 	beq.w	80010f4 <_printf_float+0x2d4>
 8000f94:	f44a 6280 	orr.w	r2, sl, #1024	; 0x400
 8000f98:	2300      	movs	r3, #0
 8000f9a:	6022      	str	r2, [r4, #0]
 8000f9c:	a80a      	add	r0, sp, #40	; 0x28
 8000f9e:	9303      	str	r3, [sp, #12]
 8000fa0:	ab09      	add	r3, sp, #36	; 0x24
 8000fa2:	9002      	str	r0, [sp, #8]
 8000fa4:	9300      	str	r3, [sp, #0]
 8000fa6:	f8cd b004 	str.w	fp, [sp, #4]
 8000faa:	f10d 0323 	add.w	r3, sp, #35	; 0x23
 8000fae:	ed9d 0b04 	vldr	d0, [sp, #16]
 8000fb2:	4628      	mov	r0, r5
 8000fb4:	f7ff fe58 	bl	8000c68 <__cvt>
 8000fb8:	4681      	mov	r9, r0
 8000fba:	f1bb 0f65 	cmp.w	fp, #101	; 0x65
 8000fbe:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8000fc0:	f240 80d8 	bls.w	8001174 <_printf_float+0x354>
 8000fc4:	f1bb 0f66 	cmp.w	fp, #102	; 0x66
 8000fc8:	f000 8188 	beq.w	80012dc <_printf_float+0x4bc>
 8000fcc:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8000fce:	429a      	cmp	r2, r3
 8000fd0:	f300 80ff 	bgt.w	80011d2 <_printf_float+0x3b2>
 8000fd4:	6822      	ldr	r2, [r4, #0]
 8000fd6:	6123      	str	r3, [r4, #16]
 8000fd8:	07d2      	lsls	r2, r2, #31
 8000fda:	d501      	bpl.n	8000fe0 <_printf_float+0x1c0>
 8000fdc:	1c5a      	adds	r2, r3, #1
 8000fde:	6122      	str	r2, [r4, #16]
 8000fe0:	65a3      	str	r3, [r4, #88]	; 0x58
 8000fe2:	f04f 0800 	mov.w	r8, #0
 8000fe6:	f89d 3023 	ldrb.w	r3, [sp, #35]	; 0x23
 8000fea:	2b00      	cmp	r3, #0
 8000fec:	f43f af6f 	beq.w	8000ece <_printf_float+0xae>
 8000ff0:	232d      	movs	r3, #45	; 0x2d
 8000ff2:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
 8000ff6:	e76a      	b.n	8000ece <_printf_float+0xae>
 8000ff8:	f8d8 3000 	ldr.w	r3, [r8]
 8000ffc:	3307      	adds	r3, #7
 8000ffe:	f023 0307 	bic.w	r3, r3, #7
 8001002:	ed93 7b00 	vldr	d7, [r3]
 8001006:	3308      	adds	r3, #8
 8001008:	f8c8 3000 	str.w	r3, [r8]
 800100c:	ed8d 7b04 	vstr	d7, [sp, #16]
 8001010:	ed84 7b12 	vstr	d7, [r4, #72]	; 0x48
 8001014:	e72d      	b.n	8000e72 <_printf_float+0x52>
 8001016:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8001018:	2a01      	cmp	r2, #1
 800101a:	dd62      	ble.n	80010e2 <_printf_float+0x2c2>
 800101c:	2301      	movs	r3, #1
 800101e:	464a      	mov	r2, r9
 8001020:	4631      	mov	r1, r6
 8001022:	4628      	mov	r0, r5
 8001024:	47b8      	blx	r7
 8001026:	3001      	adds	r0, #1
 8001028:	d09a      	beq.n	8000f60 <_printf_float+0x140>
 800102a:	9b07      	ldr	r3, [sp, #28]
 800102c:	9a06      	ldr	r2, [sp, #24]
 800102e:	4631      	mov	r1, r6
 8001030:	4628      	mov	r0, r5
 8001032:	47b8      	blx	r7
 8001034:	3001      	adds	r0, #1
 8001036:	d093      	beq.n	8000f60 <_printf_float+0x140>
 8001038:	2300      	movs	r3, #0
 800103a:	2200      	movs	r2, #0
 800103c:	e9d4 0112 	ldrd	r0, r1, [r4, #72]	; 0x48
 8001040:	f002 fb72 	bl	8003728 <__aeabi_dcmpeq>
 8001044:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8001046:	b1a0      	cbz	r0, 8001072 <_printf_float+0x252>
 8001048:	2b01      	cmp	r3, #1
 800104a:	dd1b      	ble.n	8001084 <_printf_float+0x264>
 800104c:	f104 0a1a 	add.w	sl, r4, #26
 8001050:	f04f 0900 	mov.w	r9, #0
 8001054:	e003      	b.n	800105e <_printf_float+0x23e>
 8001056:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8001058:	3b01      	subs	r3, #1
 800105a:	454b      	cmp	r3, r9
 800105c:	dd12      	ble.n	8001084 <_printf_float+0x264>
 800105e:	2301      	movs	r3, #1
 8001060:	4652      	mov	r2, sl
 8001062:	4631      	mov	r1, r6
 8001064:	4628      	mov	r0, r5
 8001066:	47b8      	blx	r7
 8001068:	3001      	adds	r0, #1
 800106a:	f109 0901 	add.w	r9, r9, #1
 800106e:	d1f2      	bne.n	8001056 <_printf_float+0x236>
 8001070:	e776      	b.n	8000f60 <_printf_float+0x140>
 8001072:	f109 0201 	add.w	r2, r9, #1
 8001076:	3b01      	subs	r3, #1
 8001078:	4631      	mov	r1, r6
 800107a:	4628      	mov	r0, r5
 800107c:	47b8      	blx	r7
 800107e:	3001      	adds	r0, #1
 8001080:	f43f af6e 	beq.w	8000f60 <_printf_float+0x140>
 8001084:	4643      	mov	r3, r8
 8001086:	f104 0250 	add.w	r2, r4, #80	; 0x50
 800108a:	4631      	mov	r1, r6
 800108c:	4628      	mov	r0, r5
 800108e:	47b8      	blx	r7
 8001090:	3001      	adds	r0, #1
 8001092:	f43f af65 	beq.w	8000f60 <_printf_float+0x140>
 8001096:	6823      	ldr	r3, [r4, #0]
 8001098:	68e0      	ldr	r0, [r4, #12]
 800109a:	f013 0f02 	tst.w	r3, #2
 800109e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80010a0:	d016      	beq.n	80010d0 <_printf_float+0x2b0>
 80010a2:	1ac2      	subs	r2, r0, r3
 80010a4:	2a00      	cmp	r2, #0
 80010a6:	dd13      	ble.n	80010d0 <_printf_float+0x2b0>
 80010a8:	f104 0919 	add.w	r9, r4, #25
 80010ac:	f04f 0800 	mov.w	r8, #0
 80010b0:	e004      	b.n	80010bc <_printf_float+0x29c>
 80010b2:	68e0      	ldr	r0, [r4, #12]
 80010b4:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80010b6:	1ac2      	subs	r2, r0, r3
 80010b8:	4542      	cmp	r2, r8
 80010ba:	dd09      	ble.n	80010d0 <_printf_float+0x2b0>
 80010bc:	2301      	movs	r3, #1
 80010be:	464a      	mov	r2, r9
 80010c0:	4631      	mov	r1, r6
 80010c2:	4628      	mov	r0, r5
 80010c4:	47b8      	blx	r7
 80010c6:	3001      	adds	r0, #1
 80010c8:	f108 0801 	add.w	r8, r8, #1
 80010cc:	d1f1      	bne.n	80010b2 <_printf_float+0x292>
 80010ce:	e747      	b.n	8000f60 <_printf_float+0x140>
 80010d0:	4298      	cmp	r0, r3
 80010d2:	bfb8      	it	lt
 80010d4:	4618      	movlt	r0, r3
 80010d6:	b00d      	add	sp, #52	; 0x34
 80010d8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80010dc:	464a      	mov	r2, r9
 80010de:	6923      	ldr	r3, [r4, #16]
 80010e0:	e7d3      	b.n	800108a <_printf_float+0x26a>
 80010e2:	07db      	lsls	r3, r3, #31
 80010e4:	d49a      	bmi.n	800101c <_printf_float+0x1fc>
 80010e6:	464a      	mov	r2, r9
 80010e8:	2301      	movs	r3, #1
 80010ea:	e7c5      	b.n	8001078 <_printf_float+0x258>
 80010ec:	232d      	movs	r3, #45	; 0x2d
 80010ee:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
 80010f2:	e6de      	b.n	8000eb2 <_printf_float+0x92>
 80010f4:	2900      	cmp	r1, #0
 80010f6:	f000 80ee 	beq.w	80012d6 <_printf_float+0x4b6>
 80010fa:	f44a 6280 	orr.w	r2, sl, #1024	; 0x400
 80010fe:	2300      	movs	r3, #0
 8001100:	6022      	str	r2, [r4, #0]
 8001102:	a80a      	add	r0, sp, #40	; 0x28
 8001104:	9303      	str	r3, [sp, #12]
 8001106:	ab09      	add	r3, sp, #36	; 0x24
 8001108:	9002      	str	r0, [sp, #8]
 800110a:	9300      	str	r3, [sp, #0]
 800110c:	f8cd b004 	str.w	fp, [sp, #4]
 8001110:	f10d 0323 	add.w	r3, sp, #35	; 0x23
 8001114:	ed9d 0b04 	vldr	d0, [sp, #16]
 8001118:	4628      	mov	r0, r5
 800111a:	f7ff fda5 	bl	8000c68 <__cvt>
 800111e:	4681      	mov	r9, r0
 8001120:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8001122:	1cd9      	adds	r1, r3, #3
 8001124:	db1e      	blt.n	8001164 <_printf_float+0x344>
 8001126:	6862      	ldr	r2, [r4, #4]
 8001128:	4293      	cmp	r3, r2
 800112a:	dc1b      	bgt.n	8001164 <_printf_float+0x344>
 800112c:	f04f 0b67 	mov.w	fp, #103	; 0x67
 8001130:	e74c      	b.n	8000fcc <_printf_float+0x1ac>
 8001132:	f02a 0304 	bic.w	r3, sl, #4
 8001136:	4909      	ldr	r1, [pc, #36]	; (800115c <_printf_float+0x33c>)
 8001138:	4a09      	ldr	r2, [pc, #36]	; (8001160 <_printf_float+0x340>)
 800113a:	6023      	str	r3, [r4, #0]
 800113c:	2303      	movs	r3, #3
 800113e:	f1bb 0f47 	cmp.w	fp, #71	; 0x47
 8001142:	bf8c      	ite	hi
 8001144:	4689      	movhi	r9, r1
 8001146:	4691      	movls	r9, r2
 8001148:	6123      	str	r3, [r4, #16]
 800114a:	f04f 0800 	mov.w	r8, #0
 800114e:	e6be      	b.n	8000ece <_printf_float+0xae>
 8001150:	7fefffff 	.word	0x7fefffff
 8001154:	0800add4 	.word	0x0800add4
 8001158:	0800add0 	.word	0x0800add0
 800115c:	0800addc 	.word	0x0800addc
 8001160:	0800add8 	.word	0x0800add8
 8001164:	f1ab 0b02 	sub.w	fp, fp, #2
 8001168:	fa5f fb8b 	uxtb.w	fp, fp
 800116c:	f1bb 0f65 	cmp.w	fp, #101	; 0x65
 8001170:	f63f af28 	bhi.w	8000fc4 <_printf_float+0x1a4>
 8001174:	3b01      	subs	r3, #1
 8001176:	4619      	mov	r1, r3
 8001178:	465a      	mov	r2, fp
 800117a:	f104 0050 	add.w	r0, r4, #80	; 0x50
 800117e:	9309      	str	r3, [sp, #36]	; 0x24
 8001180:	f7ff fe06 	bl	8000d90 <__exponent>
 8001184:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8001186:	1883      	adds	r3, r0, r2
 8001188:	2a01      	cmp	r2, #1
 800118a:	4680      	mov	r8, r0
 800118c:	6123      	str	r3, [r4, #16]
 800118e:	f340 80b3 	ble.w	80012f8 <_printf_float+0x4d8>
 8001192:	3301      	adds	r3, #1
 8001194:	6123      	str	r3, [r4, #16]
 8001196:	e726      	b.n	8000fe6 <_printf_float+0x1c6>
 8001198:	2106      	movs	r1, #6
 800119a:	6061      	str	r1, [r4, #4]
 800119c:	f44a 6280 	orr.w	r2, sl, #1024	; 0x400
 80011a0:	2300      	movs	r3, #0
 80011a2:	6022      	str	r2, [r4, #0]
 80011a4:	a80a      	add	r0, sp, #40	; 0x28
 80011a6:	9303      	str	r3, [sp, #12]
 80011a8:	ab09      	add	r3, sp, #36	; 0x24
 80011aa:	9002      	str	r0, [sp, #8]
 80011ac:	9300      	str	r3, [sp, #0]
 80011ae:	f8cd b004 	str.w	fp, [sp, #4]
 80011b2:	f10d 0323 	add.w	r3, sp, #35	; 0x23
 80011b6:	ed9d 0b04 	vldr	d0, [sp, #16]
 80011ba:	4628      	mov	r0, r5
 80011bc:	f7ff fd54 	bl	8000c68 <__cvt>
 80011c0:	f1bb 0f67 	cmp.w	fp, #103	; 0x67
 80011c4:	4681      	mov	r9, r0
 80011c6:	d0ab      	beq.n	8001120 <_printf_float+0x300>
 80011c8:	f1bb 0f47 	cmp.w	fp, #71	; 0x47
 80011cc:	f47f aef5 	bne.w	8000fba <_printf_float+0x19a>
 80011d0:	e7a6      	b.n	8001120 <_printf_float+0x300>
 80011d2:	2b00      	cmp	r3, #0
 80011d4:	bfd4      	ite	le
 80011d6:	f1c3 0102 	rsble	r1, r3, #2
 80011da:	2101      	movgt	r1, #1
 80011dc:	440a      	add	r2, r1
 80011de:	6122      	str	r2, [r4, #16]
 80011e0:	e6fe      	b.n	8000fe0 <_printf_float+0x1c0>
 80011e2:	9909      	ldr	r1, [sp, #36]	; 0x24
 80011e4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80011e6:	4291      	cmp	r1, r2
 80011e8:	eb09 0803 	add.w	r8, r9, r3
 80011ec:	db35      	blt.n	800125a <_printf_float+0x43a>
 80011ee:	6823      	ldr	r3, [r4, #0]
 80011f0:	07d8      	lsls	r0, r3, #31
 80011f2:	d432      	bmi.n	800125a <_printf_float+0x43a>
 80011f4:	4491      	add	r9, r2
 80011f6:	ebc8 0909 	rsb	r9, r8, r9
 80011fa:	1a52      	subs	r2, r2, r1
 80011fc:	4591      	cmp	r9, r2
 80011fe:	bfa8      	it	ge
 8001200:	4691      	movge	r9, r2
 8001202:	f1b9 0f00 	cmp.w	r9, #0
 8001206:	dd0a      	ble.n	800121e <_printf_float+0x3fe>
 8001208:	4642      	mov	r2, r8
 800120a:	464b      	mov	r3, r9
 800120c:	4631      	mov	r1, r6
 800120e:	4628      	mov	r0, r5
 8001210:	47b8      	blx	r7
 8001212:	3001      	adds	r0, #1
 8001214:	f43f aea4 	beq.w	8000f60 <_printf_float+0x140>
 8001218:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800121a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800121c:	1a9a      	subs	r2, r3, r2
 800121e:	ea29 79e9 	bic.w	r9, r9, r9, asr #31
 8001222:	ebc9 0202 	rsb	r2, r9, r2
 8001226:	2a00      	cmp	r2, #0
 8001228:	f77f af35 	ble.w	8001096 <_printf_float+0x276>
 800122c:	f104 0a1a 	add.w	sl, r4, #26
 8001230:	f04f 0800 	mov.w	r8, #0
 8001234:	e007      	b.n	8001246 <_printf_float+0x426>
 8001236:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8001238:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800123a:	1a9b      	subs	r3, r3, r2
 800123c:	ebc9 0303 	rsb	r3, r9, r3
 8001240:	4543      	cmp	r3, r8
 8001242:	f77f af28 	ble.w	8001096 <_printf_float+0x276>
 8001246:	2301      	movs	r3, #1
 8001248:	4652      	mov	r2, sl
 800124a:	4631      	mov	r1, r6
 800124c:	4628      	mov	r0, r5
 800124e:	47b8      	blx	r7
 8001250:	3001      	adds	r0, #1
 8001252:	f108 0801 	add.w	r8, r8, #1
 8001256:	d1ee      	bne.n	8001236 <_printf_float+0x416>
 8001258:	e682      	b.n	8000f60 <_printf_float+0x140>
 800125a:	9b07      	ldr	r3, [sp, #28]
 800125c:	9a06      	ldr	r2, [sp, #24]
 800125e:	4631      	mov	r1, r6
 8001260:	4628      	mov	r0, r5
 8001262:	47b8      	blx	r7
 8001264:	3001      	adds	r0, #1
 8001266:	f43f ae7b 	beq.w	8000f60 <_printf_float+0x140>
 800126a:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800126c:	9909      	ldr	r1, [sp, #36]	; 0x24
 800126e:	e7c1      	b.n	80011f4 <_printf_float+0x3d4>
 8001270:	2301      	movs	r3, #1
 8001272:	4a41      	ldr	r2, [pc, #260]	; (8001378 <_printf_float+0x558>)
 8001274:	4631      	mov	r1, r6
 8001276:	4628      	mov	r0, r5
 8001278:	47b8      	blx	r7
 800127a:	3001      	adds	r0, #1
 800127c:	f43f ae70 	beq.w	8000f60 <_printf_float+0x140>
 8001280:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8001282:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8001284:	429a      	cmp	r2, r3
 8001286:	db03      	blt.n	8001290 <_printf_float+0x470>
 8001288:	6823      	ldr	r3, [r4, #0]
 800128a:	07d9      	lsls	r1, r3, #31
 800128c:	f57f af04 	bpl.w	8001098 <_printf_float+0x278>
 8001290:	9b07      	ldr	r3, [sp, #28]
 8001292:	9a06      	ldr	r2, [sp, #24]
 8001294:	4631      	mov	r1, r6
 8001296:	4628      	mov	r0, r5
 8001298:	47b8      	blx	r7
 800129a:	3001      	adds	r0, #1
 800129c:	f43f ae60 	beq.w	8000f60 <_printf_float+0x140>
 80012a0:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80012a2:	2b01      	cmp	r3, #1
 80012a4:	f77f aef7 	ble.w	8001096 <_printf_float+0x276>
 80012a8:	f104 091a 	add.w	r9, r4, #26
 80012ac:	f04f 0800 	mov.w	r8, #0
 80012b0:	e004      	b.n	80012bc <_printf_float+0x49c>
 80012b2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80012b4:	3b01      	subs	r3, #1
 80012b6:	4543      	cmp	r3, r8
 80012b8:	f77f aeed 	ble.w	8001096 <_printf_float+0x276>
 80012bc:	2301      	movs	r3, #1
 80012be:	464a      	mov	r2, r9
 80012c0:	4631      	mov	r1, r6
 80012c2:	4628      	mov	r0, r5
 80012c4:	47b8      	blx	r7
 80012c6:	3001      	adds	r0, #1
 80012c8:	f108 0801 	add.w	r8, r8, #1
 80012cc:	d1f1      	bne.n	80012b2 <_printf_float+0x492>
 80012ce:	e647      	b.n	8000f60 <_printf_float+0x140>
 80012d0:	2900      	cmp	r1, #0
 80012d2:	f47f af12 	bne.w	80010fa <_printf_float+0x2da>
 80012d6:	2101      	movs	r1, #1
 80012d8:	6061      	str	r1, [r4, #4]
 80012da:	e75f      	b.n	800119c <_printf_float+0x37c>
 80012dc:	2b00      	cmp	r3, #0
 80012de:	6862      	ldr	r2, [r4, #4]
 80012e0:	dd3e      	ble.n	8001360 <_printf_float+0x540>
 80012e2:	6123      	str	r3, [r4, #16]
 80012e4:	b11a      	cbz	r2, 80012ee <_printf_float+0x4ce>
 80012e6:	3201      	adds	r2, #1
 80012e8:	441a      	add	r2, r3
 80012ea:	6122      	str	r2, [r4, #16]
 80012ec:	e678      	b.n	8000fe0 <_printf_float+0x1c0>
 80012ee:	6821      	ldr	r1, [r4, #0]
 80012f0:	07c8      	lsls	r0, r1, #31
 80012f2:	f57f ae75 	bpl.w	8000fe0 <_printf_float+0x1c0>
 80012f6:	e7f6      	b.n	80012e6 <_printf_float+0x4c6>
 80012f8:	6822      	ldr	r2, [r4, #0]
 80012fa:	07d2      	lsls	r2, r2, #31
 80012fc:	f57f ae73 	bpl.w	8000fe6 <_printf_float+0x1c6>
 8001300:	e747      	b.n	8001192 <_printf_float+0x372>
 8001302:	2301      	movs	r3, #1
 8001304:	4a1c      	ldr	r2, [pc, #112]	; (8001378 <_printf_float+0x558>)
 8001306:	4631      	mov	r1, r6
 8001308:	4628      	mov	r0, r5
 800130a:	47b8      	blx	r7
 800130c:	3001      	adds	r0, #1
 800130e:	f43f ae27 	beq.w	8000f60 <_printf_float+0x140>
 8001312:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8001314:	b92b      	cbnz	r3, 8001322 <_printf_float+0x502>
 8001316:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8001318:	b91b      	cbnz	r3, 8001322 <_printf_float+0x502>
 800131a:	6823      	ldr	r3, [r4, #0]
 800131c:	07da      	lsls	r2, r3, #31
 800131e:	f57f aebb 	bpl.w	8001098 <_printf_float+0x278>
 8001322:	9b07      	ldr	r3, [sp, #28]
 8001324:	9a06      	ldr	r2, [sp, #24]
 8001326:	4631      	mov	r1, r6
 8001328:	4628      	mov	r0, r5
 800132a:	47b8      	blx	r7
 800132c:	3001      	adds	r0, #1
 800132e:	f43f ae17 	beq.w	8000f60 <_printf_float+0x140>
 8001332:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8001334:	425b      	negs	r3, r3
 8001336:	2b00      	cmp	r3, #0
 8001338:	dd1a      	ble.n	8001370 <_printf_float+0x550>
 800133a:	f104 0a1a 	add.w	sl, r4, #26
 800133e:	f04f 0800 	mov.w	r8, #0
 8001342:	e003      	b.n	800134c <_printf_float+0x52c>
 8001344:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8001346:	425b      	negs	r3, r3
 8001348:	4543      	cmp	r3, r8
 800134a:	dd11      	ble.n	8001370 <_printf_float+0x550>
 800134c:	2301      	movs	r3, #1
 800134e:	4652      	mov	r2, sl
 8001350:	4631      	mov	r1, r6
 8001352:	4628      	mov	r0, r5
 8001354:	47b8      	blx	r7
 8001356:	3001      	adds	r0, #1
 8001358:	f108 0801 	add.w	r8, r8, #1
 800135c:	d1f2      	bne.n	8001344 <_printf_float+0x524>
 800135e:	e5ff      	b.n	8000f60 <_printf_float+0x140>
 8001360:	b922      	cbnz	r2, 800136c <_printf_float+0x54c>
 8001362:	6821      	ldr	r1, [r4, #0]
 8001364:	07c9      	lsls	r1, r1, #31
 8001366:	d401      	bmi.n	800136c <_printf_float+0x54c>
 8001368:	2201      	movs	r2, #1
 800136a:	e738      	b.n	80011de <_printf_float+0x3be>
 800136c:	3202      	adds	r2, #2
 800136e:	e736      	b.n	80011de <_printf_float+0x3be>
 8001370:	464a      	mov	r2, r9
 8001372:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8001374:	e689      	b.n	800108a <_printf_float+0x26a>
 8001376:	bf00      	nop
 8001378:	0800ade0 	.word	0x0800ade0

0800137c <_printf_common>:
 800137c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8001380:	460c      	mov	r4, r1
 8001382:	4691      	mov	r9, r2
 8001384:	6909      	ldr	r1, [r1, #16]
 8001386:	68a2      	ldr	r2, [r4, #8]
 8001388:	f8dd 8020 	ldr.w	r8, [sp, #32]
 800138c:	428a      	cmp	r2, r1
 800138e:	bfb8      	it	lt
 8001390:	460a      	movlt	r2, r1
 8001392:	f8c9 2000 	str.w	r2, [r9]
 8001396:	f894 1043 	ldrb.w	r1, [r4, #67]	; 0x43
 800139a:	4606      	mov	r6, r0
 800139c:	461f      	mov	r7, r3
 800139e:	b111      	cbz	r1, 80013a6 <_printf_common+0x2a>
 80013a0:	3201      	adds	r2, #1
 80013a2:	f8c9 2000 	str.w	r2, [r9]
 80013a6:	6823      	ldr	r3, [r4, #0]
 80013a8:	0699      	lsls	r1, r3, #26
 80013aa:	d55d      	bpl.n	8001468 <_printf_common+0xec>
 80013ac:	f8d9 2000 	ldr.w	r2, [r9]
 80013b0:	3202      	adds	r2, #2
 80013b2:	f8c9 2000 	str.w	r2, [r9]
 80013b6:	6823      	ldr	r3, [r4, #0]
 80013b8:	f013 0f06 	tst.w	r3, #6
 80013bc:	4619      	mov	r1, r3
 80013be:	d11d      	bne.n	80013fc <_printf_common+0x80>
 80013c0:	68e1      	ldr	r1, [r4, #12]
 80013c2:	1a8a      	subs	r2, r1, r2
 80013c4:	2a00      	cmp	r2, #0
 80013c6:	bfd8      	it	le
 80013c8:	4619      	movle	r1, r3
 80013ca:	dd17      	ble.n	80013fc <_printf_common+0x80>
 80013cc:	f104 0a19 	add.w	sl, r4, #25
 80013d0:	2500      	movs	r5, #0
 80013d2:	e005      	b.n	80013e0 <_printf_common+0x64>
 80013d4:	68e3      	ldr	r3, [r4, #12]
 80013d6:	f8d9 2000 	ldr.w	r2, [r9]
 80013da:	1a9b      	subs	r3, r3, r2
 80013dc:	42ab      	cmp	r3, r5
 80013de:	dd0c      	ble.n	80013fa <_printf_common+0x7e>
 80013e0:	2301      	movs	r3, #1
 80013e2:	4652      	mov	r2, sl
 80013e4:	4639      	mov	r1, r7
 80013e6:	4630      	mov	r0, r6
 80013e8:	47c0      	blx	r8
 80013ea:	3001      	adds	r0, #1
 80013ec:	f105 0501 	add.w	r5, r5, #1
 80013f0:	d1f0      	bne.n	80013d4 <_printf_common+0x58>
 80013f2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80013f6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80013fa:	6821      	ldr	r1, [r4, #0]
 80013fc:	f894 3043 	ldrb.w	r3, [r4, #67]	; 0x43
 8001400:	3300      	adds	r3, #0
 8001402:	bf18      	it	ne
 8001404:	2301      	movne	r3, #1
 8001406:	068a      	lsls	r2, r1, #26
 8001408:	d50a      	bpl.n	8001420 <_printf_common+0xa4>
 800140a:	18e1      	adds	r1, r4, r3
 800140c:	1c5a      	adds	r2, r3, #1
 800140e:	2030      	movs	r0, #48	; 0x30
 8001410:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
 8001414:	4422      	add	r2, r4
 8001416:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
 800141a:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
 800141e:	3302      	adds	r3, #2
 8001420:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8001424:	4639      	mov	r1, r7
 8001426:	4630      	mov	r0, r6
 8001428:	47c0      	blx	r8
 800142a:	3001      	adds	r0, #1
 800142c:	d0e1      	beq.n	80013f2 <_printf_common+0x76>
 800142e:	6823      	ldr	r3, [r4, #0]
 8001430:	f003 0306 	and.w	r3, r3, #6
 8001434:	2b04      	cmp	r3, #4
 8001436:	d029      	beq.n	800148c <_printf_common+0x110>
 8001438:	68a3      	ldr	r3, [r4, #8]
 800143a:	6922      	ldr	r2, [r4, #16]
 800143c:	4293      	cmp	r3, r2
 800143e:	bfc8      	it	gt
 8001440:	f04f 0900 	movgt.w	r9, #0
 8001444:	dd2f      	ble.n	80014a6 <_printf_common+0x12a>
 8001446:	1a9b      	subs	r3, r3, r2
 8001448:	4499      	add	r9, r3
 800144a:	341a      	adds	r4, #26
 800144c:	2500      	movs	r5, #0
 800144e:	e001      	b.n	8001454 <_printf_common+0xd8>
 8001450:	454d      	cmp	r5, r9
 8001452:	d028      	beq.n	80014a6 <_printf_common+0x12a>
 8001454:	2301      	movs	r3, #1
 8001456:	4622      	mov	r2, r4
 8001458:	4639      	mov	r1, r7
 800145a:	4630      	mov	r0, r6
 800145c:	47c0      	blx	r8
 800145e:	3001      	adds	r0, #1
 8001460:	f105 0501 	add.w	r5, r5, #1
 8001464:	d1f4      	bne.n	8001450 <_printf_common+0xd4>
 8001466:	e7c4      	b.n	80013f2 <_printf_common+0x76>
 8001468:	f013 0f06 	tst.w	r3, #6
 800146c:	d108      	bne.n	8001480 <_printf_common+0x104>
 800146e:	68e1      	ldr	r1, [r4, #12]
 8001470:	f8d9 2000 	ldr.w	r2, [r9]
 8001474:	1a8a      	subs	r2, r1, r2
 8001476:	2a00      	cmp	r2, #0
 8001478:	bfd8      	it	le
 800147a:	4619      	movle	r1, r3
 800147c:	dca6      	bgt.n	80013cc <_printf_common+0x50>
 800147e:	e7bd      	b.n	80013fc <_printf_common+0x80>
 8001480:	f894 3043 	ldrb.w	r3, [r4, #67]	; 0x43
 8001484:	3300      	adds	r3, #0
 8001486:	bf18      	it	ne
 8001488:	2301      	movne	r3, #1
 800148a:	e7c9      	b.n	8001420 <_printf_common+0xa4>
 800148c:	f8d9 0000 	ldr.w	r0, [r9]
 8001490:	68e1      	ldr	r1, [r4, #12]
 8001492:	68a3      	ldr	r3, [r4, #8]
 8001494:	6922      	ldr	r2, [r4, #16]
 8001496:	1a09      	subs	r1, r1, r0
 8001498:	4293      	cmp	r3, r2
 800149a:	ea21 79e1 	bic.w	r9, r1, r1, asr #31
 800149e:	dcd2      	bgt.n	8001446 <_printf_common+0xca>
 80014a0:	f1b9 0f00 	cmp.w	r9, #0
 80014a4:	d1d1      	bne.n	800144a <_printf_common+0xce>
 80014a6:	2000      	movs	r0, #0
 80014a8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

080014ac <_printf_i>:
 80014ac:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80014b0:	460c      	mov	r4, r1
 80014b2:	7e09      	ldrb	r1, [r1, #24]
 80014b4:	b085      	sub	sp, #20
 80014b6:	296e      	cmp	r1, #110	; 0x6e
 80014b8:	4606      	mov	r6, r0
 80014ba:	4617      	mov	r7, r2
 80014bc:	980c      	ldr	r0, [sp, #48]	; 0x30
 80014be:	4698      	mov	r8, r3
 80014c0:	f104 0c43 	add.w	ip, r4, #67	; 0x43
 80014c4:	d05a      	beq.n	800157c <_printf_i+0xd0>
 80014c6:	d81a      	bhi.n	80014fe <_printf_i+0x52>
 80014c8:	2963      	cmp	r1, #99	; 0x63
 80014ca:	f000 8112 	beq.w	80016f2 <_printf_i+0x246>
 80014ce:	f200 80d6 	bhi.w	800167e <_printf_i+0x1d2>
 80014d2:	2900      	cmp	r1, #0
 80014d4:	d05c      	beq.n	8001590 <_printf_i+0xe4>
 80014d6:	2958      	cmp	r1, #88	; 0x58
 80014d8:	f040 80f5 	bne.w	80016c6 <_printf_i+0x21a>
 80014dc:	f884 1045 	strb.w	r1, [r4, #69]	; 0x45
 80014e0:	6822      	ldr	r2, [r4, #0]
 80014e2:	6803      	ldr	r3, [r0, #0]
 80014e4:	f8df e264 	ldr.w	lr, [pc, #612]	; 800174c <_printf_i+0x2a0>
 80014e8:	0615      	lsls	r5, r2, #24
 80014ea:	f103 0104 	add.w	r1, r3, #4
 80014ee:	d41e      	bmi.n	800152e <_printf_i+0x82>
 80014f0:	0655      	lsls	r5, r2, #25
 80014f2:	bf53      	iteet	pl
 80014f4:	681b      	ldrpl	r3, [r3, #0]
 80014f6:	6001      	strmi	r1, [r0, #0]
 80014f8:	881b      	ldrhmi	r3, [r3, #0]
 80014fa:	6001      	strpl	r1, [r0, #0]
 80014fc:	e019      	b.n	8001532 <_printf_i+0x86>
 80014fe:	2973      	cmp	r1, #115	; 0x73
 8001500:	f000 80cf 	beq.w	80016a2 <_printf_i+0x1f6>
 8001504:	d87e      	bhi.n	8001604 <_printf_i+0x158>
 8001506:	296f      	cmp	r1, #111	; 0x6f
 8001508:	f000 80e4 	beq.w	80016d4 <_printf_i+0x228>
 800150c:	2970      	cmp	r1, #112	; 0x70
 800150e:	f040 80da 	bne.w	80016c6 <_printf_i+0x21a>
 8001512:	6822      	ldr	r2, [r4, #0]
 8001514:	f042 0220 	orr.w	r2, r2, #32
 8001518:	6022      	str	r2, [r4, #0]
 800151a:	2378      	movs	r3, #120	; 0x78
 800151c:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
 8001520:	6803      	ldr	r3, [r0, #0]
 8001522:	f8df e22c 	ldr.w	lr, [pc, #556]	; 8001750 <_printf_i+0x2a4>
 8001526:	0615      	lsls	r5, r2, #24
 8001528:	f103 0104 	add.w	r1, r3, #4
 800152c:	d5e0      	bpl.n	80014f0 <_printf_i+0x44>
 800152e:	681b      	ldr	r3, [r3, #0]
 8001530:	6001      	str	r1, [r0, #0]
 8001532:	07d0      	lsls	r0, r2, #31
 8001534:	bf44      	itt	mi
 8001536:	f042 0220 	orrmi.w	r2, r2, #32
 800153a:	6022      	strmi	r2, [r4, #0]
 800153c:	2b00      	cmp	r3, #0
 800153e:	f040 8090 	bne.w	8001662 <_printf_i+0x1b6>
 8001542:	6822      	ldr	r2, [r4, #0]
 8001544:	f022 0220 	bic.w	r2, r2, #32
 8001548:	6022      	str	r2, [r4, #0]
 800154a:	2110      	movs	r1, #16
 800154c:	2200      	movs	r2, #0
 800154e:	f884 2043 	strb.w	r2, [r4, #67]	; 0x43
 8001552:	6860      	ldr	r0, [r4, #4]
 8001554:	60a0      	str	r0, [r4, #8]
 8001556:	2800      	cmp	r0, #0
 8001558:	f2c0 8088 	blt.w	800166c <_printf_i+0x1c0>
 800155c:	6822      	ldr	r2, [r4, #0]
 800155e:	f022 0204 	bic.w	r2, r2, #4
 8001562:	6022      	str	r2, [r4, #0]
 8001564:	2b00      	cmp	r3, #0
 8001566:	d162      	bne.n	800162e <_printf_i+0x182>
 8001568:	2800      	cmp	r0, #0
 800156a:	f040 8081 	bne.w	8001670 <_printf_i+0x1c4>
 800156e:	4665      	mov	r5, ip
 8001570:	2908      	cmp	r1, #8
 8001572:	d06a      	beq.n	800164a <_printf_i+0x19e>
 8001574:	ebc5 030c 	rsb	r3, r5, ip
 8001578:	6123      	str	r3, [r4, #16]
 800157a:	e00c      	b.n	8001596 <_printf_i+0xea>
 800157c:	6823      	ldr	r3, [r4, #0]
 800157e:	061a      	lsls	r2, r3, #24
 8001580:	f140 80d5 	bpl.w	800172e <_printf_i+0x282>
 8001584:	6803      	ldr	r3, [r0, #0]
 8001586:	6962      	ldr	r2, [r4, #20]
 8001588:	1d19      	adds	r1, r3, #4
 800158a:	6001      	str	r1, [r0, #0]
 800158c:	681b      	ldr	r3, [r3, #0]
 800158e:	601a      	str	r2, [r3, #0]
 8001590:	2300      	movs	r3, #0
 8001592:	4665      	mov	r5, ip
 8001594:	6123      	str	r3, [r4, #16]
 8001596:	f8cd 8000 	str.w	r8, [sp]
 800159a:	463b      	mov	r3, r7
 800159c:	aa03      	add	r2, sp, #12
 800159e:	4621      	mov	r1, r4
 80015a0:	4630      	mov	r0, r6
 80015a2:	f7ff feeb 	bl	800137c <_printf_common>
 80015a6:	3001      	adds	r0, #1
 80015a8:	d021      	beq.n	80015ee <_printf_i+0x142>
 80015aa:	462a      	mov	r2, r5
 80015ac:	6923      	ldr	r3, [r4, #16]
 80015ae:	4639      	mov	r1, r7
 80015b0:	4630      	mov	r0, r6
 80015b2:	47c0      	blx	r8
 80015b4:	3001      	adds	r0, #1
 80015b6:	d01a      	beq.n	80015ee <_printf_i+0x142>
 80015b8:	6823      	ldr	r3, [r4, #0]
 80015ba:	9803      	ldr	r0, [sp, #12]
 80015bc:	f013 0f02 	tst.w	r3, #2
 80015c0:	68e3      	ldr	r3, [r4, #12]
 80015c2:	d019      	beq.n	80015f8 <_printf_i+0x14c>
 80015c4:	1a1a      	subs	r2, r3, r0
 80015c6:	2a00      	cmp	r2, #0
 80015c8:	dd16      	ble.n	80015f8 <_printf_i+0x14c>
 80015ca:	f104 0919 	add.w	r9, r4, #25
 80015ce:	2500      	movs	r5, #0
 80015d0:	e004      	b.n	80015dc <_printf_i+0x130>
 80015d2:	68e3      	ldr	r3, [r4, #12]
 80015d4:	9803      	ldr	r0, [sp, #12]
 80015d6:	1a1a      	subs	r2, r3, r0
 80015d8:	42aa      	cmp	r2, r5
 80015da:	dd0d      	ble.n	80015f8 <_printf_i+0x14c>
 80015dc:	2301      	movs	r3, #1
 80015de:	464a      	mov	r2, r9
 80015e0:	4639      	mov	r1, r7
 80015e2:	4630      	mov	r0, r6
 80015e4:	47c0      	blx	r8
 80015e6:	3001      	adds	r0, #1
 80015e8:	f105 0501 	add.w	r5, r5, #1
 80015ec:	d1f1      	bne.n	80015d2 <_printf_i+0x126>
 80015ee:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80015f2:	b005      	add	sp, #20
 80015f4:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80015f8:	4298      	cmp	r0, r3
 80015fa:	bfb8      	it	lt
 80015fc:	4618      	movlt	r0, r3
 80015fe:	b005      	add	sp, #20
 8001600:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001604:	2975      	cmp	r1, #117	; 0x75
 8001606:	d065      	beq.n	80016d4 <_printf_i+0x228>
 8001608:	2978      	cmp	r1, #120	; 0x78
 800160a:	d15c      	bne.n	80016c6 <_printf_i+0x21a>
 800160c:	6822      	ldr	r2, [r4, #0]
 800160e:	e784      	b.n	800151a <_printf_i+0x6e>
 8001610:	6861      	ldr	r1, [r4, #4]
 8001612:	60a1      	str	r1, [r4, #8]
 8001614:	202d      	movs	r0, #45	; 0x2d
 8001616:	2900      	cmp	r1, #0
 8001618:	f1c3 0300 	rsb	r3, r3, #0
 800161c:	f884 0043 	strb.w	r0, [r4, #67]	; 0x43
 8001620:	db21      	blt.n	8001666 <_printf_i+0x1ba>
 8001622:	f022 0204 	bic.w	r2, r2, #4
 8001626:	f8df e124 	ldr.w	lr, [pc, #292]	; 800174c <_printf_i+0x2a0>
 800162a:	6022      	str	r2, [r4, #0]
 800162c:	210a      	movs	r1, #10
 800162e:	4665      	mov	r5, ip
 8001630:	fbb3 f2f1 	udiv	r2, r3, r1
 8001634:	fb01 3012 	mls	r0, r1, r2, r3
 8001638:	4613      	mov	r3, r2
 800163a:	f81e 2000 	ldrb.w	r2, [lr, r0]
 800163e:	f805 2d01 	strb.w	r2, [r5, #-1]!
 8001642:	2b00      	cmp	r3, #0
 8001644:	d1f4      	bne.n	8001630 <_printf_i+0x184>
 8001646:	2908      	cmp	r1, #8
 8001648:	d194      	bne.n	8001574 <_printf_i+0xc8>
 800164a:	6823      	ldr	r3, [r4, #0]
 800164c:	07d9      	lsls	r1, r3, #31
 800164e:	d591      	bpl.n	8001574 <_printf_i+0xc8>
 8001650:	6862      	ldr	r2, [r4, #4]
 8001652:	6923      	ldr	r3, [r4, #16]
 8001654:	429a      	cmp	r2, r3
 8001656:	dc8d      	bgt.n	8001574 <_printf_i+0xc8>
 8001658:	2330      	movs	r3, #48	; 0x30
 800165a:	f805 3c01 	strb.w	r3, [r5, #-1]
 800165e:	3d01      	subs	r5, #1
 8001660:	e788      	b.n	8001574 <_printf_i+0xc8>
 8001662:	2110      	movs	r1, #16
 8001664:	e772      	b.n	800154c <_printf_i+0xa0>
 8001666:	f8df e0e4 	ldr.w	lr, [pc, #228]	; 800174c <_printf_i+0x2a0>
 800166a:	210a      	movs	r1, #10
 800166c:	2b00      	cmp	r3, #0
 800166e:	d1de      	bne.n	800162e <_printf_i+0x182>
 8001670:	f89e 3000 	ldrb.w	r3, [lr]
 8001674:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
 8001678:	f104 0542 	add.w	r5, r4, #66	; 0x42
 800167c:	e778      	b.n	8001570 <_printf_i+0xc4>
 800167e:	2964      	cmp	r1, #100	; 0x64
 8001680:	d001      	beq.n	8001686 <_printf_i+0x1da>
 8001682:	2969      	cmp	r1, #105	; 0x69
 8001684:	d11f      	bne.n	80016c6 <_printf_i+0x21a>
 8001686:	6822      	ldr	r2, [r4, #0]
 8001688:	6803      	ldr	r3, [r0, #0]
 800168a:	0615      	lsls	r5, r2, #24
 800168c:	f103 0104 	add.w	r1, r3, #4
 8001690:	d53a      	bpl.n	8001708 <_printf_i+0x25c>
 8001692:	681b      	ldr	r3, [r3, #0]
 8001694:	6001      	str	r1, [r0, #0]
 8001696:	2b00      	cmp	r3, #0
 8001698:	dbba      	blt.n	8001610 <_printf_i+0x164>
 800169a:	f8df e0b0 	ldr.w	lr, [pc, #176]	; 800174c <_printf_i+0x2a0>
 800169e:	210a      	movs	r1, #10
 80016a0:	e757      	b.n	8001552 <_printf_i+0xa6>
 80016a2:	6803      	ldr	r3, [r0, #0]
 80016a4:	6862      	ldr	r2, [r4, #4]
 80016a6:	1d19      	adds	r1, r3, #4
 80016a8:	6001      	str	r1, [r0, #0]
 80016aa:	681d      	ldr	r5, [r3, #0]
 80016ac:	2100      	movs	r1, #0
 80016ae:	4628      	mov	r0, r5
 80016b0:	f001 f956 	bl	8002960 <memchr>
 80016b4:	2800      	cmp	r0, #0
 80016b6:	d046      	beq.n	8001746 <_printf_i+0x29a>
 80016b8:	1b40      	subs	r0, r0, r5
 80016ba:	6060      	str	r0, [r4, #4]
 80016bc:	6120      	str	r0, [r4, #16]
 80016be:	2300      	movs	r3, #0
 80016c0:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
 80016c4:	e767      	b.n	8001596 <_printf_i+0xea>
 80016c6:	2301      	movs	r3, #1
 80016c8:	f884 1042 	strb.w	r1, [r4, #66]	; 0x42
 80016cc:	6123      	str	r3, [r4, #16]
 80016ce:	f104 0542 	add.w	r5, r4, #66	; 0x42
 80016d2:	e7f4      	b.n	80016be <_printf_i+0x212>
 80016d4:	6823      	ldr	r3, [r4, #0]
 80016d6:	061a      	lsls	r2, r3, #24
 80016d8:	d51e      	bpl.n	8001718 <_printf_i+0x26c>
 80016da:	6803      	ldr	r3, [r0, #0]
 80016dc:	1d1a      	adds	r2, r3, #4
 80016de:	681b      	ldr	r3, [r3, #0]
 80016e0:	6002      	str	r2, [r0, #0]
 80016e2:	7e22      	ldrb	r2, [r4, #24]
 80016e4:	f8df e064 	ldr.w	lr, [pc, #100]	; 800174c <_printf_i+0x2a0>
 80016e8:	2a6f      	cmp	r2, #111	; 0x6f
 80016ea:	bf14      	ite	ne
 80016ec:	210a      	movne	r1, #10
 80016ee:	2108      	moveq	r1, #8
 80016f0:	e72c      	b.n	800154c <_printf_i+0xa0>
 80016f2:	6803      	ldr	r3, [r0, #0]
 80016f4:	681a      	ldr	r2, [r3, #0]
 80016f6:	1d19      	adds	r1, r3, #4
 80016f8:	2301      	movs	r3, #1
 80016fa:	6001      	str	r1, [r0, #0]
 80016fc:	f104 0542 	add.w	r5, r4, #66	; 0x42
 8001700:	f884 2042 	strb.w	r2, [r4, #66]	; 0x42
 8001704:	6123      	str	r3, [r4, #16]
 8001706:	e7da      	b.n	80016be <_printf_i+0x212>
 8001708:	0655      	lsls	r5, r2, #25
 800170a:	bf53      	iteet	pl
 800170c:	681b      	ldrpl	r3, [r3, #0]
 800170e:	6001      	strmi	r1, [r0, #0]
 8001710:	f9b3 3000 	ldrshmi.w	r3, [r3]
 8001714:	6001      	strpl	r1, [r0, #0]
 8001716:	e7be      	b.n	8001696 <_printf_i+0x1ea>
 8001718:	f013 0f40 	tst.w	r3, #64	; 0x40
 800171c:	6803      	ldr	r3, [r0, #0]
 800171e:	f103 0204 	add.w	r2, r3, #4
 8001722:	bf15      	itete	ne
 8001724:	6002      	strne	r2, [r0, #0]
 8001726:	681b      	ldreq	r3, [r3, #0]
 8001728:	881b      	ldrhne	r3, [r3, #0]
 800172a:	6002      	streq	r2, [r0, #0]
 800172c:	e7d9      	b.n	80016e2 <_printf_i+0x236>
 800172e:	f013 0f40 	tst.w	r3, #64	; 0x40
 8001732:	6803      	ldr	r3, [r0, #0]
 8001734:	6962      	ldr	r2, [r4, #20]
 8001736:	f103 0104 	add.w	r1, r3, #4
 800173a:	6001      	str	r1, [r0, #0]
 800173c:	681b      	ldr	r3, [r3, #0]
 800173e:	bf14      	ite	ne
 8001740:	801a      	strhne	r2, [r3, #0]
 8001742:	601a      	streq	r2, [r3, #0]
 8001744:	e724      	b.n	8001590 <_printf_i+0xe4>
 8001746:	6860      	ldr	r0, [r4, #4]
 8001748:	e7b8      	b.n	80016bc <_printf_i+0x210>
 800174a:	bf00      	nop
 800174c:	0800ade4 	.word	0x0800ade4
 8001750:	0800adf8 	.word	0x0800adf8

08001754 <cleanup_glue>:
 8001754:	b538      	push	{r3, r4, r5, lr}
 8001756:	460c      	mov	r4, r1
 8001758:	6809      	ldr	r1, [r1, #0]
 800175a:	4605      	mov	r5, r0
 800175c:	b109      	cbz	r1, 8001762 <cleanup_glue+0xe>
 800175e:	f7ff fff9 	bl	8001754 <cleanup_glue>
 8001762:	4621      	mov	r1, r4
 8001764:	4628      	mov	r0, r5
 8001766:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800176a:	f005 b8a5 	b.w	80068b8 <_free_r>
 800176e:	bf00      	nop

08001770 <_reclaim_reent>:
 8001770:	4b2f      	ldr	r3, [pc, #188]	; (8001830 <_reclaim_reent+0xc0>)
 8001772:	681b      	ldr	r3, [r3, #0]
 8001774:	4283      	cmp	r3, r0
 8001776:	d059      	beq.n	800182c <_reclaim_reent+0xbc>
 8001778:	6a42      	ldr	r2, [r0, #36]	; 0x24
 800177a:	b570      	push	{r4, r5, r6, lr}
 800177c:	4605      	mov	r5, r0
 800177e:	2a00      	cmp	r2, #0
 8001780:	d050      	beq.n	8001824 <_reclaim_reent+0xb4>
 8001782:	68d3      	ldr	r3, [r2, #12]
 8001784:	b19b      	cbz	r3, 80017ae <_reclaim_reent+0x3e>
 8001786:	2600      	movs	r6, #0
 8001788:	5999      	ldr	r1, [r3, r6]
 800178a:	b141      	cbz	r1, 800179e <_reclaim_reent+0x2e>
 800178c:	680c      	ldr	r4, [r1, #0]
 800178e:	4628      	mov	r0, r5
 8001790:	f005 f892 	bl	80068b8 <_free_r>
 8001794:	4621      	mov	r1, r4
 8001796:	2c00      	cmp	r4, #0
 8001798:	d1f8      	bne.n	800178c <_reclaim_reent+0x1c>
 800179a:	6a6b      	ldr	r3, [r5, #36]	; 0x24
 800179c:	68db      	ldr	r3, [r3, #12]
 800179e:	3604      	adds	r6, #4
 80017a0:	2e80      	cmp	r6, #128	; 0x80
 80017a2:	d1f1      	bne.n	8001788 <_reclaim_reent+0x18>
 80017a4:	4619      	mov	r1, r3
 80017a6:	4628      	mov	r0, r5
 80017a8:	f005 f886 	bl	80068b8 <_free_r>
 80017ac:	6a6a      	ldr	r2, [r5, #36]	; 0x24
 80017ae:	6811      	ldr	r1, [r2, #0]
 80017b0:	b111      	cbz	r1, 80017b8 <_reclaim_reent+0x48>
 80017b2:	4628      	mov	r0, r5
 80017b4:	f005 f880 	bl	80068b8 <_free_r>
 80017b8:	6969      	ldr	r1, [r5, #20]
 80017ba:	b111      	cbz	r1, 80017c2 <_reclaim_reent+0x52>
 80017bc:	4628      	mov	r0, r5
 80017be:	f005 f87b 	bl	80068b8 <_free_r>
 80017c2:	6a69      	ldr	r1, [r5, #36]	; 0x24
 80017c4:	b111      	cbz	r1, 80017cc <_reclaim_reent+0x5c>
 80017c6:	4628      	mov	r0, r5
 80017c8:	f005 f876 	bl	80068b8 <_free_r>
 80017cc:	6ba9      	ldr	r1, [r5, #56]	; 0x38
 80017ce:	b111      	cbz	r1, 80017d6 <_reclaim_reent+0x66>
 80017d0:	4628      	mov	r0, r5
 80017d2:	f005 f871 	bl	80068b8 <_free_r>
 80017d6:	6be9      	ldr	r1, [r5, #60]	; 0x3c
 80017d8:	b111      	cbz	r1, 80017e0 <_reclaim_reent+0x70>
 80017da:	4628      	mov	r0, r5
 80017dc:	f005 f86c 	bl	80068b8 <_free_r>
 80017e0:	6c29      	ldr	r1, [r5, #64]	; 0x40
 80017e2:	b111      	cbz	r1, 80017ea <_reclaim_reent+0x7a>
 80017e4:	4628      	mov	r0, r5
 80017e6:	f005 f867 	bl	80068b8 <_free_r>
 80017ea:	6de9      	ldr	r1, [r5, #92]	; 0x5c
 80017ec:	b111      	cbz	r1, 80017f4 <_reclaim_reent+0x84>
 80017ee:	4628      	mov	r0, r5
 80017f0:	f005 f862 	bl	80068b8 <_free_r>
 80017f4:	6da9      	ldr	r1, [r5, #88]	; 0x58
 80017f6:	b111      	cbz	r1, 80017fe <_reclaim_reent+0x8e>
 80017f8:	4628      	mov	r0, r5
 80017fa:	f005 f85d 	bl	80068b8 <_free_r>
 80017fe:	6b69      	ldr	r1, [r5, #52]	; 0x34
 8001800:	b111      	cbz	r1, 8001808 <_reclaim_reent+0x98>
 8001802:	4628      	mov	r0, r5
 8001804:	f005 f858 	bl	80068b8 <_free_r>
 8001808:	69ab      	ldr	r3, [r5, #24]
 800180a:	b903      	cbnz	r3, 800180e <_reclaim_reent+0x9e>
 800180c:	bd70      	pop	{r4, r5, r6, pc}
 800180e:	6aab      	ldr	r3, [r5, #40]	; 0x28
 8001810:	4628      	mov	r0, r5
 8001812:	4798      	blx	r3
 8001814:	6ca9      	ldr	r1, [r5, #72]	; 0x48
 8001816:	2900      	cmp	r1, #0
 8001818:	d0f8      	beq.n	800180c <_reclaim_reent+0x9c>
 800181a:	4628      	mov	r0, r5
 800181c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001820:	f7ff bf98 	b.w	8001754 <cleanup_glue>
 8001824:	6941      	ldr	r1, [r0, #20]
 8001826:	2900      	cmp	r1, #0
 8001828:	d1c8      	bne.n	80017bc <_reclaim_reent+0x4c>
 800182a:	e7cf      	b.n	80017cc <_reclaim_reent+0x5c>
 800182c:	4770      	bx	lr
 800182e:	bf00      	nop
 8001830:	20000000 	.word	0x20000000
	...

08001840 <strlen>:
 8001840:	f890 f000 	pld	[r0]
 8001844:	e96d 4502 	strd	r4, r5, [sp, #-8]!
 8001848:	f020 0107 	bic.w	r1, r0, #7
 800184c:	f06f 0c00 	mvn.w	ip, #0
 8001850:	f010 0407 	ands.w	r4, r0, #7
 8001854:	f891 f020 	pld	[r1, #32]
 8001858:	f040 8049 	bne.w	80018ee <strlen+0xae>
 800185c:	f04f 0400 	mov.w	r4, #0
 8001860:	f06f 0007 	mvn.w	r0, #7
 8001864:	e9d1 2300 	ldrd	r2, r3, [r1]
 8001868:	f891 f040 	pld	[r1, #64]	; 0x40
 800186c:	f100 0008 	add.w	r0, r0, #8
 8001870:	fa82 f24c 	uadd8	r2, r2, ip
 8001874:	faa4 f28c 	sel	r2, r4, ip
 8001878:	fa83 f34c 	uadd8	r3, r3, ip
 800187c:	faa2 f38c 	sel	r3, r2, ip
 8001880:	bb4b      	cbnz	r3, 80018d6 <strlen+0x96>
 8001882:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
 8001886:	fa82 f24c 	uadd8	r2, r2, ip
 800188a:	f100 0008 	add.w	r0, r0, #8
 800188e:	faa4 f28c 	sel	r2, r4, ip
 8001892:	fa83 f34c 	uadd8	r3, r3, ip
 8001896:	faa2 f38c 	sel	r3, r2, ip
 800189a:	b9e3      	cbnz	r3, 80018d6 <strlen+0x96>
 800189c:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
 80018a0:	fa82 f24c 	uadd8	r2, r2, ip
 80018a4:	f100 0008 	add.w	r0, r0, #8
 80018a8:	faa4 f28c 	sel	r2, r4, ip
 80018ac:	fa83 f34c 	uadd8	r3, r3, ip
 80018b0:	faa2 f38c 	sel	r3, r2, ip
 80018b4:	b97b      	cbnz	r3, 80018d6 <strlen+0x96>
 80018b6:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
 80018ba:	f101 0120 	add.w	r1, r1, #32
 80018be:	fa82 f24c 	uadd8	r2, r2, ip
 80018c2:	f100 0008 	add.w	r0, r0, #8
 80018c6:	faa4 f28c 	sel	r2, r4, ip
 80018ca:	fa83 f34c 	uadd8	r3, r3, ip
 80018ce:	faa2 f38c 	sel	r3, r2, ip
 80018d2:	2b00      	cmp	r3, #0
 80018d4:	d0c6      	beq.n	8001864 <strlen+0x24>
 80018d6:	2a00      	cmp	r2, #0
 80018d8:	bf04      	itt	eq
 80018da:	3004      	addeq	r0, #4
 80018dc:	461a      	moveq	r2, r3
 80018de:	ba12      	rev	r2, r2
 80018e0:	fab2 f282 	clz	r2, r2
 80018e4:	e8fd 4502 	ldrd	r4, r5, [sp], #8
 80018e8:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
 80018ec:	4770      	bx	lr
 80018ee:	e9d1 2300 	ldrd	r2, r3, [r1]
 80018f2:	f004 0503 	and.w	r5, r4, #3
 80018f6:	f1c4 0000 	rsb	r0, r4, #0
 80018fa:	ea4f 05c5 	mov.w	r5, r5, lsl #3
 80018fe:	f014 0f04 	tst.w	r4, #4
 8001902:	f891 f040 	pld	[r1, #64]	; 0x40
 8001906:	fa0c f505 	lsl.w	r5, ip, r5
 800190a:	ea62 0205 	orn	r2, r2, r5
 800190e:	bf1c      	itt	ne
 8001910:	ea63 0305 	ornne	r3, r3, r5
 8001914:	4662      	movne	r2, ip
 8001916:	f04f 0400 	mov.w	r4, #0
 800191a:	e7a9      	b.n	8001870 <strlen+0x30>
 800191c:	0000      	movs	r0, r0
	...

08001920 <quorem>:
 8001920:	6902      	ldr	r2, [r0, #16]
 8001922:	690b      	ldr	r3, [r1, #16]
 8001924:	4293      	cmp	r3, r2
 8001926:	f300 808d 	bgt.w	8001a44 <quorem+0x124>
 800192a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800192e:	f103 38ff 	add.w	r8, r3, #4294967295	; 0xffffffff
 8001932:	f101 0714 	add.w	r7, r1, #20
 8001936:	f100 0b14 	add.w	fp, r0, #20
 800193a:	f857 2028 	ldr.w	r2, [r7, r8, lsl #2]
 800193e:	f85b 3028 	ldr.w	r3, [fp, r8, lsl #2]
 8001942:	ea4f 0488 	mov.w	r4, r8, lsl #2
 8001946:	b083      	sub	sp, #12
 8001948:	3201      	adds	r2, #1
 800194a:	fbb3 f9f2 	udiv	r9, r3, r2
 800194e:	eb0b 0304 	add.w	r3, fp, r4
 8001952:	9400      	str	r4, [sp, #0]
 8001954:	eb07 0a04 	add.w	sl, r7, r4
 8001958:	9301      	str	r3, [sp, #4]
 800195a:	f1b9 0f00 	cmp.w	r9, #0
 800195e:	d039      	beq.n	80019d4 <quorem+0xb4>
 8001960:	2500      	movs	r5, #0
 8001962:	46bc      	mov	ip, r7
 8001964:	46de      	mov	lr, fp
 8001966:	462b      	mov	r3, r5
 8001968:	f85c 6b04 	ldr.w	r6, [ip], #4
 800196c:	f8de 2000 	ldr.w	r2, [lr]
 8001970:	b2b4      	uxth	r4, r6
 8001972:	fb09 5504 	mla	r5, r9, r4, r5
 8001976:	0c36      	lsrs	r6, r6, #16
 8001978:	0c2c      	lsrs	r4, r5, #16
 800197a:	fb09 4406 	mla	r4, r9, r6, r4
 800197e:	b2ad      	uxth	r5, r5
 8001980:	1b5b      	subs	r3, r3, r5
 8001982:	b2a6      	uxth	r6, r4
 8001984:	fa13 f382 	uxtah	r3, r3, r2
 8001988:	ebc6 4612 	rsb	r6, r6, r2, lsr #16
 800198c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8001990:	b29b      	uxth	r3, r3
 8001992:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8001996:	45e2      	cmp	sl, ip
 8001998:	f84e 3b04 	str.w	r3, [lr], #4
 800199c:	ea4f 4514 	mov.w	r5, r4, lsr #16
 80019a0:	ea4f 4326 	mov.w	r3, r6, asr #16
 80019a4:	d2e0      	bcs.n	8001968 <quorem+0x48>
 80019a6:	9b00      	ldr	r3, [sp, #0]
 80019a8:	f85b 3003 	ldr.w	r3, [fp, r3]
 80019ac:	b993      	cbnz	r3, 80019d4 <quorem+0xb4>
 80019ae:	9c01      	ldr	r4, [sp, #4]
 80019b0:	1f23      	subs	r3, r4, #4
 80019b2:	459b      	cmp	fp, r3
 80019b4:	d20c      	bcs.n	80019d0 <quorem+0xb0>
 80019b6:	f854 3c04 	ldr.w	r3, [r4, #-4]
 80019ba:	b94b      	cbnz	r3, 80019d0 <quorem+0xb0>
 80019bc:	f1a4 0308 	sub.w	r3, r4, #8
 80019c0:	e002      	b.n	80019c8 <quorem+0xa8>
 80019c2:	681a      	ldr	r2, [r3, #0]
 80019c4:	3b04      	subs	r3, #4
 80019c6:	b91a      	cbnz	r2, 80019d0 <quorem+0xb0>
 80019c8:	459b      	cmp	fp, r3
 80019ca:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 80019ce:	d3f8      	bcc.n	80019c2 <quorem+0xa2>
 80019d0:	f8c0 8010 	str.w	r8, [r0, #16]
 80019d4:	4604      	mov	r4, r0
 80019d6:	f001 fa8d 	bl	8002ef4 <__mcmp>
 80019da:	2800      	cmp	r0, #0
 80019dc:	db2e      	blt.n	8001a3c <quorem+0x11c>
 80019de:	f109 0901 	add.w	r9, r9, #1
 80019e2:	465d      	mov	r5, fp
 80019e4:	2300      	movs	r3, #0
 80019e6:	f857 1b04 	ldr.w	r1, [r7], #4
 80019ea:	6828      	ldr	r0, [r5, #0]
 80019ec:	b28a      	uxth	r2, r1
 80019ee:	1a9a      	subs	r2, r3, r2
 80019f0:	0c09      	lsrs	r1, r1, #16
 80019f2:	fa12 f280 	uxtah	r2, r2, r0
 80019f6:	ebc1 4310 	rsb	r3, r1, r0, lsr #16
 80019fa:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80019fe:	b291      	uxth	r1, r2
 8001a00:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8001a04:	45ba      	cmp	sl, r7
 8001a06:	f845 1b04 	str.w	r1, [r5], #4
 8001a0a:	ea4f 4323 	mov.w	r3, r3, asr #16
 8001a0e:	d2ea      	bcs.n	80019e6 <quorem+0xc6>
 8001a10:	f85b 2028 	ldr.w	r2, [fp, r8, lsl #2]
 8001a14:	eb0b 0388 	add.w	r3, fp, r8, lsl #2
 8001a18:	b982      	cbnz	r2, 8001a3c <quorem+0x11c>
 8001a1a:	1f1a      	subs	r2, r3, #4
 8001a1c:	4593      	cmp	fp, r2
 8001a1e:	d20b      	bcs.n	8001a38 <quorem+0x118>
 8001a20:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8001a24:	b942      	cbnz	r2, 8001a38 <quorem+0x118>
 8001a26:	3b08      	subs	r3, #8
 8001a28:	e002      	b.n	8001a30 <quorem+0x110>
 8001a2a:	681a      	ldr	r2, [r3, #0]
 8001a2c:	3b04      	subs	r3, #4
 8001a2e:	b91a      	cbnz	r2, 8001a38 <quorem+0x118>
 8001a30:	459b      	cmp	fp, r3
 8001a32:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8001a36:	d3f8      	bcc.n	8001a2a <quorem+0x10a>
 8001a38:	f8c4 8010 	str.w	r8, [r4, #16]
 8001a3c:	4648      	mov	r0, r9
 8001a3e:	b003      	add	sp, #12
 8001a40:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001a44:	2000      	movs	r0, #0
 8001a46:	4770      	bx	lr

08001a48 <_dtoa_r>:
 8001a48:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8001a4c:	ec57 6b10 	vmov	r6, r7, d0
 8001a50:	b09b      	sub	sp, #108	; 0x6c
 8001a52:	6a44      	ldr	r4, [r0, #36]	; 0x24
 8001a54:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8001a56:	9100      	str	r1, [sp, #0]
 8001a58:	4681      	mov	r9, r0
 8001a5a:	4690      	mov	r8, r2
 8001a5c:	9303      	str	r3, [sp, #12]
 8001a5e:	ee10 aa10 	vmov	sl, s0
 8001a62:	46bb      	mov	fp, r7
 8001a64:	2c00      	cmp	r4, #0
 8001a66:	f000 82db 	beq.w	8002020 <_dtoa_r+0x5d8>
 8001a6a:	6821      	ldr	r1, [r4, #0]
 8001a6c:	b151      	cbz	r1, 8001a84 <_dtoa_r+0x3c>
 8001a6e:	6862      	ldr	r2, [r4, #4]
 8001a70:	604a      	str	r2, [r1, #4]
 8001a72:	2301      	movs	r3, #1
 8001a74:	4093      	lsls	r3, r2
 8001a76:	608b      	str	r3, [r1, #8]
 8001a78:	f000 fff6 	bl	8002a68 <_Bfree>
 8001a7c:	f8d9 3024 	ldr.w	r3, [r9, #36]	; 0x24
 8001a80:	2200      	movs	r2, #0
 8001a82:	601a      	str	r2, [r3, #0]
 8001a84:	f1bb 0f00 	cmp.w	fp, #0
 8001a88:	465e      	mov	r6, fp
 8001a8a:	db34      	blt.n	8001af6 <_dtoa_r+0xae>
 8001a8c:	2300      	movs	r3, #0
 8001a8e:	602b      	str	r3, [r5, #0]
 8001a90:	4ba3      	ldr	r3, [pc, #652]	; (8001d20 <_dtoa_r+0x2d8>)
 8001a92:	461a      	mov	r2, r3
 8001a94:	4033      	ands	r3, r6
 8001a96:	4293      	cmp	r3, r2
 8001a98:	d016      	beq.n	8001ac8 <_dtoa_r+0x80>
 8001a9a:	2200      	movs	r2, #0
 8001a9c:	2300      	movs	r3, #0
 8001a9e:	4650      	mov	r0, sl
 8001aa0:	4659      	mov	r1, fp
 8001aa2:	f001 fe41 	bl	8003728 <__aeabi_dcmpeq>
 8001aa6:	4654      	mov	r4, sl
 8001aa8:	465d      	mov	r5, fp
 8001aaa:	4607      	mov	r7, r0
 8001aac:	b348      	cbz	r0, 8001b02 <_dtoa_r+0xba>
 8001aae:	9a03      	ldr	r2, [sp, #12]
 8001ab0:	2301      	movs	r3, #1
 8001ab2:	6013      	str	r3, [r2, #0]
 8001ab4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8001ab6:	2b00      	cmp	r3, #0
 8001ab8:	f000 80c0 	beq.w	8001c3c <_dtoa_r+0x1f4>
 8001abc:	4899      	ldr	r0, [pc, #612]	; (8001d24 <_dtoa_r+0x2dc>)
 8001abe:	6018      	str	r0, [r3, #0]
 8001ac0:	3801      	subs	r0, #1
 8001ac2:	b01b      	add	sp, #108	; 0x6c
 8001ac4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001ac8:	9a03      	ldr	r2, [sp, #12]
 8001aca:	f242 730f 	movw	r3, #9999	; 0x270f
 8001ace:	6013      	str	r3, [r2, #0]
 8001ad0:	f1ba 0f00 	cmp.w	sl, #0
 8001ad4:	f000 809d 	beq.w	8001c12 <_dtoa_r+0x1ca>
 8001ad8:	4893      	ldr	r0, [pc, #588]	; (8001d28 <_dtoa_r+0x2e0>)
 8001ada:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8001adc:	2b00      	cmp	r3, #0
 8001ade:	d0f0      	beq.n	8001ac2 <_dtoa_r+0x7a>
 8001ae0:	78c3      	ldrb	r3, [r0, #3]
 8001ae2:	2b00      	cmp	r3, #0
 8001ae4:	f000 80ac 	beq.w	8001c40 <_dtoa_r+0x1f8>
 8001ae8:	f100 0308 	add.w	r3, r0, #8
 8001aec:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8001aee:	6013      	str	r3, [r2, #0]
 8001af0:	b01b      	add	sp, #108	; 0x6c
 8001af2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001af6:	2301      	movs	r3, #1
 8001af8:	f02b 4600 	bic.w	r6, fp, #2147483648	; 0x80000000
 8001afc:	602b      	str	r3, [r5, #0]
 8001afe:	46b3      	mov	fp, r6
 8001b00:	e7c6      	b.n	8001a90 <_dtoa_r+0x48>
 8001b02:	aa18      	add	r2, sp, #96	; 0x60
 8001b04:	a919      	add	r1, sp, #100	; 0x64
 8001b06:	ec45 4b10 	vmov	d0, r4, r5
 8001b0a:	4648      	mov	r0, r9
 8001b0c:	f001 fb30 	bl	8003170 <__d2b>
 8001b10:	0d33      	lsrs	r3, r6, #20
 8001b12:	900a      	str	r0, [sp, #40]	; 0x28
 8001b14:	f040 8086 	bne.w	8001c24 <_dtoa_r+0x1dc>
 8001b18:	9c18      	ldr	r4, [sp, #96]	; 0x60
 8001b1a:	9d19      	ldr	r5, [sp, #100]	; 0x64
 8001b1c:	4425      	add	r5, r4
 8001b1e:	f205 4332 	addw	r3, r5, #1074	; 0x432
 8001b22:	2b20      	cmp	r3, #32
 8001b24:	f340 82a8 	ble.w	8002078 <_dtoa_r+0x630>
 8001b28:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8001b2c:	f205 4012 	addw	r0, r5, #1042	; 0x412
 8001b30:	409e      	lsls	r6, r3
 8001b32:	fa2a f000 	lsr.w	r0, sl, r0
 8001b36:	4330      	orrs	r0, r6
 8001b38:	f7fe fcd6 	bl	80004e8 <__aeabi_ui2d>
 8001b3c:	2301      	movs	r3, #1
 8001b3e:	3d01      	subs	r5, #1
 8001b40:	f1a1 71f8 	sub.w	r1, r1, #32505856	; 0x1f00000
 8001b44:	930f      	str	r3, [sp, #60]	; 0x3c
 8001b46:	2200      	movs	r2, #0
 8001b48:	4b78      	ldr	r3, [pc, #480]	; (8001d2c <_dtoa_r+0x2e4>)
 8001b4a:	f7fe fb8f 	bl	800026c <__aeabi_dsub>
 8001b4e:	a36e      	add	r3, pc, #440	; (adr r3, 8001d08 <_dtoa_r+0x2c0>)
 8001b50:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001b54:	f7fe fd3e 	bl	80005d4 <__aeabi_dmul>
 8001b58:	a36d      	add	r3, pc, #436	; (adr r3, 8001d10 <_dtoa_r+0x2c8>)
 8001b5a:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001b5e:	f7fe fb87 	bl	8000270 <__adddf3>
 8001b62:	4606      	mov	r6, r0
 8001b64:	4628      	mov	r0, r5
 8001b66:	460f      	mov	r7, r1
 8001b68:	f7fe fcce 	bl	8000508 <__aeabi_i2d>
 8001b6c:	a36a      	add	r3, pc, #424	; (adr r3, 8001d18 <_dtoa_r+0x2d0>)
 8001b6e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001b72:	f7fe fd2f 	bl	80005d4 <__aeabi_dmul>
 8001b76:	4602      	mov	r2, r0
 8001b78:	460b      	mov	r3, r1
 8001b7a:	4630      	mov	r0, r6
 8001b7c:	4639      	mov	r1, r7
 8001b7e:	f7fe fb77 	bl	8000270 <__adddf3>
 8001b82:	4606      	mov	r6, r0
 8001b84:	460f      	mov	r7, r1
 8001b86:	f7fe ff37 	bl	80009f8 <__aeabi_d2iz>
 8001b8a:	2200      	movs	r2, #0
 8001b8c:	9004      	str	r0, [sp, #16]
 8001b8e:	2300      	movs	r3, #0
 8001b90:	4630      	mov	r0, r6
 8001b92:	4639      	mov	r1, r7
 8001b94:	f001 fdd2 	bl	800373c <__aeabi_dcmplt>
 8001b98:	2800      	cmp	r0, #0
 8001b9a:	f040 8259 	bne.w	8002050 <_dtoa_r+0x608>
 8001b9e:	9e04      	ldr	r6, [sp, #16]
 8001ba0:	2e16      	cmp	r6, #22
 8001ba2:	f200 823a 	bhi.w	800201a <_dtoa_r+0x5d2>
 8001ba6:	4b62      	ldr	r3, [pc, #392]	; (8001d30 <_dtoa_r+0x2e8>)
 8001ba8:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8001bac:	e9d3 0100 	ldrd	r0, r1, [r3]
 8001bb0:	4652      	mov	r2, sl
 8001bb2:	465b      	mov	r3, fp
 8001bb4:	f001 fde0 	bl	8003778 <__aeabi_dcmpgt>
 8001bb8:	2800      	cmp	r0, #0
 8001bba:	f000 8265 	beq.w	8002088 <_dtoa_r+0x640>
 8001bbe:	1e73      	subs	r3, r6, #1
 8001bc0:	9304      	str	r3, [sp, #16]
 8001bc2:	2300      	movs	r3, #0
 8001bc4:	930d      	str	r3, [sp, #52]	; 0x34
 8001bc6:	1b65      	subs	r5, r4, r5
 8001bc8:	1e6b      	subs	r3, r5, #1
 8001bca:	9306      	str	r3, [sp, #24]
 8001bcc:	f100 823b 	bmi.w	8002046 <_dtoa_r+0x5fe>
 8001bd0:	2300      	movs	r3, #0
 8001bd2:	9307      	str	r3, [sp, #28]
 8001bd4:	9b04      	ldr	r3, [sp, #16]
 8001bd6:	2b00      	cmp	r3, #0
 8001bd8:	f2c0 822c 	blt.w	8002034 <_dtoa_r+0x5ec>
 8001bdc:	9a06      	ldr	r2, [sp, #24]
 8001bde:	930c      	str	r3, [sp, #48]	; 0x30
 8001be0:	4611      	mov	r1, r2
 8001be2:	4419      	add	r1, r3
 8001be4:	2300      	movs	r3, #0
 8001be6:	9106      	str	r1, [sp, #24]
 8001be8:	9305      	str	r3, [sp, #20]
 8001bea:	9b00      	ldr	r3, [sp, #0]
 8001bec:	2b09      	cmp	r3, #9
 8001bee:	d829      	bhi.n	8001c44 <_dtoa_r+0x1fc>
 8001bf0:	2b05      	cmp	r3, #5
 8001bf2:	f340 865a 	ble.w	80028aa <_dtoa_r+0xe62>
 8001bf6:	3b04      	subs	r3, #4
 8001bf8:	9300      	str	r3, [sp, #0]
 8001bfa:	2600      	movs	r6, #0
 8001bfc:	9b00      	ldr	r3, [sp, #0]
 8001bfe:	3b02      	subs	r3, #2
 8001c00:	2b03      	cmp	r3, #3
 8001c02:	f200 863c 	bhi.w	800287e <_dtoa_r+0xe36>
 8001c06:	e8df f013 	tbh	[pc, r3, lsl #1]
 8001c0a:	0347      	.short	0x0347
 8001c0c:	03540241 	.word	0x03540241
 8001c10:	0480      	.short	0x0480
 8001c12:	4b45      	ldr	r3, [pc, #276]	; (8001d28 <_dtoa_r+0x2e0>)
 8001c14:	4a47      	ldr	r2, [pc, #284]	; (8001d34 <_dtoa_r+0x2ec>)
 8001c16:	f3c6 0013 	ubfx	r0, r6, #0, #20
 8001c1a:	2800      	cmp	r0, #0
 8001c1c:	bf14      	ite	ne
 8001c1e:	4618      	movne	r0, r3
 8001c20:	4610      	moveq	r0, r2
 8001c22:	e75a      	b.n	8001ada <_dtoa_r+0x92>
 8001c24:	f3cb 0213 	ubfx	r2, fp, #0, #20
 8001c28:	f042 517f 	orr.w	r1, r2, #1069547520	; 0x3fc00000
 8001c2c:	4650      	mov	r0, sl
 8001c2e:	f2a3 35ff 	subw	r5, r3, #1023	; 0x3ff
 8001c32:	970f      	str	r7, [sp, #60]	; 0x3c
 8001c34:	f441 1140 	orr.w	r1, r1, #3145728	; 0x300000
 8001c38:	9c18      	ldr	r4, [sp, #96]	; 0x60
 8001c3a:	e784      	b.n	8001b46 <_dtoa_r+0xfe>
 8001c3c:	483e      	ldr	r0, [pc, #248]	; (8001d38 <_dtoa_r+0x2f0>)
 8001c3e:	e740      	b.n	8001ac2 <_dtoa_r+0x7a>
 8001c40:	1cc3      	adds	r3, r0, #3
 8001c42:	e753      	b.n	8001aec <_dtoa_r+0xa4>
 8001c44:	f8d9 5024 	ldr.w	r5, [r9, #36]	; 0x24
 8001c48:	2400      	movs	r4, #0
 8001c4a:	606c      	str	r4, [r5, #4]
 8001c4c:	4621      	mov	r1, r4
 8001c4e:	4648      	mov	r0, r9
 8001c50:	f000 fed6 	bl	8002a00 <_Balloc>
 8001c54:	f8d9 3024 	ldr.w	r3, [r9, #36]	; 0x24
 8001c58:	6028      	str	r0, [r5, #0]
 8001c5a:	681b      	ldr	r3, [r3, #0]
 8001c5c:	9309      	str	r3, [sp, #36]	; 0x24
 8001c5e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8001c62:	2301      	movs	r3, #1
 8001c64:	46a0      	mov	r8, r4
 8001c66:	9208      	str	r2, [sp, #32]
 8001c68:	9400      	str	r4, [sp, #0]
 8001c6a:	920e      	str	r2, [sp, #56]	; 0x38
 8001c6c:	930b      	str	r3, [sp, #44]	; 0x2c
 8001c6e:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8001c70:	2b00      	cmp	r3, #0
 8001c72:	f2c0 80cf 	blt.w	8001e14 <_dtoa_r+0x3cc>
 8001c76:	9a04      	ldr	r2, [sp, #16]
 8001c78:	2a0e      	cmp	r2, #14
 8001c7a:	f300 80cb 	bgt.w	8001e14 <_dtoa_r+0x3cc>
 8001c7e:	4b2c      	ldr	r3, [pc, #176]	; (8001d30 <_dtoa_r+0x2e8>)
 8001c80:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8001c84:	ed93 7b00 	vldr	d7, [r3]
 8001c88:	f1b8 0f00 	cmp.w	r8, #0
 8001c8c:	ed8d 7b00 	vstr	d7, [sp]
 8001c90:	f2c0 831a 	blt.w	80022c8 <_dtoa_r+0x880>
 8001c94:	4656      	mov	r6, sl
 8001c96:	465f      	mov	r7, fp
 8001c98:	e9dd ab00 	ldrd	sl, fp, [sp]
 8001c9c:	4630      	mov	r0, r6
 8001c9e:	4652      	mov	r2, sl
 8001ca0:	465b      	mov	r3, fp
 8001ca2:	4639      	mov	r1, r7
 8001ca4:	f7fe fdc0 	bl	8000828 <__aeabi_ddiv>
 8001ca8:	f7fe fea6 	bl	80009f8 <__aeabi_d2iz>
 8001cac:	4604      	mov	r4, r0
 8001cae:	f7fe fc2b 	bl	8000508 <__aeabi_i2d>
 8001cb2:	4652      	mov	r2, sl
 8001cb4:	465b      	mov	r3, fp
 8001cb6:	f7fe fc8d 	bl	80005d4 <__aeabi_dmul>
 8001cba:	460b      	mov	r3, r1
 8001cbc:	4602      	mov	r2, r0
 8001cbe:	4639      	mov	r1, r7
 8001cc0:	4630      	mov	r0, r6
 8001cc2:	f7fe fad3 	bl	800026c <__aeabi_dsub>
 8001cc6:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8001cc8:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8001ccc:	702b      	strb	r3, [r5, #0]
 8001cce:	9b08      	ldr	r3, [sp, #32]
 8001cd0:	2b01      	cmp	r3, #1
 8001cd2:	4606      	mov	r6, r0
 8001cd4:	460f      	mov	r7, r1
 8001cd6:	f105 0501 	add.w	r5, r5, #1
 8001cda:	d060      	beq.n	8001d9e <_dtoa_r+0x356>
 8001cdc:	2200      	movs	r2, #0
 8001cde:	4b17      	ldr	r3, [pc, #92]	; (8001d3c <_dtoa_r+0x2f4>)
 8001ce0:	f7fe fc78 	bl	80005d4 <__aeabi_dmul>
 8001ce4:	2200      	movs	r2, #0
 8001ce6:	2300      	movs	r3, #0
 8001ce8:	4606      	mov	r6, r0
 8001cea:	460f      	mov	r7, r1
 8001cec:	f001 fd1c 	bl	8003728 <__aeabi_dcmpeq>
 8001cf0:	2800      	cmp	r0, #0
 8001cf2:	d17c      	bne.n	8001dee <_dtoa_r+0x3a6>
 8001cf4:	f8cd 9014 	str.w	r9, [sp, #20]
 8001cf8:	f8dd a020 	ldr.w	sl, [sp, #32]
 8001cfc:	f8dd b024 	ldr.w	fp, [sp, #36]	; 0x24
 8001d00:	e9dd 8900 	ldrd	r8, r9, [sp]
 8001d04:	e027      	b.n	8001d56 <_dtoa_r+0x30e>
 8001d06:	bf00      	nop
 8001d08:	636f4361 	.word	0x636f4361
 8001d0c:	3fd287a7 	.word	0x3fd287a7
 8001d10:	8b60c8b3 	.word	0x8b60c8b3
 8001d14:	3fc68a28 	.word	0x3fc68a28
 8001d18:	509f79fb 	.word	0x509f79fb
 8001d1c:	3fd34413 	.word	0x3fd34413
 8001d20:	7ff00000 	.word	0x7ff00000
 8001d24:	0800ade1 	.word	0x0800ade1
 8001d28:	0800ae18 	.word	0x0800ae18
 8001d2c:	3ff80000 	.word	0x3ff80000
 8001d30:	0800a8d8 	.word	0x0800a8d8
 8001d34:	0800ae0c 	.word	0x0800ae0c
 8001d38:	0800ade0 	.word	0x0800ade0
 8001d3c:	40240000 	.word	0x40240000
 8001d40:	f7fe fc48 	bl	80005d4 <__aeabi_dmul>
 8001d44:	2200      	movs	r2, #0
 8001d46:	2300      	movs	r3, #0
 8001d48:	4606      	mov	r6, r0
 8001d4a:	460f      	mov	r7, r1
 8001d4c:	f001 fcec 	bl	8003728 <__aeabi_dcmpeq>
 8001d50:	2800      	cmp	r0, #0
 8001d52:	f040 83dd 	bne.w	8002510 <_dtoa_r+0xac8>
 8001d56:	4642      	mov	r2, r8
 8001d58:	464b      	mov	r3, r9
 8001d5a:	4630      	mov	r0, r6
 8001d5c:	4639      	mov	r1, r7
 8001d5e:	f7fe fd63 	bl	8000828 <__aeabi_ddiv>
 8001d62:	f7fe fe49 	bl	80009f8 <__aeabi_d2iz>
 8001d66:	4604      	mov	r4, r0
 8001d68:	f7fe fbce 	bl	8000508 <__aeabi_i2d>
 8001d6c:	4642      	mov	r2, r8
 8001d6e:	464b      	mov	r3, r9
 8001d70:	f7fe fc30 	bl	80005d4 <__aeabi_dmul>
 8001d74:	4602      	mov	r2, r0
 8001d76:	460b      	mov	r3, r1
 8001d78:	4630      	mov	r0, r6
 8001d7a:	4639      	mov	r1, r7
 8001d7c:	f7fe fa76 	bl	800026c <__aeabi_dsub>
 8001d80:	f104 0e30 	add.w	lr, r4, #48	; 0x30
 8001d84:	f805 eb01 	strb.w	lr, [r5], #1
 8001d88:	ebcb 0e05 	rsb	lr, fp, r5
 8001d8c:	45d6      	cmp	lr, sl
 8001d8e:	4606      	mov	r6, r0
 8001d90:	460f      	mov	r7, r1
 8001d92:	f04f 0200 	mov.w	r2, #0
 8001d96:	4bbb      	ldr	r3, [pc, #748]	; (8002084 <_dtoa_r+0x63c>)
 8001d98:	d1d2      	bne.n	8001d40 <_dtoa_r+0x2f8>
 8001d9a:	f8dd 9014 	ldr.w	r9, [sp, #20]
 8001d9e:	4632      	mov	r2, r6
 8001da0:	463b      	mov	r3, r7
 8001da2:	4630      	mov	r0, r6
 8001da4:	4639      	mov	r1, r7
 8001da6:	f7fe fa63 	bl	8000270 <__adddf3>
 8001daa:	4606      	mov	r6, r0
 8001dac:	460f      	mov	r7, r1
 8001dae:	4602      	mov	r2, r0
 8001db0:	460b      	mov	r3, r1
 8001db2:	e9dd 0100 	ldrd	r0, r1, [sp]
 8001db6:	f001 fcc1 	bl	800373c <__aeabi_dcmplt>
 8001dba:	b940      	cbnz	r0, 8001dce <_dtoa_r+0x386>
 8001dbc:	4632      	mov	r2, r6
 8001dbe:	463b      	mov	r3, r7
 8001dc0:	e9dd 0100 	ldrd	r0, r1, [sp]
 8001dc4:	f001 fcb0 	bl	8003728 <__aeabi_dcmpeq>
 8001dc8:	b188      	cbz	r0, 8001dee <_dtoa_r+0x3a6>
 8001dca:	07e3      	lsls	r3, r4, #31
 8001dcc:	d50f      	bpl.n	8001dee <_dtoa_r+0x3a6>
 8001dce:	f815 4c01 	ldrb.w	r4, [r5, #-1]
 8001dd2:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8001dd4:	1e6b      	subs	r3, r5, #1
 8001dd6:	e004      	b.n	8001de2 <_dtoa_r+0x39a>
 8001dd8:	429a      	cmp	r2, r3
 8001dda:	f000 843b 	beq.w	8002654 <_dtoa_r+0xc0c>
 8001dde:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8001de2:	2c39      	cmp	r4, #57	; 0x39
 8001de4:	f103 0501 	add.w	r5, r3, #1
 8001de8:	d0f6      	beq.n	8001dd8 <_dtoa_r+0x390>
 8001dea:	3401      	adds	r4, #1
 8001dec:	701c      	strb	r4, [r3, #0]
 8001dee:	990a      	ldr	r1, [sp, #40]	; 0x28
 8001df0:	4648      	mov	r0, r9
 8001df2:	f000 fe39 	bl	8002a68 <_Bfree>
 8001df6:	2200      	movs	r2, #0
 8001df8:	9b04      	ldr	r3, [sp, #16]
 8001dfa:	702a      	strb	r2, [r5, #0]
 8001dfc:	9a03      	ldr	r2, [sp, #12]
 8001dfe:	3301      	adds	r3, #1
 8001e00:	6013      	str	r3, [r2, #0]
 8001e02:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8001e04:	2b00      	cmp	r3, #0
 8001e06:	f000 83b0 	beq.w	800256a <_dtoa_r+0xb22>
 8001e0a:	9809      	ldr	r0, [sp, #36]	; 0x24
 8001e0c:	601d      	str	r5, [r3, #0]
 8001e0e:	b01b      	add	sp, #108	; 0x6c
 8001e10:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001e14:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8001e16:	2a00      	cmp	r2, #0
 8001e18:	f000 812a 	beq.w	8002070 <_dtoa_r+0x628>
 8001e1c:	9a00      	ldr	r2, [sp, #0]
 8001e1e:	2a01      	cmp	r2, #1
 8001e20:	f340 8274 	ble.w	800230c <_dtoa_r+0x8c4>
 8001e24:	9b08      	ldr	r3, [sp, #32]
 8001e26:	9a05      	ldr	r2, [sp, #20]
 8001e28:	1e5f      	subs	r7, r3, #1
 8001e2a:	42ba      	cmp	r2, r7
 8001e2c:	f2c0 83a0 	blt.w	8002570 <_dtoa_r+0xb28>
 8001e30:	1bd7      	subs	r7, r2, r7
 8001e32:	9b08      	ldr	r3, [sp, #32]
 8001e34:	2b00      	cmp	r3, #0
 8001e36:	f2c0 8497 	blt.w	8002768 <_dtoa_r+0xd20>
 8001e3a:	9d07      	ldr	r5, [sp, #28]
 8001e3c:	9b08      	ldr	r3, [sp, #32]
 8001e3e:	9a07      	ldr	r2, [sp, #28]
 8001e40:	441a      	add	r2, r3
 8001e42:	9207      	str	r2, [sp, #28]
 8001e44:	9a06      	ldr	r2, [sp, #24]
 8001e46:	2101      	movs	r1, #1
 8001e48:	441a      	add	r2, r3
 8001e4a:	4648      	mov	r0, r9
 8001e4c:	9206      	str	r2, [sp, #24]
 8001e4e:	f000 feff 	bl	8002c50 <__i2b>
 8001e52:	4606      	mov	r6, r0
 8001e54:	b165      	cbz	r5, 8001e70 <_dtoa_r+0x428>
 8001e56:	9906      	ldr	r1, [sp, #24]
 8001e58:	2900      	cmp	r1, #0
 8001e5a:	460b      	mov	r3, r1
 8001e5c:	dd08      	ble.n	8001e70 <_dtoa_r+0x428>
 8001e5e:	42a9      	cmp	r1, r5
 8001e60:	9a07      	ldr	r2, [sp, #28]
 8001e62:	bfa8      	it	ge
 8001e64:	462b      	movge	r3, r5
 8001e66:	1ad2      	subs	r2, r2, r3
 8001e68:	1aed      	subs	r5, r5, r3
 8001e6a:	1acb      	subs	r3, r1, r3
 8001e6c:	9207      	str	r2, [sp, #28]
 8001e6e:	9306      	str	r3, [sp, #24]
 8001e70:	9b05      	ldr	r3, [sp, #20]
 8001e72:	2b00      	cmp	r3, #0
 8001e74:	f340 8322 	ble.w	80024bc <_dtoa_r+0xa74>
 8001e78:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8001e7a:	2a00      	cmp	r2, #0
 8001e7c:	f000 821d 	beq.w	80022ba <_dtoa_r+0x872>
 8001e80:	2f00      	cmp	r7, #0
 8001e82:	f000 821a 	beq.w	80022ba <_dtoa_r+0x872>
 8001e86:	4631      	mov	r1, r6
 8001e88:	463a      	mov	r2, r7
 8001e8a:	4648      	mov	r0, r9
 8001e8c:	f000 ff82 	bl	8002d94 <__pow5mult>
 8001e90:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8001e92:	4601      	mov	r1, r0
 8001e94:	4606      	mov	r6, r0
 8001e96:	4648      	mov	r0, r9
 8001e98:	f000 fee4 	bl	8002c64 <__multiply>
 8001e9c:	990a      	ldr	r1, [sp, #40]	; 0x28
 8001e9e:	4604      	mov	r4, r0
 8001ea0:	4648      	mov	r0, r9
 8001ea2:	f000 fde1 	bl	8002a68 <_Bfree>
 8001ea6:	9b05      	ldr	r3, [sp, #20]
 8001ea8:	1bdb      	subs	r3, r3, r7
 8001eaa:	9305      	str	r3, [sp, #20]
 8001eac:	f040 8204 	bne.w	80022b8 <_dtoa_r+0x870>
 8001eb0:	2101      	movs	r1, #1
 8001eb2:	4648      	mov	r0, r9
 8001eb4:	f000 fecc 	bl	8002c50 <__i2b>
 8001eb8:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8001eba:	9005      	str	r0, [sp, #20]
 8001ebc:	2b00      	cmp	r3, #0
 8001ebe:	f000 8237 	beq.w	8002330 <_dtoa_r+0x8e8>
 8001ec2:	4601      	mov	r1, r0
 8001ec4:	461a      	mov	r2, r3
 8001ec6:	4648      	mov	r0, r9
 8001ec8:	f000 ff64 	bl	8002d94 <__pow5mult>
 8001ecc:	9b00      	ldr	r3, [sp, #0]
 8001ece:	9005      	str	r0, [sp, #20]
 8001ed0:	2b01      	cmp	r3, #1
 8001ed2:	f300 82cd 	bgt.w	8002470 <_dtoa_r+0xa28>
 8001ed6:	f1ba 0f00 	cmp.w	sl, #0
 8001eda:	f040 82c9 	bne.w	8002470 <_dtoa_r+0xa28>
 8001ede:	f3cb 0313 	ubfx	r3, fp, #0, #20
 8001ee2:	2b00      	cmp	r3, #0
 8001ee4:	f040 844d 	bne.w	8002782 <_dtoa_r+0xd3a>
 8001ee8:	f02b 4700 	bic.w	r7, fp, #2147483648	; 0x80000000
 8001eec:	0d3f      	lsrs	r7, r7, #20
 8001eee:	053f      	lsls	r7, r7, #20
 8001ef0:	b137      	cbz	r7, 8001f00 <_dtoa_r+0x4b8>
 8001ef2:	9b07      	ldr	r3, [sp, #28]
 8001ef4:	3301      	adds	r3, #1
 8001ef6:	9307      	str	r3, [sp, #28]
 8001ef8:	9b06      	ldr	r3, [sp, #24]
 8001efa:	3301      	adds	r3, #1
 8001efc:	9306      	str	r3, [sp, #24]
 8001efe:	2701      	movs	r7, #1
 8001f00:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8001f02:	2001      	movs	r0, #1
 8001f04:	2b00      	cmp	r3, #0
 8001f06:	f040 82b4 	bne.w	8002472 <_dtoa_r+0xa2a>
 8001f0a:	9a06      	ldr	r2, [sp, #24]
 8001f0c:	4410      	add	r0, r2
 8001f0e:	f010 001f 	ands.w	r0, r0, #31
 8001f12:	f000 8204 	beq.w	800231e <_dtoa_r+0x8d6>
 8001f16:	f1c0 0320 	rsb	r3, r0, #32
 8001f1a:	2b04      	cmp	r3, #4
 8001f1c:	f340 84c8 	ble.w	80028b0 <_dtoa_r+0xe68>
 8001f20:	9b07      	ldr	r3, [sp, #28]
 8001f22:	f1c0 001c 	rsb	r0, r0, #28
 8001f26:	4403      	add	r3, r0
 8001f28:	9307      	str	r3, [sp, #28]
 8001f2a:	4613      	mov	r3, r2
 8001f2c:	4403      	add	r3, r0
 8001f2e:	4405      	add	r5, r0
 8001f30:	9306      	str	r3, [sp, #24]
 8001f32:	9b07      	ldr	r3, [sp, #28]
 8001f34:	2b00      	cmp	r3, #0
 8001f36:	dd05      	ble.n	8001f44 <_dtoa_r+0x4fc>
 8001f38:	4621      	mov	r1, r4
 8001f3a:	461a      	mov	r2, r3
 8001f3c:	4648      	mov	r0, r9
 8001f3e:	f000 ff85 	bl	8002e4c <__lshift>
 8001f42:	4604      	mov	r4, r0
 8001f44:	9b06      	ldr	r3, [sp, #24]
 8001f46:	2b00      	cmp	r3, #0
 8001f48:	dd05      	ble.n	8001f56 <_dtoa_r+0x50e>
 8001f4a:	461a      	mov	r2, r3
 8001f4c:	9905      	ldr	r1, [sp, #20]
 8001f4e:	4648      	mov	r0, r9
 8001f50:	f000 ff7c 	bl	8002e4c <__lshift>
 8001f54:	9005      	str	r0, [sp, #20]
 8001f56:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8001f58:	2b00      	cmp	r3, #0
 8001f5a:	f040 8294 	bne.w	8002486 <_dtoa_r+0xa3e>
 8001f5e:	9b08      	ldr	r3, [sp, #32]
 8001f60:	2b00      	cmp	r3, #0
 8001f62:	f340 82ad 	ble.w	80024c0 <_dtoa_r+0xa78>
 8001f66:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8001f68:	2b00      	cmp	r3, #0
 8001f6a:	f040 8203 	bne.w	8002374 <_dtoa_r+0x92c>
 8001f6e:	f8dd b024 	ldr.w	fp, [sp, #36]	; 0x24
 8001f72:	9f08      	ldr	r7, [sp, #32]
 8001f74:	f8dd 8014 	ldr.w	r8, [sp, #20]
 8001f78:	465d      	mov	r5, fp
 8001f7a:	e002      	b.n	8001f82 <_dtoa_r+0x53a>
 8001f7c:	f000 fd90 	bl	8002aa0 <__multadd>
 8001f80:	4604      	mov	r4, r0
 8001f82:	4641      	mov	r1, r8
 8001f84:	4620      	mov	r0, r4
 8001f86:	f7ff fccb 	bl	8001920 <quorem>
 8001f8a:	f100 0a30 	add.w	sl, r0, #48	; 0x30
 8001f8e:	f805 ab01 	strb.w	sl, [r5], #1
 8001f92:	ebcb 0305 	rsb	r3, fp, r5
 8001f96:	42bb      	cmp	r3, r7
 8001f98:	f04f 020a 	mov.w	r2, #10
 8001f9c:	f04f 0300 	mov.w	r3, #0
 8001fa0:	4621      	mov	r1, r4
 8001fa2:	4648      	mov	r0, r9
 8001fa4:	dbea      	blt.n	8001f7c <_dtoa_r+0x534>
 8001fa6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8001fa8:	9a08      	ldr	r2, [sp, #32]
 8001faa:	2a01      	cmp	r2, #1
 8001fac:	bfac      	ite	ge
 8001fae:	189b      	addge	r3, r3, r2
 8001fb0:	3301      	addlt	r3, #1
 8001fb2:	461d      	mov	r5, r3
 8001fb4:	f04f 0b00 	mov.w	fp, #0
 8001fb8:	4621      	mov	r1, r4
 8001fba:	2201      	movs	r2, #1
 8001fbc:	4648      	mov	r0, r9
 8001fbe:	f000 ff45 	bl	8002e4c <__lshift>
 8001fc2:	9905      	ldr	r1, [sp, #20]
 8001fc4:	900a      	str	r0, [sp, #40]	; 0x28
 8001fc6:	f000 ff95 	bl	8002ef4 <__mcmp>
 8001fca:	2800      	cmp	r0, #0
 8001fcc:	f340 8306 	ble.w	80025dc <_dtoa_r+0xb94>
 8001fd0:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8001fd4:	9909      	ldr	r1, [sp, #36]	; 0x24
 8001fd6:	1e6b      	subs	r3, r5, #1
 8001fd8:	e004      	b.n	8001fe4 <_dtoa_r+0x59c>
 8001fda:	428b      	cmp	r3, r1
 8001fdc:	f000 828e 	beq.w	80024fc <_dtoa_r+0xab4>
 8001fe0:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
 8001fe4:	2a39      	cmp	r2, #57	; 0x39
 8001fe6:	f103 0501 	add.w	r5, r3, #1
 8001fea:	d0f6      	beq.n	8001fda <_dtoa_r+0x592>
 8001fec:	3201      	adds	r2, #1
 8001fee:	701a      	strb	r2, [r3, #0]
 8001ff0:	9905      	ldr	r1, [sp, #20]
 8001ff2:	4648      	mov	r0, r9
 8001ff4:	f000 fd38 	bl	8002a68 <_Bfree>
 8001ff8:	2e00      	cmp	r6, #0
 8001ffa:	f43f aef8 	beq.w	8001dee <_dtoa_r+0x3a6>
 8001ffe:	f1bb 0f00 	cmp.w	fp, #0
 8002002:	d005      	beq.n	8002010 <_dtoa_r+0x5c8>
 8002004:	45b3      	cmp	fp, r6
 8002006:	d003      	beq.n	8002010 <_dtoa_r+0x5c8>
 8002008:	4659      	mov	r1, fp
 800200a:	4648      	mov	r0, r9
 800200c:	f000 fd2c 	bl	8002a68 <_Bfree>
 8002010:	4631      	mov	r1, r6
 8002012:	4648      	mov	r0, r9
 8002014:	f000 fd28 	bl	8002a68 <_Bfree>
 8002018:	e6e9      	b.n	8001dee <_dtoa_r+0x3a6>
 800201a:	2301      	movs	r3, #1
 800201c:	930d      	str	r3, [sp, #52]	; 0x34
 800201e:	e5d2      	b.n	8001bc6 <_dtoa_r+0x17e>
 8002020:	2010      	movs	r0, #16
 8002022:	f000 fc8d 	bl	8002940 <malloc>
 8002026:	f8c9 0024 	str.w	r0, [r9, #36]	; 0x24
 800202a:	6044      	str	r4, [r0, #4]
 800202c:	6084      	str	r4, [r0, #8]
 800202e:	6004      	str	r4, [r0, #0]
 8002030:	60c4      	str	r4, [r0, #12]
 8002032:	e527      	b.n	8001a84 <_dtoa_r+0x3c>
 8002034:	9a07      	ldr	r2, [sp, #28]
 8002036:	9b04      	ldr	r3, [sp, #16]
 8002038:	1ad2      	subs	r2, r2, r3
 800203a:	425b      	negs	r3, r3
 800203c:	9305      	str	r3, [sp, #20]
 800203e:	2300      	movs	r3, #0
 8002040:	9207      	str	r2, [sp, #28]
 8002042:	930c      	str	r3, [sp, #48]	; 0x30
 8002044:	e5d1      	b.n	8001bea <_dtoa_r+0x1a2>
 8002046:	425b      	negs	r3, r3
 8002048:	9307      	str	r3, [sp, #28]
 800204a:	2300      	movs	r3, #0
 800204c:	9306      	str	r3, [sp, #24]
 800204e:	e5c1      	b.n	8001bd4 <_dtoa_r+0x18c>
 8002050:	9804      	ldr	r0, [sp, #16]
 8002052:	f7fe fa59 	bl	8000508 <__aeabi_i2d>
 8002056:	4602      	mov	r2, r0
 8002058:	460b      	mov	r3, r1
 800205a:	4630      	mov	r0, r6
 800205c:	4639      	mov	r1, r7
 800205e:	f001 fb63 	bl	8003728 <__aeabi_dcmpeq>
 8002062:	2800      	cmp	r0, #0
 8002064:	f47f ad9b 	bne.w	8001b9e <_dtoa_r+0x156>
 8002068:	9b04      	ldr	r3, [sp, #16]
 800206a:	3b01      	subs	r3, #1
 800206c:	9304      	str	r3, [sp, #16]
 800206e:	e596      	b.n	8001b9e <_dtoa_r+0x156>
 8002070:	9f05      	ldr	r7, [sp, #20]
 8002072:	9d07      	ldr	r5, [sp, #28]
 8002074:	9e0b      	ldr	r6, [sp, #44]	; 0x2c
 8002076:	e6ed      	b.n	8001e54 <_dtoa_r+0x40c>
 8002078:	f1c3 0620 	rsb	r6, r3, #32
 800207c:	fa0a f006 	lsl.w	r0, sl, r6
 8002080:	e55a      	b.n	8001b38 <_dtoa_r+0xf0>
 8002082:	bf00      	nop
 8002084:	40240000 	.word	0x40240000
 8002088:	900d      	str	r0, [sp, #52]	; 0x34
 800208a:	e59c      	b.n	8001bc6 <_dtoa_r+0x17e>
 800208c:	2300      	movs	r3, #0
 800208e:	930b      	str	r3, [sp, #44]	; 0x2c
 8002090:	9b04      	ldr	r3, [sp, #16]
 8002092:	4443      	add	r3, r8
 8002094:	930e      	str	r3, [sp, #56]	; 0x38
 8002096:	3301      	adds	r3, #1
 8002098:	2b00      	cmp	r3, #0
 800209a:	9308      	str	r3, [sp, #32]
 800209c:	f340 8277 	ble.w	800258e <_dtoa_r+0xb46>
 80020a0:	9d08      	ldr	r5, [sp, #32]
 80020a2:	462a      	mov	r2, r5
 80020a4:	f8d9 4024 	ldr.w	r4, [r9, #36]	; 0x24
 80020a8:	2100      	movs	r1, #0
 80020aa:	2a17      	cmp	r2, #23
 80020ac:	6061      	str	r1, [r4, #4]
 80020ae:	d908      	bls.n	80020c2 <_dtoa_r+0x67a>
 80020b0:	2304      	movs	r3, #4
 80020b2:	005b      	lsls	r3, r3, #1
 80020b4:	f103 0014 	add.w	r0, r3, #20
 80020b8:	4290      	cmp	r0, r2
 80020ba:	f101 0101 	add.w	r1, r1, #1
 80020be:	d9f8      	bls.n	80020b2 <_dtoa_r+0x66a>
 80020c0:	6061      	str	r1, [r4, #4]
 80020c2:	4648      	mov	r0, r9
 80020c4:	f000 fc9c 	bl	8002a00 <_Balloc>
 80020c8:	f8d9 3024 	ldr.w	r3, [r9, #36]	; 0x24
 80020cc:	6020      	str	r0, [r4, #0]
 80020ce:	681b      	ldr	r3, [r3, #0]
 80020d0:	9309      	str	r3, [sp, #36]	; 0x24
 80020d2:	2d0e      	cmp	r5, #14
 80020d4:	f63f adcb 	bhi.w	8001c6e <_dtoa_r+0x226>
 80020d8:	2e00      	cmp	r6, #0
 80020da:	f43f adc8 	beq.w	8001c6e <_dtoa_r+0x226>
 80020de:	9904      	ldr	r1, [sp, #16]
 80020e0:	2900      	cmp	r1, #0
 80020e2:	e9cd ab10 	strd	sl, fp, [sp, #64]	; 0x40
 80020e6:	f340 828c 	ble.w	8002602 <_dtoa_r+0xbba>
 80020ea:	4b95      	ldr	r3, [pc, #596]	; (8002340 <_dtoa_r+0x8f8>)
 80020ec:	f001 020f 	and.w	r2, r1, #15
 80020f0:	110e      	asrs	r6, r1, #4
 80020f2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80020f6:	06f0      	lsls	r0, r6, #27
 80020f8:	e9d3 4500 	ldrd	r4, r5, [r3]
 80020fc:	f140 8240 	bpl.w	8002580 <_dtoa_r+0xb38>
 8002100:	4b90      	ldr	r3, [pc, #576]	; (8002344 <_dtoa_r+0x8fc>)
 8002102:	4650      	mov	r0, sl
 8002104:	4659      	mov	r1, fp
 8002106:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 800210a:	f7fe fb8d 	bl	8000828 <__aeabi_ddiv>
 800210e:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8002112:	f006 060f 	and.w	r6, r6, #15
 8002116:	f04f 0a03 	mov.w	sl, #3
 800211a:	b186      	cbz	r6, 800213e <_dtoa_r+0x6f6>
 800211c:	4f89      	ldr	r7, [pc, #548]	; (8002344 <_dtoa_r+0x8fc>)
 800211e:	07f1      	lsls	r1, r6, #31
 8002120:	d509      	bpl.n	8002136 <_dtoa_r+0x6ee>
 8002122:	4620      	mov	r0, r4
 8002124:	4629      	mov	r1, r5
 8002126:	e9d7 2300 	ldrd	r2, r3, [r7]
 800212a:	f7fe fa53 	bl	80005d4 <__aeabi_dmul>
 800212e:	f10a 0a01 	add.w	sl, sl, #1
 8002132:	4604      	mov	r4, r0
 8002134:	460d      	mov	r5, r1
 8002136:	1076      	asrs	r6, r6, #1
 8002138:	f107 0708 	add.w	r7, r7, #8
 800213c:	d1ef      	bne.n	800211e <_dtoa_r+0x6d6>
 800213e:	4622      	mov	r2, r4
 8002140:	462b      	mov	r3, r5
 8002142:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002146:	f7fe fb6f 	bl	8000828 <__aeabi_ddiv>
 800214a:	4606      	mov	r6, r0
 800214c:	460f      	mov	r7, r1
 800214e:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8002150:	b143      	cbz	r3, 8002164 <_dtoa_r+0x71c>
 8002152:	2200      	movs	r2, #0
 8002154:	4b7c      	ldr	r3, [pc, #496]	; (8002348 <_dtoa_r+0x900>)
 8002156:	4630      	mov	r0, r6
 8002158:	4639      	mov	r1, r7
 800215a:	f001 faef 	bl	800373c <__aeabi_dcmplt>
 800215e:	2800      	cmp	r0, #0
 8002160:	f040 8319 	bne.w	8002796 <_dtoa_r+0xd4e>
 8002164:	4650      	mov	r0, sl
 8002166:	f7fe f9cf 	bl	8000508 <__aeabi_i2d>
 800216a:	4632      	mov	r2, r6
 800216c:	463b      	mov	r3, r7
 800216e:	f7fe fa31 	bl	80005d4 <__aeabi_dmul>
 8002172:	4b76      	ldr	r3, [pc, #472]	; (800234c <_dtoa_r+0x904>)
 8002174:	2200      	movs	r2, #0
 8002176:	f7fe f87b 	bl	8000270 <__adddf3>
 800217a:	9b08      	ldr	r3, [sp, #32]
 800217c:	4604      	mov	r4, r0
 800217e:	f1a1 7550 	sub.w	r5, r1, #54525952	; 0x3400000
 8002182:	2b00      	cmp	r3, #0
 8002184:	f000 81d5 	beq.w	8002532 <_dtoa_r+0xaea>
 8002188:	9b04      	ldr	r3, [sp, #16]
 800218a:	9316      	str	r3, [sp, #88]	; 0x58
 800218c:	9b08      	ldr	r3, [sp, #32]
 800218e:	9312      	str	r3, [sp, #72]	; 0x48
 8002190:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002192:	2b00      	cmp	r3, #0
 8002194:	f000 8290 	beq.w	80026b8 <_dtoa_r+0xc70>
 8002198:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800219a:	4b69      	ldr	r3, [pc, #420]	; (8002340 <_dtoa_r+0x8f8>)
 800219c:	496c      	ldr	r1, [pc, #432]	; (8002350 <_dtoa_r+0x908>)
 800219e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80021a2:	e953 2302 	ldrd	r2, r3, [r3, #-8]
 80021a6:	2000      	movs	r0, #0
 80021a8:	f7fe fb3e 	bl	8000828 <__aeabi_ddiv>
 80021ac:	4622      	mov	r2, r4
 80021ae:	462b      	mov	r3, r5
 80021b0:	f7fe f85c 	bl	800026c <__aeabi_dsub>
 80021b4:	4682      	mov	sl, r0
 80021b6:	468b      	mov	fp, r1
 80021b8:	4630      	mov	r0, r6
 80021ba:	4639      	mov	r1, r7
 80021bc:	f7fe fc1c 	bl	80009f8 <__aeabi_d2iz>
 80021c0:	4604      	mov	r4, r0
 80021c2:	f7fe f9a1 	bl	8000508 <__aeabi_i2d>
 80021c6:	4602      	mov	r2, r0
 80021c8:	460b      	mov	r3, r1
 80021ca:	4630      	mov	r0, r6
 80021cc:	4639      	mov	r1, r7
 80021ce:	f7fe f84d 	bl	800026c <__aeabi_dsub>
 80021d2:	3430      	adds	r4, #48	; 0x30
 80021d4:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80021d6:	b2e4      	uxtb	r4, r4
 80021d8:	4606      	mov	r6, r0
 80021da:	460f      	mov	r7, r1
 80021dc:	702c      	strb	r4, [r5, #0]
 80021de:	4602      	mov	r2, r0
 80021e0:	460b      	mov	r3, r1
 80021e2:	4650      	mov	r0, sl
 80021e4:	4659      	mov	r1, fp
 80021e6:	3501      	adds	r5, #1
 80021e8:	f001 fac6 	bl	8003778 <__aeabi_dcmpgt>
 80021ec:	2800      	cmp	r0, #0
 80021ee:	d150      	bne.n	8002292 <_dtoa_r+0x84a>
 80021f0:	4632      	mov	r2, r6
 80021f2:	463b      	mov	r3, r7
 80021f4:	2000      	movs	r0, #0
 80021f6:	4954      	ldr	r1, [pc, #336]	; (8002348 <_dtoa_r+0x900>)
 80021f8:	f7fe f838 	bl	800026c <__aeabi_dsub>
 80021fc:	4602      	mov	r2, r0
 80021fe:	460b      	mov	r3, r1
 8002200:	4650      	mov	r0, sl
 8002202:	4659      	mov	r1, fp
 8002204:	f001 fab8 	bl	8003778 <__aeabi_dcmpgt>
 8002208:	2800      	cmp	r0, #0
 800220a:	f040 8305 	bne.w	8002818 <_dtoa_r+0xdd0>
 800220e:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8002210:	2a01      	cmp	r2, #1
 8002212:	f340 81f2 	ble.w	80025fa <_dtoa_r+0xbb2>
 8002216:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8002218:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800221a:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 800221e:	4413      	add	r3, r2
 8002220:	4698      	mov	r8, r3
 8002222:	e00d      	b.n	8002240 <_dtoa_r+0x7f8>
 8002224:	2000      	movs	r0, #0
 8002226:	4948      	ldr	r1, [pc, #288]	; (8002348 <_dtoa_r+0x900>)
 8002228:	f7fe f820 	bl	800026c <__aeabi_dsub>
 800222c:	4652      	mov	r2, sl
 800222e:	465b      	mov	r3, fp
 8002230:	f001 fa84 	bl	800373c <__aeabi_dcmplt>
 8002234:	2800      	cmp	r0, #0
 8002236:	f040 82ef 	bne.w	8002818 <_dtoa_r+0xdd0>
 800223a:	4545      	cmp	r5, r8
 800223c:	f000 81db 	beq.w	80025f6 <_dtoa_r+0xbae>
 8002240:	4650      	mov	r0, sl
 8002242:	4659      	mov	r1, fp
 8002244:	2200      	movs	r2, #0
 8002246:	4b43      	ldr	r3, [pc, #268]	; (8002354 <_dtoa_r+0x90c>)
 8002248:	f7fe f9c4 	bl	80005d4 <__aeabi_dmul>
 800224c:	2200      	movs	r2, #0
 800224e:	4b41      	ldr	r3, [pc, #260]	; (8002354 <_dtoa_r+0x90c>)
 8002250:	4682      	mov	sl, r0
 8002252:	468b      	mov	fp, r1
 8002254:	4630      	mov	r0, r6
 8002256:	4639      	mov	r1, r7
 8002258:	f7fe f9bc 	bl	80005d4 <__aeabi_dmul>
 800225c:	460f      	mov	r7, r1
 800225e:	4606      	mov	r6, r0
 8002260:	f7fe fbca 	bl	80009f8 <__aeabi_d2iz>
 8002264:	4604      	mov	r4, r0
 8002266:	f7fe f94f 	bl	8000508 <__aeabi_i2d>
 800226a:	4602      	mov	r2, r0
 800226c:	460b      	mov	r3, r1
 800226e:	4630      	mov	r0, r6
 8002270:	4639      	mov	r1, r7
 8002272:	f7fd fffb 	bl	800026c <__aeabi_dsub>
 8002276:	3430      	adds	r4, #48	; 0x30
 8002278:	b2e4      	uxtb	r4, r4
 800227a:	4652      	mov	r2, sl
 800227c:	465b      	mov	r3, fp
 800227e:	f805 4b01 	strb.w	r4, [r5], #1
 8002282:	4606      	mov	r6, r0
 8002284:	460f      	mov	r7, r1
 8002286:	f001 fa59 	bl	800373c <__aeabi_dcmplt>
 800228a:	4632      	mov	r2, r6
 800228c:	463b      	mov	r3, r7
 800228e:	2800      	cmp	r0, #0
 8002290:	d0c8      	beq.n	8002224 <_dtoa_r+0x7dc>
 8002292:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8002294:	9304      	str	r3, [sp, #16]
 8002296:	e5aa      	b.n	8001dee <_dtoa_r+0x3a6>
 8002298:	2300      	movs	r3, #0
 800229a:	930b      	str	r3, [sp, #44]	; 0x2c
 800229c:	f1b8 0f00 	cmp.w	r8, #0
 80022a0:	f340 817b 	ble.w	800259a <_dtoa_r+0xb52>
 80022a4:	4642      	mov	r2, r8
 80022a6:	4645      	mov	r5, r8
 80022a8:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 80022ac:	f8cd 8020 	str.w	r8, [sp, #32]
 80022b0:	e6f8      	b.n	80020a4 <_dtoa_r+0x65c>
 80022b2:	2301      	movs	r3, #1
 80022b4:	930b      	str	r3, [sp, #44]	; 0x2c
 80022b6:	e7f1      	b.n	800229c <_dtoa_r+0x854>
 80022b8:	940a      	str	r4, [sp, #40]	; 0x28
 80022ba:	9a05      	ldr	r2, [sp, #20]
 80022bc:	990a      	ldr	r1, [sp, #40]	; 0x28
 80022be:	4648      	mov	r0, r9
 80022c0:	f000 fd68 	bl	8002d94 <__pow5mult>
 80022c4:	4604      	mov	r4, r0
 80022c6:	e5f3      	b.n	8001eb0 <_dtoa_r+0x468>
 80022c8:	9b08      	ldr	r3, [sp, #32]
 80022ca:	2b00      	cmp	r3, #0
 80022cc:	f73f ace2 	bgt.w	8001c94 <_dtoa_r+0x24c>
 80022d0:	f040 8147 	bne.w	8002562 <_dtoa_r+0xb1a>
 80022d4:	2200      	movs	r2, #0
 80022d6:	4b20      	ldr	r3, [pc, #128]	; (8002358 <_dtoa_r+0x910>)
 80022d8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80022dc:	f7fe f97a 	bl	80005d4 <__aeabi_dmul>
 80022e0:	465b      	mov	r3, fp
 80022e2:	4652      	mov	r2, sl
 80022e4:	f001 fa3e 	bl	8003764 <__aeabi_dcmpge>
 80022e8:	9b08      	ldr	r3, [sp, #32]
 80022ea:	9305      	str	r3, [sp, #20]
 80022ec:	461e      	mov	r6, r3
 80022ee:	2800      	cmp	r0, #0
 80022f0:	f000 80fc 	beq.w	80024ec <_dtoa_r+0xaa4>
 80022f4:	ea6f 0308 	mvn.w	r3, r8
 80022f8:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80022fa:	9304      	str	r3, [sp, #16]
 80022fc:	9905      	ldr	r1, [sp, #20]
 80022fe:	4648      	mov	r0, r9
 8002300:	f000 fbb2 	bl	8002a68 <_Bfree>
 8002304:	2e00      	cmp	r6, #0
 8002306:	f43f ad72 	beq.w	8001dee <_dtoa_r+0x3a6>
 800230a:	e681      	b.n	8002010 <_dtoa_r+0x5c8>
 800230c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800230e:	2a00      	cmp	r2, #0
 8002310:	f000 8230 	beq.w	8002774 <_dtoa_r+0xd2c>
 8002314:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8002318:	9f05      	ldr	r7, [sp, #20]
 800231a:	9d07      	ldr	r5, [sp, #28]
 800231c:	e58f      	b.n	8001e3e <_dtoa_r+0x3f6>
 800231e:	201c      	movs	r0, #28
 8002320:	9b07      	ldr	r3, [sp, #28]
 8002322:	4403      	add	r3, r0
 8002324:	9307      	str	r3, [sp, #28]
 8002326:	9b06      	ldr	r3, [sp, #24]
 8002328:	4403      	add	r3, r0
 800232a:	4405      	add	r5, r0
 800232c:	9306      	str	r3, [sp, #24]
 800232e:	e600      	b.n	8001f32 <_dtoa_r+0x4ea>
 8002330:	9b00      	ldr	r3, [sp, #0]
 8002332:	2b01      	cmp	r3, #1
 8002334:	f340 829e 	ble.w	8002874 <_dtoa_r+0xe2c>
 8002338:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 800233a:	2001      	movs	r0, #1
 800233c:	e5e5      	b.n	8001f0a <_dtoa_r+0x4c2>
 800233e:	bf00      	nop
 8002340:	0800a8d8 	.word	0x0800a8d8
 8002344:	0800a9c8 	.word	0x0800a9c8
 8002348:	3ff00000 	.word	0x3ff00000
 800234c:	401c0000 	.word	0x401c0000
 8002350:	3fe00000 	.word	0x3fe00000
 8002354:	40240000 	.word	0x40240000
 8002358:	40140000 	.word	0x40140000
 800235c:	4631      	mov	r1, r6
 800235e:	2300      	movs	r3, #0
 8002360:	220a      	movs	r2, #10
 8002362:	4648      	mov	r0, r9
 8002364:	f000 fb9c 	bl	8002aa0 <__multadd>
 8002368:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800236a:	2b00      	cmp	r3, #0
 800236c:	4606      	mov	r6, r0
 800236e:	f340 827c 	ble.w	800286a <_dtoa_r+0xe22>
 8002372:	9308      	str	r3, [sp, #32]
 8002374:	2d00      	cmp	r5, #0
 8002376:	dd05      	ble.n	8002384 <_dtoa_r+0x93c>
 8002378:	4631      	mov	r1, r6
 800237a:	462a      	mov	r2, r5
 800237c:	4648      	mov	r0, r9
 800237e:	f000 fd65 	bl	8002e4c <__lshift>
 8002382:	4606      	mov	r6, r0
 8002384:	2f00      	cmp	r7, #0
 8002386:	f040 816f 	bne.w	8002668 <_dtoa_r+0xc20>
 800238a:	46b0      	mov	r8, r6
 800238c:	9b08      	ldr	r3, [sp, #32]
 800238e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002390:	3b01      	subs	r3, #1
 8002392:	18d3      	adds	r3, r2, r3
 8002394:	9308      	str	r3, [sp, #32]
 8002396:	f00a 0301 	and.w	r3, sl, #1
 800239a:	930a      	str	r3, [sp, #40]	; 0x28
 800239c:	4617      	mov	r7, r2
 800239e:	f8dd b014 	ldr.w	fp, [sp, #20]
 80023a2:	4620      	mov	r0, r4
 80023a4:	4659      	mov	r1, fp
 80023a6:	f7ff fabb 	bl	8001920 <quorem>
 80023aa:	4631      	mov	r1, r6
 80023ac:	4605      	mov	r5, r0
 80023ae:	4620      	mov	r0, r4
 80023b0:	f000 fda0 	bl	8002ef4 <__mcmp>
 80023b4:	4642      	mov	r2, r8
 80023b6:	4659      	mov	r1, fp
 80023b8:	4682      	mov	sl, r0
 80023ba:	4648      	mov	r0, r9
 80023bc:	f000 fdbc 	bl	8002f38 <__mdiff>
 80023c0:	68c2      	ldr	r2, [r0, #12]
 80023c2:	4683      	mov	fp, r0
 80023c4:	f105 0330 	add.w	r3, r5, #48	; 0x30
 80023c8:	2a00      	cmp	r2, #0
 80023ca:	d149      	bne.n	8002460 <_dtoa_r+0xa18>
 80023cc:	4601      	mov	r1, r0
 80023ce:	4620      	mov	r0, r4
 80023d0:	9307      	str	r3, [sp, #28]
 80023d2:	f000 fd8f 	bl	8002ef4 <__mcmp>
 80023d6:	4659      	mov	r1, fp
 80023d8:	9006      	str	r0, [sp, #24]
 80023da:	4648      	mov	r0, r9
 80023dc:	f000 fb44 	bl	8002a68 <_Bfree>
 80023e0:	9a06      	ldr	r2, [sp, #24]
 80023e2:	9b07      	ldr	r3, [sp, #28]
 80023e4:	b92a      	cbnz	r2, 80023f2 <_dtoa_r+0x9aa>
 80023e6:	9900      	ldr	r1, [sp, #0]
 80023e8:	b919      	cbnz	r1, 80023f2 <_dtoa_r+0x9aa>
 80023ea:	990a      	ldr	r1, [sp, #40]	; 0x28
 80023ec:	2900      	cmp	r1, #0
 80023ee:	f000 8217 	beq.w	8002820 <_dtoa_r+0xdd8>
 80023f2:	f1ba 0f00 	cmp.w	sl, #0
 80023f6:	f2c0 80d5 	blt.w	80025a4 <_dtoa_r+0xb5c>
 80023fa:	d105      	bne.n	8002408 <_dtoa_r+0x9c0>
 80023fc:	9900      	ldr	r1, [sp, #0]
 80023fe:	b919      	cbnz	r1, 8002408 <_dtoa_r+0x9c0>
 8002400:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002402:	2900      	cmp	r1, #0
 8002404:	f000 80ce 	beq.w	80025a4 <_dtoa_r+0xb5c>
 8002408:	2a00      	cmp	r2, #0
 800240a:	f300 8141 	bgt.w	8002690 <_dtoa_r+0xc48>
 800240e:	9a08      	ldr	r2, [sp, #32]
 8002410:	703b      	strb	r3, [r7, #0]
 8002412:	f107 0a01 	add.w	sl, r7, #1
 8002416:	4297      	cmp	r7, r2
 8002418:	4655      	mov	r5, sl
 800241a:	f000 8145 	beq.w	80026a8 <_dtoa_r+0xc60>
 800241e:	4621      	mov	r1, r4
 8002420:	2300      	movs	r3, #0
 8002422:	220a      	movs	r2, #10
 8002424:	4648      	mov	r0, r9
 8002426:	f000 fb3b 	bl	8002aa0 <__multadd>
 800242a:	4546      	cmp	r6, r8
 800242c:	4604      	mov	r4, r0
 800242e:	4631      	mov	r1, r6
 8002430:	f04f 0300 	mov.w	r3, #0
 8002434:	f04f 020a 	mov.w	r2, #10
 8002438:	4648      	mov	r0, r9
 800243a:	d00b      	beq.n	8002454 <_dtoa_r+0xa0c>
 800243c:	f000 fb30 	bl	8002aa0 <__multadd>
 8002440:	4641      	mov	r1, r8
 8002442:	4606      	mov	r6, r0
 8002444:	2300      	movs	r3, #0
 8002446:	220a      	movs	r2, #10
 8002448:	4648      	mov	r0, r9
 800244a:	f000 fb29 	bl	8002aa0 <__multadd>
 800244e:	4657      	mov	r7, sl
 8002450:	4680      	mov	r8, r0
 8002452:	e7a4      	b.n	800239e <_dtoa_r+0x956>
 8002454:	f000 fb24 	bl	8002aa0 <__multadd>
 8002458:	4657      	mov	r7, sl
 800245a:	4606      	mov	r6, r0
 800245c:	4680      	mov	r8, r0
 800245e:	e79e      	b.n	800239e <_dtoa_r+0x956>
 8002460:	4601      	mov	r1, r0
 8002462:	4648      	mov	r0, r9
 8002464:	9306      	str	r3, [sp, #24]
 8002466:	f000 faff 	bl	8002a68 <_Bfree>
 800246a:	2201      	movs	r2, #1
 800246c:	9b06      	ldr	r3, [sp, #24]
 800246e:	e7c0      	b.n	80023f2 <_dtoa_r+0x9aa>
 8002470:	2700      	movs	r7, #0
 8002472:	9a05      	ldr	r2, [sp, #20]
 8002474:	6913      	ldr	r3, [r2, #16]
 8002476:	eb02 0383 	add.w	r3, r2, r3, lsl #2
 800247a:	6918      	ldr	r0, [r3, #16]
 800247c:	f000 fb9a 	bl	8002bb4 <__hi0bits>
 8002480:	f1c0 0020 	rsb	r0, r0, #32
 8002484:	e541      	b.n	8001f0a <_dtoa_r+0x4c2>
 8002486:	9905      	ldr	r1, [sp, #20]
 8002488:	4620      	mov	r0, r4
 800248a:	f000 fd33 	bl	8002ef4 <__mcmp>
 800248e:	2800      	cmp	r0, #0
 8002490:	f6bf ad65 	bge.w	8001f5e <_dtoa_r+0x516>
 8002494:	4621      	mov	r1, r4
 8002496:	9c04      	ldr	r4, [sp, #16]
 8002498:	2300      	movs	r3, #0
 800249a:	3c01      	subs	r4, #1
 800249c:	220a      	movs	r2, #10
 800249e:	4648      	mov	r0, r9
 80024a0:	9404      	str	r4, [sp, #16]
 80024a2:	f000 fafd 	bl	8002aa0 <__multadd>
 80024a6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80024a8:	4604      	mov	r4, r0
 80024aa:	2b00      	cmp	r3, #0
 80024ac:	f47f af56 	bne.w	800235c <_dtoa_r+0x914>
 80024b0:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80024b2:	2b00      	cmp	r3, #0
 80024b4:	f340 81d1 	ble.w	800285a <_dtoa_r+0xe12>
 80024b8:	9308      	str	r3, [sp, #32]
 80024ba:	e558      	b.n	8001f6e <_dtoa_r+0x526>
 80024bc:	9c0a      	ldr	r4, [sp, #40]	; 0x28
 80024be:	e4f7      	b.n	8001eb0 <_dtoa_r+0x468>
 80024c0:	9b00      	ldr	r3, [sp, #0]
 80024c2:	2b02      	cmp	r3, #2
 80024c4:	f77f ad4f 	ble.w	8001f66 <_dtoa_r+0x51e>
 80024c8:	9b08      	ldr	r3, [sp, #32]
 80024ca:	2b00      	cmp	r3, #0
 80024cc:	f040 8161 	bne.w	8002792 <_dtoa_r+0xd4a>
 80024d0:	9905      	ldr	r1, [sp, #20]
 80024d2:	2205      	movs	r2, #5
 80024d4:	4648      	mov	r0, r9
 80024d6:	f000 fae3 	bl	8002aa0 <__multadd>
 80024da:	4601      	mov	r1, r0
 80024dc:	9005      	str	r0, [sp, #20]
 80024de:	4620      	mov	r0, r4
 80024e0:	f000 fd08 	bl	8002ef4 <__mcmp>
 80024e4:	2800      	cmp	r0, #0
 80024e6:	940a      	str	r4, [sp, #40]	; 0x28
 80024e8:	f77f af04 	ble.w	80022f4 <_dtoa_r+0x8ac>
 80024ec:	9a04      	ldr	r2, [sp, #16]
 80024ee:	9909      	ldr	r1, [sp, #36]	; 0x24
 80024f0:	2331      	movs	r3, #49	; 0x31
 80024f2:	3201      	adds	r2, #1
 80024f4:	9204      	str	r2, [sp, #16]
 80024f6:	700b      	strb	r3, [r1, #0]
 80024f8:	1c4d      	adds	r5, r1, #1
 80024fa:	e6ff      	b.n	80022fc <_dtoa_r+0x8b4>
 80024fc:	9a04      	ldr	r2, [sp, #16]
 80024fe:	3201      	adds	r2, #1
 8002500:	9204      	str	r2, [sp, #16]
 8002502:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002504:	2331      	movs	r3, #49	; 0x31
 8002506:	7013      	strb	r3, [r2, #0]
 8002508:	e572      	b.n	8001ff0 <_dtoa_r+0x5a8>
 800250a:	2301      	movs	r3, #1
 800250c:	930b      	str	r3, [sp, #44]	; 0x2c
 800250e:	e5bf      	b.n	8002090 <_dtoa_r+0x648>
 8002510:	f8dd 9014 	ldr.w	r9, [sp, #20]
 8002514:	e46b      	b.n	8001dee <_dtoa_r+0x3a6>
 8002516:	4650      	mov	r0, sl
 8002518:	f7fd fff6 	bl	8000508 <__aeabi_i2d>
 800251c:	4632      	mov	r2, r6
 800251e:	463b      	mov	r3, r7
 8002520:	f7fe f858 	bl	80005d4 <__aeabi_dmul>
 8002524:	2200      	movs	r2, #0
 8002526:	4bc3      	ldr	r3, [pc, #780]	; (8002834 <_dtoa_r+0xdec>)
 8002528:	f7fd fea2 	bl	8000270 <__adddf3>
 800252c:	4604      	mov	r4, r0
 800252e:	f1a1 7550 	sub.w	r5, r1, #54525952	; 0x3400000
 8002532:	4630      	mov	r0, r6
 8002534:	4639      	mov	r1, r7
 8002536:	2200      	movs	r2, #0
 8002538:	4bbf      	ldr	r3, [pc, #764]	; (8002838 <_dtoa_r+0xdf0>)
 800253a:	f7fd fe97 	bl	800026c <__aeabi_dsub>
 800253e:	4622      	mov	r2, r4
 8002540:	462b      	mov	r3, r5
 8002542:	4606      	mov	r6, r0
 8002544:	460f      	mov	r7, r1
 8002546:	f001 f917 	bl	8003778 <__aeabi_dcmpgt>
 800254a:	2800      	cmp	r0, #0
 800254c:	f040 80b0 	bne.w	80026b0 <_dtoa_r+0xc68>
 8002550:	4622      	mov	r2, r4
 8002552:	f105 4300 	add.w	r3, r5, #2147483648	; 0x80000000
 8002556:	4630      	mov	r0, r6
 8002558:	4639      	mov	r1, r7
 800255a:	f001 f8ef 	bl	800373c <__aeabi_dcmplt>
 800255e:	2800      	cmp	r0, #0
 8002560:	d04b      	beq.n	80025fa <_dtoa_r+0xbb2>
 8002562:	2300      	movs	r3, #0
 8002564:	9305      	str	r3, [sp, #20]
 8002566:	461e      	mov	r6, r3
 8002568:	e6c4      	b.n	80022f4 <_dtoa_r+0x8ac>
 800256a:	9809      	ldr	r0, [sp, #36]	; 0x24
 800256c:	f7ff baa9 	b.w	8001ac2 <_dtoa_r+0x7a>
 8002570:	9b05      	ldr	r3, [sp, #20]
 8002572:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8002574:	9705      	str	r7, [sp, #20]
 8002576:	1afb      	subs	r3, r7, r3
 8002578:	441a      	add	r2, r3
 800257a:	920c      	str	r2, [sp, #48]	; 0x30
 800257c:	2700      	movs	r7, #0
 800257e:	e458      	b.n	8001e32 <_dtoa_r+0x3ea>
 8002580:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8002584:	f04f 0a02 	mov.w	sl, #2
 8002588:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800258c:	e5c5      	b.n	800211a <_dtoa_r+0x6d2>
 800258e:	461d      	mov	r5, r3
 8002590:	f8d9 4024 	ldr.w	r4, [r9, #36]	; 0x24
 8002594:	2100      	movs	r1, #0
 8002596:	6061      	str	r1, [r4, #4]
 8002598:	e593      	b.n	80020c2 <_dtoa_r+0x67a>
 800259a:	2501      	movs	r5, #1
 800259c:	950e      	str	r5, [sp, #56]	; 0x38
 800259e:	9508      	str	r5, [sp, #32]
 80025a0:	46a8      	mov	r8, r5
 80025a2:	e7f5      	b.n	8002590 <_dtoa_r+0xb48>
 80025a4:	2a00      	cmp	r2, #0
 80025a6:	469a      	mov	sl, r3
 80025a8:	dd11      	ble.n	80025ce <_dtoa_r+0xb86>
 80025aa:	4621      	mov	r1, r4
 80025ac:	2201      	movs	r2, #1
 80025ae:	4648      	mov	r0, r9
 80025b0:	f000 fc4c 	bl	8002e4c <__lshift>
 80025b4:	9905      	ldr	r1, [sp, #20]
 80025b6:	4604      	mov	r4, r0
 80025b8:	f000 fc9c 	bl	8002ef4 <__mcmp>
 80025bc:	2800      	cmp	r0, #0
 80025be:	f340 8145 	ble.w	800284c <_dtoa_r+0xe04>
 80025c2:	f1ba 0f39 	cmp.w	sl, #57	; 0x39
 80025c6:	f000 810b 	beq.w	80027e0 <_dtoa_r+0xd98>
 80025ca:	f105 0a31 	add.w	sl, r5, #49	; 0x31
 80025ce:	46b3      	mov	fp, r6
 80025d0:	f887 a000 	strb.w	sl, [r7]
 80025d4:	1c7d      	adds	r5, r7, #1
 80025d6:	4646      	mov	r6, r8
 80025d8:	940a      	str	r4, [sp, #40]	; 0x28
 80025da:	e509      	b.n	8001ff0 <_dtoa_r+0x5a8>
 80025dc:	d104      	bne.n	80025e8 <_dtoa_r+0xba0>
 80025de:	f01a 0f01 	tst.w	sl, #1
 80025e2:	d001      	beq.n	80025e8 <_dtoa_r+0xba0>
 80025e4:	e4f4      	b.n	8001fd0 <_dtoa_r+0x588>
 80025e6:	4615      	mov	r5, r2
 80025e8:	f815 3c01 	ldrb.w	r3, [r5, #-1]
 80025ec:	2b30      	cmp	r3, #48	; 0x30
 80025ee:	f105 32ff 	add.w	r2, r5, #4294967295	; 0xffffffff
 80025f2:	d0f8      	beq.n	80025e6 <_dtoa_r+0xb9e>
 80025f4:	e4fc      	b.n	8001ff0 <_dtoa_r+0x5a8>
 80025f6:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 80025fa:	e9dd ab10 	ldrd	sl, fp, [sp, #64]	; 0x40
 80025fe:	f7ff bb36 	b.w	8001c6e <_dtoa_r+0x226>
 8002602:	9b04      	ldr	r3, [sp, #16]
 8002604:	425c      	negs	r4, r3
 8002606:	2c00      	cmp	r4, #0
 8002608:	f000 80be 	beq.w	8002788 <_dtoa_r+0xd40>
 800260c:	4b8b      	ldr	r3, [pc, #556]	; (800283c <_dtoa_r+0xdf4>)
 800260e:	f004 020f 	and.w	r2, r4, #15
 8002612:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8002616:	e9d3 2300 	ldrd	r2, r3, [r3]
 800261a:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 800261e:	f7fd ffd9 	bl	80005d4 <__aeabi_dmul>
 8002622:	1124      	asrs	r4, r4, #4
 8002624:	4606      	mov	r6, r0
 8002626:	460f      	mov	r7, r1
 8002628:	f000 811c 	beq.w	8002864 <_dtoa_r+0xe1c>
 800262c:	4d84      	ldr	r5, [pc, #528]	; (8002840 <_dtoa_r+0xdf8>)
 800262e:	f04f 0a02 	mov.w	sl, #2
 8002632:	07e2      	lsls	r2, r4, #31
 8002634:	d509      	bpl.n	800264a <_dtoa_r+0xc02>
 8002636:	4630      	mov	r0, r6
 8002638:	4639      	mov	r1, r7
 800263a:	e9d5 2300 	ldrd	r2, r3, [r5]
 800263e:	f7fd ffc9 	bl	80005d4 <__aeabi_dmul>
 8002642:	f10a 0a01 	add.w	sl, sl, #1
 8002646:	4606      	mov	r6, r0
 8002648:	460f      	mov	r7, r1
 800264a:	1064      	asrs	r4, r4, #1
 800264c:	f105 0508 	add.w	r5, r5, #8
 8002650:	d1ef      	bne.n	8002632 <_dtoa_r+0xbea>
 8002652:	e57c      	b.n	800214e <_dtoa_r+0x706>
 8002654:	9909      	ldr	r1, [sp, #36]	; 0x24
 8002656:	2230      	movs	r2, #48	; 0x30
 8002658:	700a      	strb	r2, [r1, #0]
 800265a:	9a04      	ldr	r2, [sp, #16]
 800265c:	f815 4c01 	ldrb.w	r4, [r5, #-1]
 8002660:	3201      	adds	r2, #1
 8002662:	9204      	str	r2, [sp, #16]
 8002664:	f7ff bbc1 	b.w	8001dea <_dtoa_r+0x3a2>
 8002668:	6871      	ldr	r1, [r6, #4]
 800266a:	4648      	mov	r0, r9
 800266c:	f000 f9c8 	bl	8002a00 <_Balloc>
 8002670:	6933      	ldr	r3, [r6, #16]
 8002672:	1c9a      	adds	r2, r3, #2
 8002674:	4605      	mov	r5, r0
 8002676:	0092      	lsls	r2, r2, #2
 8002678:	f106 010c 	add.w	r1, r6, #12
 800267c:	300c      	adds	r0, #12
 800267e:	f7fe fa0b 	bl	8000a98 <memcpy>
 8002682:	4629      	mov	r1, r5
 8002684:	2201      	movs	r2, #1
 8002686:	4648      	mov	r0, r9
 8002688:	f000 fbe0 	bl	8002e4c <__lshift>
 800268c:	4680      	mov	r8, r0
 800268e:	e67d      	b.n	800238c <_dtoa_r+0x944>
 8002690:	2b39      	cmp	r3, #57	; 0x39
 8002692:	f000 80a5 	beq.w	80027e0 <_dtoa_r+0xd98>
 8002696:	f103 0a01 	add.w	sl, r3, #1
 800269a:	46b3      	mov	fp, r6
 800269c:	f887 a000 	strb.w	sl, [r7]
 80026a0:	1c7d      	adds	r5, r7, #1
 80026a2:	4646      	mov	r6, r8
 80026a4:	940a      	str	r4, [sp, #40]	; 0x28
 80026a6:	e4a3      	b.n	8001ff0 <_dtoa_r+0x5a8>
 80026a8:	46b3      	mov	fp, r6
 80026aa:	469a      	mov	sl, r3
 80026ac:	4646      	mov	r6, r8
 80026ae:	e483      	b.n	8001fb8 <_dtoa_r+0x570>
 80026b0:	2300      	movs	r3, #0
 80026b2:	9305      	str	r3, [sp, #20]
 80026b4:	461e      	mov	r6, r3
 80026b6:	e719      	b.n	80024ec <_dtoa_r+0xaa4>
 80026b8:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80026ba:	4960      	ldr	r1, [pc, #384]	; (800283c <_dtoa_r+0xdf4>)
 80026bc:	1e5a      	subs	r2, r3, #1
 80026be:	eb01 01c2 	add.w	r1, r1, r2, lsl #3
 80026c2:	462b      	mov	r3, r5
 80026c4:	9217      	str	r2, [sp, #92]	; 0x5c
 80026c6:	e9d1 0100 	ldrd	r0, r1, [r1]
 80026ca:	4622      	mov	r2, r4
 80026cc:	f7fd ff82 	bl	80005d4 <__aeabi_dmul>
 80026d0:	e9cd 0114 	strd	r0, r1, [sp, #80]	; 0x50
 80026d4:	4639      	mov	r1, r7
 80026d6:	4630      	mov	r0, r6
 80026d8:	f7fe f98e 	bl	80009f8 <__aeabi_d2iz>
 80026dc:	4604      	mov	r4, r0
 80026de:	f7fd ff13 	bl	8000508 <__aeabi_i2d>
 80026e2:	460b      	mov	r3, r1
 80026e4:	4602      	mov	r2, r0
 80026e6:	4639      	mov	r1, r7
 80026e8:	4630      	mov	r0, r6
 80026ea:	f7fd fdbf 	bl	800026c <__aeabi_dsub>
 80026ee:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80026f0:	460f      	mov	r7, r1
 80026f2:	9909      	ldr	r1, [sp, #36]	; 0x24
 80026f4:	3430      	adds	r4, #48	; 0x30
 80026f6:	2b01      	cmp	r3, #1
 80026f8:	4606      	mov	r6, r0
 80026fa:	700c      	strb	r4, [r1, #0]
 80026fc:	f101 0501 	add.w	r5, r1, #1
 8002700:	d020      	beq.n	8002744 <_dtoa_r+0xcfc>
 8002702:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8002704:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002706:	4413      	add	r3, r2
 8002708:	469a      	mov	sl, r3
 800270a:	46ab      	mov	fp, r5
 800270c:	2200      	movs	r2, #0
 800270e:	4b4d      	ldr	r3, [pc, #308]	; (8002844 <_dtoa_r+0xdfc>)
 8002710:	4630      	mov	r0, r6
 8002712:	4639      	mov	r1, r7
 8002714:	f7fd ff5e 	bl	80005d4 <__aeabi_dmul>
 8002718:	460f      	mov	r7, r1
 800271a:	4606      	mov	r6, r0
 800271c:	f7fe f96c 	bl	80009f8 <__aeabi_d2iz>
 8002720:	4604      	mov	r4, r0
 8002722:	f7fd fef1 	bl	8000508 <__aeabi_i2d>
 8002726:	3430      	adds	r4, #48	; 0x30
 8002728:	4602      	mov	r2, r0
 800272a:	460b      	mov	r3, r1
 800272c:	4630      	mov	r0, r6
 800272e:	4639      	mov	r1, r7
 8002730:	f7fd fd9c 	bl	800026c <__aeabi_dsub>
 8002734:	f80b 4b01 	strb.w	r4, [fp], #1
 8002738:	45da      	cmp	sl, fp
 800273a:	4606      	mov	r6, r0
 800273c:	460f      	mov	r7, r1
 800273e:	d1e5      	bne.n	800270c <_dtoa_r+0xcc4>
 8002740:	9b17      	ldr	r3, [sp, #92]	; 0x5c
 8002742:	441d      	add	r5, r3
 8002744:	2200      	movs	r2, #0
 8002746:	4b40      	ldr	r3, [pc, #256]	; (8002848 <_dtoa_r+0xe00>)
 8002748:	e9dd 0114 	ldrd	r0, r1, [sp, #80]	; 0x50
 800274c:	f7fd fd90 	bl	8000270 <__adddf3>
 8002750:	4632      	mov	r2, r6
 8002752:	463b      	mov	r3, r7
 8002754:	f000 fff2 	bl	800373c <__aeabi_dcmplt>
 8002758:	2800      	cmp	r0, #0
 800275a:	d049      	beq.n	80027f0 <_dtoa_r+0xda8>
 800275c:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800275e:	9304      	str	r3, [sp, #16]
 8002760:	f815 4c01 	ldrb.w	r4, [r5, #-1]
 8002764:	f7ff bb35 	b.w	8001dd2 <_dtoa_r+0x38a>
 8002768:	9b07      	ldr	r3, [sp, #28]
 800276a:	9a08      	ldr	r2, [sp, #32]
 800276c:	1a9d      	subs	r5, r3, r2
 800276e:	2300      	movs	r3, #0
 8002770:	f7ff bb65 	b.w	8001e3e <_dtoa_r+0x3f6>
 8002774:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8002776:	9f05      	ldr	r7, [sp, #20]
 8002778:	9d07      	ldr	r5, [sp, #28]
 800277a:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 800277e:	f7ff bb5e 	b.w	8001e3e <_dtoa_r+0x3f6>
 8002782:	2700      	movs	r7, #0
 8002784:	f7ff bbbc 	b.w	8001f00 <_dtoa_r+0x4b8>
 8002788:	e9dd 6710 	ldrd	r6, r7, [sp, #64]	; 0x40
 800278c:	f04f 0a02 	mov.w	sl, #2
 8002790:	e4dd      	b.n	800214e <_dtoa_r+0x706>
 8002792:	940a      	str	r4, [sp, #40]	; 0x28
 8002794:	e5ae      	b.n	80022f4 <_dtoa_r+0x8ac>
 8002796:	9b08      	ldr	r3, [sp, #32]
 8002798:	2b00      	cmp	r3, #0
 800279a:	f43f aebc 	beq.w	8002516 <_dtoa_r+0xace>
 800279e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80027a0:	2b00      	cmp	r3, #0
 80027a2:	f77f af2a 	ble.w	80025fa <_dtoa_r+0xbb2>
 80027a6:	2200      	movs	r2, #0
 80027a8:	4b26      	ldr	r3, [pc, #152]	; (8002844 <_dtoa_r+0xdfc>)
 80027aa:	4630      	mov	r0, r6
 80027ac:	4639      	mov	r1, r7
 80027ae:	f7fd ff11 	bl	80005d4 <__aeabi_dmul>
 80027b2:	4606      	mov	r6, r0
 80027b4:	460f      	mov	r7, r1
 80027b6:	f10a 0001 	add.w	r0, sl, #1
 80027ba:	f7fd fea5 	bl	8000508 <__aeabi_i2d>
 80027be:	4632      	mov	r2, r6
 80027c0:	463b      	mov	r3, r7
 80027c2:	f7fd ff07 	bl	80005d4 <__aeabi_dmul>
 80027c6:	2200      	movs	r2, #0
 80027c8:	4b1a      	ldr	r3, [pc, #104]	; (8002834 <_dtoa_r+0xdec>)
 80027ca:	f7fd fd51 	bl	8000270 <__adddf3>
 80027ce:	9a04      	ldr	r2, [sp, #16]
 80027d0:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80027d2:	9312      	str	r3, [sp, #72]	; 0x48
 80027d4:	3a01      	subs	r2, #1
 80027d6:	4604      	mov	r4, r0
 80027d8:	f1a1 7550 	sub.w	r5, r1, #54525952	; 0x3400000
 80027dc:	9216      	str	r2, [sp, #88]	; 0x58
 80027de:	e4d7      	b.n	8002190 <_dtoa_r+0x748>
 80027e0:	2239      	movs	r2, #57	; 0x39
 80027e2:	46b3      	mov	fp, r6
 80027e4:	940a      	str	r4, [sp, #40]	; 0x28
 80027e6:	4646      	mov	r6, r8
 80027e8:	703a      	strb	r2, [r7, #0]
 80027ea:	1c7d      	adds	r5, r7, #1
 80027ec:	f7ff bbf2 	b.w	8001fd4 <_dtoa_r+0x58c>
 80027f0:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80027f4:	2000      	movs	r0, #0
 80027f6:	4914      	ldr	r1, [pc, #80]	; (8002848 <_dtoa_r+0xe00>)
 80027f8:	f7fd fd38 	bl	800026c <__aeabi_dsub>
 80027fc:	4632      	mov	r2, r6
 80027fe:	463b      	mov	r3, r7
 8002800:	f000 ffba 	bl	8003778 <__aeabi_dcmpgt>
 8002804:	b908      	cbnz	r0, 800280a <_dtoa_r+0xdc2>
 8002806:	e6f8      	b.n	80025fa <_dtoa_r+0xbb2>
 8002808:	4615      	mov	r5, r2
 800280a:	f815 3c01 	ldrb.w	r3, [r5, #-1]
 800280e:	2b30      	cmp	r3, #48	; 0x30
 8002810:	f105 32ff 	add.w	r2, r5, #4294967295	; 0xffffffff
 8002814:	d0f8      	beq.n	8002808 <_dtoa_r+0xdc0>
 8002816:	e53c      	b.n	8002292 <_dtoa_r+0x84a>
 8002818:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800281a:	9304      	str	r3, [sp, #16]
 800281c:	f7ff bad9 	b.w	8001dd2 <_dtoa_r+0x38a>
 8002820:	2b39      	cmp	r3, #57	; 0x39
 8002822:	46d3      	mov	fp, sl
 8002824:	469a      	mov	sl, r3
 8002826:	d0db      	beq.n	80027e0 <_dtoa_r+0xd98>
 8002828:	f1bb 0f00 	cmp.w	fp, #0
 800282c:	f73f aecd 	bgt.w	80025ca <_dtoa_r+0xb82>
 8002830:	e6cd      	b.n	80025ce <_dtoa_r+0xb86>
 8002832:	bf00      	nop
 8002834:	401c0000 	.word	0x401c0000
 8002838:	40140000 	.word	0x40140000
 800283c:	0800a8d8 	.word	0x0800a8d8
 8002840:	0800a9c8 	.word	0x0800a9c8
 8002844:	40240000 	.word	0x40240000
 8002848:	3fe00000 	.word	0x3fe00000
 800284c:	f47f aebf 	bne.w	80025ce <_dtoa_r+0xb86>
 8002850:	f01a 0f01 	tst.w	sl, #1
 8002854:	f43f aebb 	beq.w	80025ce <_dtoa_r+0xb86>
 8002858:	e6b3      	b.n	80025c2 <_dtoa_r+0xb7a>
 800285a:	9b00      	ldr	r3, [sp, #0]
 800285c:	2b02      	cmp	r3, #2
 800285e:	dc2c      	bgt.n	80028ba <_dtoa_r+0xe72>
 8002860:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002862:	e629      	b.n	80024b8 <_dtoa_r+0xa70>
 8002864:	f04f 0a02 	mov.w	sl, #2
 8002868:	e471      	b.n	800214e <_dtoa_r+0x706>
 800286a:	9b00      	ldr	r3, [sp, #0]
 800286c:	2b02      	cmp	r3, #2
 800286e:	dc24      	bgt.n	80028ba <_dtoa_r+0xe72>
 8002870:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002872:	e57e      	b.n	8002372 <_dtoa_r+0x92a>
 8002874:	f1ba 0f00 	cmp.w	sl, #0
 8002878:	f43f ab31 	beq.w	8001ede <_dtoa_r+0x496>
 800287c:	e55c      	b.n	8002338 <_dtoa_r+0x8f0>
 800287e:	f8d9 5024 	ldr.w	r5, [r9, #36]	; 0x24
 8002882:	2400      	movs	r4, #0
 8002884:	606c      	str	r4, [r5, #4]
 8002886:	4621      	mov	r1, r4
 8002888:	4648      	mov	r0, r9
 800288a:	f000 f8b9 	bl	8002a00 <_Balloc>
 800288e:	f8d9 3024 	ldr.w	r3, [r9, #36]	; 0x24
 8002892:	6028      	str	r0, [r5, #0]
 8002894:	681b      	ldr	r3, [r3, #0]
 8002896:	9309      	str	r3, [sp, #36]	; 0x24
 8002898:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 800289c:	2301      	movs	r3, #1
 800289e:	9208      	str	r2, [sp, #32]
 80028a0:	46a0      	mov	r8, r4
 80028a2:	920e      	str	r2, [sp, #56]	; 0x38
 80028a4:	930b      	str	r3, [sp, #44]	; 0x2c
 80028a6:	f7ff b9e2 	b.w	8001c6e <_dtoa_r+0x226>
 80028aa:	2601      	movs	r6, #1
 80028ac:	f7ff b9a6 	b.w	8001bfc <_dtoa_r+0x1b4>
 80028b0:	f43f ab3f 	beq.w	8001f32 <_dtoa_r+0x4ea>
 80028b4:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 80028b8:	e532      	b.n	8002320 <_dtoa_r+0x8d8>
 80028ba:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80028bc:	9308      	str	r3, [sp, #32]
 80028be:	e603      	b.n	80024c8 <_dtoa_r+0xa80>

080028c0 <_setlocale_r>:
 80028c0:	b1b2      	cbz	r2, 80028f0 <_setlocale_r+0x30>
 80028c2:	b510      	push	{r4, lr}
 80028c4:	490b      	ldr	r1, [pc, #44]	; (80028f4 <_setlocale_r+0x34>)
 80028c6:	4610      	mov	r0, r2
 80028c8:	4614      	mov	r4, r2
 80028ca:	f000 fd6d 	bl	80033a8 <strcmp>
 80028ce:	b908      	cbnz	r0, 80028d4 <_setlocale_r+0x14>
 80028d0:	4809      	ldr	r0, [pc, #36]	; (80028f8 <_setlocale_r+0x38>)
 80028d2:	bd10      	pop	{r4, pc}
 80028d4:	4908      	ldr	r1, [pc, #32]	; (80028f8 <_setlocale_r+0x38>)
 80028d6:	4620      	mov	r0, r4
 80028d8:	f000 fd66 	bl	80033a8 <strcmp>
 80028dc:	2800      	cmp	r0, #0
 80028de:	d0f7      	beq.n	80028d0 <_setlocale_r+0x10>
 80028e0:	4620      	mov	r0, r4
 80028e2:	4906      	ldr	r1, [pc, #24]	; (80028fc <_setlocale_r+0x3c>)
 80028e4:	f000 fd60 	bl	80033a8 <strcmp>
 80028e8:	2800      	cmp	r0, #0
 80028ea:	d0f1      	beq.n	80028d0 <_setlocale_r+0x10>
 80028ec:	2000      	movs	r0, #0
 80028ee:	bd10      	pop	{r4, pc}
 80028f0:	4801      	ldr	r0, [pc, #4]	; (80028f8 <_setlocale_r+0x38>)
 80028f2:	4770      	bx	lr
 80028f4:	0800ae1c 	.word	0x0800ae1c
 80028f8:	0800adcc 	.word	0x0800adcc
 80028fc:	0800adf4 	.word	0x0800adf4

08002900 <__locale_charset>:
 8002900:	4800      	ldr	r0, [pc, #0]	; (8002904 <__locale_charset+0x4>)
 8002902:	4770      	bx	lr
 8002904:	20000064 	.word	0x20000064

08002908 <__locale_mb_cur_max>:
 8002908:	4b01      	ldr	r3, [pc, #4]	; (8002910 <__locale_mb_cur_max+0x8>)
 800290a:	6a18      	ldr	r0, [r3, #32]
 800290c:	4770      	bx	lr
 800290e:	bf00      	nop
 8002910:	20000064 	.word	0x20000064

08002914 <__locale_msgcharset>:
 8002914:	4800      	ldr	r0, [pc, #0]	; (8002918 <__locale_msgcharset+0x4>)
 8002916:	4770      	bx	lr
 8002918:	20000088 	.word	0x20000088

0800291c <__locale_cjk_lang>:
 800291c:	2000      	movs	r0, #0
 800291e:	4770      	bx	lr

08002920 <_localeconv_r>:
 8002920:	4800      	ldr	r0, [pc, #0]	; (8002924 <_localeconv_r+0x4>)
 8002922:	4770      	bx	lr
 8002924:	200000a8 	.word	0x200000a8

08002928 <setlocale>:
 8002928:	4b02      	ldr	r3, [pc, #8]	; (8002934 <setlocale+0xc>)
 800292a:	460a      	mov	r2, r1
 800292c:	4601      	mov	r1, r0
 800292e:	6818      	ldr	r0, [r3, #0]
 8002930:	f7ff bfc6 	b.w	80028c0 <_setlocale_r>
 8002934:	20000000 	.word	0x20000000

08002938 <localeconv>:
 8002938:	4800      	ldr	r0, [pc, #0]	; (800293c <localeconv+0x4>)
 800293a:	4770      	bx	lr
 800293c:	200000a8 	.word	0x200000a8

08002940 <malloc>:
 8002940:	4b02      	ldr	r3, [pc, #8]	; (800294c <malloc+0xc>)
 8002942:	4601      	mov	r1, r0
 8002944:	6818      	ldr	r0, [r3, #0]
 8002946:	f003 bfa9 	b.w	800689c <_malloc_r>
 800294a:	bf00      	nop
 800294c:	20000000 	.word	0x20000000

08002950 <free>:
 8002950:	4b02      	ldr	r3, [pc, #8]	; (800295c <free+0xc>)
 8002952:	4601      	mov	r1, r0
 8002954:	6818      	ldr	r0, [r3, #0]
 8002956:	f003 bfaf 	b.w	80068b8 <_free_r>
 800295a:	bf00      	nop
 800295c:	20000000 	.word	0x20000000

08002960 <memchr>:
 8002960:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8002964:	2a10      	cmp	r2, #16
 8002966:	db2b      	blt.n	80029c0 <memchr+0x60>
 8002968:	f010 0f07 	tst.w	r0, #7
 800296c:	d008      	beq.n	8002980 <memchr+0x20>
 800296e:	f810 3b01 	ldrb.w	r3, [r0], #1
 8002972:	3a01      	subs	r2, #1
 8002974:	428b      	cmp	r3, r1
 8002976:	d02d      	beq.n	80029d4 <memchr+0x74>
 8002978:	f010 0f07 	tst.w	r0, #7
 800297c:	b342      	cbz	r2, 80029d0 <memchr+0x70>
 800297e:	d1f6      	bne.n	800296e <memchr+0xe>
 8002980:	b4f0      	push	{r4, r5, r6, r7}
 8002982:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
 8002986:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
 800298a:	f022 0407 	bic.w	r4, r2, #7
 800298e:	f07f 0700 	mvns.w	r7, #0
 8002992:	2300      	movs	r3, #0
 8002994:	e8f0 5602 	ldrd	r5, r6, [r0], #8
 8002998:	3c08      	subs	r4, #8
 800299a:	ea85 0501 	eor.w	r5, r5, r1
 800299e:	ea86 0601 	eor.w	r6, r6, r1
 80029a2:	fa85 f547 	uadd8	r5, r5, r7
 80029a6:	faa3 f587 	sel	r5, r3, r7
 80029aa:	fa86 f647 	uadd8	r6, r6, r7
 80029ae:	faa5 f687 	sel	r6, r5, r7
 80029b2:	b98e      	cbnz	r6, 80029d8 <memchr+0x78>
 80029b4:	d1ee      	bne.n	8002994 <memchr+0x34>
 80029b6:	bcf0      	pop	{r4, r5, r6, r7}
 80029b8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 80029bc:	f002 0207 	and.w	r2, r2, #7
 80029c0:	b132      	cbz	r2, 80029d0 <memchr+0x70>
 80029c2:	f810 3b01 	ldrb.w	r3, [r0], #1
 80029c6:	3a01      	subs	r2, #1
 80029c8:	ea83 0301 	eor.w	r3, r3, r1
 80029cc:	b113      	cbz	r3, 80029d4 <memchr+0x74>
 80029ce:	d1f8      	bne.n	80029c2 <memchr+0x62>
 80029d0:	2000      	movs	r0, #0
 80029d2:	4770      	bx	lr
 80029d4:	3801      	subs	r0, #1
 80029d6:	4770      	bx	lr
 80029d8:	2d00      	cmp	r5, #0
 80029da:	bf06      	itte	eq
 80029dc:	4635      	moveq	r5, r6
 80029de:	3803      	subeq	r0, #3
 80029e0:	3807      	subne	r0, #7
 80029e2:	f015 0f01 	tst.w	r5, #1
 80029e6:	d107      	bne.n	80029f8 <memchr+0x98>
 80029e8:	3001      	adds	r0, #1
 80029ea:	f415 7f80 	tst.w	r5, #256	; 0x100
 80029ee:	bf02      	ittt	eq
 80029f0:	3001      	addeq	r0, #1
 80029f2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
 80029f6:	3001      	addeq	r0, #1
 80029f8:	bcf0      	pop	{r4, r5, r6, r7}
 80029fa:	3801      	subs	r0, #1
 80029fc:	4770      	bx	lr
 80029fe:	bf00      	nop

08002a00 <_Balloc>:
 8002a00:	b570      	push	{r4, r5, r6, lr}
 8002a02:	6a44      	ldr	r4, [r0, #36]	; 0x24
 8002a04:	4606      	mov	r6, r0
 8002a06:	460d      	mov	r5, r1
 8002a08:	b15c      	cbz	r4, 8002a22 <_Balloc+0x22>
 8002a0a:	68e3      	ldr	r3, [r4, #12]
 8002a0c:	b193      	cbz	r3, 8002a34 <_Balloc+0x34>
 8002a0e:	f853 0025 	ldr.w	r0, [r3, r5, lsl #2]
 8002a12:	b1d8      	cbz	r0, 8002a4c <_Balloc+0x4c>
 8002a14:	6802      	ldr	r2, [r0, #0]
 8002a16:	f843 2025 	str.w	r2, [r3, r5, lsl #2]
 8002a1a:	2300      	movs	r3, #0
 8002a1c:	6103      	str	r3, [r0, #16]
 8002a1e:	60c3      	str	r3, [r0, #12]
 8002a20:	bd70      	pop	{r4, r5, r6, pc}
 8002a22:	2010      	movs	r0, #16
 8002a24:	f7ff ff8c 	bl	8002940 <malloc>
 8002a28:	6270      	str	r0, [r6, #36]	; 0x24
 8002a2a:	6044      	str	r4, [r0, #4]
 8002a2c:	6084      	str	r4, [r0, #8]
 8002a2e:	6004      	str	r4, [r0, #0]
 8002a30:	60c4      	str	r4, [r0, #12]
 8002a32:	4604      	mov	r4, r0
 8002a34:	2221      	movs	r2, #33	; 0x21
 8002a36:	2104      	movs	r1, #4
 8002a38:	4630      	mov	r0, r6
 8002a3a:	f000 fc97 	bl	800336c <_calloc_r>
 8002a3e:	6a73      	ldr	r3, [r6, #36]	; 0x24
 8002a40:	60e0      	str	r0, [r4, #12]
 8002a42:	68db      	ldr	r3, [r3, #12]
 8002a44:	2b00      	cmp	r3, #0
 8002a46:	d1e2      	bne.n	8002a0e <_Balloc+0xe>
 8002a48:	2000      	movs	r0, #0
 8002a4a:	bd70      	pop	{r4, r5, r6, pc}
 8002a4c:	2101      	movs	r1, #1
 8002a4e:	fa01 f405 	lsl.w	r4, r1, r5
 8002a52:	1d62      	adds	r2, r4, #5
 8002a54:	4630      	mov	r0, r6
 8002a56:	0092      	lsls	r2, r2, #2
 8002a58:	f000 fc88 	bl	800336c <_calloc_r>
 8002a5c:	2800      	cmp	r0, #0
 8002a5e:	d0f3      	beq.n	8002a48 <_Balloc+0x48>
 8002a60:	6045      	str	r5, [r0, #4]
 8002a62:	6084      	str	r4, [r0, #8]
 8002a64:	e7d9      	b.n	8002a1a <_Balloc+0x1a>
 8002a66:	bf00      	nop

08002a68 <_Bfree>:
 8002a68:	b530      	push	{r4, r5, lr}
 8002a6a:	6a45      	ldr	r5, [r0, #36]	; 0x24
 8002a6c:	b083      	sub	sp, #12
 8002a6e:	4604      	mov	r4, r0
 8002a70:	b155      	cbz	r5, 8002a88 <_Bfree+0x20>
 8002a72:	b139      	cbz	r1, 8002a84 <_Bfree+0x1c>
 8002a74:	6a63      	ldr	r3, [r4, #36]	; 0x24
 8002a76:	684a      	ldr	r2, [r1, #4]
 8002a78:	68db      	ldr	r3, [r3, #12]
 8002a7a:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8002a7e:	6008      	str	r0, [r1, #0]
 8002a80:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8002a84:	b003      	add	sp, #12
 8002a86:	bd30      	pop	{r4, r5, pc}
 8002a88:	2010      	movs	r0, #16
 8002a8a:	9101      	str	r1, [sp, #4]
 8002a8c:	f7ff ff58 	bl	8002940 <malloc>
 8002a90:	9901      	ldr	r1, [sp, #4]
 8002a92:	6260      	str	r0, [r4, #36]	; 0x24
 8002a94:	6045      	str	r5, [r0, #4]
 8002a96:	6085      	str	r5, [r0, #8]
 8002a98:	6005      	str	r5, [r0, #0]
 8002a9a:	60c5      	str	r5, [r0, #12]
 8002a9c:	e7e9      	b.n	8002a72 <_Bfree+0xa>
 8002a9e:	bf00      	nop

08002aa0 <__multadd>:
 8002aa0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002aa2:	690c      	ldr	r4, [r1, #16]
 8002aa4:	b083      	sub	sp, #12
 8002aa6:	460d      	mov	r5, r1
 8002aa8:	4606      	mov	r6, r0
 8002aaa:	f101 0e14 	add.w	lr, r1, #20
 8002aae:	2700      	movs	r7, #0
 8002ab0:	f8de 0000 	ldr.w	r0, [lr]
 8002ab4:	b281      	uxth	r1, r0
 8002ab6:	fb02 3101 	mla	r1, r2, r1, r3
 8002aba:	0c0b      	lsrs	r3, r1, #16
 8002abc:	0c00      	lsrs	r0, r0, #16
 8002abe:	fb02 3300 	mla	r3, r2, r0, r3
 8002ac2:	b289      	uxth	r1, r1
 8002ac4:	3701      	adds	r7, #1
 8002ac6:	eb01 4103 	add.w	r1, r1, r3, lsl #16
 8002aca:	42bc      	cmp	r4, r7
 8002acc:	f84e 1b04 	str.w	r1, [lr], #4
 8002ad0:	ea4f 4313 	mov.w	r3, r3, lsr #16
 8002ad4:	dcec      	bgt.n	8002ab0 <__multadd+0x10>
 8002ad6:	b13b      	cbz	r3, 8002ae8 <__multadd+0x48>
 8002ad8:	68aa      	ldr	r2, [r5, #8]
 8002ada:	4294      	cmp	r4, r2
 8002adc:	da07      	bge.n	8002aee <__multadd+0x4e>
 8002ade:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8002ae2:	3401      	adds	r4, #1
 8002ae4:	6153      	str	r3, [r2, #20]
 8002ae6:	612c      	str	r4, [r5, #16]
 8002ae8:	4628      	mov	r0, r5
 8002aea:	b003      	add	sp, #12
 8002aec:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002aee:	6869      	ldr	r1, [r5, #4]
 8002af0:	9301      	str	r3, [sp, #4]
 8002af2:	3101      	adds	r1, #1
 8002af4:	4630      	mov	r0, r6
 8002af6:	f7ff ff83 	bl	8002a00 <_Balloc>
 8002afa:	692a      	ldr	r2, [r5, #16]
 8002afc:	3202      	adds	r2, #2
 8002afe:	f105 010c 	add.w	r1, r5, #12
 8002b02:	4607      	mov	r7, r0
 8002b04:	0092      	lsls	r2, r2, #2
 8002b06:	300c      	adds	r0, #12
 8002b08:	f7fd ffc6 	bl	8000a98 <memcpy>
 8002b0c:	4629      	mov	r1, r5
 8002b0e:	4630      	mov	r0, r6
 8002b10:	f7ff ffaa 	bl	8002a68 <_Bfree>
 8002b14:	463d      	mov	r5, r7
 8002b16:	9b01      	ldr	r3, [sp, #4]
 8002b18:	e7e1      	b.n	8002ade <__multadd+0x3e>
 8002b1a:	bf00      	nop

08002b1c <__s2b>:
 8002b1c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8002b20:	4c23      	ldr	r4, [pc, #140]	; (8002bb0 <__s2b+0x94>)
 8002b22:	9d08      	ldr	r5, [sp, #32]
 8002b24:	461f      	mov	r7, r3
 8002b26:	3308      	adds	r3, #8
 8002b28:	fb84 4e03 	smull	r4, lr, r4, r3
 8002b2c:	17db      	asrs	r3, r3, #31
 8002b2e:	ebc3 0e6e 	rsb	lr, r3, lr, asr #1
 8002b32:	f1be 0f01 	cmp.w	lr, #1
 8002b36:	4606      	mov	r6, r0
 8002b38:	460c      	mov	r4, r1
 8002b3a:	4690      	mov	r8, r2
 8002b3c:	dd35      	ble.n	8002baa <__s2b+0x8e>
 8002b3e:	2301      	movs	r3, #1
 8002b40:	2100      	movs	r1, #0
 8002b42:	005b      	lsls	r3, r3, #1
 8002b44:	459e      	cmp	lr, r3
 8002b46:	f101 0101 	add.w	r1, r1, #1
 8002b4a:	dcfa      	bgt.n	8002b42 <__s2b+0x26>
 8002b4c:	4630      	mov	r0, r6
 8002b4e:	f7ff ff57 	bl	8002a00 <_Balloc>
 8002b52:	2301      	movs	r3, #1
 8002b54:	f1b8 0f09 	cmp.w	r8, #9
 8002b58:	6145      	str	r5, [r0, #20]
 8002b5a:	6103      	str	r3, [r0, #16]
 8002b5c:	dd21      	ble.n	8002ba2 <__s2b+0x86>
 8002b5e:	f104 0909 	add.w	r9, r4, #9
 8002b62:	464d      	mov	r5, r9
 8002b64:	4444      	add	r4, r8
 8002b66:	f815 3b01 	ldrb.w	r3, [r5], #1
 8002b6a:	4601      	mov	r1, r0
 8002b6c:	3b30      	subs	r3, #48	; 0x30
 8002b6e:	220a      	movs	r2, #10
 8002b70:	4630      	mov	r0, r6
 8002b72:	f7ff ff95 	bl	8002aa0 <__multadd>
 8002b76:	42a5      	cmp	r5, r4
 8002b78:	d1f5      	bne.n	8002b66 <__s2b+0x4a>
 8002b7a:	eb09 0408 	add.w	r4, r9, r8
 8002b7e:	3c08      	subs	r4, #8
 8002b80:	4547      	cmp	r7, r8
 8002b82:	dd0c      	ble.n	8002b9e <__s2b+0x82>
 8002b84:	ebc8 0707 	rsb	r7, r8, r7
 8002b88:	4427      	add	r7, r4
 8002b8a:	f814 3b01 	ldrb.w	r3, [r4], #1
 8002b8e:	4601      	mov	r1, r0
 8002b90:	3b30      	subs	r3, #48	; 0x30
 8002b92:	220a      	movs	r2, #10
 8002b94:	4630      	mov	r0, r6
 8002b96:	f7ff ff83 	bl	8002aa0 <__multadd>
 8002b9a:	42a7      	cmp	r7, r4
 8002b9c:	d1f5      	bne.n	8002b8a <__s2b+0x6e>
 8002b9e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8002ba2:	340a      	adds	r4, #10
 8002ba4:	f04f 0809 	mov.w	r8, #9
 8002ba8:	e7ea      	b.n	8002b80 <__s2b+0x64>
 8002baa:	2100      	movs	r1, #0
 8002bac:	e7ce      	b.n	8002b4c <__s2b+0x30>
 8002bae:	bf00      	nop
 8002bb0:	38e38e39 	.word	0x38e38e39

08002bb4 <__hi0bits>:
 8002bb4:	0c03      	lsrs	r3, r0, #16
 8002bb6:	041b      	lsls	r3, r3, #16
 8002bb8:	b9b3      	cbnz	r3, 8002be8 <__hi0bits+0x34>
 8002bba:	0400      	lsls	r0, r0, #16
 8002bbc:	2310      	movs	r3, #16
 8002bbe:	f010 4f7f 	tst.w	r0, #4278190080	; 0xff000000
 8002bc2:	bf04      	itt	eq
 8002bc4:	0200      	lsleq	r0, r0, #8
 8002bc6:	3308      	addeq	r3, #8
 8002bc8:	f010 4f70 	tst.w	r0, #4026531840	; 0xf0000000
 8002bcc:	bf04      	itt	eq
 8002bce:	0100      	lsleq	r0, r0, #4
 8002bd0:	3304      	addeq	r3, #4
 8002bd2:	f010 4f40 	tst.w	r0, #3221225472	; 0xc0000000
 8002bd6:	bf04      	itt	eq
 8002bd8:	0080      	lsleq	r0, r0, #2
 8002bda:	3302      	addeq	r3, #2
 8002bdc:	2800      	cmp	r0, #0
 8002bde:	db07      	blt.n	8002bf0 <__hi0bits+0x3c>
 8002be0:	0042      	lsls	r2, r0, #1
 8002be2:	d403      	bmi.n	8002bec <__hi0bits+0x38>
 8002be4:	2020      	movs	r0, #32
 8002be6:	4770      	bx	lr
 8002be8:	2300      	movs	r3, #0
 8002bea:	e7e8      	b.n	8002bbe <__hi0bits+0xa>
 8002bec:	1c58      	adds	r0, r3, #1
 8002bee:	4770      	bx	lr
 8002bf0:	4618      	mov	r0, r3
 8002bf2:	4770      	bx	lr

08002bf4 <__lo0bits>:
 8002bf4:	6803      	ldr	r3, [r0, #0]
 8002bf6:	f013 0207 	ands.w	r2, r3, #7
 8002bfa:	d007      	beq.n	8002c0c <__lo0bits+0x18>
 8002bfc:	07d9      	lsls	r1, r3, #31
 8002bfe:	d420      	bmi.n	8002c42 <__lo0bits+0x4e>
 8002c00:	079a      	lsls	r2, r3, #30
 8002c02:	d420      	bmi.n	8002c46 <__lo0bits+0x52>
 8002c04:	089b      	lsrs	r3, r3, #2
 8002c06:	6003      	str	r3, [r0, #0]
 8002c08:	2002      	movs	r0, #2
 8002c0a:	4770      	bx	lr
 8002c0c:	b299      	uxth	r1, r3
 8002c0e:	b909      	cbnz	r1, 8002c14 <__lo0bits+0x20>
 8002c10:	0c1b      	lsrs	r3, r3, #16
 8002c12:	2210      	movs	r2, #16
 8002c14:	f013 0fff 	tst.w	r3, #255	; 0xff
 8002c18:	bf04      	itt	eq
 8002c1a:	0a1b      	lsreq	r3, r3, #8
 8002c1c:	3208      	addeq	r2, #8
 8002c1e:	0719      	lsls	r1, r3, #28
 8002c20:	bf04      	itt	eq
 8002c22:	091b      	lsreq	r3, r3, #4
 8002c24:	3204      	addeq	r2, #4
 8002c26:	0799      	lsls	r1, r3, #30
 8002c28:	bf04      	itt	eq
 8002c2a:	089b      	lsreq	r3, r3, #2
 8002c2c:	3202      	addeq	r2, #2
 8002c2e:	07d9      	lsls	r1, r3, #31
 8002c30:	d404      	bmi.n	8002c3c <__lo0bits+0x48>
 8002c32:	085b      	lsrs	r3, r3, #1
 8002c34:	d101      	bne.n	8002c3a <__lo0bits+0x46>
 8002c36:	2020      	movs	r0, #32
 8002c38:	4770      	bx	lr
 8002c3a:	3201      	adds	r2, #1
 8002c3c:	6003      	str	r3, [r0, #0]
 8002c3e:	4610      	mov	r0, r2
 8002c40:	4770      	bx	lr
 8002c42:	2000      	movs	r0, #0
 8002c44:	4770      	bx	lr
 8002c46:	085b      	lsrs	r3, r3, #1
 8002c48:	6003      	str	r3, [r0, #0]
 8002c4a:	2001      	movs	r0, #1
 8002c4c:	4770      	bx	lr
 8002c4e:	bf00      	nop

08002c50 <__i2b>:
 8002c50:	b510      	push	{r4, lr}
 8002c52:	460c      	mov	r4, r1
 8002c54:	2101      	movs	r1, #1
 8002c56:	f7ff fed3 	bl	8002a00 <_Balloc>
 8002c5a:	2201      	movs	r2, #1
 8002c5c:	6144      	str	r4, [r0, #20]
 8002c5e:	6102      	str	r2, [r0, #16]
 8002c60:	bd10      	pop	{r4, pc}
 8002c62:	bf00      	nop

08002c64 <__multiply>:
 8002c64:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002c68:	690d      	ldr	r5, [r1, #16]
 8002c6a:	6917      	ldr	r7, [r2, #16]
 8002c6c:	42bd      	cmp	r5, r7
 8002c6e:	b083      	sub	sp, #12
 8002c70:	460c      	mov	r4, r1
 8002c72:	4616      	mov	r6, r2
 8002c74:	da04      	bge.n	8002c80 <__multiply+0x1c>
 8002c76:	462a      	mov	r2, r5
 8002c78:	4634      	mov	r4, r6
 8002c7a:	463d      	mov	r5, r7
 8002c7c:	460e      	mov	r6, r1
 8002c7e:	4617      	mov	r7, r2
 8002c80:	68a3      	ldr	r3, [r4, #8]
 8002c82:	6861      	ldr	r1, [r4, #4]
 8002c84:	eb05 0807 	add.w	r8, r5, r7
 8002c88:	4598      	cmp	r8, r3
 8002c8a:	bfc8      	it	gt
 8002c8c:	3101      	addgt	r1, #1
 8002c8e:	f7ff feb7 	bl	8002a00 <_Balloc>
 8002c92:	f100 0c14 	add.w	ip, r0, #20
 8002c96:	eb0c 0988 	add.w	r9, ip, r8, lsl #2
 8002c9a:	45cc      	cmp	ip, r9
 8002c9c:	9000      	str	r0, [sp, #0]
 8002c9e:	d205      	bcs.n	8002cac <__multiply+0x48>
 8002ca0:	4663      	mov	r3, ip
 8002ca2:	2100      	movs	r1, #0
 8002ca4:	f843 1b04 	str.w	r1, [r3], #4
 8002ca8:	4599      	cmp	r9, r3
 8002caa:	d8fb      	bhi.n	8002ca4 <__multiply+0x40>
 8002cac:	f106 0214 	add.w	r2, r6, #20
 8002cb0:	eb02 0a87 	add.w	sl, r2, r7, lsl #2
 8002cb4:	f104 0314 	add.w	r3, r4, #20
 8002cb8:	4552      	cmp	r2, sl
 8002cba:	eb03 0e85 	add.w	lr, r3, r5, lsl #2
 8002cbe:	d254      	bcs.n	8002d6a <__multiply+0x106>
 8002cc0:	f8cd 9004 	str.w	r9, [sp, #4]
 8002cc4:	4699      	mov	r9, r3
 8002cc6:	f852 3b04 	ldr.w	r3, [r2], #4
 8002cca:	fa1f fb83 	uxth.w	fp, r3
 8002cce:	f1bb 0f00 	cmp.w	fp, #0
 8002cd2:	d020      	beq.n	8002d16 <__multiply+0xb2>
 8002cd4:	2000      	movs	r0, #0
 8002cd6:	464f      	mov	r7, r9
 8002cd8:	4666      	mov	r6, ip
 8002cda:	4605      	mov	r5, r0
 8002cdc:	e000      	b.n	8002ce0 <__multiply+0x7c>
 8002cde:	461e      	mov	r6, r3
 8002ce0:	f857 4b04 	ldr.w	r4, [r7], #4
 8002ce4:	6830      	ldr	r0, [r6, #0]
 8002ce6:	b2a1      	uxth	r1, r4
 8002ce8:	b283      	uxth	r3, r0
 8002cea:	fb0b 3101 	mla	r1, fp, r1, r3
 8002cee:	0c24      	lsrs	r4, r4, #16
 8002cf0:	0c00      	lsrs	r0, r0, #16
 8002cf2:	194b      	adds	r3, r1, r5
 8002cf4:	fb0b 0004 	mla	r0, fp, r4, r0
 8002cf8:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8002cfc:	b299      	uxth	r1, r3
 8002cfe:	4633      	mov	r3, r6
 8002d00:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
 8002d04:	45be      	cmp	lr, r7
 8002d06:	ea4f 4510 	mov.w	r5, r0, lsr #16
 8002d0a:	f843 1b04 	str.w	r1, [r3], #4
 8002d0e:	d8e6      	bhi.n	8002cde <__multiply+0x7a>
 8002d10:	6075      	str	r5, [r6, #4]
 8002d12:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8002d16:	ea5f 4b13 	movs.w	fp, r3, lsr #16
 8002d1a:	d020      	beq.n	8002d5e <__multiply+0xfa>
 8002d1c:	f8dc 3000 	ldr.w	r3, [ip]
 8002d20:	4667      	mov	r7, ip
 8002d22:	4618      	mov	r0, r3
 8002d24:	464d      	mov	r5, r9
 8002d26:	2100      	movs	r1, #0
 8002d28:	e000      	b.n	8002d2c <__multiply+0xc8>
 8002d2a:	4637      	mov	r7, r6
 8002d2c:	882c      	ldrh	r4, [r5, #0]
 8002d2e:	0c00      	lsrs	r0, r0, #16
 8002d30:	fb0b 0004 	mla	r0, fp, r4, r0
 8002d34:	4401      	add	r1, r0
 8002d36:	b29c      	uxth	r4, r3
 8002d38:	463e      	mov	r6, r7
 8002d3a:	ea44 4301 	orr.w	r3, r4, r1, lsl #16
 8002d3e:	f846 3b04 	str.w	r3, [r6], #4
 8002d42:	6878      	ldr	r0, [r7, #4]
 8002d44:	f855 4b04 	ldr.w	r4, [r5], #4
 8002d48:	b283      	uxth	r3, r0
 8002d4a:	0c24      	lsrs	r4, r4, #16
 8002d4c:	fb0b 3404 	mla	r4, fp, r4, r3
 8002d50:	eb04 4311 	add.w	r3, r4, r1, lsr #16
 8002d54:	45ae      	cmp	lr, r5
 8002d56:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8002d5a:	d8e6      	bhi.n	8002d2a <__multiply+0xc6>
 8002d5c:	607b      	str	r3, [r7, #4]
 8002d5e:	4592      	cmp	sl, r2
 8002d60:	f10c 0c04 	add.w	ip, ip, #4
 8002d64:	d8af      	bhi.n	8002cc6 <__multiply+0x62>
 8002d66:	f8dd 9004 	ldr.w	r9, [sp, #4]
 8002d6a:	f1b8 0f00 	cmp.w	r8, #0
 8002d6e:	dd0b      	ble.n	8002d88 <__multiply+0x124>
 8002d70:	f859 3c04 	ldr.w	r3, [r9, #-4]
 8002d74:	f1a9 0904 	sub.w	r9, r9, #4
 8002d78:	b11b      	cbz	r3, 8002d82 <__multiply+0x11e>
 8002d7a:	e005      	b.n	8002d88 <__multiply+0x124>
 8002d7c:	f859 3d04 	ldr.w	r3, [r9, #-4]!
 8002d80:	b913      	cbnz	r3, 8002d88 <__multiply+0x124>
 8002d82:	f1b8 0801 	subs.w	r8, r8, #1
 8002d86:	d1f9      	bne.n	8002d7c <__multiply+0x118>
 8002d88:	9800      	ldr	r0, [sp, #0]
 8002d8a:	f8c0 8010 	str.w	r8, [r0, #16]
 8002d8e:	b003      	add	sp, #12
 8002d90:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08002d94 <__pow5mult>:
 8002d94:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8002d98:	f012 0303 	ands.w	r3, r2, #3
 8002d9c:	b083      	sub	sp, #12
 8002d9e:	4614      	mov	r4, r2
 8002da0:	4607      	mov	r7, r0
 8002da2:	d12d      	bne.n	8002e00 <__pow5mult+0x6c>
 8002da4:	460e      	mov	r6, r1
 8002da6:	10a4      	asrs	r4, r4, #2
 8002da8:	d01c      	beq.n	8002de4 <__pow5mult+0x50>
 8002daa:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8002dac:	b38b      	cbz	r3, 8002e12 <__pow5mult+0x7e>
 8002dae:	689d      	ldr	r5, [r3, #8]
 8002db0:	2d00      	cmp	r5, #0
 8002db2:	d039      	beq.n	8002e28 <__pow5mult+0x94>
 8002db4:	07e3      	lsls	r3, r4, #31
 8002db6:	f04f 0900 	mov.w	r9, #0
 8002dba:	d406      	bmi.n	8002dca <__pow5mult+0x36>
 8002dbc:	1064      	asrs	r4, r4, #1
 8002dbe:	d011      	beq.n	8002de4 <__pow5mult+0x50>
 8002dc0:	6828      	ldr	r0, [r5, #0]
 8002dc2:	b198      	cbz	r0, 8002dec <__pow5mult+0x58>
 8002dc4:	4605      	mov	r5, r0
 8002dc6:	07e3      	lsls	r3, r4, #31
 8002dc8:	d5f8      	bpl.n	8002dbc <__pow5mult+0x28>
 8002dca:	4631      	mov	r1, r6
 8002dcc:	462a      	mov	r2, r5
 8002dce:	4638      	mov	r0, r7
 8002dd0:	f7ff ff48 	bl	8002c64 <__multiply>
 8002dd4:	4631      	mov	r1, r6
 8002dd6:	4680      	mov	r8, r0
 8002dd8:	4638      	mov	r0, r7
 8002dda:	f7ff fe45 	bl	8002a68 <_Bfree>
 8002dde:	1064      	asrs	r4, r4, #1
 8002de0:	4646      	mov	r6, r8
 8002de2:	d1ed      	bne.n	8002dc0 <__pow5mult+0x2c>
 8002de4:	4630      	mov	r0, r6
 8002de6:	b003      	add	sp, #12
 8002de8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002dec:	462a      	mov	r2, r5
 8002dee:	4629      	mov	r1, r5
 8002df0:	4638      	mov	r0, r7
 8002df2:	f7ff ff37 	bl	8002c64 <__multiply>
 8002df6:	6028      	str	r0, [r5, #0]
 8002df8:	f8c0 9000 	str.w	r9, [r0]
 8002dfc:	4605      	mov	r5, r0
 8002dfe:	e7e2      	b.n	8002dc6 <__pow5mult+0x32>
 8002e00:	1e5a      	subs	r2, r3, #1
 8002e02:	4d11      	ldr	r5, [pc, #68]	; (8002e48 <__pow5mult+0xb4>)
 8002e04:	2300      	movs	r3, #0
 8002e06:	f855 2022 	ldr.w	r2, [r5, r2, lsl #2]
 8002e0a:	f7ff fe49 	bl	8002aa0 <__multadd>
 8002e0e:	4606      	mov	r6, r0
 8002e10:	e7c9      	b.n	8002da6 <__pow5mult+0x12>
 8002e12:	2010      	movs	r0, #16
 8002e14:	9301      	str	r3, [sp, #4]
 8002e16:	f7ff fd93 	bl	8002940 <malloc>
 8002e1a:	9b01      	ldr	r3, [sp, #4]
 8002e1c:	6278      	str	r0, [r7, #36]	; 0x24
 8002e1e:	6043      	str	r3, [r0, #4]
 8002e20:	6083      	str	r3, [r0, #8]
 8002e22:	6003      	str	r3, [r0, #0]
 8002e24:	60c3      	str	r3, [r0, #12]
 8002e26:	4603      	mov	r3, r0
 8002e28:	2101      	movs	r1, #1
 8002e2a:	4638      	mov	r0, r7
 8002e2c:	9301      	str	r3, [sp, #4]
 8002e2e:	f7ff fde7 	bl	8002a00 <_Balloc>
 8002e32:	9b01      	ldr	r3, [sp, #4]
 8002e34:	4605      	mov	r5, r0
 8002e36:	2101      	movs	r1, #1
 8002e38:	f240 2071 	movw	r0, #625	; 0x271
 8002e3c:	2200      	movs	r2, #0
 8002e3e:	6168      	str	r0, [r5, #20]
 8002e40:	6129      	str	r1, [r5, #16]
 8002e42:	609d      	str	r5, [r3, #8]
 8002e44:	602a      	str	r2, [r5, #0]
 8002e46:	e7b5      	b.n	8002db4 <__pow5mult+0x20>
 8002e48:	0800a8c8 	.word	0x0800a8c8

08002e4c <__lshift>:
 8002e4c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8002e50:	4692      	mov	sl, r2
 8002e52:	690a      	ldr	r2, [r1, #16]
 8002e54:	688b      	ldr	r3, [r1, #8]
 8002e56:	ea4f 146a 	mov.w	r4, sl, asr #5
 8002e5a:	eb04 0902 	add.w	r9, r4, r2
 8002e5e:	f109 0501 	add.w	r5, r9, #1
 8002e62:	429d      	cmp	r5, r3
 8002e64:	460e      	mov	r6, r1
 8002e66:	4680      	mov	r8, r0
 8002e68:	6849      	ldr	r1, [r1, #4]
 8002e6a:	dd04      	ble.n	8002e76 <__lshift+0x2a>
 8002e6c:	005b      	lsls	r3, r3, #1
 8002e6e:	429d      	cmp	r5, r3
 8002e70:	f101 0101 	add.w	r1, r1, #1
 8002e74:	dcfa      	bgt.n	8002e6c <__lshift+0x20>
 8002e76:	4640      	mov	r0, r8
 8002e78:	f7ff fdc2 	bl	8002a00 <_Balloc>
 8002e7c:	2c00      	cmp	r4, #0
 8002e7e:	4607      	mov	r7, r0
 8002e80:	f100 0214 	add.w	r2, r0, #20
 8002e84:	dd33      	ble.n	8002eee <__lshift+0xa2>
 8002e86:	eb02 0384 	add.w	r3, r2, r4, lsl #2
 8002e8a:	2100      	movs	r1, #0
 8002e8c:	f842 1b04 	str.w	r1, [r2], #4
 8002e90:	429a      	cmp	r2, r3
 8002e92:	d1fb      	bne.n	8002e8c <__lshift+0x40>
 8002e94:	6930      	ldr	r0, [r6, #16]
 8002e96:	f106 0114 	add.w	r1, r6, #20
 8002e9a:	f01a 0a1f 	ands.w	sl, sl, #31
 8002e9e:	eb01 0e80 	add.w	lr, r1, r0, lsl #2
 8002ea2:	d01c      	beq.n	8002ede <__lshift+0x92>
 8002ea4:	f1ca 0220 	rsb	r2, sl, #32
 8002ea8:	2400      	movs	r4, #0
 8002eaa:	6808      	ldr	r0, [r1, #0]
 8002eac:	fa00 f00a 	lsl.w	r0, r0, sl
 8002eb0:	4304      	orrs	r4, r0
 8002eb2:	4618      	mov	r0, r3
 8002eb4:	f843 4b04 	str.w	r4, [r3], #4
 8002eb8:	f851 4b04 	ldr.w	r4, [r1], #4
 8002ebc:	458e      	cmp	lr, r1
 8002ebe:	fa24 f402 	lsr.w	r4, r4, r2
 8002ec2:	d8f2      	bhi.n	8002eaa <__lshift+0x5e>
 8002ec4:	6044      	str	r4, [r0, #4]
 8002ec6:	b10c      	cbz	r4, 8002ecc <__lshift+0x80>
 8002ec8:	f109 0502 	add.w	r5, r9, #2
 8002ecc:	3d01      	subs	r5, #1
 8002ece:	4640      	mov	r0, r8
 8002ed0:	613d      	str	r5, [r7, #16]
 8002ed2:	4631      	mov	r1, r6
 8002ed4:	f7ff fdc8 	bl	8002a68 <_Bfree>
 8002ed8:	4638      	mov	r0, r7
 8002eda:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8002ede:	3b04      	subs	r3, #4
 8002ee0:	f851 2b04 	ldr.w	r2, [r1], #4
 8002ee4:	f843 2f04 	str.w	r2, [r3, #4]!
 8002ee8:	458e      	cmp	lr, r1
 8002eea:	d8f9      	bhi.n	8002ee0 <__lshift+0x94>
 8002eec:	e7ee      	b.n	8002ecc <__lshift+0x80>
 8002eee:	4613      	mov	r3, r2
 8002ef0:	e7d0      	b.n	8002e94 <__lshift+0x48>
 8002ef2:	bf00      	nop

08002ef4 <__mcmp>:
 8002ef4:	6902      	ldr	r2, [r0, #16]
 8002ef6:	690b      	ldr	r3, [r1, #16]
 8002ef8:	1ad2      	subs	r2, r2, r3
 8002efa:	d113      	bne.n	8002f24 <__mcmp+0x30>
 8002efc:	009b      	lsls	r3, r3, #2
 8002efe:	3014      	adds	r0, #20
 8002f00:	3114      	adds	r1, #20
 8002f02:	4419      	add	r1, r3
 8002f04:	b410      	push	{r4}
 8002f06:	4403      	add	r3, r0
 8002f08:	e001      	b.n	8002f0e <__mcmp+0x1a>
 8002f0a:	4298      	cmp	r0, r3
 8002f0c:	d20c      	bcs.n	8002f28 <__mcmp+0x34>
 8002f0e:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8002f12:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8002f16:	4294      	cmp	r4, r2
 8002f18:	d0f7      	beq.n	8002f0a <__mcmp+0x16>
 8002f1a:	d309      	bcc.n	8002f30 <__mcmp+0x3c>
 8002f1c:	2001      	movs	r0, #1
 8002f1e:	f85d 4b04 	ldr.w	r4, [sp], #4
 8002f22:	4770      	bx	lr
 8002f24:	4610      	mov	r0, r2
 8002f26:	4770      	bx	lr
 8002f28:	2000      	movs	r0, #0
 8002f2a:	f85d 4b04 	ldr.w	r4, [sp], #4
 8002f2e:	4770      	bx	lr
 8002f30:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002f34:	e7f3      	b.n	8002f1e <__mcmp+0x2a>
 8002f36:	bf00      	nop

08002f38 <__mdiff>:
 8002f38:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8002f3c:	690b      	ldr	r3, [r1, #16]
 8002f3e:	460f      	mov	r7, r1
 8002f40:	6911      	ldr	r1, [r2, #16]
 8002f42:	1a5b      	subs	r3, r3, r1
 8002f44:	2b00      	cmp	r3, #0
 8002f46:	4690      	mov	r8, r2
 8002f48:	d117      	bne.n	8002f7a <__mdiff+0x42>
 8002f4a:	0089      	lsls	r1, r1, #2
 8002f4c:	f107 0214 	add.w	r2, r7, #20
 8002f50:	f108 0514 	add.w	r5, r8, #20
 8002f54:	1853      	adds	r3, r2, r1
 8002f56:	4429      	add	r1, r5
 8002f58:	e001      	b.n	8002f5e <__mdiff+0x26>
 8002f5a:	429a      	cmp	r2, r3
 8002f5c:	d25e      	bcs.n	800301c <__mdiff+0xe4>
 8002f5e:	f853 6d04 	ldr.w	r6, [r3, #-4]!
 8002f62:	f851 4d04 	ldr.w	r4, [r1, #-4]!
 8002f66:	42a6      	cmp	r6, r4
 8002f68:	d0f7      	beq.n	8002f5a <__mdiff+0x22>
 8002f6a:	d260      	bcs.n	800302e <__mdiff+0xf6>
 8002f6c:	463b      	mov	r3, r7
 8002f6e:	4614      	mov	r4, r2
 8002f70:	4647      	mov	r7, r8
 8002f72:	f04f 0901 	mov.w	r9, #1
 8002f76:	4698      	mov	r8, r3
 8002f78:	e006      	b.n	8002f88 <__mdiff+0x50>
 8002f7a:	db5d      	blt.n	8003038 <__mdiff+0x100>
 8002f7c:	f107 0514 	add.w	r5, r7, #20
 8002f80:	f102 0414 	add.w	r4, r2, #20
 8002f84:	f04f 0900 	mov.w	r9, #0
 8002f88:	6879      	ldr	r1, [r7, #4]
 8002f8a:	f7ff fd39 	bl	8002a00 <_Balloc>
 8002f8e:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8002f92:	693e      	ldr	r6, [r7, #16]
 8002f94:	f8c0 900c 	str.w	r9, [r0, #12]
 8002f98:	eb04 0c83 	add.w	ip, r4, r3, lsl #2
 8002f9c:	46a6      	mov	lr, r4
 8002f9e:	eb05 0786 	add.w	r7, r5, r6, lsl #2
 8002fa2:	f100 0414 	add.w	r4, r0, #20
 8002fa6:	2300      	movs	r3, #0
 8002fa8:	f85e 1b04 	ldr.w	r1, [lr], #4
 8002fac:	f855 8b04 	ldr.w	r8, [r5], #4
 8002fb0:	b28a      	uxth	r2, r1
 8002fb2:	fa13 f388 	uxtah	r3, r3, r8
 8002fb6:	0c09      	lsrs	r1, r1, #16
 8002fb8:	1a9a      	subs	r2, r3, r2
 8002fba:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8002fbe:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8002fc2:	b292      	uxth	r2, r2
 8002fc4:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8002fc8:	45f4      	cmp	ip, lr
 8002fca:	f844 2b04 	str.w	r2, [r4], #4
 8002fce:	ea4f 4323 	mov.w	r3, r3, asr #16
 8002fd2:	d8e9      	bhi.n	8002fa8 <__mdiff+0x70>
 8002fd4:	42af      	cmp	r7, r5
 8002fd6:	d917      	bls.n	8003008 <__mdiff+0xd0>
 8002fd8:	46a4      	mov	ip, r4
 8002fda:	4629      	mov	r1, r5
 8002fdc:	f851 eb04 	ldr.w	lr, [r1], #4
 8002fe0:	fa13 f28e 	uxtah	r2, r3, lr
 8002fe4:	1413      	asrs	r3, r2, #16
 8002fe6:	eb03 431e 	add.w	r3, r3, lr, lsr #16
 8002fea:	b292      	uxth	r2, r2
 8002fec:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8002ff0:	428f      	cmp	r7, r1
 8002ff2:	f84c 2b04 	str.w	r2, [ip], #4
 8002ff6:	ea4f 4323 	mov.w	r3, r3, asr #16
 8002ffa:	d8ef      	bhi.n	8002fdc <__mdiff+0xa4>
 8002ffc:	43ed      	mvns	r5, r5
 8002ffe:	443d      	add	r5, r7
 8003000:	f025 0503 	bic.w	r5, r5, #3
 8003004:	3504      	adds	r5, #4
 8003006:	442c      	add	r4, r5
 8003008:	3c04      	subs	r4, #4
 800300a:	b922      	cbnz	r2, 8003016 <__mdiff+0xde>
 800300c:	f854 3d04 	ldr.w	r3, [r4, #-4]!
 8003010:	3e01      	subs	r6, #1
 8003012:	2b00      	cmp	r3, #0
 8003014:	d0fa      	beq.n	800300c <__mdiff+0xd4>
 8003016:	6106      	str	r6, [r0, #16]
 8003018:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800301c:	2100      	movs	r1, #0
 800301e:	f7ff fcef 	bl	8002a00 <_Balloc>
 8003022:	2201      	movs	r2, #1
 8003024:	2300      	movs	r3, #0
 8003026:	6102      	str	r2, [r0, #16]
 8003028:	6143      	str	r3, [r0, #20]
 800302a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800302e:	462c      	mov	r4, r5
 8003030:	f04f 0900 	mov.w	r9, #0
 8003034:	4615      	mov	r5, r2
 8003036:	e7a7      	b.n	8002f88 <__mdiff+0x50>
 8003038:	463b      	mov	r3, r7
 800303a:	f107 0414 	add.w	r4, r7, #20
 800303e:	f108 0514 	add.w	r5, r8, #20
 8003042:	4647      	mov	r7, r8
 8003044:	f04f 0901 	mov.w	r9, #1
 8003048:	4698      	mov	r8, r3
 800304a:	e79d      	b.n	8002f88 <__mdiff+0x50>

0800304c <__ulp>:
 800304c:	4b13      	ldr	r3, [pc, #76]	; (800309c <__ulp+0x50>)
 800304e:	ee10 2a90 	vmov	r2, s1
 8003052:	401a      	ands	r2, r3
 8003054:	f1a2 7350 	sub.w	r3, r2, #54525952	; 0x3400000
 8003058:	2b00      	cmp	r3, #0
 800305a:	dd04      	ble.n	8003066 <__ulp+0x1a>
 800305c:	2000      	movs	r0, #0
 800305e:	4619      	mov	r1, r3
 8003060:	ec41 0b10 	vmov	d0, r0, r1
 8003064:	4770      	bx	lr
 8003066:	425b      	negs	r3, r3
 8003068:	151b      	asrs	r3, r3, #20
 800306a:	2b13      	cmp	r3, #19
 800306c:	dd0d      	ble.n	800308a <__ulp+0x3e>
 800306e:	3b14      	subs	r3, #20
 8003070:	2b1e      	cmp	r3, #30
 8003072:	bfdd      	ittte	le
 8003074:	f1c3 031f 	rsble	r3, r3, #31
 8003078:	2201      	movle	r2, #1
 800307a:	fa02 f303 	lslle.w	r3, r2, r3
 800307e:	2301      	movgt	r3, #1
 8003080:	2100      	movs	r1, #0
 8003082:	4618      	mov	r0, r3
 8003084:	ec41 0b10 	vmov	d0, r0, r1
 8003088:	4770      	bx	lr
 800308a:	f44f 2200 	mov.w	r2, #524288	; 0x80000
 800308e:	2000      	movs	r0, #0
 8003090:	fa42 f103 	asr.w	r1, r2, r3
 8003094:	ec41 0b10 	vmov	d0, r0, r1
 8003098:	4770      	bx	lr
 800309a:	bf00      	nop
 800309c:	7ff00000 	.word	0x7ff00000

080030a0 <__b2d>:
 80030a0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80030a4:	6906      	ldr	r6, [r0, #16]
 80030a6:	f100 0814 	add.w	r8, r0, #20
 80030aa:	eb08 0686 	add.w	r6, r8, r6, lsl #2
 80030ae:	f856 7c04 	ldr.w	r7, [r6, #-4]
 80030b2:	4638      	mov	r0, r7
 80030b4:	f7ff fd7e 	bl	8002bb4 <__hi0bits>
 80030b8:	f1c0 0320 	rsb	r3, r0, #32
 80030bc:	280a      	cmp	r0, #10
 80030be:	600b      	str	r3, [r1, #0]
 80030c0:	f1a6 0304 	sub.w	r3, r6, #4
 80030c4:	dc18      	bgt.n	80030f8 <__b2d+0x58>
 80030c6:	4598      	cmp	r8, r3
 80030c8:	f1c0 020b 	rsb	r2, r0, #11
 80030cc:	bf38      	it	cc
 80030ce:	f856 3c08 	ldrcc.w	r3, [r6, #-8]
 80030d2:	fa27 f102 	lsr.w	r1, r7, r2
 80030d6:	f100 0015 	add.w	r0, r0, #21
 80030da:	f041 557f 	orr.w	r5, r1, #1069547520	; 0x3fc00000
 80030de:	bf34      	ite	cc
 80030e0:	40d3      	lsrcc	r3, r2
 80030e2:	2300      	movcs	r3, #0
 80030e4:	fa07 f000 	lsl.w	r0, r7, r0
 80030e8:	f445 1540 	orr.w	r5, r5, #3145728	; 0x300000
 80030ec:	ea40 0403 	orr.w	r4, r0, r3
 80030f0:	ec45 4b10 	vmov	d0, r4, r5
 80030f4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80030f8:	4598      	cmp	r8, r3
 80030fa:	d220      	bcs.n	800313e <__b2d+0x9e>
 80030fc:	f1b0 030b 	subs.w	r3, r0, #11
 8003100:	f856 2c08 	ldr.w	r2, [r6, #-8]
 8003104:	d01e      	beq.n	8003144 <__b2d+0xa4>
 8003106:	fa07 f003 	lsl.w	r0, r7, r3
 800310a:	f040 577f 	orr.w	r7, r0, #1069547520	; 0x3fc00000
 800310e:	f1c3 0e20 	rsb	lr, r3, #32
 8003112:	f1a6 0108 	sub.w	r1, r6, #8
 8003116:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 800311a:	fa22 f00e 	lsr.w	r0, r2, lr
 800311e:	4588      	cmp	r8, r1
 8003120:	ea47 0500 	orr.w	r5, r7, r0
 8003124:	d220      	bcs.n	8003168 <__b2d+0xc8>
 8003126:	f856 1c0c 	ldr.w	r1, [r6, #-12]
 800312a:	fa02 f003 	lsl.w	r0, r2, r3
 800312e:	fa21 f30e 	lsr.w	r3, r1, lr
 8003132:	4318      	orrs	r0, r3
 8003134:	4604      	mov	r4, r0
 8003136:	ec45 4b10 	vmov	d0, r4, r5
 800313a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800313e:	380b      	subs	r0, #11
 8003140:	d109      	bne.n	8003156 <__b2d+0xb6>
 8003142:	4602      	mov	r2, r0
 8003144:	f047 557f 	orr.w	r5, r7, #1069547520	; 0x3fc00000
 8003148:	f445 1540 	orr.w	r5, r5, #3145728	; 0x300000
 800314c:	4614      	mov	r4, r2
 800314e:	ec45 4b10 	vmov	d0, r4, r5
 8003152:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8003156:	fa07 f000 	lsl.w	r0, r7, r0
 800315a:	f040 557f 	orr.w	r5, r0, #1069547520	; 0x3fc00000
 800315e:	2000      	movs	r0, #0
 8003160:	f445 1540 	orr.w	r5, r5, #3145728	; 0x300000
 8003164:	4604      	mov	r4, r0
 8003166:	e7e6      	b.n	8003136 <__b2d+0x96>
 8003168:	fa02 f003 	lsl.w	r0, r2, r3
 800316c:	4604      	mov	r4, r0
 800316e:	e7e2      	b.n	8003136 <__b2d+0x96>

08003170 <__d2b>:
 8003170:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8003174:	ec57 6b10 	vmov	r6, r7, d0
 8003178:	b083      	sub	sp, #12
 800317a:	4688      	mov	r8, r1
 800317c:	2101      	movs	r1, #1
 800317e:	463c      	mov	r4, r7
 8003180:	f3c7 550a 	ubfx	r5, r7, #20, #11
 8003184:	4617      	mov	r7, r2
 8003186:	f7ff fc3b 	bl	8002a00 <_Balloc>
 800318a:	f3c4 0413 	ubfx	r4, r4, #0, #20
 800318e:	4681      	mov	r9, r0
 8003190:	b10d      	cbz	r5, 8003196 <__d2b+0x26>
 8003192:	f444 1480 	orr.w	r4, r4, #1048576	; 0x100000
 8003196:	9401      	str	r4, [sp, #4]
 8003198:	b31e      	cbz	r6, 80031e2 <__d2b+0x72>
 800319a:	a802      	add	r0, sp, #8
 800319c:	f840 6d08 	str.w	r6, [r0, #-8]!
 80031a0:	f7ff fd28 	bl	8002bf4 <__lo0bits>
 80031a4:	2800      	cmp	r0, #0
 80031a6:	d134      	bne.n	8003212 <__d2b+0xa2>
 80031a8:	e89d 000c 	ldmia.w	sp, {r2, r3}
 80031ac:	f8c9 2014 	str.w	r2, [r9, #20]
 80031b0:	2b00      	cmp	r3, #0
 80031b2:	bf0c      	ite	eq
 80031b4:	2101      	moveq	r1, #1
 80031b6:	2102      	movne	r1, #2
 80031b8:	f8c9 3018 	str.w	r3, [r9, #24]
 80031bc:	f8c9 1010 	str.w	r1, [r9, #16]
 80031c0:	b9dd      	cbnz	r5, 80031fa <__d2b+0x8a>
 80031c2:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80031c6:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80031ca:	f8c8 0000 	str.w	r0, [r8]
 80031ce:	6918      	ldr	r0, [r3, #16]
 80031d0:	f7ff fcf0 	bl	8002bb4 <__hi0bits>
 80031d4:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 80031d8:	6038      	str	r0, [r7, #0]
 80031da:	4648      	mov	r0, r9
 80031dc:	b003      	add	sp, #12
 80031de:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80031e2:	a801      	add	r0, sp, #4
 80031e4:	f7ff fd06 	bl	8002bf4 <__lo0bits>
 80031e8:	9b01      	ldr	r3, [sp, #4]
 80031ea:	f8c9 3014 	str.w	r3, [r9, #20]
 80031ee:	2101      	movs	r1, #1
 80031f0:	3020      	adds	r0, #32
 80031f2:	f8c9 1010 	str.w	r1, [r9, #16]
 80031f6:	2d00      	cmp	r5, #0
 80031f8:	d0e3      	beq.n	80031c2 <__d2b+0x52>
 80031fa:	f2a5 4533 	subw	r5, r5, #1075	; 0x433
 80031fe:	4405      	add	r5, r0
 8003200:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8003204:	f8c8 5000 	str.w	r5, [r8]
 8003208:	6038      	str	r0, [r7, #0]
 800320a:	4648      	mov	r0, r9
 800320c:	b003      	add	sp, #12
 800320e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8003212:	e89d 000c 	ldmia.w	sp, {r2, r3}
 8003216:	f1c0 0120 	rsb	r1, r0, #32
 800321a:	fa03 f101 	lsl.w	r1, r3, r1
 800321e:	430a      	orrs	r2, r1
 8003220:	40c3      	lsrs	r3, r0
 8003222:	9301      	str	r3, [sp, #4]
 8003224:	f8c9 2014 	str.w	r2, [r9, #20]
 8003228:	e7c2      	b.n	80031b0 <__d2b+0x40>
 800322a:	bf00      	nop

0800322c <__ratio>:
 800322c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8003230:	b083      	sub	sp, #12
 8003232:	4688      	mov	r8, r1
 8003234:	4669      	mov	r1, sp
 8003236:	4681      	mov	r9, r0
 8003238:	f7ff ff32 	bl	80030a0 <__b2d>
 800323c:	4640      	mov	r0, r8
 800323e:	a901      	add	r1, sp, #4
 8003240:	ec55 4b10 	vmov	r4, r5, d0
 8003244:	f7ff ff2c 	bl	80030a0 <__b2d>
 8003248:	e89d 000a 	ldmia.w	sp, {r1, r3}
 800324c:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8003250:	f8d8 0010 	ldr.w	r0, [r8, #16]
 8003254:	1ac9      	subs	r1, r1, r3
 8003256:	1a10      	subs	r0, r2, r0
 8003258:	eb01 1340 	add.w	r3, r1, r0, lsl #5
 800325c:	2b00      	cmp	r3, #0
 800325e:	ec57 6b10 	vmov	r6, r7, d0
 8003262:	dd0d      	ble.n	8003280 <__ratio+0x54>
 8003264:	eb05 5103 	add.w	r1, r5, r3, lsl #20
 8003268:	460d      	mov	r5, r1
 800326a:	4632      	mov	r2, r6
 800326c:	463b      	mov	r3, r7
 800326e:	4620      	mov	r0, r4
 8003270:	4629      	mov	r1, r5
 8003272:	f7fd fad9 	bl	8000828 <__aeabi_ddiv>
 8003276:	ec41 0b10 	vmov	d0, r0, r1
 800327a:	b003      	add	sp, #12
 800327c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8003280:	eba7 5903 	sub.w	r9, r7, r3, lsl #20
 8003284:	ee10 6a10 	vmov	r6, s0
 8003288:	464f      	mov	r7, r9
 800328a:	e7ee      	b.n	800326a <__ratio+0x3e>

0800328c <_mprec_log10>:
 800328c:	2817      	cmp	r0, #23
 800328e:	b510      	push	{r4, lr}
 8003290:	4604      	mov	r4, r0
 8003292:	dd0a      	ble.n	80032aa <_mprec_log10+0x1e>
 8003294:	4908      	ldr	r1, [pc, #32]	; (80032b8 <_mprec_log10+0x2c>)
 8003296:	2000      	movs	r0, #0
 8003298:	2200      	movs	r2, #0
 800329a:	4b08      	ldr	r3, [pc, #32]	; (80032bc <_mprec_log10+0x30>)
 800329c:	f7fd f99a 	bl	80005d4 <__aeabi_dmul>
 80032a0:	3c01      	subs	r4, #1
 80032a2:	d1f9      	bne.n	8003298 <_mprec_log10+0xc>
 80032a4:	ec41 0b10 	vmov	d0, r0, r1
 80032a8:	bd10      	pop	{r4, pc}
 80032aa:	4b05      	ldr	r3, [pc, #20]	; (80032c0 <_mprec_log10+0x34>)
 80032ac:	eb03 04c0 	add.w	r4, r3, r0, lsl #3
 80032b0:	ed94 0b04 	vldr	d0, [r4, #16]
 80032b4:	bd10      	pop	{r4, pc}
 80032b6:	bf00      	nop
 80032b8:	3ff00000 	.word	0x3ff00000
 80032bc:	40240000 	.word	0x40240000
 80032c0:	0800a8c8 	.word	0x0800a8c8

080032c4 <__copybits>:
 80032c4:	b470      	push	{r4, r5, r6}
 80032c6:	6914      	ldr	r4, [r2, #16]
 80032c8:	f102 0314 	add.w	r3, r2, #20
 80032cc:	3901      	subs	r1, #1
 80032ce:	114e      	asrs	r6, r1, #5
 80032d0:	eb03 0484 	add.w	r4, r3, r4, lsl #2
 80032d4:	3601      	adds	r6, #1
 80032d6:	42a3      	cmp	r3, r4
 80032d8:	eb00 0686 	add.w	r6, r0, r6, lsl #2
 80032dc:	d20c      	bcs.n	80032f8 <__copybits+0x34>
 80032de:	1f01      	subs	r1, r0, #4
 80032e0:	f853 5b04 	ldr.w	r5, [r3], #4
 80032e4:	f841 5f04 	str.w	r5, [r1, #4]!
 80032e8:	429c      	cmp	r4, r3
 80032ea:	d8f9      	bhi.n	80032e0 <__copybits+0x1c>
 80032ec:	1aa3      	subs	r3, r4, r2
 80032ee:	3b15      	subs	r3, #21
 80032f0:	f023 0303 	bic.w	r3, r3, #3
 80032f4:	3304      	adds	r3, #4
 80032f6:	4418      	add	r0, r3
 80032f8:	4286      	cmp	r6, r0
 80032fa:	d904      	bls.n	8003306 <__copybits+0x42>
 80032fc:	2300      	movs	r3, #0
 80032fe:	f840 3b04 	str.w	r3, [r0], #4
 8003302:	4286      	cmp	r6, r0
 8003304:	d8fb      	bhi.n	80032fe <__copybits+0x3a>
 8003306:	bc70      	pop	{r4, r5, r6}
 8003308:	4770      	bx	lr
 800330a:	bf00      	nop

0800330c <__any_on>:
 800330c:	6903      	ldr	r3, [r0, #16]
 800330e:	114a      	asrs	r2, r1, #5
 8003310:	4293      	cmp	r3, r2
 8003312:	b410      	push	{r4}
 8003314:	f100 0414 	add.w	r4, r0, #20
 8003318:	da10      	bge.n	800333c <__any_on+0x30>
 800331a:	eb04 0383 	add.w	r3, r4, r3, lsl #2
 800331e:	429c      	cmp	r4, r3
 8003320:	d221      	bcs.n	8003366 <__any_on+0x5a>
 8003322:	f853 0c04 	ldr.w	r0, [r3, #-4]
 8003326:	3b04      	subs	r3, #4
 8003328:	b118      	cbz	r0, 8003332 <__any_on+0x26>
 800332a:	e015      	b.n	8003358 <__any_on+0x4c>
 800332c:	f853 2d04 	ldr.w	r2, [r3, #-4]!
 8003330:	b992      	cbnz	r2, 8003358 <__any_on+0x4c>
 8003332:	429c      	cmp	r4, r3
 8003334:	d3fa      	bcc.n	800332c <__any_on+0x20>
 8003336:	f85d 4b04 	ldr.w	r4, [sp], #4
 800333a:	4770      	bx	lr
 800333c:	dd10      	ble.n	8003360 <__any_on+0x54>
 800333e:	f011 011f 	ands.w	r1, r1, #31
 8003342:	d00d      	beq.n	8003360 <__any_on+0x54>
 8003344:	f854 0022 	ldr.w	r0, [r4, r2, lsl #2]
 8003348:	fa20 f301 	lsr.w	r3, r0, r1
 800334c:	fa03 f101 	lsl.w	r1, r3, r1
 8003350:	4288      	cmp	r0, r1
 8003352:	eb04 0382 	add.w	r3, r4, r2, lsl #2
 8003356:	d0e2      	beq.n	800331e <__any_on+0x12>
 8003358:	2001      	movs	r0, #1
 800335a:	f85d 4b04 	ldr.w	r4, [sp], #4
 800335e:	4770      	bx	lr
 8003360:	eb04 0382 	add.w	r3, r4, r2, lsl #2
 8003364:	e7db      	b.n	800331e <__any_on+0x12>
 8003366:	2000      	movs	r0, #0
 8003368:	e7e5      	b.n	8003336 <__any_on+0x2a>
 800336a:	bf00      	nop

0800336c <_calloc_r>:
 800336c:	b538      	push	{r3, r4, r5, lr}
 800336e:	fb02 f401 	mul.w	r4, r2, r1
 8003372:	4621      	mov	r1, r4
 8003374:	f003 fa92 	bl	800689c <_malloc_r>
 8003378:	4605      	mov	r5, r0
 800337a:	b118      	cbz	r0, 8003384 <_calloc_r+0x18>
 800337c:	4622      	mov	r2, r4
 800337e:	2100      	movs	r1, #0
 8003380:	f7fd fc24 	bl	8000bcc <memset>
 8003384:	4628      	mov	r0, r5
 8003386:	bd38      	pop	{r3, r4, r5, pc}
	...
 80033a0:	eba2 0003 	sub.w	r0, r2, r3
 80033a4:	4770      	bx	lr
 80033a6:	bf00      	nop

080033a8 <strcmp>:
 80033a8:	7802      	ldrb	r2, [r0, #0]
 80033aa:	780b      	ldrb	r3, [r1, #0]
 80033ac:	2a01      	cmp	r2, #1
 80033ae:	bf28      	it	cs
 80033b0:	429a      	cmpcs	r2, r3
 80033b2:	d1f5      	bne.n	80033a0 <_calloc_r+0x34>
 80033b4:	e96d 4504 	strd	r4, r5, [sp, #-16]!
 80033b8:	ea40 0401 	orr.w	r4, r0, r1
 80033bc:	e9cd 6702 	strd	r6, r7, [sp, #8]
 80033c0:	f06f 0c00 	mvn.w	ip, #0
 80033c4:	ea4f 7244 	mov.w	r2, r4, lsl #29
 80033c8:	b312      	cbz	r2, 8003410 <strcmp+0x68>
 80033ca:	ea80 0401 	eor.w	r4, r0, r1
 80033ce:	f014 0f07 	tst.w	r4, #7
 80033d2:	d16a      	bne.n	80034aa <strcmp+0x102>
 80033d4:	f000 0407 	and.w	r4, r0, #7
 80033d8:	f020 0007 	bic.w	r0, r0, #7
 80033dc:	f004 0503 	and.w	r5, r4, #3
 80033e0:	f021 0107 	bic.w	r1, r1, #7
 80033e4:	ea4f 05c5 	mov.w	r5, r5, lsl #3
 80033e8:	e8f0 2304 	ldrd	r2, r3, [r0], #16
 80033ec:	f014 0f04 	tst.w	r4, #4
 80033f0:	e8f1 6704 	ldrd	r6, r7, [r1], #16
 80033f4:	fa0c f405 	lsl.w	r4, ip, r5
 80033f8:	ea62 0204 	orn	r2, r2, r4
 80033fc:	ea66 0604 	orn	r6, r6, r4
 8003400:	d00a      	beq.n	8003418 <strcmp+0x70>
 8003402:	ea63 0304 	orn	r3, r3, r4
 8003406:	4662      	mov	r2, ip
 8003408:	ea67 0704 	orn	r7, r7, r4
 800340c:	4666      	mov	r6, ip
 800340e:	e003      	b.n	8003418 <strcmp+0x70>
 8003410:	e8f0 2304 	ldrd	r2, r3, [r0], #16
 8003414:	e8f1 6704 	ldrd	r6, r7, [r1], #16
 8003418:	fa82 f54c 	uadd8	r5, r2, ip
 800341c:	ea82 0406 	eor.w	r4, r2, r6
 8003420:	faa4 f48c 	sel	r4, r4, ip
 8003424:	bb6c      	cbnz	r4, 8003482 <strcmp+0xda>
 8003426:	fa83 f54c 	uadd8	r5, r3, ip
 800342a:	ea83 0507 	eor.w	r5, r3, r7
 800342e:	faa5 f58c 	sel	r5, r5, ip
 8003432:	b995      	cbnz	r5, 800345a <strcmp+0xb2>
 8003434:	e950 2302 	ldrd	r2, r3, [r0, #-8]
 8003438:	e951 6702 	ldrd	r6, r7, [r1, #-8]
 800343c:	fa82 f54c 	uadd8	r5, r2, ip
 8003440:	ea82 0406 	eor.w	r4, r2, r6
 8003444:	faa4 f48c 	sel	r4, r4, ip
 8003448:	fa83 f54c 	uadd8	r5, r3, ip
 800344c:	ea83 0507 	eor.w	r5, r3, r7
 8003450:	faa5 f58c 	sel	r5, r5, ip
 8003454:	4325      	orrs	r5, r4
 8003456:	d0db      	beq.n	8003410 <strcmp+0x68>
 8003458:	b99c      	cbnz	r4, 8003482 <strcmp+0xda>
 800345a:	ba2d      	rev	r5, r5
 800345c:	fab5 f485 	clz	r4, r5
 8003460:	f024 0407 	bic.w	r4, r4, #7
 8003464:	fa27 f104 	lsr.w	r1, r7, r4
 8003468:	e9dd 6702 	ldrd	r6, r7, [sp, #8]
 800346c:	fa23 f304 	lsr.w	r3, r3, r4
 8003470:	f003 00ff 	and.w	r0, r3, #255	; 0xff
 8003474:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8003478:	e8fd 4504 	ldrd	r4, r5, [sp], #16
 800347c:	eba0 0001 	sub.w	r0, r0, r1
 8003480:	4770      	bx	lr
 8003482:	ba24      	rev	r4, r4
 8003484:	fab4 f484 	clz	r4, r4
 8003488:	f024 0407 	bic.w	r4, r4, #7
 800348c:	fa26 f104 	lsr.w	r1, r6, r4
 8003490:	e9dd 6702 	ldrd	r6, r7, [sp, #8]
 8003494:	fa22 f204 	lsr.w	r2, r2, r4
 8003498:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 800349c:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 80034a0:	e8fd 4504 	ldrd	r4, r5, [sp], #16
 80034a4:	eba0 0001 	sub.w	r0, r0, r1
 80034a8:	4770      	bx	lr
 80034aa:	f014 0f03 	tst.w	r4, #3
 80034ae:	d13c      	bne.n	800352a <strcmp+0x182>
 80034b0:	f010 0403 	ands.w	r4, r0, #3
 80034b4:	d128      	bne.n	8003508 <strcmp+0x160>
 80034b6:	f850 2b08 	ldr.w	r2, [r0], #8
 80034ba:	f851 3b08 	ldr.w	r3, [r1], #8
 80034be:	fa82 f54c 	uadd8	r5, r2, ip
 80034c2:	ea82 0503 	eor.w	r5, r2, r3
 80034c6:	faa5 f58c 	sel	r5, r5, ip
 80034ca:	b95d      	cbnz	r5, 80034e4 <strcmp+0x13c>
 80034cc:	f850 2c04 	ldr.w	r2, [r0, #-4]
 80034d0:	f851 3c04 	ldr.w	r3, [r1, #-4]
 80034d4:	fa82 f54c 	uadd8	r5, r2, ip
 80034d8:	ea82 0503 	eor.w	r5, r2, r3
 80034dc:	faa5 f58c 	sel	r5, r5, ip
 80034e0:	2d00      	cmp	r5, #0
 80034e2:	d0e8      	beq.n	80034b6 <strcmp+0x10e>
 80034e4:	ba2d      	rev	r5, r5
 80034e6:	fab5 f485 	clz	r4, r5
 80034ea:	f024 0407 	bic.w	r4, r4, #7
 80034ee:	fa23 f104 	lsr.w	r1, r3, r4
 80034f2:	fa22 f204 	lsr.w	r2, r2, r4
 80034f6:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 80034fa:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 80034fe:	e8fd 4504 	ldrd	r4, r5, [sp], #16
 8003502:	eba0 0001 	sub.w	r0, r0, r1
 8003506:	4770      	bx	lr
 8003508:	ea4f 04c4 	mov.w	r4, r4, lsl #3
 800350c:	f020 0003 	bic.w	r0, r0, #3
 8003510:	f850 2b08 	ldr.w	r2, [r0], #8
 8003514:	f021 0103 	bic.w	r1, r1, #3
 8003518:	f851 3b08 	ldr.w	r3, [r1], #8
 800351c:	fa0c f404 	lsl.w	r4, ip, r4
 8003520:	ea62 0204 	orn	r2, r2, r4
 8003524:	ea63 0304 	orn	r3, r3, r4
 8003528:	e7c9      	b.n	80034be <strcmp+0x116>
 800352a:	f010 0403 	ands.w	r4, r0, #3
 800352e:	d01a      	beq.n	8003566 <strcmp+0x1be>
 8003530:	eba1 0104 	sub.w	r1, r1, r4
 8003534:	f020 0003 	bic.w	r0, r0, #3
 8003538:	07e4      	lsls	r4, r4, #31
 800353a:	f850 2b04 	ldr.w	r2, [r0], #4
 800353e:	d006      	beq.n	800354e <strcmp+0x1a6>
 8003540:	d20f      	bcs.n	8003562 <strcmp+0x1ba>
 8003542:	788b      	ldrb	r3, [r1, #2]
 8003544:	fa5f f4a2 	uxtb.w	r4, r2, ror #16
 8003548:	1ae4      	subs	r4, r4, r3
 800354a:	d106      	bne.n	800355a <strcmp+0x1b2>
 800354c:	b12b      	cbz	r3, 800355a <strcmp+0x1b2>
 800354e:	78cb      	ldrb	r3, [r1, #3]
 8003550:	fa5f f4b2 	uxtb.w	r4, r2, ror #24
 8003554:	1ae4      	subs	r4, r4, r3
 8003556:	d100      	bne.n	800355a <strcmp+0x1b2>
 8003558:	b91b      	cbnz	r3, 8003562 <strcmp+0x1ba>
 800355a:	4620      	mov	r0, r4
 800355c:	f85d 4b10 	ldr.w	r4, [sp], #16
 8003560:	4770      	bx	lr
 8003562:	f101 0104 	add.w	r1, r1, #4
 8003566:	f850 2b04 	ldr.w	r2, [r0], #4
 800356a:	07cc      	lsls	r4, r1, #31
 800356c:	f021 0103 	bic.w	r1, r1, #3
 8003570:	f851 3b04 	ldr.w	r3, [r1], #4
 8003574:	d848      	bhi.n	8003608 <strcmp+0x260>
 8003576:	d224      	bcs.n	80035c2 <strcmp+0x21a>
 8003578:	f022 447f 	bic.w	r4, r2, #4278190080	; 0xff000000
 800357c:	fa82 f54c 	uadd8	r5, r2, ip
 8003580:	ea94 2513 	eors.w	r5, r4, r3, lsr #8
 8003584:	faa5 f58c 	sel	r5, r5, ip
 8003588:	d10a      	bne.n	80035a0 <strcmp+0x1f8>
 800358a:	b965      	cbnz	r5, 80035a6 <strcmp+0x1fe>
 800358c:	f851 3b04 	ldr.w	r3, [r1], #4
 8003590:	ea84 0402 	eor.w	r4, r4, r2
 8003594:	ebb4 6f03 	cmp.w	r4, r3, lsl #24
 8003598:	d10e      	bne.n	80035b8 <strcmp+0x210>
 800359a:	f850 2b04 	ldr.w	r2, [r0], #4
 800359e:	e7eb      	b.n	8003578 <strcmp+0x1d0>
 80035a0:	ea4f 2313 	mov.w	r3, r3, lsr #8
 80035a4:	e055      	b.n	8003652 <strcmp+0x2aa>
 80035a6:	f035 457f 	bics.w	r5, r5, #4278190080	; 0xff000000
 80035aa:	d14d      	bne.n	8003648 <strcmp+0x2a0>
 80035ac:	7808      	ldrb	r0, [r1, #0]
 80035ae:	e8fd 4504 	ldrd	r4, r5, [sp], #16
 80035b2:	f1c0 0000 	rsb	r0, r0, #0
 80035b6:	4770      	bx	lr
 80035b8:	ea4f 6212 	mov.w	r2, r2, lsr #24
 80035bc:	f003 03ff 	and.w	r3, r3, #255	; 0xff
 80035c0:	e047      	b.n	8003652 <strcmp+0x2aa>
 80035c2:	ea02 441c 	and.w	r4, r2, ip, lsr #16
 80035c6:	fa82 f54c 	uadd8	r5, r2, ip
 80035ca:	ea94 4513 	eors.w	r5, r4, r3, lsr #16
 80035ce:	faa5 f58c 	sel	r5, r5, ip
 80035d2:	d10a      	bne.n	80035ea <strcmp+0x242>
 80035d4:	b965      	cbnz	r5, 80035f0 <strcmp+0x248>
 80035d6:	f851 3b04 	ldr.w	r3, [r1], #4
 80035da:	ea84 0402 	eor.w	r4, r4, r2
 80035de:	ebb4 4f03 	cmp.w	r4, r3, lsl #16
 80035e2:	d10c      	bne.n	80035fe <strcmp+0x256>
 80035e4:	f850 2b04 	ldr.w	r2, [r0], #4
 80035e8:	e7eb      	b.n	80035c2 <strcmp+0x21a>
 80035ea:	ea4f 4313 	mov.w	r3, r3, lsr #16
 80035ee:	e030      	b.n	8003652 <strcmp+0x2aa>
 80035f0:	ea15 451c 	ands.w	r5, r5, ip, lsr #16
 80035f4:	d128      	bne.n	8003648 <strcmp+0x2a0>
 80035f6:	880b      	ldrh	r3, [r1, #0]
 80035f8:	ea4f 4212 	mov.w	r2, r2, lsr #16
 80035fc:	e029      	b.n	8003652 <strcmp+0x2aa>
 80035fe:	ea4f 4212 	mov.w	r2, r2, lsr #16
 8003602:	ea03 431c 	and.w	r3, r3, ip, lsr #16
 8003606:	e024      	b.n	8003652 <strcmp+0x2aa>
 8003608:	f002 04ff 	and.w	r4, r2, #255	; 0xff
 800360c:	fa82 f54c 	uadd8	r5, r2, ip
 8003610:	ea94 6513 	eors.w	r5, r4, r3, lsr #24
 8003614:	faa5 f58c 	sel	r5, r5, ip
 8003618:	d10a      	bne.n	8003630 <strcmp+0x288>
 800361a:	b965      	cbnz	r5, 8003636 <strcmp+0x28e>
 800361c:	f851 3b04 	ldr.w	r3, [r1], #4
 8003620:	ea84 0402 	eor.w	r4, r4, r2
 8003624:	ebb4 2f03 	cmp.w	r4, r3, lsl #8
 8003628:	d109      	bne.n	800363e <strcmp+0x296>
 800362a:	f850 2b04 	ldr.w	r2, [r0], #4
 800362e:	e7eb      	b.n	8003608 <strcmp+0x260>
 8003630:	ea4f 6313 	mov.w	r3, r3, lsr #24
 8003634:	e00d      	b.n	8003652 <strcmp+0x2aa>
 8003636:	f015 0fff 	tst.w	r5, #255	; 0xff
 800363a:	d105      	bne.n	8003648 <strcmp+0x2a0>
 800363c:	680b      	ldr	r3, [r1, #0]
 800363e:	ea4f 2212 	mov.w	r2, r2, lsr #8
 8003642:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
 8003646:	e004      	b.n	8003652 <strcmp+0x2aa>
 8003648:	f04f 0000 	mov.w	r0, #0
 800364c:	e8fd 4504 	ldrd	r4, r5, [sp], #16
 8003650:	4770      	bx	lr
 8003652:	ba12      	rev	r2, r2
 8003654:	ba1b      	rev	r3, r3
 8003656:	fa82 f44c 	uadd8	r4, r2, ip
 800365a:	ea82 0403 	eor.w	r4, r2, r3
 800365e:	faa4 f58c 	sel	r5, r4, ip
 8003662:	fab5 f485 	clz	r4, r5
 8003666:	fa02 f204 	lsl.w	r2, r2, r4
 800366a:	fa03 f304 	lsl.w	r3, r3, r4
 800366e:	ea4f 6012 	mov.w	r0, r2, lsr #24
 8003672:	e8fd 4504 	ldrd	r4, r5, [sp], #16
 8003676:	eba0 6013 	sub.w	r0, r0, r3, lsr #24
 800367a:	4770      	bx	lr

0800367c <__gedf2>:
 800367c:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
 8003680:	e006      	b.n	8003690 <__cmpdf2+0x4>
 8003682:	bf00      	nop

08003684 <__ledf2>:
 8003684:	f04f 0c01 	mov.w	ip, #1
 8003688:	e002      	b.n	8003690 <__cmpdf2+0x4>
 800368a:	bf00      	nop

0800368c <__cmpdf2>:
 800368c:	f04f 0c01 	mov.w	ip, #1
 8003690:	f84d cd04 	str.w	ip, [sp, #-4]!
 8003694:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8003698:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 800369c:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80036a0:	bf18      	it	ne
 80036a2:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
 80036a6:	d01b      	beq.n	80036e0 <__cmpdf2+0x54>
 80036a8:	b001      	add	sp, #4
 80036aa:	ea50 0c41 	orrs.w	ip, r0, r1, lsl #1
 80036ae:	bf0c      	ite	eq
 80036b0:	ea52 0c43 	orrseq.w	ip, r2, r3, lsl #1
 80036b4:	ea91 0f03 	teqne	r1, r3
 80036b8:	bf02      	ittt	eq
 80036ba:	ea90 0f02 	teqeq	r0, r2
 80036be:	2000      	moveq	r0, #0
 80036c0:	4770      	bxeq	lr
 80036c2:	f110 0f00 	cmn.w	r0, #0
 80036c6:	ea91 0f03 	teq	r1, r3
 80036ca:	bf58      	it	pl
 80036cc:	4299      	cmppl	r1, r3
 80036ce:	bf08      	it	eq
 80036d0:	4290      	cmpeq	r0, r2
 80036d2:	bf2c      	ite	cs
 80036d4:	17d8      	asrcs	r0, r3, #31
 80036d6:	ea6f 70e3 	mvncc.w	r0, r3, asr #31
 80036da:	f040 0001 	orr.w	r0, r0, #1
 80036de:	4770      	bx	lr
 80036e0:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 80036e4:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 80036e8:	d102      	bne.n	80036f0 <__cmpdf2+0x64>
 80036ea:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 80036ee:	d107      	bne.n	8003700 <__cmpdf2+0x74>
 80036f0:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80036f4:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 80036f8:	d1d6      	bne.n	80036a8 <__cmpdf2+0x1c>
 80036fa:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 80036fe:	d0d3      	beq.n	80036a8 <__cmpdf2+0x1c>
 8003700:	f85d 0b04 	ldr.w	r0, [sp], #4
 8003704:	4770      	bx	lr
 8003706:	bf00      	nop

08003708 <__aeabi_cdrcmple>:
 8003708:	4684      	mov	ip, r0
 800370a:	4610      	mov	r0, r2
 800370c:	4662      	mov	r2, ip
 800370e:	468c      	mov	ip, r1
 8003710:	4619      	mov	r1, r3
 8003712:	4663      	mov	r3, ip
 8003714:	e000      	b.n	8003718 <__aeabi_cdcmpeq>
 8003716:	bf00      	nop

08003718 <__aeabi_cdcmpeq>:
 8003718:	b501      	push	{r0, lr}
 800371a:	f7ff ffb7 	bl	800368c <__cmpdf2>
 800371e:	2800      	cmp	r0, #0
 8003720:	bf48      	it	mi
 8003722:	f110 0f00 	cmnmi.w	r0, #0
 8003726:	bd01      	pop	{r0, pc}

08003728 <__aeabi_dcmpeq>:
 8003728:	f84d ed08 	str.w	lr, [sp, #-8]!
 800372c:	f7ff fff4 	bl	8003718 <__aeabi_cdcmpeq>
 8003730:	bf0c      	ite	eq
 8003732:	2001      	moveq	r0, #1
 8003734:	2000      	movne	r0, #0
 8003736:	f85d fb08 	ldr.w	pc, [sp], #8
 800373a:	bf00      	nop

0800373c <__aeabi_dcmplt>:
 800373c:	f84d ed08 	str.w	lr, [sp, #-8]!
 8003740:	f7ff ffea 	bl	8003718 <__aeabi_cdcmpeq>
 8003744:	bf34      	ite	cc
 8003746:	2001      	movcc	r0, #1
 8003748:	2000      	movcs	r0, #0
 800374a:	f85d fb08 	ldr.w	pc, [sp], #8
 800374e:	bf00      	nop

08003750 <__aeabi_dcmple>:
 8003750:	f84d ed08 	str.w	lr, [sp, #-8]!
 8003754:	f7ff ffe0 	bl	8003718 <__aeabi_cdcmpeq>
 8003758:	bf94      	ite	ls
 800375a:	2001      	movls	r0, #1
 800375c:	2000      	movhi	r0, #0
 800375e:	f85d fb08 	ldr.w	pc, [sp], #8
 8003762:	bf00      	nop

08003764 <__aeabi_dcmpge>:
 8003764:	f84d ed08 	str.w	lr, [sp, #-8]!
 8003768:	f7ff ffce 	bl	8003708 <__aeabi_cdrcmple>
 800376c:	bf94      	ite	ls
 800376e:	2001      	movls	r0, #1
 8003770:	2000      	movhi	r0, #0
 8003772:	f85d fb08 	ldr.w	pc, [sp], #8
 8003776:	bf00      	nop

08003778 <__aeabi_dcmpgt>:
 8003778:	f84d ed08 	str.w	lr, [sp, #-8]!
 800377c:	f7ff ffc4 	bl	8003708 <__aeabi_cdrcmple>
 8003780:	bf34      	ite	cc
 8003782:	2001      	movcc	r0, #1
 8003784:	2000      	movcs	r0, #0
 8003786:	f85d fb08 	ldr.w	pc, [sp], #8
 800378a:	bf00      	nop

0800378c <__aeabi_dcmpun>:
 800378c:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8003790:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8003794:	d102      	bne.n	800379c <__aeabi_dcmpun+0x10>
 8003796:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 800379a:	d10a      	bne.n	80037b2 <__aeabi_dcmpun+0x26>
 800379c:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80037a0:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 80037a4:	d102      	bne.n	80037ac <__aeabi_dcmpun+0x20>
 80037a6:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 80037aa:	d102      	bne.n	80037b2 <__aeabi_dcmpun+0x26>
 80037ac:	f04f 0000 	mov.w	r0, #0
 80037b0:	4770      	bx	lr
 80037b2:	f04f 0001 	mov.w	r0, #1
 80037b6:	4770      	bx	lr

080037b8 <ceilf>:
 80037b8:	ee10 2a10 	vmov	r2, s0
 80037bc:	f022 4100 	bic.w	r1, r2, #2147483648	; 0x80000000
 80037c0:	0dcb      	lsrs	r3, r1, #23
 80037c2:	3b7f      	subs	r3, #127	; 0x7f
 80037c4:	2b16      	cmp	r3, #22
 80037c6:	dc1c      	bgt.n	8003802 <ceilf+0x4a>
 80037c8:	2b00      	cmp	r3, #0
 80037ca:	ee10 0a10 	vmov	r0, s0
 80037ce:	db21      	blt.n	8003814 <ceilf+0x5c>
 80037d0:	4919      	ldr	r1, [pc, #100]	; (8003838 <ceilf+0x80>)
 80037d2:	4119      	asrs	r1, r3
 80037d4:	420a      	tst	r2, r1
 80037d6:	d01c      	beq.n	8003812 <ceilf+0x5a>
 80037d8:	eddf 7a18 	vldr	s15, [pc, #96]	; 800383c <ceilf+0x84>
 80037dc:	ee70 7a27 	vadd.f32	s15, s0, s15
 80037e0:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 80037e4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80037e8:	dd13      	ble.n	8003812 <ceilf+0x5a>
 80037ea:	2a00      	cmp	r2, #0
 80037ec:	dd04      	ble.n	80037f8 <ceilf+0x40>
 80037ee:	f44f 0200 	mov.w	r2, #8388608	; 0x800000
 80037f2:	fa42 f303 	asr.w	r3, r2, r3
 80037f6:	4418      	add	r0, r3
 80037f8:	ea20 0301 	bic.w	r3, r0, r1
 80037fc:	ee00 3a10 	vmov	s0, r3
 8003800:	4770      	bx	lr
 8003802:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
 8003806:	d304      	bcc.n	8003812 <ceilf+0x5a>
 8003808:	ee30 0a00 	vadd.f32	s0, s0, s0
 800380c:	4770      	bx	lr
 800380e:	ed9f 0a0c 	vldr	s0, [pc, #48]	; 8003840 <ceilf+0x88>
 8003812:	4770      	bx	lr
 8003814:	eddf 7a09 	vldr	s15, [pc, #36]	; 800383c <ceilf+0x84>
 8003818:	ee70 7a27 	vadd.f32	s15, s0, s15
 800381c:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8003820:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8003824:	ddf5      	ble.n	8003812 <ceilf+0x5a>
 8003826:	2a00      	cmp	r2, #0
 8003828:	dbf1      	blt.n	800380e <ceilf+0x56>
 800382a:	2900      	cmp	r1, #0
 800382c:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
 8003830:	bf18      	it	ne
 8003832:	eeb0 0a67 	vmovne.f32	s0, s15
 8003836:	4770      	bx	lr
 8003838:	007fffff 	.word	0x007fffff
 800383c:	7149f2ca 	.word	0x7149f2ca
 8003840:	80000000 	.word	0x80000000

08003844 <cosf>:
 8003844:	b500      	push	{lr}
 8003846:	ee10 3a10 	vmov	r3, s0
 800384a:	4a20      	ldr	r2, [pc, #128]	; (80038cc <cosf+0x88>)
 800384c:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
 8003850:	4293      	cmp	r3, r2
 8003852:	b083      	sub	sp, #12
 8003854:	dd19      	ble.n	800388a <cosf+0x46>
 8003856:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
 800385a:	db04      	blt.n	8003866 <cosf+0x22>
 800385c:	ee30 0a40 	vsub.f32	s0, s0, s0
 8003860:	b003      	add	sp, #12
 8003862:	f85d fb04 	ldr.w	pc, [sp], #4
 8003866:	4668      	mov	r0, sp
 8003868:	f000 f87e 	bl	8003968 <__ieee754_rem_pio2f>
 800386c:	f000 0003 	and.w	r0, r0, #3
 8003870:	2801      	cmp	r0, #1
 8003872:	d01a      	beq.n	80038aa <cosf+0x66>
 8003874:	2802      	cmp	r0, #2
 8003876:	d00f      	beq.n	8003898 <cosf+0x54>
 8003878:	b300      	cbz	r0, 80038bc <cosf+0x78>
 800387a:	2001      	movs	r0, #1
 800387c:	eddd 0a01 	vldr	s1, [sp, #4]
 8003880:	ed9d 0a00 	vldr	s0, [sp]
 8003884:	f000 fd56 	bl	8004334 <__kernel_sinf>
 8003888:	e7ea      	b.n	8003860 <cosf+0x1c>
 800388a:	eddf 0a11 	vldr	s1, [pc, #68]	; 80038d0 <cosf+0x8c>
 800388e:	f000 f9b7 	bl	8003c00 <__kernel_cosf>
 8003892:	b003      	add	sp, #12
 8003894:	f85d fb04 	ldr.w	pc, [sp], #4
 8003898:	eddd 0a01 	vldr	s1, [sp, #4]
 800389c:	ed9d 0a00 	vldr	s0, [sp]
 80038a0:	f000 f9ae 	bl	8003c00 <__kernel_cosf>
 80038a4:	eeb1 0a40 	vneg.f32	s0, s0
 80038a8:	e7da      	b.n	8003860 <cosf+0x1c>
 80038aa:	eddd 0a01 	vldr	s1, [sp, #4]
 80038ae:	ed9d 0a00 	vldr	s0, [sp]
 80038b2:	f000 fd3f 	bl	8004334 <__kernel_sinf>
 80038b6:	eeb1 0a40 	vneg.f32	s0, s0
 80038ba:	e7d1      	b.n	8003860 <cosf+0x1c>
 80038bc:	eddd 0a01 	vldr	s1, [sp, #4]
 80038c0:	ed9d 0a00 	vldr	s0, [sp]
 80038c4:	f000 f99c 	bl	8003c00 <__kernel_cosf>
 80038c8:	e7ca      	b.n	8003860 <cosf+0x1c>
 80038ca:	bf00      	nop
 80038cc:	3f490fd8 	.word	0x3f490fd8
 80038d0:	00000000 	.word	0x00000000

080038d4 <sinf>:
 80038d4:	b500      	push	{lr}
 80038d6:	ee10 3a10 	vmov	r3, s0
 80038da:	4a21      	ldr	r2, [pc, #132]	; (8003960 <sinf+0x8c>)
 80038dc:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
 80038e0:	4293      	cmp	r3, r2
 80038e2:	b083      	sub	sp, #12
 80038e4:	dd1a      	ble.n	800391c <sinf+0x48>
 80038e6:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
 80038ea:	db04      	blt.n	80038f6 <sinf+0x22>
 80038ec:	ee30 0a40 	vsub.f32	s0, s0, s0
 80038f0:	b003      	add	sp, #12
 80038f2:	f85d fb04 	ldr.w	pc, [sp], #4
 80038f6:	4668      	mov	r0, sp
 80038f8:	f000 f836 	bl	8003968 <__ieee754_rem_pio2f>
 80038fc:	f000 0003 	and.w	r0, r0, #3
 8003900:	2801      	cmp	r0, #1
 8003902:	d01d      	beq.n	8003940 <sinf+0x6c>
 8003904:	2802      	cmp	r0, #2
 8003906:	d011      	beq.n	800392c <sinf+0x58>
 8003908:	b308      	cbz	r0, 800394e <sinf+0x7a>
 800390a:	eddd 0a01 	vldr	s1, [sp, #4]
 800390e:	ed9d 0a00 	vldr	s0, [sp]
 8003912:	f000 f975 	bl	8003c00 <__kernel_cosf>
 8003916:	eeb1 0a40 	vneg.f32	s0, s0
 800391a:	e7e9      	b.n	80038f0 <sinf+0x1c>
 800391c:	2000      	movs	r0, #0
 800391e:	eddf 0a11 	vldr	s1, [pc, #68]	; 8003964 <sinf+0x90>
 8003922:	f000 fd07 	bl	8004334 <__kernel_sinf>
 8003926:	b003      	add	sp, #12
 8003928:	f85d fb04 	ldr.w	pc, [sp], #4
 800392c:	2001      	movs	r0, #1
 800392e:	eddd 0a01 	vldr	s1, [sp, #4]
 8003932:	ed9d 0a00 	vldr	s0, [sp]
 8003936:	f000 fcfd 	bl	8004334 <__kernel_sinf>
 800393a:	eeb1 0a40 	vneg.f32	s0, s0
 800393e:	e7d7      	b.n	80038f0 <sinf+0x1c>
 8003940:	eddd 0a01 	vldr	s1, [sp, #4]
 8003944:	ed9d 0a00 	vldr	s0, [sp]
 8003948:	f000 f95a 	bl	8003c00 <__kernel_cosf>
 800394c:	e7d0      	b.n	80038f0 <sinf+0x1c>
 800394e:	2001      	movs	r0, #1
 8003950:	eddd 0a01 	vldr	s1, [sp, #4]
 8003954:	ed9d 0a00 	vldr	s0, [sp]
 8003958:	f000 fcec 	bl	8004334 <__kernel_sinf>
 800395c:	e7c8      	b.n	80038f0 <sinf+0x1c>
 800395e:	bf00      	nop
 8003960:	3f490fd8 	.word	0x3f490fd8
 8003964:	00000000 	.word	0x00000000

08003968 <__ieee754_rem_pio2f>:
 8003968:	b570      	push	{r4, r5, r6, lr}
 800396a:	ee10 3a10 	vmov	r3, s0
 800396e:	4a96      	ldr	r2, [pc, #600]	; (8003bc8 <__ieee754_rem_pio2f+0x260>)
 8003970:	f023 4400 	bic.w	r4, r3, #2147483648	; 0x80000000
 8003974:	4294      	cmp	r4, r2
 8003976:	b086      	sub	sp, #24
 8003978:	dd5f      	ble.n	8003a3a <__ieee754_rem_pio2f+0xd2>
 800397a:	4a94      	ldr	r2, [pc, #592]	; (8003bcc <__ieee754_rem_pio2f+0x264>)
 800397c:	4294      	cmp	r4, r2
 800397e:	ee10 6a10 	vmov	r6, s0
 8003982:	dc1b      	bgt.n	80039bc <__ieee754_rem_pio2f+0x54>
 8003984:	2b00      	cmp	r3, #0
 8003986:	eddf 7a92 	vldr	s15, [pc, #584]	; 8003bd0 <__ieee754_rem_pio2f+0x268>
 800398a:	4a92      	ldr	r2, [pc, #584]	; (8003bd4 <__ieee754_rem_pio2f+0x26c>)
 800398c:	f024 040f 	bic.w	r4, r4, #15
 8003990:	f340 80d5 	ble.w	8003b3e <__ieee754_rem_pio2f+0x1d6>
 8003994:	4294      	cmp	r4, r2
 8003996:	ee70 7a67 	vsub.f32	s15, s0, s15
 800399a:	d05e      	beq.n	8003a5a <__ieee754_rem_pio2f+0xf2>
 800399c:	ed9f 7a8e 	vldr	s14, [pc, #568]	; 8003bd8 <__ieee754_rem_pio2f+0x270>
 80039a0:	ee77 6ac7 	vsub.f32	s13, s15, s14
 80039a4:	2301      	movs	r3, #1
 80039a6:	ee77 7ae6 	vsub.f32	s15, s15, s13
 80039aa:	edc0 6a00 	vstr	s13, [r0]
 80039ae:	ee77 7ac7 	vsub.f32	s15, s15, s14
 80039b2:	edc0 7a01 	vstr	s15, [r0, #4]
 80039b6:	4618      	mov	r0, r3
 80039b8:	b006      	add	sp, #24
 80039ba:	bd70      	pop	{r4, r5, r6, pc}
 80039bc:	4a87      	ldr	r2, [pc, #540]	; (8003bdc <__ieee754_rem_pio2f+0x274>)
 80039be:	4294      	cmp	r4, r2
 80039c0:	4605      	mov	r5, r0
 80039c2:	dd5c      	ble.n	8003a7e <__ieee754_rem_pio2f+0x116>
 80039c4:	f1b4 4fff 	cmp.w	r4, #2139095040	; 0x7f800000
 80039c8:	da3f      	bge.n	8003a4a <__ieee754_rem_pio2f+0xe2>
 80039ca:	15e2      	asrs	r2, r4, #23
 80039cc:	3a86      	subs	r2, #134	; 0x86
 80039ce:	eba4 53c2 	sub.w	r3, r4, r2, lsl #23
 80039d2:	ee07 3a10 	vmov	s14, r3
 80039d6:	eefd 6ac7 	vcvt.s32.f32	s13, s14
 80039da:	eddf 7a81 	vldr	s15, [pc, #516]	; 8003be0 <__ieee754_rem_pio2f+0x278>
 80039de:	eef8 6ae6 	vcvt.f32.s32	s13, s13
 80039e2:	ee37 7a66 	vsub.f32	s14, s14, s13
 80039e6:	edcd 6a03 	vstr	s13, [sp, #12]
 80039ea:	ee27 7a27 	vmul.f32	s14, s14, s15
 80039ee:	eefd 6ac7 	vcvt.s32.f32	s13, s14
 80039f2:	eef8 6ae6 	vcvt.f32.s32	s13, s13
 80039f6:	ee37 7a66 	vsub.f32	s14, s14, s13
 80039fa:	edcd 6a04 	vstr	s13, [sp, #16]
 80039fe:	ee67 7a27 	vmul.f32	s15, s14, s15
 8003a02:	eef5 7a40 	vcmp.f32	s15, #0.0
 8003a06:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8003a0a:	edcd 7a05 	vstr	s15, [sp, #20]
 8003a0e:	f040 80b7 	bne.w	8003b80 <__ieee754_rem_pio2f+0x218>
 8003a12:	eef5 6a40 	vcmp.f32	s13, #0.0
 8003a16:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8003a1a:	bf0c      	ite	eq
 8003a1c:	2301      	moveq	r3, #1
 8003a1e:	2302      	movne	r3, #2
 8003a20:	4970      	ldr	r1, [pc, #448]	; (8003be4 <__ieee754_rem_pio2f+0x27c>)
 8003a22:	9101      	str	r1, [sp, #4]
 8003a24:	2102      	movs	r1, #2
 8003a26:	9100      	str	r1, [sp, #0]
 8003a28:	a803      	add	r0, sp, #12
 8003a2a:	4629      	mov	r1, r5
 8003a2c:	f000 f96a 	bl	8003d04 <__kernel_rem_pio2f>
 8003a30:	2e00      	cmp	r6, #0
 8003a32:	f2c0 8097 	blt.w	8003b64 <__ieee754_rem_pio2f+0x1fc>
 8003a36:	4603      	mov	r3, r0
 8003a38:	e004      	b.n	8003a44 <__ieee754_rem_pio2f+0xdc>
 8003a3a:	2200      	movs	r2, #0
 8003a3c:	ed80 0a00 	vstr	s0, [r0]
 8003a40:	6042      	str	r2, [r0, #4]
 8003a42:	2300      	movs	r3, #0
 8003a44:	4618      	mov	r0, r3
 8003a46:	b006      	add	sp, #24
 8003a48:	bd70      	pop	{r4, r5, r6, pc}
 8003a4a:	ee70 7a40 	vsub.f32	s15, s0, s0
 8003a4e:	2300      	movs	r3, #0
 8003a50:	edc0 7a01 	vstr	s15, [r0, #4]
 8003a54:	edc0 7a00 	vstr	s15, [r0]
 8003a58:	e7f4      	b.n	8003a44 <__ieee754_rem_pio2f+0xdc>
 8003a5a:	eddf 6a63 	vldr	s13, [pc, #396]	; 8003be8 <__ieee754_rem_pio2f+0x280>
 8003a5e:	ed9f 7a63 	vldr	s14, [pc, #396]	; 8003bec <__ieee754_rem_pio2f+0x284>
 8003a62:	ee77 7ae6 	vsub.f32	s15, s15, s13
 8003a66:	2301      	movs	r3, #1
 8003a68:	ee77 6ac7 	vsub.f32	s13, s15, s14
 8003a6c:	ee77 7ae6 	vsub.f32	s15, s15, s13
 8003a70:	edc0 6a00 	vstr	s13, [r0]
 8003a74:	ee77 7ac7 	vsub.f32	s15, s15, s14
 8003a78:	edc0 7a01 	vstr	s15, [r0, #4]
 8003a7c:	e7e2      	b.n	8003a44 <__ieee754_rem_pio2f+0xdc>
 8003a7e:	f000 fca1 	bl	80043c4 <fabsf>
 8003a82:	eddf 6a5b 	vldr	s13, [pc, #364]	; 8003bf0 <__ieee754_rem_pio2f+0x288>
 8003a86:	eddf 5a52 	vldr	s11, [pc, #328]	; 8003bd0 <__ieee754_rem_pio2f+0x268>
 8003a8a:	ed9f 7a53 	vldr	s14, [pc, #332]	; 8003bd8 <__ieee754_rem_pio2f+0x270>
 8003a8e:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
 8003a92:	eee0 7a26 	vfma.f32	s15, s0, s13
 8003a96:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8003a9a:	ee17 3a90 	vmov	r3, s15
 8003a9e:	eef8 6ae7 	vcvt.f32.s32	s13, s15
 8003aa2:	2b1f      	cmp	r3, #31
 8003aa4:	eeb1 6a66 	vneg.f32	s12, s13
 8003aa8:	eea6 0a25 	vfma.f32	s0, s12, s11
 8003aac:	ee66 7a87 	vmul.f32	s15, s13, s14
 8003ab0:	dc1d      	bgt.n	8003aee <__ieee754_rem_pio2f+0x186>
 8003ab2:	4950      	ldr	r1, [pc, #320]	; (8003bf4 <__ieee754_rem_pio2f+0x28c>)
 8003ab4:	1e58      	subs	r0, r3, #1
 8003ab6:	f024 02ff 	bic.w	r2, r4, #255	; 0xff
 8003aba:	f851 1020 	ldr.w	r1, [r1, r0, lsl #2]
 8003abe:	428a      	cmp	r2, r1
 8003ac0:	d015      	beq.n	8003aee <__ieee754_rem_pio2f+0x186>
 8003ac2:	ee30 7a67 	vsub.f32	s14, s0, s15
 8003ac6:	ed85 7a00 	vstr	s14, [r5]
 8003aca:	ee30 0a47 	vsub.f32	s0, s0, s14
 8003ace:	2e00      	cmp	r6, #0
 8003ad0:	ee30 0a67 	vsub.f32	s0, s0, s15
 8003ad4:	ed85 0a01 	vstr	s0, [r5, #4]
 8003ad8:	dab4      	bge.n	8003a44 <__ieee754_rem_pio2f+0xdc>
 8003ada:	eeb1 7a47 	vneg.f32	s14, s14
 8003ade:	eeb1 0a40 	vneg.f32	s0, s0
 8003ae2:	ed85 7a00 	vstr	s14, [r5]
 8003ae6:	ed85 0a01 	vstr	s0, [r5, #4]
 8003aea:	425b      	negs	r3, r3
 8003aec:	e7aa      	b.n	8003a44 <__ieee754_rem_pio2f+0xdc>
 8003aee:	ee30 7a67 	vsub.f32	s14, s0, s15
 8003af2:	15e4      	asrs	r4, r4, #23
 8003af4:	ee17 2a10 	vmov	r2, s14
 8003af8:	f3c2 52c7 	ubfx	r2, r2, #23, #8
 8003afc:	1aa2      	subs	r2, r4, r2
 8003afe:	2a08      	cmp	r2, #8
 8003b00:	dde1      	ble.n	8003ac6 <__ieee754_rem_pio2f+0x15e>
 8003b02:	eddf 7a39 	vldr	s15, [pc, #228]	; 8003be8 <__ieee754_rem_pio2f+0x280>
 8003b06:	ed9f 7a39 	vldr	s14, [pc, #228]	; 8003bec <__ieee754_rem_pio2f+0x284>
 8003b0a:	eef0 5a40 	vmov.f32	s11, s0
 8003b0e:	eee6 5a27 	vfma.f32	s11, s12, s15
 8003b12:	ee30 0a65 	vsub.f32	s0, s0, s11
 8003b16:	eea6 0a27 	vfma.f32	s0, s12, s15
 8003b1a:	eef0 7a40 	vmov.f32	s15, s0
 8003b1e:	eed6 7a87 	vfnms.f32	s15, s13, s14
 8003b22:	ee35 7ae7 	vsub.f32	s14, s11, s15
 8003b26:	ee17 2a10 	vmov	r2, s14
 8003b2a:	f3c2 52c7 	ubfx	r2, r2, #23, #8
 8003b2e:	1aa4      	subs	r4, r4, r2
 8003b30:	2c19      	cmp	r4, #25
 8003b32:	dc3a      	bgt.n	8003baa <__ieee754_rem_pio2f+0x242>
 8003b34:	ed85 7a00 	vstr	s14, [r5]
 8003b38:	eeb0 0a65 	vmov.f32	s0, s11
 8003b3c:	e7c5      	b.n	8003aca <__ieee754_rem_pio2f+0x162>
 8003b3e:	4294      	cmp	r4, r2
 8003b40:	ee70 7a27 	vadd.f32	s15, s0, s15
 8003b44:	d01e      	beq.n	8003b84 <__ieee754_rem_pio2f+0x21c>
 8003b46:	ed9f 7a24 	vldr	s14, [pc, #144]	; 8003bd8 <__ieee754_rem_pio2f+0x270>
 8003b4a:	ee77 6a87 	vadd.f32	s13, s15, s14
 8003b4e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8003b52:	ee77 7ae6 	vsub.f32	s15, s15, s13
 8003b56:	edc0 6a00 	vstr	s13, [r0]
 8003b5a:	ee77 7a87 	vadd.f32	s15, s15, s14
 8003b5e:	edc0 7a01 	vstr	s15, [r0, #4]
 8003b62:	e76f      	b.n	8003a44 <__ieee754_rem_pio2f+0xdc>
 8003b64:	ed95 7a00 	vldr	s14, [r5]
 8003b68:	edd5 7a01 	vldr	s15, [r5, #4]
 8003b6c:	eeb1 7a47 	vneg.f32	s14, s14
 8003b70:	eef1 7a67 	vneg.f32	s15, s15
 8003b74:	4243      	negs	r3, r0
 8003b76:	ed85 7a00 	vstr	s14, [r5]
 8003b7a:	edc5 7a01 	vstr	s15, [r5, #4]
 8003b7e:	e761      	b.n	8003a44 <__ieee754_rem_pio2f+0xdc>
 8003b80:	2303      	movs	r3, #3
 8003b82:	e74d      	b.n	8003a20 <__ieee754_rem_pio2f+0xb8>
 8003b84:	eddf 6a18 	vldr	s13, [pc, #96]	; 8003be8 <__ieee754_rem_pio2f+0x280>
 8003b88:	ed9f 7a18 	vldr	s14, [pc, #96]	; 8003bec <__ieee754_rem_pio2f+0x284>
 8003b8c:	ee77 7aa6 	vadd.f32	s15, s15, s13
 8003b90:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8003b94:	ee77 6a87 	vadd.f32	s13, s15, s14
 8003b98:	ee77 7ae6 	vsub.f32	s15, s15, s13
 8003b9c:	edc0 6a00 	vstr	s13, [r0]
 8003ba0:	ee77 7a87 	vadd.f32	s15, s15, s14
 8003ba4:	edc0 7a01 	vstr	s15, [r0, #4]
 8003ba8:	e74c      	b.n	8003a44 <__ieee754_rem_pio2f+0xdc>
 8003baa:	ed9f 7a13 	vldr	s14, [pc, #76]	; 8003bf8 <__ieee754_rem_pio2f+0x290>
 8003bae:	ed9f 5a13 	vldr	s10, [pc, #76]	; 8003bfc <__ieee754_rem_pio2f+0x294>
 8003bb2:	eeb0 0a65 	vmov.f32	s0, s11
 8003bb6:	eea6 0a07 	vfma.f32	s0, s12, s14
 8003bba:	ee75 7ac0 	vsub.f32	s15, s11, s0
 8003bbe:	eee6 7a07 	vfma.f32	s15, s12, s14
 8003bc2:	eed6 7a85 	vfnms.f32	s15, s13, s10
 8003bc6:	e77c      	b.n	8003ac2 <__ieee754_rem_pio2f+0x15a>
 8003bc8:	3f490fd8 	.word	0x3f490fd8
 8003bcc:	4016cbe3 	.word	0x4016cbe3
 8003bd0:	3fc90f80 	.word	0x3fc90f80
 8003bd4:	3fc90fd0 	.word	0x3fc90fd0
 8003bd8:	37354443 	.word	0x37354443
 8003bdc:	43490f80 	.word	0x43490f80
 8003be0:	43800000 	.word	0x43800000
 8003be4:	0800aa70 	.word	0x0800aa70
 8003be8:	37354400 	.word	0x37354400
 8003bec:	2e85a308 	.word	0x2e85a308
 8003bf0:	3f22f984 	.word	0x3f22f984
 8003bf4:	0800a9f0 	.word	0x0800a9f0
 8003bf8:	2e85a300 	.word	0x2e85a300
 8003bfc:	248d3132 	.word	0x248d3132

08003c00 <__kernel_cosf>:
 8003c00:	ee10 3a10 	vmov	r3, s0
 8003c04:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
 8003c08:	f1b3 5f48 	cmp.w	r3, #838860800	; 0x32000000
 8003c0c:	da2c      	bge.n	8003c68 <__kernel_cosf+0x68>
 8003c0e:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8003c12:	ee17 3a90 	vmov	r3, s15
 8003c16:	2b00      	cmp	r3, #0
 8003c18:	d060      	beq.n	8003cdc <__kernel_cosf+0xdc>
 8003c1a:	ee20 7a00 	vmul.f32	s14, s0, s0
 8003c1e:	eddf 4a31 	vldr	s9, [pc, #196]	; 8003ce4 <__kernel_cosf+0xe4>
 8003c22:	ed9f 5a31 	vldr	s10, [pc, #196]	; 8003ce8 <__kernel_cosf+0xe8>
 8003c26:	eddf 5a31 	vldr	s11, [pc, #196]	; 8003cec <__kernel_cosf+0xec>
 8003c2a:	ed9f 6a31 	vldr	s12, [pc, #196]	; 8003cf0 <__kernel_cosf+0xf0>
 8003c2e:	eddf 7a31 	vldr	s15, [pc, #196]	; 8003cf4 <__kernel_cosf+0xf4>
 8003c32:	eddf 6a31 	vldr	s13, [pc, #196]	; 8003cf8 <__kernel_cosf+0xf8>
 8003c36:	eea7 5a24 	vfma.f32	s10, s14, s9
 8003c3a:	eee7 5a05 	vfma.f32	s11, s14, s10
 8003c3e:	eea7 6a25 	vfma.f32	s12, s14, s11
 8003c42:	eee7 7a06 	vfma.f32	s15, s14, s12
 8003c46:	eee7 6a27 	vfma.f32	s13, s14, s15
 8003c4a:	ee66 6a87 	vmul.f32	s13, s13, s14
 8003c4e:	ee60 0ac0 	vnmul.f32	s1, s1, s0
 8003c52:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
 8003c56:	eee7 0a26 	vfma.f32	s1, s14, s13
 8003c5a:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
 8003c5e:	eed7 0a06 	vfnms.f32	s1, s14, s12
 8003c62:	ee37 0ae0 	vsub.f32	s0, s15, s1
 8003c66:	4770      	bx	lr
 8003c68:	ee20 7a00 	vmul.f32	s14, s0, s0
 8003c6c:	eddf 4a1d 	vldr	s9, [pc, #116]	; 8003ce4 <__kernel_cosf+0xe4>
 8003c70:	ed9f 5a1d 	vldr	s10, [pc, #116]	; 8003ce8 <__kernel_cosf+0xe8>
 8003c74:	eddf 5a1d 	vldr	s11, [pc, #116]	; 8003cec <__kernel_cosf+0xec>
 8003c78:	ed9f 6a1d 	vldr	s12, [pc, #116]	; 8003cf0 <__kernel_cosf+0xf0>
 8003c7c:	eddf 7a1d 	vldr	s15, [pc, #116]	; 8003cf4 <__kernel_cosf+0xf4>
 8003c80:	eddf 6a1d 	vldr	s13, [pc, #116]	; 8003cf8 <__kernel_cosf+0xf8>
 8003c84:	4a1d      	ldr	r2, [pc, #116]	; (8003cfc <__kernel_cosf+0xfc>)
 8003c86:	eea7 5a24 	vfma.f32	s10, s14, s9
 8003c8a:	4293      	cmp	r3, r2
 8003c8c:	eee7 5a05 	vfma.f32	s11, s14, s10
 8003c90:	eea7 6a25 	vfma.f32	s12, s14, s11
 8003c94:	eee7 7a06 	vfma.f32	s15, s14, s12
 8003c98:	eee7 6a27 	vfma.f32	s13, s14, s15
 8003c9c:	ee66 6a87 	vmul.f32	s13, s13, s14
 8003ca0:	ddd5      	ble.n	8003c4e <__kernel_cosf+0x4e>
 8003ca2:	4a17      	ldr	r2, [pc, #92]	; (8003d00 <__kernel_cosf+0x100>)
 8003ca4:	4293      	cmp	r3, r2
 8003ca6:	dc14      	bgt.n	8003cd2 <__kernel_cosf+0xd2>
 8003ca8:	f103 437f 	add.w	r3, r3, #4278190080	; 0xff000000
 8003cac:	ee07 3a90 	vmov	s15, r3
 8003cb0:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
 8003cb4:	ee36 6a67 	vsub.f32	s12, s12, s15
 8003cb8:	ee60 0ac0 	vnmul.f32	s1, s1, s0
 8003cbc:	eef6 5a00 	vmov.f32	s11, #96	; 0x3f000000  0.5
 8003cc0:	eee7 0a26 	vfma.f32	s1, s14, s13
 8003cc4:	eed7 7a25 	vfnms.f32	s15, s14, s11
 8003cc8:	ee77 7ae0 	vsub.f32	s15, s15, s1
 8003ccc:	ee36 0a67 	vsub.f32	s0, s12, s15
 8003cd0:	4770      	bx	lr
 8003cd2:	eeb6 6a07 	vmov.f32	s12, #103	; 0x3f380000  0.7187500
 8003cd6:	eef5 7a02 	vmov.f32	s15, #82	; 0x3e900000  0.2812500
 8003cda:	e7ed      	b.n	8003cb8 <__kernel_cosf+0xb8>
 8003cdc:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
 8003ce0:	4770      	bx	lr
 8003ce2:	bf00      	nop
 8003ce4:	ad47d74e 	.word	0xad47d74e
 8003ce8:	310f74f6 	.word	0x310f74f6
 8003cec:	b493f27c 	.word	0xb493f27c
 8003cf0:	37d00d01 	.word	0x37d00d01
 8003cf4:	bab60b61 	.word	0xbab60b61
 8003cf8:	3d2aaaab 	.word	0x3d2aaaab
 8003cfc:	3e999999 	.word	0x3e999999
 8003d00:	3f480000 	.word	0x3f480000

08003d04 <__kernel_rem_pio2f>:
 8003d04:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003d08:	ed2d 8b04 	vpush	{d8-d9}
 8003d0c:	b0d7      	sub	sp, #348	; 0x15c
 8003d0e:	1e5f      	subs	r7, r3, #1
 8003d10:	4ca4      	ldr	r4, [pc, #656]	; (8003fa4 <__kernel_rem_pio2f+0x2a0>)
 8003d12:	9d64      	ldr	r5, [sp, #400]	; 0x190
 8003d14:	9301      	str	r3, [sp, #4]
 8003d16:	1ed3      	subs	r3, r2, #3
 8003d18:	bf48      	it	mi
 8003d1a:	1d13      	addmi	r3, r2, #4
 8003d1c:	f854 6025 	ldr.w	r6, [r4, r5, lsl #2]
 8003d20:	10db      	asrs	r3, r3, #3
 8003d22:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003d26:	f103 0a01 	add.w	sl, r3, #1
 8003d2a:	468b      	mov	fp, r1
 8003d2c:	19f1      	adds	r1, r6, r7
 8003d2e:	9302      	str	r3, [sp, #8]
 8003d30:	4681      	mov	r9, r0
 8003d32:	eba2 0aca 	sub.w	sl, r2, sl, lsl #3
 8003d36:	eba3 0307 	sub.w	r3, r3, r7
 8003d3a:	d414      	bmi.n	8003d66 <__kernel_rem_pio2f+0x62>
 8003d3c:	4419      	add	r1, r3
 8003d3e:	9865      	ldr	r0, [sp, #404]	; 0x194
 8003d40:	3101      	adds	r1, #1
 8003d42:	aa1a      	add	r2, sp, #104	; 0x68
 8003d44:	2b00      	cmp	r3, #0
 8003d46:	bfaa      	itet	ge
 8003d48:	f850 4023 	ldrge.w	r4, [r0, r3, lsl #2]
 8003d4c:	eddf 7a96 	vldrlt	s15, [pc, #600]	; 8003fa8 <__kernel_rem_pio2f+0x2a4>
 8003d50:	ee07 4a90 	vmovge	s15, r4
 8003d54:	f103 0301 	add.w	r3, r3, #1
 8003d58:	bfa8      	it	ge
 8003d5a:	eef8 7ae7 	vcvtge.f32.s32	s15, s15
 8003d5e:	428b      	cmp	r3, r1
 8003d60:	ece2 7a01 	vstmia	r2!, {s15}
 8003d64:	d1ee      	bne.n	8003d44 <__kernel_rem_pio2f+0x40>
 8003d66:	2e00      	cmp	r6, #0
 8003d68:	f2c0 82d4 	blt.w	8004314 <__kernel_rem_pio2f+0x610>
 8003d6c:	9b01      	ldr	r3, [sp, #4]
 8003d6e:	a842      	add	r0, sp, #264	; 0x108
 8003d70:	f106 0e01 	add.w	lr, r6, #1
 8003d74:	009c      	lsls	r4, r3, #2
 8003d76:	eb00 0e8e 	add.w	lr, r0, lr, lsl #2
 8003d7a:	eb09 0104 	add.w	r1, r9, r4
 8003d7e:	463d      	mov	r5, r7
 8003d80:	2f00      	cmp	r7, #0
 8003d82:	f2c0 81bf 	blt.w	8004104 <__kernel_rem_pio2f+0x400>
 8003d86:	ab1a      	add	r3, sp, #104	; 0x68
 8003d88:	eb03 0285 	add.w	r2, r3, r5, lsl #2
 8003d8c:	eddf 7a86 	vldr	s15, [pc, #536]	; 8003fa8 <__kernel_rem_pio2f+0x2a4>
 8003d90:	3204      	adds	r2, #4
 8003d92:	464b      	mov	r3, r9
 8003d94:	ecf3 6a01 	vldmia	r3!, {s13}
 8003d98:	ed32 7a01 	vldmdb	r2!, {s14}
 8003d9c:	428b      	cmp	r3, r1
 8003d9e:	eee6 7a87 	vfma.f32	s15, s13, s14
 8003da2:	d1f7      	bne.n	8003d94 <__kernel_rem_pio2f+0x90>
 8003da4:	ece0 7a01 	vstmia	r0!, {s15}
 8003da8:	4570      	cmp	r0, lr
 8003daa:	f105 0501 	add.w	r5, r5, #1
 8003dae:	d1e7      	bne.n	8003d80 <__kernel_rem_pio2f+0x7c>
 8003db0:	f106 4380 	add.w	r3, r6, #1073741824	; 0x40000000
 8003db4:	3b02      	subs	r3, #2
 8003db6:	009b      	lsls	r3, r3, #2
 8003db8:	aa06      	add	r2, sp, #24
 8003dba:	f103 0804 	add.w	r8, r3, #4
 8003dbe:	eddf 8a7c 	vldr	s17, [pc, #496]	; 8003fb0 <__kernel_rem_pio2f+0x2ac>
 8003dc2:	ed9f 8a7a 	vldr	s16, [pc, #488]	; 8003fac <__kernel_rem_pio2f+0x2a8>
 8003dc6:	f8cd b010 	str.w	fp, [sp, #16]
 8003dca:	4413      	add	r3, r2
 8003dcc:	444c      	add	r4, r9
 8003dce:	4490      	add	r8, r2
 8003dd0:	9303      	str	r3, [sp, #12]
 8003dd2:	4635      	mov	r5, r6
 8003dd4:	ab56      	add	r3, sp, #344	; 0x158
 8003dd6:	eb03 0385 	add.w	r3, r3, r5, lsl #2
 8003dda:	2d00      	cmp	r5, #0
 8003ddc:	ed13 0a14 	vldr	s0, [r3, #-80]	; 0xffffffb0
 8003de0:	dd19      	ble.n	8003e16 <__kernel_rem_pio2f+0x112>
 8003de2:	a942      	add	r1, sp, #264	; 0x108
 8003de4:	eb01 0385 	add.w	r3, r1, r5, lsl #2
 8003de8:	aa05      	add	r2, sp, #20
 8003dea:	ee60 7a28 	vmul.f32	s15, s0, s17
 8003dee:	eeb0 7a40 	vmov.f32	s14, s0
 8003df2:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8003df6:	ed73 6a01 	vldmdb	r3!, {s13}
 8003dfa:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8003dfe:	428b      	cmp	r3, r1
 8003e00:	eea7 7ac8 	vfms.f32	s14, s15, s16
 8003e04:	ee37 0aa6 	vadd.f32	s0, s15, s13
 8003e08:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 8003e0c:	ee17 0a10 	vmov	r0, s14
 8003e10:	f842 0f04 	str.w	r0, [r2, #4]!
 8003e14:	d1e9      	bne.n	8003dea <__kernel_rem_pio2f+0xe6>
 8003e16:	4650      	mov	r0, sl
 8003e18:	f000 fb24 	bl	8004464 <scalbnf>
 8003e1c:	eeb0 9a40 	vmov.f32	s18, s0
 8003e20:	eeb4 0a00 	vmov.f32	s0, #64	; 0x3e000000  0.125
 8003e24:	ee29 0a00 	vmul.f32	s0, s18, s0
 8003e28:	f000 fad4 	bl	80043d4 <floorf>
 8003e2c:	eef2 7a00 	vmov.f32	s15, #32	; 0x41000000  8.0
 8003e30:	eea0 9a67 	vfms.f32	s18, s0, s15
 8003e34:	f1ba 0f00 	cmp.w	sl, #0
 8003e38:	eefd 7ac9 	vcvt.s32.f32	s15, s18
 8003e3c:	ee17 ba90 	vmov	fp, s15
 8003e40:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8003e44:	ee39 9a67 	vsub.f32	s18, s18, s15
 8003e48:	f340 8141 	ble.w	80040ce <__kernel_rem_pio2f+0x3ca>
 8003e4c:	f105 3eff 	add.w	lr, r5, #4294967295	; 0xffffffff
 8003e50:	ab06      	add	r3, sp, #24
 8003e52:	f1ca 0208 	rsb	r2, sl, #8
 8003e56:	f853 302e 	ldr.w	r3, [r3, lr, lsl #2]
 8003e5a:	fa43 f002 	asr.w	r0, r3, r2
 8003e5e:	fa00 f202 	lsl.w	r2, r0, r2
 8003e62:	a906      	add	r1, sp, #24
 8003e64:	1a9b      	subs	r3, r3, r2
 8003e66:	f1ca 0207 	rsb	r2, sl, #7
 8003e6a:	f841 302e 	str.w	r3, [r1, lr, lsl #2]
 8003e6e:	4483      	add	fp, r0
 8003e70:	fa43 f102 	asr.w	r1, r3, r2
 8003e74:	2900      	cmp	r1, #0
 8003e76:	dd37      	ble.n	8003ee8 <__kernel_rem_pio2f+0x1e4>
 8003e78:	2d00      	cmp	r5, #0
 8003e7a:	f10b 0b01 	add.w	fp, fp, #1
 8003e7e:	f340 8224 	ble.w	80042ca <__kernel_rem_pio2f+0x5c6>
 8003e82:	2200      	movs	r2, #0
 8003e84:	4610      	mov	r0, r2
 8003e86:	f10d 0e14 	add.w	lr, sp, #20
 8003e8a:	468c      	mov	ip, r1
 8003e8c:	e008      	b.n	8003ea0 <__kernel_rem_pio2f+0x19c>
 8003e8e:	f5c3 7180 	rsb	r1, r3, #256	; 0x100
 8003e92:	b113      	cbz	r3, 8003e9a <__kernel_rem_pio2f+0x196>
 8003e94:	f8ce 1000 	str.w	r1, [lr]
 8003e98:	2001      	movs	r0, #1
 8003e9a:	3201      	adds	r2, #1
 8003e9c:	4295      	cmp	r5, r2
 8003e9e:	dd0c      	ble.n	8003eba <__kernel_rem_pio2f+0x1b6>
 8003ea0:	f85e 3f04 	ldr.w	r3, [lr, #4]!
 8003ea4:	2800      	cmp	r0, #0
 8003ea6:	d0f2      	beq.n	8003e8e <__kernel_rem_pio2f+0x18a>
 8003ea8:	3201      	adds	r2, #1
 8003eaa:	f1c3 03ff 	rsb	r3, r3, #255	; 0xff
 8003eae:	4295      	cmp	r5, r2
 8003eb0:	f8ce 3000 	str.w	r3, [lr]
 8003eb4:	f04f 0001 	mov.w	r0, #1
 8003eb8:	dcf2      	bgt.n	8003ea0 <__kernel_rem_pio2f+0x19c>
 8003eba:	4661      	mov	r1, ip
 8003ebc:	f1ba 0f00 	cmp.w	sl, #0
 8003ec0:	dd10      	ble.n	8003ee4 <__kernel_rem_pio2f+0x1e0>
 8003ec2:	f1ba 0f01 	cmp.w	sl, #1
 8003ec6:	f000 8109 	beq.w	80040dc <__kernel_rem_pio2f+0x3d8>
 8003eca:	f1ba 0f02 	cmp.w	sl, #2
 8003ece:	d109      	bne.n	8003ee4 <__kernel_rem_pio2f+0x1e0>
 8003ed0:	1e6a      	subs	r2, r5, #1
 8003ed2:	ab06      	add	r3, sp, #24
 8003ed4:	f10d 0e18 	add.w	lr, sp, #24
 8003ed8:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8003edc:	f003 033f 	and.w	r3, r3, #63	; 0x3f
 8003ee0:	f84e 3022 	str.w	r3, [lr, r2, lsl #2]
 8003ee4:	2902      	cmp	r1, #2
 8003ee6:	d065      	beq.n	8003fb4 <__kernel_rem_pio2f+0x2b0>
 8003ee8:	eeb5 9a40 	vcmp.f32	s18, #0.0
 8003eec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8003ef0:	d172      	bne.n	8003fd8 <__kernel_rem_pio2f+0x2d4>
 8003ef2:	f105 3eff 	add.w	lr, r5, #4294967295	; 0xffffffff
 8003ef6:	4576      	cmp	r6, lr
 8003ef8:	dc0f      	bgt.n	8003f1a <__kernel_rem_pio2f+0x216>
 8003efa:	f105 4280 	add.w	r2, r5, #1073741824	; 0x40000000
 8003efe:	3a01      	subs	r2, #1
 8003f00:	ab06      	add	r3, sp, #24
 8003f02:	eb03 0282 	add.w	r2, r3, r2, lsl #2
 8003f06:	2000      	movs	r0, #0
 8003f08:	f852 3904 	ldr.w	r3, [r2], #-4
 8003f0c:	4542      	cmp	r2, r8
 8003f0e:	ea40 0003 	orr.w	r0, r0, r3
 8003f12:	d1f9      	bne.n	8003f08 <__kernel_rem_pio2f+0x204>
 8003f14:	2800      	cmp	r0, #0
 8003f16:	f040 810c 	bne.w	8004132 <__kernel_rem_pio2f+0x42e>
 8003f1a:	1e73      	subs	r3, r6, #1
 8003f1c:	aa06      	add	r2, sp, #24
 8003f1e:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8003f22:	2b00      	cmp	r3, #0
 8003f24:	f040 81ce 	bne.w	80042c4 <__kernel_rem_pio2f+0x5c0>
 8003f28:	9b03      	ldr	r3, [sp, #12]
 8003f2a:	f04f 0e01 	mov.w	lr, #1
 8003f2e:	f853 2904 	ldr.w	r2, [r3], #-4
 8003f32:	f10e 0e01 	add.w	lr, lr, #1
 8003f36:	2a00      	cmp	r2, #0
 8003f38:	d0f9      	beq.n	8003f2e <__kernel_rem_pio2f+0x22a>
 8003f3a:	44ae      	add	lr, r5
 8003f3c:	1c6b      	adds	r3, r5, #1
 8003f3e:	4573      	cmp	r3, lr
 8003f40:	dc2d      	bgt.n	8003f9e <__kernel_rem_pio2f+0x29a>
 8003f42:	9a02      	ldr	r2, [sp, #8]
 8003f44:	1898      	adds	r0, r3, r2
 8003f46:	9a01      	ldr	r2, [sp, #4]
 8003f48:	f100 4080 	add.w	r0, r0, #1073741824	; 0x40000000
 8003f4c:	1951      	adds	r1, r2, r5
 8003f4e:	eb0e 0c02 	add.w	ip, lr, r2
 8003f52:	9a65      	ldr	r2, [sp, #404]	; 0x194
 8003f54:	3801      	subs	r0, #1
 8003f56:	eb02 0080 	add.w	r0, r2, r0, lsl #2
 8003f5a:	aa1a      	add	r2, sp, #104	; 0x68
 8003f5c:	eb02 0181 	add.w	r1, r2, r1, lsl #2
 8003f60:	eb02 0c8c 	add.w	ip, r2, ip, lsl #2
 8003f64:	aa42      	add	r2, sp, #264	; 0x108
 8003f66:	eb02 0583 	add.w	r5, r2, r3, lsl #2
 8003f6a:	f850 3f04 	ldr.w	r3, [r0, #4]!
 8003f6e:	ee07 3a90 	vmov	s15, r3
 8003f72:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8003f76:	2f00      	cmp	r7, #0
 8003f78:	ece1 7a01 	vstmia	r1!, {s15}
 8003f7c:	eddf 7a0a 	vldr	s15, [pc, #40]	; 8003fa8 <__kernel_rem_pio2f+0x2a4>
 8003f80:	db09      	blt.n	8003f96 <__kernel_rem_pio2f+0x292>
 8003f82:	464b      	mov	r3, r9
 8003f84:	460a      	mov	r2, r1
 8003f86:	ecf3 6a01 	vldmia	r3!, {s13}
 8003f8a:	ed32 7a01 	vldmdb	r2!, {s14}
 8003f8e:	42a3      	cmp	r3, r4
 8003f90:	eee6 7a87 	vfma.f32	s15, s13, s14
 8003f94:	d1f7      	bne.n	8003f86 <__kernel_rem_pio2f+0x282>
 8003f96:	4561      	cmp	r1, ip
 8003f98:	ece5 7a01 	vstmia	r5!, {s15}
 8003f9c:	d1e5      	bne.n	8003f6a <__kernel_rem_pio2f+0x266>
 8003f9e:	4675      	mov	r5, lr
 8003fa0:	e718      	b.n	8003dd4 <__kernel_rem_pio2f+0xd0>
 8003fa2:	bf00      	nop
 8003fa4:	0800ad88 	.word	0x0800ad88
 8003fa8:	00000000 	.word	0x00000000
 8003fac:	43800000 	.word	0x43800000
 8003fb0:	3b800000 	.word	0x3b800000
 8003fb4:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
 8003fb8:	ee30 9a49 	vsub.f32	s18, s0, s18
 8003fbc:	2800      	cmp	r0, #0
 8003fbe:	d093      	beq.n	8003ee8 <__kernel_rem_pio2f+0x1e4>
 8003fc0:	4650      	mov	r0, sl
 8003fc2:	9105      	str	r1, [sp, #20]
 8003fc4:	f000 fa4e 	bl	8004464 <scalbnf>
 8003fc8:	ee39 9a40 	vsub.f32	s18, s18, s0
 8003fcc:	9905      	ldr	r1, [sp, #20]
 8003fce:	eeb5 9a40 	vcmp.f32	s18, #0.0
 8003fd2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8003fd6:	d08c      	beq.n	8003ef2 <__kernel_rem_pio2f+0x1ee>
 8003fd8:	eeb0 0a49 	vmov.f32	s0, s18
 8003fdc:	f1ca 0000 	rsb	r0, sl, #0
 8003fe0:	ee09 ba90 	vmov	s19, fp
 8003fe4:	4688      	mov	r8, r1
 8003fe6:	f8dd b010 	ldr.w	fp, [sp, #16]
 8003fea:	f000 fa3b 	bl	8004464 <scalbnf>
 8003fee:	ed1f 7a11 	vldr	s14, [pc, #-68]	; 8003fac <__kernel_rem_pio2f+0x2a8>
 8003ff2:	eeb4 0ac7 	vcmpe.f32	s0, s14
 8003ff6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8003ffa:	f2c0 8171 	blt.w	80042e0 <__kernel_rem_pio2f+0x5dc>
 8003ffe:	ed5f 7a14 	vldr	s15, [pc, #-80]	; 8003fb0 <__kernel_rem_pio2f+0x2ac>
 8004002:	ee60 7a27 	vmul.f32	s15, s0, s15
 8004006:	a906      	add	r1, sp, #24
 8004008:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 800400c:	1c6b      	adds	r3, r5, #1
 800400e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8004012:	f10a 0a08 	add.w	sl, sl, #8
 8004016:	eea7 0ac7 	vfms.f32	s0, s15, s14
 800401a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 800401e:	eebd 0ac0 	vcvt.s32.f32	s0, s0
 8004022:	ee10 2a10 	vmov	r2, s0
 8004026:	f841 2025 	str.w	r2, [r1, r5, lsl #2]
 800402a:	ee17 2a90 	vmov	r2, s15
 800402e:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8004032:	4650      	mov	r0, sl
 8004034:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
 8004038:	9301      	str	r3, [sp, #4]
 800403a:	f000 fa13 	bl	8004464 <scalbnf>
 800403e:	9b01      	ldr	r3, [sp, #4]
 8004040:	2b00      	cmp	r3, #0
 8004042:	f2c0 8159 	blt.w	80042f8 <__kernel_rem_pio2f+0x5f4>
 8004046:	009f      	lsls	r7, r3, #2
 8004048:	ac42      	add	r4, sp, #264	; 0x108
 800404a:	aa06      	add	r2, sp, #24
 800404c:	1d38      	adds	r0, r7, #4
 800404e:	eb04 0e07 	add.w	lr, r4, r7
 8004052:	ed1f 7a29 	vldr	s14, [pc, #-164]	; 8003fb0 <__kernel_rem_pio2f+0x2ac>
 8004056:	4410      	add	r0, r2
 8004058:	f10e 0204 	add.w	r2, lr, #4
 800405c:	ed70 7a01 	vldmdb	r0!, {s15}
 8004060:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8004064:	ee67 7a80 	vmul.f32	s15, s15, s0
 8004068:	ee20 0a07 	vmul.f32	s0, s0, s14
 800406c:	ed62 7a01 	vstmdb	r2!, {s15}
 8004070:	42a2      	cmp	r2, r4
 8004072:	d1f3      	bne.n	800405c <__kernel_rem_pio2f+0x358>
 8004074:	f50d 7c82 	add.w	ip, sp, #260	; 0x104
 8004078:	2500      	movs	r5, #0
 800407a:	2e00      	cmp	r6, #0
 800407c:	f2c0 8114 	blt.w	80042a8 <__kernel_rem_pio2f+0x5a4>
 8004080:	48a9      	ldr	r0, [pc, #676]	; (8004328 <__kernel_rem_pio2f+0x624>)
 8004082:	ed9f 7aaa 	vldr	s14, [pc, #680]	; 800432c <__kernel_rem_pio2f+0x628>
 8004086:	eddf 7aaa 	vldr	s15, [pc, #680]	; 8004330 <__kernel_rem_pio2f+0x62c>
 800408a:	4671      	mov	r1, lr
 800408c:	2200      	movs	r2, #0
 800408e:	e004      	b.n	800409a <__kernel_rem_pio2f+0x396>
 8004090:	4295      	cmp	r5, r2
 8004092:	db09      	blt.n	80040a8 <__kernel_rem_pio2f+0x3a4>
 8004094:	3004      	adds	r0, #4
 8004096:	ed90 7a00 	vldr	s14, [r0]
 800409a:	ecf1 6a01 	vldmia	r1!, {s13}
 800409e:	3201      	adds	r2, #1
 80040a0:	4296      	cmp	r6, r2
 80040a2:	eee6 7a87 	vfma.f32	s15, s13, s14
 80040a6:	daf3      	bge.n	8004090 <__kernel_rem_pio2f+0x38c>
 80040a8:	f1ae 0e04 	sub.w	lr, lr, #4
 80040ac:	aa56      	add	r2, sp, #344	; 0x158
 80040ae:	eb02 0285 	add.w	r2, r2, r5, lsl #2
 80040b2:	45f4      	cmp	ip, lr
 80040b4:	ed42 7a28 	vstr	s15, [r2, #-160]	; 0xffffff60
 80040b8:	f105 0501 	add.w	r5, r5, #1
 80040bc:	d1dd      	bne.n	800407a <__kernel_rem_pio2f+0x376>
 80040be:	9a64      	ldr	r2, [sp, #400]	; 0x190
 80040c0:	2a03      	cmp	r2, #3
 80040c2:	f200 80ae 	bhi.w	8004222 <__kernel_rem_pio2f+0x51e>
 80040c6:	e8df f002 	tbb	[pc, r2]
 80040ca:	b5dc      	.short	0xb5dc
 80040cc:	50b5      	.short	0x50b5
 80040ce:	d110      	bne.n	80040f2 <__kernel_rem_pio2f+0x3ee>
 80040d0:	1e6b      	subs	r3, r5, #1
 80040d2:	aa06      	add	r2, sp, #24
 80040d4:	f852 1023 	ldr.w	r1, [r2, r3, lsl #2]
 80040d8:	1209      	asrs	r1, r1, #8
 80040da:	e6cb      	b.n	8003e74 <__kernel_rem_pio2f+0x170>
 80040dc:	1e6a      	subs	r2, r5, #1
 80040de:	ab06      	add	r3, sp, #24
 80040e0:	f10d 0e18 	add.w	lr, sp, #24
 80040e4:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 80040e8:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 80040ec:	f84e 3022 	str.w	r3, [lr, r2, lsl #2]
 80040f0:	e6f8      	b.n	8003ee4 <__kernel_rem_pio2f+0x1e0>
 80040f2:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
 80040f6:	eeb4 9ae7 	vcmpe.f32	s18, s15
 80040fa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80040fe:	da0b      	bge.n	8004118 <__kernel_rem_pio2f+0x414>
 8004100:	2100      	movs	r1, #0
 8004102:	e6f1      	b.n	8003ee8 <__kernel_rem_pio2f+0x1e4>
 8004104:	eddf 7a8a 	vldr	s15, [pc, #552]	; 8004330 <__kernel_rem_pio2f+0x62c>
 8004108:	ece0 7a01 	vstmia	r0!, {s15}
 800410c:	4570      	cmp	r0, lr
 800410e:	f105 0501 	add.w	r5, r5, #1
 8004112:	f47f ae35 	bne.w	8003d80 <__kernel_rem_pio2f+0x7c>
 8004116:	e64b      	b.n	8003db0 <__kernel_rem_pio2f+0xac>
 8004118:	2d00      	cmp	r5, #0
 800411a:	f10b 0b01 	add.w	fp, fp, #1
 800411e:	bfc8      	it	gt
 8004120:	2102      	movgt	r1, #2
 8004122:	f73f aeae 	bgt.w	8003e82 <__kernel_rem_pio2f+0x17e>
 8004126:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
 800412a:	ee37 9ac9 	vsub.f32	s18, s15, s18
 800412e:	2102      	movs	r1, #2
 8004130:	e6da      	b.n	8003ee8 <__kernel_rem_pio2f+0x1e4>
 8004132:	aa06      	add	r2, sp, #24
 8004134:	ee09 ba90 	vmov	s19, fp
 8004138:	f852 202e 	ldr.w	r2, [r2, lr, lsl #2]
 800413c:	f8dd b010 	ldr.w	fp, [sp, #16]
 8004140:	4673      	mov	r3, lr
 8004142:	4688      	mov	r8, r1
 8004144:	f1aa 0a08 	sub.w	sl, sl, #8
 8004148:	2a00      	cmp	r2, #0
 800414a:	f47f af72 	bne.w	8004032 <__kernel_rem_pio2f+0x32e>
 800414e:	f10e 4280 	add.w	r2, lr, #1073741824	; 0x40000000
 8004152:	3a01      	subs	r2, #1
 8004154:	a906      	add	r1, sp, #24
 8004156:	eb01 0282 	add.w	r2, r1, r2, lsl #2
 800415a:	f852 1904 	ldr.w	r1, [r2], #-4
 800415e:	3b01      	subs	r3, #1
 8004160:	f1aa 0a08 	sub.w	sl, sl, #8
 8004164:	2900      	cmp	r1, #0
 8004166:	d0f8      	beq.n	800415a <__kernel_rem_pio2f+0x456>
 8004168:	e763      	b.n	8004032 <__kernel_rem_pio2f+0x32e>
 800416a:	2b00      	cmp	r3, #0
 800416c:	f340 80c1 	ble.w	80042f2 <__kernel_rem_pio2f+0x5ee>
 8004170:	f103 4280 	add.w	r2, r3, #1073741824	; 0x40000000
 8004174:	3a01      	subs	r2, #1
 8004176:	0090      	lsls	r0, r2, #2
 8004178:	a956      	add	r1, sp, #344	; 0x158
 800417a:	19cd      	adds	r5, r1, r7
 800417c:	1d04      	adds	r4, r0, #4
 800417e:	a92e      	add	r1, sp, #184	; 0xb8
 8004180:	3008      	adds	r0, #8
 8004182:	ed15 7a28 	vldr	s14, [r5, #-160]	; 0xffffff60
 8004186:	440c      	add	r4, r1
 8004188:	4408      	add	r0, r1
 800418a:	ad2f      	add	r5, sp, #188	; 0xbc
 800418c:	ed74 7a01 	vldmdb	r4!, {s15}
 8004190:	ee77 6a87 	vadd.f32	s13, s15, s14
 8004194:	ee77 7ae6 	vsub.f32	s15, s15, s13
 8004198:	ee77 7a87 	vadd.f32	s15, s15, s14
 800419c:	eeb0 7a66 	vmov.f32	s14, s13
 80041a0:	ed60 7a01 	vstmdb	r0!, {s15}
 80041a4:	42a8      	cmp	r0, r5
 80041a6:	edc4 6a00 	vstr	s13, [r4]
 80041aa:	d1ef      	bne.n	800418c <__kernel_rem_pio2f+0x488>
 80041ac:	2b01      	cmp	r3, #1
 80041ae:	f340 80a0 	ble.w	80042f2 <__kernel_rem_pio2f+0x5ee>
 80041b2:	0092      	lsls	r2, r2, #2
 80041b4:	ab56      	add	r3, sp, #344	; 0x158
 80041b6:	441f      	add	r7, r3
 80041b8:	f102 0008 	add.w	r0, r2, #8
 80041bc:	ab2e      	add	r3, sp, #184	; 0xb8
 80041be:	4418      	add	r0, r3
 80041c0:	3204      	adds	r2, #4
 80041c2:	ed17 7a28 	vldr	s14, [r7, #-160]	; 0xffffff60
 80041c6:	4413      	add	r3, r2
 80041c8:	ac30      	add	r4, sp, #192	; 0xc0
 80041ca:	4602      	mov	r2, r0
 80041cc:	ed73 7a01 	vldmdb	r3!, {s15}
 80041d0:	ee77 6a27 	vadd.f32	s13, s14, s15
 80041d4:	ee77 7ae6 	vsub.f32	s15, s15, s13
 80041d8:	ee77 7a87 	vadd.f32	s15, s15, s14
 80041dc:	eeb0 7a66 	vmov.f32	s14, s13
 80041e0:	ed62 7a01 	vstmdb	r2!, {s15}
 80041e4:	4294      	cmp	r4, r2
 80041e6:	edc3 6a00 	vstr	s13, [r3]
 80041ea:	d1ef      	bne.n	80041cc <__kernel_rem_pio2f+0x4c8>
 80041ec:	eddf 7a50 	vldr	s15, [pc, #320]	; 8004330 <__kernel_rem_pio2f+0x62c>
 80041f0:	ed30 7a01 	vldmdb	r0!, {s14}
 80041f4:	4284      	cmp	r4, r0
 80041f6:	ee77 7a87 	vadd.f32	s15, s15, s14
 80041fa:	d1f9      	bne.n	80041f0 <__kernel_rem_pio2f+0x4ec>
 80041fc:	4643      	mov	r3, r8
 80041fe:	2b00      	cmp	r3, #0
 8004200:	d065      	beq.n	80042ce <__kernel_rem_pio2f+0x5ca>
 8004202:	eddd 6a2e 	vldr	s13, [sp, #184]	; 0xb8
 8004206:	ed9d 7a2f 	vldr	s14, [sp, #188]	; 0xbc
 800420a:	eef1 7a67 	vneg.f32	s15, s15
 800420e:	eef1 6a66 	vneg.f32	s13, s13
 8004212:	eeb1 7a47 	vneg.f32	s14, s14
 8004216:	edcb 7a02 	vstr	s15, [fp, #8]
 800421a:	edcb 6a00 	vstr	s13, [fp]
 800421e:	ed8b 7a01 	vstr	s14, [fp, #4]
 8004222:	ee19 3a90 	vmov	r3, s19
 8004226:	f003 0007 	and.w	r0, r3, #7
 800422a:	b057      	add	sp, #348	; 0x15c
 800422c:	ecbd 8b04 	vpop	{d8-d9}
 8004230:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004234:	1d3a      	adds	r2, r7, #4
 8004236:	a82e      	add	r0, sp, #184	; 0xb8
 8004238:	eddf 7a3d 	vldr	s15, [pc, #244]	; 8004330 <__kernel_rem_pio2f+0x62c>
 800423c:	4402      	add	r2, r0
 800423e:	ed32 7a01 	vldmdb	r2!, {s14}
 8004242:	4282      	cmp	r2, r0
 8004244:	ee77 7a87 	vadd.f32	s15, s15, s14
 8004248:	d1f9      	bne.n	800423e <__kernel_rem_pio2f+0x53a>
 800424a:	4642      	mov	r2, r8
 800424c:	b37a      	cbz	r2, 80042ae <__kernel_rem_pio2f+0x5aa>
 800424e:	eddd 6a2e 	vldr	s13, [sp, #184]	; 0xb8
 8004252:	eeb1 7a67 	vneg.f32	s14, s15
 8004256:	2b00      	cmp	r3, #0
 8004258:	ee76 7ae7 	vsub.f32	s15, s13, s15
 800425c:	ed8b 7a00 	vstr	s14, [fp]
 8004260:	dd0a      	ble.n	8004278 <__kernel_rem_pio2f+0x574>
 8004262:	a82f      	add	r0, sp, #188	; 0xbc
 8004264:	2201      	movs	r2, #1
 8004266:	ecb0 7a01 	vldmia	r0!, {s14}
 800426a:	3201      	adds	r2, #1
 800426c:	4293      	cmp	r3, r2
 800426e:	ee77 7a87 	vadd.f32	s15, s15, s14
 8004272:	daf8      	bge.n	8004266 <__kernel_rem_pio2f+0x562>
 8004274:	4643      	mov	r3, r8
 8004276:	b10b      	cbz	r3, 800427c <__kernel_rem_pio2f+0x578>
 8004278:	eef1 7a67 	vneg.f32	s15, s15
 800427c:	edcb 7a01 	vstr	s15, [fp, #4]
 8004280:	e7cf      	b.n	8004222 <__kernel_rem_pio2f+0x51e>
 8004282:	aa56      	add	r2, sp, #344	; 0x158
 8004284:	443a      	add	r2, r7
 8004286:	eddf 7a2a 	vldr	s15, [pc, #168]	; 8004330 <__kernel_rem_pio2f+0x62c>
 800428a:	3a9c      	subs	r2, #156	; 0x9c
 800428c:	ed32 7a01 	vldmdb	r2!, {s14}
 8004290:	3b01      	subs	r3, #1
 8004292:	1c59      	adds	r1, r3, #1
 8004294:	ee77 7a87 	vadd.f32	s15, s15, s14
 8004298:	d1f8      	bne.n	800428c <__kernel_rem_pio2f+0x588>
 800429a:	4643      	mov	r3, r8
 800429c:	b10b      	cbz	r3, 80042a2 <__kernel_rem_pio2f+0x59e>
 800429e:	eef1 7a67 	vneg.f32	s15, s15
 80042a2:	edcb 7a00 	vstr	s15, [fp]
 80042a6:	e7bc      	b.n	8004222 <__kernel_rem_pio2f+0x51e>
 80042a8:	eddf 7a21 	vldr	s15, [pc, #132]	; 8004330 <__kernel_rem_pio2f+0x62c>
 80042ac:	e6fc      	b.n	80040a8 <__kernel_rem_pio2f+0x3a4>
 80042ae:	ed9d 7a2e 	vldr	s14, [sp, #184]	; 0xb8
 80042b2:	edcb 7a00 	vstr	s15, [fp]
 80042b6:	2b00      	cmp	r3, #0
 80042b8:	ee77 7a67 	vsub.f32	s15, s14, s15
 80042bc:	dcd1      	bgt.n	8004262 <__kernel_rem_pio2f+0x55e>
 80042be:	edcb 7a01 	vstr	s15, [fp, #4]
 80042c2:	e7ae      	b.n	8004222 <__kernel_rem_pio2f+0x51e>
 80042c4:	f04f 0e01 	mov.w	lr, #1
 80042c8:	e637      	b.n	8003f3a <__kernel_rem_pio2f+0x236>
 80042ca:	2000      	movs	r0, #0
 80042cc:	e5f6      	b.n	8003ebc <__kernel_rem_pio2f+0x1b8>
 80042ce:	9a2e      	ldr	r2, [sp, #184]	; 0xb8
 80042d0:	9b2f      	ldr	r3, [sp, #188]	; 0xbc
 80042d2:	edcb 7a02 	vstr	s15, [fp, #8]
 80042d6:	f8cb 2000 	str.w	r2, [fp]
 80042da:	f8cb 3004 	str.w	r3, [fp, #4]
 80042de:	e7a0      	b.n	8004222 <__kernel_rem_pio2f+0x51e>
 80042e0:	eebd 0ac0 	vcvt.s32.f32	s0, s0
 80042e4:	a906      	add	r1, sp, #24
 80042e6:	ee10 2a10 	vmov	r2, s0
 80042ea:	462b      	mov	r3, r5
 80042ec:	f841 2025 	str.w	r2, [r1, r5, lsl #2]
 80042f0:	e69f      	b.n	8004032 <__kernel_rem_pio2f+0x32e>
 80042f2:	eddf 7a0f 	vldr	s15, [pc, #60]	; 8004330 <__kernel_rem_pio2f+0x62c>
 80042f6:	e781      	b.n	80041fc <__kernel_rem_pio2f+0x4f8>
 80042f8:	9a64      	ldr	r2, [sp, #400]	; 0x190
 80042fa:	2a03      	cmp	r2, #3
 80042fc:	d891      	bhi.n	8004222 <__kernel_rem_pio2f+0x51e>
 80042fe:	a101      	add	r1, pc, #4	; (adr r1, 8004304 <__kernel_rem_pio2f+0x600>)
 8004300:	f851 f022 	ldr.w	pc, [r1, r2, lsl #2]
 8004304:	08004321 	.word	0x08004321
 8004308:	0800431b 	.word	0x0800431b
 800430c:	0800431b 	.word	0x0800431b
 8004310:	080042f3 	.word	0x080042f3
 8004314:	9b01      	ldr	r3, [sp, #4]
 8004316:	009c      	lsls	r4, r3, #2
 8004318:	e54a      	b.n	8003db0 <__kernel_rem_pio2f+0xac>
 800431a:	eddf 7a05 	vldr	s15, [pc, #20]	; 8004330 <__kernel_rem_pio2f+0x62c>
 800431e:	e794      	b.n	800424a <__kernel_rem_pio2f+0x546>
 8004320:	eddf 7a03 	vldr	s15, [pc, #12]	; 8004330 <__kernel_rem_pio2f+0x62c>
 8004324:	e7b9      	b.n	800429a <__kernel_rem_pio2f+0x596>
 8004326:	bf00      	nop
 8004328:	0800ad94 	.word	0x0800ad94
 800432c:	3fc90000 	.word	0x3fc90000
 8004330:	00000000 	.word	0x00000000

08004334 <__kernel_sinf>:
 8004334:	ee10 3a10 	vmov	r3, s0
 8004338:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
 800433c:	f1b3 5f48 	cmp.w	r3, #838860800	; 0x32000000
 8004340:	da04      	bge.n	800434c <__kernel_sinf+0x18>
 8004342:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8004346:	ee17 3a90 	vmov	r3, s15
 800434a:	b323      	cbz	r3, 8004396 <__kernel_sinf+0x62>
 800434c:	ee60 7a00 	vmul.f32	s15, s0, s0
 8004350:	ed9f 5a15 	vldr	s10, [pc, #84]	; 80043a8 <__kernel_sinf+0x74>
 8004354:	eddf 5a15 	vldr	s11, [pc, #84]	; 80043ac <__kernel_sinf+0x78>
 8004358:	ed9f 6a15 	vldr	s12, [pc, #84]	; 80043b0 <__kernel_sinf+0x7c>
 800435c:	eddf 6a15 	vldr	s13, [pc, #84]	; 80043b4 <__kernel_sinf+0x80>
 8004360:	ed9f 7a15 	vldr	s14, [pc, #84]	; 80043b8 <__kernel_sinf+0x84>
 8004364:	eee7 5a85 	vfma.f32	s11, s15, s10
 8004368:	ee20 5a27 	vmul.f32	s10, s0, s15
 800436c:	eea7 6aa5 	vfma.f32	s12, s15, s11
 8004370:	eee7 6a86 	vfma.f32	s13, s15, s12
 8004374:	eea7 7aa6 	vfma.f32	s14, s15, s13
 8004378:	b170      	cbz	r0, 8004398 <__kernel_sinf+0x64>
 800437a:	ee27 7a45 	vnmul.f32	s14, s14, s10
 800437e:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
 8004382:	eea0 7aa6 	vfma.f32	s14, s1, s13
 8004386:	eddf 6a0d 	vldr	s13, [pc, #52]	; 80043bc <__kernel_sinf+0x88>
 800438a:	eed7 0a87 	vfnms.f32	s1, s15, s14
 800438e:	eee5 0a26 	vfma.f32	s1, s10, s13
 8004392:	ee30 0a60 	vsub.f32	s0, s0, s1
 8004396:	4770      	bx	lr
 8004398:	eddf 6a09 	vldr	s13, [pc, #36]	; 80043c0 <__kernel_sinf+0x8c>
 800439c:	eee7 6a87 	vfma.f32	s13, s15, s14
 80043a0:	eea5 0a26 	vfma.f32	s0, s10, s13
 80043a4:	4770      	bx	lr
 80043a6:	bf00      	nop
 80043a8:	2f2ec9d3 	.word	0x2f2ec9d3
 80043ac:	b2d72f34 	.word	0xb2d72f34
 80043b0:	3638ef1b 	.word	0x3638ef1b
 80043b4:	b9500d01 	.word	0xb9500d01
 80043b8:	3c088889 	.word	0x3c088889
 80043bc:	3e2aaaab 	.word	0x3e2aaaab
 80043c0:	be2aaaab 	.word	0xbe2aaaab

080043c4 <fabsf>:
 80043c4:	ee10 3a10 	vmov	r3, s0
 80043c8:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
 80043cc:	ee00 3a10 	vmov	s0, r3
 80043d0:	4770      	bx	lr
 80043d2:	bf00      	nop

080043d4 <floorf>:
 80043d4:	ee10 2a10 	vmov	r2, s0
 80043d8:	f022 4100 	bic.w	r1, r2, #2147483648	; 0x80000000
 80043dc:	0dcb      	lsrs	r3, r1, #23
 80043de:	3b7f      	subs	r3, #127	; 0x7f
 80043e0:	2b16      	cmp	r3, #22
 80043e2:	dc17      	bgt.n	8004414 <floorf+0x40>
 80043e4:	2b00      	cmp	r3, #0
 80043e6:	ee10 0a10 	vmov	r0, s0
 80043ea:	db19      	blt.n	8004420 <floorf+0x4c>
 80043ec:	491a      	ldr	r1, [pc, #104]	; (8004458 <floorf+0x84>)
 80043ee:	4119      	asrs	r1, r3
 80043f0:	420a      	tst	r2, r1
 80043f2:	d022      	beq.n	800443a <floorf+0x66>
 80043f4:	eddf 7a19 	vldr	s15, [pc, #100]	; 800445c <floorf+0x88>
 80043f8:	ee70 7a27 	vadd.f32	s15, s0, s15
 80043fc:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8004400:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8004404:	dd19      	ble.n	800443a <floorf+0x66>
 8004406:	2a00      	cmp	r2, #0
 8004408:	db18      	blt.n	800443c <floorf+0x68>
 800440a:	ea20 0301 	bic.w	r3, r0, r1
 800440e:	ee00 3a10 	vmov	s0, r3
 8004412:	4770      	bx	lr
 8004414:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
 8004418:	d30f      	bcc.n	800443a <floorf+0x66>
 800441a:	ee30 0a00 	vadd.f32	s0, s0, s0
 800441e:	4770      	bx	lr
 8004420:	eddf 7a0e 	vldr	s15, [pc, #56]	; 800445c <floorf+0x88>
 8004424:	ee70 7a27 	vadd.f32	s15, s0, s15
 8004428:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 800442c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8004430:	dd03      	ble.n	800443a <floorf+0x66>
 8004432:	2a00      	cmp	r2, #0
 8004434:	db08      	blt.n	8004448 <floorf+0x74>
 8004436:	ed9f 0a0a 	vldr	s0, [pc, #40]	; 8004460 <floorf+0x8c>
 800443a:	4770      	bx	lr
 800443c:	f44f 0200 	mov.w	r2, #8388608	; 0x800000
 8004440:	fa42 f303 	asr.w	r3, r2, r3
 8004444:	4418      	add	r0, r3
 8004446:	e7e0      	b.n	800440a <floorf+0x36>
 8004448:	2900      	cmp	r1, #0
 800444a:	eeff 7a00 	vmov.f32	s15, #240	; 0xbf800000 -1.0
 800444e:	bf18      	it	ne
 8004450:	eeb0 0a67 	vmovne.f32	s0, s15
 8004454:	4770      	bx	lr
 8004456:	bf00      	nop
 8004458:	007fffff 	.word	0x007fffff
 800445c:	7149f2ca 	.word	0x7149f2ca
 8004460:	00000000 	.word	0x00000000

08004464 <scalbnf>:
 8004464:	b508      	push	{r3, lr}
 8004466:	ee10 3a10 	vmov	r3, s0
 800446a:	f033 4200 	bics.w	r2, r3, #2147483648	; 0x80000000
 800446e:	ed2d 8b02 	vpush	{d8}
 8004472:	d011      	beq.n	8004498 <scalbnf+0x34>
 8004474:	f1b2 4fff 	cmp.w	r2, #2139095040	; 0x7f800000
 8004478:	d211      	bcs.n	800449e <scalbnf+0x3a>
 800447a:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 800447e:	d313      	bcc.n	80044a8 <scalbnf+0x44>
 8004480:	0dd2      	lsrs	r2, r2, #23
 8004482:	4402      	add	r2, r0
 8004484:	2afe      	cmp	r2, #254	; 0xfe
 8004486:	dc2e      	bgt.n	80044e6 <scalbnf+0x82>
 8004488:	2a00      	cmp	r2, #0
 800448a:	dd1a      	ble.n	80044c2 <scalbnf+0x5e>
 800448c:	f023 43ff 	bic.w	r3, r3, #2139095040	; 0x7f800000
 8004490:	ea43 53c2 	orr.w	r3, r3, r2, lsl #23
 8004494:	ee00 3a10 	vmov	s0, r3
 8004498:	ecbd 8b02 	vpop	{d8}
 800449c:	bd08      	pop	{r3, pc}
 800449e:	ecbd 8b02 	vpop	{d8}
 80044a2:	ee30 0a00 	vadd.f32	s0, s0, s0
 80044a6:	bd08      	pop	{r3, pc}
 80044a8:	4b1d      	ldr	r3, [pc, #116]	; (8004520 <scalbnf+0xbc>)
 80044aa:	eddf 7a1e 	vldr	s15, [pc, #120]	; 8004524 <scalbnf+0xc0>
 80044ae:	4298      	cmp	r0, r3
 80044b0:	ee20 0a27 	vmul.f32	s0, s0, s15
 80044b4:	db22      	blt.n	80044fc <scalbnf+0x98>
 80044b6:	ee10 3a10 	vmov	r3, s0
 80044ba:	f3c3 52c7 	ubfx	r2, r3, #23, #8
 80044be:	3a19      	subs	r2, #25
 80044c0:	e7df      	b.n	8004482 <scalbnf+0x1e>
 80044c2:	f112 0f16 	cmn.w	r2, #22
 80044c6:	da1e      	bge.n	8004506 <scalbnf+0xa2>
 80044c8:	f24c 3350 	movw	r3, #50000	; 0xc350
 80044cc:	4298      	cmp	r0, r3
 80044ce:	dc0a      	bgt.n	80044e6 <scalbnf+0x82>
 80044d0:	ed9f 8a15 	vldr	s16, [pc, #84]	; 8004528 <scalbnf+0xc4>
 80044d4:	eef0 0a40 	vmov.f32	s1, s0
 80044d8:	eeb0 0a48 	vmov.f32	s0, s16
 80044dc:	f000 f82a 	bl	8004534 <copysignf>
 80044e0:	ee20 0a08 	vmul.f32	s0, s0, s16
 80044e4:	e7d8      	b.n	8004498 <scalbnf+0x34>
 80044e6:	ed9f 8a11 	vldr	s16, [pc, #68]	; 800452c <scalbnf+0xc8>
 80044ea:	eef0 0a40 	vmov.f32	s1, s0
 80044ee:	eeb0 0a48 	vmov.f32	s0, s16
 80044f2:	f000 f81f 	bl	8004534 <copysignf>
 80044f6:	ee20 0a08 	vmul.f32	s0, s0, s16
 80044fa:	e7cd      	b.n	8004498 <scalbnf+0x34>
 80044fc:	eddf 0a0a 	vldr	s1, [pc, #40]	; 8004528 <scalbnf+0xc4>
 8004500:	ee20 0a20 	vmul.f32	s0, s0, s1
 8004504:	e7c8      	b.n	8004498 <scalbnf+0x34>
 8004506:	3219      	adds	r2, #25
 8004508:	f023 43ff 	bic.w	r3, r3, #2139095040	; 0x7f800000
 800450c:	ea43 53c2 	orr.w	r3, r3, r2, lsl #23
 8004510:	eddf 7a07 	vldr	s15, [pc, #28]	; 8004530 <scalbnf+0xcc>
 8004514:	ee00 3a10 	vmov	s0, r3
 8004518:	ee20 0a27 	vmul.f32	s0, s0, s15
 800451c:	e7bc      	b.n	8004498 <scalbnf+0x34>
 800451e:	bf00      	nop
 8004520:	ffff3cb0 	.word	0xffff3cb0
 8004524:	4c000000 	.word	0x4c000000
 8004528:	0da24260 	.word	0x0da24260
 800452c:	7149f2ca 	.word	0x7149f2ca
 8004530:	33000000 	.word	0x33000000

08004534 <copysignf>:
 8004534:	ee10 3a10 	vmov	r3, s0
 8004538:	f023 4200 	bic.w	r2, r3, #2147483648	; 0x80000000
 800453c:	ee10 3a90 	vmov	r3, s1
 8004540:	f003 4300 	and.w	r3, r3, #2147483648	; 0x80000000
 8004544:	4313      	orrs	r3, r2
 8004546:	ee00 3a10 	vmov	s0, r3
 800454a:	4770      	bx	lr

0800454c <Reset_Handler>:
 800454c:	f8df d034 	ldr.w	sp, [pc, #52]	; 8004584 <LoopFillZerobss+0x14>
 8004550:	2100      	movs	r1, #0
 8004552:	e003      	b.n	800455c <LoopCopyDataInit>

08004554 <CopyDataInit>:
 8004554:	4b0c      	ldr	r3, [pc, #48]	; (8004588 <LoopFillZerobss+0x18>)
 8004556:	585b      	ldr	r3, [r3, r1]
 8004558:	5043      	str	r3, [r0, r1]
 800455a:	3104      	adds	r1, #4

0800455c <LoopCopyDataInit>:
 800455c:	480b      	ldr	r0, [pc, #44]	; (800458c <LoopFillZerobss+0x1c>)
 800455e:	4b0c      	ldr	r3, [pc, #48]	; (8004590 <LoopFillZerobss+0x20>)
 8004560:	1842      	adds	r2, r0, r1
 8004562:	429a      	cmp	r2, r3
 8004564:	d3f6      	bcc.n	8004554 <CopyDataInit>
 8004566:	4a0b      	ldr	r2, [pc, #44]	; (8004594 <LoopFillZerobss+0x24>)
 8004568:	e002      	b.n	8004570 <LoopFillZerobss>

0800456a <FillZerobss>:
 800456a:	2300      	movs	r3, #0
 800456c:	f842 3b04 	str.w	r3, [r2], #4

08004570 <LoopFillZerobss>:
 8004570:	4b09      	ldr	r3, [pc, #36]	; (8004598 <LoopFillZerobss+0x28>)
 8004572:	429a      	cmp	r2, r3
 8004574:	d3f9      	bcc.n	800456a <FillZerobss>
 8004576:	f000 fa43 	bl	8004a00 <SystemInit>
 800457a:	f7fc fa65 	bl	8000a48 <__libc_init_array>
 800457e:	f000 fa19 	bl	80049b4 <main>
 8004582:	4770      	bx	lr
 8004584:	20020000 	.word	0x20020000
 8004588:	0800ae30 	.word	0x0800ae30
 800458c:	20000000 	.word	0x20000000
 8004590:	20000260 	.word	0x20000260
 8004594:	20000260 	.word	0x20000260
 8004598:	200157b4 	.word	0x200157b4

0800459c <ADC_IRQHandler>:
 800459c:	e7fe      	b.n	800459c <ADC_IRQHandler>
	...

080045a0 <NVIC_SetPriorityGrouping>:
 80045a0:	b480      	push	{r7}
 80045a2:	b085      	sub	sp, #20
 80045a4:	af00      	add	r7, sp, #0
 80045a6:	6078      	str	r0, [r7, #4]
 80045a8:	687b      	ldr	r3, [r7, #4]
 80045aa:	f003 0307 	and.w	r3, r3, #7
 80045ae:	60fb      	str	r3, [r7, #12]
 80045b0:	4b0c      	ldr	r3, [pc, #48]	; (80045e4 <NVIC_SetPriorityGrouping+0x44>)
 80045b2:	68db      	ldr	r3, [r3, #12]
 80045b4:	60bb      	str	r3, [r7, #8]
 80045b6:	68ba      	ldr	r2, [r7, #8]
 80045b8:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 80045bc:	4013      	ands	r3, r2
 80045be:	60bb      	str	r3, [r7, #8]
 80045c0:	68fb      	ldr	r3, [r7, #12]
 80045c2:	021a      	lsls	r2, r3, #8
 80045c4:	68bb      	ldr	r3, [r7, #8]
 80045c6:	4313      	orrs	r3, r2
 80045c8:	f043 63bf 	orr.w	r3, r3, #100139008	; 0x5f80000
 80045cc:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 80045d0:	60bb      	str	r3, [r7, #8]
 80045d2:	4a04      	ldr	r2, [pc, #16]	; (80045e4 <NVIC_SetPriorityGrouping+0x44>)
 80045d4:	68bb      	ldr	r3, [r7, #8]
 80045d6:	60d3      	str	r3, [r2, #12]
 80045d8:	bf00      	nop
 80045da:	3714      	adds	r7, #20
 80045dc:	46bd      	mov	sp, r7
 80045de:	f85d 7b04 	ldr.w	r7, [sp], #4
 80045e2:	4770      	bx	lr
 80045e4:	e000ed00 	.word	0xe000ed00

080045e8 <NVIC_SetPriority>:
 80045e8:	b480      	push	{r7}
 80045ea:	b083      	sub	sp, #12
 80045ec:	af00      	add	r7, sp, #0
 80045ee:	4603      	mov	r3, r0
 80045f0:	6039      	str	r1, [r7, #0]
 80045f2:	71fb      	strb	r3, [r7, #7]
 80045f4:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80045f8:	2b00      	cmp	r3, #0
 80045fa:	da0b      	bge.n	8004614 <NVIC_SetPriority+0x2c>
 80045fc:	490d      	ldr	r1, [pc, #52]	; (8004634 <NVIC_SetPriority+0x4c>)
 80045fe:	79fb      	ldrb	r3, [r7, #7]
 8004600:	f003 030f 	and.w	r3, r3, #15
 8004604:	3b04      	subs	r3, #4
 8004606:	683a      	ldr	r2, [r7, #0]
 8004608:	b2d2      	uxtb	r2, r2
 800460a:	0112      	lsls	r2, r2, #4
 800460c:	b2d2      	uxtb	r2, r2
 800460e:	440b      	add	r3, r1
 8004610:	761a      	strb	r2, [r3, #24]
 8004612:	e009      	b.n	8004628 <NVIC_SetPriority+0x40>
 8004614:	4908      	ldr	r1, [pc, #32]	; (8004638 <NVIC_SetPriority+0x50>)
 8004616:	f997 3007 	ldrsb.w	r3, [r7, #7]
 800461a:	683a      	ldr	r2, [r7, #0]
 800461c:	b2d2      	uxtb	r2, r2
 800461e:	0112      	lsls	r2, r2, #4
 8004620:	b2d2      	uxtb	r2, r2
 8004622:	440b      	add	r3, r1
 8004624:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8004628:	bf00      	nop
 800462a:	370c      	adds	r7, #12
 800462c:	46bd      	mov	sp, r7
 800462e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8004632:	4770      	bx	lr
 8004634:	e000ed00 	.word	0xe000ed00
 8004638:	e000e100 	.word	0xe000e100

0800463c <SysTick_Config>:
 800463c:	b580      	push	{r7, lr}
 800463e:	b082      	sub	sp, #8
 8004640:	af00      	add	r7, sp, #0
 8004642:	6078      	str	r0, [r7, #4]
 8004644:	687b      	ldr	r3, [r7, #4]
 8004646:	3b01      	subs	r3, #1
 8004648:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
 800464c:	d301      	bcc.n	8004652 <SysTick_Config+0x16>
 800464e:	2301      	movs	r3, #1
 8004650:	e00f      	b.n	8004672 <SysTick_Config+0x36>
 8004652:	4a0a      	ldr	r2, [pc, #40]	; (800467c <SysTick_Config+0x40>)
 8004654:	687b      	ldr	r3, [r7, #4]
 8004656:	3b01      	subs	r3, #1
 8004658:	6053      	str	r3, [r2, #4]
 800465a:	210f      	movs	r1, #15
 800465c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004660:	f7ff ffc2 	bl	80045e8 <NVIC_SetPriority>
 8004664:	4b05      	ldr	r3, [pc, #20]	; (800467c <SysTick_Config+0x40>)
 8004666:	2200      	movs	r2, #0
 8004668:	609a      	str	r2, [r3, #8]
 800466a:	4b04      	ldr	r3, [pc, #16]	; (800467c <SysTick_Config+0x40>)
 800466c:	2207      	movs	r2, #7
 800466e:	601a      	str	r2, [r3, #0]
 8004670:	2300      	movs	r3, #0
 8004672:	4618      	mov	r0, r3
 8004674:	3708      	adds	r7, #8
 8004676:	46bd      	mov	sp, r7
 8004678:	bd80      	pop	{r7, pc}
 800467a:	bf00      	nop
 800467c:	e000e010 	.word	0xe000e010

08004680 <LL_RCC_HSE_Enable>:
 8004680:	b480      	push	{r7}
 8004682:	af00      	add	r7, sp, #0
 8004684:	4a05      	ldr	r2, [pc, #20]	; (800469c <LL_RCC_HSE_Enable+0x1c>)
 8004686:	4b05      	ldr	r3, [pc, #20]	; (800469c <LL_RCC_HSE_Enable+0x1c>)
 8004688:	681b      	ldr	r3, [r3, #0]
 800468a:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 800468e:	6013      	str	r3, [r2, #0]
 8004690:	bf00      	nop
 8004692:	46bd      	mov	sp, r7
 8004694:	f85d 7b04 	ldr.w	r7, [sp], #4
 8004698:	4770      	bx	lr
 800469a:	bf00      	nop
 800469c:	40023800 	.word	0x40023800

080046a0 <LL_RCC_HSE_IsReady>:
 80046a0:	b480      	push	{r7}
 80046a2:	af00      	add	r7, sp, #0
 80046a4:	4b06      	ldr	r3, [pc, #24]	; (80046c0 <LL_RCC_HSE_IsReady+0x20>)
 80046a6:	681b      	ldr	r3, [r3, #0]
 80046a8:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80046ac:	2b00      	cmp	r3, #0
 80046ae:	bf14      	ite	ne
 80046b0:	2301      	movne	r3, #1
 80046b2:	2300      	moveq	r3, #0
 80046b4:	b2db      	uxtb	r3, r3
 80046b6:	4618      	mov	r0, r3
 80046b8:	46bd      	mov	sp, r7
 80046ba:	f85d 7b04 	ldr.w	r7, [sp], #4
 80046be:	4770      	bx	lr
 80046c0:	40023800 	.word	0x40023800

080046c4 <LL_RCC_SetSysClkSource>:
 80046c4:	b480      	push	{r7}
 80046c6:	b083      	sub	sp, #12
 80046c8:	af00      	add	r7, sp, #0
 80046ca:	6078      	str	r0, [r7, #4]
 80046cc:	4906      	ldr	r1, [pc, #24]	; (80046e8 <LL_RCC_SetSysClkSource+0x24>)
 80046ce:	4b06      	ldr	r3, [pc, #24]	; (80046e8 <LL_RCC_SetSysClkSource+0x24>)
 80046d0:	689b      	ldr	r3, [r3, #8]
 80046d2:	f023 0203 	bic.w	r2, r3, #3
 80046d6:	687b      	ldr	r3, [r7, #4]
 80046d8:	4313      	orrs	r3, r2
 80046da:	608b      	str	r3, [r1, #8]
 80046dc:	bf00      	nop
 80046de:	370c      	adds	r7, #12
 80046e0:	46bd      	mov	sp, r7
 80046e2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80046e6:	4770      	bx	lr
 80046e8:	40023800 	.word	0x40023800

080046ec <LL_RCC_GetSysClkSource>:
 80046ec:	b480      	push	{r7}
 80046ee:	af00      	add	r7, sp, #0
 80046f0:	4b04      	ldr	r3, [pc, #16]	; (8004704 <LL_RCC_GetSysClkSource+0x18>)
 80046f2:	689b      	ldr	r3, [r3, #8]
 80046f4:	f003 030c 	and.w	r3, r3, #12
 80046f8:	4618      	mov	r0, r3
 80046fa:	46bd      	mov	sp, r7
 80046fc:	f85d 7b04 	ldr.w	r7, [sp], #4
 8004700:	4770      	bx	lr
 8004702:	bf00      	nop
 8004704:	40023800 	.word	0x40023800

08004708 <LL_RCC_SetAHBPrescaler>:
 8004708:	b480      	push	{r7}
 800470a:	b083      	sub	sp, #12
 800470c:	af00      	add	r7, sp, #0
 800470e:	6078      	str	r0, [r7, #4]
 8004710:	4906      	ldr	r1, [pc, #24]	; (800472c <LL_RCC_SetAHBPrescaler+0x24>)
 8004712:	4b06      	ldr	r3, [pc, #24]	; (800472c <LL_RCC_SetAHBPrescaler+0x24>)
 8004714:	689b      	ldr	r3, [r3, #8]
 8004716:	f023 02f0 	bic.w	r2, r3, #240	; 0xf0
 800471a:	687b      	ldr	r3, [r7, #4]
 800471c:	4313      	orrs	r3, r2
 800471e:	608b      	str	r3, [r1, #8]
 8004720:	bf00      	nop
 8004722:	370c      	adds	r7, #12
 8004724:	46bd      	mov	sp, r7
 8004726:	f85d 7b04 	ldr.w	r7, [sp], #4
 800472a:	4770      	bx	lr
 800472c:	40023800 	.word	0x40023800

08004730 <LL_RCC_SetAPB1Prescaler>:
 8004730:	b480      	push	{r7}
 8004732:	b083      	sub	sp, #12
 8004734:	af00      	add	r7, sp, #0
 8004736:	6078      	str	r0, [r7, #4]
 8004738:	4906      	ldr	r1, [pc, #24]	; (8004754 <LL_RCC_SetAPB1Prescaler+0x24>)
 800473a:	4b06      	ldr	r3, [pc, #24]	; (8004754 <LL_RCC_SetAPB1Prescaler+0x24>)
 800473c:	689b      	ldr	r3, [r3, #8]
 800473e:	f423 52e0 	bic.w	r2, r3, #7168	; 0x1c00
 8004742:	687b      	ldr	r3, [r7, #4]
 8004744:	4313      	orrs	r3, r2
 8004746:	608b      	str	r3, [r1, #8]
 8004748:	bf00      	nop
 800474a:	370c      	adds	r7, #12
 800474c:	46bd      	mov	sp, r7
 800474e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8004752:	4770      	bx	lr
 8004754:	40023800 	.word	0x40023800

08004758 <LL_RCC_SetAPB2Prescaler>:
 8004758:	b480      	push	{r7}
 800475a:	b083      	sub	sp, #12
 800475c:	af00      	add	r7, sp, #0
 800475e:	6078      	str	r0, [r7, #4]
 8004760:	4906      	ldr	r1, [pc, #24]	; (800477c <LL_RCC_SetAPB2Prescaler+0x24>)
 8004762:	4b06      	ldr	r3, [pc, #24]	; (800477c <LL_RCC_SetAPB2Prescaler+0x24>)
 8004764:	689b      	ldr	r3, [r3, #8]
 8004766:	f423 4260 	bic.w	r2, r3, #57344	; 0xe000
 800476a:	687b      	ldr	r3, [r7, #4]
 800476c:	4313      	orrs	r3, r2
 800476e:	608b      	str	r3, [r1, #8]
 8004770:	bf00      	nop
 8004772:	370c      	adds	r7, #12
 8004774:	46bd      	mov	sp, r7
 8004776:	f85d 7b04 	ldr.w	r7, [sp], #4
 800477a:	4770      	bx	lr
 800477c:	40023800 	.word	0x40023800

08004780 <LL_RCC_PLL_Enable>:
 8004780:	b480      	push	{r7}
 8004782:	af00      	add	r7, sp, #0
 8004784:	4a05      	ldr	r2, [pc, #20]	; (800479c <LL_RCC_PLL_Enable+0x1c>)
 8004786:	4b05      	ldr	r3, [pc, #20]	; (800479c <LL_RCC_PLL_Enable+0x1c>)
 8004788:	681b      	ldr	r3, [r3, #0]
 800478a:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 800478e:	6013      	str	r3, [r2, #0]
 8004790:	bf00      	nop
 8004792:	46bd      	mov	sp, r7
 8004794:	f85d 7b04 	ldr.w	r7, [sp], #4
 8004798:	4770      	bx	lr
 800479a:	bf00      	nop
 800479c:	40023800 	.word	0x40023800

080047a0 <LL_RCC_PLL_IsReady>:
 80047a0:	b480      	push	{r7}
 80047a2:	af00      	add	r7, sp, #0
 80047a4:	4b06      	ldr	r3, [pc, #24]	; (80047c0 <LL_RCC_PLL_IsReady+0x20>)
 80047a6:	681b      	ldr	r3, [r3, #0]
 80047a8:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 80047ac:	2b00      	cmp	r3, #0
 80047ae:	bf14      	ite	ne
 80047b0:	2301      	movne	r3, #1
 80047b2:	2300      	moveq	r3, #0
 80047b4:	b2db      	uxtb	r3, r3
 80047b6:	4618      	mov	r0, r3
 80047b8:	46bd      	mov	sp, r7
 80047ba:	f85d 7b04 	ldr.w	r7, [sp], #4
 80047be:	4770      	bx	lr
 80047c0:	40023800 	.word	0x40023800

080047c4 <LL_RCC_PLL_ConfigDomain_SYS>:
 80047c4:	b480      	push	{r7}
 80047c6:	b085      	sub	sp, #20
 80047c8:	af00      	add	r7, sp, #0
 80047ca:	60f8      	str	r0, [r7, #12]
 80047cc:	60b9      	str	r1, [r7, #8]
 80047ce:	607a      	str	r2, [r7, #4]
 80047d0:	603b      	str	r3, [r7, #0]
 80047d2:	480d      	ldr	r0, [pc, #52]	; (8004808 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80047d4:	4b0c      	ldr	r3, [pc, #48]	; (8004808 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80047d6:	685a      	ldr	r2, [r3, #4]
 80047d8:	4b0c      	ldr	r3, [pc, #48]	; (800480c <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 80047da:	4013      	ands	r3, r2
 80047dc:	68f9      	ldr	r1, [r7, #12]
 80047de:	68ba      	ldr	r2, [r7, #8]
 80047e0:	4311      	orrs	r1, r2
 80047e2:	687a      	ldr	r2, [r7, #4]
 80047e4:	0192      	lsls	r2, r2, #6
 80047e6:	430a      	orrs	r2, r1
 80047e8:	4313      	orrs	r3, r2
 80047ea:	6043      	str	r3, [r0, #4]
 80047ec:	4906      	ldr	r1, [pc, #24]	; (8004808 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80047ee:	4b06      	ldr	r3, [pc, #24]	; (8004808 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80047f0:	685b      	ldr	r3, [r3, #4]
 80047f2:	f423 3240 	bic.w	r2, r3, #196608	; 0x30000
 80047f6:	683b      	ldr	r3, [r7, #0]
 80047f8:	4313      	orrs	r3, r2
 80047fa:	604b      	str	r3, [r1, #4]
 80047fc:	bf00      	nop
 80047fe:	3714      	adds	r7, #20
 8004800:	46bd      	mov	sp, r7
 8004802:	f85d 7b04 	ldr.w	r7, [sp], #4
 8004806:	4770      	bx	lr
 8004808:	40023800 	.word	0x40023800
 800480c:	ffbf8000 	.word	0xffbf8000

08004810 <LL_FLASH_SetLatency>:
 8004810:	b480      	push	{r7}
 8004812:	b083      	sub	sp, #12
 8004814:	af00      	add	r7, sp, #0
 8004816:	6078      	str	r0, [r7, #4]
 8004818:	4906      	ldr	r1, [pc, #24]	; (8004834 <LL_FLASH_SetLatency+0x24>)
 800481a:	4b06      	ldr	r3, [pc, #24]	; (8004834 <LL_FLASH_SetLatency+0x24>)
 800481c:	681b      	ldr	r3, [r3, #0]
 800481e:	f023 020f 	bic.w	r2, r3, #15
 8004822:	687b      	ldr	r3, [r7, #4]
 8004824:	4313      	orrs	r3, r2
 8004826:	600b      	str	r3, [r1, #0]
 8004828:	bf00      	nop
 800482a:	370c      	adds	r7, #12
 800482c:	46bd      	mov	sp, r7
 800482e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8004832:	4770      	bx	lr
 8004834:	40023c00 	.word	0x40023c00

08004838 <LL_AHB1_GRP1_EnableClock>:
 8004838:	b480      	push	{r7}
 800483a:	b085      	sub	sp, #20
 800483c:	af00      	add	r7, sp, #0
 800483e:	6078      	str	r0, [r7, #4]
 8004840:	4908      	ldr	r1, [pc, #32]	; (8004864 <LL_AHB1_GRP1_EnableClock+0x2c>)
 8004842:	4b08      	ldr	r3, [pc, #32]	; (8004864 <LL_AHB1_GRP1_EnableClock+0x2c>)
 8004844:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8004846:	687b      	ldr	r3, [r7, #4]
 8004848:	4313      	orrs	r3, r2
 800484a:	630b      	str	r3, [r1, #48]	; 0x30
 800484c:	4b05      	ldr	r3, [pc, #20]	; (8004864 <LL_AHB1_GRP1_EnableClock+0x2c>)
 800484e:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8004850:	687b      	ldr	r3, [r7, #4]
 8004852:	4013      	ands	r3, r2
 8004854:	60fb      	str	r3, [r7, #12]
 8004856:	68fb      	ldr	r3, [r7, #12]
 8004858:	bf00      	nop
 800485a:	3714      	adds	r7, #20
 800485c:	46bd      	mov	sp, r7
 800485e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8004862:	4770      	bx	lr
 8004864:	40023800 	.word	0x40023800

08004868 <LL_GPIO_SetPinMode>:
 8004868:	b480      	push	{r7}
 800486a:	b089      	sub	sp, #36	; 0x24
 800486c:	af00      	add	r7, sp, #0
 800486e:	60f8      	str	r0, [r7, #12]
 8004870:	60b9      	str	r1, [r7, #8]
 8004872:	607a      	str	r2, [r7, #4]
 8004874:	68fb      	ldr	r3, [r7, #12]
 8004876:	681a      	ldr	r2, [r3, #0]
 8004878:	68bb      	ldr	r3, [r7, #8]
 800487a:	61fb      	str	r3, [r7, #28]
 800487c:	69fb      	ldr	r3, [r7, #28]
 800487e:	fa93 f3a3 	rbit	r3, r3
 8004882:	613b      	str	r3, [r7, #16]
 8004884:	693b      	ldr	r3, [r7, #16]
 8004886:	fab3 f383 	clz	r3, r3
 800488a:	005b      	lsls	r3, r3, #1
 800488c:	2103      	movs	r1, #3
 800488e:	fa01 f303 	lsl.w	r3, r1, r3
 8004892:	43db      	mvns	r3, r3
 8004894:	401a      	ands	r2, r3
 8004896:	68bb      	ldr	r3, [r7, #8]
 8004898:	61bb      	str	r3, [r7, #24]
 800489a:	69bb      	ldr	r3, [r7, #24]
 800489c:	fa93 f3a3 	rbit	r3, r3
 80048a0:	617b      	str	r3, [r7, #20]
 80048a2:	697b      	ldr	r3, [r7, #20]
 80048a4:	fab3 f383 	clz	r3, r3
 80048a8:	005b      	lsls	r3, r3, #1
 80048aa:	6879      	ldr	r1, [r7, #4]
 80048ac:	fa01 f303 	lsl.w	r3, r1, r3
 80048b0:	431a      	orrs	r2, r3
 80048b2:	68fb      	ldr	r3, [r7, #12]
 80048b4:	601a      	str	r2, [r3, #0]
 80048b6:	bf00      	nop
 80048b8:	3724      	adds	r7, #36	; 0x24
 80048ba:	46bd      	mov	sp, r7
 80048bc:	f85d 7b04 	ldr.w	r7, [sp], #4
 80048c0:	4770      	bx	lr
 80048c2:	bf00      	nop

080048c4 <LL_GPIO_TogglePin>:
 80048c4:	b480      	push	{r7}
 80048c6:	b083      	sub	sp, #12
 80048c8:	af00      	add	r7, sp, #0
 80048ca:	6078      	str	r0, [r7, #4]
 80048cc:	6039      	str	r1, [r7, #0]
 80048ce:	687b      	ldr	r3, [r7, #4]
 80048d0:	695a      	ldr	r2, [r3, #20]
 80048d2:	683b      	ldr	r3, [r7, #0]
 80048d4:	405a      	eors	r2, r3
 80048d6:	687b      	ldr	r3, [r7, #4]
 80048d8:	615a      	str	r2, [r3, #20]
 80048da:	bf00      	nop
 80048dc:	370c      	adds	r7, #12
 80048de:	46bd      	mov	sp, r7
 80048e0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80048e4:	4770      	bx	lr
 80048e6:	bf00      	nop

080048e8 <rcc_config>:
 80048e8:	b580      	push	{r7, lr}
 80048ea:	af00      	add	r7, sp, #0
 80048ec:	f7ff fec8 	bl	8004680 <LL_RCC_HSE_Enable>
 80048f0:	bf00      	nop
 80048f2:	f7ff fed5 	bl	80046a0 <LL_RCC_HSE_IsReady>
 80048f6:	4603      	mov	r3, r0
 80048f8:	2b01      	cmp	r3, #1
 80048fa:	d1fa      	bne.n	80048f2 <rcc_config+0xa>
 80048fc:	2005      	movs	r0, #5
 80048fe:	f7ff ff87 	bl	8004810 <LL_FLASH_SetLatency>
 8004902:	2300      	movs	r3, #0
 8004904:	f44f 72a8 	mov.w	r2, #336	; 0x150
 8004908:	2108      	movs	r1, #8
 800490a:	f44f 0080 	mov.w	r0, #4194304	; 0x400000
 800490e:	f7ff ff59 	bl	80047c4 <LL_RCC_PLL_ConfigDomain_SYS>
 8004912:	f7ff ff35 	bl	8004780 <LL_RCC_PLL_Enable>
 8004916:	bf00      	nop
 8004918:	f7ff ff42 	bl	80047a0 <LL_RCC_PLL_IsReady>
 800491c:	4603      	mov	r3, r0
 800491e:	2b01      	cmp	r3, #1
 8004920:	d1fa      	bne.n	8004918 <rcc_config+0x30>
 8004922:	2000      	movs	r0, #0
 8004924:	f7ff fef0 	bl	8004708 <LL_RCC_SetAHBPrescaler>
 8004928:	2002      	movs	r0, #2
 800492a:	f7ff fecb 	bl	80046c4 <LL_RCC_SetSysClkSource>
 800492e:	bf00      	nop
 8004930:	f7ff fedc 	bl	80046ec <LL_RCC_GetSysClkSource>
 8004934:	4603      	mov	r3, r0
 8004936:	2b08      	cmp	r3, #8
 8004938:	d1fa      	bne.n	8004930 <rcc_config+0x48>
 800493a:	f44f 50a0 	mov.w	r0, #5120	; 0x1400
 800493e:	f7ff fef7 	bl	8004730 <LL_RCC_SetAPB1Prescaler>
 8004942:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8004946:	f7ff ff07 	bl	8004758 <LL_RCC_SetAPB2Prescaler>
 800494a:	4804      	ldr	r0, [pc, #16]	; (800495c <rcc_config+0x74>)
 800494c:	f7ff fe76 	bl	800463c <SysTick_Config>
 8004950:	4b03      	ldr	r3, [pc, #12]	; (8004960 <rcc_config+0x78>)
 8004952:	4a04      	ldr	r2, [pc, #16]	; (8004964 <rcc_config+0x7c>)
 8004954:	601a      	str	r2, [r3, #0]
 8004956:	bf00      	nop
 8004958:	bd80      	pop	{r7, pc}
 800495a:	bf00      	nop
 800495c:	00029040 	.word	0x00029040
 8004960:	200000e0 	.word	0x200000e0
 8004964:	0a037a00 	.word	0x0a037a00

08004968 <gpio_config>:
 8004968:	b580      	push	{r7, lr}
 800496a:	af00      	add	r7, sp, #0
 800496c:	2008      	movs	r0, #8
 800496e:	f7ff ff63 	bl	8004838 <LL_AHB1_GRP1_EnableClock>
 8004972:	2201      	movs	r2, #1
 8004974:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8004978:	4802      	ldr	r0, [pc, #8]	; (8004984 <gpio_config+0x1c>)
 800497a:	f7ff ff75 	bl	8004868 <LL_GPIO_SetPinMode>
 800497e:	bf00      	nop
 8004980:	bd80      	pop	{r7, pc}
 8004982:	bf00      	nop
 8004984:	40020c00 	.word	0x40020c00

08004988 <test_FPU_test>:
 8004988:	b580      	push	{r7, lr}
 800498a:	b086      	sub	sp, #24
 800498c:	af00      	add	r7, sp, #0
 800498e:	6078      	str	r0, [r7, #4]
 8004990:	2300      	movs	r3, #0
 8004992:	617b      	str	r3, [r7, #20]
 8004994:	2300      	movs	r3, #0
 8004996:	613b      	str	r3, [r7, #16]
 8004998:	2300      	movs	r3, #0
 800499a:	60fb      	str	r3, [r7, #12]
 800499c:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 80049a0:	4803      	ldr	r0, [pc, #12]	; (80049b0 <test_FPU_test+0x28>)
 80049a2:	f7ff ff8f 	bl	80048c4 <LL_GPIO_TogglePin>
 80049a6:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80049aa:	f004 fa71 	bl	8008e90 <vTaskDelay>
 80049ae:	e7f5      	b.n	800499c <test_FPU_test+0x14>
 80049b0:	40020c00 	.word	0x40020c00

080049b4 <main>:
 80049b4:	b580      	push	{r7, lr}
 80049b6:	b084      	sub	sp, #16
 80049b8:	af04      	add	r7, sp, #16
 80049ba:	f7ff ff95 	bl	80048e8 <rcc_config>
 80049be:	f7ff ffd3 	bl	8004968 <gpio_config>
 80049c2:	2004      	movs	r0, #4
 80049c4:	f7ff fdec 	bl	80045a0 <NVIC_SetPriorityGrouping>
 80049c8:	4b09      	ldr	r3, [pc, #36]	; (80049f0 <main+0x3c>)
 80049ca:	9302      	str	r3, [sp, #8]
 80049cc:	4b09      	ldr	r3, [pc, #36]	; (80049f4 <main+0x40>)
 80049ce:	9301      	str	r3, [sp, #4]
 80049d0:	2301      	movs	r3, #1
 80049d2:	9300      	str	r3, [sp, #0]
 80049d4:	2300      	movs	r3, #0
 80049d6:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80049da:	4907      	ldr	r1, [pc, #28]	; (80049f8 <main+0x44>)
 80049dc:	4807      	ldr	r0, [pc, #28]	; (80049fc <main+0x48>)
 80049de:	f004 f8b3 	bl	8008b48 <xTaskCreateStatic>
 80049e2:	f004 fa89 	bl	8008ef8 <vTaskStartScheduler>
 80049e6:	2300      	movs	r3, #0
 80049e8:	4618      	mov	r0, r3
 80049ea:	46bd      	mov	sp, r7
 80049ec:	bd80      	pop	{r7, pc}
 80049ee:	bf00      	nop
 80049f0:	20013948 	.word	0x20013948
 80049f4:	20013dcc 	.word	0x20013dcc
 80049f8:	0800a830 	.word	0x0800a830
 80049fc:	08004989 	.word	0x08004989

08004a00 <SystemInit>:
 8004a00:	b480      	push	{r7}
 8004a02:	af00      	add	r7, sp, #0
 8004a04:	4a16      	ldr	r2, [pc, #88]	; (8004a60 <SystemInit+0x60>)
 8004a06:	4b16      	ldr	r3, [pc, #88]	; (8004a60 <SystemInit+0x60>)
 8004a08:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8004a0c:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8004a10:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8004a14:	4a13      	ldr	r2, [pc, #76]	; (8004a64 <SystemInit+0x64>)
 8004a16:	4b13      	ldr	r3, [pc, #76]	; (8004a64 <SystemInit+0x64>)
 8004a18:	681b      	ldr	r3, [r3, #0]
 8004a1a:	f043 0301 	orr.w	r3, r3, #1
 8004a1e:	6013      	str	r3, [r2, #0]
 8004a20:	4b10      	ldr	r3, [pc, #64]	; (8004a64 <SystemInit+0x64>)
 8004a22:	2200      	movs	r2, #0
 8004a24:	609a      	str	r2, [r3, #8]
 8004a26:	4a0f      	ldr	r2, [pc, #60]	; (8004a64 <SystemInit+0x64>)
 8004a28:	4b0e      	ldr	r3, [pc, #56]	; (8004a64 <SystemInit+0x64>)
 8004a2a:	681b      	ldr	r3, [r3, #0]
 8004a2c:	f023 7384 	bic.w	r3, r3, #17301504	; 0x1080000
 8004a30:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8004a34:	6013      	str	r3, [r2, #0]
 8004a36:	4b0b      	ldr	r3, [pc, #44]	; (8004a64 <SystemInit+0x64>)
 8004a38:	4a0b      	ldr	r2, [pc, #44]	; (8004a68 <SystemInit+0x68>)
 8004a3a:	605a      	str	r2, [r3, #4]
 8004a3c:	4a09      	ldr	r2, [pc, #36]	; (8004a64 <SystemInit+0x64>)
 8004a3e:	4b09      	ldr	r3, [pc, #36]	; (8004a64 <SystemInit+0x64>)
 8004a40:	681b      	ldr	r3, [r3, #0]
 8004a42:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8004a46:	6013      	str	r3, [r2, #0]
 8004a48:	4b06      	ldr	r3, [pc, #24]	; (8004a64 <SystemInit+0x64>)
 8004a4a:	2200      	movs	r2, #0
 8004a4c:	60da      	str	r2, [r3, #12]
 8004a4e:	4b04      	ldr	r3, [pc, #16]	; (8004a60 <SystemInit+0x60>)
 8004a50:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8004a54:	609a      	str	r2, [r3, #8]
 8004a56:	bf00      	nop
 8004a58:	46bd      	mov	sp, r7
 8004a5a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8004a5e:	4770      	bx	lr
 8004a60:	e000ed00 	.word	0xe000ed00
 8004a64:	40023800 	.word	0x40023800
 8004a68:	24003010 	.word	0x24003010

08004a6c <gpioInitClock>:
 8004a6c:	b480      	push	{r7}
 8004a6e:	b083      	sub	sp, #12
 8004a70:	af00      	add	r7, sp, #0
 8004a72:	6078      	str	r0, [r7, #4]
 8004a74:	687b      	ldr	r3, [r7, #4]
 8004a76:	4a34      	ldr	r2, [pc, #208]	; (8004b48 <gpioInitClock+0xdc>)
 8004a78:	4293      	cmp	r3, r2
 8004a7a:	d106      	bne.n	8004a8a <gpioInitClock+0x1e>
 8004a7c:	4a33      	ldr	r2, [pc, #204]	; (8004b4c <gpioInitClock+0xe0>)
 8004a7e:	4b33      	ldr	r3, [pc, #204]	; (8004b4c <gpioInitClock+0xe0>)
 8004a80:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8004a82:	f043 0301 	orr.w	r3, r3, #1
 8004a86:	6313      	str	r3, [r2, #48]	; 0x30
 8004a88:	e058      	b.n	8004b3c <gpioInitClock+0xd0>
 8004a8a:	687b      	ldr	r3, [r7, #4]
 8004a8c:	4a30      	ldr	r2, [pc, #192]	; (8004b50 <gpioInitClock+0xe4>)
 8004a8e:	4293      	cmp	r3, r2
 8004a90:	d106      	bne.n	8004aa0 <gpioInitClock+0x34>
 8004a92:	4a2e      	ldr	r2, [pc, #184]	; (8004b4c <gpioInitClock+0xe0>)
 8004a94:	4b2d      	ldr	r3, [pc, #180]	; (8004b4c <gpioInitClock+0xe0>)
 8004a96:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8004a98:	f043 0302 	orr.w	r3, r3, #2
 8004a9c:	6313      	str	r3, [r2, #48]	; 0x30
 8004a9e:	e04d      	b.n	8004b3c <gpioInitClock+0xd0>
 8004aa0:	687b      	ldr	r3, [r7, #4]
 8004aa2:	4a2c      	ldr	r2, [pc, #176]	; (8004b54 <gpioInitClock+0xe8>)
 8004aa4:	4293      	cmp	r3, r2
 8004aa6:	d106      	bne.n	8004ab6 <gpioInitClock+0x4a>
 8004aa8:	4a28      	ldr	r2, [pc, #160]	; (8004b4c <gpioInitClock+0xe0>)
 8004aaa:	4b28      	ldr	r3, [pc, #160]	; (8004b4c <gpioInitClock+0xe0>)
 8004aac:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8004aae:	f043 0304 	orr.w	r3, r3, #4
 8004ab2:	6313      	str	r3, [r2, #48]	; 0x30
 8004ab4:	e042      	b.n	8004b3c <gpioInitClock+0xd0>
 8004ab6:	687b      	ldr	r3, [r7, #4]
 8004ab8:	4a27      	ldr	r2, [pc, #156]	; (8004b58 <gpioInitClock+0xec>)
 8004aba:	4293      	cmp	r3, r2
 8004abc:	d106      	bne.n	8004acc <gpioInitClock+0x60>
 8004abe:	4a23      	ldr	r2, [pc, #140]	; (8004b4c <gpioInitClock+0xe0>)
 8004ac0:	4b22      	ldr	r3, [pc, #136]	; (8004b4c <gpioInitClock+0xe0>)
 8004ac2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8004ac4:	f043 0308 	orr.w	r3, r3, #8
 8004ac8:	6313      	str	r3, [r2, #48]	; 0x30
 8004aca:	e037      	b.n	8004b3c <gpioInitClock+0xd0>
 8004acc:	687b      	ldr	r3, [r7, #4]
 8004ace:	4a23      	ldr	r2, [pc, #140]	; (8004b5c <gpioInitClock+0xf0>)
 8004ad0:	4293      	cmp	r3, r2
 8004ad2:	d106      	bne.n	8004ae2 <gpioInitClock+0x76>
 8004ad4:	4a1d      	ldr	r2, [pc, #116]	; (8004b4c <gpioInitClock+0xe0>)
 8004ad6:	4b1d      	ldr	r3, [pc, #116]	; (8004b4c <gpioInitClock+0xe0>)
 8004ad8:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8004ada:	f043 0310 	orr.w	r3, r3, #16
 8004ade:	6313      	str	r3, [r2, #48]	; 0x30
 8004ae0:	e02c      	b.n	8004b3c <gpioInitClock+0xd0>
 8004ae2:	687b      	ldr	r3, [r7, #4]
 8004ae4:	4a1e      	ldr	r2, [pc, #120]	; (8004b60 <gpioInitClock+0xf4>)
 8004ae6:	4293      	cmp	r3, r2
 8004ae8:	d106      	bne.n	8004af8 <gpioInitClock+0x8c>
 8004aea:	4a18      	ldr	r2, [pc, #96]	; (8004b4c <gpioInitClock+0xe0>)
 8004aec:	4b17      	ldr	r3, [pc, #92]	; (8004b4c <gpioInitClock+0xe0>)
 8004aee:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8004af0:	f043 0320 	orr.w	r3, r3, #32
 8004af4:	6313      	str	r3, [r2, #48]	; 0x30
 8004af6:	e021      	b.n	8004b3c <gpioInitClock+0xd0>
 8004af8:	687b      	ldr	r3, [r7, #4]
 8004afa:	4a1a      	ldr	r2, [pc, #104]	; (8004b64 <gpioInitClock+0xf8>)
 8004afc:	4293      	cmp	r3, r2
 8004afe:	d106      	bne.n	8004b0e <gpioInitClock+0xa2>
 8004b00:	4a12      	ldr	r2, [pc, #72]	; (8004b4c <gpioInitClock+0xe0>)
 8004b02:	4b12      	ldr	r3, [pc, #72]	; (8004b4c <gpioInitClock+0xe0>)
 8004b04:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8004b06:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004b0a:	6313      	str	r3, [r2, #48]	; 0x30
 8004b0c:	e016      	b.n	8004b3c <gpioInitClock+0xd0>
 8004b0e:	687b      	ldr	r3, [r7, #4]
 8004b10:	4a15      	ldr	r2, [pc, #84]	; (8004b68 <gpioInitClock+0xfc>)
 8004b12:	4293      	cmp	r3, r2
 8004b14:	d106      	bne.n	8004b24 <gpioInitClock+0xb8>
 8004b16:	4a0d      	ldr	r2, [pc, #52]	; (8004b4c <gpioInitClock+0xe0>)
 8004b18:	4b0c      	ldr	r3, [pc, #48]	; (8004b4c <gpioInitClock+0xe0>)
 8004b1a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8004b1c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8004b20:	6313      	str	r3, [r2, #48]	; 0x30
 8004b22:	e00b      	b.n	8004b3c <gpioInitClock+0xd0>
 8004b24:	687b      	ldr	r3, [r7, #4]
 8004b26:	4a11      	ldr	r2, [pc, #68]	; (8004b6c <gpioInitClock+0x100>)
 8004b28:	4293      	cmp	r3, r2
 8004b2a:	d106      	bne.n	8004b3a <gpioInitClock+0xce>
 8004b2c:	4a07      	ldr	r2, [pc, #28]	; (8004b4c <gpioInitClock+0xe0>)
 8004b2e:	4b07      	ldr	r3, [pc, #28]	; (8004b4c <gpioInitClock+0xe0>)
 8004b30:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8004b32:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8004b36:	6313      	str	r3, [r2, #48]	; 0x30
 8004b38:	e000      	b.n	8004b3c <gpioInitClock+0xd0>
 8004b3a:	bf00      	nop
 8004b3c:	370c      	adds	r7, #12
 8004b3e:	46bd      	mov	sp, r7
 8004b40:	f85d 7b04 	ldr.w	r7, [sp], #4
 8004b44:	4770      	bx	lr
 8004b46:	bf00      	nop
 8004b48:	40020000 	.word	0x40020000
 8004b4c:	40023800 	.word	0x40023800
 8004b50:	40020400 	.word	0x40020400
 8004b54:	40020800 	.word	0x40020800
 8004b58:	40020c00 	.word	0x40020c00
 8004b5c:	40021000 	.word	0x40021000
 8004b60:	40021400 	.word	0x40021400
 8004b64:	40021800 	.word	0x40021800
 8004b68:	40021c00 	.word	0x40021c00
 8004b6c:	40022000 	.word	0x40022000

08004b70 <gpioInitPin>:
 8004b70:	b580      	push	{r7, lr}
 8004b72:	b082      	sub	sp, #8
 8004b74:	af00      	add	r7, sp, #0
 8004b76:	6078      	str	r0, [r7, #4]
 8004b78:	4608      	mov	r0, r1
 8004b7a:	4611      	mov	r1, r2
 8004b7c:	461a      	mov	r2, r3
 8004b7e:	4603      	mov	r3, r0
 8004b80:	70fb      	strb	r3, [r7, #3]
 8004b82:	460b      	mov	r3, r1
 8004b84:	70bb      	strb	r3, [r7, #2]
 8004b86:	4613      	mov	r3, r2
 8004b88:	707b      	strb	r3, [r7, #1]
 8004b8a:	6878      	ldr	r0, [r7, #4]
 8004b8c:	f7ff ff6e 	bl	8004a6c <gpioInitClock>
 8004b90:	687b      	ldr	r3, [r7, #4]
 8004b92:	681a      	ldr	r2, [r3, #0]
 8004b94:	78fb      	ldrb	r3, [r7, #3]
 8004b96:	005b      	lsls	r3, r3, #1
 8004b98:	2103      	movs	r1, #3
 8004b9a:	fa01 f303 	lsl.w	r3, r1, r3
 8004b9e:	43db      	mvns	r3, r3
 8004ba0:	4013      	ands	r3, r2
 8004ba2:	78b9      	ldrb	r1, [r7, #2]
 8004ba4:	78fa      	ldrb	r2, [r7, #3]
 8004ba6:	0052      	lsls	r2, r2, #1
 8004ba8:	fa01 f202 	lsl.w	r2, r1, r2
 8004bac:	431a      	orrs	r2, r3
 8004bae:	687b      	ldr	r3, [r7, #4]
 8004bb0:	601a      	str	r2, [r3, #0]
 8004bb2:	687b      	ldr	r3, [r7, #4]
 8004bb4:	68da      	ldr	r2, [r3, #12]
 8004bb6:	78fb      	ldrb	r3, [r7, #3]
 8004bb8:	005b      	lsls	r3, r3, #1
 8004bba:	2103      	movs	r1, #3
 8004bbc:	fa01 f303 	lsl.w	r3, r1, r3
 8004bc0:	43db      	mvns	r3, r3
 8004bc2:	4013      	ands	r3, r2
 8004bc4:	7c39      	ldrb	r1, [r7, #16]
 8004bc6:	78fa      	ldrb	r2, [r7, #3]
 8004bc8:	0052      	lsls	r2, r2, #1
 8004bca:	fa01 f202 	lsl.w	r2, r1, r2
 8004bce:	431a      	orrs	r2, r3
 8004bd0:	687b      	ldr	r3, [r7, #4]
 8004bd2:	60da      	str	r2, [r3, #12]
 8004bd4:	78bb      	ldrb	r3, [r7, #2]
 8004bd6:	2b01      	cmp	r3, #1
 8004bd8:	d002      	beq.n	8004be0 <gpioInitPin+0x70>
 8004bda:	78bb      	ldrb	r3, [r7, #2]
 8004bdc:	2b02      	cmp	r3, #2
 8004bde:	d10f      	bne.n	8004c00 <gpioInitPin+0x90>
 8004be0:	687b      	ldr	r3, [r7, #4]
 8004be2:	685b      	ldr	r3, [r3, #4]
 8004be4:	78fa      	ldrb	r2, [r7, #3]
 8004be6:	2101      	movs	r1, #1
 8004be8:	fa01 f202 	lsl.w	r2, r1, r2
 8004bec:	43d2      	mvns	r2, r2
 8004bee:	4013      	ands	r3, r2
 8004bf0:	7879      	ldrb	r1, [r7, #1]
 8004bf2:	78fa      	ldrb	r2, [r7, #3]
 8004bf4:	fa01 f202 	lsl.w	r2, r1, r2
 8004bf8:	431a      	orrs	r2, r3
 8004bfa:	687b      	ldr	r3, [r7, #4]
 8004bfc:	605a      	str	r2, [r3, #4]
 8004bfe:	bf00      	nop
 8004c00:	bf00      	nop
 8004c02:	3708      	adds	r7, #8
 8004c04:	46bd      	mov	sp, r7
 8004c06:	bd80      	pop	{r7, pc}

08004c08 <gpioInitPinAf>:
 8004c08:	b580      	push	{r7, lr}
 8004c0a:	b082      	sub	sp, #8
 8004c0c:	af00      	add	r7, sp, #0
 8004c0e:	6078      	str	r0, [r7, #4]
 8004c10:	460b      	mov	r3, r1
 8004c12:	70fb      	strb	r3, [r7, #3]
 8004c14:	4613      	mov	r3, r2
 8004c16:	70bb      	strb	r3, [r7, #2]
 8004c18:	6878      	ldr	r0, [r7, #4]
 8004c1a:	f7ff ff27 	bl	8004a6c <gpioInitClock>
 8004c1e:	687b      	ldr	r3, [r7, #4]
 8004c20:	681a      	ldr	r2, [r3, #0]
 8004c22:	78fb      	ldrb	r3, [r7, #3]
 8004c24:	005b      	lsls	r3, r3, #1
 8004c26:	2103      	movs	r1, #3
 8004c28:	fa01 f303 	lsl.w	r3, r1, r3
 8004c2c:	43db      	mvns	r3, r3
 8004c2e:	4013      	ands	r3, r2
 8004c30:	78fa      	ldrb	r2, [r7, #3]
 8004c32:	0052      	lsls	r2, r2, #1
 8004c34:	2102      	movs	r1, #2
 8004c36:	fa01 f202 	lsl.w	r2, r1, r2
 8004c3a:	431a      	orrs	r2, r3
 8004c3c:	687b      	ldr	r3, [r7, #4]
 8004c3e:	601a      	str	r2, [r3, #0]
 8004c40:	78fb      	ldrb	r3, [r7, #3]
 8004c42:	2b07      	cmp	r3, #7
 8004c44:	d811      	bhi.n	8004c6a <gpioInitPinAf+0x62>
 8004c46:	687b      	ldr	r3, [r7, #4]
 8004c48:	6a1b      	ldr	r3, [r3, #32]
 8004c4a:	78fa      	ldrb	r2, [r7, #3]
 8004c4c:	0092      	lsls	r2, r2, #2
 8004c4e:	210f      	movs	r1, #15
 8004c50:	fa01 f202 	lsl.w	r2, r1, r2
 8004c54:	43d2      	mvns	r2, r2
 8004c56:	4013      	ands	r3, r2
 8004c58:	78b9      	ldrb	r1, [r7, #2]
 8004c5a:	78fa      	ldrb	r2, [r7, #3]
 8004c5c:	0092      	lsls	r2, r2, #2
 8004c5e:	fa01 f202 	lsl.w	r2, r1, r2
 8004c62:	431a      	orrs	r2, r3
 8004c64:	687b      	ldr	r3, [r7, #4]
 8004c66:	621a      	str	r2, [r3, #32]
 8004c68:	e016      	b.n	8004c98 <gpioInitPinAf+0x90>
 8004c6a:	78fb      	ldrb	r3, [r7, #3]
 8004c6c:	2b07      	cmp	r3, #7
 8004c6e:	d913      	bls.n	8004c98 <gpioInitPinAf+0x90>
 8004c70:	687b      	ldr	r3, [r7, #4]
 8004c72:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8004c74:	78fa      	ldrb	r2, [r7, #3]
 8004c76:	3a08      	subs	r2, #8
 8004c78:	0092      	lsls	r2, r2, #2
 8004c7a:	210f      	movs	r1, #15
 8004c7c:	fa01 f202 	lsl.w	r2, r1, r2
 8004c80:	43d2      	mvns	r2, r2
 8004c82:	4013      	ands	r3, r2
 8004c84:	78b9      	ldrb	r1, [r7, #2]
 8004c86:	78fa      	ldrb	r2, [r7, #3]
 8004c88:	3a08      	subs	r2, #8
 8004c8a:	0092      	lsls	r2, r2, #2
 8004c8c:	fa01 f202 	lsl.w	r2, r1, r2
 8004c90:	431a      	orrs	r2, r3
 8004c92:	687b      	ldr	r3, [r7, #4]
 8004c94:	625a      	str	r2, [r3, #36]	; 0x24
 8004c96:	bf00      	nop
 8004c98:	bf00      	nop
 8004c9a:	3708      	adds	r7, #8
 8004c9c:	46bd      	mov	sp, r7
 8004c9e:	bd80      	pop	{r7, pc}

08004ca0 <gpioPinSetLevel>:
 8004ca0:	b480      	push	{r7}
 8004ca2:	b083      	sub	sp, #12
 8004ca4:	af00      	add	r7, sp, #0
 8004ca6:	6078      	str	r0, [r7, #4]
 8004ca8:	460b      	mov	r3, r1
 8004caa:	70fb      	strb	r3, [r7, #3]
 8004cac:	4613      	mov	r3, r2
 8004cae:	70bb      	strb	r3, [r7, #2]
 8004cb0:	78bb      	ldrb	r3, [r7, #2]
 8004cb2:	2b00      	cmp	r3, #0
 8004cb4:	d10a      	bne.n	8004ccc <gpioPinSetLevel+0x2c>
 8004cb6:	687b      	ldr	r3, [r7, #4]
 8004cb8:	699b      	ldr	r3, [r3, #24]
 8004cba:	78fa      	ldrb	r2, [r7, #3]
 8004cbc:	3210      	adds	r2, #16
 8004cbe:	2101      	movs	r1, #1
 8004cc0:	fa01 f202 	lsl.w	r2, r1, r2
 8004cc4:	431a      	orrs	r2, r3
 8004cc6:	687b      	ldr	r3, [r7, #4]
 8004cc8:	619a      	str	r2, [r3, #24]
 8004cca:	e00b      	b.n	8004ce4 <gpioPinSetLevel+0x44>
 8004ccc:	78bb      	ldrb	r3, [r7, #2]
 8004cce:	2b01      	cmp	r3, #1
 8004cd0:	d108      	bne.n	8004ce4 <gpioPinSetLevel+0x44>
 8004cd2:	687b      	ldr	r3, [r7, #4]
 8004cd4:	699b      	ldr	r3, [r3, #24]
 8004cd6:	78fa      	ldrb	r2, [r7, #3]
 8004cd8:	2101      	movs	r1, #1
 8004cda:	fa01 f202 	lsl.w	r2, r1, r2
 8004cde:	431a      	orrs	r2, r3
 8004ce0:	687b      	ldr	r3, [r7, #4]
 8004ce2:	619a      	str	r2, [r3, #24]
 8004ce4:	370c      	adds	r7, #12
 8004ce6:	46bd      	mov	sp, r7
 8004ce8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8004cec:	4770      	bx	lr
 8004cee:	bf00      	nop

08004cf0 <I2CInit>:
 8004cf0:	b580      	push	{r7, lr}
 8004cf2:	b084      	sub	sp, #16
 8004cf4:	af00      	add	r7, sp, #0
 8004cf6:	6078      	str	r0, [r7, #4]
 8004cf8:	687b      	ldr	r3, [r7, #4]
 8004cfa:	681b      	ldr	r3, [r3, #0]
 8004cfc:	4a3d      	ldr	r2, [pc, #244]	; (8004df4 <I2CInit+0x104>)
 8004cfe:	4293      	cmp	r3, r2
 8004d00:	d106      	bne.n	8004d10 <I2CInit+0x20>
 8004d02:	4a3d      	ldr	r2, [pc, #244]	; (8004df8 <I2CInit+0x108>)
 8004d04:	4b3c      	ldr	r3, [pc, #240]	; (8004df8 <I2CInit+0x108>)
 8004d06:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8004d08:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8004d0c:	6413      	str	r3, [r2, #64]	; 0x40
 8004d0e:	e016      	b.n	8004d3e <I2CInit+0x4e>
 8004d10:	687b      	ldr	r3, [r7, #4]
 8004d12:	681b      	ldr	r3, [r3, #0]
 8004d14:	4a39      	ldr	r2, [pc, #228]	; (8004dfc <I2CInit+0x10c>)
 8004d16:	4293      	cmp	r3, r2
 8004d18:	d106      	bne.n	8004d28 <I2CInit+0x38>
 8004d1a:	4a37      	ldr	r2, [pc, #220]	; (8004df8 <I2CInit+0x108>)
 8004d1c:	4b36      	ldr	r3, [pc, #216]	; (8004df8 <I2CInit+0x108>)
 8004d1e:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8004d20:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
 8004d24:	6413      	str	r3, [r2, #64]	; 0x40
 8004d26:	e00a      	b.n	8004d3e <I2CInit+0x4e>
 8004d28:	687b      	ldr	r3, [r7, #4]
 8004d2a:	681b      	ldr	r3, [r3, #0]
 8004d2c:	4a34      	ldr	r2, [pc, #208]	; (8004e00 <I2CInit+0x110>)
 8004d2e:	4293      	cmp	r3, r2
 8004d30:	d105      	bne.n	8004d3e <I2CInit+0x4e>
 8004d32:	4a31      	ldr	r2, [pc, #196]	; (8004df8 <I2CInit+0x108>)
 8004d34:	4b30      	ldr	r3, [pc, #192]	; (8004df8 <I2CInit+0x108>)
 8004d36:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8004d38:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
 8004d3c:	6413      	str	r3, [r2, #64]	; 0x40
 8004d3e:	687b      	ldr	r3, [r7, #4]
 8004d40:	681b      	ldr	r3, [r3, #0]
 8004d42:	687a      	ldr	r2, [r7, #4]
 8004d44:	6812      	ldr	r2, [r2, #0]
 8004d46:	6852      	ldr	r2, [r2, #4]
 8004d48:	f022 023f 	bic.w	r2, r2, #63	; 0x3f
 8004d4c:	605a      	str	r2, [r3, #4]
 8004d4e:	f000 fc6b 	bl	8005628 <rccGetApb1Prescaler>
 8004d52:	4603      	mov	r3, r0
 8004d54:	461a      	mov	r2, r3
 8004d56:	23a8      	movs	r3, #168	; 0xa8
 8004d58:	fb93 f3f2 	sdiv	r3, r3, r2
 8004d5c:	60fb      	str	r3, [r7, #12]
 8004d5e:	f000 fc63 	bl	8005628 <rccGetApb1Prescaler>
 8004d62:	4603      	mov	r3, r0
 8004d64:	461a      	mov	r2, r3
 8004d66:	23a8      	movs	r3, #168	; 0xa8
 8004d68:	fb93 f3f2 	sdiv	r3, r3, r2
 8004d6c:	4619      	mov	r1, r3
 8004d6e:	687b      	ldr	r3, [r7, #4]
 8004d70:	681b      	ldr	r3, [r3, #0]
 8004d72:	687a      	ldr	r2, [r7, #4]
 8004d74:	6812      	ldr	r2, [r2, #0]
 8004d76:	6852      	ldr	r2, [r2, #4]
 8004d78:	430a      	orrs	r2, r1
 8004d7a:	605a      	str	r2, [r3, #4]
 8004d7c:	687b      	ldr	r3, [r7, #4]
 8004d7e:	681b      	ldr	r3, [r3, #0]
 8004d80:	687a      	ldr	r2, [r7, #4]
 8004d82:	6812      	ldr	r2, [r2, #0]
 8004d84:	6852      	ldr	r2, [r2, #4]
 8004d86:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 8004d8a:	605a      	str	r2, [r3, #4]
 8004d8c:	687b      	ldr	r3, [r7, #4]
 8004d8e:	681b      	ldr	r3, [r3, #0]
 8004d90:	687a      	ldr	r2, [r7, #4]
 8004d92:	6812      	ldr	r2, [r2, #0]
 8004d94:	69d2      	ldr	r2, [r2, #28]
 8004d96:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
 8004d9a:	61da      	str	r2, [r3, #28]
 8004d9c:	f000 fc44 	bl	8005628 <rccGetApb1Prescaler>
 8004da0:	4603      	mov	r3, r0
 8004da2:	461a      	mov	r2, r3
 8004da4:	f64d 23c0 	movw	r3, #56000	; 0xdac0
 8004da8:	fb93 f3f2 	sdiv	r3, r3, r2
 8004dac:	4a15      	ldr	r2, [pc, #84]	; (8004e04 <I2CInit+0x114>)
 8004dae:	fb82 1203 	smull	r1, r2, r2, r3
 8004db2:	1152      	asrs	r2, r2, #5
 8004db4:	17db      	asrs	r3, r3, #31
 8004db6:	1ad3      	subs	r3, r2, r3
 8004db8:	ee07 3a90 	vmov	s15, r3
 8004dbc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8004dc0:	eeb0 0a67 	vmov.f32	s0, s15
 8004dc4:	f7fe fcf8 	bl	80037b8 <ceilf>
 8004dc8:	eef0 7a40 	vmov.f32	s15, s0
 8004dcc:	eefc 7ae7 	vcvt.u32.f32	s15, s15
 8004dd0:	ee17 1a90 	vmov	r1, s15
 8004dd4:	687b      	ldr	r3, [r7, #4]
 8004dd6:	681b      	ldr	r3, [r3, #0]
 8004dd8:	687a      	ldr	r2, [r7, #4]
 8004dda:	6812      	ldr	r2, [r2, #0]
 8004ddc:	69d2      	ldr	r2, [r2, #28]
 8004dde:	430a      	orrs	r2, r1
 8004de0:	61da      	str	r2, [r3, #28]
 8004de2:	687b      	ldr	r3, [r7, #4]
 8004de4:	681b      	ldr	r3, [r3, #0]
 8004de6:	220f      	movs	r2, #15
 8004de8:	621a      	str	r2, [r3, #32]
 8004dea:	bf00      	nop
 8004dec:	3710      	adds	r7, #16
 8004dee:	46bd      	mov	sp, r7
 8004df0:	bd80      	pop	{r7, pc}
 8004df2:	bf00      	nop
 8004df4:	40005400 	.word	0x40005400
 8004df8:	40023800 	.word	0x40023800
 8004dfc:	40005800 	.word	0x40005800
 8004e00:	40005c00 	.word	0x40005c00
 8004e04:	1b4e81b5 	.word	0x1b4e81b5

08004e08 <I2CEnable>:
 8004e08:	b480      	push	{r7}
 8004e0a:	b083      	sub	sp, #12
 8004e0c:	af00      	add	r7, sp, #0
 8004e0e:	6078      	str	r0, [r7, #4]
 8004e10:	687b      	ldr	r3, [r7, #4]
 8004e12:	681b      	ldr	r3, [r3, #0]
 8004e14:	f043 0201 	orr.w	r2, r3, #1
 8004e18:	687b      	ldr	r3, [r7, #4]
 8004e1a:	601a      	str	r2, [r3, #0]
 8004e1c:	bf00      	nop
 8004e1e:	370c      	adds	r7, #12
 8004e20:	46bd      	mov	sp, r7
 8004e22:	f85d 7b04 	ldr.w	r7, [sp], #4
 8004e26:	4770      	bx	lr

08004e28 <I2CDisable>:
 8004e28:	b480      	push	{r7}
 8004e2a:	b083      	sub	sp, #12
 8004e2c:	af00      	add	r7, sp, #0
 8004e2e:	6078      	str	r0, [r7, #4]
 8004e30:	687b      	ldr	r3, [r7, #4]
 8004e32:	681b      	ldr	r3, [r3, #0]
 8004e34:	f023 0201 	bic.w	r2, r3, #1
 8004e38:	687b      	ldr	r3, [r7, #4]
 8004e3a:	601a      	str	r2, [r3, #0]
 8004e3c:	bf00      	nop
 8004e3e:	370c      	adds	r7, #12
 8004e40:	46bd      	mov	sp, r7
 8004e42:	f85d 7b04 	ldr.w	r7, [sp], #4
 8004e46:	4770      	bx	lr

08004e48 <I2CReset>:
 8004e48:	b580      	push	{r7, lr}
 8004e4a:	b084      	sub	sp, #16
 8004e4c:	af02      	add	r7, sp, #8
 8004e4e:	6078      	str	r0, [r7, #4]
 8004e50:	687b      	ldr	r3, [r7, #4]
 8004e52:	681b      	ldr	r3, [r3, #0]
 8004e54:	4618      	mov	r0, r3
 8004e56:	f7ff ffe7 	bl	8004e28 <I2CDisable>
 8004e5a:	2300      	movs	r3, #0
 8004e5c:	9300      	str	r3, [sp, #0]
 8004e5e:	2301      	movs	r3, #1
 8004e60:	2201      	movs	r2, #1
 8004e62:	210a      	movs	r1, #10
 8004e64:	4832      	ldr	r0, [pc, #200]	; (8004f30 <I2CReset+0xe8>)
 8004e66:	f7ff fe83 	bl	8004b70 <gpioInitPin>
 8004e6a:	2201      	movs	r2, #1
 8004e6c:	210a      	movs	r1, #10
 8004e6e:	4830      	ldr	r0, [pc, #192]	; (8004f30 <I2CReset+0xe8>)
 8004e70:	f7ff ff16 	bl	8004ca0 <gpioPinSetLevel>
 8004e74:	2300      	movs	r3, #0
 8004e76:	9300      	str	r3, [sp, #0]
 8004e78:	2301      	movs	r3, #1
 8004e7a:	2201      	movs	r2, #1
 8004e7c:	210b      	movs	r1, #11
 8004e7e:	482c      	ldr	r0, [pc, #176]	; (8004f30 <I2CReset+0xe8>)
 8004e80:	f7ff fe76 	bl	8004b70 <gpioInitPin>
 8004e84:	2201      	movs	r2, #1
 8004e86:	210b      	movs	r1, #11
 8004e88:	4829      	ldr	r0, [pc, #164]	; (8004f30 <I2CReset+0xe8>)
 8004e8a:	f7ff ff09 	bl	8004ca0 <gpioPinSetLevel>
 8004e8e:	2003      	movs	r0, #3
 8004e90:	f001 fe50 	bl	8006b34 <delayInTenthOfMs>
 8004e94:	2200      	movs	r2, #0
 8004e96:	210b      	movs	r1, #11
 8004e98:	4825      	ldr	r0, [pc, #148]	; (8004f30 <I2CReset+0xe8>)
 8004e9a:	f7ff ff01 	bl	8004ca0 <gpioPinSetLevel>
 8004e9e:	2003      	movs	r0, #3
 8004ea0:	f001 fe48 	bl	8006b34 <delayInTenthOfMs>
 8004ea4:	2200      	movs	r2, #0
 8004ea6:	210a      	movs	r1, #10
 8004ea8:	4821      	ldr	r0, [pc, #132]	; (8004f30 <I2CReset+0xe8>)
 8004eaa:	f7ff fef9 	bl	8004ca0 <gpioPinSetLevel>
 8004eae:	2003      	movs	r0, #3
 8004eb0:	f001 fe40 	bl	8006b34 <delayInTenthOfMs>
 8004eb4:	2201      	movs	r2, #1
 8004eb6:	210a      	movs	r1, #10
 8004eb8:	481d      	ldr	r0, [pc, #116]	; (8004f30 <I2CReset+0xe8>)
 8004eba:	f7ff fef1 	bl	8004ca0 <gpioPinSetLevel>
 8004ebe:	2003      	movs	r0, #3
 8004ec0:	f001 fe38 	bl	8006b34 <delayInTenthOfMs>
 8004ec4:	2201      	movs	r2, #1
 8004ec6:	210b      	movs	r1, #11
 8004ec8:	4819      	ldr	r0, [pc, #100]	; (8004f30 <I2CReset+0xe8>)
 8004eca:	f7ff fee9 	bl	8004ca0 <gpioPinSetLevel>
 8004ece:	2003      	movs	r0, #3
 8004ed0:	f001 fe30 	bl	8006b34 <delayInTenthOfMs>
 8004ed4:	2204      	movs	r2, #4
 8004ed6:	210a      	movs	r1, #10
 8004ed8:	4815      	ldr	r0, [pc, #84]	; (8004f30 <I2CReset+0xe8>)
 8004eda:	f7ff fe95 	bl	8004c08 <gpioInitPinAf>
 8004ede:	2204      	movs	r2, #4
 8004ee0:	210b      	movs	r1, #11
 8004ee2:	4813      	ldr	r0, [pc, #76]	; (8004f30 <I2CReset+0xe8>)
 8004ee4:	f7ff fe90 	bl	8004c08 <gpioInitPinAf>
 8004ee8:	687b      	ldr	r3, [r7, #4]
 8004eea:	681b      	ldr	r3, [r3, #0]
 8004eec:	687a      	ldr	r2, [r7, #4]
 8004eee:	6812      	ldr	r2, [r2, #0]
 8004ef0:	6812      	ldr	r2, [r2, #0]
 8004ef2:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
 8004ef6:	601a      	str	r2, [r3, #0]
 8004ef8:	687b      	ldr	r3, [r7, #4]
 8004efa:	681b      	ldr	r3, [r3, #0]
 8004efc:	687a      	ldr	r2, [r7, #4]
 8004efe:	6812      	ldr	r2, [r2, #0]
 8004f00:	6812      	ldr	r2, [r2, #0]
 8004f02:	f482 4200 	eor.w	r2, r2, #32768	; 0x8000
 8004f06:	601a      	str	r2, [r3, #0]
 8004f08:	687b      	ldr	r3, [r7, #4]
 8004f0a:	681b      	ldr	r3, [r3, #0]
 8004f0c:	4618      	mov	r0, r3
 8004f0e:	f7ff ff7b 	bl	8004e08 <I2CEnable>
 8004f12:	6878      	ldr	r0, [r7, #4]
 8004f14:	f7ff feec 	bl	8004cf0 <I2CInit>
 8004f18:	f001 fdc8 	bl	8006aac <getLocalTime>
 8004f1c:	4602      	mov	r2, r0
 8004f1e:	687b      	ldr	r3, [r7, #4]
 8004f20:	609a      	str	r2, [r3, #8]
 8004f22:	687b      	ldr	r3, [r7, #4]
 8004f24:	2200      	movs	r2, #0
 8004f26:	711a      	strb	r2, [r3, #4]
 8004f28:	bf00      	nop
 8004f2a:	3708      	adds	r7, #8
 8004f2c:	46bd      	mov	sp, r7
 8004f2e:	bd80      	pop	{r7, pc}
 8004f30:	40020400 	.word	0x40020400

08004f34 <I2CStop>:
 8004f34:	b480      	push	{r7}
 8004f36:	b083      	sub	sp, #12
 8004f38:	af00      	add	r7, sp, #0
 8004f3a:	6078      	str	r0, [r7, #4]
 8004f3c:	687b      	ldr	r3, [r7, #4]
 8004f3e:	681b      	ldr	r3, [r3, #0]
 8004f40:	f443 7200 	orr.w	r2, r3, #512	; 0x200
 8004f44:	687b      	ldr	r3, [r7, #4]
 8004f46:	601a      	str	r2, [r3, #0]
 8004f48:	bf00      	nop
 8004f4a:	370c      	adds	r7, #12
 8004f4c:	46bd      	mov	sp, r7
 8004f4e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8004f52:	4770      	bx	lr

08004f54 <I2CSetAck>:
 8004f54:	b480      	push	{r7}
 8004f56:	b083      	sub	sp, #12
 8004f58:	af00      	add	r7, sp, #0
 8004f5a:	6078      	str	r0, [r7, #4]
 8004f5c:	687b      	ldr	r3, [r7, #4]
 8004f5e:	681b      	ldr	r3, [r3, #0]
 8004f60:	f443 6280 	orr.w	r2, r3, #1024	; 0x400
 8004f64:	687b      	ldr	r3, [r7, #4]
 8004f66:	601a      	str	r2, [r3, #0]
 8004f68:	bf00      	nop
 8004f6a:	370c      	adds	r7, #12
 8004f6c:	46bd      	mov	sp, r7
 8004f6e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8004f72:	4770      	bx	lr

08004f74 <I2CUnSetAck>:
 8004f74:	b480      	push	{r7}
 8004f76:	b083      	sub	sp, #12
 8004f78:	af00      	add	r7, sp, #0
 8004f7a:	6078      	str	r0, [r7, #4]
 8004f7c:	687b      	ldr	r3, [r7, #4]
 8004f7e:	681b      	ldr	r3, [r3, #0]
 8004f80:	f423 6280 	bic.w	r2, r3, #1024	; 0x400
 8004f84:	687b      	ldr	r3, [r7, #4]
 8004f86:	601a      	str	r2, [r3, #0]
 8004f88:	bf00      	nop
 8004f8a:	370c      	adds	r7, #12
 8004f8c:	46bd      	mov	sp, r7
 8004f8e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8004f92:	4770      	bx	lr

08004f94 <I2CClearAddrFlag>:
 8004f94:	b480      	push	{r7}
 8004f96:	b083      	sub	sp, #12
 8004f98:	af00      	add	r7, sp, #0
 8004f9a:	6078      	str	r0, [r7, #4]
 8004f9c:	687b      	ldr	r3, [r7, #4]
 8004f9e:	699b      	ldr	r3, [r3, #24]
 8004fa0:	bf00      	nop
 8004fa2:	370c      	adds	r7, #12
 8004fa4:	46bd      	mov	sp, r7
 8004fa6:	f85d 7b04 	ldr.w	r7, [sp], #4
 8004faa:	4770      	bx	lr

08004fac <I2CSetPOS>:
 8004fac:	b480      	push	{r7}
 8004fae:	b083      	sub	sp, #12
 8004fb0:	af00      	add	r7, sp, #0
 8004fb2:	6078      	str	r0, [r7, #4]
 8004fb4:	687b      	ldr	r3, [r7, #4]
 8004fb6:	681b      	ldr	r3, [r3, #0]
 8004fb8:	f443 6200 	orr.w	r2, r3, #2048	; 0x800
 8004fbc:	687b      	ldr	r3, [r7, #4]
 8004fbe:	601a      	str	r2, [r3, #0]
 8004fc0:	bf00      	nop
 8004fc2:	370c      	adds	r7, #12
 8004fc4:	46bd      	mov	sp, r7
 8004fc6:	f85d 7b04 	ldr.w	r7, [sp], #4
 8004fca:	4770      	bx	lr

08004fcc <I2CUnSetPOS>:
 8004fcc:	b480      	push	{r7}
 8004fce:	b083      	sub	sp, #12
 8004fd0:	af00      	add	r7, sp, #0
 8004fd2:	6078      	str	r0, [r7, #4]
 8004fd4:	687b      	ldr	r3, [r7, #4]
 8004fd6:	681b      	ldr	r3, [r3, #0]
 8004fd8:	f423 6200 	bic.w	r2, r3, #2048	; 0x800
 8004fdc:	687b      	ldr	r3, [r7, #4]
 8004fde:	601a      	str	r2, [r3, #0]
 8004fe0:	bf00      	nop
 8004fe2:	370c      	adds	r7, #12
 8004fe4:	46bd      	mov	sp, r7
 8004fe6:	f85d 7b04 	ldr.w	r7, [sp], #4
 8004fea:	4770      	bx	lr

08004fec <I2CReadDR>:
 8004fec:	b480      	push	{r7}
 8004fee:	b083      	sub	sp, #12
 8004ff0:	af00      	add	r7, sp, #0
 8004ff2:	6078      	str	r0, [r7, #4]
 8004ff4:	6039      	str	r1, [r7, #0]
 8004ff6:	687b      	ldr	r3, [r7, #4]
 8004ff8:	691b      	ldr	r3, [r3, #16]
 8004ffa:	b2da      	uxtb	r2, r3
 8004ffc:	683b      	ldr	r3, [r7, #0]
 8004ffe:	701a      	strb	r2, [r3, #0]
 8005000:	bf00      	nop
 8005002:	370c      	adds	r7, #12
 8005004:	46bd      	mov	sp, r7
 8005006:	f85d 7b04 	ldr.w	r7, [sp], #4
 800500a:	4770      	bx	lr

0800500c <I2CStart>:
 800500c:	b580      	push	{r7, lr}
 800500e:	b084      	sub	sp, #16
 8005010:	af00      	add	r7, sp, #0
 8005012:	6078      	str	r0, [r7, #4]
 8005014:	f001 fd4a 	bl	8006aac <getLocalTime>
 8005018:	60f8      	str	r0, [r7, #12]
 800501a:	687b      	ldr	r3, [r7, #4]
 800501c:	681b      	ldr	r3, [r3, #0]
 800501e:	687a      	ldr	r2, [r7, #4]
 8005020:	6812      	ldr	r2, [r2, #0]
 8005022:	6812      	ldr	r2, [r2, #0]
 8005024:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 8005028:	601a      	str	r2, [r3, #0]
 800502a:	e022      	b.n	8005072 <I2CStart+0x66>
 800502c:	687b      	ldr	r3, [r7, #4]
 800502e:	791b      	ldrb	r3, [r3, #4]
 8005030:	2b00      	cmp	r3, #0
 8005032:	d00a      	beq.n	800504a <I2CStart+0x3e>
 8005034:	4b16      	ldr	r3, [pc, #88]	; (8005090 <I2CStart+0x84>)
 8005036:	681b      	ldr	r3, [r3, #0]
 8005038:	4618      	mov	r0, r3
 800503a:	f7ff ff7b 	bl	8004f34 <I2CStop>
 800503e:	4814      	ldr	r0, [pc, #80]	; (8005090 <I2CStart+0x84>)
 8005040:	f000 f8e0 	bl	8005204 <I2CWaitForStopToBeCleared>
 8005044:	687b      	ldr	r3, [r7, #4]
 8005046:	791b      	ldrb	r3, [r3, #4]
 8005048:	e01e      	b.n	8005088 <I2CStart+0x7c>
 800504a:	210a      	movs	r1, #10
 800504c:	68f8      	ldr	r0, [r7, #12]
 800504e:	f001 fd5d 	bl	8006b0c <checkTimeout>
 8005052:	4603      	mov	r3, r0
 8005054:	2b00      	cmp	r3, #0
 8005056:	d00c      	beq.n	8005072 <I2CStart+0x66>
 8005058:	4b0d      	ldr	r3, [pc, #52]	; (8005090 <I2CStart+0x84>)
 800505a:	681b      	ldr	r3, [r3, #0]
 800505c:	4618      	mov	r0, r3
 800505e:	f7ff ff69 	bl	8004f34 <I2CStop>
 8005062:	480b      	ldr	r0, [pc, #44]	; (8005090 <I2CStart+0x84>)
 8005064:	f000 f8ce 	bl	8005204 <I2CWaitForStopToBeCleared>
 8005068:	687b      	ldr	r3, [r7, #4]
 800506a:	2202      	movs	r2, #2
 800506c:	711a      	strb	r2, [r3, #4]
 800506e:	2302      	movs	r3, #2
 8005070:	e00a      	b.n	8005088 <I2CStart+0x7c>
 8005072:	687b      	ldr	r3, [r7, #4]
 8005074:	681b      	ldr	r3, [r3, #0]
 8005076:	695b      	ldr	r3, [r3, #20]
 8005078:	f003 0301 	and.w	r3, r3, #1
 800507c:	2b00      	cmp	r3, #0
 800507e:	d0d5      	beq.n	800502c <I2CStart+0x20>
 8005080:	687b      	ldr	r3, [r7, #4]
 8005082:	681b      	ldr	r3, [r3, #0]
 8005084:	695b      	ldr	r3, [r3, #20]
 8005086:	2300      	movs	r3, #0
 8005088:	4618      	mov	r0, r3
 800508a:	3710      	adds	r7, #16
 800508c:	46bd      	mov	sp, r7
 800508e:	bd80      	pop	{r7, pc}
 8005090:	20014dd0 	.word	0x20014dd0

08005094 <I2CSendAddr>:
 8005094:	b580      	push	{r7, lr}
 8005096:	b084      	sub	sp, #16
 8005098:	af00      	add	r7, sp, #0
 800509a:	6078      	str	r0, [r7, #4]
 800509c:	460b      	mov	r3, r1
 800509e:	70fb      	strb	r3, [r7, #3]
 80050a0:	4613      	mov	r3, r2
 80050a2:	70bb      	strb	r3, [r7, #2]
 80050a4:	f001 fd02 	bl	8006aac <getLocalTime>
 80050a8:	60f8      	str	r0, [r7, #12]
 80050aa:	687b      	ldr	r3, [r7, #4]
 80050ac:	681b      	ldr	r3, [r3, #0]
 80050ae:	78fa      	ldrb	r2, [r7, #3]
 80050b0:	0051      	lsls	r1, r2, #1
 80050b2:	78ba      	ldrb	r2, [r7, #2]
 80050b4:	430a      	orrs	r2, r1
 80050b6:	611a      	str	r2, [r3, #16]
 80050b8:	e022      	b.n	8005100 <I2CSendAddr+0x6c>
 80050ba:	687b      	ldr	r3, [r7, #4]
 80050bc:	791b      	ldrb	r3, [r3, #4]
 80050be:	2b00      	cmp	r3, #0
 80050c0:	d00a      	beq.n	80050d8 <I2CSendAddr+0x44>
 80050c2:	4b15      	ldr	r3, [pc, #84]	; (8005118 <I2CSendAddr+0x84>)
 80050c4:	681b      	ldr	r3, [r3, #0]
 80050c6:	4618      	mov	r0, r3
 80050c8:	f7ff ff34 	bl	8004f34 <I2CStop>
 80050cc:	4812      	ldr	r0, [pc, #72]	; (8005118 <I2CSendAddr+0x84>)
 80050ce:	f000 f899 	bl	8005204 <I2CWaitForStopToBeCleared>
 80050d2:	687b      	ldr	r3, [r7, #4]
 80050d4:	791b      	ldrb	r3, [r3, #4]
 80050d6:	e01b      	b.n	8005110 <I2CSendAddr+0x7c>
 80050d8:	210a      	movs	r1, #10
 80050da:	68f8      	ldr	r0, [r7, #12]
 80050dc:	f001 fd16 	bl	8006b0c <checkTimeout>
 80050e0:	4603      	mov	r3, r0
 80050e2:	2b00      	cmp	r3, #0
 80050e4:	d00c      	beq.n	8005100 <I2CSendAddr+0x6c>
 80050e6:	4b0c      	ldr	r3, [pc, #48]	; (8005118 <I2CSendAddr+0x84>)
 80050e8:	681b      	ldr	r3, [r3, #0]
 80050ea:	4618      	mov	r0, r3
 80050ec:	f7ff ff22 	bl	8004f34 <I2CStop>
 80050f0:	4809      	ldr	r0, [pc, #36]	; (8005118 <I2CSendAddr+0x84>)
 80050f2:	f000 f887 	bl	8005204 <I2CWaitForStopToBeCleared>
 80050f6:	687b      	ldr	r3, [r7, #4]
 80050f8:	2202      	movs	r2, #2
 80050fa:	711a      	strb	r2, [r3, #4]
 80050fc:	2302      	movs	r3, #2
 80050fe:	e007      	b.n	8005110 <I2CSendAddr+0x7c>
 8005100:	687b      	ldr	r3, [r7, #4]
 8005102:	681b      	ldr	r3, [r3, #0]
 8005104:	695b      	ldr	r3, [r3, #20]
 8005106:	f003 0302 	and.w	r3, r3, #2
 800510a:	2b00      	cmp	r3, #0
 800510c:	d0d5      	beq.n	80050ba <I2CSendAddr+0x26>
 800510e:	2300      	movs	r3, #0
 8005110:	4618      	mov	r0, r3
 8005112:	3710      	adds	r7, #16
 8005114:	46bd      	mov	sp, r7
 8005116:	bd80      	pop	{r7, pc}
 8005118:	20014dd0 	.word	0x20014dd0

0800511c <I2CWaitForByte>:
 800511c:	b580      	push	{r7, lr}
 800511e:	b084      	sub	sp, #16
 8005120:	af00      	add	r7, sp, #0
 8005122:	6078      	str	r0, [r7, #4]
 8005124:	f001 fcc2 	bl	8006aac <getLocalTime>
 8005128:	60f8      	str	r0, [r7, #12]
 800512a:	e022      	b.n	8005172 <I2CWaitForByte+0x56>
 800512c:	687b      	ldr	r3, [r7, #4]
 800512e:	791b      	ldrb	r3, [r3, #4]
 8005130:	2b00      	cmp	r3, #0
 8005132:	d00a      	beq.n	800514a <I2CWaitForByte+0x2e>
 8005134:	4b15      	ldr	r3, [pc, #84]	; (800518c <I2CWaitForByte+0x70>)
 8005136:	681b      	ldr	r3, [r3, #0]
 8005138:	4618      	mov	r0, r3
 800513a:	f7ff fefb 	bl	8004f34 <I2CStop>
 800513e:	4813      	ldr	r0, [pc, #76]	; (800518c <I2CWaitForByte+0x70>)
 8005140:	f000 f860 	bl	8005204 <I2CWaitForStopToBeCleared>
 8005144:	687b      	ldr	r3, [r7, #4]
 8005146:	791b      	ldrb	r3, [r3, #4]
 8005148:	e01b      	b.n	8005182 <I2CWaitForByte+0x66>
 800514a:	210a      	movs	r1, #10
 800514c:	68f8      	ldr	r0, [r7, #12]
 800514e:	f001 fcdd 	bl	8006b0c <checkTimeout>
 8005152:	4603      	mov	r3, r0
 8005154:	2b00      	cmp	r3, #0
 8005156:	d00c      	beq.n	8005172 <I2CWaitForByte+0x56>
 8005158:	4b0c      	ldr	r3, [pc, #48]	; (800518c <I2CWaitForByte+0x70>)
 800515a:	681b      	ldr	r3, [r3, #0]
 800515c:	4618      	mov	r0, r3
 800515e:	f7ff fee9 	bl	8004f34 <I2CStop>
 8005162:	480a      	ldr	r0, [pc, #40]	; (800518c <I2CWaitForByte+0x70>)
 8005164:	f000 f84e 	bl	8005204 <I2CWaitForStopToBeCleared>
 8005168:	687b      	ldr	r3, [r7, #4]
 800516a:	2202      	movs	r2, #2
 800516c:	711a      	strb	r2, [r3, #4]
 800516e:	2302      	movs	r3, #2
 8005170:	e007      	b.n	8005182 <I2CWaitForByte+0x66>
 8005172:	687b      	ldr	r3, [r7, #4]
 8005174:	681b      	ldr	r3, [r3, #0]
 8005176:	695b      	ldr	r3, [r3, #20]
 8005178:	f003 0340 	and.w	r3, r3, #64	; 0x40
 800517c:	2b00      	cmp	r3, #0
 800517e:	d0d5      	beq.n	800512c <I2CWaitForByte+0x10>
 8005180:	2300      	movs	r3, #0
 8005182:	4618      	mov	r0, r3
 8005184:	3710      	adds	r7, #16
 8005186:	46bd      	mov	sp, r7
 8005188:	bd80      	pop	{r7, pc}
 800518a:	bf00      	nop
 800518c:	20014dd0 	.word	0x20014dd0

08005190 <I2CWaitForBTF>:
 8005190:	b580      	push	{r7, lr}
 8005192:	b084      	sub	sp, #16
 8005194:	af00      	add	r7, sp, #0
 8005196:	6078      	str	r0, [r7, #4]
 8005198:	f001 fc88 	bl	8006aac <getLocalTime>
 800519c:	60f8      	str	r0, [r7, #12]
 800519e:	e022      	b.n	80051e6 <I2CWaitForBTF+0x56>
 80051a0:	687b      	ldr	r3, [r7, #4]
 80051a2:	791b      	ldrb	r3, [r3, #4]
 80051a4:	2b00      	cmp	r3, #0
 80051a6:	d00a      	beq.n	80051be <I2CWaitForBTF+0x2e>
 80051a8:	4b15      	ldr	r3, [pc, #84]	; (8005200 <I2CWaitForBTF+0x70>)
 80051aa:	681b      	ldr	r3, [r3, #0]
 80051ac:	4618      	mov	r0, r3
 80051ae:	f7ff fec1 	bl	8004f34 <I2CStop>
 80051b2:	4813      	ldr	r0, [pc, #76]	; (8005200 <I2CWaitForBTF+0x70>)
 80051b4:	f000 f826 	bl	8005204 <I2CWaitForStopToBeCleared>
 80051b8:	687b      	ldr	r3, [r7, #4]
 80051ba:	791b      	ldrb	r3, [r3, #4]
 80051bc:	e01b      	b.n	80051f6 <I2CWaitForBTF+0x66>
 80051be:	210a      	movs	r1, #10
 80051c0:	68f8      	ldr	r0, [r7, #12]
 80051c2:	f001 fca3 	bl	8006b0c <checkTimeout>
 80051c6:	4603      	mov	r3, r0
 80051c8:	2b00      	cmp	r3, #0
 80051ca:	d00c      	beq.n	80051e6 <I2CWaitForBTF+0x56>
 80051cc:	4b0c      	ldr	r3, [pc, #48]	; (8005200 <I2CWaitForBTF+0x70>)
 80051ce:	681b      	ldr	r3, [r3, #0]
 80051d0:	4618      	mov	r0, r3
 80051d2:	f7ff feaf 	bl	8004f34 <I2CStop>
 80051d6:	480a      	ldr	r0, [pc, #40]	; (8005200 <I2CWaitForBTF+0x70>)
 80051d8:	f000 f814 	bl	8005204 <I2CWaitForStopToBeCleared>
 80051dc:	687b      	ldr	r3, [r7, #4]
 80051de:	2202      	movs	r2, #2
 80051e0:	711a      	strb	r2, [r3, #4]
 80051e2:	2302      	movs	r3, #2
 80051e4:	e007      	b.n	80051f6 <I2CWaitForBTF+0x66>
 80051e6:	687b      	ldr	r3, [r7, #4]
 80051e8:	681b      	ldr	r3, [r3, #0]
 80051ea:	695b      	ldr	r3, [r3, #20]
 80051ec:	f003 0304 	and.w	r3, r3, #4
 80051f0:	2b00      	cmp	r3, #0
 80051f2:	d0d5      	beq.n	80051a0 <I2CWaitForBTF+0x10>
 80051f4:	2300      	movs	r3, #0
 80051f6:	4618      	mov	r0, r3
 80051f8:	3710      	adds	r7, #16
 80051fa:	46bd      	mov	sp, r7
 80051fc:	bd80      	pop	{r7, pc}
 80051fe:	bf00      	nop
 8005200:	20014dd0 	.word	0x20014dd0

08005204 <I2CWaitForStopToBeCleared>:
 8005204:	b580      	push	{r7, lr}
 8005206:	b084      	sub	sp, #16
 8005208:	af00      	add	r7, sp, #0
 800520a:	6078      	str	r0, [r7, #4]
 800520c:	f001 fc4e 	bl	8006aac <getLocalTime>
 8005210:	60f8      	str	r0, [r7, #12]
 8005212:	e012      	b.n	800523a <I2CWaitForStopToBeCleared+0x36>
 8005214:	687b      	ldr	r3, [r7, #4]
 8005216:	791b      	ldrb	r3, [r3, #4]
 8005218:	2b00      	cmp	r3, #0
 800521a:	d002      	beq.n	8005222 <I2CWaitForStopToBeCleared+0x1e>
 800521c:	687b      	ldr	r3, [r7, #4]
 800521e:	791b      	ldrb	r3, [r3, #4]
 8005220:	e013      	b.n	800524a <I2CWaitForStopToBeCleared+0x46>
 8005222:	210a      	movs	r1, #10
 8005224:	68f8      	ldr	r0, [r7, #12]
 8005226:	f001 fc71 	bl	8006b0c <checkTimeout>
 800522a:	4603      	mov	r3, r0
 800522c:	2b00      	cmp	r3, #0
 800522e:	d004      	beq.n	800523a <I2CWaitForStopToBeCleared+0x36>
 8005230:	687b      	ldr	r3, [r7, #4]
 8005232:	2202      	movs	r2, #2
 8005234:	711a      	strb	r2, [r3, #4]
 8005236:	2302      	movs	r3, #2
 8005238:	e007      	b.n	800524a <I2CWaitForStopToBeCleared+0x46>
 800523a:	687b      	ldr	r3, [r7, #4]
 800523c:	681b      	ldr	r3, [r3, #0]
 800523e:	681b      	ldr	r3, [r3, #0]
 8005240:	f403 7300 	and.w	r3, r3, #512	; 0x200
 8005244:	2b00      	cmp	r3, #0
 8005246:	d1e5      	bne.n	8005214 <I2CWaitForStopToBeCleared+0x10>
 8005248:	2300      	movs	r3, #0
 800524a:	4618      	mov	r0, r3
 800524c:	3710      	adds	r7, #16
 800524e:	46bd      	mov	sp, r7
 8005250:	bd80      	pop	{r7, pc}
 8005252:	bf00      	nop

08005254 <I2CWaitBusyLine>:
 8005254:	b580      	push	{r7, lr}
 8005256:	b084      	sub	sp, #16
 8005258:	af00      	add	r7, sp, #0
 800525a:	6078      	str	r0, [r7, #4]
 800525c:	f001 fc26 	bl	8006aac <getLocalTime>
 8005260:	60f8      	str	r0, [r7, #12]
 8005262:	e022      	b.n	80052aa <I2CWaitBusyLine+0x56>
 8005264:	687b      	ldr	r3, [r7, #4]
 8005266:	791b      	ldrb	r3, [r3, #4]
 8005268:	2b00      	cmp	r3, #0
 800526a:	d00a      	beq.n	8005282 <I2CWaitBusyLine+0x2e>
 800526c:	4b15      	ldr	r3, [pc, #84]	; (80052c4 <I2CWaitBusyLine+0x70>)
 800526e:	681b      	ldr	r3, [r3, #0]
 8005270:	4618      	mov	r0, r3
 8005272:	f7ff fe5f 	bl	8004f34 <I2CStop>
 8005276:	4813      	ldr	r0, [pc, #76]	; (80052c4 <I2CWaitBusyLine+0x70>)
 8005278:	f7ff ffc4 	bl	8005204 <I2CWaitForStopToBeCleared>
 800527c:	687b      	ldr	r3, [r7, #4]
 800527e:	791b      	ldrb	r3, [r3, #4]
 8005280:	e01b      	b.n	80052ba <I2CWaitBusyLine+0x66>
 8005282:	210a      	movs	r1, #10
 8005284:	68f8      	ldr	r0, [r7, #12]
 8005286:	f001 fc41 	bl	8006b0c <checkTimeout>
 800528a:	4603      	mov	r3, r0
 800528c:	2b00      	cmp	r3, #0
 800528e:	d00c      	beq.n	80052aa <I2CWaitBusyLine+0x56>
 8005290:	4b0c      	ldr	r3, [pc, #48]	; (80052c4 <I2CWaitBusyLine+0x70>)
 8005292:	681b      	ldr	r3, [r3, #0]
 8005294:	4618      	mov	r0, r3
 8005296:	f7ff fe4d 	bl	8004f34 <I2CStop>
 800529a:	480a      	ldr	r0, [pc, #40]	; (80052c4 <I2CWaitBusyLine+0x70>)
 800529c:	f7ff ffb2 	bl	8005204 <I2CWaitForStopToBeCleared>
 80052a0:	687b      	ldr	r3, [r7, #4]
 80052a2:	2202      	movs	r2, #2
 80052a4:	711a      	strb	r2, [r3, #4]
 80052a6:	2302      	movs	r3, #2
 80052a8:	e007      	b.n	80052ba <I2CWaitBusyLine+0x66>
 80052aa:	687b      	ldr	r3, [r7, #4]
 80052ac:	681b      	ldr	r3, [r3, #0]
 80052ae:	699b      	ldr	r3, [r3, #24]
 80052b0:	f003 0302 	and.w	r3, r3, #2
 80052b4:	2b00      	cmp	r3, #0
 80052b6:	d1d5      	bne.n	8005264 <I2CWaitBusyLine+0x10>
 80052b8:	2300      	movs	r3, #0
 80052ba:	4618      	mov	r0, r3
 80052bc:	3710      	adds	r7, #16
 80052be:	46bd      	mov	sp, r7
 80052c0:	bd80      	pop	{r7, pc}
 80052c2:	bf00      	nop
 80052c4:	20014dd0 	.word	0x20014dd0

080052c8 <I2CSendBytes>:
 80052c8:	b580      	push	{r7, lr}
 80052ca:	b086      	sub	sp, #24
 80052cc:	af00      	add	r7, sp, #0
 80052ce:	60f8      	str	r0, [r7, #12]
 80052d0:	60b9      	str	r1, [r7, #8]
 80052d2:	607a      	str	r2, [r7, #4]
 80052d4:	70fb      	strb	r3, [r7, #3]
 80052d6:	68bb      	ldr	r3, [r7, #8]
 80052d8:	617b      	str	r3, [r7, #20]
 80052da:	68f8      	ldr	r0, [r7, #12]
 80052dc:	f7ff ffba 	bl	8005254 <I2CWaitBusyLine>
 80052e0:	4603      	mov	r3, r0
 80052e2:	2b00      	cmp	r3, #0
 80052e4:	d001      	beq.n	80052ea <I2CSendBytes+0x22>
 80052e6:	2300      	movs	r3, #0
 80052e8:	e03f      	b.n	800536a <I2CSendBytes+0xa2>
 80052ea:	68f8      	ldr	r0, [r7, #12]
 80052ec:	f7ff fe8e 	bl	800500c <I2CStart>
 80052f0:	4603      	mov	r3, r0
 80052f2:	2b00      	cmp	r3, #0
 80052f4:	d001      	beq.n	80052fa <I2CSendBytes+0x32>
 80052f6:	2300      	movs	r3, #0
 80052f8:	e037      	b.n	800536a <I2CSendBytes+0xa2>
 80052fa:	78fb      	ldrb	r3, [r7, #3]
 80052fc:	2200      	movs	r2, #0
 80052fe:	4619      	mov	r1, r3
 8005300:	68f8      	ldr	r0, [r7, #12]
 8005302:	f7ff fec7 	bl	8005094 <I2CSendAddr>
 8005306:	4603      	mov	r3, r0
 8005308:	2b00      	cmp	r3, #0
 800530a:	d001      	beq.n	8005310 <I2CSendBytes+0x48>
 800530c:	2300      	movs	r3, #0
 800530e:	e02c      	b.n	800536a <I2CSendBytes+0xa2>
 8005310:	68fb      	ldr	r3, [r7, #12]
 8005312:	681b      	ldr	r3, [r3, #0]
 8005314:	4618      	mov	r0, r3
 8005316:	f7ff fe3d 	bl	8004f94 <I2CClearAddrFlag>
 800531a:	e015      	b.n	8005348 <I2CSendBytes+0x80>
 800531c:	68fb      	ldr	r3, [r7, #12]
 800531e:	681b      	ldr	r3, [r3, #0]
 8005320:	697a      	ldr	r2, [r7, #20]
 8005322:	7812      	ldrb	r2, [r2, #0]
 8005324:	611a      	str	r2, [r3, #16]
 8005326:	68f8      	ldr	r0, [r7, #12]
 8005328:	f7ff ff32 	bl	8005190 <I2CWaitForBTF>
 800532c:	4603      	mov	r3, r0
 800532e:	2b00      	cmp	r3, #0
 8005330:	d001      	beq.n	8005336 <I2CSendBytes+0x6e>
 8005332:	2300      	movs	r3, #0
 8005334:	e019      	b.n	800536a <I2CSendBytes+0xa2>
 8005336:	68fb      	ldr	r3, [r7, #12]
 8005338:	681b      	ldr	r3, [r3, #0]
 800533a:	695b      	ldr	r3, [r3, #20]
 800533c:	697b      	ldr	r3, [r7, #20]
 800533e:	3301      	adds	r3, #1
 8005340:	617b      	str	r3, [r7, #20]
 8005342:	687b      	ldr	r3, [r7, #4]
 8005344:	3b01      	subs	r3, #1
 8005346:	607b      	str	r3, [r7, #4]
 8005348:	687b      	ldr	r3, [r7, #4]
 800534a:	2b00      	cmp	r3, #0
 800534c:	d1e6      	bne.n	800531c <I2CSendBytes+0x54>
 800534e:	68fb      	ldr	r3, [r7, #12]
 8005350:	681b      	ldr	r3, [r3, #0]
 8005352:	4618      	mov	r0, r3
 8005354:	f7ff fdee 	bl	8004f34 <I2CStop>
 8005358:	68f8      	ldr	r0, [r7, #12]
 800535a:	f7ff ff53 	bl	8005204 <I2CWaitForStopToBeCleared>
 800535e:	4603      	mov	r3, r0
 8005360:	2b00      	cmp	r3, #0
 8005362:	d001      	beq.n	8005368 <I2CSendBytes+0xa0>
 8005364:	2300      	movs	r3, #0
 8005366:	e000      	b.n	800536a <I2CSendBytes+0xa2>
 8005368:	2301      	movs	r3, #1
 800536a:	4618      	mov	r0, r3
 800536c:	3718      	adds	r7, #24
 800536e:	46bd      	mov	sp, r7
 8005370:	bd80      	pop	{r7, pc}
 8005372:	bf00      	nop

08005374 <I2CReadBytes>:
 8005374:	b580      	push	{r7, lr}
 8005376:	b086      	sub	sp, #24
 8005378:	af00      	add	r7, sp, #0
 800537a:	60f8      	str	r0, [r7, #12]
 800537c:	60b9      	str	r1, [r7, #8]
 800537e:	607a      	str	r2, [r7, #4]
 8005380:	70fb      	strb	r3, [r7, #3]
 8005382:	68bb      	ldr	r3, [r7, #8]
 8005384:	617b      	str	r3, [r7, #20]
 8005386:	68f8      	ldr	r0, [r7, #12]
 8005388:	f7ff ff64 	bl	8005254 <I2CWaitBusyLine>
 800538c:	4603      	mov	r3, r0
 800538e:	2b00      	cmp	r3, #0
 8005390:	d001      	beq.n	8005396 <I2CReadBytes+0x22>
 8005392:	2300      	movs	r3, #0
 8005394:	e114      	b.n	80055c0 <I2CReadBytes+0x24c>
 8005396:	687b      	ldr	r3, [r7, #4]
 8005398:	2b01      	cmp	r3, #1
 800539a:	d13e      	bne.n	800541a <I2CReadBytes+0xa6>
 800539c:	68f8      	ldr	r0, [r7, #12]
 800539e:	f7ff fe35 	bl	800500c <I2CStart>
 80053a2:	4603      	mov	r3, r0
 80053a4:	2b00      	cmp	r3, #0
 80053a6:	d001      	beq.n	80053ac <I2CReadBytes+0x38>
 80053a8:	2300      	movs	r3, #0
 80053aa:	e109      	b.n	80055c0 <I2CReadBytes+0x24c>
 80053ac:	78fb      	ldrb	r3, [r7, #3]
 80053ae:	2201      	movs	r2, #1
 80053b0:	4619      	mov	r1, r3
 80053b2:	68f8      	ldr	r0, [r7, #12]
 80053b4:	f7ff fe6e 	bl	8005094 <I2CSendAddr>
 80053b8:	4603      	mov	r3, r0
 80053ba:	2b00      	cmp	r3, #0
 80053bc:	d001      	beq.n	80053c2 <I2CReadBytes+0x4e>
 80053be:	2300      	movs	r3, #0
 80053c0:	e0fe      	b.n	80055c0 <I2CReadBytes+0x24c>
 80053c2:	68fb      	ldr	r3, [r7, #12]
 80053c4:	681b      	ldr	r3, [r3, #0]
 80053c6:	4618      	mov	r0, r3
 80053c8:	f7ff fdd4 	bl	8004f74 <I2CUnSetAck>
 80053cc:	68fb      	ldr	r3, [r7, #12]
 80053ce:	681b      	ldr	r3, [r3, #0]
 80053d0:	4618      	mov	r0, r3
 80053d2:	f7ff fddf 	bl	8004f94 <I2CClearAddrFlag>
 80053d6:	68fb      	ldr	r3, [r7, #12]
 80053d8:	681b      	ldr	r3, [r3, #0]
 80053da:	4618      	mov	r0, r3
 80053dc:	f7ff fdaa 	bl	8004f34 <I2CStop>
 80053e0:	68f8      	ldr	r0, [r7, #12]
 80053e2:	f7ff fe9b 	bl	800511c <I2CWaitForByte>
 80053e6:	4603      	mov	r3, r0
 80053e8:	2b00      	cmp	r3, #0
 80053ea:	d001      	beq.n	80053f0 <I2CReadBytes+0x7c>
 80053ec:	2300      	movs	r3, #0
 80053ee:	e0e7      	b.n	80055c0 <I2CReadBytes+0x24c>
 80053f0:	68fb      	ldr	r3, [r7, #12]
 80053f2:	681b      	ldr	r3, [r3, #0]
 80053f4:	6979      	ldr	r1, [r7, #20]
 80053f6:	4618      	mov	r0, r3
 80053f8:	f7ff fdf8 	bl	8004fec <I2CReadDR>
 80053fc:	68f8      	ldr	r0, [r7, #12]
 80053fe:	f7ff ff01 	bl	8005204 <I2CWaitForStopToBeCleared>
 8005402:	4603      	mov	r3, r0
 8005404:	2b00      	cmp	r3, #0
 8005406:	d001      	beq.n	800540c <I2CReadBytes+0x98>
 8005408:	2300      	movs	r3, #0
 800540a:	e0d9      	b.n	80055c0 <I2CReadBytes+0x24c>
 800540c:	68fb      	ldr	r3, [r7, #12]
 800540e:	681b      	ldr	r3, [r3, #0]
 8005410:	4618      	mov	r0, r3
 8005412:	f7ff fd9f 	bl	8004f54 <I2CSetAck>
 8005416:	2301      	movs	r3, #1
 8005418:	e0d2      	b.n	80055c0 <I2CReadBytes+0x24c>
 800541a:	687b      	ldr	r3, [r7, #4]
 800541c:	2b02      	cmp	r3, #2
 800541e:	d157      	bne.n	80054d0 <I2CReadBytes+0x15c>
 8005420:	68fb      	ldr	r3, [r7, #12]
 8005422:	681b      	ldr	r3, [r3, #0]
 8005424:	4618      	mov	r0, r3
 8005426:	f7ff fd95 	bl	8004f54 <I2CSetAck>
 800542a:	68fb      	ldr	r3, [r7, #12]
 800542c:	681b      	ldr	r3, [r3, #0]
 800542e:	4618      	mov	r0, r3
 8005430:	f7ff fdbc 	bl	8004fac <I2CSetPOS>
 8005434:	68f8      	ldr	r0, [r7, #12]
 8005436:	f7ff fde9 	bl	800500c <I2CStart>
 800543a:	4603      	mov	r3, r0
 800543c:	2b01      	cmp	r3, #1
 800543e:	d001      	beq.n	8005444 <I2CReadBytes+0xd0>
 8005440:	2300      	movs	r3, #0
 8005442:	e0bd      	b.n	80055c0 <I2CReadBytes+0x24c>
 8005444:	78fb      	ldrb	r3, [r7, #3]
 8005446:	2201      	movs	r2, #1
 8005448:	4619      	mov	r1, r3
 800544a:	68f8      	ldr	r0, [r7, #12]
 800544c:	f7ff fe22 	bl	8005094 <I2CSendAddr>
 8005450:	4603      	mov	r3, r0
 8005452:	2b00      	cmp	r3, #0
 8005454:	d001      	beq.n	800545a <I2CReadBytes+0xe6>
 8005456:	2300      	movs	r3, #0
 8005458:	e0b2      	b.n	80055c0 <I2CReadBytes+0x24c>
 800545a:	68fb      	ldr	r3, [r7, #12]
 800545c:	681b      	ldr	r3, [r3, #0]
 800545e:	4618      	mov	r0, r3
 8005460:	f7ff fd98 	bl	8004f94 <I2CClearAddrFlag>
 8005464:	68fb      	ldr	r3, [r7, #12]
 8005466:	681b      	ldr	r3, [r3, #0]
 8005468:	4618      	mov	r0, r3
 800546a:	f7ff fd83 	bl	8004f74 <I2CUnSetAck>
 800546e:	68f8      	ldr	r0, [r7, #12]
 8005470:	f7ff fe8e 	bl	8005190 <I2CWaitForBTF>
 8005474:	4603      	mov	r3, r0
 8005476:	2b00      	cmp	r3, #0
 8005478:	d001      	beq.n	800547e <I2CReadBytes+0x10a>
 800547a:	2300      	movs	r3, #0
 800547c:	e0a0      	b.n	80055c0 <I2CReadBytes+0x24c>
 800547e:	b672      	cpsid	i
 8005480:	68fb      	ldr	r3, [r7, #12]
 8005482:	681b      	ldr	r3, [r3, #0]
 8005484:	4618      	mov	r0, r3
 8005486:	f7ff fd55 	bl	8004f34 <I2CStop>
 800548a:	68fb      	ldr	r3, [r7, #12]
 800548c:	681b      	ldr	r3, [r3, #0]
 800548e:	6979      	ldr	r1, [r7, #20]
 8005490:	4618      	mov	r0, r3
 8005492:	f7ff fdab 	bl	8004fec <I2CReadDR>
 8005496:	b662      	cpsie	i
 8005498:	697b      	ldr	r3, [r7, #20]
 800549a:	3301      	adds	r3, #1
 800549c:	617b      	str	r3, [r7, #20]
 800549e:	68fb      	ldr	r3, [r7, #12]
 80054a0:	681b      	ldr	r3, [r3, #0]
 80054a2:	6979      	ldr	r1, [r7, #20]
 80054a4:	4618      	mov	r0, r3
 80054a6:	f7ff fda1 	bl	8004fec <I2CReadDR>
 80054aa:	68f8      	ldr	r0, [r7, #12]
 80054ac:	f7ff feaa 	bl	8005204 <I2CWaitForStopToBeCleared>
 80054b0:	4603      	mov	r3, r0
 80054b2:	2b00      	cmp	r3, #0
 80054b4:	d001      	beq.n	80054ba <I2CReadBytes+0x146>
 80054b6:	2300      	movs	r3, #0
 80054b8:	e082      	b.n	80055c0 <I2CReadBytes+0x24c>
 80054ba:	68fb      	ldr	r3, [r7, #12]
 80054bc:	681b      	ldr	r3, [r3, #0]
 80054be:	4618      	mov	r0, r3
 80054c0:	f7ff fd84 	bl	8004fcc <I2CUnSetPOS>
 80054c4:	68fb      	ldr	r3, [r7, #12]
 80054c6:	681b      	ldr	r3, [r3, #0]
 80054c8:	4618      	mov	r0, r3
 80054ca:	f7ff fd43 	bl	8004f54 <I2CSetAck>
 80054ce:	e076      	b.n	80055be <I2CReadBytes+0x24a>
 80054d0:	68f8      	ldr	r0, [r7, #12]
 80054d2:	f7ff fd9b 	bl	800500c <I2CStart>
 80054d6:	4603      	mov	r3, r0
 80054d8:	2b00      	cmp	r3, #0
 80054da:	d001      	beq.n	80054e0 <I2CReadBytes+0x16c>
 80054dc:	2300      	movs	r3, #0
 80054de:	e06f      	b.n	80055c0 <I2CReadBytes+0x24c>
 80054e0:	78fb      	ldrb	r3, [r7, #3]
 80054e2:	2201      	movs	r2, #1
 80054e4:	4619      	mov	r1, r3
 80054e6:	68f8      	ldr	r0, [r7, #12]
 80054e8:	f7ff fdd4 	bl	8005094 <I2CSendAddr>
 80054ec:	4603      	mov	r3, r0
 80054ee:	2b00      	cmp	r3, #0
 80054f0:	d001      	beq.n	80054f6 <I2CReadBytes+0x182>
 80054f2:	2300      	movs	r3, #0
 80054f4:	e064      	b.n	80055c0 <I2CReadBytes+0x24c>
 80054f6:	68fb      	ldr	r3, [r7, #12]
 80054f8:	681b      	ldr	r3, [r3, #0]
 80054fa:	4618      	mov	r0, r3
 80054fc:	f7ff fd4a 	bl	8004f94 <I2CClearAddrFlag>
 8005500:	e04d      	b.n	800559e <I2CReadBytes+0x22a>
 8005502:	687b      	ldr	r3, [r7, #4]
 8005504:	2b03      	cmp	r3, #3
 8005506:	d013      	beq.n	8005530 <I2CReadBytes+0x1bc>
 8005508:	68f8      	ldr	r0, [r7, #12]
 800550a:	f7ff fe41 	bl	8005190 <I2CWaitForBTF>
 800550e:	4603      	mov	r3, r0
 8005510:	2b00      	cmp	r3, #0
 8005512:	d001      	beq.n	8005518 <I2CReadBytes+0x1a4>
 8005514:	2300      	movs	r3, #0
 8005516:	e053      	b.n	80055c0 <I2CReadBytes+0x24c>
 8005518:	68fb      	ldr	r3, [r7, #12]
 800551a:	681b      	ldr	r3, [r3, #0]
 800551c:	6979      	ldr	r1, [r7, #20]
 800551e:	4618      	mov	r0, r3
 8005520:	f7ff fd64 	bl	8004fec <I2CReadDR>
 8005524:	697b      	ldr	r3, [r7, #20]
 8005526:	3301      	adds	r3, #1
 8005528:	617b      	str	r3, [r7, #20]
 800552a:	687b      	ldr	r3, [r7, #4]
 800552c:	3b01      	subs	r3, #1
 800552e:	607b      	str	r3, [r7, #4]
 8005530:	687b      	ldr	r3, [r7, #4]
 8005532:	2b03      	cmp	r3, #3
 8005534:	d133      	bne.n	800559e <I2CReadBytes+0x22a>
 8005536:	68f8      	ldr	r0, [r7, #12]
 8005538:	f7ff fe2a 	bl	8005190 <I2CWaitForBTF>
 800553c:	4603      	mov	r3, r0
 800553e:	2b00      	cmp	r3, #0
 8005540:	d001      	beq.n	8005546 <I2CReadBytes+0x1d2>
 8005542:	2300      	movs	r3, #0
 8005544:	e03c      	b.n	80055c0 <I2CReadBytes+0x24c>
 8005546:	68fb      	ldr	r3, [r7, #12]
 8005548:	681b      	ldr	r3, [r3, #0]
 800554a:	4618      	mov	r0, r3
 800554c:	f7ff fd12 	bl	8004f74 <I2CUnSetAck>
 8005550:	68fb      	ldr	r3, [r7, #12]
 8005552:	681b      	ldr	r3, [r3, #0]
 8005554:	6979      	ldr	r1, [r7, #20]
 8005556:	4618      	mov	r0, r3
 8005558:	f7ff fd48 	bl	8004fec <I2CReadDR>
 800555c:	697b      	ldr	r3, [r7, #20]
 800555e:	3301      	adds	r3, #1
 8005560:	617b      	str	r3, [r7, #20]
 8005562:	68fb      	ldr	r3, [r7, #12]
 8005564:	681b      	ldr	r3, [r3, #0]
 8005566:	4618      	mov	r0, r3
 8005568:	f7ff fce4 	bl	8004f34 <I2CStop>
 800556c:	68fb      	ldr	r3, [r7, #12]
 800556e:	681b      	ldr	r3, [r3, #0]
 8005570:	6979      	ldr	r1, [r7, #20]
 8005572:	4618      	mov	r0, r3
 8005574:	f7ff fd3a 	bl	8004fec <I2CReadDR>
 8005578:	697b      	ldr	r3, [r7, #20]
 800557a:	3301      	adds	r3, #1
 800557c:	617b      	str	r3, [r7, #20]
 800557e:	68f8      	ldr	r0, [r7, #12]
 8005580:	f7ff fdcc 	bl	800511c <I2CWaitForByte>
 8005584:	4603      	mov	r3, r0
 8005586:	2b00      	cmp	r3, #0
 8005588:	d001      	beq.n	800558e <I2CReadBytes+0x21a>
 800558a:	2300      	movs	r3, #0
 800558c:	e018      	b.n	80055c0 <I2CReadBytes+0x24c>
 800558e:	68fb      	ldr	r3, [r7, #12]
 8005590:	681b      	ldr	r3, [r3, #0]
 8005592:	6979      	ldr	r1, [r7, #20]
 8005594:	4618      	mov	r0, r3
 8005596:	f7ff fd29 	bl	8004fec <I2CReadDR>
 800559a:	2300      	movs	r3, #0
 800559c:	607b      	str	r3, [r7, #4]
 800559e:	687b      	ldr	r3, [r7, #4]
 80055a0:	2b00      	cmp	r3, #0
 80055a2:	d1ae      	bne.n	8005502 <I2CReadBytes+0x18e>
 80055a4:	68f8      	ldr	r0, [r7, #12]
 80055a6:	f7ff fe2d 	bl	8005204 <I2CWaitForStopToBeCleared>
 80055aa:	4603      	mov	r3, r0
 80055ac:	2b00      	cmp	r3, #0
 80055ae:	d001      	beq.n	80055b4 <I2CReadBytes+0x240>
 80055b0:	2300      	movs	r3, #0
 80055b2:	e005      	b.n	80055c0 <I2CReadBytes+0x24c>
 80055b4:	68fb      	ldr	r3, [r7, #12]
 80055b6:	681b      	ldr	r3, [r3, #0]
 80055b8:	4618      	mov	r0, r3
 80055ba:	f7ff fccb 	bl	8004f54 <I2CSetAck>
 80055be:	2301      	movs	r3, #1
 80055c0:	4618      	mov	r0, r3
 80055c2:	3718      	adds	r7, #24
 80055c4:	46bd      	mov	sp, r7
 80055c6:	bd80      	pop	{r7, pc}

080055c8 <usartPutCharNoEcho>:
 80055c8:	b480      	push	{r7}
 80055ca:	b085      	sub	sp, #20
 80055cc:	af00      	add	r7, sp, #0
 80055ce:	6078      	str	r0, [r7, #4]
 80055d0:	460b      	mov	r3, r1
 80055d2:	70fb      	strb	r3, [r7, #3]
 80055d4:	4b13      	ldr	r3, [pc, #76]	; (8005624 <usartPutCharNoEcho+0x5c>)
 80055d6:	60fb      	str	r3, [r7, #12]
 80055d8:	78fa      	ldrb	r2, [r7, #3]
 80055da:	687b      	ldr	r3, [r7, #4]
 80055dc:	605a      	str	r2, [r3, #4]
 80055de:	687b      	ldr	r3, [r7, #4]
 80055e0:	68db      	ldr	r3, [r3, #12]
 80055e2:	f023 0204 	bic.w	r2, r3, #4
 80055e6:	687b      	ldr	r3, [r7, #4]
 80055e8:	60da      	str	r2, [r3, #12]
 80055ea:	e007      	b.n	80055fc <usartPutCharNoEcho+0x34>
 80055ec:	68fb      	ldr	r3, [r7, #12]
 80055ee:	3b01      	subs	r3, #1
 80055f0:	60fb      	str	r3, [r7, #12]
 80055f2:	68fb      	ldr	r3, [r7, #12]
 80055f4:	2b00      	cmp	r3, #0
 80055f6:	d101      	bne.n	80055fc <usartPutCharNoEcho+0x34>
 80055f8:	2300      	movs	r3, #0
 80055fa:	e00c      	b.n	8005616 <usartPutCharNoEcho+0x4e>
 80055fc:	687b      	ldr	r3, [r7, #4]
 80055fe:	681b      	ldr	r3, [r3, #0]
 8005600:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8005604:	2b00      	cmp	r3, #0
 8005606:	d0f1      	beq.n	80055ec <usartPutCharNoEcho+0x24>
 8005608:	687b      	ldr	r3, [r7, #4]
 800560a:	68db      	ldr	r3, [r3, #12]
 800560c:	f043 0204 	orr.w	r2, r3, #4
 8005610:	687b      	ldr	r3, [r7, #4]
 8005612:	60da      	str	r2, [r3, #12]
 8005614:	2301      	movs	r3, #1
 8005616:	4618      	mov	r0, r3
 8005618:	3714      	adds	r7, #20
 800561a:	46bd      	mov	sp, r7
 800561c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8005620:	4770      	bx	lr
 8005622:	bf00      	nop
 8005624:	77359400 	.word	0x77359400

08005628 <rccGetApb1Prescaler>:
 8005628:	b480      	push	{r7}
 800562a:	b083      	sub	sp, #12
 800562c:	af00      	add	r7, sp, #0
 800562e:	2301      	movs	r3, #1
 8005630:	71bb      	strb	r3, [r7, #6]
 8005632:	4b11      	ldr	r3, [pc, #68]	; (8005678 <rccGetApb1Prescaler+0x50>)
 8005634:	689b      	ldr	r3, [r3, #8]
 8005636:	f403 53e0 	and.w	r3, r3, #7168	; 0x1c00
 800563a:	0a9b      	lsrs	r3, r3, #10
 800563c:	717b      	strb	r3, [r7, #5]
 800563e:	797b      	ldrb	r3, [r7, #5]
 8005640:	2b03      	cmp	r3, #3
 8005642:	d801      	bhi.n	8005648 <rccGetApb1Prescaler+0x20>
 8005644:	79bb      	ldrb	r3, [r7, #6]
 8005646:	e010      	b.n	800566a <rccGetApb1Prescaler+0x42>
 8005648:	2302      	movs	r3, #2
 800564a:	71bb      	strb	r3, [r7, #6]
 800564c:	2300      	movs	r3, #0
 800564e:	71fb      	strb	r3, [r7, #7]
 8005650:	e005      	b.n	800565e <rccGetApb1Prescaler+0x36>
 8005652:	79bb      	ldrb	r3, [r7, #6]
 8005654:	005b      	lsls	r3, r3, #1
 8005656:	71bb      	strb	r3, [r7, #6]
 8005658:	79fb      	ldrb	r3, [r7, #7]
 800565a:	3301      	adds	r3, #1
 800565c:	71fb      	strb	r3, [r7, #7]
 800565e:	79fa      	ldrb	r2, [r7, #7]
 8005660:	797b      	ldrb	r3, [r7, #5]
 8005662:	3b04      	subs	r3, #4
 8005664:	429a      	cmp	r2, r3
 8005666:	dbf4      	blt.n	8005652 <rccGetApb1Prescaler+0x2a>
 8005668:	79bb      	ldrb	r3, [r7, #6]
 800566a:	4618      	mov	r0, r3
 800566c:	370c      	adds	r7, #12
 800566e:	46bd      	mov	sp, r7
 8005670:	f85d 7b04 	ldr.w	r7, [sp], #4
 8005674:	4770      	bx	lr
 8005676:	bf00      	nop
 8005678:	40023800 	.word	0x40023800

0800567c <timPwmChangeDutyCycle>:
 800567c:	b480      	push	{r7}
 800567e:	b085      	sub	sp, #20
 8005680:	af00      	add	r7, sp, #0
 8005682:	60f8      	str	r0, [r7, #12]
 8005684:	460b      	mov	r3, r1
 8005686:	ed87 0a01 	vstr	s0, [r7, #4]
 800568a:	72fb      	strb	r3, [r7, #11]
 800568c:	7afb      	ldrb	r3, [r7, #11]
 800568e:	2b01      	cmp	r3, #1
 8005690:	d110      	bne.n	80056b4 <timPwmChangeDutyCycle+0x38>
 8005692:	68fb      	ldr	r3, [r7, #12]
 8005694:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8005696:	ee07 3a90 	vmov	s15, r3
 800569a:	eeb8 7a67 	vcvt.f32.u32	s14, s15
 800569e:	edd7 7a01 	vldr	s15, [r7, #4]
 80056a2:	ee67 7a27 	vmul.f32	s15, s14, s15
 80056a6:	eefc 7ae7 	vcvt.u32.f32	s15, s15
 80056aa:	ee17 2a90 	vmov	r2, s15
 80056ae:	68fb      	ldr	r3, [r7, #12]
 80056b0:	635a      	str	r2, [r3, #52]	; 0x34
 80056b2:	e03f      	b.n	8005734 <timPwmChangeDutyCycle+0xb8>
 80056b4:	7afb      	ldrb	r3, [r7, #11]
 80056b6:	2b02      	cmp	r3, #2
 80056b8:	d110      	bne.n	80056dc <timPwmChangeDutyCycle+0x60>
 80056ba:	68fb      	ldr	r3, [r7, #12]
 80056bc:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80056be:	ee07 3a90 	vmov	s15, r3
 80056c2:	eeb8 7a67 	vcvt.f32.u32	s14, s15
 80056c6:	edd7 7a01 	vldr	s15, [r7, #4]
 80056ca:	ee67 7a27 	vmul.f32	s15, s14, s15
 80056ce:	eefc 7ae7 	vcvt.u32.f32	s15, s15
 80056d2:	ee17 2a90 	vmov	r2, s15
 80056d6:	68fb      	ldr	r3, [r7, #12]
 80056d8:	639a      	str	r2, [r3, #56]	; 0x38
 80056da:	e02b      	b.n	8005734 <timPwmChangeDutyCycle+0xb8>
 80056dc:	7afb      	ldrb	r3, [r7, #11]
 80056de:	2b03      	cmp	r3, #3
 80056e0:	d110      	bne.n	8005704 <timPwmChangeDutyCycle+0x88>
 80056e2:	68fb      	ldr	r3, [r7, #12]
 80056e4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80056e6:	ee07 3a90 	vmov	s15, r3
 80056ea:	eeb8 7a67 	vcvt.f32.u32	s14, s15
 80056ee:	edd7 7a01 	vldr	s15, [r7, #4]
 80056f2:	ee67 7a27 	vmul.f32	s15, s14, s15
 80056f6:	eefc 7ae7 	vcvt.u32.f32	s15, s15
 80056fa:	ee17 2a90 	vmov	r2, s15
 80056fe:	68fb      	ldr	r3, [r7, #12]
 8005700:	63da      	str	r2, [r3, #60]	; 0x3c
 8005702:	e017      	b.n	8005734 <timPwmChangeDutyCycle+0xb8>
 8005704:	7afb      	ldrb	r3, [r7, #11]
 8005706:	2b04      	cmp	r3, #4
 8005708:	d110      	bne.n	800572c <timPwmChangeDutyCycle+0xb0>
 800570a:	68fb      	ldr	r3, [r7, #12]
 800570c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800570e:	ee07 3a90 	vmov	s15, r3
 8005712:	eeb8 7a67 	vcvt.f32.u32	s14, s15
 8005716:	edd7 7a01 	vldr	s15, [r7, #4]
 800571a:	ee67 7a27 	vmul.f32	s15, s14, s15
 800571e:	eefc 7ae7 	vcvt.u32.f32	s15, s15
 8005722:	ee17 2a90 	vmov	r2, s15
 8005726:	68fb      	ldr	r3, [r7, #12]
 8005728:	641a      	str	r2, [r3, #64]	; 0x40
 800572a:	e003      	b.n	8005734 <timPwmChangeDutyCycle+0xb8>
 800572c:	68fb      	ldr	r3, [r7, #12]
 800572e:	2201      	movs	r2, #1
 8005730:	615a      	str	r2, [r3, #20]
 8005732:	bf00      	nop
 8005734:	3714      	adds	r7, #20
 8005736:	46bd      	mov	sp, r7
 8005738:	f85d 7b04 	ldr.w	r7, [sp], #4
 800573c:	4770      	bx	lr
 800573e:	bf00      	nop

08005740 <timEnable>:
 8005740:	b580      	push	{r7, lr}
 8005742:	b082      	sub	sp, #8
 8005744:	af00      	add	r7, sp, #0
 8005746:	6078      	str	r0, [r7, #4]
 8005748:	6878      	ldr	r0, [r7, #4]
 800574a:	f000 f811 	bl	8005770 <timClearStatusRegister>
 800574e:	687b      	ldr	r3, [r7, #4]
 8005750:	681b      	ldr	r3, [r3, #0]
 8005752:	f003 0301 	and.w	r3, r3, #1
 8005756:	2b00      	cmp	r3, #0
 8005758:	d106      	bne.n	8005768 <timEnable+0x28>
 800575a:	687b      	ldr	r3, [r7, #4]
 800575c:	681b      	ldr	r3, [r3, #0]
 800575e:	f043 0201 	orr.w	r2, r3, #1
 8005762:	687b      	ldr	r3, [r7, #4]
 8005764:	601a      	str	r2, [r3, #0]
 8005766:	bf00      	nop
 8005768:	bf00      	nop
 800576a:	3708      	adds	r7, #8
 800576c:	46bd      	mov	sp, r7
 800576e:	bd80      	pop	{r7, pc}

08005770 <timClearStatusRegister>:
 8005770:	b480      	push	{r7}
 8005772:	b083      	sub	sp, #12
 8005774:	af00      	add	r7, sp, #0
 8005776:	6078      	str	r0, [r7, #4]
 8005778:	687b      	ldr	r3, [r7, #4]
 800577a:	2200      	movs	r2, #0
 800577c:	611a      	str	r2, [r3, #16]
 800577e:	bf00      	nop
 8005780:	370c      	adds	r7, #12
 8005782:	46bd      	mov	sp, r7
 8005784:	f85d 7b04 	ldr.w	r7, [sp], #4
 8005788:	4770      	bx	lr
 800578a:	bf00      	nop

0800578c <timClearStatusRegisterFlag>:
 800578c:	b480      	push	{r7}
 800578e:	b083      	sub	sp, #12
 8005790:	af00      	add	r7, sp, #0
 8005792:	6078      	str	r0, [r7, #4]
 8005794:	460b      	mov	r3, r1
 8005796:	807b      	strh	r3, [r7, #2]
 8005798:	687b      	ldr	r3, [r7, #4]
 800579a:	691b      	ldr	r3, [r3, #16]
 800579c:	887a      	ldrh	r2, [r7, #2]
 800579e:	43d2      	mvns	r2, r2
 80057a0:	401a      	ands	r2, r3
 80057a2:	687b      	ldr	r3, [r7, #4]
 80057a4:	611a      	str	r2, [r3, #16]
 80057a6:	bf00      	nop
 80057a8:	370c      	adds	r7, #12
 80057aa:	46bd      	mov	sp, r7
 80057ac:	f85d 7b04 	ldr.w	r7, [sp], #4
 80057b0:	4770      	bx	lr
 80057b2:	bf00      	nop

080057b4 <normalizeAngle>:
 80057b4:	b480      	push	{r7}
 80057b6:	b083      	sub	sp, #12
 80057b8:	af00      	add	r7, sp, #0
 80057ba:	6078      	str	r0, [r7, #4]
 80057bc:	687b      	ldr	r3, [r7, #4]
 80057be:	edd3 7a00 	vldr	s15, [r3]
 80057c2:	ed9f 7a15 	vldr	s14, [pc, #84]	; 8005818 <normalizeAngle+0x64>
 80057c6:	eef4 7ac7 	vcmpe.f32	s15, s14
 80057ca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80057ce:	db0a      	blt.n	80057e6 <normalizeAngle+0x32>
 80057d0:	687b      	ldr	r3, [r7, #4]
 80057d2:	edd3 7a00 	vldr	s15, [r3]
 80057d6:	ed9f 7a10 	vldr	s14, [pc, #64]	; 8005818 <normalizeAngle+0x64>
 80057da:	ee77 7ac7 	vsub.f32	s15, s15, s14
 80057de:	687b      	ldr	r3, [r7, #4]
 80057e0:	edc3 7a00 	vstr	s15, [r3]
 80057e4:	e013      	b.n	800580e <normalizeAngle+0x5a>
 80057e6:	687b      	ldr	r3, [r7, #4]
 80057e8:	edd3 7a00 	vldr	s15, [r3]
 80057ec:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 80057f0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80057f4:	d400      	bmi.n	80057f8 <normalizeAngle+0x44>
 80057f6:	e00a      	b.n	800580e <normalizeAngle+0x5a>
 80057f8:	687b      	ldr	r3, [r7, #4]
 80057fa:	edd3 7a00 	vldr	s15, [r3]
 80057fe:	ed9f 7a06 	vldr	s14, [pc, #24]	; 8005818 <normalizeAngle+0x64>
 8005802:	ee77 7a87 	vadd.f32	s15, s15, s14
 8005806:	687b      	ldr	r3, [r7, #4]
 8005808:	edc3 7a00 	vstr	s15, [r3]
 800580c:	bf00      	nop
 800580e:	370c      	adds	r7, #12
 8005810:	46bd      	mov	sp, r7
 8005812:	f85d 7b04 	ldr.w	r7, [sp], #4
 8005816:	4770      	bx	lr
 8005818:	40c90fdb 	.word	0x40c90fdb

0800581c <maxValue>:
 800581c:	b480      	push	{r7}
 800581e:	b087      	sub	sp, #28
 8005820:	af00      	add	r7, sp, #0
 8005822:	60f8      	str	r0, [r7, #12]
 8005824:	460b      	mov	r3, r1
 8005826:	607a      	str	r2, [r7, #4]
 8005828:	72fb      	strb	r3, [r7, #11]
 800582a:	68fb      	ldr	r3, [r7, #12]
 800582c:	edd3 7a00 	vldr	s15, [r3]
 8005830:	eef0 7ae7 	vabs.f32	s15, s15
 8005834:	687b      	ldr	r3, [r7, #4]
 8005836:	edc3 7a00 	vstr	s15, [r3]
 800583a:	2301      	movs	r3, #1
 800583c:	75fb      	strb	r3, [r7, #23]
 800583e:	e01d      	b.n	800587c <maxValue+0x60>
 8005840:	687b      	ldr	r3, [r7, #4]
 8005842:	ed93 7a00 	vldr	s14, [r3]
 8005846:	7dfb      	ldrb	r3, [r7, #23]
 8005848:	009b      	lsls	r3, r3, #2
 800584a:	68fa      	ldr	r2, [r7, #12]
 800584c:	4413      	add	r3, r2
 800584e:	edd3 7a00 	vldr	s15, [r3]
 8005852:	eef0 7ae7 	vabs.f32	s15, s15
 8005856:	eeb4 7ae7 	vcmpe.f32	s14, s15
 800585a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800585e:	d50a      	bpl.n	8005876 <maxValue+0x5a>
 8005860:	7dfb      	ldrb	r3, [r7, #23]
 8005862:	009b      	lsls	r3, r3, #2
 8005864:	68fa      	ldr	r2, [r7, #12]
 8005866:	4413      	add	r3, r2
 8005868:	edd3 7a00 	vldr	s15, [r3]
 800586c:	eef0 7ae7 	vabs.f32	s15, s15
 8005870:	687b      	ldr	r3, [r7, #4]
 8005872:	edc3 7a00 	vstr	s15, [r3]
 8005876:	7dfb      	ldrb	r3, [r7, #23]
 8005878:	3301      	adds	r3, #1
 800587a:	75fb      	strb	r3, [r7, #23]
 800587c:	7dfa      	ldrb	r2, [r7, #23]
 800587e:	7afb      	ldrb	r3, [r7, #11]
 8005880:	3b01      	subs	r3, #1
 8005882:	429a      	cmp	r2, r3
 8005884:	dddc      	ble.n	8005840 <maxValue+0x24>
 8005886:	bf00      	nop
 8005888:	371c      	adds	r7, #28
 800588a:	46bd      	mov	sp, r7
 800588c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8005890:	4770      	bx	lr
 8005892:	bf00      	nop

08005894 <calcGlobSpeedAndCoord>:
 8005894:	b580      	push	{r7, lr}
 8005896:	b08a      	sub	sp, #40	; 0x28
 8005898:	af04      	add	r7, sp, #16
 800589a:	4b36      	ldr	r3, [pc, #216]	; (8005974 <calcGlobSpeedAndCoord+0xe0>)
 800589c:	689b      	ldr	r3, [r3, #8]
 800589e:	617b      	str	r3, [r7, #20]
 80058a0:	ed97 0a05 	vldr	s0, [r7, #20]
 80058a4:	f7fd ffce 	bl	8003844 <cosf>
 80058a8:	eef0 7a40 	vmov.f32	s15, s0
 80058ac:	edc7 7a01 	vstr	s15, [r7, #4]
 80058b0:	ed97 0a05 	vldr	s0, [r7, #20]
 80058b4:	f7fe f80e 	bl	80038d4 <sinf>
 80058b8:	eef0 7a40 	vmov.f32	s15, s0
 80058bc:	eef1 7a67 	vneg.f32	s15, s15
 80058c0:	edc7 7a02 	vstr	s15, [r7, #8]
 80058c4:	ed97 0a05 	vldr	s0, [r7, #20]
 80058c8:	f7fe f804 	bl	80038d4 <sinf>
 80058cc:	eef0 7a40 	vmov.f32	s15, s0
 80058d0:	edc7 7a03 	vstr	s15, [r7, #12]
 80058d4:	ed97 0a05 	vldr	s0, [r7, #20]
 80058d8:	f7fd ffb4 	bl	8003844 <cosf>
 80058dc:	eef0 7a40 	vmov.f32	s15, s0
 80058e0:	edc7 7a04 	vstr	s15, [r7, #16]
 80058e4:	1d38      	adds	r0, r7, #4
 80058e6:	4b24      	ldr	r3, [pc, #144]	; (8005978 <calcGlobSpeedAndCoord+0xe4>)
 80058e8:	9302      	str	r3, [sp, #8]
 80058ea:	2301      	movs	r3, #1
 80058ec:	9301      	str	r3, [sp, #4]
 80058ee:	2302      	movs	r3, #2
 80058f0:	9300      	str	r3, [sp, #0]
 80058f2:	4b22      	ldr	r3, [pc, #136]	; (800597c <calcGlobSpeedAndCoord+0xe8>)
 80058f4:	2202      	movs	r2, #2
 80058f6:	2102      	movs	r1, #2
 80058f8:	f002 f810 	bl	800791c <matrixMultiplyM2M>
 80058fc:	4b1f      	ldr	r3, [pc, #124]	; (800597c <calcGlobSpeedAndCoord+0xe8>)
 80058fe:	689b      	ldr	r3, [r3, #8]
 8005900:	4a1d      	ldr	r2, [pc, #116]	; (8005978 <calcGlobSpeedAndCoord+0xe4>)
 8005902:	6093      	str	r3, [r2, #8]
 8005904:	4b1b      	ldr	r3, [pc, #108]	; (8005974 <calcGlobSpeedAndCoord+0xe0>)
 8005906:	ed93 7a00 	vldr	s14, [r3]
 800590a:	4b1b      	ldr	r3, [pc, #108]	; (8005978 <calcGlobSpeedAndCoord+0xe4>)
 800590c:	edd3 6a00 	vldr	s13, [r3]
 8005910:	4b1b      	ldr	r3, [pc, #108]	; (8005980 <calcGlobSpeedAndCoord+0xec>)
 8005912:	edd3 7a00 	vldr	s15, [r3]
 8005916:	ee66 7aa7 	vmul.f32	s15, s13, s15
 800591a:	ee77 7a27 	vadd.f32	s15, s14, s15
 800591e:	4b15      	ldr	r3, [pc, #84]	; (8005974 <calcGlobSpeedAndCoord+0xe0>)
 8005920:	edc3 7a00 	vstr	s15, [r3]
 8005924:	4b13      	ldr	r3, [pc, #76]	; (8005974 <calcGlobSpeedAndCoord+0xe0>)
 8005926:	ed93 7a01 	vldr	s14, [r3, #4]
 800592a:	4b13      	ldr	r3, [pc, #76]	; (8005978 <calcGlobSpeedAndCoord+0xe4>)
 800592c:	edd3 6a01 	vldr	s13, [r3, #4]
 8005930:	4b13      	ldr	r3, [pc, #76]	; (8005980 <calcGlobSpeedAndCoord+0xec>)
 8005932:	edd3 7a00 	vldr	s15, [r3]
 8005936:	ee66 7aa7 	vmul.f32	s15, s13, s15
 800593a:	ee77 7a27 	vadd.f32	s15, s14, s15
 800593e:	4b0d      	ldr	r3, [pc, #52]	; (8005974 <calcGlobSpeedAndCoord+0xe0>)
 8005940:	edc3 7a01 	vstr	s15, [r3, #4]
 8005944:	4b0b      	ldr	r3, [pc, #44]	; (8005974 <calcGlobSpeedAndCoord+0xe0>)
 8005946:	ed93 7a02 	vldr	s14, [r3, #8]
 800594a:	4b0b      	ldr	r3, [pc, #44]	; (8005978 <calcGlobSpeedAndCoord+0xe4>)
 800594c:	edd3 6a02 	vldr	s13, [r3, #8]
 8005950:	4b0b      	ldr	r3, [pc, #44]	; (8005980 <calcGlobSpeedAndCoord+0xec>)
 8005952:	edd3 7a00 	vldr	s15, [r3]
 8005956:	ee66 7aa7 	vmul.f32	s15, s13, s15
 800595a:	ee77 7a27 	vadd.f32	s15, s14, s15
 800595e:	4b05      	ldr	r3, [pc, #20]	; (8005974 <calcGlobSpeedAndCoord+0xe0>)
 8005960:	edc3 7a02 	vstr	s15, [r3, #8]
 8005964:	4807      	ldr	r0, [pc, #28]	; (8005984 <calcGlobSpeedAndCoord+0xf0>)
 8005966:	f7ff ff25 	bl	80057b4 <normalizeAngle>
 800596a:	bf00      	nop
 800596c:	3718      	adds	r7, #24
 800596e:	46bd      	mov	sp, r7
 8005970:	bd80      	pop	{r7, pc}
 8005972:	bf00      	nop
 8005974:	20014eb4 	.word	0x20014eb4
 8005978:	20014ec0 	.word	0x20014ec0
 800597c:	20014ea8 	.word	0x20014ea8
 8005980:	20014e90 	.word	0x20014e90
 8005984:	20014ebc 	.word	0x20014ebc

08005988 <readEnc>:
 8005988:	b580      	push	{r7, lr}
 800598a:	b084      	sub	sp, #16
 800598c:	af00      	add	r7, sp, #0
 800598e:	2300      	movs	r3, #0
 8005990:	73fb      	strb	r3, [r7, #15]
 8005992:	e01b      	b.n	80059cc <readEnc+0x44>
 8005994:	7bfa      	ldrb	r2, [r7, #15]
 8005996:	7bfb      	ldrb	r3, [r7, #15]
 8005998:	4963      	ldr	r1, [pc, #396]	; (8005b28 <readEnc+0x1a0>)
 800599a:	f851 3023 	ldr.w	r3, [r1, r3, lsl #2]
 800599e:	881b      	ldrh	r3, [r3, #0]
 80059a0:	f5a3 43ea 	sub.w	r3, r3, #29952	; 0x7500
 80059a4:	3b30      	subs	r3, #48	; 0x30
 80059a6:	b29b      	uxth	r3, r3
 80059a8:	b219      	sxth	r1, r3
 80059aa:	0053      	lsls	r3, r2, #1
 80059ac:	f107 0210 	add.w	r2, r7, #16
 80059b0:	4413      	add	r3, r2
 80059b2:	460a      	mov	r2, r1
 80059b4:	f823 2c0c 	strh.w	r2, [r3, #-12]
 80059b8:	7bfb      	ldrb	r3, [r7, #15]
 80059ba:	4a5b      	ldr	r2, [pc, #364]	; (8005b28 <readEnc+0x1a0>)
 80059bc:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80059c0:	f247 5230 	movw	r2, #30000	; 0x7530
 80059c4:	801a      	strh	r2, [r3, #0]
 80059c6:	7bfb      	ldrb	r3, [r7, #15]
 80059c8:	3301      	adds	r3, #1
 80059ca:	73fb      	strb	r3, [r7, #15]
 80059cc:	7bfb      	ldrb	r3, [r7, #15]
 80059ce:	2b03      	cmp	r3, #3
 80059d0:	d9e0      	bls.n	8005994 <readEnc+0xc>
 80059d2:	4b56      	ldr	r3, [pc, #344]	; (8005b2c <readEnc+0x1a4>)
 80059d4:	681b      	ldr	r3, [r3, #0]
 80059d6:	4618      	mov	r0, r3
 80059d8:	f001 f874 	bl	8006ac4 <getTimeDifference>
 80059dc:	ee07 0a90 	vmov	s15, r0
 80059e0:	eeb8 7a67 	vcvt.f32.u32	s14, s15
 80059e4:	eddf 6a52 	vldr	s13, [pc, #328]	; 8005b30 <readEnc+0x1a8>
 80059e8:	eec7 7a26 	vdiv.f32	s15, s14, s13
 80059ec:	4b51      	ldr	r3, [pc, #324]	; (8005b34 <readEnc+0x1ac>)
 80059ee:	edc3 7a00 	vstr	s15, [r3]
 80059f2:	f001 f85b 	bl	8006aac <getLocalTime>
 80059f6:	4602      	mov	r2, r0
 80059f8:	4b4c      	ldr	r3, [pc, #304]	; (8005b2c <readEnc+0x1a4>)
 80059fa:	601a      	str	r2, [r3, #0]
 80059fc:	4b4d      	ldr	r3, [pc, #308]	; (8005b34 <readEnc+0x1ac>)
 80059fe:	edd3 7a00 	vldr	s15, [r3]
 8005a02:	eef5 7a40 	vcmp.f32	s15, #0.0
 8005a06:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8005a0a:	f000 8088 	beq.w	8005b1e <readEnc+0x196>
 8005a0e:	2300      	movs	r3, #0
 8005a10:	73fb      	strb	r3, [r7, #15]
 8005a12:	e048      	b.n	8005aa6 <readEnc+0x11e>
 8005a14:	7bfa      	ldrb	r2, [r7, #15]
 8005a16:	7bfb      	ldrb	r3, [r7, #15]
 8005a18:	005b      	lsls	r3, r3, #1
 8005a1a:	f107 0110 	add.w	r1, r7, #16
 8005a1e:	440b      	add	r3, r1
 8005a20:	f933 3c0c 	ldrsh.w	r3, [r3, #-12]
 8005a24:	ee07 3a90 	vmov	s15, r3
 8005a28:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8005a2c:	ee77 7aa7 	vadd.f32	s15, s15, s15
 8005a30:	ed9f 7a41 	vldr	s14, [pc, #260]	; 8005b38 <readEnc+0x1b0>
 8005a34:	ee67 7a87 	vmul.f32	s15, s15, s14
 8005a38:	ed9f 7a40 	vldr	s14, [pc, #256]	; 8005b3c <readEnc+0x1b4>
 8005a3c:	eec7 6a87 	vdiv.f32	s13, s15, s14
 8005a40:	4b3c      	ldr	r3, [pc, #240]	; (8005b34 <readEnc+0x1ac>)
 8005a42:	ed93 7a00 	vldr	s14, [r3]
 8005a46:	eec6 7a87 	vdiv.f32	s15, s13, s14
 8005a4a:	493d      	ldr	r1, [pc, #244]	; (8005b40 <readEnc+0x1b8>)
 8005a4c:	0093      	lsls	r3, r2, #2
 8005a4e:	440b      	add	r3, r1
 8005a50:	edc3 7a00 	vstr	s15, [r3]
 8005a54:	7bfb      	ldrb	r3, [r7, #15]
 8005a56:	2b00      	cmp	r3, #0
 8005a58:	d002      	beq.n	8005a60 <readEnc+0xd8>
 8005a5a:	7bfb      	ldrb	r3, [r7, #15]
 8005a5c:	2b03      	cmp	r3, #3
 8005a5e:	d11f      	bne.n	8005aa0 <readEnc+0x118>
 8005a60:	7bfa      	ldrb	r2, [r7, #15]
 8005a62:	7bfb      	ldrb	r3, [r7, #15]
 8005a64:	005b      	lsls	r3, r3, #1
 8005a66:	f107 0110 	add.w	r1, r7, #16
 8005a6a:	440b      	add	r3, r1
 8005a6c:	f933 3c0c 	ldrsh.w	r3, [r3, #-12]
 8005a70:	ee07 3a90 	vmov	s15, r3
 8005a74:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8005a78:	ee77 7aa7 	vadd.f32	s15, s15, s15
 8005a7c:	ed9f 7a2e 	vldr	s14, [pc, #184]	; 8005b38 <readEnc+0x1b0>
 8005a80:	ee67 7a87 	vmul.f32	s15, s15, s14
 8005a84:	ed9f 7a2f 	vldr	s14, [pc, #188]	; 8005b44 <readEnc+0x1bc>
 8005a88:	eec7 6a87 	vdiv.f32	s13, s15, s14
 8005a8c:	4b29      	ldr	r3, [pc, #164]	; (8005b34 <readEnc+0x1ac>)
 8005a8e:	ed93 7a00 	vldr	s14, [r3]
 8005a92:	eec6 7a87 	vdiv.f32	s15, s13, s14
 8005a96:	492a      	ldr	r1, [pc, #168]	; (8005b40 <readEnc+0x1b8>)
 8005a98:	0093      	lsls	r3, r2, #2
 8005a9a:	440b      	add	r3, r1
 8005a9c:	edc3 7a00 	vstr	s15, [r3]
 8005aa0:	7bfb      	ldrb	r3, [r7, #15]
 8005aa2:	3301      	adds	r3, #1
 8005aa4:	73fb      	strb	r3, [r7, #15]
 8005aa6:	7bfb      	ldrb	r3, [r7, #15]
 8005aa8:	2b03      	cmp	r3, #3
 8005aaa:	d9b3      	bls.n	8005a14 <readEnc+0x8c>
 8005aac:	4b24      	ldr	r3, [pc, #144]	; (8005b40 <readEnc+0x1b8>)
 8005aae:	edd3 7a01 	vldr	s15, [r3, #4]
 8005ab2:	eef1 7a67 	vneg.f32	s15, s15
 8005ab6:	4b22      	ldr	r3, [pc, #136]	; (8005b40 <readEnc+0x1b8>)
 8005ab8:	edc3 7a01 	vstr	s15, [r3, #4]
 8005abc:	4b20      	ldr	r3, [pc, #128]	; (8005b40 <readEnc+0x1b8>)
 8005abe:	edd3 7a02 	vldr	s15, [r3, #8]
 8005ac2:	eef1 7a67 	vneg.f32	s15, s15
 8005ac6:	4b1e      	ldr	r3, [pc, #120]	; (8005b40 <readEnc+0x1b8>)
 8005ac8:	edc3 7a02 	vstr	s15, [r3, #8]
 8005acc:	f000 f8a0 	bl	8005c10 <calcInverseKin>
 8005ad0:	2300      	movs	r3, #0
 8005ad2:	73fb      	strb	r3, [r7, #15]
 8005ad4:	e01b      	b.n	8005b0e <readEnc+0x186>
 8005ad6:	7bfb      	ldrb	r3, [r7, #15]
 8005ad8:	7bfa      	ldrb	r2, [r7, #15]
 8005ada:	491b      	ldr	r1, [pc, #108]	; (8005b48 <readEnc+0x1c0>)
 8005adc:	0092      	lsls	r2, r2, #2
 8005ade:	440a      	add	r2, r1
 8005ae0:	ed92 7a00 	vldr	s14, [r2]
 8005ae4:	7bfa      	ldrb	r2, [r7, #15]
 8005ae6:	4919      	ldr	r1, [pc, #100]	; (8005b4c <readEnc+0x1c4>)
 8005ae8:	0092      	lsls	r2, r2, #2
 8005aea:	440a      	add	r2, r1
 8005aec:	edd2 6a00 	vldr	s13, [r2]
 8005af0:	4a10      	ldr	r2, [pc, #64]	; (8005b34 <readEnc+0x1ac>)
 8005af2:	edd2 7a00 	vldr	s15, [r2]
 8005af6:	ee66 7aa7 	vmul.f32	s15, s13, s15
 8005afa:	ee77 7a27 	vadd.f32	s15, s14, s15
 8005afe:	4a12      	ldr	r2, [pc, #72]	; (8005b48 <readEnc+0x1c0>)
 8005b00:	009b      	lsls	r3, r3, #2
 8005b02:	4413      	add	r3, r2
 8005b04:	edc3 7a00 	vstr	s15, [r3]
 8005b08:	7bfb      	ldrb	r3, [r7, #15]
 8005b0a:	3301      	adds	r3, #1
 8005b0c:	73fb      	strb	r3, [r7, #15]
 8005b0e:	7bfb      	ldrb	r3, [r7, #15]
 8005b10:	2b02      	cmp	r3, #2
 8005b12:	d9e0      	bls.n	8005ad6 <readEnc+0x14e>
 8005b14:	480e      	ldr	r0, [pc, #56]	; (8005b50 <readEnc+0x1c8>)
 8005b16:	f7ff fe4d 	bl	80057b4 <normalizeAngle>
 8005b1a:	bf00      	nop
 8005b1c:	e000      	b.n	8005b20 <readEnc+0x198>
 8005b1e:	bf00      	nop
 8005b20:	3710      	adds	r7, #16
 8005b22:	46bd      	mov	sp, r7
 8005b24:	bd80      	pop	{r7, pc}
 8005b26:	bf00      	nop
 8005b28:	200001bc 	.word	0x200001bc
 8005b2c:	20014ea4 	.word	0x20014ea4
 8005b30:	461c4000 	.word	0x461c4000
 8005b34:	20014e90 	.word	0x20014e90
 8005b38:	40490fdb 	.word	0x40490fdb
 8005b3c:	47d00000 	.word	0x47d00000
 8005b40:	20014e94 	.word	0x20014e94
 8005b44:	47a80000 	.word	0x47a80000
 8005b48:	20014ddc 	.word	0x20014ddc
 8005b4c:	20014ea8 	.word	0x20014ea8
 8005b50:	20014de4 	.word	0x20014de4

08005b54 <calcForwardKin>:
 8005b54:	b580      	push	{r7, lr}
 8005b56:	b092      	sub	sp, #72	; 0x48
 8005b58:	af04      	add	r7, sp, #16
 8005b5a:	f107 0324 	add.w	r3, r7, #36	; 0x24
 8005b5e:	9302      	str	r3, [sp, #8]
 8005b60:	2301      	movs	r3, #1
 8005b62:	9301      	str	r3, [sp, #4]
 8005b64:	2303      	movs	r3, #3
 8005b66:	9300      	str	r3, [sp, #0]
 8005b68:	4b24      	ldr	r3, [pc, #144]	; (8005bfc <calcForwardKin+0xa8>)
 8005b6a:	2203      	movs	r2, #3
 8005b6c:	2104      	movs	r1, #4
 8005b6e:	4824      	ldr	r0, [pc, #144]	; (8005c00 <calcForwardKin+0xac>)
 8005b70:	f001 fed4 	bl	800791c <matrixMultiplyM2M>
 8005b74:	f107 0314 	add.w	r3, r7, #20
 8005b78:	9302      	str	r3, [sp, #8]
 8005b7a:	2301      	movs	r3, #1
 8005b7c:	9301      	str	r3, [sp, #4]
 8005b7e:	2303      	movs	r3, #3
 8005b80:	9300      	str	r3, [sp, #0]
 8005b82:	4b1e      	ldr	r3, [pc, #120]	; (8005bfc <calcForwardKin+0xa8>)
 8005b84:	2203      	movs	r2, #3
 8005b86:	2104      	movs	r1, #4
 8005b88:	481e      	ldr	r0, [pc, #120]	; (8005c04 <calcForwardKin+0xb0>)
 8005b8a:	f001 fec7 	bl	800791c <matrixMultiplyM2M>
 8005b8e:	f107 0114 	add.w	r1, r7, #20
 8005b92:	f107 0024 	add.w	r0, r7, #36	; 0x24
 8005b96:	1d3b      	adds	r3, r7, #4
 8005b98:	9301      	str	r3, [sp, #4]
 8005b9a:	2301      	movs	r3, #1
 8005b9c:	9300      	str	r3, [sp, #0]
 8005b9e:	2301      	movs	r3, #1
 8005ba0:	2204      	movs	r2, #4
 8005ba2:	f001 ff67 	bl	8007a74 <matrixPlusMinus>
 8005ba6:	463a      	mov	r2, r7
 8005ba8:	1d3b      	adds	r3, r7, #4
 8005baa:	2104      	movs	r1, #4
 8005bac:	4618      	mov	r0, r3
 8005bae:	f7ff fe35 	bl	800581c <maxValue>
 8005bb2:	edd7 7a00 	vldr	s15, [r7]
 8005bb6:	eef0 7ae7 	vabs.f32	s15, s15
 8005bba:	ed9f 7a13 	vldr	s14, [pc, #76]	; 8005c08 <calcForwardKin+0xb4>
 8005bbe:	eef4 7ac7 	vcmpe.f32	s15, s14
 8005bc2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8005bc6:	dd0a      	ble.n	8005bde <calcForwardKin+0x8a>
 8005bc8:	ed97 7a00 	vldr	s14, [r7]
 8005bcc:	eddf 6a0e 	vldr	s13, [pc, #56]	; 8005c08 <calcForwardKin+0xb4>
 8005bd0:	eec6 7a87 	vdiv.f32	s15, s13, s14
 8005bd4:	eef0 7ae7 	vabs.f32	s15, s15
 8005bd8:	edc7 7a0d 	vstr	s15, [r7, #52]	; 0x34
 8005bdc:	e002      	b.n	8005be4 <calcForwardKin+0x90>
 8005bde:	f04f 537e 	mov.w	r3, #1065353216	; 0x3f800000
 8005be2:	637b      	str	r3, [r7, #52]	; 0x34
 8005be4:	1d38      	adds	r0, r7, #4
 8005be6:	4b09      	ldr	r3, [pc, #36]	; (8005c0c <calcForwardKin+0xb8>)
 8005be8:	ed97 0a0d 	vldr	s0, [r7, #52]	; 0x34
 8005bec:	2201      	movs	r2, #1
 8005bee:	2104      	movs	r1, #4
 8005bf0:	f001 fefe 	bl	80079f0 <matrixMultiplyS2M>
 8005bf4:	bf00      	nop
 8005bf6:	3738      	adds	r7, #56	; 0x38
 8005bf8:	46bd      	mov	sp, r7
 8005bfa:	bd80      	pop	{r7, pc}
 8005bfc:	20014dec 	.word	0x20014dec
 8005c00:	200000e4 	.word	0x200000e4
 8005c04:	20000114 	.word	0x20000114
 8005c08:	41d9d12a 	.word	0x41d9d12a
 8005c0c:	20014e00 	.word	0x20014e00

08005c10 <calcInverseKin>:
 8005c10:	b580      	push	{r7, lr}
 8005c12:	b084      	sub	sp, #16
 8005c14:	af04      	add	r7, sp, #16
 8005c16:	4b07      	ldr	r3, [pc, #28]	; (8005c34 <calcInverseKin+0x24>)
 8005c18:	9302      	str	r3, [sp, #8]
 8005c1a:	2301      	movs	r3, #1
 8005c1c:	9301      	str	r3, [sp, #4]
 8005c1e:	2304      	movs	r3, #4
 8005c20:	9300      	str	r3, [sp, #0]
 8005c22:	4b05      	ldr	r3, [pc, #20]	; (8005c38 <calcInverseKin+0x28>)
 8005c24:	2204      	movs	r2, #4
 8005c26:	2103      	movs	r1, #3
 8005c28:	4804      	ldr	r0, [pc, #16]	; (8005c3c <calcInverseKin+0x2c>)
 8005c2a:	f001 fe77 	bl	800791c <matrixMultiplyM2M>
 8005c2e:	bf00      	nop
 8005c30:	46bd      	mov	sp, r7
 8005c32:	bd80      	pop	{r7, pc}
 8005c34:	20014ea8 	.word	0x20014ea8
 8005c38:	20014e94 	.word	0x20014e94
 8005c3c:	20000144 	.word	0x20000144

08005c40 <setMotorSpeed>:
 8005c40:	b580      	push	{r7, lr}
 8005c42:	b084      	sub	sp, #16
 8005c44:	af00      	add	r7, sp, #0
 8005c46:	4603      	mov	r3, r0
 8005c48:	ed87 0a00 	vstr	s0, [r7]
 8005c4c:	71fb      	strb	r3, [r7, #7]
 8005c4e:	79fb      	ldrb	r3, [r7, #7]
 8005c50:	2b04      	cmp	r3, #4
 8005c52:	d85c      	bhi.n	8005d0e <setMotorSpeed+0xce>
 8005c54:	79fb      	ldrb	r3, [r7, #7]
 8005c56:	3b01      	subs	r3, #1
 8005c58:	71fb      	strb	r3, [r7, #7]
 8005c5a:	edd7 7a00 	vldr	s15, [r7]
 8005c5e:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8005c62:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8005c66:	db0d      	blt.n	8005c84 <setMotorSpeed+0x44>
 8005c68:	79fb      	ldrb	r3, [r7, #7]
 8005c6a:	4a2b      	ldr	r2, [pc, #172]	; (8005d18 <setMotorSpeed+0xd8>)
 8005c6c:	f852 0033 	ldr.w	r0, [r2, r3, lsl #3]
 8005c70:	79fb      	ldrb	r3, [r7, #7]
 8005c72:	4a29      	ldr	r2, [pc, #164]	; (8005d18 <setMotorSpeed+0xd8>)
 8005c74:	00db      	lsls	r3, r3, #3
 8005c76:	4413      	add	r3, r2
 8005c78:	791b      	ldrb	r3, [r3, #4]
 8005c7a:	2201      	movs	r2, #1
 8005c7c:	4619      	mov	r1, r3
 8005c7e:	f7ff f80f 	bl	8004ca0 <gpioPinSetLevel>
 8005c82:	e012      	b.n	8005caa <setMotorSpeed+0x6a>
 8005c84:	79fb      	ldrb	r3, [r7, #7]
 8005c86:	4a24      	ldr	r2, [pc, #144]	; (8005d18 <setMotorSpeed+0xd8>)
 8005c88:	f852 0033 	ldr.w	r0, [r2, r3, lsl #3]
 8005c8c:	79fb      	ldrb	r3, [r7, #7]
 8005c8e:	4a22      	ldr	r2, [pc, #136]	; (8005d18 <setMotorSpeed+0xd8>)
 8005c90:	00db      	lsls	r3, r3, #3
 8005c92:	4413      	add	r3, r2
 8005c94:	791b      	ldrb	r3, [r3, #4]
 8005c96:	2200      	movs	r2, #0
 8005c98:	4619      	mov	r1, r3
 8005c9a:	f7ff f801 	bl	8004ca0 <gpioPinSetLevel>
 8005c9e:	edd7 7a00 	vldr	s15, [r7]
 8005ca2:	eef1 7a67 	vneg.f32	s15, s15
 8005ca6:	edc7 7a00 	vstr	s15, [r7]
 8005caa:	edd7 7a00 	vldr	s15, [r7]
 8005cae:	ed9f 7a1b 	vldr	s14, [pc, #108]	; 8005d1c <setMotorSpeed+0xdc>
 8005cb2:	eef4 7ac7 	vcmpe.f32	s15, s14
 8005cb6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8005cba:	db02      	blt.n	8005cc2 <setMotorSpeed+0x82>
 8005cbc:	4b18      	ldr	r3, [pc, #96]	; (8005d20 <setMotorSpeed+0xe0>)
 8005cbe:	603b      	str	r3, [r7, #0]
 8005cc0:	e009      	b.n	8005cd6 <setMotorSpeed+0x96>
 8005cc2:	edd7 7a00 	vldr	s15, [r7]
 8005cc6:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8005cca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8005cce:	d502      	bpl.n	8005cd6 <setMotorSpeed+0x96>
 8005cd0:	f04f 0300 	mov.w	r3, #0
 8005cd4:	603b      	str	r3, [r7, #0]
 8005cd6:	edd7 7a00 	vldr	s15, [r7]
 8005cda:	ed9f 7a12 	vldr	s14, [pc, #72]	; 8005d24 <setMotorSpeed+0xe4>
 8005cde:	ee67 7a87 	vmul.f32	s15, s15, s14
 8005ce2:	ed9f 7a11 	vldr	s14, [pc, #68]	; 8005d28 <setMotorSpeed+0xe8>
 8005ce6:	ee77 7a87 	vadd.f32	s15, s15, s14
 8005cea:	edc7 7a03 	vstr	s15, [r7, #12]
 8005cee:	79fb      	ldrb	r3, [r7, #7]
 8005cf0:	4a0e      	ldr	r2, [pc, #56]	; (8005d2c <setMotorSpeed+0xec>)
 8005cf2:	f852 0033 	ldr.w	r0, [r2, r3, lsl #3]
 8005cf6:	79fb      	ldrb	r3, [r7, #7]
 8005cf8:	4a0c      	ldr	r2, [pc, #48]	; (8005d2c <setMotorSpeed+0xec>)
 8005cfa:	00db      	lsls	r3, r3, #3
 8005cfc:	4413      	add	r3, r2
 8005cfe:	791b      	ldrb	r3, [r3, #4]
 8005d00:	ed97 0a03 	vldr	s0, [r7, #12]
 8005d04:	4619      	mov	r1, r3
 8005d06:	f7ff fcb9 	bl	800567c <timPwmChangeDutyCycle>
 8005d0a:	bf00      	nop
 8005d0c:	e000      	b.n	8005d10 <setMotorSpeed+0xd0>
 8005d0e:	bf00      	nop
 8005d10:	3710      	adds	r7, #16
 8005d12:	46bd      	mov	sp, r7
 8005d14:	bd80      	pop	{r7, pc}
 8005d16:	bf00      	nop
 8005d18:	2000019c 	.word	0x2000019c
 8005d1c:	41d9d12a 	.word	0x41d9d12a
 8005d20:	41d9d12a 	.word	0x41d9d12a
 8005d24:	3cf0b35c 	.word	0x3cf0b35c
 8005d28:	3dcccccd 	.word	0x3dcccccd
 8005d2c:	2000017c 	.word	0x2000017c

08005d30 <setMotorSpeeds>:
 8005d30:	b580      	push	{r7, lr}
 8005d32:	b082      	sub	sp, #8
 8005d34:	af00      	add	r7, sp, #0
 8005d36:	2300      	movs	r3, #0
 8005d38:	71fb      	strb	r3, [r7, #7]
 8005d3a:	e010      	b.n	8005d5e <setMotorSpeeds+0x2e>
 8005d3c:	79fb      	ldrb	r3, [r7, #7]
 8005d3e:	3301      	adds	r3, #1
 8005d40:	b2d9      	uxtb	r1, r3
 8005d42:	79fb      	ldrb	r3, [r7, #7]
 8005d44:	4a09      	ldr	r2, [pc, #36]	; (8005d6c <setMotorSpeeds+0x3c>)
 8005d46:	009b      	lsls	r3, r3, #2
 8005d48:	4413      	add	r3, r2
 8005d4a:	edd3 7a00 	vldr	s15, [r3]
 8005d4e:	eeb0 0a67 	vmov.f32	s0, s15
 8005d52:	4608      	mov	r0, r1
 8005d54:	f7ff ff74 	bl	8005c40 <setMotorSpeed>
 8005d58:	79fb      	ldrb	r3, [r7, #7]
 8005d5a:	3301      	adds	r3, #1
 8005d5c:	71fb      	strb	r3, [r7, #7]
 8005d5e:	79fb      	ldrb	r3, [r7, #7]
 8005d60:	2b03      	cmp	r3, #3
 8005d62:	d9eb      	bls.n	8005d3c <setMotorSpeeds+0xc>
 8005d64:	bf00      	nop
 8005d66:	3708      	adds	r7, #8
 8005d68:	46bd      	mov	sp, r7
 8005d6a:	bd80      	pop	{r7, pc}
 8005d6c:	20014e00 	.word	0x20014e00

08005d70 <speedRecalculation>:
 8005d70:	b480      	push	{r7}
 8005d72:	b083      	sub	sp, #12
 8005d74:	af00      	add	r7, sp, #0
 8005d76:	2300      	movs	r3, #0
 8005d78:	71fb      	strb	r3, [r7, #7]
 8005d7a:	e0c4      	b.n	8005f06 <speedRecalculation+0x196>
 8005d7c:	79fb      	ldrb	r3, [r7, #7]
 8005d7e:	4a67      	ldr	r2, [pc, #412]	; (8005f1c <speedRecalculation+0x1ac>)
 8005d80:	5cd3      	ldrb	r3, [r2, r3]
 8005d82:	2b03      	cmp	r3, #3
 8005d84:	f200 80bc 	bhi.w	8005f00 <speedRecalculation+0x190>
 8005d88:	a201      	add	r2, pc, #4	; (adr r2, 8005d90 <speedRecalculation+0x20>)
 8005d8a:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8005d8e:	bf00      	nop
 8005d90:	08005f01 	.word	0x08005f01
 8005d94:	08005da1 	.word	0x08005da1
 8005d98:	08005e1f 	.word	0x08005e1f
 8005d9c:	08005e39 	.word	0x08005e39
 8005da0:	79fb      	ldrb	r3, [r7, #7]
 8005da2:	79fa      	ldrb	r2, [r7, #7]
 8005da4:	495e      	ldr	r1, [pc, #376]	; (8005f20 <speedRecalculation+0x1b0>)
 8005da6:	0092      	lsls	r2, r2, #2
 8005da8:	440a      	add	r2, r1
 8005daa:	ed92 7a00 	vldr	s14, [r2]
 8005dae:	79fa      	ldrb	r2, [r7, #7]
 8005db0:	495a      	ldr	r1, [pc, #360]	; (8005f1c <speedRecalculation+0x1ac>)
 8005db2:	0092      	lsls	r2, r2, #2
 8005db4:	440a      	add	r2, r1
 8005db6:	3204      	adds	r2, #4
 8005db8:	edd2 6a00 	vldr	s13, [r2]
 8005dbc:	4a59      	ldr	r2, [pc, #356]	; (8005f24 <speedRecalculation+0x1b4>)
 8005dbe:	edd2 7a00 	vldr	s15, [r2]
 8005dc2:	ee66 7aa7 	vmul.f32	s15, s13, s15
 8005dc6:	ee77 7a27 	vadd.f32	s15, s14, s15
 8005dca:	4a55      	ldr	r2, [pc, #340]	; (8005f20 <speedRecalculation+0x1b0>)
 8005dcc:	009b      	lsls	r3, r3, #2
 8005dce:	4413      	add	r3, r2
 8005dd0:	edc3 7a00 	vstr	s15, [r3]
 8005dd4:	79fb      	ldrb	r3, [r7, #7]
 8005dd6:	4a52      	ldr	r2, [pc, #328]	; (8005f20 <speedRecalculation+0x1b0>)
 8005dd8:	009b      	lsls	r3, r3, #2
 8005dda:	4413      	add	r3, r2
 8005ddc:	edd3 7a00 	vldr	s15, [r3]
 8005de0:	eeb0 7ae7 	vabs.f32	s14, s15
 8005de4:	79fb      	ldrb	r3, [r7, #7]
 8005de6:	4a4d      	ldr	r2, [pc, #308]	; (8005f1c <speedRecalculation+0x1ac>)
 8005de8:	3306      	adds	r3, #6
 8005dea:	009b      	lsls	r3, r3, #2
 8005dec:	4413      	add	r3, r2
 8005dee:	3304      	adds	r3, #4
 8005df0:	edd3 7a00 	vldr	s15, [r3]
 8005df4:	eef0 7ae7 	vabs.f32	s15, s15
 8005df8:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8005dfc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8005e00:	dc00      	bgt.n	8005e04 <speedRecalculation+0x94>
 8005e02:	e07d      	b.n	8005f00 <speedRecalculation+0x190>
 8005e04:	79fb      	ldrb	r3, [r7, #7]
 8005e06:	79fa      	ldrb	r2, [r7, #7]
 8005e08:	4944      	ldr	r1, [pc, #272]	; (8005f1c <speedRecalculation+0x1ac>)
 8005e0a:	3206      	adds	r2, #6
 8005e0c:	0092      	lsls	r2, r2, #2
 8005e0e:	440a      	add	r2, r1
 8005e10:	3204      	adds	r2, #4
 8005e12:	6812      	ldr	r2, [r2, #0]
 8005e14:	4942      	ldr	r1, [pc, #264]	; (8005f20 <speedRecalculation+0x1b0>)
 8005e16:	009b      	lsls	r3, r3, #2
 8005e18:	440b      	add	r3, r1
 8005e1a:	601a      	str	r2, [r3, #0]
 8005e1c:	e070      	b.n	8005f00 <speedRecalculation+0x190>
 8005e1e:	79fb      	ldrb	r3, [r7, #7]
 8005e20:	79fa      	ldrb	r2, [r7, #7]
 8005e22:	493e      	ldr	r1, [pc, #248]	; (8005f1c <speedRecalculation+0x1ac>)
 8005e24:	3206      	adds	r2, #6
 8005e26:	0092      	lsls	r2, r2, #2
 8005e28:	440a      	add	r2, r1
 8005e2a:	3204      	adds	r2, #4
 8005e2c:	6812      	ldr	r2, [r2, #0]
 8005e2e:	493c      	ldr	r1, [pc, #240]	; (8005f20 <speedRecalculation+0x1b0>)
 8005e30:	009b      	lsls	r3, r3, #2
 8005e32:	440b      	add	r3, r1
 8005e34:	601a      	str	r2, [r3, #0]
 8005e36:	e063      	b.n	8005f00 <speedRecalculation+0x190>
 8005e38:	79fb      	ldrb	r3, [r7, #7]
 8005e3a:	4a3b      	ldr	r2, [pc, #236]	; (8005f28 <speedRecalculation+0x1b8>)
 8005e3c:	009b      	lsls	r3, r3, #2
 8005e3e:	4413      	add	r3, r2
 8005e40:	edd3 7a00 	vldr	s15, [r3]
 8005e44:	eeb0 7ae7 	vabs.f32	s14, s15
 8005e48:	79fb      	ldrb	r3, [r7, #7]
 8005e4a:	4a34      	ldr	r2, [pc, #208]	; (8005f1c <speedRecalculation+0x1ac>)
 8005e4c:	330c      	adds	r3, #12
 8005e4e:	009b      	lsls	r3, r3, #2
 8005e50:	4413      	add	r3, r2
 8005e52:	3304      	adds	r3, #4
 8005e54:	edd3 7a00 	vldr	s15, [r3]
 8005e58:	eef0 7ae7 	vabs.f32	s15, s15
 8005e5c:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8005e60:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8005e64:	d50f      	bpl.n	8005e86 <speedRecalculation+0x116>
 8005e66:	79fb      	ldrb	r3, [r7, #7]
 8005e68:	79fa      	ldrb	r2, [r7, #7]
 8005e6a:	492c      	ldr	r1, [pc, #176]	; (8005f1c <speedRecalculation+0x1ac>)
 8005e6c:	320a      	adds	r2, #10
 8005e6e:	0092      	lsls	r2, r2, #2
 8005e70:	440a      	add	r2, r1
 8005e72:	6812      	ldr	r2, [r2, #0]
 8005e74:	492a      	ldr	r1, [pc, #168]	; (8005f20 <speedRecalculation+0x1b0>)
 8005e76:	009b      	lsls	r3, r3, #2
 8005e78:	440b      	add	r3, r1
 8005e7a:	601a      	str	r2, [r3, #0]
 8005e7c:	79fb      	ldrb	r3, [r7, #7]
 8005e7e:	4a27      	ldr	r2, [pc, #156]	; (8005f1c <speedRecalculation+0x1ac>)
 8005e80:	2100      	movs	r1, #0
 8005e82:	54d1      	strb	r1, [r2, r3]
 8005e84:	e03c      	b.n	8005f00 <speedRecalculation+0x190>
 8005e86:	79fb      	ldrb	r3, [r7, #7]
 8005e88:	79fa      	ldrb	r2, [r7, #7]
 8005e8a:	4925      	ldr	r1, [pc, #148]	; (8005f20 <speedRecalculation+0x1b0>)
 8005e8c:	0092      	lsls	r2, r2, #2
 8005e8e:	440a      	add	r2, r1
 8005e90:	ed92 7a00 	vldr	s14, [r2]
 8005e94:	79fa      	ldrb	r2, [r7, #7]
 8005e96:	4921      	ldr	r1, [pc, #132]	; (8005f1c <speedRecalculation+0x1ac>)
 8005e98:	0092      	lsls	r2, r2, #2
 8005e9a:	440a      	add	r2, r1
 8005e9c:	3204      	adds	r2, #4
 8005e9e:	edd2 6a00 	vldr	s13, [r2]
 8005ea2:	4a20      	ldr	r2, [pc, #128]	; (8005f24 <speedRecalculation+0x1b4>)
 8005ea4:	edd2 7a00 	vldr	s15, [r2]
 8005ea8:	ee66 7aa7 	vmul.f32	s15, s13, s15
 8005eac:	ee77 7a67 	vsub.f32	s15, s14, s15
 8005eb0:	4a1b      	ldr	r2, [pc, #108]	; (8005f20 <speedRecalculation+0x1b0>)
 8005eb2:	009b      	lsls	r3, r3, #2
 8005eb4:	4413      	add	r3, r2
 8005eb6:	edc3 7a00 	vstr	s15, [r3]
 8005eba:	79fb      	ldrb	r3, [r7, #7]
 8005ebc:	4a18      	ldr	r2, [pc, #96]	; (8005f20 <speedRecalculation+0x1b0>)
 8005ebe:	009b      	lsls	r3, r3, #2
 8005ec0:	4413      	add	r3, r2
 8005ec2:	ed93 7a00 	vldr	s14, [r3]
 8005ec6:	79fb      	ldrb	r3, [r7, #7]
 8005ec8:	4a14      	ldr	r2, [pc, #80]	; (8005f1c <speedRecalculation+0x1ac>)
 8005eca:	4413      	add	r3, r2
 8005ecc:	f993 3064 	ldrsb.w	r3, [r3, #100]	; 0x64
 8005ed0:	ee07 3a90 	vmov	s15, r3
 8005ed4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8005ed8:	ee67 7a27 	vmul.f32	s15, s14, s15
 8005edc:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8005ee0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8005ee4:	d400      	bmi.n	8005ee8 <speedRecalculation+0x178>
 8005ee6:	e00a      	b.n	8005efe <speedRecalculation+0x18e>
 8005ee8:	79fb      	ldrb	r3, [r7, #7]
 8005eea:	79fa      	ldrb	r2, [r7, #7]
 8005eec:	490b      	ldr	r1, [pc, #44]	; (8005f1c <speedRecalculation+0x1ac>)
 8005eee:	320a      	adds	r2, #10
 8005ef0:	0092      	lsls	r2, r2, #2
 8005ef2:	440a      	add	r2, r1
 8005ef4:	6812      	ldr	r2, [r2, #0]
 8005ef6:	490a      	ldr	r1, [pc, #40]	; (8005f20 <speedRecalculation+0x1b0>)
 8005ef8:	009b      	lsls	r3, r3, #2
 8005efa:	440b      	add	r3, r1
 8005efc:	601a      	str	r2, [r3, #0]
 8005efe:	bf00      	nop
 8005f00:	79fb      	ldrb	r3, [r7, #7]
 8005f02:	3301      	adds	r3, #1
 8005f04:	71fb      	strb	r3, [r7, #7]
 8005f06:	79fb      	ldrb	r3, [r7, #7]
 8005f08:	2b02      	cmp	r3, #2
 8005f0a:	f67f af37 	bls.w	8005d7c <speedRecalculation+0xc>
 8005f0e:	bf00      	nop
 8005f10:	370c      	adds	r7, #12
 8005f12:	46bd      	mov	sp, r7
 8005f14:	f85d 7b04 	ldr.w	r7, [sp], #4
 8005f18:	4770      	bx	lr
 8005f1a:	bf00      	nop
 8005f1c:	20014e10 	.word	0x20014e10
 8005f20:	20014dec 	.word	0x20014dec
 8005f24:	20014e90 	.word	0x20014e90
 8005f28:	20014ea8 	.word	0x20014ea8

08005f2c <checkIfPositionIsReached>:
 8005f2c:	b580      	push	{r7, lr}
 8005f2e:	b084      	sub	sp, #16
 8005f30:	af00      	add	r7, sp, #0
 8005f32:	2300      	movs	r3, #0
 8005f34:	73fb      	strb	r3, [r7, #15]
 8005f36:	e00e      	b.n	8005f56 <checkIfPositionIsReached+0x2a>
 8005f38:	7bfb      	ldrb	r3, [r7, #15]
 8005f3a:	7bfa      	ldrb	r2, [r7, #15]
 8005f3c:	4923      	ldr	r1, [pc, #140]	; (8005fcc <checkIfPositionIsReached+0xa0>)
 8005f3e:	0092      	lsls	r2, r2, #2
 8005f40:	440a      	add	r2, r1
 8005f42:	6812      	ldr	r2, [r2, #0]
 8005f44:	009b      	lsls	r3, r3, #2
 8005f46:	f107 0110 	add.w	r1, r7, #16
 8005f4a:	440b      	add	r3, r1
 8005f4c:	3b10      	subs	r3, #16
 8005f4e:	601a      	str	r2, [r3, #0]
 8005f50:	7bfb      	ldrb	r3, [r7, #15]
 8005f52:	3301      	adds	r3, #1
 8005f54:	73fb      	strb	r3, [r7, #15]
 8005f56:	7bfb      	ldrb	r3, [r7, #15]
 8005f58:	2b02      	cmp	r3, #2
 8005f5a:	d9ed      	bls.n	8005f38 <checkIfPositionIsReached+0xc>
 8005f5c:	edd7 7a02 	vldr	s15, [r7, #8]
 8005f60:	ed9f 7a1b 	vldr	s14, [pc, #108]	; 8005fd0 <checkIfPositionIsReached+0xa4>
 8005f64:	eef4 7ac7 	vcmpe.f32	s15, s14
 8005f68:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8005f6c:	dd07      	ble.n	8005f7e <checkIfPositionIsReached+0x52>
 8005f6e:	edd7 7a02 	vldr	s15, [r7, #8]
 8005f72:	ed9f 7a18 	vldr	s14, [pc, #96]	; 8005fd4 <checkIfPositionIsReached+0xa8>
 8005f76:	ee77 7ac7 	vsub.f32	s15, s15, s14
 8005f7a:	edc7 7a02 	vstr	s15, [r7, #8]
 8005f7e:	2300      	movs	r3, #0
 8005f80:	73fb      	strb	r3, [r7, #15]
 8005f82:	e008      	b.n	8005f96 <checkIfPositionIsReached+0x6a>
 8005f84:	463a      	mov	r2, r7
 8005f86:	7bfb      	ldrb	r3, [r7, #15]
 8005f88:	4611      	mov	r1, r2
 8005f8a:	4618      	mov	r0, r3
 8005f8c:	f000 f828 	bl	8005fe0 <checkIfPositionIsReachedCoord>
 8005f90:	7bfb      	ldrb	r3, [r7, #15]
 8005f92:	3301      	adds	r3, #1
 8005f94:	73fb      	strb	r3, [r7, #15]
 8005f96:	7bfb      	ldrb	r3, [r7, #15]
 8005f98:	2b02      	cmp	r3, #2
 8005f9a:	d9f3      	bls.n	8005f84 <checkIfPositionIsReached+0x58>
 8005f9c:	4b0e      	ldr	r3, [pc, #56]	; (8005fd8 <checkIfPositionIsReached+0xac>)
 8005f9e:	781b      	ldrb	r3, [r3, #0]
 8005fa0:	2b00      	cmp	r3, #0
 8005fa2:	d10b      	bne.n	8005fbc <checkIfPositionIsReached+0x90>
 8005fa4:	4b0c      	ldr	r3, [pc, #48]	; (8005fd8 <checkIfPositionIsReached+0xac>)
 8005fa6:	785b      	ldrb	r3, [r3, #1]
 8005fa8:	2b00      	cmp	r3, #0
 8005faa:	d107      	bne.n	8005fbc <checkIfPositionIsReached+0x90>
 8005fac:	4b0a      	ldr	r3, [pc, #40]	; (8005fd8 <checkIfPositionIsReached+0xac>)
 8005fae:	789b      	ldrb	r3, [r3, #2]
 8005fb0:	2b00      	cmp	r3, #0
 8005fb2:	d103      	bne.n	8005fbc <checkIfPositionIsReached+0x90>
 8005fb4:	4b09      	ldr	r3, [pc, #36]	; (8005fdc <checkIfPositionIsReached+0xb0>)
 8005fb6:	2200      	movs	r2, #0
 8005fb8:	709a      	strb	r2, [r3, #2]
 8005fba:	e002      	b.n	8005fc2 <checkIfPositionIsReached+0x96>
 8005fbc:	4b07      	ldr	r3, [pc, #28]	; (8005fdc <checkIfPositionIsReached+0xb0>)
 8005fbe:	2201      	movs	r2, #1
 8005fc0:	709a      	strb	r2, [r3, #2]
 8005fc2:	bf00      	nop
 8005fc4:	3710      	adds	r7, #16
 8005fc6:	46bd      	mov	sp, r7
 8005fc8:	bd80      	pop	{r7, pc}
 8005fca:	bf00      	nop
 8005fcc:	20014ddc 	.word	0x20014ddc
 8005fd0:	40490fdb 	.word	0x40490fdb
 8005fd4:	40c90fdb 	.word	0x40c90fdb
 8005fd8:	20014e10 	.word	0x20014e10
 8005fdc:	20014df8 	.word	0x20014df8

08005fe0 <checkIfPositionIsReachedCoord>:
 8005fe0:	b580      	push	{r7, lr}
 8005fe2:	b082      	sub	sp, #8
 8005fe4:	af00      	add	r7, sp, #0
 8005fe6:	4603      	mov	r3, r0
 8005fe8:	6039      	str	r1, [r7, #0]
 8005fea:	71fb      	strb	r3, [r7, #7]
 8005fec:	79fb      	ldrb	r3, [r7, #7]
 8005fee:	4a50      	ldr	r2, [pc, #320]	; (8006130 <checkIfPositionIsReachedCoord+0x150>)
 8005ff0:	5cd3      	ldrb	r3, [r2, r3]
 8005ff2:	2b00      	cmp	r3, #0
 8005ff4:	f000 8098 	beq.w	8006128 <checkIfPositionIsReachedCoord+0x148>
 8005ff8:	79fb      	ldrb	r3, [r7, #7]
 8005ffa:	4a4d      	ldr	r2, [pc, #308]	; (8006130 <checkIfPositionIsReachedCoord+0x150>)
 8005ffc:	331a      	adds	r3, #26
 8005ffe:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
 8006002:	79fb      	ldrb	r3, [r7, #7]
 8006004:	4a4a      	ldr	r2, [pc, #296]	; (8006130 <checkIfPositionIsReachedCoord+0x150>)
 8006006:	331c      	adds	r3, #28
 8006008:	009b      	lsls	r3, r3, #2
 800600a:	4413      	add	r3, r2
 800600c:	685b      	ldr	r3, [r3, #4]
 800600e:	4619      	mov	r1, r3
 8006010:	f000 fd7c 	bl	8006b0c <checkTimeout>
 8006014:	4603      	mov	r3, r0
 8006016:	2b00      	cmp	r3, #0
 8006018:	d00b      	beq.n	8006032 <checkIfPositionIsReachedCoord+0x52>
 800601a:	79fb      	ldrb	r3, [r7, #7]
 800601c:	4a45      	ldr	r2, [pc, #276]	; (8006134 <checkIfPositionIsReachedCoord+0x154>)
 800601e:	009b      	lsls	r3, r3, #2
 8006020:	4413      	add	r3, r2
 8006022:	f04f 0200 	mov.w	r2, #0
 8006026:	601a      	str	r2, [r3, #0]
 8006028:	79fb      	ldrb	r3, [r7, #7]
 800602a:	4a41      	ldr	r2, [pc, #260]	; (8006130 <checkIfPositionIsReachedCoord+0x150>)
 800602c:	2100      	movs	r1, #0
 800602e:	54d1      	strb	r1, [r2, r3]
 8006030:	e07b      	b.n	800612a <checkIfPositionIsReachedCoord+0x14a>
 8006032:	79fb      	ldrb	r3, [r7, #7]
 8006034:	4a3e      	ldr	r2, [pc, #248]	; (8006130 <checkIfPositionIsReachedCoord+0x150>)
 8006036:	3316      	adds	r3, #22
 8006038:	009b      	lsls	r3, r3, #2
 800603a:	4413      	add	r3, r2
 800603c:	ed93 7a00 	vldr	s14, [r3]
 8006040:	79fb      	ldrb	r3, [r7, #7]
 8006042:	009b      	lsls	r3, r3, #2
 8006044:	683a      	ldr	r2, [r7, #0]
 8006046:	4413      	add	r3, r2
 8006048:	edd3 7a00 	vldr	s15, [r3]
 800604c:	ee77 7a67 	vsub.f32	s15, s14, s15
 8006050:	eeb0 7ae7 	vabs.f32	s14, s15
 8006054:	79fb      	ldrb	r3, [r7, #7]
 8006056:	4a38      	ldr	r2, [pc, #224]	; (8006138 <checkIfPositionIsReachedCoord+0x158>)
 8006058:	009b      	lsls	r3, r3, #2
 800605a:	4413      	add	r3, r2
 800605c:	edd3 7a00 	vldr	s15, [r3]
 8006060:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8006064:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8006068:	d50b      	bpl.n	8006082 <checkIfPositionIsReachedCoord+0xa2>
 800606a:	79fb      	ldrb	r3, [r7, #7]
 800606c:	4a31      	ldr	r2, [pc, #196]	; (8006134 <checkIfPositionIsReachedCoord+0x154>)
 800606e:	009b      	lsls	r3, r3, #2
 8006070:	4413      	add	r3, r2
 8006072:	f04f 0200 	mov.w	r2, #0
 8006076:	601a      	str	r2, [r3, #0]
 8006078:	79fb      	ldrb	r3, [r7, #7]
 800607a:	4a2d      	ldr	r2, [pc, #180]	; (8006130 <checkIfPositionIsReachedCoord+0x150>)
 800607c:	2100      	movs	r1, #0
 800607e:	54d1      	strb	r1, [r2, r3]
 8006080:	e053      	b.n	800612a <checkIfPositionIsReachedCoord+0x14a>
 8006082:	79fb      	ldrb	r3, [r7, #7]
 8006084:	009b      	lsls	r3, r3, #2
 8006086:	683a      	ldr	r2, [r7, #0]
 8006088:	4413      	add	r3, r2
 800608a:	edd3 7a00 	vldr	s15, [r3]
 800608e:	eeb0 7ae7 	vabs.f32	s14, s15
 8006092:	79fb      	ldrb	r3, [r7, #7]
 8006094:	4a26      	ldr	r2, [pc, #152]	; (8006130 <checkIfPositionIsReachedCoord+0x150>)
 8006096:	3310      	adds	r3, #16
 8006098:	009b      	lsls	r3, r3, #2
 800609a:	4413      	add	r3, r2
 800609c:	edd3 7a00 	vldr	s15, [r3]
 80060a0:	eef0 7ae7 	vabs.f32	s15, s15
 80060a4:	eeb4 7ae7 	vcmpe.f32	s14, s15
 80060a8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80060ac:	d51b      	bpl.n	80060e6 <checkIfPositionIsReachedCoord+0x106>
 80060ae:	79fb      	ldrb	r3, [r7, #7]
 80060b0:	4a22      	ldr	r2, [pc, #136]	; (800613c <checkIfPositionIsReachedCoord+0x15c>)
 80060b2:	009b      	lsls	r3, r3, #2
 80060b4:	4413      	add	r3, r2
 80060b6:	edd3 7a00 	vldr	s15, [r3]
 80060ba:	eeb0 7ae7 	vabs.f32	s14, s15
 80060be:	79fb      	ldrb	r3, [r7, #7]
 80060c0:	4a1b      	ldr	r2, [pc, #108]	; (8006130 <checkIfPositionIsReachedCoord+0x150>)
 80060c2:	3306      	adds	r3, #6
 80060c4:	009b      	lsls	r3, r3, #2
 80060c6:	4413      	add	r3, r2
 80060c8:	3304      	adds	r3, #4
 80060ca:	edd3 7a00 	vldr	s15, [r3]
 80060ce:	eef0 7ae7 	vabs.f32	s15, s15
 80060d2:	eeb4 7ae7 	vcmpe.f32	s14, s15
 80060d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80060da:	d504      	bpl.n	80060e6 <checkIfPositionIsReachedCoord+0x106>
 80060dc:	79fb      	ldrb	r3, [r7, #7]
 80060de:	4a14      	ldr	r2, [pc, #80]	; (8006130 <checkIfPositionIsReachedCoord+0x150>)
 80060e0:	2101      	movs	r1, #1
 80060e2:	54d1      	strb	r1, [r2, r3]
 80060e4:	e021      	b.n	800612a <checkIfPositionIsReachedCoord+0x14a>
 80060e6:	79fb      	ldrb	r3, [r7, #7]
 80060e8:	009b      	lsls	r3, r3, #2
 80060ea:	683a      	ldr	r2, [r7, #0]
 80060ec:	4413      	add	r3, r2
 80060ee:	edd3 7a00 	vldr	s15, [r3]
 80060f2:	eeb0 7ae7 	vabs.f32	s14, s15
 80060f6:	79fb      	ldrb	r3, [r7, #7]
 80060f8:	4a0d      	ldr	r2, [pc, #52]	; (8006130 <checkIfPositionIsReachedCoord+0x150>)
 80060fa:	3312      	adds	r3, #18
 80060fc:	009b      	lsls	r3, r3, #2
 80060fe:	4413      	add	r3, r2
 8006100:	3304      	adds	r3, #4
 8006102:	edd3 7a00 	vldr	s15, [r3]
 8006106:	eef0 7ae7 	vabs.f32	s15, s15
 800610a:	eeb4 7ae7 	vcmpe.f32	s14, s15
 800610e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8006112:	d504      	bpl.n	800611e <checkIfPositionIsReachedCoord+0x13e>
 8006114:	79fb      	ldrb	r3, [r7, #7]
 8006116:	4a06      	ldr	r2, [pc, #24]	; (8006130 <checkIfPositionIsReachedCoord+0x150>)
 8006118:	2102      	movs	r1, #2
 800611a:	54d1      	strb	r1, [r2, r3]
 800611c:	e005      	b.n	800612a <checkIfPositionIsReachedCoord+0x14a>
 800611e:	79fb      	ldrb	r3, [r7, #7]
 8006120:	4a03      	ldr	r2, [pc, #12]	; (8006130 <checkIfPositionIsReachedCoord+0x150>)
 8006122:	2103      	movs	r1, #3
 8006124:	54d1      	strb	r1, [r2, r3]
 8006126:	e000      	b.n	800612a <checkIfPositionIsReachedCoord+0x14a>
 8006128:	bf00      	nop
 800612a:	3708      	adds	r7, #8
 800612c:	46bd      	mov	sp, r7
 800612e:	bd80      	pop	{r7, pc}
 8006130:	20014e10 	.word	0x20014e10
 8006134:	20014dec 	.word	0x20014dec
 8006138:	0800adc0 	.word	0x0800adc0
 800613c:	20014ea8 	.word	0x20014ea8

08006140 <updateRobotStatus>:
 8006140:	b480      	push	{r7}
 8006142:	b083      	sub	sp, #12
 8006144:	af00      	add	r7, sp, #0
 8006146:	2300      	movs	r3, #0
 8006148:	71fb      	strb	r3, [r7, #7]
 800614a:	e013      	b.n	8006174 <updateRobotStatus+0x34>
 800614c:	79fb      	ldrb	r3, [r7, #7]
 800614e:	4a0f      	ldr	r2, [pc, #60]	; (800618c <updateRobotStatus+0x4c>)
 8006150:	009b      	lsls	r3, r3, #2
 8006152:	4413      	add	r3, r2
 8006154:	edd3 7a00 	vldr	s15, [r3]
 8006158:	ed9f 7a0d 	vldr	s14, [pc, #52]	; 8006190 <updateRobotStatus+0x50>
 800615c:	eef4 7ac7 	vcmpe.f32	s15, s14
 8006160:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8006164:	dd03      	ble.n	800616e <updateRobotStatus+0x2e>
 8006166:	4b0b      	ldr	r3, [pc, #44]	; (8006194 <updateRobotStatus+0x54>)
 8006168:	2201      	movs	r2, #1
 800616a:	701a      	strb	r2, [r3, #0]
 800616c:	e009      	b.n	8006182 <updateRobotStatus+0x42>
 800616e:	79fb      	ldrb	r3, [r7, #7]
 8006170:	3301      	adds	r3, #1
 8006172:	71fb      	strb	r3, [r7, #7]
 8006174:	79fb      	ldrb	r3, [r7, #7]
 8006176:	2b03      	cmp	r3, #3
 8006178:	d9e8      	bls.n	800614c <updateRobotStatus+0xc>
 800617a:	4b06      	ldr	r3, [pc, #24]	; (8006194 <updateRobotStatus+0x54>)
 800617c:	2200      	movs	r2, #0
 800617e:	701a      	strb	r2, [r3, #0]
 8006180:	bf00      	nop
 8006182:	370c      	adds	r7, #12
 8006184:	46bd      	mov	sp, r7
 8006186:	f85d 7b04 	ldr.w	r7, [sp], #4
 800618a:	4770      	bx	lr
 800618c:	20014e94 	.word	0x20014e94
 8006190:	3b83126f 	.word	0x3b83126f
 8006194:	20014df8 	.word	0x20014df8

08006198 <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode>:
 8006198:	b580      	push	{r7, lr}
 800619a:	b084      	sub	sp, #16
 800619c:	af00      	add	r7, sp, #0
 800619e:	4603      	mov	r3, r0
 80061a0:	71fb      	strb	r3, [r7, #7]
 80061a2:	79fa      	ldrb	r2, [r7, #7]
 80061a4:	f107 030f 	add.w	r3, r7, #15
 80061a8:	4619      	mov	r1, r3
 80061aa:	2016      	movs	r0, #22
 80061ac:	f000 fb3c 	bl	8006828 <rangeFinderReadReg>
 80061b0:	4603      	mov	r3, r0
 80061b2:	2b01      	cmp	r3, #1
 80061b4:	d001      	beq.n	80061ba <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x22>
 80061b6:	2300      	movs	r3, #0
 80061b8:	e088      	b.n	80062cc <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x134>
 80061ba:	7bfb      	ldrb	r3, [r7, #15]
 80061bc:	2b01      	cmp	r3, #1
 80061be:	f040 8084 	bne.w	80062ca <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x132>
 80061c2:	79fb      	ldrb	r3, [r7, #7]
 80061c4:	4618      	mov	r0, r3
 80061c6:	f000 f9b7 	bl	8006538 <rangeFinderInitMandatoryRegs>
 80061ca:	4603      	mov	r3, r0
 80061cc:	2b01      	cmp	r3, #1
 80061ce:	d001      	beq.n	80061d4 <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x3c>
 80061d0:	2300      	movs	r3, #0
 80061d2:	e07b      	b.n	80062cc <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x134>
 80061d4:	79fb      	ldrb	r3, [r7, #7]
 80061d6:	461a      	mov	r2, r3
 80061d8:	2146      	movs	r1, #70	; 0x46
 80061da:	203f      	movs	r0, #63	; 0x3f
 80061dc:	f000 fafe 	bl	80067dc <rangeFinderWriteReg>
 80061e0:	4603      	mov	r3, r0
 80061e2:	2b01      	cmp	r3, #1
 80061e4:	d001      	beq.n	80061ea <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x52>
 80061e6:	2300      	movs	r3, #0
 80061e8:	e070      	b.n	80062cc <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x134>
 80061ea:	79fb      	ldrb	r3, [r7, #7]
 80061ec:	461a      	mov	r2, r3
 80061ee:	21ff      	movs	r1, #255	; 0xff
 80061f0:	2031      	movs	r0, #49	; 0x31
 80061f2:	f000 faf3 	bl	80067dc <rangeFinderWriteReg>
 80061f6:	4603      	mov	r3, r0
 80061f8:	2b01      	cmp	r3, #1
 80061fa:	d001      	beq.n	8006200 <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x68>
 80061fc:	2300      	movs	r3, #0
 80061fe:	e065      	b.n	80062cc <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x134>
 8006200:	79fb      	ldrb	r3, [r7, #7]
 8006202:	461a      	mov	r2, r3
 8006204:	2101      	movs	r1, #1
 8006206:	202e      	movs	r0, #46	; 0x2e
 8006208:	f000 fae8 	bl	80067dc <rangeFinderWriteReg>
 800620c:	4603      	mov	r3, r0
 800620e:	2b01      	cmp	r3, #1
 8006210:	d001      	beq.n	8006216 <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x7e>
 8006212:	2300      	movs	r3, #0
 8006214:	e05a      	b.n	80062cc <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x134>
 8006216:	79fb      	ldrb	r3, [r7, #7]
 8006218:	461a      	mov	r2, r3
 800621a:	2101      	movs	r1, #1
 800621c:	201b      	movs	r0, #27
 800621e:	f000 fadd 	bl	80067dc <rangeFinderWriteReg>
 8006222:	4603      	mov	r3, r0
 8006224:	2b01      	cmp	r3, #1
 8006226:	d001      	beq.n	800622c <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x94>
 8006228:	2300      	movs	r3, #0
 800622a:	e04f      	b.n	80062cc <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x134>
 800622c:	79fb      	ldrb	r3, [r7, #7]
 800622e:	461a      	mov	r2, r3
 8006230:	210d      	movs	r1, #13
 8006232:	201c      	movs	r0, #28
 8006234:	f000 fad2 	bl	80067dc <rangeFinderWriteReg>
 8006238:	4603      	mov	r3, r0
 800623a:	2b01      	cmp	r3, #1
 800623c:	d001      	beq.n	8006242 <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0xaa>
 800623e:	2300      	movs	r3, #0
 8006240:	e044      	b.n	80062cc <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x134>
 8006242:	79fb      	ldrb	r3, [r7, #7]
 8006244:	461a      	mov	r2, r3
 8006246:	2110      	movs	r1, #16
 8006248:	202d      	movs	r0, #45	; 0x2d
 800624a:	f000 fac7 	bl	80067dc <rangeFinderWriteReg>
 800624e:	4603      	mov	r3, r0
 8006250:	2b01      	cmp	r3, #1
 8006252:	d001      	beq.n	8006258 <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0xc0>
 8006254:	2300      	movs	r3, #0
 8006256:	e039      	b.n	80062cc <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x134>
 8006258:	79fb      	ldrb	r3, [r7, #7]
 800625a:	461a      	mov	r2, r3
 800625c:	2101      	movs	r1, #1
 800625e:	2017      	movs	r0, #23
 8006260:	f000 fabc 	bl	80067dc <rangeFinderWriteReg>
 8006264:	4603      	mov	r3, r0
 8006266:	2b01      	cmp	r3, #1
 8006268:	d001      	beq.n	800626e <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0xd6>
 800626a:	2300      	movs	r3, #0
 800626c:	e02e      	b.n	80062cc <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x134>
 800626e:	79fb      	ldrb	r3, [r7, #7]
 8006270:	461a      	mov	r2, r3
 8006272:	2104      	movs	r1, #4
 8006274:	2014      	movs	r0, #20
 8006276:	f000 fab1 	bl	80067dc <rangeFinderWriteReg>
 800627a:	4603      	mov	r3, r0
 800627c:	2b01      	cmp	r3, #1
 800627e:	d001      	beq.n	8006284 <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0xec>
 8006280:	2300      	movs	r3, #0
 8006282:	e023      	b.n	80062cc <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x134>
 8006284:	79fb      	ldrb	r3, [r7, #7]
 8006286:	461a      	mov	r2, r3
 8006288:	2100      	movs	r1, #0
 800628a:	2017      	movs	r0, #23
 800628c:	f000 faa6 	bl	80067dc <rangeFinderWriteReg>
 8006290:	4603      	mov	r3, r0
 8006292:	2b01      	cmp	r3, #1
 8006294:	d001      	beq.n	800629a <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x102>
 8006296:	2300      	movs	r3, #0
 8006298:	e018      	b.n	80062cc <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x134>
 800629a:	79fb      	ldrb	r3, [r7, #7]
 800629c:	461a      	mov	r2, r3
 800629e:	2108      	movs	r1, #8
 80062a0:	202c      	movs	r0, #44	; 0x2c
 80062a2:	f000 fa9b 	bl	80067dc <rangeFinderWriteReg>
 80062a6:	4603      	mov	r3, r0
 80062a8:	2b01      	cmp	r3, #1
 80062aa:	d001      	beq.n	80062b0 <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x118>
 80062ac:	2300      	movs	r3, #0
 80062ae:	e00d      	b.n	80062cc <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x134>
 80062b0:	79fb      	ldrb	r3, [r7, #7]
 80062b2:	461a      	mov	r2, r3
 80062b4:	2100      	movs	r1, #0
 80062b6:	2016      	movs	r0, #22
 80062b8:	f000 fa90 	bl	80067dc <rangeFinderWriteReg>
 80062bc:	4603      	mov	r3, r0
 80062be:	2b01      	cmp	r3, #1
 80062c0:	d001      	beq.n	80062c6 <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x12e>
 80062c2:	2300      	movs	r3, #0
 80062c4:	e002      	b.n	80062cc <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x134>
 80062c6:	2301      	movs	r3, #1
 80062c8:	e000      	b.n	80062cc <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x134>
 80062ca:	2300      	movs	r3, #0
 80062cc:	4618      	mov	r0, r3
 80062ce:	3710      	adds	r7, #16
 80062d0:	46bd      	mov	sp, r7
 80062d2:	bd80      	pop	{r7, pc}

080062d4 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode>:
 80062d4:	b580      	push	{r7, lr}
 80062d6:	b084      	sub	sp, #16
 80062d8:	af00      	add	r7, sp, #0
 80062da:	4603      	mov	r3, r0
 80062dc:	71fb      	strb	r3, [r7, #7]
 80062de:	79fa      	ldrb	r2, [r7, #7]
 80062e0:	f107 030f 	add.w	r3, r7, #15
 80062e4:	4619      	mov	r1, r3
 80062e6:	2016      	movs	r0, #22
 80062e8:	f000 fa9e 	bl	8006828 <rangeFinderReadReg>
 80062ec:	4603      	mov	r3, r0
 80062ee:	2b01      	cmp	r3, #1
 80062f0:	d001      	beq.n	80062f6 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x22>
 80062f2:	2300      	movs	r3, #0
 80062f4:	e088      	b.n	8006408 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x134>
 80062f6:	7bfb      	ldrb	r3, [r7, #15]
 80062f8:	2b01      	cmp	r3, #1
 80062fa:	f040 8084 	bne.w	8006406 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x132>
 80062fe:	79fb      	ldrb	r3, [r7, #7]
 8006300:	4618      	mov	r0, r3
 8006302:	f000 f919 	bl	8006538 <rangeFinderInitMandatoryRegs>
 8006306:	4603      	mov	r3, r0
 8006308:	2b01      	cmp	r3, #1
 800630a:	d001      	beq.n	8006310 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x3c>
 800630c:	2300      	movs	r3, #0
 800630e:	e07b      	b.n	8006408 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x134>
 8006310:	79fb      	ldrb	r3, [r7, #7]
 8006312:	461a      	mov	r2, r3
 8006314:	2146      	movs	r1, #70	; 0x46
 8006316:	203f      	movs	r0, #63	; 0x3f
 8006318:	f000 fa60 	bl	80067dc <rangeFinderWriteReg>
 800631c:	4603      	mov	r3, r0
 800631e:	2b01      	cmp	r3, #1
 8006320:	d001      	beq.n	8006326 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x52>
 8006322:	2300      	movs	r3, #0
 8006324:	e070      	b.n	8006408 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x134>
 8006326:	79fb      	ldrb	r3, [r7, #7]
 8006328:	461a      	mov	r2, r3
 800632a:	21ff      	movs	r1, #255	; 0xff
 800632c:	2031      	movs	r0, #49	; 0x31
 800632e:	f000 fa55 	bl	80067dc <rangeFinderWriteReg>
 8006332:	4603      	mov	r3, r0
 8006334:	2b01      	cmp	r3, #1
 8006336:	d001      	beq.n	800633c <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x68>
 8006338:	2300      	movs	r3, #0
 800633a:	e065      	b.n	8006408 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x134>
 800633c:	79fb      	ldrb	r3, [r7, #7]
 800633e:	461a      	mov	r2, r3
 8006340:	2101      	movs	r1, #1
 8006342:	202e      	movs	r0, #46	; 0x2e
 8006344:	f000 fa4a 	bl	80067dc <rangeFinderWriteReg>
 8006348:	4603      	mov	r3, r0
 800634a:	2b01      	cmp	r3, #1
 800634c:	d001      	beq.n	8006352 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x7e>
 800634e:	2300      	movs	r3, #0
 8006350:	e05a      	b.n	8006408 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x134>
 8006352:	79fb      	ldrb	r3, [r7, #7]
 8006354:	461a      	mov	r2, r3
 8006356:	2101      	movs	r1, #1
 8006358:	201b      	movs	r0, #27
 800635a:	f000 fa3f 	bl	80067dc <rangeFinderWriteReg>
 800635e:	4603      	mov	r3, r0
 8006360:	2b01      	cmp	r3, #1
 8006362:	d001      	beq.n	8006368 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x94>
 8006364:	2300      	movs	r3, #0
 8006366:	e04f      	b.n	8006408 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x134>
 8006368:	79fb      	ldrb	r3, [r7, #7]
 800636a:	461a      	mov	r2, r3
 800636c:	210d      	movs	r1, #13
 800636e:	201c      	movs	r0, #28
 8006370:	f000 fa34 	bl	80067dc <rangeFinderWriteReg>
 8006374:	4603      	mov	r3, r0
 8006376:	2b01      	cmp	r3, #1
 8006378:	d001      	beq.n	800637e <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0xaa>
 800637a:	2300      	movs	r3, #0
 800637c:	e044      	b.n	8006408 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x134>
 800637e:	79fb      	ldrb	r3, [r7, #7]
 8006380:	461a      	mov	r2, r3
 8006382:	2101      	movs	r1, #1
 8006384:	2017      	movs	r0, #23
 8006386:	f000 fa29 	bl	80067dc <rangeFinderWriteReg>
 800638a:	4603      	mov	r3, r0
 800638c:	2b01      	cmp	r3, #1
 800638e:	d001      	beq.n	8006394 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0xc0>
 8006390:	2300      	movs	r3, #0
 8006392:	e039      	b.n	8006408 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x134>
 8006394:	79fb      	ldrb	r3, [r7, #7]
 8006396:	461a      	mov	r2, r3
 8006398:	2110      	movs	r1, #16
 800639a:	202d      	movs	r0, #45	; 0x2d
 800639c:	f000 fa1e 	bl	80067dc <rangeFinderWriteReg>
 80063a0:	4603      	mov	r3, r0
 80063a2:	2b01      	cmp	r3, #1
 80063a4:	d001      	beq.n	80063aa <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0xd6>
 80063a6:	2300      	movs	r3, #0
 80063a8:	e02e      	b.n	8006408 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x134>
 80063aa:	79fb      	ldrb	r3, [r7, #7]
 80063ac:	461a      	mov	r2, r3
 80063ae:	2104      	movs	r1, #4
 80063b0:	2014      	movs	r0, #20
 80063b2:	f000 fa13 	bl	80067dc <rangeFinderWriteReg>
 80063b6:	4603      	mov	r3, r0
 80063b8:	2b01      	cmp	r3, #1
 80063ba:	d001      	beq.n	80063c0 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0xec>
 80063bc:	2300      	movs	r3, #0
 80063be:	e023      	b.n	8006408 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x134>
 80063c0:	79fb      	ldrb	r3, [r7, #7]
 80063c2:	461a      	mov	r2, r3
 80063c4:	2100      	movs	r1, #0
 80063c6:	2017      	movs	r0, #23
 80063c8:	f000 fa08 	bl	80067dc <rangeFinderWriteReg>
 80063cc:	4603      	mov	r3, r0
 80063ce:	2b01      	cmp	r3, #1
 80063d0:	d001      	beq.n	80063d6 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x102>
 80063d2:	2300      	movs	r3, #0
 80063d4:	e018      	b.n	8006408 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x134>
 80063d6:	79fb      	ldrb	r3, [r7, #7]
 80063d8:	461a      	mov	r2, r3
 80063da:	2150      	movs	r1, #80	; 0x50
 80063dc:	202c      	movs	r0, #44	; 0x2c
 80063de:	f000 f9fd 	bl	80067dc <rangeFinderWriteReg>
 80063e2:	4603      	mov	r3, r0
 80063e4:	2b01      	cmp	r3, #1
 80063e6:	d001      	beq.n	80063ec <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x118>
 80063e8:	2300      	movs	r3, #0
 80063ea:	e00d      	b.n	8006408 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x134>
 80063ec:	79fb      	ldrb	r3, [r7, #7]
 80063ee:	461a      	mov	r2, r3
 80063f0:	2100      	movs	r1, #0
 80063f2:	2016      	movs	r0, #22
 80063f4:	f000 f9f2 	bl	80067dc <rangeFinderWriteReg>
 80063f8:	4603      	mov	r3, r0
 80063fa:	2b01      	cmp	r3, #1
 80063fc:	d001      	beq.n	8006402 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x12e>
 80063fe:	2300      	movs	r3, #0
 8006400:	e002      	b.n	8006408 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x134>
 8006402:	2301      	movs	r3, #1
 8006404:	e000      	b.n	8006408 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x134>
 8006406:	2300      	movs	r3, #0
 8006408:	4618      	mov	r0, r3
 800640a:	3710      	adds	r7, #16
 800640c:	46bd      	mov	sp, r7
 800640e:	bd80      	pop	{r7, pc}

08006410 <rangeFinderChangeAddress>:
 8006410:	b580      	push	{r7, lr}
 8006412:	b082      	sub	sp, #8
 8006414:	af00      	add	r7, sp, #0
 8006416:	4603      	mov	r3, r0
 8006418:	460a      	mov	r2, r1
 800641a:	71fb      	strb	r3, [r7, #7]
 800641c:	4613      	mov	r3, r2
 800641e:	71bb      	strb	r3, [r7, #6]
 8006420:	79fa      	ldrb	r2, [r7, #7]
 8006422:	79bb      	ldrb	r3, [r7, #6]
 8006424:	4619      	mov	r1, r3
 8006426:	f240 2012 	movw	r0, #530	; 0x212
 800642a:	f000 f9d7 	bl	80067dc <rangeFinderWriteReg>
 800642e:	4603      	mov	r3, r0
 8006430:	2b01      	cmp	r3, #1
 8006432:	d001      	beq.n	8006438 <rangeFinderChangeAddress+0x28>
 8006434:	2300      	movs	r3, #0
 8006436:	e000      	b.n	800643a <rangeFinderChangeAddress+0x2a>
 8006438:	2301      	movs	r3, #1
 800643a:	4618      	mov	r0, r3
 800643c:	3708      	adds	r7, #8
 800643e:	46bd      	mov	sp, r7
 8006440:	bd80      	pop	{r7, pc}
 8006442:	bf00      	nop

08006444 <rangeFinderCheckInterruptStatusOfSensor>:
 8006444:	b580      	push	{r7, lr}
 8006446:	b084      	sub	sp, #16
 8006448:	af00      	add	r7, sp, #0
 800644a:	4603      	mov	r3, r0
 800644c:	6039      	str	r1, [r7, #0]
 800644e:	71fb      	strb	r3, [r7, #7]
 8006450:	4613      	mov	r3, r2
 8006452:	71bb      	strb	r3, [r7, #6]
 8006454:	79fa      	ldrb	r2, [r7, #7]
 8006456:	f107 030f 	add.w	r3, r7, #15
 800645a:	4619      	mov	r1, r3
 800645c:	204f      	movs	r0, #79	; 0x4f
 800645e:	f000 f9e3 	bl	8006828 <rangeFinderReadReg>
 8006462:	4603      	mov	r3, r0
 8006464:	2b01      	cmp	r3, #1
 8006466:	d001      	beq.n	800646c <rangeFinderCheckInterruptStatusOfSensor+0x28>
 8006468:	2300      	movs	r3, #0
 800646a:	e01f      	b.n	80064ac <rangeFinderCheckInterruptStatusOfSensor+0x68>
 800646c:	7bfb      	ldrb	r3, [r7, #15]
 800646e:	f003 0307 	and.w	r3, r3, #7
 8006472:	b2db      	uxtb	r3, r3
 8006474:	73fb      	strb	r3, [r7, #15]
 8006476:	7bfb      	ldrb	r3, [r7, #15]
 8006478:	79ba      	ldrb	r2, [r7, #6]
 800647a:	429a      	cmp	r2, r3
 800647c:	d103      	bne.n	8006486 <rangeFinderCheckInterruptStatusOfSensor+0x42>
 800647e:	683b      	ldr	r3, [r7, #0]
 8006480:	2201      	movs	r2, #1
 8006482:	701a      	strb	r2, [r3, #0]
 8006484:	e002      	b.n	800648c <rangeFinderCheckInterruptStatusOfSensor+0x48>
 8006486:	683b      	ldr	r3, [r7, #0]
 8006488:	2200      	movs	r2, #0
 800648a:	701a      	strb	r2, [r3, #0]
 800648c:	683b      	ldr	r3, [r7, #0]
 800648e:	781b      	ldrb	r3, [r3, #0]
 8006490:	2b01      	cmp	r3, #1
 8006492:	d10a      	bne.n	80064aa <rangeFinderCheckInterruptStatusOfSensor+0x66>
 8006494:	79fb      	ldrb	r3, [r7, #7]
 8006496:	461a      	mov	r2, r3
 8006498:	2107      	movs	r1, #7
 800649a:	2015      	movs	r0, #21
 800649c:	f000 f99e 	bl	80067dc <rangeFinderWriteReg>
 80064a0:	4603      	mov	r3, r0
 80064a2:	2b01      	cmp	r3, #1
 80064a4:	d001      	beq.n	80064aa <rangeFinderCheckInterruptStatusOfSensor+0x66>
 80064a6:	2300      	movs	r3, #0
 80064a8:	e000      	b.n	80064ac <rangeFinderCheckInterruptStatusOfSensor+0x68>
 80064aa:	2301      	movs	r3, #1
 80064ac:	4618      	mov	r0, r3
 80064ae:	3710      	adds	r7, #16
 80064b0:	46bd      	mov	sp, r7
 80064b2:	bd80      	pop	{r7, pc}

080064b4 <rangeFinderStartContiniousMeasurements>:
 80064b4:	b580      	push	{r7, lr}
 80064b6:	b082      	sub	sp, #8
 80064b8:	af00      	add	r7, sp, #0
 80064ba:	4603      	mov	r3, r0
 80064bc:	71fb      	strb	r3, [r7, #7]
 80064be:	79fb      	ldrb	r3, [r7, #7]
 80064c0:	461a      	mov	r2, r3
 80064c2:	2103      	movs	r1, #3
 80064c4:	2018      	movs	r0, #24
 80064c6:	f000 f989 	bl	80067dc <rangeFinderWriteReg>
 80064ca:	4603      	mov	r3, r0
 80064cc:	2b01      	cmp	r3, #1
 80064ce:	d001      	beq.n	80064d4 <rangeFinderStartContiniousMeasurements+0x20>
 80064d0:	2300      	movs	r3, #0
 80064d2:	e000      	b.n	80064d6 <rangeFinderStartContiniousMeasurements+0x22>
 80064d4:	2301      	movs	r3, #1
 80064d6:	4618      	mov	r0, r3
 80064d8:	3708      	adds	r7, #8
 80064da:	46bd      	mov	sp, r7
 80064dc:	bd80      	pop	{r7, pc}
 80064de:	bf00      	nop

080064e0 <rangeFinderReadMeasuredRange>:
 80064e0:	b580      	push	{r7, lr}
 80064e2:	b082      	sub	sp, #8
 80064e4:	af00      	add	r7, sp, #0
 80064e6:	4603      	mov	r3, r0
 80064e8:	6039      	str	r1, [r7, #0]
 80064ea:	71fb      	strb	r3, [r7, #7]
 80064ec:	79fb      	ldrb	r3, [r7, #7]
 80064ee:	461a      	mov	r2, r3
 80064f0:	6839      	ldr	r1, [r7, #0]
 80064f2:	2062      	movs	r0, #98	; 0x62
 80064f4:	f000 f998 	bl	8006828 <rangeFinderReadReg>
 80064f8:	4603      	mov	r3, r0
 80064fa:	2b01      	cmp	r3, #1
 80064fc:	d001      	beq.n	8006502 <rangeFinderReadMeasuredRange+0x22>
 80064fe:	2300      	movs	r3, #0
 8006500:	e000      	b.n	8006504 <rangeFinderReadMeasuredRange+0x24>
 8006502:	2301      	movs	r3, #1
 8006504:	4618      	mov	r0, r3
 8006506:	3708      	adds	r7, #8
 8006508:	46bd      	mov	sp, r7
 800650a:	bd80      	pop	{r7, pc}

0800650c <rangeFinderReadRangeReadyStatus>:
 800650c:	b580      	push	{r7, lr}
 800650e:	b082      	sub	sp, #8
 8006510:	af00      	add	r7, sp, #0
 8006512:	4603      	mov	r3, r0
 8006514:	6039      	str	r1, [r7, #0]
 8006516:	71fb      	strb	r3, [r7, #7]
 8006518:	79fb      	ldrb	r3, [r7, #7]
 800651a:	461a      	mov	r2, r3
 800651c:	6839      	ldr	r1, [r7, #0]
 800651e:	204d      	movs	r0, #77	; 0x4d
 8006520:	f000 f982 	bl	8006828 <rangeFinderReadReg>
 8006524:	4603      	mov	r3, r0
 8006526:	2b01      	cmp	r3, #1
 8006528:	d001      	beq.n	800652e <rangeFinderReadRangeReadyStatus+0x22>
 800652a:	2300      	movs	r3, #0
 800652c:	e000      	b.n	8006530 <rangeFinderReadRangeReadyStatus+0x24>
 800652e:	2301      	movs	r3, #1
 8006530:	4618      	mov	r0, r3
 8006532:	3708      	adds	r7, #8
 8006534:	46bd      	mov	sp, r7
 8006536:	bd80      	pop	{r7, pc}

08006538 <rangeFinderInitMandatoryRegs>:
 8006538:	b580      	push	{r7, lr}
 800653a:	b082      	sub	sp, #8
 800653c:	af00      	add	r7, sp, #0
 800653e:	4603      	mov	r3, r0
 8006540:	71fb      	strb	r3, [r7, #7]
 8006542:	79fb      	ldrb	r3, [r7, #7]
 8006544:	461a      	mov	r2, r3
 8006546:	2101      	movs	r1, #1
 8006548:	f240 2007 	movw	r0, #519	; 0x207
 800654c:	f000 f946 	bl	80067dc <rangeFinderWriteReg>
 8006550:	4603      	mov	r3, r0
 8006552:	2b01      	cmp	r3, #1
 8006554:	d001      	beq.n	800655a <rangeFinderInitMandatoryRegs+0x22>
 8006556:	2300      	movs	r3, #0
 8006558:	e13c      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 800655a:	79fb      	ldrb	r3, [r7, #7]
 800655c:	461a      	mov	r2, r3
 800655e:	2101      	movs	r1, #1
 8006560:	f44f 7002 	mov.w	r0, #520	; 0x208
 8006564:	f000 f93a 	bl	80067dc <rangeFinderWriteReg>
 8006568:	4603      	mov	r3, r0
 800656a:	2b01      	cmp	r3, #1
 800656c:	d001      	beq.n	8006572 <rangeFinderInitMandatoryRegs+0x3a>
 800656e:	2300      	movs	r3, #0
 8006570:	e130      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 8006572:	79fb      	ldrb	r3, [r7, #7]
 8006574:	461a      	mov	r2, r3
 8006576:	2100      	movs	r1, #0
 8006578:	2096      	movs	r0, #150	; 0x96
 800657a:	f000 f92f 	bl	80067dc <rangeFinderWriteReg>
 800657e:	4603      	mov	r3, r0
 8006580:	2b01      	cmp	r3, #1
 8006582:	d001      	beq.n	8006588 <rangeFinderInitMandatoryRegs+0x50>
 8006584:	2300      	movs	r3, #0
 8006586:	e125      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 8006588:	79fb      	ldrb	r3, [r7, #7]
 800658a:	461a      	mov	r2, r3
 800658c:	21fd      	movs	r1, #253	; 0xfd
 800658e:	2097      	movs	r0, #151	; 0x97
 8006590:	f000 f924 	bl	80067dc <rangeFinderWriteReg>
 8006594:	4603      	mov	r3, r0
 8006596:	2b01      	cmp	r3, #1
 8006598:	d001      	beq.n	800659e <rangeFinderInitMandatoryRegs+0x66>
 800659a:	2300      	movs	r3, #0
 800659c:	e11a      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 800659e:	79fb      	ldrb	r3, [r7, #7]
 80065a0:	461a      	mov	r2, r3
 80065a2:	2100      	movs	r1, #0
 80065a4:	20e3      	movs	r0, #227	; 0xe3
 80065a6:	f000 f919 	bl	80067dc <rangeFinderWriteReg>
 80065aa:	4603      	mov	r3, r0
 80065ac:	2b01      	cmp	r3, #1
 80065ae:	d001      	beq.n	80065b4 <rangeFinderInitMandatoryRegs+0x7c>
 80065b0:	2300      	movs	r3, #0
 80065b2:	e10f      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 80065b4:	79fb      	ldrb	r3, [r7, #7]
 80065b6:	461a      	mov	r2, r3
 80065b8:	2104      	movs	r1, #4
 80065ba:	20e4      	movs	r0, #228	; 0xe4
 80065bc:	f000 f90e 	bl	80067dc <rangeFinderWriteReg>
 80065c0:	4603      	mov	r3, r0
 80065c2:	2b01      	cmp	r3, #1
 80065c4:	d001      	beq.n	80065ca <rangeFinderInitMandatoryRegs+0x92>
 80065c6:	2300      	movs	r3, #0
 80065c8:	e104      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 80065ca:	79fb      	ldrb	r3, [r7, #7]
 80065cc:	461a      	mov	r2, r3
 80065ce:	2102      	movs	r1, #2
 80065d0:	20e5      	movs	r0, #229	; 0xe5
 80065d2:	f000 f903 	bl	80067dc <rangeFinderWriteReg>
 80065d6:	4603      	mov	r3, r0
 80065d8:	2b01      	cmp	r3, #1
 80065da:	d001      	beq.n	80065e0 <rangeFinderInitMandatoryRegs+0xa8>
 80065dc:	2300      	movs	r3, #0
 80065de:	e0f9      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 80065e0:	79fb      	ldrb	r3, [r7, #7]
 80065e2:	461a      	mov	r2, r3
 80065e4:	2101      	movs	r1, #1
 80065e6:	20e6      	movs	r0, #230	; 0xe6
 80065e8:	f000 f8f8 	bl	80067dc <rangeFinderWriteReg>
 80065ec:	4603      	mov	r3, r0
 80065ee:	2b01      	cmp	r3, #1
 80065f0:	d001      	beq.n	80065f6 <rangeFinderInitMandatoryRegs+0xbe>
 80065f2:	2300      	movs	r3, #0
 80065f4:	e0ee      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 80065f6:	79fb      	ldrb	r3, [r7, #7]
 80065f8:	461a      	mov	r2, r3
 80065fa:	2103      	movs	r1, #3
 80065fc:	20e7      	movs	r0, #231	; 0xe7
 80065fe:	f000 f8ed 	bl	80067dc <rangeFinderWriteReg>
 8006602:	4603      	mov	r3, r0
 8006604:	2b01      	cmp	r3, #1
 8006606:	d001      	beq.n	800660c <rangeFinderInitMandatoryRegs+0xd4>
 8006608:	2300      	movs	r3, #0
 800660a:	e0e3      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 800660c:	79fb      	ldrb	r3, [r7, #7]
 800660e:	461a      	mov	r2, r3
 8006610:	2102      	movs	r1, #2
 8006612:	20f5      	movs	r0, #245	; 0xf5
 8006614:	f000 f8e2 	bl	80067dc <rangeFinderWriteReg>
 8006618:	4603      	mov	r3, r0
 800661a:	2b01      	cmp	r3, #1
 800661c:	d001      	beq.n	8006622 <rangeFinderInitMandatoryRegs+0xea>
 800661e:	2300      	movs	r3, #0
 8006620:	e0d8      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 8006622:	79fb      	ldrb	r3, [r7, #7]
 8006624:	461a      	mov	r2, r3
 8006626:	2105      	movs	r1, #5
 8006628:	20d9      	movs	r0, #217	; 0xd9
 800662a:	f000 f8d7 	bl	80067dc <rangeFinderWriteReg>
 800662e:	4603      	mov	r3, r0
 8006630:	2b01      	cmp	r3, #1
 8006632:	d001      	beq.n	8006638 <rangeFinderInitMandatoryRegs+0x100>
 8006634:	2300      	movs	r3, #0
 8006636:	e0cd      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 8006638:	79fb      	ldrb	r3, [r7, #7]
 800663a:	461a      	mov	r2, r3
 800663c:	21ce      	movs	r1, #206	; 0xce
 800663e:	20db      	movs	r0, #219	; 0xdb
 8006640:	f000 f8cc 	bl	80067dc <rangeFinderWriteReg>
 8006644:	4603      	mov	r3, r0
 8006646:	2b01      	cmp	r3, #1
 8006648:	d001      	beq.n	800664e <rangeFinderInitMandatoryRegs+0x116>
 800664a:	2300      	movs	r3, #0
 800664c:	e0c2      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 800664e:	79fb      	ldrb	r3, [r7, #7]
 8006650:	461a      	mov	r2, r3
 8006652:	2103      	movs	r1, #3
 8006654:	20dc      	movs	r0, #220	; 0xdc
 8006656:	f000 f8c1 	bl	80067dc <rangeFinderWriteReg>
 800665a:	4603      	mov	r3, r0
 800665c:	2b01      	cmp	r3, #1
 800665e:	d001      	beq.n	8006664 <rangeFinderInitMandatoryRegs+0x12c>
 8006660:	2300      	movs	r3, #0
 8006662:	e0b7      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 8006664:	79fb      	ldrb	r3, [r7, #7]
 8006666:	461a      	mov	r2, r3
 8006668:	21f8      	movs	r1, #248	; 0xf8
 800666a:	20dd      	movs	r0, #221	; 0xdd
 800666c:	f000 f8b6 	bl	80067dc <rangeFinderWriteReg>
 8006670:	4603      	mov	r3, r0
 8006672:	2b01      	cmp	r3, #1
 8006674:	d001      	beq.n	800667a <rangeFinderInitMandatoryRegs+0x142>
 8006676:	2300      	movs	r3, #0
 8006678:	e0ac      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 800667a:	79fb      	ldrb	r3, [r7, #7]
 800667c:	461a      	mov	r2, r3
 800667e:	2100      	movs	r1, #0
 8006680:	209f      	movs	r0, #159	; 0x9f
 8006682:	f000 f8ab 	bl	80067dc <rangeFinderWriteReg>
 8006686:	4603      	mov	r3, r0
 8006688:	2b01      	cmp	r3, #1
 800668a:	d001      	beq.n	8006690 <rangeFinderInitMandatoryRegs+0x158>
 800668c:	2300      	movs	r3, #0
 800668e:	e0a1      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 8006690:	79fb      	ldrb	r3, [r7, #7]
 8006692:	461a      	mov	r2, r3
 8006694:	213c      	movs	r1, #60	; 0x3c
 8006696:	20a3      	movs	r0, #163	; 0xa3
 8006698:	f000 f8a0 	bl	80067dc <rangeFinderWriteReg>
 800669c:	4603      	mov	r3, r0
 800669e:	2b01      	cmp	r3, #1
 80066a0:	d001      	beq.n	80066a6 <rangeFinderInitMandatoryRegs+0x16e>
 80066a2:	2300      	movs	r3, #0
 80066a4:	e096      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 80066a6:	79fb      	ldrb	r3, [r7, #7]
 80066a8:	461a      	mov	r2, r3
 80066aa:	2100      	movs	r1, #0
 80066ac:	20b7      	movs	r0, #183	; 0xb7
 80066ae:	f000 f895 	bl	80067dc <rangeFinderWriteReg>
 80066b2:	4603      	mov	r3, r0
 80066b4:	2b01      	cmp	r3, #1
 80066b6:	d001      	beq.n	80066bc <rangeFinderInitMandatoryRegs+0x184>
 80066b8:	2300      	movs	r3, #0
 80066ba:	e08b      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 80066bc:	79fb      	ldrb	r3, [r7, #7]
 80066be:	461a      	mov	r2, r3
 80066c0:	213c      	movs	r1, #60	; 0x3c
 80066c2:	20bb      	movs	r0, #187	; 0xbb
 80066c4:	f000 f88a 	bl	80067dc <rangeFinderWriteReg>
 80066c8:	4603      	mov	r3, r0
 80066ca:	2b01      	cmp	r3, #1
 80066cc:	d001      	beq.n	80066d2 <rangeFinderInitMandatoryRegs+0x19a>
 80066ce:	2300      	movs	r3, #0
 80066d0:	e080      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 80066d2:	79fb      	ldrb	r3, [r7, #7]
 80066d4:	461a      	mov	r2, r3
 80066d6:	2109      	movs	r1, #9
 80066d8:	20b2      	movs	r0, #178	; 0xb2
 80066da:	f000 f87f 	bl	80067dc <rangeFinderWriteReg>
 80066de:	4603      	mov	r3, r0
 80066e0:	2b01      	cmp	r3, #1
 80066e2:	d001      	beq.n	80066e8 <rangeFinderInitMandatoryRegs+0x1b0>
 80066e4:	2300      	movs	r3, #0
 80066e6:	e075      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 80066e8:	79fb      	ldrb	r3, [r7, #7]
 80066ea:	461a      	mov	r2, r3
 80066ec:	2109      	movs	r1, #9
 80066ee:	20ca      	movs	r0, #202	; 0xca
 80066f0:	f000 f874 	bl	80067dc <rangeFinderWriteReg>
 80066f4:	4603      	mov	r3, r0
 80066f6:	2b01      	cmp	r3, #1
 80066f8:	d001      	beq.n	80066fe <rangeFinderInitMandatoryRegs+0x1c6>
 80066fa:	2300      	movs	r3, #0
 80066fc:	e06a      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 80066fe:	79fb      	ldrb	r3, [r7, #7]
 8006700:	461a      	mov	r2, r3
 8006702:	2101      	movs	r1, #1
 8006704:	f44f 70cc 	mov.w	r0, #408	; 0x198
 8006708:	f000 f868 	bl	80067dc <rangeFinderWriteReg>
 800670c:	4603      	mov	r3, r0
 800670e:	2b01      	cmp	r3, #1
 8006710:	d001      	beq.n	8006716 <rangeFinderInitMandatoryRegs+0x1de>
 8006712:	2300      	movs	r3, #0
 8006714:	e05e      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 8006716:	79fb      	ldrb	r3, [r7, #7]
 8006718:	461a      	mov	r2, r3
 800671a:	2117      	movs	r1, #23
 800671c:	f44f 70d8 	mov.w	r0, #432	; 0x1b0
 8006720:	f000 f85c 	bl	80067dc <rangeFinderWriteReg>
 8006724:	4603      	mov	r3, r0
 8006726:	2b01      	cmp	r3, #1
 8006728:	d001      	beq.n	800672e <rangeFinderInitMandatoryRegs+0x1f6>
 800672a:	2300      	movs	r3, #0
 800672c:	e052      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 800672e:	79fb      	ldrb	r3, [r7, #7]
 8006730:	461a      	mov	r2, r3
 8006732:	2100      	movs	r1, #0
 8006734:	f240 10ad 	movw	r0, #429	; 0x1ad
 8006738:	f000 f850 	bl	80067dc <rangeFinderWriteReg>
 800673c:	4603      	mov	r3, r0
 800673e:	2b01      	cmp	r3, #1
 8006740:	d001      	beq.n	8006746 <rangeFinderInitMandatoryRegs+0x20e>
 8006742:	2300      	movs	r3, #0
 8006744:	e046      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 8006746:	79fb      	ldrb	r3, [r7, #7]
 8006748:	461a      	mov	r2, r3
 800674a:	2105      	movs	r1, #5
 800674c:	20ff      	movs	r0, #255	; 0xff
 800674e:	f000 f845 	bl	80067dc <rangeFinderWriteReg>
 8006752:	4603      	mov	r3, r0
 8006754:	2b01      	cmp	r3, #1
 8006756:	d001      	beq.n	800675c <rangeFinderInitMandatoryRegs+0x224>
 8006758:	2300      	movs	r3, #0
 800675a:	e03b      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 800675c:	79fb      	ldrb	r3, [r7, #7]
 800675e:	461a      	mov	r2, r3
 8006760:	2105      	movs	r1, #5
 8006762:	f44f 7080 	mov.w	r0, #256	; 0x100
 8006766:	f000 f839 	bl	80067dc <rangeFinderWriteReg>
 800676a:	4603      	mov	r3, r0
 800676c:	2b01      	cmp	r3, #1
 800676e:	d001      	beq.n	8006774 <rangeFinderInitMandatoryRegs+0x23c>
 8006770:	2300      	movs	r3, #0
 8006772:	e02f      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 8006774:	79fb      	ldrb	r3, [r7, #7]
 8006776:	461a      	mov	r2, r3
 8006778:	2105      	movs	r1, #5
 800677a:	f240 1099 	movw	r0, #409	; 0x199
 800677e:	f000 f82d 	bl	80067dc <rangeFinderWriteReg>
 8006782:	4603      	mov	r3, r0
 8006784:	2b01      	cmp	r3, #1
 8006786:	d001      	beq.n	800678c <rangeFinderInitMandatoryRegs+0x254>
 8006788:	2300      	movs	r3, #0
 800678a:	e023      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 800678c:	79fb      	ldrb	r3, [r7, #7]
 800678e:	461a      	mov	r2, r3
 8006790:	211b      	movs	r1, #27
 8006792:	f44f 70d3 	mov.w	r0, #422	; 0x1a6
 8006796:	f000 f821 	bl	80067dc <rangeFinderWriteReg>
 800679a:	4603      	mov	r3, r0
 800679c:	2b01      	cmp	r3, #1
 800679e:	d001      	beq.n	80067a4 <rangeFinderInitMandatoryRegs+0x26c>
 80067a0:	2300      	movs	r3, #0
 80067a2:	e017      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 80067a4:	79fb      	ldrb	r3, [r7, #7]
 80067a6:	461a      	mov	r2, r3
 80067a8:	213e      	movs	r1, #62	; 0x3e
 80067aa:	f44f 70d6 	mov.w	r0, #428	; 0x1ac
 80067ae:	f000 f815 	bl	80067dc <rangeFinderWriteReg>
 80067b2:	4603      	mov	r3, r0
 80067b4:	2b01      	cmp	r3, #1
 80067b6:	d001      	beq.n	80067bc <rangeFinderInitMandatoryRegs+0x284>
 80067b8:	2300      	movs	r3, #0
 80067ba:	e00b      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 80067bc:	79fb      	ldrb	r3, [r7, #7]
 80067be:	461a      	mov	r2, r3
 80067c0:	2100      	movs	r1, #0
 80067c2:	2030      	movs	r0, #48	; 0x30
 80067c4:	f000 f80a 	bl	80067dc <rangeFinderWriteReg>
 80067c8:	4603      	mov	r3, r0
 80067ca:	2b01      	cmp	r3, #1
 80067cc:	d001      	beq.n	80067d2 <rangeFinderInitMandatoryRegs+0x29a>
 80067ce:	2300      	movs	r3, #0
 80067d0:	e000      	b.n	80067d4 <rangeFinderInitMandatoryRegs+0x29c>
 80067d2:	2301      	movs	r3, #1
 80067d4:	4618      	mov	r0, r3
 80067d6:	3708      	adds	r7, #8
 80067d8:	46bd      	mov	sp, r7
 80067da:	bd80      	pop	{r7, pc}

080067dc <rangeFinderWriteReg>:
 80067dc:	b580      	push	{r7, lr}
 80067de:	b084      	sub	sp, #16
 80067e0:	af00      	add	r7, sp, #0
 80067e2:	4603      	mov	r3, r0
 80067e4:	80fb      	strh	r3, [r7, #6]
 80067e6:	460b      	mov	r3, r1
 80067e8:	717b      	strb	r3, [r7, #5]
 80067ea:	4613      	mov	r3, r2
 80067ec:	713b      	strb	r3, [r7, #4]
 80067ee:	88fb      	ldrh	r3, [r7, #6]
 80067f0:	0a1b      	lsrs	r3, r3, #8
 80067f2:	b29b      	uxth	r3, r3
 80067f4:	b2db      	uxtb	r3, r3
 80067f6:	733b      	strb	r3, [r7, #12]
 80067f8:	88fb      	ldrh	r3, [r7, #6]
 80067fa:	b2db      	uxtb	r3, r3
 80067fc:	737b      	strb	r3, [r7, #13]
 80067fe:	797b      	ldrb	r3, [r7, #5]
 8006800:	73bb      	strb	r3, [r7, #14]
 8006802:	793b      	ldrb	r3, [r7, #4]
 8006804:	f107 010c 	add.w	r1, r7, #12
 8006808:	2203      	movs	r2, #3
 800680a:	4806      	ldr	r0, [pc, #24]	; (8006824 <rangeFinderWriteReg+0x48>)
 800680c:	f7fe fd5c 	bl	80052c8 <I2CSendBytes>
 8006810:	4603      	mov	r3, r0
 8006812:	2b01      	cmp	r3, #1
 8006814:	d001      	beq.n	800681a <rangeFinderWriteReg+0x3e>
 8006816:	2300      	movs	r3, #0
 8006818:	e000      	b.n	800681c <rangeFinderWriteReg+0x40>
 800681a:	2301      	movs	r3, #1
 800681c:	4618      	mov	r0, r3
 800681e:	3710      	adds	r7, #16
 8006820:	46bd      	mov	sp, r7
 8006822:	bd80      	pop	{r7, pc}
 8006824:	20014dd0 	.word	0x20014dd0

08006828 <rangeFinderReadReg>:
 8006828:	b580      	push	{r7, lr}
 800682a:	b084      	sub	sp, #16
 800682c:	af00      	add	r7, sp, #0
 800682e:	4603      	mov	r3, r0
 8006830:	6039      	str	r1, [r7, #0]
 8006832:	80fb      	strh	r3, [r7, #6]
 8006834:	4613      	mov	r3, r2
 8006836:	717b      	strb	r3, [r7, #5]
 8006838:	88fb      	ldrh	r3, [r7, #6]
 800683a:	0a1b      	lsrs	r3, r3, #8
 800683c:	b29b      	uxth	r3, r3
 800683e:	b2db      	uxtb	r3, r3
 8006840:	733b      	strb	r3, [r7, #12]
 8006842:	88fb      	ldrh	r3, [r7, #6]
 8006844:	b2db      	uxtb	r3, r3
 8006846:	737b      	strb	r3, [r7, #13]
 8006848:	797b      	ldrb	r3, [r7, #5]
 800684a:	f107 010c 	add.w	r1, r7, #12
 800684e:	2200      	movs	r2, #0
 8006850:	4811      	ldr	r0, [pc, #68]	; (8006898 <rangeFinderReadReg+0x70>)
 8006852:	f7fe fd39 	bl	80052c8 <I2CSendBytes>
 8006856:	4603      	mov	r3, r0
 8006858:	2b01      	cmp	r3, #1
 800685a:	d001      	beq.n	8006860 <rangeFinderReadReg+0x38>
 800685c:	2300      	movs	r3, #0
 800685e:	e017      	b.n	8006890 <rangeFinderReadReg+0x68>
 8006860:	797b      	ldrb	r3, [r7, #5]
 8006862:	f107 010c 	add.w	r1, r7, #12
 8006866:	2202      	movs	r2, #2
 8006868:	480b      	ldr	r0, [pc, #44]	; (8006898 <rangeFinderReadReg+0x70>)
 800686a:	f7fe fd2d 	bl	80052c8 <I2CSendBytes>
 800686e:	4603      	mov	r3, r0
 8006870:	2b01      	cmp	r3, #1
 8006872:	d001      	beq.n	8006878 <rangeFinderReadReg+0x50>
 8006874:	2300      	movs	r3, #0
 8006876:	e00b      	b.n	8006890 <rangeFinderReadReg+0x68>
 8006878:	797b      	ldrb	r3, [r7, #5]
 800687a:	2201      	movs	r2, #1
 800687c:	6839      	ldr	r1, [r7, #0]
 800687e:	4806      	ldr	r0, [pc, #24]	; (8006898 <rangeFinderReadReg+0x70>)
 8006880:	f7fe fd78 	bl	8005374 <I2CReadBytes>
 8006884:	4603      	mov	r3, r0
 8006886:	2b01      	cmp	r3, #1
 8006888:	d001      	beq.n	800688e <rangeFinderReadReg+0x66>
 800688a:	2300      	movs	r3, #0
 800688c:	e000      	b.n	8006890 <rangeFinderReadReg+0x68>
 800688e:	2301      	movs	r3, #1
 8006890:	4618      	mov	r0, r3
 8006892:	3710      	adds	r7, #16
 8006894:	46bd      	mov	sp, r7
 8006896:	bd80      	pop	{r7, pc}
 8006898:	20014dd0 	.word	0x20014dd0

0800689c <_malloc_r>:
 800689c:	b580      	push	{r7, lr}
 800689e:	b082      	sub	sp, #8
 80068a0:	af00      	add	r7, sp, #0
 80068a2:	6078      	str	r0, [r7, #4]
 80068a4:	6039      	str	r1, [r7, #0]
 80068a6:	6838      	ldr	r0, [r7, #0]
 80068a8:	f003 fdda 	bl	800a460 <pvPortMalloc>
 80068ac:	4603      	mov	r3, r0
 80068ae:	4618      	mov	r0, r3
 80068b0:	3708      	adds	r7, #8
 80068b2:	46bd      	mov	sp, r7
 80068b4:	bd80      	pop	{r7, pc}
 80068b6:	bf00      	nop

080068b8 <_free_r>:
 80068b8:	b580      	push	{r7, lr}
 80068ba:	b082      	sub	sp, #8
 80068bc:	af00      	add	r7, sp, #0
 80068be:	6078      	str	r0, [r7, #4]
 80068c0:	6039      	str	r1, [r7, #0]
 80068c2:	6838      	ldr	r0, [r7, #0]
 80068c4:	f003 fe92 	bl	800a5ec <vPortFree>
 80068c8:	bf00      	nop
 80068ca:	3708      	adds	r7, #8
 80068cc:	46bd      	mov	sp, r7
 80068ce:	bd80      	pop	{r7, pc}

080068d0 <NVIC_EnableIRQ>:
 80068d0:	b480      	push	{r7}
 80068d2:	b083      	sub	sp, #12
 80068d4:	af00      	add	r7, sp, #0
 80068d6:	4603      	mov	r3, r0
 80068d8:	71fb      	strb	r3, [r7, #7]
 80068da:	4909      	ldr	r1, [pc, #36]	; (8006900 <NVIC_EnableIRQ+0x30>)
 80068dc:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80068e0:	095b      	lsrs	r3, r3, #5
 80068e2:	79fa      	ldrb	r2, [r7, #7]
 80068e4:	f002 021f 	and.w	r2, r2, #31
 80068e8:	2001      	movs	r0, #1
 80068ea:	fa00 f202 	lsl.w	r2, r0, r2
 80068ee:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80068f2:	bf00      	nop
 80068f4:	370c      	adds	r7, #12
 80068f6:	46bd      	mov	sp, r7
 80068f8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80068fc:	4770      	bx	lr
 80068fe:	bf00      	nop
 8006900:	e000e100 	.word	0xe000e100

08006904 <NVIC_DisableIRQ>:
 8006904:	b480      	push	{r7}
 8006906:	b083      	sub	sp, #12
 8006908:	af00      	add	r7, sp, #0
 800690a:	4603      	mov	r3, r0
 800690c:	71fb      	strb	r3, [r7, #7]
 800690e:	4909      	ldr	r1, [pc, #36]	; (8006934 <NVIC_DisableIRQ+0x30>)
 8006910:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8006914:	095b      	lsrs	r3, r3, #5
 8006916:	79fa      	ldrb	r2, [r7, #7]
 8006918:	f002 021f 	and.w	r2, r2, #31
 800691c:	2001      	movs	r0, #1
 800691e:	fa00 f202 	lsl.w	r2, r0, r2
 8006922:	3320      	adds	r3, #32
 8006924:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8006928:	bf00      	nop
 800692a:	370c      	adds	r7, #12
 800692c:	46bd      	mov	sp, r7
 800692e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8006932:	4770      	bx	lr
 8006934:	e000e100 	.word	0xe000e100

08006938 <TIM6_DAC_IRQHandler>:
 8006938:	b580      	push	{r7, lr}
 800693a:	af00      	add	r7, sp, #0
 800693c:	4b1a      	ldr	r3, [pc, #104]	; (80069a8 <TIM6_DAC_IRQHandler+0x70>)
 800693e:	691b      	ldr	r3, [r3, #16]
 8006940:	f003 0301 	and.w	r3, r3, #1
 8006944:	2b00      	cmp	r3, #0
 8006946:	d02c      	beq.n	80069a2 <TIM6_DAC_IRQHandler+0x6a>
 8006948:	2101      	movs	r1, #1
 800694a:	4817      	ldr	r0, [pc, #92]	; (80069a8 <TIM6_DAC_IRQHandler+0x70>)
 800694c:	f7fe ff1e 	bl	800578c <timClearStatusRegisterFlag>
 8006950:	2032      	movs	r0, #50	; 0x32
 8006952:	f7ff ffd7 	bl	8006904 <NVIC_DisableIRQ>
 8006956:	202d      	movs	r0, #45	; 0x2d
 8006958:	f7ff ffd4 	bl	8006904 <NVIC_DisableIRQ>
 800695c:	f7ff f814 	bl	8005988 <readEnc>
 8006960:	f7fe ff98 	bl	8005894 <calcGlobSpeedAndCoord>
 8006964:	f7ff fbec 	bl	8006140 <updateRobotStatus>
 8006968:	4b10      	ldr	r3, [pc, #64]	; (80069ac <TIM6_DAC_IRQHandler+0x74>)
 800696a:	789b      	ldrb	r3, [r3, #2]
 800696c:	2b00      	cmp	r3, #0
 800696e:	d003      	beq.n	8006978 <TIM6_DAC_IRQHandler+0x40>
 8006970:	f7ff fadc 	bl	8005f2c <checkIfPositionIsReached>
 8006974:	f7ff f9fc 	bl	8005d70 <speedRecalculation>
 8006978:	4b0c      	ldr	r3, [pc, #48]	; (80069ac <TIM6_DAC_IRQHandler+0x74>)
 800697a:	791b      	ldrb	r3, [r3, #4]
 800697c:	2b00      	cmp	r3, #0
 800697e:	d001      	beq.n	8006984 <TIM6_DAC_IRQHandler+0x4c>
 8006980:	f000 fcf6 	bl	8007370 <checkCollisionAvoidance>
 8006984:	4b09      	ldr	r3, [pc, #36]	; (80069ac <TIM6_DAC_IRQHandler+0x74>)
 8006986:	785b      	ldrb	r3, [r3, #1]
 8006988:	2b00      	cmp	r3, #0
 800698a:	d003      	beq.n	8006994 <TIM6_DAC_IRQHandler+0x5c>
 800698c:	f7ff f8e2 	bl	8005b54 <calcForwardKin>
 8006990:	f7ff f9ce 	bl	8005d30 <setMotorSpeeds>
 8006994:	2032      	movs	r0, #50	; 0x32
 8006996:	f7ff ff9b 	bl	80068d0 <NVIC_EnableIRQ>
 800699a:	202d      	movs	r0, #45	; 0x2d
 800699c:	f7ff ff98 	bl	80068d0 <NVIC_EnableIRQ>
 80069a0:	bf00      	nop
 80069a2:	bf00      	nop
 80069a4:	bd80      	pop	{r7, pc}
 80069a6:	bf00      	nop
 80069a8:	40001000 	.word	0x40001000
 80069ac:	20014df8 	.word	0x20014df8

080069b0 <I2C2_ER_IRQHandler>:
 80069b0:	b480      	push	{r7}
 80069b2:	af00      	add	r7, sp, #0
 80069b4:	4b1a      	ldr	r3, [pc, #104]	; (8006a20 <I2C2_ER_IRQHandler+0x70>)
 80069b6:	695b      	ldr	r3, [r3, #20]
 80069b8:	f403 7300 	and.w	r3, r3, #512	; 0x200
 80069bc:	2b00      	cmp	r3, #0
 80069be:	d009      	beq.n	80069d4 <I2C2_ER_IRQHandler+0x24>
 80069c0:	4a17      	ldr	r2, [pc, #92]	; (8006a20 <I2C2_ER_IRQHandler+0x70>)
 80069c2:	4b17      	ldr	r3, [pc, #92]	; (8006a20 <I2C2_ER_IRQHandler+0x70>)
 80069c4:	695b      	ldr	r3, [r3, #20]
 80069c6:	f423 7300 	bic.w	r3, r3, #512	; 0x200
 80069ca:	6153      	str	r3, [r2, #20]
 80069cc:	4b15      	ldr	r3, [pc, #84]	; (8006a24 <I2C2_ER_IRQHandler+0x74>)
 80069ce:	2203      	movs	r2, #3
 80069d0:	711a      	strb	r2, [r3, #4]
 80069d2:	e020      	b.n	8006a16 <I2C2_ER_IRQHandler+0x66>
 80069d4:	4b12      	ldr	r3, [pc, #72]	; (8006a20 <I2C2_ER_IRQHandler+0x70>)
 80069d6:	695b      	ldr	r3, [r3, #20]
 80069d8:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 80069dc:	2b00      	cmp	r3, #0
 80069de:	d009      	beq.n	80069f4 <I2C2_ER_IRQHandler+0x44>
 80069e0:	4a0f      	ldr	r2, [pc, #60]	; (8006a20 <I2C2_ER_IRQHandler+0x70>)
 80069e2:	4b0f      	ldr	r3, [pc, #60]	; (8006a20 <I2C2_ER_IRQHandler+0x70>)
 80069e4:	695b      	ldr	r3, [r3, #20]
 80069e6:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
 80069ea:	6153      	str	r3, [r2, #20]
 80069ec:	4b0d      	ldr	r3, [pc, #52]	; (8006a24 <I2C2_ER_IRQHandler+0x74>)
 80069ee:	2201      	movs	r2, #1
 80069f0:	711a      	strb	r2, [r3, #4]
 80069f2:	e010      	b.n	8006a16 <I2C2_ER_IRQHandler+0x66>
 80069f4:	4b0a      	ldr	r3, [pc, #40]	; (8006a20 <I2C2_ER_IRQHandler+0x70>)
 80069f6:	695b      	ldr	r3, [r3, #20]
 80069f8:	f403 7380 	and.w	r3, r3, #256	; 0x100
 80069fc:	2b00      	cmp	r3, #0
 80069fe:	d009      	beq.n	8006a14 <I2C2_ER_IRQHandler+0x64>
 8006a00:	4a07      	ldr	r2, [pc, #28]	; (8006a20 <I2C2_ER_IRQHandler+0x70>)
 8006a02:	4b07      	ldr	r3, [pc, #28]	; (8006a20 <I2C2_ER_IRQHandler+0x70>)
 8006a04:	695b      	ldr	r3, [r3, #20]
 8006a06:	f423 7380 	bic.w	r3, r3, #256	; 0x100
 8006a0a:	6153      	str	r3, [r2, #20]
 8006a0c:	4b05      	ldr	r3, [pc, #20]	; (8006a24 <I2C2_ER_IRQHandler+0x74>)
 8006a0e:	2204      	movs	r2, #4
 8006a10:	711a      	strb	r2, [r3, #4]
 8006a12:	e000      	b.n	8006a16 <I2C2_ER_IRQHandler+0x66>
 8006a14:	bf00      	nop
 8006a16:	46bd      	mov	sp, r7
 8006a18:	f85d 7b04 	ldr.w	r7, [sp], #4
 8006a1c:	4770      	bx	lr
 8006a1e:	bf00      	nop
 8006a20:	40005800 	.word	0x40005800
 8006a24:	20014dd0 	.word	0x20014dd0

08006a28 <TIM7_IRQHandler>:
 8006a28:	b580      	push	{r7, lr}
 8006a2a:	af00      	add	r7, sp, #0
 8006a2c:	4b08      	ldr	r3, [pc, #32]	; (8006a50 <TIM7_IRQHandler+0x28>)
 8006a2e:	691b      	ldr	r3, [r3, #16]
 8006a30:	f003 0301 	and.w	r3, r3, #1
 8006a34:	2b00      	cmp	r3, #0
 8006a36:	d009      	beq.n	8006a4c <TIM7_IRQHandler+0x24>
 8006a38:	2101      	movs	r1, #1
 8006a3a:	4805      	ldr	r0, [pc, #20]	; (8006a50 <TIM7_IRQHandler+0x28>)
 8006a3c:	f7fe fea6 	bl	800578c <timClearStatusRegisterFlag>
 8006a40:	4b04      	ldr	r3, [pc, #16]	; (8006a54 <TIM7_IRQHandler+0x2c>)
 8006a42:	681b      	ldr	r3, [r3, #0]
 8006a44:	3301      	adds	r3, #1
 8006a46:	4a03      	ldr	r2, [pc, #12]	; (8006a54 <TIM7_IRQHandler+0x2c>)
 8006a48:	6013      	str	r3, [r2, #0]
 8006a4a:	bf00      	nop
 8006a4c:	bf00      	nop
 8006a4e:	bd80      	pop	{r7, pc}
 8006a50:	40001400 	.word	0x40001400
 8006a54:	2000027c 	.word	0x2000027c

08006a58 <TIM8_TRG_COM_TIM14_IRQHandler>:
 8006a58:	b580      	push	{r7, lr}
 8006a5a:	b082      	sub	sp, #8
 8006a5c:	af00      	add	r7, sp, #0
 8006a5e:	4b12      	ldr	r3, [pc, #72]	; (8006aa8 <TIM8_TRG_COM_TIM14_IRQHandler+0x50>)
 8006a60:	691b      	ldr	r3, [r3, #16]
 8006a62:	f003 0301 	and.w	r3, r3, #1
 8006a66:	2b00      	cmp	r3, #0
 8006a68:	d01a      	beq.n	8006aa0 <TIM8_TRG_COM_TIM14_IRQHandler+0x48>
 8006a6a:	f000 f81f 	bl	8006aac <getLocalTime>
 8006a6e:	6078      	str	r0, [r7, #4]
 8006a70:	2101      	movs	r1, #1
 8006a72:	480d      	ldr	r0, [pc, #52]	; (8006aa8 <TIM8_TRG_COM_TIM14_IRQHandler+0x50>)
 8006a74:	f7fe fe8a 	bl	800578c <timClearStatusRegisterFlag>
 8006a78:	f000 f818 	bl	8006aac <getLocalTime>
 8006a7c:	4602      	mov	r2, r0
 8006a7e:	f644 6320 	movw	r3, #20000	; 0x4e20
 8006a82:	429a      	cmp	r2, r3
 8006a84:	d908      	bls.n	8006a98 <TIM8_TRG_COM_TIM14_IRQHandler+0x40>
 8006a86:	f000 f811 	bl	8006aac <getLocalTime>
 8006a8a:	6038      	str	r0, [r7, #0]
 8006a8c:	f000 fb06 	bl	800709c <readRangesGlobally>
 8006a90:	f000 fd50 	bl	8007534 <postprocessDataForCalibration>
 8006a94:	f000 fba8 	bl	80071e8 <checkRangeFindersReinitFlags>
 8006a98:	4803      	ldr	r0, [pc, #12]	; (8006aa8 <TIM8_TRG_COM_TIM14_IRQHandler+0x50>)
 8006a9a:	f7fe fe51 	bl	8005740 <timEnable>
 8006a9e:	bf00      	nop
 8006aa0:	bf00      	nop
 8006aa2:	3708      	adds	r7, #8
 8006aa4:	46bd      	mov	sp, r7
 8006aa6:	bd80      	pop	{r7, pc}
 8006aa8:	40002000 	.word	0x40002000

08006aac <getLocalTime>:
 8006aac:	b480      	push	{r7}
 8006aae:	af00      	add	r7, sp, #0
 8006ab0:	4b03      	ldr	r3, [pc, #12]	; (8006ac0 <getLocalTime+0x14>)
 8006ab2:	681b      	ldr	r3, [r3, #0]
 8006ab4:	4618      	mov	r0, r3
 8006ab6:	46bd      	mov	sp, r7
 8006ab8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8006abc:	4770      	bx	lr
 8006abe:	bf00      	nop
 8006ac0:	2000027c 	.word	0x2000027c

08006ac4 <getTimeDifference>:
 8006ac4:	b580      	push	{r7, lr}
 8006ac6:	b084      	sub	sp, #16
 8006ac8:	af00      	add	r7, sp, #0
 8006aca:	6078      	str	r0, [r7, #4]
 8006acc:	2037      	movs	r0, #55	; 0x37
 8006ace:	f7ff ff19 	bl	8006904 <NVIC_DisableIRQ>
 8006ad2:	4b0d      	ldr	r3, [pc, #52]	; (8006b08 <getTimeDifference+0x44>)
 8006ad4:	681a      	ldr	r2, [r3, #0]
 8006ad6:	687b      	ldr	r3, [r7, #4]
 8006ad8:	429a      	cmp	r2, r3
 8006ada:	d305      	bcc.n	8006ae8 <getTimeDifference+0x24>
 8006adc:	4b0a      	ldr	r3, [pc, #40]	; (8006b08 <getTimeDifference+0x44>)
 8006ade:	681a      	ldr	r2, [r3, #0]
 8006ae0:	687b      	ldr	r3, [r7, #4]
 8006ae2:	1ad3      	subs	r3, r2, r3
 8006ae4:	60fb      	str	r3, [r7, #12]
 8006ae6:	e007      	b.n	8006af8 <getTimeDifference+0x34>
 8006ae8:	4b07      	ldr	r3, [pc, #28]	; (8006b08 <getTimeDifference+0x44>)
 8006aea:	681a      	ldr	r2, [r3, #0]
 8006aec:	687b      	ldr	r3, [r7, #4]
 8006aee:	1ad3      	subs	r3, r2, r3
 8006af0:	f503 437f 	add.w	r3, r3, #65280	; 0xff00
 8006af4:	33ff      	adds	r3, #255	; 0xff
 8006af6:	60fb      	str	r3, [r7, #12]
 8006af8:	2037      	movs	r0, #55	; 0x37
 8006afa:	f7ff fee9 	bl	80068d0 <NVIC_EnableIRQ>
 8006afe:	68fb      	ldr	r3, [r7, #12]
 8006b00:	4618      	mov	r0, r3
 8006b02:	3710      	adds	r7, #16
 8006b04:	46bd      	mov	sp, r7
 8006b06:	bd80      	pop	{r7, pc}
 8006b08:	2000027c 	.word	0x2000027c

08006b0c <checkTimeout>:
 8006b0c:	b580      	push	{r7, lr}
 8006b0e:	b084      	sub	sp, #16
 8006b10:	af00      	add	r7, sp, #0
 8006b12:	6078      	str	r0, [r7, #4]
 8006b14:	6039      	str	r1, [r7, #0]
 8006b16:	6878      	ldr	r0, [r7, #4]
 8006b18:	f7ff ffd4 	bl	8006ac4 <getTimeDifference>
 8006b1c:	60f8      	str	r0, [r7, #12]
 8006b1e:	68fa      	ldr	r2, [r7, #12]
 8006b20:	683b      	ldr	r3, [r7, #0]
 8006b22:	429a      	cmp	r2, r3
 8006b24:	d301      	bcc.n	8006b2a <checkTimeout+0x1e>
 8006b26:	2301      	movs	r3, #1
 8006b28:	e000      	b.n	8006b2c <checkTimeout+0x20>
 8006b2a:	2300      	movs	r3, #0
 8006b2c:	4618      	mov	r0, r3
 8006b2e:	3710      	adds	r7, #16
 8006b30:	46bd      	mov	sp, r7
 8006b32:	bd80      	pop	{r7, pc}

08006b34 <delayInTenthOfMs>:
 8006b34:	b580      	push	{r7, lr}
 8006b36:	b084      	sub	sp, #16
 8006b38:	af00      	add	r7, sp, #0
 8006b3a:	4603      	mov	r3, r0
 8006b3c:	80fb      	strh	r3, [r7, #6]
 8006b3e:	f7ff ffb5 	bl	8006aac <getLocalTime>
 8006b42:	60f8      	str	r0, [r7, #12]
 8006b44:	bf00      	nop
 8006b46:	88fb      	ldrh	r3, [r7, #6]
 8006b48:	4619      	mov	r1, r3
 8006b4a:	68f8      	ldr	r0, [r7, #12]
 8006b4c:	f7ff ffde 	bl	8006b0c <checkTimeout>
 8006b50:	4603      	mov	r3, r0
 8006b52:	2b00      	cmp	r3, #0
 8006b54:	d0f7      	beq.n	8006b46 <delayInTenthOfMs+0x12>
 8006b56:	bf00      	nop
 8006b58:	3710      	adds	r7, #16
 8006b5a:	46bd      	mov	sp, r7
 8006b5c:	bd80      	pop	{r7, pc}
 8006b5e:	bf00      	nop

08006b60 <vApplicationMallocFailedHook>:
 8006b60:	b480      	push	{r7}
 8006b62:	af00      	add	r7, sp, #0
 8006b64:	bf00      	nop
 8006b66:	46bd      	mov	sp, r7
 8006b68:	f85d 7b04 	ldr.w	r7, [sp], #4
 8006b6c:	4770      	bx	lr
 8006b6e:	bf00      	nop

08006b70 <vApplicationIdleHook>:
 8006b70:	b480      	push	{r7}
 8006b72:	af00      	add	r7, sp, #0
 8006b74:	bf00      	nop
 8006b76:	46bd      	mov	sp, r7
 8006b78:	f85d 7b04 	ldr.w	r7, [sp], #4
 8006b7c:	4770      	bx	lr
 8006b7e:	bf00      	nop

08006b80 <vApplicationTickHook>:
 8006b80:	b480      	push	{r7}
 8006b82:	af00      	add	r7, sp, #0
 8006b84:	bf00      	nop
 8006b86:	46bd      	mov	sp, r7
 8006b88:	f85d 7b04 	ldr.w	r7, [sp], #4
 8006b8c:	4770      	bx	lr
 8006b8e:	bf00      	nop

08006b90 <vApplicationStackOverflowHook>:
 8006b90:	b480      	push	{r7}
 8006b92:	b085      	sub	sp, #20
 8006b94:	af00      	add	r7, sp, #0
 8006b96:	6078      	str	r0, [r7, #4]
 8006b98:	6039      	str	r1, [r7, #0]
 8006b9a:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006b9e:	f383 8811 	msr	BASEPRI, r3
 8006ba2:	f3bf 8f6f 	isb	sy
 8006ba6:	f3bf 8f4f 	dsb	sy
 8006baa:	60fb      	str	r3, [r7, #12]
 8006bac:	e7fe      	b.n	8006bac <vApplicationStackOverflowHook+0x1c>
 8006bae:	bf00      	nop

08006bb0 <vApplicationGetIdleTaskMemory>:
 8006bb0:	b480      	push	{r7}
 8006bb2:	b085      	sub	sp, #20
 8006bb4:	af00      	add	r7, sp, #0
 8006bb6:	60f8      	str	r0, [r7, #12]
 8006bb8:	60b9      	str	r1, [r7, #8]
 8006bba:	607a      	str	r2, [r7, #4]
 8006bbc:	68fb      	ldr	r3, [r7, #12]
 8006bbe:	4a07      	ldr	r2, [pc, #28]	; (8006bdc <vApplicationGetIdleTaskMemory+0x2c>)
 8006bc0:	601a      	str	r2, [r3, #0]
 8006bc2:	68bb      	ldr	r3, [r7, #8]
 8006bc4:	4a06      	ldr	r2, [pc, #24]	; (8006be0 <vApplicationGetIdleTaskMemory+0x30>)
 8006bc6:	601a      	str	r2, [r3, #0]
 8006bc8:	687b      	ldr	r3, [r7, #4]
 8006bca:	2282      	movs	r2, #130	; 0x82
 8006bcc:	601a      	str	r2, [r3, #0]
 8006bce:	bf00      	nop
 8006bd0:	3714      	adds	r7, #20
 8006bd2:	46bd      	mov	sp, r7
 8006bd4:	f85d 7b04 	ldr.w	r7, [sp], #4
 8006bd8:	4770      	bx	lr
 8006bda:	bf00      	nop
 8006bdc:	20014ed0 	.word	0x20014ed0
 8006be0:	20015350 	.word	0x20015350

08006be4 <vApplicationGetTimerTaskMemory>:
 8006be4:	b480      	push	{r7}
 8006be6:	b085      	sub	sp, #20
 8006be8:	af00      	add	r7, sp, #0
 8006bea:	60f8      	str	r0, [r7, #12]
 8006bec:	60b9      	str	r1, [r7, #8]
 8006bee:	607a      	str	r2, [r7, #4]
 8006bf0:	68fb      	ldr	r3, [r7, #12]
 8006bf2:	4a07      	ldr	r2, [pc, #28]	; (8006c10 <vApplicationGetTimerTaskMemory+0x2c>)
 8006bf4:	601a      	str	r2, [r3, #0]
 8006bf6:	68bb      	ldr	r3, [r7, #8]
 8006bf8:	4a06      	ldr	r2, [pc, #24]	; (8006c14 <vApplicationGetTimerTaskMemory+0x30>)
 8006bfa:	601a      	str	r2, [r3, #0]
 8006bfc:	687b      	ldr	r3, [r7, #4]
 8006bfe:	f44f 7282 	mov.w	r2, #260	; 0x104
 8006c02:	601a      	str	r2, [r3, #0]
 8006c04:	bf00      	nop
 8006c06:	3714      	adds	r7, #20
 8006c08:	46bd      	mov	sp, r7
 8006c0a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8006c0e:	4770      	bx	lr
 8006c10:	20000280 	.word	0x20000280
 8006c14:	20000700 	.word	0x20000700

08006c18 <sendServoCommand>:
 8006c18:	b580      	push	{r7, lr}
 8006c1a:	b084      	sub	sp, #16
 8006c1c:	af00      	add	r7, sp, #0
 8006c1e:	603b      	str	r3, [r7, #0]
 8006c20:	4603      	mov	r3, r0
 8006c22:	71fb      	strb	r3, [r7, #7]
 8006c24:	460b      	mov	r3, r1
 8006c26:	71bb      	strb	r3, [r7, #6]
 8006c28:	4613      	mov	r3, r2
 8006c2a:	717b      	strb	r3, [r7, #5]
 8006c2c:	20ff      	movs	r0, #255	; 0xff
 8006c2e:	f000 f981 	bl	8006f34 <sendServoByte>
 8006c32:	20ff      	movs	r0, #255	; 0xff
 8006c34:	f000 f97e 	bl	8006f34 <sendServoByte>
 8006c38:	79fb      	ldrb	r3, [r7, #7]
 8006c3a:	4618      	mov	r0, r3
 8006c3c:	f000 f97a 	bl	8006f34 <sendServoByte>
 8006c40:	79fb      	ldrb	r3, [r7, #7]
 8006c42:	73fb      	strb	r3, [r7, #15]
 8006c44:	797b      	ldrb	r3, [r7, #5]
 8006c46:	3302      	adds	r3, #2
 8006c48:	b2db      	uxtb	r3, r3
 8006c4a:	4618      	mov	r0, r3
 8006c4c:	f000 f972 	bl	8006f34 <sendServoByte>
 8006c50:	79bb      	ldrb	r3, [r7, #6]
 8006c52:	4618      	mov	r0, r3
 8006c54:	f000 f96e 	bl	8006f34 <sendServoByte>
 8006c58:	797a      	ldrb	r2, [r7, #5]
 8006c5a:	79bb      	ldrb	r3, [r7, #6]
 8006c5c:	4413      	add	r3, r2
 8006c5e:	b2da      	uxtb	r2, r3
 8006c60:	7bfb      	ldrb	r3, [r7, #15]
 8006c62:	4413      	add	r3, r2
 8006c64:	b2db      	uxtb	r3, r3
 8006c66:	3302      	adds	r3, #2
 8006c68:	73fb      	strb	r3, [r7, #15]
 8006c6a:	2300      	movs	r3, #0
 8006c6c:	73bb      	strb	r3, [r7, #14]
 8006c6e:	e010      	b.n	8006c92 <sendServoCommand+0x7a>
 8006c70:	7bbb      	ldrb	r3, [r7, #14]
 8006c72:	683a      	ldr	r2, [r7, #0]
 8006c74:	4413      	add	r3, r2
 8006c76:	781b      	ldrb	r3, [r3, #0]
 8006c78:	4618      	mov	r0, r3
 8006c7a:	f000 f95b 	bl	8006f34 <sendServoByte>
 8006c7e:	7bbb      	ldrb	r3, [r7, #14]
 8006c80:	683a      	ldr	r2, [r7, #0]
 8006c82:	4413      	add	r3, r2
 8006c84:	781a      	ldrb	r2, [r3, #0]
 8006c86:	7bfb      	ldrb	r3, [r7, #15]
 8006c88:	4413      	add	r3, r2
 8006c8a:	73fb      	strb	r3, [r7, #15]
 8006c8c:	7bbb      	ldrb	r3, [r7, #14]
 8006c8e:	3301      	adds	r3, #1
 8006c90:	73bb      	strb	r3, [r7, #14]
 8006c92:	7bba      	ldrb	r2, [r7, #14]
 8006c94:	797b      	ldrb	r3, [r7, #5]
 8006c96:	429a      	cmp	r2, r3
 8006c98:	d3ea      	bcc.n	8006c70 <sendServoCommand+0x58>
 8006c9a:	7bfb      	ldrb	r3, [r7, #15]
 8006c9c:	43db      	mvns	r3, r3
 8006c9e:	b2db      	uxtb	r3, r3
 8006ca0:	4618      	mov	r0, r3
 8006ca2:	f000 f947 	bl	8006f34 <sendServoByte>
 8006ca6:	bf00      	nop
 8006ca8:	3710      	adds	r7, #16
 8006caa:	46bd      	mov	sp, r7
 8006cac:	bd80      	pop	{r7, pc}
 8006cae:	bf00      	nop

08006cb0 <getServoResponse>:
 8006cb0:	b590      	push	{r4, r7, lr}
 8006cb2:	b083      	sub	sp, #12
 8006cb4:	af00      	add	r7, sp, #0
 8006cb6:	2300      	movs	r3, #0
 8006cb8:	80fb      	strh	r3, [r7, #6]
 8006cba:	f000 f957 	bl	8006f6c <clearServoReceiveBuffer>
 8006cbe:	e009      	b.n	8006cd4 <getServoResponse+0x24>
 8006cc0:	88fb      	ldrh	r3, [r7, #6]
 8006cc2:	3301      	adds	r3, #1
 8006cc4:	80fb      	strh	r3, [r7, #6]
 8006cc6:	88fb      	ldrh	r3, [r7, #6]
 8006cc8:	f644 6220 	movw	r2, #20000	; 0x4e20
 8006ccc:	4293      	cmp	r3, r2
 8006cce:	d901      	bls.n	8006cd4 <getServoResponse+0x24>
 8006cd0:	2300      	movs	r3, #0
 8006cd2:	e076      	b.n	8006dc2 <getServoResponse+0x112>
 8006cd4:	f000 f95a 	bl	8006f8c <getServoBytesAvailable>
 8006cd8:	4603      	mov	r3, r0
 8006cda:	2b03      	cmp	r3, #3
 8006cdc:	d9f0      	bls.n	8006cc0 <getServoResponse+0x10>
 8006cde:	2300      	movs	r3, #0
 8006ce0:	80fb      	strh	r3, [r7, #6]
 8006ce2:	f000 f973 	bl	8006fcc <getServoByte>
 8006ce6:	f000 f971 	bl	8006fcc <getServoByte>
 8006cea:	f000 f96f 	bl	8006fcc <getServoByte>
 8006cee:	4603      	mov	r3, r0
 8006cf0:	461a      	mov	r2, r3
 8006cf2:	4b36      	ldr	r3, [pc, #216]	; (8006dcc <getServoResponse+0x11c>)
 8006cf4:	701a      	strb	r2, [r3, #0]
 8006cf6:	f000 f969 	bl	8006fcc <getServoByte>
 8006cfa:	4603      	mov	r3, r0
 8006cfc:	461a      	mov	r2, r3
 8006cfe:	4b33      	ldr	r3, [pc, #204]	; (8006dcc <getServoResponse+0x11c>)
 8006d00:	705a      	strb	r2, [r3, #1]
 8006d02:	4b32      	ldr	r3, [pc, #200]	; (8006dcc <getServoResponse+0x11c>)
 8006d04:	785b      	ldrb	r3, [r3, #1]
 8006d06:	2b1b      	cmp	r3, #27
 8006d08:	d90b      	bls.n	8006d22 <getServoResponse+0x72>
 8006d0a:	2300      	movs	r3, #0
 8006d0c:	e059      	b.n	8006dc2 <getServoResponse+0x112>
 8006d0e:	88fb      	ldrh	r3, [r7, #6]
 8006d10:	3301      	adds	r3, #1
 8006d12:	80fb      	strh	r3, [r7, #6]
 8006d14:	88fb      	ldrh	r3, [r7, #6]
 8006d16:	f644 6220 	movw	r2, #20000	; 0x4e20
 8006d1a:	4293      	cmp	r3, r2
 8006d1c:	d901      	bls.n	8006d22 <getServoResponse+0x72>
 8006d1e:	2300      	movs	r3, #0
 8006d20:	e04f      	b.n	8006dc2 <getServoResponse+0x112>
 8006d22:	f000 f933 	bl	8006f8c <getServoBytesAvailable>
 8006d26:	4602      	mov	r2, r0
 8006d28:	4b28      	ldr	r3, [pc, #160]	; (8006dcc <getServoResponse+0x11c>)
 8006d2a:	785b      	ldrb	r3, [r3, #1]
 8006d2c:	429a      	cmp	r2, r3
 8006d2e:	d3ee      	bcc.n	8006d0e <getServoResponse+0x5e>
 8006d30:	f000 f94c 	bl	8006fcc <getServoByte>
 8006d34:	4603      	mov	r3, r0
 8006d36:	461a      	mov	r2, r3
 8006d38:	4b24      	ldr	r3, [pc, #144]	; (8006dcc <getServoResponse+0x11c>)
 8006d3a:	709a      	strb	r2, [r3, #2]
 8006d3c:	4b23      	ldr	r3, [pc, #140]	; (8006dcc <getServoResponse+0x11c>)
 8006d3e:	789a      	ldrb	r2, [r3, #2]
 8006d40:	4b23      	ldr	r3, [pc, #140]	; (8006dd0 <getServoResponse+0x120>)
 8006d42:	701a      	strb	r2, [r3, #0]
 8006d44:	2300      	movs	r3, #0
 8006d46:	717b      	strb	r3, [r7, #5]
 8006d48:	e00a      	b.n	8006d60 <getServoResponse+0xb0>
 8006d4a:	797c      	ldrb	r4, [r7, #5]
 8006d4c:	f000 f93e 	bl	8006fcc <getServoByte>
 8006d50:	4603      	mov	r3, r0
 8006d52:	461a      	mov	r2, r3
 8006d54:	4b1d      	ldr	r3, [pc, #116]	; (8006dcc <getServoResponse+0x11c>)
 8006d56:	4423      	add	r3, r4
 8006d58:	70da      	strb	r2, [r3, #3]
 8006d5a:	797b      	ldrb	r3, [r7, #5]
 8006d5c:	3301      	adds	r3, #1
 8006d5e:	717b      	strb	r3, [r7, #5]
 8006d60:	797a      	ldrb	r2, [r7, #5]
 8006d62:	4b1a      	ldr	r3, [pc, #104]	; (8006dcc <getServoResponse+0x11c>)
 8006d64:	785b      	ldrb	r3, [r3, #1]
 8006d66:	3b02      	subs	r3, #2
 8006d68:	429a      	cmp	r2, r3
 8006d6a:	dbee      	blt.n	8006d4a <getServoResponse+0x9a>
 8006d6c:	4b17      	ldr	r3, [pc, #92]	; (8006dcc <getServoResponse+0x11c>)
 8006d6e:	781a      	ldrb	r2, [r3, #0]
 8006d70:	4b16      	ldr	r3, [pc, #88]	; (8006dcc <getServoResponse+0x11c>)
 8006d72:	785b      	ldrb	r3, [r3, #1]
 8006d74:	4413      	add	r3, r2
 8006d76:	b2da      	uxtb	r2, r3
 8006d78:	4b14      	ldr	r3, [pc, #80]	; (8006dcc <getServoResponse+0x11c>)
 8006d7a:	789b      	ldrb	r3, [r3, #2]
 8006d7c:	4413      	add	r3, r2
 8006d7e:	713b      	strb	r3, [r7, #4]
 8006d80:	2300      	movs	r3, #0
 8006d82:	717b      	strb	r3, [r7, #5]
 8006d84:	e009      	b.n	8006d9a <getServoResponse+0xea>
 8006d86:	797b      	ldrb	r3, [r7, #5]
 8006d88:	4a10      	ldr	r2, [pc, #64]	; (8006dcc <getServoResponse+0x11c>)
 8006d8a:	4413      	add	r3, r2
 8006d8c:	78da      	ldrb	r2, [r3, #3]
 8006d8e:	793b      	ldrb	r3, [r7, #4]
 8006d90:	4413      	add	r3, r2
 8006d92:	713b      	strb	r3, [r7, #4]
 8006d94:	797b      	ldrb	r3, [r7, #5]
 8006d96:	3301      	adds	r3, #1
 8006d98:	717b      	strb	r3, [r7, #5]
 8006d9a:	797a      	ldrb	r2, [r7, #5]
 8006d9c:	4b0b      	ldr	r3, [pc, #44]	; (8006dcc <getServoResponse+0x11c>)
 8006d9e:	785b      	ldrb	r3, [r3, #1]
 8006da0:	3b02      	subs	r3, #2
 8006da2:	429a      	cmp	r2, r3
 8006da4:	dbef      	blt.n	8006d86 <getServoResponse+0xd6>
 8006da6:	793b      	ldrb	r3, [r7, #4]
 8006da8:	43db      	mvns	r3, r3
 8006daa:	713b      	strb	r3, [r7, #4]
 8006dac:	f000 f90e 	bl	8006fcc <getServoByte>
 8006db0:	4603      	mov	r3, r0
 8006db2:	70fb      	strb	r3, [r7, #3]
 8006db4:	793a      	ldrb	r2, [r7, #4]
 8006db6:	78fb      	ldrb	r3, [r7, #3]
 8006db8:	429a      	cmp	r2, r3
 8006dba:	d001      	beq.n	8006dc0 <getServoResponse+0x110>
 8006dbc:	2300      	movs	r3, #0
 8006dbe:	e000      	b.n	8006dc2 <getServoResponse+0x112>
 8006dc0:	2301      	movs	r3, #1
 8006dc2:	4618      	mov	r0, r3
 8006dc4:	370c      	adds	r7, #12
 8006dc6:	46bd      	mov	sp, r7
 8006dc8:	bd90      	pop	{r4, r7, pc}
 8006dca:	bf00      	nop
 8006dcc:	20015558 	.word	0x20015558
 8006dd0:	20000b10 	.word	0x20000b10

08006dd4 <getAndCheckResponse>:
 8006dd4:	b580      	push	{r7, lr}
 8006dd6:	b082      	sub	sp, #8
 8006dd8:	af00      	add	r7, sp, #0
 8006dda:	4603      	mov	r3, r0
 8006ddc:	71fb      	strb	r3, [r7, #7]
 8006dde:	f7ff ff67 	bl	8006cb0 <getServoResponse>
 8006de2:	4603      	mov	r3, r0
 8006de4:	f083 0301 	eor.w	r3, r3, #1
 8006de8:	b2db      	uxtb	r3, r3
 8006dea:	2b00      	cmp	r3, #0
 8006dec:	d001      	beq.n	8006df2 <getAndCheckResponse+0x1e>
 8006dee:	2300      	movs	r3, #0
 8006df0:	e00d      	b.n	8006e0e <getAndCheckResponse+0x3a>
 8006df2:	4b09      	ldr	r3, [pc, #36]	; (8006e18 <getAndCheckResponse+0x44>)
 8006df4:	781b      	ldrb	r3, [r3, #0]
 8006df6:	79fa      	ldrb	r2, [r7, #7]
 8006df8:	429a      	cmp	r2, r3
 8006dfa:	d001      	beq.n	8006e00 <getAndCheckResponse+0x2c>
 8006dfc:	2300      	movs	r3, #0
 8006dfe:	e006      	b.n	8006e0e <getAndCheckResponse+0x3a>
 8006e00:	4b05      	ldr	r3, [pc, #20]	; (8006e18 <getAndCheckResponse+0x44>)
 8006e02:	789b      	ldrb	r3, [r3, #2]
 8006e04:	2b00      	cmp	r3, #0
 8006e06:	d001      	beq.n	8006e0c <getAndCheckResponse+0x38>
 8006e08:	2300      	movs	r3, #0
 8006e0a:	e000      	b.n	8006e0e <getAndCheckResponse+0x3a>
 8006e0c:	2301      	movs	r3, #1
 8006e0e:	4618      	mov	r0, r3
 8006e10:	3708      	adds	r7, #8
 8006e12:	46bd      	mov	sp, r7
 8006e14:	bd80      	pop	{r7, pc}
 8006e16:	bf00      	nop
 8006e18:	20015558 	.word	0x20015558

08006e1c <setServoAngle>:
 8006e1c:	b580      	push	{r7, lr}
 8006e1e:	b084      	sub	sp, #16
 8006e20:	af00      	add	r7, sp, #0
 8006e22:	4603      	mov	r3, r0
 8006e24:	460a      	mov	r2, r1
 8006e26:	71fb      	strb	r3, [r7, #7]
 8006e28:	4613      	mov	r3, r2
 8006e2a:	80bb      	strh	r3, [r7, #4]
 8006e2c:	88bb      	ldrh	r3, [r7, #4]
 8006e2e:	f5b3 7f96 	cmp.w	r3, #300	; 0x12c
 8006e32:	d901      	bls.n	8006e38 <setServoAngle+0x1c>
 8006e34:	2300      	movs	r3, #0
 8006e36:	e02e      	b.n	8006e96 <setServoAngle+0x7a>
 8006e38:	88bb      	ldrh	r3, [r7, #4]
 8006e3a:	ee07 3a90 	vmov	s15, r3
 8006e3e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8006e42:	ed9f 7a17 	vldr	s14, [pc, #92]	; 8006ea0 <setServoAngle+0x84>
 8006e46:	ee67 7a87 	vmul.f32	s15, s15, s14
 8006e4a:	eefc 7ae7 	vcvt.u32.f32	s15, s15
 8006e4e:	edc7 7a00 	vstr	s15, [r7]
 8006e52:	883b      	ldrh	r3, [r7, #0]
 8006e54:	81fb      	strh	r3, [r7, #14]
 8006e56:	89fb      	ldrh	r3, [r7, #14]
 8006e58:	0a1b      	lsrs	r3, r3, #8
 8006e5a:	b29b      	uxth	r3, r3
 8006e5c:	737b      	strb	r3, [r7, #13]
 8006e5e:	89fb      	ldrh	r3, [r7, #14]
 8006e60:	733b      	strb	r3, [r7, #12]
 8006e62:	231e      	movs	r3, #30
 8006e64:	723b      	strb	r3, [r7, #8]
 8006e66:	7b3b      	ldrb	r3, [r7, #12]
 8006e68:	727b      	strb	r3, [r7, #9]
 8006e6a:	7b7b      	ldrb	r3, [r7, #13]
 8006e6c:	72bb      	strb	r3, [r7, #10]
 8006e6e:	f107 0308 	add.w	r3, r7, #8
 8006e72:	79f8      	ldrb	r0, [r7, #7]
 8006e74:	2203      	movs	r2, #3
 8006e76:	2103      	movs	r1, #3
 8006e78:	f7ff fece 	bl	8006c18 <sendServoCommand>
 8006e7c:	79fb      	ldrb	r3, [r7, #7]
 8006e7e:	4618      	mov	r0, r3
 8006e80:	f7ff ffa8 	bl	8006dd4 <getAndCheckResponse>
 8006e84:	4603      	mov	r3, r0
 8006e86:	f083 0301 	eor.w	r3, r3, #1
 8006e8a:	b2db      	uxtb	r3, r3
 8006e8c:	2b00      	cmp	r3, #0
 8006e8e:	d001      	beq.n	8006e94 <setServoAngle+0x78>
 8006e90:	2300      	movs	r3, #0
 8006e92:	e000      	b.n	8006e96 <setServoAngle+0x7a>
 8006e94:	2301      	movs	r3, #1
 8006e96:	4618      	mov	r0, r3
 8006e98:	3710      	adds	r7, #16
 8006e9a:	46bd      	mov	sp, r7
 8006e9c:	bd80      	pop	{r7, pc}
 8006e9e:	bf00      	nop
 8006ea0:	405a3d71 	.word	0x405a3d71

08006ea4 <getServoAngle>:
 8006ea4:	b580      	push	{r7, lr}
 8006ea6:	b084      	sub	sp, #16
 8006ea8:	af00      	add	r7, sp, #0
 8006eaa:	4603      	mov	r3, r0
 8006eac:	6039      	str	r1, [r7, #0]
 8006eae:	71fb      	strb	r3, [r7, #7]
 8006eb0:	4a1c      	ldr	r2, [pc, #112]	; (8006f24 <getServoAngle+0x80>)
 8006eb2:	f107 030c 	add.w	r3, r7, #12
 8006eb6:	8812      	ldrh	r2, [r2, #0]
 8006eb8:	801a      	strh	r2, [r3, #0]
 8006eba:	f107 030c 	add.w	r3, r7, #12
 8006ebe:	79f8      	ldrb	r0, [r7, #7]
 8006ec0:	2202      	movs	r2, #2
 8006ec2:	2102      	movs	r1, #2
 8006ec4:	f7ff fea8 	bl	8006c18 <sendServoCommand>
 8006ec8:	79fb      	ldrb	r3, [r7, #7]
 8006eca:	4618      	mov	r0, r3
 8006ecc:	f7ff ff82 	bl	8006dd4 <getAndCheckResponse>
 8006ed0:	4603      	mov	r3, r0
 8006ed2:	f083 0301 	eor.w	r3, r3, #1
 8006ed6:	b2db      	uxtb	r3, r3
 8006ed8:	2b00      	cmp	r3, #0
 8006eda:	d001      	beq.n	8006ee0 <getServoAngle+0x3c>
 8006edc:	2300      	movs	r3, #0
 8006ede:	e01c      	b.n	8006f1a <getServoAngle+0x76>
 8006ee0:	4b11      	ldr	r3, [pc, #68]	; (8006f28 <getServoAngle+0x84>)
 8006ee2:	791b      	ldrb	r3, [r3, #4]
 8006ee4:	81fb      	strh	r3, [r7, #14]
 8006ee6:	89fb      	ldrh	r3, [r7, #14]
 8006ee8:	021b      	lsls	r3, r3, #8
 8006eea:	81fb      	strh	r3, [r7, #14]
 8006eec:	4b0e      	ldr	r3, [pc, #56]	; (8006f28 <getServoAngle+0x84>)
 8006eee:	78db      	ldrb	r3, [r3, #3]
 8006ef0:	b29a      	uxth	r2, r3
 8006ef2:	89fb      	ldrh	r3, [r7, #14]
 8006ef4:	4313      	orrs	r3, r2
 8006ef6:	81fb      	strh	r3, [r7, #14]
 8006ef8:	89fb      	ldrh	r3, [r7, #14]
 8006efa:	ee07 3a90 	vmov	s15, r3
 8006efe:	eef8 7a67 	vcvt.f32.u32	s15, s15
 8006f02:	ed9f 7a0a 	vldr	s14, [pc, #40]	; 8006f2c <getServoAngle+0x88>
 8006f06:	ee27 7a87 	vmul.f32	s14, s15, s14
 8006f0a:	eddf 6a09 	vldr	s13, [pc, #36]	; 8006f30 <getServoAngle+0x8c>
 8006f0e:	eec7 7a26 	vdiv.f32	s15, s14, s13
 8006f12:	683b      	ldr	r3, [r7, #0]
 8006f14:	edc3 7a00 	vstr	s15, [r3]
 8006f18:	2301      	movs	r3, #1
 8006f1a:	4618      	mov	r0, r3
 8006f1c:	3710      	adds	r7, #16
 8006f1e:	46bd      	mov	sp, r7
 8006f20:	bd80      	pop	{r7, pc}
 8006f22:	bf00      	nop
 8006f24:	0800a844 	.word	0x0800a844
 8006f28:	20015558 	.word	0x20015558
 8006f2c:	43960000 	.word	0x43960000
 8006f30:	447fc000 	.word	0x447fc000

08006f34 <sendServoByte>:
 8006f34:	b580      	push	{r7, lr}
 8006f36:	b082      	sub	sp, #8
 8006f38:	af00      	add	r7, sp, #0
 8006f3a:	4603      	mov	r3, r0
 8006f3c:	71fb      	strb	r3, [r7, #7]
 8006f3e:	2200      	movs	r2, #0
 8006f40:	210c      	movs	r1, #12
 8006f42:	4808      	ldr	r0, [pc, #32]	; (8006f64 <sendServoByte+0x30>)
 8006f44:	f7fd feac 	bl	8004ca0 <gpioPinSetLevel>
 8006f48:	79fb      	ldrb	r3, [r7, #7]
 8006f4a:	4619      	mov	r1, r3
 8006f4c:	4806      	ldr	r0, [pc, #24]	; (8006f68 <sendServoByte+0x34>)
 8006f4e:	f7fe fb3b 	bl	80055c8 <usartPutCharNoEcho>
 8006f52:	2201      	movs	r2, #1
 8006f54:	210c      	movs	r1, #12
 8006f56:	4803      	ldr	r0, [pc, #12]	; (8006f64 <sendServoByte+0x30>)
 8006f58:	f7fd fea2 	bl	8004ca0 <gpioPinSetLevel>
 8006f5c:	bf00      	nop
 8006f5e:	3708      	adds	r7, #8
 8006f60:	46bd      	mov	sp, r7
 8006f62:	bd80      	pop	{r7, pc}
 8006f64:	40020400 	.word	0x40020400
 8006f68:	40004c00 	.word	0x40004c00

08006f6c <clearServoReceiveBuffer>:
 8006f6c:	b480      	push	{r7}
 8006f6e:	af00      	add	r7, sp, #0
 8006f70:	4b04      	ldr	r3, [pc, #16]	; (8006f84 <clearServoReceiveBuffer+0x18>)
 8006f72:	681b      	ldr	r3, [r3, #0]
 8006f74:	4a04      	ldr	r2, [pc, #16]	; (8006f88 <clearServoReceiveBuffer+0x1c>)
 8006f76:	6013      	str	r3, [r2, #0]
 8006f78:	bf00      	nop
 8006f7a:	46bd      	mov	sp, r7
 8006f7c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8006f80:	4770      	bx	lr
 8006f82:	bf00      	nop
 8006f84:	20000178 	.word	0x20000178
 8006f88:	20000174 	.word	0x20000174

08006f8c <getServoBytesAvailable>:
 8006f8c:	b480      	push	{r7}
 8006f8e:	b083      	sub	sp, #12
 8006f90:	af00      	add	r7, sp, #0
 8006f92:	4b0c      	ldr	r3, [pc, #48]	; (8006fc4 <getServoBytesAvailable+0x38>)
 8006f94:	681b      	ldr	r3, [r3, #0]
 8006f96:	607b      	str	r3, [r7, #4]
 8006f98:	4b0b      	ldr	r3, [pc, #44]	; (8006fc8 <getServoBytesAvailable+0x3c>)
 8006f9a:	681b      	ldr	r3, [r3, #0]
 8006f9c:	603b      	str	r3, [r7, #0]
 8006f9e:	683a      	ldr	r2, [r7, #0]
 8006fa0:	687b      	ldr	r3, [r7, #4]
 8006fa2:	429a      	cmp	r2, r3
 8006fa4:	d303      	bcc.n	8006fae <getServoBytesAvailable+0x22>
 8006fa6:	683a      	ldr	r2, [r7, #0]
 8006fa8:	687b      	ldr	r3, [r7, #4]
 8006faa:	1ad3      	subs	r3, r2, r3
 8006fac:	e004      	b.n	8006fb8 <getServoBytesAvailable+0x2c>
 8006fae:	687a      	ldr	r2, [r7, #4]
 8006fb0:	683b      	ldr	r3, [r7, #0]
 8006fb2:	1ad3      	subs	r3, r2, r3
 8006fb4:	f1c3 0320 	rsb	r3, r3, #32
 8006fb8:	4618      	mov	r0, r3
 8006fba:	370c      	adds	r7, #12
 8006fbc:	46bd      	mov	sp, r7
 8006fbe:	f85d 7b04 	ldr.w	r7, [sp], #4
 8006fc2:	4770      	bx	lr
 8006fc4:	20000174 	.word	0x20000174
 8006fc8:	20000178 	.word	0x20000178

08006fcc <getServoByte>:
 8006fcc:	b480      	push	{r7}
 8006fce:	af00      	add	r7, sp, #0
 8006fd0:	4b0a      	ldr	r3, [pc, #40]	; (8006ffc <getServoByte+0x30>)
 8006fd2:	681b      	ldr	r3, [r3, #0]
 8006fd4:	3301      	adds	r3, #1
 8006fd6:	4a09      	ldr	r2, [pc, #36]	; (8006ffc <getServoByte+0x30>)
 8006fd8:	6013      	str	r3, [r2, #0]
 8006fda:	4b08      	ldr	r3, [pc, #32]	; (8006ffc <getServoByte+0x30>)
 8006fdc:	681b      	ldr	r3, [r3, #0]
 8006fde:	4a08      	ldr	r2, [pc, #32]	; (8007000 <getServoByte+0x34>)
 8006fe0:	4293      	cmp	r3, r2
 8006fe2:	d302      	bcc.n	8006fea <getServoByte+0x1e>
 8006fe4:	4b05      	ldr	r3, [pc, #20]	; (8006ffc <getServoByte+0x30>)
 8006fe6:	4a07      	ldr	r2, [pc, #28]	; (8007004 <getServoByte+0x38>)
 8006fe8:	601a      	str	r2, [r3, #0]
 8006fea:	4b04      	ldr	r3, [pc, #16]	; (8006ffc <getServoByte+0x30>)
 8006fec:	681b      	ldr	r3, [r3, #0]
 8006fee:	781b      	ldrb	r3, [r3, #0]
 8006ff0:	b2db      	uxtb	r3, r3
 8006ff2:	4618      	mov	r0, r3
 8006ff4:	46bd      	mov	sp, r7
 8006ff6:	f85d 7b04 	ldr.w	r7, [sp], #4
 8006ffa:	4770      	bx	lr
 8006ffc:	20000174 	.word	0x20000174
 8007000:	20015598 	.word	0x20015598
 8007004:	20015578 	.word	0x20015578

08007008 <UART4_IRQHandler>:
 8007008:	b480      	push	{r7}
 800700a:	b083      	sub	sp, #12
 800700c:	af00      	add	r7, sp, #0
 800700e:	4b13      	ldr	r3, [pc, #76]	; (800705c <UART4_IRQHandler+0x54>)
 8007010:	681b      	ldr	r3, [r3, #0]
 8007012:	f003 0320 	and.w	r3, r3, #32
 8007016:	2b00      	cmp	r3, #0
 8007018:	d01a      	beq.n	8007050 <UART4_IRQHandler+0x48>
 800701a:	4a10      	ldr	r2, [pc, #64]	; (800705c <UART4_IRQHandler+0x54>)
 800701c:	4b0f      	ldr	r3, [pc, #60]	; (800705c <UART4_IRQHandler+0x54>)
 800701e:	681b      	ldr	r3, [r3, #0]
 8007020:	f023 0320 	bic.w	r3, r3, #32
 8007024:	6013      	str	r3, [r2, #0]
 8007026:	4b0d      	ldr	r3, [pc, #52]	; (800705c <UART4_IRQHandler+0x54>)
 8007028:	685b      	ldr	r3, [r3, #4]
 800702a:	71fb      	strb	r3, [r7, #7]
 800702c:	4b0c      	ldr	r3, [pc, #48]	; (8007060 <UART4_IRQHandler+0x58>)
 800702e:	681b      	ldr	r3, [r3, #0]
 8007030:	3301      	adds	r3, #1
 8007032:	4a0b      	ldr	r2, [pc, #44]	; (8007060 <UART4_IRQHandler+0x58>)
 8007034:	6013      	str	r3, [r2, #0]
 8007036:	4b0a      	ldr	r3, [pc, #40]	; (8007060 <UART4_IRQHandler+0x58>)
 8007038:	681b      	ldr	r3, [r3, #0]
 800703a:	4a0a      	ldr	r2, [pc, #40]	; (8007064 <UART4_IRQHandler+0x5c>)
 800703c:	4293      	cmp	r3, r2
 800703e:	d302      	bcc.n	8007046 <UART4_IRQHandler+0x3e>
 8007040:	4b07      	ldr	r3, [pc, #28]	; (8007060 <UART4_IRQHandler+0x58>)
 8007042:	4a09      	ldr	r2, [pc, #36]	; (8007068 <UART4_IRQHandler+0x60>)
 8007044:	601a      	str	r2, [r3, #0]
 8007046:	4b06      	ldr	r3, [pc, #24]	; (8007060 <UART4_IRQHandler+0x58>)
 8007048:	681b      	ldr	r3, [r3, #0]
 800704a:	79fa      	ldrb	r2, [r7, #7]
 800704c:	701a      	strb	r2, [r3, #0]
 800704e:	bf00      	nop
 8007050:	370c      	adds	r7, #12
 8007052:	46bd      	mov	sp, r7
 8007054:	f85d 7b04 	ldr.w	r7, [sp], #4
 8007058:	4770      	bx	lr
 800705a:	bf00      	nop
 800705c:	40004c00 	.word	0x40004c00
 8007060:	20000178 	.word	0x20000178
 8007064:	20015598 	.word	0x20015598
 8007068:	20015578 	.word	0x20015578

0800706c <showError>:
 800706c:	b580      	push	{r7, lr}
 800706e:	af00      	add	r7, sp, #0
 8007070:	2201      	movs	r2, #1
 8007072:	2102      	movs	r1, #2
 8007074:	4802      	ldr	r0, [pc, #8]	; (8007080 <showError+0x14>)
 8007076:	f7fd fe13 	bl	8004ca0 <gpioPinSetLevel>
 800707a:	bf00      	nop
 800707c:	bd80      	pop	{r7, pc}
 800707e:	bf00      	nop
 8007080:	40020c00 	.word	0x40020c00

08007084 <showNoError>:
 8007084:	b580      	push	{r7, lr}
 8007086:	af00      	add	r7, sp, #0
 8007088:	2200      	movs	r2, #0
 800708a:	2102      	movs	r1, #2
 800708c:	4802      	ldr	r0, [pc, #8]	; (8007098 <showNoError+0x14>)
 800708e:	f7fd fe07 	bl	8004ca0 <gpioPinSetLevel>
 8007092:	bf00      	nop
 8007094:	bd80      	pop	{r7, pc}
 8007096:	bf00      	nop
 8007098:	40020c00 	.word	0x40020c00

0800709c <readRangesGlobally>:
 800709c:	b580      	push	{r7, lr}
 800709e:	b082      	sub	sp, #8
 80070a0:	af00      	add	r7, sp, #0
 80070a2:	4b11      	ldr	r3, [pc, #68]	; (80070e8 <readRangesGlobally+0x4c>)
 80070a4:	689b      	ldr	r3, [r3, #8]
 80070a6:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
 80070aa:	4618      	mov	r0, r3
 80070ac:	f7ff fd2e 	bl	8006b0c <checkTimeout>
 80070b0:	4603      	mov	r3, r0
 80070b2:	2b00      	cmp	r3, #0
 80070b4:	d101      	bne.n	80070ba <readRangesGlobally+0x1e>
 80070b6:	2301      	movs	r3, #1
 80070b8:	e012      	b.n	80070e0 <readRangesGlobally+0x44>
 80070ba:	2300      	movs	r3, #0
 80070bc:	71fb      	strb	r3, [r7, #7]
 80070be:	e00b      	b.n	80070d8 <readRangesGlobally+0x3c>
 80070c0:	79fb      	ldrb	r3, [r7, #7]
 80070c2:	4618      	mov	r0, r3
 80070c4:	f000 f812 	bl	80070ec <readRange>
 80070c8:	4603      	mov	r3, r0
 80070ca:	2b01      	cmp	r3, #1
 80070cc:	d001      	beq.n	80070d2 <readRangesGlobally+0x36>
 80070ce:	2300      	movs	r3, #0
 80070d0:	e006      	b.n	80070e0 <readRangesGlobally+0x44>
 80070d2:	79fb      	ldrb	r3, [r7, #7]
 80070d4:	3301      	adds	r3, #1
 80070d6:	71fb      	strb	r3, [r7, #7]
 80070d8:	79fb      	ldrb	r3, [r7, #7]
 80070da:	2b0f      	cmp	r3, #15
 80070dc:	d9f0      	bls.n	80070c0 <readRangesGlobally+0x24>
 80070de:	2301      	movs	r3, #1
 80070e0:	4618      	mov	r0, r3
 80070e2:	3708      	adds	r7, #8
 80070e4:	46bd      	mov	sp, r7
 80070e6:	bd80      	pop	{r7, pc}
 80070e8:	20014dd0 	.word	0x20014dd0

080070ec <readRange>:
 80070ec:	b580      	push	{r7, lr}
 80070ee:	b084      	sub	sp, #16
 80070f0:	af00      	add	r7, sp, #0
 80070f2:	4603      	mov	r3, r0
 80070f4:	71fb      	strb	r3, [r7, #7]
 80070f6:	79fb      	ldrb	r3, [r7, #7]
 80070f8:	4a39      	ldr	r2, [pc, #228]	; (80071e0 <readRange+0xf4>)
 80070fa:	4413      	add	r3, r2
 80070fc:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
 8007100:	2b00      	cmp	r3, #0
 8007102:	d167      	bne.n	80071d4 <readRange+0xe8>
 8007104:	79fb      	ldrb	r3, [r7, #7]
 8007106:	332a      	adds	r3, #42	; 0x2a
 8007108:	b2db      	uxtb	r3, r3
 800710a:	f107 010f 	add.w	r1, r7, #15
 800710e:	2204      	movs	r2, #4
 8007110:	4618      	mov	r0, r3
 8007112:	f7ff f997 	bl	8006444 <rangeFinderCheckInterruptStatusOfSensor>
 8007116:	4603      	mov	r3, r0
 8007118:	2b01      	cmp	r3, #1
 800711a:	d011      	beq.n	8007140 <readRange+0x54>
 800711c:	79fb      	ldrb	r3, [r7, #7]
 800711e:	4a30      	ldr	r2, [pc, #192]	; (80071e0 <readRange+0xf4>)
 8007120:	4413      	add	r3, r2
 8007122:	2204      	movs	r2, #4
 8007124:	759a      	strb	r2, [r3, #22]
 8007126:	79fb      	ldrb	r3, [r7, #7]
 8007128:	4a2d      	ldr	r2, [pc, #180]	; (80071e0 <readRange+0xf4>)
 800712a:	4413      	add	r3, r2
 800712c:	2201      	movs	r2, #1
 800712e:	f883 2026 	strb.w	r2, [r3, #38]	; 0x26
 8007132:	4b2c      	ldr	r3, [pc, #176]	; (80071e4 <readRange+0xf8>)
 8007134:	2200      	movs	r2, #0
 8007136:	711a      	strb	r2, [r3, #4]
 8007138:	f7ff ff98 	bl	800706c <showError>
 800713c:	2300      	movs	r3, #0
 800713e:	e04a      	b.n	80071d6 <readRange+0xea>
 8007140:	79fb      	ldrb	r3, [r7, #7]
 8007142:	4a27      	ldr	r2, [pc, #156]	; (80071e0 <readRange+0xf4>)
 8007144:	4413      	add	r3, r2
 8007146:	2200      	movs	r2, #0
 8007148:	759a      	strb	r2, [r3, #22]
 800714a:	7bfb      	ldrb	r3, [r7, #15]
 800714c:	2b00      	cmp	r3, #0
 800714e:	d01d      	beq.n	800718c <readRange+0xa0>
 8007150:	79fb      	ldrb	r3, [r7, #7]
 8007152:	332a      	adds	r3, #42	; 0x2a
 8007154:	b2d8      	uxtb	r0, r3
 8007156:	79fb      	ldrb	r3, [r7, #7]
 8007158:	4a21      	ldr	r2, [pc, #132]	; (80071e0 <readRange+0xf4>)
 800715a:	4413      	add	r3, r2
 800715c:	4619      	mov	r1, r3
 800715e:	f7ff f9bf 	bl	80064e0 <rangeFinderReadMeasuredRange>
 8007162:	4603      	mov	r3, r0
 8007164:	2b01      	cmp	r3, #1
 8007166:	d035      	beq.n	80071d4 <readRange+0xe8>
 8007168:	79fb      	ldrb	r3, [r7, #7]
 800716a:	4a1d      	ldr	r2, [pc, #116]	; (80071e0 <readRange+0xf4>)
 800716c:	4413      	add	r3, r2
 800716e:	2204      	movs	r2, #4
 8007170:	759a      	strb	r2, [r3, #22]
 8007172:	79fb      	ldrb	r3, [r7, #7]
 8007174:	4a1a      	ldr	r2, [pc, #104]	; (80071e0 <readRange+0xf4>)
 8007176:	4413      	add	r3, r2
 8007178:	2201      	movs	r2, #1
 800717a:	f883 2026 	strb.w	r2, [r3, #38]	; 0x26
 800717e:	4b19      	ldr	r3, [pc, #100]	; (80071e4 <readRange+0xf8>)
 8007180:	2200      	movs	r2, #0
 8007182:	711a      	strb	r2, [r3, #4]
 8007184:	f7ff ff72 	bl	800706c <showError>
 8007188:	2300      	movs	r3, #0
 800718a:	e024      	b.n	80071d6 <readRange+0xea>
 800718c:	2300      	movs	r3, #0
 800718e:	73bb      	strb	r3, [r7, #14]
 8007190:	79fb      	ldrb	r3, [r7, #7]
 8007192:	332a      	adds	r3, #42	; 0x2a
 8007194:	b2db      	uxtb	r3, r3
 8007196:	f107 020e 	add.w	r2, r7, #14
 800719a:	4611      	mov	r1, r2
 800719c:	4618      	mov	r0, r3
 800719e:	f7ff f9b5 	bl	800650c <rangeFinderReadRangeReadyStatus>
 80071a2:	4603      	mov	r3, r0
 80071a4:	2b01      	cmp	r3, #1
 80071a6:	d00d      	beq.n	80071c4 <readRange+0xd8>
 80071a8:	79fb      	ldrb	r3, [r7, #7]
 80071aa:	4a0d      	ldr	r2, [pc, #52]	; (80071e0 <readRange+0xf4>)
 80071ac:	4413      	add	r3, r2
 80071ae:	2204      	movs	r2, #4
 80071b0:	759a      	strb	r2, [r3, #22]
 80071b2:	79fb      	ldrb	r3, [r7, #7]
 80071b4:	4a0a      	ldr	r2, [pc, #40]	; (80071e0 <readRange+0xf4>)
 80071b6:	4413      	add	r3, r2
 80071b8:	2201      	movs	r2, #1
 80071ba:	f883 2026 	strb.w	r2, [r3, #38]	; 0x26
 80071be:	4b09      	ldr	r3, [pc, #36]	; (80071e4 <readRange+0xf8>)
 80071c0:	2200      	movs	r2, #0
 80071c2:	711a      	strb	r2, [r3, #4]
 80071c4:	79fb      	ldrb	r3, [r7, #7]
 80071c6:	4a06      	ldr	r2, [pc, #24]	; (80071e0 <readRange+0xf4>)
 80071c8:	4413      	add	r3, r2
 80071ca:	2201      	movs	r2, #1
 80071cc:	f883 2026 	strb.w	r2, [r3, #38]	; 0x26
 80071d0:	f7ff ff4c 	bl	800706c <showError>
 80071d4:	2301      	movs	r3, #1
 80071d6:	4618      	mov	r0, r3
 80071d8:	3710      	adds	r7, #16
 80071da:	46bd      	mov	sp, r7
 80071dc:	bd80      	pop	{r7, pc}
 80071de:	bf00      	nop
 80071e0:	20015598 	.word	0x20015598
 80071e4:	20014dd0 	.word	0x20014dd0

080071e8 <checkRangeFindersReinitFlags>:
 80071e8:	b580      	push	{r7, lr}
 80071ea:	b082      	sub	sp, #8
 80071ec:	af00      	add	r7, sp, #0
 80071ee:	2300      	movs	r3, #0
 80071f0:	71bb      	strb	r3, [r7, #6]
 80071f2:	4b5d      	ldr	r3, [pc, #372]	; (8007368 <checkRangeFindersReinitFlags+0x180>)
 80071f4:	689b      	ldr	r3, [r3, #8]
 80071f6:	f240 61a4 	movw	r1, #1700	; 0x6a4
 80071fa:	4618      	mov	r0, r3
 80071fc:	f7ff fc86 	bl	8006b0c <checkTimeout>
 8007200:	4603      	mov	r3, r0
 8007202:	2b00      	cmp	r3, #0
 8007204:	d00b      	beq.n	800721e <checkRangeFindersReinitFlags+0x36>
 8007206:	4b59      	ldr	r3, [pc, #356]	; (800736c <checkRangeFindersReinitFlags+0x184>)
 8007208:	f893 303a 	ldrb.w	r3, [r3, #58]	; 0x3a
 800720c:	2b00      	cmp	r3, #0
 800720e:	d006      	beq.n	800721e <checkRangeFindersReinitFlags+0x36>
 8007210:	f000 fa5a 	bl	80076c8 <powerTurnOnExpander>
 8007214:	4b55      	ldr	r3, [pc, #340]	; (800736c <checkRangeFindersReinitFlags+0x184>)
 8007216:	2200      	movs	r2, #0
 8007218:	f883 203a 	strb.w	r2, [r3, #58]	; 0x3a
 800721c:	e0a1      	b.n	8007362 <checkRangeFindersReinitFlags+0x17a>
 800721e:	4b52      	ldr	r3, [pc, #328]	; (8007368 <checkRangeFindersReinitFlags+0x180>)
 8007220:	689b      	ldr	r3, [r3, #8]
 8007222:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
 8007226:	4618      	mov	r0, r3
 8007228:	f7ff fc70 	bl	8006b0c <checkTimeout>
 800722c:	4603      	mov	r3, r0
 800722e:	2b00      	cmp	r3, #0
 8007230:	f000 8096 	beq.w	8007360 <checkRangeFindersReinitFlags+0x178>
 8007234:	2300      	movs	r3, #0
 8007236:	71fb      	strb	r3, [r7, #7]
 8007238:	e00a      	b.n	8007250 <checkRangeFindersReinitFlags+0x68>
 800723a:	79fb      	ldrb	r3, [r7, #7]
 800723c:	4a4b      	ldr	r2, [pc, #300]	; (800736c <checkRangeFindersReinitFlags+0x184>)
 800723e:	4413      	add	r3, r2
 8007240:	f893 2026 	ldrb.w	r2, [r3, #38]	; 0x26
 8007244:	79bb      	ldrb	r3, [r7, #6]
 8007246:	4413      	add	r3, r2
 8007248:	71bb      	strb	r3, [r7, #6]
 800724a:	79fb      	ldrb	r3, [r7, #7]
 800724c:	3301      	adds	r3, #1
 800724e:	71fb      	strb	r3, [r7, #7]
 8007250:	79fb      	ldrb	r3, [r7, #7]
 8007252:	2b0f      	cmp	r3, #15
 8007254:	d9f1      	bls.n	800723a <checkRangeFindersReinitFlags+0x52>
 8007256:	4b45      	ldr	r3, [pc, #276]	; (800736c <checkRangeFindersReinitFlags+0x184>)
 8007258:	f893 2036 	ldrb.w	r2, [r3, #54]	; 0x36
 800725c:	79bb      	ldrb	r3, [r7, #6]
 800725e:	4413      	add	r3, r2
 8007260:	71bb      	strb	r3, [r7, #6]
 8007262:	79bb      	ldrb	r3, [r7, #6]
 8007264:	2b11      	cmp	r3, #17
 8007266:	d118      	bne.n	800729a <checkRangeFindersReinitFlags+0xb2>
 8007268:	483f      	ldr	r0, [pc, #252]	; (8007368 <checkRangeFindersReinitFlags+0x180>)
 800726a:	f7fd fded 	bl	8004e48 <I2CReset>
 800726e:	2300      	movs	r3, #0
 8007270:	71fb      	strb	r3, [r7, #7]
 8007272:	e008      	b.n	8007286 <checkRangeFindersReinitFlags+0x9e>
 8007274:	79fb      	ldrb	r3, [r7, #7]
 8007276:	4a3d      	ldr	r2, [pc, #244]	; (800736c <checkRangeFindersReinitFlags+0x184>)
 8007278:	4413      	add	r3, r2
 800727a:	2200      	movs	r2, #0
 800727c:	f883 2026 	strb.w	r2, [r3, #38]	; 0x26
 8007280:	79fb      	ldrb	r3, [r7, #7]
 8007282:	3301      	adds	r3, #1
 8007284:	71fb      	strb	r3, [r7, #7]
 8007286:	79fb      	ldrb	r3, [r7, #7]
 8007288:	2b0f      	cmp	r3, #15
 800728a:	d9f3      	bls.n	8007274 <checkRangeFindersReinitFlags+0x8c>
 800728c:	4b37      	ldr	r3, [pc, #220]	; (800736c <checkRangeFindersReinitFlags+0x184>)
 800728e:	2200      	movs	r2, #0
 8007290:	f883 2036 	strb.w	r2, [r3, #54]	; 0x36
 8007294:	f7ff fef6 	bl	8007084 <showNoError>
 8007298:	e062      	b.n	8007360 <checkRangeFindersReinitFlags+0x178>
 800729a:	f000 fa21 	bl	80076e0 <checkExpander>
 800729e:	4603      	mov	r3, r0
 80072a0:	461a      	mov	r2, r3
 80072a2:	4b32      	ldr	r3, [pc, #200]	; (800736c <checkRangeFindersReinitFlags+0x184>)
 80072a4:	f883 2036 	strb.w	r2, [r3, #54]	; 0x36
 80072a8:	4b30      	ldr	r3, [pc, #192]	; (800736c <checkRangeFindersReinitFlags+0x184>)
 80072aa:	f893 3036 	ldrb.w	r3, [r3, #54]	; 0x36
 80072ae:	2b01      	cmp	r3, #1
 80072b0:	d116      	bne.n	80072e0 <checkRangeFindersReinitFlags+0xf8>
 80072b2:	2021      	movs	r0, #33	; 0x21
 80072b4:	f000 fa2c 	bl	8007710 <initExpanderOutputMode>
 80072b8:	4603      	mov	r3, r0
 80072ba:	2b01      	cmp	r3, #1
 80072bc:	d009      	beq.n	80072d2 <checkRangeFindersReinitFlags+0xea>
 80072be:	4b2b      	ldr	r3, [pc, #172]	; (800736c <checkRangeFindersReinitFlags+0x184>)
 80072c0:	2201      	movs	r2, #1
 80072c2:	f883 2036 	strb.w	r2, [r3, #54]	; 0x36
 80072c6:	4b28      	ldr	r3, [pc, #160]	; (8007368 <checkRangeFindersReinitFlags+0x180>)
 80072c8:	2200      	movs	r2, #0
 80072ca:	711a      	strb	r2, [r3, #4]
 80072cc:	f7ff fece 	bl	800706c <showError>
 80072d0:	e047      	b.n	8007362 <checkRangeFindersReinitFlags+0x17a>
 80072d2:	4b26      	ldr	r3, [pc, #152]	; (800736c <checkRangeFindersReinitFlags+0x184>)
 80072d4:	2200      	movs	r2, #0
 80072d6:	f883 2036 	strb.w	r2, [r3, #54]	; 0x36
 80072da:	f7ff fed3 	bl	8007084 <showNoError>
 80072de:	e040      	b.n	8007362 <checkRangeFindersReinitFlags+0x17a>
 80072e0:	2300      	movs	r3, #0
 80072e2:	71fb      	strb	r3, [r7, #7]
 80072e4:	e038      	b.n	8007358 <checkRangeFindersReinitFlags+0x170>
 80072e6:	79fb      	ldrb	r3, [r7, #7]
 80072e8:	4a20      	ldr	r2, [pc, #128]	; (800736c <checkRangeFindersReinitFlags+0x184>)
 80072ea:	4413      	add	r3, r2
 80072ec:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
 80072f0:	2b01      	cmp	r3, #1
 80072f2:	d12e      	bne.n	8007352 <checkRangeFindersReinitFlags+0x16a>
 80072f4:	79fb      	ldrb	r3, [r7, #7]
 80072f6:	4618      	mov	r0, r3
 80072f8:	f000 f996 	bl	8007628 <initRangeFinder>
 80072fc:	4603      	mov	r3, r0
 80072fe:	2b01      	cmp	r3, #1
 8007300:	d00a      	beq.n	8007318 <checkRangeFindersReinitFlags+0x130>
 8007302:	79fb      	ldrb	r3, [r7, #7]
 8007304:	4a19      	ldr	r2, [pc, #100]	; (800736c <checkRangeFindersReinitFlags+0x184>)
 8007306:	4413      	add	r3, r2
 8007308:	2203      	movs	r2, #3
 800730a:	759a      	strb	r2, [r3, #22]
 800730c:	4b16      	ldr	r3, [pc, #88]	; (8007368 <checkRangeFindersReinitFlags+0x180>)
 800730e:	2200      	movs	r2, #0
 8007310:	711a      	strb	r2, [r3, #4]
 8007312:	f7ff feab 	bl	800706c <showError>
 8007316:	e024      	b.n	8007362 <checkRangeFindersReinitFlags+0x17a>
 8007318:	79fb      	ldrb	r3, [r7, #7]
 800731a:	332a      	adds	r3, #42	; 0x2a
 800731c:	b2db      	uxtb	r3, r3
 800731e:	4618      	mov	r0, r3
 8007320:	f7ff f8c8 	bl	80064b4 <rangeFinderStartContiniousMeasurements>
 8007324:	4603      	mov	r3, r0
 8007326:	2b01      	cmp	r3, #1
 8007328:	d00a      	beq.n	8007340 <checkRangeFindersReinitFlags+0x158>
 800732a:	79fb      	ldrb	r3, [r7, #7]
 800732c:	4a0f      	ldr	r2, [pc, #60]	; (800736c <checkRangeFindersReinitFlags+0x184>)
 800732e:	4413      	add	r3, r2
 8007330:	2202      	movs	r2, #2
 8007332:	759a      	strb	r2, [r3, #22]
 8007334:	4b0c      	ldr	r3, [pc, #48]	; (8007368 <checkRangeFindersReinitFlags+0x180>)
 8007336:	2200      	movs	r2, #0
 8007338:	711a      	strb	r2, [r3, #4]
 800733a:	f7ff fe97 	bl	800706c <showError>
 800733e:	e010      	b.n	8007362 <checkRangeFindersReinitFlags+0x17a>
 8007340:	79fb      	ldrb	r3, [r7, #7]
 8007342:	4a0a      	ldr	r2, [pc, #40]	; (800736c <checkRangeFindersReinitFlags+0x184>)
 8007344:	4413      	add	r3, r2
 8007346:	2200      	movs	r2, #0
 8007348:	f883 2026 	strb.w	r2, [r3, #38]	; 0x26
 800734c:	f7ff fe9a 	bl	8007084 <showNoError>
 8007350:	e007      	b.n	8007362 <checkRangeFindersReinitFlags+0x17a>
 8007352:	79fb      	ldrb	r3, [r7, #7]
 8007354:	3301      	adds	r3, #1
 8007356:	71fb      	strb	r3, [r7, #7]
 8007358:	79fb      	ldrb	r3, [r7, #7]
 800735a:	2b0f      	cmp	r3, #15
 800735c:	d9c3      	bls.n	80072e6 <checkRangeFindersReinitFlags+0xfe>
 800735e:	bf00      	nop
 8007360:	bf00      	nop
 8007362:	3708      	adds	r7, #8
 8007364:	46bd      	mov	sp, r7
 8007366:	bd80      	pop	{r7, pc}
 8007368:	20014dd0 	.word	0x20014dd0
 800736c:	20015598 	.word	0x20015598

08007370 <checkCollisionAvoidance>:
 8007370:	b480      	push	{r7}
 8007372:	b083      	sub	sp, #12
 8007374:	af00      	add	r7, sp, #0
 8007376:	2300      	movs	r3, #0
 8007378:	71fb      	strb	r3, [r7, #7]
 800737a:	e0c9      	b.n	8007510 <checkCollisionAvoidance+0x1a0>
 800737c:	79fb      	ldrb	r3, [r7, #7]
 800737e:	4a69      	ldr	r2, [pc, #420]	; (8007524 <checkCollisionAvoidance+0x1b4>)
 8007380:	5cd3      	ldrb	r3, [r2, r3]
 8007382:	2b95      	cmp	r3, #149	; 0x95
 8007384:	f200 80c1 	bhi.w	800750a <checkCollisionAvoidance+0x19a>
 8007388:	4b67      	ldr	r3, [pc, #412]	; (8007528 <checkCollisionAvoidance+0x1b8>)
 800738a:	789b      	ldrb	r3, [r3, #2]
 800738c:	2b00      	cmp	r3, #0
 800738e:	d103      	bne.n	8007398 <checkCollisionAvoidance+0x28>
 8007390:	4b65      	ldr	r3, [pc, #404]	; (8007528 <checkCollisionAvoidance+0x1b8>)
 8007392:	785b      	ldrb	r3, [r3, #1]
 8007394:	2b00      	cmp	r3, #0
 8007396:	d037      	beq.n	8007408 <checkCollisionAvoidance+0x98>
 8007398:	79fa      	ldrb	r2, [r7, #7]
 800739a:	4964      	ldr	r1, [pc, #400]	; (800752c <checkCollisionAvoidance+0x1bc>)
 800739c:	4613      	mov	r3, r2
 800739e:	005b      	lsls	r3, r3, #1
 80073a0:	4413      	add	r3, r2
 80073a2:	009b      	lsls	r3, r3, #2
 80073a4:	440b      	add	r3, r1
 80073a6:	ed93 7a00 	vldr	s14, [r3]
 80073aa:	4b61      	ldr	r3, [pc, #388]	; (8007530 <checkCollisionAvoidance+0x1c0>)
 80073ac:	edd3 7a00 	vldr	s15, [r3]
 80073b0:	ee67 7a27 	vmul.f32	s15, s14, s15
 80073b4:	edc7 7a00 	vstr	s15, [r7]
 80073b8:	edd7 7a00 	vldr	s15, [r7]
 80073bc:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 80073c0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80073c4:	dd03      	ble.n	80073ce <checkCollisionAvoidance+0x5e>
 80073c6:	4b5a      	ldr	r3, [pc, #360]	; (8007530 <checkCollisionAvoidance+0x1c0>)
 80073c8:	f04f 0200 	mov.w	r2, #0
 80073cc:	601a      	str	r2, [r3, #0]
 80073ce:	79fa      	ldrb	r2, [r7, #7]
 80073d0:	4956      	ldr	r1, [pc, #344]	; (800752c <checkCollisionAvoidance+0x1bc>)
 80073d2:	4613      	mov	r3, r2
 80073d4:	005b      	lsls	r3, r3, #1
 80073d6:	4413      	add	r3, r2
 80073d8:	009b      	lsls	r3, r3, #2
 80073da:	440b      	add	r3, r1
 80073dc:	3304      	adds	r3, #4
 80073de:	ed93 7a00 	vldr	s14, [r3]
 80073e2:	4b53      	ldr	r3, [pc, #332]	; (8007530 <checkCollisionAvoidance+0x1c0>)
 80073e4:	edd3 7a01 	vldr	s15, [r3, #4]
 80073e8:	ee67 7a27 	vmul.f32	s15, s14, s15
 80073ec:	edc7 7a00 	vstr	s15, [r7]
 80073f0:	edd7 7a00 	vldr	s15, [r7]
 80073f4:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 80073f8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80073fc:	dd57      	ble.n	80074ae <checkCollisionAvoidance+0x13e>
 80073fe:	4b4c      	ldr	r3, [pc, #304]	; (8007530 <checkCollisionAvoidance+0x1c0>)
 8007400:	f04f 0200 	mov.w	r2, #0
 8007404:	605a      	str	r2, [r3, #4]
 8007406:	e052      	b.n	80074ae <checkCollisionAvoidance+0x13e>
 8007408:	79fa      	ldrb	r2, [r7, #7]
 800740a:	4948      	ldr	r1, [pc, #288]	; (800752c <checkCollisionAvoidance+0x1bc>)
 800740c:	4613      	mov	r3, r2
 800740e:	005b      	lsls	r3, r3, #1
 8007410:	4413      	add	r3, r2
 8007412:	009b      	lsls	r3, r3, #2
 8007414:	440b      	add	r3, r1
 8007416:	ed93 7a00 	vldr	s14, [r3]
 800741a:	4b45      	ldr	r3, [pc, #276]	; (8007530 <checkCollisionAvoidance+0x1c0>)
 800741c:	edd3 7a00 	vldr	s15, [r3]
 8007420:	ee27 7a27 	vmul.f32	s14, s14, s15
 8007424:	79fa      	ldrb	r2, [r7, #7]
 8007426:	4941      	ldr	r1, [pc, #260]	; (800752c <checkCollisionAvoidance+0x1bc>)
 8007428:	4613      	mov	r3, r2
 800742a:	005b      	lsls	r3, r3, #1
 800742c:	4413      	add	r3, r2
 800742e:	009b      	lsls	r3, r3, #2
 8007430:	440b      	add	r3, r1
 8007432:	3304      	adds	r3, #4
 8007434:	edd3 6a00 	vldr	s13, [r3]
 8007438:	4b3d      	ldr	r3, [pc, #244]	; (8007530 <checkCollisionAvoidance+0x1c0>)
 800743a:	edd3 7a01 	vldr	s15, [r3, #4]
 800743e:	ee66 7aa7 	vmul.f32	s15, s13, s15
 8007442:	ee77 7a27 	vadd.f32	s15, s14, s15
 8007446:	edc7 7a00 	vstr	s15, [r7]
 800744a:	edd7 7a00 	vldr	s15, [r7]
 800744e:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8007452:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8007456:	dd2a      	ble.n	80074ae <checkCollisionAvoidance+0x13e>
 8007458:	4b35      	ldr	r3, [pc, #212]	; (8007530 <checkCollisionAvoidance+0x1c0>)
 800745a:	ed93 7a00 	vldr	s14, [r3]
 800745e:	79fa      	ldrb	r2, [r7, #7]
 8007460:	4932      	ldr	r1, [pc, #200]	; (800752c <checkCollisionAvoidance+0x1bc>)
 8007462:	4613      	mov	r3, r2
 8007464:	005b      	lsls	r3, r3, #1
 8007466:	4413      	add	r3, r2
 8007468:	009b      	lsls	r3, r3, #2
 800746a:	440b      	add	r3, r1
 800746c:	edd3 6a00 	vldr	s13, [r3]
 8007470:	edd7 7a00 	vldr	s15, [r7]
 8007474:	ee66 7aa7 	vmul.f32	s15, s13, s15
 8007478:	ee77 7a67 	vsub.f32	s15, s14, s15
 800747c:	4b2c      	ldr	r3, [pc, #176]	; (8007530 <checkCollisionAvoidance+0x1c0>)
 800747e:	edc3 7a00 	vstr	s15, [r3]
 8007482:	4b2b      	ldr	r3, [pc, #172]	; (8007530 <checkCollisionAvoidance+0x1c0>)
 8007484:	ed93 7a01 	vldr	s14, [r3, #4]
 8007488:	79fa      	ldrb	r2, [r7, #7]
 800748a:	4928      	ldr	r1, [pc, #160]	; (800752c <checkCollisionAvoidance+0x1bc>)
 800748c:	4613      	mov	r3, r2
 800748e:	005b      	lsls	r3, r3, #1
 8007490:	4413      	add	r3, r2
 8007492:	009b      	lsls	r3, r3, #2
 8007494:	440b      	add	r3, r1
 8007496:	3304      	adds	r3, #4
 8007498:	edd3 6a00 	vldr	s13, [r3]
 800749c:	edd7 7a00 	vldr	s15, [r7]
 80074a0:	ee66 7aa7 	vmul.f32	s15, s13, s15
 80074a4:	ee77 7a67 	vsub.f32	s15, s14, s15
 80074a8:	4b21      	ldr	r3, [pc, #132]	; (8007530 <checkCollisionAvoidance+0x1c0>)
 80074aa:	edc3 7a01 	vstr	s15, [r3, #4]
 80074ae:	79fa      	ldrb	r2, [r7, #7]
 80074b0:	491e      	ldr	r1, [pc, #120]	; (800752c <checkCollisionAvoidance+0x1bc>)
 80074b2:	4613      	mov	r3, r2
 80074b4:	005b      	lsls	r3, r3, #1
 80074b6:	4413      	add	r3, r2
 80074b8:	009b      	lsls	r3, r3, #2
 80074ba:	440b      	add	r3, r1
 80074bc:	3308      	adds	r3, #8
 80074be:	ed93 7a00 	vldr	s14, [r3]
 80074c2:	4b1b      	ldr	r3, [pc, #108]	; (8007530 <checkCollisionAvoidance+0x1c0>)
 80074c4:	edd3 7a02 	vldr	s15, [r3, #8]
 80074c8:	ee67 7a27 	vmul.f32	s15, s14, s15
 80074cc:	edc7 7a00 	vstr	s15, [r7]
 80074d0:	edd7 7a00 	vldr	s15, [r7]
 80074d4:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 80074d8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80074dc:	dd15      	ble.n	800750a <checkCollisionAvoidance+0x19a>
 80074de:	4b14      	ldr	r3, [pc, #80]	; (8007530 <checkCollisionAvoidance+0x1c0>)
 80074e0:	ed93 7a02 	vldr	s14, [r3, #8]
 80074e4:	79fa      	ldrb	r2, [r7, #7]
 80074e6:	4911      	ldr	r1, [pc, #68]	; (800752c <checkCollisionAvoidance+0x1bc>)
 80074e8:	4613      	mov	r3, r2
 80074ea:	005b      	lsls	r3, r3, #1
 80074ec:	4413      	add	r3, r2
 80074ee:	009b      	lsls	r3, r3, #2
 80074f0:	440b      	add	r3, r1
 80074f2:	3308      	adds	r3, #8
 80074f4:	edd3 6a00 	vldr	s13, [r3]
 80074f8:	edd7 7a00 	vldr	s15, [r7]
 80074fc:	ee66 7aa7 	vmul.f32	s15, s13, s15
 8007500:	ee77 7a67 	vsub.f32	s15, s14, s15
 8007504:	4b0a      	ldr	r3, [pc, #40]	; (8007530 <checkCollisionAvoidance+0x1c0>)
 8007506:	edc3 7a02 	vstr	s15, [r3, #8]
 800750a:	79fb      	ldrb	r3, [r7, #7]
 800750c:	3301      	adds	r3, #1
 800750e:	71fb      	strb	r3, [r7, #7]
 8007510:	79fb      	ldrb	r3, [r7, #7]
 8007512:	2b09      	cmp	r3, #9
 8007514:	f67f af32 	bls.w	800737c <checkCollisionAvoidance+0xc>
 8007518:	bf00      	nop
 800751a:	370c      	adds	r7, #12
 800751c:	46bd      	mov	sp, r7
 800751e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8007522:	4770      	bx	lr
 8007524:	20015598 	.word	0x20015598
 8007528:	20014df8 	.word	0x20014df8
 800752c:	200001dc 	.word	0x200001dc
 8007530:	20014dec 	.word	0x20014dec

08007534 <postprocessDataForCalibration>:
 8007534:	b480      	push	{r7}
 8007536:	b083      	sub	sp, #12
 8007538:	af00      	add	r7, sp, #0
 800753a:	2300      	movs	r3, #0
 800753c:	71fb      	strb	r3, [r7, #7]
 800753e:	e01f      	b.n	8007580 <postprocessDataForCalibration+0x4c>
 8007540:	79fb      	ldrb	r3, [r7, #7]
 8007542:	330a      	adds	r3, #10
 8007544:	4a13      	ldr	r2, [pc, #76]	; (8007594 <postprocessDataForCalibration+0x60>)
 8007546:	5cd2      	ldrb	r2, [r2, r3]
 8007548:	79fb      	ldrb	r3, [r7, #7]
 800754a:	4913      	ldr	r1, [pc, #76]	; (8007598 <postprocessDataForCalibration+0x64>)
 800754c:	5ccb      	ldrb	r3, [r1, r3]
 800754e:	429a      	cmp	r2, r3
 8007550:	d90e      	bls.n	8007570 <postprocessDataForCalibration+0x3c>
 8007552:	79fb      	ldrb	r3, [r7, #7]
 8007554:	330a      	adds	r3, #10
 8007556:	4a0f      	ldr	r2, [pc, #60]	; (8007594 <postprocessDataForCalibration+0x60>)
 8007558:	5cd2      	ldrb	r2, [r2, r3]
 800755a:	79fb      	ldrb	r3, [r7, #7]
 800755c:	490f      	ldr	r1, [pc, #60]	; (800759c <postprocessDataForCalibration+0x68>)
 800755e:	5ccb      	ldrb	r3, [r1, r3]
 8007560:	429a      	cmp	r2, r3
 8007562:	d205      	bcs.n	8007570 <postprocessDataForCalibration+0x3c>
 8007564:	79fb      	ldrb	r3, [r7, #7]
 8007566:	4a0b      	ldr	r2, [pc, #44]	; (8007594 <postprocessDataForCalibration+0x60>)
 8007568:	4413      	add	r3, r2
 800756a:	2201      	movs	r2, #1
 800756c:	741a      	strb	r2, [r3, #16]
 800756e:	e004      	b.n	800757a <postprocessDataForCalibration+0x46>
 8007570:	79fb      	ldrb	r3, [r7, #7]
 8007572:	4a08      	ldr	r2, [pc, #32]	; (8007594 <postprocessDataForCalibration+0x60>)
 8007574:	4413      	add	r3, r2
 8007576:	2200      	movs	r2, #0
 8007578:	741a      	strb	r2, [r3, #16]
 800757a:	79fb      	ldrb	r3, [r7, #7]
 800757c:	3301      	adds	r3, #1
 800757e:	71fb      	strb	r3, [r7, #7]
 8007580:	79fb      	ldrb	r3, [r7, #7]
 8007582:	2b05      	cmp	r3, #5
 8007584:	d9dc      	bls.n	8007540 <postprocessDataForCalibration+0xc>
 8007586:	bf00      	nop
 8007588:	370c      	adds	r7, #12
 800758a:	46bd      	mov	sp, r7
 800758c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8007590:	4770      	bx	lr
 8007592:	bf00      	nop
 8007594:	20015598 	.word	0x20015598
 8007598:	200001cc 	.word	0x200001cc
 800759c:	200001d4 	.word	0x200001d4

080075a0 <resetRangeFinder>:
 80075a0:	b580      	push	{r7, lr}
 80075a2:	b082      	sub	sp, #8
 80075a4:	af00      	add	r7, sp, #0
 80075a6:	4603      	mov	r3, r0
 80075a8:	71fb      	strb	r3, [r7, #7]
 80075aa:	4b1e      	ldr	r3, [pc, #120]	; (8007624 <resetRangeFinder+0x84>)
 80075ac:	8f1b      	ldrh	r3, [r3, #56]	; 0x38
 80075ae:	b21a      	sxth	r2, r3
 80075b0:	79fb      	ldrb	r3, [r7, #7]
 80075b2:	2101      	movs	r1, #1
 80075b4:	fa01 f303 	lsl.w	r3, r1, r3
 80075b8:	b21b      	sxth	r3, r3
 80075ba:	43db      	mvns	r3, r3
 80075bc:	b21b      	sxth	r3, r3
 80075be:	4013      	ands	r3, r2
 80075c0:	b21b      	sxth	r3, r3
 80075c2:	b29a      	uxth	r2, r3
 80075c4:	4b17      	ldr	r3, [pc, #92]	; (8007624 <resetRangeFinder+0x84>)
 80075c6:	871a      	strh	r2, [r3, #56]	; 0x38
 80075c8:	4b16      	ldr	r3, [pc, #88]	; (8007624 <resetRangeFinder+0x84>)
 80075ca:	8f1b      	ldrh	r3, [r3, #56]	; 0x38
 80075cc:	2121      	movs	r1, #33	; 0x21
 80075ce:	4618      	mov	r0, r3
 80075d0:	f000 f8e2 	bl	8007798 <setExpanderVoltage>
 80075d4:	4603      	mov	r3, r0
 80075d6:	2b01      	cmp	r3, #1
 80075d8:	d001      	beq.n	80075de <resetRangeFinder+0x3e>
 80075da:	2300      	movs	r3, #0
 80075dc:	e01e      	b.n	800761c <resetRangeFinder+0x7c>
 80075de:	2003      	movs	r0, #3
 80075e0:	f7ff faa8 	bl	8006b34 <delayInTenthOfMs>
 80075e4:	4b0f      	ldr	r3, [pc, #60]	; (8007624 <resetRangeFinder+0x84>)
 80075e6:	8f1b      	ldrh	r3, [r3, #56]	; 0x38
 80075e8:	b21a      	sxth	r2, r3
 80075ea:	79fb      	ldrb	r3, [r7, #7]
 80075ec:	2101      	movs	r1, #1
 80075ee:	fa01 f303 	lsl.w	r3, r1, r3
 80075f2:	b21b      	sxth	r3, r3
 80075f4:	4313      	orrs	r3, r2
 80075f6:	b21b      	sxth	r3, r3
 80075f8:	b29a      	uxth	r2, r3
 80075fa:	4b0a      	ldr	r3, [pc, #40]	; (8007624 <resetRangeFinder+0x84>)
 80075fc:	871a      	strh	r2, [r3, #56]	; 0x38
 80075fe:	4b09      	ldr	r3, [pc, #36]	; (8007624 <resetRangeFinder+0x84>)
 8007600:	8f1b      	ldrh	r3, [r3, #56]	; 0x38
 8007602:	2121      	movs	r1, #33	; 0x21
 8007604:	4618      	mov	r0, r3
 8007606:	f000 f8c7 	bl	8007798 <setExpanderVoltage>
 800760a:	4603      	mov	r3, r0
 800760c:	2b01      	cmp	r3, #1
 800760e:	d001      	beq.n	8007614 <resetRangeFinder+0x74>
 8007610:	2300      	movs	r3, #0
 8007612:	e003      	b.n	800761c <resetRangeFinder+0x7c>
 8007614:	2010      	movs	r0, #16
 8007616:	f7ff fa8d 	bl	8006b34 <delayInTenthOfMs>
 800761a:	2301      	movs	r3, #1
 800761c:	4618      	mov	r0, r3
 800761e:	3708      	adds	r7, #8
 8007620:	46bd      	mov	sp, r7
 8007622:	bd80      	pop	{r7, pc}
 8007624:	20015598 	.word	0x20015598

08007628 <initRangeFinder>:
 8007628:	b580      	push	{r7, lr}
 800762a:	b084      	sub	sp, #16
 800762c:	af00      	add	r7, sp, #0
 800762e:	4603      	mov	r3, r0
 8007630:	71fb      	strb	r3, [r7, #7]
 8007632:	79fb      	ldrb	r3, [r7, #7]
 8007634:	4618      	mov	r0, r3
 8007636:	f7ff ffb3 	bl	80075a0 <resetRangeFinder>
 800763a:	4603      	mov	r3, r0
 800763c:	2b01      	cmp	r3, #1
 800763e:	d005      	beq.n	800764c <initRangeFinder+0x24>
 8007640:	4b15      	ldr	r3, [pc, #84]	; (8007698 <initRangeFinder+0x70>)
 8007642:	2201      	movs	r2, #1
 8007644:	f883 2036 	strb.w	r2, [r3, #54]	; 0x36
 8007648:	2300      	movs	r3, #0
 800764a:	e020      	b.n	800768e <initRangeFinder+0x66>
 800764c:	79fb      	ldrb	r3, [r7, #7]
 800764e:	2b09      	cmp	r3, #9
 8007650:	d907      	bls.n	8007662 <initRangeFinder+0x3a>
 8007652:	2029      	movs	r0, #41	; 0x29
 8007654:	f7fe fda0 	bl	8006198 <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode>
 8007658:	4603      	mov	r3, r0
 800765a:	2b01      	cmp	r3, #1
 800765c:	d009      	beq.n	8007672 <initRangeFinder+0x4a>
 800765e:	2300      	movs	r3, #0
 8007660:	e015      	b.n	800768e <initRangeFinder+0x66>
 8007662:	2029      	movs	r0, #41	; 0x29
 8007664:	f7fe fe36 	bl	80062d4 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode>
 8007668:	4603      	mov	r3, r0
 800766a:	2b01      	cmp	r3, #1
 800766c:	d001      	beq.n	8007672 <initRangeFinder+0x4a>
 800766e:	2300      	movs	r3, #0
 8007670:	e00d      	b.n	800768e <initRangeFinder+0x66>
 8007672:	79fb      	ldrb	r3, [r7, #7]
 8007674:	332a      	adds	r3, #42	; 0x2a
 8007676:	73fb      	strb	r3, [r7, #15]
 8007678:	7bfb      	ldrb	r3, [r7, #15]
 800767a:	4619      	mov	r1, r3
 800767c:	2029      	movs	r0, #41	; 0x29
 800767e:	f7fe fec7 	bl	8006410 <rangeFinderChangeAddress>
 8007682:	4603      	mov	r3, r0
 8007684:	2b01      	cmp	r3, #1
 8007686:	d001      	beq.n	800768c <initRangeFinder+0x64>
 8007688:	2300      	movs	r3, #0
 800768a:	e000      	b.n	800768e <initRangeFinder+0x66>
 800768c:	2301      	movs	r3, #1
 800768e:	4618      	mov	r0, r3
 8007690:	3710      	adds	r7, #16
 8007692:	46bd      	mov	sp, r7
 8007694:	bd80      	pop	{r7, pc}
 8007696:	bf00      	nop
 8007698:	20015598 	.word	0x20015598

0800769c <resetExpander>:
 800769c:	b580      	push	{r7, lr}
 800769e:	af00      	add	r7, sp, #0
 80076a0:	2200      	movs	r2, #0
 80076a2:	2100      	movs	r1, #0
 80076a4:	4807      	ldr	r0, [pc, #28]	; (80076c4 <resetExpander+0x28>)
 80076a6:	f7fd fafb 	bl	8004ca0 <gpioPinSetLevel>
 80076aa:	2002      	movs	r0, #2
 80076ac:	f7ff fa42 	bl	8006b34 <delayInTenthOfMs>
 80076b0:	2201      	movs	r2, #1
 80076b2:	2100      	movs	r1, #0
 80076b4:	4803      	ldr	r0, [pc, #12]	; (80076c4 <resetExpander+0x28>)
 80076b6:	f7fd faf3 	bl	8004ca0 <gpioPinSetLevel>
 80076ba:	2002      	movs	r0, #2
 80076bc:	f7ff fa3a 	bl	8006b34 <delayInTenthOfMs>
 80076c0:	bf00      	nop
 80076c2:	bd80      	pop	{r7, pc}
 80076c4:	40020c00 	.word	0x40020c00

080076c8 <powerTurnOnExpander>:
 80076c8:	b580      	push	{r7, lr}
 80076ca:	af00      	add	r7, sp, #0
 80076cc:	2200      	movs	r2, #0
 80076ce:	2103      	movs	r1, #3
 80076d0:	4802      	ldr	r0, [pc, #8]	; (80076dc <powerTurnOnExpander+0x14>)
 80076d2:	f7fd fae5 	bl	8004ca0 <gpioPinSetLevel>
 80076d6:	bf00      	nop
 80076d8:	bd80      	pop	{r7, pc}
 80076da:	bf00      	nop
 80076dc:	40020c00 	.word	0x40020c00

080076e0 <checkExpander>:
 80076e0:	b580      	push	{r7, lr}
 80076e2:	b082      	sub	sp, #8
 80076e4:	af00      	add	r7, sp, #0
 80076e6:	1dfb      	adds	r3, r7, #7
 80076e8:	2221      	movs	r2, #33	; 0x21
 80076ea:	4619      	mov	r1, r3
 80076ec:	2005      	movs	r0, #5
 80076ee:	f000 f89d 	bl	800782c <expanderReadReg>
 80076f2:	4603      	mov	r3, r0
 80076f4:	2b01      	cmp	r3, #1
 80076f6:	d001      	beq.n	80076fc <checkExpander+0x1c>
 80076f8:	2302      	movs	r3, #2
 80076fa:	e005      	b.n	8007708 <checkExpander+0x28>
 80076fc:	79fb      	ldrb	r3, [r7, #7]
 80076fe:	2ba2      	cmp	r3, #162	; 0xa2
 8007700:	d001      	beq.n	8007706 <checkExpander+0x26>
 8007702:	2301      	movs	r3, #1
 8007704:	e000      	b.n	8007708 <checkExpander+0x28>
 8007706:	2300      	movs	r3, #0
 8007708:	4618      	mov	r0, r3
 800770a:	3708      	adds	r7, #8
 800770c:	46bd      	mov	sp, r7
 800770e:	bd80      	pop	{r7, pc}

08007710 <initExpanderOutputMode>:
 8007710:	b580      	push	{r7, lr}
 8007712:	b082      	sub	sp, #8
 8007714:	af00      	add	r7, sp, #0
 8007716:	4603      	mov	r3, r0
 8007718:	71fb      	strb	r3, [r7, #7]
 800771a:	f7ff ffbf 	bl	800769c <resetExpander>
 800771e:	79fb      	ldrb	r3, [r7, #7]
 8007720:	461a      	mov	r2, r3
 8007722:	21a2      	movs	r1, #162	; 0xa2
 8007724:	200a      	movs	r0, #10
 8007726:	f000 f861 	bl	80077ec <expanderWriteReg>
 800772a:	4603      	mov	r3, r0
 800772c:	2b01      	cmp	r3, #1
 800772e:	d001      	beq.n	8007734 <initExpanderOutputMode+0x24>
 8007730:	2300      	movs	r3, #0
 8007732:	e02c      	b.n	800778e <initExpanderOutputMode+0x7e>
 8007734:	79fb      	ldrb	r3, [r7, #7]
 8007736:	461a      	mov	r2, r3
 8007738:	2100      	movs	r1, #0
 800773a:	2000      	movs	r0, #0
 800773c:	f000 f856 	bl	80077ec <expanderWriteReg>
 8007740:	4603      	mov	r3, r0
 8007742:	2b01      	cmp	r3, #1
 8007744:	d001      	beq.n	800774a <initExpanderOutputMode+0x3a>
 8007746:	2300      	movs	r3, #0
 8007748:	e021      	b.n	800778e <initExpanderOutputMode+0x7e>
 800774a:	79fb      	ldrb	r3, [r7, #7]
 800774c:	461a      	mov	r2, r3
 800774e:	2100      	movs	r1, #0
 8007750:	2010      	movs	r0, #16
 8007752:	f000 f84b 	bl	80077ec <expanderWriteReg>
 8007756:	4603      	mov	r3, r0
 8007758:	2b01      	cmp	r3, #1
 800775a:	d001      	beq.n	8007760 <initExpanderOutputMode+0x50>
 800775c:	2300      	movs	r3, #0
 800775e:	e016      	b.n	800778e <initExpanderOutputMode+0x7e>
 8007760:	79fb      	ldrb	r3, [r7, #7]
 8007762:	461a      	mov	r2, r3
 8007764:	2100      	movs	r1, #0
 8007766:	200a      	movs	r0, #10
 8007768:	f000 f840 	bl	80077ec <expanderWriteReg>
 800776c:	4603      	mov	r3, r0
 800776e:	2b01      	cmp	r3, #1
 8007770:	d001      	beq.n	8007776 <initExpanderOutputMode+0x66>
 8007772:	2300      	movs	r3, #0
 8007774:	e00b      	b.n	800778e <initExpanderOutputMode+0x7e>
 8007776:	79fb      	ldrb	r3, [r7, #7]
 8007778:	461a      	mov	r2, r3
 800777a:	2100      	movs	r1, #0
 800777c:	201a      	movs	r0, #26
 800777e:	f000 f835 	bl	80077ec <expanderWriteReg>
 8007782:	4603      	mov	r3, r0
 8007784:	2b01      	cmp	r3, #1
 8007786:	d001      	beq.n	800778c <initExpanderOutputMode+0x7c>
 8007788:	2300      	movs	r3, #0
 800778a:	e000      	b.n	800778e <initExpanderOutputMode+0x7e>
 800778c:	2301      	movs	r3, #1
 800778e:	4618      	mov	r0, r3
 8007790:	3708      	adds	r7, #8
 8007792:	46bd      	mov	sp, r7
 8007794:	bd80      	pop	{r7, pc}
 8007796:	bf00      	nop

08007798 <setExpanderVoltage>:
 8007798:	b580      	push	{r7, lr}
 800779a:	b084      	sub	sp, #16
 800779c:	af00      	add	r7, sp, #0
 800779e:	4603      	mov	r3, r0
 80077a0:	460a      	mov	r2, r1
 80077a2:	80fb      	strh	r3, [r7, #6]
 80077a4:	4613      	mov	r3, r2
 80077a6:	717b      	strb	r3, [r7, #5]
 80077a8:	88fb      	ldrh	r3, [r7, #6]
 80077aa:	73fb      	strb	r3, [r7, #15]
 80077ac:	88fb      	ldrh	r3, [r7, #6]
 80077ae:	0a1b      	lsrs	r3, r3, #8
 80077b0:	b29b      	uxth	r3, r3
 80077b2:	73bb      	strb	r3, [r7, #14]
 80077b4:	797a      	ldrb	r2, [r7, #5]
 80077b6:	7bfb      	ldrb	r3, [r7, #15]
 80077b8:	4619      	mov	r1, r3
 80077ba:	200a      	movs	r0, #10
 80077bc:	f000 f816 	bl	80077ec <expanderWriteReg>
 80077c0:	4603      	mov	r3, r0
 80077c2:	2b01      	cmp	r3, #1
 80077c4:	d001      	beq.n	80077ca <setExpanderVoltage+0x32>
 80077c6:	2300      	movs	r3, #0
 80077c8:	e00b      	b.n	80077e2 <setExpanderVoltage+0x4a>
 80077ca:	797a      	ldrb	r2, [r7, #5]
 80077cc:	7bbb      	ldrb	r3, [r7, #14]
 80077ce:	4619      	mov	r1, r3
 80077d0:	201a      	movs	r0, #26
 80077d2:	f000 f80b 	bl	80077ec <expanderWriteReg>
 80077d6:	4603      	mov	r3, r0
 80077d8:	2b01      	cmp	r3, #1
 80077da:	d001      	beq.n	80077e0 <setExpanderVoltage+0x48>
 80077dc:	2300      	movs	r3, #0
 80077de:	e000      	b.n	80077e2 <setExpanderVoltage+0x4a>
 80077e0:	2301      	movs	r3, #1
 80077e2:	4618      	mov	r0, r3
 80077e4:	3710      	adds	r7, #16
 80077e6:	46bd      	mov	sp, r7
 80077e8:	bd80      	pop	{r7, pc}
 80077ea:	bf00      	nop

080077ec <expanderWriteReg>:
 80077ec:	b580      	push	{r7, lr}
 80077ee:	b084      	sub	sp, #16
 80077f0:	af00      	add	r7, sp, #0
 80077f2:	4603      	mov	r3, r0
 80077f4:	71fb      	strb	r3, [r7, #7]
 80077f6:	460b      	mov	r3, r1
 80077f8:	71bb      	strb	r3, [r7, #6]
 80077fa:	4613      	mov	r3, r2
 80077fc:	717b      	strb	r3, [r7, #5]
 80077fe:	79fb      	ldrb	r3, [r7, #7]
 8007800:	733b      	strb	r3, [r7, #12]
 8007802:	79bb      	ldrb	r3, [r7, #6]
 8007804:	737b      	strb	r3, [r7, #13]
 8007806:	797b      	ldrb	r3, [r7, #5]
 8007808:	f107 010c 	add.w	r1, r7, #12
 800780c:	2202      	movs	r2, #2
 800780e:	4806      	ldr	r0, [pc, #24]	; (8007828 <expanderWriteReg+0x3c>)
 8007810:	f7fd fd5a 	bl	80052c8 <I2CSendBytes>
 8007814:	4603      	mov	r3, r0
 8007816:	2b01      	cmp	r3, #1
 8007818:	d001      	beq.n	800781e <expanderWriteReg+0x32>
 800781a:	2300      	movs	r3, #0
 800781c:	e000      	b.n	8007820 <expanderWriteReg+0x34>
 800781e:	2301      	movs	r3, #1
 8007820:	4618      	mov	r0, r3
 8007822:	3710      	adds	r7, #16
 8007824:	46bd      	mov	sp, r7
 8007826:	bd80      	pop	{r7, pc}
 8007828:	20014dd0 	.word	0x20014dd0

0800782c <expanderReadReg>:
 800782c:	b580      	push	{r7, lr}
 800782e:	b082      	sub	sp, #8
 8007830:	af00      	add	r7, sp, #0
 8007832:	4603      	mov	r3, r0
 8007834:	6039      	str	r1, [r7, #0]
 8007836:	71fb      	strb	r3, [r7, #7]
 8007838:	4613      	mov	r3, r2
 800783a:	71bb      	strb	r3, [r7, #6]
 800783c:	79bb      	ldrb	r3, [r7, #6]
 800783e:	1df9      	adds	r1, r7, #7
 8007840:	2201      	movs	r2, #1
 8007842:	480c      	ldr	r0, [pc, #48]	; (8007874 <expanderReadReg+0x48>)
 8007844:	f7fd fd40 	bl	80052c8 <I2CSendBytes>
 8007848:	4603      	mov	r3, r0
 800784a:	2b01      	cmp	r3, #1
 800784c:	d001      	beq.n	8007852 <expanderReadReg+0x26>
 800784e:	2300      	movs	r3, #0
 8007850:	e00b      	b.n	800786a <expanderReadReg+0x3e>
 8007852:	79bb      	ldrb	r3, [r7, #6]
 8007854:	2201      	movs	r2, #1
 8007856:	6839      	ldr	r1, [r7, #0]
 8007858:	4806      	ldr	r0, [pc, #24]	; (8007874 <expanderReadReg+0x48>)
 800785a:	f7fd fd8b 	bl	8005374 <I2CReadBytes>
 800785e:	4603      	mov	r3, r0
 8007860:	2b01      	cmp	r3, #1
 8007862:	d001      	beq.n	8007868 <expanderReadReg+0x3c>
 8007864:	2300      	movs	r3, #0
 8007866:	e000      	b.n	800786a <expanderReadReg+0x3e>
 8007868:	2301      	movs	r3, #1
 800786a:	4618      	mov	r0, r3
 800786c:	3708      	adds	r7, #8
 800786e:	46bd      	mov	sp, r7
 8007870:	bd80      	pop	{r7, pc}
 8007872:	bf00      	nop
 8007874:	20014dd0 	.word	0x20014dd0

08007878 <incrementPtr>:
 8007878:	b480      	push	{r7}
 800787a:	b085      	sub	sp, #20
 800787c:	af00      	add	r7, sp, #0
 800787e:	6078      	str	r0, [r7, #4]
 8007880:	6039      	str	r1, [r7, #0]
 8007882:	687b      	ldr	r3, [r7, #4]
 8007884:	60bb      	str	r3, [r7, #8]
 8007886:	2300      	movs	r3, #0
 8007888:	60fb      	str	r3, [r7, #12]
 800788a:	e00f      	b.n	80078ac <incrementPtr+0x34>
 800788c:	68bb      	ldr	r3, [r7, #8]
 800788e:	3301      	adds	r3, #1
 8007890:	60bb      	str	r3, [r7, #8]
 8007892:	4b0c      	ldr	r3, [pc, #48]	; (80078c4 <incrementPtr+0x4c>)
 8007894:	781b      	ldrb	r3, [r3, #0]
 8007896:	461a      	mov	r2, r3
 8007898:	4b0b      	ldr	r3, [pc, #44]	; (80078c8 <incrementPtr+0x50>)
 800789a:	441a      	add	r2, r3
 800789c:	68bb      	ldr	r3, [r7, #8]
 800789e:	429a      	cmp	r2, r3
 80078a0:	d801      	bhi.n	80078a6 <incrementPtr+0x2e>
 80078a2:	4b09      	ldr	r3, [pc, #36]	; (80078c8 <incrementPtr+0x50>)
 80078a4:	60bb      	str	r3, [r7, #8]
 80078a6:	68fb      	ldr	r3, [r7, #12]
 80078a8:	3301      	adds	r3, #1
 80078aa:	60fb      	str	r3, [r7, #12]
 80078ac:	68fa      	ldr	r2, [r7, #12]
 80078ae:	683b      	ldr	r3, [r7, #0]
 80078b0:	429a      	cmp	r2, r3
 80078b2:	d3eb      	bcc.n	800788c <incrementPtr+0x14>
 80078b4:	68bb      	ldr	r3, [r7, #8]
 80078b6:	4618      	mov	r0, r3
 80078b8:	3714      	adds	r7, #20
 80078ba:	46bd      	mov	sp, r7
 80078bc:	f85d 7b04 	ldr.w	r7, [sp], #4
 80078c0:	4770      	bx	lr
 80078c2:	bf00      	nop
 80078c4:	20000258 	.word	0x20000258
 80078c8:	200155d4 	.word	0x200155d4

080078cc <USART1_IRQHandler>:
 80078cc:	b580      	push	{r7, lr}
 80078ce:	b082      	sub	sp, #8
 80078d0:	af00      	add	r7, sp, #0
 80078d2:	4b10      	ldr	r3, [pc, #64]	; (8007914 <USART1_IRQHandler+0x48>)
 80078d4:	681b      	ldr	r3, [r3, #0]
 80078d6:	f003 0320 	and.w	r3, r3, #32
 80078da:	2b00      	cmp	r3, #0
 80078dc:	d016      	beq.n	800790c <USART1_IRQHandler+0x40>
 80078de:	4a0d      	ldr	r2, [pc, #52]	; (8007914 <USART1_IRQHandler+0x48>)
 80078e0:	4b0c      	ldr	r3, [pc, #48]	; (8007914 <USART1_IRQHandler+0x48>)
 80078e2:	681b      	ldr	r3, [r3, #0]
 80078e4:	f023 0320 	bic.w	r3, r3, #32
 80078e8:	6013      	str	r3, [r2, #0]
 80078ea:	4b0a      	ldr	r3, [pc, #40]	; (8007914 <USART1_IRQHandler+0x48>)
 80078ec:	685b      	ldr	r3, [r3, #4]
 80078ee:	71fb      	strb	r3, [r7, #7]
 80078f0:	4b09      	ldr	r3, [pc, #36]	; (8007918 <USART1_IRQHandler+0x4c>)
 80078f2:	681b      	ldr	r3, [r3, #0]
 80078f4:	79fa      	ldrb	r2, [r7, #7]
 80078f6:	701a      	strb	r2, [r3, #0]
 80078f8:	4b07      	ldr	r3, [pc, #28]	; (8007918 <USART1_IRQHandler+0x4c>)
 80078fa:	681b      	ldr	r3, [r3, #0]
 80078fc:	2101      	movs	r1, #1
 80078fe:	4618      	mov	r0, r3
 8007900:	f7ff ffba 	bl	8007878 <incrementPtr>
 8007904:	4602      	mov	r2, r0
 8007906:	4b04      	ldr	r3, [pc, #16]	; (8007918 <USART1_IRQHandler+0x4c>)
 8007908:	601a      	str	r2, [r3, #0]
 800790a:	bf00      	nop
 800790c:	3708      	adds	r7, #8
 800790e:	46bd      	mov	sp, r7
 8007910:	bd80      	pop	{r7, pc}
 8007912:	bf00      	nop
 8007914:	40011000 	.word	0x40011000
 8007918:	20000254 	.word	0x20000254

0800791c <matrixMultiplyM2M>:
 800791c:	b480      	push	{r7}
 800791e:	b087      	sub	sp, #28
 8007920:	af00      	add	r7, sp, #0
 8007922:	60f8      	str	r0, [r7, #12]
 8007924:	607b      	str	r3, [r7, #4]
 8007926:	460b      	mov	r3, r1
 8007928:	72fb      	strb	r3, [r7, #11]
 800792a:	4613      	mov	r3, r2
 800792c:	72bb      	strb	r3, [r7, #10]
 800792e:	7aba      	ldrb	r2, [r7, #10]
 8007930:	f897 3020 	ldrb.w	r3, [r7, #32]
 8007934:	429a      	cmp	r2, r3
 8007936:	d004      	beq.n	8007942 <matrixMultiplyM2M+0x26>
 8007938:	6abb      	ldr	r3, [r7, #40]	; 0x28
 800793a:	f04f 0200 	mov.w	r2, #0
 800793e:	601a      	str	r2, [r3, #0]
 8007940:	e04f      	b.n	80079e2 <matrixMultiplyM2M+0xc6>
 8007942:	2300      	movs	r3, #0
 8007944:	74fb      	strb	r3, [r7, #19]
 8007946:	e048      	b.n	80079da <matrixMultiplyM2M+0xbe>
 8007948:	2300      	movs	r3, #0
 800794a:	74bb      	strb	r3, [r7, #18]
 800794c:	e03d      	b.n	80079ca <matrixMultiplyM2M+0xae>
 800794e:	f04f 0300 	mov.w	r3, #0
 8007952:	617b      	str	r3, [r7, #20]
 8007954:	2300      	movs	r3, #0
 8007956:	747b      	strb	r3, [r7, #17]
 8007958:	e023      	b.n	80079a2 <matrixMultiplyM2M+0x86>
 800795a:	7abb      	ldrb	r3, [r7, #10]
 800795c:	7cfa      	ldrb	r2, [r7, #19]
 800795e:	fb02 f303 	mul.w	r3, r2, r3
 8007962:	461a      	mov	r2, r3
 8007964:	7c7b      	ldrb	r3, [r7, #17]
 8007966:	4413      	add	r3, r2
 8007968:	009b      	lsls	r3, r3, #2
 800796a:	68fa      	ldr	r2, [r7, #12]
 800796c:	4413      	add	r3, r2
 800796e:	ed93 7a00 	vldr	s14, [r3]
 8007972:	f897 3024 	ldrb.w	r3, [r7, #36]	; 0x24
 8007976:	7c7a      	ldrb	r2, [r7, #17]
 8007978:	fb02 f303 	mul.w	r3, r2, r3
 800797c:	461a      	mov	r2, r3
 800797e:	7cbb      	ldrb	r3, [r7, #18]
 8007980:	4413      	add	r3, r2
 8007982:	009b      	lsls	r3, r3, #2
 8007984:	687a      	ldr	r2, [r7, #4]
 8007986:	4413      	add	r3, r2
 8007988:	edd3 7a00 	vldr	s15, [r3]
 800798c:	ee67 7a27 	vmul.f32	s15, s14, s15
 8007990:	ed97 7a05 	vldr	s14, [r7, #20]
 8007994:	ee77 7a27 	vadd.f32	s15, s14, s15
 8007998:	edc7 7a05 	vstr	s15, [r7, #20]
 800799c:	7c7b      	ldrb	r3, [r7, #17]
 800799e:	3301      	adds	r3, #1
 80079a0:	747b      	strb	r3, [r7, #17]
 80079a2:	7c7a      	ldrb	r2, [r7, #17]
 80079a4:	7abb      	ldrb	r3, [r7, #10]
 80079a6:	429a      	cmp	r2, r3
 80079a8:	d3d7      	bcc.n	800795a <matrixMultiplyM2M+0x3e>
 80079aa:	f897 3024 	ldrb.w	r3, [r7, #36]	; 0x24
 80079ae:	7cfa      	ldrb	r2, [r7, #19]
 80079b0:	fb02 f303 	mul.w	r3, r2, r3
 80079b4:	461a      	mov	r2, r3
 80079b6:	7cbb      	ldrb	r3, [r7, #18]
 80079b8:	4413      	add	r3, r2
 80079ba:	009b      	lsls	r3, r3, #2
 80079bc:	6aba      	ldr	r2, [r7, #40]	; 0x28
 80079be:	4413      	add	r3, r2
 80079c0:	697a      	ldr	r2, [r7, #20]
 80079c2:	601a      	str	r2, [r3, #0]
 80079c4:	7cbb      	ldrb	r3, [r7, #18]
 80079c6:	3301      	adds	r3, #1
 80079c8:	74bb      	strb	r3, [r7, #18]
 80079ca:	7cba      	ldrb	r2, [r7, #18]
 80079cc:	f897 3024 	ldrb.w	r3, [r7, #36]	; 0x24
 80079d0:	429a      	cmp	r2, r3
 80079d2:	d3bc      	bcc.n	800794e <matrixMultiplyM2M+0x32>
 80079d4:	7cfb      	ldrb	r3, [r7, #19]
 80079d6:	3301      	adds	r3, #1
 80079d8:	74fb      	strb	r3, [r7, #19]
 80079da:	7cfa      	ldrb	r2, [r7, #19]
 80079dc:	7afb      	ldrb	r3, [r7, #11]
 80079de:	429a      	cmp	r2, r3
 80079e0:	d3b2      	bcc.n	8007948 <matrixMultiplyM2M+0x2c>
 80079e2:	bf00      	nop
 80079e4:	371c      	adds	r7, #28
 80079e6:	46bd      	mov	sp, r7
 80079e8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80079ec:	4770      	bx	lr
 80079ee:	bf00      	nop

080079f0 <matrixMultiplyS2M>:
 80079f0:	b480      	push	{r7}
 80079f2:	b087      	sub	sp, #28
 80079f4:	af00      	add	r7, sp, #0
 80079f6:	60f8      	str	r0, [r7, #12]
 80079f8:	ed87 0a01 	vstr	s0, [r7, #4]
 80079fc:	603b      	str	r3, [r7, #0]
 80079fe:	460b      	mov	r3, r1
 8007a00:	72fb      	strb	r3, [r7, #11]
 8007a02:	4613      	mov	r3, r2
 8007a04:	72bb      	strb	r3, [r7, #10]
 8007a06:	2300      	movs	r3, #0
 8007a08:	75fb      	strb	r3, [r7, #23]
 8007a0a:	e028      	b.n	8007a5e <matrixMultiplyS2M+0x6e>
 8007a0c:	2300      	movs	r3, #0
 8007a0e:	75bb      	strb	r3, [r7, #22]
 8007a10:	e01e      	b.n	8007a50 <matrixMultiplyS2M+0x60>
 8007a12:	7dfb      	ldrb	r3, [r7, #23]
 8007a14:	7aba      	ldrb	r2, [r7, #10]
 8007a16:	fb02 f303 	mul.w	r3, r2, r3
 8007a1a:	461a      	mov	r2, r3
 8007a1c:	7dbb      	ldrb	r3, [r7, #22]
 8007a1e:	4413      	add	r3, r2
 8007a20:	009b      	lsls	r3, r3, #2
 8007a22:	683a      	ldr	r2, [r7, #0]
 8007a24:	4413      	add	r3, r2
 8007a26:	7dfa      	ldrb	r2, [r7, #23]
 8007a28:	7ab9      	ldrb	r1, [r7, #10]
 8007a2a:	fb01 f202 	mul.w	r2, r1, r2
 8007a2e:	4611      	mov	r1, r2
 8007a30:	7dba      	ldrb	r2, [r7, #22]
 8007a32:	440a      	add	r2, r1
 8007a34:	0092      	lsls	r2, r2, #2
 8007a36:	68f9      	ldr	r1, [r7, #12]
 8007a38:	440a      	add	r2, r1
 8007a3a:	ed92 7a00 	vldr	s14, [r2]
 8007a3e:	edd7 7a01 	vldr	s15, [r7, #4]
 8007a42:	ee67 7a27 	vmul.f32	s15, s14, s15
 8007a46:	edc3 7a00 	vstr	s15, [r3]
 8007a4a:	7dbb      	ldrb	r3, [r7, #22]
 8007a4c:	3301      	adds	r3, #1
 8007a4e:	75bb      	strb	r3, [r7, #22]
 8007a50:	7dba      	ldrb	r2, [r7, #22]
 8007a52:	7abb      	ldrb	r3, [r7, #10]
 8007a54:	429a      	cmp	r2, r3
 8007a56:	d3dc      	bcc.n	8007a12 <matrixMultiplyS2M+0x22>
 8007a58:	7dfb      	ldrb	r3, [r7, #23]
 8007a5a:	3301      	adds	r3, #1
 8007a5c:	75fb      	strb	r3, [r7, #23]
 8007a5e:	7dfa      	ldrb	r2, [r7, #23]
 8007a60:	7afb      	ldrb	r3, [r7, #11]
 8007a62:	429a      	cmp	r2, r3
 8007a64:	d3d2      	bcc.n	8007a0c <matrixMultiplyS2M+0x1c>
 8007a66:	bf00      	nop
 8007a68:	371c      	adds	r7, #28
 8007a6a:	46bd      	mov	sp, r7
 8007a6c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8007a70:	4770      	bx	lr
 8007a72:	bf00      	nop

08007a74 <matrixPlusMinus>:
 8007a74:	b480      	push	{r7}
 8007a76:	b087      	sub	sp, #28
 8007a78:	af00      	add	r7, sp, #0
 8007a7a:	60f8      	str	r0, [r7, #12]
 8007a7c:	60b9      	str	r1, [r7, #8]
 8007a7e:	4611      	mov	r1, r2
 8007a80:	461a      	mov	r2, r3
 8007a82:	460b      	mov	r3, r1
 8007a84:	71fb      	strb	r3, [r7, #7]
 8007a86:	4613      	mov	r3, r2
 8007a88:	71bb      	strb	r3, [r7, #6]
 8007a8a:	f997 3020 	ldrsb.w	r3, [r7, #32]
 8007a8e:	2b00      	cmp	r3, #0
 8007a90:	db3a      	blt.n	8007b08 <matrixPlusMinus+0x94>
 8007a92:	2300      	movs	r3, #0
 8007a94:	75fb      	strb	r3, [r7, #23]
 8007a96:	e032      	b.n	8007afe <matrixPlusMinus+0x8a>
 8007a98:	2300      	movs	r3, #0
 8007a9a:	75bb      	strb	r3, [r7, #22]
 8007a9c:	e028      	b.n	8007af0 <matrixPlusMinus+0x7c>
 8007a9e:	7dfb      	ldrb	r3, [r7, #23]
 8007aa0:	79ba      	ldrb	r2, [r7, #6]
 8007aa2:	fb02 f303 	mul.w	r3, r2, r3
 8007aa6:	461a      	mov	r2, r3
 8007aa8:	7dbb      	ldrb	r3, [r7, #22]
 8007aaa:	4413      	add	r3, r2
 8007aac:	009b      	lsls	r3, r3, #2
 8007aae:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8007ab0:	4413      	add	r3, r2
 8007ab2:	7dfa      	ldrb	r2, [r7, #23]
 8007ab4:	79b9      	ldrb	r1, [r7, #6]
 8007ab6:	fb01 f202 	mul.w	r2, r1, r2
 8007aba:	4611      	mov	r1, r2
 8007abc:	7dba      	ldrb	r2, [r7, #22]
 8007abe:	440a      	add	r2, r1
 8007ac0:	0092      	lsls	r2, r2, #2
 8007ac2:	68f9      	ldr	r1, [r7, #12]
 8007ac4:	440a      	add	r2, r1
 8007ac6:	ed92 7a00 	vldr	s14, [r2]
 8007aca:	7dfa      	ldrb	r2, [r7, #23]
 8007acc:	79b9      	ldrb	r1, [r7, #6]
 8007ace:	fb01 f202 	mul.w	r2, r1, r2
 8007ad2:	4611      	mov	r1, r2
 8007ad4:	7dba      	ldrb	r2, [r7, #22]
 8007ad6:	440a      	add	r2, r1
 8007ad8:	0092      	lsls	r2, r2, #2
 8007ada:	68b9      	ldr	r1, [r7, #8]
 8007adc:	440a      	add	r2, r1
 8007ade:	edd2 7a00 	vldr	s15, [r2]
 8007ae2:	ee77 7a27 	vadd.f32	s15, s14, s15
 8007ae6:	edc3 7a00 	vstr	s15, [r3]
 8007aea:	7dbb      	ldrb	r3, [r7, #22]
 8007aec:	3301      	adds	r3, #1
 8007aee:	75bb      	strb	r3, [r7, #22]
 8007af0:	7dba      	ldrb	r2, [r7, #22]
 8007af2:	79bb      	ldrb	r3, [r7, #6]
 8007af4:	429a      	cmp	r2, r3
 8007af6:	d3d2      	bcc.n	8007a9e <matrixPlusMinus+0x2a>
 8007af8:	7dfb      	ldrb	r3, [r7, #23]
 8007afa:	3301      	adds	r3, #1
 8007afc:	75fb      	strb	r3, [r7, #23]
 8007afe:	7dfa      	ldrb	r2, [r7, #23]
 8007b00:	79fb      	ldrb	r3, [r7, #7]
 8007b02:	429a      	cmp	r2, r3
 8007b04:	d3c8      	bcc.n	8007a98 <matrixPlusMinus+0x24>
 8007b06:	e039      	b.n	8007b7c <matrixPlusMinus+0x108>
 8007b08:	2300      	movs	r3, #0
 8007b0a:	75fb      	strb	r3, [r7, #23]
 8007b0c:	e032      	b.n	8007b74 <matrixPlusMinus+0x100>
 8007b0e:	2300      	movs	r3, #0
 8007b10:	75bb      	strb	r3, [r7, #22]
 8007b12:	e028      	b.n	8007b66 <matrixPlusMinus+0xf2>
 8007b14:	7dfb      	ldrb	r3, [r7, #23]
 8007b16:	79ba      	ldrb	r2, [r7, #6]
 8007b18:	fb02 f303 	mul.w	r3, r2, r3
 8007b1c:	461a      	mov	r2, r3
 8007b1e:	7dbb      	ldrb	r3, [r7, #22]
 8007b20:	4413      	add	r3, r2
 8007b22:	009b      	lsls	r3, r3, #2
 8007b24:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8007b26:	4413      	add	r3, r2
 8007b28:	7dfa      	ldrb	r2, [r7, #23]
 8007b2a:	79b9      	ldrb	r1, [r7, #6]
 8007b2c:	fb01 f202 	mul.w	r2, r1, r2
 8007b30:	4611      	mov	r1, r2
 8007b32:	7dba      	ldrb	r2, [r7, #22]
 8007b34:	440a      	add	r2, r1
 8007b36:	0092      	lsls	r2, r2, #2
 8007b38:	68f9      	ldr	r1, [r7, #12]
 8007b3a:	440a      	add	r2, r1
 8007b3c:	ed92 7a00 	vldr	s14, [r2]
 8007b40:	7dfa      	ldrb	r2, [r7, #23]
 8007b42:	79b9      	ldrb	r1, [r7, #6]
 8007b44:	fb01 f202 	mul.w	r2, r1, r2
 8007b48:	4611      	mov	r1, r2
 8007b4a:	7dba      	ldrb	r2, [r7, #22]
 8007b4c:	440a      	add	r2, r1
 8007b4e:	0092      	lsls	r2, r2, #2
 8007b50:	68b9      	ldr	r1, [r7, #8]
 8007b52:	440a      	add	r2, r1
 8007b54:	edd2 7a00 	vldr	s15, [r2]
 8007b58:	ee77 7a67 	vsub.f32	s15, s14, s15
 8007b5c:	edc3 7a00 	vstr	s15, [r3]
 8007b60:	7dbb      	ldrb	r3, [r7, #22]
 8007b62:	3301      	adds	r3, #1
 8007b64:	75bb      	strb	r3, [r7, #22]
 8007b66:	7dba      	ldrb	r2, [r7, #22]
 8007b68:	79bb      	ldrb	r3, [r7, #6]
 8007b6a:	429a      	cmp	r2, r3
 8007b6c:	d3d2      	bcc.n	8007b14 <matrixPlusMinus+0xa0>
 8007b6e:	7dfb      	ldrb	r3, [r7, #23]
 8007b70:	3301      	adds	r3, #1
 8007b72:	75fb      	strb	r3, [r7, #23]
 8007b74:	7dfa      	ldrb	r2, [r7, #23]
 8007b76:	79fb      	ldrb	r3, [r7, #7]
 8007b78:	429a      	cmp	r2, r3
 8007b7a:	d3c8      	bcc.n	8007b0e <matrixPlusMinus+0x9a>
 8007b7c:	bf00      	nop
 8007b7e:	371c      	adds	r7, #28
 8007b80:	46bd      	mov	sp, r7
 8007b82:	f85d 7b04 	ldr.w	r7, [sp], #4
 8007b86:	4770      	bx	lr

08007b88 <TIM5_IRQHandler>:
 8007b88:	b580      	push	{r7, lr}
 8007b8a:	af00      	add	r7, sp, #0
 8007b8c:	4b10      	ldr	r3, [pc, #64]	; (8007bd0 <TIM5_IRQHandler+0x48>)
 8007b8e:	691b      	ldr	r3, [r3, #16]
 8007b90:	f003 0301 	and.w	r3, r3, #1
 8007b94:	2b00      	cmp	r3, #0
 8007b96:	d019      	beq.n	8007bcc <TIM5_IRQHandler+0x44>
 8007b98:	2101      	movs	r1, #1
 8007b9a:	480d      	ldr	r0, [pc, #52]	; (8007bd0 <TIM5_IRQHandler+0x48>)
 8007b9c:	f7fd fdf6 	bl	800578c <timClearStatusRegisterFlag>
 8007ba0:	490c      	ldr	r1, [pc, #48]	; (8007bd4 <TIM5_IRQHandler+0x4c>)
 8007ba2:	2000      	movs	r0, #0
 8007ba4:	f000 f8b8 	bl	8007d18 <execManipTasks>
 8007ba8:	490b      	ldr	r1, [pc, #44]	; (8007bd8 <TIM5_IRQHandler+0x50>)
 8007baa:	2001      	movs	r0, #1
 8007bac:	f000 f8b4 	bl	8007d18 <execManipTasks>
 8007bb0:	490a      	ldr	r1, [pc, #40]	; (8007bdc <TIM5_IRQHandler+0x54>)
 8007bb2:	2002      	movs	r0, #2
 8007bb4:	f000 f8b0 	bl	8007d18 <execManipTasks>
 8007bb8:	4809      	ldr	r0, [pc, #36]	; (8007be0 <TIM5_IRQHandler+0x58>)
 8007bba:	f000 f857 	bl	8007c6c <checkPosServo>
 8007bbe:	4809      	ldr	r0, [pc, #36]	; (8007be4 <TIM5_IRQHandler+0x5c>)
 8007bc0:	f000 f854 	bl	8007c6c <checkPosServo>
 8007bc4:	4808      	ldr	r0, [pc, #32]	; (8007be8 <TIM5_IRQHandler+0x60>)
 8007bc6:	f000 f851 	bl	8007c6c <checkPosServo>
 8007bca:	bf00      	nop
 8007bcc:	bf00      	nop
 8007bce:	bd80      	pop	{r7, pc}
 8007bd0:	40000c00 	.word	0x40000c00
 8007bd4:	200156fc 	.word	0x200156fc
 8007bd8:	20015724 	.word	0x20015724
 8007bdc:	2001574c 	.word	0x2001574c
 8007be0:	200156c0 	.word	0x200156c0
 8007be4:	200156d4 	.word	0x200156d4
 8007be8:	200156e8 	.word	0x200156e8

08007bec <setServoAngleWithRetries>:
 8007bec:	b580      	push	{r7, lr}
 8007bee:	b084      	sub	sp, #16
 8007bf0:	af00      	add	r7, sp, #0
 8007bf2:	4603      	mov	r3, r0
 8007bf4:	460a      	mov	r2, r1
 8007bf6:	71fb      	strb	r3, [r7, #7]
 8007bf8:	4613      	mov	r3, r2
 8007bfa:	80bb      	strh	r3, [r7, #4]
 8007bfc:	2300      	movs	r3, #0
 8007bfe:	73fb      	strb	r3, [r7, #15]
 8007c00:	e00d      	b.n	8007c1e <setServoAngleWithRetries+0x32>
 8007c02:	88ba      	ldrh	r2, [r7, #4]
 8007c04:	79fb      	ldrb	r3, [r7, #7]
 8007c06:	4611      	mov	r1, r2
 8007c08:	4618      	mov	r0, r3
 8007c0a:	f7ff f907 	bl	8006e1c <setServoAngle>
 8007c0e:	4603      	mov	r3, r0
 8007c10:	2b00      	cmp	r3, #0
 8007c12:	d001      	beq.n	8007c18 <setServoAngleWithRetries+0x2c>
 8007c14:	2301      	movs	r3, #1
 8007c16:	e006      	b.n	8007c26 <setServoAngleWithRetries+0x3a>
 8007c18:	7bfb      	ldrb	r3, [r7, #15]
 8007c1a:	3301      	adds	r3, #1
 8007c1c:	73fb      	strb	r3, [r7, #15]
 8007c1e:	7bfb      	ldrb	r3, [r7, #15]
 8007c20:	2b09      	cmp	r3, #9
 8007c22:	d9ee      	bls.n	8007c02 <setServoAngleWithRetries+0x16>
 8007c24:	2300      	movs	r3, #0
 8007c26:	4618      	mov	r0, r3
 8007c28:	3710      	adds	r7, #16
 8007c2a:	46bd      	mov	sp, r7
 8007c2c:	bd80      	pop	{r7, pc}
 8007c2e:	bf00      	nop

08007c30 <getServoAngleWithRetries>:
 8007c30:	b580      	push	{r7, lr}
 8007c32:	b084      	sub	sp, #16
 8007c34:	af00      	add	r7, sp, #0
 8007c36:	4603      	mov	r3, r0
 8007c38:	6039      	str	r1, [r7, #0]
 8007c3a:	71fb      	strb	r3, [r7, #7]
 8007c3c:	2300      	movs	r3, #0
 8007c3e:	73fb      	strb	r3, [r7, #15]
 8007c40:	e00c      	b.n	8007c5c <getServoAngleWithRetries+0x2c>
 8007c42:	79fb      	ldrb	r3, [r7, #7]
 8007c44:	6839      	ldr	r1, [r7, #0]
 8007c46:	4618      	mov	r0, r3
 8007c48:	f7ff f92c 	bl	8006ea4 <getServoAngle>
 8007c4c:	4603      	mov	r3, r0
 8007c4e:	2b00      	cmp	r3, #0
 8007c50:	d001      	beq.n	8007c56 <getServoAngleWithRetries+0x26>
 8007c52:	2301      	movs	r3, #1
 8007c54:	e006      	b.n	8007c64 <getServoAngleWithRetries+0x34>
 8007c56:	7bfb      	ldrb	r3, [r7, #15]
 8007c58:	3301      	adds	r3, #1
 8007c5a:	73fb      	strb	r3, [r7, #15]
 8007c5c:	7bfb      	ldrb	r3, [r7, #15]
 8007c5e:	2b09      	cmp	r3, #9
 8007c60:	d9ef      	bls.n	8007c42 <getServoAngleWithRetries+0x12>
 8007c62:	2300      	movs	r3, #0
 8007c64:	4618      	mov	r0, r3
 8007c66:	3710      	adds	r7, #16
 8007c68:	46bd      	mov	sp, r7
 8007c6a:	bd80      	pop	{r7, pc}

08007c6c <checkPosServo>:
 8007c6c:	b580      	push	{r7, lr}
 8007c6e:	b084      	sub	sp, #16
 8007c70:	af00      	add	r7, sp, #0
 8007c72:	6078      	str	r0, [r7, #4]
 8007c74:	687b      	ldr	r3, [r7, #4]
 8007c76:	7c1b      	ldrb	r3, [r3, #16]
 8007c78:	2b01      	cmp	r3, #1
 8007c7a:	d131      	bne.n	8007ce0 <checkPosServo+0x74>
 8007c7c:	687b      	ldr	r3, [r7, #4]
 8007c7e:	781b      	ldrb	r3, [r3, #0]
 8007c80:	f107 020c 	add.w	r2, r7, #12
 8007c84:	4611      	mov	r1, r2
 8007c86:	4618      	mov	r0, r3
 8007c88:	f7ff ffd2 	bl	8007c30 <getServoAngleWithRetries>
 8007c8c:	4603      	mov	r3, r0
 8007c8e:	2b00      	cmp	r3, #0
 8007c90:	d103      	bne.n	8007c9a <checkPosServo+0x2e>
 8007c92:	687b      	ldr	r3, [r7, #4]
 8007c94:	2203      	movs	r2, #3
 8007c96:	741a      	strb	r2, [r3, #16]
 8007c98:	e023      	b.n	8007ce2 <checkPosServo+0x76>
 8007c9a:	687b      	ldr	r3, [r7, #4]
 8007c9c:	ed93 7a02 	vldr	s14, [r3, #8]
 8007ca0:	edd7 7a03 	vldr	s15, [r7, #12]
 8007ca4:	ee77 7a67 	vsub.f32	s15, s14, s15
 8007ca8:	eef0 7ae7 	vabs.f32	s15, s15
 8007cac:	eeb2 7a04 	vmov.f32	s14, #36	; 0x41200000  10.0
 8007cb0:	eef4 7ac7 	vcmpe.f32	s15, s14
 8007cb4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8007cb8:	d503      	bpl.n	8007cc2 <checkPosServo+0x56>
 8007cba:	687b      	ldr	r3, [r7, #4]
 8007cbc:	2202      	movs	r2, #2
 8007cbe:	741a      	strb	r2, [r3, #16]
 8007cc0:	e00f      	b.n	8007ce2 <checkPosServo+0x76>
 8007cc2:	687b      	ldr	r3, [r7, #4]
 8007cc4:	685b      	ldr	r3, [r3, #4]
 8007cc6:	f244 6150 	movw	r1, #18000	; 0x4650
 8007cca:	4618      	mov	r0, r3
 8007ccc:	f7fe ff1e 	bl	8006b0c <checkTimeout>
 8007cd0:	4603      	mov	r3, r0
 8007cd2:	2b00      	cmp	r3, #0
 8007cd4:	d004      	beq.n	8007ce0 <checkPosServo+0x74>
 8007cd6:	687b      	ldr	r3, [r7, #4]
 8007cd8:	2204      	movs	r2, #4
 8007cda:	741a      	strb	r2, [r3, #16]
 8007cdc:	bf00      	nop
 8007cde:	e000      	b.n	8007ce2 <checkPosServo+0x76>
 8007ce0:	bf00      	nop
 8007ce2:	3710      	adds	r7, #16
 8007ce4:	46bd      	mov	sp, r7
 8007ce6:	bd80      	pop	{r7, pc}

08007ce8 <resetChecker>:
 8007ce8:	b480      	push	{r7}
 8007cea:	b083      	sub	sp, #12
 8007cec:	af00      	add	r7, sp, #0
 8007cee:	6078      	str	r0, [r7, #4]
 8007cf0:	687b      	ldr	r3, [r7, #4]
 8007cf2:	2200      	movs	r2, #0
 8007cf4:	605a      	str	r2, [r3, #4]
 8007cf6:	687b      	ldr	r3, [r7, #4]
 8007cf8:	2200      	movs	r2, #0
 8007cfa:	701a      	strb	r2, [r3, #0]
 8007cfc:	687b      	ldr	r3, [r7, #4]
 8007cfe:	f04f 0200 	mov.w	r2, #0
 8007d02:	609a      	str	r2, [r3, #8]
 8007d04:	687b      	ldr	r3, [r7, #4]
 8007d06:	2200      	movs	r2, #0
 8007d08:	741a      	strb	r2, [r3, #16]
 8007d0a:	bf00      	nop
 8007d0c:	370c      	adds	r7, #12
 8007d0e:	46bd      	mov	sp, r7
 8007d10:	f85d 7b04 	ldr.w	r7, [sp], #4
 8007d14:	4770      	bx	lr
 8007d16:	bf00      	nop

08007d18 <execManipTasks>:
 8007d18:	b580      	push	{r7, lr}
 8007d1a:	b084      	sub	sp, #16
 8007d1c:	af00      	add	r7, sp, #0
 8007d1e:	4603      	mov	r3, r0
 8007d20:	6039      	str	r1, [r7, #0]
 8007d22:	71fb      	strb	r3, [r7, #7]
 8007d24:	683b      	ldr	r3, [r7, #0]
 8007d26:	f893 3024 	ldrb.w	r3, [r3, #36]	; 0x24
 8007d2a:	2b01      	cmp	r3, #1
 8007d2c:	d176      	bne.n	8007e1c <execManipTasks+0x104>
 8007d2e:	79fa      	ldrb	r2, [r7, #7]
 8007d30:	493c      	ldr	r1, [pc, #240]	; (8007e24 <execManipTasks+0x10c>)
 8007d32:	4613      	mov	r3, r2
 8007d34:	009b      	lsls	r3, r3, #2
 8007d36:	4413      	add	r3, r2
 8007d38:	009b      	lsls	r3, r3, #2
 8007d3a:	440b      	add	r3, r1
 8007d3c:	3310      	adds	r3, #16
 8007d3e:	781b      	ldrb	r3, [r3, #0]
 8007d40:	73fb      	strb	r3, [r7, #15]
 8007d42:	7bfb      	ldrb	r3, [r7, #15]
 8007d44:	2b05      	cmp	r3, #5
 8007d46:	d869      	bhi.n	8007e1c <execManipTasks+0x104>
 8007d48:	a201      	add	r2, pc, #4	; (adr r2, 8007d50 <execManipTasks+0x38>)
 8007d4a:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8007d4e:	bf00      	nop
 8007d50:	08007d69 	.word	0x08007d69
 8007d54:	08007d7b 	.word	0x08007d7b
 8007d58:	08007d83 	.word	0x08007d83
 8007d5c:	08007dc1 	.word	0x08007dc1
 8007d60:	08007ddf 	.word	0x08007ddf
 8007d64:	08007dfd 	.word	0x08007dfd
 8007d68:	79fb      	ldrb	r3, [r7, #7]
 8007d6a:	6839      	ldr	r1, [r7, #0]
 8007d6c:	4618      	mov	r0, r3
 8007d6e:	f000 f85d 	bl	8007e2c <execManipSubtasks>
 8007d72:	482d      	ldr	r0, [pc, #180]	; (8007e28 <execManipTasks+0x110>)
 8007d74:	f7fd fce4 	bl	8005740 <timEnable>
 8007d78:	e04f      	b.n	8007e1a <execManipTasks+0x102>
 8007d7a:	482b      	ldr	r0, [pc, #172]	; (8007e28 <execManipTasks+0x110>)
 8007d7c:	f7fd fce0 	bl	8005740 <timEnable>
 8007d80:	e04b      	b.n	8007e1a <execManipTasks+0x102>
 8007d82:	683b      	ldr	r3, [r7, #0]
 8007d84:	6a1b      	ldr	r3, [r3, #32]
 8007d86:	1c5a      	adds	r2, r3, #1
 8007d88:	683b      	ldr	r3, [r7, #0]
 8007d8a:	621a      	str	r2, [r3, #32]
 8007d8c:	683b      	ldr	r3, [r7, #0]
 8007d8e:	6a1b      	ldr	r3, [r3, #32]
 8007d90:	781b      	ldrb	r3, [r3, #0]
 8007d92:	2b0c      	cmp	r3, #12
 8007d94:	d10e      	bne.n	8007db4 <execManipTasks+0x9c>
 8007d96:	683b      	ldr	r3, [r7, #0]
 8007d98:	2200      	movs	r2, #0
 8007d9a:	f883 2024 	strb.w	r2, [r3, #36]	; 0x24
 8007d9e:	79fa      	ldrb	r2, [r7, #7]
 8007da0:	4613      	mov	r3, r2
 8007da2:	009b      	lsls	r3, r3, #2
 8007da4:	4413      	add	r3, r2
 8007da6:	009b      	lsls	r3, r3, #2
 8007da8:	4a1e      	ldr	r2, [pc, #120]	; (8007e24 <execManipTasks+0x10c>)
 8007daa:	4413      	add	r3, r2
 8007dac:	4618      	mov	r0, r3
 8007dae:	f7ff ff9b 	bl	8007ce8 <resetChecker>
 8007db2:	e032      	b.n	8007e1a <execManipTasks+0x102>
 8007db4:	79fb      	ldrb	r3, [r7, #7]
 8007db6:	6839      	ldr	r1, [r7, #0]
 8007db8:	4618      	mov	r0, r3
 8007dba:	f000 f837 	bl	8007e2c <execManipSubtasks>
 8007dbe:	e02c      	b.n	8007e1a <execManipTasks+0x102>
 8007dc0:	683b      	ldr	r3, [r7, #0]
 8007dc2:	2202      	movs	r2, #2
 8007dc4:	f883 2024 	strb.w	r2, [r3, #36]	; 0x24
 8007dc8:	79fa      	ldrb	r2, [r7, #7]
 8007dca:	4613      	mov	r3, r2
 8007dcc:	009b      	lsls	r3, r3, #2
 8007dce:	4413      	add	r3, r2
 8007dd0:	009b      	lsls	r3, r3, #2
 8007dd2:	4a14      	ldr	r2, [pc, #80]	; (8007e24 <execManipTasks+0x10c>)
 8007dd4:	4413      	add	r3, r2
 8007dd6:	4618      	mov	r0, r3
 8007dd8:	f7ff ff86 	bl	8007ce8 <resetChecker>
 8007ddc:	e01d      	b.n	8007e1a <execManipTasks+0x102>
 8007dde:	683b      	ldr	r3, [r7, #0]
 8007de0:	2203      	movs	r2, #3
 8007de2:	f883 2024 	strb.w	r2, [r3, #36]	; 0x24
 8007de6:	79fa      	ldrb	r2, [r7, #7]
 8007de8:	4613      	mov	r3, r2
 8007dea:	009b      	lsls	r3, r3, #2
 8007dec:	4413      	add	r3, r2
 8007dee:	009b      	lsls	r3, r3, #2
 8007df0:	4a0c      	ldr	r2, [pc, #48]	; (8007e24 <execManipTasks+0x10c>)
 8007df2:	4413      	add	r3, r2
 8007df4:	4618      	mov	r0, r3
 8007df6:	f7ff ff77 	bl	8007ce8 <resetChecker>
 8007dfa:	e00e      	b.n	8007e1a <execManipTasks+0x102>
 8007dfc:	683b      	ldr	r3, [r7, #0]
 8007dfe:	2204      	movs	r2, #4
 8007e00:	f883 2024 	strb.w	r2, [r3, #36]	; 0x24
 8007e04:	79fa      	ldrb	r2, [r7, #7]
 8007e06:	4613      	mov	r3, r2
 8007e08:	009b      	lsls	r3, r3, #2
 8007e0a:	4413      	add	r3, r2
 8007e0c:	009b      	lsls	r3, r3, #2
 8007e0e:	4a05      	ldr	r2, [pc, #20]	; (8007e24 <execManipTasks+0x10c>)
 8007e10:	4413      	add	r3, r2
 8007e12:	4618      	mov	r0, r3
 8007e14:	f7ff ff68 	bl	8007ce8 <resetChecker>
 8007e18:	bf00      	nop
 8007e1a:	bf00      	nop
 8007e1c:	bf00      	nop
 8007e1e:	3710      	adds	r7, #16
 8007e20:	46bd      	mov	sp, r7
 8007e22:	bd80      	pop	{r7, pc}
 8007e24:	200156c0 	.word	0x200156c0
 8007e28:	40000c00 	.word	0x40000c00

08007e2c <execManipSubtasks>:
 8007e2c:	b590      	push	{r4, r7, lr}
 8007e2e:	b085      	sub	sp, #20
 8007e30:	af00      	add	r7, sp, #0
 8007e32:	4603      	mov	r3, r0
 8007e34:	6039      	str	r1, [r7, #0]
 8007e36:	71fb      	strb	r3, [r7, #7]
 8007e38:	683b      	ldr	r3, [r7, #0]
 8007e3a:	6a1b      	ldr	r3, [r3, #32]
 8007e3c:	781b      	ldrb	r3, [r3, #0]
 8007e3e:	733b      	strb	r3, [r7, #12]
 8007e40:	7b3b      	ldrb	r3, [r7, #12]
 8007e42:	2b0c      	cmp	r3, #12
 8007e44:	d875      	bhi.n	8007f32 <execManipSubtasks+0x106>
 8007e46:	a201      	add	r2, pc, #4	; (adr r2, 8007e4c <execManipSubtasks+0x20>)
 8007e48:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8007e4c:	08007e81 	.word	0x08007e81
 8007e50:	08007e8f 	.word	0x08007e8f
 8007e54:	08007e9d 	.word	0x08007e9d
 8007e58:	08007eab 	.word	0x08007eab
 8007e5c:	08007eb9 	.word	0x08007eb9
 8007e60:	08007ec7 	.word	0x08007ec7
 8007e64:	08007ed5 	.word	0x08007ed5
 8007e68:	08007ee3 	.word	0x08007ee3
 8007e6c:	08007ef1 	.word	0x08007ef1
 8007e70:	08007eff 	.word	0x08007eff
 8007e74:	08007f0d 	.word	0x08007f0d
 8007e78:	08007f1b 	.word	0x08007f1b
 8007e7c:	08007f29 	.word	0x08007f29
 8007e80:	683b      	ldr	r3, [r7, #0]
 8007e82:	781b      	ldrb	r3, [r3, #0]
 8007e84:	737b      	strb	r3, [r7, #13]
 8007e86:	683b      	ldr	r3, [r7, #0]
 8007e88:	885b      	ldrh	r3, [r3, #2]
 8007e8a:	81fb      	strh	r3, [r7, #14]
 8007e8c:	e051      	b.n	8007f32 <execManipSubtasks+0x106>
 8007e8e:	683b      	ldr	r3, [r7, #0]
 8007e90:	781b      	ldrb	r3, [r3, #0]
 8007e92:	737b      	strb	r3, [r7, #13]
 8007e94:	683b      	ldr	r3, [r7, #0]
 8007e96:	889b      	ldrh	r3, [r3, #4]
 8007e98:	81fb      	strh	r3, [r7, #14]
 8007e9a:	e04a      	b.n	8007f32 <execManipSubtasks+0x106>
 8007e9c:	683b      	ldr	r3, [r7, #0]
 8007e9e:	799b      	ldrb	r3, [r3, #6]
 8007ea0:	737b      	strb	r3, [r7, #13]
 8007ea2:	683b      	ldr	r3, [r7, #0]
 8007ea4:	895b      	ldrh	r3, [r3, #10]
 8007ea6:	81fb      	strh	r3, [r7, #14]
 8007ea8:	e043      	b.n	8007f32 <execManipSubtasks+0x106>
 8007eaa:	683b      	ldr	r3, [r7, #0]
 8007eac:	799b      	ldrb	r3, [r3, #6]
 8007eae:	737b      	strb	r3, [r7, #13]
 8007eb0:	683b      	ldr	r3, [r7, #0]
 8007eb2:	8a1b      	ldrh	r3, [r3, #16]
 8007eb4:	81fb      	strh	r3, [r7, #14]
 8007eb6:	e03c      	b.n	8007f32 <execManipSubtasks+0x106>
 8007eb8:	683b      	ldr	r3, [r7, #0]
 8007eba:	799b      	ldrb	r3, [r3, #6]
 8007ebc:	737b      	strb	r3, [r7, #13]
 8007ebe:	683b      	ldr	r3, [r7, #0]
 8007ec0:	891b      	ldrh	r3, [r3, #8]
 8007ec2:	81fb      	strh	r3, [r7, #14]
 8007ec4:	e035      	b.n	8007f32 <execManipSubtasks+0x106>
 8007ec6:	683b      	ldr	r3, [r7, #0]
 8007ec8:	799b      	ldrb	r3, [r3, #6]
 8007eca:	737b      	strb	r3, [r7, #13]
 8007ecc:	683b      	ldr	r3, [r7, #0]
 8007ece:	899b      	ldrh	r3, [r3, #12]
 8007ed0:	81fb      	strh	r3, [r7, #14]
 8007ed2:	e02e      	b.n	8007f32 <execManipSubtasks+0x106>
 8007ed4:	683b      	ldr	r3, [r7, #0]
 8007ed6:	799b      	ldrb	r3, [r3, #6]
 8007ed8:	737b      	strb	r3, [r7, #13]
 8007eda:	683b      	ldr	r3, [r7, #0]
 8007edc:	89db      	ldrh	r3, [r3, #14]
 8007ede:	81fb      	strh	r3, [r7, #14]
 8007ee0:	e027      	b.n	8007f32 <execManipSubtasks+0x106>
 8007ee2:	683b      	ldr	r3, [r7, #0]
 8007ee4:	7c9b      	ldrb	r3, [r3, #18]
 8007ee6:	737b      	strb	r3, [r7, #13]
 8007ee8:	683b      	ldr	r3, [r7, #0]
 8007eea:	8a9b      	ldrh	r3, [r3, #20]
 8007eec:	81fb      	strh	r3, [r7, #14]
 8007eee:	e020      	b.n	8007f32 <execManipSubtasks+0x106>
 8007ef0:	683b      	ldr	r3, [r7, #0]
 8007ef2:	7c9b      	ldrb	r3, [r3, #18]
 8007ef4:	737b      	strb	r3, [r7, #13]
 8007ef6:	683b      	ldr	r3, [r7, #0]
 8007ef8:	8adb      	ldrh	r3, [r3, #22]
 8007efa:	81fb      	strh	r3, [r7, #14]
 8007efc:	e019      	b.n	8007f32 <execManipSubtasks+0x106>
 8007efe:	683b      	ldr	r3, [r7, #0]
 8007f00:	7c9b      	ldrb	r3, [r3, #18]
 8007f02:	737b      	strb	r3, [r7, #13]
 8007f04:	683b      	ldr	r3, [r7, #0]
 8007f06:	8b1b      	ldrh	r3, [r3, #24]
 8007f08:	81fb      	strh	r3, [r7, #14]
 8007f0a:	e012      	b.n	8007f32 <execManipSubtasks+0x106>
 8007f0c:	683b      	ldr	r3, [r7, #0]
 8007f0e:	7e9b      	ldrb	r3, [r3, #26]
 8007f10:	737b      	strb	r3, [r7, #13]
 8007f12:	683b      	ldr	r3, [r7, #0]
 8007f14:	8bdb      	ldrh	r3, [r3, #30]
 8007f16:	81fb      	strh	r3, [r7, #14]
 8007f18:	e00b      	b.n	8007f32 <execManipSubtasks+0x106>
 8007f1a:	683b      	ldr	r3, [r7, #0]
 8007f1c:	7e9b      	ldrb	r3, [r3, #26]
 8007f1e:	737b      	strb	r3, [r7, #13]
 8007f20:	683b      	ldr	r3, [r7, #0]
 8007f22:	8b9b      	ldrh	r3, [r3, #28]
 8007f24:	81fb      	strh	r3, [r7, #14]
 8007f26:	e004      	b.n	8007f32 <execManipSubtasks+0x106>
 8007f28:	683b      	ldr	r3, [r7, #0]
 8007f2a:	2205      	movs	r2, #5
 8007f2c:	f883 2024 	strb.w	r2, [r3, #36]	; 0x24
 8007f30:	e076      	b.n	8008020 <execManipSubtasks+0x1f4>
 8007f32:	f107 0208 	add.w	r2, r7, #8
 8007f36:	7b7b      	ldrb	r3, [r7, #13]
 8007f38:	4611      	mov	r1, r2
 8007f3a:	4618      	mov	r0, r3
 8007f3c:	f7ff fe78 	bl	8007c30 <getServoAngleWithRetries>
 8007f40:	4603      	mov	r3, r0
 8007f42:	2b00      	cmp	r3, #0
 8007f44:	d10e      	bne.n	8007f64 <execManipSubtasks+0x138>
 8007f46:	683b      	ldr	r3, [r7, #0]
 8007f48:	2202      	movs	r2, #2
 8007f4a:	f883 2024 	strb.w	r2, [r3, #36]	; 0x24
 8007f4e:	79fa      	ldrb	r2, [r7, #7]
 8007f50:	4613      	mov	r3, r2
 8007f52:	009b      	lsls	r3, r3, #2
 8007f54:	4413      	add	r3, r2
 8007f56:	009b      	lsls	r3, r3, #2
 8007f58:	4a33      	ldr	r2, [pc, #204]	; (8008028 <execManipSubtasks+0x1fc>)
 8007f5a:	4413      	add	r3, r2
 8007f5c:	4618      	mov	r0, r3
 8007f5e:	f7ff fec3 	bl	8007ce8 <resetChecker>
 8007f62:	e05d      	b.n	8008020 <execManipSubtasks+0x1f4>
 8007f64:	89fa      	ldrh	r2, [r7, #14]
 8007f66:	7b7b      	ldrb	r3, [r7, #13]
 8007f68:	4611      	mov	r1, r2
 8007f6a:	4618      	mov	r0, r3
 8007f6c:	f7ff fe3e 	bl	8007bec <setServoAngleWithRetries>
 8007f70:	4603      	mov	r3, r0
 8007f72:	2b00      	cmp	r3, #0
 8007f74:	d10e      	bne.n	8007f94 <execManipSubtasks+0x168>
 8007f76:	683b      	ldr	r3, [r7, #0]
 8007f78:	2202      	movs	r2, #2
 8007f7a:	f883 2024 	strb.w	r2, [r3, #36]	; 0x24
 8007f7e:	79fa      	ldrb	r2, [r7, #7]
 8007f80:	4613      	mov	r3, r2
 8007f82:	009b      	lsls	r3, r3, #2
 8007f84:	4413      	add	r3, r2
 8007f86:	009b      	lsls	r3, r3, #2
 8007f88:	4a27      	ldr	r2, [pc, #156]	; (8008028 <execManipSubtasks+0x1fc>)
 8007f8a:	4413      	add	r3, r2
 8007f8c:	4618      	mov	r0, r3
 8007f8e:	f7ff feab 	bl	8007ce8 <resetChecker>
 8007f92:	e045      	b.n	8008020 <execManipSubtasks+0x1f4>
 8007f94:	79fa      	ldrb	r2, [r7, #7]
 8007f96:	4613      	mov	r3, r2
 8007f98:	009b      	lsls	r3, r3, #2
 8007f9a:	4413      	add	r3, r2
 8007f9c:	009b      	lsls	r3, r3, #2
 8007f9e:	4a22      	ldr	r2, [pc, #136]	; (8008028 <execManipSubtasks+0x1fc>)
 8007fa0:	4413      	add	r3, r2
 8007fa2:	4618      	mov	r0, r3
 8007fa4:	f7ff fea0 	bl	8007ce8 <resetChecker>
 8007fa8:	79fa      	ldrb	r2, [r7, #7]
 8007faa:	491f      	ldr	r1, [pc, #124]	; (8008028 <execManipSubtasks+0x1fc>)
 8007fac:	4613      	mov	r3, r2
 8007fae:	009b      	lsls	r3, r3, #2
 8007fb0:	4413      	add	r3, r2
 8007fb2:	009b      	lsls	r3, r3, #2
 8007fb4:	440b      	add	r3, r1
 8007fb6:	7b7a      	ldrb	r2, [r7, #13]
 8007fb8:	701a      	strb	r2, [r3, #0]
 8007fba:	79fa      	ldrb	r2, [r7, #7]
 8007fbc:	89fb      	ldrh	r3, [r7, #14]
 8007fbe:	ee07 3a90 	vmov	s15, r3
 8007fc2:	eef8 7a67 	vcvt.f32.u32	s15, s15
 8007fc6:	4918      	ldr	r1, [pc, #96]	; (8008028 <execManipSubtasks+0x1fc>)
 8007fc8:	4613      	mov	r3, r2
 8007fca:	009b      	lsls	r3, r3, #2
 8007fcc:	4413      	add	r3, r2
 8007fce:	009b      	lsls	r3, r3, #2
 8007fd0:	440b      	add	r3, r1
 8007fd2:	3308      	adds	r3, #8
 8007fd4:	edc3 7a00 	vstr	s15, [r3]
 8007fd8:	79fa      	ldrb	r2, [r7, #7]
 8007fda:	68b9      	ldr	r1, [r7, #8]
 8007fdc:	4812      	ldr	r0, [pc, #72]	; (8008028 <execManipSubtasks+0x1fc>)
 8007fde:	4613      	mov	r3, r2
 8007fe0:	009b      	lsls	r3, r3, #2
 8007fe2:	4413      	add	r3, r2
 8007fe4:	009b      	lsls	r3, r3, #2
 8007fe6:	4403      	add	r3, r0
 8007fe8:	330c      	adds	r3, #12
 8007fea:	6019      	str	r1, [r3, #0]
 8007fec:	79fa      	ldrb	r2, [r7, #7]
 8007fee:	490e      	ldr	r1, [pc, #56]	; (8008028 <execManipSubtasks+0x1fc>)
 8007ff0:	4613      	mov	r3, r2
 8007ff2:	009b      	lsls	r3, r3, #2
 8007ff4:	4413      	add	r3, r2
 8007ff6:	009b      	lsls	r3, r3, #2
 8007ff8:	440b      	add	r3, r1
 8007ffa:	3310      	adds	r3, #16
 8007ffc:	2201      	movs	r2, #1
 8007ffe:	701a      	strb	r2, [r3, #0]
 8008000:	79fc      	ldrb	r4, [r7, #7]
 8008002:	f7fe fd53 	bl	8006aac <getLocalTime>
 8008006:	4601      	mov	r1, r0
 8008008:	4a07      	ldr	r2, [pc, #28]	; (8008028 <execManipSubtasks+0x1fc>)
 800800a:	4623      	mov	r3, r4
 800800c:	009b      	lsls	r3, r3, #2
 800800e:	4423      	add	r3, r4
 8008010:	009b      	lsls	r3, r3, #2
 8008012:	4413      	add	r3, r2
 8008014:	3304      	adds	r3, #4
 8008016:	6019      	str	r1, [r3, #0]
 8008018:	4804      	ldr	r0, [pc, #16]	; (800802c <execManipSubtasks+0x200>)
 800801a:	f7fd fb91 	bl	8005740 <timEnable>
 800801e:	bf00      	nop
 8008020:	3714      	adds	r7, #20
 8008022:	46bd      	mov	sp, r7
 8008024:	bd90      	pop	{r4, r7, pc}
 8008026:	bf00      	nop
 8008028:	200156c0 	.word	0x200156c0
 800802c:	40000c00 	.word	0x40000c00

08008030 <xQueueGenericReset>:
 8008030:	b580      	push	{r7, lr}
 8008032:	b084      	sub	sp, #16
 8008034:	af00      	add	r7, sp, #0
 8008036:	6078      	str	r0, [r7, #4]
 8008038:	6039      	str	r1, [r7, #0]
 800803a:	687b      	ldr	r3, [r7, #4]
 800803c:	60fb      	str	r3, [r7, #12]
 800803e:	68fb      	ldr	r3, [r7, #12]
 8008040:	2b00      	cmp	r3, #0
 8008042:	d109      	bne.n	8008058 <xQueueGenericReset+0x28>
 8008044:	f04f 0350 	mov.w	r3, #80	; 0x50
 8008048:	f383 8811 	msr	BASEPRI, r3
 800804c:	f3bf 8f6f 	isb	sy
 8008050:	f3bf 8f4f 	dsb	sy
 8008054:	60bb      	str	r3, [r7, #8]
 8008056:	e7fe      	b.n	8008056 <xQueueGenericReset+0x26>
 8008058:	f002 f8e8 	bl	800a22c <vPortEnterCritical>
 800805c:	68fb      	ldr	r3, [r7, #12]
 800805e:	681a      	ldr	r2, [r3, #0]
 8008060:	68fb      	ldr	r3, [r7, #12]
 8008062:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8008064:	68f9      	ldr	r1, [r7, #12]
 8008066:	6c09      	ldr	r1, [r1, #64]	; 0x40
 8008068:	fb01 f303 	mul.w	r3, r1, r3
 800806c:	441a      	add	r2, r3
 800806e:	68fb      	ldr	r3, [r7, #12]
 8008070:	609a      	str	r2, [r3, #8]
 8008072:	68fb      	ldr	r3, [r7, #12]
 8008074:	2200      	movs	r2, #0
 8008076:	639a      	str	r2, [r3, #56]	; 0x38
 8008078:	68fb      	ldr	r3, [r7, #12]
 800807a:	681a      	ldr	r2, [r3, #0]
 800807c:	68fb      	ldr	r3, [r7, #12]
 800807e:	605a      	str	r2, [r3, #4]
 8008080:	68fb      	ldr	r3, [r7, #12]
 8008082:	681a      	ldr	r2, [r3, #0]
 8008084:	68fb      	ldr	r3, [r7, #12]
 8008086:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8008088:	3b01      	subs	r3, #1
 800808a:	68f9      	ldr	r1, [r7, #12]
 800808c:	6c09      	ldr	r1, [r1, #64]	; 0x40
 800808e:	fb01 f303 	mul.w	r3, r1, r3
 8008092:	441a      	add	r2, r3
 8008094:	68fb      	ldr	r3, [r7, #12]
 8008096:	60da      	str	r2, [r3, #12]
 8008098:	68fb      	ldr	r3, [r7, #12]
 800809a:	22ff      	movs	r2, #255	; 0xff
 800809c:	f883 2044 	strb.w	r2, [r3, #68]	; 0x44
 80080a0:	68fb      	ldr	r3, [r7, #12]
 80080a2:	22ff      	movs	r2, #255	; 0xff
 80080a4:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 80080a8:	683b      	ldr	r3, [r7, #0]
 80080aa:	2b00      	cmp	r3, #0
 80080ac:	d114      	bne.n	80080d8 <xQueueGenericReset+0xa8>
 80080ae:	68fb      	ldr	r3, [r7, #12]
 80080b0:	691b      	ldr	r3, [r3, #16]
 80080b2:	2b00      	cmp	r3, #0
 80080b4:	d01a      	beq.n	80080ec <xQueueGenericReset+0xbc>
 80080b6:	68fb      	ldr	r3, [r7, #12]
 80080b8:	3310      	adds	r3, #16
 80080ba:	4618      	mov	r0, r3
 80080bc:	f001 f9d8 	bl	8009470 <xTaskRemoveFromEventList>
 80080c0:	4603      	mov	r3, r0
 80080c2:	2b00      	cmp	r3, #0
 80080c4:	d012      	beq.n	80080ec <xQueueGenericReset+0xbc>
 80080c6:	4b0d      	ldr	r3, [pc, #52]	; (80080fc <xQueueGenericReset+0xcc>)
 80080c8:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 80080cc:	601a      	str	r2, [r3, #0]
 80080ce:	f3bf 8f4f 	dsb	sy
 80080d2:	f3bf 8f6f 	isb	sy
 80080d6:	e009      	b.n	80080ec <xQueueGenericReset+0xbc>
 80080d8:	68fb      	ldr	r3, [r7, #12]
 80080da:	3310      	adds	r3, #16
 80080dc:	4618      	mov	r0, r3
 80080de:	f000 fc7d 	bl	80089dc <vListInitialise>
 80080e2:	68fb      	ldr	r3, [r7, #12]
 80080e4:	3324      	adds	r3, #36	; 0x24
 80080e6:	4618      	mov	r0, r3
 80080e8:	f000 fc78 	bl	80089dc <vListInitialise>
 80080ec:	f002 f8cc 	bl	800a288 <vPortExitCritical>
 80080f0:	2301      	movs	r3, #1
 80080f2:	4618      	mov	r0, r3
 80080f4:	3710      	adds	r7, #16
 80080f6:	46bd      	mov	sp, r7
 80080f8:	bd80      	pop	{r7, pc}
 80080fa:	bf00      	nop
 80080fc:	e000ed04 	.word	0xe000ed04

08008100 <xQueueGenericCreateStatic>:
 8008100:	b580      	push	{r7, lr}
 8008102:	b08e      	sub	sp, #56	; 0x38
 8008104:	af02      	add	r7, sp, #8
 8008106:	60f8      	str	r0, [r7, #12]
 8008108:	60b9      	str	r1, [r7, #8]
 800810a:	607a      	str	r2, [r7, #4]
 800810c:	603b      	str	r3, [r7, #0]
 800810e:	68fb      	ldr	r3, [r7, #12]
 8008110:	2b00      	cmp	r3, #0
 8008112:	d109      	bne.n	8008128 <xQueueGenericCreateStatic+0x28>
 8008114:	f04f 0350 	mov.w	r3, #80	; 0x50
 8008118:	f383 8811 	msr	BASEPRI, r3
 800811c:	f3bf 8f6f 	isb	sy
 8008120:	f3bf 8f4f 	dsb	sy
 8008124:	61bb      	str	r3, [r7, #24]
 8008126:	e7fe      	b.n	8008126 <xQueueGenericCreateStatic+0x26>
 8008128:	683b      	ldr	r3, [r7, #0]
 800812a:	2b00      	cmp	r3, #0
 800812c:	d109      	bne.n	8008142 <xQueueGenericCreateStatic+0x42>
 800812e:	f04f 0350 	mov.w	r3, #80	; 0x50
 8008132:	f383 8811 	msr	BASEPRI, r3
 8008136:	f3bf 8f6f 	isb	sy
 800813a:	f3bf 8f4f 	dsb	sy
 800813e:	61fb      	str	r3, [r7, #28]
 8008140:	e7fe      	b.n	8008140 <xQueueGenericCreateStatic+0x40>
 8008142:	687b      	ldr	r3, [r7, #4]
 8008144:	2b00      	cmp	r3, #0
 8008146:	d002      	beq.n	800814e <xQueueGenericCreateStatic+0x4e>
 8008148:	68bb      	ldr	r3, [r7, #8]
 800814a:	2b00      	cmp	r3, #0
 800814c:	d001      	beq.n	8008152 <xQueueGenericCreateStatic+0x52>
 800814e:	2301      	movs	r3, #1
 8008150:	e000      	b.n	8008154 <xQueueGenericCreateStatic+0x54>
 8008152:	2300      	movs	r3, #0
 8008154:	2b00      	cmp	r3, #0
 8008156:	d109      	bne.n	800816c <xQueueGenericCreateStatic+0x6c>
 8008158:	f04f 0350 	mov.w	r3, #80	; 0x50
 800815c:	f383 8811 	msr	BASEPRI, r3
 8008160:	f3bf 8f6f 	isb	sy
 8008164:	f3bf 8f4f 	dsb	sy
 8008168:	623b      	str	r3, [r7, #32]
 800816a:	e7fe      	b.n	800816a <xQueueGenericCreateStatic+0x6a>
 800816c:	687b      	ldr	r3, [r7, #4]
 800816e:	2b00      	cmp	r3, #0
 8008170:	d102      	bne.n	8008178 <xQueueGenericCreateStatic+0x78>
 8008172:	68bb      	ldr	r3, [r7, #8]
 8008174:	2b00      	cmp	r3, #0
 8008176:	d101      	bne.n	800817c <xQueueGenericCreateStatic+0x7c>
 8008178:	2301      	movs	r3, #1
 800817a:	e000      	b.n	800817e <xQueueGenericCreateStatic+0x7e>
 800817c:	2300      	movs	r3, #0
 800817e:	2b00      	cmp	r3, #0
 8008180:	d109      	bne.n	8008196 <xQueueGenericCreateStatic+0x96>
 8008182:	f04f 0350 	mov.w	r3, #80	; 0x50
 8008186:	f383 8811 	msr	BASEPRI, r3
 800818a:	f3bf 8f6f 	isb	sy
 800818e:	f3bf 8f4f 	dsb	sy
 8008192:	627b      	str	r3, [r7, #36]	; 0x24
 8008194:	e7fe      	b.n	8008194 <xQueueGenericCreateStatic+0x94>
 8008196:	2350      	movs	r3, #80	; 0x50
 8008198:	617b      	str	r3, [r7, #20]
 800819a:	697b      	ldr	r3, [r7, #20]
 800819c:	2b50      	cmp	r3, #80	; 0x50
 800819e:	d009      	beq.n	80081b4 <xQueueGenericCreateStatic+0xb4>
 80081a0:	f04f 0350 	mov.w	r3, #80	; 0x50
 80081a4:	f383 8811 	msr	BASEPRI, r3
 80081a8:	f3bf 8f6f 	isb	sy
 80081ac:	f3bf 8f4f 	dsb	sy
 80081b0:	62bb      	str	r3, [r7, #40]	; 0x28
 80081b2:	e7fe      	b.n	80081b2 <xQueueGenericCreateStatic+0xb2>
 80081b4:	697b      	ldr	r3, [r7, #20]
 80081b6:	683b      	ldr	r3, [r7, #0]
 80081b8:	62fb      	str	r3, [r7, #44]	; 0x2c
 80081ba:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80081bc:	2b00      	cmp	r3, #0
 80081be:	d00d      	beq.n	80081dc <xQueueGenericCreateStatic+0xdc>
 80081c0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80081c2:	2201      	movs	r2, #1
 80081c4:	f883 2046 	strb.w	r2, [r3, #70]	; 0x46
 80081c8:	f897 2038 	ldrb.w	r2, [r7, #56]	; 0x38
 80081cc:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80081ce:	9300      	str	r3, [sp, #0]
 80081d0:	4613      	mov	r3, r2
 80081d2:	687a      	ldr	r2, [r7, #4]
 80081d4:	68b9      	ldr	r1, [r7, #8]
 80081d6:	68f8      	ldr	r0, [r7, #12]
 80081d8:	f000 f806 	bl	80081e8 <prvInitialiseNewQueue>
 80081dc:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80081de:	4618      	mov	r0, r3
 80081e0:	3730      	adds	r7, #48	; 0x30
 80081e2:	46bd      	mov	sp, r7
 80081e4:	bd80      	pop	{r7, pc}
 80081e6:	bf00      	nop

080081e8 <prvInitialiseNewQueue>:
 80081e8:	b580      	push	{r7, lr}
 80081ea:	b084      	sub	sp, #16
 80081ec:	af00      	add	r7, sp, #0
 80081ee:	60f8      	str	r0, [r7, #12]
 80081f0:	60b9      	str	r1, [r7, #8]
 80081f2:	607a      	str	r2, [r7, #4]
 80081f4:	70fb      	strb	r3, [r7, #3]
 80081f6:	68bb      	ldr	r3, [r7, #8]
 80081f8:	2b00      	cmp	r3, #0
 80081fa:	d103      	bne.n	8008204 <prvInitialiseNewQueue+0x1c>
 80081fc:	69bb      	ldr	r3, [r7, #24]
 80081fe:	69ba      	ldr	r2, [r7, #24]
 8008200:	601a      	str	r2, [r3, #0]
 8008202:	e002      	b.n	800820a <prvInitialiseNewQueue+0x22>
 8008204:	69bb      	ldr	r3, [r7, #24]
 8008206:	687a      	ldr	r2, [r7, #4]
 8008208:	601a      	str	r2, [r3, #0]
 800820a:	69bb      	ldr	r3, [r7, #24]
 800820c:	68fa      	ldr	r2, [r7, #12]
 800820e:	63da      	str	r2, [r3, #60]	; 0x3c
 8008210:	69bb      	ldr	r3, [r7, #24]
 8008212:	68ba      	ldr	r2, [r7, #8]
 8008214:	641a      	str	r2, [r3, #64]	; 0x40
 8008216:	2101      	movs	r1, #1
 8008218:	69b8      	ldr	r0, [r7, #24]
 800821a:	f7ff ff09 	bl	8008030 <xQueueGenericReset>
 800821e:	69bb      	ldr	r3, [r7, #24]
 8008220:	78fa      	ldrb	r2, [r7, #3]
 8008222:	f883 204c 	strb.w	r2, [r3, #76]	; 0x4c
 8008226:	bf00      	nop
 8008228:	3710      	adds	r7, #16
 800822a:	46bd      	mov	sp, r7
 800822c:	bd80      	pop	{r7, pc}
 800822e:	bf00      	nop

08008230 <xQueueGenericSend>:
 8008230:	b580      	push	{r7, lr}
 8008232:	b08e      	sub	sp, #56	; 0x38
 8008234:	af00      	add	r7, sp, #0
 8008236:	60f8      	str	r0, [r7, #12]
 8008238:	60b9      	str	r1, [r7, #8]
 800823a:	607a      	str	r2, [r7, #4]
 800823c:	603b      	str	r3, [r7, #0]
 800823e:	2300      	movs	r3, #0
 8008240:	637b      	str	r3, [r7, #52]	; 0x34
 8008242:	68fb      	ldr	r3, [r7, #12]
 8008244:	633b      	str	r3, [r7, #48]	; 0x30
 8008246:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8008248:	2b00      	cmp	r3, #0
 800824a:	d109      	bne.n	8008260 <xQueueGenericSend+0x30>
 800824c:	f04f 0350 	mov.w	r3, #80	; 0x50
 8008250:	f383 8811 	msr	BASEPRI, r3
 8008254:	f3bf 8f6f 	isb	sy
 8008258:	f3bf 8f4f 	dsb	sy
 800825c:	61fb      	str	r3, [r7, #28]
 800825e:	e7fe      	b.n	800825e <xQueueGenericSend+0x2e>
 8008260:	68bb      	ldr	r3, [r7, #8]
 8008262:	2b00      	cmp	r3, #0
 8008264:	d103      	bne.n	800826e <xQueueGenericSend+0x3e>
 8008266:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8008268:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800826a:	2b00      	cmp	r3, #0
 800826c:	d101      	bne.n	8008272 <xQueueGenericSend+0x42>
 800826e:	2301      	movs	r3, #1
 8008270:	e000      	b.n	8008274 <xQueueGenericSend+0x44>
 8008272:	2300      	movs	r3, #0
 8008274:	2b00      	cmp	r3, #0
 8008276:	d109      	bne.n	800828c <xQueueGenericSend+0x5c>
 8008278:	f04f 0350 	mov.w	r3, #80	; 0x50
 800827c:	f383 8811 	msr	BASEPRI, r3
 8008280:	f3bf 8f6f 	isb	sy
 8008284:	f3bf 8f4f 	dsb	sy
 8008288:	623b      	str	r3, [r7, #32]
 800828a:	e7fe      	b.n	800828a <xQueueGenericSend+0x5a>
 800828c:	683b      	ldr	r3, [r7, #0]
 800828e:	2b02      	cmp	r3, #2
 8008290:	d103      	bne.n	800829a <xQueueGenericSend+0x6a>
 8008292:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8008294:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8008296:	2b01      	cmp	r3, #1
 8008298:	d101      	bne.n	800829e <xQueueGenericSend+0x6e>
 800829a:	2301      	movs	r3, #1
 800829c:	e000      	b.n	80082a0 <xQueueGenericSend+0x70>
 800829e:	2300      	movs	r3, #0
 80082a0:	2b00      	cmp	r3, #0
 80082a2:	d109      	bne.n	80082b8 <xQueueGenericSend+0x88>
 80082a4:	f04f 0350 	mov.w	r3, #80	; 0x50
 80082a8:	f383 8811 	msr	BASEPRI, r3
 80082ac:	f3bf 8f6f 	isb	sy
 80082b0:	f3bf 8f4f 	dsb	sy
 80082b4:	627b      	str	r3, [r7, #36]	; 0x24
 80082b6:	e7fe      	b.n	80082b6 <xQueueGenericSend+0x86>
 80082b8:	f001 fa98 	bl	80097ec <xTaskGetSchedulerState>
 80082bc:	4603      	mov	r3, r0
 80082be:	2b00      	cmp	r3, #0
 80082c0:	d102      	bne.n	80082c8 <xQueueGenericSend+0x98>
 80082c2:	687b      	ldr	r3, [r7, #4]
 80082c4:	2b00      	cmp	r3, #0
 80082c6:	d101      	bne.n	80082cc <xQueueGenericSend+0x9c>
 80082c8:	2301      	movs	r3, #1
 80082ca:	e000      	b.n	80082ce <xQueueGenericSend+0x9e>
 80082cc:	2300      	movs	r3, #0
 80082ce:	2b00      	cmp	r3, #0
 80082d0:	d109      	bne.n	80082e6 <xQueueGenericSend+0xb6>
 80082d2:	f04f 0350 	mov.w	r3, #80	; 0x50
 80082d6:	f383 8811 	msr	BASEPRI, r3
 80082da:	f3bf 8f6f 	isb	sy
 80082de:	f3bf 8f4f 	dsb	sy
 80082e2:	62bb      	str	r3, [r7, #40]	; 0x28
 80082e4:	e7fe      	b.n	80082e4 <xQueueGenericSend+0xb4>
 80082e6:	f001 ffa1 	bl	800a22c <vPortEnterCritical>
 80082ea:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80082ec:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 80082ee:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80082f0:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 80082f2:	429a      	cmp	r2, r3
 80082f4:	d302      	bcc.n	80082fc <xQueueGenericSend+0xcc>
 80082f6:	683b      	ldr	r3, [r7, #0]
 80082f8:	2b02      	cmp	r3, #2
 80082fa:	d129      	bne.n	8008350 <xQueueGenericSend+0x120>
 80082fc:	683a      	ldr	r2, [r7, #0]
 80082fe:	68b9      	ldr	r1, [r7, #8]
 8008300:	6b38      	ldr	r0, [r7, #48]	; 0x30
 8008302:	f000 f9ff 	bl	8008704 <prvCopyDataToQueue>
 8008306:	62f8      	str	r0, [r7, #44]	; 0x2c
 8008308:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800830a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 800830c:	2b00      	cmp	r3, #0
 800830e:	d010      	beq.n	8008332 <xQueueGenericSend+0x102>
 8008310:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8008312:	3324      	adds	r3, #36	; 0x24
 8008314:	4618      	mov	r0, r3
 8008316:	f001 f8ab 	bl	8009470 <xTaskRemoveFromEventList>
 800831a:	4603      	mov	r3, r0
 800831c:	2b00      	cmp	r3, #0
 800831e:	d013      	beq.n	8008348 <xQueueGenericSend+0x118>
 8008320:	4b3f      	ldr	r3, [pc, #252]	; (8008420 <xQueueGenericSend+0x1f0>)
 8008322:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 8008326:	601a      	str	r2, [r3, #0]
 8008328:	f3bf 8f4f 	dsb	sy
 800832c:	f3bf 8f6f 	isb	sy
 8008330:	e00a      	b.n	8008348 <xQueueGenericSend+0x118>
 8008332:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8008334:	2b00      	cmp	r3, #0
 8008336:	d007      	beq.n	8008348 <xQueueGenericSend+0x118>
 8008338:	4b39      	ldr	r3, [pc, #228]	; (8008420 <xQueueGenericSend+0x1f0>)
 800833a:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 800833e:	601a      	str	r2, [r3, #0]
 8008340:	f3bf 8f4f 	dsb	sy
 8008344:	f3bf 8f6f 	isb	sy
 8008348:	f001 ff9e 	bl	800a288 <vPortExitCritical>
 800834c:	2301      	movs	r3, #1
 800834e:	e063      	b.n	8008418 <xQueueGenericSend+0x1e8>
 8008350:	687b      	ldr	r3, [r7, #4]
 8008352:	2b00      	cmp	r3, #0
 8008354:	d103      	bne.n	800835e <xQueueGenericSend+0x12e>
 8008356:	f001 ff97 	bl	800a288 <vPortExitCritical>
 800835a:	2300      	movs	r3, #0
 800835c:	e05c      	b.n	8008418 <xQueueGenericSend+0x1e8>
 800835e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8008360:	2b00      	cmp	r3, #0
 8008362:	d106      	bne.n	8008372 <xQueueGenericSend+0x142>
 8008364:	f107 0314 	add.w	r3, r7, #20
 8008368:	4618      	mov	r0, r3
 800836a:	f001 f8e3 	bl	8009534 <vTaskInternalSetTimeOutState>
 800836e:	2301      	movs	r3, #1
 8008370:	637b      	str	r3, [r7, #52]	; 0x34
 8008372:	f001 ff89 	bl	800a288 <vPortExitCritical>
 8008376:	f000 fe2d 	bl	8008fd4 <vTaskSuspendAll>
 800837a:	f001 ff57 	bl	800a22c <vPortEnterCritical>
 800837e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8008380:	f893 3044 	ldrb.w	r3, [r3, #68]	; 0x44
 8008384:	b25b      	sxtb	r3, r3
 8008386:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 800838a:	d103      	bne.n	8008394 <xQueueGenericSend+0x164>
 800838c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800838e:	2200      	movs	r2, #0
 8008390:	f883 2044 	strb.w	r2, [r3, #68]	; 0x44
 8008394:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8008396:	f893 3045 	ldrb.w	r3, [r3, #69]	; 0x45
 800839a:	b25b      	sxtb	r3, r3
 800839c:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 80083a0:	d103      	bne.n	80083aa <xQueueGenericSend+0x17a>
 80083a2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80083a4:	2200      	movs	r2, #0
 80083a6:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 80083aa:	f001 ff6d 	bl	800a288 <vPortExitCritical>
 80083ae:	1d3a      	adds	r2, r7, #4
 80083b0:	f107 0314 	add.w	r3, r7, #20
 80083b4:	4611      	mov	r1, r2
 80083b6:	4618      	mov	r0, r3
 80083b8:	f001 f8d2 	bl	8009560 <xTaskCheckForTimeOut>
 80083bc:	4603      	mov	r3, r0
 80083be:	2b00      	cmp	r3, #0
 80083c0:	d124      	bne.n	800840c <xQueueGenericSend+0x1dc>
 80083c2:	6b38      	ldr	r0, [r7, #48]	; 0x30
 80083c4:	f000 fa96 	bl	80088f4 <prvIsQueueFull>
 80083c8:	4603      	mov	r3, r0
 80083ca:	2b00      	cmp	r3, #0
 80083cc:	d018      	beq.n	8008400 <xQueueGenericSend+0x1d0>
 80083ce:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80083d0:	3310      	adds	r3, #16
 80083d2:	687a      	ldr	r2, [r7, #4]
 80083d4:	4611      	mov	r1, r2
 80083d6:	4618      	mov	r0, r3
 80083d8:	f000 fffc 	bl	80093d4 <vTaskPlaceOnEventList>
 80083dc:	6b38      	ldr	r0, [r7, #48]	; 0x30
 80083de:	f000 fa21 	bl	8008824 <prvUnlockQueue>
 80083e2:	f000 fe05 	bl	8008ff0 <xTaskResumeAll>
 80083e6:	4603      	mov	r3, r0
 80083e8:	2b00      	cmp	r3, #0
 80083ea:	f47f af7c 	bne.w	80082e6 <xQueueGenericSend+0xb6>
 80083ee:	4b0c      	ldr	r3, [pc, #48]	; (8008420 <xQueueGenericSend+0x1f0>)
 80083f0:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 80083f4:	601a      	str	r2, [r3, #0]
 80083f6:	f3bf 8f4f 	dsb	sy
 80083fa:	f3bf 8f6f 	isb	sy
 80083fe:	e772      	b.n	80082e6 <xQueueGenericSend+0xb6>
 8008400:	6b38      	ldr	r0, [r7, #48]	; 0x30
 8008402:	f000 fa0f 	bl	8008824 <prvUnlockQueue>
 8008406:	f000 fdf3 	bl	8008ff0 <xTaskResumeAll>
 800840a:	e76c      	b.n	80082e6 <xQueueGenericSend+0xb6>
 800840c:	6b38      	ldr	r0, [r7, #48]	; 0x30
 800840e:	f000 fa09 	bl	8008824 <prvUnlockQueue>
 8008412:	f000 fded 	bl	8008ff0 <xTaskResumeAll>
 8008416:	2300      	movs	r3, #0
 8008418:	4618      	mov	r0, r3
 800841a:	3738      	adds	r7, #56	; 0x38
 800841c:	46bd      	mov	sp, r7
 800841e:	bd80      	pop	{r7, pc}
 8008420:	e000ed04 	.word	0xe000ed04

08008424 <xQueueGenericSendFromISR>:
 8008424:	b580      	push	{r7, lr}
 8008426:	b08e      	sub	sp, #56	; 0x38
 8008428:	af00      	add	r7, sp, #0
 800842a:	60f8      	str	r0, [r7, #12]
 800842c:	60b9      	str	r1, [r7, #8]
 800842e:	607a      	str	r2, [r7, #4]
 8008430:	603b      	str	r3, [r7, #0]
 8008432:	68fb      	ldr	r3, [r7, #12]
 8008434:	633b      	str	r3, [r7, #48]	; 0x30
 8008436:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8008438:	2b00      	cmp	r3, #0
 800843a:	d109      	bne.n	8008450 <xQueueGenericSendFromISR+0x2c>
 800843c:	f04f 0350 	mov.w	r3, #80	; 0x50
 8008440:	f383 8811 	msr	BASEPRI, r3
 8008444:	f3bf 8f6f 	isb	sy
 8008448:	f3bf 8f4f 	dsb	sy
 800844c:	617b      	str	r3, [r7, #20]
 800844e:	e7fe      	b.n	800844e <xQueueGenericSendFromISR+0x2a>
 8008450:	68bb      	ldr	r3, [r7, #8]
 8008452:	2b00      	cmp	r3, #0
 8008454:	d103      	bne.n	800845e <xQueueGenericSendFromISR+0x3a>
 8008456:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8008458:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800845a:	2b00      	cmp	r3, #0
 800845c:	d101      	bne.n	8008462 <xQueueGenericSendFromISR+0x3e>
 800845e:	2301      	movs	r3, #1
 8008460:	e000      	b.n	8008464 <xQueueGenericSendFromISR+0x40>
 8008462:	2300      	movs	r3, #0
 8008464:	2b00      	cmp	r3, #0
 8008466:	d109      	bne.n	800847c <xQueueGenericSendFromISR+0x58>
 8008468:	f04f 0350 	mov.w	r3, #80	; 0x50
 800846c:	f383 8811 	msr	BASEPRI, r3
 8008470:	f3bf 8f6f 	isb	sy
 8008474:	f3bf 8f4f 	dsb	sy
 8008478:	61bb      	str	r3, [r7, #24]
 800847a:	e7fe      	b.n	800847a <xQueueGenericSendFromISR+0x56>
 800847c:	683b      	ldr	r3, [r7, #0]
 800847e:	2b02      	cmp	r3, #2
 8008480:	d103      	bne.n	800848a <xQueueGenericSendFromISR+0x66>
 8008482:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8008484:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8008486:	2b01      	cmp	r3, #1
 8008488:	d101      	bne.n	800848e <xQueueGenericSendFromISR+0x6a>
 800848a:	2301      	movs	r3, #1
 800848c:	e000      	b.n	8008490 <xQueueGenericSendFromISR+0x6c>
 800848e:	2300      	movs	r3, #0
 8008490:	2b00      	cmp	r3, #0
 8008492:	d109      	bne.n	80084a8 <xQueueGenericSendFromISR+0x84>
 8008494:	f04f 0350 	mov.w	r3, #80	; 0x50
 8008498:	f383 8811 	msr	BASEPRI, r3
 800849c:	f3bf 8f6f 	isb	sy
 80084a0:	f3bf 8f4f 	dsb	sy
 80084a4:	61fb      	str	r3, [r7, #28]
 80084a6:	e7fe      	b.n	80084a6 <xQueueGenericSendFromISR+0x82>
 80084a8:	f001 ff9c 	bl	800a3e4 <vPortValidateInterruptPriority>
 80084ac:	f3ef 8211 	mrs	r2, BASEPRI
 80084b0:	f04f 0350 	mov.w	r3, #80	; 0x50
 80084b4:	f383 8811 	msr	BASEPRI, r3
 80084b8:	f3bf 8f6f 	isb	sy
 80084bc:	f3bf 8f4f 	dsb	sy
 80084c0:	623a      	str	r2, [r7, #32]
 80084c2:	613b      	str	r3, [r7, #16]
 80084c4:	6a3b      	ldr	r3, [r7, #32]
 80084c6:	62bb      	str	r3, [r7, #40]	; 0x28
 80084c8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80084ca:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 80084cc:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80084ce:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 80084d0:	429a      	cmp	r2, r3
 80084d2:	d302      	bcc.n	80084da <xQueueGenericSendFromISR+0xb6>
 80084d4:	683b      	ldr	r3, [r7, #0]
 80084d6:	2b02      	cmp	r3, #2
 80084d8:	d12c      	bne.n	8008534 <xQueueGenericSendFromISR+0x110>
 80084da:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80084dc:	f893 3045 	ldrb.w	r3, [r3, #69]	; 0x45
 80084e0:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
 80084e4:	683a      	ldr	r2, [r7, #0]
 80084e6:	68b9      	ldr	r1, [r7, #8]
 80084e8:	6b38      	ldr	r0, [r7, #48]	; 0x30
 80084ea:	f000 f90b 	bl	8008704 <prvCopyDataToQueue>
 80084ee:	f997 3027 	ldrsb.w	r3, [r7, #39]	; 0x27
 80084f2:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 80084f6:	d112      	bne.n	800851e <xQueueGenericSendFromISR+0xfa>
 80084f8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80084fa:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80084fc:	2b00      	cmp	r3, #0
 80084fe:	d016      	beq.n	800852e <xQueueGenericSendFromISR+0x10a>
 8008500:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8008502:	3324      	adds	r3, #36	; 0x24
 8008504:	4618      	mov	r0, r3
 8008506:	f000 ffb3 	bl	8009470 <xTaskRemoveFromEventList>
 800850a:	4603      	mov	r3, r0
 800850c:	2b00      	cmp	r3, #0
 800850e:	d00e      	beq.n	800852e <xQueueGenericSendFromISR+0x10a>
 8008510:	687b      	ldr	r3, [r7, #4]
 8008512:	2b00      	cmp	r3, #0
 8008514:	d00b      	beq.n	800852e <xQueueGenericSendFromISR+0x10a>
 8008516:	687b      	ldr	r3, [r7, #4]
 8008518:	2201      	movs	r2, #1
 800851a:	601a      	str	r2, [r3, #0]
 800851c:	e007      	b.n	800852e <xQueueGenericSendFromISR+0x10a>
 800851e:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
 8008522:	3301      	adds	r3, #1
 8008524:	b2db      	uxtb	r3, r3
 8008526:	b25a      	sxtb	r2, r3
 8008528:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800852a:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 800852e:	2301      	movs	r3, #1
 8008530:	637b      	str	r3, [r7, #52]	; 0x34
 8008532:	e001      	b.n	8008538 <xQueueGenericSendFromISR+0x114>
 8008534:	2300      	movs	r3, #0
 8008536:	637b      	str	r3, [r7, #52]	; 0x34
 8008538:	6abb      	ldr	r3, [r7, #40]	; 0x28
 800853a:	62fb      	str	r3, [r7, #44]	; 0x2c
 800853c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800853e:	f383 8811 	msr	BASEPRI, r3
 8008542:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8008544:	4618      	mov	r0, r3
 8008546:	3738      	adds	r7, #56	; 0x38
 8008548:	46bd      	mov	sp, r7
 800854a:	bd80      	pop	{r7, pc}

0800854c <xQueueReceive>:
 800854c:	b580      	push	{r7, lr}
 800854e:	b08c      	sub	sp, #48	; 0x30
 8008550:	af00      	add	r7, sp, #0
 8008552:	60f8      	str	r0, [r7, #12]
 8008554:	60b9      	str	r1, [r7, #8]
 8008556:	607a      	str	r2, [r7, #4]
 8008558:	2300      	movs	r3, #0
 800855a:	62fb      	str	r3, [r7, #44]	; 0x2c
 800855c:	68fb      	ldr	r3, [r7, #12]
 800855e:	62bb      	str	r3, [r7, #40]	; 0x28
 8008560:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8008562:	2b00      	cmp	r3, #0
 8008564:	d109      	bne.n	800857a <xQueueReceive+0x2e>
 8008566:	f04f 0350 	mov.w	r3, #80	; 0x50
 800856a:	f383 8811 	msr	BASEPRI, r3
 800856e:	f3bf 8f6f 	isb	sy
 8008572:	f3bf 8f4f 	dsb	sy
 8008576:	61bb      	str	r3, [r7, #24]
 8008578:	e7fe      	b.n	8008578 <xQueueReceive+0x2c>
 800857a:	68bb      	ldr	r3, [r7, #8]
 800857c:	2b00      	cmp	r3, #0
 800857e:	d103      	bne.n	8008588 <xQueueReceive+0x3c>
 8008580:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8008582:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8008584:	2b00      	cmp	r3, #0
 8008586:	d101      	bne.n	800858c <xQueueReceive+0x40>
 8008588:	2301      	movs	r3, #1
 800858a:	e000      	b.n	800858e <xQueueReceive+0x42>
 800858c:	2300      	movs	r3, #0
 800858e:	2b00      	cmp	r3, #0
 8008590:	d109      	bne.n	80085a6 <xQueueReceive+0x5a>
 8008592:	f04f 0350 	mov.w	r3, #80	; 0x50
 8008596:	f383 8811 	msr	BASEPRI, r3
 800859a:	f3bf 8f6f 	isb	sy
 800859e:	f3bf 8f4f 	dsb	sy
 80085a2:	61fb      	str	r3, [r7, #28]
 80085a4:	e7fe      	b.n	80085a4 <xQueueReceive+0x58>
 80085a6:	f001 f921 	bl	80097ec <xTaskGetSchedulerState>
 80085aa:	4603      	mov	r3, r0
 80085ac:	2b00      	cmp	r3, #0
 80085ae:	d102      	bne.n	80085b6 <xQueueReceive+0x6a>
 80085b0:	687b      	ldr	r3, [r7, #4]
 80085b2:	2b00      	cmp	r3, #0
 80085b4:	d101      	bne.n	80085ba <xQueueReceive+0x6e>
 80085b6:	2301      	movs	r3, #1
 80085b8:	e000      	b.n	80085bc <xQueueReceive+0x70>
 80085ba:	2300      	movs	r3, #0
 80085bc:	2b00      	cmp	r3, #0
 80085be:	d109      	bne.n	80085d4 <xQueueReceive+0x88>
 80085c0:	f04f 0350 	mov.w	r3, #80	; 0x50
 80085c4:	f383 8811 	msr	BASEPRI, r3
 80085c8:	f3bf 8f6f 	isb	sy
 80085cc:	f3bf 8f4f 	dsb	sy
 80085d0:	623b      	str	r3, [r7, #32]
 80085d2:	e7fe      	b.n	80085d2 <xQueueReceive+0x86>
 80085d4:	f001 fe2a 	bl	800a22c <vPortEnterCritical>
 80085d8:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80085da:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80085dc:	627b      	str	r3, [r7, #36]	; 0x24
 80085de:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80085e0:	2b00      	cmp	r3, #0
 80085e2:	d01f      	beq.n	8008624 <xQueueReceive+0xd8>
 80085e4:	68b9      	ldr	r1, [r7, #8]
 80085e6:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 80085e8:	f000 f8f6 	bl	80087d8 <prvCopyDataFromQueue>
 80085ec:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80085ee:	1e5a      	subs	r2, r3, #1
 80085f0:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80085f2:	639a      	str	r2, [r3, #56]	; 0x38
 80085f4:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80085f6:	691b      	ldr	r3, [r3, #16]
 80085f8:	2b00      	cmp	r3, #0
 80085fa:	d00f      	beq.n	800861c <xQueueReceive+0xd0>
 80085fc:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80085fe:	3310      	adds	r3, #16
 8008600:	4618      	mov	r0, r3
 8008602:	f000 ff35 	bl	8009470 <xTaskRemoveFromEventList>
 8008606:	4603      	mov	r3, r0
 8008608:	2b00      	cmp	r3, #0
 800860a:	d007      	beq.n	800861c <xQueueReceive+0xd0>
 800860c:	4b3c      	ldr	r3, [pc, #240]	; (8008700 <xQueueReceive+0x1b4>)
 800860e:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 8008612:	601a      	str	r2, [r3, #0]
 8008614:	f3bf 8f4f 	dsb	sy
 8008618:	f3bf 8f6f 	isb	sy
 800861c:	f001 fe34 	bl	800a288 <vPortExitCritical>
 8008620:	2301      	movs	r3, #1
 8008622:	e069      	b.n	80086f8 <xQueueReceive+0x1ac>
 8008624:	687b      	ldr	r3, [r7, #4]
 8008626:	2b00      	cmp	r3, #0
 8008628:	d103      	bne.n	8008632 <xQueueReceive+0xe6>
 800862a:	f001 fe2d 	bl	800a288 <vPortExitCritical>
 800862e:	2300      	movs	r3, #0
 8008630:	e062      	b.n	80086f8 <xQueueReceive+0x1ac>
 8008632:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8008634:	2b00      	cmp	r3, #0
 8008636:	d106      	bne.n	8008646 <xQueueReceive+0xfa>
 8008638:	f107 0310 	add.w	r3, r7, #16
 800863c:	4618      	mov	r0, r3
 800863e:	f000 ff79 	bl	8009534 <vTaskInternalSetTimeOutState>
 8008642:	2301      	movs	r3, #1
 8008644:	62fb      	str	r3, [r7, #44]	; 0x2c
 8008646:	f001 fe1f 	bl	800a288 <vPortExitCritical>
 800864a:	f000 fcc3 	bl	8008fd4 <vTaskSuspendAll>
 800864e:	f001 fded 	bl	800a22c <vPortEnterCritical>
 8008652:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8008654:	f893 3044 	ldrb.w	r3, [r3, #68]	; 0x44
 8008658:	b25b      	sxtb	r3, r3
 800865a:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 800865e:	d103      	bne.n	8008668 <xQueueReceive+0x11c>
 8008660:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8008662:	2200      	movs	r2, #0
 8008664:	f883 2044 	strb.w	r2, [r3, #68]	; 0x44
 8008668:	6abb      	ldr	r3, [r7, #40]	; 0x28
 800866a:	f893 3045 	ldrb.w	r3, [r3, #69]	; 0x45
 800866e:	b25b      	sxtb	r3, r3
 8008670:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8008674:	d103      	bne.n	800867e <xQueueReceive+0x132>
 8008676:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8008678:	2200      	movs	r2, #0
 800867a:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 800867e:	f001 fe03 	bl	800a288 <vPortExitCritical>
 8008682:	1d3a      	adds	r2, r7, #4
 8008684:	f107 0310 	add.w	r3, r7, #16
 8008688:	4611      	mov	r1, r2
 800868a:	4618      	mov	r0, r3
 800868c:	f000 ff68 	bl	8009560 <xTaskCheckForTimeOut>
 8008690:	4603      	mov	r3, r0
 8008692:	2b00      	cmp	r3, #0
 8008694:	d123      	bne.n	80086de <xQueueReceive+0x192>
 8008696:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 8008698:	f000 f916 	bl	80088c8 <prvIsQueueEmpty>
 800869c:	4603      	mov	r3, r0
 800869e:	2b00      	cmp	r3, #0
 80086a0:	d017      	beq.n	80086d2 <xQueueReceive+0x186>
 80086a2:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80086a4:	3324      	adds	r3, #36	; 0x24
 80086a6:	687a      	ldr	r2, [r7, #4]
 80086a8:	4611      	mov	r1, r2
 80086aa:	4618      	mov	r0, r3
 80086ac:	f000 fe92 	bl	80093d4 <vTaskPlaceOnEventList>
 80086b0:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 80086b2:	f000 f8b7 	bl	8008824 <prvUnlockQueue>
 80086b6:	f000 fc9b 	bl	8008ff0 <xTaskResumeAll>
 80086ba:	4603      	mov	r3, r0
 80086bc:	2b00      	cmp	r3, #0
 80086be:	d189      	bne.n	80085d4 <xQueueReceive+0x88>
 80086c0:	4b0f      	ldr	r3, [pc, #60]	; (8008700 <xQueueReceive+0x1b4>)
 80086c2:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 80086c6:	601a      	str	r2, [r3, #0]
 80086c8:	f3bf 8f4f 	dsb	sy
 80086cc:	f3bf 8f6f 	isb	sy
 80086d0:	e780      	b.n	80085d4 <xQueueReceive+0x88>
 80086d2:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 80086d4:	f000 f8a6 	bl	8008824 <prvUnlockQueue>
 80086d8:	f000 fc8a 	bl	8008ff0 <xTaskResumeAll>
 80086dc:	e77a      	b.n	80085d4 <xQueueReceive+0x88>
 80086de:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 80086e0:	f000 f8a0 	bl	8008824 <prvUnlockQueue>
 80086e4:	f000 fc84 	bl	8008ff0 <xTaskResumeAll>
 80086e8:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 80086ea:	f000 f8ed 	bl	80088c8 <prvIsQueueEmpty>
 80086ee:	4603      	mov	r3, r0
 80086f0:	2b00      	cmp	r3, #0
 80086f2:	f43f af6f 	beq.w	80085d4 <xQueueReceive+0x88>
 80086f6:	2300      	movs	r3, #0
 80086f8:	4618      	mov	r0, r3
 80086fa:	3730      	adds	r7, #48	; 0x30
 80086fc:	46bd      	mov	sp, r7
 80086fe:	bd80      	pop	{r7, pc}
 8008700:	e000ed04 	.word	0xe000ed04

08008704 <prvCopyDataToQueue>:
 8008704:	b580      	push	{r7, lr}
 8008706:	b086      	sub	sp, #24
 8008708:	af00      	add	r7, sp, #0
 800870a:	60f8      	str	r0, [r7, #12]
 800870c:	60b9      	str	r1, [r7, #8]
 800870e:	607a      	str	r2, [r7, #4]
 8008710:	2300      	movs	r3, #0
 8008712:	617b      	str	r3, [r7, #20]
 8008714:	68fb      	ldr	r3, [r7, #12]
 8008716:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8008718:	613b      	str	r3, [r7, #16]
 800871a:	68fb      	ldr	r3, [r7, #12]
 800871c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800871e:	2b00      	cmp	r3, #0
 8008720:	d10d      	bne.n	800873e <prvCopyDataToQueue+0x3a>
 8008722:	68fb      	ldr	r3, [r7, #12]
 8008724:	681b      	ldr	r3, [r3, #0]
 8008726:	2b00      	cmp	r3, #0
 8008728:	d14d      	bne.n	80087c6 <prvCopyDataToQueue+0xc2>
 800872a:	68fb      	ldr	r3, [r7, #12]
 800872c:	689b      	ldr	r3, [r3, #8]
 800872e:	4618      	mov	r0, r3
 8008730:	f001 f87a 	bl	8009828 <xTaskPriorityDisinherit>
 8008734:	6178      	str	r0, [r7, #20]
 8008736:	68fb      	ldr	r3, [r7, #12]
 8008738:	2200      	movs	r2, #0
 800873a:	609a      	str	r2, [r3, #8]
 800873c:	e043      	b.n	80087c6 <prvCopyDataToQueue+0xc2>
 800873e:	687b      	ldr	r3, [r7, #4]
 8008740:	2b00      	cmp	r3, #0
 8008742:	d119      	bne.n	8008778 <prvCopyDataToQueue+0x74>
 8008744:	68fb      	ldr	r3, [r7, #12]
 8008746:	6858      	ldr	r0, [r3, #4]
 8008748:	68fb      	ldr	r3, [r7, #12]
 800874a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800874c:	461a      	mov	r2, r3
 800874e:	68b9      	ldr	r1, [r7, #8]
 8008750:	f7f8 f9a2 	bl	8000a98 <memcpy>
 8008754:	68fb      	ldr	r3, [r7, #12]
 8008756:	685a      	ldr	r2, [r3, #4]
 8008758:	68fb      	ldr	r3, [r7, #12]
 800875a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800875c:	441a      	add	r2, r3
 800875e:	68fb      	ldr	r3, [r7, #12]
 8008760:	605a      	str	r2, [r3, #4]
 8008762:	68fb      	ldr	r3, [r7, #12]
 8008764:	685a      	ldr	r2, [r3, #4]
 8008766:	68fb      	ldr	r3, [r7, #12]
 8008768:	689b      	ldr	r3, [r3, #8]
 800876a:	429a      	cmp	r2, r3
 800876c:	d32b      	bcc.n	80087c6 <prvCopyDataToQueue+0xc2>
 800876e:	68fb      	ldr	r3, [r7, #12]
 8008770:	681a      	ldr	r2, [r3, #0]
 8008772:	68fb      	ldr	r3, [r7, #12]
 8008774:	605a      	str	r2, [r3, #4]
 8008776:	e026      	b.n	80087c6 <prvCopyDataToQueue+0xc2>
 8008778:	68fb      	ldr	r3, [r7, #12]
 800877a:	68d8      	ldr	r0, [r3, #12]
 800877c:	68fb      	ldr	r3, [r7, #12]
 800877e:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8008780:	461a      	mov	r2, r3
 8008782:	68b9      	ldr	r1, [r7, #8]
 8008784:	f7f8 f988 	bl	8000a98 <memcpy>
 8008788:	68fb      	ldr	r3, [r7, #12]
 800878a:	68da      	ldr	r2, [r3, #12]
 800878c:	68fb      	ldr	r3, [r7, #12]
 800878e:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8008790:	425b      	negs	r3, r3
 8008792:	441a      	add	r2, r3
 8008794:	68fb      	ldr	r3, [r7, #12]
 8008796:	60da      	str	r2, [r3, #12]
 8008798:	68fb      	ldr	r3, [r7, #12]
 800879a:	68da      	ldr	r2, [r3, #12]
 800879c:	68fb      	ldr	r3, [r7, #12]
 800879e:	681b      	ldr	r3, [r3, #0]
 80087a0:	429a      	cmp	r2, r3
 80087a2:	d207      	bcs.n	80087b4 <prvCopyDataToQueue+0xb0>
 80087a4:	68fb      	ldr	r3, [r7, #12]
 80087a6:	689a      	ldr	r2, [r3, #8]
 80087a8:	68fb      	ldr	r3, [r7, #12]
 80087aa:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80087ac:	425b      	negs	r3, r3
 80087ae:	441a      	add	r2, r3
 80087b0:	68fb      	ldr	r3, [r7, #12]
 80087b2:	60da      	str	r2, [r3, #12]
 80087b4:	687b      	ldr	r3, [r7, #4]
 80087b6:	2b02      	cmp	r3, #2
 80087b8:	d105      	bne.n	80087c6 <prvCopyDataToQueue+0xc2>
 80087ba:	693b      	ldr	r3, [r7, #16]
 80087bc:	2b00      	cmp	r3, #0
 80087be:	d002      	beq.n	80087c6 <prvCopyDataToQueue+0xc2>
 80087c0:	693b      	ldr	r3, [r7, #16]
 80087c2:	3b01      	subs	r3, #1
 80087c4:	613b      	str	r3, [r7, #16]
 80087c6:	693b      	ldr	r3, [r7, #16]
 80087c8:	1c5a      	adds	r2, r3, #1
 80087ca:	68fb      	ldr	r3, [r7, #12]
 80087cc:	639a      	str	r2, [r3, #56]	; 0x38
 80087ce:	697b      	ldr	r3, [r7, #20]
 80087d0:	4618      	mov	r0, r3
 80087d2:	3718      	adds	r7, #24
 80087d4:	46bd      	mov	sp, r7
 80087d6:	bd80      	pop	{r7, pc}

080087d8 <prvCopyDataFromQueue>:
 80087d8:	b580      	push	{r7, lr}
 80087da:	b082      	sub	sp, #8
 80087dc:	af00      	add	r7, sp, #0
 80087de:	6078      	str	r0, [r7, #4]
 80087e0:	6039      	str	r1, [r7, #0]
 80087e2:	687b      	ldr	r3, [r7, #4]
 80087e4:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80087e6:	2b00      	cmp	r3, #0
 80087e8:	d018      	beq.n	800881c <prvCopyDataFromQueue+0x44>
 80087ea:	687b      	ldr	r3, [r7, #4]
 80087ec:	68da      	ldr	r2, [r3, #12]
 80087ee:	687b      	ldr	r3, [r7, #4]
 80087f0:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80087f2:	441a      	add	r2, r3
 80087f4:	687b      	ldr	r3, [r7, #4]
 80087f6:	60da      	str	r2, [r3, #12]
 80087f8:	687b      	ldr	r3, [r7, #4]
 80087fa:	68da      	ldr	r2, [r3, #12]
 80087fc:	687b      	ldr	r3, [r7, #4]
 80087fe:	689b      	ldr	r3, [r3, #8]
 8008800:	429a      	cmp	r2, r3
 8008802:	d303      	bcc.n	800880c <prvCopyDataFromQueue+0x34>
 8008804:	687b      	ldr	r3, [r7, #4]
 8008806:	681a      	ldr	r2, [r3, #0]
 8008808:	687b      	ldr	r3, [r7, #4]
 800880a:	60da      	str	r2, [r3, #12]
 800880c:	687b      	ldr	r3, [r7, #4]
 800880e:	68d9      	ldr	r1, [r3, #12]
 8008810:	687b      	ldr	r3, [r7, #4]
 8008812:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8008814:	461a      	mov	r2, r3
 8008816:	6838      	ldr	r0, [r7, #0]
 8008818:	f7f8 f93e 	bl	8000a98 <memcpy>
 800881c:	bf00      	nop
 800881e:	3708      	adds	r7, #8
 8008820:	46bd      	mov	sp, r7
 8008822:	bd80      	pop	{r7, pc}

08008824 <prvUnlockQueue>:
 8008824:	b580      	push	{r7, lr}
 8008826:	b084      	sub	sp, #16
 8008828:	af00      	add	r7, sp, #0
 800882a:	6078      	str	r0, [r7, #4]
 800882c:	f001 fcfe 	bl	800a22c <vPortEnterCritical>
 8008830:	687b      	ldr	r3, [r7, #4]
 8008832:	f893 3045 	ldrb.w	r3, [r3, #69]	; 0x45
 8008836:	73fb      	strb	r3, [r7, #15]
 8008838:	e011      	b.n	800885e <prvUnlockQueue+0x3a>
 800883a:	687b      	ldr	r3, [r7, #4]
 800883c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 800883e:	2b00      	cmp	r3, #0
 8008840:	d012      	beq.n	8008868 <prvUnlockQueue+0x44>
 8008842:	687b      	ldr	r3, [r7, #4]
 8008844:	3324      	adds	r3, #36	; 0x24
 8008846:	4618      	mov	r0, r3
 8008848:	f000 fe12 	bl	8009470 <xTaskRemoveFromEventList>
 800884c:	4603      	mov	r3, r0
 800884e:	2b00      	cmp	r3, #0
 8008850:	d001      	beq.n	8008856 <prvUnlockQueue+0x32>
 8008852:	f000 fee5 	bl	8009620 <vTaskMissedYield>
 8008856:	7bfb      	ldrb	r3, [r7, #15]
 8008858:	3b01      	subs	r3, #1
 800885a:	b2db      	uxtb	r3, r3
 800885c:	73fb      	strb	r3, [r7, #15]
 800885e:	f997 300f 	ldrsb.w	r3, [r7, #15]
 8008862:	2b00      	cmp	r3, #0
 8008864:	dce9      	bgt.n	800883a <prvUnlockQueue+0x16>
 8008866:	e000      	b.n	800886a <prvUnlockQueue+0x46>
 8008868:	bf00      	nop
 800886a:	687b      	ldr	r3, [r7, #4]
 800886c:	22ff      	movs	r2, #255	; 0xff
 800886e:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 8008872:	f001 fd09 	bl	800a288 <vPortExitCritical>
 8008876:	f001 fcd9 	bl	800a22c <vPortEnterCritical>
 800887a:	687b      	ldr	r3, [r7, #4]
 800887c:	f893 3044 	ldrb.w	r3, [r3, #68]	; 0x44
 8008880:	73bb      	strb	r3, [r7, #14]
 8008882:	e011      	b.n	80088a8 <prvUnlockQueue+0x84>
 8008884:	687b      	ldr	r3, [r7, #4]
 8008886:	691b      	ldr	r3, [r3, #16]
 8008888:	2b00      	cmp	r3, #0
 800888a:	d012      	beq.n	80088b2 <prvUnlockQueue+0x8e>
 800888c:	687b      	ldr	r3, [r7, #4]
 800888e:	3310      	adds	r3, #16
 8008890:	4618      	mov	r0, r3
 8008892:	f000 fded 	bl	8009470 <xTaskRemoveFromEventList>
 8008896:	4603      	mov	r3, r0
 8008898:	2b00      	cmp	r3, #0
 800889a:	d001      	beq.n	80088a0 <prvUnlockQueue+0x7c>
 800889c:	f000 fec0 	bl	8009620 <vTaskMissedYield>
 80088a0:	7bbb      	ldrb	r3, [r7, #14]
 80088a2:	3b01      	subs	r3, #1
 80088a4:	b2db      	uxtb	r3, r3
 80088a6:	73bb      	strb	r3, [r7, #14]
 80088a8:	f997 300e 	ldrsb.w	r3, [r7, #14]
 80088ac:	2b00      	cmp	r3, #0
 80088ae:	dce9      	bgt.n	8008884 <prvUnlockQueue+0x60>
 80088b0:	e000      	b.n	80088b4 <prvUnlockQueue+0x90>
 80088b2:	bf00      	nop
 80088b4:	687b      	ldr	r3, [r7, #4]
 80088b6:	22ff      	movs	r2, #255	; 0xff
 80088b8:	f883 2044 	strb.w	r2, [r3, #68]	; 0x44
 80088bc:	f001 fce4 	bl	800a288 <vPortExitCritical>
 80088c0:	bf00      	nop
 80088c2:	3710      	adds	r7, #16
 80088c4:	46bd      	mov	sp, r7
 80088c6:	bd80      	pop	{r7, pc}

080088c8 <prvIsQueueEmpty>:
 80088c8:	b580      	push	{r7, lr}
 80088ca:	b084      	sub	sp, #16
 80088cc:	af00      	add	r7, sp, #0
 80088ce:	6078      	str	r0, [r7, #4]
 80088d0:	f001 fcac 	bl	800a22c <vPortEnterCritical>
 80088d4:	687b      	ldr	r3, [r7, #4]
 80088d6:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80088d8:	2b00      	cmp	r3, #0
 80088da:	d102      	bne.n	80088e2 <prvIsQueueEmpty+0x1a>
 80088dc:	2301      	movs	r3, #1
 80088de:	60fb      	str	r3, [r7, #12]
 80088e0:	e001      	b.n	80088e6 <prvIsQueueEmpty+0x1e>
 80088e2:	2300      	movs	r3, #0
 80088e4:	60fb      	str	r3, [r7, #12]
 80088e6:	f001 fccf 	bl	800a288 <vPortExitCritical>
 80088ea:	68fb      	ldr	r3, [r7, #12]
 80088ec:	4618      	mov	r0, r3
 80088ee:	3710      	adds	r7, #16
 80088f0:	46bd      	mov	sp, r7
 80088f2:	bd80      	pop	{r7, pc}

080088f4 <prvIsQueueFull>:
 80088f4:	b580      	push	{r7, lr}
 80088f6:	b084      	sub	sp, #16
 80088f8:	af00      	add	r7, sp, #0
 80088fa:	6078      	str	r0, [r7, #4]
 80088fc:	f001 fc96 	bl	800a22c <vPortEnterCritical>
 8008900:	687b      	ldr	r3, [r7, #4]
 8008902:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8008904:	687b      	ldr	r3, [r7, #4]
 8008906:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8008908:	429a      	cmp	r2, r3
 800890a:	d102      	bne.n	8008912 <prvIsQueueFull+0x1e>
 800890c:	2301      	movs	r3, #1
 800890e:	60fb      	str	r3, [r7, #12]
 8008910:	e001      	b.n	8008916 <prvIsQueueFull+0x22>
 8008912:	2300      	movs	r3, #0
 8008914:	60fb      	str	r3, [r7, #12]
 8008916:	f001 fcb7 	bl	800a288 <vPortExitCritical>
 800891a:	68fb      	ldr	r3, [r7, #12]
 800891c:	4618      	mov	r0, r3
 800891e:	3710      	adds	r7, #16
 8008920:	46bd      	mov	sp, r7
 8008922:	bd80      	pop	{r7, pc}

08008924 <vQueueAddToRegistry>:
 8008924:	b480      	push	{r7}
 8008926:	b085      	sub	sp, #20
 8008928:	af00      	add	r7, sp, #0
 800892a:	6078      	str	r0, [r7, #4]
 800892c:	6039      	str	r1, [r7, #0]
 800892e:	2300      	movs	r3, #0
 8008930:	60fb      	str	r3, [r7, #12]
 8008932:	e014      	b.n	800895e <vQueueAddToRegistry+0x3a>
 8008934:	4a0e      	ldr	r2, [pc, #56]	; (8008970 <vQueueAddToRegistry+0x4c>)
 8008936:	68fb      	ldr	r3, [r7, #12]
 8008938:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
 800893c:	2b00      	cmp	r3, #0
 800893e:	d10b      	bne.n	8008958 <vQueueAddToRegistry+0x34>
 8008940:	490b      	ldr	r1, [pc, #44]	; (8008970 <vQueueAddToRegistry+0x4c>)
 8008942:	68fb      	ldr	r3, [r7, #12]
 8008944:	683a      	ldr	r2, [r7, #0]
 8008946:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
 800894a:	4a09      	ldr	r2, [pc, #36]	; (8008970 <vQueueAddToRegistry+0x4c>)
 800894c:	68fb      	ldr	r3, [r7, #12]
 800894e:	00db      	lsls	r3, r3, #3
 8008950:	4413      	add	r3, r2
 8008952:	687a      	ldr	r2, [r7, #4]
 8008954:	605a      	str	r2, [r3, #4]
 8008956:	e005      	b.n	8008964 <vQueueAddToRegistry+0x40>
 8008958:	68fb      	ldr	r3, [r7, #12]
 800895a:	3301      	adds	r3, #1
 800895c:	60fb      	str	r3, [r7, #12]
 800895e:	68fb      	ldr	r3, [r7, #12]
 8008960:	2b07      	cmp	r3, #7
 8008962:	d9e7      	bls.n	8008934 <vQueueAddToRegistry+0x10>
 8008964:	bf00      	nop
 8008966:	3714      	adds	r7, #20
 8008968:	46bd      	mov	sp, r7
 800896a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800896e:	4770      	bx	lr
 8008970:	20015774 	.word	0x20015774

08008974 <vQueueWaitForMessageRestricted>:
 8008974:	b580      	push	{r7, lr}
 8008976:	b086      	sub	sp, #24
 8008978:	af00      	add	r7, sp, #0
 800897a:	60f8      	str	r0, [r7, #12]
 800897c:	60b9      	str	r1, [r7, #8]
 800897e:	607a      	str	r2, [r7, #4]
 8008980:	68fb      	ldr	r3, [r7, #12]
 8008982:	617b      	str	r3, [r7, #20]
 8008984:	f001 fc52 	bl	800a22c <vPortEnterCritical>
 8008988:	697b      	ldr	r3, [r7, #20]
 800898a:	f893 3044 	ldrb.w	r3, [r3, #68]	; 0x44
 800898e:	b25b      	sxtb	r3, r3
 8008990:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8008994:	d103      	bne.n	800899e <vQueueWaitForMessageRestricted+0x2a>
 8008996:	697b      	ldr	r3, [r7, #20]
 8008998:	2200      	movs	r2, #0
 800899a:	f883 2044 	strb.w	r2, [r3, #68]	; 0x44
 800899e:	697b      	ldr	r3, [r7, #20]
 80089a0:	f893 3045 	ldrb.w	r3, [r3, #69]	; 0x45
 80089a4:	b25b      	sxtb	r3, r3
 80089a6:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 80089aa:	d103      	bne.n	80089b4 <vQueueWaitForMessageRestricted+0x40>
 80089ac:	697b      	ldr	r3, [r7, #20]
 80089ae:	2200      	movs	r2, #0
 80089b0:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 80089b4:	f001 fc68 	bl	800a288 <vPortExitCritical>
 80089b8:	697b      	ldr	r3, [r7, #20]
 80089ba:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80089bc:	2b00      	cmp	r3, #0
 80089be:	d106      	bne.n	80089ce <vQueueWaitForMessageRestricted+0x5a>
 80089c0:	697b      	ldr	r3, [r7, #20]
 80089c2:	3324      	adds	r3, #36	; 0x24
 80089c4:	687a      	ldr	r2, [r7, #4]
 80089c6:	68b9      	ldr	r1, [r7, #8]
 80089c8:	4618      	mov	r0, r3
 80089ca:	f000 fd27 	bl	800941c <vTaskPlaceOnEventListRestricted>
 80089ce:	6978      	ldr	r0, [r7, #20]
 80089d0:	f7ff ff28 	bl	8008824 <prvUnlockQueue>
 80089d4:	bf00      	nop
 80089d6:	3718      	adds	r7, #24
 80089d8:	46bd      	mov	sp, r7
 80089da:	bd80      	pop	{r7, pc}

080089dc <vListInitialise>:
 80089dc:	b480      	push	{r7}
 80089de:	b083      	sub	sp, #12
 80089e0:	af00      	add	r7, sp, #0
 80089e2:	6078      	str	r0, [r7, #4]
 80089e4:	687b      	ldr	r3, [r7, #4]
 80089e6:	f103 0208 	add.w	r2, r3, #8
 80089ea:	687b      	ldr	r3, [r7, #4]
 80089ec:	605a      	str	r2, [r3, #4]
 80089ee:	687b      	ldr	r3, [r7, #4]
 80089f0:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80089f4:	609a      	str	r2, [r3, #8]
 80089f6:	687b      	ldr	r3, [r7, #4]
 80089f8:	f103 0208 	add.w	r2, r3, #8
 80089fc:	687b      	ldr	r3, [r7, #4]
 80089fe:	60da      	str	r2, [r3, #12]
 8008a00:	687b      	ldr	r3, [r7, #4]
 8008a02:	f103 0208 	add.w	r2, r3, #8
 8008a06:	687b      	ldr	r3, [r7, #4]
 8008a08:	611a      	str	r2, [r3, #16]
 8008a0a:	687b      	ldr	r3, [r7, #4]
 8008a0c:	2200      	movs	r2, #0
 8008a0e:	601a      	str	r2, [r3, #0]
 8008a10:	bf00      	nop
 8008a12:	370c      	adds	r7, #12
 8008a14:	46bd      	mov	sp, r7
 8008a16:	f85d 7b04 	ldr.w	r7, [sp], #4
 8008a1a:	4770      	bx	lr

08008a1c <vListInitialiseItem>:
 8008a1c:	b480      	push	{r7}
 8008a1e:	b083      	sub	sp, #12
 8008a20:	af00      	add	r7, sp, #0
 8008a22:	6078      	str	r0, [r7, #4]
 8008a24:	687b      	ldr	r3, [r7, #4]
 8008a26:	2200      	movs	r2, #0
 8008a28:	611a      	str	r2, [r3, #16]
 8008a2a:	bf00      	nop
 8008a2c:	370c      	adds	r7, #12
 8008a2e:	46bd      	mov	sp, r7
 8008a30:	f85d 7b04 	ldr.w	r7, [sp], #4
 8008a34:	4770      	bx	lr
 8008a36:	bf00      	nop

08008a38 <vListInsertEnd>:
 8008a38:	b480      	push	{r7}
 8008a3a:	b085      	sub	sp, #20
 8008a3c:	af00      	add	r7, sp, #0
 8008a3e:	6078      	str	r0, [r7, #4]
 8008a40:	6039      	str	r1, [r7, #0]
 8008a42:	687b      	ldr	r3, [r7, #4]
 8008a44:	685b      	ldr	r3, [r3, #4]
 8008a46:	60fb      	str	r3, [r7, #12]
 8008a48:	683b      	ldr	r3, [r7, #0]
 8008a4a:	68fa      	ldr	r2, [r7, #12]
 8008a4c:	605a      	str	r2, [r3, #4]
 8008a4e:	68fb      	ldr	r3, [r7, #12]
 8008a50:	689a      	ldr	r2, [r3, #8]
 8008a52:	683b      	ldr	r3, [r7, #0]
 8008a54:	609a      	str	r2, [r3, #8]
 8008a56:	68fb      	ldr	r3, [r7, #12]
 8008a58:	689b      	ldr	r3, [r3, #8]
 8008a5a:	683a      	ldr	r2, [r7, #0]
 8008a5c:	605a      	str	r2, [r3, #4]
 8008a5e:	68fb      	ldr	r3, [r7, #12]
 8008a60:	683a      	ldr	r2, [r7, #0]
 8008a62:	609a      	str	r2, [r3, #8]
 8008a64:	683b      	ldr	r3, [r7, #0]
 8008a66:	687a      	ldr	r2, [r7, #4]
 8008a68:	611a      	str	r2, [r3, #16]
 8008a6a:	687b      	ldr	r3, [r7, #4]
 8008a6c:	681b      	ldr	r3, [r3, #0]
 8008a6e:	1c5a      	adds	r2, r3, #1
 8008a70:	687b      	ldr	r3, [r7, #4]
 8008a72:	601a      	str	r2, [r3, #0]
 8008a74:	bf00      	nop
 8008a76:	3714      	adds	r7, #20
 8008a78:	46bd      	mov	sp, r7
 8008a7a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8008a7e:	4770      	bx	lr

08008a80 <vListInsert>:
 8008a80:	b480      	push	{r7}
 8008a82:	b085      	sub	sp, #20
 8008a84:	af00      	add	r7, sp, #0
 8008a86:	6078      	str	r0, [r7, #4]
 8008a88:	6039      	str	r1, [r7, #0]
 8008a8a:	683b      	ldr	r3, [r7, #0]
 8008a8c:	681b      	ldr	r3, [r3, #0]
 8008a8e:	60bb      	str	r3, [r7, #8]
 8008a90:	68bb      	ldr	r3, [r7, #8]
 8008a92:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8008a96:	d103      	bne.n	8008aa0 <vListInsert+0x20>
 8008a98:	687b      	ldr	r3, [r7, #4]
 8008a9a:	691b      	ldr	r3, [r3, #16]
 8008a9c:	60fb      	str	r3, [r7, #12]
 8008a9e:	e00c      	b.n	8008aba <vListInsert+0x3a>
 8008aa0:	687b      	ldr	r3, [r7, #4]
 8008aa2:	3308      	adds	r3, #8
 8008aa4:	60fb      	str	r3, [r7, #12]
 8008aa6:	e002      	b.n	8008aae <vListInsert+0x2e>
 8008aa8:	68fb      	ldr	r3, [r7, #12]
 8008aaa:	685b      	ldr	r3, [r3, #4]
 8008aac:	60fb      	str	r3, [r7, #12]
 8008aae:	68fb      	ldr	r3, [r7, #12]
 8008ab0:	685b      	ldr	r3, [r3, #4]
 8008ab2:	681a      	ldr	r2, [r3, #0]
 8008ab4:	68bb      	ldr	r3, [r7, #8]
 8008ab6:	429a      	cmp	r2, r3
 8008ab8:	d9f6      	bls.n	8008aa8 <vListInsert+0x28>
 8008aba:	68fb      	ldr	r3, [r7, #12]
 8008abc:	685a      	ldr	r2, [r3, #4]
 8008abe:	683b      	ldr	r3, [r7, #0]
 8008ac0:	605a      	str	r2, [r3, #4]
 8008ac2:	683b      	ldr	r3, [r7, #0]
 8008ac4:	685b      	ldr	r3, [r3, #4]
 8008ac6:	683a      	ldr	r2, [r7, #0]
 8008ac8:	609a      	str	r2, [r3, #8]
 8008aca:	683b      	ldr	r3, [r7, #0]
 8008acc:	68fa      	ldr	r2, [r7, #12]
 8008ace:	609a      	str	r2, [r3, #8]
 8008ad0:	68fb      	ldr	r3, [r7, #12]
 8008ad2:	683a      	ldr	r2, [r7, #0]
 8008ad4:	605a      	str	r2, [r3, #4]
 8008ad6:	683b      	ldr	r3, [r7, #0]
 8008ad8:	687a      	ldr	r2, [r7, #4]
 8008ada:	611a      	str	r2, [r3, #16]
 8008adc:	687b      	ldr	r3, [r7, #4]
 8008ade:	681b      	ldr	r3, [r3, #0]
 8008ae0:	1c5a      	adds	r2, r3, #1
 8008ae2:	687b      	ldr	r3, [r7, #4]
 8008ae4:	601a      	str	r2, [r3, #0]
 8008ae6:	bf00      	nop
 8008ae8:	3714      	adds	r7, #20
 8008aea:	46bd      	mov	sp, r7
 8008aec:	f85d 7b04 	ldr.w	r7, [sp], #4
 8008af0:	4770      	bx	lr
 8008af2:	bf00      	nop

08008af4 <uxListRemove>:
 8008af4:	b480      	push	{r7}
 8008af6:	b085      	sub	sp, #20
 8008af8:	af00      	add	r7, sp, #0
 8008afa:	6078      	str	r0, [r7, #4]
 8008afc:	687b      	ldr	r3, [r7, #4]
 8008afe:	691b      	ldr	r3, [r3, #16]
 8008b00:	60fb      	str	r3, [r7, #12]
 8008b02:	687b      	ldr	r3, [r7, #4]
 8008b04:	685b      	ldr	r3, [r3, #4]
 8008b06:	687a      	ldr	r2, [r7, #4]
 8008b08:	6892      	ldr	r2, [r2, #8]
 8008b0a:	609a      	str	r2, [r3, #8]
 8008b0c:	687b      	ldr	r3, [r7, #4]
 8008b0e:	689b      	ldr	r3, [r3, #8]
 8008b10:	687a      	ldr	r2, [r7, #4]
 8008b12:	6852      	ldr	r2, [r2, #4]
 8008b14:	605a      	str	r2, [r3, #4]
 8008b16:	68fb      	ldr	r3, [r7, #12]
 8008b18:	685a      	ldr	r2, [r3, #4]
 8008b1a:	687b      	ldr	r3, [r7, #4]
 8008b1c:	429a      	cmp	r2, r3
 8008b1e:	d103      	bne.n	8008b28 <uxListRemove+0x34>
 8008b20:	687b      	ldr	r3, [r7, #4]
 8008b22:	689a      	ldr	r2, [r3, #8]
 8008b24:	68fb      	ldr	r3, [r7, #12]
 8008b26:	605a      	str	r2, [r3, #4]
 8008b28:	687b      	ldr	r3, [r7, #4]
 8008b2a:	2200      	movs	r2, #0
 8008b2c:	611a      	str	r2, [r3, #16]
 8008b2e:	68fb      	ldr	r3, [r7, #12]
 8008b30:	681b      	ldr	r3, [r3, #0]
 8008b32:	1e5a      	subs	r2, r3, #1
 8008b34:	68fb      	ldr	r3, [r7, #12]
 8008b36:	601a      	str	r2, [r3, #0]
 8008b38:	68fb      	ldr	r3, [r7, #12]
 8008b3a:	681b      	ldr	r3, [r3, #0]
 8008b3c:	4618      	mov	r0, r3
 8008b3e:	3714      	adds	r7, #20
 8008b40:	46bd      	mov	sp, r7
 8008b42:	f85d 7b04 	ldr.w	r7, [sp], #4
 8008b46:	4770      	bx	lr

08008b48 <xTaskCreateStatic>:
 8008b48:	b580      	push	{r7, lr}
 8008b4a:	b08e      	sub	sp, #56	; 0x38
 8008b4c:	af04      	add	r7, sp, #16
 8008b4e:	60f8      	str	r0, [r7, #12]
 8008b50:	60b9      	str	r1, [r7, #8]
 8008b52:	607a      	str	r2, [r7, #4]
 8008b54:	603b      	str	r3, [r7, #0]
 8008b56:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8008b58:	2b00      	cmp	r3, #0
 8008b5a:	d109      	bne.n	8008b70 <xTaskCreateStatic+0x28>
 8008b5c:	f04f 0350 	mov.w	r3, #80	; 0x50
 8008b60:	f383 8811 	msr	BASEPRI, r3
 8008b64:	f3bf 8f6f 	isb	sy
 8008b68:	f3bf 8f4f 	dsb	sy
 8008b6c:	61bb      	str	r3, [r7, #24]
 8008b6e:	e7fe      	b.n	8008b6e <xTaskCreateStatic+0x26>
 8008b70:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008b72:	2b00      	cmp	r3, #0
 8008b74:	d109      	bne.n	8008b8a <xTaskCreateStatic+0x42>
 8008b76:	f04f 0350 	mov.w	r3, #80	; 0x50
 8008b7a:	f383 8811 	msr	BASEPRI, r3
 8008b7e:	f3bf 8f6f 	isb	sy
 8008b82:	f3bf 8f4f 	dsb	sy
 8008b86:	61fb      	str	r3, [r7, #28]
 8008b88:	e7fe      	b.n	8008b88 <xTaskCreateStatic+0x40>
 8008b8a:	f44f 6390 	mov.w	r3, #1152	; 0x480
 8008b8e:	613b      	str	r3, [r7, #16]
 8008b90:	693b      	ldr	r3, [r7, #16]
 8008b92:	f5b3 6f90 	cmp.w	r3, #1152	; 0x480
 8008b96:	d009      	beq.n	8008bac <xTaskCreateStatic+0x64>
 8008b98:	f04f 0350 	mov.w	r3, #80	; 0x50
 8008b9c:	f383 8811 	msr	BASEPRI, r3
 8008ba0:	f3bf 8f6f 	isb	sy
 8008ba4:	f3bf 8f4f 	dsb	sy
 8008ba8:	623b      	str	r3, [r7, #32]
 8008baa:	e7fe      	b.n	8008baa <xTaskCreateStatic+0x62>
 8008bac:	693b      	ldr	r3, [r7, #16]
 8008bae:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008bb0:	2b00      	cmp	r3, #0
 8008bb2:	d01e      	beq.n	8008bf2 <xTaskCreateStatic+0xaa>
 8008bb4:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8008bb6:	2b00      	cmp	r3, #0
 8008bb8:	d01b      	beq.n	8008bf2 <xTaskCreateStatic+0xaa>
 8008bba:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008bbc:	627b      	str	r3, [r7, #36]	; 0x24
 8008bbe:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8008bc0:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8008bc2:	631a      	str	r2, [r3, #48]	; 0x30
 8008bc4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8008bc6:	2202      	movs	r2, #2
 8008bc8:	f883 247d 	strb.w	r2, [r3, #1149]	; 0x47d
 8008bcc:	2300      	movs	r3, #0
 8008bce:	9303      	str	r3, [sp, #12]
 8008bd0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8008bd2:	9302      	str	r3, [sp, #8]
 8008bd4:	f107 0314 	add.w	r3, r7, #20
 8008bd8:	9301      	str	r3, [sp, #4]
 8008bda:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8008bdc:	9300      	str	r3, [sp, #0]
 8008bde:	683b      	ldr	r3, [r7, #0]
 8008be0:	687a      	ldr	r2, [r7, #4]
 8008be2:	68b9      	ldr	r1, [r7, #8]
 8008be4:	68f8      	ldr	r0, [r7, #12]
 8008be6:	f000 f80b 	bl	8008c00 <prvInitialiseNewTask>
 8008bea:	6a78      	ldr	r0, [r7, #36]	; 0x24
 8008bec:	f000 f8e2 	bl	8008db4 <prvAddNewTaskToReadyList>
 8008bf0:	e001      	b.n	8008bf6 <xTaskCreateStatic+0xae>
 8008bf2:	2300      	movs	r3, #0
 8008bf4:	617b      	str	r3, [r7, #20]
 8008bf6:	697b      	ldr	r3, [r7, #20]
 8008bf8:	4618      	mov	r0, r3
 8008bfa:	3728      	adds	r7, #40	; 0x28
 8008bfc:	46bd      	mov	sp, r7
 8008bfe:	bd80      	pop	{r7, pc}

08008c00 <prvInitialiseNewTask>:
 8008c00:	b590      	push	{r4, r7, lr}
 8008c02:	b089      	sub	sp, #36	; 0x24
 8008c04:	af00      	add	r7, sp, #0
 8008c06:	60f8      	str	r0, [r7, #12]
 8008c08:	60b9      	str	r1, [r7, #8]
 8008c0a:	607a      	str	r2, [r7, #4]
 8008c0c:	603b      	str	r3, [r7, #0]
 8008c0e:	68bb      	ldr	r3, [r7, #8]
 8008c10:	2b00      	cmp	r3, #0
 8008c12:	d109      	bne.n	8008c28 <prvInitialiseNewTask+0x28>
 8008c14:	f04f 0350 	mov.w	r3, #80	; 0x50
 8008c18:	f383 8811 	msr	BASEPRI, r3
 8008c1c:	f3bf 8f6f 	isb	sy
 8008c20:	f3bf 8f4f 	dsb	sy
 8008c24:	613b      	str	r3, [r7, #16]
 8008c26:	e7fe      	b.n	8008c26 <prvInitialiseNewTask+0x26>
 8008c28:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008c2a:	6b18      	ldr	r0, [r3, #48]	; 0x30
 8008c2c:	687b      	ldr	r3, [r7, #4]
 8008c2e:	009b      	lsls	r3, r3, #2
 8008c30:	461a      	mov	r2, r3
 8008c32:	21a5      	movs	r1, #165	; 0xa5
 8008c34:	f7f7 ffca 	bl	8000bcc <memset>
 8008c38:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008c3a:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8008c3c:	687b      	ldr	r3, [r7, #4]
 8008c3e:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8008c42:	3b01      	subs	r3, #1
 8008c44:	009b      	lsls	r3, r3, #2
 8008c46:	4413      	add	r3, r2
 8008c48:	61bb      	str	r3, [r7, #24]
 8008c4a:	69bb      	ldr	r3, [r7, #24]
 8008c4c:	f023 0307 	bic.w	r3, r3, #7
 8008c50:	61bb      	str	r3, [r7, #24]
 8008c52:	69bb      	ldr	r3, [r7, #24]
 8008c54:	f003 0307 	and.w	r3, r3, #7
 8008c58:	2b00      	cmp	r3, #0
 8008c5a:	d009      	beq.n	8008c70 <prvInitialiseNewTask+0x70>
 8008c5c:	f04f 0350 	mov.w	r3, #80	; 0x50
 8008c60:	f383 8811 	msr	BASEPRI, r3
 8008c64:	f3bf 8f6f 	isb	sy
 8008c68:	f3bf 8f4f 	dsb	sy
 8008c6c:	617b      	str	r3, [r7, #20]
 8008c6e:	e7fe      	b.n	8008c6e <prvInitialiseNewTask+0x6e>
 8008c70:	2300      	movs	r3, #0
 8008c72:	61fb      	str	r3, [r7, #28]
 8008c74:	e012      	b.n	8008c9c <prvInitialiseNewTask+0x9c>
 8008c76:	68ba      	ldr	r2, [r7, #8]
 8008c78:	69fb      	ldr	r3, [r7, #28]
 8008c7a:	4413      	add	r3, r2
 8008c7c:	7819      	ldrb	r1, [r3, #0]
 8008c7e:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8008c80:	69fb      	ldr	r3, [r7, #28]
 8008c82:	4413      	add	r3, r2
 8008c84:	3334      	adds	r3, #52	; 0x34
 8008c86:	460a      	mov	r2, r1
 8008c88:	701a      	strb	r2, [r3, #0]
 8008c8a:	68ba      	ldr	r2, [r7, #8]
 8008c8c:	69fb      	ldr	r3, [r7, #28]
 8008c8e:	4413      	add	r3, r2
 8008c90:	781b      	ldrb	r3, [r3, #0]
 8008c92:	2b00      	cmp	r3, #0
 8008c94:	d006      	beq.n	8008ca4 <prvInitialiseNewTask+0xa4>
 8008c96:	69fb      	ldr	r3, [r7, #28]
 8008c98:	3301      	adds	r3, #1
 8008c9a:	61fb      	str	r3, [r7, #28]
 8008c9c:	69fb      	ldr	r3, [r7, #28]
 8008c9e:	2b09      	cmp	r3, #9
 8008ca0:	d9e9      	bls.n	8008c76 <prvInitialiseNewTask+0x76>
 8008ca2:	e000      	b.n	8008ca6 <prvInitialiseNewTask+0xa6>
 8008ca4:	bf00      	nop
 8008ca6:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008ca8:	2200      	movs	r2, #0
 8008caa:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d
 8008cae:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8008cb0:	2b04      	cmp	r3, #4
 8008cb2:	d901      	bls.n	8008cb8 <prvInitialiseNewTask+0xb8>
 8008cb4:	2304      	movs	r3, #4
 8008cb6:	633b      	str	r3, [r7, #48]	; 0x30
 8008cb8:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008cba:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8008cbc:	62da      	str	r2, [r3, #44]	; 0x2c
 8008cbe:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008cc0:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8008cc2:	649a      	str	r2, [r3, #72]	; 0x48
 8008cc4:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008cc6:	2200      	movs	r2, #0
 8008cc8:	64da      	str	r2, [r3, #76]	; 0x4c
 8008cca:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008ccc:	3304      	adds	r3, #4
 8008cce:	4618      	mov	r0, r3
 8008cd0:	f7ff fea4 	bl	8008a1c <vListInitialiseItem>
 8008cd4:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008cd6:	3318      	adds	r3, #24
 8008cd8:	4618      	mov	r0, r3
 8008cda:	f7ff fe9f 	bl	8008a1c <vListInitialiseItem>
 8008cde:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008ce0:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8008ce2:	611a      	str	r2, [r3, #16]
 8008ce4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8008ce6:	f1c3 0205 	rsb	r2, r3, #5
 8008cea:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008cec:	619a      	str	r2, [r3, #24]
 8008cee:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008cf0:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8008cf2:	625a      	str	r2, [r3, #36]	; 0x24
 8008cf4:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008cf6:	2200      	movs	r2, #0
 8008cf8:	f8c3 2478 	str.w	r2, [r3, #1144]	; 0x478
 8008cfc:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008cfe:	2200      	movs	r2, #0
 8008d00:	f883 247c 	strb.w	r2, [r3, #1148]	; 0x47c
 8008d04:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008d06:	3350      	adds	r3, #80	; 0x50
 8008d08:	f44f 6285 	mov.w	r2, #1064	; 0x428
 8008d0c:	2100      	movs	r1, #0
 8008d0e:	4618      	mov	r0, r3
 8008d10:	f7f7 ff5c 	bl	8000bcc <memset>
 8008d14:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008d16:	f503 724f 	add.w	r2, r3, #828	; 0x33c
 8008d1a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008d1c:	655a      	str	r2, [r3, #84]	; 0x54
 8008d1e:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008d20:	f503 7269 	add.w	r2, r3, #932	; 0x3a4
 8008d24:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008d26:	659a      	str	r2, [r3, #88]	; 0x58
 8008d28:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008d2a:	f203 420c 	addw	r2, r3, #1036	; 0x40c
 8008d2e:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008d30:	65da      	str	r2, [r3, #92]	; 0x5c
 8008d32:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008d34:	4a1e      	ldr	r2, [pc, #120]	; (8008db0 <prvInitialiseNewTask+0x1b0>)
 8008d36:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
 8008d3a:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8008d3c:	f04f 0301 	mov.w	r3, #1
 8008d40:	f04f 0400 	mov.w	r4, #0
 8008d44:	e9c2 343e 	strd	r3, r4, [r2, #248]	; 0xf8
 8008d48:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008d4a:	f243 320e 	movw	r2, #13070	; 0x330e
 8008d4e:	f8a3 2100 	strh.w	r2, [r3, #256]	; 0x100
 8008d52:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008d54:	f64a 32cd 	movw	r2, #43981	; 0xabcd
 8008d58:	f8a3 2102 	strh.w	r2, [r3, #258]	; 0x102
 8008d5c:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008d5e:	f241 2234 	movw	r2, #4660	; 0x1234
 8008d62:	f8a3 2104 	strh.w	r2, [r3, #260]	; 0x104
 8008d66:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008d68:	f24e 626d 	movw	r2, #58989	; 0xe66d
 8008d6c:	f8a3 2106 	strh.w	r2, [r3, #262]	; 0x106
 8008d70:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008d72:	f64d 62ec 	movw	r2, #57068	; 0xdeec
 8008d76:	f8a3 2108 	strh.w	r2, [r3, #264]	; 0x108
 8008d7a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008d7c:	2205      	movs	r2, #5
 8008d7e:	f8a3 210a 	strh.w	r2, [r3, #266]	; 0x10a
 8008d82:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008d84:	220b      	movs	r2, #11
 8008d86:	f8a3 210c 	strh.w	r2, [r3, #268]	; 0x10c
 8008d8a:	683a      	ldr	r2, [r7, #0]
 8008d8c:	68f9      	ldr	r1, [r7, #12]
 8008d8e:	69b8      	ldr	r0, [r7, #24]
 8008d90:	f001 f924 	bl	8009fdc <pxPortInitialiseStack>
 8008d94:	4602      	mov	r2, r0
 8008d96:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8008d98:	601a      	str	r2, [r3, #0]
 8008d9a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8008d9c:	2b00      	cmp	r3, #0
 8008d9e:	d002      	beq.n	8008da6 <prvInitialiseNewTask+0x1a6>
 8008da0:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8008da2:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8008da4:	601a      	str	r2, [r3, #0]
 8008da6:	bf00      	nop
 8008da8:	3724      	adds	r7, #36	; 0x24
 8008daa:	46bd      	mov	sp, r7
 8008dac:	bd90      	pop	{r4, r7, pc}
 8008dae:	bf00      	nop
 8008db0:	0800a848 	.word	0x0800a848

08008db4 <prvAddNewTaskToReadyList>:
 8008db4:	b580      	push	{r7, lr}
 8008db6:	b082      	sub	sp, #8
 8008db8:	af00      	add	r7, sp, #0
 8008dba:	6078      	str	r0, [r7, #4]
 8008dbc:	f001 fa36 	bl	800a22c <vPortEnterCritical>
 8008dc0:	4b2c      	ldr	r3, [pc, #176]	; (8008e74 <prvAddNewTaskToReadyList+0xc0>)
 8008dc2:	681b      	ldr	r3, [r3, #0]
 8008dc4:	3301      	adds	r3, #1
 8008dc6:	4a2b      	ldr	r2, [pc, #172]	; (8008e74 <prvAddNewTaskToReadyList+0xc0>)
 8008dc8:	6013      	str	r3, [r2, #0]
 8008dca:	4b2b      	ldr	r3, [pc, #172]	; (8008e78 <prvAddNewTaskToReadyList+0xc4>)
 8008dcc:	681b      	ldr	r3, [r3, #0]
 8008dce:	2b00      	cmp	r3, #0
 8008dd0:	d109      	bne.n	8008de6 <prvAddNewTaskToReadyList+0x32>
 8008dd2:	4a29      	ldr	r2, [pc, #164]	; (8008e78 <prvAddNewTaskToReadyList+0xc4>)
 8008dd4:	687b      	ldr	r3, [r7, #4]
 8008dd6:	6013      	str	r3, [r2, #0]
 8008dd8:	4b26      	ldr	r3, [pc, #152]	; (8008e74 <prvAddNewTaskToReadyList+0xc0>)
 8008dda:	681b      	ldr	r3, [r3, #0]
 8008ddc:	2b01      	cmp	r3, #1
 8008dde:	d110      	bne.n	8008e02 <prvAddNewTaskToReadyList+0x4e>
 8008de0:	f000 fc44 	bl	800966c <prvInitialiseTaskLists>
 8008de4:	e00d      	b.n	8008e02 <prvAddNewTaskToReadyList+0x4e>
 8008de6:	4b25      	ldr	r3, [pc, #148]	; (8008e7c <prvAddNewTaskToReadyList+0xc8>)
 8008de8:	681b      	ldr	r3, [r3, #0]
 8008dea:	2b00      	cmp	r3, #0
 8008dec:	d109      	bne.n	8008e02 <prvAddNewTaskToReadyList+0x4e>
 8008dee:	4b22      	ldr	r3, [pc, #136]	; (8008e78 <prvAddNewTaskToReadyList+0xc4>)
 8008df0:	681b      	ldr	r3, [r3, #0]
 8008df2:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8008df4:	687b      	ldr	r3, [r7, #4]
 8008df6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8008df8:	429a      	cmp	r2, r3
 8008dfa:	d802      	bhi.n	8008e02 <prvAddNewTaskToReadyList+0x4e>
 8008dfc:	4a1e      	ldr	r2, [pc, #120]	; (8008e78 <prvAddNewTaskToReadyList+0xc4>)
 8008dfe:	687b      	ldr	r3, [r7, #4]
 8008e00:	6013      	str	r3, [r2, #0]
 8008e02:	4b1f      	ldr	r3, [pc, #124]	; (8008e80 <prvAddNewTaskToReadyList+0xcc>)
 8008e04:	681b      	ldr	r3, [r3, #0]
 8008e06:	3301      	adds	r3, #1
 8008e08:	4a1d      	ldr	r2, [pc, #116]	; (8008e80 <prvAddNewTaskToReadyList+0xcc>)
 8008e0a:	6013      	str	r3, [r2, #0]
 8008e0c:	4b1c      	ldr	r3, [pc, #112]	; (8008e80 <prvAddNewTaskToReadyList+0xcc>)
 8008e0e:	681a      	ldr	r2, [r3, #0]
 8008e10:	687b      	ldr	r3, [r7, #4]
 8008e12:	641a      	str	r2, [r3, #64]	; 0x40
 8008e14:	687b      	ldr	r3, [r7, #4]
 8008e16:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8008e18:	2201      	movs	r2, #1
 8008e1a:	409a      	lsls	r2, r3
 8008e1c:	4b19      	ldr	r3, [pc, #100]	; (8008e84 <prvAddNewTaskToReadyList+0xd0>)
 8008e1e:	681b      	ldr	r3, [r3, #0]
 8008e20:	4313      	orrs	r3, r2
 8008e22:	4a18      	ldr	r2, [pc, #96]	; (8008e84 <prvAddNewTaskToReadyList+0xd0>)
 8008e24:	6013      	str	r3, [r2, #0]
 8008e26:	687b      	ldr	r3, [r7, #4]
 8008e28:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8008e2a:	4613      	mov	r3, r2
 8008e2c:	009b      	lsls	r3, r3, #2
 8008e2e:	4413      	add	r3, r2
 8008e30:	009b      	lsls	r3, r3, #2
 8008e32:	4a15      	ldr	r2, [pc, #84]	; (8008e88 <prvAddNewTaskToReadyList+0xd4>)
 8008e34:	441a      	add	r2, r3
 8008e36:	687b      	ldr	r3, [r7, #4]
 8008e38:	3304      	adds	r3, #4
 8008e3a:	4619      	mov	r1, r3
 8008e3c:	4610      	mov	r0, r2
 8008e3e:	f7ff fdfb 	bl	8008a38 <vListInsertEnd>
 8008e42:	f001 fa21 	bl	800a288 <vPortExitCritical>
 8008e46:	4b0d      	ldr	r3, [pc, #52]	; (8008e7c <prvAddNewTaskToReadyList+0xc8>)
 8008e48:	681b      	ldr	r3, [r3, #0]
 8008e4a:	2b00      	cmp	r3, #0
 8008e4c:	d00e      	beq.n	8008e6c <prvAddNewTaskToReadyList+0xb8>
 8008e4e:	4b0a      	ldr	r3, [pc, #40]	; (8008e78 <prvAddNewTaskToReadyList+0xc4>)
 8008e50:	681b      	ldr	r3, [r3, #0]
 8008e52:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8008e54:	687b      	ldr	r3, [r7, #4]
 8008e56:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8008e58:	429a      	cmp	r2, r3
 8008e5a:	d207      	bcs.n	8008e6c <prvAddNewTaskToReadyList+0xb8>
 8008e5c:	4b0b      	ldr	r3, [pc, #44]	; (8008e8c <prvAddNewTaskToReadyList+0xd8>)
 8008e5e:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 8008e62:	601a      	str	r2, [r3, #0]
 8008e64:	f3bf 8f4f 	dsb	sy
 8008e68:	f3bf 8f6f 	isb	sy
 8008e6c:	bf00      	nop
 8008e6e:	3708      	adds	r7, #8
 8008e70:	46bd      	mov	sp, r7
 8008e72:	bd80      	pop	{r7, pc}
 8008e74:	20000bec 	.word	0x20000bec
 8008e78:	20000b14 	.word	0x20000b14
 8008e7c:	20000bf8 	.word	0x20000bf8
 8008e80:	20000c08 	.word	0x20000c08
 8008e84:	20000bf4 	.word	0x20000bf4
 8008e88:	20000b18 	.word	0x20000b18
 8008e8c:	e000ed04 	.word	0xe000ed04

08008e90 <vTaskDelay>:
 8008e90:	b580      	push	{r7, lr}
 8008e92:	b084      	sub	sp, #16
 8008e94:	af00      	add	r7, sp, #0
 8008e96:	6078      	str	r0, [r7, #4]
 8008e98:	2300      	movs	r3, #0
 8008e9a:	60fb      	str	r3, [r7, #12]
 8008e9c:	687b      	ldr	r3, [r7, #4]
 8008e9e:	2b00      	cmp	r3, #0
 8008ea0:	d016      	beq.n	8008ed0 <vTaskDelay+0x40>
 8008ea2:	4b13      	ldr	r3, [pc, #76]	; (8008ef0 <vTaskDelay+0x60>)
 8008ea4:	681b      	ldr	r3, [r3, #0]
 8008ea6:	2b00      	cmp	r3, #0
 8008ea8:	d009      	beq.n	8008ebe <vTaskDelay+0x2e>
 8008eaa:	f04f 0350 	mov.w	r3, #80	; 0x50
 8008eae:	f383 8811 	msr	BASEPRI, r3
 8008eb2:	f3bf 8f6f 	isb	sy
 8008eb6:	f3bf 8f4f 	dsb	sy
 8008eba:	60bb      	str	r3, [r7, #8]
 8008ebc:	e7fe      	b.n	8008ebc <vTaskDelay+0x2c>
 8008ebe:	f000 f889 	bl	8008fd4 <vTaskSuspendAll>
 8008ec2:	2100      	movs	r1, #0
 8008ec4:	6878      	ldr	r0, [r7, #4]
 8008ec6:	f000 fd33 	bl	8009930 <prvAddCurrentTaskToDelayedList>
 8008eca:	f000 f891 	bl	8008ff0 <xTaskResumeAll>
 8008ece:	60f8      	str	r0, [r7, #12]
 8008ed0:	68fb      	ldr	r3, [r7, #12]
 8008ed2:	2b00      	cmp	r3, #0
 8008ed4:	d107      	bne.n	8008ee6 <vTaskDelay+0x56>
 8008ed6:	4b07      	ldr	r3, [pc, #28]	; (8008ef4 <vTaskDelay+0x64>)
 8008ed8:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 8008edc:	601a      	str	r2, [r3, #0]
 8008ede:	f3bf 8f4f 	dsb	sy
 8008ee2:	f3bf 8f6f 	isb	sy
 8008ee6:	bf00      	nop
 8008ee8:	3710      	adds	r7, #16
 8008eea:	46bd      	mov	sp, r7
 8008eec:	bd80      	pop	{r7, pc}
 8008eee:	bf00      	nop
 8008ef0:	20000c14 	.word	0x20000c14
 8008ef4:	e000ed04 	.word	0xe000ed04

08008ef8 <vTaskStartScheduler>:
 8008ef8:	b580      	push	{r7, lr}
 8008efa:	b08a      	sub	sp, #40	; 0x28
 8008efc:	af04      	add	r7, sp, #16
 8008efe:	2300      	movs	r3, #0
 8008f00:	60bb      	str	r3, [r7, #8]
 8008f02:	2300      	movs	r3, #0
 8008f04:	607b      	str	r3, [r7, #4]
 8008f06:	463a      	mov	r2, r7
 8008f08:	1d39      	adds	r1, r7, #4
 8008f0a:	f107 0308 	add.w	r3, r7, #8
 8008f0e:	4618      	mov	r0, r3
 8008f10:	f7fd fe4e 	bl	8006bb0 <vApplicationGetIdleTaskMemory>
 8008f14:	6839      	ldr	r1, [r7, #0]
 8008f16:	687b      	ldr	r3, [r7, #4]
 8008f18:	68ba      	ldr	r2, [r7, #8]
 8008f1a:	9202      	str	r2, [sp, #8]
 8008f1c:	9301      	str	r3, [sp, #4]
 8008f1e:	2300      	movs	r3, #0
 8008f20:	9300      	str	r3, [sp, #0]
 8008f22:	2300      	movs	r3, #0
 8008f24:	460a      	mov	r2, r1
 8008f26:	4923      	ldr	r1, [pc, #140]	; (8008fb4 <vTaskStartScheduler+0xbc>)
 8008f28:	4823      	ldr	r0, [pc, #140]	; (8008fb8 <vTaskStartScheduler+0xc0>)
 8008f2a:	f7ff fe0d 	bl	8008b48 <xTaskCreateStatic>
 8008f2e:	4602      	mov	r2, r0
 8008f30:	4b22      	ldr	r3, [pc, #136]	; (8008fbc <vTaskStartScheduler+0xc4>)
 8008f32:	601a      	str	r2, [r3, #0]
 8008f34:	4b21      	ldr	r3, [pc, #132]	; (8008fbc <vTaskStartScheduler+0xc4>)
 8008f36:	681b      	ldr	r3, [r3, #0]
 8008f38:	2b00      	cmp	r3, #0
 8008f3a:	d002      	beq.n	8008f42 <vTaskStartScheduler+0x4a>
 8008f3c:	2301      	movs	r3, #1
 8008f3e:	617b      	str	r3, [r7, #20]
 8008f40:	e001      	b.n	8008f46 <vTaskStartScheduler+0x4e>
 8008f42:	2300      	movs	r3, #0
 8008f44:	617b      	str	r3, [r7, #20]
 8008f46:	697b      	ldr	r3, [r7, #20]
 8008f48:	2b01      	cmp	r3, #1
 8008f4a:	d102      	bne.n	8008f52 <vTaskStartScheduler+0x5a>
 8008f4c:	f000 fd56 	bl	80099fc <xTimerCreateTimerTask>
 8008f50:	6178      	str	r0, [r7, #20]
 8008f52:	697b      	ldr	r3, [r7, #20]
 8008f54:	2b01      	cmp	r3, #1
 8008f56:	d11a      	bne.n	8008f8e <vTaskStartScheduler+0x96>
 8008f58:	f04f 0350 	mov.w	r3, #80	; 0x50
 8008f5c:	f383 8811 	msr	BASEPRI, r3
 8008f60:	f3bf 8f6f 	isb	sy
 8008f64:	f3bf 8f4f 	dsb	sy
 8008f68:	60fb      	str	r3, [r7, #12]
 8008f6a:	4b15      	ldr	r3, [pc, #84]	; (8008fc0 <vTaskStartScheduler+0xc8>)
 8008f6c:	681b      	ldr	r3, [r3, #0]
 8008f6e:	3350      	adds	r3, #80	; 0x50
 8008f70:	4a14      	ldr	r2, [pc, #80]	; (8008fc4 <vTaskStartScheduler+0xcc>)
 8008f72:	6013      	str	r3, [r2, #0]
 8008f74:	4b14      	ldr	r3, [pc, #80]	; (8008fc8 <vTaskStartScheduler+0xd0>)
 8008f76:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8008f7a:	601a      	str	r2, [r3, #0]
 8008f7c:	4b13      	ldr	r3, [pc, #76]	; (8008fcc <vTaskStartScheduler+0xd4>)
 8008f7e:	2201      	movs	r2, #1
 8008f80:	601a      	str	r2, [r3, #0]
 8008f82:	4b13      	ldr	r3, [pc, #76]	; (8008fd0 <vTaskStartScheduler+0xd8>)
 8008f84:	2200      	movs	r2, #0
 8008f86:	601a      	str	r2, [r3, #0]
 8008f88:	f001 f8b2 	bl	800a0f0 <xPortStartScheduler>
 8008f8c:	e00d      	b.n	8008faa <vTaskStartScheduler+0xb2>
 8008f8e:	697b      	ldr	r3, [r7, #20]
 8008f90:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8008f94:	d109      	bne.n	8008faa <vTaskStartScheduler+0xb2>
 8008f96:	f04f 0350 	mov.w	r3, #80	; 0x50
 8008f9a:	f383 8811 	msr	BASEPRI, r3
 8008f9e:	f3bf 8f6f 	isb	sy
 8008fa2:	f3bf 8f4f 	dsb	sy
 8008fa6:	613b      	str	r3, [r7, #16]
 8008fa8:	e7fe      	b.n	8008fa8 <vTaskStartScheduler+0xb0>
 8008faa:	bf00      	nop
 8008fac:	3718      	adds	r7, #24
 8008fae:	46bd      	mov	sp, r7
 8008fb0:	bd80      	pop	{r7, pc}
 8008fb2:	bf00      	nop
 8008fb4:	0800a84c 	.word	0x0800a84c
 8008fb8:	08009639 	.word	0x08009639
 8008fbc:	20000c10 	.word	0x20000c10
 8008fc0:	20000b14 	.word	0x20000b14
 8008fc4:	20000000 	.word	0x20000000
 8008fc8:	20000c0c 	.word	0x20000c0c
 8008fcc:	20000bf8 	.word	0x20000bf8
 8008fd0:	20000bf0 	.word	0x20000bf0

08008fd4 <vTaskSuspendAll>:
 8008fd4:	b480      	push	{r7}
 8008fd6:	af00      	add	r7, sp, #0
 8008fd8:	4b04      	ldr	r3, [pc, #16]	; (8008fec <vTaskSuspendAll+0x18>)
 8008fda:	681b      	ldr	r3, [r3, #0]
 8008fdc:	3301      	adds	r3, #1
 8008fde:	4a03      	ldr	r2, [pc, #12]	; (8008fec <vTaskSuspendAll+0x18>)
 8008fe0:	6013      	str	r3, [r2, #0]
 8008fe2:	bf00      	nop
 8008fe4:	46bd      	mov	sp, r7
 8008fe6:	f85d 7b04 	ldr.w	r7, [sp], #4
 8008fea:	4770      	bx	lr
 8008fec:	20000c14 	.word	0x20000c14

08008ff0 <xTaskResumeAll>:
 8008ff0:	b580      	push	{r7, lr}
 8008ff2:	b084      	sub	sp, #16
 8008ff4:	af00      	add	r7, sp, #0
 8008ff6:	2300      	movs	r3, #0
 8008ff8:	60fb      	str	r3, [r7, #12]
 8008ffa:	2300      	movs	r3, #0
 8008ffc:	60bb      	str	r3, [r7, #8]
 8008ffe:	4b41      	ldr	r3, [pc, #260]	; (8009104 <xTaskResumeAll+0x114>)
 8009000:	681b      	ldr	r3, [r3, #0]
 8009002:	2b00      	cmp	r3, #0
 8009004:	d109      	bne.n	800901a <xTaskResumeAll+0x2a>
 8009006:	f04f 0350 	mov.w	r3, #80	; 0x50
 800900a:	f383 8811 	msr	BASEPRI, r3
 800900e:	f3bf 8f6f 	isb	sy
 8009012:	f3bf 8f4f 	dsb	sy
 8009016:	603b      	str	r3, [r7, #0]
 8009018:	e7fe      	b.n	8009018 <xTaskResumeAll+0x28>
 800901a:	f001 f907 	bl	800a22c <vPortEnterCritical>
 800901e:	4b39      	ldr	r3, [pc, #228]	; (8009104 <xTaskResumeAll+0x114>)
 8009020:	681b      	ldr	r3, [r3, #0]
 8009022:	3b01      	subs	r3, #1
 8009024:	4a37      	ldr	r2, [pc, #220]	; (8009104 <xTaskResumeAll+0x114>)
 8009026:	6013      	str	r3, [r2, #0]
 8009028:	4b36      	ldr	r3, [pc, #216]	; (8009104 <xTaskResumeAll+0x114>)
 800902a:	681b      	ldr	r3, [r3, #0]
 800902c:	2b00      	cmp	r3, #0
 800902e:	d161      	bne.n	80090f4 <xTaskResumeAll+0x104>
 8009030:	4b35      	ldr	r3, [pc, #212]	; (8009108 <xTaskResumeAll+0x118>)
 8009032:	681b      	ldr	r3, [r3, #0]
 8009034:	2b00      	cmp	r3, #0
 8009036:	d05d      	beq.n	80090f4 <xTaskResumeAll+0x104>
 8009038:	e02e      	b.n	8009098 <xTaskResumeAll+0xa8>
 800903a:	4b34      	ldr	r3, [pc, #208]	; (800910c <xTaskResumeAll+0x11c>)
 800903c:	68db      	ldr	r3, [r3, #12]
 800903e:	68db      	ldr	r3, [r3, #12]
 8009040:	60fb      	str	r3, [r7, #12]
 8009042:	68fb      	ldr	r3, [r7, #12]
 8009044:	3318      	adds	r3, #24
 8009046:	4618      	mov	r0, r3
 8009048:	f7ff fd54 	bl	8008af4 <uxListRemove>
 800904c:	68fb      	ldr	r3, [r7, #12]
 800904e:	3304      	adds	r3, #4
 8009050:	4618      	mov	r0, r3
 8009052:	f7ff fd4f 	bl	8008af4 <uxListRemove>
 8009056:	68fb      	ldr	r3, [r7, #12]
 8009058:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800905a:	2201      	movs	r2, #1
 800905c:	409a      	lsls	r2, r3
 800905e:	4b2c      	ldr	r3, [pc, #176]	; (8009110 <xTaskResumeAll+0x120>)
 8009060:	681b      	ldr	r3, [r3, #0]
 8009062:	4313      	orrs	r3, r2
 8009064:	4a2a      	ldr	r2, [pc, #168]	; (8009110 <xTaskResumeAll+0x120>)
 8009066:	6013      	str	r3, [r2, #0]
 8009068:	68fb      	ldr	r3, [r7, #12]
 800906a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800906c:	4613      	mov	r3, r2
 800906e:	009b      	lsls	r3, r3, #2
 8009070:	4413      	add	r3, r2
 8009072:	009b      	lsls	r3, r3, #2
 8009074:	4a27      	ldr	r2, [pc, #156]	; (8009114 <xTaskResumeAll+0x124>)
 8009076:	441a      	add	r2, r3
 8009078:	68fb      	ldr	r3, [r7, #12]
 800907a:	3304      	adds	r3, #4
 800907c:	4619      	mov	r1, r3
 800907e:	4610      	mov	r0, r2
 8009080:	f7ff fcda 	bl	8008a38 <vListInsertEnd>
 8009084:	68fb      	ldr	r3, [r7, #12]
 8009086:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8009088:	4b23      	ldr	r3, [pc, #140]	; (8009118 <xTaskResumeAll+0x128>)
 800908a:	681b      	ldr	r3, [r3, #0]
 800908c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800908e:	429a      	cmp	r2, r3
 8009090:	d302      	bcc.n	8009098 <xTaskResumeAll+0xa8>
 8009092:	4b22      	ldr	r3, [pc, #136]	; (800911c <xTaskResumeAll+0x12c>)
 8009094:	2201      	movs	r2, #1
 8009096:	601a      	str	r2, [r3, #0]
 8009098:	4b1c      	ldr	r3, [pc, #112]	; (800910c <xTaskResumeAll+0x11c>)
 800909a:	681b      	ldr	r3, [r3, #0]
 800909c:	2b00      	cmp	r3, #0
 800909e:	d1cc      	bne.n	800903a <xTaskResumeAll+0x4a>
 80090a0:	68fb      	ldr	r3, [r7, #12]
 80090a2:	2b00      	cmp	r3, #0
 80090a4:	d001      	beq.n	80090aa <xTaskResumeAll+0xba>
 80090a6:	f000 fb81 	bl	80097ac <prvResetNextTaskUnblockTime>
 80090aa:	4b1d      	ldr	r3, [pc, #116]	; (8009120 <xTaskResumeAll+0x130>)
 80090ac:	681b      	ldr	r3, [r3, #0]
 80090ae:	607b      	str	r3, [r7, #4]
 80090b0:	687b      	ldr	r3, [r7, #4]
 80090b2:	2b00      	cmp	r3, #0
 80090b4:	d010      	beq.n	80090d8 <xTaskResumeAll+0xe8>
 80090b6:	f000 f847 	bl	8009148 <xTaskIncrementTick>
 80090ba:	4603      	mov	r3, r0
 80090bc:	2b00      	cmp	r3, #0
 80090be:	d002      	beq.n	80090c6 <xTaskResumeAll+0xd6>
 80090c0:	4b16      	ldr	r3, [pc, #88]	; (800911c <xTaskResumeAll+0x12c>)
 80090c2:	2201      	movs	r2, #1
 80090c4:	601a      	str	r2, [r3, #0]
 80090c6:	687b      	ldr	r3, [r7, #4]
 80090c8:	3b01      	subs	r3, #1
 80090ca:	607b      	str	r3, [r7, #4]
 80090cc:	687b      	ldr	r3, [r7, #4]
 80090ce:	2b00      	cmp	r3, #0
 80090d0:	d1f1      	bne.n	80090b6 <xTaskResumeAll+0xc6>
 80090d2:	4b13      	ldr	r3, [pc, #76]	; (8009120 <xTaskResumeAll+0x130>)
 80090d4:	2200      	movs	r2, #0
 80090d6:	601a      	str	r2, [r3, #0]
 80090d8:	4b10      	ldr	r3, [pc, #64]	; (800911c <xTaskResumeAll+0x12c>)
 80090da:	681b      	ldr	r3, [r3, #0]
 80090dc:	2b00      	cmp	r3, #0
 80090de:	d009      	beq.n	80090f4 <xTaskResumeAll+0x104>
 80090e0:	2301      	movs	r3, #1
 80090e2:	60bb      	str	r3, [r7, #8]
 80090e4:	4b0f      	ldr	r3, [pc, #60]	; (8009124 <xTaskResumeAll+0x134>)
 80090e6:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 80090ea:	601a      	str	r2, [r3, #0]
 80090ec:	f3bf 8f4f 	dsb	sy
 80090f0:	f3bf 8f6f 	isb	sy
 80090f4:	f001 f8c8 	bl	800a288 <vPortExitCritical>
 80090f8:	68bb      	ldr	r3, [r7, #8]
 80090fa:	4618      	mov	r0, r3
 80090fc:	3710      	adds	r7, #16
 80090fe:	46bd      	mov	sp, r7
 8009100:	bd80      	pop	{r7, pc}
 8009102:	bf00      	nop
 8009104:	20000c14 	.word	0x20000c14
 8009108:	20000bec 	.word	0x20000bec
 800910c:	20000bac 	.word	0x20000bac
 8009110:	20000bf4 	.word	0x20000bf4
 8009114:	20000b18 	.word	0x20000b18
 8009118:	20000b14 	.word	0x20000b14
 800911c:	20000c00 	.word	0x20000c00
 8009120:	20000bfc 	.word	0x20000bfc
 8009124:	e000ed04 	.word	0xe000ed04

08009128 <xTaskGetTickCount>:
 8009128:	b480      	push	{r7}
 800912a:	b083      	sub	sp, #12
 800912c:	af00      	add	r7, sp, #0
 800912e:	4b05      	ldr	r3, [pc, #20]	; (8009144 <xTaskGetTickCount+0x1c>)
 8009130:	681b      	ldr	r3, [r3, #0]
 8009132:	607b      	str	r3, [r7, #4]
 8009134:	687b      	ldr	r3, [r7, #4]
 8009136:	4618      	mov	r0, r3
 8009138:	370c      	adds	r7, #12
 800913a:	46bd      	mov	sp, r7
 800913c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8009140:	4770      	bx	lr
 8009142:	bf00      	nop
 8009144:	20000bf0 	.word	0x20000bf0

08009148 <xTaskIncrementTick>:
 8009148:	b580      	push	{r7, lr}
 800914a:	b086      	sub	sp, #24
 800914c:	af00      	add	r7, sp, #0
 800914e:	2300      	movs	r3, #0
 8009150:	617b      	str	r3, [r7, #20]
 8009152:	4b52      	ldr	r3, [pc, #328]	; (800929c <xTaskIncrementTick+0x154>)
 8009154:	681b      	ldr	r3, [r3, #0]
 8009156:	2b00      	cmp	r3, #0
 8009158:	f040 808d 	bne.w	8009276 <xTaskIncrementTick+0x12e>
 800915c:	4b50      	ldr	r3, [pc, #320]	; (80092a0 <xTaskIncrementTick+0x158>)
 800915e:	681b      	ldr	r3, [r3, #0]
 8009160:	3301      	adds	r3, #1
 8009162:	613b      	str	r3, [r7, #16]
 8009164:	4a4e      	ldr	r2, [pc, #312]	; (80092a0 <xTaskIncrementTick+0x158>)
 8009166:	693b      	ldr	r3, [r7, #16]
 8009168:	6013      	str	r3, [r2, #0]
 800916a:	693b      	ldr	r3, [r7, #16]
 800916c:	2b00      	cmp	r3, #0
 800916e:	d11f      	bne.n	80091b0 <xTaskIncrementTick+0x68>
 8009170:	4b4c      	ldr	r3, [pc, #304]	; (80092a4 <xTaskIncrementTick+0x15c>)
 8009172:	681b      	ldr	r3, [r3, #0]
 8009174:	681b      	ldr	r3, [r3, #0]
 8009176:	2b00      	cmp	r3, #0
 8009178:	d009      	beq.n	800918e <xTaskIncrementTick+0x46>
 800917a:	f04f 0350 	mov.w	r3, #80	; 0x50
 800917e:	f383 8811 	msr	BASEPRI, r3
 8009182:	f3bf 8f6f 	isb	sy
 8009186:	f3bf 8f4f 	dsb	sy
 800918a:	603b      	str	r3, [r7, #0]
 800918c:	e7fe      	b.n	800918c <xTaskIncrementTick+0x44>
 800918e:	4b45      	ldr	r3, [pc, #276]	; (80092a4 <xTaskIncrementTick+0x15c>)
 8009190:	681b      	ldr	r3, [r3, #0]
 8009192:	60fb      	str	r3, [r7, #12]
 8009194:	4b44      	ldr	r3, [pc, #272]	; (80092a8 <xTaskIncrementTick+0x160>)
 8009196:	681b      	ldr	r3, [r3, #0]
 8009198:	4a42      	ldr	r2, [pc, #264]	; (80092a4 <xTaskIncrementTick+0x15c>)
 800919a:	6013      	str	r3, [r2, #0]
 800919c:	4a42      	ldr	r2, [pc, #264]	; (80092a8 <xTaskIncrementTick+0x160>)
 800919e:	68fb      	ldr	r3, [r7, #12]
 80091a0:	6013      	str	r3, [r2, #0]
 80091a2:	4b42      	ldr	r3, [pc, #264]	; (80092ac <xTaskIncrementTick+0x164>)
 80091a4:	681b      	ldr	r3, [r3, #0]
 80091a6:	3301      	adds	r3, #1
 80091a8:	4a40      	ldr	r2, [pc, #256]	; (80092ac <xTaskIncrementTick+0x164>)
 80091aa:	6013      	str	r3, [r2, #0]
 80091ac:	f000 fafe 	bl	80097ac <prvResetNextTaskUnblockTime>
 80091b0:	4b3f      	ldr	r3, [pc, #252]	; (80092b0 <xTaskIncrementTick+0x168>)
 80091b2:	681b      	ldr	r3, [r3, #0]
 80091b4:	693a      	ldr	r2, [r7, #16]
 80091b6:	429a      	cmp	r2, r3
 80091b8:	d348      	bcc.n	800924c <xTaskIncrementTick+0x104>
 80091ba:	4b3a      	ldr	r3, [pc, #232]	; (80092a4 <xTaskIncrementTick+0x15c>)
 80091bc:	681b      	ldr	r3, [r3, #0]
 80091be:	681b      	ldr	r3, [r3, #0]
 80091c0:	2b00      	cmp	r3, #0
 80091c2:	d104      	bne.n	80091ce <xTaskIncrementTick+0x86>
 80091c4:	4b3a      	ldr	r3, [pc, #232]	; (80092b0 <xTaskIncrementTick+0x168>)
 80091c6:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80091ca:	601a      	str	r2, [r3, #0]
 80091cc:	e03e      	b.n	800924c <xTaskIncrementTick+0x104>
 80091ce:	4b35      	ldr	r3, [pc, #212]	; (80092a4 <xTaskIncrementTick+0x15c>)
 80091d0:	681b      	ldr	r3, [r3, #0]
 80091d2:	68db      	ldr	r3, [r3, #12]
 80091d4:	68db      	ldr	r3, [r3, #12]
 80091d6:	60bb      	str	r3, [r7, #8]
 80091d8:	68bb      	ldr	r3, [r7, #8]
 80091da:	685b      	ldr	r3, [r3, #4]
 80091dc:	607b      	str	r3, [r7, #4]
 80091de:	693a      	ldr	r2, [r7, #16]
 80091e0:	687b      	ldr	r3, [r7, #4]
 80091e2:	429a      	cmp	r2, r3
 80091e4:	d203      	bcs.n	80091ee <xTaskIncrementTick+0xa6>
 80091e6:	4a32      	ldr	r2, [pc, #200]	; (80092b0 <xTaskIncrementTick+0x168>)
 80091e8:	687b      	ldr	r3, [r7, #4]
 80091ea:	6013      	str	r3, [r2, #0]
 80091ec:	e02e      	b.n	800924c <xTaskIncrementTick+0x104>
 80091ee:	68bb      	ldr	r3, [r7, #8]
 80091f0:	3304      	adds	r3, #4
 80091f2:	4618      	mov	r0, r3
 80091f4:	f7ff fc7e 	bl	8008af4 <uxListRemove>
 80091f8:	68bb      	ldr	r3, [r7, #8]
 80091fa:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 80091fc:	2b00      	cmp	r3, #0
 80091fe:	d004      	beq.n	800920a <xTaskIncrementTick+0xc2>
 8009200:	68bb      	ldr	r3, [r7, #8]
 8009202:	3318      	adds	r3, #24
 8009204:	4618      	mov	r0, r3
 8009206:	f7ff fc75 	bl	8008af4 <uxListRemove>
 800920a:	68bb      	ldr	r3, [r7, #8]
 800920c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800920e:	2201      	movs	r2, #1
 8009210:	409a      	lsls	r2, r3
 8009212:	4b28      	ldr	r3, [pc, #160]	; (80092b4 <xTaskIncrementTick+0x16c>)
 8009214:	681b      	ldr	r3, [r3, #0]
 8009216:	4313      	orrs	r3, r2
 8009218:	4a26      	ldr	r2, [pc, #152]	; (80092b4 <xTaskIncrementTick+0x16c>)
 800921a:	6013      	str	r3, [r2, #0]
 800921c:	68bb      	ldr	r3, [r7, #8]
 800921e:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8009220:	4613      	mov	r3, r2
 8009222:	009b      	lsls	r3, r3, #2
 8009224:	4413      	add	r3, r2
 8009226:	009b      	lsls	r3, r3, #2
 8009228:	4a23      	ldr	r2, [pc, #140]	; (80092b8 <xTaskIncrementTick+0x170>)
 800922a:	441a      	add	r2, r3
 800922c:	68bb      	ldr	r3, [r7, #8]
 800922e:	3304      	adds	r3, #4
 8009230:	4619      	mov	r1, r3
 8009232:	4610      	mov	r0, r2
 8009234:	f7ff fc00 	bl	8008a38 <vListInsertEnd>
 8009238:	68bb      	ldr	r3, [r7, #8]
 800923a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800923c:	4b1f      	ldr	r3, [pc, #124]	; (80092bc <xTaskIncrementTick+0x174>)
 800923e:	681b      	ldr	r3, [r3, #0]
 8009240:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8009242:	429a      	cmp	r2, r3
 8009244:	d3b9      	bcc.n	80091ba <xTaskIncrementTick+0x72>
 8009246:	2301      	movs	r3, #1
 8009248:	617b      	str	r3, [r7, #20]
 800924a:	e7b6      	b.n	80091ba <xTaskIncrementTick+0x72>
 800924c:	4b1b      	ldr	r3, [pc, #108]	; (80092bc <xTaskIncrementTick+0x174>)
 800924e:	681b      	ldr	r3, [r3, #0]
 8009250:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8009252:	4919      	ldr	r1, [pc, #100]	; (80092b8 <xTaskIncrementTick+0x170>)
 8009254:	4613      	mov	r3, r2
 8009256:	009b      	lsls	r3, r3, #2
 8009258:	4413      	add	r3, r2
 800925a:	009b      	lsls	r3, r3, #2
 800925c:	440b      	add	r3, r1
 800925e:	681b      	ldr	r3, [r3, #0]
 8009260:	2b01      	cmp	r3, #1
 8009262:	d901      	bls.n	8009268 <xTaskIncrementTick+0x120>
 8009264:	2301      	movs	r3, #1
 8009266:	617b      	str	r3, [r7, #20]
 8009268:	4b15      	ldr	r3, [pc, #84]	; (80092c0 <xTaskIncrementTick+0x178>)
 800926a:	681b      	ldr	r3, [r3, #0]
 800926c:	2b00      	cmp	r3, #0
 800926e:	d109      	bne.n	8009284 <xTaskIncrementTick+0x13c>
 8009270:	f7fd fc86 	bl	8006b80 <vApplicationTickHook>
 8009274:	e006      	b.n	8009284 <xTaskIncrementTick+0x13c>
 8009276:	4b12      	ldr	r3, [pc, #72]	; (80092c0 <xTaskIncrementTick+0x178>)
 8009278:	681b      	ldr	r3, [r3, #0]
 800927a:	3301      	adds	r3, #1
 800927c:	4a10      	ldr	r2, [pc, #64]	; (80092c0 <xTaskIncrementTick+0x178>)
 800927e:	6013      	str	r3, [r2, #0]
 8009280:	f7fd fc7e 	bl	8006b80 <vApplicationTickHook>
 8009284:	4b0f      	ldr	r3, [pc, #60]	; (80092c4 <xTaskIncrementTick+0x17c>)
 8009286:	681b      	ldr	r3, [r3, #0]
 8009288:	2b00      	cmp	r3, #0
 800928a:	d001      	beq.n	8009290 <xTaskIncrementTick+0x148>
 800928c:	2301      	movs	r3, #1
 800928e:	617b      	str	r3, [r7, #20]
 8009290:	697b      	ldr	r3, [r7, #20]
 8009292:	4618      	mov	r0, r3
 8009294:	3718      	adds	r7, #24
 8009296:	46bd      	mov	sp, r7
 8009298:	bd80      	pop	{r7, pc}
 800929a:	bf00      	nop
 800929c:	20000c14 	.word	0x20000c14
 80092a0:	20000bf0 	.word	0x20000bf0
 80092a4:	20000ba4 	.word	0x20000ba4
 80092a8:	20000ba8 	.word	0x20000ba8
 80092ac:	20000c04 	.word	0x20000c04
 80092b0:	20000c0c 	.word	0x20000c0c
 80092b4:	20000bf4 	.word	0x20000bf4
 80092b8:	20000b18 	.word	0x20000b18
 80092bc:	20000b14 	.word	0x20000b14
 80092c0:	20000bfc 	.word	0x20000bfc
 80092c4:	20000c00 	.word	0x20000c00

080092c8 <vTaskSwitchContext>:
 80092c8:	b580      	push	{r7, lr}
 80092ca:	b088      	sub	sp, #32
 80092cc:	af00      	add	r7, sp, #0
 80092ce:	4b3b      	ldr	r3, [pc, #236]	; (80093bc <vTaskSwitchContext+0xf4>)
 80092d0:	681b      	ldr	r3, [r3, #0]
 80092d2:	2b00      	cmp	r3, #0
 80092d4:	d003      	beq.n	80092de <vTaskSwitchContext+0x16>
 80092d6:	4b3a      	ldr	r3, [pc, #232]	; (80093c0 <vTaskSwitchContext+0xf8>)
 80092d8:	2201      	movs	r2, #1
 80092da:	601a      	str	r2, [r3, #0]
 80092dc:	e06a      	b.n	80093b4 <vTaskSwitchContext+0xec>
 80092de:	4b38      	ldr	r3, [pc, #224]	; (80093c0 <vTaskSwitchContext+0xf8>)
 80092e0:	2200      	movs	r2, #0
 80092e2:	601a      	str	r2, [r3, #0]
 80092e4:	4b37      	ldr	r3, [pc, #220]	; (80093c4 <vTaskSwitchContext+0xfc>)
 80092e6:	681b      	ldr	r3, [r3, #0]
 80092e8:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80092ea:	61fb      	str	r3, [r7, #28]
 80092ec:	f04f 33a5 	mov.w	r3, #2779096485	; 0xa5a5a5a5
 80092f0:	61bb      	str	r3, [r7, #24]
 80092f2:	69fb      	ldr	r3, [r7, #28]
 80092f4:	681a      	ldr	r2, [r3, #0]
 80092f6:	69bb      	ldr	r3, [r7, #24]
 80092f8:	429a      	cmp	r2, r3
 80092fa:	d111      	bne.n	8009320 <vTaskSwitchContext+0x58>
 80092fc:	69fb      	ldr	r3, [r7, #28]
 80092fe:	3304      	adds	r3, #4
 8009300:	681a      	ldr	r2, [r3, #0]
 8009302:	69bb      	ldr	r3, [r7, #24]
 8009304:	429a      	cmp	r2, r3
 8009306:	d10b      	bne.n	8009320 <vTaskSwitchContext+0x58>
 8009308:	69fb      	ldr	r3, [r7, #28]
 800930a:	3308      	adds	r3, #8
 800930c:	681a      	ldr	r2, [r3, #0]
 800930e:	69bb      	ldr	r3, [r7, #24]
 8009310:	429a      	cmp	r2, r3
 8009312:	d105      	bne.n	8009320 <vTaskSwitchContext+0x58>
 8009314:	69fb      	ldr	r3, [r7, #28]
 8009316:	330c      	adds	r3, #12
 8009318:	681a      	ldr	r2, [r3, #0]
 800931a:	69bb      	ldr	r3, [r7, #24]
 800931c:	429a      	cmp	r2, r3
 800931e:	d008      	beq.n	8009332 <vTaskSwitchContext+0x6a>
 8009320:	4b28      	ldr	r3, [pc, #160]	; (80093c4 <vTaskSwitchContext+0xfc>)
 8009322:	681a      	ldr	r2, [r3, #0]
 8009324:	4b27      	ldr	r3, [pc, #156]	; (80093c4 <vTaskSwitchContext+0xfc>)
 8009326:	681b      	ldr	r3, [r3, #0]
 8009328:	3334      	adds	r3, #52	; 0x34
 800932a:	4619      	mov	r1, r3
 800932c:	4610      	mov	r0, r2
 800932e:	f7fd fc2f 	bl	8006b90 <vApplicationStackOverflowHook>
 8009332:	4b25      	ldr	r3, [pc, #148]	; (80093c8 <vTaskSwitchContext+0x100>)
 8009334:	681b      	ldr	r3, [r3, #0]
 8009336:	60bb      	str	r3, [r7, #8]
 8009338:	68bb      	ldr	r3, [r7, #8]
 800933a:	fab3 f383 	clz	r3, r3
 800933e:	71fb      	strb	r3, [r7, #7]
 8009340:	79fb      	ldrb	r3, [r7, #7]
 8009342:	f1c3 031f 	rsb	r3, r3, #31
 8009346:	613b      	str	r3, [r7, #16]
 8009348:	4920      	ldr	r1, [pc, #128]	; (80093cc <vTaskSwitchContext+0x104>)
 800934a:	693a      	ldr	r2, [r7, #16]
 800934c:	4613      	mov	r3, r2
 800934e:	009b      	lsls	r3, r3, #2
 8009350:	4413      	add	r3, r2
 8009352:	009b      	lsls	r3, r3, #2
 8009354:	440b      	add	r3, r1
 8009356:	681b      	ldr	r3, [r3, #0]
 8009358:	2b00      	cmp	r3, #0
 800935a:	d109      	bne.n	8009370 <vTaskSwitchContext+0xa8>
 800935c:	f04f 0350 	mov.w	r3, #80	; 0x50
 8009360:	f383 8811 	msr	BASEPRI, r3
 8009364:	f3bf 8f6f 	isb	sy
 8009368:	f3bf 8f4f 	dsb	sy
 800936c:	617b      	str	r3, [r7, #20]
 800936e:	e7fe      	b.n	800936e <vTaskSwitchContext+0xa6>
 8009370:	693a      	ldr	r2, [r7, #16]
 8009372:	4613      	mov	r3, r2
 8009374:	009b      	lsls	r3, r3, #2
 8009376:	4413      	add	r3, r2
 8009378:	009b      	lsls	r3, r3, #2
 800937a:	4a14      	ldr	r2, [pc, #80]	; (80093cc <vTaskSwitchContext+0x104>)
 800937c:	4413      	add	r3, r2
 800937e:	60fb      	str	r3, [r7, #12]
 8009380:	68fb      	ldr	r3, [r7, #12]
 8009382:	685b      	ldr	r3, [r3, #4]
 8009384:	685a      	ldr	r2, [r3, #4]
 8009386:	68fb      	ldr	r3, [r7, #12]
 8009388:	605a      	str	r2, [r3, #4]
 800938a:	68fb      	ldr	r3, [r7, #12]
 800938c:	685a      	ldr	r2, [r3, #4]
 800938e:	68fb      	ldr	r3, [r7, #12]
 8009390:	3308      	adds	r3, #8
 8009392:	429a      	cmp	r2, r3
 8009394:	d104      	bne.n	80093a0 <vTaskSwitchContext+0xd8>
 8009396:	68fb      	ldr	r3, [r7, #12]
 8009398:	685b      	ldr	r3, [r3, #4]
 800939a:	685a      	ldr	r2, [r3, #4]
 800939c:	68fb      	ldr	r3, [r7, #12]
 800939e:	605a      	str	r2, [r3, #4]
 80093a0:	68fb      	ldr	r3, [r7, #12]
 80093a2:	685b      	ldr	r3, [r3, #4]
 80093a4:	68db      	ldr	r3, [r3, #12]
 80093a6:	4a07      	ldr	r2, [pc, #28]	; (80093c4 <vTaskSwitchContext+0xfc>)
 80093a8:	6013      	str	r3, [r2, #0]
 80093aa:	4b06      	ldr	r3, [pc, #24]	; (80093c4 <vTaskSwitchContext+0xfc>)
 80093ac:	681b      	ldr	r3, [r3, #0]
 80093ae:	3350      	adds	r3, #80	; 0x50
 80093b0:	4a07      	ldr	r2, [pc, #28]	; (80093d0 <vTaskSwitchContext+0x108>)
 80093b2:	6013      	str	r3, [r2, #0]
 80093b4:	bf00      	nop
 80093b6:	3720      	adds	r7, #32
 80093b8:	46bd      	mov	sp, r7
 80093ba:	bd80      	pop	{r7, pc}
 80093bc:	20000c14 	.word	0x20000c14
 80093c0:	20000c00 	.word	0x20000c00
 80093c4:	20000b14 	.word	0x20000b14
 80093c8:	20000bf4 	.word	0x20000bf4
 80093cc:	20000b18 	.word	0x20000b18
 80093d0:	20000000 	.word	0x20000000

080093d4 <vTaskPlaceOnEventList>:
 80093d4:	b580      	push	{r7, lr}
 80093d6:	b084      	sub	sp, #16
 80093d8:	af00      	add	r7, sp, #0
 80093da:	6078      	str	r0, [r7, #4]
 80093dc:	6039      	str	r1, [r7, #0]
 80093de:	687b      	ldr	r3, [r7, #4]
 80093e0:	2b00      	cmp	r3, #0
 80093e2:	d109      	bne.n	80093f8 <vTaskPlaceOnEventList+0x24>
 80093e4:	f04f 0350 	mov.w	r3, #80	; 0x50
 80093e8:	f383 8811 	msr	BASEPRI, r3
 80093ec:	f3bf 8f6f 	isb	sy
 80093f0:	f3bf 8f4f 	dsb	sy
 80093f4:	60fb      	str	r3, [r7, #12]
 80093f6:	e7fe      	b.n	80093f6 <vTaskPlaceOnEventList+0x22>
 80093f8:	4b07      	ldr	r3, [pc, #28]	; (8009418 <vTaskPlaceOnEventList+0x44>)
 80093fa:	681b      	ldr	r3, [r3, #0]
 80093fc:	3318      	adds	r3, #24
 80093fe:	4619      	mov	r1, r3
 8009400:	6878      	ldr	r0, [r7, #4]
 8009402:	f7ff fb3d 	bl	8008a80 <vListInsert>
 8009406:	2101      	movs	r1, #1
 8009408:	6838      	ldr	r0, [r7, #0]
 800940a:	f000 fa91 	bl	8009930 <prvAddCurrentTaskToDelayedList>
 800940e:	bf00      	nop
 8009410:	3710      	adds	r7, #16
 8009412:	46bd      	mov	sp, r7
 8009414:	bd80      	pop	{r7, pc}
 8009416:	bf00      	nop
 8009418:	20000b14 	.word	0x20000b14

0800941c <vTaskPlaceOnEventListRestricted>:
 800941c:	b580      	push	{r7, lr}
 800941e:	b086      	sub	sp, #24
 8009420:	af00      	add	r7, sp, #0
 8009422:	60f8      	str	r0, [r7, #12]
 8009424:	60b9      	str	r1, [r7, #8]
 8009426:	607a      	str	r2, [r7, #4]
 8009428:	68fb      	ldr	r3, [r7, #12]
 800942a:	2b00      	cmp	r3, #0
 800942c:	d109      	bne.n	8009442 <vTaskPlaceOnEventListRestricted+0x26>
 800942e:	f04f 0350 	mov.w	r3, #80	; 0x50
 8009432:	f383 8811 	msr	BASEPRI, r3
 8009436:	f3bf 8f6f 	isb	sy
 800943a:	f3bf 8f4f 	dsb	sy
 800943e:	617b      	str	r3, [r7, #20]
 8009440:	e7fe      	b.n	8009440 <vTaskPlaceOnEventListRestricted+0x24>
 8009442:	4b0a      	ldr	r3, [pc, #40]	; (800946c <vTaskPlaceOnEventListRestricted+0x50>)
 8009444:	681b      	ldr	r3, [r3, #0]
 8009446:	3318      	adds	r3, #24
 8009448:	4619      	mov	r1, r3
 800944a:	68f8      	ldr	r0, [r7, #12]
 800944c:	f7ff faf4 	bl	8008a38 <vListInsertEnd>
 8009450:	687b      	ldr	r3, [r7, #4]
 8009452:	2b00      	cmp	r3, #0
 8009454:	d002      	beq.n	800945c <vTaskPlaceOnEventListRestricted+0x40>
 8009456:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800945a:	60bb      	str	r3, [r7, #8]
 800945c:	6879      	ldr	r1, [r7, #4]
 800945e:	68b8      	ldr	r0, [r7, #8]
 8009460:	f000 fa66 	bl	8009930 <prvAddCurrentTaskToDelayedList>
 8009464:	bf00      	nop
 8009466:	3718      	adds	r7, #24
 8009468:	46bd      	mov	sp, r7
 800946a:	bd80      	pop	{r7, pc}
 800946c:	20000b14 	.word	0x20000b14

08009470 <xTaskRemoveFromEventList>:
 8009470:	b580      	push	{r7, lr}
 8009472:	b086      	sub	sp, #24
 8009474:	af00      	add	r7, sp, #0
 8009476:	6078      	str	r0, [r7, #4]
 8009478:	687b      	ldr	r3, [r7, #4]
 800947a:	68db      	ldr	r3, [r3, #12]
 800947c:	68db      	ldr	r3, [r3, #12]
 800947e:	613b      	str	r3, [r7, #16]
 8009480:	693b      	ldr	r3, [r7, #16]
 8009482:	2b00      	cmp	r3, #0
 8009484:	d109      	bne.n	800949a <xTaskRemoveFromEventList+0x2a>
 8009486:	f04f 0350 	mov.w	r3, #80	; 0x50
 800948a:	f383 8811 	msr	BASEPRI, r3
 800948e:	f3bf 8f6f 	isb	sy
 8009492:	f3bf 8f4f 	dsb	sy
 8009496:	60fb      	str	r3, [r7, #12]
 8009498:	e7fe      	b.n	8009498 <xTaskRemoveFromEventList+0x28>
 800949a:	693b      	ldr	r3, [r7, #16]
 800949c:	3318      	adds	r3, #24
 800949e:	4618      	mov	r0, r3
 80094a0:	f7ff fb28 	bl	8008af4 <uxListRemove>
 80094a4:	4b1d      	ldr	r3, [pc, #116]	; (800951c <xTaskRemoveFromEventList+0xac>)
 80094a6:	681b      	ldr	r3, [r3, #0]
 80094a8:	2b00      	cmp	r3, #0
 80094aa:	d11c      	bne.n	80094e6 <xTaskRemoveFromEventList+0x76>
 80094ac:	693b      	ldr	r3, [r7, #16]
 80094ae:	3304      	adds	r3, #4
 80094b0:	4618      	mov	r0, r3
 80094b2:	f7ff fb1f 	bl	8008af4 <uxListRemove>
 80094b6:	693b      	ldr	r3, [r7, #16]
 80094b8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80094ba:	2201      	movs	r2, #1
 80094bc:	409a      	lsls	r2, r3
 80094be:	4b18      	ldr	r3, [pc, #96]	; (8009520 <xTaskRemoveFromEventList+0xb0>)
 80094c0:	681b      	ldr	r3, [r3, #0]
 80094c2:	4313      	orrs	r3, r2
 80094c4:	4a16      	ldr	r2, [pc, #88]	; (8009520 <xTaskRemoveFromEventList+0xb0>)
 80094c6:	6013      	str	r3, [r2, #0]
 80094c8:	693b      	ldr	r3, [r7, #16]
 80094ca:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80094cc:	4613      	mov	r3, r2
 80094ce:	009b      	lsls	r3, r3, #2
 80094d0:	4413      	add	r3, r2
 80094d2:	009b      	lsls	r3, r3, #2
 80094d4:	4a13      	ldr	r2, [pc, #76]	; (8009524 <xTaskRemoveFromEventList+0xb4>)
 80094d6:	441a      	add	r2, r3
 80094d8:	693b      	ldr	r3, [r7, #16]
 80094da:	3304      	adds	r3, #4
 80094dc:	4619      	mov	r1, r3
 80094de:	4610      	mov	r0, r2
 80094e0:	f7ff faaa 	bl	8008a38 <vListInsertEnd>
 80094e4:	e005      	b.n	80094f2 <xTaskRemoveFromEventList+0x82>
 80094e6:	693b      	ldr	r3, [r7, #16]
 80094e8:	3318      	adds	r3, #24
 80094ea:	4619      	mov	r1, r3
 80094ec:	480e      	ldr	r0, [pc, #56]	; (8009528 <xTaskRemoveFromEventList+0xb8>)
 80094ee:	f7ff faa3 	bl	8008a38 <vListInsertEnd>
 80094f2:	693b      	ldr	r3, [r7, #16]
 80094f4:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80094f6:	4b0d      	ldr	r3, [pc, #52]	; (800952c <xTaskRemoveFromEventList+0xbc>)
 80094f8:	681b      	ldr	r3, [r3, #0]
 80094fa:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80094fc:	429a      	cmp	r2, r3
 80094fe:	d905      	bls.n	800950c <xTaskRemoveFromEventList+0x9c>
 8009500:	2301      	movs	r3, #1
 8009502:	617b      	str	r3, [r7, #20]
 8009504:	4b0a      	ldr	r3, [pc, #40]	; (8009530 <xTaskRemoveFromEventList+0xc0>)
 8009506:	2201      	movs	r2, #1
 8009508:	601a      	str	r2, [r3, #0]
 800950a:	e001      	b.n	8009510 <xTaskRemoveFromEventList+0xa0>
 800950c:	2300      	movs	r3, #0
 800950e:	617b      	str	r3, [r7, #20]
 8009510:	697b      	ldr	r3, [r7, #20]
 8009512:	4618      	mov	r0, r3
 8009514:	3718      	adds	r7, #24
 8009516:	46bd      	mov	sp, r7
 8009518:	bd80      	pop	{r7, pc}
 800951a:	bf00      	nop
 800951c:	20000c14 	.word	0x20000c14
 8009520:	20000bf4 	.word	0x20000bf4
 8009524:	20000b18 	.word	0x20000b18
 8009528:	20000bac 	.word	0x20000bac
 800952c:	20000b14 	.word	0x20000b14
 8009530:	20000c00 	.word	0x20000c00

08009534 <vTaskInternalSetTimeOutState>:
 8009534:	b480      	push	{r7}
 8009536:	b083      	sub	sp, #12
 8009538:	af00      	add	r7, sp, #0
 800953a:	6078      	str	r0, [r7, #4]
 800953c:	4b06      	ldr	r3, [pc, #24]	; (8009558 <vTaskInternalSetTimeOutState+0x24>)
 800953e:	681a      	ldr	r2, [r3, #0]
 8009540:	687b      	ldr	r3, [r7, #4]
 8009542:	601a      	str	r2, [r3, #0]
 8009544:	4b05      	ldr	r3, [pc, #20]	; (800955c <vTaskInternalSetTimeOutState+0x28>)
 8009546:	681a      	ldr	r2, [r3, #0]
 8009548:	687b      	ldr	r3, [r7, #4]
 800954a:	605a      	str	r2, [r3, #4]
 800954c:	bf00      	nop
 800954e:	370c      	adds	r7, #12
 8009550:	46bd      	mov	sp, r7
 8009552:	f85d 7b04 	ldr.w	r7, [sp], #4
 8009556:	4770      	bx	lr
 8009558:	20000c04 	.word	0x20000c04
 800955c:	20000bf0 	.word	0x20000bf0

08009560 <xTaskCheckForTimeOut>:
 8009560:	b580      	push	{r7, lr}
 8009562:	b088      	sub	sp, #32
 8009564:	af00      	add	r7, sp, #0
 8009566:	6078      	str	r0, [r7, #4]
 8009568:	6039      	str	r1, [r7, #0]
 800956a:	687b      	ldr	r3, [r7, #4]
 800956c:	2b00      	cmp	r3, #0
 800956e:	d109      	bne.n	8009584 <xTaskCheckForTimeOut+0x24>
 8009570:	f04f 0350 	mov.w	r3, #80	; 0x50
 8009574:	f383 8811 	msr	BASEPRI, r3
 8009578:	f3bf 8f6f 	isb	sy
 800957c:	f3bf 8f4f 	dsb	sy
 8009580:	60fb      	str	r3, [r7, #12]
 8009582:	e7fe      	b.n	8009582 <xTaskCheckForTimeOut+0x22>
 8009584:	683b      	ldr	r3, [r7, #0]
 8009586:	2b00      	cmp	r3, #0
 8009588:	d109      	bne.n	800959e <xTaskCheckForTimeOut+0x3e>
 800958a:	f04f 0350 	mov.w	r3, #80	; 0x50
 800958e:	f383 8811 	msr	BASEPRI, r3
 8009592:	f3bf 8f6f 	isb	sy
 8009596:	f3bf 8f4f 	dsb	sy
 800959a:	613b      	str	r3, [r7, #16]
 800959c:	e7fe      	b.n	800959c <xTaskCheckForTimeOut+0x3c>
 800959e:	f000 fe45 	bl	800a22c <vPortEnterCritical>
 80095a2:	4b1d      	ldr	r3, [pc, #116]	; (8009618 <xTaskCheckForTimeOut+0xb8>)
 80095a4:	681b      	ldr	r3, [r3, #0]
 80095a6:	61bb      	str	r3, [r7, #24]
 80095a8:	687b      	ldr	r3, [r7, #4]
 80095aa:	685b      	ldr	r3, [r3, #4]
 80095ac:	69ba      	ldr	r2, [r7, #24]
 80095ae:	1ad3      	subs	r3, r2, r3
 80095b0:	617b      	str	r3, [r7, #20]
 80095b2:	683b      	ldr	r3, [r7, #0]
 80095b4:	681b      	ldr	r3, [r3, #0]
 80095b6:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 80095ba:	d102      	bne.n	80095c2 <xTaskCheckForTimeOut+0x62>
 80095bc:	2300      	movs	r3, #0
 80095be:	61fb      	str	r3, [r7, #28]
 80095c0:	e023      	b.n	800960a <xTaskCheckForTimeOut+0xaa>
 80095c2:	687b      	ldr	r3, [r7, #4]
 80095c4:	681a      	ldr	r2, [r3, #0]
 80095c6:	4b15      	ldr	r3, [pc, #84]	; (800961c <xTaskCheckForTimeOut+0xbc>)
 80095c8:	681b      	ldr	r3, [r3, #0]
 80095ca:	429a      	cmp	r2, r3
 80095cc:	d007      	beq.n	80095de <xTaskCheckForTimeOut+0x7e>
 80095ce:	687b      	ldr	r3, [r7, #4]
 80095d0:	685a      	ldr	r2, [r3, #4]
 80095d2:	69bb      	ldr	r3, [r7, #24]
 80095d4:	429a      	cmp	r2, r3
 80095d6:	d802      	bhi.n	80095de <xTaskCheckForTimeOut+0x7e>
 80095d8:	2301      	movs	r3, #1
 80095da:	61fb      	str	r3, [r7, #28]
 80095dc:	e015      	b.n	800960a <xTaskCheckForTimeOut+0xaa>
 80095de:	683b      	ldr	r3, [r7, #0]
 80095e0:	681a      	ldr	r2, [r3, #0]
 80095e2:	697b      	ldr	r3, [r7, #20]
 80095e4:	429a      	cmp	r2, r3
 80095e6:	d90b      	bls.n	8009600 <xTaskCheckForTimeOut+0xa0>
 80095e8:	683b      	ldr	r3, [r7, #0]
 80095ea:	681a      	ldr	r2, [r3, #0]
 80095ec:	697b      	ldr	r3, [r7, #20]
 80095ee:	1ad2      	subs	r2, r2, r3
 80095f0:	683b      	ldr	r3, [r7, #0]
 80095f2:	601a      	str	r2, [r3, #0]
 80095f4:	6878      	ldr	r0, [r7, #4]
 80095f6:	f7ff ff9d 	bl	8009534 <vTaskInternalSetTimeOutState>
 80095fa:	2300      	movs	r3, #0
 80095fc:	61fb      	str	r3, [r7, #28]
 80095fe:	e004      	b.n	800960a <xTaskCheckForTimeOut+0xaa>
 8009600:	683b      	ldr	r3, [r7, #0]
 8009602:	2200      	movs	r2, #0
 8009604:	601a      	str	r2, [r3, #0]
 8009606:	2301      	movs	r3, #1
 8009608:	61fb      	str	r3, [r7, #28]
 800960a:	f000 fe3d 	bl	800a288 <vPortExitCritical>
 800960e:	69fb      	ldr	r3, [r7, #28]
 8009610:	4618      	mov	r0, r3
 8009612:	3720      	adds	r7, #32
 8009614:	46bd      	mov	sp, r7
 8009616:	bd80      	pop	{r7, pc}
 8009618:	20000bf0 	.word	0x20000bf0
 800961c:	20000c04 	.word	0x20000c04

08009620 <vTaskMissedYield>:
 8009620:	b480      	push	{r7}
 8009622:	af00      	add	r7, sp, #0
 8009624:	4b03      	ldr	r3, [pc, #12]	; (8009634 <vTaskMissedYield+0x14>)
 8009626:	2201      	movs	r2, #1
 8009628:	601a      	str	r2, [r3, #0]
 800962a:	bf00      	nop
 800962c:	46bd      	mov	sp, r7
 800962e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8009632:	4770      	bx	lr
 8009634:	20000c00 	.word	0x20000c00

08009638 <prvIdleTask>:
 8009638:	b580      	push	{r7, lr}
 800963a:	b082      	sub	sp, #8
 800963c:	af00      	add	r7, sp, #0
 800963e:	6078      	str	r0, [r7, #4]
 8009640:	f000 f854 	bl	80096ec <prvCheckTasksWaitingTermination>
 8009644:	4b07      	ldr	r3, [pc, #28]	; (8009664 <prvIdleTask+0x2c>)
 8009646:	681b      	ldr	r3, [r3, #0]
 8009648:	2b01      	cmp	r3, #1
 800964a:	d907      	bls.n	800965c <prvIdleTask+0x24>
 800964c:	4b06      	ldr	r3, [pc, #24]	; (8009668 <prvIdleTask+0x30>)
 800964e:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 8009652:	601a      	str	r2, [r3, #0]
 8009654:	f3bf 8f4f 	dsb	sy
 8009658:	f3bf 8f6f 	isb	sy
 800965c:	f7fd fa88 	bl	8006b70 <vApplicationIdleHook>
 8009660:	e7ee      	b.n	8009640 <prvIdleTask+0x8>
 8009662:	bf00      	nop
 8009664:	20000b18 	.word	0x20000b18
 8009668:	e000ed04 	.word	0xe000ed04

0800966c <prvInitialiseTaskLists>:
 800966c:	b580      	push	{r7, lr}
 800966e:	b082      	sub	sp, #8
 8009670:	af00      	add	r7, sp, #0
 8009672:	2300      	movs	r3, #0
 8009674:	607b      	str	r3, [r7, #4]
 8009676:	e00c      	b.n	8009692 <prvInitialiseTaskLists+0x26>
 8009678:	687a      	ldr	r2, [r7, #4]
 800967a:	4613      	mov	r3, r2
 800967c:	009b      	lsls	r3, r3, #2
 800967e:	4413      	add	r3, r2
 8009680:	009b      	lsls	r3, r3, #2
 8009682:	4a12      	ldr	r2, [pc, #72]	; (80096cc <prvInitialiseTaskLists+0x60>)
 8009684:	4413      	add	r3, r2
 8009686:	4618      	mov	r0, r3
 8009688:	f7ff f9a8 	bl	80089dc <vListInitialise>
 800968c:	687b      	ldr	r3, [r7, #4]
 800968e:	3301      	adds	r3, #1
 8009690:	607b      	str	r3, [r7, #4]
 8009692:	687b      	ldr	r3, [r7, #4]
 8009694:	2b04      	cmp	r3, #4
 8009696:	d9ef      	bls.n	8009678 <prvInitialiseTaskLists+0xc>
 8009698:	480d      	ldr	r0, [pc, #52]	; (80096d0 <prvInitialiseTaskLists+0x64>)
 800969a:	f7ff f99f 	bl	80089dc <vListInitialise>
 800969e:	480d      	ldr	r0, [pc, #52]	; (80096d4 <prvInitialiseTaskLists+0x68>)
 80096a0:	f7ff f99c 	bl	80089dc <vListInitialise>
 80096a4:	480c      	ldr	r0, [pc, #48]	; (80096d8 <prvInitialiseTaskLists+0x6c>)
 80096a6:	f7ff f999 	bl	80089dc <vListInitialise>
 80096aa:	480c      	ldr	r0, [pc, #48]	; (80096dc <prvInitialiseTaskLists+0x70>)
 80096ac:	f7ff f996 	bl	80089dc <vListInitialise>
 80096b0:	480b      	ldr	r0, [pc, #44]	; (80096e0 <prvInitialiseTaskLists+0x74>)
 80096b2:	f7ff f993 	bl	80089dc <vListInitialise>
 80096b6:	4b0b      	ldr	r3, [pc, #44]	; (80096e4 <prvInitialiseTaskLists+0x78>)
 80096b8:	4a05      	ldr	r2, [pc, #20]	; (80096d0 <prvInitialiseTaskLists+0x64>)
 80096ba:	601a      	str	r2, [r3, #0]
 80096bc:	4b0a      	ldr	r3, [pc, #40]	; (80096e8 <prvInitialiseTaskLists+0x7c>)
 80096be:	4a05      	ldr	r2, [pc, #20]	; (80096d4 <prvInitialiseTaskLists+0x68>)
 80096c0:	601a      	str	r2, [r3, #0]
 80096c2:	bf00      	nop
 80096c4:	3708      	adds	r7, #8
 80096c6:	46bd      	mov	sp, r7
 80096c8:	bd80      	pop	{r7, pc}
 80096ca:	bf00      	nop
 80096cc:	20000b18 	.word	0x20000b18
 80096d0:	20000b7c 	.word	0x20000b7c
 80096d4:	20000b90 	.word	0x20000b90
 80096d8:	20000bac 	.word	0x20000bac
 80096dc:	20000bc0 	.word	0x20000bc0
 80096e0:	20000bd8 	.word	0x20000bd8
 80096e4:	20000ba4 	.word	0x20000ba4
 80096e8:	20000ba8 	.word	0x20000ba8

080096ec <prvCheckTasksWaitingTermination>:
 80096ec:	b580      	push	{r7, lr}
 80096ee:	b082      	sub	sp, #8
 80096f0:	af00      	add	r7, sp, #0
 80096f2:	e019      	b.n	8009728 <prvCheckTasksWaitingTermination+0x3c>
 80096f4:	f000 fd9a 	bl	800a22c <vPortEnterCritical>
 80096f8:	4b0f      	ldr	r3, [pc, #60]	; (8009738 <prvCheckTasksWaitingTermination+0x4c>)
 80096fa:	68db      	ldr	r3, [r3, #12]
 80096fc:	68db      	ldr	r3, [r3, #12]
 80096fe:	607b      	str	r3, [r7, #4]
 8009700:	687b      	ldr	r3, [r7, #4]
 8009702:	3304      	adds	r3, #4
 8009704:	4618      	mov	r0, r3
 8009706:	f7ff f9f5 	bl	8008af4 <uxListRemove>
 800970a:	4b0c      	ldr	r3, [pc, #48]	; (800973c <prvCheckTasksWaitingTermination+0x50>)
 800970c:	681b      	ldr	r3, [r3, #0]
 800970e:	3b01      	subs	r3, #1
 8009710:	4a0a      	ldr	r2, [pc, #40]	; (800973c <prvCheckTasksWaitingTermination+0x50>)
 8009712:	6013      	str	r3, [r2, #0]
 8009714:	4b0a      	ldr	r3, [pc, #40]	; (8009740 <prvCheckTasksWaitingTermination+0x54>)
 8009716:	681b      	ldr	r3, [r3, #0]
 8009718:	3b01      	subs	r3, #1
 800971a:	4a09      	ldr	r2, [pc, #36]	; (8009740 <prvCheckTasksWaitingTermination+0x54>)
 800971c:	6013      	str	r3, [r2, #0]
 800971e:	f000 fdb3 	bl	800a288 <vPortExitCritical>
 8009722:	6878      	ldr	r0, [r7, #4]
 8009724:	f000 f80e 	bl	8009744 <prvDeleteTCB>
 8009728:	4b05      	ldr	r3, [pc, #20]	; (8009740 <prvCheckTasksWaitingTermination+0x54>)
 800972a:	681b      	ldr	r3, [r3, #0]
 800972c:	2b00      	cmp	r3, #0
 800972e:	d1e1      	bne.n	80096f4 <prvCheckTasksWaitingTermination+0x8>
 8009730:	bf00      	nop
 8009732:	3708      	adds	r7, #8
 8009734:	46bd      	mov	sp, r7
 8009736:	bd80      	pop	{r7, pc}
 8009738:	20000bc0 	.word	0x20000bc0
 800973c:	20000bec 	.word	0x20000bec
 8009740:	20000bd4 	.word	0x20000bd4

08009744 <prvDeleteTCB>:
 8009744:	b580      	push	{r7, lr}
 8009746:	b084      	sub	sp, #16
 8009748:	af00      	add	r7, sp, #0
 800974a:	6078      	str	r0, [r7, #4]
 800974c:	687b      	ldr	r3, [r7, #4]
 800974e:	3350      	adds	r3, #80	; 0x50
 8009750:	4618      	mov	r0, r3
 8009752:	f7f8 f80d 	bl	8001770 <_reclaim_reent>
 8009756:	687b      	ldr	r3, [r7, #4]
 8009758:	f893 347d 	ldrb.w	r3, [r3, #1149]	; 0x47d
 800975c:	2b00      	cmp	r3, #0
 800975e:	d108      	bne.n	8009772 <prvDeleteTCB+0x2e>
 8009760:	687b      	ldr	r3, [r7, #4]
 8009762:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8009764:	4618      	mov	r0, r3
 8009766:	f000 ff41 	bl	800a5ec <vPortFree>
 800976a:	6878      	ldr	r0, [r7, #4]
 800976c:	f000 ff3e 	bl	800a5ec <vPortFree>
 8009770:	e017      	b.n	80097a2 <prvDeleteTCB+0x5e>
 8009772:	687b      	ldr	r3, [r7, #4]
 8009774:	f893 347d 	ldrb.w	r3, [r3, #1149]	; 0x47d
 8009778:	2b01      	cmp	r3, #1
 800977a:	d103      	bne.n	8009784 <prvDeleteTCB+0x40>
 800977c:	6878      	ldr	r0, [r7, #4]
 800977e:	f000 ff35 	bl	800a5ec <vPortFree>
 8009782:	e00e      	b.n	80097a2 <prvDeleteTCB+0x5e>
 8009784:	687b      	ldr	r3, [r7, #4]
 8009786:	f893 347d 	ldrb.w	r3, [r3, #1149]	; 0x47d
 800978a:	2b02      	cmp	r3, #2
 800978c:	d009      	beq.n	80097a2 <prvDeleteTCB+0x5e>
 800978e:	f04f 0350 	mov.w	r3, #80	; 0x50
 8009792:	f383 8811 	msr	BASEPRI, r3
 8009796:	f3bf 8f6f 	isb	sy
 800979a:	f3bf 8f4f 	dsb	sy
 800979e:	60fb      	str	r3, [r7, #12]
 80097a0:	e7fe      	b.n	80097a0 <prvDeleteTCB+0x5c>
 80097a2:	bf00      	nop
 80097a4:	3710      	adds	r7, #16
 80097a6:	46bd      	mov	sp, r7
 80097a8:	bd80      	pop	{r7, pc}
 80097aa:	bf00      	nop

080097ac <prvResetNextTaskUnblockTime>:
 80097ac:	b480      	push	{r7}
 80097ae:	b083      	sub	sp, #12
 80097b0:	af00      	add	r7, sp, #0
 80097b2:	4b0c      	ldr	r3, [pc, #48]	; (80097e4 <prvResetNextTaskUnblockTime+0x38>)
 80097b4:	681b      	ldr	r3, [r3, #0]
 80097b6:	681b      	ldr	r3, [r3, #0]
 80097b8:	2b00      	cmp	r3, #0
 80097ba:	d104      	bne.n	80097c6 <prvResetNextTaskUnblockTime+0x1a>
 80097bc:	4b0a      	ldr	r3, [pc, #40]	; (80097e8 <prvResetNextTaskUnblockTime+0x3c>)
 80097be:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80097c2:	601a      	str	r2, [r3, #0]
 80097c4:	e008      	b.n	80097d8 <prvResetNextTaskUnblockTime+0x2c>
 80097c6:	4b07      	ldr	r3, [pc, #28]	; (80097e4 <prvResetNextTaskUnblockTime+0x38>)
 80097c8:	681b      	ldr	r3, [r3, #0]
 80097ca:	68db      	ldr	r3, [r3, #12]
 80097cc:	68db      	ldr	r3, [r3, #12]
 80097ce:	607b      	str	r3, [r7, #4]
 80097d0:	687b      	ldr	r3, [r7, #4]
 80097d2:	685b      	ldr	r3, [r3, #4]
 80097d4:	4a04      	ldr	r2, [pc, #16]	; (80097e8 <prvResetNextTaskUnblockTime+0x3c>)
 80097d6:	6013      	str	r3, [r2, #0]
 80097d8:	bf00      	nop
 80097da:	370c      	adds	r7, #12
 80097dc:	46bd      	mov	sp, r7
 80097de:	f85d 7b04 	ldr.w	r7, [sp], #4
 80097e2:	4770      	bx	lr
 80097e4:	20000ba4 	.word	0x20000ba4
 80097e8:	20000c0c 	.word	0x20000c0c

080097ec <xTaskGetSchedulerState>:
 80097ec:	b480      	push	{r7}
 80097ee:	b083      	sub	sp, #12
 80097f0:	af00      	add	r7, sp, #0
 80097f2:	4b0b      	ldr	r3, [pc, #44]	; (8009820 <xTaskGetSchedulerState+0x34>)
 80097f4:	681b      	ldr	r3, [r3, #0]
 80097f6:	2b00      	cmp	r3, #0
 80097f8:	d102      	bne.n	8009800 <xTaskGetSchedulerState+0x14>
 80097fa:	2301      	movs	r3, #1
 80097fc:	607b      	str	r3, [r7, #4]
 80097fe:	e008      	b.n	8009812 <xTaskGetSchedulerState+0x26>
 8009800:	4b08      	ldr	r3, [pc, #32]	; (8009824 <xTaskGetSchedulerState+0x38>)
 8009802:	681b      	ldr	r3, [r3, #0]
 8009804:	2b00      	cmp	r3, #0
 8009806:	d102      	bne.n	800980e <xTaskGetSchedulerState+0x22>
 8009808:	2302      	movs	r3, #2
 800980a:	607b      	str	r3, [r7, #4]
 800980c:	e001      	b.n	8009812 <xTaskGetSchedulerState+0x26>
 800980e:	2300      	movs	r3, #0
 8009810:	607b      	str	r3, [r7, #4]
 8009812:	687b      	ldr	r3, [r7, #4]
 8009814:	4618      	mov	r0, r3
 8009816:	370c      	adds	r7, #12
 8009818:	46bd      	mov	sp, r7
 800981a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800981e:	4770      	bx	lr
 8009820:	20000bf8 	.word	0x20000bf8
 8009824:	20000c14 	.word	0x20000c14

08009828 <xTaskPriorityDisinherit>:
 8009828:	b580      	push	{r7, lr}
 800982a:	b086      	sub	sp, #24
 800982c:	af00      	add	r7, sp, #0
 800982e:	6078      	str	r0, [r7, #4]
 8009830:	687b      	ldr	r3, [r7, #4]
 8009832:	613b      	str	r3, [r7, #16]
 8009834:	2300      	movs	r3, #0
 8009836:	617b      	str	r3, [r7, #20]
 8009838:	687b      	ldr	r3, [r7, #4]
 800983a:	2b00      	cmp	r3, #0
 800983c:	d06c      	beq.n	8009918 <xTaskPriorityDisinherit+0xf0>
 800983e:	4b39      	ldr	r3, [pc, #228]	; (8009924 <xTaskPriorityDisinherit+0xfc>)
 8009840:	681b      	ldr	r3, [r3, #0]
 8009842:	693a      	ldr	r2, [r7, #16]
 8009844:	429a      	cmp	r2, r3
 8009846:	d009      	beq.n	800985c <xTaskPriorityDisinherit+0x34>
 8009848:	f04f 0350 	mov.w	r3, #80	; 0x50
 800984c:	f383 8811 	msr	BASEPRI, r3
 8009850:	f3bf 8f6f 	isb	sy
 8009854:	f3bf 8f4f 	dsb	sy
 8009858:	60bb      	str	r3, [r7, #8]
 800985a:	e7fe      	b.n	800985a <xTaskPriorityDisinherit+0x32>
 800985c:	693b      	ldr	r3, [r7, #16]
 800985e:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8009860:	2b00      	cmp	r3, #0
 8009862:	d109      	bne.n	8009878 <xTaskPriorityDisinherit+0x50>
 8009864:	f04f 0350 	mov.w	r3, #80	; 0x50
 8009868:	f383 8811 	msr	BASEPRI, r3
 800986c:	f3bf 8f6f 	isb	sy
 8009870:	f3bf 8f4f 	dsb	sy
 8009874:	60fb      	str	r3, [r7, #12]
 8009876:	e7fe      	b.n	8009876 <xTaskPriorityDisinherit+0x4e>
 8009878:	693b      	ldr	r3, [r7, #16]
 800987a:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 800987c:	1e5a      	subs	r2, r3, #1
 800987e:	693b      	ldr	r3, [r7, #16]
 8009880:	64da      	str	r2, [r3, #76]	; 0x4c
 8009882:	693b      	ldr	r3, [r7, #16]
 8009884:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8009886:	693b      	ldr	r3, [r7, #16]
 8009888:	6c9b      	ldr	r3, [r3, #72]	; 0x48
 800988a:	429a      	cmp	r2, r3
 800988c:	d044      	beq.n	8009918 <xTaskPriorityDisinherit+0xf0>
 800988e:	693b      	ldr	r3, [r7, #16]
 8009890:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8009892:	2b00      	cmp	r3, #0
 8009894:	d140      	bne.n	8009918 <xTaskPriorityDisinherit+0xf0>
 8009896:	693b      	ldr	r3, [r7, #16]
 8009898:	3304      	adds	r3, #4
 800989a:	4618      	mov	r0, r3
 800989c:	f7ff f92a 	bl	8008af4 <uxListRemove>
 80098a0:	4603      	mov	r3, r0
 80098a2:	2b00      	cmp	r3, #0
 80098a4:	d115      	bne.n	80098d2 <xTaskPriorityDisinherit+0xaa>
 80098a6:	693b      	ldr	r3, [r7, #16]
 80098a8:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80098aa:	491f      	ldr	r1, [pc, #124]	; (8009928 <xTaskPriorityDisinherit+0x100>)
 80098ac:	4613      	mov	r3, r2
 80098ae:	009b      	lsls	r3, r3, #2
 80098b0:	4413      	add	r3, r2
 80098b2:	009b      	lsls	r3, r3, #2
 80098b4:	440b      	add	r3, r1
 80098b6:	681b      	ldr	r3, [r3, #0]
 80098b8:	2b00      	cmp	r3, #0
 80098ba:	d10a      	bne.n	80098d2 <xTaskPriorityDisinherit+0xaa>
 80098bc:	693b      	ldr	r3, [r7, #16]
 80098be:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80098c0:	2201      	movs	r2, #1
 80098c2:	fa02 f303 	lsl.w	r3, r2, r3
 80098c6:	43da      	mvns	r2, r3
 80098c8:	4b18      	ldr	r3, [pc, #96]	; (800992c <xTaskPriorityDisinherit+0x104>)
 80098ca:	681b      	ldr	r3, [r3, #0]
 80098cc:	4013      	ands	r3, r2
 80098ce:	4a17      	ldr	r2, [pc, #92]	; (800992c <xTaskPriorityDisinherit+0x104>)
 80098d0:	6013      	str	r3, [r2, #0]
 80098d2:	693b      	ldr	r3, [r7, #16]
 80098d4:	6c9a      	ldr	r2, [r3, #72]	; 0x48
 80098d6:	693b      	ldr	r3, [r7, #16]
 80098d8:	62da      	str	r2, [r3, #44]	; 0x2c
 80098da:	693b      	ldr	r3, [r7, #16]
 80098dc:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80098de:	f1c3 0205 	rsb	r2, r3, #5
 80098e2:	693b      	ldr	r3, [r7, #16]
 80098e4:	619a      	str	r2, [r3, #24]
 80098e6:	693b      	ldr	r3, [r7, #16]
 80098e8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80098ea:	2201      	movs	r2, #1
 80098ec:	409a      	lsls	r2, r3
 80098ee:	4b0f      	ldr	r3, [pc, #60]	; (800992c <xTaskPriorityDisinherit+0x104>)
 80098f0:	681b      	ldr	r3, [r3, #0]
 80098f2:	4313      	orrs	r3, r2
 80098f4:	4a0d      	ldr	r2, [pc, #52]	; (800992c <xTaskPriorityDisinherit+0x104>)
 80098f6:	6013      	str	r3, [r2, #0]
 80098f8:	693b      	ldr	r3, [r7, #16]
 80098fa:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80098fc:	4613      	mov	r3, r2
 80098fe:	009b      	lsls	r3, r3, #2
 8009900:	4413      	add	r3, r2
 8009902:	009b      	lsls	r3, r3, #2
 8009904:	4a08      	ldr	r2, [pc, #32]	; (8009928 <xTaskPriorityDisinherit+0x100>)
 8009906:	441a      	add	r2, r3
 8009908:	693b      	ldr	r3, [r7, #16]
 800990a:	3304      	adds	r3, #4
 800990c:	4619      	mov	r1, r3
 800990e:	4610      	mov	r0, r2
 8009910:	f7ff f892 	bl	8008a38 <vListInsertEnd>
 8009914:	2301      	movs	r3, #1
 8009916:	617b      	str	r3, [r7, #20]
 8009918:	697b      	ldr	r3, [r7, #20]
 800991a:	4618      	mov	r0, r3
 800991c:	3718      	adds	r7, #24
 800991e:	46bd      	mov	sp, r7
 8009920:	bd80      	pop	{r7, pc}
 8009922:	bf00      	nop
 8009924:	20000b14 	.word	0x20000b14
 8009928:	20000b18 	.word	0x20000b18
 800992c:	20000bf4 	.word	0x20000bf4

08009930 <prvAddCurrentTaskToDelayedList>:
 8009930:	b580      	push	{r7, lr}
 8009932:	b084      	sub	sp, #16
 8009934:	af00      	add	r7, sp, #0
 8009936:	6078      	str	r0, [r7, #4]
 8009938:	6039      	str	r1, [r7, #0]
 800993a:	4b29      	ldr	r3, [pc, #164]	; (80099e0 <prvAddCurrentTaskToDelayedList+0xb0>)
 800993c:	681b      	ldr	r3, [r3, #0]
 800993e:	60fb      	str	r3, [r7, #12]
 8009940:	4b28      	ldr	r3, [pc, #160]	; (80099e4 <prvAddCurrentTaskToDelayedList+0xb4>)
 8009942:	681b      	ldr	r3, [r3, #0]
 8009944:	3304      	adds	r3, #4
 8009946:	4618      	mov	r0, r3
 8009948:	f7ff f8d4 	bl	8008af4 <uxListRemove>
 800994c:	4603      	mov	r3, r0
 800994e:	2b00      	cmp	r3, #0
 8009950:	d10b      	bne.n	800996a <prvAddCurrentTaskToDelayedList+0x3a>
 8009952:	4b24      	ldr	r3, [pc, #144]	; (80099e4 <prvAddCurrentTaskToDelayedList+0xb4>)
 8009954:	681b      	ldr	r3, [r3, #0]
 8009956:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8009958:	2201      	movs	r2, #1
 800995a:	fa02 f303 	lsl.w	r3, r2, r3
 800995e:	43da      	mvns	r2, r3
 8009960:	4b21      	ldr	r3, [pc, #132]	; (80099e8 <prvAddCurrentTaskToDelayedList+0xb8>)
 8009962:	681b      	ldr	r3, [r3, #0]
 8009964:	4013      	ands	r3, r2
 8009966:	4a20      	ldr	r2, [pc, #128]	; (80099e8 <prvAddCurrentTaskToDelayedList+0xb8>)
 8009968:	6013      	str	r3, [r2, #0]
 800996a:	687b      	ldr	r3, [r7, #4]
 800996c:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8009970:	d10a      	bne.n	8009988 <prvAddCurrentTaskToDelayedList+0x58>
 8009972:	683b      	ldr	r3, [r7, #0]
 8009974:	2b00      	cmp	r3, #0
 8009976:	d007      	beq.n	8009988 <prvAddCurrentTaskToDelayedList+0x58>
 8009978:	4b1a      	ldr	r3, [pc, #104]	; (80099e4 <prvAddCurrentTaskToDelayedList+0xb4>)
 800997a:	681b      	ldr	r3, [r3, #0]
 800997c:	3304      	adds	r3, #4
 800997e:	4619      	mov	r1, r3
 8009980:	481a      	ldr	r0, [pc, #104]	; (80099ec <prvAddCurrentTaskToDelayedList+0xbc>)
 8009982:	f7ff f859 	bl	8008a38 <vListInsertEnd>
 8009986:	e026      	b.n	80099d6 <prvAddCurrentTaskToDelayedList+0xa6>
 8009988:	68fa      	ldr	r2, [r7, #12]
 800998a:	687b      	ldr	r3, [r7, #4]
 800998c:	4413      	add	r3, r2
 800998e:	60bb      	str	r3, [r7, #8]
 8009990:	4b14      	ldr	r3, [pc, #80]	; (80099e4 <prvAddCurrentTaskToDelayedList+0xb4>)
 8009992:	681b      	ldr	r3, [r3, #0]
 8009994:	68ba      	ldr	r2, [r7, #8]
 8009996:	605a      	str	r2, [r3, #4]
 8009998:	68ba      	ldr	r2, [r7, #8]
 800999a:	68fb      	ldr	r3, [r7, #12]
 800999c:	429a      	cmp	r2, r3
 800999e:	d209      	bcs.n	80099b4 <prvAddCurrentTaskToDelayedList+0x84>
 80099a0:	4b13      	ldr	r3, [pc, #76]	; (80099f0 <prvAddCurrentTaskToDelayedList+0xc0>)
 80099a2:	681a      	ldr	r2, [r3, #0]
 80099a4:	4b0f      	ldr	r3, [pc, #60]	; (80099e4 <prvAddCurrentTaskToDelayedList+0xb4>)
 80099a6:	681b      	ldr	r3, [r3, #0]
 80099a8:	3304      	adds	r3, #4
 80099aa:	4619      	mov	r1, r3
 80099ac:	4610      	mov	r0, r2
 80099ae:	f7ff f867 	bl	8008a80 <vListInsert>
 80099b2:	e010      	b.n	80099d6 <prvAddCurrentTaskToDelayedList+0xa6>
 80099b4:	4b0f      	ldr	r3, [pc, #60]	; (80099f4 <prvAddCurrentTaskToDelayedList+0xc4>)
 80099b6:	681a      	ldr	r2, [r3, #0]
 80099b8:	4b0a      	ldr	r3, [pc, #40]	; (80099e4 <prvAddCurrentTaskToDelayedList+0xb4>)
 80099ba:	681b      	ldr	r3, [r3, #0]
 80099bc:	3304      	adds	r3, #4
 80099be:	4619      	mov	r1, r3
 80099c0:	4610      	mov	r0, r2
 80099c2:	f7ff f85d 	bl	8008a80 <vListInsert>
 80099c6:	4b0c      	ldr	r3, [pc, #48]	; (80099f8 <prvAddCurrentTaskToDelayedList+0xc8>)
 80099c8:	681b      	ldr	r3, [r3, #0]
 80099ca:	68ba      	ldr	r2, [r7, #8]
 80099cc:	429a      	cmp	r2, r3
 80099ce:	d202      	bcs.n	80099d6 <prvAddCurrentTaskToDelayedList+0xa6>
 80099d0:	4a09      	ldr	r2, [pc, #36]	; (80099f8 <prvAddCurrentTaskToDelayedList+0xc8>)
 80099d2:	68bb      	ldr	r3, [r7, #8]
 80099d4:	6013      	str	r3, [r2, #0]
 80099d6:	bf00      	nop
 80099d8:	3710      	adds	r7, #16
 80099da:	46bd      	mov	sp, r7
 80099dc:	bd80      	pop	{r7, pc}
 80099de:	bf00      	nop
 80099e0:	20000bf0 	.word	0x20000bf0
 80099e4:	20000b14 	.word	0x20000b14
 80099e8:	20000bf4 	.word	0x20000bf4
 80099ec:	20000bd8 	.word	0x20000bd8
 80099f0:	20000ba8 	.word	0x20000ba8
 80099f4:	20000ba4 	.word	0x20000ba4
 80099f8:	20000c0c 	.word	0x20000c0c

080099fc <xTimerCreateTimerTask>:
 80099fc:	b580      	push	{r7, lr}
 80099fe:	b08a      	sub	sp, #40	; 0x28
 8009a00:	af04      	add	r7, sp, #16
 8009a02:	2300      	movs	r3, #0
 8009a04:	617b      	str	r3, [r7, #20]
 8009a06:	f000 faa9 	bl	8009f5c <prvCheckForValidListAndQueue>
 8009a0a:	4b1c      	ldr	r3, [pc, #112]	; (8009a7c <xTimerCreateTimerTask+0x80>)
 8009a0c:	681b      	ldr	r3, [r3, #0]
 8009a0e:	2b00      	cmp	r3, #0
 8009a10:	d021      	beq.n	8009a56 <xTimerCreateTimerTask+0x5a>
 8009a12:	2300      	movs	r3, #0
 8009a14:	60fb      	str	r3, [r7, #12]
 8009a16:	2300      	movs	r3, #0
 8009a18:	60bb      	str	r3, [r7, #8]
 8009a1a:	1d3a      	adds	r2, r7, #4
 8009a1c:	f107 0108 	add.w	r1, r7, #8
 8009a20:	f107 030c 	add.w	r3, r7, #12
 8009a24:	4618      	mov	r0, r3
 8009a26:	f7fd f8dd 	bl	8006be4 <vApplicationGetTimerTaskMemory>
 8009a2a:	6879      	ldr	r1, [r7, #4]
 8009a2c:	68bb      	ldr	r3, [r7, #8]
 8009a2e:	68fa      	ldr	r2, [r7, #12]
 8009a30:	9202      	str	r2, [sp, #8]
 8009a32:	9301      	str	r3, [sp, #4]
 8009a34:	2302      	movs	r3, #2
 8009a36:	9300      	str	r3, [sp, #0]
 8009a38:	2300      	movs	r3, #0
 8009a3a:	460a      	mov	r2, r1
 8009a3c:	4910      	ldr	r1, [pc, #64]	; (8009a80 <xTimerCreateTimerTask+0x84>)
 8009a3e:	4811      	ldr	r0, [pc, #68]	; (8009a84 <xTimerCreateTimerTask+0x88>)
 8009a40:	f7ff f882 	bl	8008b48 <xTaskCreateStatic>
 8009a44:	4602      	mov	r2, r0
 8009a46:	4b10      	ldr	r3, [pc, #64]	; (8009a88 <xTimerCreateTimerTask+0x8c>)
 8009a48:	601a      	str	r2, [r3, #0]
 8009a4a:	4b0f      	ldr	r3, [pc, #60]	; (8009a88 <xTimerCreateTimerTask+0x8c>)
 8009a4c:	681b      	ldr	r3, [r3, #0]
 8009a4e:	2b00      	cmp	r3, #0
 8009a50:	d001      	beq.n	8009a56 <xTimerCreateTimerTask+0x5a>
 8009a52:	2301      	movs	r3, #1
 8009a54:	617b      	str	r3, [r7, #20]
 8009a56:	697b      	ldr	r3, [r7, #20]
 8009a58:	2b00      	cmp	r3, #0
 8009a5a:	d109      	bne.n	8009a70 <xTimerCreateTimerTask+0x74>
 8009a5c:	f04f 0350 	mov.w	r3, #80	; 0x50
 8009a60:	f383 8811 	msr	BASEPRI, r3
 8009a64:	f3bf 8f6f 	isb	sy
 8009a68:	f3bf 8f4f 	dsb	sy
 8009a6c:	613b      	str	r3, [r7, #16]
 8009a6e:	e7fe      	b.n	8009a6e <xTimerCreateTimerTask+0x72>
 8009a70:	697b      	ldr	r3, [r7, #20]
 8009a72:	4618      	mov	r0, r3
 8009a74:	3718      	adds	r7, #24
 8009a76:	46bd      	mov	sp, r7
 8009a78:	bd80      	pop	{r7, pc}
 8009a7a:	bf00      	nop
 8009a7c:	20000c48 	.word	0x20000c48
 8009a80:	0800a854 	.word	0x0800a854
 8009a84:	08009ba5 	.word	0x08009ba5
 8009a88:	20000c4c 	.word	0x20000c4c

08009a8c <xTimerGenericCommand>:
 8009a8c:	b580      	push	{r7, lr}
 8009a8e:	b08a      	sub	sp, #40	; 0x28
 8009a90:	af00      	add	r7, sp, #0
 8009a92:	60f8      	str	r0, [r7, #12]
 8009a94:	60b9      	str	r1, [r7, #8]
 8009a96:	607a      	str	r2, [r7, #4]
 8009a98:	603b      	str	r3, [r7, #0]
 8009a9a:	2300      	movs	r3, #0
 8009a9c:	627b      	str	r3, [r7, #36]	; 0x24
 8009a9e:	68fb      	ldr	r3, [r7, #12]
 8009aa0:	2b00      	cmp	r3, #0
 8009aa2:	d109      	bne.n	8009ab8 <xTimerGenericCommand+0x2c>
 8009aa4:	f04f 0350 	mov.w	r3, #80	; 0x50
 8009aa8:	f383 8811 	msr	BASEPRI, r3
 8009aac:	f3bf 8f6f 	isb	sy
 8009ab0:	f3bf 8f4f 	dsb	sy
 8009ab4:	623b      	str	r3, [r7, #32]
 8009ab6:	e7fe      	b.n	8009ab6 <xTimerGenericCommand+0x2a>
 8009ab8:	4b19      	ldr	r3, [pc, #100]	; (8009b20 <xTimerGenericCommand+0x94>)
 8009aba:	681b      	ldr	r3, [r3, #0]
 8009abc:	2b00      	cmp	r3, #0
 8009abe:	d02a      	beq.n	8009b16 <xTimerGenericCommand+0x8a>
 8009ac0:	68bb      	ldr	r3, [r7, #8]
 8009ac2:	617b      	str	r3, [r7, #20]
 8009ac4:	687b      	ldr	r3, [r7, #4]
 8009ac6:	61bb      	str	r3, [r7, #24]
 8009ac8:	68fb      	ldr	r3, [r7, #12]
 8009aca:	61fb      	str	r3, [r7, #28]
 8009acc:	68bb      	ldr	r3, [r7, #8]
 8009ace:	2b05      	cmp	r3, #5
 8009ad0:	dc18      	bgt.n	8009b04 <xTimerGenericCommand+0x78>
 8009ad2:	f7ff fe8b 	bl	80097ec <xTaskGetSchedulerState>
 8009ad6:	4603      	mov	r3, r0
 8009ad8:	2b02      	cmp	r3, #2
 8009ada:	d109      	bne.n	8009af0 <xTimerGenericCommand+0x64>
 8009adc:	4b10      	ldr	r3, [pc, #64]	; (8009b20 <xTimerGenericCommand+0x94>)
 8009ade:	6818      	ldr	r0, [r3, #0]
 8009ae0:	f107 0114 	add.w	r1, r7, #20
 8009ae4:	2300      	movs	r3, #0
 8009ae6:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8009ae8:	f7fe fba2 	bl	8008230 <xQueueGenericSend>
 8009aec:	6278      	str	r0, [r7, #36]	; 0x24
 8009aee:	e012      	b.n	8009b16 <xTimerGenericCommand+0x8a>
 8009af0:	4b0b      	ldr	r3, [pc, #44]	; (8009b20 <xTimerGenericCommand+0x94>)
 8009af2:	6818      	ldr	r0, [r3, #0]
 8009af4:	f107 0114 	add.w	r1, r7, #20
 8009af8:	2300      	movs	r3, #0
 8009afa:	2200      	movs	r2, #0
 8009afc:	f7fe fb98 	bl	8008230 <xQueueGenericSend>
 8009b00:	6278      	str	r0, [r7, #36]	; 0x24
 8009b02:	e008      	b.n	8009b16 <xTimerGenericCommand+0x8a>
 8009b04:	4b06      	ldr	r3, [pc, #24]	; (8009b20 <xTimerGenericCommand+0x94>)
 8009b06:	6818      	ldr	r0, [r3, #0]
 8009b08:	f107 0114 	add.w	r1, r7, #20
 8009b0c:	2300      	movs	r3, #0
 8009b0e:	683a      	ldr	r2, [r7, #0]
 8009b10:	f7fe fc88 	bl	8008424 <xQueueGenericSendFromISR>
 8009b14:	6278      	str	r0, [r7, #36]	; 0x24
 8009b16:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8009b18:	4618      	mov	r0, r3
 8009b1a:	3728      	adds	r7, #40	; 0x28
 8009b1c:	46bd      	mov	sp, r7
 8009b1e:	bd80      	pop	{r7, pc}
 8009b20:	20000c48 	.word	0x20000c48

08009b24 <prvProcessExpiredTimer>:
 8009b24:	b580      	push	{r7, lr}
 8009b26:	b088      	sub	sp, #32
 8009b28:	af02      	add	r7, sp, #8
 8009b2a:	6078      	str	r0, [r7, #4]
 8009b2c:	6039      	str	r1, [r7, #0]
 8009b2e:	4b1c      	ldr	r3, [pc, #112]	; (8009ba0 <prvProcessExpiredTimer+0x7c>)
 8009b30:	681b      	ldr	r3, [r3, #0]
 8009b32:	68db      	ldr	r3, [r3, #12]
 8009b34:	68db      	ldr	r3, [r3, #12]
 8009b36:	617b      	str	r3, [r7, #20]
 8009b38:	697b      	ldr	r3, [r7, #20]
 8009b3a:	3304      	adds	r3, #4
 8009b3c:	4618      	mov	r0, r3
 8009b3e:	f7fe ffd9 	bl	8008af4 <uxListRemove>
 8009b42:	697b      	ldr	r3, [r7, #20]
 8009b44:	69db      	ldr	r3, [r3, #28]
 8009b46:	2b01      	cmp	r3, #1
 8009b48:	d121      	bne.n	8009b8e <prvProcessExpiredTimer+0x6a>
 8009b4a:	697b      	ldr	r3, [r7, #20]
 8009b4c:	699a      	ldr	r2, [r3, #24]
 8009b4e:	687b      	ldr	r3, [r7, #4]
 8009b50:	18d1      	adds	r1, r2, r3
 8009b52:	687b      	ldr	r3, [r7, #4]
 8009b54:	683a      	ldr	r2, [r7, #0]
 8009b56:	6978      	ldr	r0, [r7, #20]
 8009b58:	f000 f8c8 	bl	8009cec <prvInsertTimerInActiveList>
 8009b5c:	4603      	mov	r3, r0
 8009b5e:	2b00      	cmp	r3, #0
 8009b60:	d015      	beq.n	8009b8e <prvProcessExpiredTimer+0x6a>
 8009b62:	2300      	movs	r3, #0
 8009b64:	9300      	str	r3, [sp, #0]
 8009b66:	2300      	movs	r3, #0
 8009b68:	687a      	ldr	r2, [r7, #4]
 8009b6a:	2100      	movs	r1, #0
 8009b6c:	6978      	ldr	r0, [r7, #20]
 8009b6e:	f7ff ff8d 	bl	8009a8c <xTimerGenericCommand>
 8009b72:	6138      	str	r0, [r7, #16]
 8009b74:	693b      	ldr	r3, [r7, #16]
 8009b76:	2b00      	cmp	r3, #0
 8009b78:	d109      	bne.n	8009b8e <prvProcessExpiredTimer+0x6a>
 8009b7a:	f04f 0350 	mov.w	r3, #80	; 0x50
 8009b7e:	f383 8811 	msr	BASEPRI, r3
 8009b82:	f3bf 8f6f 	isb	sy
 8009b86:	f3bf 8f4f 	dsb	sy
 8009b8a:	60fb      	str	r3, [r7, #12]
 8009b8c:	e7fe      	b.n	8009b8c <prvProcessExpiredTimer+0x68>
 8009b8e:	697b      	ldr	r3, [r7, #20]
 8009b90:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8009b92:	6978      	ldr	r0, [r7, #20]
 8009b94:	4798      	blx	r3
 8009b96:	bf00      	nop
 8009b98:	3718      	adds	r7, #24
 8009b9a:	46bd      	mov	sp, r7
 8009b9c:	bd80      	pop	{r7, pc}
 8009b9e:	bf00      	nop
 8009ba0:	20000c40 	.word	0x20000c40

08009ba4 <prvTimerTask>:
 8009ba4:	b580      	push	{r7, lr}
 8009ba6:	b084      	sub	sp, #16
 8009ba8:	af00      	add	r7, sp, #0
 8009baa:	6078      	str	r0, [r7, #4]
 8009bac:	f107 0308 	add.w	r3, r7, #8
 8009bb0:	4618      	mov	r0, r3
 8009bb2:	f000 f857 	bl	8009c64 <prvGetNextExpireTime>
 8009bb6:	60f8      	str	r0, [r7, #12]
 8009bb8:	68bb      	ldr	r3, [r7, #8]
 8009bba:	4619      	mov	r1, r3
 8009bbc:	68f8      	ldr	r0, [r7, #12]
 8009bbe:	f000 f803 	bl	8009bc8 <prvProcessTimerOrBlockTask>
 8009bc2:	f000 f8d5 	bl	8009d70 <prvProcessReceivedCommands>
 8009bc6:	e7f1      	b.n	8009bac <prvTimerTask+0x8>

08009bc8 <prvProcessTimerOrBlockTask>:
 8009bc8:	b580      	push	{r7, lr}
 8009bca:	b084      	sub	sp, #16
 8009bcc:	af00      	add	r7, sp, #0
 8009bce:	6078      	str	r0, [r7, #4]
 8009bd0:	6039      	str	r1, [r7, #0]
 8009bd2:	f7ff f9ff 	bl	8008fd4 <vTaskSuspendAll>
 8009bd6:	f107 0308 	add.w	r3, r7, #8
 8009bda:	4618      	mov	r0, r3
 8009bdc:	f000 f866 	bl	8009cac <prvSampleTimeNow>
 8009be0:	60f8      	str	r0, [r7, #12]
 8009be2:	68bb      	ldr	r3, [r7, #8]
 8009be4:	2b00      	cmp	r3, #0
 8009be6:	d130      	bne.n	8009c4a <prvProcessTimerOrBlockTask+0x82>
 8009be8:	683b      	ldr	r3, [r7, #0]
 8009bea:	2b00      	cmp	r3, #0
 8009bec:	d10a      	bne.n	8009c04 <prvProcessTimerOrBlockTask+0x3c>
 8009bee:	687a      	ldr	r2, [r7, #4]
 8009bf0:	68fb      	ldr	r3, [r7, #12]
 8009bf2:	429a      	cmp	r2, r3
 8009bf4:	d806      	bhi.n	8009c04 <prvProcessTimerOrBlockTask+0x3c>
 8009bf6:	f7ff f9fb 	bl	8008ff0 <xTaskResumeAll>
 8009bfa:	68f9      	ldr	r1, [r7, #12]
 8009bfc:	6878      	ldr	r0, [r7, #4]
 8009bfe:	f7ff ff91 	bl	8009b24 <prvProcessExpiredTimer>
 8009c02:	e024      	b.n	8009c4e <prvProcessTimerOrBlockTask+0x86>
 8009c04:	683b      	ldr	r3, [r7, #0]
 8009c06:	2b00      	cmp	r3, #0
 8009c08:	d008      	beq.n	8009c1c <prvProcessTimerOrBlockTask+0x54>
 8009c0a:	4b13      	ldr	r3, [pc, #76]	; (8009c58 <prvProcessTimerOrBlockTask+0x90>)
 8009c0c:	681b      	ldr	r3, [r3, #0]
 8009c0e:	681b      	ldr	r3, [r3, #0]
 8009c10:	2b00      	cmp	r3, #0
 8009c12:	d101      	bne.n	8009c18 <prvProcessTimerOrBlockTask+0x50>
 8009c14:	2301      	movs	r3, #1
 8009c16:	e000      	b.n	8009c1a <prvProcessTimerOrBlockTask+0x52>
 8009c18:	2300      	movs	r3, #0
 8009c1a:	603b      	str	r3, [r7, #0]
 8009c1c:	4b0f      	ldr	r3, [pc, #60]	; (8009c5c <prvProcessTimerOrBlockTask+0x94>)
 8009c1e:	6818      	ldr	r0, [r3, #0]
 8009c20:	687a      	ldr	r2, [r7, #4]
 8009c22:	68fb      	ldr	r3, [r7, #12]
 8009c24:	1ad3      	subs	r3, r2, r3
 8009c26:	683a      	ldr	r2, [r7, #0]
 8009c28:	4619      	mov	r1, r3
 8009c2a:	f7fe fea3 	bl	8008974 <vQueueWaitForMessageRestricted>
 8009c2e:	f7ff f9df 	bl	8008ff0 <xTaskResumeAll>
 8009c32:	4603      	mov	r3, r0
 8009c34:	2b00      	cmp	r3, #0
 8009c36:	d10a      	bne.n	8009c4e <prvProcessTimerOrBlockTask+0x86>
 8009c38:	4b09      	ldr	r3, [pc, #36]	; (8009c60 <prvProcessTimerOrBlockTask+0x98>)
 8009c3a:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 8009c3e:	601a      	str	r2, [r3, #0]
 8009c40:	f3bf 8f4f 	dsb	sy
 8009c44:	f3bf 8f6f 	isb	sy
 8009c48:	e001      	b.n	8009c4e <prvProcessTimerOrBlockTask+0x86>
 8009c4a:	f7ff f9d1 	bl	8008ff0 <xTaskResumeAll>
 8009c4e:	bf00      	nop
 8009c50:	3710      	adds	r7, #16
 8009c52:	46bd      	mov	sp, r7
 8009c54:	bd80      	pop	{r7, pc}
 8009c56:	bf00      	nop
 8009c58:	20000c44 	.word	0x20000c44
 8009c5c:	20000c48 	.word	0x20000c48
 8009c60:	e000ed04 	.word	0xe000ed04

08009c64 <prvGetNextExpireTime>:
 8009c64:	b480      	push	{r7}
 8009c66:	b085      	sub	sp, #20
 8009c68:	af00      	add	r7, sp, #0
 8009c6a:	6078      	str	r0, [r7, #4]
 8009c6c:	4b0e      	ldr	r3, [pc, #56]	; (8009ca8 <prvGetNextExpireTime+0x44>)
 8009c6e:	681b      	ldr	r3, [r3, #0]
 8009c70:	681b      	ldr	r3, [r3, #0]
 8009c72:	2b00      	cmp	r3, #0
 8009c74:	d101      	bne.n	8009c7a <prvGetNextExpireTime+0x16>
 8009c76:	2201      	movs	r2, #1
 8009c78:	e000      	b.n	8009c7c <prvGetNextExpireTime+0x18>
 8009c7a:	2200      	movs	r2, #0
 8009c7c:	687b      	ldr	r3, [r7, #4]
 8009c7e:	601a      	str	r2, [r3, #0]
 8009c80:	687b      	ldr	r3, [r7, #4]
 8009c82:	681b      	ldr	r3, [r3, #0]
 8009c84:	2b00      	cmp	r3, #0
 8009c86:	d105      	bne.n	8009c94 <prvGetNextExpireTime+0x30>
 8009c88:	4b07      	ldr	r3, [pc, #28]	; (8009ca8 <prvGetNextExpireTime+0x44>)
 8009c8a:	681b      	ldr	r3, [r3, #0]
 8009c8c:	68db      	ldr	r3, [r3, #12]
 8009c8e:	681b      	ldr	r3, [r3, #0]
 8009c90:	60fb      	str	r3, [r7, #12]
 8009c92:	e001      	b.n	8009c98 <prvGetNextExpireTime+0x34>
 8009c94:	2300      	movs	r3, #0
 8009c96:	60fb      	str	r3, [r7, #12]
 8009c98:	68fb      	ldr	r3, [r7, #12]
 8009c9a:	4618      	mov	r0, r3
 8009c9c:	3714      	adds	r7, #20
 8009c9e:	46bd      	mov	sp, r7
 8009ca0:	f85d 7b04 	ldr.w	r7, [sp], #4
 8009ca4:	4770      	bx	lr
 8009ca6:	bf00      	nop
 8009ca8:	20000c40 	.word	0x20000c40

08009cac <prvSampleTimeNow>:
 8009cac:	b580      	push	{r7, lr}
 8009cae:	b084      	sub	sp, #16
 8009cb0:	af00      	add	r7, sp, #0
 8009cb2:	6078      	str	r0, [r7, #4]
 8009cb4:	f7ff fa38 	bl	8009128 <xTaskGetTickCount>
 8009cb8:	60f8      	str	r0, [r7, #12]
 8009cba:	4b0b      	ldr	r3, [pc, #44]	; (8009ce8 <prvSampleTimeNow+0x3c>)
 8009cbc:	681b      	ldr	r3, [r3, #0]
 8009cbe:	68fa      	ldr	r2, [r7, #12]
 8009cc0:	429a      	cmp	r2, r3
 8009cc2:	d205      	bcs.n	8009cd0 <prvSampleTimeNow+0x24>
 8009cc4:	f000 f8ea 	bl	8009e9c <prvSwitchTimerLists>
 8009cc8:	687b      	ldr	r3, [r7, #4]
 8009cca:	2201      	movs	r2, #1
 8009ccc:	601a      	str	r2, [r3, #0]
 8009cce:	e002      	b.n	8009cd6 <prvSampleTimeNow+0x2a>
 8009cd0:	687b      	ldr	r3, [r7, #4]
 8009cd2:	2200      	movs	r2, #0
 8009cd4:	601a      	str	r2, [r3, #0]
 8009cd6:	4a04      	ldr	r2, [pc, #16]	; (8009ce8 <prvSampleTimeNow+0x3c>)
 8009cd8:	68fb      	ldr	r3, [r7, #12]
 8009cda:	6013      	str	r3, [r2, #0]
 8009cdc:	68fb      	ldr	r3, [r7, #12]
 8009cde:	4618      	mov	r0, r3
 8009ce0:	3710      	adds	r7, #16
 8009ce2:	46bd      	mov	sp, r7
 8009ce4:	bd80      	pop	{r7, pc}
 8009ce6:	bf00      	nop
 8009ce8:	20000c50 	.word	0x20000c50

08009cec <prvInsertTimerInActiveList>:
 8009cec:	b580      	push	{r7, lr}
 8009cee:	b086      	sub	sp, #24
 8009cf0:	af00      	add	r7, sp, #0
 8009cf2:	60f8      	str	r0, [r7, #12]
 8009cf4:	60b9      	str	r1, [r7, #8]
 8009cf6:	607a      	str	r2, [r7, #4]
 8009cf8:	603b      	str	r3, [r7, #0]
 8009cfa:	2300      	movs	r3, #0
 8009cfc:	617b      	str	r3, [r7, #20]
 8009cfe:	68fb      	ldr	r3, [r7, #12]
 8009d00:	68ba      	ldr	r2, [r7, #8]
 8009d02:	605a      	str	r2, [r3, #4]
 8009d04:	68fb      	ldr	r3, [r7, #12]
 8009d06:	68fa      	ldr	r2, [r7, #12]
 8009d08:	611a      	str	r2, [r3, #16]
 8009d0a:	68ba      	ldr	r2, [r7, #8]
 8009d0c:	687b      	ldr	r3, [r7, #4]
 8009d0e:	429a      	cmp	r2, r3
 8009d10:	d812      	bhi.n	8009d38 <prvInsertTimerInActiveList+0x4c>
 8009d12:	687a      	ldr	r2, [r7, #4]
 8009d14:	683b      	ldr	r3, [r7, #0]
 8009d16:	1ad2      	subs	r2, r2, r3
 8009d18:	68fb      	ldr	r3, [r7, #12]
 8009d1a:	699b      	ldr	r3, [r3, #24]
 8009d1c:	429a      	cmp	r2, r3
 8009d1e:	d302      	bcc.n	8009d26 <prvInsertTimerInActiveList+0x3a>
 8009d20:	2301      	movs	r3, #1
 8009d22:	617b      	str	r3, [r7, #20]
 8009d24:	e01b      	b.n	8009d5e <prvInsertTimerInActiveList+0x72>
 8009d26:	4b10      	ldr	r3, [pc, #64]	; (8009d68 <prvInsertTimerInActiveList+0x7c>)
 8009d28:	681a      	ldr	r2, [r3, #0]
 8009d2a:	68fb      	ldr	r3, [r7, #12]
 8009d2c:	3304      	adds	r3, #4
 8009d2e:	4619      	mov	r1, r3
 8009d30:	4610      	mov	r0, r2
 8009d32:	f7fe fea5 	bl	8008a80 <vListInsert>
 8009d36:	e012      	b.n	8009d5e <prvInsertTimerInActiveList+0x72>
 8009d38:	687a      	ldr	r2, [r7, #4]
 8009d3a:	683b      	ldr	r3, [r7, #0]
 8009d3c:	429a      	cmp	r2, r3
 8009d3e:	d206      	bcs.n	8009d4e <prvInsertTimerInActiveList+0x62>
 8009d40:	68ba      	ldr	r2, [r7, #8]
 8009d42:	683b      	ldr	r3, [r7, #0]
 8009d44:	429a      	cmp	r2, r3
 8009d46:	d302      	bcc.n	8009d4e <prvInsertTimerInActiveList+0x62>
 8009d48:	2301      	movs	r3, #1
 8009d4a:	617b      	str	r3, [r7, #20]
 8009d4c:	e007      	b.n	8009d5e <prvInsertTimerInActiveList+0x72>
 8009d4e:	4b07      	ldr	r3, [pc, #28]	; (8009d6c <prvInsertTimerInActiveList+0x80>)
 8009d50:	681a      	ldr	r2, [r3, #0]
 8009d52:	68fb      	ldr	r3, [r7, #12]
 8009d54:	3304      	adds	r3, #4
 8009d56:	4619      	mov	r1, r3
 8009d58:	4610      	mov	r0, r2
 8009d5a:	f7fe fe91 	bl	8008a80 <vListInsert>
 8009d5e:	697b      	ldr	r3, [r7, #20]
 8009d60:	4618      	mov	r0, r3
 8009d62:	3718      	adds	r7, #24
 8009d64:	46bd      	mov	sp, r7
 8009d66:	bd80      	pop	{r7, pc}
 8009d68:	20000c44 	.word	0x20000c44
 8009d6c:	20000c40 	.word	0x20000c40

08009d70 <prvProcessReceivedCommands>:
 8009d70:	b580      	push	{r7, lr}
 8009d72:	b08c      	sub	sp, #48	; 0x30
 8009d74:	af02      	add	r7, sp, #8
 8009d76:	e07f      	b.n	8009e78 <prvProcessReceivedCommands+0x108>
 8009d78:	68bb      	ldr	r3, [r7, #8]
 8009d7a:	2b00      	cmp	r3, #0
 8009d7c:	db7c      	blt.n	8009e78 <prvProcessReceivedCommands+0x108>
 8009d7e:	693b      	ldr	r3, [r7, #16]
 8009d80:	627b      	str	r3, [r7, #36]	; 0x24
 8009d82:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8009d84:	695b      	ldr	r3, [r3, #20]
 8009d86:	2b00      	cmp	r3, #0
 8009d88:	d004      	beq.n	8009d94 <prvProcessReceivedCommands+0x24>
 8009d8a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8009d8c:	3304      	adds	r3, #4
 8009d8e:	4618      	mov	r0, r3
 8009d90:	f7fe feb0 	bl	8008af4 <uxListRemove>
 8009d94:	1d3b      	adds	r3, r7, #4
 8009d96:	4618      	mov	r0, r3
 8009d98:	f7ff ff88 	bl	8009cac <prvSampleTimeNow>
 8009d9c:	6238      	str	r0, [r7, #32]
 8009d9e:	68bb      	ldr	r3, [r7, #8]
 8009da0:	2b09      	cmp	r3, #9
 8009da2:	d868      	bhi.n	8009e76 <prvProcessReceivedCommands+0x106>
 8009da4:	a201      	add	r2, pc, #4	; (adr r2, 8009dac <prvProcessReceivedCommands+0x3c>)
 8009da6:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8009daa:	bf00      	nop
 8009dac:	08009dd5 	.word	0x08009dd5
 8009db0:	08009dd5 	.word	0x08009dd5
 8009db4:	08009dd5 	.word	0x08009dd5
 8009db8:	08009e79 	.word	0x08009e79
 8009dbc:	08009e2f 	.word	0x08009e2f
 8009dc0:	08009e65 	.word	0x08009e65
 8009dc4:	08009dd5 	.word	0x08009dd5
 8009dc8:	08009dd5 	.word	0x08009dd5
 8009dcc:	08009e79 	.word	0x08009e79
 8009dd0:	08009e2f 	.word	0x08009e2f
 8009dd4:	68fa      	ldr	r2, [r7, #12]
 8009dd6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8009dd8:	699b      	ldr	r3, [r3, #24]
 8009dda:	18d1      	adds	r1, r2, r3
 8009ddc:	68fb      	ldr	r3, [r7, #12]
 8009dde:	6a3a      	ldr	r2, [r7, #32]
 8009de0:	6a78      	ldr	r0, [r7, #36]	; 0x24
 8009de2:	f7ff ff83 	bl	8009cec <prvInsertTimerInActiveList>
 8009de6:	4603      	mov	r3, r0
 8009de8:	2b00      	cmp	r3, #0
 8009dea:	d045      	beq.n	8009e78 <prvProcessReceivedCommands+0x108>
 8009dec:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8009dee:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8009df0:	6a78      	ldr	r0, [r7, #36]	; 0x24
 8009df2:	4798      	blx	r3
 8009df4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8009df6:	69db      	ldr	r3, [r3, #28]
 8009df8:	2b01      	cmp	r3, #1
 8009dfa:	d13d      	bne.n	8009e78 <prvProcessReceivedCommands+0x108>
 8009dfc:	68fa      	ldr	r2, [r7, #12]
 8009dfe:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8009e00:	699b      	ldr	r3, [r3, #24]
 8009e02:	441a      	add	r2, r3
 8009e04:	2300      	movs	r3, #0
 8009e06:	9300      	str	r3, [sp, #0]
 8009e08:	2300      	movs	r3, #0
 8009e0a:	2100      	movs	r1, #0
 8009e0c:	6a78      	ldr	r0, [r7, #36]	; 0x24
 8009e0e:	f7ff fe3d 	bl	8009a8c <xTimerGenericCommand>
 8009e12:	61f8      	str	r0, [r7, #28]
 8009e14:	69fb      	ldr	r3, [r7, #28]
 8009e16:	2b00      	cmp	r3, #0
 8009e18:	d12e      	bne.n	8009e78 <prvProcessReceivedCommands+0x108>
 8009e1a:	f04f 0350 	mov.w	r3, #80	; 0x50
 8009e1e:	f383 8811 	msr	BASEPRI, r3
 8009e22:	f3bf 8f6f 	isb	sy
 8009e26:	f3bf 8f4f 	dsb	sy
 8009e2a:	617b      	str	r3, [r7, #20]
 8009e2c:	e7fe      	b.n	8009e2c <prvProcessReceivedCommands+0xbc>
 8009e2e:	68fa      	ldr	r2, [r7, #12]
 8009e30:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8009e32:	619a      	str	r2, [r3, #24]
 8009e34:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8009e36:	699b      	ldr	r3, [r3, #24]
 8009e38:	2b00      	cmp	r3, #0
 8009e3a:	d109      	bne.n	8009e50 <prvProcessReceivedCommands+0xe0>
 8009e3c:	f04f 0350 	mov.w	r3, #80	; 0x50
 8009e40:	f383 8811 	msr	BASEPRI, r3
 8009e44:	f3bf 8f6f 	isb	sy
 8009e48:	f3bf 8f4f 	dsb	sy
 8009e4c:	61bb      	str	r3, [r7, #24]
 8009e4e:	e7fe      	b.n	8009e4e <prvProcessReceivedCommands+0xde>
 8009e50:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8009e52:	699a      	ldr	r2, [r3, #24]
 8009e54:	6a3b      	ldr	r3, [r7, #32]
 8009e56:	18d1      	adds	r1, r2, r3
 8009e58:	6a3b      	ldr	r3, [r7, #32]
 8009e5a:	6a3a      	ldr	r2, [r7, #32]
 8009e5c:	6a78      	ldr	r0, [r7, #36]	; 0x24
 8009e5e:	f7ff ff45 	bl	8009cec <prvInsertTimerInActiveList>
 8009e62:	e009      	b.n	8009e78 <prvProcessReceivedCommands+0x108>
 8009e64:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8009e66:	f893 302c 	ldrb.w	r3, [r3, #44]	; 0x2c
 8009e6a:	2b00      	cmp	r3, #0
 8009e6c:	d104      	bne.n	8009e78 <prvProcessReceivedCommands+0x108>
 8009e6e:	6a78      	ldr	r0, [r7, #36]	; 0x24
 8009e70:	f000 fbbc 	bl	800a5ec <vPortFree>
 8009e74:	e000      	b.n	8009e78 <prvProcessReceivedCommands+0x108>
 8009e76:	bf00      	nop
 8009e78:	4b07      	ldr	r3, [pc, #28]	; (8009e98 <prvProcessReceivedCommands+0x128>)
 8009e7a:	681b      	ldr	r3, [r3, #0]
 8009e7c:	f107 0108 	add.w	r1, r7, #8
 8009e80:	2200      	movs	r2, #0
 8009e82:	4618      	mov	r0, r3
 8009e84:	f7fe fb62 	bl	800854c <xQueueReceive>
 8009e88:	4603      	mov	r3, r0
 8009e8a:	2b00      	cmp	r3, #0
 8009e8c:	f47f af74 	bne.w	8009d78 <prvProcessReceivedCommands+0x8>
 8009e90:	bf00      	nop
 8009e92:	3728      	adds	r7, #40	; 0x28
 8009e94:	46bd      	mov	sp, r7
 8009e96:	bd80      	pop	{r7, pc}
 8009e98:	20000c48 	.word	0x20000c48

08009e9c <prvSwitchTimerLists>:
 8009e9c:	b580      	push	{r7, lr}
 8009e9e:	b088      	sub	sp, #32
 8009ea0:	af02      	add	r7, sp, #8
 8009ea2:	e044      	b.n	8009f2e <prvSwitchTimerLists+0x92>
 8009ea4:	4b2b      	ldr	r3, [pc, #172]	; (8009f54 <prvSwitchTimerLists+0xb8>)
 8009ea6:	681b      	ldr	r3, [r3, #0]
 8009ea8:	68db      	ldr	r3, [r3, #12]
 8009eaa:	681b      	ldr	r3, [r3, #0]
 8009eac:	617b      	str	r3, [r7, #20]
 8009eae:	4b29      	ldr	r3, [pc, #164]	; (8009f54 <prvSwitchTimerLists+0xb8>)
 8009eb0:	681b      	ldr	r3, [r3, #0]
 8009eb2:	68db      	ldr	r3, [r3, #12]
 8009eb4:	68db      	ldr	r3, [r3, #12]
 8009eb6:	613b      	str	r3, [r7, #16]
 8009eb8:	693b      	ldr	r3, [r7, #16]
 8009eba:	3304      	adds	r3, #4
 8009ebc:	4618      	mov	r0, r3
 8009ebe:	f7fe fe19 	bl	8008af4 <uxListRemove>
 8009ec2:	693b      	ldr	r3, [r7, #16]
 8009ec4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8009ec6:	6938      	ldr	r0, [r7, #16]
 8009ec8:	4798      	blx	r3
 8009eca:	693b      	ldr	r3, [r7, #16]
 8009ecc:	69db      	ldr	r3, [r3, #28]
 8009ece:	2b01      	cmp	r3, #1
 8009ed0:	d12d      	bne.n	8009f2e <prvSwitchTimerLists+0x92>
 8009ed2:	693b      	ldr	r3, [r7, #16]
 8009ed4:	699a      	ldr	r2, [r3, #24]
 8009ed6:	697b      	ldr	r3, [r7, #20]
 8009ed8:	4413      	add	r3, r2
 8009eda:	60fb      	str	r3, [r7, #12]
 8009edc:	68fa      	ldr	r2, [r7, #12]
 8009ede:	697b      	ldr	r3, [r7, #20]
 8009ee0:	429a      	cmp	r2, r3
 8009ee2:	d90e      	bls.n	8009f02 <prvSwitchTimerLists+0x66>
 8009ee4:	693b      	ldr	r3, [r7, #16]
 8009ee6:	68fa      	ldr	r2, [r7, #12]
 8009ee8:	605a      	str	r2, [r3, #4]
 8009eea:	693b      	ldr	r3, [r7, #16]
 8009eec:	693a      	ldr	r2, [r7, #16]
 8009eee:	611a      	str	r2, [r3, #16]
 8009ef0:	4b18      	ldr	r3, [pc, #96]	; (8009f54 <prvSwitchTimerLists+0xb8>)
 8009ef2:	681a      	ldr	r2, [r3, #0]
 8009ef4:	693b      	ldr	r3, [r7, #16]
 8009ef6:	3304      	adds	r3, #4
 8009ef8:	4619      	mov	r1, r3
 8009efa:	4610      	mov	r0, r2
 8009efc:	f7fe fdc0 	bl	8008a80 <vListInsert>
 8009f00:	e015      	b.n	8009f2e <prvSwitchTimerLists+0x92>
 8009f02:	2300      	movs	r3, #0
 8009f04:	9300      	str	r3, [sp, #0]
 8009f06:	2300      	movs	r3, #0
 8009f08:	697a      	ldr	r2, [r7, #20]
 8009f0a:	2100      	movs	r1, #0
 8009f0c:	6938      	ldr	r0, [r7, #16]
 8009f0e:	f7ff fdbd 	bl	8009a8c <xTimerGenericCommand>
 8009f12:	60b8      	str	r0, [r7, #8]
 8009f14:	68bb      	ldr	r3, [r7, #8]
 8009f16:	2b00      	cmp	r3, #0
 8009f18:	d109      	bne.n	8009f2e <prvSwitchTimerLists+0x92>
 8009f1a:	f04f 0350 	mov.w	r3, #80	; 0x50
 8009f1e:	f383 8811 	msr	BASEPRI, r3
 8009f22:	f3bf 8f6f 	isb	sy
 8009f26:	f3bf 8f4f 	dsb	sy
 8009f2a:	603b      	str	r3, [r7, #0]
 8009f2c:	e7fe      	b.n	8009f2c <prvSwitchTimerLists+0x90>
 8009f2e:	4b09      	ldr	r3, [pc, #36]	; (8009f54 <prvSwitchTimerLists+0xb8>)
 8009f30:	681b      	ldr	r3, [r3, #0]
 8009f32:	681b      	ldr	r3, [r3, #0]
 8009f34:	2b00      	cmp	r3, #0
 8009f36:	d1b5      	bne.n	8009ea4 <prvSwitchTimerLists+0x8>
 8009f38:	4b06      	ldr	r3, [pc, #24]	; (8009f54 <prvSwitchTimerLists+0xb8>)
 8009f3a:	681b      	ldr	r3, [r3, #0]
 8009f3c:	607b      	str	r3, [r7, #4]
 8009f3e:	4b06      	ldr	r3, [pc, #24]	; (8009f58 <prvSwitchTimerLists+0xbc>)
 8009f40:	681b      	ldr	r3, [r3, #0]
 8009f42:	4a04      	ldr	r2, [pc, #16]	; (8009f54 <prvSwitchTimerLists+0xb8>)
 8009f44:	6013      	str	r3, [r2, #0]
 8009f46:	4a04      	ldr	r2, [pc, #16]	; (8009f58 <prvSwitchTimerLists+0xbc>)
 8009f48:	687b      	ldr	r3, [r7, #4]
 8009f4a:	6013      	str	r3, [r2, #0]
 8009f4c:	bf00      	nop
 8009f4e:	3718      	adds	r7, #24
 8009f50:	46bd      	mov	sp, r7
 8009f52:	bd80      	pop	{r7, pc}
 8009f54:	20000c40 	.word	0x20000c40
 8009f58:	20000c44 	.word	0x20000c44

08009f5c <prvCheckForValidListAndQueue>:
 8009f5c:	b580      	push	{r7, lr}
 8009f5e:	b082      	sub	sp, #8
 8009f60:	af02      	add	r7, sp, #8
 8009f62:	f000 f963 	bl	800a22c <vPortEnterCritical>
 8009f66:	4b15      	ldr	r3, [pc, #84]	; (8009fbc <prvCheckForValidListAndQueue+0x60>)
 8009f68:	681b      	ldr	r3, [r3, #0]
 8009f6a:	2b00      	cmp	r3, #0
 8009f6c:	d120      	bne.n	8009fb0 <prvCheckForValidListAndQueue+0x54>
 8009f6e:	4814      	ldr	r0, [pc, #80]	; (8009fc0 <prvCheckForValidListAndQueue+0x64>)
 8009f70:	f7fe fd34 	bl	80089dc <vListInitialise>
 8009f74:	4813      	ldr	r0, [pc, #76]	; (8009fc4 <prvCheckForValidListAndQueue+0x68>)
 8009f76:	f7fe fd31 	bl	80089dc <vListInitialise>
 8009f7a:	4b13      	ldr	r3, [pc, #76]	; (8009fc8 <prvCheckForValidListAndQueue+0x6c>)
 8009f7c:	4a10      	ldr	r2, [pc, #64]	; (8009fc0 <prvCheckForValidListAndQueue+0x64>)
 8009f7e:	601a      	str	r2, [r3, #0]
 8009f80:	4b12      	ldr	r3, [pc, #72]	; (8009fcc <prvCheckForValidListAndQueue+0x70>)
 8009f82:	4a10      	ldr	r2, [pc, #64]	; (8009fc4 <prvCheckForValidListAndQueue+0x68>)
 8009f84:	601a      	str	r2, [r3, #0]
 8009f86:	2300      	movs	r3, #0
 8009f88:	9300      	str	r3, [sp, #0]
 8009f8a:	4b11      	ldr	r3, [pc, #68]	; (8009fd0 <prvCheckForValidListAndQueue+0x74>)
 8009f8c:	4a11      	ldr	r2, [pc, #68]	; (8009fd4 <prvCheckForValidListAndQueue+0x78>)
 8009f8e:	210c      	movs	r1, #12
 8009f90:	200a      	movs	r0, #10
 8009f92:	f7fe f8b5 	bl	8008100 <xQueueGenericCreateStatic>
 8009f96:	4602      	mov	r2, r0
 8009f98:	4b08      	ldr	r3, [pc, #32]	; (8009fbc <prvCheckForValidListAndQueue+0x60>)
 8009f9a:	601a      	str	r2, [r3, #0]
 8009f9c:	4b07      	ldr	r3, [pc, #28]	; (8009fbc <prvCheckForValidListAndQueue+0x60>)
 8009f9e:	681b      	ldr	r3, [r3, #0]
 8009fa0:	2b00      	cmp	r3, #0
 8009fa2:	d005      	beq.n	8009fb0 <prvCheckForValidListAndQueue+0x54>
 8009fa4:	4b05      	ldr	r3, [pc, #20]	; (8009fbc <prvCheckForValidListAndQueue+0x60>)
 8009fa6:	681b      	ldr	r3, [r3, #0]
 8009fa8:	490b      	ldr	r1, [pc, #44]	; (8009fd8 <prvCheckForValidListAndQueue+0x7c>)
 8009faa:	4618      	mov	r0, r3
 8009fac:	f7fe fcba 	bl	8008924 <vQueueAddToRegistry>
 8009fb0:	f000 f96a 	bl	800a288 <vPortExitCritical>
 8009fb4:	bf00      	nop
 8009fb6:	46bd      	mov	sp, r7
 8009fb8:	bd80      	pop	{r7, pc}
 8009fba:	bf00      	nop
 8009fbc:	20000c48 	.word	0x20000c48
 8009fc0:	20000c18 	.word	0x20000c18
 8009fc4:	20000c2c 	.word	0x20000c2c
 8009fc8:	20000c40 	.word	0x20000c40
 8009fcc:	20000c44 	.word	0x20000c44
 8009fd0:	20000ccc 	.word	0x20000ccc
 8009fd4:	20000c54 	.word	0x20000c54
 8009fd8:	0800a85c 	.word	0x0800a85c

08009fdc <pxPortInitialiseStack>:
 8009fdc:	b480      	push	{r7}
 8009fde:	b085      	sub	sp, #20
 8009fe0:	af00      	add	r7, sp, #0
 8009fe2:	60f8      	str	r0, [r7, #12]
 8009fe4:	60b9      	str	r1, [r7, #8]
 8009fe6:	607a      	str	r2, [r7, #4]
 8009fe8:	68fb      	ldr	r3, [r7, #12]
 8009fea:	3b04      	subs	r3, #4
 8009fec:	60fb      	str	r3, [r7, #12]
 8009fee:	68fb      	ldr	r3, [r7, #12]
 8009ff0:	f04f 7280 	mov.w	r2, #16777216	; 0x1000000
 8009ff4:	601a      	str	r2, [r3, #0]
 8009ff6:	68fb      	ldr	r3, [r7, #12]
 8009ff8:	3b04      	subs	r3, #4
 8009ffa:	60fb      	str	r3, [r7, #12]
 8009ffc:	68bb      	ldr	r3, [r7, #8]
 8009ffe:	f023 0201 	bic.w	r2, r3, #1
 800a002:	68fb      	ldr	r3, [r7, #12]
 800a004:	601a      	str	r2, [r3, #0]
 800a006:	68fb      	ldr	r3, [r7, #12]
 800a008:	3b04      	subs	r3, #4
 800a00a:	60fb      	str	r3, [r7, #12]
 800a00c:	4a0c      	ldr	r2, [pc, #48]	; (800a040 <pxPortInitialiseStack+0x64>)
 800a00e:	68fb      	ldr	r3, [r7, #12]
 800a010:	601a      	str	r2, [r3, #0]
 800a012:	68fb      	ldr	r3, [r7, #12]
 800a014:	3b14      	subs	r3, #20
 800a016:	60fb      	str	r3, [r7, #12]
 800a018:	687a      	ldr	r2, [r7, #4]
 800a01a:	68fb      	ldr	r3, [r7, #12]
 800a01c:	601a      	str	r2, [r3, #0]
 800a01e:	68fb      	ldr	r3, [r7, #12]
 800a020:	3b04      	subs	r3, #4
 800a022:	60fb      	str	r3, [r7, #12]
 800a024:	68fb      	ldr	r3, [r7, #12]
 800a026:	f06f 0202 	mvn.w	r2, #2
 800a02a:	601a      	str	r2, [r3, #0]
 800a02c:	68fb      	ldr	r3, [r7, #12]
 800a02e:	3b20      	subs	r3, #32
 800a030:	60fb      	str	r3, [r7, #12]
 800a032:	68fb      	ldr	r3, [r7, #12]
 800a034:	4618      	mov	r0, r3
 800a036:	3714      	adds	r7, #20
 800a038:	46bd      	mov	sp, r7
 800a03a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800a03e:	4770      	bx	lr
 800a040:	0800a045 	.word	0x0800a045

0800a044 <prvTaskExitError>:
 800a044:	b480      	push	{r7}
 800a046:	b085      	sub	sp, #20
 800a048:	af00      	add	r7, sp, #0
 800a04a:	2300      	movs	r3, #0
 800a04c:	607b      	str	r3, [r7, #4]
 800a04e:	4b11      	ldr	r3, [pc, #68]	; (800a094 <prvTaskExitError+0x50>)
 800a050:	681b      	ldr	r3, [r3, #0]
 800a052:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 800a056:	d009      	beq.n	800a06c <prvTaskExitError+0x28>
 800a058:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a05c:	f383 8811 	msr	BASEPRI, r3
 800a060:	f3bf 8f6f 	isb	sy
 800a064:	f3bf 8f4f 	dsb	sy
 800a068:	60bb      	str	r3, [r7, #8]
 800a06a:	e7fe      	b.n	800a06a <prvTaskExitError+0x26>
 800a06c:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a070:	f383 8811 	msr	BASEPRI, r3
 800a074:	f3bf 8f6f 	isb	sy
 800a078:	f3bf 8f4f 	dsb	sy
 800a07c:	60fb      	str	r3, [r7, #12]
 800a07e:	bf00      	nop
 800a080:	687b      	ldr	r3, [r7, #4]
 800a082:	2b00      	cmp	r3, #0
 800a084:	d0fc      	beq.n	800a080 <prvTaskExitError+0x3c>
 800a086:	bf00      	nop
 800a088:	3714      	adds	r7, #20
 800a08a:	46bd      	mov	sp, r7
 800a08c:	f85d 7b04 	ldr.w	r7, [sp], #4
 800a090:	4770      	bx	lr
 800a092:	bf00      	nop
 800a094:	2000025c 	.word	0x2000025c
	...

0800a0a0 <SVC_Handler>:
 800a0a0:	4b07      	ldr	r3, [pc, #28]	; (800a0c0 <pxCurrentTCBConst2>)
 800a0a2:	6819      	ldr	r1, [r3, #0]
 800a0a4:	6808      	ldr	r0, [r1, #0]
 800a0a6:	e8b0 4ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800a0aa:	f380 8809 	msr	PSP, r0
 800a0ae:	f3bf 8f6f 	isb	sy
 800a0b2:	f04f 0000 	mov.w	r0, #0
 800a0b6:	f380 8811 	msr	BASEPRI, r0
 800a0ba:	4770      	bx	lr
 800a0bc:	f3af 8000 	nop.w

0800a0c0 <pxCurrentTCBConst2>:
 800a0c0:	20000b14 	.word	0x20000b14
 800a0c4:	bf00      	nop
 800a0c6:	bf00      	nop

0800a0c8 <prvPortStartFirstTask>:
 800a0c8:	4808      	ldr	r0, [pc, #32]	; (800a0ec <prvPortStartFirstTask+0x24>)
 800a0ca:	6800      	ldr	r0, [r0, #0]
 800a0cc:	6800      	ldr	r0, [r0, #0]
 800a0ce:	f380 8808 	msr	MSP, r0
 800a0d2:	f04f 0000 	mov.w	r0, #0
 800a0d6:	f380 8814 	msr	CONTROL, r0
 800a0da:	b662      	cpsie	i
 800a0dc:	b661      	cpsie	f
 800a0de:	f3bf 8f4f 	dsb	sy
 800a0e2:	f3bf 8f6f 	isb	sy
 800a0e6:	df00      	svc	0
 800a0e8:	bf00      	nop
 800a0ea:	bf00      	nop
 800a0ec:	e000ed08 	.word	0xe000ed08

0800a0f0 <xPortStartScheduler>:
 800a0f0:	b580      	push	{r7, lr}
 800a0f2:	b086      	sub	sp, #24
 800a0f4:	af00      	add	r7, sp, #0
 800a0f6:	4b44      	ldr	r3, [pc, #272]	; (800a208 <xPortStartScheduler+0x118>)
 800a0f8:	681b      	ldr	r3, [r3, #0]
 800a0fa:	4a44      	ldr	r2, [pc, #272]	; (800a20c <xPortStartScheduler+0x11c>)
 800a0fc:	4293      	cmp	r3, r2
 800a0fe:	d109      	bne.n	800a114 <xPortStartScheduler+0x24>
 800a100:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a104:	f383 8811 	msr	BASEPRI, r3
 800a108:	f3bf 8f6f 	isb	sy
 800a10c:	f3bf 8f4f 	dsb	sy
 800a110:	60bb      	str	r3, [r7, #8]
 800a112:	e7fe      	b.n	800a112 <xPortStartScheduler+0x22>
 800a114:	4b3c      	ldr	r3, [pc, #240]	; (800a208 <xPortStartScheduler+0x118>)
 800a116:	681b      	ldr	r3, [r3, #0]
 800a118:	4a3d      	ldr	r2, [pc, #244]	; (800a210 <xPortStartScheduler+0x120>)
 800a11a:	4293      	cmp	r3, r2
 800a11c:	d109      	bne.n	800a132 <xPortStartScheduler+0x42>
 800a11e:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a122:	f383 8811 	msr	BASEPRI, r3
 800a126:	f3bf 8f6f 	isb	sy
 800a12a:	f3bf 8f4f 	dsb	sy
 800a12e:	60fb      	str	r3, [r7, #12]
 800a130:	e7fe      	b.n	800a130 <xPortStartScheduler+0x40>
 800a132:	4b38      	ldr	r3, [pc, #224]	; (800a214 <xPortStartScheduler+0x124>)
 800a134:	617b      	str	r3, [r7, #20]
 800a136:	697b      	ldr	r3, [r7, #20]
 800a138:	781b      	ldrb	r3, [r3, #0]
 800a13a:	b2db      	uxtb	r3, r3
 800a13c:	607b      	str	r3, [r7, #4]
 800a13e:	697b      	ldr	r3, [r7, #20]
 800a140:	22ff      	movs	r2, #255	; 0xff
 800a142:	701a      	strb	r2, [r3, #0]
 800a144:	697b      	ldr	r3, [r7, #20]
 800a146:	781b      	ldrb	r3, [r3, #0]
 800a148:	b2db      	uxtb	r3, r3
 800a14a:	70fb      	strb	r3, [r7, #3]
 800a14c:	78fb      	ldrb	r3, [r7, #3]
 800a14e:	b2db      	uxtb	r3, r3
 800a150:	f003 0350 	and.w	r3, r3, #80	; 0x50
 800a154:	b2da      	uxtb	r2, r3
 800a156:	4b30      	ldr	r3, [pc, #192]	; (800a218 <xPortStartScheduler+0x128>)
 800a158:	701a      	strb	r2, [r3, #0]
 800a15a:	4b30      	ldr	r3, [pc, #192]	; (800a21c <xPortStartScheduler+0x12c>)
 800a15c:	2207      	movs	r2, #7
 800a15e:	601a      	str	r2, [r3, #0]
 800a160:	e009      	b.n	800a176 <xPortStartScheduler+0x86>
 800a162:	4b2e      	ldr	r3, [pc, #184]	; (800a21c <xPortStartScheduler+0x12c>)
 800a164:	681b      	ldr	r3, [r3, #0]
 800a166:	3b01      	subs	r3, #1
 800a168:	4a2c      	ldr	r2, [pc, #176]	; (800a21c <xPortStartScheduler+0x12c>)
 800a16a:	6013      	str	r3, [r2, #0]
 800a16c:	78fb      	ldrb	r3, [r7, #3]
 800a16e:	b2db      	uxtb	r3, r3
 800a170:	005b      	lsls	r3, r3, #1
 800a172:	b2db      	uxtb	r3, r3
 800a174:	70fb      	strb	r3, [r7, #3]
 800a176:	78fb      	ldrb	r3, [r7, #3]
 800a178:	b2db      	uxtb	r3, r3
 800a17a:	b25b      	sxtb	r3, r3
 800a17c:	2b00      	cmp	r3, #0
 800a17e:	dbf0      	blt.n	800a162 <xPortStartScheduler+0x72>
 800a180:	4b26      	ldr	r3, [pc, #152]	; (800a21c <xPortStartScheduler+0x12c>)
 800a182:	681b      	ldr	r3, [r3, #0]
 800a184:	f1c3 0307 	rsb	r3, r3, #7
 800a188:	2b04      	cmp	r3, #4
 800a18a:	d009      	beq.n	800a1a0 <xPortStartScheduler+0xb0>
 800a18c:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a190:	f383 8811 	msr	BASEPRI, r3
 800a194:	f3bf 8f6f 	isb	sy
 800a198:	f3bf 8f4f 	dsb	sy
 800a19c:	613b      	str	r3, [r7, #16]
 800a19e:	e7fe      	b.n	800a19e <xPortStartScheduler+0xae>
 800a1a0:	4b1e      	ldr	r3, [pc, #120]	; (800a21c <xPortStartScheduler+0x12c>)
 800a1a2:	681b      	ldr	r3, [r3, #0]
 800a1a4:	021b      	lsls	r3, r3, #8
 800a1a6:	4a1d      	ldr	r2, [pc, #116]	; (800a21c <xPortStartScheduler+0x12c>)
 800a1a8:	6013      	str	r3, [r2, #0]
 800a1aa:	4b1c      	ldr	r3, [pc, #112]	; (800a21c <xPortStartScheduler+0x12c>)
 800a1ac:	681b      	ldr	r3, [r3, #0]
 800a1ae:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 800a1b2:	4a1a      	ldr	r2, [pc, #104]	; (800a21c <xPortStartScheduler+0x12c>)
 800a1b4:	6013      	str	r3, [r2, #0]
 800a1b6:	687b      	ldr	r3, [r7, #4]
 800a1b8:	b2da      	uxtb	r2, r3
 800a1ba:	697b      	ldr	r3, [r7, #20]
 800a1bc:	701a      	strb	r2, [r3, #0]
 800a1be:	4a18      	ldr	r2, [pc, #96]	; (800a220 <xPortStartScheduler+0x130>)
 800a1c0:	4b17      	ldr	r3, [pc, #92]	; (800a220 <xPortStartScheduler+0x130>)
 800a1c2:	681b      	ldr	r3, [r3, #0]
 800a1c4:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 800a1c8:	6013      	str	r3, [r2, #0]
 800a1ca:	4a15      	ldr	r2, [pc, #84]	; (800a220 <xPortStartScheduler+0x130>)
 800a1cc:	4b14      	ldr	r3, [pc, #80]	; (800a220 <xPortStartScheduler+0x130>)
 800a1ce:	681b      	ldr	r3, [r3, #0]
 800a1d0:	f043 4370 	orr.w	r3, r3, #4026531840	; 0xf0000000
 800a1d4:	6013      	str	r3, [r2, #0]
 800a1d6:	f000 f8d7 	bl	800a388 <vPortSetupTimerInterrupt>
 800a1da:	4b12      	ldr	r3, [pc, #72]	; (800a224 <xPortStartScheduler+0x134>)
 800a1dc:	2200      	movs	r2, #0
 800a1de:	601a      	str	r2, [r3, #0]
 800a1e0:	f000 f8f6 	bl	800a3d0 <vPortEnableVFP>
 800a1e4:	4a10      	ldr	r2, [pc, #64]	; (800a228 <xPortStartScheduler+0x138>)
 800a1e6:	4b10      	ldr	r3, [pc, #64]	; (800a228 <xPortStartScheduler+0x138>)
 800a1e8:	681b      	ldr	r3, [r3, #0]
 800a1ea:	f043 4340 	orr.w	r3, r3, #3221225472	; 0xc0000000
 800a1ee:	6013      	str	r3, [r2, #0]
 800a1f0:	f7ff ff6a 	bl	800a0c8 <prvPortStartFirstTask>
 800a1f4:	f7ff f868 	bl	80092c8 <vTaskSwitchContext>
 800a1f8:	f7ff ff24 	bl	800a044 <prvTaskExitError>
 800a1fc:	2300      	movs	r3, #0
 800a1fe:	4618      	mov	r0, r3
 800a200:	3718      	adds	r7, #24
 800a202:	46bd      	mov	sp, r7
 800a204:	bd80      	pop	{r7, pc}
 800a206:	bf00      	nop
 800a208:	e000ed00 	.word	0xe000ed00
 800a20c:	410fc271 	.word	0x410fc271
 800a210:	410fc270 	.word	0x410fc270
 800a214:	e000e400 	.word	0xe000e400
 800a218:	20000d1c 	.word	0x20000d1c
 800a21c:	20000d20 	.word	0x20000d20
 800a220:	e000ed20 	.word	0xe000ed20
 800a224:	2000025c 	.word	0x2000025c
 800a228:	e000ef34 	.word	0xe000ef34

0800a22c <vPortEnterCritical>:
 800a22c:	b480      	push	{r7}
 800a22e:	b083      	sub	sp, #12
 800a230:	af00      	add	r7, sp, #0
 800a232:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a236:	f383 8811 	msr	BASEPRI, r3
 800a23a:	f3bf 8f6f 	isb	sy
 800a23e:	f3bf 8f4f 	dsb	sy
 800a242:	603b      	str	r3, [r7, #0]
 800a244:	4b0e      	ldr	r3, [pc, #56]	; (800a280 <vPortEnterCritical+0x54>)
 800a246:	681b      	ldr	r3, [r3, #0]
 800a248:	3301      	adds	r3, #1
 800a24a:	4a0d      	ldr	r2, [pc, #52]	; (800a280 <vPortEnterCritical+0x54>)
 800a24c:	6013      	str	r3, [r2, #0]
 800a24e:	4b0c      	ldr	r3, [pc, #48]	; (800a280 <vPortEnterCritical+0x54>)
 800a250:	681b      	ldr	r3, [r3, #0]
 800a252:	2b01      	cmp	r3, #1
 800a254:	d10e      	bne.n	800a274 <vPortEnterCritical+0x48>
 800a256:	4b0b      	ldr	r3, [pc, #44]	; (800a284 <vPortEnterCritical+0x58>)
 800a258:	681b      	ldr	r3, [r3, #0]
 800a25a:	b2db      	uxtb	r3, r3
 800a25c:	2b00      	cmp	r3, #0
 800a25e:	d009      	beq.n	800a274 <vPortEnterCritical+0x48>
 800a260:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a264:	f383 8811 	msr	BASEPRI, r3
 800a268:	f3bf 8f6f 	isb	sy
 800a26c:	f3bf 8f4f 	dsb	sy
 800a270:	607b      	str	r3, [r7, #4]
 800a272:	e7fe      	b.n	800a272 <vPortEnterCritical+0x46>
 800a274:	bf00      	nop
 800a276:	370c      	adds	r7, #12
 800a278:	46bd      	mov	sp, r7
 800a27a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800a27e:	4770      	bx	lr
 800a280:	2000025c 	.word	0x2000025c
 800a284:	e000ed04 	.word	0xe000ed04

0800a288 <vPortExitCritical>:
 800a288:	b480      	push	{r7}
 800a28a:	b083      	sub	sp, #12
 800a28c:	af00      	add	r7, sp, #0
 800a28e:	4b11      	ldr	r3, [pc, #68]	; (800a2d4 <vPortExitCritical+0x4c>)
 800a290:	681b      	ldr	r3, [r3, #0]
 800a292:	2b00      	cmp	r3, #0
 800a294:	d109      	bne.n	800a2aa <vPortExitCritical+0x22>
 800a296:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a29a:	f383 8811 	msr	BASEPRI, r3
 800a29e:	f3bf 8f6f 	isb	sy
 800a2a2:	f3bf 8f4f 	dsb	sy
 800a2a6:	603b      	str	r3, [r7, #0]
 800a2a8:	e7fe      	b.n	800a2a8 <vPortExitCritical+0x20>
 800a2aa:	4b0a      	ldr	r3, [pc, #40]	; (800a2d4 <vPortExitCritical+0x4c>)
 800a2ac:	681b      	ldr	r3, [r3, #0]
 800a2ae:	3b01      	subs	r3, #1
 800a2b0:	4a08      	ldr	r2, [pc, #32]	; (800a2d4 <vPortExitCritical+0x4c>)
 800a2b2:	6013      	str	r3, [r2, #0]
 800a2b4:	4b07      	ldr	r3, [pc, #28]	; (800a2d4 <vPortExitCritical+0x4c>)
 800a2b6:	681b      	ldr	r3, [r3, #0]
 800a2b8:	2b00      	cmp	r3, #0
 800a2ba:	d104      	bne.n	800a2c6 <vPortExitCritical+0x3e>
 800a2bc:	2300      	movs	r3, #0
 800a2be:	607b      	str	r3, [r7, #4]
 800a2c0:	687b      	ldr	r3, [r7, #4]
 800a2c2:	f383 8811 	msr	BASEPRI, r3
 800a2c6:	bf00      	nop
 800a2c8:	370c      	adds	r7, #12
 800a2ca:	46bd      	mov	sp, r7
 800a2cc:	f85d 7b04 	ldr.w	r7, [sp], #4
 800a2d0:	4770      	bx	lr
 800a2d2:	bf00      	nop
 800a2d4:	2000025c 	.word	0x2000025c
	...

0800a2e0 <PendSV_Handler>:
 800a2e0:	f3ef 8009 	mrs	r0, PSP
 800a2e4:	f3bf 8f6f 	isb	sy
 800a2e8:	4b15      	ldr	r3, [pc, #84]	; (800a340 <pxCurrentTCBConst>)
 800a2ea:	681a      	ldr	r2, [r3, #0]
 800a2ec:	f01e 0f10 	tst.w	lr, #16
 800a2f0:	bf08      	it	eq
 800a2f2:	ed20 8a10 	vstmdbeq	r0!, {s16-s31}
 800a2f6:	e920 4ff0 	stmdb	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800a2fa:	6010      	str	r0, [r2, #0]
 800a2fc:	e92d 0009 	stmdb	sp!, {r0, r3}
 800a300:	f04f 0050 	mov.w	r0, #80	; 0x50
 800a304:	f380 8811 	msr	BASEPRI, r0
 800a308:	f3bf 8f4f 	dsb	sy
 800a30c:	f3bf 8f6f 	isb	sy
 800a310:	f7fe ffda 	bl	80092c8 <vTaskSwitchContext>
 800a314:	f04f 0000 	mov.w	r0, #0
 800a318:	f380 8811 	msr	BASEPRI, r0
 800a31c:	bc09      	pop	{r0, r3}
 800a31e:	6819      	ldr	r1, [r3, #0]
 800a320:	6808      	ldr	r0, [r1, #0]
 800a322:	e8b0 4ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800a326:	f01e 0f10 	tst.w	lr, #16
 800a32a:	bf08      	it	eq
 800a32c:	ecb0 8a10 	vldmiaeq	r0!, {s16-s31}
 800a330:	f380 8809 	msr	PSP, r0
 800a334:	f3bf 8f6f 	isb	sy
 800a338:	4770      	bx	lr
 800a33a:	bf00      	nop
 800a33c:	f3af 8000 	nop.w

0800a340 <pxCurrentTCBConst>:
 800a340:	20000b14 	.word	0x20000b14
 800a344:	bf00      	nop
 800a346:	bf00      	nop

0800a348 <SysTick_Handler>:
 800a348:	b580      	push	{r7, lr}
 800a34a:	b082      	sub	sp, #8
 800a34c:	af00      	add	r7, sp, #0
 800a34e:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a352:	f383 8811 	msr	BASEPRI, r3
 800a356:	f3bf 8f6f 	isb	sy
 800a35a:	f3bf 8f4f 	dsb	sy
 800a35e:	603b      	str	r3, [r7, #0]
 800a360:	f7fe fef2 	bl	8009148 <xTaskIncrementTick>
 800a364:	4603      	mov	r3, r0
 800a366:	2b00      	cmp	r3, #0
 800a368:	d003      	beq.n	800a372 <SysTick_Handler+0x2a>
 800a36a:	4b06      	ldr	r3, [pc, #24]	; (800a384 <SysTick_Handler+0x3c>)
 800a36c:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 800a370:	601a      	str	r2, [r3, #0]
 800a372:	2300      	movs	r3, #0
 800a374:	607b      	str	r3, [r7, #4]
 800a376:	687b      	ldr	r3, [r7, #4]
 800a378:	f383 8811 	msr	BASEPRI, r3
 800a37c:	bf00      	nop
 800a37e:	3708      	adds	r7, #8
 800a380:	46bd      	mov	sp, r7
 800a382:	bd80      	pop	{r7, pc}
 800a384:	e000ed04 	.word	0xe000ed04

0800a388 <vPortSetupTimerInterrupt>:
 800a388:	b480      	push	{r7}
 800a38a:	af00      	add	r7, sp, #0
 800a38c:	4b0b      	ldr	r3, [pc, #44]	; (800a3bc <vPortSetupTimerInterrupt+0x34>)
 800a38e:	2200      	movs	r2, #0
 800a390:	601a      	str	r2, [r3, #0]
 800a392:	4b0b      	ldr	r3, [pc, #44]	; (800a3c0 <vPortSetupTimerInterrupt+0x38>)
 800a394:	2200      	movs	r2, #0
 800a396:	601a      	str	r2, [r3, #0]
 800a398:	4a0a      	ldr	r2, [pc, #40]	; (800a3c4 <vPortSetupTimerInterrupt+0x3c>)
 800a39a:	4b0b      	ldr	r3, [pc, #44]	; (800a3c8 <vPortSetupTimerInterrupt+0x40>)
 800a39c:	681b      	ldr	r3, [r3, #0]
 800a39e:	490b      	ldr	r1, [pc, #44]	; (800a3cc <vPortSetupTimerInterrupt+0x44>)
 800a3a0:	fba1 1303 	umull	r1, r3, r1, r3
 800a3a4:	099b      	lsrs	r3, r3, #6
 800a3a6:	3b01      	subs	r3, #1
 800a3a8:	6013      	str	r3, [r2, #0]
 800a3aa:	4b04      	ldr	r3, [pc, #16]	; (800a3bc <vPortSetupTimerInterrupt+0x34>)
 800a3ac:	2207      	movs	r2, #7
 800a3ae:	601a      	str	r2, [r3, #0]
 800a3b0:	bf00      	nop
 800a3b2:	46bd      	mov	sp, r7
 800a3b4:	f85d 7b04 	ldr.w	r7, [sp], #4
 800a3b8:	4770      	bx	lr
 800a3ba:	bf00      	nop
 800a3bc:	e000e010 	.word	0xe000e010
 800a3c0:	e000e018 	.word	0xe000e018
 800a3c4:	e000e014 	.word	0xe000e014
 800a3c8:	200000e0 	.word	0x200000e0
 800a3cc:	10624dd3 	.word	0x10624dd3

0800a3d0 <vPortEnableVFP>:
 800a3d0:	f8df 000c 	ldr.w	r0, [pc, #12]	; 800a3e0 <vPortEnableVFP+0x10>
 800a3d4:	6801      	ldr	r1, [r0, #0]
 800a3d6:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 800a3da:	6001      	str	r1, [r0, #0]
 800a3dc:	4770      	bx	lr
 800a3de:	bf00      	nop
 800a3e0:	e000ed88 	.word	0xe000ed88

0800a3e4 <vPortValidateInterruptPriority>:
 800a3e4:	b480      	push	{r7}
 800a3e6:	b085      	sub	sp, #20
 800a3e8:	af00      	add	r7, sp, #0
 800a3ea:	f3ef 8305 	mrs	r3, IPSR
 800a3ee:	60fb      	str	r3, [r7, #12]
 800a3f0:	68fb      	ldr	r3, [r7, #12]
 800a3f2:	2b0f      	cmp	r3, #15
 800a3f4:	d913      	bls.n	800a41e <vPortValidateInterruptPriority+0x3a>
 800a3f6:	4a16      	ldr	r2, [pc, #88]	; (800a450 <vPortValidateInterruptPriority+0x6c>)
 800a3f8:	68fb      	ldr	r3, [r7, #12]
 800a3fa:	4413      	add	r3, r2
 800a3fc:	781b      	ldrb	r3, [r3, #0]
 800a3fe:	72fb      	strb	r3, [r7, #11]
 800a400:	4b14      	ldr	r3, [pc, #80]	; (800a454 <vPortValidateInterruptPriority+0x70>)
 800a402:	781b      	ldrb	r3, [r3, #0]
 800a404:	7afa      	ldrb	r2, [r7, #11]
 800a406:	429a      	cmp	r2, r3
 800a408:	d209      	bcs.n	800a41e <vPortValidateInterruptPriority+0x3a>
 800a40a:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a40e:	f383 8811 	msr	BASEPRI, r3
 800a412:	f3bf 8f6f 	isb	sy
 800a416:	f3bf 8f4f 	dsb	sy
 800a41a:	603b      	str	r3, [r7, #0]
 800a41c:	e7fe      	b.n	800a41c <vPortValidateInterruptPriority+0x38>
 800a41e:	4b0e      	ldr	r3, [pc, #56]	; (800a458 <vPortValidateInterruptPriority+0x74>)
 800a420:	681b      	ldr	r3, [r3, #0]
 800a422:	f403 62e0 	and.w	r2, r3, #1792	; 0x700
 800a426:	4b0d      	ldr	r3, [pc, #52]	; (800a45c <vPortValidateInterruptPriority+0x78>)
 800a428:	681b      	ldr	r3, [r3, #0]
 800a42a:	429a      	cmp	r2, r3
 800a42c:	d909      	bls.n	800a442 <vPortValidateInterruptPriority+0x5e>
 800a42e:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a432:	f383 8811 	msr	BASEPRI, r3
 800a436:	f3bf 8f6f 	isb	sy
 800a43a:	f3bf 8f4f 	dsb	sy
 800a43e:	607b      	str	r3, [r7, #4]
 800a440:	e7fe      	b.n	800a440 <vPortValidateInterruptPriority+0x5c>
 800a442:	bf00      	nop
 800a444:	3714      	adds	r7, #20
 800a446:	46bd      	mov	sp, r7
 800a448:	f85d 7b04 	ldr.w	r7, [sp], #4
 800a44c:	4770      	bx	lr
 800a44e:	bf00      	nop
 800a450:	e000e3f0 	.word	0xe000e3f0
 800a454:	20000d1c 	.word	0x20000d1c
 800a458:	e000ed0c 	.word	0xe000ed0c
 800a45c:	20000d20 	.word	0x20000d20

0800a460 <pvPortMalloc>:
 800a460:	b580      	push	{r7, lr}
 800a462:	b08a      	sub	sp, #40	; 0x28
 800a464:	af00      	add	r7, sp, #0
 800a466:	6078      	str	r0, [r7, #4]
 800a468:	2300      	movs	r3, #0
 800a46a:	61fb      	str	r3, [r7, #28]
 800a46c:	f7fe fdb2 	bl	8008fd4 <vTaskSuspendAll>
 800a470:	4b59      	ldr	r3, [pc, #356]	; (800a5d8 <pvPortMalloc+0x178>)
 800a472:	681b      	ldr	r3, [r3, #0]
 800a474:	2b00      	cmp	r3, #0
 800a476:	d101      	bne.n	800a47c <pvPortMalloc+0x1c>
 800a478:	f000 f910 	bl	800a69c <prvHeapInit>
 800a47c:	4b57      	ldr	r3, [pc, #348]	; (800a5dc <pvPortMalloc+0x17c>)
 800a47e:	681a      	ldr	r2, [r3, #0]
 800a480:	687b      	ldr	r3, [r7, #4]
 800a482:	4013      	ands	r3, r2
 800a484:	2b00      	cmp	r3, #0
 800a486:	f040 808c 	bne.w	800a5a2 <pvPortMalloc+0x142>
 800a48a:	687b      	ldr	r3, [r7, #4]
 800a48c:	2b00      	cmp	r3, #0
 800a48e:	d01c      	beq.n	800a4ca <pvPortMalloc+0x6a>
 800a490:	2208      	movs	r2, #8
 800a492:	687b      	ldr	r3, [r7, #4]
 800a494:	4413      	add	r3, r2
 800a496:	607b      	str	r3, [r7, #4]
 800a498:	687b      	ldr	r3, [r7, #4]
 800a49a:	f003 0307 	and.w	r3, r3, #7
 800a49e:	2b00      	cmp	r3, #0
 800a4a0:	d013      	beq.n	800a4ca <pvPortMalloc+0x6a>
 800a4a2:	687b      	ldr	r3, [r7, #4]
 800a4a4:	f023 0307 	bic.w	r3, r3, #7
 800a4a8:	3308      	adds	r3, #8
 800a4aa:	607b      	str	r3, [r7, #4]
 800a4ac:	687b      	ldr	r3, [r7, #4]
 800a4ae:	f003 0307 	and.w	r3, r3, #7
 800a4b2:	2b00      	cmp	r3, #0
 800a4b4:	d009      	beq.n	800a4ca <pvPortMalloc+0x6a>
 800a4b6:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a4ba:	f383 8811 	msr	BASEPRI, r3
 800a4be:	f3bf 8f6f 	isb	sy
 800a4c2:	f3bf 8f4f 	dsb	sy
 800a4c6:	60fb      	str	r3, [r7, #12]
 800a4c8:	e7fe      	b.n	800a4c8 <pvPortMalloc+0x68>
 800a4ca:	687b      	ldr	r3, [r7, #4]
 800a4cc:	2b00      	cmp	r3, #0
 800a4ce:	d068      	beq.n	800a5a2 <pvPortMalloc+0x142>
 800a4d0:	4b43      	ldr	r3, [pc, #268]	; (800a5e0 <pvPortMalloc+0x180>)
 800a4d2:	681b      	ldr	r3, [r3, #0]
 800a4d4:	687a      	ldr	r2, [r7, #4]
 800a4d6:	429a      	cmp	r2, r3
 800a4d8:	d863      	bhi.n	800a5a2 <pvPortMalloc+0x142>
 800a4da:	4b42      	ldr	r3, [pc, #264]	; (800a5e4 <pvPortMalloc+0x184>)
 800a4dc:	623b      	str	r3, [r7, #32]
 800a4de:	4b41      	ldr	r3, [pc, #260]	; (800a5e4 <pvPortMalloc+0x184>)
 800a4e0:	681b      	ldr	r3, [r3, #0]
 800a4e2:	627b      	str	r3, [r7, #36]	; 0x24
 800a4e4:	e004      	b.n	800a4f0 <pvPortMalloc+0x90>
 800a4e6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800a4e8:	623b      	str	r3, [r7, #32]
 800a4ea:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800a4ec:	681b      	ldr	r3, [r3, #0]
 800a4ee:	627b      	str	r3, [r7, #36]	; 0x24
 800a4f0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800a4f2:	685a      	ldr	r2, [r3, #4]
 800a4f4:	687b      	ldr	r3, [r7, #4]
 800a4f6:	429a      	cmp	r2, r3
 800a4f8:	d203      	bcs.n	800a502 <pvPortMalloc+0xa2>
 800a4fa:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800a4fc:	681b      	ldr	r3, [r3, #0]
 800a4fe:	2b00      	cmp	r3, #0
 800a500:	d1f1      	bne.n	800a4e6 <pvPortMalloc+0x86>
 800a502:	4b35      	ldr	r3, [pc, #212]	; (800a5d8 <pvPortMalloc+0x178>)
 800a504:	681b      	ldr	r3, [r3, #0]
 800a506:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 800a508:	429a      	cmp	r2, r3
 800a50a:	d04a      	beq.n	800a5a2 <pvPortMalloc+0x142>
 800a50c:	6a3b      	ldr	r3, [r7, #32]
 800a50e:	681b      	ldr	r3, [r3, #0]
 800a510:	2208      	movs	r2, #8
 800a512:	4413      	add	r3, r2
 800a514:	61fb      	str	r3, [r7, #28]
 800a516:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800a518:	681a      	ldr	r2, [r3, #0]
 800a51a:	6a3b      	ldr	r3, [r7, #32]
 800a51c:	601a      	str	r2, [r3, #0]
 800a51e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800a520:	685a      	ldr	r2, [r3, #4]
 800a522:	687b      	ldr	r3, [r7, #4]
 800a524:	1ad2      	subs	r2, r2, r3
 800a526:	2308      	movs	r3, #8
 800a528:	005b      	lsls	r3, r3, #1
 800a52a:	429a      	cmp	r2, r3
 800a52c:	d91e      	bls.n	800a56c <pvPortMalloc+0x10c>
 800a52e:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 800a530:	687b      	ldr	r3, [r7, #4]
 800a532:	4413      	add	r3, r2
 800a534:	617b      	str	r3, [r7, #20]
 800a536:	697b      	ldr	r3, [r7, #20]
 800a538:	f003 0307 	and.w	r3, r3, #7
 800a53c:	2b00      	cmp	r3, #0
 800a53e:	d009      	beq.n	800a554 <pvPortMalloc+0xf4>
 800a540:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a544:	f383 8811 	msr	BASEPRI, r3
 800a548:	f3bf 8f6f 	isb	sy
 800a54c:	f3bf 8f4f 	dsb	sy
 800a550:	61bb      	str	r3, [r7, #24]
 800a552:	e7fe      	b.n	800a552 <pvPortMalloc+0xf2>
 800a554:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800a556:	685a      	ldr	r2, [r3, #4]
 800a558:	687b      	ldr	r3, [r7, #4]
 800a55a:	1ad2      	subs	r2, r2, r3
 800a55c:	697b      	ldr	r3, [r7, #20]
 800a55e:	605a      	str	r2, [r3, #4]
 800a560:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800a562:	687a      	ldr	r2, [r7, #4]
 800a564:	605a      	str	r2, [r3, #4]
 800a566:	6978      	ldr	r0, [r7, #20]
 800a568:	f000 f8fa 	bl	800a760 <prvInsertBlockIntoFreeList>
 800a56c:	4b1c      	ldr	r3, [pc, #112]	; (800a5e0 <pvPortMalloc+0x180>)
 800a56e:	681a      	ldr	r2, [r3, #0]
 800a570:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800a572:	685b      	ldr	r3, [r3, #4]
 800a574:	1ad3      	subs	r3, r2, r3
 800a576:	4a1a      	ldr	r2, [pc, #104]	; (800a5e0 <pvPortMalloc+0x180>)
 800a578:	6013      	str	r3, [r2, #0]
 800a57a:	4b19      	ldr	r3, [pc, #100]	; (800a5e0 <pvPortMalloc+0x180>)
 800a57c:	681a      	ldr	r2, [r3, #0]
 800a57e:	4b1a      	ldr	r3, [pc, #104]	; (800a5e8 <pvPortMalloc+0x188>)
 800a580:	681b      	ldr	r3, [r3, #0]
 800a582:	429a      	cmp	r2, r3
 800a584:	d203      	bcs.n	800a58e <pvPortMalloc+0x12e>
 800a586:	4b16      	ldr	r3, [pc, #88]	; (800a5e0 <pvPortMalloc+0x180>)
 800a588:	681b      	ldr	r3, [r3, #0]
 800a58a:	4a17      	ldr	r2, [pc, #92]	; (800a5e8 <pvPortMalloc+0x188>)
 800a58c:	6013      	str	r3, [r2, #0]
 800a58e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800a590:	685a      	ldr	r2, [r3, #4]
 800a592:	4b12      	ldr	r3, [pc, #72]	; (800a5dc <pvPortMalloc+0x17c>)
 800a594:	681b      	ldr	r3, [r3, #0]
 800a596:	431a      	orrs	r2, r3
 800a598:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800a59a:	605a      	str	r2, [r3, #4]
 800a59c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800a59e:	2200      	movs	r2, #0
 800a5a0:	601a      	str	r2, [r3, #0]
 800a5a2:	f7fe fd25 	bl	8008ff0 <xTaskResumeAll>
 800a5a6:	69fb      	ldr	r3, [r7, #28]
 800a5a8:	2b00      	cmp	r3, #0
 800a5aa:	d101      	bne.n	800a5b0 <pvPortMalloc+0x150>
 800a5ac:	f7fc fad8 	bl	8006b60 <vApplicationMallocFailedHook>
 800a5b0:	69fb      	ldr	r3, [r7, #28]
 800a5b2:	f003 0307 	and.w	r3, r3, #7
 800a5b6:	2b00      	cmp	r3, #0
 800a5b8:	d009      	beq.n	800a5ce <pvPortMalloc+0x16e>
 800a5ba:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a5be:	f383 8811 	msr	BASEPRI, r3
 800a5c2:	f3bf 8f6f 	isb	sy
 800a5c6:	f3bf 8f4f 	dsb	sy
 800a5ca:	613b      	str	r3, [r7, #16]
 800a5cc:	e7fe      	b.n	800a5cc <pvPortMalloc+0x16c>
 800a5ce:	69fb      	ldr	r3, [r7, #28]
 800a5d0:	4618      	mov	r0, r3
 800a5d2:	3728      	adds	r7, #40	; 0x28
 800a5d4:	46bd      	mov	sp, r7
 800a5d6:	bd80      	pop	{r7, pc}
 800a5d8:	2001392c 	.word	0x2001392c
 800a5dc:	20013938 	.word	0x20013938
 800a5e0:	20013930 	.word	0x20013930
 800a5e4:	20013924 	.word	0x20013924
 800a5e8:	20013934 	.word	0x20013934

0800a5ec <vPortFree>:
 800a5ec:	b580      	push	{r7, lr}
 800a5ee:	b086      	sub	sp, #24
 800a5f0:	af00      	add	r7, sp, #0
 800a5f2:	6078      	str	r0, [r7, #4]
 800a5f4:	687b      	ldr	r3, [r7, #4]
 800a5f6:	617b      	str	r3, [r7, #20]
 800a5f8:	687b      	ldr	r3, [r7, #4]
 800a5fa:	2b00      	cmp	r3, #0
 800a5fc:	d046      	beq.n	800a68c <vPortFree+0xa0>
 800a5fe:	2308      	movs	r3, #8
 800a600:	425b      	negs	r3, r3
 800a602:	697a      	ldr	r2, [r7, #20]
 800a604:	4413      	add	r3, r2
 800a606:	617b      	str	r3, [r7, #20]
 800a608:	697b      	ldr	r3, [r7, #20]
 800a60a:	613b      	str	r3, [r7, #16]
 800a60c:	693b      	ldr	r3, [r7, #16]
 800a60e:	685a      	ldr	r2, [r3, #4]
 800a610:	4b20      	ldr	r3, [pc, #128]	; (800a694 <vPortFree+0xa8>)
 800a612:	681b      	ldr	r3, [r3, #0]
 800a614:	4013      	ands	r3, r2
 800a616:	2b00      	cmp	r3, #0
 800a618:	d109      	bne.n	800a62e <vPortFree+0x42>
 800a61a:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a61e:	f383 8811 	msr	BASEPRI, r3
 800a622:	f3bf 8f6f 	isb	sy
 800a626:	f3bf 8f4f 	dsb	sy
 800a62a:	60bb      	str	r3, [r7, #8]
 800a62c:	e7fe      	b.n	800a62c <vPortFree+0x40>
 800a62e:	693b      	ldr	r3, [r7, #16]
 800a630:	681b      	ldr	r3, [r3, #0]
 800a632:	2b00      	cmp	r3, #0
 800a634:	d009      	beq.n	800a64a <vPortFree+0x5e>
 800a636:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a63a:	f383 8811 	msr	BASEPRI, r3
 800a63e:	f3bf 8f6f 	isb	sy
 800a642:	f3bf 8f4f 	dsb	sy
 800a646:	60fb      	str	r3, [r7, #12]
 800a648:	e7fe      	b.n	800a648 <vPortFree+0x5c>
 800a64a:	693b      	ldr	r3, [r7, #16]
 800a64c:	685a      	ldr	r2, [r3, #4]
 800a64e:	4b11      	ldr	r3, [pc, #68]	; (800a694 <vPortFree+0xa8>)
 800a650:	681b      	ldr	r3, [r3, #0]
 800a652:	4013      	ands	r3, r2
 800a654:	2b00      	cmp	r3, #0
 800a656:	d019      	beq.n	800a68c <vPortFree+0xa0>
 800a658:	693b      	ldr	r3, [r7, #16]
 800a65a:	681b      	ldr	r3, [r3, #0]
 800a65c:	2b00      	cmp	r3, #0
 800a65e:	d115      	bne.n	800a68c <vPortFree+0xa0>
 800a660:	693b      	ldr	r3, [r7, #16]
 800a662:	685a      	ldr	r2, [r3, #4]
 800a664:	4b0b      	ldr	r3, [pc, #44]	; (800a694 <vPortFree+0xa8>)
 800a666:	681b      	ldr	r3, [r3, #0]
 800a668:	43db      	mvns	r3, r3
 800a66a:	401a      	ands	r2, r3
 800a66c:	693b      	ldr	r3, [r7, #16]
 800a66e:	605a      	str	r2, [r3, #4]
 800a670:	f7fe fcb0 	bl	8008fd4 <vTaskSuspendAll>
 800a674:	693b      	ldr	r3, [r7, #16]
 800a676:	685a      	ldr	r2, [r3, #4]
 800a678:	4b07      	ldr	r3, [pc, #28]	; (800a698 <vPortFree+0xac>)
 800a67a:	681b      	ldr	r3, [r3, #0]
 800a67c:	4413      	add	r3, r2
 800a67e:	4a06      	ldr	r2, [pc, #24]	; (800a698 <vPortFree+0xac>)
 800a680:	6013      	str	r3, [r2, #0]
 800a682:	6938      	ldr	r0, [r7, #16]
 800a684:	f000 f86c 	bl	800a760 <prvInsertBlockIntoFreeList>
 800a688:	f7fe fcb2 	bl	8008ff0 <xTaskResumeAll>
 800a68c:	bf00      	nop
 800a68e:	3718      	adds	r7, #24
 800a690:	46bd      	mov	sp, r7
 800a692:	bd80      	pop	{r7, pc}
 800a694:	20013938 	.word	0x20013938
 800a698:	20013930 	.word	0x20013930

0800a69c <prvHeapInit>:
 800a69c:	b480      	push	{r7}
 800a69e:	b085      	sub	sp, #20
 800a6a0:	af00      	add	r7, sp, #0
 800a6a2:	f44f 3396 	mov.w	r3, #76800	; 0x12c00
 800a6a6:	60bb      	str	r3, [r7, #8]
 800a6a8:	4b27      	ldr	r3, [pc, #156]	; (800a748 <prvHeapInit+0xac>)
 800a6aa:	60fb      	str	r3, [r7, #12]
 800a6ac:	68fb      	ldr	r3, [r7, #12]
 800a6ae:	f003 0307 	and.w	r3, r3, #7
 800a6b2:	2b00      	cmp	r3, #0
 800a6b4:	d00c      	beq.n	800a6d0 <prvHeapInit+0x34>
 800a6b6:	68fb      	ldr	r3, [r7, #12]
 800a6b8:	3307      	adds	r3, #7
 800a6ba:	60fb      	str	r3, [r7, #12]
 800a6bc:	68fb      	ldr	r3, [r7, #12]
 800a6be:	f023 0307 	bic.w	r3, r3, #7
 800a6c2:	60fb      	str	r3, [r7, #12]
 800a6c4:	68ba      	ldr	r2, [r7, #8]
 800a6c6:	68fb      	ldr	r3, [r7, #12]
 800a6c8:	1ad3      	subs	r3, r2, r3
 800a6ca:	4a1f      	ldr	r2, [pc, #124]	; (800a748 <prvHeapInit+0xac>)
 800a6cc:	4413      	add	r3, r2
 800a6ce:	60bb      	str	r3, [r7, #8]
 800a6d0:	68fb      	ldr	r3, [r7, #12]
 800a6d2:	607b      	str	r3, [r7, #4]
 800a6d4:	4a1d      	ldr	r2, [pc, #116]	; (800a74c <prvHeapInit+0xb0>)
 800a6d6:	687b      	ldr	r3, [r7, #4]
 800a6d8:	6013      	str	r3, [r2, #0]
 800a6da:	4b1c      	ldr	r3, [pc, #112]	; (800a74c <prvHeapInit+0xb0>)
 800a6dc:	2200      	movs	r2, #0
 800a6de:	605a      	str	r2, [r3, #4]
 800a6e0:	687a      	ldr	r2, [r7, #4]
 800a6e2:	68bb      	ldr	r3, [r7, #8]
 800a6e4:	4413      	add	r3, r2
 800a6e6:	60fb      	str	r3, [r7, #12]
 800a6e8:	2208      	movs	r2, #8
 800a6ea:	68fb      	ldr	r3, [r7, #12]
 800a6ec:	1a9b      	subs	r3, r3, r2
 800a6ee:	60fb      	str	r3, [r7, #12]
 800a6f0:	68fb      	ldr	r3, [r7, #12]
 800a6f2:	f023 0307 	bic.w	r3, r3, #7
 800a6f6:	60fb      	str	r3, [r7, #12]
 800a6f8:	68fb      	ldr	r3, [r7, #12]
 800a6fa:	4a15      	ldr	r2, [pc, #84]	; (800a750 <prvHeapInit+0xb4>)
 800a6fc:	6013      	str	r3, [r2, #0]
 800a6fe:	4b14      	ldr	r3, [pc, #80]	; (800a750 <prvHeapInit+0xb4>)
 800a700:	681b      	ldr	r3, [r3, #0]
 800a702:	2200      	movs	r2, #0
 800a704:	605a      	str	r2, [r3, #4]
 800a706:	4b12      	ldr	r3, [pc, #72]	; (800a750 <prvHeapInit+0xb4>)
 800a708:	681b      	ldr	r3, [r3, #0]
 800a70a:	2200      	movs	r2, #0
 800a70c:	601a      	str	r2, [r3, #0]
 800a70e:	687b      	ldr	r3, [r7, #4]
 800a710:	603b      	str	r3, [r7, #0]
 800a712:	683b      	ldr	r3, [r7, #0]
 800a714:	68fa      	ldr	r2, [r7, #12]
 800a716:	1ad2      	subs	r2, r2, r3
 800a718:	683b      	ldr	r3, [r7, #0]
 800a71a:	605a      	str	r2, [r3, #4]
 800a71c:	4b0c      	ldr	r3, [pc, #48]	; (800a750 <prvHeapInit+0xb4>)
 800a71e:	681a      	ldr	r2, [r3, #0]
 800a720:	683b      	ldr	r3, [r7, #0]
 800a722:	601a      	str	r2, [r3, #0]
 800a724:	683b      	ldr	r3, [r7, #0]
 800a726:	685b      	ldr	r3, [r3, #4]
 800a728:	4a0a      	ldr	r2, [pc, #40]	; (800a754 <prvHeapInit+0xb8>)
 800a72a:	6013      	str	r3, [r2, #0]
 800a72c:	683b      	ldr	r3, [r7, #0]
 800a72e:	685b      	ldr	r3, [r3, #4]
 800a730:	4a09      	ldr	r2, [pc, #36]	; (800a758 <prvHeapInit+0xbc>)
 800a732:	6013      	str	r3, [r2, #0]
 800a734:	4b09      	ldr	r3, [pc, #36]	; (800a75c <prvHeapInit+0xc0>)
 800a736:	f04f 4200 	mov.w	r2, #2147483648	; 0x80000000
 800a73a:	601a      	str	r2, [r3, #0]
 800a73c:	bf00      	nop
 800a73e:	3714      	adds	r7, #20
 800a740:	46bd      	mov	sp, r7
 800a742:	f85d 7b04 	ldr.w	r7, [sp], #4
 800a746:	4770      	bx	lr
 800a748:	20000d24 	.word	0x20000d24
 800a74c:	20013924 	.word	0x20013924
 800a750:	2001392c 	.word	0x2001392c
 800a754:	20013934 	.word	0x20013934
 800a758:	20013930 	.word	0x20013930
 800a75c:	20013938 	.word	0x20013938

0800a760 <prvInsertBlockIntoFreeList>:
 800a760:	b480      	push	{r7}
 800a762:	b085      	sub	sp, #20
 800a764:	af00      	add	r7, sp, #0
 800a766:	6078      	str	r0, [r7, #4]
 800a768:	4b28      	ldr	r3, [pc, #160]	; (800a80c <prvInsertBlockIntoFreeList+0xac>)
 800a76a:	60fb      	str	r3, [r7, #12]
 800a76c:	e002      	b.n	800a774 <prvInsertBlockIntoFreeList+0x14>
 800a76e:	68fb      	ldr	r3, [r7, #12]
 800a770:	681b      	ldr	r3, [r3, #0]
 800a772:	60fb      	str	r3, [r7, #12]
 800a774:	68fb      	ldr	r3, [r7, #12]
 800a776:	681a      	ldr	r2, [r3, #0]
 800a778:	687b      	ldr	r3, [r7, #4]
 800a77a:	429a      	cmp	r2, r3
 800a77c:	d3f7      	bcc.n	800a76e <prvInsertBlockIntoFreeList+0xe>
 800a77e:	68fb      	ldr	r3, [r7, #12]
 800a780:	60bb      	str	r3, [r7, #8]
 800a782:	68fb      	ldr	r3, [r7, #12]
 800a784:	685b      	ldr	r3, [r3, #4]
 800a786:	68ba      	ldr	r2, [r7, #8]
 800a788:	441a      	add	r2, r3
 800a78a:	687b      	ldr	r3, [r7, #4]
 800a78c:	429a      	cmp	r2, r3
 800a78e:	d108      	bne.n	800a7a2 <prvInsertBlockIntoFreeList+0x42>
 800a790:	68fb      	ldr	r3, [r7, #12]
 800a792:	685a      	ldr	r2, [r3, #4]
 800a794:	687b      	ldr	r3, [r7, #4]
 800a796:	685b      	ldr	r3, [r3, #4]
 800a798:	441a      	add	r2, r3
 800a79a:	68fb      	ldr	r3, [r7, #12]
 800a79c:	605a      	str	r2, [r3, #4]
 800a79e:	68fb      	ldr	r3, [r7, #12]
 800a7a0:	607b      	str	r3, [r7, #4]
 800a7a2:	687b      	ldr	r3, [r7, #4]
 800a7a4:	60bb      	str	r3, [r7, #8]
 800a7a6:	687b      	ldr	r3, [r7, #4]
 800a7a8:	685b      	ldr	r3, [r3, #4]
 800a7aa:	68ba      	ldr	r2, [r7, #8]
 800a7ac:	441a      	add	r2, r3
 800a7ae:	68fb      	ldr	r3, [r7, #12]
 800a7b0:	681b      	ldr	r3, [r3, #0]
 800a7b2:	429a      	cmp	r2, r3
 800a7b4:	d118      	bne.n	800a7e8 <prvInsertBlockIntoFreeList+0x88>
 800a7b6:	68fb      	ldr	r3, [r7, #12]
 800a7b8:	681a      	ldr	r2, [r3, #0]
 800a7ba:	4b15      	ldr	r3, [pc, #84]	; (800a810 <prvInsertBlockIntoFreeList+0xb0>)
 800a7bc:	681b      	ldr	r3, [r3, #0]
 800a7be:	429a      	cmp	r2, r3
 800a7c0:	d00d      	beq.n	800a7de <prvInsertBlockIntoFreeList+0x7e>
 800a7c2:	687b      	ldr	r3, [r7, #4]
 800a7c4:	685a      	ldr	r2, [r3, #4]
 800a7c6:	68fb      	ldr	r3, [r7, #12]
 800a7c8:	681b      	ldr	r3, [r3, #0]
 800a7ca:	685b      	ldr	r3, [r3, #4]
 800a7cc:	441a      	add	r2, r3
 800a7ce:	687b      	ldr	r3, [r7, #4]
 800a7d0:	605a      	str	r2, [r3, #4]
 800a7d2:	68fb      	ldr	r3, [r7, #12]
 800a7d4:	681b      	ldr	r3, [r3, #0]
 800a7d6:	681a      	ldr	r2, [r3, #0]
 800a7d8:	687b      	ldr	r3, [r7, #4]
 800a7da:	601a      	str	r2, [r3, #0]
 800a7dc:	e008      	b.n	800a7f0 <prvInsertBlockIntoFreeList+0x90>
 800a7de:	4b0c      	ldr	r3, [pc, #48]	; (800a810 <prvInsertBlockIntoFreeList+0xb0>)
 800a7e0:	681a      	ldr	r2, [r3, #0]
 800a7e2:	687b      	ldr	r3, [r7, #4]
 800a7e4:	601a      	str	r2, [r3, #0]
 800a7e6:	e003      	b.n	800a7f0 <prvInsertBlockIntoFreeList+0x90>
 800a7e8:	68fb      	ldr	r3, [r7, #12]
 800a7ea:	681a      	ldr	r2, [r3, #0]
 800a7ec:	687b      	ldr	r3, [r7, #4]
 800a7ee:	601a      	str	r2, [r3, #0]
 800a7f0:	68fa      	ldr	r2, [r7, #12]
 800a7f2:	687b      	ldr	r3, [r7, #4]
 800a7f4:	429a      	cmp	r2, r3
 800a7f6:	d002      	beq.n	800a7fe <prvInsertBlockIntoFreeList+0x9e>
 800a7f8:	68fb      	ldr	r3, [r7, #12]
 800a7fa:	687a      	ldr	r2, [r7, #4]
 800a7fc:	601a      	str	r2, [r3, #0]
 800a7fe:	bf00      	nop
 800a800:	3714      	adds	r7, #20
 800a802:	46bd      	mov	sp, r7
 800a804:	f85d 7b04 	ldr.w	r7, [sp], #4
 800a808:	4770      	bx	lr
 800a80a:	bf00      	nop
 800a80c:	20013924 	.word	0x20013924
 800a810:	2001392c 	.word	0x2001392c

0800a814 <_init>:
 800a814:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800a816:	bf00      	nop
 800a818:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800a81a:	bc08      	pop	{r3}
 800a81c:	469e      	mov	lr, r3
 800a81e:	4770      	bx	lr

0800a820 <_fini>:
 800a820:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800a822:	bf00      	nop
 800a824:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800a826:	bc08      	pop	{r3}
 800a828:	469e      	mov	lr, r3
 800a82a:	4770      	bx	lr
