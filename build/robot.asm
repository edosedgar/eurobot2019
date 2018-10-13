
build/robot.elf:     file format elf32-littlearm

Sections:
Idx Name          Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector   00000188  08000000  08000000  00008000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text         00009354  08000190  08000190  00008190  2**4  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata       0000059c  080094e8  080094e8  000114e8  2**3  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array   00000004  08009a84  08009a84  00011a84  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array   00000004  08009a88  08009a88  00011a88  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data         0000021c  20000000  08009a8c  00018000  2**2  CONTENTS, ALLOC, LOAD, DATA
  6 .bss          00015550  20000220  20000220  00018220  2**3  ALLOC
  7 ._user_heap_stack 00000600  20015770  20015770  00018220  2**0  ALLOC
  8 .ARM.attributes 00000030  00000000  00000000  0001821c  2**0  CONTENTS, READONLY
  9 .debug_info   000125a6  00000000  00000000  0001824c  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev 00002e50  00000000  00000000  0002a7f2  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc    00004ded  00000000  00000000  0002d642  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges 00000dd0  00000000  00000000  0003242f  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges 00000c38  00000000  00000000  000331ff  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line   00005ec1  00000000  00000000  00033e37  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str    00005dbc  00000000  00000000  00039cf8  2**0  CONTENTS, READONLY, DEBUGGING
 16 .comment      00000070  00000000  00000000  0003fab4  2**0  CONTENTS, READONLY
 17 .debug_frame  000032ec  00000000  00000000  0003fb24  2**2  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

08000190 <__do_global_dtors_aux>:
 8000190:	b510      	push	{r4, lr}
 8000192:	4c05      	ldr	r4, [pc, #20]	; (80001a8 <__do_global_dtors_aux+0x18>)
 8000194:	7823      	ldrb	r3, [r4, #0]
 8000196:	b933      	cbnz	r3, 80001a6 <__do_global_dtors_aux+0x16>
 8000198:	4b04      	ldr	r3, [pc, #16]	; (80001ac <__do_global_dtors_aux+0x1c>)
 800019a:	b113      	cbz	r3, 80001a2 <__do_global_dtors_aux+0x12>
 800019c:	4804      	ldr	r0, [pc, #16]	; (80001b0 <__do_global_dtors_aux+0x20>)
 800019e:	f3af 8000 	nop.w
 80001a2:	2301      	movs	r3, #1
 80001a4:	7023      	strb	r3, [r4, #0]
 80001a6:	bd10      	pop	{r4, pc}
 80001a8:	20000220 	.word	0x20000220
 80001ac:	00000000 	.word	0x00000000
 80001b0:	080094cc 	.word	0x080094cc

080001b4 <frame_dummy>:
 80001b4:	b508      	push	{r3, lr}
 80001b6:	4b06      	ldr	r3, [pc, #24]	; (80001d0 <frame_dummy+0x1c>)
 80001b8:	b11b      	cbz	r3, 80001c2 <frame_dummy+0xe>
 80001ba:	4806      	ldr	r0, [pc, #24]	; (80001d4 <frame_dummy+0x20>)
 80001bc:	4906      	ldr	r1, [pc, #24]	; (80001d8 <frame_dummy+0x24>)
 80001be:	f3af 8000 	nop.w
 80001c2:	4806      	ldr	r0, [pc, #24]	; (80001dc <frame_dummy+0x28>)
 80001c4:	6803      	ldr	r3, [r0, #0]
 80001c6:	b113      	cbz	r3, 80001ce <frame_dummy+0x1a>
 80001c8:	4b05      	ldr	r3, [pc, #20]	; (80001e0 <frame_dummy+0x2c>)
 80001ca:	b103      	cbz	r3, 80001ce <frame_dummy+0x1a>
 80001cc:	4798      	blx	r3
 80001ce:	bd08      	pop	{r3, pc}
 80001d0:	00000000 	.word	0x00000000
 80001d4:	080094cc 	.word	0x080094cc
 80001d8:	20000224 	.word	0x20000224
 80001dc:	2000021c 	.word	0x2000021c
 80001e0:	00000000 	.word	0x00000000

080001e4 <__aeabi_drsub>:
 80001e4:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
 80001e8:	e002      	b.n	80001f0 <__adddf3>
 80001ea:	bf00      	nop

080001ec <__aeabi_dsub>:
 80001ec:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

080001f0 <__adddf3>:
 80001f0:	b530      	push	{r4, r5, lr}
 80001f2:	ea4f 0441 	mov.w	r4, r1, lsl #1
 80001f6:	ea4f 0543 	mov.w	r5, r3, lsl #1
 80001fa:	ea94 0f05 	teq	r4, r5
 80001fe:	bf08      	it	eq
 8000200:	ea90 0f02 	teqeq	r0, r2
 8000204:	bf1f      	itttt	ne
 8000206:	ea54 0c00 	orrsne.w	ip, r4, r0
 800020a:	ea55 0c02 	orrsne.w	ip, r5, r2
 800020e:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
 8000212:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 8000216:	f000 80e2 	beq.w	80003de <__adddf3+0x1ee>
 800021a:	ea4f 5454 	mov.w	r4, r4, lsr #21
 800021e:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
 8000222:	bfb8      	it	lt
 8000224:	426d      	neglt	r5, r5
 8000226:	dd0c      	ble.n	8000242 <__adddf3+0x52>
 8000228:	442c      	add	r4, r5
 800022a:	ea80 0202 	eor.w	r2, r0, r2
 800022e:	ea81 0303 	eor.w	r3, r1, r3
 8000232:	ea82 0000 	eor.w	r0, r2, r0
 8000236:	ea83 0101 	eor.w	r1, r3, r1
 800023a:	ea80 0202 	eor.w	r2, r0, r2
 800023e:	ea81 0303 	eor.w	r3, r1, r3
 8000242:	2d36      	cmp	r5, #54	; 0x36
 8000244:	bf88      	it	hi
 8000246:	bd30      	pophi	{r4, r5, pc}
 8000248:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 800024c:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8000250:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
 8000254:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
 8000258:	d002      	beq.n	8000260 <__adddf3+0x70>
 800025a:	4240      	negs	r0, r0
 800025c:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8000260:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
 8000264:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8000268:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
 800026c:	d002      	beq.n	8000274 <__adddf3+0x84>
 800026e:	4252      	negs	r2, r2
 8000270:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 8000274:	ea94 0f05 	teq	r4, r5
 8000278:	f000 80a7 	beq.w	80003ca <__adddf3+0x1da>
 800027c:	f1a4 0401 	sub.w	r4, r4, #1
 8000280:	f1d5 0e20 	rsbs	lr, r5, #32
 8000284:	db0d      	blt.n	80002a2 <__adddf3+0xb2>
 8000286:	fa02 fc0e 	lsl.w	ip, r2, lr
 800028a:	fa22 f205 	lsr.w	r2, r2, r5
 800028e:	1880      	adds	r0, r0, r2
 8000290:	f141 0100 	adc.w	r1, r1, #0
 8000294:	fa03 f20e 	lsl.w	r2, r3, lr
 8000298:	1880      	adds	r0, r0, r2
 800029a:	fa43 f305 	asr.w	r3, r3, r5
 800029e:	4159      	adcs	r1, r3
 80002a0:	e00e      	b.n	80002c0 <__adddf3+0xd0>
 80002a2:	f1a5 0520 	sub.w	r5, r5, #32
 80002a6:	f10e 0e20 	add.w	lr, lr, #32
 80002aa:	2a01      	cmp	r2, #1
 80002ac:	fa03 fc0e 	lsl.w	ip, r3, lr
 80002b0:	bf28      	it	cs
 80002b2:	f04c 0c02 	orrcs.w	ip, ip, #2
 80002b6:	fa43 f305 	asr.w	r3, r3, r5
 80002ba:	18c0      	adds	r0, r0, r3
 80002bc:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
 80002c0:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 80002c4:	d507      	bpl.n	80002d6 <__adddf3+0xe6>
 80002c6:	f04f 0e00 	mov.w	lr, #0
 80002ca:	f1dc 0c00 	rsbs	ip, ip, #0
 80002ce:	eb7e 0000 	sbcs.w	r0, lr, r0
 80002d2:	eb6e 0101 	sbc.w	r1, lr, r1
 80002d6:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80002da:	d31b      	bcc.n	8000314 <__adddf3+0x124>
 80002dc:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 80002e0:	d30c      	bcc.n	80002fc <__adddf3+0x10c>
 80002e2:	0849      	lsrs	r1, r1, #1
 80002e4:	ea5f 0030 	movs.w	r0, r0, rrx
 80002e8:	ea4f 0c3c 	mov.w	ip, ip, rrx
 80002ec:	f104 0401 	add.w	r4, r4, #1
 80002f0:	ea4f 5244 	mov.w	r2, r4, lsl #21
 80002f4:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
 80002f8:	f080 809a 	bcs.w	8000430 <__adddf3+0x240>
 80002fc:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
 8000300:	bf08      	it	eq
 8000302:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 8000306:	f150 0000 	adcs.w	r0, r0, #0
 800030a:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 800030e:	ea41 0105 	orr.w	r1, r1, r5
 8000312:	bd30      	pop	{r4, r5, pc}
 8000314:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
 8000318:	4140      	adcs	r0, r0
 800031a:	eb41 0101 	adc.w	r1, r1, r1
 800031e:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000322:	f1a4 0401 	sub.w	r4, r4, #1
 8000326:	d1e9      	bne.n	80002fc <__adddf3+0x10c>
 8000328:	f091 0f00 	teq	r1, #0
 800032c:	bf04      	itt	eq
 800032e:	4601      	moveq	r1, r0
 8000330:	2000      	moveq	r0, #0
 8000332:	fab1 f381 	clz	r3, r1
 8000336:	bf08      	it	eq
 8000338:	3320      	addeq	r3, #32
 800033a:	f1a3 030b 	sub.w	r3, r3, #11
 800033e:	f1b3 0220 	subs.w	r2, r3, #32
 8000342:	da0c      	bge.n	800035e <__adddf3+0x16e>
 8000344:	320c      	adds	r2, #12
 8000346:	dd08      	ble.n	800035a <__adddf3+0x16a>
 8000348:	f102 0c14 	add.w	ip, r2, #20
 800034c:	f1c2 020c 	rsb	r2, r2, #12
 8000350:	fa01 f00c 	lsl.w	r0, r1, ip
 8000354:	fa21 f102 	lsr.w	r1, r1, r2
 8000358:	e00c      	b.n	8000374 <__adddf3+0x184>
 800035a:	f102 0214 	add.w	r2, r2, #20
 800035e:	bfd8      	it	le
 8000360:	f1c2 0c20 	rsble	ip, r2, #32
 8000364:	fa01 f102 	lsl.w	r1, r1, r2
 8000368:	fa20 fc0c 	lsr.w	ip, r0, ip
 800036c:	bfdc      	itt	le
 800036e:	ea41 010c 	orrle.w	r1, r1, ip
 8000372:	4090      	lslle	r0, r2
 8000374:	1ae4      	subs	r4, r4, r3
 8000376:	bfa2      	ittt	ge
 8000378:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
 800037c:	4329      	orrge	r1, r5
 800037e:	bd30      	popge	{r4, r5, pc}
 8000380:	ea6f 0404 	mvn.w	r4, r4
 8000384:	3c1f      	subs	r4, #31
 8000386:	da1c      	bge.n	80003c2 <__adddf3+0x1d2>
 8000388:	340c      	adds	r4, #12
 800038a:	dc0e      	bgt.n	80003aa <__adddf3+0x1ba>
 800038c:	f104 0414 	add.w	r4, r4, #20
 8000390:	f1c4 0220 	rsb	r2, r4, #32
 8000394:	fa20 f004 	lsr.w	r0, r0, r4
 8000398:	fa01 f302 	lsl.w	r3, r1, r2
 800039c:	ea40 0003 	orr.w	r0, r0, r3
 80003a0:	fa21 f304 	lsr.w	r3, r1, r4
 80003a4:	ea45 0103 	orr.w	r1, r5, r3
 80003a8:	bd30      	pop	{r4, r5, pc}
 80003aa:	f1c4 040c 	rsb	r4, r4, #12
 80003ae:	f1c4 0220 	rsb	r2, r4, #32
 80003b2:	fa20 f002 	lsr.w	r0, r0, r2
 80003b6:	fa01 f304 	lsl.w	r3, r1, r4
 80003ba:	ea40 0003 	orr.w	r0, r0, r3
 80003be:	4629      	mov	r1, r5
 80003c0:	bd30      	pop	{r4, r5, pc}
 80003c2:	fa21 f004 	lsr.w	r0, r1, r4
 80003c6:	4629      	mov	r1, r5
 80003c8:	bd30      	pop	{r4, r5, pc}
 80003ca:	f094 0f00 	teq	r4, #0
 80003ce:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
 80003d2:	bf06      	itte	eq
 80003d4:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
 80003d8:	3401      	addeq	r4, #1
 80003da:	3d01      	subne	r5, #1
 80003dc:	e74e      	b.n	800027c <__adddf3+0x8c>
 80003de:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 80003e2:	bf18      	it	ne
 80003e4:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 80003e8:	d029      	beq.n	800043e <__adddf3+0x24e>
 80003ea:	ea94 0f05 	teq	r4, r5
 80003ee:	bf08      	it	eq
 80003f0:	ea90 0f02 	teqeq	r0, r2
 80003f4:	d005      	beq.n	8000402 <__adddf3+0x212>
 80003f6:	ea54 0c00 	orrs.w	ip, r4, r0
 80003fa:	bf04      	itt	eq
 80003fc:	4619      	moveq	r1, r3
 80003fe:	4610      	moveq	r0, r2
 8000400:	bd30      	pop	{r4, r5, pc}
 8000402:	ea91 0f03 	teq	r1, r3
 8000406:	bf1e      	ittt	ne
 8000408:	2100      	movne	r1, #0
 800040a:	2000      	movne	r0, #0
 800040c:	bd30      	popne	{r4, r5, pc}
 800040e:	ea5f 5c54 	movs.w	ip, r4, lsr #21
 8000412:	d105      	bne.n	8000420 <__adddf3+0x230>
 8000414:	0040      	lsls	r0, r0, #1
 8000416:	4149      	adcs	r1, r1
 8000418:	bf28      	it	cs
 800041a:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
 800041e:	bd30      	pop	{r4, r5, pc}
 8000420:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
 8000424:	bf3c      	itt	cc
 8000426:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
 800042a:	bd30      	popcc	{r4, r5, pc}
 800042c:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8000430:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
 8000434:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8000438:	f04f 0000 	mov.w	r0, #0
 800043c:	bd30      	pop	{r4, r5, pc}
 800043e:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 8000442:	bf1a      	itte	ne
 8000444:	4619      	movne	r1, r3
 8000446:	4610      	movne	r0, r2
 8000448:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
 800044c:	bf1c      	itt	ne
 800044e:	460b      	movne	r3, r1
 8000450:	4602      	movne	r2, r0
 8000452:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8000456:	bf06      	itte	eq
 8000458:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
 800045c:	ea91 0f03 	teqeq	r1, r3
 8000460:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
 8000464:	bd30      	pop	{r4, r5, pc}
 8000466:	bf00      	nop

08000468 <__aeabi_ui2d>:
 8000468:	f090 0f00 	teq	r0, #0
 800046c:	bf04      	itt	eq
 800046e:	2100      	moveq	r1, #0
 8000470:	4770      	bxeq	lr
 8000472:	b530      	push	{r4, r5, lr}
 8000474:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000478:	f104 0432 	add.w	r4, r4, #50	; 0x32
 800047c:	f04f 0500 	mov.w	r5, #0
 8000480:	f04f 0100 	mov.w	r1, #0
 8000484:	e750      	b.n	8000328 <__adddf3+0x138>
 8000486:	bf00      	nop

08000488 <__aeabi_i2d>:
 8000488:	f090 0f00 	teq	r0, #0
 800048c:	bf04      	itt	eq
 800048e:	2100      	moveq	r1, #0
 8000490:	4770      	bxeq	lr
 8000492:	b530      	push	{r4, r5, lr}
 8000494:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000498:	f104 0432 	add.w	r4, r4, #50	; 0x32
 800049c:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
 80004a0:	bf48      	it	mi
 80004a2:	4240      	negmi	r0, r0
 80004a4:	f04f 0100 	mov.w	r1, #0
 80004a8:	e73e      	b.n	8000328 <__adddf3+0x138>
 80004aa:	bf00      	nop

080004ac <__aeabi_f2d>:
 80004ac:	0042      	lsls	r2, r0, #1
 80004ae:	ea4f 01e2 	mov.w	r1, r2, asr #3
 80004b2:	ea4f 0131 	mov.w	r1, r1, rrx
 80004b6:	ea4f 7002 	mov.w	r0, r2, lsl #28
 80004ba:	bf1f      	itttt	ne
 80004bc:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
 80004c0:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 80004c4:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
 80004c8:	4770      	bxne	lr
 80004ca:	f092 0f00 	teq	r2, #0
 80004ce:	bf14      	ite	ne
 80004d0:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 80004d4:	4770      	bxeq	lr
 80004d6:	b530      	push	{r4, r5, lr}
 80004d8:	f44f 7460 	mov.w	r4, #896	; 0x380
 80004dc:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 80004e0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80004e4:	e720      	b.n	8000328 <__adddf3+0x138>
 80004e6:	bf00      	nop

080004e8 <__aeabi_ul2d>:
 80004e8:	ea50 0201 	orrs.w	r2, r0, r1
 80004ec:	bf08      	it	eq
 80004ee:	4770      	bxeq	lr
 80004f0:	b530      	push	{r4, r5, lr}
 80004f2:	f04f 0500 	mov.w	r5, #0
 80004f6:	e00a      	b.n	800050e <__aeabi_l2d+0x16>

080004f8 <__aeabi_l2d>:
 80004f8:	ea50 0201 	orrs.w	r2, r0, r1
 80004fc:	bf08      	it	eq
 80004fe:	4770      	bxeq	lr
 8000500:	b530      	push	{r4, r5, lr}
 8000502:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
 8000506:	d502      	bpl.n	800050e <__aeabi_l2d+0x16>
 8000508:	4240      	negs	r0, r0
 800050a:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 800050e:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000512:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8000516:	ea5f 5c91 	movs.w	ip, r1, lsr #22
 800051a:	f43f aedc 	beq.w	80002d6 <__adddf3+0xe6>
 800051e:	f04f 0203 	mov.w	r2, #3
 8000522:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8000526:	bf18      	it	ne
 8000528:	3203      	addne	r2, #3
 800052a:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 800052e:	bf18      	it	ne
 8000530:	3203      	addne	r2, #3
 8000532:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
 8000536:	f1c2 0320 	rsb	r3, r2, #32
 800053a:	fa00 fc03 	lsl.w	ip, r0, r3
 800053e:	fa20 f002 	lsr.w	r0, r0, r2
 8000542:	fa01 fe03 	lsl.w	lr, r1, r3
 8000546:	ea40 000e 	orr.w	r0, r0, lr
 800054a:	fa21 f102 	lsr.w	r1, r1, r2
 800054e:	4414      	add	r4, r2
 8000550:	e6c1      	b.n	80002d6 <__adddf3+0xe6>
 8000552:	bf00      	nop

08000554 <__aeabi_dmul>:
 8000554:	b570      	push	{r4, r5, r6, lr}
 8000556:	f04f 0cff 	mov.w	ip, #255	; 0xff
 800055a:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 800055e:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8000562:	bf1d      	ittte	ne
 8000564:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 8000568:	ea94 0f0c 	teqne	r4, ip
 800056c:	ea95 0f0c 	teqne	r5, ip
 8000570:	f000 f8de 	bleq	8000730 <__aeabi_dmul+0x1dc>
 8000574:	442c      	add	r4, r5
 8000576:	ea81 0603 	eor.w	r6, r1, r3
 800057a:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
 800057e:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
 8000582:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
 8000586:	bf18      	it	ne
 8000588:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
 800058c:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000590:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8000594:	d038      	beq.n	8000608 <__aeabi_dmul+0xb4>
 8000596:	fba0 ce02 	umull	ip, lr, r0, r2
 800059a:	f04f 0500 	mov.w	r5, #0
 800059e:	fbe1 e502 	umlal	lr, r5, r1, r2
 80005a2:	f006 4200 	and.w	r2, r6, #2147483648	; 0x80000000
 80005a6:	fbe0 e503 	umlal	lr, r5, r0, r3
 80005aa:	f04f 0600 	mov.w	r6, #0
 80005ae:	fbe1 5603 	umlal	r5, r6, r1, r3
 80005b2:	f09c 0f00 	teq	ip, #0
 80005b6:	bf18      	it	ne
 80005b8:	f04e 0e01 	orrne.w	lr, lr, #1
 80005bc:	f1a4 04ff 	sub.w	r4, r4, #255	; 0xff
 80005c0:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
 80005c4:	f564 7440 	sbc.w	r4, r4, #768	; 0x300
 80005c8:	d204      	bcs.n	80005d4 <__aeabi_dmul+0x80>
 80005ca:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
 80005ce:	416d      	adcs	r5, r5
 80005d0:	eb46 0606 	adc.w	r6, r6, r6
 80005d4:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
 80005d8:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
 80005dc:	ea4f 20c5 	mov.w	r0, r5, lsl #11
 80005e0:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
 80005e4:	ea4f 2ece 	mov.w	lr, lr, lsl #11
 80005e8:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 80005ec:	bf88      	it	hi
 80005ee:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 80005f2:	d81e      	bhi.n	8000632 <__aeabi_dmul+0xde>
 80005f4:	f1be 4f00 	cmp.w	lr, #2147483648	; 0x80000000
 80005f8:	bf08      	it	eq
 80005fa:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
 80005fe:	f150 0000 	adcs.w	r0, r0, #0
 8000602:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8000606:	bd70      	pop	{r4, r5, r6, pc}
 8000608:	f006 4600 	and.w	r6, r6, #2147483648	; 0x80000000
 800060c:	ea46 0101 	orr.w	r1, r6, r1
 8000610:	ea40 0002 	orr.w	r0, r0, r2
 8000614:	ea81 0103 	eor.w	r1, r1, r3
 8000618:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
 800061c:	bfc2      	ittt	gt
 800061e:	ebd4 050c 	rsbsgt	r5, r4, ip
 8000622:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8000626:	bd70      	popgt	{r4, r5, r6, pc}
 8000628:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 800062c:	f04f 0e00 	mov.w	lr, #0
 8000630:	3c01      	subs	r4, #1
 8000632:	f300 80ab 	bgt.w	800078c <__aeabi_dmul+0x238>
 8000636:	f114 0f36 	cmn.w	r4, #54	; 0x36
 800063a:	bfde      	ittt	le
 800063c:	2000      	movle	r0, #0
 800063e:	f001 4100 	andle.w	r1, r1, #2147483648	; 0x80000000
 8000642:	bd70      	pople	{r4, r5, r6, pc}
 8000644:	f1c4 0400 	rsb	r4, r4, #0
 8000648:	3c20      	subs	r4, #32
 800064a:	da35      	bge.n	80006b8 <__aeabi_dmul+0x164>
 800064c:	340c      	adds	r4, #12
 800064e:	dc1b      	bgt.n	8000688 <__aeabi_dmul+0x134>
 8000650:	f104 0414 	add.w	r4, r4, #20
 8000654:	f1c4 0520 	rsb	r5, r4, #32
 8000658:	fa00 f305 	lsl.w	r3, r0, r5
 800065c:	fa20 f004 	lsr.w	r0, r0, r4
 8000660:	fa01 f205 	lsl.w	r2, r1, r5
 8000664:	ea40 0002 	orr.w	r0, r0, r2
 8000668:	f001 4200 	and.w	r2, r1, #2147483648	; 0x80000000
 800066c:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8000670:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8000674:	fa21 f604 	lsr.w	r6, r1, r4
 8000678:	eb42 0106 	adc.w	r1, r2, r6
 800067c:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000680:	bf08      	it	eq
 8000682:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000686:	bd70      	pop	{r4, r5, r6, pc}
 8000688:	f1c4 040c 	rsb	r4, r4, #12
 800068c:	f1c4 0520 	rsb	r5, r4, #32
 8000690:	fa00 f304 	lsl.w	r3, r0, r4
 8000694:	fa20 f005 	lsr.w	r0, r0, r5
 8000698:	fa01 f204 	lsl.w	r2, r1, r4
 800069c:	ea40 0002 	orr.w	r0, r0, r2
 80006a0:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 80006a4:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 80006a8:	f141 0100 	adc.w	r1, r1, #0
 80006ac:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 80006b0:	bf08      	it	eq
 80006b2:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 80006b6:	bd70      	pop	{r4, r5, r6, pc}
 80006b8:	f1c4 0520 	rsb	r5, r4, #32
 80006bc:	fa00 f205 	lsl.w	r2, r0, r5
 80006c0:	ea4e 0e02 	orr.w	lr, lr, r2
 80006c4:	fa20 f304 	lsr.w	r3, r0, r4
 80006c8:	fa01 f205 	lsl.w	r2, r1, r5
 80006cc:	ea43 0302 	orr.w	r3, r3, r2
 80006d0:	fa21 f004 	lsr.w	r0, r1, r4
 80006d4:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 80006d8:	fa21 f204 	lsr.w	r2, r1, r4
 80006dc:	ea20 0002 	bic.w	r0, r0, r2
 80006e0:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
 80006e4:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 80006e8:	bf08      	it	eq
 80006ea:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 80006ee:	bd70      	pop	{r4, r5, r6, pc}
 80006f0:	f094 0f00 	teq	r4, #0
 80006f4:	d10f      	bne.n	8000716 <__aeabi_dmul+0x1c2>
 80006f6:	f001 4600 	and.w	r6, r1, #2147483648	; 0x80000000
 80006fa:	0040      	lsls	r0, r0, #1
 80006fc:	eb41 0101 	adc.w	r1, r1, r1
 8000700:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000704:	bf08      	it	eq
 8000706:	3c01      	subeq	r4, #1
 8000708:	d0f7      	beq.n	80006fa <__aeabi_dmul+0x1a6>
 800070a:	ea41 0106 	orr.w	r1, r1, r6
 800070e:	f095 0f00 	teq	r5, #0
 8000712:	bf18      	it	ne
 8000714:	4770      	bxne	lr
 8000716:	f003 4600 	and.w	r6, r3, #2147483648	; 0x80000000
 800071a:	0052      	lsls	r2, r2, #1
 800071c:	eb43 0303 	adc.w	r3, r3, r3
 8000720:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
 8000724:	bf08      	it	eq
 8000726:	3d01      	subeq	r5, #1
 8000728:	d0f7      	beq.n	800071a <__aeabi_dmul+0x1c6>
 800072a:	ea43 0306 	orr.w	r3, r3, r6
 800072e:	4770      	bx	lr
 8000730:	ea94 0f0c 	teq	r4, ip
 8000734:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8000738:	bf18      	it	ne
 800073a:	ea95 0f0c 	teqne	r5, ip
 800073e:	d00c      	beq.n	800075a <__aeabi_dmul+0x206>
 8000740:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8000744:	bf18      	it	ne
 8000746:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 800074a:	d1d1      	bne.n	80006f0 <__aeabi_dmul+0x19c>
 800074c:	ea81 0103 	eor.w	r1, r1, r3
 8000750:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000754:	f04f 0000 	mov.w	r0, #0
 8000758:	bd70      	pop	{r4, r5, r6, pc}
 800075a:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 800075e:	bf06      	itte	eq
 8000760:	4610      	moveq	r0, r2
 8000762:	4619      	moveq	r1, r3
 8000764:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8000768:	d019      	beq.n	800079e <__aeabi_dmul+0x24a>
 800076a:	ea94 0f0c 	teq	r4, ip
 800076e:	d102      	bne.n	8000776 <__aeabi_dmul+0x222>
 8000770:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
 8000774:	d113      	bne.n	800079e <__aeabi_dmul+0x24a>
 8000776:	ea95 0f0c 	teq	r5, ip
 800077a:	d105      	bne.n	8000788 <__aeabi_dmul+0x234>
 800077c:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
 8000780:	bf1c      	itt	ne
 8000782:	4610      	movne	r0, r2
 8000784:	4619      	movne	r1, r3
 8000786:	d10a      	bne.n	800079e <__aeabi_dmul+0x24a>
 8000788:	ea81 0103 	eor.w	r1, r1, r3
 800078c:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000790:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8000794:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8000798:	f04f 0000 	mov.w	r0, #0
 800079c:	bd70      	pop	{r4, r5, r6, pc}
 800079e:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 80007a2:	f441 0178 	orr.w	r1, r1, #16252928	; 0xf80000
 80007a6:	bd70      	pop	{r4, r5, r6, pc}

080007a8 <__aeabi_ddiv>:
 80007a8:	b570      	push	{r4, r5, r6, lr}
 80007aa:	f04f 0cff 	mov.w	ip, #255	; 0xff
 80007ae:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 80007b2:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 80007b6:	bf1d      	ittte	ne
 80007b8:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 80007bc:	ea94 0f0c 	teqne	r4, ip
 80007c0:	ea95 0f0c 	teqne	r5, ip
 80007c4:	f000 f8a7 	bleq	8000916 <__aeabi_ddiv+0x16e>
 80007c8:	eba4 0405 	sub.w	r4, r4, r5
 80007cc:	ea81 0e03 	eor.w	lr, r1, r3
 80007d0:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 80007d4:	ea4f 3101 	mov.w	r1, r1, lsl #12
 80007d8:	f000 8088 	beq.w	80008ec <__aeabi_ddiv+0x144>
 80007dc:	ea4f 3303 	mov.w	r3, r3, lsl #12
 80007e0:	f04f 5580 	mov.w	r5, #268435456	; 0x10000000
 80007e4:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
 80007e8:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
 80007ec:	ea4f 2202 	mov.w	r2, r2, lsl #8
 80007f0:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
 80007f4:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
 80007f8:	ea4f 2600 	mov.w	r6, r0, lsl #8
 80007fc:	f00e 4100 	and.w	r1, lr, #2147483648	; 0x80000000
 8000800:	429d      	cmp	r5, r3
 8000802:	bf08      	it	eq
 8000804:	4296      	cmpeq	r6, r2
 8000806:	f144 04fd 	adc.w	r4, r4, #253	; 0xfd
 800080a:	f504 7440 	add.w	r4, r4, #768	; 0x300
 800080e:	d202      	bcs.n	8000816 <__aeabi_ddiv+0x6e>
 8000810:	085b      	lsrs	r3, r3, #1
 8000812:	ea4f 0232 	mov.w	r2, r2, rrx
 8000816:	1ab6      	subs	r6, r6, r2
 8000818:	eb65 0503 	sbc.w	r5, r5, r3
 800081c:	085b      	lsrs	r3, r3, #1
 800081e:	ea4f 0232 	mov.w	r2, r2, rrx
 8000822:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
 8000826:	f44f 2c00 	mov.w	ip, #524288	; 0x80000
 800082a:	ebb6 0e02 	subs.w	lr, r6, r2
 800082e:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000832:	bf22      	ittt	cs
 8000834:	1ab6      	subcs	r6, r6, r2
 8000836:	4675      	movcs	r5, lr
 8000838:	ea40 000c 	orrcs.w	r0, r0, ip
 800083c:	085b      	lsrs	r3, r3, #1
 800083e:	ea4f 0232 	mov.w	r2, r2, rrx
 8000842:	ebb6 0e02 	subs.w	lr, r6, r2
 8000846:	eb75 0e03 	sbcs.w	lr, r5, r3
 800084a:	bf22      	ittt	cs
 800084c:	1ab6      	subcs	r6, r6, r2
 800084e:	4675      	movcs	r5, lr
 8000850:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
 8000854:	085b      	lsrs	r3, r3, #1
 8000856:	ea4f 0232 	mov.w	r2, r2, rrx
 800085a:	ebb6 0e02 	subs.w	lr, r6, r2
 800085e:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000862:	bf22      	ittt	cs
 8000864:	1ab6      	subcs	r6, r6, r2
 8000866:	4675      	movcs	r5, lr
 8000868:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
 800086c:	085b      	lsrs	r3, r3, #1
 800086e:	ea4f 0232 	mov.w	r2, r2, rrx
 8000872:	ebb6 0e02 	subs.w	lr, r6, r2
 8000876:	eb75 0e03 	sbcs.w	lr, r5, r3
 800087a:	bf22      	ittt	cs
 800087c:	1ab6      	subcs	r6, r6, r2
 800087e:	4675      	movcs	r5, lr
 8000880:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
 8000884:	ea55 0e06 	orrs.w	lr, r5, r6
 8000888:	d018      	beq.n	80008bc <__aeabi_ddiv+0x114>
 800088a:	ea4f 1505 	mov.w	r5, r5, lsl #4
 800088e:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
 8000892:	ea4f 1606 	mov.w	r6, r6, lsl #4
 8000896:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 800089a:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
 800089e:	ea4f 02c2 	mov.w	r2, r2, lsl #3
 80008a2:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
 80008a6:	d1c0      	bne.n	800082a <__aeabi_ddiv+0x82>
 80008a8:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 80008ac:	d10b      	bne.n	80008c6 <__aeabi_ddiv+0x11e>
 80008ae:	ea41 0100 	orr.w	r1, r1, r0
 80008b2:	f04f 0000 	mov.w	r0, #0
 80008b6:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
 80008ba:	e7b6      	b.n	800082a <__aeabi_ddiv+0x82>
 80008bc:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 80008c0:	bf04      	itt	eq
 80008c2:	4301      	orreq	r1, r0
 80008c4:	2000      	moveq	r0, #0
 80008c6:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 80008ca:	bf88      	it	hi
 80008cc:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 80008d0:	f63f aeaf 	bhi.w	8000632 <__aeabi_dmul+0xde>
 80008d4:	ebb5 0c03 	subs.w	ip, r5, r3
 80008d8:	bf04      	itt	eq
 80008da:	ebb6 0c02 	subseq.w	ip, r6, r2
 80008de:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 80008e2:	f150 0000 	adcs.w	r0, r0, #0
 80008e6:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 80008ea:	bd70      	pop	{r4, r5, r6, pc}
 80008ec:	f00e 4e00 	and.w	lr, lr, #2147483648	; 0x80000000
 80008f0:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
 80008f4:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
 80008f8:	bfc2      	ittt	gt
 80008fa:	ebd4 050c 	rsbsgt	r5, r4, ip
 80008fe:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8000902:	bd70      	popgt	{r4, r5, r6, pc}
 8000904:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000908:	f04f 0e00 	mov.w	lr, #0
 800090c:	3c01      	subs	r4, #1
 800090e:	e690      	b.n	8000632 <__aeabi_dmul+0xde>
 8000910:	ea45 0e06 	orr.w	lr, r5, r6
 8000914:	e68d      	b.n	8000632 <__aeabi_dmul+0xde>
 8000916:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 800091a:	ea94 0f0c 	teq	r4, ip
 800091e:	bf08      	it	eq
 8000920:	ea95 0f0c 	teqeq	r5, ip
 8000924:	f43f af3b 	beq.w	800079e <__aeabi_dmul+0x24a>
 8000928:	ea94 0f0c 	teq	r4, ip
 800092c:	d10a      	bne.n	8000944 <__aeabi_ddiv+0x19c>
 800092e:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8000932:	f47f af34 	bne.w	800079e <__aeabi_dmul+0x24a>
 8000936:	ea95 0f0c 	teq	r5, ip
 800093a:	f47f af25 	bne.w	8000788 <__aeabi_dmul+0x234>
 800093e:	4610      	mov	r0, r2
 8000940:	4619      	mov	r1, r3
 8000942:	e72c      	b.n	800079e <__aeabi_dmul+0x24a>
 8000944:	ea95 0f0c 	teq	r5, ip
 8000948:	d106      	bne.n	8000958 <__aeabi_ddiv+0x1b0>
 800094a:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 800094e:	f43f aefd 	beq.w	800074c <__aeabi_dmul+0x1f8>
 8000952:	4610      	mov	r0, r2
 8000954:	4619      	mov	r1, r3
 8000956:	e722      	b.n	800079e <__aeabi_dmul+0x24a>
 8000958:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 800095c:	bf18      	it	ne
 800095e:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8000962:	f47f aec5 	bne.w	80006f0 <__aeabi_dmul+0x19c>
 8000966:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
 800096a:	f47f af0d 	bne.w	8000788 <__aeabi_dmul+0x234>
 800096e:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
 8000972:	f47f aeeb 	bne.w	800074c <__aeabi_dmul+0x1f8>
 8000976:	e712      	b.n	800079e <__aeabi_dmul+0x24a>

08000978 <__aeabi_d2iz>:
 8000978:	ea4f 0241 	mov.w	r2, r1, lsl #1
 800097c:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 8000980:	d215      	bcs.n	80009ae <__aeabi_d2iz+0x36>
 8000982:	d511      	bpl.n	80009a8 <__aeabi_d2iz+0x30>
 8000984:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 8000988:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 800098c:	d912      	bls.n	80009b4 <__aeabi_d2iz+0x3c>
 800098e:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8000992:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 8000996:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 800099a:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 800099e:	fa23 f002 	lsr.w	r0, r3, r2
 80009a2:	bf18      	it	ne
 80009a4:	4240      	negne	r0, r0
 80009a6:	4770      	bx	lr
 80009a8:	f04f 0000 	mov.w	r0, #0
 80009ac:	4770      	bx	lr
 80009ae:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 80009b2:	d105      	bne.n	80009c0 <__aeabi_d2iz+0x48>
 80009b4:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
 80009b8:	bf08      	it	eq
 80009ba:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
 80009be:	4770      	bx	lr
 80009c0:	f04f 0000 	mov.w	r0, #0
 80009c4:	4770      	bx	lr
 80009c6:	bf00      	nop

080009c8 <__gedf2>:
 80009c8:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
 80009cc:	e006      	b.n	80009dc <__cmpdf2+0x4>
 80009ce:	bf00      	nop

080009d0 <__ledf2>:
 80009d0:	f04f 0c01 	mov.w	ip, #1
 80009d4:	e002      	b.n	80009dc <__cmpdf2+0x4>
 80009d6:	bf00      	nop

080009d8 <__cmpdf2>:
 80009d8:	f04f 0c01 	mov.w	ip, #1
 80009dc:	f84d cd04 	str.w	ip, [sp, #-4]!
 80009e0:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 80009e4:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 80009e8:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80009ec:	bf18      	it	ne
 80009ee:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
 80009f2:	d01b      	beq.n	8000a2c <__cmpdf2+0x54>
 80009f4:	b001      	add	sp, #4
 80009f6:	ea50 0c41 	orrs.w	ip, r0, r1, lsl #1
 80009fa:	bf0c      	ite	eq
 80009fc:	ea52 0c43 	orrseq.w	ip, r2, r3, lsl #1
 8000a00:	ea91 0f03 	teqne	r1, r3
 8000a04:	bf02      	ittt	eq
 8000a06:	ea90 0f02 	teqeq	r0, r2
 8000a0a:	2000      	moveq	r0, #0
 8000a0c:	4770      	bxeq	lr
 8000a0e:	f110 0f00 	cmn.w	r0, #0
 8000a12:	ea91 0f03 	teq	r1, r3
 8000a16:	bf58      	it	pl
 8000a18:	4299      	cmppl	r1, r3
 8000a1a:	bf08      	it	eq
 8000a1c:	4290      	cmpeq	r0, r2
 8000a1e:	bf2c      	ite	cs
 8000a20:	17d8      	asrcs	r0, r3, #31
 8000a22:	ea6f 70e3 	mvncc.w	r0, r3, asr #31
 8000a26:	f040 0001 	orr.w	r0, r0, #1
 8000a2a:	4770      	bx	lr
 8000a2c:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8000a30:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8000a34:	d102      	bne.n	8000a3c <__cmpdf2+0x64>
 8000a36:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 8000a3a:	d107      	bne.n	8000a4c <__cmpdf2+0x74>
 8000a3c:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8000a40:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8000a44:	d1d6      	bne.n	80009f4 <__cmpdf2+0x1c>
 8000a46:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 8000a4a:	d0d3      	beq.n	80009f4 <__cmpdf2+0x1c>
 8000a4c:	f85d 0b04 	ldr.w	r0, [sp], #4
 8000a50:	4770      	bx	lr
 8000a52:	bf00      	nop

08000a54 <__aeabi_cdrcmple>:
 8000a54:	4684      	mov	ip, r0
 8000a56:	4610      	mov	r0, r2
 8000a58:	4662      	mov	r2, ip
 8000a5a:	468c      	mov	ip, r1
 8000a5c:	4619      	mov	r1, r3
 8000a5e:	4663      	mov	r3, ip
 8000a60:	e000      	b.n	8000a64 <__aeabi_cdcmpeq>
 8000a62:	bf00      	nop

08000a64 <__aeabi_cdcmpeq>:
 8000a64:	b501      	push	{r0, lr}
 8000a66:	f7ff ffb7 	bl	80009d8 <__cmpdf2>
 8000a6a:	2800      	cmp	r0, #0
 8000a6c:	bf48      	it	mi
 8000a6e:	f110 0f00 	cmnmi.w	r0, #0
 8000a72:	bd01      	pop	{r0, pc}

08000a74 <__aeabi_dcmpeq>:
 8000a74:	f84d ed08 	str.w	lr, [sp, #-8]!
 8000a78:	f7ff fff4 	bl	8000a64 <__aeabi_cdcmpeq>
 8000a7c:	bf0c      	ite	eq
 8000a7e:	2001      	moveq	r0, #1
 8000a80:	2000      	movne	r0, #0
 8000a82:	f85d fb08 	ldr.w	pc, [sp], #8
 8000a86:	bf00      	nop

08000a88 <__aeabi_dcmplt>:
 8000a88:	f84d ed08 	str.w	lr, [sp, #-8]!
 8000a8c:	f7ff ffea 	bl	8000a64 <__aeabi_cdcmpeq>
 8000a90:	bf34      	ite	cc
 8000a92:	2001      	movcc	r0, #1
 8000a94:	2000      	movcs	r0, #0
 8000a96:	f85d fb08 	ldr.w	pc, [sp], #8
 8000a9a:	bf00      	nop

08000a9c <__aeabi_dcmple>:
 8000a9c:	f84d ed08 	str.w	lr, [sp, #-8]!
 8000aa0:	f7ff ffe0 	bl	8000a64 <__aeabi_cdcmpeq>
 8000aa4:	bf94      	ite	ls
 8000aa6:	2001      	movls	r0, #1
 8000aa8:	2000      	movhi	r0, #0
 8000aaa:	f85d fb08 	ldr.w	pc, [sp], #8
 8000aae:	bf00      	nop

08000ab0 <__aeabi_dcmpge>:
 8000ab0:	f84d ed08 	str.w	lr, [sp, #-8]!
 8000ab4:	f7ff ffce 	bl	8000a54 <__aeabi_cdrcmple>
 8000ab8:	bf94      	ite	ls
 8000aba:	2001      	movls	r0, #1
 8000abc:	2000      	movhi	r0, #0
 8000abe:	f85d fb08 	ldr.w	pc, [sp], #8
 8000ac2:	bf00      	nop

08000ac4 <__aeabi_dcmpgt>:
 8000ac4:	f84d ed08 	str.w	lr, [sp, #-8]!
 8000ac8:	f7ff ffc4 	bl	8000a54 <__aeabi_cdrcmple>
 8000acc:	bf34      	ite	cc
 8000ace:	2001      	movcc	r0, #1
 8000ad0:	2000      	movcs	r0, #0
 8000ad2:	f85d fb08 	ldr.w	pc, [sp], #8
 8000ad6:	bf00      	nop

08000ad8 <Reset_Handler>:
 8000ad8:	f8df d03c 	ldr.w	sp, [pc, #60]	; 8000b18 <LoopFillZerobss+0x16>
 8000adc:	2100      	movs	r1, #0
 8000ade:	f000 b804 	b.w	8000aea <LoopCopyDataInit>

08000ae2 <CopyDataInit>:
 8000ae2:	4b0e      	ldr	r3, [pc, #56]	; (8000b1c <LoopFillZerobss+0x1a>)
 8000ae4:	585b      	ldr	r3, [r3, r1]
 8000ae6:	5043      	str	r3, [r0, r1]
 8000ae8:	3104      	adds	r1, #4

08000aea <LoopCopyDataInit>:
 8000aea:	480d      	ldr	r0, [pc, #52]	; (8000b20 <LoopFillZerobss+0x1e>)
 8000aec:	4b0d      	ldr	r3, [pc, #52]	; (8000b24 <LoopFillZerobss+0x22>)
 8000aee:	1842      	adds	r2, r0, r1
 8000af0:	429a      	cmp	r2, r3
 8000af2:	f4ff aff6 	bcc.w	8000ae2 <CopyDataInit>
 8000af6:	4a0c      	ldr	r2, [pc, #48]	; (8000b28 <LoopFillZerobss+0x26>)
 8000af8:	f000 b803 	b.w	8000b02 <LoopFillZerobss>

08000afc <FillZerobss>:
 8000afc:	2300      	movs	r3, #0
 8000afe:	f842 3b04 	str.w	r3, [r2], #4

08000b02 <LoopFillZerobss>:
 8000b02:	4b0a      	ldr	r3, [pc, #40]	; (8000b2c <LoopFillZerobss+0x2a>)
 8000b04:	429a      	cmp	r2, r3
 8000b06:	f4ff aff9 	bcc.w	8000afc <FillZerobss>
 8000b0a:	f000 fa37 	bl	8000f7c <SystemInit>
 8000b0e:	f006 f927 	bl	8006d60 <__libc_init_array>
 8000b12:	f000 fa0d 	bl	8000f30 <main>
 8000b16:	4770      	bx	lr
 8000b18:	20020000 	.word	0x20020000
 8000b1c:	08009a8c 	.word	0x08009a8c
 8000b20:	20000000 	.word	0x20000000
 8000b24:	2000021c 	.word	0x2000021c
 8000b28:	20000220 	.word	0x20000220
 8000b2c:	20015770 	.word	0x20015770

08000b30 <ADC_IRQHandler>:
 8000b30:	f7ff bffe 	b.w	8000b30 <ADC_IRQHandler>

08000b34 <NVIC_SetPriorityGrouping>:
 8000b34:	b480      	push	{r7}
 8000b36:	b085      	sub	sp, #20
 8000b38:	af00      	add	r7, sp, #0
 8000b3a:	6078      	str	r0, [r7, #4]
 8000b3c:	687b      	ldr	r3, [r7, #4]
 8000b3e:	f003 0307 	and.w	r3, r3, #7
 8000b42:	60fb      	str	r3, [r7, #12]
 8000b44:	4b0c      	ldr	r3, [pc, #48]	; (8000b78 <NVIC_SetPriorityGrouping+0x44>)
 8000b46:	68db      	ldr	r3, [r3, #12]
 8000b48:	60bb      	str	r3, [r7, #8]
 8000b4a:	68ba      	ldr	r2, [r7, #8]
 8000b4c:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 8000b50:	4013      	ands	r3, r2
 8000b52:	60bb      	str	r3, [r7, #8]
 8000b54:	68fb      	ldr	r3, [r7, #12]
 8000b56:	021a      	lsls	r2, r3, #8
 8000b58:	68bb      	ldr	r3, [r7, #8]
 8000b5a:	4313      	orrs	r3, r2
 8000b5c:	f043 63bf 	orr.w	r3, r3, #100139008	; 0x5f80000
 8000b60:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8000b64:	60bb      	str	r3, [r7, #8]
 8000b66:	4b04      	ldr	r3, [pc, #16]	; (8000b78 <NVIC_SetPriorityGrouping+0x44>)
 8000b68:	68ba      	ldr	r2, [r7, #8]
 8000b6a:	60da      	str	r2, [r3, #12]
 8000b6c:	3714      	adds	r7, #20
 8000b6e:	46bd      	mov	sp, r7
 8000b70:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000b74:	4770      	bx	lr
 8000b76:	bf00      	nop
 8000b78:	e000ed00 	.word	0xe000ed00

08000b7c <NVIC_SetPriority>:
 8000b7c:	b480      	push	{r7}
 8000b7e:	b083      	sub	sp, #12
 8000b80:	af00      	add	r7, sp, #0
 8000b82:	4603      	mov	r3, r0
 8000b84:	6039      	str	r1, [r7, #0]
 8000b86:	71fb      	strb	r3, [r7, #7]
 8000b88:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000b8c:	2b00      	cmp	r3, #0
 8000b8e:	da0b      	bge.n	8000ba8 <NVIC_SetPriority+0x2c>
 8000b90:	490d      	ldr	r1, [pc, #52]	; (8000bc8 <NVIC_SetPriority+0x4c>)
 8000b92:	79fb      	ldrb	r3, [r7, #7]
 8000b94:	f003 030f 	and.w	r3, r3, #15
 8000b98:	3b04      	subs	r3, #4
 8000b9a:	683a      	ldr	r2, [r7, #0]
 8000b9c:	b2d2      	uxtb	r2, r2
 8000b9e:	0112      	lsls	r2, r2, #4
 8000ba0:	b2d2      	uxtb	r2, r2
 8000ba2:	440b      	add	r3, r1
 8000ba4:	761a      	strb	r2, [r3, #24]
 8000ba6:	e009      	b.n	8000bbc <NVIC_SetPriority+0x40>
 8000ba8:	4908      	ldr	r1, [pc, #32]	; (8000bcc <NVIC_SetPriority+0x50>)
 8000baa:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000bae:	683a      	ldr	r2, [r7, #0]
 8000bb0:	b2d2      	uxtb	r2, r2
 8000bb2:	0112      	lsls	r2, r2, #4
 8000bb4:	b2d2      	uxtb	r2, r2
 8000bb6:	440b      	add	r3, r1
 8000bb8:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8000bbc:	370c      	adds	r7, #12
 8000bbe:	46bd      	mov	sp, r7
 8000bc0:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000bc4:	4770      	bx	lr
 8000bc6:	bf00      	nop
 8000bc8:	e000ed00 	.word	0xe000ed00
 8000bcc:	e000e100 	.word	0xe000e100

08000bd0 <SysTick_Config>:
 8000bd0:	b580      	push	{r7, lr}
 8000bd2:	b082      	sub	sp, #8
 8000bd4:	af00      	add	r7, sp, #0
 8000bd6:	6078      	str	r0, [r7, #4]
 8000bd8:	687b      	ldr	r3, [r7, #4]
 8000bda:	3b01      	subs	r3, #1
 8000bdc:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
 8000be0:	d301      	bcc.n	8000be6 <SysTick_Config+0x16>
 8000be2:	2301      	movs	r3, #1
 8000be4:	e00f      	b.n	8000c06 <SysTick_Config+0x36>
 8000be6:	4b0a      	ldr	r3, [pc, #40]	; (8000c10 <SysTick_Config+0x40>)
 8000be8:	687a      	ldr	r2, [r7, #4]
 8000bea:	3a01      	subs	r2, #1
 8000bec:	605a      	str	r2, [r3, #4]
 8000bee:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8000bf2:	210f      	movs	r1, #15
 8000bf4:	f7ff ffc2 	bl	8000b7c <NVIC_SetPriority>
 8000bf8:	4b05      	ldr	r3, [pc, #20]	; (8000c10 <SysTick_Config+0x40>)
 8000bfa:	2200      	movs	r2, #0
 8000bfc:	609a      	str	r2, [r3, #8]
 8000bfe:	4b04      	ldr	r3, [pc, #16]	; (8000c10 <SysTick_Config+0x40>)
 8000c00:	2207      	movs	r2, #7
 8000c02:	601a      	str	r2, [r3, #0]
 8000c04:	2300      	movs	r3, #0
 8000c06:	4618      	mov	r0, r3
 8000c08:	3708      	adds	r7, #8
 8000c0a:	46bd      	mov	sp, r7
 8000c0c:	bd80      	pop	{r7, pc}
 8000c0e:	bf00      	nop
 8000c10:	e000e010 	.word	0xe000e010

08000c14 <LL_RCC_HSE_Enable>:
 8000c14:	b480      	push	{r7}
 8000c16:	af00      	add	r7, sp, #0
 8000c18:	4b04      	ldr	r3, [pc, #16]	; (8000c2c <LL_RCC_HSE_Enable+0x18>)
 8000c1a:	4a04      	ldr	r2, [pc, #16]	; (8000c2c <LL_RCC_HSE_Enable+0x18>)
 8000c1c:	6812      	ldr	r2, [r2, #0]
 8000c1e:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8000c22:	601a      	str	r2, [r3, #0]
 8000c24:	46bd      	mov	sp, r7
 8000c26:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000c2a:	4770      	bx	lr
 8000c2c:	40023800 	.word	0x40023800

08000c30 <LL_RCC_HSE_IsReady>:
 8000c30:	b480      	push	{r7}
 8000c32:	af00      	add	r7, sp, #0
 8000c34:	4b06      	ldr	r3, [pc, #24]	; (8000c50 <LL_RCC_HSE_IsReady+0x20>)
 8000c36:	681b      	ldr	r3, [r3, #0]
 8000c38:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000c3c:	2b00      	cmp	r3, #0
 8000c3e:	bf0c      	ite	eq
 8000c40:	2300      	moveq	r3, #0
 8000c42:	2301      	movne	r3, #1
 8000c44:	b2db      	uxtb	r3, r3
 8000c46:	4618      	mov	r0, r3
 8000c48:	46bd      	mov	sp, r7
 8000c4a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000c4e:	4770      	bx	lr
 8000c50:	40023800 	.word	0x40023800

08000c54 <LL_RCC_SetSysClkSource>:
 8000c54:	b480      	push	{r7}
 8000c56:	b083      	sub	sp, #12
 8000c58:	af00      	add	r7, sp, #0
 8000c5a:	6078      	str	r0, [r7, #4]
 8000c5c:	4b06      	ldr	r3, [pc, #24]	; (8000c78 <LL_RCC_SetSysClkSource+0x24>)
 8000c5e:	4a06      	ldr	r2, [pc, #24]	; (8000c78 <LL_RCC_SetSysClkSource+0x24>)
 8000c60:	6892      	ldr	r2, [r2, #8]
 8000c62:	f022 0103 	bic.w	r1, r2, #3
 8000c66:	687a      	ldr	r2, [r7, #4]
 8000c68:	430a      	orrs	r2, r1
 8000c6a:	609a      	str	r2, [r3, #8]
 8000c6c:	370c      	adds	r7, #12
 8000c6e:	46bd      	mov	sp, r7
 8000c70:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000c74:	4770      	bx	lr
 8000c76:	bf00      	nop
 8000c78:	40023800 	.word	0x40023800

08000c7c <LL_RCC_GetSysClkSource>:
 8000c7c:	b480      	push	{r7}
 8000c7e:	af00      	add	r7, sp, #0
 8000c80:	4b04      	ldr	r3, [pc, #16]	; (8000c94 <LL_RCC_GetSysClkSource+0x18>)
 8000c82:	689b      	ldr	r3, [r3, #8]
 8000c84:	f003 030c 	and.w	r3, r3, #12
 8000c88:	4618      	mov	r0, r3
 8000c8a:	46bd      	mov	sp, r7
 8000c8c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000c90:	4770      	bx	lr
 8000c92:	bf00      	nop
 8000c94:	40023800 	.word	0x40023800

08000c98 <LL_RCC_SetAHBPrescaler>:
 8000c98:	b480      	push	{r7}
 8000c9a:	b083      	sub	sp, #12
 8000c9c:	af00      	add	r7, sp, #0
 8000c9e:	6078      	str	r0, [r7, #4]
 8000ca0:	4b06      	ldr	r3, [pc, #24]	; (8000cbc <LL_RCC_SetAHBPrescaler+0x24>)
 8000ca2:	4a06      	ldr	r2, [pc, #24]	; (8000cbc <LL_RCC_SetAHBPrescaler+0x24>)
 8000ca4:	6892      	ldr	r2, [r2, #8]
 8000ca6:	f022 01f0 	bic.w	r1, r2, #240	; 0xf0
 8000caa:	687a      	ldr	r2, [r7, #4]
 8000cac:	430a      	orrs	r2, r1
 8000cae:	609a      	str	r2, [r3, #8]
 8000cb0:	370c      	adds	r7, #12
 8000cb2:	46bd      	mov	sp, r7
 8000cb4:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000cb8:	4770      	bx	lr
 8000cba:	bf00      	nop
 8000cbc:	40023800 	.word	0x40023800

08000cc0 <LL_RCC_SetAPB1Prescaler>:
 8000cc0:	b480      	push	{r7}
 8000cc2:	b083      	sub	sp, #12
 8000cc4:	af00      	add	r7, sp, #0
 8000cc6:	6078      	str	r0, [r7, #4]
 8000cc8:	4b06      	ldr	r3, [pc, #24]	; (8000ce4 <LL_RCC_SetAPB1Prescaler+0x24>)
 8000cca:	4a06      	ldr	r2, [pc, #24]	; (8000ce4 <LL_RCC_SetAPB1Prescaler+0x24>)
 8000ccc:	6892      	ldr	r2, [r2, #8]
 8000cce:	f422 51e0 	bic.w	r1, r2, #7168	; 0x1c00
 8000cd2:	687a      	ldr	r2, [r7, #4]
 8000cd4:	430a      	orrs	r2, r1
 8000cd6:	609a      	str	r2, [r3, #8]
 8000cd8:	370c      	adds	r7, #12
 8000cda:	46bd      	mov	sp, r7
 8000cdc:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000ce0:	4770      	bx	lr
 8000ce2:	bf00      	nop
 8000ce4:	40023800 	.word	0x40023800

08000ce8 <LL_RCC_SetAPB2Prescaler>:
 8000ce8:	b480      	push	{r7}
 8000cea:	b083      	sub	sp, #12
 8000cec:	af00      	add	r7, sp, #0
 8000cee:	6078      	str	r0, [r7, #4]
 8000cf0:	4b06      	ldr	r3, [pc, #24]	; (8000d0c <LL_RCC_SetAPB2Prescaler+0x24>)
 8000cf2:	4a06      	ldr	r2, [pc, #24]	; (8000d0c <LL_RCC_SetAPB2Prescaler+0x24>)
 8000cf4:	6892      	ldr	r2, [r2, #8]
 8000cf6:	f422 4160 	bic.w	r1, r2, #57344	; 0xe000
 8000cfa:	687a      	ldr	r2, [r7, #4]
 8000cfc:	430a      	orrs	r2, r1
 8000cfe:	609a      	str	r2, [r3, #8]
 8000d00:	370c      	adds	r7, #12
 8000d02:	46bd      	mov	sp, r7
 8000d04:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000d08:	4770      	bx	lr
 8000d0a:	bf00      	nop
 8000d0c:	40023800 	.word	0x40023800

08000d10 <LL_RCC_PLL_Enable>:
 8000d10:	b480      	push	{r7}
 8000d12:	af00      	add	r7, sp, #0
 8000d14:	4b04      	ldr	r3, [pc, #16]	; (8000d28 <LL_RCC_PLL_Enable+0x18>)
 8000d16:	4a04      	ldr	r2, [pc, #16]	; (8000d28 <LL_RCC_PLL_Enable+0x18>)
 8000d18:	6812      	ldr	r2, [r2, #0]
 8000d1a:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8000d1e:	601a      	str	r2, [r3, #0]
 8000d20:	46bd      	mov	sp, r7
 8000d22:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000d26:	4770      	bx	lr
 8000d28:	40023800 	.word	0x40023800

08000d2c <LL_RCC_PLL_IsReady>:
 8000d2c:	b480      	push	{r7}
 8000d2e:	af00      	add	r7, sp, #0
 8000d30:	4b06      	ldr	r3, [pc, #24]	; (8000d4c <LL_RCC_PLL_IsReady+0x20>)
 8000d32:	681b      	ldr	r3, [r3, #0]
 8000d34:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000d38:	2b00      	cmp	r3, #0
 8000d3a:	bf0c      	ite	eq
 8000d3c:	2300      	moveq	r3, #0
 8000d3e:	2301      	movne	r3, #1
 8000d40:	b2db      	uxtb	r3, r3
 8000d42:	4618      	mov	r0, r3
 8000d44:	46bd      	mov	sp, r7
 8000d46:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000d4a:	4770      	bx	lr
 8000d4c:	40023800 	.word	0x40023800

08000d50 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000d50:	b480      	push	{r7}
 8000d52:	b085      	sub	sp, #20
 8000d54:	af00      	add	r7, sp, #0
 8000d56:	60f8      	str	r0, [r7, #12]
 8000d58:	60b9      	str	r1, [r7, #8]
 8000d5a:	607a      	str	r2, [r7, #4]
 8000d5c:	603b      	str	r3, [r7, #0]
 8000d5e:	4a0d      	ldr	r2, [pc, #52]	; (8000d94 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000d60:	4b0c      	ldr	r3, [pc, #48]	; (8000d94 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000d62:	6859      	ldr	r1, [r3, #4]
 8000d64:	4b0c      	ldr	r3, [pc, #48]	; (8000d98 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8000d66:	400b      	ands	r3, r1
 8000d68:	68f8      	ldr	r0, [r7, #12]
 8000d6a:	68b9      	ldr	r1, [r7, #8]
 8000d6c:	4308      	orrs	r0, r1
 8000d6e:	6879      	ldr	r1, [r7, #4]
 8000d70:	0189      	lsls	r1, r1, #6
 8000d72:	4301      	orrs	r1, r0
 8000d74:	430b      	orrs	r3, r1
 8000d76:	6053      	str	r3, [r2, #4]
 8000d78:	4b06      	ldr	r3, [pc, #24]	; (8000d94 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000d7a:	4a06      	ldr	r2, [pc, #24]	; (8000d94 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000d7c:	6852      	ldr	r2, [r2, #4]
 8000d7e:	f422 3140 	bic.w	r1, r2, #196608	; 0x30000
 8000d82:	683a      	ldr	r2, [r7, #0]
 8000d84:	430a      	orrs	r2, r1
 8000d86:	605a      	str	r2, [r3, #4]
 8000d88:	3714      	adds	r7, #20
 8000d8a:	46bd      	mov	sp, r7
 8000d8c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000d90:	4770      	bx	lr
 8000d92:	bf00      	nop
 8000d94:	40023800 	.word	0x40023800
 8000d98:	ffbf8000 	.word	0xffbf8000

08000d9c <LL_FLASH_SetLatency>:
 8000d9c:	b480      	push	{r7}
 8000d9e:	b083      	sub	sp, #12
 8000da0:	af00      	add	r7, sp, #0
 8000da2:	6078      	str	r0, [r7, #4]
 8000da4:	4b06      	ldr	r3, [pc, #24]	; (8000dc0 <LL_FLASH_SetLatency+0x24>)
 8000da6:	4a06      	ldr	r2, [pc, #24]	; (8000dc0 <LL_FLASH_SetLatency+0x24>)
 8000da8:	6812      	ldr	r2, [r2, #0]
 8000daa:	f022 010f 	bic.w	r1, r2, #15
 8000dae:	687a      	ldr	r2, [r7, #4]
 8000db0:	430a      	orrs	r2, r1
 8000db2:	601a      	str	r2, [r3, #0]
 8000db4:	370c      	adds	r7, #12
 8000db6:	46bd      	mov	sp, r7
 8000db8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000dbc:	4770      	bx	lr
 8000dbe:	bf00      	nop
 8000dc0:	40023c00 	.word	0x40023c00

08000dc4 <LL_AHB1_GRP1_EnableClock>:
 8000dc4:	b480      	push	{r7}
 8000dc6:	b085      	sub	sp, #20
 8000dc8:	af00      	add	r7, sp, #0
 8000dca:	6078      	str	r0, [r7, #4]
 8000dcc:	4b08      	ldr	r3, [pc, #32]	; (8000df0 <LL_AHB1_GRP1_EnableClock+0x2c>)
 8000dce:	4a08      	ldr	r2, [pc, #32]	; (8000df0 <LL_AHB1_GRP1_EnableClock+0x2c>)
 8000dd0:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8000dd2:	687a      	ldr	r2, [r7, #4]
 8000dd4:	430a      	orrs	r2, r1
 8000dd6:	631a      	str	r2, [r3, #48]	; 0x30
 8000dd8:	4b05      	ldr	r3, [pc, #20]	; (8000df0 <LL_AHB1_GRP1_EnableClock+0x2c>)
 8000dda:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000ddc:	687b      	ldr	r3, [r7, #4]
 8000dde:	4013      	ands	r3, r2
 8000de0:	60fb      	str	r3, [r7, #12]
 8000de2:	68fb      	ldr	r3, [r7, #12]
 8000de4:	3714      	adds	r7, #20
 8000de6:	46bd      	mov	sp, r7
 8000de8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000dec:	4770      	bx	lr
 8000dee:	bf00      	nop
 8000df0:	40023800 	.word	0x40023800

08000df4 <LL_GPIO_SetPinMode>:
 8000df4:	b480      	push	{r7}
 8000df6:	b089      	sub	sp, #36	; 0x24
 8000df8:	af00      	add	r7, sp, #0
 8000dfa:	60f8      	str	r0, [r7, #12]
 8000dfc:	60b9      	str	r1, [r7, #8]
 8000dfe:	607a      	str	r2, [r7, #4]
 8000e00:	68fb      	ldr	r3, [r7, #12]
 8000e02:	681a      	ldr	r2, [r3, #0]
 8000e04:	68bb      	ldr	r3, [r7, #8]
 8000e06:	61fb      	str	r3, [r7, #28]
 8000e08:	69fb      	ldr	r3, [r7, #28]
 8000e0a:	fa93 f3a3 	rbit	r3, r3
 8000e0e:	61bb      	str	r3, [r7, #24]
 8000e10:	69bb      	ldr	r3, [r7, #24]
 8000e12:	fab3 f383 	clz	r3, r3
 8000e16:	005b      	lsls	r3, r3, #1
 8000e18:	2103      	movs	r1, #3
 8000e1a:	fa01 f303 	lsl.w	r3, r1, r3
 8000e1e:	43db      	mvns	r3, r3
 8000e20:	401a      	ands	r2, r3
 8000e22:	68bb      	ldr	r3, [r7, #8]
 8000e24:	617b      	str	r3, [r7, #20]
 8000e26:	697b      	ldr	r3, [r7, #20]
 8000e28:	fa93 f3a3 	rbit	r3, r3
 8000e2c:	613b      	str	r3, [r7, #16]
 8000e2e:	693b      	ldr	r3, [r7, #16]
 8000e30:	fab3 f383 	clz	r3, r3
 8000e34:	005b      	lsls	r3, r3, #1
 8000e36:	6879      	ldr	r1, [r7, #4]
 8000e38:	fa01 f303 	lsl.w	r3, r1, r3
 8000e3c:	431a      	orrs	r2, r3
 8000e3e:	68fb      	ldr	r3, [r7, #12]
 8000e40:	601a      	str	r2, [r3, #0]
 8000e42:	3724      	adds	r7, #36	; 0x24
 8000e44:	46bd      	mov	sp, r7
 8000e46:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000e4a:	4770      	bx	lr

08000e4c <LL_GPIO_TogglePin>:
 8000e4c:	b480      	push	{r7}
 8000e4e:	b083      	sub	sp, #12
 8000e50:	af00      	add	r7, sp, #0
 8000e52:	6078      	str	r0, [r7, #4]
 8000e54:	6039      	str	r1, [r7, #0]
 8000e56:	687b      	ldr	r3, [r7, #4]
 8000e58:	695a      	ldr	r2, [r3, #20]
 8000e5a:	683b      	ldr	r3, [r7, #0]
 8000e5c:	405a      	eors	r2, r3
 8000e5e:	687b      	ldr	r3, [r7, #4]
 8000e60:	615a      	str	r2, [r3, #20]
 8000e62:	370c      	adds	r7, #12
 8000e64:	46bd      	mov	sp, r7
 8000e66:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000e6a:	4770      	bx	lr

08000e6c <rcc_config>:
 8000e6c:	b580      	push	{r7, lr}
 8000e6e:	af00      	add	r7, sp, #0
 8000e70:	f7ff fed0 	bl	8000c14 <LL_RCC_HSE_Enable>
 8000e74:	bf00      	nop
 8000e76:	f7ff fedb 	bl	8000c30 <LL_RCC_HSE_IsReady>
 8000e7a:	4603      	mov	r3, r0
 8000e7c:	2b01      	cmp	r3, #1
 8000e7e:	d1fa      	bne.n	8000e76 <rcc_config+0xa>
 8000e80:	2005      	movs	r0, #5
 8000e82:	f7ff ff8b 	bl	8000d9c <LL_FLASH_SetLatency>
 8000e86:	f44f 0080 	mov.w	r0, #4194304	; 0x400000
 8000e8a:	2108      	movs	r1, #8
 8000e8c:	f44f 72a8 	mov.w	r2, #336	; 0x150
 8000e90:	2300      	movs	r3, #0
 8000e92:	f7ff ff5d 	bl	8000d50 <LL_RCC_PLL_ConfigDomain_SYS>
 8000e96:	f7ff ff3b 	bl	8000d10 <LL_RCC_PLL_Enable>
 8000e9a:	bf00      	nop
 8000e9c:	f7ff ff46 	bl	8000d2c <LL_RCC_PLL_IsReady>
 8000ea0:	4603      	mov	r3, r0
 8000ea2:	2b01      	cmp	r3, #1
 8000ea4:	d1fa      	bne.n	8000e9c <rcc_config+0x30>
 8000ea6:	2000      	movs	r0, #0
 8000ea8:	f7ff fef6 	bl	8000c98 <LL_RCC_SetAHBPrescaler>
 8000eac:	2002      	movs	r0, #2
 8000eae:	f7ff fed1 	bl	8000c54 <LL_RCC_SetSysClkSource>
 8000eb2:	bf00      	nop
 8000eb4:	f7ff fee2 	bl	8000c7c <LL_RCC_GetSysClkSource>
 8000eb8:	4603      	mov	r3, r0
 8000eba:	2b08      	cmp	r3, #8
 8000ebc:	d1fa      	bne.n	8000eb4 <rcc_config+0x48>
 8000ebe:	f44f 50a0 	mov.w	r0, #5120	; 0x1400
 8000ec2:	f7ff fefd 	bl	8000cc0 <LL_RCC_SetAPB1Prescaler>
 8000ec6:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000eca:	f7ff ff0d 	bl	8000ce8 <LL_RCC_SetAPB2Prescaler>
 8000ece:	4803      	ldr	r0, [pc, #12]	; (8000edc <rcc_config+0x70>)
 8000ed0:	f7ff fe7e 	bl	8000bd0 <SysTick_Config>
 8000ed4:	4b02      	ldr	r3, [pc, #8]	; (8000ee0 <rcc_config+0x74>)
 8000ed6:	4a03      	ldr	r2, [pc, #12]	; (8000ee4 <rcc_config+0x78>)
 8000ed8:	601a      	str	r2, [r3, #0]
 8000eda:	bd80      	pop	{r7, pc}
 8000edc:	00029040 	.word	0x00029040
 8000ee0:	20000000 	.word	0x20000000
 8000ee4:	0a037a00 	.word	0x0a037a00

08000ee8 <gpio_config>:
 8000ee8:	b580      	push	{r7, lr}
 8000eea:	af00      	add	r7, sp, #0
 8000eec:	2008      	movs	r0, #8
 8000eee:	f7ff ff69 	bl	8000dc4 <LL_AHB1_GRP1_EnableClock>
 8000ef2:	4803      	ldr	r0, [pc, #12]	; (8000f00 <gpio_config+0x18>)
 8000ef4:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8000ef8:	2201      	movs	r2, #1
 8000efa:	f7ff ff7b 	bl	8000df4 <LL_GPIO_SetPinMode>
 8000efe:	bd80      	pop	{r7, pc}
 8000f00:	40020c00 	.word	0x40020c00

08000f04 <test_FPU_test>:
 8000f04:	b580      	push	{r7, lr}
 8000f06:	b086      	sub	sp, #24
 8000f08:	af00      	add	r7, sp, #0
 8000f0a:	6078      	str	r0, [r7, #4]
 8000f0c:	2300      	movs	r3, #0
 8000f0e:	617b      	str	r3, [r7, #20]
 8000f10:	2300      	movs	r3, #0
 8000f12:	613b      	str	r3, [r7, #16]
 8000f14:	2300      	movs	r3, #0
 8000f16:	60fb      	str	r3, [r7, #12]
 8000f18:	4804      	ldr	r0, [pc, #16]	; (8000f2c <test_FPU_test+0x28>)
 8000f1a:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8000f1e:	f7ff ff95 	bl	8000e4c <LL_GPIO_TogglePin>
 8000f22:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000f26:	f004 fa5f 	bl	80053e8 <vTaskDelay>
 8000f2a:	e7f5      	b.n	8000f18 <test_FPU_test+0x14>
 8000f2c:	40020c00 	.word	0x40020c00

08000f30 <main>:
 8000f30:	b580      	push	{r7, lr}
 8000f32:	b084      	sub	sp, #16
 8000f34:	af04      	add	r7, sp, #16
 8000f36:	f7ff ff99 	bl	8000e6c <rcc_config>
 8000f3a:	f7ff ffd5 	bl	8000ee8 <gpio_config>
 8000f3e:	2004      	movs	r0, #4
 8000f40:	f7ff fdf8 	bl	8000b34 <NVIC_SetPriorityGrouping>
 8000f44:	2301      	movs	r3, #1
 8000f46:	9300      	str	r3, [sp, #0]
 8000f48:	4b08      	ldr	r3, [pc, #32]	; (8000f6c <main+0x3c>)
 8000f4a:	9301      	str	r3, [sp, #4]
 8000f4c:	4b08      	ldr	r3, [pc, #32]	; (8000f70 <main+0x40>)
 8000f4e:	9302      	str	r3, [sp, #8]
 8000f50:	4808      	ldr	r0, [pc, #32]	; (8000f74 <main+0x44>)
 8000f52:	4909      	ldr	r1, [pc, #36]	; (8000f78 <main+0x48>)
 8000f54:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8000f58:	2300      	movs	r3, #0
 8000f5a:	f004 f8a3 	bl	80050a4 <xTaskCreateStatic>
 8000f5e:	f004 fa75 	bl	800544c <vTaskStartScheduler>
 8000f62:	2300      	movs	r3, #0
 8000f64:	4618      	mov	r0, r3
 8000f66:	46bd      	mov	sp, r7
 8000f68:	bd80      	pop	{r7, pc}
 8000f6a:	bf00      	nop
 8000f6c:	20013d8c 	.word	0x20013d8c
 8000f70:	20013908 	.word	0x20013908
 8000f74:	08000f05 	.word	0x08000f05
 8000f78:	080094e8 	.word	0x080094e8

08000f7c <SystemInit>:
 8000f7c:	b480      	push	{r7}
 8000f7e:	af00      	add	r7, sp, #0
 8000f80:	4b16      	ldr	r3, [pc, #88]	; (8000fdc <SystemInit+0x60>)
 8000f82:	4a16      	ldr	r2, [pc, #88]	; (8000fdc <SystemInit+0x60>)
 8000f84:	f8d2 2088 	ldr.w	r2, [r2, #136]	; 0x88
 8000f88:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 8000f8c:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8000f90:	4b13      	ldr	r3, [pc, #76]	; (8000fe0 <SystemInit+0x64>)
 8000f92:	4a13      	ldr	r2, [pc, #76]	; (8000fe0 <SystemInit+0x64>)
 8000f94:	6812      	ldr	r2, [r2, #0]
 8000f96:	f042 0201 	orr.w	r2, r2, #1
 8000f9a:	601a      	str	r2, [r3, #0]
 8000f9c:	4b10      	ldr	r3, [pc, #64]	; (8000fe0 <SystemInit+0x64>)
 8000f9e:	2200      	movs	r2, #0
 8000fa0:	609a      	str	r2, [r3, #8]
 8000fa2:	4a0f      	ldr	r2, [pc, #60]	; (8000fe0 <SystemInit+0x64>)
 8000fa4:	4b0e      	ldr	r3, [pc, #56]	; (8000fe0 <SystemInit+0x64>)
 8000fa6:	681b      	ldr	r3, [r3, #0]
 8000fa8:	f023 7384 	bic.w	r3, r3, #17301504	; 0x1080000
 8000fac:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8000fb0:	6013      	str	r3, [r2, #0]
 8000fb2:	4b0b      	ldr	r3, [pc, #44]	; (8000fe0 <SystemInit+0x64>)
 8000fb4:	4a0b      	ldr	r2, [pc, #44]	; (8000fe4 <SystemInit+0x68>)
 8000fb6:	605a      	str	r2, [r3, #4]
 8000fb8:	4b09      	ldr	r3, [pc, #36]	; (8000fe0 <SystemInit+0x64>)
 8000fba:	4a09      	ldr	r2, [pc, #36]	; (8000fe0 <SystemInit+0x64>)
 8000fbc:	6812      	ldr	r2, [r2, #0]
 8000fbe:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8000fc2:	601a      	str	r2, [r3, #0]
 8000fc4:	4b06      	ldr	r3, [pc, #24]	; (8000fe0 <SystemInit+0x64>)
 8000fc6:	2200      	movs	r2, #0
 8000fc8:	60da      	str	r2, [r3, #12]
 8000fca:	4b04      	ldr	r3, [pc, #16]	; (8000fdc <SystemInit+0x60>)
 8000fcc:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8000fd0:	609a      	str	r2, [r3, #8]
 8000fd2:	46bd      	mov	sp, r7
 8000fd4:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000fd8:	4770      	bx	lr
 8000fda:	bf00      	nop
 8000fdc:	e000ed00 	.word	0xe000ed00
 8000fe0:	40023800 	.word	0x40023800
 8000fe4:	24003010 	.word	0x24003010

08000fe8 <gpioInitClock>:
 8000fe8:	b480      	push	{r7}
 8000fea:	b083      	sub	sp, #12
 8000fec:	af00      	add	r7, sp, #0
 8000fee:	6078      	str	r0, [r7, #4]
 8000ff0:	687a      	ldr	r2, [r7, #4]
 8000ff2:	4b34      	ldr	r3, [pc, #208]	; (80010c4 <gpioInitClock+0xdc>)
 8000ff4:	429a      	cmp	r2, r3
 8000ff6:	d106      	bne.n	8001006 <gpioInitClock+0x1e>
 8000ff8:	4b33      	ldr	r3, [pc, #204]	; (80010c8 <gpioInitClock+0xe0>)
 8000ffa:	4a33      	ldr	r2, [pc, #204]	; (80010c8 <gpioInitClock+0xe0>)
 8000ffc:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8000ffe:	f042 0201 	orr.w	r2, r2, #1
 8001002:	631a      	str	r2, [r3, #48]	; 0x30
 8001004:	e058      	b.n	80010b8 <gpioInitClock+0xd0>
 8001006:	687a      	ldr	r2, [r7, #4]
 8001008:	4b30      	ldr	r3, [pc, #192]	; (80010cc <gpioInitClock+0xe4>)
 800100a:	429a      	cmp	r2, r3
 800100c:	d106      	bne.n	800101c <gpioInitClock+0x34>
 800100e:	4b2e      	ldr	r3, [pc, #184]	; (80010c8 <gpioInitClock+0xe0>)
 8001010:	4a2d      	ldr	r2, [pc, #180]	; (80010c8 <gpioInitClock+0xe0>)
 8001012:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001014:	f042 0202 	orr.w	r2, r2, #2
 8001018:	631a      	str	r2, [r3, #48]	; 0x30
 800101a:	e04d      	b.n	80010b8 <gpioInitClock+0xd0>
 800101c:	687a      	ldr	r2, [r7, #4]
 800101e:	4b2c      	ldr	r3, [pc, #176]	; (80010d0 <gpioInitClock+0xe8>)
 8001020:	429a      	cmp	r2, r3
 8001022:	d106      	bne.n	8001032 <gpioInitClock+0x4a>
 8001024:	4b28      	ldr	r3, [pc, #160]	; (80010c8 <gpioInitClock+0xe0>)
 8001026:	4a28      	ldr	r2, [pc, #160]	; (80010c8 <gpioInitClock+0xe0>)
 8001028:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800102a:	f042 0204 	orr.w	r2, r2, #4
 800102e:	631a      	str	r2, [r3, #48]	; 0x30
 8001030:	e042      	b.n	80010b8 <gpioInitClock+0xd0>
 8001032:	687a      	ldr	r2, [r7, #4]
 8001034:	4b27      	ldr	r3, [pc, #156]	; (80010d4 <gpioInitClock+0xec>)
 8001036:	429a      	cmp	r2, r3
 8001038:	d106      	bne.n	8001048 <gpioInitClock+0x60>
 800103a:	4b23      	ldr	r3, [pc, #140]	; (80010c8 <gpioInitClock+0xe0>)
 800103c:	4a22      	ldr	r2, [pc, #136]	; (80010c8 <gpioInitClock+0xe0>)
 800103e:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001040:	f042 0208 	orr.w	r2, r2, #8
 8001044:	631a      	str	r2, [r3, #48]	; 0x30
 8001046:	e037      	b.n	80010b8 <gpioInitClock+0xd0>
 8001048:	687a      	ldr	r2, [r7, #4]
 800104a:	4b23      	ldr	r3, [pc, #140]	; (80010d8 <gpioInitClock+0xf0>)
 800104c:	429a      	cmp	r2, r3
 800104e:	d106      	bne.n	800105e <gpioInitClock+0x76>
 8001050:	4b1d      	ldr	r3, [pc, #116]	; (80010c8 <gpioInitClock+0xe0>)
 8001052:	4a1d      	ldr	r2, [pc, #116]	; (80010c8 <gpioInitClock+0xe0>)
 8001054:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001056:	f042 0210 	orr.w	r2, r2, #16
 800105a:	631a      	str	r2, [r3, #48]	; 0x30
 800105c:	e02c      	b.n	80010b8 <gpioInitClock+0xd0>
 800105e:	687a      	ldr	r2, [r7, #4]
 8001060:	4b1e      	ldr	r3, [pc, #120]	; (80010dc <gpioInitClock+0xf4>)
 8001062:	429a      	cmp	r2, r3
 8001064:	d106      	bne.n	8001074 <gpioInitClock+0x8c>
 8001066:	4b18      	ldr	r3, [pc, #96]	; (80010c8 <gpioInitClock+0xe0>)
 8001068:	4a17      	ldr	r2, [pc, #92]	; (80010c8 <gpioInitClock+0xe0>)
 800106a:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800106c:	f042 0220 	orr.w	r2, r2, #32
 8001070:	631a      	str	r2, [r3, #48]	; 0x30
 8001072:	e021      	b.n	80010b8 <gpioInitClock+0xd0>
 8001074:	687a      	ldr	r2, [r7, #4]
 8001076:	4b1a      	ldr	r3, [pc, #104]	; (80010e0 <gpioInitClock+0xf8>)
 8001078:	429a      	cmp	r2, r3
 800107a:	d106      	bne.n	800108a <gpioInitClock+0xa2>
 800107c:	4b12      	ldr	r3, [pc, #72]	; (80010c8 <gpioInitClock+0xe0>)
 800107e:	4a12      	ldr	r2, [pc, #72]	; (80010c8 <gpioInitClock+0xe0>)
 8001080:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001082:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8001086:	631a      	str	r2, [r3, #48]	; 0x30
 8001088:	e016      	b.n	80010b8 <gpioInitClock+0xd0>
 800108a:	687a      	ldr	r2, [r7, #4]
 800108c:	4b15      	ldr	r3, [pc, #84]	; (80010e4 <gpioInitClock+0xfc>)
 800108e:	429a      	cmp	r2, r3
 8001090:	d106      	bne.n	80010a0 <gpioInitClock+0xb8>
 8001092:	4b0d      	ldr	r3, [pc, #52]	; (80010c8 <gpioInitClock+0xe0>)
 8001094:	4a0c      	ldr	r2, [pc, #48]	; (80010c8 <gpioInitClock+0xe0>)
 8001096:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001098:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 800109c:	631a      	str	r2, [r3, #48]	; 0x30
 800109e:	e00b      	b.n	80010b8 <gpioInitClock+0xd0>
 80010a0:	687a      	ldr	r2, [r7, #4]
 80010a2:	4b11      	ldr	r3, [pc, #68]	; (80010e8 <gpioInitClock+0x100>)
 80010a4:	429a      	cmp	r2, r3
 80010a6:	d106      	bne.n	80010b6 <gpioInitClock+0xce>
 80010a8:	4b07      	ldr	r3, [pc, #28]	; (80010c8 <gpioInitClock+0xe0>)
 80010aa:	4a07      	ldr	r2, [pc, #28]	; (80010c8 <gpioInitClock+0xe0>)
 80010ac:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80010ae:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 80010b2:	631a      	str	r2, [r3, #48]	; 0x30
 80010b4:	e000      	b.n	80010b8 <gpioInitClock+0xd0>
 80010b6:	bf00      	nop
 80010b8:	370c      	adds	r7, #12
 80010ba:	46bd      	mov	sp, r7
 80010bc:	f85d 7b04 	ldr.w	r7, [sp], #4
 80010c0:	4770      	bx	lr
 80010c2:	bf00      	nop
 80010c4:	40020000 	.word	0x40020000
 80010c8:	40023800 	.word	0x40023800
 80010cc:	40020400 	.word	0x40020400
 80010d0:	40020800 	.word	0x40020800
 80010d4:	40020c00 	.word	0x40020c00
 80010d8:	40021000 	.word	0x40021000
 80010dc:	40021400 	.word	0x40021400
 80010e0:	40021800 	.word	0x40021800
 80010e4:	40021c00 	.word	0x40021c00
 80010e8:	40022000 	.word	0x40022000

080010ec <gpioInitPin>:
 80010ec:	b580      	push	{r7, lr}
 80010ee:	b082      	sub	sp, #8
 80010f0:	af00      	add	r7, sp, #0
 80010f2:	6078      	str	r0, [r7, #4]
 80010f4:	70f9      	strb	r1, [r7, #3]
 80010f6:	70ba      	strb	r2, [r7, #2]
 80010f8:	707b      	strb	r3, [r7, #1]
 80010fa:	6878      	ldr	r0, [r7, #4]
 80010fc:	f7ff ff74 	bl	8000fe8 <gpioInitClock>
 8001100:	687b      	ldr	r3, [r7, #4]
 8001102:	681a      	ldr	r2, [r3, #0]
 8001104:	78fb      	ldrb	r3, [r7, #3]
 8001106:	005b      	lsls	r3, r3, #1
 8001108:	2103      	movs	r1, #3
 800110a:	fa01 f303 	lsl.w	r3, r1, r3
 800110e:	43db      	mvns	r3, r3
 8001110:	401a      	ands	r2, r3
 8001112:	78b9      	ldrb	r1, [r7, #2]
 8001114:	78fb      	ldrb	r3, [r7, #3]
 8001116:	005b      	lsls	r3, r3, #1
 8001118:	fa01 f303 	lsl.w	r3, r1, r3
 800111c:	431a      	orrs	r2, r3
 800111e:	687b      	ldr	r3, [r7, #4]
 8001120:	601a      	str	r2, [r3, #0]
 8001122:	687b      	ldr	r3, [r7, #4]
 8001124:	68da      	ldr	r2, [r3, #12]
 8001126:	78fb      	ldrb	r3, [r7, #3]
 8001128:	005b      	lsls	r3, r3, #1
 800112a:	2103      	movs	r1, #3
 800112c:	fa01 f303 	lsl.w	r3, r1, r3
 8001130:	43db      	mvns	r3, r3
 8001132:	401a      	ands	r2, r3
 8001134:	7c39      	ldrb	r1, [r7, #16]
 8001136:	78fb      	ldrb	r3, [r7, #3]
 8001138:	005b      	lsls	r3, r3, #1
 800113a:	fa01 f303 	lsl.w	r3, r1, r3
 800113e:	431a      	orrs	r2, r3
 8001140:	687b      	ldr	r3, [r7, #4]
 8001142:	60da      	str	r2, [r3, #12]
 8001144:	78bb      	ldrb	r3, [r7, #2]
 8001146:	2b01      	cmp	r3, #1
 8001148:	d002      	beq.n	8001150 <gpioInitPin+0x64>
 800114a:	78bb      	ldrb	r3, [r7, #2]
 800114c:	2b02      	cmp	r3, #2
 800114e:	d10e      	bne.n	800116e <gpioInitPin+0x82>
 8001150:	687b      	ldr	r3, [r7, #4]
 8001152:	685a      	ldr	r2, [r3, #4]
 8001154:	78fb      	ldrb	r3, [r7, #3]
 8001156:	2101      	movs	r1, #1
 8001158:	fa01 f303 	lsl.w	r3, r1, r3
 800115c:	43db      	mvns	r3, r3
 800115e:	401a      	ands	r2, r3
 8001160:	7879      	ldrb	r1, [r7, #1]
 8001162:	78fb      	ldrb	r3, [r7, #3]
 8001164:	fa01 f303 	lsl.w	r3, r1, r3
 8001168:	431a      	orrs	r2, r3
 800116a:	687b      	ldr	r3, [r7, #4]
 800116c:	605a      	str	r2, [r3, #4]
 800116e:	bf00      	nop
 8001170:	3708      	adds	r7, #8
 8001172:	46bd      	mov	sp, r7
 8001174:	bd80      	pop	{r7, pc}
 8001176:	bf00      	nop

08001178 <gpioInitPinAf>:
 8001178:	b580      	push	{r7, lr}
 800117a:	b082      	sub	sp, #8
 800117c:	af00      	add	r7, sp, #0
 800117e:	6078      	str	r0, [r7, #4]
 8001180:	4613      	mov	r3, r2
 8001182:	460a      	mov	r2, r1
 8001184:	70fa      	strb	r2, [r7, #3]
 8001186:	70bb      	strb	r3, [r7, #2]
 8001188:	6878      	ldr	r0, [r7, #4]
 800118a:	f7ff ff2d 	bl	8000fe8 <gpioInitClock>
 800118e:	687b      	ldr	r3, [r7, #4]
 8001190:	681a      	ldr	r2, [r3, #0]
 8001192:	78fb      	ldrb	r3, [r7, #3]
 8001194:	005b      	lsls	r3, r3, #1
 8001196:	2103      	movs	r1, #3
 8001198:	fa01 f303 	lsl.w	r3, r1, r3
 800119c:	43db      	mvns	r3, r3
 800119e:	401a      	ands	r2, r3
 80011a0:	78fb      	ldrb	r3, [r7, #3]
 80011a2:	005b      	lsls	r3, r3, #1
 80011a4:	2102      	movs	r1, #2
 80011a6:	fa01 f303 	lsl.w	r3, r1, r3
 80011aa:	431a      	orrs	r2, r3
 80011ac:	687b      	ldr	r3, [r7, #4]
 80011ae:	601a      	str	r2, [r3, #0]
 80011b0:	78fb      	ldrb	r3, [r7, #3]
 80011b2:	2b07      	cmp	r3, #7
 80011b4:	d811      	bhi.n	80011da <gpioInitPinAf+0x62>
 80011b6:	687b      	ldr	r3, [r7, #4]
 80011b8:	6a1a      	ldr	r2, [r3, #32]
 80011ba:	78fb      	ldrb	r3, [r7, #3]
 80011bc:	009b      	lsls	r3, r3, #2
 80011be:	210f      	movs	r1, #15
 80011c0:	fa01 f303 	lsl.w	r3, r1, r3
 80011c4:	43db      	mvns	r3, r3
 80011c6:	401a      	ands	r2, r3
 80011c8:	78b9      	ldrb	r1, [r7, #2]
 80011ca:	78fb      	ldrb	r3, [r7, #3]
 80011cc:	009b      	lsls	r3, r3, #2
 80011ce:	fa01 f303 	lsl.w	r3, r1, r3
 80011d2:	431a      	orrs	r2, r3
 80011d4:	687b      	ldr	r3, [r7, #4]
 80011d6:	621a      	str	r2, [r3, #32]
 80011d8:	e015      	b.n	8001206 <gpioInitPinAf+0x8e>
 80011da:	78fb      	ldrb	r3, [r7, #3]
 80011dc:	2b07      	cmp	r3, #7
 80011de:	d912      	bls.n	8001206 <gpioInitPinAf+0x8e>
 80011e0:	687b      	ldr	r3, [r7, #4]
 80011e2:	6a5a      	ldr	r2, [r3, #36]	; 0x24
 80011e4:	78fb      	ldrb	r3, [r7, #3]
 80011e6:	3b08      	subs	r3, #8
 80011e8:	009b      	lsls	r3, r3, #2
 80011ea:	210f      	movs	r1, #15
 80011ec:	fa01 f303 	lsl.w	r3, r1, r3
 80011f0:	43db      	mvns	r3, r3
 80011f2:	401a      	ands	r2, r3
 80011f4:	78b9      	ldrb	r1, [r7, #2]
 80011f6:	78fb      	ldrb	r3, [r7, #3]
 80011f8:	3b08      	subs	r3, #8
 80011fa:	009b      	lsls	r3, r3, #2
 80011fc:	fa01 f303 	lsl.w	r3, r1, r3
 8001200:	431a      	orrs	r2, r3
 8001202:	687b      	ldr	r3, [r7, #4]
 8001204:	625a      	str	r2, [r3, #36]	; 0x24
 8001206:	bf00      	nop
 8001208:	3708      	adds	r7, #8
 800120a:	46bd      	mov	sp, r7
 800120c:	bd80      	pop	{r7, pc}
 800120e:	bf00      	nop

08001210 <gpioPinSetLevel>:
 8001210:	b480      	push	{r7}
 8001212:	b083      	sub	sp, #12
 8001214:	af00      	add	r7, sp, #0
 8001216:	6078      	str	r0, [r7, #4]
 8001218:	4613      	mov	r3, r2
 800121a:	460a      	mov	r2, r1
 800121c:	70fa      	strb	r2, [r7, #3]
 800121e:	70bb      	strb	r3, [r7, #2]
 8001220:	78bb      	ldrb	r3, [r7, #2]
 8001222:	2b00      	cmp	r3, #0
 8001224:	d10a      	bne.n	800123c <gpioPinSetLevel+0x2c>
 8001226:	687b      	ldr	r3, [r7, #4]
 8001228:	699a      	ldr	r2, [r3, #24]
 800122a:	78fb      	ldrb	r3, [r7, #3]
 800122c:	3310      	adds	r3, #16
 800122e:	2101      	movs	r1, #1
 8001230:	fa01 f303 	lsl.w	r3, r1, r3
 8001234:	431a      	orrs	r2, r3
 8001236:	687b      	ldr	r3, [r7, #4]
 8001238:	619a      	str	r2, [r3, #24]
 800123a:	e00b      	b.n	8001254 <gpioPinSetLevel+0x44>
 800123c:	78bb      	ldrb	r3, [r7, #2]
 800123e:	2b01      	cmp	r3, #1
 8001240:	d108      	bne.n	8001254 <gpioPinSetLevel+0x44>
 8001242:	687b      	ldr	r3, [r7, #4]
 8001244:	699a      	ldr	r2, [r3, #24]
 8001246:	78fb      	ldrb	r3, [r7, #3]
 8001248:	2101      	movs	r1, #1
 800124a:	fa01 f303 	lsl.w	r3, r1, r3
 800124e:	431a      	orrs	r2, r3
 8001250:	687b      	ldr	r3, [r7, #4]
 8001252:	619a      	str	r2, [r3, #24]
 8001254:	370c      	adds	r7, #12
 8001256:	46bd      	mov	sp, r7
 8001258:	f85d 7b04 	ldr.w	r7, [sp], #4
 800125c:	4770      	bx	lr
 800125e:	bf00      	nop

08001260 <I2CInit>:
 8001260:	b5b0      	push	{r4, r5, r7, lr}
 8001262:	b084      	sub	sp, #16
 8001264:	af00      	add	r7, sp, #0
 8001266:	6078      	str	r0, [r7, #4]
 8001268:	687b      	ldr	r3, [r7, #4]
 800126a:	681a      	ldr	r2, [r3, #0]
 800126c:	4b3b      	ldr	r3, [pc, #236]	; (800135c <I2CInit+0xfc>)
 800126e:	429a      	cmp	r2, r3
 8001270:	d106      	bne.n	8001280 <I2CInit+0x20>
 8001272:	4b3b      	ldr	r3, [pc, #236]	; (8001360 <I2CInit+0x100>)
 8001274:	4a3a      	ldr	r2, [pc, #232]	; (8001360 <I2CInit+0x100>)
 8001276:	6c12      	ldr	r2, [r2, #64]	; 0x40
 8001278:	f442 1200 	orr.w	r2, r2, #2097152	; 0x200000
 800127c:	641a      	str	r2, [r3, #64]	; 0x40
 800127e:	e016      	b.n	80012ae <I2CInit+0x4e>
 8001280:	687b      	ldr	r3, [r7, #4]
 8001282:	681a      	ldr	r2, [r3, #0]
 8001284:	4b37      	ldr	r3, [pc, #220]	; (8001364 <I2CInit+0x104>)
 8001286:	429a      	cmp	r2, r3
 8001288:	d106      	bne.n	8001298 <I2CInit+0x38>
 800128a:	4b35      	ldr	r3, [pc, #212]	; (8001360 <I2CInit+0x100>)
 800128c:	4a34      	ldr	r2, [pc, #208]	; (8001360 <I2CInit+0x100>)
 800128e:	6c12      	ldr	r2, [r2, #64]	; 0x40
 8001290:	f442 0280 	orr.w	r2, r2, #4194304	; 0x400000
 8001294:	641a      	str	r2, [r3, #64]	; 0x40
 8001296:	e00a      	b.n	80012ae <I2CInit+0x4e>
 8001298:	687b      	ldr	r3, [r7, #4]
 800129a:	681a      	ldr	r2, [r3, #0]
 800129c:	4b32      	ldr	r3, [pc, #200]	; (8001368 <I2CInit+0x108>)
 800129e:	429a      	cmp	r2, r3
 80012a0:	d105      	bne.n	80012ae <I2CInit+0x4e>
 80012a2:	4b2f      	ldr	r3, [pc, #188]	; (8001360 <I2CInit+0x100>)
 80012a4:	4a2e      	ldr	r2, [pc, #184]	; (8001360 <I2CInit+0x100>)
 80012a6:	6c12      	ldr	r2, [r2, #64]	; 0x40
 80012a8:	f442 0200 	orr.w	r2, r2, #8388608	; 0x800000
 80012ac:	641a      	str	r2, [r3, #64]	; 0x40
 80012ae:	687b      	ldr	r3, [r7, #4]
 80012b0:	681b      	ldr	r3, [r3, #0]
 80012b2:	687a      	ldr	r2, [r7, #4]
 80012b4:	6812      	ldr	r2, [r2, #0]
 80012b6:	6852      	ldr	r2, [r2, #4]
 80012b8:	f022 023f 	bic.w	r2, r2, #63	; 0x3f
 80012bc:	605a      	str	r2, [r3, #4]
 80012be:	f000 fc37 	bl	8001b30 <rccGetApb1Prescaler>
 80012c2:	4603      	mov	r3, r0
 80012c4:	22a8      	movs	r2, #168	; 0xa8
 80012c6:	fb92 f3f3 	sdiv	r3, r2, r3
 80012ca:	60fb      	str	r3, [r7, #12]
 80012cc:	687b      	ldr	r3, [r7, #4]
 80012ce:	681c      	ldr	r4, [r3, #0]
 80012d0:	687b      	ldr	r3, [r7, #4]
 80012d2:	681b      	ldr	r3, [r3, #0]
 80012d4:	685d      	ldr	r5, [r3, #4]
 80012d6:	f000 fc2b 	bl	8001b30 <rccGetApb1Prescaler>
 80012da:	4603      	mov	r3, r0
 80012dc:	22a8      	movs	r2, #168	; 0xa8
 80012de:	fb92 f3f3 	sdiv	r3, r2, r3
 80012e2:	432b      	orrs	r3, r5
 80012e4:	6063      	str	r3, [r4, #4]
 80012e6:	687b      	ldr	r3, [r7, #4]
 80012e8:	681b      	ldr	r3, [r3, #0]
 80012ea:	687a      	ldr	r2, [r7, #4]
 80012ec:	6812      	ldr	r2, [r2, #0]
 80012ee:	6852      	ldr	r2, [r2, #4]
 80012f0:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 80012f4:	605a      	str	r2, [r3, #4]
 80012f6:	687b      	ldr	r3, [r7, #4]
 80012f8:	681b      	ldr	r3, [r3, #0]
 80012fa:	687a      	ldr	r2, [r7, #4]
 80012fc:	6812      	ldr	r2, [r2, #0]
 80012fe:	69d2      	ldr	r2, [r2, #28]
 8001300:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
 8001304:	61da      	str	r2, [r3, #28]
 8001306:	687b      	ldr	r3, [r7, #4]
 8001308:	681c      	ldr	r4, [r3, #0]
 800130a:	687b      	ldr	r3, [r7, #4]
 800130c:	681b      	ldr	r3, [r3, #0]
 800130e:	69dd      	ldr	r5, [r3, #28]
 8001310:	f000 fc0e 	bl	8001b30 <rccGetApb1Prescaler>
 8001314:	4603      	mov	r3, r0
 8001316:	f64d 22c0 	movw	r2, #56000	; 0xdac0
 800131a:	fb92 f3f3 	sdiv	r3, r2, r3
 800131e:	4a13      	ldr	r2, [pc, #76]	; (800136c <I2CInit+0x10c>)
 8001320:	fb82 1203 	smull	r1, r2, r2, r3
 8001324:	1152      	asrs	r2, r2, #5
 8001326:	17db      	asrs	r3, r3, #31
 8001328:	1ad3      	subs	r3, r2, r3
 800132a:	ee07 3a10 	vmov	s14, r3
 800132e:	eef8 7ac7 	vcvt.f32.s32	s15, s14
 8001332:	eeb0 0a67 	vmov.f32	s0, s15
 8001336:	f007 fa39 	bl	80087ac <ceilf>
 800133a:	eef0 7a40 	vmov.f32	s15, s0
 800133e:	eefc 7ae7 	vcvt.u32.f32	s15, s15
 8001342:	ee17 3a90 	vmov	r3, s15
 8001346:	432b      	orrs	r3, r5
 8001348:	61e3      	str	r3, [r4, #28]
 800134a:	687b      	ldr	r3, [r7, #4]
 800134c:	681b      	ldr	r3, [r3, #0]
 800134e:	220f      	movs	r2, #15
 8001350:	621a      	str	r2, [r3, #32]
 8001352:	bf00      	nop
 8001354:	3710      	adds	r7, #16
 8001356:	46bd      	mov	sp, r7
 8001358:	bdb0      	pop	{r4, r5, r7, pc}
 800135a:	bf00      	nop
 800135c:	40005400 	.word	0x40005400
 8001360:	40023800 	.word	0x40023800
 8001364:	40005800 	.word	0x40005800
 8001368:	40005c00 	.word	0x40005c00
 800136c:	1b4e81b5 	.word	0x1b4e81b5

08001370 <I2CEnable>:
 8001370:	b480      	push	{r7}
 8001372:	b083      	sub	sp, #12
 8001374:	af00      	add	r7, sp, #0
 8001376:	6078      	str	r0, [r7, #4]
 8001378:	687b      	ldr	r3, [r7, #4]
 800137a:	681b      	ldr	r3, [r3, #0]
 800137c:	f043 0201 	orr.w	r2, r3, #1
 8001380:	687b      	ldr	r3, [r7, #4]
 8001382:	601a      	str	r2, [r3, #0]
 8001384:	bf00      	nop
 8001386:	370c      	adds	r7, #12
 8001388:	46bd      	mov	sp, r7
 800138a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800138e:	4770      	bx	lr

08001390 <I2CDisable>:
 8001390:	b480      	push	{r7}
 8001392:	b083      	sub	sp, #12
 8001394:	af00      	add	r7, sp, #0
 8001396:	6078      	str	r0, [r7, #4]
 8001398:	687b      	ldr	r3, [r7, #4]
 800139a:	681b      	ldr	r3, [r3, #0]
 800139c:	f023 0201 	bic.w	r2, r3, #1
 80013a0:	687b      	ldr	r3, [r7, #4]
 80013a2:	601a      	str	r2, [r3, #0]
 80013a4:	370c      	adds	r7, #12
 80013a6:	46bd      	mov	sp, r7
 80013a8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80013ac:	4770      	bx	lr
 80013ae:	bf00      	nop

080013b0 <I2CReset>:
 80013b0:	b580      	push	{r7, lr}
 80013b2:	b084      	sub	sp, #16
 80013b4:	af02      	add	r7, sp, #8
 80013b6:	6078      	str	r0, [r7, #4]
 80013b8:	687b      	ldr	r3, [r7, #4]
 80013ba:	681b      	ldr	r3, [r3, #0]
 80013bc:	4618      	mov	r0, r3
 80013be:	f7ff ffe7 	bl	8001390 <I2CDisable>
 80013c2:	2300      	movs	r3, #0
 80013c4:	9300      	str	r3, [sp, #0]
 80013c6:	4834      	ldr	r0, [pc, #208]	; (8001498 <I2CReset+0xe8>)
 80013c8:	210a      	movs	r1, #10
 80013ca:	2201      	movs	r2, #1
 80013cc:	2301      	movs	r3, #1
 80013ce:	f7ff fe8d 	bl	80010ec <gpioInitPin>
 80013d2:	4831      	ldr	r0, [pc, #196]	; (8001498 <I2CReset+0xe8>)
 80013d4:	210a      	movs	r1, #10
 80013d6:	2201      	movs	r2, #1
 80013d8:	f7ff ff1a 	bl	8001210 <gpioPinSetLevel>
 80013dc:	2300      	movs	r3, #0
 80013de:	9300      	str	r3, [sp, #0]
 80013e0:	482d      	ldr	r0, [pc, #180]	; (8001498 <I2CReset+0xe8>)
 80013e2:	210b      	movs	r1, #11
 80013e4:	2201      	movs	r2, #1
 80013e6:	2301      	movs	r3, #1
 80013e8:	f7ff fe80 	bl	80010ec <gpioInitPin>
 80013ec:	482a      	ldr	r0, [pc, #168]	; (8001498 <I2CReset+0xe8>)
 80013ee:	210b      	movs	r1, #11
 80013f0:	2201      	movs	r2, #1
 80013f2:	f7ff ff0d 	bl	8001210 <gpioPinSetLevel>
 80013f6:	2003      	movs	r0, #3
 80013f8:	f001 fc44 	bl	8002c84 <delayInTenthOfMs>
 80013fc:	4826      	ldr	r0, [pc, #152]	; (8001498 <I2CReset+0xe8>)
 80013fe:	210b      	movs	r1, #11
 8001400:	2200      	movs	r2, #0
 8001402:	f7ff ff05 	bl	8001210 <gpioPinSetLevel>
 8001406:	2003      	movs	r0, #3
 8001408:	f001 fc3c 	bl	8002c84 <delayInTenthOfMs>
 800140c:	4822      	ldr	r0, [pc, #136]	; (8001498 <I2CReset+0xe8>)
 800140e:	210a      	movs	r1, #10
 8001410:	2200      	movs	r2, #0
 8001412:	f7ff fefd 	bl	8001210 <gpioPinSetLevel>
 8001416:	2003      	movs	r0, #3
 8001418:	f001 fc34 	bl	8002c84 <delayInTenthOfMs>
 800141c:	481e      	ldr	r0, [pc, #120]	; (8001498 <I2CReset+0xe8>)
 800141e:	210a      	movs	r1, #10
 8001420:	2201      	movs	r2, #1
 8001422:	f7ff fef5 	bl	8001210 <gpioPinSetLevel>
 8001426:	2003      	movs	r0, #3
 8001428:	f001 fc2c 	bl	8002c84 <delayInTenthOfMs>
 800142c:	481a      	ldr	r0, [pc, #104]	; (8001498 <I2CReset+0xe8>)
 800142e:	210b      	movs	r1, #11
 8001430:	2201      	movs	r2, #1
 8001432:	f7ff feed 	bl	8001210 <gpioPinSetLevel>
 8001436:	2003      	movs	r0, #3
 8001438:	f001 fc24 	bl	8002c84 <delayInTenthOfMs>
 800143c:	4816      	ldr	r0, [pc, #88]	; (8001498 <I2CReset+0xe8>)
 800143e:	210a      	movs	r1, #10
 8001440:	2204      	movs	r2, #4
 8001442:	f7ff fe99 	bl	8001178 <gpioInitPinAf>
 8001446:	4814      	ldr	r0, [pc, #80]	; (8001498 <I2CReset+0xe8>)
 8001448:	210b      	movs	r1, #11
 800144a:	2204      	movs	r2, #4
 800144c:	f7ff fe94 	bl	8001178 <gpioInitPinAf>
 8001450:	687b      	ldr	r3, [r7, #4]
 8001452:	681b      	ldr	r3, [r3, #0]
 8001454:	687a      	ldr	r2, [r7, #4]
 8001456:	6812      	ldr	r2, [r2, #0]
 8001458:	6812      	ldr	r2, [r2, #0]
 800145a:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
 800145e:	601a      	str	r2, [r3, #0]
 8001460:	687b      	ldr	r3, [r7, #4]
 8001462:	681b      	ldr	r3, [r3, #0]
 8001464:	687a      	ldr	r2, [r7, #4]
 8001466:	6812      	ldr	r2, [r2, #0]
 8001468:	6812      	ldr	r2, [r2, #0]
 800146a:	f482 4200 	eor.w	r2, r2, #32768	; 0x8000
 800146e:	601a      	str	r2, [r3, #0]
 8001470:	687b      	ldr	r3, [r7, #4]
 8001472:	681b      	ldr	r3, [r3, #0]
 8001474:	4618      	mov	r0, r3
 8001476:	f7ff ff7b 	bl	8001370 <I2CEnable>
 800147a:	6878      	ldr	r0, [r7, #4]
 800147c:	f7ff fef0 	bl	8001260 <I2CInit>
 8001480:	f001 fbbc 	bl	8002bfc <getLocalTime>
 8001484:	4602      	mov	r2, r0
 8001486:	687b      	ldr	r3, [r7, #4]
 8001488:	609a      	str	r2, [r3, #8]
 800148a:	687b      	ldr	r3, [r7, #4]
 800148c:	2200      	movs	r2, #0
 800148e:	711a      	strb	r2, [r3, #4]
 8001490:	bf00      	nop
 8001492:	3708      	adds	r7, #8
 8001494:	46bd      	mov	sp, r7
 8001496:	bd80      	pop	{r7, pc}
 8001498:	40020400 	.word	0x40020400

0800149c <I2CStop>:
 800149c:	b480      	push	{r7}
 800149e:	b083      	sub	sp, #12
 80014a0:	af00      	add	r7, sp, #0
 80014a2:	6078      	str	r0, [r7, #4]
 80014a4:	687b      	ldr	r3, [r7, #4]
 80014a6:	681b      	ldr	r3, [r3, #0]
 80014a8:	f443 7200 	orr.w	r2, r3, #512	; 0x200
 80014ac:	687b      	ldr	r3, [r7, #4]
 80014ae:	601a      	str	r2, [r3, #0]
 80014b0:	bf00      	nop
 80014b2:	370c      	adds	r7, #12
 80014b4:	46bd      	mov	sp, r7
 80014b6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80014ba:	4770      	bx	lr

080014bc <I2CSetAck>:
 80014bc:	b480      	push	{r7}
 80014be:	b083      	sub	sp, #12
 80014c0:	af00      	add	r7, sp, #0
 80014c2:	6078      	str	r0, [r7, #4]
 80014c4:	687b      	ldr	r3, [r7, #4]
 80014c6:	681b      	ldr	r3, [r3, #0]
 80014c8:	f443 6280 	orr.w	r2, r3, #1024	; 0x400
 80014cc:	687b      	ldr	r3, [r7, #4]
 80014ce:	601a      	str	r2, [r3, #0]
 80014d0:	bf00      	nop
 80014d2:	370c      	adds	r7, #12
 80014d4:	46bd      	mov	sp, r7
 80014d6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80014da:	4770      	bx	lr

080014dc <I2CUnSetAck>:
 80014dc:	b480      	push	{r7}
 80014de:	b083      	sub	sp, #12
 80014e0:	af00      	add	r7, sp, #0
 80014e2:	6078      	str	r0, [r7, #4]
 80014e4:	687b      	ldr	r3, [r7, #4]
 80014e6:	681b      	ldr	r3, [r3, #0]
 80014e8:	f423 6280 	bic.w	r2, r3, #1024	; 0x400
 80014ec:	687b      	ldr	r3, [r7, #4]
 80014ee:	601a      	str	r2, [r3, #0]
 80014f0:	bf00      	nop
 80014f2:	370c      	adds	r7, #12
 80014f4:	46bd      	mov	sp, r7
 80014f6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80014fa:	4770      	bx	lr

080014fc <I2CClearAddrFlag>:
 80014fc:	b480      	push	{r7}
 80014fe:	b083      	sub	sp, #12
 8001500:	af00      	add	r7, sp, #0
 8001502:	6078      	str	r0, [r7, #4]
 8001504:	687b      	ldr	r3, [r7, #4]
 8001506:	699b      	ldr	r3, [r3, #24]
 8001508:	bf00      	nop
 800150a:	370c      	adds	r7, #12
 800150c:	46bd      	mov	sp, r7
 800150e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001512:	4770      	bx	lr

08001514 <I2CSetPOS>:
 8001514:	b480      	push	{r7}
 8001516:	b083      	sub	sp, #12
 8001518:	af00      	add	r7, sp, #0
 800151a:	6078      	str	r0, [r7, #4]
 800151c:	687b      	ldr	r3, [r7, #4]
 800151e:	681b      	ldr	r3, [r3, #0]
 8001520:	f443 6200 	orr.w	r2, r3, #2048	; 0x800
 8001524:	687b      	ldr	r3, [r7, #4]
 8001526:	601a      	str	r2, [r3, #0]
 8001528:	bf00      	nop
 800152a:	370c      	adds	r7, #12
 800152c:	46bd      	mov	sp, r7
 800152e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001532:	4770      	bx	lr

08001534 <I2CUnSetPOS>:
 8001534:	b480      	push	{r7}
 8001536:	b083      	sub	sp, #12
 8001538:	af00      	add	r7, sp, #0
 800153a:	6078      	str	r0, [r7, #4]
 800153c:	687b      	ldr	r3, [r7, #4]
 800153e:	681b      	ldr	r3, [r3, #0]
 8001540:	f423 6200 	bic.w	r2, r3, #2048	; 0x800
 8001544:	687b      	ldr	r3, [r7, #4]
 8001546:	601a      	str	r2, [r3, #0]
 8001548:	bf00      	nop
 800154a:	370c      	adds	r7, #12
 800154c:	46bd      	mov	sp, r7
 800154e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001552:	4770      	bx	lr

08001554 <I2CReadDR>:
 8001554:	b480      	push	{r7}
 8001556:	b083      	sub	sp, #12
 8001558:	af00      	add	r7, sp, #0
 800155a:	6078      	str	r0, [r7, #4]
 800155c:	6039      	str	r1, [r7, #0]
 800155e:	687b      	ldr	r3, [r7, #4]
 8001560:	691b      	ldr	r3, [r3, #16]
 8001562:	b2da      	uxtb	r2, r3
 8001564:	683b      	ldr	r3, [r7, #0]
 8001566:	701a      	strb	r2, [r3, #0]
 8001568:	bf00      	nop
 800156a:	370c      	adds	r7, #12
 800156c:	46bd      	mov	sp, r7
 800156e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001572:	4770      	bx	lr

08001574 <I2CStart>:
 8001574:	b580      	push	{r7, lr}
 8001576:	b084      	sub	sp, #16
 8001578:	af00      	add	r7, sp, #0
 800157a:	6078      	str	r0, [r7, #4]
 800157c:	f001 fb3e 	bl	8002bfc <getLocalTime>
 8001580:	60f8      	str	r0, [r7, #12]
 8001582:	687b      	ldr	r3, [r7, #4]
 8001584:	681b      	ldr	r3, [r3, #0]
 8001586:	687a      	ldr	r2, [r7, #4]
 8001588:	6812      	ldr	r2, [r2, #0]
 800158a:	6812      	ldr	r2, [r2, #0]
 800158c:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 8001590:	601a      	str	r2, [r3, #0]
 8001592:	e022      	b.n	80015da <I2CStart+0x66>
 8001594:	687b      	ldr	r3, [r7, #4]
 8001596:	791b      	ldrb	r3, [r3, #4]
 8001598:	2b00      	cmp	r3, #0
 800159a:	d00a      	beq.n	80015b2 <I2CStart+0x3e>
 800159c:	4b16      	ldr	r3, [pc, #88]	; (80015f8 <I2CStart+0x84>)
 800159e:	681b      	ldr	r3, [r3, #0]
 80015a0:	4618      	mov	r0, r3
 80015a2:	f7ff ff7b 	bl	800149c <I2CStop>
 80015a6:	4814      	ldr	r0, [pc, #80]	; (80015f8 <I2CStart+0x84>)
 80015a8:	f000 f8e0 	bl	800176c <I2CWaitForStopToBeCleared>
 80015ac:	687b      	ldr	r3, [r7, #4]
 80015ae:	791b      	ldrb	r3, [r3, #4]
 80015b0:	e01e      	b.n	80015f0 <I2CStart+0x7c>
 80015b2:	68f8      	ldr	r0, [r7, #12]
 80015b4:	210a      	movs	r1, #10
 80015b6:	f001 fb51 	bl	8002c5c <checkTimeout>
 80015ba:	4603      	mov	r3, r0
 80015bc:	2b00      	cmp	r3, #0
 80015be:	d00c      	beq.n	80015da <I2CStart+0x66>
 80015c0:	4b0d      	ldr	r3, [pc, #52]	; (80015f8 <I2CStart+0x84>)
 80015c2:	681b      	ldr	r3, [r3, #0]
 80015c4:	4618      	mov	r0, r3
 80015c6:	f7ff ff69 	bl	800149c <I2CStop>
 80015ca:	480b      	ldr	r0, [pc, #44]	; (80015f8 <I2CStart+0x84>)
 80015cc:	f000 f8ce 	bl	800176c <I2CWaitForStopToBeCleared>
 80015d0:	687b      	ldr	r3, [r7, #4]
 80015d2:	2202      	movs	r2, #2
 80015d4:	711a      	strb	r2, [r3, #4]
 80015d6:	2302      	movs	r3, #2
 80015d8:	e00a      	b.n	80015f0 <I2CStart+0x7c>
 80015da:	687b      	ldr	r3, [r7, #4]
 80015dc:	681b      	ldr	r3, [r3, #0]
 80015de:	695b      	ldr	r3, [r3, #20]
 80015e0:	f003 0301 	and.w	r3, r3, #1
 80015e4:	2b00      	cmp	r3, #0
 80015e6:	d0d5      	beq.n	8001594 <I2CStart+0x20>
 80015e8:	687b      	ldr	r3, [r7, #4]
 80015ea:	681b      	ldr	r3, [r3, #0]
 80015ec:	695b      	ldr	r3, [r3, #20]
 80015ee:	2300      	movs	r3, #0
 80015f0:	4618      	mov	r0, r3
 80015f2:	3710      	adds	r7, #16
 80015f4:	46bd      	mov	sp, r7
 80015f6:	bd80      	pop	{r7, pc}
 80015f8:	20014d90 	.word	0x20014d90

080015fc <I2CSendAddr>:
 80015fc:	b580      	push	{r7, lr}
 80015fe:	b084      	sub	sp, #16
 8001600:	af00      	add	r7, sp, #0
 8001602:	6078      	str	r0, [r7, #4]
 8001604:	4613      	mov	r3, r2
 8001606:	460a      	mov	r2, r1
 8001608:	70fa      	strb	r2, [r7, #3]
 800160a:	70bb      	strb	r3, [r7, #2]
 800160c:	f001 faf6 	bl	8002bfc <getLocalTime>
 8001610:	60f8      	str	r0, [r7, #12]
 8001612:	687b      	ldr	r3, [r7, #4]
 8001614:	681b      	ldr	r3, [r3, #0]
 8001616:	78fa      	ldrb	r2, [r7, #3]
 8001618:	0051      	lsls	r1, r2, #1
 800161a:	78ba      	ldrb	r2, [r7, #2]
 800161c:	430a      	orrs	r2, r1
 800161e:	611a      	str	r2, [r3, #16]
 8001620:	e022      	b.n	8001668 <I2CSendAddr+0x6c>
 8001622:	687b      	ldr	r3, [r7, #4]
 8001624:	791b      	ldrb	r3, [r3, #4]
 8001626:	2b00      	cmp	r3, #0
 8001628:	d00a      	beq.n	8001640 <I2CSendAddr+0x44>
 800162a:	4b15      	ldr	r3, [pc, #84]	; (8001680 <I2CSendAddr+0x84>)
 800162c:	681b      	ldr	r3, [r3, #0]
 800162e:	4618      	mov	r0, r3
 8001630:	f7ff ff34 	bl	800149c <I2CStop>
 8001634:	4812      	ldr	r0, [pc, #72]	; (8001680 <I2CSendAddr+0x84>)
 8001636:	f000 f899 	bl	800176c <I2CWaitForStopToBeCleared>
 800163a:	687b      	ldr	r3, [r7, #4]
 800163c:	791b      	ldrb	r3, [r3, #4]
 800163e:	e01b      	b.n	8001678 <I2CSendAddr+0x7c>
 8001640:	68f8      	ldr	r0, [r7, #12]
 8001642:	210a      	movs	r1, #10
 8001644:	f001 fb0a 	bl	8002c5c <checkTimeout>
 8001648:	4603      	mov	r3, r0
 800164a:	2b00      	cmp	r3, #0
 800164c:	d00c      	beq.n	8001668 <I2CSendAddr+0x6c>
 800164e:	4b0c      	ldr	r3, [pc, #48]	; (8001680 <I2CSendAddr+0x84>)
 8001650:	681b      	ldr	r3, [r3, #0]
 8001652:	4618      	mov	r0, r3
 8001654:	f7ff ff22 	bl	800149c <I2CStop>
 8001658:	4809      	ldr	r0, [pc, #36]	; (8001680 <I2CSendAddr+0x84>)
 800165a:	f000 f887 	bl	800176c <I2CWaitForStopToBeCleared>
 800165e:	687b      	ldr	r3, [r7, #4]
 8001660:	2202      	movs	r2, #2
 8001662:	711a      	strb	r2, [r3, #4]
 8001664:	2302      	movs	r3, #2
 8001666:	e007      	b.n	8001678 <I2CSendAddr+0x7c>
 8001668:	687b      	ldr	r3, [r7, #4]
 800166a:	681b      	ldr	r3, [r3, #0]
 800166c:	695b      	ldr	r3, [r3, #20]
 800166e:	f003 0302 	and.w	r3, r3, #2
 8001672:	2b00      	cmp	r3, #0
 8001674:	d0d5      	beq.n	8001622 <I2CSendAddr+0x26>
 8001676:	2300      	movs	r3, #0
 8001678:	4618      	mov	r0, r3
 800167a:	3710      	adds	r7, #16
 800167c:	46bd      	mov	sp, r7
 800167e:	bd80      	pop	{r7, pc}
 8001680:	20014d90 	.word	0x20014d90

08001684 <I2CWaitForByte>:
 8001684:	b580      	push	{r7, lr}
 8001686:	b084      	sub	sp, #16
 8001688:	af00      	add	r7, sp, #0
 800168a:	6078      	str	r0, [r7, #4]
 800168c:	f001 fab6 	bl	8002bfc <getLocalTime>
 8001690:	60f8      	str	r0, [r7, #12]
 8001692:	e022      	b.n	80016da <I2CWaitForByte+0x56>
 8001694:	687b      	ldr	r3, [r7, #4]
 8001696:	791b      	ldrb	r3, [r3, #4]
 8001698:	2b00      	cmp	r3, #0
 800169a:	d00a      	beq.n	80016b2 <I2CWaitForByte+0x2e>
 800169c:	4b15      	ldr	r3, [pc, #84]	; (80016f4 <I2CWaitForByte+0x70>)
 800169e:	681b      	ldr	r3, [r3, #0]
 80016a0:	4618      	mov	r0, r3
 80016a2:	f7ff fefb 	bl	800149c <I2CStop>
 80016a6:	4813      	ldr	r0, [pc, #76]	; (80016f4 <I2CWaitForByte+0x70>)
 80016a8:	f000 f860 	bl	800176c <I2CWaitForStopToBeCleared>
 80016ac:	687b      	ldr	r3, [r7, #4]
 80016ae:	791b      	ldrb	r3, [r3, #4]
 80016b0:	e01b      	b.n	80016ea <I2CWaitForByte+0x66>
 80016b2:	68f8      	ldr	r0, [r7, #12]
 80016b4:	210a      	movs	r1, #10
 80016b6:	f001 fad1 	bl	8002c5c <checkTimeout>
 80016ba:	4603      	mov	r3, r0
 80016bc:	2b00      	cmp	r3, #0
 80016be:	d00c      	beq.n	80016da <I2CWaitForByte+0x56>
 80016c0:	4b0c      	ldr	r3, [pc, #48]	; (80016f4 <I2CWaitForByte+0x70>)
 80016c2:	681b      	ldr	r3, [r3, #0]
 80016c4:	4618      	mov	r0, r3
 80016c6:	f7ff fee9 	bl	800149c <I2CStop>
 80016ca:	480a      	ldr	r0, [pc, #40]	; (80016f4 <I2CWaitForByte+0x70>)
 80016cc:	f000 f84e 	bl	800176c <I2CWaitForStopToBeCleared>
 80016d0:	687b      	ldr	r3, [r7, #4]
 80016d2:	2202      	movs	r2, #2
 80016d4:	711a      	strb	r2, [r3, #4]
 80016d6:	2302      	movs	r3, #2
 80016d8:	e007      	b.n	80016ea <I2CWaitForByte+0x66>
 80016da:	687b      	ldr	r3, [r7, #4]
 80016dc:	681b      	ldr	r3, [r3, #0]
 80016de:	695b      	ldr	r3, [r3, #20]
 80016e0:	f003 0340 	and.w	r3, r3, #64	; 0x40
 80016e4:	2b00      	cmp	r3, #0
 80016e6:	d0d5      	beq.n	8001694 <I2CWaitForByte+0x10>
 80016e8:	2300      	movs	r3, #0
 80016ea:	4618      	mov	r0, r3
 80016ec:	3710      	adds	r7, #16
 80016ee:	46bd      	mov	sp, r7
 80016f0:	bd80      	pop	{r7, pc}
 80016f2:	bf00      	nop
 80016f4:	20014d90 	.word	0x20014d90

080016f8 <I2CWaitForBTF>:
 80016f8:	b580      	push	{r7, lr}
 80016fa:	b084      	sub	sp, #16
 80016fc:	af00      	add	r7, sp, #0
 80016fe:	6078      	str	r0, [r7, #4]
 8001700:	f001 fa7c 	bl	8002bfc <getLocalTime>
 8001704:	60f8      	str	r0, [r7, #12]
 8001706:	e022      	b.n	800174e <I2CWaitForBTF+0x56>
 8001708:	687b      	ldr	r3, [r7, #4]
 800170a:	791b      	ldrb	r3, [r3, #4]
 800170c:	2b00      	cmp	r3, #0
 800170e:	d00a      	beq.n	8001726 <I2CWaitForBTF+0x2e>
 8001710:	4b15      	ldr	r3, [pc, #84]	; (8001768 <I2CWaitForBTF+0x70>)
 8001712:	681b      	ldr	r3, [r3, #0]
 8001714:	4618      	mov	r0, r3
 8001716:	f7ff fec1 	bl	800149c <I2CStop>
 800171a:	4813      	ldr	r0, [pc, #76]	; (8001768 <I2CWaitForBTF+0x70>)
 800171c:	f000 f826 	bl	800176c <I2CWaitForStopToBeCleared>
 8001720:	687b      	ldr	r3, [r7, #4]
 8001722:	791b      	ldrb	r3, [r3, #4]
 8001724:	e01b      	b.n	800175e <I2CWaitForBTF+0x66>
 8001726:	68f8      	ldr	r0, [r7, #12]
 8001728:	210a      	movs	r1, #10
 800172a:	f001 fa97 	bl	8002c5c <checkTimeout>
 800172e:	4603      	mov	r3, r0
 8001730:	2b00      	cmp	r3, #0
 8001732:	d00c      	beq.n	800174e <I2CWaitForBTF+0x56>
 8001734:	4b0c      	ldr	r3, [pc, #48]	; (8001768 <I2CWaitForBTF+0x70>)
 8001736:	681b      	ldr	r3, [r3, #0]
 8001738:	4618      	mov	r0, r3
 800173a:	f7ff feaf 	bl	800149c <I2CStop>
 800173e:	480a      	ldr	r0, [pc, #40]	; (8001768 <I2CWaitForBTF+0x70>)
 8001740:	f000 f814 	bl	800176c <I2CWaitForStopToBeCleared>
 8001744:	687b      	ldr	r3, [r7, #4]
 8001746:	2202      	movs	r2, #2
 8001748:	711a      	strb	r2, [r3, #4]
 800174a:	2302      	movs	r3, #2
 800174c:	e007      	b.n	800175e <I2CWaitForBTF+0x66>
 800174e:	687b      	ldr	r3, [r7, #4]
 8001750:	681b      	ldr	r3, [r3, #0]
 8001752:	695b      	ldr	r3, [r3, #20]
 8001754:	f003 0304 	and.w	r3, r3, #4
 8001758:	2b00      	cmp	r3, #0
 800175a:	d0d5      	beq.n	8001708 <I2CWaitForBTF+0x10>
 800175c:	2300      	movs	r3, #0
 800175e:	4618      	mov	r0, r3
 8001760:	3710      	adds	r7, #16
 8001762:	46bd      	mov	sp, r7
 8001764:	bd80      	pop	{r7, pc}
 8001766:	bf00      	nop
 8001768:	20014d90 	.word	0x20014d90

0800176c <I2CWaitForStopToBeCleared>:
 800176c:	b580      	push	{r7, lr}
 800176e:	b084      	sub	sp, #16
 8001770:	af00      	add	r7, sp, #0
 8001772:	6078      	str	r0, [r7, #4]
 8001774:	f001 fa42 	bl	8002bfc <getLocalTime>
 8001778:	60f8      	str	r0, [r7, #12]
 800177a:	e012      	b.n	80017a2 <I2CWaitForStopToBeCleared+0x36>
 800177c:	687b      	ldr	r3, [r7, #4]
 800177e:	791b      	ldrb	r3, [r3, #4]
 8001780:	2b00      	cmp	r3, #0
 8001782:	d002      	beq.n	800178a <I2CWaitForStopToBeCleared+0x1e>
 8001784:	687b      	ldr	r3, [r7, #4]
 8001786:	791b      	ldrb	r3, [r3, #4]
 8001788:	e013      	b.n	80017b2 <I2CWaitForStopToBeCleared+0x46>
 800178a:	68f8      	ldr	r0, [r7, #12]
 800178c:	210a      	movs	r1, #10
 800178e:	f001 fa65 	bl	8002c5c <checkTimeout>
 8001792:	4603      	mov	r3, r0
 8001794:	2b00      	cmp	r3, #0
 8001796:	d004      	beq.n	80017a2 <I2CWaitForStopToBeCleared+0x36>
 8001798:	687b      	ldr	r3, [r7, #4]
 800179a:	2202      	movs	r2, #2
 800179c:	711a      	strb	r2, [r3, #4]
 800179e:	2302      	movs	r3, #2
 80017a0:	e007      	b.n	80017b2 <I2CWaitForStopToBeCleared+0x46>
 80017a2:	687b      	ldr	r3, [r7, #4]
 80017a4:	681b      	ldr	r3, [r3, #0]
 80017a6:	681b      	ldr	r3, [r3, #0]
 80017a8:	f403 7300 	and.w	r3, r3, #512	; 0x200
 80017ac:	2b00      	cmp	r3, #0
 80017ae:	d1e5      	bne.n	800177c <I2CWaitForStopToBeCleared+0x10>
 80017b0:	2300      	movs	r3, #0
 80017b2:	4618      	mov	r0, r3
 80017b4:	3710      	adds	r7, #16
 80017b6:	46bd      	mov	sp, r7
 80017b8:	bd80      	pop	{r7, pc}
 80017ba:	bf00      	nop

080017bc <I2CWaitBusyLine>:
 80017bc:	b580      	push	{r7, lr}
 80017be:	b084      	sub	sp, #16
 80017c0:	af00      	add	r7, sp, #0
 80017c2:	6078      	str	r0, [r7, #4]
 80017c4:	f001 fa1a 	bl	8002bfc <getLocalTime>
 80017c8:	60f8      	str	r0, [r7, #12]
 80017ca:	e022      	b.n	8001812 <I2CWaitBusyLine+0x56>
 80017cc:	687b      	ldr	r3, [r7, #4]
 80017ce:	791b      	ldrb	r3, [r3, #4]
 80017d0:	2b00      	cmp	r3, #0
 80017d2:	d00a      	beq.n	80017ea <I2CWaitBusyLine+0x2e>
 80017d4:	4b15      	ldr	r3, [pc, #84]	; (800182c <I2CWaitBusyLine+0x70>)
 80017d6:	681b      	ldr	r3, [r3, #0]
 80017d8:	4618      	mov	r0, r3
 80017da:	f7ff fe5f 	bl	800149c <I2CStop>
 80017de:	4813      	ldr	r0, [pc, #76]	; (800182c <I2CWaitBusyLine+0x70>)
 80017e0:	f7ff ffc4 	bl	800176c <I2CWaitForStopToBeCleared>
 80017e4:	687b      	ldr	r3, [r7, #4]
 80017e6:	791b      	ldrb	r3, [r3, #4]
 80017e8:	e01b      	b.n	8001822 <I2CWaitBusyLine+0x66>
 80017ea:	68f8      	ldr	r0, [r7, #12]
 80017ec:	210a      	movs	r1, #10
 80017ee:	f001 fa35 	bl	8002c5c <checkTimeout>
 80017f2:	4603      	mov	r3, r0
 80017f4:	2b00      	cmp	r3, #0
 80017f6:	d00c      	beq.n	8001812 <I2CWaitBusyLine+0x56>
 80017f8:	4b0c      	ldr	r3, [pc, #48]	; (800182c <I2CWaitBusyLine+0x70>)
 80017fa:	681b      	ldr	r3, [r3, #0]
 80017fc:	4618      	mov	r0, r3
 80017fe:	f7ff fe4d 	bl	800149c <I2CStop>
 8001802:	480a      	ldr	r0, [pc, #40]	; (800182c <I2CWaitBusyLine+0x70>)
 8001804:	f7ff ffb2 	bl	800176c <I2CWaitForStopToBeCleared>
 8001808:	687b      	ldr	r3, [r7, #4]
 800180a:	2202      	movs	r2, #2
 800180c:	711a      	strb	r2, [r3, #4]
 800180e:	2302      	movs	r3, #2
 8001810:	e007      	b.n	8001822 <I2CWaitBusyLine+0x66>
 8001812:	687b      	ldr	r3, [r7, #4]
 8001814:	681b      	ldr	r3, [r3, #0]
 8001816:	699b      	ldr	r3, [r3, #24]
 8001818:	f003 0302 	and.w	r3, r3, #2
 800181c:	2b00      	cmp	r3, #0
 800181e:	d1d5      	bne.n	80017cc <I2CWaitBusyLine+0x10>
 8001820:	2300      	movs	r3, #0
 8001822:	4618      	mov	r0, r3
 8001824:	3710      	adds	r7, #16
 8001826:	46bd      	mov	sp, r7
 8001828:	bd80      	pop	{r7, pc}
 800182a:	bf00      	nop
 800182c:	20014d90 	.word	0x20014d90

08001830 <I2CSendBytes>:
 8001830:	b580      	push	{r7, lr}
 8001832:	b086      	sub	sp, #24
 8001834:	af00      	add	r7, sp, #0
 8001836:	60f8      	str	r0, [r7, #12]
 8001838:	60b9      	str	r1, [r7, #8]
 800183a:	607a      	str	r2, [r7, #4]
 800183c:	70fb      	strb	r3, [r7, #3]
 800183e:	68bb      	ldr	r3, [r7, #8]
 8001840:	617b      	str	r3, [r7, #20]
 8001842:	68f8      	ldr	r0, [r7, #12]
 8001844:	f7ff ffba 	bl	80017bc <I2CWaitBusyLine>
 8001848:	4603      	mov	r3, r0
 800184a:	2b00      	cmp	r3, #0
 800184c:	d001      	beq.n	8001852 <I2CSendBytes+0x22>
 800184e:	2300      	movs	r3, #0
 8001850:	e03f      	b.n	80018d2 <I2CSendBytes+0xa2>
 8001852:	68f8      	ldr	r0, [r7, #12]
 8001854:	f7ff fe8e 	bl	8001574 <I2CStart>
 8001858:	4603      	mov	r3, r0
 800185a:	2b00      	cmp	r3, #0
 800185c:	d001      	beq.n	8001862 <I2CSendBytes+0x32>
 800185e:	2300      	movs	r3, #0
 8001860:	e037      	b.n	80018d2 <I2CSendBytes+0xa2>
 8001862:	78fb      	ldrb	r3, [r7, #3]
 8001864:	68f8      	ldr	r0, [r7, #12]
 8001866:	4619      	mov	r1, r3
 8001868:	2200      	movs	r2, #0
 800186a:	f7ff fec7 	bl	80015fc <I2CSendAddr>
 800186e:	4603      	mov	r3, r0
 8001870:	2b00      	cmp	r3, #0
 8001872:	d001      	beq.n	8001878 <I2CSendBytes+0x48>
 8001874:	2300      	movs	r3, #0
 8001876:	e02c      	b.n	80018d2 <I2CSendBytes+0xa2>
 8001878:	68fb      	ldr	r3, [r7, #12]
 800187a:	681b      	ldr	r3, [r3, #0]
 800187c:	4618      	mov	r0, r3
 800187e:	f7ff fe3d 	bl	80014fc <I2CClearAddrFlag>
 8001882:	e015      	b.n	80018b0 <I2CSendBytes+0x80>
 8001884:	68fb      	ldr	r3, [r7, #12]
 8001886:	681b      	ldr	r3, [r3, #0]
 8001888:	697a      	ldr	r2, [r7, #20]
 800188a:	7812      	ldrb	r2, [r2, #0]
 800188c:	611a      	str	r2, [r3, #16]
 800188e:	68f8      	ldr	r0, [r7, #12]
 8001890:	f7ff ff32 	bl	80016f8 <I2CWaitForBTF>
 8001894:	4603      	mov	r3, r0
 8001896:	2b00      	cmp	r3, #0
 8001898:	d001      	beq.n	800189e <I2CSendBytes+0x6e>
 800189a:	2300      	movs	r3, #0
 800189c:	e019      	b.n	80018d2 <I2CSendBytes+0xa2>
 800189e:	68fb      	ldr	r3, [r7, #12]
 80018a0:	681b      	ldr	r3, [r3, #0]
 80018a2:	695b      	ldr	r3, [r3, #20]
 80018a4:	697b      	ldr	r3, [r7, #20]
 80018a6:	3301      	adds	r3, #1
 80018a8:	617b      	str	r3, [r7, #20]
 80018aa:	687b      	ldr	r3, [r7, #4]
 80018ac:	3b01      	subs	r3, #1
 80018ae:	607b      	str	r3, [r7, #4]
 80018b0:	687b      	ldr	r3, [r7, #4]
 80018b2:	2b00      	cmp	r3, #0
 80018b4:	d1e6      	bne.n	8001884 <I2CSendBytes+0x54>
 80018b6:	68fb      	ldr	r3, [r7, #12]
 80018b8:	681b      	ldr	r3, [r3, #0]
 80018ba:	4618      	mov	r0, r3
 80018bc:	f7ff fdee 	bl	800149c <I2CStop>
 80018c0:	68f8      	ldr	r0, [r7, #12]
 80018c2:	f7ff ff53 	bl	800176c <I2CWaitForStopToBeCleared>
 80018c6:	4603      	mov	r3, r0
 80018c8:	2b00      	cmp	r3, #0
 80018ca:	d001      	beq.n	80018d0 <I2CSendBytes+0xa0>
 80018cc:	2300      	movs	r3, #0
 80018ce:	e000      	b.n	80018d2 <I2CSendBytes+0xa2>
 80018d0:	2301      	movs	r3, #1
 80018d2:	4618      	mov	r0, r3
 80018d4:	3718      	adds	r7, #24
 80018d6:	46bd      	mov	sp, r7
 80018d8:	bd80      	pop	{r7, pc}
 80018da:	bf00      	nop

080018dc <I2CReadBytes>:
 80018dc:	b580      	push	{r7, lr}
 80018de:	b086      	sub	sp, #24
 80018e0:	af00      	add	r7, sp, #0
 80018e2:	60f8      	str	r0, [r7, #12]
 80018e4:	60b9      	str	r1, [r7, #8]
 80018e6:	607a      	str	r2, [r7, #4]
 80018e8:	70fb      	strb	r3, [r7, #3]
 80018ea:	68bb      	ldr	r3, [r7, #8]
 80018ec:	617b      	str	r3, [r7, #20]
 80018ee:	68f8      	ldr	r0, [r7, #12]
 80018f0:	f7ff ff64 	bl	80017bc <I2CWaitBusyLine>
 80018f4:	4603      	mov	r3, r0
 80018f6:	2b00      	cmp	r3, #0
 80018f8:	d001      	beq.n	80018fe <I2CReadBytes+0x22>
 80018fa:	2300      	movs	r3, #0
 80018fc:	e114      	b.n	8001b28 <I2CReadBytes+0x24c>
 80018fe:	687b      	ldr	r3, [r7, #4]
 8001900:	2b01      	cmp	r3, #1
 8001902:	d13e      	bne.n	8001982 <I2CReadBytes+0xa6>
 8001904:	68f8      	ldr	r0, [r7, #12]
 8001906:	f7ff fe35 	bl	8001574 <I2CStart>
 800190a:	4603      	mov	r3, r0
 800190c:	2b00      	cmp	r3, #0
 800190e:	d001      	beq.n	8001914 <I2CReadBytes+0x38>
 8001910:	2300      	movs	r3, #0
 8001912:	e109      	b.n	8001b28 <I2CReadBytes+0x24c>
 8001914:	78fb      	ldrb	r3, [r7, #3]
 8001916:	68f8      	ldr	r0, [r7, #12]
 8001918:	4619      	mov	r1, r3
 800191a:	2201      	movs	r2, #1
 800191c:	f7ff fe6e 	bl	80015fc <I2CSendAddr>
 8001920:	4603      	mov	r3, r0
 8001922:	2b00      	cmp	r3, #0
 8001924:	d001      	beq.n	800192a <I2CReadBytes+0x4e>
 8001926:	2300      	movs	r3, #0
 8001928:	e0fe      	b.n	8001b28 <I2CReadBytes+0x24c>
 800192a:	68fb      	ldr	r3, [r7, #12]
 800192c:	681b      	ldr	r3, [r3, #0]
 800192e:	4618      	mov	r0, r3
 8001930:	f7ff fdd4 	bl	80014dc <I2CUnSetAck>
 8001934:	68fb      	ldr	r3, [r7, #12]
 8001936:	681b      	ldr	r3, [r3, #0]
 8001938:	4618      	mov	r0, r3
 800193a:	f7ff fddf 	bl	80014fc <I2CClearAddrFlag>
 800193e:	68fb      	ldr	r3, [r7, #12]
 8001940:	681b      	ldr	r3, [r3, #0]
 8001942:	4618      	mov	r0, r3
 8001944:	f7ff fdaa 	bl	800149c <I2CStop>
 8001948:	68f8      	ldr	r0, [r7, #12]
 800194a:	f7ff fe9b 	bl	8001684 <I2CWaitForByte>
 800194e:	4603      	mov	r3, r0
 8001950:	2b00      	cmp	r3, #0
 8001952:	d001      	beq.n	8001958 <I2CReadBytes+0x7c>
 8001954:	2300      	movs	r3, #0
 8001956:	e0e7      	b.n	8001b28 <I2CReadBytes+0x24c>
 8001958:	68fb      	ldr	r3, [r7, #12]
 800195a:	681b      	ldr	r3, [r3, #0]
 800195c:	4618      	mov	r0, r3
 800195e:	6979      	ldr	r1, [r7, #20]
 8001960:	f7ff fdf8 	bl	8001554 <I2CReadDR>
 8001964:	68f8      	ldr	r0, [r7, #12]
 8001966:	f7ff ff01 	bl	800176c <I2CWaitForStopToBeCleared>
 800196a:	4603      	mov	r3, r0
 800196c:	2b00      	cmp	r3, #0
 800196e:	d001      	beq.n	8001974 <I2CReadBytes+0x98>
 8001970:	2300      	movs	r3, #0
 8001972:	e0d9      	b.n	8001b28 <I2CReadBytes+0x24c>
 8001974:	68fb      	ldr	r3, [r7, #12]
 8001976:	681b      	ldr	r3, [r3, #0]
 8001978:	4618      	mov	r0, r3
 800197a:	f7ff fd9f 	bl	80014bc <I2CSetAck>
 800197e:	2301      	movs	r3, #1
 8001980:	e0d2      	b.n	8001b28 <I2CReadBytes+0x24c>
 8001982:	687b      	ldr	r3, [r7, #4]
 8001984:	2b02      	cmp	r3, #2
 8001986:	d157      	bne.n	8001a38 <I2CReadBytes+0x15c>
 8001988:	68fb      	ldr	r3, [r7, #12]
 800198a:	681b      	ldr	r3, [r3, #0]
 800198c:	4618      	mov	r0, r3
 800198e:	f7ff fd95 	bl	80014bc <I2CSetAck>
 8001992:	68fb      	ldr	r3, [r7, #12]
 8001994:	681b      	ldr	r3, [r3, #0]
 8001996:	4618      	mov	r0, r3
 8001998:	f7ff fdbc 	bl	8001514 <I2CSetPOS>
 800199c:	68f8      	ldr	r0, [r7, #12]
 800199e:	f7ff fde9 	bl	8001574 <I2CStart>
 80019a2:	4603      	mov	r3, r0
 80019a4:	2b01      	cmp	r3, #1
 80019a6:	d001      	beq.n	80019ac <I2CReadBytes+0xd0>
 80019a8:	2300      	movs	r3, #0
 80019aa:	e0bd      	b.n	8001b28 <I2CReadBytes+0x24c>
 80019ac:	78fb      	ldrb	r3, [r7, #3]
 80019ae:	68f8      	ldr	r0, [r7, #12]
 80019b0:	4619      	mov	r1, r3
 80019b2:	2201      	movs	r2, #1
 80019b4:	f7ff fe22 	bl	80015fc <I2CSendAddr>
 80019b8:	4603      	mov	r3, r0
 80019ba:	2b00      	cmp	r3, #0
 80019bc:	d001      	beq.n	80019c2 <I2CReadBytes+0xe6>
 80019be:	2300      	movs	r3, #0
 80019c0:	e0b2      	b.n	8001b28 <I2CReadBytes+0x24c>
 80019c2:	68fb      	ldr	r3, [r7, #12]
 80019c4:	681b      	ldr	r3, [r3, #0]
 80019c6:	4618      	mov	r0, r3
 80019c8:	f7ff fd98 	bl	80014fc <I2CClearAddrFlag>
 80019cc:	68fb      	ldr	r3, [r7, #12]
 80019ce:	681b      	ldr	r3, [r3, #0]
 80019d0:	4618      	mov	r0, r3
 80019d2:	f7ff fd83 	bl	80014dc <I2CUnSetAck>
 80019d6:	68f8      	ldr	r0, [r7, #12]
 80019d8:	f7ff fe8e 	bl	80016f8 <I2CWaitForBTF>
 80019dc:	4603      	mov	r3, r0
 80019de:	2b00      	cmp	r3, #0
 80019e0:	d001      	beq.n	80019e6 <I2CReadBytes+0x10a>
 80019e2:	2300      	movs	r3, #0
 80019e4:	e0a0      	b.n	8001b28 <I2CReadBytes+0x24c>
 80019e6:	b672      	cpsid	i
 80019e8:	68fb      	ldr	r3, [r7, #12]
 80019ea:	681b      	ldr	r3, [r3, #0]
 80019ec:	4618      	mov	r0, r3
 80019ee:	f7ff fd55 	bl	800149c <I2CStop>
 80019f2:	68fb      	ldr	r3, [r7, #12]
 80019f4:	681b      	ldr	r3, [r3, #0]
 80019f6:	4618      	mov	r0, r3
 80019f8:	6979      	ldr	r1, [r7, #20]
 80019fa:	f7ff fdab 	bl	8001554 <I2CReadDR>
 80019fe:	b662      	cpsie	i
 8001a00:	697b      	ldr	r3, [r7, #20]
 8001a02:	3301      	adds	r3, #1
 8001a04:	617b      	str	r3, [r7, #20]
 8001a06:	68fb      	ldr	r3, [r7, #12]
 8001a08:	681b      	ldr	r3, [r3, #0]
 8001a0a:	4618      	mov	r0, r3
 8001a0c:	6979      	ldr	r1, [r7, #20]
 8001a0e:	f7ff fda1 	bl	8001554 <I2CReadDR>
 8001a12:	68f8      	ldr	r0, [r7, #12]
 8001a14:	f7ff feaa 	bl	800176c <I2CWaitForStopToBeCleared>
 8001a18:	4603      	mov	r3, r0
 8001a1a:	2b00      	cmp	r3, #0
 8001a1c:	d001      	beq.n	8001a22 <I2CReadBytes+0x146>
 8001a1e:	2300      	movs	r3, #0
 8001a20:	e082      	b.n	8001b28 <I2CReadBytes+0x24c>
 8001a22:	68fb      	ldr	r3, [r7, #12]
 8001a24:	681b      	ldr	r3, [r3, #0]
 8001a26:	4618      	mov	r0, r3
 8001a28:	f7ff fd84 	bl	8001534 <I2CUnSetPOS>
 8001a2c:	68fb      	ldr	r3, [r7, #12]
 8001a2e:	681b      	ldr	r3, [r3, #0]
 8001a30:	4618      	mov	r0, r3
 8001a32:	f7ff fd43 	bl	80014bc <I2CSetAck>
 8001a36:	e076      	b.n	8001b26 <I2CReadBytes+0x24a>
 8001a38:	68f8      	ldr	r0, [r7, #12]
 8001a3a:	f7ff fd9b 	bl	8001574 <I2CStart>
 8001a3e:	4603      	mov	r3, r0
 8001a40:	2b00      	cmp	r3, #0
 8001a42:	d001      	beq.n	8001a48 <I2CReadBytes+0x16c>
 8001a44:	2300      	movs	r3, #0
 8001a46:	e06f      	b.n	8001b28 <I2CReadBytes+0x24c>
 8001a48:	78fb      	ldrb	r3, [r7, #3]
 8001a4a:	68f8      	ldr	r0, [r7, #12]
 8001a4c:	4619      	mov	r1, r3
 8001a4e:	2201      	movs	r2, #1
 8001a50:	f7ff fdd4 	bl	80015fc <I2CSendAddr>
 8001a54:	4603      	mov	r3, r0
 8001a56:	2b00      	cmp	r3, #0
 8001a58:	d001      	beq.n	8001a5e <I2CReadBytes+0x182>
 8001a5a:	2300      	movs	r3, #0
 8001a5c:	e064      	b.n	8001b28 <I2CReadBytes+0x24c>
 8001a5e:	68fb      	ldr	r3, [r7, #12]
 8001a60:	681b      	ldr	r3, [r3, #0]
 8001a62:	4618      	mov	r0, r3
 8001a64:	f7ff fd4a 	bl	80014fc <I2CClearAddrFlag>
 8001a68:	e04d      	b.n	8001b06 <I2CReadBytes+0x22a>
 8001a6a:	687b      	ldr	r3, [r7, #4]
 8001a6c:	2b03      	cmp	r3, #3
 8001a6e:	d013      	beq.n	8001a98 <I2CReadBytes+0x1bc>
 8001a70:	68f8      	ldr	r0, [r7, #12]
 8001a72:	f7ff fe41 	bl	80016f8 <I2CWaitForBTF>
 8001a76:	4603      	mov	r3, r0
 8001a78:	2b00      	cmp	r3, #0
 8001a7a:	d001      	beq.n	8001a80 <I2CReadBytes+0x1a4>
 8001a7c:	2300      	movs	r3, #0
 8001a7e:	e053      	b.n	8001b28 <I2CReadBytes+0x24c>
 8001a80:	68fb      	ldr	r3, [r7, #12]
 8001a82:	681b      	ldr	r3, [r3, #0]
 8001a84:	4618      	mov	r0, r3
 8001a86:	6979      	ldr	r1, [r7, #20]
 8001a88:	f7ff fd64 	bl	8001554 <I2CReadDR>
 8001a8c:	697b      	ldr	r3, [r7, #20]
 8001a8e:	3301      	adds	r3, #1
 8001a90:	617b      	str	r3, [r7, #20]
 8001a92:	687b      	ldr	r3, [r7, #4]
 8001a94:	3b01      	subs	r3, #1
 8001a96:	607b      	str	r3, [r7, #4]
 8001a98:	687b      	ldr	r3, [r7, #4]
 8001a9a:	2b03      	cmp	r3, #3
 8001a9c:	d133      	bne.n	8001b06 <I2CReadBytes+0x22a>
 8001a9e:	68f8      	ldr	r0, [r7, #12]
 8001aa0:	f7ff fe2a 	bl	80016f8 <I2CWaitForBTF>
 8001aa4:	4603      	mov	r3, r0
 8001aa6:	2b00      	cmp	r3, #0
 8001aa8:	d001      	beq.n	8001aae <I2CReadBytes+0x1d2>
 8001aaa:	2300      	movs	r3, #0
 8001aac:	e03c      	b.n	8001b28 <I2CReadBytes+0x24c>
 8001aae:	68fb      	ldr	r3, [r7, #12]
 8001ab0:	681b      	ldr	r3, [r3, #0]
 8001ab2:	4618      	mov	r0, r3
 8001ab4:	f7ff fd12 	bl	80014dc <I2CUnSetAck>
 8001ab8:	68fb      	ldr	r3, [r7, #12]
 8001aba:	681b      	ldr	r3, [r3, #0]
 8001abc:	4618      	mov	r0, r3
 8001abe:	6979      	ldr	r1, [r7, #20]
 8001ac0:	f7ff fd48 	bl	8001554 <I2CReadDR>
 8001ac4:	697b      	ldr	r3, [r7, #20]
 8001ac6:	3301      	adds	r3, #1
 8001ac8:	617b      	str	r3, [r7, #20]
 8001aca:	68fb      	ldr	r3, [r7, #12]
 8001acc:	681b      	ldr	r3, [r3, #0]
 8001ace:	4618      	mov	r0, r3
 8001ad0:	f7ff fce4 	bl	800149c <I2CStop>
 8001ad4:	68fb      	ldr	r3, [r7, #12]
 8001ad6:	681b      	ldr	r3, [r3, #0]
 8001ad8:	4618      	mov	r0, r3
 8001ada:	6979      	ldr	r1, [r7, #20]
 8001adc:	f7ff fd3a 	bl	8001554 <I2CReadDR>
 8001ae0:	697b      	ldr	r3, [r7, #20]
 8001ae2:	3301      	adds	r3, #1
 8001ae4:	617b      	str	r3, [r7, #20]
 8001ae6:	68f8      	ldr	r0, [r7, #12]
 8001ae8:	f7ff fdcc 	bl	8001684 <I2CWaitForByte>
 8001aec:	4603      	mov	r3, r0
 8001aee:	2b00      	cmp	r3, #0
 8001af0:	d001      	beq.n	8001af6 <I2CReadBytes+0x21a>
 8001af2:	2300      	movs	r3, #0
 8001af4:	e018      	b.n	8001b28 <I2CReadBytes+0x24c>
 8001af6:	68fb      	ldr	r3, [r7, #12]
 8001af8:	681b      	ldr	r3, [r3, #0]
 8001afa:	4618      	mov	r0, r3
 8001afc:	6979      	ldr	r1, [r7, #20]
 8001afe:	f7ff fd29 	bl	8001554 <I2CReadDR>
 8001b02:	2300      	movs	r3, #0
 8001b04:	607b      	str	r3, [r7, #4]
 8001b06:	687b      	ldr	r3, [r7, #4]
 8001b08:	2b00      	cmp	r3, #0
 8001b0a:	d1ae      	bne.n	8001a6a <I2CReadBytes+0x18e>
 8001b0c:	68f8      	ldr	r0, [r7, #12]
 8001b0e:	f7ff fe2d 	bl	800176c <I2CWaitForStopToBeCleared>
 8001b12:	4603      	mov	r3, r0
 8001b14:	2b00      	cmp	r3, #0
 8001b16:	d001      	beq.n	8001b1c <I2CReadBytes+0x240>
 8001b18:	2300      	movs	r3, #0
 8001b1a:	e005      	b.n	8001b28 <I2CReadBytes+0x24c>
 8001b1c:	68fb      	ldr	r3, [r7, #12]
 8001b1e:	681b      	ldr	r3, [r3, #0]
 8001b20:	4618      	mov	r0, r3
 8001b22:	f7ff fccb 	bl	80014bc <I2CSetAck>
 8001b26:	2301      	movs	r3, #1
 8001b28:	4618      	mov	r0, r3
 8001b2a:	3718      	adds	r7, #24
 8001b2c:	46bd      	mov	sp, r7
 8001b2e:	bd80      	pop	{r7, pc}

08001b30 <rccGetApb1Prescaler>:
 8001b30:	b480      	push	{r7}
 8001b32:	b083      	sub	sp, #12
 8001b34:	af00      	add	r7, sp, #0
 8001b36:	2301      	movs	r3, #1
 8001b38:	71bb      	strb	r3, [r7, #6]
 8001b3a:	4b11      	ldr	r3, [pc, #68]	; (8001b80 <rccGetApb1Prescaler+0x50>)
 8001b3c:	689b      	ldr	r3, [r3, #8]
 8001b3e:	f403 53e0 	and.w	r3, r3, #7168	; 0x1c00
 8001b42:	0a9b      	lsrs	r3, r3, #10
 8001b44:	717b      	strb	r3, [r7, #5]
 8001b46:	797b      	ldrb	r3, [r7, #5]
 8001b48:	2b03      	cmp	r3, #3
 8001b4a:	d801      	bhi.n	8001b50 <rccGetApb1Prescaler+0x20>
 8001b4c:	79bb      	ldrb	r3, [r7, #6]
 8001b4e:	e010      	b.n	8001b72 <rccGetApb1Prescaler+0x42>
 8001b50:	2302      	movs	r3, #2
 8001b52:	71bb      	strb	r3, [r7, #6]
 8001b54:	2300      	movs	r3, #0
 8001b56:	71fb      	strb	r3, [r7, #7]
 8001b58:	e005      	b.n	8001b66 <rccGetApb1Prescaler+0x36>
 8001b5a:	79bb      	ldrb	r3, [r7, #6]
 8001b5c:	005b      	lsls	r3, r3, #1
 8001b5e:	71bb      	strb	r3, [r7, #6]
 8001b60:	79fb      	ldrb	r3, [r7, #7]
 8001b62:	3301      	adds	r3, #1
 8001b64:	71fb      	strb	r3, [r7, #7]
 8001b66:	79fa      	ldrb	r2, [r7, #7]
 8001b68:	797b      	ldrb	r3, [r7, #5]
 8001b6a:	3b04      	subs	r3, #4
 8001b6c:	429a      	cmp	r2, r3
 8001b6e:	dbf4      	blt.n	8001b5a <rccGetApb1Prescaler+0x2a>
 8001b70:	79bb      	ldrb	r3, [r7, #6]
 8001b72:	4618      	mov	r0, r3
 8001b74:	370c      	adds	r7, #12
 8001b76:	46bd      	mov	sp, r7
 8001b78:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001b7c:	4770      	bx	lr
 8001b7e:	bf00      	nop
 8001b80:	40023800 	.word	0x40023800

08001b84 <timPwmChangeDutyCycle>:
 8001b84:	b480      	push	{r7}
 8001b86:	b085      	sub	sp, #20
 8001b88:	af00      	add	r7, sp, #0
 8001b8a:	60f8      	str	r0, [r7, #12]
 8001b8c:	460b      	mov	r3, r1
 8001b8e:	ed87 0a01 	vstr	s0, [r7, #4]
 8001b92:	72fb      	strb	r3, [r7, #11]
 8001b94:	7afb      	ldrb	r3, [r7, #11]
 8001b96:	2b01      	cmp	r3, #1
 8001b98:	d110      	bne.n	8001bbc <timPwmChangeDutyCycle+0x38>
 8001b9a:	68fb      	ldr	r3, [r7, #12]
 8001b9c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001b9e:	ee07 3a90 	vmov	s15, r3
 8001ba2:	eeb8 7a67 	vcvt.f32.u32	s14, s15
 8001ba6:	edd7 7a01 	vldr	s15, [r7, #4]
 8001baa:	ee67 7a27 	vmul.f32	s15, s14, s15
 8001bae:	eefc 7ae7 	vcvt.u32.f32	s15, s15
 8001bb2:	ee17 2a90 	vmov	r2, s15
 8001bb6:	68fb      	ldr	r3, [r7, #12]
 8001bb8:	635a      	str	r2, [r3, #52]	; 0x34
 8001bba:	e03f      	b.n	8001c3c <timPwmChangeDutyCycle+0xb8>
 8001bbc:	7afb      	ldrb	r3, [r7, #11]
 8001bbe:	2b02      	cmp	r3, #2
 8001bc0:	d110      	bne.n	8001be4 <timPwmChangeDutyCycle+0x60>
 8001bc2:	68fb      	ldr	r3, [r7, #12]
 8001bc4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001bc6:	ee07 3a90 	vmov	s15, r3
 8001bca:	eeb8 7a67 	vcvt.f32.u32	s14, s15
 8001bce:	edd7 7a01 	vldr	s15, [r7, #4]
 8001bd2:	ee67 7a27 	vmul.f32	s15, s14, s15
 8001bd6:	eefc 7ae7 	vcvt.u32.f32	s15, s15
 8001bda:	ee17 2a90 	vmov	r2, s15
 8001bde:	68fb      	ldr	r3, [r7, #12]
 8001be0:	639a      	str	r2, [r3, #56]	; 0x38
 8001be2:	e02b      	b.n	8001c3c <timPwmChangeDutyCycle+0xb8>
 8001be4:	7afb      	ldrb	r3, [r7, #11]
 8001be6:	2b03      	cmp	r3, #3
 8001be8:	d110      	bne.n	8001c0c <timPwmChangeDutyCycle+0x88>
 8001bea:	68fb      	ldr	r3, [r7, #12]
 8001bec:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001bee:	ee07 3a90 	vmov	s15, r3
 8001bf2:	eeb8 7a67 	vcvt.f32.u32	s14, s15
 8001bf6:	edd7 7a01 	vldr	s15, [r7, #4]
 8001bfa:	ee67 7a27 	vmul.f32	s15, s14, s15
 8001bfe:	eefc 7ae7 	vcvt.u32.f32	s15, s15
 8001c02:	ee17 2a90 	vmov	r2, s15
 8001c06:	68fb      	ldr	r3, [r7, #12]
 8001c08:	63da      	str	r2, [r3, #60]	; 0x3c
 8001c0a:	e017      	b.n	8001c3c <timPwmChangeDutyCycle+0xb8>
 8001c0c:	7afb      	ldrb	r3, [r7, #11]
 8001c0e:	2b04      	cmp	r3, #4
 8001c10:	d110      	bne.n	8001c34 <timPwmChangeDutyCycle+0xb0>
 8001c12:	68fb      	ldr	r3, [r7, #12]
 8001c14:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001c16:	ee07 3a90 	vmov	s15, r3
 8001c1a:	eeb8 7a67 	vcvt.f32.u32	s14, s15
 8001c1e:	edd7 7a01 	vldr	s15, [r7, #4]
 8001c22:	ee67 7a27 	vmul.f32	s15, s14, s15
 8001c26:	eefc 7ae7 	vcvt.u32.f32	s15, s15
 8001c2a:	ee17 2a90 	vmov	r2, s15
 8001c2e:	68fb      	ldr	r3, [r7, #12]
 8001c30:	641a      	str	r2, [r3, #64]	; 0x40
 8001c32:	e003      	b.n	8001c3c <timPwmChangeDutyCycle+0xb8>
 8001c34:	68fb      	ldr	r3, [r7, #12]
 8001c36:	2201      	movs	r2, #1
 8001c38:	615a      	str	r2, [r3, #20]
 8001c3a:	bf00      	nop
 8001c3c:	3714      	adds	r7, #20
 8001c3e:	46bd      	mov	sp, r7
 8001c40:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001c44:	4770      	bx	lr
 8001c46:	bf00      	nop

08001c48 <timEnable>:
 8001c48:	b580      	push	{r7, lr}
 8001c4a:	b082      	sub	sp, #8
 8001c4c:	af00      	add	r7, sp, #0
 8001c4e:	6078      	str	r0, [r7, #4]
 8001c50:	6878      	ldr	r0, [r7, #4]
 8001c52:	f000 f811 	bl	8001c78 <timClearStatusRegister>
 8001c56:	687b      	ldr	r3, [r7, #4]
 8001c58:	681b      	ldr	r3, [r3, #0]
 8001c5a:	f003 0301 	and.w	r3, r3, #1
 8001c5e:	2b00      	cmp	r3, #0
 8001c60:	d105      	bne.n	8001c6e <timEnable+0x26>
 8001c62:	687b      	ldr	r3, [r7, #4]
 8001c64:	681b      	ldr	r3, [r3, #0]
 8001c66:	f043 0201 	orr.w	r2, r3, #1
 8001c6a:	687b      	ldr	r3, [r7, #4]
 8001c6c:	601a      	str	r2, [r3, #0]
 8001c6e:	bf00      	nop
 8001c70:	3708      	adds	r7, #8
 8001c72:	46bd      	mov	sp, r7
 8001c74:	bd80      	pop	{r7, pc}
 8001c76:	bf00      	nop

08001c78 <timClearStatusRegister>:
 8001c78:	b480      	push	{r7}
 8001c7a:	b083      	sub	sp, #12
 8001c7c:	af00      	add	r7, sp, #0
 8001c7e:	6078      	str	r0, [r7, #4]
 8001c80:	687b      	ldr	r3, [r7, #4]
 8001c82:	2200      	movs	r2, #0
 8001c84:	611a      	str	r2, [r3, #16]
 8001c86:	bf00      	nop
 8001c88:	370c      	adds	r7, #12
 8001c8a:	46bd      	mov	sp, r7
 8001c8c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001c90:	4770      	bx	lr
 8001c92:	bf00      	nop

08001c94 <timClearStatusRegisterFlag>:
 8001c94:	b480      	push	{r7}
 8001c96:	b083      	sub	sp, #12
 8001c98:	af00      	add	r7, sp, #0
 8001c9a:	6078      	str	r0, [r7, #4]
 8001c9c:	460b      	mov	r3, r1
 8001c9e:	807b      	strh	r3, [r7, #2]
 8001ca0:	687b      	ldr	r3, [r7, #4]
 8001ca2:	691a      	ldr	r2, [r3, #16]
 8001ca4:	887b      	ldrh	r3, [r7, #2]
 8001ca6:	43db      	mvns	r3, r3
 8001ca8:	401a      	ands	r2, r3
 8001caa:	687b      	ldr	r3, [r7, #4]
 8001cac:	611a      	str	r2, [r3, #16]
 8001cae:	bf00      	nop
 8001cb0:	370c      	adds	r7, #12
 8001cb2:	46bd      	mov	sp, r7
 8001cb4:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001cb8:	4770      	bx	lr
 8001cba:	bf00      	nop

08001cbc <usartPutCharNoEcho>:
 8001cbc:	b480      	push	{r7}
 8001cbe:	b085      	sub	sp, #20
 8001cc0:	af00      	add	r7, sp, #0
 8001cc2:	6078      	str	r0, [r7, #4]
 8001cc4:	460b      	mov	r3, r1
 8001cc6:	70fb      	strb	r3, [r7, #3]
 8001cc8:	4b13      	ldr	r3, [pc, #76]	; (8001d18 <usartPutCharNoEcho+0x5c>)
 8001cca:	60fb      	str	r3, [r7, #12]
 8001ccc:	78fa      	ldrb	r2, [r7, #3]
 8001cce:	687b      	ldr	r3, [r7, #4]
 8001cd0:	605a      	str	r2, [r3, #4]
 8001cd2:	687b      	ldr	r3, [r7, #4]
 8001cd4:	68db      	ldr	r3, [r3, #12]
 8001cd6:	f023 0204 	bic.w	r2, r3, #4
 8001cda:	687b      	ldr	r3, [r7, #4]
 8001cdc:	60da      	str	r2, [r3, #12]
 8001cde:	e007      	b.n	8001cf0 <usartPutCharNoEcho+0x34>
 8001ce0:	68fb      	ldr	r3, [r7, #12]
 8001ce2:	3b01      	subs	r3, #1
 8001ce4:	60fb      	str	r3, [r7, #12]
 8001ce6:	68fb      	ldr	r3, [r7, #12]
 8001ce8:	2b00      	cmp	r3, #0
 8001cea:	d101      	bne.n	8001cf0 <usartPutCharNoEcho+0x34>
 8001cec:	2300      	movs	r3, #0
 8001cee:	e00c      	b.n	8001d0a <usartPutCharNoEcho+0x4e>
 8001cf0:	687b      	ldr	r3, [r7, #4]
 8001cf2:	681b      	ldr	r3, [r3, #0]
 8001cf4:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8001cf8:	2b00      	cmp	r3, #0
 8001cfa:	d0f1      	beq.n	8001ce0 <usartPutCharNoEcho+0x24>
 8001cfc:	687b      	ldr	r3, [r7, #4]
 8001cfe:	68db      	ldr	r3, [r3, #12]
 8001d00:	f043 0204 	orr.w	r2, r3, #4
 8001d04:	687b      	ldr	r3, [r7, #4]
 8001d06:	60da      	str	r2, [r3, #12]
 8001d08:	2301      	movs	r3, #1
 8001d0a:	4618      	mov	r0, r3
 8001d0c:	3714      	adds	r7, #20
 8001d0e:	46bd      	mov	sp, r7
 8001d10:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001d14:	4770      	bx	lr
 8001d16:	bf00      	nop
 8001d18:	77359400 	.word	0x77359400

08001d1c <showError>:
 8001d1c:	b580      	push	{r7, lr}
 8001d1e:	af00      	add	r7, sp, #0
 8001d20:	4803      	ldr	r0, [pc, #12]	; (8001d30 <showError+0x14>)
 8001d22:	2102      	movs	r1, #2
 8001d24:	2201      	movs	r2, #1
 8001d26:	f7ff fa73 	bl	8001210 <gpioPinSetLevel>
 8001d2a:	bf00      	nop
 8001d2c:	bd80      	pop	{r7, pc}
 8001d2e:	bf00      	nop
 8001d30:	40020c00 	.word	0x40020c00

08001d34 <showNoError>:
 8001d34:	b580      	push	{r7, lr}
 8001d36:	af00      	add	r7, sp, #0
 8001d38:	4803      	ldr	r0, [pc, #12]	; (8001d48 <showNoError+0x14>)
 8001d3a:	2102      	movs	r1, #2
 8001d3c:	2200      	movs	r2, #0
 8001d3e:	f7ff fa67 	bl	8001210 <gpioPinSetLevel>
 8001d42:	bf00      	nop
 8001d44:	bd80      	pop	{r7, pc}
 8001d46:	bf00      	nop
 8001d48:	40020c00 	.word	0x40020c00

08001d4c <readRangesGlobally>:
 8001d4c:	b580      	push	{r7, lr}
 8001d4e:	b082      	sub	sp, #8
 8001d50:	af00      	add	r7, sp, #0
 8001d52:	4b11      	ldr	r3, [pc, #68]	; (8001d98 <readRangesGlobally+0x4c>)
 8001d54:	689b      	ldr	r3, [r3, #8]
 8001d56:	4618      	mov	r0, r3
 8001d58:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
 8001d5c:	f000 ff7e 	bl	8002c5c <checkTimeout>
 8001d60:	4603      	mov	r3, r0
 8001d62:	2b00      	cmp	r3, #0
 8001d64:	d101      	bne.n	8001d6a <readRangesGlobally+0x1e>
 8001d66:	2301      	movs	r3, #1
 8001d68:	e012      	b.n	8001d90 <readRangesGlobally+0x44>
 8001d6a:	2300      	movs	r3, #0
 8001d6c:	71fb      	strb	r3, [r7, #7]
 8001d6e:	e00b      	b.n	8001d88 <readRangesGlobally+0x3c>
 8001d70:	79fb      	ldrb	r3, [r7, #7]
 8001d72:	4618      	mov	r0, r3
 8001d74:	f000 f812 	bl	8001d9c <readRange>
 8001d78:	4603      	mov	r3, r0
 8001d7a:	2b01      	cmp	r3, #1
 8001d7c:	d001      	beq.n	8001d82 <readRangesGlobally+0x36>
 8001d7e:	2300      	movs	r3, #0
 8001d80:	e006      	b.n	8001d90 <readRangesGlobally+0x44>
 8001d82:	79fb      	ldrb	r3, [r7, #7]
 8001d84:	3301      	adds	r3, #1
 8001d86:	71fb      	strb	r3, [r7, #7]
 8001d88:	79fb      	ldrb	r3, [r7, #7]
 8001d8a:	2b0f      	cmp	r3, #15
 8001d8c:	d9f0      	bls.n	8001d70 <readRangesGlobally+0x24>
 8001d8e:	2301      	movs	r3, #1
 8001d90:	4618      	mov	r0, r3
 8001d92:	3708      	adds	r7, #8
 8001d94:	46bd      	mov	sp, r7
 8001d96:	bd80      	pop	{r7, pc}
 8001d98:	20014d90 	.word	0x20014d90

08001d9c <readRange>:
 8001d9c:	b580      	push	{r7, lr}
 8001d9e:	b084      	sub	sp, #16
 8001da0:	af00      	add	r7, sp, #0
 8001da2:	4603      	mov	r3, r0
 8001da4:	71fb      	strb	r3, [r7, #7]
 8001da6:	79fb      	ldrb	r3, [r7, #7]
 8001da8:	4a3a      	ldr	r2, [pc, #232]	; (8001e94 <readRange+0xf8>)
 8001daa:	4413      	add	r3, r2
 8001dac:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
 8001db0:	2b00      	cmp	r3, #0
 8001db2:	d169      	bne.n	8001e88 <readRange+0xec>
 8001db4:	79fb      	ldrb	r3, [r7, #7]
 8001db6:	332a      	adds	r3, #42	; 0x2a
 8001db8:	b2da      	uxtb	r2, r3
 8001dba:	f107 030f 	add.w	r3, r7, #15
 8001dbe:	4610      	mov	r0, r2
 8001dc0:	4619      	mov	r1, r3
 8001dc2:	2204      	movs	r2, #4
 8001dc4:	f002 f812 	bl	8003dec <rangeFinderCheckInterruptStatusOfSensor>
 8001dc8:	4603      	mov	r3, r0
 8001dca:	2b01      	cmp	r3, #1
 8001dcc:	d011      	beq.n	8001df2 <readRange+0x56>
 8001dce:	79fb      	ldrb	r3, [r7, #7]
 8001dd0:	4a30      	ldr	r2, [pc, #192]	; (8001e94 <readRange+0xf8>)
 8001dd2:	4413      	add	r3, r2
 8001dd4:	2204      	movs	r2, #4
 8001dd6:	759a      	strb	r2, [r3, #22]
 8001dd8:	79fb      	ldrb	r3, [r7, #7]
 8001dda:	4a2e      	ldr	r2, [pc, #184]	; (8001e94 <readRange+0xf8>)
 8001ddc:	4413      	add	r3, r2
 8001dde:	2201      	movs	r2, #1
 8001de0:	f883 2026 	strb.w	r2, [r3, #38]	; 0x26
 8001de4:	4b2c      	ldr	r3, [pc, #176]	; (8001e98 <readRange+0xfc>)
 8001de6:	2200      	movs	r2, #0
 8001de8:	711a      	strb	r2, [r3, #4]
 8001dea:	f7ff ff97 	bl	8001d1c <showError>
 8001dee:	2300      	movs	r3, #0
 8001df0:	e04b      	b.n	8001e8a <readRange+0xee>
 8001df2:	79fb      	ldrb	r3, [r7, #7]
 8001df4:	4a27      	ldr	r2, [pc, #156]	; (8001e94 <readRange+0xf8>)
 8001df6:	4413      	add	r3, r2
 8001df8:	2200      	movs	r2, #0
 8001dfa:	759a      	strb	r2, [r3, #22]
 8001dfc:	7bfb      	ldrb	r3, [r7, #15]
 8001dfe:	2b00      	cmp	r3, #0
 8001e00:	d01e      	beq.n	8001e40 <readRange+0xa4>
 8001e02:	79fb      	ldrb	r3, [r7, #7]
 8001e04:	332a      	adds	r3, #42	; 0x2a
 8001e06:	b2da      	uxtb	r2, r3
 8001e08:	79f9      	ldrb	r1, [r7, #7]
 8001e0a:	4b22      	ldr	r3, [pc, #136]	; (8001e94 <readRange+0xf8>)
 8001e0c:	440b      	add	r3, r1
 8001e0e:	4610      	mov	r0, r2
 8001e10:	4619      	mov	r1, r3
 8001e12:	f002 f83b 	bl	8003e8c <rangeFinderReadMeasuredRange>
 8001e16:	4603      	mov	r3, r0
 8001e18:	2b01      	cmp	r3, #1
 8001e1a:	d035      	beq.n	8001e88 <readRange+0xec>
 8001e1c:	79fb      	ldrb	r3, [r7, #7]
 8001e1e:	4a1d      	ldr	r2, [pc, #116]	; (8001e94 <readRange+0xf8>)
 8001e20:	4413      	add	r3, r2
 8001e22:	2204      	movs	r2, #4
 8001e24:	759a      	strb	r2, [r3, #22]
 8001e26:	79fb      	ldrb	r3, [r7, #7]
 8001e28:	4a1a      	ldr	r2, [pc, #104]	; (8001e94 <readRange+0xf8>)
 8001e2a:	4413      	add	r3, r2
 8001e2c:	2201      	movs	r2, #1
 8001e2e:	f883 2026 	strb.w	r2, [r3, #38]	; 0x26
 8001e32:	4b19      	ldr	r3, [pc, #100]	; (8001e98 <readRange+0xfc>)
 8001e34:	2200      	movs	r2, #0
 8001e36:	711a      	strb	r2, [r3, #4]
 8001e38:	f7ff ff70 	bl	8001d1c <showError>
 8001e3c:	2300      	movs	r3, #0
 8001e3e:	e024      	b.n	8001e8a <readRange+0xee>
 8001e40:	2300      	movs	r3, #0
 8001e42:	73bb      	strb	r3, [r7, #14]
 8001e44:	79fb      	ldrb	r3, [r7, #7]
 8001e46:	332a      	adds	r3, #42	; 0x2a
 8001e48:	b2da      	uxtb	r2, r3
 8001e4a:	f107 030e 	add.w	r3, r7, #14
 8001e4e:	4610      	mov	r0, r2
 8001e50:	4619      	mov	r1, r3
 8001e52:	f002 f831 	bl	8003eb8 <rangeFinderReadRangeReadyStatus>
 8001e56:	4603      	mov	r3, r0
 8001e58:	2b01      	cmp	r3, #1
 8001e5a:	d00d      	beq.n	8001e78 <readRange+0xdc>
 8001e5c:	79fb      	ldrb	r3, [r7, #7]
 8001e5e:	4a0d      	ldr	r2, [pc, #52]	; (8001e94 <readRange+0xf8>)
 8001e60:	4413      	add	r3, r2
 8001e62:	2204      	movs	r2, #4
 8001e64:	759a      	strb	r2, [r3, #22]
 8001e66:	79fb      	ldrb	r3, [r7, #7]
 8001e68:	4a0a      	ldr	r2, [pc, #40]	; (8001e94 <readRange+0xf8>)
 8001e6a:	4413      	add	r3, r2
 8001e6c:	2201      	movs	r2, #1
 8001e6e:	f883 2026 	strb.w	r2, [r3, #38]	; 0x26
 8001e72:	4b09      	ldr	r3, [pc, #36]	; (8001e98 <readRange+0xfc>)
 8001e74:	2200      	movs	r2, #0
 8001e76:	711a      	strb	r2, [r3, #4]
 8001e78:	79fb      	ldrb	r3, [r7, #7]
 8001e7a:	4a06      	ldr	r2, [pc, #24]	; (8001e94 <readRange+0xf8>)
 8001e7c:	4413      	add	r3, r2
 8001e7e:	2201      	movs	r2, #1
 8001e80:	f883 2026 	strb.w	r2, [r3, #38]	; 0x26
 8001e84:	f7ff ff4a 	bl	8001d1c <showError>
 8001e88:	2301      	movs	r3, #1
 8001e8a:	4618      	mov	r0, r3
 8001e8c:	3710      	adds	r7, #16
 8001e8e:	46bd      	mov	sp, r7
 8001e90:	bd80      	pop	{r7, pc}
 8001e92:	bf00      	nop
 8001e94:	20014d9c 	.word	0x20014d9c
 8001e98:	20014d90 	.word	0x20014d90

08001e9c <checkRangeFindersReinitFlags>:
 8001e9c:	b580      	push	{r7, lr}
 8001e9e:	b082      	sub	sp, #8
 8001ea0:	af00      	add	r7, sp, #0
 8001ea2:	2300      	movs	r3, #0
 8001ea4:	71bb      	strb	r3, [r7, #6]
 8001ea6:	4b5d      	ldr	r3, [pc, #372]	; (800201c <checkRangeFindersReinitFlags+0x180>)
 8001ea8:	689b      	ldr	r3, [r3, #8]
 8001eaa:	4618      	mov	r0, r3
 8001eac:	f240 61a4 	movw	r1, #1700	; 0x6a4
 8001eb0:	f000 fed4 	bl	8002c5c <checkTimeout>
 8001eb4:	4603      	mov	r3, r0
 8001eb6:	2b00      	cmp	r3, #0
 8001eb8:	d00b      	beq.n	8001ed2 <checkRangeFindersReinitFlags+0x36>
 8001eba:	4b59      	ldr	r3, [pc, #356]	; (8002020 <checkRangeFindersReinitFlags+0x184>)
 8001ebc:	f893 303a 	ldrb.w	r3, [r3, #58]	; 0x3a
 8001ec0:	2b00      	cmp	r3, #0
 8001ec2:	d006      	beq.n	8001ed2 <checkRangeFindersReinitFlags+0x36>
 8001ec4:	f000 fa5a 	bl	800237c <powerTurnOnExpander>
 8001ec8:	4b55      	ldr	r3, [pc, #340]	; (8002020 <checkRangeFindersReinitFlags+0x184>)
 8001eca:	2200      	movs	r2, #0
 8001ecc:	f883 203a 	strb.w	r2, [r3, #58]	; 0x3a
 8001ed0:	e0a0      	b.n	8002014 <checkRangeFindersReinitFlags+0x178>
 8001ed2:	4b52      	ldr	r3, [pc, #328]	; (800201c <checkRangeFindersReinitFlags+0x180>)
 8001ed4:	689b      	ldr	r3, [r3, #8]
 8001ed6:	4618      	mov	r0, r3
 8001ed8:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
 8001edc:	f000 febe 	bl	8002c5c <checkTimeout>
 8001ee0:	4603      	mov	r3, r0
 8001ee2:	2b00      	cmp	r3, #0
 8001ee4:	f000 8095 	beq.w	8002012 <checkRangeFindersReinitFlags+0x176>
 8001ee8:	2300      	movs	r3, #0
 8001eea:	71fb      	strb	r3, [r7, #7]
 8001eec:	e00a      	b.n	8001f04 <checkRangeFindersReinitFlags+0x68>
 8001eee:	79fb      	ldrb	r3, [r7, #7]
 8001ef0:	4a4b      	ldr	r2, [pc, #300]	; (8002020 <checkRangeFindersReinitFlags+0x184>)
 8001ef2:	4413      	add	r3, r2
 8001ef4:	f893 2026 	ldrb.w	r2, [r3, #38]	; 0x26
 8001ef8:	79bb      	ldrb	r3, [r7, #6]
 8001efa:	4413      	add	r3, r2
 8001efc:	71bb      	strb	r3, [r7, #6]
 8001efe:	79fb      	ldrb	r3, [r7, #7]
 8001f00:	3301      	adds	r3, #1
 8001f02:	71fb      	strb	r3, [r7, #7]
 8001f04:	79fb      	ldrb	r3, [r7, #7]
 8001f06:	2b0f      	cmp	r3, #15
 8001f08:	d9f1      	bls.n	8001eee <checkRangeFindersReinitFlags+0x52>
 8001f0a:	4b45      	ldr	r3, [pc, #276]	; (8002020 <checkRangeFindersReinitFlags+0x184>)
 8001f0c:	f893 2036 	ldrb.w	r2, [r3, #54]	; 0x36
 8001f10:	79bb      	ldrb	r3, [r7, #6]
 8001f12:	4413      	add	r3, r2
 8001f14:	71bb      	strb	r3, [r7, #6]
 8001f16:	79bb      	ldrb	r3, [r7, #6]
 8001f18:	2b11      	cmp	r3, #17
 8001f1a:	d118      	bne.n	8001f4e <checkRangeFindersReinitFlags+0xb2>
 8001f1c:	483f      	ldr	r0, [pc, #252]	; (800201c <checkRangeFindersReinitFlags+0x180>)
 8001f1e:	f7ff fa47 	bl	80013b0 <I2CReset>
 8001f22:	2300      	movs	r3, #0
 8001f24:	71fb      	strb	r3, [r7, #7]
 8001f26:	e008      	b.n	8001f3a <checkRangeFindersReinitFlags+0x9e>
 8001f28:	79fb      	ldrb	r3, [r7, #7]
 8001f2a:	4a3d      	ldr	r2, [pc, #244]	; (8002020 <checkRangeFindersReinitFlags+0x184>)
 8001f2c:	4413      	add	r3, r2
 8001f2e:	2200      	movs	r2, #0
 8001f30:	f883 2026 	strb.w	r2, [r3, #38]	; 0x26
 8001f34:	79fb      	ldrb	r3, [r7, #7]
 8001f36:	3301      	adds	r3, #1
 8001f38:	71fb      	strb	r3, [r7, #7]
 8001f3a:	79fb      	ldrb	r3, [r7, #7]
 8001f3c:	2b0f      	cmp	r3, #15
 8001f3e:	d9f3      	bls.n	8001f28 <checkRangeFindersReinitFlags+0x8c>
 8001f40:	4b37      	ldr	r3, [pc, #220]	; (8002020 <checkRangeFindersReinitFlags+0x184>)
 8001f42:	2200      	movs	r2, #0
 8001f44:	f883 2036 	strb.w	r2, [r3, #54]	; 0x36
 8001f48:	f7ff fef4 	bl	8001d34 <showNoError>
 8001f4c:	e061      	b.n	8002012 <checkRangeFindersReinitFlags+0x176>
 8001f4e:	f000 fa21 	bl	8002394 <checkExpander>
 8001f52:	4603      	mov	r3, r0
 8001f54:	461a      	mov	r2, r3
 8001f56:	4b32      	ldr	r3, [pc, #200]	; (8002020 <checkRangeFindersReinitFlags+0x184>)
 8001f58:	f883 2036 	strb.w	r2, [r3, #54]	; 0x36
 8001f5c:	4b30      	ldr	r3, [pc, #192]	; (8002020 <checkRangeFindersReinitFlags+0x184>)
 8001f5e:	f893 3036 	ldrb.w	r3, [r3, #54]	; 0x36
 8001f62:	2b01      	cmp	r3, #1
 8001f64:	d116      	bne.n	8001f94 <checkRangeFindersReinitFlags+0xf8>
 8001f66:	2021      	movs	r0, #33	; 0x21
 8001f68:	f000 fa2c 	bl	80023c4 <initExpanderOutputMode>
 8001f6c:	4603      	mov	r3, r0
 8001f6e:	2b01      	cmp	r3, #1
 8001f70:	d009      	beq.n	8001f86 <checkRangeFindersReinitFlags+0xea>
 8001f72:	4b2b      	ldr	r3, [pc, #172]	; (8002020 <checkRangeFindersReinitFlags+0x184>)
 8001f74:	2201      	movs	r2, #1
 8001f76:	f883 2036 	strb.w	r2, [r3, #54]	; 0x36
 8001f7a:	4b28      	ldr	r3, [pc, #160]	; (800201c <checkRangeFindersReinitFlags+0x180>)
 8001f7c:	2200      	movs	r2, #0
 8001f7e:	711a      	strb	r2, [r3, #4]
 8001f80:	f7ff fecc 	bl	8001d1c <showError>
 8001f84:	e046      	b.n	8002014 <checkRangeFindersReinitFlags+0x178>
 8001f86:	4b26      	ldr	r3, [pc, #152]	; (8002020 <checkRangeFindersReinitFlags+0x184>)
 8001f88:	2200      	movs	r2, #0
 8001f8a:	f883 2036 	strb.w	r2, [r3, #54]	; 0x36
 8001f8e:	f7ff fed1 	bl	8001d34 <showNoError>
 8001f92:	e03f      	b.n	8002014 <checkRangeFindersReinitFlags+0x178>
 8001f94:	2300      	movs	r3, #0
 8001f96:	71fb      	strb	r3, [r7, #7]
 8001f98:	e038      	b.n	800200c <checkRangeFindersReinitFlags+0x170>
 8001f9a:	79fb      	ldrb	r3, [r7, #7]
 8001f9c:	4a20      	ldr	r2, [pc, #128]	; (8002020 <checkRangeFindersReinitFlags+0x184>)
 8001f9e:	4413      	add	r3, r2
 8001fa0:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
 8001fa4:	2b01      	cmp	r3, #1
 8001fa6:	d12e      	bne.n	8002006 <checkRangeFindersReinitFlags+0x16a>
 8001fa8:	79fb      	ldrb	r3, [r7, #7]
 8001faa:	4618      	mov	r0, r3
 8001fac:	f000 f996 	bl	80022dc <initRangeFinder>
 8001fb0:	4603      	mov	r3, r0
 8001fb2:	2b01      	cmp	r3, #1
 8001fb4:	d00a      	beq.n	8001fcc <checkRangeFindersReinitFlags+0x130>
 8001fb6:	79fb      	ldrb	r3, [r7, #7]
 8001fb8:	4a19      	ldr	r2, [pc, #100]	; (8002020 <checkRangeFindersReinitFlags+0x184>)
 8001fba:	4413      	add	r3, r2
 8001fbc:	2203      	movs	r2, #3
 8001fbe:	759a      	strb	r2, [r3, #22]
 8001fc0:	4b16      	ldr	r3, [pc, #88]	; (800201c <checkRangeFindersReinitFlags+0x180>)
 8001fc2:	2200      	movs	r2, #0
 8001fc4:	711a      	strb	r2, [r3, #4]
 8001fc6:	f7ff fea9 	bl	8001d1c <showError>
 8001fca:	e023      	b.n	8002014 <checkRangeFindersReinitFlags+0x178>
 8001fcc:	79fb      	ldrb	r3, [r7, #7]
 8001fce:	332a      	adds	r3, #42	; 0x2a
 8001fd0:	b2db      	uxtb	r3, r3
 8001fd2:	4618      	mov	r0, r3
 8001fd4:	f001 ff44 	bl	8003e60 <rangeFinderStartContiniousMeasurements>
 8001fd8:	4603      	mov	r3, r0
 8001fda:	2b01      	cmp	r3, #1
 8001fdc:	d00a      	beq.n	8001ff4 <checkRangeFindersReinitFlags+0x158>
 8001fde:	79fb      	ldrb	r3, [r7, #7]
 8001fe0:	4a0f      	ldr	r2, [pc, #60]	; (8002020 <checkRangeFindersReinitFlags+0x184>)
 8001fe2:	4413      	add	r3, r2
 8001fe4:	2202      	movs	r2, #2
 8001fe6:	759a      	strb	r2, [r3, #22]
 8001fe8:	4b0c      	ldr	r3, [pc, #48]	; (800201c <checkRangeFindersReinitFlags+0x180>)
 8001fea:	2200      	movs	r2, #0
 8001fec:	711a      	strb	r2, [r3, #4]
 8001fee:	f7ff fe95 	bl	8001d1c <showError>
 8001ff2:	e00f      	b.n	8002014 <checkRangeFindersReinitFlags+0x178>
 8001ff4:	79fb      	ldrb	r3, [r7, #7]
 8001ff6:	4a0a      	ldr	r2, [pc, #40]	; (8002020 <checkRangeFindersReinitFlags+0x184>)
 8001ff8:	4413      	add	r3, r2
 8001ffa:	2200      	movs	r2, #0
 8001ffc:	f883 2026 	strb.w	r2, [r3, #38]	; 0x26
 8002000:	f7ff fe98 	bl	8001d34 <showNoError>
 8002004:	e006      	b.n	8002014 <checkRangeFindersReinitFlags+0x178>
 8002006:	79fb      	ldrb	r3, [r7, #7]
 8002008:	3301      	adds	r3, #1
 800200a:	71fb      	strb	r3, [r7, #7]
 800200c:	79fb      	ldrb	r3, [r7, #7]
 800200e:	2b0f      	cmp	r3, #15
 8002010:	d9c3      	bls.n	8001f9a <checkRangeFindersReinitFlags+0xfe>
 8002012:	bf00      	nop
 8002014:	3708      	adds	r7, #8
 8002016:	46bd      	mov	sp, r7
 8002018:	bd80      	pop	{r7, pc}
 800201a:	bf00      	nop
 800201c:	20014d90 	.word	0x20014d90
 8002020:	20014d9c 	.word	0x20014d9c

08002024 <checkCollisionAvoidance>:
 8002024:	b480      	push	{r7}
 8002026:	b083      	sub	sp, #12
 8002028:	af00      	add	r7, sp, #0
 800202a:	2300      	movs	r3, #0
 800202c:	71fb      	strb	r3, [r7, #7]
 800202e:	e0c9      	b.n	80021c4 <checkCollisionAvoidance+0x1a0>
 8002030:	79fb      	ldrb	r3, [r7, #7]
 8002032:	4a69      	ldr	r2, [pc, #420]	; (80021d8 <checkCollisionAvoidance+0x1b4>)
 8002034:	5cd3      	ldrb	r3, [r2, r3]
 8002036:	2b95      	cmp	r3, #149	; 0x95
 8002038:	f200 80c1 	bhi.w	80021be <checkCollisionAvoidance+0x19a>
 800203c:	4b67      	ldr	r3, [pc, #412]	; (80021dc <checkCollisionAvoidance+0x1b8>)
 800203e:	789b      	ldrb	r3, [r3, #2]
 8002040:	2b00      	cmp	r3, #0
 8002042:	d103      	bne.n	800204c <checkCollisionAvoidance+0x28>
 8002044:	4b65      	ldr	r3, [pc, #404]	; (80021dc <checkCollisionAvoidance+0x1b8>)
 8002046:	785b      	ldrb	r3, [r3, #1]
 8002048:	2b00      	cmp	r3, #0
 800204a:	d037      	beq.n	80020bc <checkCollisionAvoidance+0x98>
 800204c:	79fa      	ldrb	r2, [r7, #7]
 800204e:	4964      	ldr	r1, [pc, #400]	; (80021e0 <checkCollisionAvoidance+0x1bc>)
 8002050:	4613      	mov	r3, r2
 8002052:	005b      	lsls	r3, r3, #1
 8002054:	4413      	add	r3, r2
 8002056:	009b      	lsls	r3, r3, #2
 8002058:	440b      	add	r3, r1
 800205a:	ed93 7a00 	vldr	s14, [r3]
 800205e:	4b61      	ldr	r3, [pc, #388]	; (80021e4 <checkCollisionAvoidance+0x1c0>)
 8002060:	edd3 7a00 	vldr	s15, [r3]
 8002064:	ee67 7a27 	vmul.f32	s15, s14, s15
 8002068:	edc7 7a00 	vstr	s15, [r7]
 800206c:	edd7 7a00 	vldr	s15, [r7]
 8002070:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8002074:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8002078:	dd03      	ble.n	8002082 <checkCollisionAvoidance+0x5e>
 800207a:	4b5a      	ldr	r3, [pc, #360]	; (80021e4 <checkCollisionAvoidance+0x1c0>)
 800207c:	f04f 0200 	mov.w	r2, #0
 8002080:	601a      	str	r2, [r3, #0]
 8002082:	79fa      	ldrb	r2, [r7, #7]
 8002084:	4956      	ldr	r1, [pc, #344]	; (80021e0 <checkCollisionAvoidance+0x1bc>)
 8002086:	4613      	mov	r3, r2
 8002088:	005b      	lsls	r3, r3, #1
 800208a:	4413      	add	r3, r2
 800208c:	009b      	lsls	r3, r3, #2
 800208e:	440b      	add	r3, r1
 8002090:	3304      	adds	r3, #4
 8002092:	ed93 7a00 	vldr	s14, [r3]
 8002096:	4b53      	ldr	r3, [pc, #332]	; (80021e4 <checkCollisionAvoidance+0x1c0>)
 8002098:	edd3 7a01 	vldr	s15, [r3, #4]
 800209c:	ee67 7a27 	vmul.f32	s15, s14, s15
 80020a0:	edc7 7a00 	vstr	s15, [r7]
 80020a4:	edd7 7a00 	vldr	s15, [r7]
 80020a8:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 80020ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80020b0:	dd57      	ble.n	8002162 <checkCollisionAvoidance+0x13e>
 80020b2:	4b4c      	ldr	r3, [pc, #304]	; (80021e4 <checkCollisionAvoidance+0x1c0>)
 80020b4:	f04f 0200 	mov.w	r2, #0
 80020b8:	605a      	str	r2, [r3, #4]
 80020ba:	e052      	b.n	8002162 <checkCollisionAvoidance+0x13e>
 80020bc:	79fa      	ldrb	r2, [r7, #7]
 80020be:	4948      	ldr	r1, [pc, #288]	; (80021e0 <checkCollisionAvoidance+0x1bc>)
 80020c0:	4613      	mov	r3, r2
 80020c2:	005b      	lsls	r3, r3, #1
 80020c4:	4413      	add	r3, r2
 80020c6:	009b      	lsls	r3, r3, #2
 80020c8:	440b      	add	r3, r1
 80020ca:	ed93 7a00 	vldr	s14, [r3]
 80020ce:	4b45      	ldr	r3, [pc, #276]	; (80021e4 <checkCollisionAvoidance+0x1c0>)
 80020d0:	edd3 7a00 	vldr	s15, [r3]
 80020d4:	ee27 7a27 	vmul.f32	s14, s14, s15
 80020d8:	79fa      	ldrb	r2, [r7, #7]
 80020da:	4941      	ldr	r1, [pc, #260]	; (80021e0 <checkCollisionAvoidance+0x1bc>)
 80020dc:	4613      	mov	r3, r2
 80020de:	005b      	lsls	r3, r3, #1
 80020e0:	4413      	add	r3, r2
 80020e2:	009b      	lsls	r3, r3, #2
 80020e4:	440b      	add	r3, r1
 80020e6:	3304      	adds	r3, #4
 80020e8:	edd3 6a00 	vldr	s13, [r3]
 80020ec:	4b3d      	ldr	r3, [pc, #244]	; (80021e4 <checkCollisionAvoidance+0x1c0>)
 80020ee:	edd3 7a01 	vldr	s15, [r3, #4]
 80020f2:	ee66 7aa7 	vmul.f32	s15, s13, s15
 80020f6:	ee77 7a27 	vadd.f32	s15, s14, s15
 80020fa:	edc7 7a00 	vstr	s15, [r7]
 80020fe:	edd7 7a00 	vldr	s15, [r7]
 8002102:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8002106:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800210a:	dd2a      	ble.n	8002162 <checkCollisionAvoidance+0x13e>
 800210c:	4b35      	ldr	r3, [pc, #212]	; (80021e4 <checkCollisionAvoidance+0x1c0>)
 800210e:	ed93 7a00 	vldr	s14, [r3]
 8002112:	79fa      	ldrb	r2, [r7, #7]
 8002114:	4932      	ldr	r1, [pc, #200]	; (80021e0 <checkCollisionAvoidance+0x1bc>)
 8002116:	4613      	mov	r3, r2
 8002118:	005b      	lsls	r3, r3, #1
 800211a:	4413      	add	r3, r2
 800211c:	009b      	lsls	r3, r3, #2
 800211e:	440b      	add	r3, r1
 8002120:	edd3 6a00 	vldr	s13, [r3]
 8002124:	edd7 7a00 	vldr	s15, [r7]
 8002128:	ee66 7aa7 	vmul.f32	s15, s13, s15
 800212c:	ee77 7a67 	vsub.f32	s15, s14, s15
 8002130:	4b2c      	ldr	r3, [pc, #176]	; (80021e4 <checkCollisionAvoidance+0x1c0>)
 8002132:	edc3 7a00 	vstr	s15, [r3]
 8002136:	4b2b      	ldr	r3, [pc, #172]	; (80021e4 <checkCollisionAvoidance+0x1c0>)
 8002138:	ed93 7a01 	vldr	s14, [r3, #4]
 800213c:	79fa      	ldrb	r2, [r7, #7]
 800213e:	4928      	ldr	r1, [pc, #160]	; (80021e0 <checkCollisionAvoidance+0x1bc>)
 8002140:	4613      	mov	r3, r2
 8002142:	005b      	lsls	r3, r3, #1
 8002144:	4413      	add	r3, r2
 8002146:	009b      	lsls	r3, r3, #2
 8002148:	440b      	add	r3, r1
 800214a:	3304      	adds	r3, #4
 800214c:	edd3 6a00 	vldr	s13, [r3]
 8002150:	edd7 7a00 	vldr	s15, [r7]
 8002154:	ee66 7aa7 	vmul.f32	s15, s13, s15
 8002158:	ee77 7a67 	vsub.f32	s15, s14, s15
 800215c:	4b21      	ldr	r3, [pc, #132]	; (80021e4 <checkCollisionAvoidance+0x1c0>)
 800215e:	edc3 7a01 	vstr	s15, [r3, #4]
 8002162:	79fa      	ldrb	r2, [r7, #7]
 8002164:	491e      	ldr	r1, [pc, #120]	; (80021e0 <checkCollisionAvoidance+0x1bc>)
 8002166:	4613      	mov	r3, r2
 8002168:	005b      	lsls	r3, r3, #1
 800216a:	4413      	add	r3, r2
 800216c:	009b      	lsls	r3, r3, #2
 800216e:	440b      	add	r3, r1
 8002170:	3308      	adds	r3, #8
 8002172:	ed93 7a00 	vldr	s14, [r3]
 8002176:	4b1b      	ldr	r3, [pc, #108]	; (80021e4 <checkCollisionAvoidance+0x1c0>)
 8002178:	edd3 7a02 	vldr	s15, [r3, #8]
 800217c:	ee67 7a27 	vmul.f32	s15, s14, s15
 8002180:	edc7 7a00 	vstr	s15, [r7]
 8002184:	edd7 7a00 	vldr	s15, [r7]
 8002188:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 800218c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8002190:	dd15      	ble.n	80021be <checkCollisionAvoidance+0x19a>
 8002192:	4b14      	ldr	r3, [pc, #80]	; (80021e4 <checkCollisionAvoidance+0x1c0>)
 8002194:	ed93 7a02 	vldr	s14, [r3, #8]
 8002198:	79fa      	ldrb	r2, [r7, #7]
 800219a:	4911      	ldr	r1, [pc, #68]	; (80021e0 <checkCollisionAvoidance+0x1bc>)
 800219c:	4613      	mov	r3, r2
 800219e:	005b      	lsls	r3, r3, #1
 80021a0:	4413      	add	r3, r2
 80021a2:	009b      	lsls	r3, r3, #2
 80021a4:	440b      	add	r3, r1
 80021a6:	3308      	adds	r3, #8
 80021a8:	edd3 6a00 	vldr	s13, [r3]
 80021ac:	edd7 7a00 	vldr	s15, [r7]
 80021b0:	ee66 7aa7 	vmul.f32	s15, s13, s15
 80021b4:	ee77 7a67 	vsub.f32	s15, s14, s15
 80021b8:	4b0a      	ldr	r3, [pc, #40]	; (80021e4 <checkCollisionAvoidance+0x1c0>)
 80021ba:	edc3 7a02 	vstr	s15, [r3, #8]
 80021be:	79fb      	ldrb	r3, [r7, #7]
 80021c0:	3301      	adds	r3, #1
 80021c2:	71fb      	strb	r3, [r7, #7]
 80021c4:	79fb      	ldrb	r3, [r7, #7]
 80021c6:	2b09      	cmp	r3, #9
 80021c8:	f67f af32 	bls.w	8002030 <checkCollisionAvoidance+0xc>
 80021cc:	bf00      	nop
 80021ce:	370c      	adds	r7, #12
 80021d0:	46bd      	mov	sp, r7
 80021d2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80021d6:	4770      	bx	lr
 80021d8:	20014d9c 	.word	0x20014d9c
 80021dc:	20014fd4 	.word	0x20014fd4
 80021e0:	20000064 	.word	0x20000064
 80021e4:	20014fc8 	.word	0x20014fc8

080021e8 <postprocessDataForCalibration>:
 80021e8:	b480      	push	{r7}
 80021ea:	b083      	sub	sp, #12
 80021ec:	af00      	add	r7, sp, #0
 80021ee:	2300      	movs	r3, #0
 80021f0:	71fb      	strb	r3, [r7, #7]
 80021f2:	e01f      	b.n	8002234 <postprocessDataForCalibration+0x4c>
 80021f4:	79fb      	ldrb	r3, [r7, #7]
 80021f6:	330a      	adds	r3, #10
 80021f8:	4a13      	ldr	r2, [pc, #76]	; (8002248 <postprocessDataForCalibration+0x60>)
 80021fa:	5cd2      	ldrb	r2, [r2, r3]
 80021fc:	79fb      	ldrb	r3, [r7, #7]
 80021fe:	4913      	ldr	r1, [pc, #76]	; (800224c <postprocessDataForCalibration+0x64>)
 8002200:	5ccb      	ldrb	r3, [r1, r3]
 8002202:	429a      	cmp	r2, r3
 8002204:	d90e      	bls.n	8002224 <postprocessDataForCalibration+0x3c>
 8002206:	79fb      	ldrb	r3, [r7, #7]
 8002208:	330a      	adds	r3, #10
 800220a:	4a0f      	ldr	r2, [pc, #60]	; (8002248 <postprocessDataForCalibration+0x60>)
 800220c:	5cd2      	ldrb	r2, [r2, r3]
 800220e:	79fb      	ldrb	r3, [r7, #7]
 8002210:	490f      	ldr	r1, [pc, #60]	; (8002250 <postprocessDataForCalibration+0x68>)
 8002212:	5ccb      	ldrb	r3, [r1, r3]
 8002214:	429a      	cmp	r2, r3
 8002216:	d205      	bcs.n	8002224 <postprocessDataForCalibration+0x3c>
 8002218:	79fb      	ldrb	r3, [r7, #7]
 800221a:	4a0b      	ldr	r2, [pc, #44]	; (8002248 <postprocessDataForCalibration+0x60>)
 800221c:	4413      	add	r3, r2
 800221e:	2201      	movs	r2, #1
 8002220:	741a      	strb	r2, [r3, #16]
 8002222:	e004      	b.n	800222e <postprocessDataForCalibration+0x46>
 8002224:	79fb      	ldrb	r3, [r7, #7]
 8002226:	4a08      	ldr	r2, [pc, #32]	; (8002248 <postprocessDataForCalibration+0x60>)
 8002228:	4413      	add	r3, r2
 800222a:	2200      	movs	r2, #0
 800222c:	741a      	strb	r2, [r3, #16]
 800222e:	79fb      	ldrb	r3, [r7, #7]
 8002230:	3301      	adds	r3, #1
 8002232:	71fb      	strb	r3, [r7, #7]
 8002234:	79fb      	ldrb	r3, [r7, #7]
 8002236:	2b05      	cmp	r3, #5
 8002238:	d9dc      	bls.n	80021f4 <postprocessDataForCalibration+0xc>
 800223a:	bf00      	nop
 800223c:	370c      	adds	r7, #12
 800223e:	46bd      	mov	sp, r7
 8002240:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002244:	4770      	bx	lr
 8002246:	bf00      	nop
 8002248:	20014d9c 	.word	0x20014d9c
 800224c:	20000054 	.word	0x20000054
 8002250:	2000005c 	.word	0x2000005c

08002254 <resetRangeFinder>:
 8002254:	b580      	push	{r7, lr}
 8002256:	b082      	sub	sp, #8
 8002258:	af00      	add	r7, sp, #0
 800225a:	4603      	mov	r3, r0
 800225c:	71fb      	strb	r3, [r7, #7]
 800225e:	4b1e      	ldr	r3, [pc, #120]	; (80022d8 <resetRangeFinder+0x84>)
 8002260:	8f1b      	ldrh	r3, [r3, #56]	; 0x38
 8002262:	b29a      	uxth	r2, r3
 8002264:	79fb      	ldrb	r3, [r7, #7]
 8002266:	2101      	movs	r1, #1
 8002268:	fa01 f303 	lsl.w	r3, r1, r3
 800226c:	b29b      	uxth	r3, r3
 800226e:	43db      	mvns	r3, r3
 8002270:	b29b      	uxth	r3, r3
 8002272:	4013      	ands	r3, r2
 8002274:	b29b      	uxth	r3, r3
 8002276:	b29a      	uxth	r2, r3
 8002278:	4b17      	ldr	r3, [pc, #92]	; (80022d8 <resetRangeFinder+0x84>)
 800227a:	871a      	strh	r2, [r3, #56]	; 0x38
 800227c:	4b16      	ldr	r3, [pc, #88]	; (80022d8 <resetRangeFinder+0x84>)
 800227e:	8f1b      	ldrh	r3, [r3, #56]	; 0x38
 8002280:	4618      	mov	r0, r3
 8002282:	2121      	movs	r1, #33	; 0x21
 8002284:	f000 f8e2 	bl	800244c <setExpanderVoltage>
 8002288:	4603      	mov	r3, r0
 800228a:	2b01      	cmp	r3, #1
 800228c:	d001      	beq.n	8002292 <resetRangeFinder+0x3e>
 800228e:	2300      	movs	r3, #0
 8002290:	e01e      	b.n	80022d0 <resetRangeFinder+0x7c>
 8002292:	2003      	movs	r0, #3
 8002294:	f000 fcf6 	bl	8002c84 <delayInTenthOfMs>
 8002298:	4b0f      	ldr	r3, [pc, #60]	; (80022d8 <resetRangeFinder+0x84>)
 800229a:	8f1b      	ldrh	r3, [r3, #56]	; 0x38
 800229c:	b29a      	uxth	r2, r3
 800229e:	79fb      	ldrb	r3, [r7, #7]
 80022a0:	2101      	movs	r1, #1
 80022a2:	fa01 f303 	lsl.w	r3, r1, r3
 80022a6:	b29b      	uxth	r3, r3
 80022a8:	4313      	orrs	r3, r2
 80022aa:	b29b      	uxth	r3, r3
 80022ac:	b29a      	uxth	r2, r3
 80022ae:	4b0a      	ldr	r3, [pc, #40]	; (80022d8 <resetRangeFinder+0x84>)
 80022b0:	871a      	strh	r2, [r3, #56]	; 0x38
 80022b2:	4b09      	ldr	r3, [pc, #36]	; (80022d8 <resetRangeFinder+0x84>)
 80022b4:	8f1b      	ldrh	r3, [r3, #56]	; 0x38
 80022b6:	4618      	mov	r0, r3
 80022b8:	2121      	movs	r1, #33	; 0x21
 80022ba:	f000 f8c7 	bl	800244c <setExpanderVoltage>
 80022be:	4603      	mov	r3, r0
 80022c0:	2b01      	cmp	r3, #1
 80022c2:	d001      	beq.n	80022c8 <resetRangeFinder+0x74>
 80022c4:	2300      	movs	r3, #0
 80022c6:	e003      	b.n	80022d0 <resetRangeFinder+0x7c>
 80022c8:	2010      	movs	r0, #16
 80022ca:	f000 fcdb 	bl	8002c84 <delayInTenthOfMs>
 80022ce:	2301      	movs	r3, #1
 80022d0:	4618      	mov	r0, r3
 80022d2:	3708      	adds	r7, #8
 80022d4:	46bd      	mov	sp, r7
 80022d6:	bd80      	pop	{r7, pc}
 80022d8:	20014d9c 	.word	0x20014d9c

080022dc <initRangeFinder>:
 80022dc:	b580      	push	{r7, lr}
 80022de:	b084      	sub	sp, #16
 80022e0:	af00      	add	r7, sp, #0
 80022e2:	4603      	mov	r3, r0
 80022e4:	71fb      	strb	r3, [r7, #7]
 80022e6:	79fb      	ldrb	r3, [r7, #7]
 80022e8:	4618      	mov	r0, r3
 80022ea:	f7ff ffb3 	bl	8002254 <resetRangeFinder>
 80022ee:	4603      	mov	r3, r0
 80022f0:	2b01      	cmp	r3, #1
 80022f2:	d005      	beq.n	8002300 <initRangeFinder+0x24>
 80022f4:	4b15      	ldr	r3, [pc, #84]	; (800234c <initRangeFinder+0x70>)
 80022f6:	2201      	movs	r2, #1
 80022f8:	f883 2036 	strb.w	r2, [r3, #54]	; 0x36
 80022fc:	2300      	movs	r3, #0
 80022fe:	e020      	b.n	8002342 <initRangeFinder+0x66>
 8002300:	79fb      	ldrb	r3, [r7, #7]
 8002302:	2b09      	cmp	r3, #9
 8002304:	d907      	bls.n	8002316 <initRangeFinder+0x3a>
 8002306:	2029      	movs	r0, #41	; 0x29
 8002308:	f001 fc16 	bl	8003b38 <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode>
 800230c:	4603      	mov	r3, r0
 800230e:	2b01      	cmp	r3, #1
 8002310:	d009      	beq.n	8002326 <initRangeFinder+0x4a>
 8002312:	2300      	movs	r3, #0
 8002314:	e015      	b.n	8002342 <initRangeFinder+0x66>
 8002316:	2029      	movs	r0, #41	; 0x29
 8002318:	f001 fcae 	bl	8003c78 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode>
 800231c:	4603      	mov	r3, r0
 800231e:	2b01      	cmp	r3, #1
 8002320:	d001      	beq.n	8002326 <initRangeFinder+0x4a>
 8002322:	2300      	movs	r3, #0
 8002324:	e00d      	b.n	8002342 <initRangeFinder+0x66>
 8002326:	79fb      	ldrb	r3, [r7, #7]
 8002328:	332a      	adds	r3, #42	; 0x2a
 800232a:	73fb      	strb	r3, [r7, #15]
 800232c:	7bfb      	ldrb	r3, [r7, #15]
 800232e:	2029      	movs	r0, #41	; 0x29
 8002330:	4619      	mov	r1, r3
 8002332:	f001 fd41 	bl	8003db8 <rangeFinderChangeAddress>
 8002336:	4603      	mov	r3, r0
 8002338:	2b01      	cmp	r3, #1
 800233a:	d001      	beq.n	8002340 <initRangeFinder+0x64>
 800233c:	2300      	movs	r3, #0
 800233e:	e000      	b.n	8002342 <initRangeFinder+0x66>
 8002340:	2301      	movs	r3, #1
 8002342:	4618      	mov	r0, r3
 8002344:	3710      	adds	r7, #16
 8002346:	46bd      	mov	sp, r7
 8002348:	bd80      	pop	{r7, pc}
 800234a:	bf00      	nop
 800234c:	20014d9c 	.word	0x20014d9c

08002350 <resetExpander>:
 8002350:	b580      	push	{r7, lr}
 8002352:	af00      	add	r7, sp, #0
 8002354:	4808      	ldr	r0, [pc, #32]	; (8002378 <resetExpander+0x28>)
 8002356:	2100      	movs	r1, #0
 8002358:	2200      	movs	r2, #0
 800235a:	f7fe ff59 	bl	8001210 <gpioPinSetLevel>
 800235e:	2002      	movs	r0, #2
 8002360:	f000 fc90 	bl	8002c84 <delayInTenthOfMs>
 8002364:	4804      	ldr	r0, [pc, #16]	; (8002378 <resetExpander+0x28>)
 8002366:	2100      	movs	r1, #0
 8002368:	2201      	movs	r2, #1
 800236a:	f7fe ff51 	bl	8001210 <gpioPinSetLevel>
 800236e:	2002      	movs	r0, #2
 8002370:	f000 fc88 	bl	8002c84 <delayInTenthOfMs>
 8002374:	bf00      	nop
 8002376:	bd80      	pop	{r7, pc}
 8002378:	40020c00 	.word	0x40020c00

0800237c <powerTurnOnExpander>:
 800237c:	b580      	push	{r7, lr}
 800237e:	af00      	add	r7, sp, #0
 8002380:	4803      	ldr	r0, [pc, #12]	; (8002390 <powerTurnOnExpander+0x14>)
 8002382:	2103      	movs	r1, #3
 8002384:	2200      	movs	r2, #0
 8002386:	f7fe ff43 	bl	8001210 <gpioPinSetLevel>
 800238a:	bf00      	nop
 800238c:	bd80      	pop	{r7, pc}
 800238e:	bf00      	nop
 8002390:	40020c00 	.word	0x40020c00

08002394 <checkExpander>:
 8002394:	b580      	push	{r7, lr}
 8002396:	b082      	sub	sp, #8
 8002398:	af00      	add	r7, sp, #0
 800239a:	1dfb      	adds	r3, r7, #7
 800239c:	2005      	movs	r0, #5
 800239e:	4619      	mov	r1, r3
 80023a0:	2221      	movs	r2, #33	; 0x21
 80023a2:	f000 f89f 	bl	80024e4 <expanderReadReg>
 80023a6:	4603      	mov	r3, r0
 80023a8:	2b01      	cmp	r3, #1
 80023aa:	d001      	beq.n	80023b0 <checkExpander+0x1c>
 80023ac:	2302      	movs	r3, #2
 80023ae:	e005      	b.n	80023bc <checkExpander+0x28>
 80023b0:	79fb      	ldrb	r3, [r7, #7]
 80023b2:	2ba2      	cmp	r3, #162	; 0xa2
 80023b4:	d001      	beq.n	80023ba <checkExpander+0x26>
 80023b6:	2301      	movs	r3, #1
 80023b8:	e000      	b.n	80023bc <checkExpander+0x28>
 80023ba:	2300      	movs	r3, #0
 80023bc:	4618      	mov	r0, r3
 80023be:	3708      	adds	r7, #8
 80023c0:	46bd      	mov	sp, r7
 80023c2:	bd80      	pop	{r7, pc}

080023c4 <initExpanderOutputMode>:
 80023c4:	b580      	push	{r7, lr}
 80023c6:	b082      	sub	sp, #8
 80023c8:	af00      	add	r7, sp, #0
 80023ca:	4603      	mov	r3, r0
 80023cc:	71fb      	strb	r3, [r7, #7]
 80023ce:	f7ff ffbf 	bl	8002350 <resetExpander>
 80023d2:	79fb      	ldrb	r3, [r7, #7]
 80023d4:	200a      	movs	r0, #10
 80023d6:	21a2      	movs	r1, #162	; 0xa2
 80023d8:	461a      	mov	r2, r3
 80023da:	f000 f861 	bl	80024a0 <expanderWriteReg>
 80023de:	4603      	mov	r3, r0
 80023e0:	2b01      	cmp	r3, #1
 80023e2:	d001      	beq.n	80023e8 <initExpanderOutputMode+0x24>
 80023e4:	2300      	movs	r3, #0
 80023e6:	e02c      	b.n	8002442 <initExpanderOutputMode+0x7e>
 80023e8:	79fb      	ldrb	r3, [r7, #7]
 80023ea:	2000      	movs	r0, #0
 80023ec:	2100      	movs	r1, #0
 80023ee:	461a      	mov	r2, r3
 80023f0:	f000 f856 	bl	80024a0 <expanderWriteReg>
 80023f4:	4603      	mov	r3, r0
 80023f6:	2b01      	cmp	r3, #1
 80023f8:	d001      	beq.n	80023fe <initExpanderOutputMode+0x3a>
 80023fa:	2300      	movs	r3, #0
 80023fc:	e021      	b.n	8002442 <initExpanderOutputMode+0x7e>
 80023fe:	79fb      	ldrb	r3, [r7, #7]
 8002400:	2010      	movs	r0, #16
 8002402:	2100      	movs	r1, #0
 8002404:	461a      	mov	r2, r3
 8002406:	f000 f84b 	bl	80024a0 <expanderWriteReg>
 800240a:	4603      	mov	r3, r0
 800240c:	2b01      	cmp	r3, #1
 800240e:	d001      	beq.n	8002414 <initExpanderOutputMode+0x50>
 8002410:	2300      	movs	r3, #0
 8002412:	e016      	b.n	8002442 <initExpanderOutputMode+0x7e>
 8002414:	79fb      	ldrb	r3, [r7, #7]
 8002416:	200a      	movs	r0, #10
 8002418:	2100      	movs	r1, #0
 800241a:	461a      	mov	r2, r3
 800241c:	f000 f840 	bl	80024a0 <expanderWriteReg>
 8002420:	4603      	mov	r3, r0
 8002422:	2b01      	cmp	r3, #1
 8002424:	d001      	beq.n	800242a <initExpanderOutputMode+0x66>
 8002426:	2300      	movs	r3, #0
 8002428:	e00b      	b.n	8002442 <initExpanderOutputMode+0x7e>
 800242a:	79fb      	ldrb	r3, [r7, #7]
 800242c:	201a      	movs	r0, #26
 800242e:	2100      	movs	r1, #0
 8002430:	461a      	mov	r2, r3
 8002432:	f000 f835 	bl	80024a0 <expanderWriteReg>
 8002436:	4603      	mov	r3, r0
 8002438:	2b01      	cmp	r3, #1
 800243a:	d001      	beq.n	8002440 <initExpanderOutputMode+0x7c>
 800243c:	2300      	movs	r3, #0
 800243e:	e000      	b.n	8002442 <initExpanderOutputMode+0x7e>
 8002440:	2301      	movs	r3, #1
 8002442:	4618      	mov	r0, r3
 8002444:	3708      	adds	r7, #8
 8002446:	46bd      	mov	sp, r7
 8002448:	bd80      	pop	{r7, pc}
 800244a:	bf00      	nop

0800244c <setExpanderVoltage>:
 800244c:	b580      	push	{r7, lr}
 800244e:	b084      	sub	sp, #16
 8002450:	af00      	add	r7, sp, #0
 8002452:	4602      	mov	r2, r0
 8002454:	460b      	mov	r3, r1
 8002456:	80fa      	strh	r2, [r7, #6]
 8002458:	717b      	strb	r3, [r7, #5]
 800245a:	88fb      	ldrh	r3, [r7, #6]
 800245c:	73fb      	strb	r3, [r7, #15]
 800245e:	88fb      	ldrh	r3, [r7, #6]
 8002460:	0a1b      	lsrs	r3, r3, #8
 8002462:	b29b      	uxth	r3, r3
 8002464:	73bb      	strb	r3, [r7, #14]
 8002466:	7bfa      	ldrb	r2, [r7, #15]
 8002468:	797b      	ldrb	r3, [r7, #5]
 800246a:	200a      	movs	r0, #10
 800246c:	4611      	mov	r1, r2
 800246e:	461a      	mov	r2, r3
 8002470:	f000 f816 	bl	80024a0 <expanderWriteReg>
 8002474:	4603      	mov	r3, r0
 8002476:	2b01      	cmp	r3, #1
 8002478:	d001      	beq.n	800247e <setExpanderVoltage+0x32>
 800247a:	2300      	movs	r3, #0
 800247c:	e00c      	b.n	8002498 <setExpanderVoltage+0x4c>
 800247e:	7bba      	ldrb	r2, [r7, #14]
 8002480:	797b      	ldrb	r3, [r7, #5]
 8002482:	201a      	movs	r0, #26
 8002484:	4611      	mov	r1, r2
 8002486:	461a      	mov	r2, r3
 8002488:	f000 f80a 	bl	80024a0 <expanderWriteReg>
 800248c:	4603      	mov	r3, r0
 800248e:	2b01      	cmp	r3, #1
 8002490:	d001      	beq.n	8002496 <setExpanderVoltage+0x4a>
 8002492:	2300      	movs	r3, #0
 8002494:	e000      	b.n	8002498 <setExpanderVoltage+0x4c>
 8002496:	2301      	movs	r3, #1
 8002498:	4618      	mov	r0, r3
 800249a:	3710      	adds	r7, #16
 800249c:	46bd      	mov	sp, r7
 800249e:	bd80      	pop	{r7, pc}

080024a0 <expanderWriteReg>:
 80024a0:	b580      	push	{r7, lr}
 80024a2:	b084      	sub	sp, #16
 80024a4:	af00      	add	r7, sp, #0
 80024a6:	4613      	mov	r3, r2
 80024a8:	4602      	mov	r2, r0
 80024aa:	71fa      	strb	r2, [r7, #7]
 80024ac:	460a      	mov	r2, r1
 80024ae:	71ba      	strb	r2, [r7, #6]
 80024b0:	717b      	strb	r3, [r7, #5]
 80024b2:	79fb      	ldrb	r3, [r7, #7]
 80024b4:	733b      	strb	r3, [r7, #12]
 80024b6:	79bb      	ldrb	r3, [r7, #6]
 80024b8:	737b      	strb	r3, [r7, #13]
 80024ba:	f107 020c 	add.w	r2, r7, #12
 80024be:	797b      	ldrb	r3, [r7, #5]
 80024c0:	4807      	ldr	r0, [pc, #28]	; (80024e0 <expanderWriteReg+0x40>)
 80024c2:	4611      	mov	r1, r2
 80024c4:	2202      	movs	r2, #2
 80024c6:	f7ff f9b3 	bl	8001830 <I2CSendBytes>
 80024ca:	4603      	mov	r3, r0
 80024cc:	2b01      	cmp	r3, #1
 80024ce:	d001      	beq.n	80024d4 <expanderWriteReg+0x34>
 80024d0:	2300      	movs	r3, #0
 80024d2:	e000      	b.n	80024d6 <expanderWriteReg+0x36>
 80024d4:	2301      	movs	r3, #1
 80024d6:	4618      	mov	r0, r3
 80024d8:	3710      	adds	r7, #16
 80024da:	46bd      	mov	sp, r7
 80024dc:	bd80      	pop	{r7, pc}
 80024de:	bf00      	nop
 80024e0:	20014d90 	.word	0x20014d90

080024e4 <expanderReadReg>:
 80024e4:	b580      	push	{r7, lr}
 80024e6:	b082      	sub	sp, #8
 80024e8:	af00      	add	r7, sp, #0
 80024ea:	6039      	str	r1, [r7, #0]
 80024ec:	4613      	mov	r3, r2
 80024ee:	4602      	mov	r2, r0
 80024f0:	71fa      	strb	r2, [r7, #7]
 80024f2:	71bb      	strb	r3, [r7, #6]
 80024f4:	1dfa      	adds	r2, r7, #7
 80024f6:	79bb      	ldrb	r3, [r7, #6]
 80024f8:	480c      	ldr	r0, [pc, #48]	; (800252c <expanderReadReg+0x48>)
 80024fa:	4611      	mov	r1, r2
 80024fc:	2201      	movs	r2, #1
 80024fe:	f7ff f997 	bl	8001830 <I2CSendBytes>
 8002502:	4603      	mov	r3, r0
 8002504:	2b01      	cmp	r3, #1
 8002506:	d001      	beq.n	800250c <expanderReadReg+0x28>
 8002508:	2300      	movs	r3, #0
 800250a:	e00b      	b.n	8002524 <expanderReadReg+0x40>
 800250c:	79bb      	ldrb	r3, [r7, #6]
 800250e:	4807      	ldr	r0, [pc, #28]	; (800252c <expanderReadReg+0x48>)
 8002510:	6839      	ldr	r1, [r7, #0]
 8002512:	2201      	movs	r2, #1
 8002514:	f7ff f9e2 	bl	80018dc <I2CReadBytes>
 8002518:	4603      	mov	r3, r0
 800251a:	2b01      	cmp	r3, #1
 800251c:	d001      	beq.n	8002522 <expanderReadReg+0x3e>
 800251e:	2300      	movs	r3, #0
 8002520:	e000      	b.n	8002524 <expanderReadReg+0x40>
 8002522:	2301      	movs	r3, #1
 8002524:	4618      	mov	r0, r3
 8002526:	3708      	adds	r7, #8
 8002528:	46bd      	mov	sp, r7
 800252a:	bd80      	pop	{r7, pc}
 800252c:	20014d90 	.word	0x20014d90

08002530 <incrementPtr>:
 8002530:	b480      	push	{r7}
 8002532:	b085      	sub	sp, #20
 8002534:	af00      	add	r7, sp, #0
 8002536:	6078      	str	r0, [r7, #4]
 8002538:	6039      	str	r1, [r7, #0]
 800253a:	687b      	ldr	r3, [r7, #4]
 800253c:	60bb      	str	r3, [r7, #8]
 800253e:	2300      	movs	r3, #0
 8002540:	60fb      	str	r3, [r7, #12]
 8002542:	e00f      	b.n	8002564 <incrementPtr+0x34>
 8002544:	68bb      	ldr	r3, [r7, #8]
 8002546:	3301      	adds	r3, #1
 8002548:	60bb      	str	r3, [r7, #8]
 800254a:	4b0c      	ldr	r3, [pc, #48]	; (800257c <incrementPtr+0x4c>)
 800254c:	781b      	ldrb	r3, [r3, #0]
 800254e:	461a      	mov	r2, r3
 8002550:	4b0b      	ldr	r3, [pc, #44]	; (8002580 <incrementPtr+0x50>)
 8002552:	441a      	add	r2, r3
 8002554:	68bb      	ldr	r3, [r7, #8]
 8002556:	429a      	cmp	r2, r3
 8002558:	d801      	bhi.n	800255e <incrementPtr+0x2e>
 800255a:	4b09      	ldr	r3, [pc, #36]	; (8002580 <incrementPtr+0x50>)
 800255c:	60bb      	str	r3, [r7, #8]
 800255e:	68fb      	ldr	r3, [r7, #12]
 8002560:	3301      	adds	r3, #1
 8002562:	60fb      	str	r3, [r7, #12]
 8002564:	68fa      	ldr	r2, [r7, #12]
 8002566:	683b      	ldr	r3, [r7, #0]
 8002568:	429a      	cmp	r2, r3
 800256a:	d3eb      	bcc.n	8002544 <incrementPtr+0x14>
 800256c:	68bb      	ldr	r3, [r7, #8]
 800256e:	4618      	mov	r0, r3
 8002570:	3714      	adds	r7, #20
 8002572:	46bd      	mov	sp, r7
 8002574:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002578:	4770      	bx	lr
 800257a:	bf00      	nop
 800257c:	200000e0 	.word	0x200000e0
 8002580:	20014dd8 	.word	0x20014dd8

08002584 <USART1_IRQHandler>:
 8002584:	b580      	push	{r7, lr}
 8002586:	b082      	sub	sp, #8
 8002588:	af00      	add	r7, sp, #0
 800258a:	4b10      	ldr	r3, [pc, #64]	; (80025cc <USART1_IRQHandler+0x48>)
 800258c:	681b      	ldr	r3, [r3, #0]
 800258e:	f003 0320 	and.w	r3, r3, #32
 8002592:	2b00      	cmp	r3, #0
 8002594:	d016      	beq.n	80025c4 <USART1_IRQHandler+0x40>
 8002596:	4b0d      	ldr	r3, [pc, #52]	; (80025cc <USART1_IRQHandler+0x48>)
 8002598:	4a0c      	ldr	r2, [pc, #48]	; (80025cc <USART1_IRQHandler+0x48>)
 800259a:	6812      	ldr	r2, [r2, #0]
 800259c:	f022 0220 	bic.w	r2, r2, #32
 80025a0:	601a      	str	r2, [r3, #0]
 80025a2:	4b0a      	ldr	r3, [pc, #40]	; (80025cc <USART1_IRQHandler+0x48>)
 80025a4:	685b      	ldr	r3, [r3, #4]
 80025a6:	71fb      	strb	r3, [r7, #7]
 80025a8:	4b09      	ldr	r3, [pc, #36]	; (80025d0 <USART1_IRQHandler+0x4c>)
 80025aa:	681b      	ldr	r3, [r3, #0]
 80025ac:	79fa      	ldrb	r2, [r7, #7]
 80025ae:	701a      	strb	r2, [r3, #0]
 80025b0:	4b07      	ldr	r3, [pc, #28]	; (80025d0 <USART1_IRQHandler+0x4c>)
 80025b2:	681b      	ldr	r3, [r3, #0]
 80025b4:	4618      	mov	r0, r3
 80025b6:	2101      	movs	r1, #1
 80025b8:	f7ff ffba 	bl	8002530 <incrementPtr>
 80025bc:	4602      	mov	r2, r0
 80025be:	4b04      	ldr	r3, [pc, #16]	; (80025d0 <USART1_IRQHandler+0x4c>)
 80025c0:	601a      	str	r2, [r3, #0]
 80025c2:	bf00      	nop
 80025c4:	3708      	adds	r7, #8
 80025c6:	46bd      	mov	sp, r7
 80025c8:	bd80      	pop	{r7, pc}
 80025ca:	bf00      	nop
 80025cc:	40011000 	.word	0x40011000
 80025d0:	200000dc 	.word	0x200000dc

080025d4 <sendServoCommand>:
 80025d4:	b580      	push	{r7, lr}
 80025d6:	b084      	sub	sp, #16
 80025d8:	af00      	add	r7, sp, #0
 80025da:	603b      	str	r3, [r7, #0]
 80025dc:	4603      	mov	r3, r0
 80025de:	71fb      	strb	r3, [r7, #7]
 80025e0:	460b      	mov	r3, r1
 80025e2:	71bb      	strb	r3, [r7, #6]
 80025e4:	4613      	mov	r3, r2
 80025e6:	717b      	strb	r3, [r7, #5]
 80025e8:	20ff      	movs	r0, #255	; 0xff
 80025ea:	f000 f983 	bl	80028f4 <sendServoByte>
 80025ee:	20ff      	movs	r0, #255	; 0xff
 80025f0:	f000 f980 	bl	80028f4 <sendServoByte>
 80025f4:	79fb      	ldrb	r3, [r7, #7]
 80025f6:	4618      	mov	r0, r3
 80025f8:	f000 f97c 	bl	80028f4 <sendServoByte>
 80025fc:	79fb      	ldrb	r3, [r7, #7]
 80025fe:	73fb      	strb	r3, [r7, #15]
 8002600:	797b      	ldrb	r3, [r7, #5]
 8002602:	3302      	adds	r3, #2
 8002604:	b2db      	uxtb	r3, r3
 8002606:	4618      	mov	r0, r3
 8002608:	f000 f974 	bl	80028f4 <sendServoByte>
 800260c:	79bb      	ldrb	r3, [r7, #6]
 800260e:	4618      	mov	r0, r3
 8002610:	f000 f970 	bl	80028f4 <sendServoByte>
 8002614:	797a      	ldrb	r2, [r7, #5]
 8002616:	79bb      	ldrb	r3, [r7, #6]
 8002618:	4413      	add	r3, r2
 800261a:	b2da      	uxtb	r2, r3
 800261c:	7bfb      	ldrb	r3, [r7, #15]
 800261e:	4413      	add	r3, r2
 8002620:	b2db      	uxtb	r3, r3
 8002622:	3302      	adds	r3, #2
 8002624:	73fb      	strb	r3, [r7, #15]
 8002626:	2300      	movs	r3, #0
 8002628:	73bb      	strb	r3, [r7, #14]
 800262a:	e010      	b.n	800264e <sendServoCommand+0x7a>
 800262c:	7bbb      	ldrb	r3, [r7, #14]
 800262e:	683a      	ldr	r2, [r7, #0]
 8002630:	4413      	add	r3, r2
 8002632:	781b      	ldrb	r3, [r3, #0]
 8002634:	4618      	mov	r0, r3
 8002636:	f000 f95d 	bl	80028f4 <sendServoByte>
 800263a:	7bbb      	ldrb	r3, [r7, #14]
 800263c:	683a      	ldr	r2, [r7, #0]
 800263e:	4413      	add	r3, r2
 8002640:	781a      	ldrb	r2, [r3, #0]
 8002642:	7bfb      	ldrb	r3, [r7, #15]
 8002644:	4413      	add	r3, r2
 8002646:	73fb      	strb	r3, [r7, #15]
 8002648:	7bbb      	ldrb	r3, [r7, #14]
 800264a:	3301      	adds	r3, #1
 800264c:	73bb      	strb	r3, [r7, #14]
 800264e:	7bba      	ldrb	r2, [r7, #14]
 8002650:	797b      	ldrb	r3, [r7, #5]
 8002652:	429a      	cmp	r2, r3
 8002654:	d3ea      	bcc.n	800262c <sendServoCommand+0x58>
 8002656:	7bfb      	ldrb	r3, [r7, #15]
 8002658:	43db      	mvns	r3, r3
 800265a:	b2db      	uxtb	r3, r3
 800265c:	4618      	mov	r0, r3
 800265e:	f000 f949 	bl	80028f4 <sendServoByte>
 8002662:	3710      	adds	r7, #16
 8002664:	46bd      	mov	sp, r7
 8002666:	bd80      	pop	{r7, pc}

08002668 <getServoResponse>:
 8002668:	b590      	push	{r4, r7, lr}
 800266a:	b083      	sub	sp, #12
 800266c:	af00      	add	r7, sp, #0
 800266e:	2300      	movs	r3, #0
 8002670:	80fb      	strh	r3, [r7, #6]
 8002672:	f000 f95b 	bl	800292c <clearServoReceiveBuffer>
 8002676:	e009      	b.n	800268c <getServoResponse+0x24>
 8002678:	88fb      	ldrh	r3, [r7, #6]
 800267a:	3301      	adds	r3, #1
 800267c:	80fb      	strh	r3, [r7, #6]
 800267e:	88fa      	ldrh	r2, [r7, #6]
 8002680:	f644 6320 	movw	r3, #20000	; 0x4e20
 8002684:	429a      	cmp	r2, r3
 8002686:	d901      	bls.n	800268c <getServoResponse+0x24>
 8002688:	2300      	movs	r3, #0
 800268a:	e077      	b.n	800277c <getServoResponse+0x114>
 800268c:	f000 f95c 	bl	8002948 <getServoBytesAvailable>
 8002690:	4603      	mov	r3, r0
 8002692:	2b03      	cmp	r3, #3
 8002694:	d9f0      	bls.n	8002678 <getServoResponse+0x10>
 8002696:	2300      	movs	r3, #0
 8002698:	80fb      	strh	r3, [r7, #6]
 800269a:	f000 f975 	bl	8002988 <getServoByte>
 800269e:	f000 f973 	bl	8002988 <getServoByte>
 80026a2:	f000 f971 	bl	8002988 <getServoByte>
 80026a6:	4603      	mov	r3, r0
 80026a8:	461a      	mov	r2, r3
 80026aa:	4b36      	ldr	r3, [pc, #216]	; (8002784 <getServoResponse+0x11c>)
 80026ac:	701a      	strb	r2, [r3, #0]
 80026ae:	f000 f96b 	bl	8002988 <getServoByte>
 80026b2:	4603      	mov	r3, r0
 80026b4:	461a      	mov	r2, r3
 80026b6:	4b33      	ldr	r3, [pc, #204]	; (8002784 <getServoResponse+0x11c>)
 80026b8:	705a      	strb	r2, [r3, #1]
 80026ba:	4b32      	ldr	r3, [pc, #200]	; (8002784 <getServoResponse+0x11c>)
 80026bc:	785b      	ldrb	r3, [r3, #1]
 80026be:	2b1b      	cmp	r3, #27
 80026c0:	d901      	bls.n	80026c6 <getServoResponse+0x5e>
 80026c2:	2300      	movs	r3, #0
 80026c4:	e05a      	b.n	800277c <getServoResponse+0x114>
 80026c6:	e009      	b.n	80026dc <getServoResponse+0x74>
 80026c8:	88fb      	ldrh	r3, [r7, #6]
 80026ca:	3301      	adds	r3, #1
 80026cc:	80fb      	strh	r3, [r7, #6]
 80026ce:	88fa      	ldrh	r2, [r7, #6]
 80026d0:	f644 6320 	movw	r3, #20000	; 0x4e20
 80026d4:	429a      	cmp	r2, r3
 80026d6:	d901      	bls.n	80026dc <getServoResponse+0x74>
 80026d8:	2300      	movs	r3, #0
 80026da:	e04f      	b.n	800277c <getServoResponse+0x114>
 80026dc:	f000 f934 	bl	8002948 <getServoBytesAvailable>
 80026e0:	4602      	mov	r2, r0
 80026e2:	4b28      	ldr	r3, [pc, #160]	; (8002784 <getServoResponse+0x11c>)
 80026e4:	785b      	ldrb	r3, [r3, #1]
 80026e6:	429a      	cmp	r2, r3
 80026e8:	d3ee      	bcc.n	80026c8 <getServoResponse+0x60>
 80026ea:	f000 f94d 	bl	8002988 <getServoByte>
 80026ee:	4603      	mov	r3, r0
 80026f0:	461a      	mov	r2, r3
 80026f2:	4b24      	ldr	r3, [pc, #144]	; (8002784 <getServoResponse+0x11c>)
 80026f4:	709a      	strb	r2, [r3, #2]
 80026f6:	4b23      	ldr	r3, [pc, #140]	; (8002784 <getServoResponse+0x11c>)
 80026f8:	789a      	ldrb	r2, [r3, #2]
 80026fa:	4b23      	ldr	r3, [pc, #140]	; (8002788 <getServoResponse+0x120>)
 80026fc:	701a      	strb	r2, [r3, #0]
 80026fe:	2300      	movs	r3, #0
 8002700:	717b      	strb	r3, [r7, #5]
 8002702:	e00a      	b.n	800271a <getServoResponse+0xb2>
 8002704:	797c      	ldrb	r4, [r7, #5]
 8002706:	f000 f93f 	bl	8002988 <getServoByte>
 800270a:	4603      	mov	r3, r0
 800270c:	461a      	mov	r2, r3
 800270e:	4b1d      	ldr	r3, [pc, #116]	; (8002784 <getServoResponse+0x11c>)
 8002710:	4423      	add	r3, r4
 8002712:	70da      	strb	r2, [r3, #3]
 8002714:	797b      	ldrb	r3, [r7, #5]
 8002716:	3301      	adds	r3, #1
 8002718:	717b      	strb	r3, [r7, #5]
 800271a:	797a      	ldrb	r2, [r7, #5]
 800271c:	4b19      	ldr	r3, [pc, #100]	; (8002784 <getServoResponse+0x11c>)
 800271e:	785b      	ldrb	r3, [r3, #1]
 8002720:	3b02      	subs	r3, #2
 8002722:	429a      	cmp	r2, r3
 8002724:	dbee      	blt.n	8002704 <getServoResponse+0x9c>
 8002726:	4b17      	ldr	r3, [pc, #92]	; (8002784 <getServoResponse+0x11c>)
 8002728:	781a      	ldrb	r2, [r3, #0]
 800272a:	4b16      	ldr	r3, [pc, #88]	; (8002784 <getServoResponse+0x11c>)
 800272c:	785b      	ldrb	r3, [r3, #1]
 800272e:	4413      	add	r3, r2
 8002730:	b2da      	uxtb	r2, r3
 8002732:	4b14      	ldr	r3, [pc, #80]	; (8002784 <getServoResponse+0x11c>)
 8002734:	789b      	ldrb	r3, [r3, #2]
 8002736:	4413      	add	r3, r2
 8002738:	713b      	strb	r3, [r7, #4]
 800273a:	2300      	movs	r3, #0
 800273c:	717b      	strb	r3, [r7, #5]
 800273e:	e009      	b.n	8002754 <getServoResponse+0xec>
 8002740:	797b      	ldrb	r3, [r7, #5]
 8002742:	4a10      	ldr	r2, [pc, #64]	; (8002784 <getServoResponse+0x11c>)
 8002744:	4413      	add	r3, r2
 8002746:	78da      	ldrb	r2, [r3, #3]
 8002748:	793b      	ldrb	r3, [r7, #4]
 800274a:	4413      	add	r3, r2
 800274c:	713b      	strb	r3, [r7, #4]
 800274e:	797b      	ldrb	r3, [r7, #5]
 8002750:	3301      	adds	r3, #1
 8002752:	717b      	strb	r3, [r7, #5]
 8002754:	797a      	ldrb	r2, [r7, #5]
 8002756:	4b0b      	ldr	r3, [pc, #44]	; (8002784 <getServoResponse+0x11c>)
 8002758:	785b      	ldrb	r3, [r3, #1]
 800275a:	3b02      	subs	r3, #2
 800275c:	429a      	cmp	r2, r3
 800275e:	dbef      	blt.n	8002740 <getServoResponse+0xd8>
 8002760:	793b      	ldrb	r3, [r7, #4]
 8002762:	43db      	mvns	r3, r3
 8002764:	713b      	strb	r3, [r7, #4]
 8002766:	f000 f90f 	bl	8002988 <getServoByte>
 800276a:	4603      	mov	r3, r0
 800276c:	70fb      	strb	r3, [r7, #3]
 800276e:	793a      	ldrb	r2, [r7, #4]
 8002770:	78fb      	ldrb	r3, [r7, #3]
 8002772:	429a      	cmp	r2, r3
 8002774:	d001      	beq.n	800277a <getServoResponse+0x112>
 8002776:	2300      	movs	r3, #0
 8002778:	e000      	b.n	800277c <getServoResponse+0x114>
 800277a:	2301      	movs	r3, #1
 800277c:	4618      	mov	r0, r3
 800277e:	370c      	adds	r7, #12
 8002780:	46bd      	mov	sp, r7
 8002782:	bd90      	pop	{r4, r7, pc}
 8002784:	20014ec4 	.word	0x20014ec4
 8002788:	2000023c 	.word	0x2000023c

0800278c <getAndCheckResponse>:
 800278c:	b580      	push	{r7, lr}
 800278e:	b082      	sub	sp, #8
 8002790:	af00      	add	r7, sp, #0
 8002792:	4603      	mov	r3, r0
 8002794:	71fb      	strb	r3, [r7, #7]
 8002796:	f7ff ff67 	bl	8002668 <getServoResponse>
 800279a:	4603      	mov	r3, r0
 800279c:	f083 0301 	eor.w	r3, r3, #1
 80027a0:	b2db      	uxtb	r3, r3
 80027a2:	2b00      	cmp	r3, #0
 80027a4:	d001      	beq.n	80027aa <getAndCheckResponse+0x1e>
 80027a6:	2300      	movs	r3, #0
 80027a8:	e00d      	b.n	80027c6 <getAndCheckResponse+0x3a>
 80027aa:	4b09      	ldr	r3, [pc, #36]	; (80027d0 <getAndCheckResponse+0x44>)
 80027ac:	781b      	ldrb	r3, [r3, #0]
 80027ae:	79fa      	ldrb	r2, [r7, #7]
 80027b0:	429a      	cmp	r2, r3
 80027b2:	d001      	beq.n	80027b8 <getAndCheckResponse+0x2c>
 80027b4:	2300      	movs	r3, #0
 80027b6:	e006      	b.n	80027c6 <getAndCheckResponse+0x3a>
 80027b8:	4b05      	ldr	r3, [pc, #20]	; (80027d0 <getAndCheckResponse+0x44>)
 80027ba:	789b      	ldrb	r3, [r3, #2]
 80027bc:	2b00      	cmp	r3, #0
 80027be:	d001      	beq.n	80027c4 <getAndCheckResponse+0x38>
 80027c0:	2300      	movs	r3, #0
 80027c2:	e000      	b.n	80027c6 <getAndCheckResponse+0x3a>
 80027c4:	2301      	movs	r3, #1
 80027c6:	4618      	mov	r0, r3
 80027c8:	3708      	adds	r7, #8
 80027ca:	46bd      	mov	sp, r7
 80027cc:	bd80      	pop	{r7, pc}
 80027ce:	bf00      	nop
 80027d0:	20014ec4 	.word	0x20014ec4

080027d4 <setServoAngle>:
 80027d4:	b580      	push	{r7, lr}
 80027d6:	b084      	sub	sp, #16
 80027d8:	af00      	add	r7, sp, #0
 80027da:	4602      	mov	r2, r0
 80027dc:	460b      	mov	r3, r1
 80027de:	71fa      	strb	r2, [r7, #7]
 80027e0:	80bb      	strh	r3, [r7, #4]
 80027e2:	88bb      	ldrh	r3, [r7, #4]
 80027e4:	f5b3 7f96 	cmp.w	r3, #300	; 0x12c
 80027e8:	d901      	bls.n	80027ee <setServoAngle+0x1a>
 80027ea:	2300      	movs	r3, #0
 80027ec:	e02e      	b.n	800284c <setServoAngle+0x78>
 80027ee:	88bb      	ldrh	r3, [r7, #4]
 80027f0:	ee07 3a90 	vmov	s15, r3
 80027f4:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
 80027f8:	eddf 7a16 	vldr	s15, [pc, #88]	; 8002854 <setServoAngle+0x80>
 80027fc:	ee67 7a27 	vmul.f32	s15, s14, s15
 8002800:	eefc 7ae7 	vcvt.u32.f32	s15, s15
 8002804:	ee17 3a90 	vmov	r3, s15
 8002808:	81fb      	strh	r3, [r7, #14]
 800280a:	89fb      	ldrh	r3, [r7, #14]
 800280c:	0a1b      	lsrs	r3, r3, #8
 800280e:	b29b      	uxth	r3, r3
 8002810:	737b      	strb	r3, [r7, #13]
 8002812:	89fb      	ldrh	r3, [r7, #14]
 8002814:	733b      	strb	r3, [r7, #12]
 8002816:	231e      	movs	r3, #30
 8002818:	723b      	strb	r3, [r7, #8]
 800281a:	7b3b      	ldrb	r3, [r7, #12]
 800281c:	727b      	strb	r3, [r7, #9]
 800281e:	7b7b      	ldrb	r3, [r7, #13]
 8002820:	72bb      	strb	r3, [r7, #10]
 8002822:	79fa      	ldrb	r2, [r7, #7]
 8002824:	f107 0308 	add.w	r3, r7, #8
 8002828:	4610      	mov	r0, r2
 800282a:	2103      	movs	r1, #3
 800282c:	2203      	movs	r2, #3
 800282e:	f7ff fed1 	bl	80025d4 <sendServoCommand>
 8002832:	79fb      	ldrb	r3, [r7, #7]
 8002834:	4618      	mov	r0, r3
 8002836:	f7ff ffa9 	bl	800278c <getAndCheckResponse>
 800283a:	4603      	mov	r3, r0
 800283c:	f083 0301 	eor.w	r3, r3, #1
 8002840:	b2db      	uxtb	r3, r3
 8002842:	2b00      	cmp	r3, #0
 8002844:	d001      	beq.n	800284a <setServoAngle+0x76>
 8002846:	2300      	movs	r3, #0
 8002848:	e000      	b.n	800284c <setServoAngle+0x78>
 800284a:	2301      	movs	r3, #1
 800284c:	4618      	mov	r0, r3
 800284e:	3710      	adds	r7, #16
 8002850:	46bd      	mov	sp, r7
 8002852:	bd80      	pop	{r7, pc}
 8002854:	405a3d71 	.word	0x405a3d71

08002858 <getServoAngle>:
 8002858:	b580      	push	{r7, lr}
 800285a:	b084      	sub	sp, #16
 800285c:	af00      	add	r7, sp, #0
 800285e:	4603      	mov	r3, r0
 8002860:	6039      	str	r1, [r7, #0]
 8002862:	71fb      	strb	r3, [r7, #7]
 8002864:	4b1f      	ldr	r3, [pc, #124]	; (80028e4 <getServoAngle+0x8c>)
 8002866:	f107 010c 	add.w	r1, r7, #12
 800286a:	461a      	mov	r2, r3
 800286c:	2302      	movs	r3, #2
 800286e:	4608      	mov	r0, r1
 8002870:	4611      	mov	r1, r2
 8002872:	461a      	mov	r2, r3
 8002874:	f004 fa9a 	bl	8006dac <memcpy>
 8002878:	79fa      	ldrb	r2, [r7, #7]
 800287a:	f107 030c 	add.w	r3, r7, #12
 800287e:	4610      	mov	r0, r2
 8002880:	2102      	movs	r1, #2
 8002882:	2202      	movs	r2, #2
 8002884:	f7ff fea6 	bl	80025d4 <sendServoCommand>
 8002888:	79fb      	ldrb	r3, [r7, #7]
 800288a:	4618      	mov	r0, r3
 800288c:	f7ff ff7e 	bl	800278c <getAndCheckResponse>
 8002890:	4603      	mov	r3, r0
 8002892:	f083 0301 	eor.w	r3, r3, #1
 8002896:	b2db      	uxtb	r3, r3
 8002898:	2b00      	cmp	r3, #0
 800289a:	d001      	beq.n	80028a0 <getServoAngle+0x48>
 800289c:	2300      	movs	r3, #0
 800289e:	e01c      	b.n	80028da <getServoAngle+0x82>
 80028a0:	4b11      	ldr	r3, [pc, #68]	; (80028e8 <getServoAngle+0x90>)
 80028a2:	791b      	ldrb	r3, [r3, #4]
 80028a4:	81fb      	strh	r3, [r7, #14]
 80028a6:	89fb      	ldrh	r3, [r7, #14]
 80028a8:	021b      	lsls	r3, r3, #8
 80028aa:	81fb      	strh	r3, [r7, #14]
 80028ac:	4b0e      	ldr	r3, [pc, #56]	; (80028e8 <getServoAngle+0x90>)
 80028ae:	78db      	ldrb	r3, [r3, #3]
 80028b0:	461a      	mov	r2, r3
 80028b2:	89fb      	ldrh	r3, [r7, #14]
 80028b4:	4313      	orrs	r3, r2
 80028b6:	81fb      	strh	r3, [r7, #14]
 80028b8:	89fb      	ldrh	r3, [r7, #14]
 80028ba:	ee07 3a90 	vmov	s15, r3
 80028be:	eeb8 7a67 	vcvt.f32.u32	s14, s15
 80028c2:	eddf 7a0a 	vldr	s15, [pc, #40]	; 80028ec <getServoAngle+0x94>
 80028c6:	ee27 7a27 	vmul.f32	s14, s14, s15
 80028ca:	eddf 7a09 	vldr	s15, [pc, #36]	; 80028f0 <getServoAngle+0x98>
 80028ce:	eec7 7a27 	vdiv.f32	s15, s14, s15
 80028d2:	683b      	ldr	r3, [r7, #0]
 80028d4:	edc3 7a00 	vstr	s15, [r3]
 80028d8:	2301      	movs	r3, #1
 80028da:	4618      	mov	r0, r3
 80028dc:	3710      	adds	r7, #16
 80028de:	46bd      	mov	sp, r7
 80028e0:	bd80      	pop	{r7, pc}
 80028e2:	bf00      	nop
 80028e4:	080094fc 	.word	0x080094fc
 80028e8:	20014ec4 	.word	0x20014ec4
 80028ec:	43960000 	.word	0x43960000
 80028f0:	447fc000 	.word	0x447fc000

080028f4 <sendServoByte>:
 80028f4:	b580      	push	{r7, lr}
 80028f6:	b082      	sub	sp, #8
 80028f8:	af00      	add	r7, sp, #0
 80028fa:	4603      	mov	r3, r0
 80028fc:	71fb      	strb	r3, [r7, #7]
 80028fe:	4809      	ldr	r0, [pc, #36]	; (8002924 <sendServoByte+0x30>)
 8002900:	210c      	movs	r1, #12
 8002902:	2200      	movs	r2, #0
 8002904:	f7fe fc84 	bl	8001210 <gpioPinSetLevel>
 8002908:	79fb      	ldrb	r3, [r7, #7]
 800290a:	4807      	ldr	r0, [pc, #28]	; (8002928 <sendServoByte+0x34>)
 800290c:	4619      	mov	r1, r3
 800290e:	f7ff f9d5 	bl	8001cbc <usartPutCharNoEcho>
 8002912:	4804      	ldr	r0, [pc, #16]	; (8002924 <sendServoByte+0x30>)
 8002914:	210c      	movs	r1, #12
 8002916:	2201      	movs	r2, #1
 8002918:	f7fe fc7a 	bl	8001210 <gpioPinSetLevel>
 800291c:	3708      	adds	r7, #8
 800291e:	46bd      	mov	sp, r7
 8002920:	bd80      	pop	{r7, pc}
 8002922:	bf00      	nop
 8002924:	40020400 	.word	0x40020400
 8002928:	40004c00 	.word	0x40004c00

0800292c <clearServoReceiveBuffer>:
 800292c:	b480      	push	{r7}
 800292e:	af00      	add	r7, sp, #0
 8002930:	4b03      	ldr	r3, [pc, #12]	; (8002940 <clearServoReceiveBuffer+0x14>)
 8002932:	681a      	ldr	r2, [r3, #0]
 8002934:	4b03      	ldr	r3, [pc, #12]	; (8002944 <clearServoReceiveBuffer+0x18>)
 8002936:	601a      	str	r2, [r3, #0]
 8002938:	46bd      	mov	sp, r7
 800293a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800293e:	4770      	bx	lr
 8002940:	200000e8 	.word	0x200000e8
 8002944:	200000e4 	.word	0x200000e4

08002948 <getServoBytesAvailable>:
 8002948:	b480      	push	{r7}
 800294a:	b083      	sub	sp, #12
 800294c:	af00      	add	r7, sp, #0
 800294e:	4b0c      	ldr	r3, [pc, #48]	; (8002980 <getServoBytesAvailable+0x38>)
 8002950:	681b      	ldr	r3, [r3, #0]
 8002952:	607b      	str	r3, [r7, #4]
 8002954:	4b0b      	ldr	r3, [pc, #44]	; (8002984 <getServoBytesAvailable+0x3c>)
 8002956:	681b      	ldr	r3, [r3, #0]
 8002958:	603b      	str	r3, [r7, #0]
 800295a:	683a      	ldr	r2, [r7, #0]
 800295c:	687b      	ldr	r3, [r7, #4]
 800295e:	429a      	cmp	r2, r3
 8002960:	d303      	bcc.n	800296a <getServoBytesAvailable+0x22>
 8002962:	683a      	ldr	r2, [r7, #0]
 8002964:	687b      	ldr	r3, [r7, #4]
 8002966:	1ad3      	subs	r3, r2, r3
 8002968:	e003      	b.n	8002972 <getServoBytesAvailable+0x2a>
 800296a:	683a      	ldr	r2, [r7, #0]
 800296c:	687b      	ldr	r3, [r7, #4]
 800296e:	1ad3      	subs	r3, r2, r3
 8002970:	3320      	adds	r3, #32
 8002972:	4618      	mov	r0, r3
 8002974:	370c      	adds	r7, #12
 8002976:	46bd      	mov	sp, r7
 8002978:	f85d 7b04 	ldr.w	r7, [sp], #4
 800297c:	4770      	bx	lr
 800297e:	bf00      	nop
 8002980:	200000e4 	.word	0x200000e4
 8002984:	200000e8 	.word	0x200000e8

08002988 <getServoByte>:
 8002988:	b480      	push	{r7}
 800298a:	af00      	add	r7, sp, #0
 800298c:	4b0a      	ldr	r3, [pc, #40]	; (80029b8 <getServoByte+0x30>)
 800298e:	681b      	ldr	r3, [r3, #0]
 8002990:	1c5a      	adds	r2, r3, #1
 8002992:	4b09      	ldr	r3, [pc, #36]	; (80029b8 <getServoByte+0x30>)
 8002994:	601a      	str	r2, [r3, #0]
 8002996:	4b08      	ldr	r3, [pc, #32]	; (80029b8 <getServoByte+0x30>)
 8002998:	681a      	ldr	r2, [r3, #0]
 800299a:	4b08      	ldr	r3, [pc, #32]	; (80029bc <getServoByte+0x34>)
 800299c:	429a      	cmp	r2, r3
 800299e:	d302      	bcc.n	80029a6 <getServoByte+0x1e>
 80029a0:	4b05      	ldr	r3, [pc, #20]	; (80029b8 <getServoByte+0x30>)
 80029a2:	4a07      	ldr	r2, [pc, #28]	; (80029c0 <getServoByte+0x38>)
 80029a4:	601a      	str	r2, [r3, #0]
 80029a6:	4b04      	ldr	r3, [pc, #16]	; (80029b8 <getServoByte+0x30>)
 80029a8:	681b      	ldr	r3, [r3, #0]
 80029aa:	781b      	ldrb	r3, [r3, #0]
 80029ac:	b2db      	uxtb	r3, r3
 80029ae:	4618      	mov	r0, r3
 80029b0:	46bd      	mov	sp, r7
 80029b2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80029b6:	4770      	bx	lr
 80029b8:	200000e4 	.word	0x200000e4
 80029bc:	20014f04 	.word	0x20014f04
 80029c0:	20014ee4 	.word	0x20014ee4

080029c4 <UART4_IRQHandler>:
 80029c4:	b480      	push	{r7}
 80029c6:	b083      	sub	sp, #12
 80029c8:	af00      	add	r7, sp, #0
 80029ca:	4b13      	ldr	r3, [pc, #76]	; (8002a18 <UART4_IRQHandler+0x54>)
 80029cc:	681b      	ldr	r3, [r3, #0]
 80029ce:	f003 0320 	and.w	r3, r3, #32
 80029d2:	2b00      	cmp	r3, #0
 80029d4:	d01a      	beq.n	8002a0c <UART4_IRQHandler+0x48>
 80029d6:	4b10      	ldr	r3, [pc, #64]	; (8002a18 <UART4_IRQHandler+0x54>)
 80029d8:	4a0f      	ldr	r2, [pc, #60]	; (8002a18 <UART4_IRQHandler+0x54>)
 80029da:	6812      	ldr	r2, [r2, #0]
 80029dc:	f022 0220 	bic.w	r2, r2, #32
 80029e0:	601a      	str	r2, [r3, #0]
 80029e2:	4b0d      	ldr	r3, [pc, #52]	; (8002a18 <UART4_IRQHandler+0x54>)
 80029e4:	685b      	ldr	r3, [r3, #4]
 80029e6:	71fb      	strb	r3, [r7, #7]
 80029e8:	4b0c      	ldr	r3, [pc, #48]	; (8002a1c <UART4_IRQHandler+0x58>)
 80029ea:	681b      	ldr	r3, [r3, #0]
 80029ec:	1c5a      	adds	r2, r3, #1
 80029ee:	4b0b      	ldr	r3, [pc, #44]	; (8002a1c <UART4_IRQHandler+0x58>)
 80029f0:	601a      	str	r2, [r3, #0]
 80029f2:	4b0a      	ldr	r3, [pc, #40]	; (8002a1c <UART4_IRQHandler+0x58>)
 80029f4:	681a      	ldr	r2, [r3, #0]
 80029f6:	4b0a      	ldr	r3, [pc, #40]	; (8002a20 <UART4_IRQHandler+0x5c>)
 80029f8:	429a      	cmp	r2, r3
 80029fa:	d302      	bcc.n	8002a02 <UART4_IRQHandler+0x3e>
 80029fc:	4b07      	ldr	r3, [pc, #28]	; (8002a1c <UART4_IRQHandler+0x58>)
 80029fe:	4a09      	ldr	r2, [pc, #36]	; (8002a24 <UART4_IRQHandler+0x60>)
 8002a00:	601a      	str	r2, [r3, #0]
 8002a02:	4b06      	ldr	r3, [pc, #24]	; (8002a1c <UART4_IRQHandler+0x58>)
 8002a04:	681b      	ldr	r3, [r3, #0]
 8002a06:	79fa      	ldrb	r2, [r7, #7]
 8002a08:	701a      	strb	r2, [r3, #0]
 8002a0a:	bf00      	nop
 8002a0c:	370c      	adds	r7, #12
 8002a0e:	46bd      	mov	sp, r7
 8002a10:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002a14:	4770      	bx	lr
 8002a16:	bf00      	nop
 8002a18:	40004c00 	.word	0x40004c00
 8002a1c:	200000e8 	.word	0x200000e8
 8002a20:	20014f04 	.word	0x20014f04
 8002a24:	20014ee4 	.word	0x20014ee4

08002a28 <NVIC_EnableIRQ>:
 8002a28:	b480      	push	{r7}
 8002a2a:	b083      	sub	sp, #12
 8002a2c:	af00      	add	r7, sp, #0
 8002a2e:	4603      	mov	r3, r0
 8002a30:	71fb      	strb	r3, [r7, #7]
 8002a32:	4b08      	ldr	r3, [pc, #32]	; (8002a54 <NVIC_EnableIRQ+0x2c>)
 8002a34:	f997 2007 	ldrsb.w	r2, [r7, #7]
 8002a38:	0952      	lsrs	r2, r2, #5
 8002a3a:	79f9      	ldrb	r1, [r7, #7]
 8002a3c:	f001 011f 	and.w	r1, r1, #31
 8002a40:	2001      	movs	r0, #1
 8002a42:	fa00 f101 	lsl.w	r1, r0, r1
 8002a46:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8002a4a:	370c      	adds	r7, #12
 8002a4c:	46bd      	mov	sp, r7
 8002a4e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002a52:	4770      	bx	lr
 8002a54:	e000e100 	.word	0xe000e100

08002a58 <NVIC_DisableIRQ>:
 8002a58:	b480      	push	{r7}
 8002a5a:	b083      	sub	sp, #12
 8002a5c:	af00      	add	r7, sp, #0
 8002a5e:	4603      	mov	r3, r0
 8002a60:	71fb      	strb	r3, [r7, #7]
 8002a62:	4b09      	ldr	r3, [pc, #36]	; (8002a88 <NVIC_DisableIRQ+0x30>)
 8002a64:	f997 2007 	ldrsb.w	r2, [r7, #7]
 8002a68:	0952      	lsrs	r2, r2, #5
 8002a6a:	79f9      	ldrb	r1, [r7, #7]
 8002a6c:	f001 011f 	and.w	r1, r1, #31
 8002a70:	2001      	movs	r0, #1
 8002a72:	fa00 f101 	lsl.w	r1, r0, r1
 8002a76:	3220      	adds	r2, #32
 8002a78:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8002a7c:	370c      	adds	r7, #12
 8002a7e:	46bd      	mov	sp, r7
 8002a80:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002a84:	4770      	bx	lr
 8002a86:	bf00      	nop
 8002a88:	e000e100 	.word	0xe000e100

08002a8c <TIM6_DAC_IRQHandler>:
 8002a8c:	b580      	push	{r7, lr}
 8002a8e:	af00      	add	r7, sp, #0
 8002a90:	4b19      	ldr	r3, [pc, #100]	; (8002af8 <TIM6_DAC_IRQHandler+0x6c>)
 8002a92:	691b      	ldr	r3, [r3, #16]
 8002a94:	f003 0301 	and.w	r3, r3, #1
 8002a98:	2b00      	cmp	r3, #0
 8002a9a:	d02b      	beq.n	8002af4 <TIM6_DAC_IRQHandler+0x68>
 8002a9c:	4816      	ldr	r0, [pc, #88]	; (8002af8 <TIM6_DAC_IRQHandler+0x6c>)
 8002a9e:	2101      	movs	r1, #1
 8002aa0:	f7ff f8f8 	bl	8001c94 <timClearStatusRegisterFlag>
 8002aa4:	2032      	movs	r0, #50	; 0x32
 8002aa6:	f7ff ffd7 	bl	8002a58 <NVIC_DisableIRQ>
 8002aaa:	202d      	movs	r0, #45	; 0x2d
 8002aac:	f7ff ffd4 	bl	8002a58 <NVIC_DisableIRQ>
 8002ab0:	f000 fc3a 	bl	8003328 <readEnc>
 8002ab4:	f000 fbbe 	bl	8003234 <calcGlobSpeedAndCoord>
 8002ab8:	f001 f812 	bl	8003ae0 <updateRobotStatus>
 8002abc:	4b0f      	ldr	r3, [pc, #60]	; (8002afc <TIM6_DAC_IRQHandler+0x70>)
 8002abe:	789b      	ldrb	r3, [r3, #2]
 8002ac0:	2b00      	cmp	r3, #0
 8002ac2:	d003      	beq.n	8002acc <TIM6_DAC_IRQHandler+0x40>
 8002ac4:	f000 ff02 	bl	80038cc <checkIfPositionIsReached>
 8002ac8:	f000 fe28 	bl	800371c <speedRecalculation>
 8002acc:	4b0b      	ldr	r3, [pc, #44]	; (8002afc <TIM6_DAC_IRQHandler+0x70>)
 8002ace:	791b      	ldrb	r3, [r3, #4]
 8002ad0:	2b00      	cmp	r3, #0
 8002ad2:	d001      	beq.n	8002ad8 <TIM6_DAC_IRQHandler+0x4c>
 8002ad4:	f7ff faa6 	bl	8002024 <checkCollisionAvoidance>
 8002ad8:	4b08      	ldr	r3, [pc, #32]	; (8002afc <TIM6_DAC_IRQHandler+0x70>)
 8002ada:	785b      	ldrb	r3, [r3, #1]
 8002adc:	2b00      	cmp	r3, #0
 8002ade:	d003      	beq.n	8002ae8 <TIM6_DAC_IRQHandler+0x5c>
 8002ae0:	f000 fd08 	bl	80034f4 <calcForwardKin>
 8002ae4:	f000 fdfa 	bl	80036dc <setMotorSpeeds>
 8002ae8:	2032      	movs	r0, #50	; 0x32
 8002aea:	f7ff ff9d 	bl	8002a28 <NVIC_EnableIRQ>
 8002aee:	202d      	movs	r0, #45	; 0x2d
 8002af0:	f7ff ff9a 	bl	8002a28 <NVIC_EnableIRQ>
 8002af4:	bf00      	nop
 8002af6:	bd80      	pop	{r7, pc}
 8002af8:	40001000 	.word	0x40001000
 8002afc:	20014fd4 	.word	0x20014fd4

08002b00 <I2C2_ER_IRQHandler>:
 8002b00:	b480      	push	{r7}
 8002b02:	af00      	add	r7, sp, #0
 8002b04:	4b1a      	ldr	r3, [pc, #104]	; (8002b70 <I2C2_ER_IRQHandler+0x70>)
 8002b06:	695b      	ldr	r3, [r3, #20]
 8002b08:	f403 7300 	and.w	r3, r3, #512	; 0x200
 8002b0c:	2b00      	cmp	r3, #0
 8002b0e:	d009      	beq.n	8002b24 <I2C2_ER_IRQHandler+0x24>
 8002b10:	4b17      	ldr	r3, [pc, #92]	; (8002b70 <I2C2_ER_IRQHandler+0x70>)
 8002b12:	4a17      	ldr	r2, [pc, #92]	; (8002b70 <I2C2_ER_IRQHandler+0x70>)
 8002b14:	6952      	ldr	r2, [r2, #20]
 8002b16:	f422 7200 	bic.w	r2, r2, #512	; 0x200
 8002b1a:	615a      	str	r2, [r3, #20]
 8002b1c:	4b15      	ldr	r3, [pc, #84]	; (8002b74 <I2C2_ER_IRQHandler+0x74>)
 8002b1e:	2203      	movs	r2, #3
 8002b20:	711a      	strb	r2, [r3, #4]
 8002b22:	e020      	b.n	8002b66 <I2C2_ER_IRQHandler+0x66>
 8002b24:	4b12      	ldr	r3, [pc, #72]	; (8002b70 <I2C2_ER_IRQHandler+0x70>)
 8002b26:	695b      	ldr	r3, [r3, #20]
 8002b28:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8002b2c:	2b00      	cmp	r3, #0
 8002b2e:	d009      	beq.n	8002b44 <I2C2_ER_IRQHandler+0x44>
 8002b30:	4b0f      	ldr	r3, [pc, #60]	; (8002b70 <I2C2_ER_IRQHandler+0x70>)
 8002b32:	4a0f      	ldr	r2, [pc, #60]	; (8002b70 <I2C2_ER_IRQHandler+0x70>)
 8002b34:	6952      	ldr	r2, [r2, #20]
 8002b36:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 8002b3a:	615a      	str	r2, [r3, #20]
 8002b3c:	4b0d      	ldr	r3, [pc, #52]	; (8002b74 <I2C2_ER_IRQHandler+0x74>)
 8002b3e:	2201      	movs	r2, #1
 8002b40:	711a      	strb	r2, [r3, #4]
 8002b42:	e010      	b.n	8002b66 <I2C2_ER_IRQHandler+0x66>
 8002b44:	4b0a      	ldr	r3, [pc, #40]	; (8002b70 <I2C2_ER_IRQHandler+0x70>)
 8002b46:	695b      	ldr	r3, [r3, #20]
 8002b48:	f403 7380 	and.w	r3, r3, #256	; 0x100
 8002b4c:	2b00      	cmp	r3, #0
 8002b4e:	d009      	beq.n	8002b64 <I2C2_ER_IRQHandler+0x64>
 8002b50:	4b07      	ldr	r3, [pc, #28]	; (8002b70 <I2C2_ER_IRQHandler+0x70>)
 8002b52:	4a07      	ldr	r2, [pc, #28]	; (8002b70 <I2C2_ER_IRQHandler+0x70>)
 8002b54:	6952      	ldr	r2, [r2, #20]
 8002b56:	f422 7280 	bic.w	r2, r2, #256	; 0x100
 8002b5a:	615a      	str	r2, [r3, #20]
 8002b5c:	4b05      	ldr	r3, [pc, #20]	; (8002b74 <I2C2_ER_IRQHandler+0x74>)
 8002b5e:	2204      	movs	r2, #4
 8002b60:	711a      	strb	r2, [r3, #4]
 8002b62:	e000      	b.n	8002b66 <I2C2_ER_IRQHandler+0x66>
 8002b64:	bf00      	nop
 8002b66:	46bd      	mov	sp, r7
 8002b68:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002b6c:	4770      	bx	lr
 8002b6e:	bf00      	nop
 8002b70:	40005800 	.word	0x40005800
 8002b74:	20014d90 	.word	0x20014d90

08002b78 <TIM7_IRQHandler>:
 8002b78:	b580      	push	{r7, lr}
 8002b7a:	af00      	add	r7, sp, #0
 8002b7c:	4b08      	ldr	r3, [pc, #32]	; (8002ba0 <TIM7_IRQHandler+0x28>)
 8002b7e:	691b      	ldr	r3, [r3, #16]
 8002b80:	f003 0301 	and.w	r3, r3, #1
 8002b84:	2b00      	cmp	r3, #0
 8002b86:	d008      	beq.n	8002b9a <TIM7_IRQHandler+0x22>
 8002b88:	4805      	ldr	r0, [pc, #20]	; (8002ba0 <TIM7_IRQHandler+0x28>)
 8002b8a:	2101      	movs	r1, #1
 8002b8c:	f7ff f882 	bl	8001c94 <timClearStatusRegisterFlag>
 8002b90:	4b04      	ldr	r3, [pc, #16]	; (8002ba4 <TIM7_IRQHandler+0x2c>)
 8002b92:	681b      	ldr	r3, [r3, #0]
 8002b94:	1c5a      	adds	r2, r3, #1
 8002b96:	4b03      	ldr	r3, [pc, #12]	; (8002ba4 <TIM7_IRQHandler+0x2c>)
 8002b98:	601a      	str	r2, [r3, #0]
 8002b9a:	bf00      	nop
 8002b9c:	bd80      	pop	{r7, pc}
 8002b9e:	bf00      	nop
 8002ba0:	40001400 	.word	0x40001400
 8002ba4:	20000240 	.word	0x20000240

08002ba8 <TIM8_TRG_COM_TIM14_IRQHandler>:
 8002ba8:	b580      	push	{r7, lr}
 8002baa:	b082      	sub	sp, #8
 8002bac:	af00      	add	r7, sp, #0
 8002bae:	4b12      	ldr	r3, [pc, #72]	; (8002bf8 <TIM8_TRG_COM_TIM14_IRQHandler+0x50>)
 8002bb0:	691b      	ldr	r3, [r3, #16]
 8002bb2:	f003 0301 	and.w	r3, r3, #1
 8002bb6:	2b00      	cmp	r3, #0
 8002bb8:	d019      	beq.n	8002bee <TIM8_TRG_COM_TIM14_IRQHandler+0x46>
 8002bba:	f000 f81f 	bl	8002bfc <getLocalTime>
 8002bbe:	6078      	str	r0, [r7, #4]
 8002bc0:	480d      	ldr	r0, [pc, #52]	; (8002bf8 <TIM8_TRG_COM_TIM14_IRQHandler+0x50>)
 8002bc2:	2101      	movs	r1, #1
 8002bc4:	f7ff f866 	bl	8001c94 <timClearStatusRegisterFlag>
 8002bc8:	f000 f818 	bl	8002bfc <getLocalTime>
 8002bcc:	4602      	mov	r2, r0
 8002bce:	f644 6320 	movw	r3, #20000	; 0x4e20
 8002bd2:	429a      	cmp	r2, r3
 8002bd4:	d908      	bls.n	8002be8 <TIM8_TRG_COM_TIM14_IRQHandler+0x40>
 8002bd6:	f000 f811 	bl	8002bfc <getLocalTime>
 8002bda:	6038      	str	r0, [r7, #0]
 8002bdc:	f7ff f8b6 	bl	8001d4c <readRangesGlobally>
 8002be0:	f7ff fb02 	bl	80021e8 <postprocessDataForCalibration>
 8002be4:	f7ff f95a 	bl	8001e9c <checkRangeFindersReinitFlags>
 8002be8:	4803      	ldr	r0, [pc, #12]	; (8002bf8 <TIM8_TRG_COM_TIM14_IRQHandler+0x50>)
 8002bea:	f7ff f82d 	bl	8001c48 <timEnable>
 8002bee:	bf00      	nop
 8002bf0:	3708      	adds	r7, #8
 8002bf2:	46bd      	mov	sp, r7
 8002bf4:	bd80      	pop	{r7, pc}
 8002bf6:	bf00      	nop
 8002bf8:	40002000 	.word	0x40002000

08002bfc <getLocalTime>:
 8002bfc:	b480      	push	{r7}
 8002bfe:	af00      	add	r7, sp, #0
 8002c00:	4b03      	ldr	r3, [pc, #12]	; (8002c10 <getLocalTime+0x14>)
 8002c02:	681b      	ldr	r3, [r3, #0]
 8002c04:	4618      	mov	r0, r3
 8002c06:	46bd      	mov	sp, r7
 8002c08:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002c0c:	4770      	bx	lr
 8002c0e:	bf00      	nop
 8002c10:	20000240 	.word	0x20000240

08002c14 <getTimeDifference>:
 8002c14:	b580      	push	{r7, lr}
 8002c16:	b084      	sub	sp, #16
 8002c18:	af00      	add	r7, sp, #0
 8002c1a:	6078      	str	r0, [r7, #4]
 8002c1c:	2037      	movs	r0, #55	; 0x37
 8002c1e:	f7ff ff1b 	bl	8002a58 <NVIC_DisableIRQ>
 8002c22:	4b0d      	ldr	r3, [pc, #52]	; (8002c58 <getTimeDifference+0x44>)
 8002c24:	681a      	ldr	r2, [r3, #0]
 8002c26:	687b      	ldr	r3, [r7, #4]
 8002c28:	429a      	cmp	r2, r3
 8002c2a:	d305      	bcc.n	8002c38 <getTimeDifference+0x24>
 8002c2c:	4b0a      	ldr	r3, [pc, #40]	; (8002c58 <getTimeDifference+0x44>)
 8002c2e:	681a      	ldr	r2, [r3, #0]
 8002c30:	687b      	ldr	r3, [r7, #4]
 8002c32:	1ad3      	subs	r3, r2, r3
 8002c34:	60fb      	str	r3, [r7, #12]
 8002c36:	e007      	b.n	8002c48 <getTimeDifference+0x34>
 8002c38:	4b07      	ldr	r3, [pc, #28]	; (8002c58 <getTimeDifference+0x44>)
 8002c3a:	681a      	ldr	r2, [r3, #0]
 8002c3c:	687b      	ldr	r3, [r7, #4]
 8002c3e:	1ad3      	subs	r3, r2, r3
 8002c40:	f503 437f 	add.w	r3, r3, #65280	; 0xff00
 8002c44:	33ff      	adds	r3, #255	; 0xff
 8002c46:	60fb      	str	r3, [r7, #12]
 8002c48:	2037      	movs	r0, #55	; 0x37
 8002c4a:	f7ff feed 	bl	8002a28 <NVIC_EnableIRQ>
 8002c4e:	68fb      	ldr	r3, [r7, #12]
 8002c50:	4618      	mov	r0, r3
 8002c52:	3710      	adds	r7, #16
 8002c54:	46bd      	mov	sp, r7
 8002c56:	bd80      	pop	{r7, pc}
 8002c58:	20000240 	.word	0x20000240

08002c5c <checkTimeout>:
 8002c5c:	b580      	push	{r7, lr}
 8002c5e:	b084      	sub	sp, #16
 8002c60:	af00      	add	r7, sp, #0
 8002c62:	6078      	str	r0, [r7, #4]
 8002c64:	6039      	str	r1, [r7, #0]
 8002c66:	6878      	ldr	r0, [r7, #4]
 8002c68:	f7ff ffd4 	bl	8002c14 <getTimeDifference>
 8002c6c:	60f8      	str	r0, [r7, #12]
 8002c6e:	68fa      	ldr	r2, [r7, #12]
 8002c70:	683b      	ldr	r3, [r7, #0]
 8002c72:	429a      	cmp	r2, r3
 8002c74:	d301      	bcc.n	8002c7a <checkTimeout+0x1e>
 8002c76:	2301      	movs	r3, #1
 8002c78:	e000      	b.n	8002c7c <checkTimeout+0x20>
 8002c7a:	2300      	movs	r3, #0
 8002c7c:	4618      	mov	r0, r3
 8002c7e:	3710      	adds	r7, #16
 8002c80:	46bd      	mov	sp, r7
 8002c82:	bd80      	pop	{r7, pc}

08002c84 <delayInTenthOfMs>:
 8002c84:	b580      	push	{r7, lr}
 8002c86:	b084      	sub	sp, #16
 8002c88:	af00      	add	r7, sp, #0
 8002c8a:	4603      	mov	r3, r0
 8002c8c:	80fb      	strh	r3, [r7, #6]
 8002c8e:	f7ff ffb5 	bl	8002bfc <getLocalTime>
 8002c92:	60f8      	str	r0, [r7, #12]
 8002c94:	bf00      	nop
 8002c96:	88fb      	ldrh	r3, [r7, #6]
 8002c98:	68f8      	ldr	r0, [r7, #12]
 8002c9a:	4619      	mov	r1, r3
 8002c9c:	f7ff ffde 	bl	8002c5c <checkTimeout>
 8002ca0:	4603      	mov	r3, r0
 8002ca2:	2b00      	cmp	r3, #0
 8002ca4:	d0f7      	beq.n	8002c96 <delayInTenthOfMs+0x12>
 8002ca6:	bf00      	nop
 8002ca8:	3710      	adds	r7, #16
 8002caa:	46bd      	mov	sp, r7
 8002cac:	bd80      	pop	{r7, pc}
 8002cae:	bf00      	nop

08002cb0 <TIM5_IRQHandler>:
 8002cb0:	b580      	push	{r7, lr}
 8002cb2:	af00      	add	r7, sp, #0
 8002cb4:	4b10      	ldr	r3, [pc, #64]	; (8002cf8 <TIM5_IRQHandler+0x48>)
 8002cb6:	691b      	ldr	r3, [r3, #16]
 8002cb8:	f003 0301 	and.w	r3, r3, #1
 8002cbc:	2b00      	cmp	r3, #0
 8002cbe:	d018      	beq.n	8002cf2 <TIM5_IRQHandler+0x42>
 8002cc0:	480d      	ldr	r0, [pc, #52]	; (8002cf8 <TIM5_IRQHandler+0x48>)
 8002cc2:	2101      	movs	r1, #1
 8002cc4:	f7fe ffe6 	bl	8001c94 <timClearStatusRegisterFlag>
 8002cc8:	2000      	movs	r0, #0
 8002cca:	490c      	ldr	r1, [pc, #48]	; (8002cfc <TIM5_IRQHandler+0x4c>)
 8002ccc:	f000 f8b8 	bl	8002e40 <execManipTasks>
 8002cd0:	2001      	movs	r0, #1
 8002cd2:	490b      	ldr	r1, [pc, #44]	; (8002d00 <TIM5_IRQHandler+0x50>)
 8002cd4:	f000 f8b4 	bl	8002e40 <execManipTasks>
 8002cd8:	2002      	movs	r0, #2
 8002cda:	490a      	ldr	r1, [pc, #40]	; (8002d04 <TIM5_IRQHandler+0x54>)
 8002cdc:	f000 f8b0 	bl	8002e40 <execManipTasks>
 8002ce0:	4809      	ldr	r0, [pc, #36]	; (8002d08 <TIM5_IRQHandler+0x58>)
 8002ce2:	f000 f855 	bl	8002d90 <checkPosServo>
 8002ce6:	4809      	ldr	r0, [pc, #36]	; (8002d0c <TIM5_IRQHandler+0x5c>)
 8002ce8:	f000 f852 	bl	8002d90 <checkPosServo>
 8002cec:	4808      	ldr	r0, [pc, #32]	; (8002d10 <TIM5_IRQHandler+0x60>)
 8002cee:	f000 f84f 	bl	8002d90 <checkPosServo>
 8002cf2:	bf00      	nop
 8002cf4:	bd80      	pop	{r7, pc}
 8002cf6:	bf00      	nop
 8002cf8:	40000c00 	.word	0x40000c00
 8002cfc:	20014f40 	.word	0x20014f40
 8002d00:	20014f68 	.word	0x20014f68
 8002d04:	20014f90 	.word	0x20014f90
 8002d08:	20014f04 	.word	0x20014f04
 8002d0c:	20014f18 	.word	0x20014f18
 8002d10:	20014f2c 	.word	0x20014f2c

08002d14 <setServoAngleWithRetries>:
 8002d14:	b580      	push	{r7, lr}
 8002d16:	b084      	sub	sp, #16
 8002d18:	af00      	add	r7, sp, #0
 8002d1a:	4602      	mov	r2, r0
 8002d1c:	460b      	mov	r3, r1
 8002d1e:	71fa      	strb	r2, [r7, #7]
 8002d20:	80bb      	strh	r3, [r7, #4]
 8002d22:	2300      	movs	r3, #0
 8002d24:	73fb      	strb	r3, [r7, #15]
 8002d26:	e00d      	b.n	8002d44 <setServoAngleWithRetries+0x30>
 8002d28:	79fa      	ldrb	r2, [r7, #7]
 8002d2a:	88bb      	ldrh	r3, [r7, #4]
 8002d2c:	4610      	mov	r0, r2
 8002d2e:	4619      	mov	r1, r3
 8002d30:	f7ff fd50 	bl	80027d4 <setServoAngle>
 8002d34:	4603      	mov	r3, r0
 8002d36:	2b00      	cmp	r3, #0
 8002d38:	d001      	beq.n	8002d3e <setServoAngleWithRetries+0x2a>
 8002d3a:	2301      	movs	r3, #1
 8002d3c:	e006      	b.n	8002d4c <setServoAngleWithRetries+0x38>
 8002d3e:	7bfb      	ldrb	r3, [r7, #15]
 8002d40:	3301      	adds	r3, #1
 8002d42:	73fb      	strb	r3, [r7, #15]
 8002d44:	7bfb      	ldrb	r3, [r7, #15]
 8002d46:	2b09      	cmp	r3, #9
 8002d48:	d9ee      	bls.n	8002d28 <setServoAngleWithRetries+0x14>
 8002d4a:	2300      	movs	r3, #0
 8002d4c:	4618      	mov	r0, r3
 8002d4e:	3710      	adds	r7, #16
 8002d50:	46bd      	mov	sp, r7
 8002d52:	bd80      	pop	{r7, pc}

08002d54 <getServoAngleWithRetries>:
 8002d54:	b580      	push	{r7, lr}
 8002d56:	b084      	sub	sp, #16
 8002d58:	af00      	add	r7, sp, #0
 8002d5a:	4603      	mov	r3, r0
 8002d5c:	6039      	str	r1, [r7, #0]
 8002d5e:	71fb      	strb	r3, [r7, #7]
 8002d60:	2300      	movs	r3, #0
 8002d62:	73fb      	strb	r3, [r7, #15]
 8002d64:	e00c      	b.n	8002d80 <getServoAngleWithRetries+0x2c>
 8002d66:	79fb      	ldrb	r3, [r7, #7]
 8002d68:	4618      	mov	r0, r3
 8002d6a:	6839      	ldr	r1, [r7, #0]
 8002d6c:	f7ff fd74 	bl	8002858 <getServoAngle>
 8002d70:	4603      	mov	r3, r0
 8002d72:	2b00      	cmp	r3, #0
 8002d74:	d001      	beq.n	8002d7a <getServoAngleWithRetries+0x26>
 8002d76:	2301      	movs	r3, #1
 8002d78:	e006      	b.n	8002d88 <getServoAngleWithRetries+0x34>
 8002d7a:	7bfb      	ldrb	r3, [r7, #15]
 8002d7c:	3301      	adds	r3, #1
 8002d7e:	73fb      	strb	r3, [r7, #15]
 8002d80:	7bfb      	ldrb	r3, [r7, #15]
 8002d82:	2b09      	cmp	r3, #9
 8002d84:	d9ef      	bls.n	8002d66 <getServoAngleWithRetries+0x12>
 8002d86:	2300      	movs	r3, #0
 8002d88:	4618      	mov	r0, r3
 8002d8a:	3710      	adds	r7, #16
 8002d8c:	46bd      	mov	sp, r7
 8002d8e:	bd80      	pop	{r7, pc}

08002d90 <checkPosServo>:
 8002d90:	b580      	push	{r7, lr}
 8002d92:	b084      	sub	sp, #16
 8002d94:	af00      	add	r7, sp, #0
 8002d96:	6078      	str	r0, [r7, #4]
 8002d98:	687b      	ldr	r3, [r7, #4]
 8002d9a:	7c1b      	ldrb	r3, [r3, #16]
 8002d9c:	2b01      	cmp	r3, #1
 8002d9e:	d132      	bne.n	8002e06 <checkPosServo+0x76>
 8002da0:	687b      	ldr	r3, [r7, #4]
 8002da2:	781a      	ldrb	r2, [r3, #0]
 8002da4:	f107 030c 	add.w	r3, r7, #12
 8002da8:	4610      	mov	r0, r2
 8002daa:	4619      	mov	r1, r3
 8002dac:	f7ff ffd2 	bl	8002d54 <getServoAngleWithRetries>
 8002db0:	4603      	mov	r3, r0
 8002db2:	2b00      	cmp	r3, #0
 8002db4:	d103      	bne.n	8002dbe <checkPosServo+0x2e>
 8002db6:	687b      	ldr	r3, [r7, #4]
 8002db8:	2203      	movs	r2, #3
 8002dba:	741a      	strb	r2, [r3, #16]
 8002dbc:	e024      	b.n	8002e08 <checkPosServo+0x78>
 8002dbe:	687b      	ldr	r3, [r7, #4]
 8002dc0:	ed93 7a02 	vldr	s14, [r3, #8]
 8002dc4:	edd7 7a03 	vldr	s15, [r7, #12]
 8002dc8:	ee77 7a67 	vsub.f32	s15, s14, s15
 8002dcc:	eeb0 7ae7 	vabs.f32	s14, s15
 8002dd0:	eef2 7a04 	vmov.f32	s15, #36	; 0x24
 8002dd4:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8002dd8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8002ddc:	d503      	bpl.n	8002de6 <checkPosServo+0x56>
 8002dde:	687b      	ldr	r3, [r7, #4]
 8002de0:	2202      	movs	r2, #2
 8002de2:	741a      	strb	r2, [r3, #16]
 8002de4:	e010      	b.n	8002e08 <checkPosServo+0x78>
 8002de6:	687b      	ldr	r3, [r7, #4]
 8002de8:	685b      	ldr	r3, [r3, #4]
 8002dea:	4618      	mov	r0, r3
 8002dec:	f244 6150 	movw	r1, #18000	; 0x4650
 8002df0:	f7ff ff34 	bl	8002c5c <checkTimeout>
 8002df4:	4603      	mov	r3, r0
 8002df6:	2b00      	cmp	r3, #0
 8002df8:	d004      	beq.n	8002e04 <checkPosServo+0x74>
 8002dfa:	687b      	ldr	r3, [r7, #4]
 8002dfc:	2204      	movs	r2, #4
 8002dfe:	741a      	strb	r2, [r3, #16]
 8002e00:	bf00      	nop
 8002e02:	e001      	b.n	8002e08 <checkPosServo+0x78>
 8002e04:	bf00      	nop
 8002e06:	bf00      	nop
 8002e08:	3710      	adds	r7, #16
 8002e0a:	46bd      	mov	sp, r7
 8002e0c:	bd80      	pop	{r7, pc}
 8002e0e:	bf00      	nop

08002e10 <resetChecker>:
 8002e10:	b480      	push	{r7}
 8002e12:	b083      	sub	sp, #12
 8002e14:	af00      	add	r7, sp, #0
 8002e16:	6078      	str	r0, [r7, #4]
 8002e18:	687b      	ldr	r3, [r7, #4]
 8002e1a:	2200      	movs	r2, #0
 8002e1c:	605a      	str	r2, [r3, #4]
 8002e1e:	687b      	ldr	r3, [r7, #4]
 8002e20:	2200      	movs	r2, #0
 8002e22:	701a      	strb	r2, [r3, #0]
 8002e24:	687b      	ldr	r3, [r7, #4]
 8002e26:	f04f 0200 	mov.w	r2, #0
 8002e2a:	609a      	str	r2, [r3, #8]
 8002e2c:	687b      	ldr	r3, [r7, #4]
 8002e2e:	2200      	movs	r2, #0
 8002e30:	741a      	strb	r2, [r3, #16]
 8002e32:	bf00      	nop
 8002e34:	370c      	adds	r7, #12
 8002e36:	46bd      	mov	sp, r7
 8002e38:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002e3c:	4770      	bx	lr
 8002e3e:	bf00      	nop

08002e40 <execManipTasks>:
 8002e40:	b580      	push	{r7, lr}
 8002e42:	b084      	sub	sp, #16
 8002e44:	af00      	add	r7, sp, #0
 8002e46:	4603      	mov	r3, r0
 8002e48:	6039      	str	r1, [r7, #0]
 8002e4a:	71fb      	strb	r3, [r7, #7]
 8002e4c:	683b      	ldr	r3, [r7, #0]
 8002e4e:	f893 3024 	ldrb.w	r3, [r3, #36]	; 0x24
 8002e52:	2b01      	cmp	r3, #1
 8002e54:	d175      	bne.n	8002f42 <execManipTasks+0x102>
 8002e56:	79fa      	ldrb	r2, [r7, #7]
 8002e58:	493c      	ldr	r1, [pc, #240]	; (8002f4c <execManipTasks+0x10c>)
 8002e5a:	4613      	mov	r3, r2
 8002e5c:	009b      	lsls	r3, r3, #2
 8002e5e:	4413      	add	r3, r2
 8002e60:	009b      	lsls	r3, r3, #2
 8002e62:	440b      	add	r3, r1
 8002e64:	3310      	adds	r3, #16
 8002e66:	781b      	ldrb	r3, [r3, #0]
 8002e68:	73fb      	strb	r3, [r7, #15]
 8002e6a:	7bfb      	ldrb	r3, [r7, #15]
 8002e6c:	2b05      	cmp	r3, #5
 8002e6e:	d869      	bhi.n	8002f44 <execManipTasks+0x104>
 8002e70:	a201      	add	r2, pc, #4	; (adr r2, 8002e78 <execManipTasks+0x38>)
 8002e72:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8002e76:	bf00      	nop
 8002e78:	08002e91 	.word	0x08002e91
 8002e7c:	08002ea3 	.word	0x08002ea3
 8002e80:	08002eab 	.word	0x08002eab
 8002e84:	08002ee9 	.word	0x08002ee9
 8002e88:	08002f07 	.word	0x08002f07
 8002e8c:	08002f25 	.word	0x08002f25
 8002e90:	79fb      	ldrb	r3, [r7, #7]
 8002e92:	4618      	mov	r0, r3
 8002e94:	6839      	ldr	r1, [r7, #0]
 8002e96:	f000 f85d 	bl	8002f54 <execManipSubtasks>
 8002e9a:	482d      	ldr	r0, [pc, #180]	; (8002f50 <execManipTasks+0x110>)
 8002e9c:	f7fe fed4 	bl	8001c48 <timEnable>
 8002ea0:	e04f      	b.n	8002f42 <execManipTasks+0x102>
 8002ea2:	482b      	ldr	r0, [pc, #172]	; (8002f50 <execManipTasks+0x110>)
 8002ea4:	f7fe fed0 	bl	8001c48 <timEnable>
 8002ea8:	e04b      	b.n	8002f42 <execManipTasks+0x102>
 8002eaa:	683b      	ldr	r3, [r7, #0]
 8002eac:	6a1b      	ldr	r3, [r3, #32]
 8002eae:	1c5a      	adds	r2, r3, #1
 8002eb0:	683b      	ldr	r3, [r7, #0]
 8002eb2:	621a      	str	r2, [r3, #32]
 8002eb4:	683b      	ldr	r3, [r7, #0]
 8002eb6:	6a1b      	ldr	r3, [r3, #32]
 8002eb8:	781b      	ldrb	r3, [r3, #0]
 8002eba:	2b0c      	cmp	r3, #12
 8002ebc:	d10e      	bne.n	8002edc <execManipTasks+0x9c>
 8002ebe:	683b      	ldr	r3, [r7, #0]
 8002ec0:	2200      	movs	r2, #0
 8002ec2:	f883 2024 	strb.w	r2, [r3, #36]	; 0x24
 8002ec6:	79fa      	ldrb	r2, [r7, #7]
 8002ec8:	4613      	mov	r3, r2
 8002eca:	009b      	lsls	r3, r3, #2
 8002ecc:	4413      	add	r3, r2
 8002ece:	009b      	lsls	r3, r3, #2
 8002ed0:	4a1e      	ldr	r2, [pc, #120]	; (8002f4c <execManipTasks+0x10c>)
 8002ed2:	4413      	add	r3, r2
 8002ed4:	4618      	mov	r0, r3
 8002ed6:	f7ff ff9b 	bl	8002e10 <resetChecker>
 8002eda:	e032      	b.n	8002f42 <execManipTasks+0x102>
 8002edc:	79fb      	ldrb	r3, [r7, #7]
 8002ede:	4618      	mov	r0, r3
 8002ee0:	6839      	ldr	r1, [r7, #0]
 8002ee2:	f000 f837 	bl	8002f54 <execManipSubtasks>
 8002ee6:	e02c      	b.n	8002f42 <execManipTasks+0x102>
 8002ee8:	683b      	ldr	r3, [r7, #0]
 8002eea:	2202      	movs	r2, #2
 8002eec:	f883 2024 	strb.w	r2, [r3, #36]	; 0x24
 8002ef0:	79fa      	ldrb	r2, [r7, #7]
 8002ef2:	4613      	mov	r3, r2
 8002ef4:	009b      	lsls	r3, r3, #2
 8002ef6:	4413      	add	r3, r2
 8002ef8:	009b      	lsls	r3, r3, #2
 8002efa:	4a14      	ldr	r2, [pc, #80]	; (8002f4c <execManipTasks+0x10c>)
 8002efc:	4413      	add	r3, r2
 8002efe:	4618      	mov	r0, r3
 8002f00:	f7ff ff86 	bl	8002e10 <resetChecker>
 8002f04:	e01d      	b.n	8002f42 <execManipTasks+0x102>
 8002f06:	683b      	ldr	r3, [r7, #0]
 8002f08:	2203      	movs	r2, #3
 8002f0a:	f883 2024 	strb.w	r2, [r3, #36]	; 0x24
 8002f0e:	79fa      	ldrb	r2, [r7, #7]
 8002f10:	4613      	mov	r3, r2
 8002f12:	009b      	lsls	r3, r3, #2
 8002f14:	4413      	add	r3, r2
 8002f16:	009b      	lsls	r3, r3, #2
 8002f18:	4a0c      	ldr	r2, [pc, #48]	; (8002f4c <execManipTasks+0x10c>)
 8002f1a:	4413      	add	r3, r2
 8002f1c:	4618      	mov	r0, r3
 8002f1e:	f7ff ff77 	bl	8002e10 <resetChecker>
 8002f22:	e00e      	b.n	8002f42 <execManipTasks+0x102>
 8002f24:	683b      	ldr	r3, [r7, #0]
 8002f26:	2204      	movs	r2, #4
 8002f28:	f883 2024 	strb.w	r2, [r3, #36]	; 0x24
 8002f2c:	79fa      	ldrb	r2, [r7, #7]
 8002f2e:	4613      	mov	r3, r2
 8002f30:	009b      	lsls	r3, r3, #2
 8002f32:	4413      	add	r3, r2
 8002f34:	009b      	lsls	r3, r3, #2
 8002f36:	4a05      	ldr	r2, [pc, #20]	; (8002f4c <execManipTasks+0x10c>)
 8002f38:	4413      	add	r3, r2
 8002f3a:	4618      	mov	r0, r3
 8002f3c:	f7ff ff68 	bl	8002e10 <resetChecker>
 8002f40:	bf00      	nop
 8002f42:	bf00      	nop
 8002f44:	bf00      	nop
 8002f46:	3710      	adds	r7, #16
 8002f48:	46bd      	mov	sp, r7
 8002f4a:	bd80      	pop	{r7, pc}
 8002f4c:	20014f04 	.word	0x20014f04
 8002f50:	40000c00 	.word	0x40000c00

08002f54 <execManipSubtasks>:
 8002f54:	b590      	push	{r4, r7, lr}
 8002f56:	b085      	sub	sp, #20
 8002f58:	af00      	add	r7, sp, #0
 8002f5a:	4603      	mov	r3, r0
 8002f5c:	6039      	str	r1, [r7, #0]
 8002f5e:	71fb      	strb	r3, [r7, #7]
 8002f60:	683b      	ldr	r3, [r7, #0]
 8002f62:	6a1b      	ldr	r3, [r3, #32]
 8002f64:	781b      	ldrb	r3, [r3, #0]
 8002f66:	733b      	strb	r3, [r7, #12]
 8002f68:	7b3b      	ldrb	r3, [r7, #12]
 8002f6a:	2b0c      	cmp	r3, #12
 8002f6c:	d875      	bhi.n	800305a <execManipSubtasks+0x106>
 8002f6e:	a201      	add	r2, pc, #4	; (adr r2, 8002f74 <execManipSubtasks+0x20>)
 8002f70:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8002f74:	08002fa9 	.word	0x08002fa9
 8002f78:	08002fb7 	.word	0x08002fb7
 8002f7c:	08002fc5 	.word	0x08002fc5
 8002f80:	08002fd3 	.word	0x08002fd3
 8002f84:	08002fe1 	.word	0x08002fe1
 8002f88:	08002fef 	.word	0x08002fef
 8002f8c:	08002ffd 	.word	0x08002ffd
 8002f90:	0800300b 	.word	0x0800300b
 8002f94:	08003019 	.word	0x08003019
 8002f98:	08003027 	.word	0x08003027
 8002f9c:	08003035 	.word	0x08003035
 8002fa0:	08003043 	.word	0x08003043
 8002fa4:	08003051 	.word	0x08003051
 8002fa8:	683b      	ldr	r3, [r7, #0]
 8002faa:	781b      	ldrb	r3, [r3, #0]
 8002fac:	737b      	strb	r3, [r7, #13]
 8002fae:	683b      	ldr	r3, [r7, #0]
 8002fb0:	885b      	ldrh	r3, [r3, #2]
 8002fb2:	81fb      	strh	r3, [r7, #14]
 8002fb4:	e051      	b.n	800305a <execManipSubtasks+0x106>
 8002fb6:	683b      	ldr	r3, [r7, #0]
 8002fb8:	781b      	ldrb	r3, [r3, #0]
 8002fba:	737b      	strb	r3, [r7, #13]
 8002fbc:	683b      	ldr	r3, [r7, #0]
 8002fbe:	889b      	ldrh	r3, [r3, #4]
 8002fc0:	81fb      	strh	r3, [r7, #14]
 8002fc2:	e04a      	b.n	800305a <execManipSubtasks+0x106>
 8002fc4:	683b      	ldr	r3, [r7, #0]
 8002fc6:	799b      	ldrb	r3, [r3, #6]
 8002fc8:	737b      	strb	r3, [r7, #13]
 8002fca:	683b      	ldr	r3, [r7, #0]
 8002fcc:	895b      	ldrh	r3, [r3, #10]
 8002fce:	81fb      	strh	r3, [r7, #14]
 8002fd0:	e043      	b.n	800305a <execManipSubtasks+0x106>
 8002fd2:	683b      	ldr	r3, [r7, #0]
 8002fd4:	799b      	ldrb	r3, [r3, #6]
 8002fd6:	737b      	strb	r3, [r7, #13]
 8002fd8:	683b      	ldr	r3, [r7, #0]
 8002fda:	8a1b      	ldrh	r3, [r3, #16]
 8002fdc:	81fb      	strh	r3, [r7, #14]
 8002fde:	e03c      	b.n	800305a <execManipSubtasks+0x106>
 8002fe0:	683b      	ldr	r3, [r7, #0]
 8002fe2:	799b      	ldrb	r3, [r3, #6]
 8002fe4:	737b      	strb	r3, [r7, #13]
 8002fe6:	683b      	ldr	r3, [r7, #0]
 8002fe8:	891b      	ldrh	r3, [r3, #8]
 8002fea:	81fb      	strh	r3, [r7, #14]
 8002fec:	e035      	b.n	800305a <execManipSubtasks+0x106>
 8002fee:	683b      	ldr	r3, [r7, #0]
 8002ff0:	799b      	ldrb	r3, [r3, #6]
 8002ff2:	737b      	strb	r3, [r7, #13]
 8002ff4:	683b      	ldr	r3, [r7, #0]
 8002ff6:	899b      	ldrh	r3, [r3, #12]
 8002ff8:	81fb      	strh	r3, [r7, #14]
 8002ffa:	e02e      	b.n	800305a <execManipSubtasks+0x106>
 8002ffc:	683b      	ldr	r3, [r7, #0]
 8002ffe:	799b      	ldrb	r3, [r3, #6]
 8003000:	737b      	strb	r3, [r7, #13]
 8003002:	683b      	ldr	r3, [r7, #0]
 8003004:	89db      	ldrh	r3, [r3, #14]
 8003006:	81fb      	strh	r3, [r7, #14]
 8003008:	e027      	b.n	800305a <execManipSubtasks+0x106>
 800300a:	683b      	ldr	r3, [r7, #0]
 800300c:	7c9b      	ldrb	r3, [r3, #18]
 800300e:	737b      	strb	r3, [r7, #13]
 8003010:	683b      	ldr	r3, [r7, #0]
 8003012:	8a9b      	ldrh	r3, [r3, #20]
 8003014:	81fb      	strh	r3, [r7, #14]
 8003016:	e020      	b.n	800305a <execManipSubtasks+0x106>
 8003018:	683b      	ldr	r3, [r7, #0]
 800301a:	7c9b      	ldrb	r3, [r3, #18]
 800301c:	737b      	strb	r3, [r7, #13]
 800301e:	683b      	ldr	r3, [r7, #0]
 8003020:	8adb      	ldrh	r3, [r3, #22]
 8003022:	81fb      	strh	r3, [r7, #14]
 8003024:	e019      	b.n	800305a <execManipSubtasks+0x106>
 8003026:	683b      	ldr	r3, [r7, #0]
 8003028:	7c9b      	ldrb	r3, [r3, #18]
 800302a:	737b      	strb	r3, [r7, #13]
 800302c:	683b      	ldr	r3, [r7, #0]
 800302e:	8b1b      	ldrh	r3, [r3, #24]
 8003030:	81fb      	strh	r3, [r7, #14]
 8003032:	e012      	b.n	800305a <execManipSubtasks+0x106>
 8003034:	683b      	ldr	r3, [r7, #0]
 8003036:	7e9b      	ldrb	r3, [r3, #26]
 8003038:	737b      	strb	r3, [r7, #13]
 800303a:	683b      	ldr	r3, [r7, #0]
 800303c:	8bdb      	ldrh	r3, [r3, #30]
 800303e:	81fb      	strh	r3, [r7, #14]
 8003040:	e00b      	b.n	800305a <execManipSubtasks+0x106>
 8003042:	683b      	ldr	r3, [r7, #0]
 8003044:	7e9b      	ldrb	r3, [r3, #26]
 8003046:	737b      	strb	r3, [r7, #13]
 8003048:	683b      	ldr	r3, [r7, #0]
 800304a:	8b9b      	ldrh	r3, [r3, #28]
 800304c:	81fb      	strh	r3, [r7, #14]
 800304e:	e004      	b.n	800305a <execManipSubtasks+0x106>
 8003050:	683b      	ldr	r3, [r7, #0]
 8003052:	2205      	movs	r2, #5
 8003054:	f883 2024 	strb.w	r2, [r3, #36]	; 0x24
 8003058:	e075      	b.n	8003146 <execManipSubtasks+0x1f2>
 800305a:	7b7a      	ldrb	r2, [r7, #13]
 800305c:	f107 0308 	add.w	r3, r7, #8
 8003060:	4610      	mov	r0, r2
 8003062:	4619      	mov	r1, r3
 8003064:	f7ff fe76 	bl	8002d54 <getServoAngleWithRetries>
 8003068:	4603      	mov	r3, r0
 800306a:	2b00      	cmp	r3, #0
 800306c:	d10e      	bne.n	800308c <execManipSubtasks+0x138>
 800306e:	683b      	ldr	r3, [r7, #0]
 8003070:	2202      	movs	r2, #2
 8003072:	f883 2024 	strb.w	r2, [r3, #36]	; 0x24
 8003076:	79fa      	ldrb	r2, [r7, #7]
 8003078:	4613      	mov	r3, r2
 800307a:	009b      	lsls	r3, r3, #2
 800307c:	4413      	add	r3, r2
 800307e:	009b      	lsls	r3, r3, #2
 8003080:	4a32      	ldr	r2, [pc, #200]	; (800314c <execManipSubtasks+0x1f8>)
 8003082:	4413      	add	r3, r2
 8003084:	4618      	mov	r0, r3
 8003086:	f7ff fec3 	bl	8002e10 <resetChecker>
 800308a:	e05c      	b.n	8003146 <execManipSubtasks+0x1f2>
 800308c:	7b7a      	ldrb	r2, [r7, #13]
 800308e:	89fb      	ldrh	r3, [r7, #14]
 8003090:	4610      	mov	r0, r2
 8003092:	4619      	mov	r1, r3
 8003094:	f7ff fe3e 	bl	8002d14 <setServoAngleWithRetries>
 8003098:	4603      	mov	r3, r0
 800309a:	2b00      	cmp	r3, #0
 800309c:	d10e      	bne.n	80030bc <execManipSubtasks+0x168>
 800309e:	683b      	ldr	r3, [r7, #0]
 80030a0:	2202      	movs	r2, #2
 80030a2:	f883 2024 	strb.w	r2, [r3, #36]	; 0x24
 80030a6:	79fa      	ldrb	r2, [r7, #7]
 80030a8:	4613      	mov	r3, r2
 80030aa:	009b      	lsls	r3, r3, #2
 80030ac:	4413      	add	r3, r2
 80030ae:	009b      	lsls	r3, r3, #2
 80030b0:	4a26      	ldr	r2, [pc, #152]	; (800314c <execManipSubtasks+0x1f8>)
 80030b2:	4413      	add	r3, r2
 80030b4:	4618      	mov	r0, r3
 80030b6:	f7ff feab 	bl	8002e10 <resetChecker>
 80030ba:	e044      	b.n	8003146 <execManipSubtasks+0x1f2>
 80030bc:	79fa      	ldrb	r2, [r7, #7]
 80030be:	4613      	mov	r3, r2
 80030c0:	009b      	lsls	r3, r3, #2
 80030c2:	4413      	add	r3, r2
 80030c4:	009b      	lsls	r3, r3, #2
 80030c6:	4a21      	ldr	r2, [pc, #132]	; (800314c <execManipSubtasks+0x1f8>)
 80030c8:	4413      	add	r3, r2
 80030ca:	4618      	mov	r0, r3
 80030cc:	f7ff fea0 	bl	8002e10 <resetChecker>
 80030d0:	79fa      	ldrb	r2, [r7, #7]
 80030d2:	491e      	ldr	r1, [pc, #120]	; (800314c <execManipSubtasks+0x1f8>)
 80030d4:	4613      	mov	r3, r2
 80030d6:	009b      	lsls	r3, r3, #2
 80030d8:	4413      	add	r3, r2
 80030da:	009b      	lsls	r3, r3, #2
 80030dc:	440b      	add	r3, r1
 80030de:	7b7a      	ldrb	r2, [r7, #13]
 80030e0:	701a      	strb	r2, [r3, #0]
 80030e2:	79fa      	ldrb	r2, [r7, #7]
 80030e4:	89fb      	ldrh	r3, [r7, #14]
 80030e6:	ee07 3a10 	vmov	s14, r3
 80030ea:	eef8 7a47 	vcvt.f32.u32	s15, s14
 80030ee:	4917      	ldr	r1, [pc, #92]	; (800314c <execManipSubtasks+0x1f8>)
 80030f0:	4613      	mov	r3, r2
 80030f2:	009b      	lsls	r3, r3, #2
 80030f4:	4413      	add	r3, r2
 80030f6:	009b      	lsls	r3, r3, #2
 80030f8:	440b      	add	r3, r1
 80030fa:	3308      	adds	r3, #8
 80030fc:	edc3 7a00 	vstr	s15, [r3]
 8003100:	79fa      	ldrb	r2, [r7, #7]
 8003102:	68b9      	ldr	r1, [r7, #8]
 8003104:	4811      	ldr	r0, [pc, #68]	; (800314c <execManipSubtasks+0x1f8>)
 8003106:	4613      	mov	r3, r2
 8003108:	009b      	lsls	r3, r3, #2
 800310a:	4413      	add	r3, r2
 800310c:	009b      	lsls	r3, r3, #2
 800310e:	4403      	add	r3, r0
 8003110:	3308      	adds	r3, #8
 8003112:	6059      	str	r1, [r3, #4]
 8003114:	79fa      	ldrb	r2, [r7, #7]
 8003116:	490d      	ldr	r1, [pc, #52]	; (800314c <execManipSubtasks+0x1f8>)
 8003118:	4613      	mov	r3, r2
 800311a:	009b      	lsls	r3, r3, #2
 800311c:	4413      	add	r3, r2
 800311e:	009b      	lsls	r3, r3, #2
 8003120:	440b      	add	r3, r1
 8003122:	3310      	adds	r3, #16
 8003124:	2201      	movs	r2, #1
 8003126:	701a      	strb	r2, [r3, #0]
 8003128:	79fc      	ldrb	r4, [r7, #7]
 800312a:	f7ff fd67 	bl	8002bfc <getLocalTime>
 800312e:	4602      	mov	r2, r0
 8003130:	4906      	ldr	r1, [pc, #24]	; (800314c <execManipSubtasks+0x1f8>)
 8003132:	4623      	mov	r3, r4
 8003134:	009b      	lsls	r3, r3, #2
 8003136:	4423      	add	r3, r4
 8003138:	009b      	lsls	r3, r3, #2
 800313a:	440b      	add	r3, r1
 800313c:	605a      	str	r2, [r3, #4]
 800313e:	4804      	ldr	r0, [pc, #16]	; (8003150 <execManipSubtasks+0x1fc>)
 8003140:	f7fe fd82 	bl	8001c48 <timEnable>
 8003144:	bf00      	nop
 8003146:	3714      	adds	r7, #20
 8003148:	46bd      	mov	sp, r7
 800314a:	bd90      	pop	{r4, r7, pc}
 800314c:	20014f04 	.word	0x20014f04
 8003150:	40000c00 	.word	0x40000c00

08003154 <normalizeAngle>:
 8003154:	b480      	push	{r7}
 8003156:	b083      	sub	sp, #12
 8003158:	af00      	add	r7, sp, #0
 800315a:	6078      	str	r0, [r7, #4]
 800315c:	687b      	ldr	r3, [r7, #4]
 800315e:	ed93 7a00 	vldr	s14, [r3]
 8003162:	eddf 7a15 	vldr	s15, [pc, #84]	; 80031b8 <normalizeAngle+0x64>
 8003166:	eeb4 7ae7 	vcmpe.f32	s14, s15
 800316a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800316e:	db0a      	blt.n	8003186 <normalizeAngle+0x32>
 8003170:	687b      	ldr	r3, [r7, #4]
 8003172:	ed93 7a00 	vldr	s14, [r3]
 8003176:	eddf 7a10 	vldr	s15, [pc, #64]	; 80031b8 <normalizeAngle+0x64>
 800317a:	ee77 7a67 	vsub.f32	s15, s14, s15
 800317e:	687b      	ldr	r3, [r7, #4]
 8003180:	edc3 7a00 	vstr	s15, [r3]
 8003184:	e012      	b.n	80031ac <normalizeAngle+0x58>
 8003186:	687b      	ldr	r3, [r7, #4]
 8003188:	edd3 7a00 	vldr	s15, [r3]
 800318c:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8003190:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8003194:	d400      	bmi.n	8003198 <normalizeAngle+0x44>
 8003196:	e00a      	b.n	80031ae <normalizeAngle+0x5a>
 8003198:	687b      	ldr	r3, [r7, #4]
 800319a:	ed93 7a00 	vldr	s14, [r3]
 800319e:	eddf 7a06 	vldr	s15, [pc, #24]	; 80031b8 <normalizeAngle+0x64>
 80031a2:	ee77 7a27 	vadd.f32	s15, s14, s15
 80031a6:	687b      	ldr	r3, [r7, #4]
 80031a8:	edc3 7a00 	vstr	s15, [r3]
 80031ac:	bf00      	nop
 80031ae:	370c      	adds	r7, #12
 80031b0:	46bd      	mov	sp, r7
 80031b2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80031b6:	4770      	bx	lr
 80031b8:	40c90fdb 	.word	0x40c90fdb

080031bc <maxValue>:
 80031bc:	b480      	push	{r7}
 80031be:	b087      	sub	sp, #28
 80031c0:	af00      	add	r7, sp, #0
 80031c2:	60f8      	str	r0, [r7, #12]
 80031c4:	460b      	mov	r3, r1
 80031c6:	607a      	str	r2, [r7, #4]
 80031c8:	72fb      	strb	r3, [r7, #11]
 80031ca:	68fb      	ldr	r3, [r7, #12]
 80031cc:	edd3 7a00 	vldr	s15, [r3]
 80031d0:	eef0 7ae7 	vabs.f32	s15, s15
 80031d4:	687b      	ldr	r3, [r7, #4]
 80031d6:	edc3 7a00 	vstr	s15, [r3]
 80031da:	2301      	movs	r3, #1
 80031dc:	75fb      	strb	r3, [r7, #23]
 80031de:	e01d      	b.n	800321c <maxValue+0x60>
 80031e0:	687b      	ldr	r3, [r7, #4]
 80031e2:	ed93 7a00 	vldr	s14, [r3]
 80031e6:	7dfb      	ldrb	r3, [r7, #23]
 80031e8:	009b      	lsls	r3, r3, #2
 80031ea:	68fa      	ldr	r2, [r7, #12]
 80031ec:	4413      	add	r3, r2
 80031ee:	edd3 7a00 	vldr	s15, [r3]
 80031f2:	eef0 7ae7 	vabs.f32	s15, s15
 80031f6:	eeb4 7ae7 	vcmpe.f32	s14, s15
 80031fa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80031fe:	d50a      	bpl.n	8003216 <maxValue+0x5a>
 8003200:	7dfb      	ldrb	r3, [r7, #23]
 8003202:	009b      	lsls	r3, r3, #2
 8003204:	68fa      	ldr	r2, [r7, #12]
 8003206:	4413      	add	r3, r2
 8003208:	edd3 7a00 	vldr	s15, [r3]
 800320c:	eef0 7ae7 	vabs.f32	s15, s15
 8003210:	687b      	ldr	r3, [r7, #4]
 8003212:	edc3 7a00 	vstr	s15, [r3]
 8003216:	7dfb      	ldrb	r3, [r7, #23]
 8003218:	3301      	adds	r3, #1
 800321a:	75fb      	strb	r3, [r7, #23]
 800321c:	7dfa      	ldrb	r2, [r7, #23]
 800321e:	7afb      	ldrb	r3, [r7, #11]
 8003220:	3b01      	subs	r3, #1
 8003222:	429a      	cmp	r2, r3
 8003224:	dddc      	ble.n	80031e0 <maxValue+0x24>
 8003226:	bf00      	nop
 8003228:	371c      	adds	r7, #28
 800322a:	46bd      	mov	sp, r7
 800322c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003230:	4770      	bx	lr
 8003232:	bf00      	nop

08003234 <calcGlobSpeedAndCoord>:
 8003234:	b580      	push	{r7, lr}
 8003236:	b08a      	sub	sp, #40	; 0x28
 8003238:	af04      	add	r7, sp, #16
 800323a:	4b36      	ldr	r3, [pc, #216]	; (8003314 <calcGlobSpeedAndCoord+0xe0>)
 800323c:	689b      	ldr	r3, [r3, #8]
 800323e:	617b      	str	r3, [r7, #20]
 8003240:	ed97 0a05 	vldr	s0, [r7, #20]
 8003244:	f005 fb02 	bl	800884c <cosf>
 8003248:	eef0 7a40 	vmov.f32	s15, s0
 800324c:	edc7 7a01 	vstr	s15, [r7, #4]
 8003250:	ed97 0a05 	vldr	s0, [r7, #20]
 8003254:	f005 fb36 	bl	80088c4 <sinf>
 8003258:	eef0 7a40 	vmov.f32	s15, s0
 800325c:	eef1 7a67 	vneg.f32	s15, s15
 8003260:	edc7 7a02 	vstr	s15, [r7, #8]
 8003264:	ed97 0a05 	vldr	s0, [r7, #20]
 8003268:	f005 fb2c 	bl	80088c4 <sinf>
 800326c:	eef0 7a40 	vmov.f32	s15, s0
 8003270:	edc7 7a03 	vstr	s15, [r7, #12]
 8003274:	ed97 0a05 	vldr	s0, [r7, #20]
 8003278:	f005 fae8 	bl	800884c <cosf>
 800327c:	eef0 7a40 	vmov.f32	s15, s0
 8003280:	edc7 7a04 	vstr	s15, [r7, #16]
 8003284:	1d3b      	adds	r3, r7, #4
 8003286:	2202      	movs	r2, #2
 8003288:	9200      	str	r2, [sp, #0]
 800328a:	2201      	movs	r2, #1
 800328c:	9201      	str	r2, [sp, #4]
 800328e:	4a22      	ldr	r2, [pc, #136]	; (8003318 <calcGlobSpeedAndCoord+0xe4>)
 8003290:	9202      	str	r2, [sp, #8]
 8003292:	4618      	mov	r0, r3
 8003294:	2102      	movs	r1, #2
 8003296:	2202      	movs	r2, #2
 8003298:	4b20      	ldr	r3, [pc, #128]	; (800331c <calcGlobSpeedAndCoord+0xe8>)
 800329a:	f000 fff3 	bl	8004284 <matrixMultiplyM2M>
 800329e:	4b1f      	ldr	r3, [pc, #124]	; (800331c <calcGlobSpeedAndCoord+0xe8>)
 80032a0:	689a      	ldr	r2, [r3, #8]
 80032a2:	4b1d      	ldr	r3, [pc, #116]	; (8003318 <calcGlobSpeedAndCoord+0xe4>)
 80032a4:	609a      	str	r2, [r3, #8]
 80032a6:	4b1b      	ldr	r3, [pc, #108]	; (8003314 <calcGlobSpeedAndCoord+0xe0>)
 80032a8:	ed93 7a00 	vldr	s14, [r3]
 80032ac:	4b1a      	ldr	r3, [pc, #104]	; (8003318 <calcGlobSpeedAndCoord+0xe4>)
 80032ae:	edd3 6a00 	vldr	s13, [r3]
 80032b2:	4b1b      	ldr	r3, [pc, #108]	; (8003320 <calcGlobSpeedAndCoord+0xec>)
 80032b4:	edd3 7a00 	vldr	s15, [r3]
 80032b8:	ee66 7aa7 	vmul.f32	s15, s13, s15
 80032bc:	ee77 7a27 	vadd.f32	s15, s14, s15
 80032c0:	4b14      	ldr	r3, [pc, #80]	; (8003314 <calcGlobSpeedAndCoord+0xe0>)
 80032c2:	edc3 7a00 	vstr	s15, [r3]
 80032c6:	4b13      	ldr	r3, [pc, #76]	; (8003314 <calcGlobSpeedAndCoord+0xe0>)
 80032c8:	ed93 7a01 	vldr	s14, [r3, #4]
 80032cc:	4b12      	ldr	r3, [pc, #72]	; (8003318 <calcGlobSpeedAndCoord+0xe4>)
 80032ce:	edd3 6a01 	vldr	s13, [r3, #4]
 80032d2:	4b13      	ldr	r3, [pc, #76]	; (8003320 <calcGlobSpeedAndCoord+0xec>)
 80032d4:	edd3 7a00 	vldr	s15, [r3]
 80032d8:	ee66 7aa7 	vmul.f32	s15, s13, s15
 80032dc:	ee77 7a27 	vadd.f32	s15, s14, s15
 80032e0:	4b0c      	ldr	r3, [pc, #48]	; (8003314 <calcGlobSpeedAndCoord+0xe0>)
 80032e2:	edc3 7a01 	vstr	s15, [r3, #4]
 80032e6:	4b0b      	ldr	r3, [pc, #44]	; (8003314 <calcGlobSpeedAndCoord+0xe0>)
 80032e8:	ed93 7a02 	vldr	s14, [r3, #8]
 80032ec:	4b0a      	ldr	r3, [pc, #40]	; (8003318 <calcGlobSpeedAndCoord+0xe4>)
 80032ee:	edd3 6a02 	vldr	s13, [r3, #8]
 80032f2:	4b0b      	ldr	r3, [pc, #44]	; (8003320 <calcGlobSpeedAndCoord+0xec>)
 80032f4:	edd3 7a00 	vldr	s15, [r3]
 80032f8:	ee66 7aa7 	vmul.f32	s15, s13, s15
 80032fc:	ee77 7a27 	vadd.f32	s15, s14, s15
 8003300:	4b04      	ldr	r3, [pc, #16]	; (8003314 <calcGlobSpeedAndCoord+0xe0>)
 8003302:	edc3 7a02 	vstr	s15, [r3, #8]
 8003306:	4807      	ldr	r0, [pc, #28]	; (8003324 <calcGlobSpeedAndCoord+0xf0>)
 8003308:	f7ff ff24 	bl	8003154 <normalizeAngle>
 800330c:	bf00      	nop
 800330e:	3718      	adds	r7, #24
 8003310:	46bd      	mov	sp, r7
 8003312:	bd80      	pop	{r7, pc}
 8003314:	20015090 	.word	0x20015090
 8003318:	2001509c 	.word	0x2001509c
 800331c:	20015084 	.word	0x20015084
 8003320:	2001506c 	.word	0x2001506c
 8003324:	20015098 	.word	0x20015098

08003328 <readEnc>:
 8003328:	b580      	push	{r7, lr}
 800332a:	b084      	sub	sp, #16
 800332c:	af00      	add	r7, sp, #0
 800332e:	2300      	movs	r3, #0
 8003330:	73fb      	strb	r3, [r7, #15]
 8003332:	e01a      	b.n	800336a <readEnc+0x42>
 8003334:	7bf9      	ldrb	r1, [r7, #15]
 8003336:	7bfa      	ldrb	r2, [r7, #15]
 8003338:	4b63      	ldr	r3, [pc, #396]	; (80034c8 <readEnc+0x1a0>)
 800333a:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 800333e:	881b      	ldrh	r3, [r3, #0]
 8003340:	f5a3 43ea 	sub.w	r3, r3, #29952	; 0x7500
 8003344:	3b30      	subs	r3, #48	; 0x30
 8003346:	b29b      	uxth	r3, r3
 8003348:	b29a      	uxth	r2, r3
 800334a:	004b      	lsls	r3, r1, #1
 800334c:	f107 0110 	add.w	r1, r7, #16
 8003350:	440b      	add	r3, r1
 8003352:	f823 2c0c 	strh.w	r2, [r3, #-12]
 8003356:	7bfa      	ldrb	r2, [r7, #15]
 8003358:	4b5b      	ldr	r3, [pc, #364]	; (80034c8 <readEnc+0x1a0>)
 800335a:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 800335e:	f247 5230 	movw	r2, #30000	; 0x7530
 8003362:	801a      	strh	r2, [r3, #0]
 8003364:	7bfb      	ldrb	r3, [r7, #15]
 8003366:	3301      	adds	r3, #1
 8003368:	73fb      	strb	r3, [r7, #15]
 800336a:	7bfb      	ldrb	r3, [r7, #15]
 800336c:	2b03      	cmp	r3, #3
 800336e:	d9e1      	bls.n	8003334 <readEnc+0xc>
 8003370:	4b56      	ldr	r3, [pc, #344]	; (80034cc <readEnc+0x1a4>)
 8003372:	681b      	ldr	r3, [r3, #0]
 8003374:	4618      	mov	r0, r3
 8003376:	f7ff fc4d 	bl	8002c14 <getTimeDifference>
 800337a:	4603      	mov	r3, r0
 800337c:	ee07 3a90 	vmov	s15, r3
 8003380:	eeb8 7a67 	vcvt.f32.u32	s14, s15
 8003384:	eddf 7a52 	vldr	s15, [pc, #328]	; 80034d0 <readEnc+0x1a8>
 8003388:	eec7 7a27 	vdiv.f32	s15, s14, s15
 800338c:	4b51      	ldr	r3, [pc, #324]	; (80034d4 <readEnc+0x1ac>)
 800338e:	edc3 7a00 	vstr	s15, [r3]
 8003392:	f7ff fc33 	bl	8002bfc <getLocalTime>
 8003396:	4602      	mov	r2, r0
 8003398:	4b4c      	ldr	r3, [pc, #304]	; (80034cc <readEnc+0x1a4>)
 800339a:	601a      	str	r2, [r3, #0]
 800339c:	4b4d      	ldr	r3, [pc, #308]	; (80034d4 <readEnc+0x1ac>)
 800339e:	edd3 7a00 	vldr	s15, [r3]
 80033a2:	eef5 7a40 	vcmp.f32	s15, #0.0
 80033a6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80033aa:	d100      	bne.n	80033ae <readEnc+0x86>
 80033ac:	e088      	b.n	80034c0 <readEnc+0x198>
 80033ae:	2300      	movs	r3, #0
 80033b0:	73fb      	strb	r3, [r7, #15]
 80033b2:	e04a      	b.n	800344a <readEnc+0x122>
 80033b4:	7bf9      	ldrb	r1, [r7, #15]
 80033b6:	7bfb      	ldrb	r3, [r7, #15]
 80033b8:	005b      	lsls	r3, r3, #1
 80033ba:	f107 0210 	add.w	r2, r7, #16
 80033be:	4413      	add	r3, r2
 80033c0:	f833 3c0c 	ldrh.w	r3, [r3, #-12]
 80033c4:	b21b      	sxth	r3, r3
 80033c6:	ee07 3a10 	vmov	s14, r3
 80033ca:	eef8 7ac7 	vcvt.f32.s32	s15, s14
 80033ce:	ee37 7aa7 	vadd.f32	s14, s15, s15
 80033d2:	eddf 7a41 	vldr	s15, [pc, #260]	; 80034d8 <readEnc+0x1b0>
 80033d6:	ee27 7a27 	vmul.f32	s14, s14, s15
 80033da:	eddf 7a40 	vldr	s15, [pc, #256]	; 80034dc <readEnc+0x1b4>
 80033de:	ee87 7a27 	vdiv.f32	s14, s14, s15
 80033e2:	4b3c      	ldr	r3, [pc, #240]	; (80034d4 <readEnc+0x1ac>)
 80033e4:	edd3 7a00 	vldr	s15, [r3]
 80033e8:	eec7 7a27 	vdiv.f32	s15, s14, s15
 80033ec:	4a3c      	ldr	r2, [pc, #240]	; (80034e0 <readEnc+0x1b8>)
 80033ee:	008b      	lsls	r3, r1, #2
 80033f0:	4413      	add	r3, r2
 80033f2:	edc3 7a00 	vstr	s15, [r3]
 80033f6:	7bfb      	ldrb	r3, [r7, #15]
 80033f8:	2b00      	cmp	r3, #0
 80033fa:	d002      	beq.n	8003402 <readEnc+0xda>
 80033fc:	7bfb      	ldrb	r3, [r7, #15]
 80033fe:	2b03      	cmp	r3, #3
 8003400:	d120      	bne.n	8003444 <readEnc+0x11c>
 8003402:	7bf9      	ldrb	r1, [r7, #15]
 8003404:	7bfb      	ldrb	r3, [r7, #15]
 8003406:	005b      	lsls	r3, r3, #1
 8003408:	f107 0210 	add.w	r2, r7, #16
 800340c:	4413      	add	r3, r2
 800340e:	f833 3c0c 	ldrh.w	r3, [r3, #-12]
 8003412:	b21b      	sxth	r3, r3
 8003414:	ee07 3a10 	vmov	s14, r3
 8003418:	eef8 7ac7 	vcvt.f32.s32	s15, s14
 800341c:	ee37 7aa7 	vadd.f32	s14, s15, s15
 8003420:	eddf 7a2d 	vldr	s15, [pc, #180]	; 80034d8 <readEnc+0x1b0>
 8003424:	ee27 7a27 	vmul.f32	s14, s14, s15
 8003428:	eddf 7a2e 	vldr	s15, [pc, #184]	; 80034e4 <readEnc+0x1bc>
 800342c:	ee87 7a27 	vdiv.f32	s14, s14, s15
 8003430:	4b28      	ldr	r3, [pc, #160]	; (80034d4 <readEnc+0x1ac>)
 8003432:	edd3 7a00 	vldr	s15, [r3]
 8003436:	eec7 7a27 	vdiv.f32	s15, s14, s15
 800343a:	4a29      	ldr	r2, [pc, #164]	; (80034e0 <readEnc+0x1b8>)
 800343c:	008b      	lsls	r3, r1, #2
 800343e:	4413      	add	r3, r2
 8003440:	edc3 7a00 	vstr	s15, [r3]
 8003444:	7bfb      	ldrb	r3, [r7, #15]
 8003446:	3301      	adds	r3, #1
 8003448:	73fb      	strb	r3, [r7, #15]
 800344a:	7bfb      	ldrb	r3, [r7, #15]
 800344c:	2b03      	cmp	r3, #3
 800344e:	d9b1      	bls.n	80033b4 <readEnc+0x8c>
 8003450:	4b23      	ldr	r3, [pc, #140]	; (80034e0 <readEnc+0x1b8>)
 8003452:	edd3 7a01 	vldr	s15, [r3, #4]
 8003456:	eef1 7a67 	vneg.f32	s15, s15
 800345a:	4b21      	ldr	r3, [pc, #132]	; (80034e0 <readEnc+0x1b8>)
 800345c:	edc3 7a01 	vstr	s15, [r3, #4]
 8003460:	4b1f      	ldr	r3, [pc, #124]	; (80034e0 <readEnc+0x1b8>)
 8003462:	edd3 7a02 	vldr	s15, [r3, #8]
 8003466:	eef1 7a67 	vneg.f32	s15, s15
 800346a:	4b1d      	ldr	r3, [pc, #116]	; (80034e0 <readEnc+0x1b8>)
 800346c:	edc3 7a02 	vstr	s15, [r3, #8]
 8003470:	f000 f8a2 	bl	80035b8 <calcInverseKin>
 8003474:	2300      	movs	r3, #0
 8003476:	73fb      	strb	r3, [r7, #15]
 8003478:	e01b      	b.n	80034b2 <readEnc+0x18a>
 800347a:	7bfb      	ldrb	r3, [r7, #15]
 800347c:	7bfa      	ldrb	r2, [r7, #15]
 800347e:	491a      	ldr	r1, [pc, #104]	; (80034e8 <readEnc+0x1c0>)
 8003480:	0092      	lsls	r2, r2, #2
 8003482:	440a      	add	r2, r1
 8003484:	ed92 7a00 	vldr	s14, [r2]
 8003488:	7bfa      	ldrb	r2, [r7, #15]
 800348a:	4918      	ldr	r1, [pc, #96]	; (80034ec <readEnc+0x1c4>)
 800348c:	0092      	lsls	r2, r2, #2
 800348e:	440a      	add	r2, r1
 8003490:	edd2 6a00 	vldr	s13, [r2]
 8003494:	4a0f      	ldr	r2, [pc, #60]	; (80034d4 <readEnc+0x1ac>)
 8003496:	edd2 7a00 	vldr	s15, [r2]
 800349a:	ee66 7aa7 	vmul.f32	s15, s13, s15
 800349e:	ee77 7a27 	vadd.f32	s15, s14, s15
 80034a2:	4a11      	ldr	r2, [pc, #68]	; (80034e8 <readEnc+0x1c0>)
 80034a4:	009b      	lsls	r3, r3, #2
 80034a6:	4413      	add	r3, r2
 80034a8:	edc3 7a00 	vstr	s15, [r3]
 80034ac:	7bfb      	ldrb	r3, [r7, #15]
 80034ae:	3301      	adds	r3, #1
 80034b0:	73fb      	strb	r3, [r7, #15]
 80034b2:	7bfb      	ldrb	r3, [r7, #15]
 80034b4:	2b02      	cmp	r3, #2
 80034b6:	d9e0      	bls.n	800347a <readEnc+0x152>
 80034b8:	480d      	ldr	r0, [pc, #52]	; (80034f0 <readEnc+0x1c8>)
 80034ba:	f7ff fe4b 	bl	8003154 <normalizeAngle>
 80034be:	bf00      	nop
 80034c0:	3710      	adds	r7, #16
 80034c2:	46bd      	mov	sp, r7
 80034c4:	bd80      	pop	{r7, pc}
 80034c6:	bf00      	nop
 80034c8:	20000044 	.word	0x20000044
 80034cc:	20015080 	.word	0x20015080
 80034d0:	461c4000 	.word	0x461c4000
 80034d4:	2001506c 	.word	0x2001506c
 80034d8:	40490fdb 	.word	0x40490fdb
 80034dc:	47d00000 	.word	0x47d00000
 80034e0:	20015070 	.word	0x20015070
 80034e4:	47a80000 	.word	0x47a80000
 80034e8:	20014fb8 	.word	0x20014fb8
 80034ec:	20015084 	.word	0x20015084
 80034f0:	20014fc0 	.word	0x20014fc0

080034f4 <calcForwardKin>:
 80034f4:	b580      	push	{r7, lr}
 80034f6:	b092      	sub	sp, #72	; 0x48
 80034f8:	af04      	add	r7, sp, #16
 80034fa:	2303      	movs	r3, #3
 80034fc:	9300      	str	r3, [sp, #0]
 80034fe:	2301      	movs	r3, #1
 8003500:	9301      	str	r3, [sp, #4]
 8003502:	f107 0324 	add.w	r3, r7, #36	; 0x24
 8003506:	9302      	str	r3, [sp, #8]
 8003508:	4826      	ldr	r0, [pc, #152]	; (80035a4 <calcForwardKin+0xb0>)
 800350a:	2104      	movs	r1, #4
 800350c:	2203      	movs	r2, #3
 800350e:	4b26      	ldr	r3, [pc, #152]	; (80035a8 <calcForwardKin+0xb4>)
 8003510:	f000 feb8 	bl	8004284 <matrixMultiplyM2M>
 8003514:	2303      	movs	r3, #3
 8003516:	9300      	str	r3, [sp, #0]
 8003518:	2301      	movs	r3, #1
 800351a:	9301      	str	r3, [sp, #4]
 800351c:	f107 0314 	add.w	r3, r7, #20
 8003520:	9302      	str	r3, [sp, #8]
 8003522:	4822      	ldr	r0, [pc, #136]	; (80035ac <calcForwardKin+0xb8>)
 8003524:	2104      	movs	r1, #4
 8003526:	2203      	movs	r2, #3
 8003528:	4b1f      	ldr	r3, [pc, #124]	; (80035a8 <calcForwardKin+0xb4>)
 800352a:	f000 feab 	bl	8004284 <matrixMultiplyM2M>
 800352e:	f107 0224 	add.w	r2, r7, #36	; 0x24
 8003532:	f107 0314 	add.w	r3, r7, #20
 8003536:	2101      	movs	r1, #1
 8003538:	9100      	str	r1, [sp, #0]
 800353a:	1d39      	adds	r1, r7, #4
 800353c:	9101      	str	r1, [sp, #4]
 800353e:	4610      	mov	r0, r2
 8003540:	4619      	mov	r1, r3
 8003542:	2204      	movs	r2, #4
 8003544:	2301      	movs	r3, #1
 8003546:	f000 ff45 	bl	80043d4 <matrixPlusMinus>
 800354a:	1d3a      	adds	r2, r7, #4
 800354c:	463b      	mov	r3, r7
 800354e:	4610      	mov	r0, r2
 8003550:	2104      	movs	r1, #4
 8003552:	461a      	mov	r2, r3
 8003554:	f7ff fe32 	bl	80031bc <maxValue>
 8003558:	edd7 7a00 	vldr	s15, [r7]
 800355c:	eeb0 7ae7 	vabs.f32	s14, s15
 8003560:	eddf 7a13 	vldr	s15, [pc, #76]	; 80035b0 <calcForwardKin+0xbc>
 8003564:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8003568:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800356c:	dd0a      	ble.n	8003584 <calcForwardKin+0x90>
 800356e:	edd7 7a00 	vldr	s15, [r7]
 8003572:	ed9f 7a0f 	vldr	s14, [pc, #60]	; 80035b0 <calcForwardKin+0xbc>
 8003576:	eec7 7a27 	vdiv.f32	s15, s14, s15
 800357a:	eef0 7ae7 	vabs.f32	s15, s15
 800357e:	edc7 7a0d 	vstr	s15, [r7, #52]	; 0x34
 8003582:	e002      	b.n	800358a <calcForwardKin+0x96>
 8003584:	f04f 537e 	mov.w	r3, #1065353216	; 0x3f800000
 8003588:	637b      	str	r3, [r7, #52]	; 0x34
 800358a:	1d3b      	adds	r3, r7, #4
 800358c:	4618      	mov	r0, r3
 800358e:	2104      	movs	r1, #4
 8003590:	2201      	movs	r2, #1
 8003592:	ed97 0a0d 	vldr	s0, [r7, #52]	; 0x34
 8003596:	4b07      	ldr	r3, [pc, #28]	; (80035b4 <calcForwardKin+0xc0>)
 8003598:	f000 fedc 	bl	8004354 <matrixMultiplyS2M>
 800359c:	bf00      	nop
 800359e:	3738      	adds	r7, #56	; 0x38
 80035a0:	46bd      	mov	sp, r7
 80035a2:	bd80      	pop	{r7, pc}
 80035a4:	200000ec 	.word	0x200000ec
 80035a8:	20014fc8 	.word	0x20014fc8
 80035ac:	2000011c 	.word	0x2000011c
 80035b0:	41d9d12a 	.word	0x41d9d12a
 80035b4:	20014fdc 	.word	0x20014fdc

080035b8 <calcInverseKin>:
 80035b8:	b580      	push	{r7, lr}
 80035ba:	b084      	sub	sp, #16
 80035bc:	af04      	add	r7, sp, #16
 80035be:	2304      	movs	r3, #4
 80035c0:	9300      	str	r3, [sp, #0]
 80035c2:	2301      	movs	r3, #1
 80035c4:	9301      	str	r3, [sp, #4]
 80035c6:	4b05      	ldr	r3, [pc, #20]	; (80035dc <calcInverseKin+0x24>)
 80035c8:	9302      	str	r3, [sp, #8]
 80035ca:	4805      	ldr	r0, [pc, #20]	; (80035e0 <calcInverseKin+0x28>)
 80035cc:	2103      	movs	r1, #3
 80035ce:	2204      	movs	r2, #4
 80035d0:	4b04      	ldr	r3, [pc, #16]	; (80035e4 <calcInverseKin+0x2c>)
 80035d2:	f000 fe57 	bl	8004284 <matrixMultiplyM2M>
 80035d6:	46bd      	mov	sp, r7
 80035d8:	bd80      	pop	{r7, pc}
 80035da:	bf00      	nop
 80035dc:	20015084 	.word	0x20015084
 80035e0:	2000014c 	.word	0x2000014c
 80035e4:	20015070 	.word	0x20015070

080035e8 <setMotorSpeed>:
 80035e8:	b580      	push	{r7, lr}
 80035ea:	b084      	sub	sp, #16
 80035ec:	af00      	add	r7, sp, #0
 80035ee:	4603      	mov	r3, r0
 80035f0:	ed87 0a00 	vstr	s0, [r7]
 80035f4:	71fb      	strb	r3, [r7, #7]
 80035f6:	79fb      	ldrb	r3, [r7, #7]
 80035f8:	2b04      	cmp	r3, #4
 80035fa:	d900      	bls.n	80035fe <setMotorSpeed+0x16>
 80035fc:	e05e      	b.n	80036bc <setMotorSpeed+0xd4>
 80035fe:	79fb      	ldrb	r3, [r7, #7]
 8003600:	3b01      	subs	r3, #1
 8003602:	71fb      	strb	r3, [r7, #7]
 8003604:	edd7 7a00 	vldr	s15, [r7]
 8003608:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 800360c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8003610:	db0e      	blt.n	8003630 <setMotorSpeed+0x48>
 8003612:	79fa      	ldrb	r2, [r7, #7]
 8003614:	4b2b      	ldr	r3, [pc, #172]	; (80036c4 <setMotorSpeed+0xdc>)
 8003616:	f853 2032 	ldr.w	r2, [r3, r2, lsl #3]
 800361a:	79fb      	ldrb	r3, [r7, #7]
 800361c:	4929      	ldr	r1, [pc, #164]	; (80036c4 <setMotorSpeed+0xdc>)
 800361e:	00db      	lsls	r3, r3, #3
 8003620:	440b      	add	r3, r1
 8003622:	791b      	ldrb	r3, [r3, #4]
 8003624:	4610      	mov	r0, r2
 8003626:	4619      	mov	r1, r3
 8003628:	2201      	movs	r2, #1
 800362a:	f7fd fdf1 	bl	8001210 <gpioPinSetLevel>
 800362e:	e013      	b.n	8003658 <setMotorSpeed+0x70>
 8003630:	79fa      	ldrb	r2, [r7, #7]
 8003632:	4b24      	ldr	r3, [pc, #144]	; (80036c4 <setMotorSpeed+0xdc>)
 8003634:	f853 2032 	ldr.w	r2, [r3, r2, lsl #3]
 8003638:	79fb      	ldrb	r3, [r7, #7]
 800363a:	4922      	ldr	r1, [pc, #136]	; (80036c4 <setMotorSpeed+0xdc>)
 800363c:	00db      	lsls	r3, r3, #3
 800363e:	440b      	add	r3, r1
 8003640:	791b      	ldrb	r3, [r3, #4]
 8003642:	4610      	mov	r0, r2
 8003644:	4619      	mov	r1, r3
 8003646:	2200      	movs	r2, #0
 8003648:	f7fd fde2 	bl	8001210 <gpioPinSetLevel>
 800364c:	edd7 7a00 	vldr	s15, [r7]
 8003650:	eef1 7a67 	vneg.f32	s15, s15
 8003654:	edc7 7a00 	vstr	s15, [r7]
 8003658:	ed97 7a00 	vldr	s14, [r7]
 800365c:	eddf 7a1a 	vldr	s15, [pc, #104]	; 80036c8 <setMotorSpeed+0xe0>
 8003660:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8003664:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8003668:	db02      	blt.n	8003670 <setMotorSpeed+0x88>
 800366a:	4b18      	ldr	r3, [pc, #96]	; (80036cc <setMotorSpeed+0xe4>)
 800366c:	603b      	str	r3, [r7, #0]
 800366e:	e009      	b.n	8003684 <setMotorSpeed+0x9c>
 8003670:	edd7 7a00 	vldr	s15, [r7]
 8003674:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8003678:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800367c:	d502      	bpl.n	8003684 <setMotorSpeed+0x9c>
 800367e:	f04f 0300 	mov.w	r3, #0
 8003682:	603b      	str	r3, [r7, #0]
 8003684:	ed97 7a00 	vldr	s14, [r7]
 8003688:	eddf 7a11 	vldr	s15, [pc, #68]	; 80036d0 <setMotorSpeed+0xe8>
 800368c:	ee27 7a27 	vmul.f32	s14, s14, s15
 8003690:	eddf 7a10 	vldr	s15, [pc, #64]	; 80036d4 <setMotorSpeed+0xec>
 8003694:	ee77 7a27 	vadd.f32	s15, s14, s15
 8003698:	edc7 7a03 	vstr	s15, [r7, #12]
 800369c:	79fa      	ldrb	r2, [r7, #7]
 800369e:	4b0e      	ldr	r3, [pc, #56]	; (80036d8 <setMotorSpeed+0xf0>)
 80036a0:	f853 2032 	ldr.w	r2, [r3, r2, lsl #3]
 80036a4:	79fb      	ldrb	r3, [r7, #7]
 80036a6:	490c      	ldr	r1, [pc, #48]	; (80036d8 <setMotorSpeed+0xf0>)
 80036a8:	00db      	lsls	r3, r3, #3
 80036aa:	440b      	add	r3, r1
 80036ac:	791b      	ldrb	r3, [r3, #4]
 80036ae:	4610      	mov	r0, r2
 80036b0:	4619      	mov	r1, r3
 80036b2:	ed97 0a03 	vldr	s0, [r7, #12]
 80036b6:	f7fe fa65 	bl	8001b84 <timPwmChangeDutyCycle>
 80036ba:	bf00      	nop
 80036bc:	3710      	adds	r7, #16
 80036be:	46bd      	mov	sp, r7
 80036c0:	bd80      	pop	{r7, pc}
 80036c2:	bf00      	nop
 80036c4:	20000024 	.word	0x20000024
 80036c8:	41d9d12a 	.word	0x41d9d12a
 80036cc:	41d9d12a 	.word	0x41d9d12a
 80036d0:	3cf0b35c 	.word	0x3cf0b35c
 80036d4:	3dcccccd 	.word	0x3dcccccd
 80036d8:	20000004 	.word	0x20000004

080036dc <setMotorSpeeds>:
 80036dc:	b580      	push	{r7, lr}
 80036de:	b082      	sub	sp, #8
 80036e0:	af00      	add	r7, sp, #0
 80036e2:	2300      	movs	r3, #0
 80036e4:	71fb      	strb	r3, [r7, #7]
 80036e6:	e010      	b.n	800370a <setMotorSpeeds+0x2e>
 80036e8:	79fb      	ldrb	r3, [r7, #7]
 80036ea:	3301      	adds	r3, #1
 80036ec:	b2db      	uxtb	r3, r3
 80036ee:	79fa      	ldrb	r2, [r7, #7]
 80036f0:	4909      	ldr	r1, [pc, #36]	; (8003718 <setMotorSpeeds+0x3c>)
 80036f2:	0092      	lsls	r2, r2, #2
 80036f4:	440a      	add	r2, r1
 80036f6:	edd2 7a00 	vldr	s15, [r2]
 80036fa:	4618      	mov	r0, r3
 80036fc:	eeb0 0a67 	vmov.f32	s0, s15
 8003700:	f7ff ff72 	bl	80035e8 <setMotorSpeed>
 8003704:	79fb      	ldrb	r3, [r7, #7]
 8003706:	3301      	adds	r3, #1
 8003708:	71fb      	strb	r3, [r7, #7]
 800370a:	79fb      	ldrb	r3, [r7, #7]
 800370c:	2b03      	cmp	r3, #3
 800370e:	d9eb      	bls.n	80036e8 <setMotorSpeeds+0xc>
 8003710:	bf00      	nop
 8003712:	3708      	adds	r7, #8
 8003714:	46bd      	mov	sp, r7
 8003716:	bd80      	pop	{r7, pc}
 8003718:	20014fdc 	.word	0x20014fdc

0800371c <speedRecalculation>:
 800371c:	b480      	push	{r7}
 800371e:	b083      	sub	sp, #12
 8003720:	af00      	add	r7, sp, #0
 8003722:	2300      	movs	r3, #0
 8003724:	71fb      	strb	r3, [r7, #7]
 8003726:	e0bf      	b.n	80038a8 <speedRecalculation+0x18c>
 8003728:	79fb      	ldrb	r3, [r7, #7]
 800372a:	4a64      	ldr	r2, [pc, #400]	; (80038bc <speedRecalculation+0x1a0>)
 800372c:	5cd3      	ldrb	r3, [r2, r3]
 800372e:	2b03      	cmp	r3, #3
 8003730:	f200 80b7 	bhi.w	80038a2 <speedRecalculation+0x186>
 8003734:	a201      	add	r2, pc, #4	; (adr r2, 800373c <speedRecalculation+0x20>)
 8003736:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 800373a:	bf00      	nop
 800373c:	080038a3 	.word	0x080038a3
 8003740:	0800374d 	.word	0x0800374d
 8003744:	080037c5 	.word	0x080037c5
 8003748:	080037dd 	.word	0x080037dd
 800374c:	79fb      	ldrb	r3, [r7, #7]
 800374e:	79fa      	ldrb	r2, [r7, #7]
 8003750:	495b      	ldr	r1, [pc, #364]	; (80038c0 <speedRecalculation+0x1a4>)
 8003752:	0092      	lsls	r2, r2, #2
 8003754:	440a      	add	r2, r1
 8003756:	ed92 7a00 	vldr	s14, [r2]
 800375a:	79fa      	ldrb	r2, [r7, #7]
 800375c:	4957      	ldr	r1, [pc, #348]	; (80038bc <speedRecalculation+0x1a0>)
 800375e:	0092      	lsls	r2, r2, #2
 8003760:	440a      	add	r2, r1
 8003762:	edd2 6a01 	vldr	s13, [r2, #4]
 8003766:	4a57      	ldr	r2, [pc, #348]	; (80038c4 <speedRecalculation+0x1a8>)
 8003768:	edd2 7a00 	vldr	s15, [r2]
 800376c:	ee66 7aa7 	vmul.f32	s15, s13, s15
 8003770:	ee77 7a27 	vadd.f32	s15, s14, s15
 8003774:	4a52      	ldr	r2, [pc, #328]	; (80038c0 <speedRecalculation+0x1a4>)
 8003776:	009b      	lsls	r3, r3, #2
 8003778:	4413      	add	r3, r2
 800377a:	edc3 7a00 	vstr	s15, [r3]
 800377e:	79fb      	ldrb	r3, [r7, #7]
 8003780:	4a4f      	ldr	r2, [pc, #316]	; (80038c0 <speedRecalculation+0x1a4>)
 8003782:	009b      	lsls	r3, r3, #2
 8003784:	4413      	add	r3, r2
 8003786:	edd3 7a00 	vldr	s15, [r3]
 800378a:	eeb0 7ae7 	vabs.f32	s14, s15
 800378e:	79fb      	ldrb	r3, [r7, #7]
 8003790:	4a4a      	ldr	r2, [pc, #296]	; (80038bc <speedRecalculation+0x1a0>)
 8003792:	3306      	adds	r3, #6
 8003794:	009b      	lsls	r3, r3, #2
 8003796:	4413      	add	r3, r2
 8003798:	edd3 7a01 	vldr	s15, [r3, #4]
 800379c:	eef0 7ae7 	vabs.f32	s15, s15
 80037a0:	eeb4 7ae7 	vcmpe.f32	s14, s15
 80037a4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80037a8:	dc00      	bgt.n	80037ac <speedRecalculation+0x90>
 80037aa:	e07a      	b.n	80038a2 <speedRecalculation+0x186>
 80037ac:	79fb      	ldrb	r3, [r7, #7]
 80037ae:	79fa      	ldrb	r2, [r7, #7]
 80037b0:	4942      	ldr	r1, [pc, #264]	; (80038bc <speedRecalculation+0x1a0>)
 80037b2:	3206      	adds	r2, #6
 80037b4:	0092      	lsls	r2, r2, #2
 80037b6:	440a      	add	r2, r1
 80037b8:	6852      	ldr	r2, [r2, #4]
 80037ba:	4941      	ldr	r1, [pc, #260]	; (80038c0 <speedRecalculation+0x1a4>)
 80037bc:	009b      	lsls	r3, r3, #2
 80037be:	440b      	add	r3, r1
 80037c0:	601a      	str	r2, [r3, #0]
 80037c2:	e06e      	b.n	80038a2 <speedRecalculation+0x186>
 80037c4:	79fb      	ldrb	r3, [r7, #7]
 80037c6:	79fa      	ldrb	r2, [r7, #7]
 80037c8:	493c      	ldr	r1, [pc, #240]	; (80038bc <speedRecalculation+0x1a0>)
 80037ca:	3206      	adds	r2, #6
 80037cc:	0092      	lsls	r2, r2, #2
 80037ce:	440a      	add	r2, r1
 80037d0:	6852      	ldr	r2, [r2, #4]
 80037d2:	493b      	ldr	r1, [pc, #236]	; (80038c0 <speedRecalculation+0x1a4>)
 80037d4:	009b      	lsls	r3, r3, #2
 80037d6:	440b      	add	r3, r1
 80037d8:	601a      	str	r2, [r3, #0]
 80037da:	e062      	b.n	80038a2 <speedRecalculation+0x186>
 80037dc:	79fb      	ldrb	r3, [r7, #7]
 80037de:	4a3a      	ldr	r2, [pc, #232]	; (80038c8 <speedRecalculation+0x1ac>)
 80037e0:	009b      	lsls	r3, r3, #2
 80037e2:	4413      	add	r3, r2
 80037e4:	edd3 7a00 	vldr	s15, [r3]
 80037e8:	eeb0 7ae7 	vabs.f32	s14, s15
 80037ec:	79fb      	ldrb	r3, [r7, #7]
 80037ee:	4a33      	ldr	r2, [pc, #204]	; (80038bc <speedRecalculation+0x1a0>)
 80037f0:	330c      	adds	r3, #12
 80037f2:	009b      	lsls	r3, r3, #2
 80037f4:	4413      	add	r3, r2
 80037f6:	edd3 7a01 	vldr	s15, [r3, #4]
 80037fa:	eef0 7ae7 	vabs.f32	s15, s15
 80037fe:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8003802:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8003806:	d50f      	bpl.n	8003828 <speedRecalculation+0x10c>
 8003808:	79fb      	ldrb	r3, [r7, #7]
 800380a:	79fa      	ldrb	r2, [r7, #7]
 800380c:	492b      	ldr	r1, [pc, #172]	; (80038bc <speedRecalculation+0x1a0>)
 800380e:	320a      	adds	r2, #10
 8003810:	0092      	lsls	r2, r2, #2
 8003812:	440a      	add	r2, r1
 8003814:	6812      	ldr	r2, [r2, #0]
 8003816:	492a      	ldr	r1, [pc, #168]	; (80038c0 <speedRecalculation+0x1a4>)
 8003818:	009b      	lsls	r3, r3, #2
 800381a:	440b      	add	r3, r1
 800381c:	601a      	str	r2, [r3, #0]
 800381e:	79fb      	ldrb	r3, [r7, #7]
 8003820:	4a26      	ldr	r2, [pc, #152]	; (80038bc <speedRecalculation+0x1a0>)
 8003822:	2100      	movs	r1, #0
 8003824:	54d1      	strb	r1, [r2, r3]
 8003826:	e03c      	b.n	80038a2 <speedRecalculation+0x186>
 8003828:	79fb      	ldrb	r3, [r7, #7]
 800382a:	79fa      	ldrb	r2, [r7, #7]
 800382c:	4924      	ldr	r1, [pc, #144]	; (80038c0 <speedRecalculation+0x1a4>)
 800382e:	0092      	lsls	r2, r2, #2
 8003830:	440a      	add	r2, r1
 8003832:	ed92 7a00 	vldr	s14, [r2]
 8003836:	79fa      	ldrb	r2, [r7, #7]
 8003838:	4920      	ldr	r1, [pc, #128]	; (80038bc <speedRecalculation+0x1a0>)
 800383a:	0092      	lsls	r2, r2, #2
 800383c:	440a      	add	r2, r1
 800383e:	edd2 6a01 	vldr	s13, [r2, #4]
 8003842:	4a20      	ldr	r2, [pc, #128]	; (80038c4 <speedRecalculation+0x1a8>)
 8003844:	edd2 7a00 	vldr	s15, [r2]
 8003848:	ee66 7aa7 	vmul.f32	s15, s13, s15
 800384c:	ee77 7a67 	vsub.f32	s15, s14, s15
 8003850:	4a1b      	ldr	r2, [pc, #108]	; (80038c0 <speedRecalculation+0x1a4>)
 8003852:	009b      	lsls	r3, r3, #2
 8003854:	4413      	add	r3, r2
 8003856:	edc3 7a00 	vstr	s15, [r3]
 800385a:	79fb      	ldrb	r3, [r7, #7]
 800385c:	4a18      	ldr	r2, [pc, #96]	; (80038c0 <speedRecalculation+0x1a4>)
 800385e:	009b      	lsls	r3, r3, #2
 8003860:	4413      	add	r3, r2
 8003862:	ed93 7a00 	vldr	s14, [r3]
 8003866:	79fb      	ldrb	r3, [r7, #7]
 8003868:	4a14      	ldr	r2, [pc, #80]	; (80038bc <speedRecalculation+0x1a0>)
 800386a:	4413      	add	r3, r2
 800386c:	f893 3064 	ldrb.w	r3, [r3, #100]	; 0x64
 8003870:	b25b      	sxtb	r3, r3
 8003872:	ee06 3a90 	vmov	s13, r3
 8003876:	eef8 7ae6 	vcvt.f32.s32	s15, s13
 800387a:	ee67 7a27 	vmul.f32	s15, s14, s15
 800387e:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8003882:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8003886:	d400      	bmi.n	800388a <speedRecalculation+0x16e>
 8003888:	e00a      	b.n	80038a0 <speedRecalculation+0x184>
 800388a:	79fb      	ldrb	r3, [r7, #7]
 800388c:	79fa      	ldrb	r2, [r7, #7]
 800388e:	490b      	ldr	r1, [pc, #44]	; (80038bc <speedRecalculation+0x1a0>)
 8003890:	320a      	adds	r2, #10
 8003892:	0092      	lsls	r2, r2, #2
 8003894:	440a      	add	r2, r1
 8003896:	6812      	ldr	r2, [r2, #0]
 8003898:	4909      	ldr	r1, [pc, #36]	; (80038c0 <speedRecalculation+0x1a4>)
 800389a:	009b      	lsls	r3, r3, #2
 800389c:	440b      	add	r3, r1
 800389e:	601a      	str	r2, [r3, #0]
 80038a0:	bf00      	nop
 80038a2:	79fb      	ldrb	r3, [r7, #7]
 80038a4:	3301      	adds	r3, #1
 80038a6:	71fb      	strb	r3, [r7, #7]
 80038a8:	79fb      	ldrb	r3, [r7, #7]
 80038aa:	2b02      	cmp	r3, #2
 80038ac:	f67f af3c 	bls.w	8003728 <speedRecalculation+0xc>
 80038b0:	bf00      	nop
 80038b2:	370c      	adds	r7, #12
 80038b4:	46bd      	mov	sp, r7
 80038b6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80038ba:	4770      	bx	lr
 80038bc:	20014fec 	.word	0x20014fec
 80038c0:	20014fc8 	.word	0x20014fc8
 80038c4:	2001506c 	.word	0x2001506c
 80038c8:	20015084 	.word	0x20015084

080038cc <checkIfPositionIsReached>:
 80038cc:	b580      	push	{r7, lr}
 80038ce:	b084      	sub	sp, #16
 80038d0:	af00      	add	r7, sp, #0
 80038d2:	2300      	movs	r3, #0
 80038d4:	73fb      	strb	r3, [r7, #15]
 80038d6:	e00e      	b.n	80038f6 <checkIfPositionIsReached+0x2a>
 80038d8:	7bfb      	ldrb	r3, [r7, #15]
 80038da:	7bfa      	ldrb	r2, [r7, #15]
 80038dc:	4923      	ldr	r1, [pc, #140]	; (800396c <checkIfPositionIsReached+0xa0>)
 80038de:	0092      	lsls	r2, r2, #2
 80038e0:	440a      	add	r2, r1
 80038e2:	6812      	ldr	r2, [r2, #0]
 80038e4:	009b      	lsls	r3, r3, #2
 80038e6:	f107 0110 	add.w	r1, r7, #16
 80038ea:	440b      	add	r3, r1
 80038ec:	3b10      	subs	r3, #16
 80038ee:	601a      	str	r2, [r3, #0]
 80038f0:	7bfb      	ldrb	r3, [r7, #15]
 80038f2:	3301      	adds	r3, #1
 80038f4:	73fb      	strb	r3, [r7, #15]
 80038f6:	7bfb      	ldrb	r3, [r7, #15]
 80038f8:	2b02      	cmp	r3, #2
 80038fa:	d9ed      	bls.n	80038d8 <checkIfPositionIsReached+0xc>
 80038fc:	ed97 7a02 	vldr	s14, [r7, #8]
 8003900:	eddf 7a1b 	vldr	s15, [pc, #108]	; 8003970 <checkIfPositionIsReached+0xa4>
 8003904:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8003908:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800390c:	dd07      	ble.n	800391e <checkIfPositionIsReached+0x52>
 800390e:	ed97 7a02 	vldr	s14, [r7, #8]
 8003912:	eddf 7a18 	vldr	s15, [pc, #96]	; 8003974 <checkIfPositionIsReached+0xa8>
 8003916:	ee77 7a67 	vsub.f32	s15, s14, s15
 800391a:	edc7 7a02 	vstr	s15, [r7, #8]
 800391e:	2300      	movs	r3, #0
 8003920:	73fb      	strb	r3, [r7, #15]
 8003922:	e008      	b.n	8003936 <checkIfPositionIsReached+0x6a>
 8003924:	7bfa      	ldrb	r2, [r7, #15]
 8003926:	463b      	mov	r3, r7
 8003928:	4610      	mov	r0, r2
 800392a:	4619      	mov	r1, r3
 800392c:	f000 f828 	bl	8003980 <checkIfPositionIsReachedCoord>
 8003930:	7bfb      	ldrb	r3, [r7, #15]
 8003932:	3301      	adds	r3, #1
 8003934:	73fb      	strb	r3, [r7, #15]
 8003936:	7bfb      	ldrb	r3, [r7, #15]
 8003938:	2b02      	cmp	r3, #2
 800393a:	d9f3      	bls.n	8003924 <checkIfPositionIsReached+0x58>
 800393c:	4b0e      	ldr	r3, [pc, #56]	; (8003978 <checkIfPositionIsReached+0xac>)
 800393e:	781b      	ldrb	r3, [r3, #0]
 8003940:	2b00      	cmp	r3, #0
 8003942:	d10b      	bne.n	800395c <checkIfPositionIsReached+0x90>
 8003944:	4b0c      	ldr	r3, [pc, #48]	; (8003978 <checkIfPositionIsReached+0xac>)
 8003946:	785b      	ldrb	r3, [r3, #1]
 8003948:	2b00      	cmp	r3, #0
 800394a:	d107      	bne.n	800395c <checkIfPositionIsReached+0x90>
 800394c:	4b0a      	ldr	r3, [pc, #40]	; (8003978 <checkIfPositionIsReached+0xac>)
 800394e:	789b      	ldrb	r3, [r3, #2]
 8003950:	2b00      	cmp	r3, #0
 8003952:	d103      	bne.n	800395c <checkIfPositionIsReached+0x90>
 8003954:	4b09      	ldr	r3, [pc, #36]	; (800397c <checkIfPositionIsReached+0xb0>)
 8003956:	2200      	movs	r2, #0
 8003958:	709a      	strb	r2, [r3, #2]
 800395a:	e002      	b.n	8003962 <checkIfPositionIsReached+0x96>
 800395c:	4b07      	ldr	r3, [pc, #28]	; (800397c <checkIfPositionIsReached+0xb0>)
 800395e:	2201      	movs	r2, #1
 8003960:	709a      	strb	r2, [r3, #2]
 8003962:	bf00      	nop
 8003964:	3710      	adds	r7, #16
 8003966:	46bd      	mov	sp, r7
 8003968:	bd80      	pop	{r7, pc}
 800396a:	bf00      	nop
 800396c:	20014fb8 	.word	0x20014fb8
 8003970:	40490fdb 	.word	0x40490fdb
 8003974:	40c90fdb 	.word	0x40c90fdb
 8003978:	20014fec 	.word	0x20014fec
 800397c:	20014fd4 	.word	0x20014fd4

08003980 <checkIfPositionIsReachedCoord>:
 8003980:	b580      	push	{r7, lr}
 8003982:	b082      	sub	sp, #8
 8003984:	af00      	add	r7, sp, #0
 8003986:	4603      	mov	r3, r0
 8003988:	6039      	str	r1, [r7, #0]
 800398a:	71fb      	strb	r3, [r7, #7]
 800398c:	79fb      	ldrb	r3, [r7, #7]
 800398e:	4a50      	ldr	r2, [pc, #320]	; (8003ad0 <checkIfPositionIsReachedCoord+0x150>)
 8003990:	5cd3      	ldrb	r3, [r2, r3]
 8003992:	2b00      	cmp	r3, #0
 8003994:	f000 8097 	beq.w	8003ac6 <checkIfPositionIsReachedCoord+0x146>
 8003998:	79fa      	ldrb	r2, [r7, #7]
 800399a:	4b4d      	ldr	r3, [pc, #308]	; (8003ad0 <checkIfPositionIsReachedCoord+0x150>)
 800399c:	321a      	adds	r2, #26
 800399e:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
 80039a2:	79fb      	ldrb	r3, [r7, #7]
 80039a4:	494a      	ldr	r1, [pc, #296]	; (8003ad0 <checkIfPositionIsReachedCoord+0x150>)
 80039a6:	331c      	adds	r3, #28
 80039a8:	009b      	lsls	r3, r3, #2
 80039aa:	440b      	add	r3, r1
 80039ac:	685b      	ldr	r3, [r3, #4]
 80039ae:	4610      	mov	r0, r2
 80039b0:	4619      	mov	r1, r3
 80039b2:	f7ff f953 	bl	8002c5c <checkTimeout>
 80039b6:	4603      	mov	r3, r0
 80039b8:	2b00      	cmp	r3, #0
 80039ba:	d00b      	beq.n	80039d4 <checkIfPositionIsReachedCoord+0x54>
 80039bc:	79fb      	ldrb	r3, [r7, #7]
 80039be:	4a45      	ldr	r2, [pc, #276]	; (8003ad4 <checkIfPositionIsReachedCoord+0x154>)
 80039c0:	009b      	lsls	r3, r3, #2
 80039c2:	4413      	add	r3, r2
 80039c4:	f04f 0200 	mov.w	r2, #0
 80039c8:	601a      	str	r2, [r3, #0]
 80039ca:	79fb      	ldrb	r3, [r7, #7]
 80039cc:	4a40      	ldr	r2, [pc, #256]	; (8003ad0 <checkIfPositionIsReachedCoord+0x150>)
 80039ce:	2100      	movs	r1, #0
 80039d0:	54d1      	strb	r1, [r2, r3]
 80039d2:	e079      	b.n	8003ac8 <checkIfPositionIsReachedCoord+0x148>
 80039d4:	79fb      	ldrb	r3, [r7, #7]
 80039d6:	4a3e      	ldr	r2, [pc, #248]	; (8003ad0 <checkIfPositionIsReachedCoord+0x150>)
 80039d8:	3316      	adds	r3, #22
 80039da:	009b      	lsls	r3, r3, #2
 80039dc:	4413      	add	r3, r2
 80039de:	ed93 7a00 	vldr	s14, [r3]
 80039e2:	79fb      	ldrb	r3, [r7, #7]
 80039e4:	009b      	lsls	r3, r3, #2
 80039e6:	683a      	ldr	r2, [r7, #0]
 80039e8:	4413      	add	r3, r2
 80039ea:	edd3 7a00 	vldr	s15, [r3]
 80039ee:	ee77 7a67 	vsub.f32	s15, s14, s15
 80039f2:	eeb0 7ae7 	vabs.f32	s14, s15
 80039f6:	79fb      	ldrb	r3, [r7, #7]
 80039f8:	4a37      	ldr	r2, [pc, #220]	; (8003ad8 <checkIfPositionIsReachedCoord+0x158>)
 80039fa:	009b      	lsls	r3, r3, #2
 80039fc:	4413      	add	r3, r2
 80039fe:	edd3 7a00 	vldr	s15, [r3]
 8003a02:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8003a06:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8003a0a:	d50b      	bpl.n	8003a24 <checkIfPositionIsReachedCoord+0xa4>
 8003a0c:	79fb      	ldrb	r3, [r7, #7]
 8003a0e:	4a31      	ldr	r2, [pc, #196]	; (8003ad4 <checkIfPositionIsReachedCoord+0x154>)
 8003a10:	009b      	lsls	r3, r3, #2
 8003a12:	4413      	add	r3, r2
 8003a14:	f04f 0200 	mov.w	r2, #0
 8003a18:	601a      	str	r2, [r3, #0]
 8003a1a:	79fb      	ldrb	r3, [r7, #7]
 8003a1c:	4a2c      	ldr	r2, [pc, #176]	; (8003ad0 <checkIfPositionIsReachedCoord+0x150>)
 8003a1e:	2100      	movs	r1, #0
 8003a20:	54d1      	strb	r1, [r2, r3]
 8003a22:	e051      	b.n	8003ac8 <checkIfPositionIsReachedCoord+0x148>
 8003a24:	79fb      	ldrb	r3, [r7, #7]
 8003a26:	009b      	lsls	r3, r3, #2
 8003a28:	683a      	ldr	r2, [r7, #0]
 8003a2a:	4413      	add	r3, r2
 8003a2c:	edd3 7a00 	vldr	s15, [r3]
 8003a30:	eeb0 7ae7 	vabs.f32	s14, s15
 8003a34:	79fb      	ldrb	r3, [r7, #7]
 8003a36:	4a26      	ldr	r2, [pc, #152]	; (8003ad0 <checkIfPositionIsReachedCoord+0x150>)
 8003a38:	3310      	adds	r3, #16
 8003a3a:	009b      	lsls	r3, r3, #2
 8003a3c:	4413      	add	r3, r2
 8003a3e:	edd3 7a00 	vldr	s15, [r3]
 8003a42:	eef0 7ae7 	vabs.f32	s15, s15
 8003a46:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8003a4a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8003a4e:	d51a      	bpl.n	8003a86 <checkIfPositionIsReachedCoord+0x106>
 8003a50:	79fb      	ldrb	r3, [r7, #7]
 8003a52:	4a22      	ldr	r2, [pc, #136]	; (8003adc <checkIfPositionIsReachedCoord+0x15c>)
 8003a54:	009b      	lsls	r3, r3, #2
 8003a56:	4413      	add	r3, r2
 8003a58:	edd3 7a00 	vldr	s15, [r3]
 8003a5c:	eeb0 7ae7 	vabs.f32	s14, s15
 8003a60:	79fb      	ldrb	r3, [r7, #7]
 8003a62:	4a1b      	ldr	r2, [pc, #108]	; (8003ad0 <checkIfPositionIsReachedCoord+0x150>)
 8003a64:	3306      	adds	r3, #6
 8003a66:	009b      	lsls	r3, r3, #2
 8003a68:	4413      	add	r3, r2
 8003a6a:	edd3 7a01 	vldr	s15, [r3, #4]
 8003a6e:	eef0 7ae7 	vabs.f32	s15, s15
 8003a72:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8003a76:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8003a7a:	d504      	bpl.n	8003a86 <checkIfPositionIsReachedCoord+0x106>
 8003a7c:	79fb      	ldrb	r3, [r7, #7]
 8003a7e:	4a14      	ldr	r2, [pc, #80]	; (8003ad0 <checkIfPositionIsReachedCoord+0x150>)
 8003a80:	2101      	movs	r1, #1
 8003a82:	54d1      	strb	r1, [r2, r3]
 8003a84:	e020      	b.n	8003ac8 <checkIfPositionIsReachedCoord+0x148>
 8003a86:	79fb      	ldrb	r3, [r7, #7]
 8003a88:	009b      	lsls	r3, r3, #2
 8003a8a:	683a      	ldr	r2, [r7, #0]
 8003a8c:	4413      	add	r3, r2
 8003a8e:	edd3 7a00 	vldr	s15, [r3]
 8003a92:	eeb0 7ae7 	vabs.f32	s14, s15
 8003a96:	79fb      	ldrb	r3, [r7, #7]
 8003a98:	4a0d      	ldr	r2, [pc, #52]	; (8003ad0 <checkIfPositionIsReachedCoord+0x150>)
 8003a9a:	3312      	adds	r3, #18
 8003a9c:	009b      	lsls	r3, r3, #2
 8003a9e:	4413      	add	r3, r2
 8003aa0:	edd3 7a01 	vldr	s15, [r3, #4]
 8003aa4:	eef0 7ae7 	vabs.f32	s15, s15
 8003aa8:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8003aac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8003ab0:	d504      	bpl.n	8003abc <checkIfPositionIsReachedCoord+0x13c>
 8003ab2:	79fb      	ldrb	r3, [r7, #7]
 8003ab4:	4a06      	ldr	r2, [pc, #24]	; (8003ad0 <checkIfPositionIsReachedCoord+0x150>)
 8003ab6:	2102      	movs	r1, #2
 8003ab8:	54d1      	strb	r1, [r2, r3]
 8003aba:	e005      	b.n	8003ac8 <checkIfPositionIsReachedCoord+0x148>
 8003abc:	79fb      	ldrb	r3, [r7, #7]
 8003abe:	4a04      	ldr	r2, [pc, #16]	; (8003ad0 <checkIfPositionIsReachedCoord+0x150>)
 8003ac0:	2103      	movs	r1, #3
 8003ac2:	54d1      	strb	r1, [r2, r3]
 8003ac4:	e000      	b.n	8003ac8 <checkIfPositionIsReachedCoord+0x148>
 8003ac6:	bf00      	nop
 8003ac8:	3708      	adds	r7, #8
 8003aca:	46bd      	mov	sp, r7
 8003acc:	bd80      	pop	{r7, pc}
 8003ace:	bf00      	nop
 8003ad0:	20014fec 	.word	0x20014fec
 8003ad4:	20014fc8 	.word	0x20014fc8
 8003ad8:	0800951c 	.word	0x0800951c
 8003adc:	20015084 	.word	0x20015084

08003ae0 <updateRobotStatus>:
 8003ae0:	b480      	push	{r7}
 8003ae2:	b083      	sub	sp, #12
 8003ae4:	af00      	add	r7, sp, #0
 8003ae6:	2300      	movs	r3, #0
 8003ae8:	71fb      	strb	r3, [r7, #7]
 8003aea:	e013      	b.n	8003b14 <updateRobotStatus+0x34>
 8003aec:	79fb      	ldrb	r3, [r7, #7]
 8003aee:	4a0f      	ldr	r2, [pc, #60]	; (8003b2c <updateRobotStatus+0x4c>)
 8003af0:	009b      	lsls	r3, r3, #2
 8003af2:	4413      	add	r3, r2
 8003af4:	ed93 7a00 	vldr	s14, [r3]
 8003af8:	eddf 7a0d 	vldr	s15, [pc, #52]	; 8003b30 <updateRobotStatus+0x50>
 8003afc:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8003b00:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8003b04:	dd03      	ble.n	8003b0e <updateRobotStatus+0x2e>
 8003b06:	4b0b      	ldr	r3, [pc, #44]	; (8003b34 <updateRobotStatus+0x54>)
 8003b08:	2201      	movs	r2, #1
 8003b0a:	701a      	strb	r2, [r3, #0]
 8003b0c:	e009      	b.n	8003b22 <updateRobotStatus+0x42>
 8003b0e:	79fb      	ldrb	r3, [r7, #7]
 8003b10:	3301      	adds	r3, #1
 8003b12:	71fb      	strb	r3, [r7, #7]
 8003b14:	79fb      	ldrb	r3, [r7, #7]
 8003b16:	2b03      	cmp	r3, #3
 8003b18:	d9e8      	bls.n	8003aec <updateRobotStatus+0xc>
 8003b1a:	4b06      	ldr	r3, [pc, #24]	; (8003b34 <updateRobotStatus+0x54>)
 8003b1c:	2200      	movs	r2, #0
 8003b1e:	701a      	strb	r2, [r3, #0]
 8003b20:	bf00      	nop
 8003b22:	370c      	adds	r7, #12
 8003b24:	46bd      	mov	sp, r7
 8003b26:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003b2a:	4770      	bx	lr
 8003b2c:	20015070 	.word	0x20015070
 8003b30:	3b83126f 	.word	0x3b83126f
 8003b34:	20014fd4 	.word	0x20014fd4

08003b38 <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode>:
 8003b38:	b580      	push	{r7, lr}
 8003b3a:	b084      	sub	sp, #16
 8003b3c:	af00      	add	r7, sp, #0
 8003b3e:	4603      	mov	r3, r0
 8003b40:	71fb      	strb	r3, [r7, #7]
 8003b42:	f107 020f 	add.w	r2, r7, #15
 8003b46:	79fb      	ldrb	r3, [r7, #7]
 8003b48:	2016      	movs	r0, #22
 8003b4a:	4611      	mov	r1, r2
 8003b4c:	461a      	mov	r2, r3
 8003b4e:	f000 fb43 	bl	80041d8 <rangeFinderReadReg>
 8003b52:	4603      	mov	r3, r0
 8003b54:	2b01      	cmp	r3, #1
 8003b56:	d001      	beq.n	8003b5c <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x24>
 8003b58:	2300      	movs	r3, #0
 8003b5a:	e088      	b.n	8003c6e <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x136>
 8003b5c:	7bfb      	ldrb	r3, [r7, #15]
 8003b5e:	2b01      	cmp	r3, #1
 8003b60:	f040 8084 	bne.w	8003c6c <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x134>
 8003b64:	79fb      	ldrb	r3, [r7, #7]
 8003b66:	4618      	mov	r0, r3
 8003b68:	f000 f9bc 	bl	8003ee4 <rangeFinderInitMandatoryRegs>
 8003b6c:	4603      	mov	r3, r0
 8003b6e:	2b01      	cmp	r3, #1
 8003b70:	d001      	beq.n	8003b76 <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x3e>
 8003b72:	2300      	movs	r3, #0
 8003b74:	e07b      	b.n	8003c6e <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x136>
 8003b76:	79fb      	ldrb	r3, [r7, #7]
 8003b78:	203f      	movs	r0, #63	; 0x3f
 8003b7a:	2146      	movs	r1, #70	; 0x46
 8003b7c:	461a      	mov	r2, r3
 8003b7e:	f000 fb03 	bl	8004188 <rangeFinderWriteReg>
 8003b82:	4603      	mov	r3, r0
 8003b84:	2b01      	cmp	r3, #1
 8003b86:	d001      	beq.n	8003b8c <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x54>
 8003b88:	2300      	movs	r3, #0
 8003b8a:	e070      	b.n	8003c6e <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x136>
 8003b8c:	79fb      	ldrb	r3, [r7, #7]
 8003b8e:	2031      	movs	r0, #49	; 0x31
 8003b90:	21ff      	movs	r1, #255	; 0xff
 8003b92:	461a      	mov	r2, r3
 8003b94:	f000 faf8 	bl	8004188 <rangeFinderWriteReg>
 8003b98:	4603      	mov	r3, r0
 8003b9a:	2b01      	cmp	r3, #1
 8003b9c:	d001      	beq.n	8003ba2 <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x6a>
 8003b9e:	2300      	movs	r3, #0
 8003ba0:	e065      	b.n	8003c6e <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x136>
 8003ba2:	79fb      	ldrb	r3, [r7, #7]
 8003ba4:	202e      	movs	r0, #46	; 0x2e
 8003ba6:	2101      	movs	r1, #1
 8003ba8:	461a      	mov	r2, r3
 8003baa:	f000 faed 	bl	8004188 <rangeFinderWriteReg>
 8003bae:	4603      	mov	r3, r0
 8003bb0:	2b01      	cmp	r3, #1
 8003bb2:	d001      	beq.n	8003bb8 <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x80>
 8003bb4:	2300      	movs	r3, #0
 8003bb6:	e05a      	b.n	8003c6e <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x136>
 8003bb8:	79fb      	ldrb	r3, [r7, #7]
 8003bba:	201b      	movs	r0, #27
 8003bbc:	2101      	movs	r1, #1
 8003bbe:	461a      	mov	r2, r3
 8003bc0:	f000 fae2 	bl	8004188 <rangeFinderWriteReg>
 8003bc4:	4603      	mov	r3, r0
 8003bc6:	2b01      	cmp	r3, #1
 8003bc8:	d001      	beq.n	8003bce <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x96>
 8003bca:	2300      	movs	r3, #0
 8003bcc:	e04f      	b.n	8003c6e <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x136>
 8003bce:	79fb      	ldrb	r3, [r7, #7]
 8003bd0:	201c      	movs	r0, #28
 8003bd2:	210d      	movs	r1, #13
 8003bd4:	461a      	mov	r2, r3
 8003bd6:	f000 fad7 	bl	8004188 <rangeFinderWriteReg>
 8003bda:	4603      	mov	r3, r0
 8003bdc:	2b01      	cmp	r3, #1
 8003bde:	d001      	beq.n	8003be4 <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0xac>
 8003be0:	2300      	movs	r3, #0
 8003be2:	e044      	b.n	8003c6e <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x136>
 8003be4:	79fb      	ldrb	r3, [r7, #7]
 8003be6:	202d      	movs	r0, #45	; 0x2d
 8003be8:	2110      	movs	r1, #16
 8003bea:	461a      	mov	r2, r3
 8003bec:	f000 facc 	bl	8004188 <rangeFinderWriteReg>
 8003bf0:	4603      	mov	r3, r0
 8003bf2:	2b01      	cmp	r3, #1
 8003bf4:	d001      	beq.n	8003bfa <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0xc2>
 8003bf6:	2300      	movs	r3, #0
 8003bf8:	e039      	b.n	8003c6e <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x136>
 8003bfa:	79fb      	ldrb	r3, [r7, #7]
 8003bfc:	2017      	movs	r0, #23
 8003bfe:	2101      	movs	r1, #1
 8003c00:	461a      	mov	r2, r3
 8003c02:	f000 fac1 	bl	8004188 <rangeFinderWriteReg>
 8003c06:	4603      	mov	r3, r0
 8003c08:	2b01      	cmp	r3, #1
 8003c0a:	d001      	beq.n	8003c10 <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0xd8>
 8003c0c:	2300      	movs	r3, #0
 8003c0e:	e02e      	b.n	8003c6e <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x136>
 8003c10:	79fb      	ldrb	r3, [r7, #7]
 8003c12:	2014      	movs	r0, #20
 8003c14:	2104      	movs	r1, #4
 8003c16:	461a      	mov	r2, r3
 8003c18:	f000 fab6 	bl	8004188 <rangeFinderWriteReg>
 8003c1c:	4603      	mov	r3, r0
 8003c1e:	2b01      	cmp	r3, #1
 8003c20:	d001      	beq.n	8003c26 <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0xee>
 8003c22:	2300      	movs	r3, #0
 8003c24:	e023      	b.n	8003c6e <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x136>
 8003c26:	79fb      	ldrb	r3, [r7, #7]
 8003c28:	2017      	movs	r0, #23
 8003c2a:	2100      	movs	r1, #0
 8003c2c:	461a      	mov	r2, r3
 8003c2e:	f000 faab 	bl	8004188 <rangeFinderWriteReg>
 8003c32:	4603      	mov	r3, r0
 8003c34:	2b01      	cmp	r3, #1
 8003c36:	d001      	beq.n	8003c3c <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x104>
 8003c38:	2300      	movs	r3, #0
 8003c3a:	e018      	b.n	8003c6e <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x136>
 8003c3c:	79fb      	ldrb	r3, [r7, #7]
 8003c3e:	202c      	movs	r0, #44	; 0x2c
 8003c40:	2108      	movs	r1, #8
 8003c42:	461a      	mov	r2, r3
 8003c44:	f000 faa0 	bl	8004188 <rangeFinderWriteReg>
 8003c48:	4603      	mov	r3, r0
 8003c4a:	2b01      	cmp	r3, #1
 8003c4c:	d001      	beq.n	8003c52 <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x11a>
 8003c4e:	2300      	movs	r3, #0
 8003c50:	e00d      	b.n	8003c6e <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x136>
 8003c52:	79fb      	ldrb	r3, [r7, #7]
 8003c54:	2016      	movs	r0, #22
 8003c56:	2100      	movs	r1, #0
 8003c58:	461a      	mov	r2, r3
 8003c5a:	f000 fa95 	bl	8004188 <rangeFinderWriteReg>
 8003c5e:	4603      	mov	r3, r0
 8003c60:	2b01      	cmp	r3, #1
 8003c62:	d001      	beq.n	8003c68 <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x130>
 8003c64:	2300      	movs	r3, #0
 8003c66:	e002      	b.n	8003c6e <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x136>
 8003c68:	2301      	movs	r3, #1
 8003c6a:	e000      	b.n	8003c6e <rangeFinderInitContiniousInterruptNewSampleOpticalSwitchMode+0x136>
 8003c6c:	2300      	movs	r3, #0
 8003c6e:	4618      	mov	r0, r3
 8003c70:	3710      	adds	r7, #16
 8003c72:	46bd      	mov	sp, r7
 8003c74:	bd80      	pop	{r7, pc}
 8003c76:	bf00      	nop

08003c78 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode>:
 8003c78:	b580      	push	{r7, lr}
 8003c7a:	b084      	sub	sp, #16
 8003c7c:	af00      	add	r7, sp, #0
 8003c7e:	4603      	mov	r3, r0
 8003c80:	71fb      	strb	r3, [r7, #7]
 8003c82:	f107 020f 	add.w	r2, r7, #15
 8003c86:	79fb      	ldrb	r3, [r7, #7]
 8003c88:	2016      	movs	r0, #22
 8003c8a:	4611      	mov	r1, r2
 8003c8c:	461a      	mov	r2, r3
 8003c8e:	f000 faa3 	bl	80041d8 <rangeFinderReadReg>
 8003c92:	4603      	mov	r3, r0
 8003c94:	2b01      	cmp	r3, #1
 8003c96:	d001      	beq.n	8003c9c <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x24>
 8003c98:	2300      	movs	r3, #0
 8003c9a:	e088      	b.n	8003dae <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x136>
 8003c9c:	7bfb      	ldrb	r3, [r7, #15]
 8003c9e:	2b01      	cmp	r3, #1
 8003ca0:	f040 8084 	bne.w	8003dac <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x134>
 8003ca4:	79fb      	ldrb	r3, [r7, #7]
 8003ca6:	4618      	mov	r0, r3
 8003ca8:	f000 f91c 	bl	8003ee4 <rangeFinderInitMandatoryRegs>
 8003cac:	4603      	mov	r3, r0
 8003cae:	2b01      	cmp	r3, #1
 8003cb0:	d001      	beq.n	8003cb6 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x3e>
 8003cb2:	2300      	movs	r3, #0
 8003cb4:	e07b      	b.n	8003dae <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x136>
 8003cb6:	79fb      	ldrb	r3, [r7, #7]
 8003cb8:	203f      	movs	r0, #63	; 0x3f
 8003cba:	2146      	movs	r1, #70	; 0x46
 8003cbc:	461a      	mov	r2, r3
 8003cbe:	f000 fa63 	bl	8004188 <rangeFinderWriteReg>
 8003cc2:	4603      	mov	r3, r0
 8003cc4:	2b01      	cmp	r3, #1
 8003cc6:	d001      	beq.n	8003ccc <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x54>
 8003cc8:	2300      	movs	r3, #0
 8003cca:	e070      	b.n	8003dae <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x136>
 8003ccc:	79fb      	ldrb	r3, [r7, #7]
 8003cce:	2031      	movs	r0, #49	; 0x31
 8003cd0:	21ff      	movs	r1, #255	; 0xff
 8003cd2:	461a      	mov	r2, r3
 8003cd4:	f000 fa58 	bl	8004188 <rangeFinderWriteReg>
 8003cd8:	4603      	mov	r3, r0
 8003cda:	2b01      	cmp	r3, #1
 8003cdc:	d001      	beq.n	8003ce2 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x6a>
 8003cde:	2300      	movs	r3, #0
 8003ce0:	e065      	b.n	8003dae <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x136>
 8003ce2:	79fb      	ldrb	r3, [r7, #7]
 8003ce4:	202e      	movs	r0, #46	; 0x2e
 8003ce6:	2101      	movs	r1, #1
 8003ce8:	461a      	mov	r2, r3
 8003cea:	f000 fa4d 	bl	8004188 <rangeFinderWriteReg>
 8003cee:	4603      	mov	r3, r0
 8003cf0:	2b01      	cmp	r3, #1
 8003cf2:	d001      	beq.n	8003cf8 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x80>
 8003cf4:	2300      	movs	r3, #0
 8003cf6:	e05a      	b.n	8003dae <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x136>
 8003cf8:	79fb      	ldrb	r3, [r7, #7]
 8003cfa:	201b      	movs	r0, #27
 8003cfc:	2101      	movs	r1, #1
 8003cfe:	461a      	mov	r2, r3
 8003d00:	f000 fa42 	bl	8004188 <rangeFinderWriteReg>
 8003d04:	4603      	mov	r3, r0
 8003d06:	2b01      	cmp	r3, #1
 8003d08:	d001      	beq.n	8003d0e <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x96>
 8003d0a:	2300      	movs	r3, #0
 8003d0c:	e04f      	b.n	8003dae <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x136>
 8003d0e:	79fb      	ldrb	r3, [r7, #7]
 8003d10:	201c      	movs	r0, #28
 8003d12:	210d      	movs	r1, #13
 8003d14:	461a      	mov	r2, r3
 8003d16:	f000 fa37 	bl	8004188 <rangeFinderWriteReg>
 8003d1a:	4603      	mov	r3, r0
 8003d1c:	2b01      	cmp	r3, #1
 8003d1e:	d001      	beq.n	8003d24 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0xac>
 8003d20:	2300      	movs	r3, #0
 8003d22:	e044      	b.n	8003dae <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x136>
 8003d24:	79fb      	ldrb	r3, [r7, #7]
 8003d26:	2017      	movs	r0, #23
 8003d28:	2101      	movs	r1, #1
 8003d2a:	461a      	mov	r2, r3
 8003d2c:	f000 fa2c 	bl	8004188 <rangeFinderWriteReg>
 8003d30:	4603      	mov	r3, r0
 8003d32:	2b01      	cmp	r3, #1
 8003d34:	d001      	beq.n	8003d3a <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0xc2>
 8003d36:	2300      	movs	r3, #0
 8003d38:	e039      	b.n	8003dae <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x136>
 8003d3a:	79fb      	ldrb	r3, [r7, #7]
 8003d3c:	202d      	movs	r0, #45	; 0x2d
 8003d3e:	2110      	movs	r1, #16
 8003d40:	461a      	mov	r2, r3
 8003d42:	f000 fa21 	bl	8004188 <rangeFinderWriteReg>
 8003d46:	4603      	mov	r3, r0
 8003d48:	2b01      	cmp	r3, #1
 8003d4a:	d001      	beq.n	8003d50 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0xd8>
 8003d4c:	2300      	movs	r3, #0
 8003d4e:	e02e      	b.n	8003dae <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x136>
 8003d50:	79fb      	ldrb	r3, [r7, #7]
 8003d52:	2014      	movs	r0, #20
 8003d54:	2104      	movs	r1, #4
 8003d56:	461a      	mov	r2, r3
 8003d58:	f000 fa16 	bl	8004188 <rangeFinderWriteReg>
 8003d5c:	4603      	mov	r3, r0
 8003d5e:	2b01      	cmp	r3, #1
 8003d60:	d001      	beq.n	8003d66 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0xee>
 8003d62:	2300      	movs	r3, #0
 8003d64:	e023      	b.n	8003dae <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x136>
 8003d66:	79fb      	ldrb	r3, [r7, #7]
 8003d68:	2017      	movs	r0, #23
 8003d6a:	2100      	movs	r1, #0
 8003d6c:	461a      	mov	r2, r3
 8003d6e:	f000 fa0b 	bl	8004188 <rangeFinderWriteReg>
 8003d72:	4603      	mov	r3, r0
 8003d74:	2b01      	cmp	r3, #1
 8003d76:	d001      	beq.n	8003d7c <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x104>
 8003d78:	2300      	movs	r3, #0
 8003d7a:	e018      	b.n	8003dae <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x136>
 8003d7c:	79fb      	ldrb	r3, [r7, #7]
 8003d7e:	202c      	movs	r0, #44	; 0x2c
 8003d80:	2150      	movs	r1, #80	; 0x50
 8003d82:	461a      	mov	r2, r3
 8003d84:	f000 fa00 	bl	8004188 <rangeFinderWriteReg>
 8003d88:	4603      	mov	r3, r0
 8003d8a:	2b01      	cmp	r3, #1
 8003d8c:	d001      	beq.n	8003d92 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x11a>
 8003d8e:	2300      	movs	r3, #0
 8003d90:	e00d      	b.n	8003dae <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x136>
 8003d92:	79fb      	ldrb	r3, [r7, #7]
 8003d94:	2016      	movs	r0, #22
 8003d96:	2100      	movs	r1, #0
 8003d98:	461a      	mov	r2, r3
 8003d9a:	f000 f9f5 	bl	8004188 <rangeFinderWriteReg>
 8003d9e:	4603      	mov	r3, r0
 8003da0:	2b01      	cmp	r3, #1
 8003da2:	d001      	beq.n	8003da8 <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x130>
 8003da4:	2300      	movs	r3, #0
 8003da6:	e002      	b.n	8003dae <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x136>
 8003da8:	2301      	movs	r3, #1
 8003daa:	e000      	b.n	8003dae <rangeFinderInitContiniousInterruptNewSampleColAvoidMode+0x136>
 8003dac:	2300      	movs	r3, #0
 8003dae:	4618      	mov	r0, r3
 8003db0:	3710      	adds	r7, #16
 8003db2:	46bd      	mov	sp, r7
 8003db4:	bd80      	pop	{r7, pc}
 8003db6:	bf00      	nop

08003db8 <rangeFinderChangeAddress>:
 8003db8:	b580      	push	{r7, lr}
 8003dba:	b082      	sub	sp, #8
 8003dbc:	af00      	add	r7, sp, #0
 8003dbe:	4602      	mov	r2, r0
 8003dc0:	460b      	mov	r3, r1
 8003dc2:	71fa      	strb	r2, [r7, #7]
 8003dc4:	71bb      	strb	r3, [r7, #6]
 8003dc6:	79ba      	ldrb	r2, [r7, #6]
 8003dc8:	79fb      	ldrb	r3, [r7, #7]
 8003dca:	f240 2012 	movw	r0, #530	; 0x212
 8003dce:	4611      	mov	r1, r2
 8003dd0:	461a      	mov	r2, r3
 8003dd2:	f000 f9d9 	bl	8004188 <rangeFinderWriteReg>
 8003dd6:	4603      	mov	r3, r0
 8003dd8:	2b01      	cmp	r3, #1
 8003dda:	d001      	beq.n	8003de0 <rangeFinderChangeAddress+0x28>
 8003ddc:	2300      	movs	r3, #0
 8003dde:	e000      	b.n	8003de2 <rangeFinderChangeAddress+0x2a>
 8003de0:	2301      	movs	r3, #1
 8003de2:	4618      	mov	r0, r3
 8003de4:	3708      	adds	r7, #8
 8003de6:	46bd      	mov	sp, r7
 8003de8:	bd80      	pop	{r7, pc}
 8003dea:	bf00      	nop

08003dec <rangeFinderCheckInterruptStatusOfSensor>:
 8003dec:	b580      	push	{r7, lr}
 8003dee:	b084      	sub	sp, #16
 8003df0:	af00      	add	r7, sp, #0
 8003df2:	6039      	str	r1, [r7, #0]
 8003df4:	4613      	mov	r3, r2
 8003df6:	4602      	mov	r2, r0
 8003df8:	71fa      	strb	r2, [r7, #7]
 8003dfa:	71bb      	strb	r3, [r7, #6]
 8003dfc:	f107 020f 	add.w	r2, r7, #15
 8003e00:	79fb      	ldrb	r3, [r7, #7]
 8003e02:	204f      	movs	r0, #79	; 0x4f
 8003e04:	4611      	mov	r1, r2
 8003e06:	461a      	mov	r2, r3
 8003e08:	f000 f9e6 	bl	80041d8 <rangeFinderReadReg>
 8003e0c:	4603      	mov	r3, r0
 8003e0e:	2b01      	cmp	r3, #1
 8003e10:	d001      	beq.n	8003e16 <rangeFinderCheckInterruptStatusOfSensor+0x2a>
 8003e12:	2300      	movs	r3, #0
 8003e14:	e01f      	b.n	8003e56 <rangeFinderCheckInterruptStatusOfSensor+0x6a>
 8003e16:	7bfb      	ldrb	r3, [r7, #15]
 8003e18:	f003 0307 	and.w	r3, r3, #7
 8003e1c:	b2db      	uxtb	r3, r3
 8003e1e:	73fb      	strb	r3, [r7, #15]
 8003e20:	7bfb      	ldrb	r3, [r7, #15]
 8003e22:	79ba      	ldrb	r2, [r7, #6]
 8003e24:	429a      	cmp	r2, r3
 8003e26:	d103      	bne.n	8003e30 <rangeFinderCheckInterruptStatusOfSensor+0x44>
 8003e28:	683b      	ldr	r3, [r7, #0]
 8003e2a:	2201      	movs	r2, #1
 8003e2c:	701a      	strb	r2, [r3, #0]
 8003e2e:	e002      	b.n	8003e36 <rangeFinderCheckInterruptStatusOfSensor+0x4a>
 8003e30:	683b      	ldr	r3, [r7, #0]
 8003e32:	2200      	movs	r2, #0
 8003e34:	701a      	strb	r2, [r3, #0]
 8003e36:	683b      	ldr	r3, [r7, #0]
 8003e38:	781b      	ldrb	r3, [r3, #0]
 8003e3a:	2b01      	cmp	r3, #1
 8003e3c:	d10a      	bne.n	8003e54 <rangeFinderCheckInterruptStatusOfSensor+0x68>
 8003e3e:	79fb      	ldrb	r3, [r7, #7]
 8003e40:	2015      	movs	r0, #21
 8003e42:	2107      	movs	r1, #7
 8003e44:	461a      	mov	r2, r3
 8003e46:	f000 f99f 	bl	8004188 <rangeFinderWriteReg>
 8003e4a:	4603      	mov	r3, r0
 8003e4c:	2b01      	cmp	r3, #1
 8003e4e:	d001      	beq.n	8003e54 <rangeFinderCheckInterruptStatusOfSensor+0x68>
 8003e50:	2300      	movs	r3, #0
 8003e52:	e000      	b.n	8003e56 <rangeFinderCheckInterruptStatusOfSensor+0x6a>
 8003e54:	2301      	movs	r3, #1
 8003e56:	4618      	mov	r0, r3
 8003e58:	3710      	adds	r7, #16
 8003e5a:	46bd      	mov	sp, r7
 8003e5c:	bd80      	pop	{r7, pc}
 8003e5e:	bf00      	nop

08003e60 <rangeFinderStartContiniousMeasurements>:
 8003e60:	b580      	push	{r7, lr}
 8003e62:	b082      	sub	sp, #8
 8003e64:	af00      	add	r7, sp, #0
 8003e66:	4603      	mov	r3, r0
 8003e68:	71fb      	strb	r3, [r7, #7]
 8003e6a:	79fb      	ldrb	r3, [r7, #7]
 8003e6c:	2018      	movs	r0, #24
 8003e6e:	2103      	movs	r1, #3
 8003e70:	461a      	mov	r2, r3
 8003e72:	f000 f989 	bl	8004188 <rangeFinderWriteReg>
 8003e76:	4603      	mov	r3, r0
 8003e78:	2b01      	cmp	r3, #1
 8003e7a:	d001      	beq.n	8003e80 <rangeFinderStartContiniousMeasurements+0x20>
 8003e7c:	2300      	movs	r3, #0
 8003e7e:	e000      	b.n	8003e82 <rangeFinderStartContiniousMeasurements+0x22>
 8003e80:	2301      	movs	r3, #1
 8003e82:	4618      	mov	r0, r3
 8003e84:	3708      	adds	r7, #8
 8003e86:	46bd      	mov	sp, r7
 8003e88:	bd80      	pop	{r7, pc}
 8003e8a:	bf00      	nop

08003e8c <rangeFinderReadMeasuredRange>:
 8003e8c:	b580      	push	{r7, lr}
 8003e8e:	b082      	sub	sp, #8
 8003e90:	af00      	add	r7, sp, #0
 8003e92:	4603      	mov	r3, r0
 8003e94:	6039      	str	r1, [r7, #0]
 8003e96:	71fb      	strb	r3, [r7, #7]
 8003e98:	79fb      	ldrb	r3, [r7, #7]
 8003e9a:	2062      	movs	r0, #98	; 0x62
 8003e9c:	6839      	ldr	r1, [r7, #0]
 8003e9e:	461a      	mov	r2, r3
 8003ea0:	f000 f99a 	bl	80041d8 <rangeFinderReadReg>
 8003ea4:	4603      	mov	r3, r0
 8003ea6:	2b01      	cmp	r3, #1
 8003ea8:	d001      	beq.n	8003eae <rangeFinderReadMeasuredRange+0x22>
 8003eaa:	2300      	movs	r3, #0
 8003eac:	e000      	b.n	8003eb0 <rangeFinderReadMeasuredRange+0x24>
 8003eae:	2301      	movs	r3, #1
 8003eb0:	4618      	mov	r0, r3
 8003eb2:	3708      	adds	r7, #8
 8003eb4:	46bd      	mov	sp, r7
 8003eb6:	bd80      	pop	{r7, pc}

08003eb8 <rangeFinderReadRangeReadyStatus>:
 8003eb8:	b580      	push	{r7, lr}
 8003eba:	b082      	sub	sp, #8
 8003ebc:	af00      	add	r7, sp, #0
 8003ebe:	4603      	mov	r3, r0
 8003ec0:	6039      	str	r1, [r7, #0]
 8003ec2:	71fb      	strb	r3, [r7, #7]
 8003ec4:	79fb      	ldrb	r3, [r7, #7]
 8003ec6:	204d      	movs	r0, #77	; 0x4d
 8003ec8:	6839      	ldr	r1, [r7, #0]
 8003eca:	461a      	mov	r2, r3
 8003ecc:	f000 f984 	bl	80041d8 <rangeFinderReadReg>
 8003ed0:	4603      	mov	r3, r0
 8003ed2:	2b01      	cmp	r3, #1
 8003ed4:	d001      	beq.n	8003eda <rangeFinderReadRangeReadyStatus+0x22>
 8003ed6:	2300      	movs	r3, #0
 8003ed8:	e000      	b.n	8003edc <rangeFinderReadRangeReadyStatus+0x24>
 8003eda:	2301      	movs	r3, #1
 8003edc:	4618      	mov	r0, r3
 8003ede:	3708      	adds	r7, #8
 8003ee0:	46bd      	mov	sp, r7
 8003ee2:	bd80      	pop	{r7, pc}

08003ee4 <rangeFinderInitMandatoryRegs>:
 8003ee4:	b580      	push	{r7, lr}
 8003ee6:	b082      	sub	sp, #8
 8003ee8:	af00      	add	r7, sp, #0
 8003eea:	4603      	mov	r3, r0
 8003eec:	71fb      	strb	r3, [r7, #7]
 8003eee:	79fb      	ldrb	r3, [r7, #7]
 8003ef0:	f240 2007 	movw	r0, #519	; 0x207
 8003ef4:	2101      	movs	r1, #1
 8003ef6:	461a      	mov	r2, r3
 8003ef8:	f000 f946 	bl	8004188 <rangeFinderWriteReg>
 8003efc:	4603      	mov	r3, r0
 8003efe:	2b01      	cmp	r3, #1
 8003f00:	d001      	beq.n	8003f06 <rangeFinderInitMandatoryRegs+0x22>
 8003f02:	2300      	movs	r3, #0
 8003f04:	e13c      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 8003f06:	79fb      	ldrb	r3, [r7, #7]
 8003f08:	f44f 7002 	mov.w	r0, #520	; 0x208
 8003f0c:	2101      	movs	r1, #1
 8003f0e:	461a      	mov	r2, r3
 8003f10:	f000 f93a 	bl	8004188 <rangeFinderWriteReg>
 8003f14:	4603      	mov	r3, r0
 8003f16:	2b01      	cmp	r3, #1
 8003f18:	d001      	beq.n	8003f1e <rangeFinderInitMandatoryRegs+0x3a>
 8003f1a:	2300      	movs	r3, #0
 8003f1c:	e130      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 8003f1e:	79fb      	ldrb	r3, [r7, #7]
 8003f20:	2096      	movs	r0, #150	; 0x96
 8003f22:	2100      	movs	r1, #0
 8003f24:	461a      	mov	r2, r3
 8003f26:	f000 f92f 	bl	8004188 <rangeFinderWriteReg>
 8003f2a:	4603      	mov	r3, r0
 8003f2c:	2b01      	cmp	r3, #1
 8003f2e:	d001      	beq.n	8003f34 <rangeFinderInitMandatoryRegs+0x50>
 8003f30:	2300      	movs	r3, #0
 8003f32:	e125      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 8003f34:	79fb      	ldrb	r3, [r7, #7]
 8003f36:	2097      	movs	r0, #151	; 0x97
 8003f38:	21fd      	movs	r1, #253	; 0xfd
 8003f3a:	461a      	mov	r2, r3
 8003f3c:	f000 f924 	bl	8004188 <rangeFinderWriteReg>
 8003f40:	4603      	mov	r3, r0
 8003f42:	2b01      	cmp	r3, #1
 8003f44:	d001      	beq.n	8003f4a <rangeFinderInitMandatoryRegs+0x66>
 8003f46:	2300      	movs	r3, #0
 8003f48:	e11a      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 8003f4a:	79fb      	ldrb	r3, [r7, #7]
 8003f4c:	20e3      	movs	r0, #227	; 0xe3
 8003f4e:	2100      	movs	r1, #0
 8003f50:	461a      	mov	r2, r3
 8003f52:	f000 f919 	bl	8004188 <rangeFinderWriteReg>
 8003f56:	4603      	mov	r3, r0
 8003f58:	2b01      	cmp	r3, #1
 8003f5a:	d001      	beq.n	8003f60 <rangeFinderInitMandatoryRegs+0x7c>
 8003f5c:	2300      	movs	r3, #0
 8003f5e:	e10f      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 8003f60:	79fb      	ldrb	r3, [r7, #7]
 8003f62:	20e4      	movs	r0, #228	; 0xe4
 8003f64:	2104      	movs	r1, #4
 8003f66:	461a      	mov	r2, r3
 8003f68:	f000 f90e 	bl	8004188 <rangeFinderWriteReg>
 8003f6c:	4603      	mov	r3, r0
 8003f6e:	2b01      	cmp	r3, #1
 8003f70:	d001      	beq.n	8003f76 <rangeFinderInitMandatoryRegs+0x92>
 8003f72:	2300      	movs	r3, #0
 8003f74:	e104      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 8003f76:	79fb      	ldrb	r3, [r7, #7]
 8003f78:	20e5      	movs	r0, #229	; 0xe5
 8003f7a:	2102      	movs	r1, #2
 8003f7c:	461a      	mov	r2, r3
 8003f7e:	f000 f903 	bl	8004188 <rangeFinderWriteReg>
 8003f82:	4603      	mov	r3, r0
 8003f84:	2b01      	cmp	r3, #1
 8003f86:	d001      	beq.n	8003f8c <rangeFinderInitMandatoryRegs+0xa8>
 8003f88:	2300      	movs	r3, #0
 8003f8a:	e0f9      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 8003f8c:	79fb      	ldrb	r3, [r7, #7]
 8003f8e:	20e6      	movs	r0, #230	; 0xe6
 8003f90:	2101      	movs	r1, #1
 8003f92:	461a      	mov	r2, r3
 8003f94:	f000 f8f8 	bl	8004188 <rangeFinderWriteReg>
 8003f98:	4603      	mov	r3, r0
 8003f9a:	2b01      	cmp	r3, #1
 8003f9c:	d001      	beq.n	8003fa2 <rangeFinderInitMandatoryRegs+0xbe>
 8003f9e:	2300      	movs	r3, #0
 8003fa0:	e0ee      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 8003fa2:	79fb      	ldrb	r3, [r7, #7]
 8003fa4:	20e7      	movs	r0, #231	; 0xe7
 8003fa6:	2103      	movs	r1, #3
 8003fa8:	461a      	mov	r2, r3
 8003faa:	f000 f8ed 	bl	8004188 <rangeFinderWriteReg>
 8003fae:	4603      	mov	r3, r0
 8003fb0:	2b01      	cmp	r3, #1
 8003fb2:	d001      	beq.n	8003fb8 <rangeFinderInitMandatoryRegs+0xd4>
 8003fb4:	2300      	movs	r3, #0
 8003fb6:	e0e3      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 8003fb8:	79fb      	ldrb	r3, [r7, #7]
 8003fba:	20f5      	movs	r0, #245	; 0xf5
 8003fbc:	2102      	movs	r1, #2
 8003fbe:	461a      	mov	r2, r3
 8003fc0:	f000 f8e2 	bl	8004188 <rangeFinderWriteReg>
 8003fc4:	4603      	mov	r3, r0
 8003fc6:	2b01      	cmp	r3, #1
 8003fc8:	d001      	beq.n	8003fce <rangeFinderInitMandatoryRegs+0xea>
 8003fca:	2300      	movs	r3, #0
 8003fcc:	e0d8      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 8003fce:	79fb      	ldrb	r3, [r7, #7]
 8003fd0:	20d9      	movs	r0, #217	; 0xd9
 8003fd2:	2105      	movs	r1, #5
 8003fd4:	461a      	mov	r2, r3
 8003fd6:	f000 f8d7 	bl	8004188 <rangeFinderWriteReg>
 8003fda:	4603      	mov	r3, r0
 8003fdc:	2b01      	cmp	r3, #1
 8003fde:	d001      	beq.n	8003fe4 <rangeFinderInitMandatoryRegs+0x100>
 8003fe0:	2300      	movs	r3, #0
 8003fe2:	e0cd      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 8003fe4:	79fb      	ldrb	r3, [r7, #7]
 8003fe6:	20db      	movs	r0, #219	; 0xdb
 8003fe8:	21ce      	movs	r1, #206	; 0xce
 8003fea:	461a      	mov	r2, r3
 8003fec:	f000 f8cc 	bl	8004188 <rangeFinderWriteReg>
 8003ff0:	4603      	mov	r3, r0
 8003ff2:	2b01      	cmp	r3, #1
 8003ff4:	d001      	beq.n	8003ffa <rangeFinderInitMandatoryRegs+0x116>
 8003ff6:	2300      	movs	r3, #0
 8003ff8:	e0c2      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 8003ffa:	79fb      	ldrb	r3, [r7, #7]
 8003ffc:	20dc      	movs	r0, #220	; 0xdc
 8003ffe:	2103      	movs	r1, #3
 8004000:	461a      	mov	r2, r3
 8004002:	f000 f8c1 	bl	8004188 <rangeFinderWriteReg>
 8004006:	4603      	mov	r3, r0
 8004008:	2b01      	cmp	r3, #1
 800400a:	d001      	beq.n	8004010 <rangeFinderInitMandatoryRegs+0x12c>
 800400c:	2300      	movs	r3, #0
 800400e:	e0b7      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 8004010:	79fb      	ldrb	r3, [r7, #7]
 8004012:	20dd      	movs	r0, #221	; 0xdd
 8004014:	21f8      	movs	r1, #248	; 0xf8
 8004016:	461a      	mov	r2, r3
 8004018:	f000 f8b6 	bl	8004188 <rangeFinderWriteReg>
 800401c:	4603      	mov	r3, r0
 800401e:	2b01      	cmp	r3, #1
 8004020:	d001      	beq.n	8004026 <rangeFinderInitMandatoryRegs+0x142>
 8004022:	2300      	movs	r3, #0
 8004024:	e0ac      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 8004026:	79fb      	ldrb	r3, [r7, #7]
 8004028:	209f      	movs	r0, #159	; 0x9f
 800402a:	2100      	movs	r1, #0
 800402c:	461a      	mov	r2, r3
 800402e:	f000 f8ab 	bl	8004188 <rangeFinderWriteReg>
 8004032:	4603      	mov	r3, r0
 8004034:	2b01      	cmp	r3, #1
 8004036:	d001      	beq.n	800403c <rangeFinderInitMandatoryRegs+0x158>
 8004038:	2300      	movs	r3, #0
 800403a:	e0a1      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 800403c:	79fb      	ldrb	r3, [r7, #7]
 800403e:	20a3      	movs	r0, #163	; 0xa3
 8004040:	213c      	movs	r1, #60	; 0x3c
 8004042:	461a      	mov	r2, r3
 8004044:	f000 f8a0 	bl	8004188 <rangeFinderWriteReg>
 8004048:	4603      	mov	r3, r0
 800404a:	2b01      	cmp	r3, #1
 800404c:	d001      	beq.n	8004052 <rangeFinderInitMandatoryRegs+0x16e>
 800404e:	2300      	movs	r3, #0
 8004050:	e096      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 8004052:	79fb      	ldrb	r3, [r7, #7]
 8004054:	20b7      	movs	r0, #183	; 0xb7
 8004056:	2100      	movs	r1, #0
 8004058:	461a      	mov	r2, r3
 800405a:	f000 f895 	bl	8004188 <rangeFinderWriteReg>
 800405e:	4603      	mov	r3, r0
 8004060:	2b01      	cmp	r3, #1
 8004062:	d001      	beq.n	8004068 <rangeFinderInitMandatoryRegs+0x184>
 8004064:	2300      	movs	r3, #0
 8004066:	e08b      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 8004068:	79fb      	ldrb	r3, [r7, #7]
 800406a:	20bb      	movs	r0, #187	; 0xbb
 800406c:	213c      	movs	r1, #60	; 0x3c
 800406e:	461a      	mov	r2, r3
 8004070:	f000 f88a 	bl	8004188 <rangeFinderWriteReg>
 8004074:	4603      	mov	r3, r0
 8004076:	2b01      	cmp	r3, #1
 8004078:	d001      	beq.n	800407e <rangeFinderInitMandatoryRegs+0x19a>
 800407a:	2300      	movs	r3, #0
 800407c:	e080      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 800407e:	79fb      	ldrb	r3, [r7, #7]
 8004080:	20b2      	movs	r0, #178	; 0xb2
 8004082:	2109      	movs	r1, #9
 8004084:	461a      	mov	r2, r3
 8004086:	f000 f87f 	bl	8004188 <rangeFinderWriteReg>
 800408a:	4603      	mov	r3, r0
 800408c:	2b01      	cmp	r3, #1
 800408e:	d001      	beq.n	8004094 <rangeFinderInitMandatoryRegs+0x1b0>
 8004090:	2300      	movs	r3, #0
 8004092:	e075      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 8004094:	79fb      	ldrb	r3, [r7, #7]
 8004096:	20ca      	movs	r0, #202	; 0xca
 8004098:	2109      	movs	r1, #9
 800409a:	461a      	mov	r2, r3
 800409c:	f000 f874 	bl	8004188 <rangeFinderWriteReg>
 80040a0:	4603      	mov	r3, r0
 80040a2:	2b01      	cmp	r3, #1
 80040a4:	d001      	beq.n	80040aa <rangeFinderInitMandatoryRegs+0x1c6>
 80040a6:	2300      	movs	r3, #0
 80040a8:	e06a      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 80040aa:	79fb      	ldrb	r3, [r7, #7]
 80040ac:	f44f 70cc 	mov.w	r0, #408	; 0x198
 80040b0:	2101      	movs	r1, #1
 80040b2:	461a      	mov	r2, r3
 80040b4:	f000 f868 	bl	8004188 <rangeFinderWriteReg>
 80040b8:	4603      	mov	r3, r0
 80040ba:	2b01      	cmp	r3, #1
 80040bc:	d001      	beq.n	80040c2 <rangeFinderInitMandatoryRegs+0x1de>
 80040be:	2300      	movs	r3, #0
 80040c0:	e05e      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 80040c2:	79fb      	ldrb	r3, [r7, #7]
 80040c4:	f44f 70d8 	mov.w	r0, #432	; 0x1b0
 80040c8:	2117      	movs	r1, #23
 80040ca:	461a      	mov	r2, r3
 80040cc:	f000 f85c 	bl	8004188 <rangeFinderWriteReg>
 80040d0:	4603      	mov	r3, r0
 80040d2:	2b01      	cmp	r3, #1
 80040d4:	d001      	beq.n	80040da <rangeFinderInitMandatoryRegs+0x1f6>
 80040d6:	2300      	movs	r3, #0
 80040d8:	e052      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 80040da:	79fb      	ldrb	r3, [r7, #7]
 80040dc:	f240 10ad 	movw	r0, #429	; 0x1ad
 80040e0:	2100      	movs	r1, #0
 80040e2:	461a      	mov	r2, r3
 80040e4:	f000 f850 	bl	8004188 <rangeFinderWriteReg>
 80040e8:	4603      	mov	r3, r0
 80040ea:	2b01      	cmp	r3, #1
 80040ec:	d001      	beq.n	80040f2 <rangeFinderInitMandatoryRegs+0x20e>
 80040ee:	2300      	movs	r3, #0
 80040f0:	e046      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 80040f2:	79fb      	ldrb	r3, [r7, #7]
 80040f4:	20ff      	movs	r0, #255	; 0xff
 80040f6:	2105      	movs	r1, #5
 80040f8:	461a      	mov	r2, r3
 80040fa:	f000 f845 	bl	8004188 <rangeFinderWriteReg>
 80040fe:	4603      	mov	r3, r0
 8004100:	2b01      	cmp	r3, #1
 8004102:	d001      	beq.n	8004108 <rangeFinderInitMandatoryRegs+0x224>
 8004104:	2300      	movs	r3, #0
 8004106:	e03b      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 8004108:	79fb      	ldrb	r3, [r7, #7]
 800410a:	f44f 7080 	mov.w	r0, #256	; 0x100
 800410e:	2105      	movs	r1, #5
 8004110:	461a      	mov	r2, r3
 8004112:	f000 f839 	bl	8004188 <rangeFinderWriteReg>
 8004116:	4603      	mov	r3, r0
 8004118:	2b01      	cmp	r3, #1
 800411a:	d001      	beq.n	8004120 <rangeFinderInitMandatoryRegs+0x23c>
 800411c:	2300      	movs	r3, #0
 800411e:	e02f      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 8004120:	79fb      	ldrb	r3, [r7, #7]
 8004122:	f240 1099 	movw	r0, #409	; 0x199
 8004126:	2105      	movs	r1, #5
 8004128:	461a      	mov	r2, r3
 800412a:	f000 f82d 	bl	8004188 <rangeFinderWriteReg>
 800412e:	4603      	mov	r3, r0
 8004130:	2b01      	cmp	r3, #1
 8004132:	d001      	beq.n	8004138 <rangeFinderInitMandatoryRegs+0x254>
 8004134:	2300      	movs	r3, #0
 8004136:	e023      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 8004138:	79fb      	ldrb	r3, [r7, #7]
 800413a:	f44f 70d3 	mov.w	r0, #422	; 0x1a6
 800413e:	211b      	movs	r1, #27
 8004140:	461a      	mov	r2, r3
 8004142:	f000 f821 	bl	8004188 <rangeFinderWriteReg>
 8004146:	4603      	mov	r3, r0
 8004148:	2b01      	cmp	r3, #1
 800414a:	d001      	beq.n	8004150 <rangeFinderInitMandatoryRegs+0x26c>
 800414c:	2300      	movs	r3, #0
 800414e:	e017      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 8004150:	79fb      	ldrb	r3, [r7, #7]
 8004152:	f44f 70d6 	mov.w	r0, #428	; 0x1ac
 8004156:	213e      	movs	r1, #62	; 0x3e
 8004158:	461a      	mov	r2, r3
 800415a:	f000 f815 	bl	8004188 <rangeFinderWriteReg>
 800415e:	4603      	mov	r3, r0
 8004160:	2b01      	cmp	r3, #1
 8004162:	d001      	beq.n	8004168 <rangeFinderInitMandatoryRegs+0x284>
 8004164:	2300      	movs	r3, #0
 8004166:	e00b      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 8004168:	79fb      	ldrb	r3, [r7, #7]
 800416a:	2030      	movs	r0, #48	; 0x30
 800416c:	2100      	movs	r1, #0
 800416e:	461a      	mov	r2, r3
 8004170:	f000 f80a 	bl	8004188 <rangeFinderWriteReg>
 8004174:	4603      	mov	r3, r0
 8004176:	2b01      	cmp	r3, #1
 8004178:	d001      	beq.n	800417e <rangeFinderInitMandatoryRegs+0x29a>
 800417a:	2300      	movs	r3, #0
 800417c:	e000      	b.n	8004180 <rangeFinderInitMandatoryRegs+0x29c>
 800417e:	2301      	movs	r3, #1
 8004180:	4618      	mov	r0, r3
 8004182:	3708      	adds	r7, #8
 8004184:	46bd      	mov	sp, r7
 8004186:	bd80      	pop	{r7, pc}

08004188 <rangeFinderWriteReg>:
 8004188:	b580      	push	{r7, lr}
 800418a:	b084      	sub	sp, #16
 800418c:	af00      	add	r7, sp, #0
 800418e:	4613      	mov	r3, r2
 8004190:	4602      	mov	r2, r0
 8004192:	80fa      	strh	r2, [r7, #6]
 8004194:	460a      	mov	r2, r1
 8004196:	717a      	strb	r2, [r7, #5]
 8004198:	713b      	strb	r3, [r7, #4]
 800419a:	88fb      	ldrh	r3, [r7, #6]
 800419c:	0a1b      	lsrs	r3, r3, #8
 800419e:	b29b      	uxth	r3, r3
 80041a0:	b2db      	uxtb	r3, r3
 80041a2:	733b      	strb	r3, [r7, #12]
 80041a4:	88fb      	ldrh	r3, [r7, #6]
 80041a6:	b2db      	uxtb	r3, r3
 80041a8:	737b      	strb	r3, [r7, #13]
 80041aa:	797b      	ldrb	r3, [r7, #5]
 80041ac:	73bb      	strb	r3, [r7, #14]
 80041ae:	f107 020c 	add.w	r2, r7, #12
 80041b2:	793b      	ldrb	r3, [r7, #4]
 80041b4:	4807      	ldr	r0, [pc, #28]	; (80041d4 <rangeFinderWriteReg+0x4c>)
 80041b6:	4611      	mov	r1, r2
 80041b8:	2203      	movs	r2, #3
 80041ba:	f7fd fb39 	bl	8001830 <I2CSendBytes>
 80041be:	4603      	mov	r3, r0
 80041c0:	2b01      	cmp	r3, #1
 80041c2:	d001      	beq.n	80041c8 <rangeFinderWriteReg+0x40>
 80041c4:	2300      	movs	r3, #0
 80041c6:	e000      	b.n	80041ca <rangeFinderWriteReg+0x42>
 80041c8:	2301      	movs	r3, #1
 80041ca:	4618      	mov	r0, r3
 80041cc:	3710      	adds	r7, #16
 80041ce:	46bd      	mov	sp, r7
 80041d0:	bd80      	pop	{r7, pc}
 80041d2:	bf00      	nop
 80041d4:	20014d90 	.word	0x20014d90

080041d8 <rangeFinderReadReg>:
 80041d8:	b580      	push	{r7, lr}
 80041da:	b084      	sub	sp, #16
 80041dc:	af00      	add	r7, sp, #0
 80041de:	6039      	str	r1, [r7, #0]
 80041e0:	4613      	mov	r3, r2
 80041e2:	4602      	mov	r2, r0
 80041e4:	80fa      	strh	r2, [r7, #6]
 80041e6:	717b      	strb	r3, [r7, #5]
 80041e8:	88fb      	ldrh	r3, [r7, #6]
 80041ea:	0a1b      	lsrs	r3, r3, #8
 80041ec:	b29b      	uxth	r3, r3
 80041ee:	b2db      	uxtb	r3, r3
 80041f0:	733b      	strb	r3, [r7, #12]
 80041f2:	88fb      	ldrh	r3, [r7, #6]
 80041f4:	b2db      	uxtb	r3, r3
 80041f6:	737b      	strb	r3, [r7, #13]
 80041f8:	f107 020c 	add.w	r2, r7, #12
 80041fc:	797b      	ldrb	r3, [r7, #5]
 80041fe:	4813      	ldr	r0, [pc, #76]	; (800424c <rangeFinderReadReg+0x74>)
 8004200:	4611      	mov	r1, r2
 8004202:	2200      	movs	r2, #0
 8004204:	f7fd fb14 	bl	8001830 <I2CSendBytes>
 8004208:	4603      	mov	r3, r0
 800420a:	2b01      	cmp	r3, #1
 800420c:	d001      	beq.n	8004212 <rangeFinderReadReg+0x3a>
 800420e:	2300      	movs	r3, #0
 8004210:	e018      	b.n	8004244 <rangeFinderReadReg+0x6c>
 8004212:	f107 020c 	add.w	r2, r7, #12
 8004216:	797b      	ldrb	r3, [r7, #5]
 8004218:	480c      	ldr	r0, [pc, #48]	; (800424c <rangeFinderReadReg+0x74>)
 800421a:	4611      	mov	r1, r2
 800421c:	2202      	movs	r2, #2
 800421e:	f7fd fb07 	bl	8001830 <I2CSendBytes>
 8004222:	4603      	mov	r3, r0
 8004224:	2b01      	cmp	r3, #1
 8004226:	d001      	beq.n	800422c <rangeFinderReadReg+0x54>
 8004228:	2300      	movs	r3, #0
 800422a:	e00b      	b.n	8004244 <rangeFinderReadReg+0x6c>
 800422c:	797b      	ldrb	r3, [r7, #5]
 800422e:	4807      	ldr	r0, [pc, #28]	; (800424c <rangeFinderReadReg+0x74>)
 8004230:	6839      	ldr	r1, [r7, #0]
 8004232:	2201      	movs	r2, #1
 8004234:	f7fd fb52 	bl	80018dc <I2CReadBytes>
 8004238:	4603      	mov	r3, r0
 800423a:	2b01      	cmp	r3, #1
 800423c:	d001      	beq.n	8004242 <rangeFinderReadReg+0x6a>
 800423e:	2300      	movs	r3, #0
 8004240:	e000      	b.n	8004244 <rangeFinderReadReg+0x6c>
 8004242:	2301      	movs	r3, #1
 8004244:	4618      	mov	r0, r3
 8004246:	3710      	adds	r7, #16
 8004248:	46bd      	mov	sp, r7
 800424a:	bd80      	pop	{r7, pc}
 800424c:	20014d90 	.word	0x20014d90

08004250 <_malloc_r>:
 8004250:	b580      	push	{r7, lr}
 8004252:	b082      	sub	sp, #8
 8004254:	af00      	add	r7, sp, #0
 8004256:	6078      	str	r0, [r7, #4]
 8004258:	6039      	str	r1, [r7, #0]
 800425a:	6838      	ldr	r0, [r7, #0]
 800425c:	f002 fba8 	bl	80069b0 <pvPortMalloc>
 8004260:	4603      	mov	r3, r0
 8004262:	4618      	mov	r0, r3
 8004264:	3708      	adds	r7, #8
 8004266:	46bd      	mov	sp, r7
 8004268:	bd80      	pop	{r7, pc}
 800426a:	bf00      	nop

0800426c <_free_r>:
 800426c:	b580      	push	{r7, lr}
 800426e:	b082      	sub	sp, #8
 8004270:	af00      	add	r7, sp, #0
 8004272:	6078      	str	r0, [r7, #4]
 8004274:	6039      	str	r1, [r7, #0]
 8004276:	6838      	ldr	r0, [r7, #0]
 8004278:	f002 fc60 	bl	8006b3c <vPortFree>
 800427c:	bf00      	nop
 800427e:	3708      	adds	r7, #8
 8004280:	46bd      	mov	sp, r7
 8004282:	bd80      	pop	{r7, pc}

08004284 <matrixMultiplyM2M>:
 8004284:	b480      	push	{r7}
 8004286:	b087      	sub	sp, #28
 8004288:	af00      	add	r7, sp, #0
 800428a:	60f8      	str	r0, [r7, #12]
 800428c:	607b      	str	r3, [r7, #4]
 800428e:	460b      	mov	r3, r1
 8004290:	72fb      	strb	r3, [r7, #11]
 8004292:	4613      	mov	r3, r2
 8004294:	72bb      	strb	r3, [r7, #10]
 8004296:	7aba      	ldrb	r2, [r7, #10]
 8004298:	f897 3020 	ldrb.w	r3, [r7, #32]
 800429c:	429a      	cmp	r2, r3
 800429e:	d004      	beq.n	80042aa <matrixMultiplyM2M+0x26>
 80042a0:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80042a2:	f04f 0200 	mov.w	r2, #0
 80042a6:	601a      	str	r2, [r3, #0]
 80042a8:	e04f      	b.n	800434a <matrixMultiplyM2M+0xc6>
 80042aa:	2300      	movs	r3, #0
 80042ac:	74fb      	strb	r3, [r7, #19]
 80042ae:	e048      	b.n	8004342 <matrixMultiplyM2M+0xbe>
 80042b0:	2300      	movs	r3, #0
 80042b2:	74bb      	strb	r3, [r7, #18]
 80042b4:	e03d      	b.n	8004332 <matrixMultiplyM2M+0xae>
 80042b6:	f04f 0300 	mov.w	r3, #0
 80042ba:	617b      	str	r3, [r7, #20]
 80042bc:	2300      	movs	r3, #0
 80042be:	747b      	strb	r3, [r7, #17]
 80042c0:	e023      	b.n	800430a <matrixMultiplyM2M+0x86>
 80042c2:	7abb      	ldrb	r3, [r7, #10]
 80042c4:	7cfa      	ldrb	r2, [r7, #19]
 80042c6:	fb02 f303 	mul.w	r3, r2, r3
 80042ca:	461a      	mov	r2, r3
 80042cc:	7c7b      	ldrb	r3, [r7, #17]
 80042ce:	4413      	add	r3, r2
 80042d0:	009b      	lsls	r3, r3, #2
 80042d2:	68fa      	ldr	r2, [r7, #12]
 80042d4:	4413      	add	r3, r2
 80042d6:	ed93 7a00 	vldr	s14, [r3]
 80042da:	f897 3024 	ldrb.w	r3, [r7, #36]	; 0x24
 80042de:	7c7a      	ldrb	r2, [r7, #17]
 80042e0:	fb02 f303 	mul.w	r3, r2, r3
 80042e4:	461a      	mov	r2, r3
 80042e6:	7cbb      	ldrb	r3, [r7, #18]
 80042e8:	4413      	add	r3, r2
 80042ea:	009b      	lsls	r3, r3, #2
 80042ec:	687a      	ldr	r2, [r7, #4]
 80042ee:	4413      	add	r3, r2
 80042f0:	edd3 7a00 	vldr	s15, [r3]
 80042f4:	ee67 7a27 	vmul.f32	s15, s14, s15
 80042f8:	ed97 7a05 	vldr	s14, [r7, #20]
 80042fc:	ee77 7a27 	vadd.f32	s15, s14, s15
 8004300:	edc7 7a05 	vstr	s15, [r7, #20]
 8004304:	7c7b      	ldrb	r3, [r7, #17]
 8004306:	3301      	adds	r3, #1
 8004308:	747b      	strb	r3, [r7, #17]
 800430a:	7c7a      	ldrb	r2, [r7, #17]
 800430c:	7abb      	ldrb	r3, [r7, #10]
 800430e:	429a      	cmp	r2, r3
 8004310:	d3d7      	bcc.n	80042c2 <matrixMultiplyM2M+0x3e>
 8004312:	f897 3024 	ldrb.w	r3, [r7, #36]	; 0x24
 8004316:	7cfa      	ldrb	r2, [r7, #19]
 8004318:	fb02 f303 	mul.w	r3, r2, r3
 800431c:	461a      	mov	r2, r3
 800431e:	7cbb      	ldrb	r3, [r7, #18]
 8004320:	4413      	add	r3, r2
 8004322:	009b      	lsls	r3, r3, #2
 8004324:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8004326:	4413      	add	r3, r2
 8004328:	697a      	ldr	r2, [r7, #20]
 800432a:	601a      	str	r2, [r3, #0]
 800432c:	7cbb      	ldrb	r3, [r7, #18]
 800432e:	3301      	adds	r3, #1
 8004330:	74bb      	strb	r3, [r7, #18]
 8004332:	7cba      	ldrb	r2, [r7, #18]
 8004334:	f897 3024 	ldrb.w	r3, [r7, #36]	; 0x24
 8004338:	429a      	cmp	r2, r3
 800433a:	d3bc      	bcc.n	80042b6 <matrixMultiplyM2M+0x32>
 800433c:	7cfb      	ldrb	r3, [r7, #19]
 800433e:	3301      	adds	r3, #1
 8004340:	74fb      	strb	r3, [r7, #19]
 8004342:	7cfa      	ldrb	r2, [r7, #19]
 8004344:	7afb      	ldrb	r3, [r7, #11]
 8004346:	429a      	cmp	r2, r3
 8004348:	d3b2      	bcc.n	80042b0 <matrixMultiplyM2M+0x2c>
 800434a:	371c      	adds	r7, #28
 800434c:	46bd      	mov	sp, r7
 800434e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8004352:	4770      	bx	lr

08004354 <matrixMultiplyS2M>:
 8004354:	b480      	push	{r7}
 8004356:	b087      	sub	sp, #28
 8004358:	af00      	add	r7, sp, #0
 800435a:	60f8      	str	r0, [r7, #12]
 800435c:	ed87 0a01 	vstr	s0, [r7, #4]
 8004360:	603b      	str	r3, [r7, #0]
 8004362:	460b      	mov	r3, r1
 8004364:	72fb      	strb	r3, [r7, #11]
 8004366:	4613      	mov	r3, r2
 8004368:	72bb      	strb	r3, [r7, #10]
 800436a:	2300      	movs	r3, #0
 800436c:	75fb      	strb	r3, [r7, #23]
 800436e:	e028      	b.n	80043c2 <matrixMultiplyS2M+0x6e>
 8004370:	2300      	movs	r3, #0
 8004372:	75bb      	strb	r3, [r7, #22]
 8004374:	e01e      	b.n	80043b4 <matrixMultiplyS2M+0x60>
 8004376:	7dfb      	ldrb	r3, [r7, #23]
 8004378:	7aba      	ldrb	r2, [r7, #10]
 800437a:	fb02 f303 	mul.w	r3, r2, r3
 800437e:	461a      	mov	r2, r3
 8004380:	7dbb      	ldrb	r3, [r7, #22]
 8004382:	4413      	add	r3, r2
 8004384:	009b      	lsls	r3, r3, #2
 8004386:	683a      	ldr	r2, [r7, #0]
 8004388:	4413      	add	r3, r2
 800438a:	7dfa      	ldrb	r2, [r7, #23]
 800438c:	7ab9      	ldrb	r1, [r7, #10]
 800438e:	fb01 f202 	mul.w	r2, r1, r2
 8004392:	4611      	mov	r1, r2
 8004394:	7dba      	ldrb	r2, [r7, #22]
 8004396:	440a      	add	r2, r1
 8004398:	0092      	lsls	r2, r2, #2
 800439a:	68f9      	ldr	r1, [r7, #12]
 800439c:	440a      	add	r2, r1
 800439e:	ed92 7a00 	vldr	s14, [r2]
 80043a2:	edd7 7a01 	vldr	s15, [r7, #4]
 80043a6:	ee67 7a27 	vmul.f32	s15, s14, s15
 80043aa:	edc3 7a00 	vstr	s15, [r3]
 80043ae:	7dbb      	ldrb	r3, [r7, #22]
 80043b0:	3301      	adds	r3, #1
 80043b2:	75bb      	strb	r3, [r7, #22]
 80043b4:	7dba      	ldrb	r2, [r7, #22]
 80043b6:	7abb      	ldrb	r3, [r7, #10]
 80043b8:	429a      	cmp	r2, r3
 80043ba:	d3dc      	bcc.n	8004376 <matrixMultiplyS2M+0x22>
 80043bc:	7dfb      	ldrb	r3, [r7, #23]
 80043be:	3301      	adds	r3, #1
 80043c0:	75fb      	strb	r3, [r7, #23]
 80043c2:	7dfa      	ldrb	r2, [r7, #23]
 80043c4:	7afb      	ldrb	r3, [r7, #11]
 80043c6:	429a      	cmp	r2, r3
 80043c8:	d3d2      	bcc.n	8004370 <matrixMultiplyS2M+0x1c>
 80043ca:	371c      	adds	r7, #28
 80043cc:	46bd      	mov	sp, r7
 80043ce:	f85d 7b04 	ldr.w	r7, [sp], #4
 80043d2:	4770      	bx	lr

080043d4 <matrixPlusMinus>:
 80043d4:	b480      	push	{r7}
 80043d6:	b087      	sub	sp, #28
 80043d8:	af00      	add	r7, sp, #0
 80043da:	60f8      	str	r0, [r7, #12]
 80043dc:	60b9      	str	r1, [r7, #8]
 80043de:	71fa      	strb	r2, [r7, #7]
 80043e0:	71bb      	strb	r3, [r7, #6]
 80043e2:	f997 3020 	ldrsb.w	r3, [r7, #32]
 80043e6:	2b00      	cmp	r3, #0
 80043e8:	db3a      	blt.n	8004460 <matrixPlusMinus+0x8c>
 80043ea:	2300      	movs	r3, #0
 80043ec:	75fb      	strb	r3, [r7, #23]
 80043ee:	e032      	b.n	8004456 <matrixPlusMinus+0x82>
 80043f0:	2300      	movs	r3, #0
 80043f2:	75bb      	strb	r3, [r7, #22]
 80043f4:	e028      	b.n	8004448 <matrixPlusMinus+0x74>
 80043f6:	7dfb      	ldrb	r3, [r7, #23]
 80043f8:	79ba      	ldrb	r2, [r7, #6]
 80043fa:	fb02 f303 	mul.w	r3, r2, r3
 80043fe:	461a      	mov	r2, r3
 8004400:	7dbb      	ldrb	r3, [r7, #22]
 8004402:	4413      	add	r3, r2
 8004404:	009b      	lsls	r3, r3, #2
 8004406:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8004408:	4413      	add	r3, r2
 800440a:	7dfa      	ldrb	r2, [r7, #23]
 800440c:	79b9      	ldrb	r1, [r7, #6]
 800440e:	fb01 f202 	mul.w	r2, r1, r2
 8004412:	4611      	mov	r1, r2
 8004414:	7dba      	ldrb	r2, [r7, #22]
 8004416:	440a      	add	r2, r1
 8004418:	0092      	lsls	r2, r2, #2
 800441a:	68f9      	ldr	r1, [r7, #12]
 800441c:	440a      	add	r2, r1
 800441e:	ed92 7a00 	vldr	s14, [r2]
 8004422:	7dfa      	ldrb	r2, [r7, #23]
 8004424:	79b9      	ldrb	r1, [r7, #6]
 8004426:	fb01 f202 	mul.w	r2, r1, r2
 800442a:	4611      	mov	r1, r2
 800442c:	7dba      	ldrb	r2, [r7, #22]
 800442e:	440a      	add	r2, r1
 8004430:	0092      	lsls	r2, r2, #2
 8004432:	68b9      	ldr	r1, [r7, #8]
 8004434:	440a      	add	r2, r1
 8004436:	edd2 7a00 	vldr	s15, [r2]
 800443a:	ee77 7a27 	vadd.f32	s15, s14, s15
 800443e:	edc3 7a00 	vstr	s15, [r3]
 8004442:	7dbb      	ldrb	r3, [r7, #22]
 8004444:	3301      	adds	r3, #1
 8004446:	75bb      	strb	r3, [r7, #22]
 8004448:	7dba      	ldrb	r2, [r7, #22]
 800444a:	79bb      	ldrb	r3, [r7, #6]
 800444c:	429a      	cmp	r2, r3
 800444e:	d3d2      	bcc.n	80043f6 <matrixPlusMinus+0x22>
 8004450:	7dfb      	ldrb	r3, [r7, #23]
 8004452:	3301      	adds	r3, #1
 8004454:	75fb      	strb	r3, [r7, #23]
 8004456:	7dfa      	ldrb	r2, [r7, #23]
 8004458:	79fb      	ldrb	r3, [r7, #7]
 800445a:	429a      	cmp	r2, r3
 800445c:	d3c8      	bcc.n	80043f0 <matrixPlusMinus+0x1c>
 800445e:	e039      	b.n	80044d4 <matrixPlusMinus+0x100>
 8004460:	2300      	movs	r3, #0
 8004462:	75fb      	strb	r3, [r7, #23]
 8004464:	e032      	b.n	80044cc <matrixPlusMinus+0xf8>
 8004466:	2300      	movs	r3, #0
 8004468:	75bb      	strb	r3, [r7, #22]
 800446a:	e028      	b.n	80044be <matrixPlusMinus+0xea>
 800446c:	7dfb      	ldrb	r3, [r7, #23]
 800446e:	79ba      	ldrb	r2, [r7, #6]
 8004470:	fb02 f303 	mul.w	r3, r2, r3
 8004474:	461a      	mov	r2, r3
 8004476:	7dbb      	ldrb	r3, [r7, #22]
 8004478:	4413      	add	r3, r2
 800447a:	009b      	lsls	r3, r3, #2
 800447c:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 800447e:	4413      	add	r3, r2
 8004480:	7dfa      	ldrb	r2, [r7, #23]
 8004482:	79b9      	ldrb	r1, [r7, #6]
 8004484:	fb01 f202 	mul.w	r2, r1, r2
 8004488:	4611      	mov	r1, r2
 800448a:	7dba      	ldrb	r2, [r7, #22]
 800448c:	440a      	add	r2, r1
 800448e:	0092      	lsls	r2, r2, #2
 8004490:	68f9      	ldr	r1, [r7, #12]
 8004492:	440a      	add	r2, r1
 8004494:	ed92 7a00 	vldr	s14, [r2]
 8004498:	7dfa      	ldrb	r2, [r7, #23]
 800449a:	79b9      	ldrb	r1, [r7, #6]
 800449c:	fb01 f202 	mul.w	r2, r1, r2
 80044a0:	4611      	mov	r1, r2
 80044a2:	7dba      	ldrb	r2, [r7, #22]
 80044a4:	440a      	add	r2, r1
 80044a6:	0092      	lsls	r2, r2, #2
 80044a8:	68b9      	ldr	r1, [r7, #8]
 80044aa:	440a      	add	r2, r1
 80044ac:	edd2 7a00 	vldr	s15, [r2]
 80044b0:	ee77 7a67 	vsub.f32	s15, s14, s15
 80044b4:	edc3 7a00 	vstr	s15, [r3]
 80044b8:	7dbb      	ldrb	r3, [r7, #22]
 80044ba:	3301      	adds	r3, #1
 80044bc:	75bb      	strb	r3, [r7, #22]
 80044be:	7dba      	ldrb	r2, [r7, #22]
 80044c0:	79bb      	ldrb	r3, [r7, #6]
 80044c2:	429a      	cmp	r2, r3
 80044c4:	d3d2      	bcc.n	800446c <matrixPlusMinus+0x98>
 80044c6:	7dfb      	ldrb	r3, [r7, #23]
 80044c8:	3301      	adds	r3, #1
 80044ca:	75fb      	strb	r3, [r7, #23]
 80044cc:	7dfa      	ldrb	r2, [r7, #23]
 80044ce:	79fb      	ldrb	r3, [r7, #7]
 80044d0:	429a      	cmp	r2, r3
 80044d2:	d3c8      	bcc.n	8004466 <matrixPlusMinus+0x92>
 80044d4:	371c      	adds	r7, #28
 80044d6:	46bd      	mov	sp, r7
 80044d8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80044dc:	4770      	bx	lr
 80044de:	bf00      	nop

080044e0 <vApplicationMallocFailedHook>:
 80044e0:	b480      	push	{r7}
 80044e2:	af00      	add	r7, sp, #0
 80044e4:	46bd      	mov	sp, r7
 80044e6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80044ea:	4770      	bx	lr

080044ec <vApplicationIdleHook>:
 80044ec:	b480      	push	{r7}
 80044ee:	af00      	add	r7, sp, #0
 80044f0:	46bd      	mov	sp, r7
 80044f2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80044f6:	4770      	bx	lr

080044f8 <vApplicationTickHook>:
 80044f8:	b480      	push	{r7}
 80044fa:	af00      	add	r7, sp, #0
 80044fc:	46bd      	mov	sp, r7
 80044fe:	f85d 7b04 	ldr.w	r7, [sp], #4
 8004502:	4770      	bx	lr

08004504 <vApplicationStackOverflowHook>:
 8004504:	b480      	push	{r7}
 8004506:	b085      	sub	sp, #20
 8004508:	af00      	add	r7, sp, #0
 800450a:	6078      	str	r0, [r7, #4]
 800450c:	6039      	str	r1, [r7, #0]
 800450e:	f04f 0350 	mov.w	r3, #80	; 0x50
 8004512:	f383 8811 	msr	BASEPRI, r3
 8004516:	f3bf 8f6f 	isb	sy
 800451a:	f3bf 8f4f 	dsb	sy
 800451e:	60fb      	str	r3, [r7, #12]
 8004520:	e7fe      	b.n	8004520 <vApplicationStackOverflowHook+0x1c>
 8004522:	bf00      	nop

08004524 <vApplicationGetIdleTaskMemory>:
 8004524:	b480      	push	{r7}
 8004526:	b085      	sub	sp, #20
 8004528:	af00      	add	r7, sp, #0
 800452a:	60f8      	str	r0, [r7, #12]
 800452c:	60b9      	str	r1, [r7, #8]
 800452e:	607a      	str	r2, [r7, #4]
 8004530:	68fb      	ldr	r3, [r7, #12]
 8004532:	4a06      	ldr	r2, [pc, #24]	; (800454c <vApplicationGetIdleTaskMemory+0x28>)
 8004534:	601a      	str	r2, [r3, #0]
 8004536:	68bb      	ldr	r3, [r7, #8]
 8004538:	4a05      	ldr	r2, [pc, #20]	; (8004550 <vApplicationGetIdleTaskMemory+0x2c>)
 800453a:	601a      	str	r2, [r3, #0]
 800453c:	687b      	ldr	r3, [r7, #4]
 800453e:	2282      	movs	r2, #130	; 0x82
 8004540:	601a      	str	r2, [r3, #0]
 8004542:	3714      	adds	r7, #20
 8004544:	46bd      	mov	sp, r7
 8004546:	f85d 7b04 	ldr.w	r7, [sp], #4
 800454a:	4770      	bx	lr
 800454c:	200150a8 	.word	0x200150a8
 8004550:	20015528 	.word	0x20015528

08004554 <vApplicationGetTimerTaskMemory>:
 8004554:	b480      	push	{r7}
 8004556:	b085      	sub	sp, #20
 8004558:	af00      	add	r7, sp, #0
 800455a:	60f8      	str	r0, [r7, #12]
 800455c:	60b9      	str	r1, [r7, #8]
 800455e:	607a      	str	r2, [r7, #4]
 8004560:	68fb      	ldr	r3, [r7, #12]
 8004562:	4a07      	ldr	r2, [pc, #28]	; (8004580 <vApplicationGetTimerTaskMemory+0x2c>)
 8004564:	601a      	str	r2, [r3, #0]
 8004566:	68bb      	ldr	r3, [r7, #8]
 8004568:	4a06      	ldr	r2, [pc, #24]	; (8004584 <vApplicationGetTimerTaskMemory+0x30>)
 800456a:	601a      	str	r2, [r3, #0]
 800456c:	687b      	ldr	r3, [r7, #4]
 800456e:	f44f 7282 	mov.w	r2, #260	; 0x104
 8004572:	601a      	str	r2, [r3, #0]
 8004574:	3714      	adds	r7, #20
 8004576:	46bd      	mov	sp, r7
 8004578:	f85d 7b04 	ldr.w	r7, [sp], #4
 800457c:	4770      	bx	lr
 800457e:	bf00      	nop
 8004580:	20000248 	.word	0x20000248
 8004584:	200006c8 	.word	0x200006c8

08004588 <vListInitialise>:
 8004588:	b480      	push	{r7}
 800458a:	b083      	sub	sp, #12
 800458c:	af00      	add	r7, sp, #0
 800458e:	6078      	str	r0, [r7, #4]
 8004590:	687b      	ldr	r3, [r7, #4]
 8004592:	f103 0208 	add.w	r2, r3, #8
 8004596:	687b      	ldr	r3, [r7, #4]
 8004598:	605a      	str	r2, [r3, #4]
 800459a:	687b      	ldr	r3, [r7, #4]
 800459c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80045a0:	609a      	str	r2, [r3, #8]
 80045a2:	687b      	ldr	r3, [r7, #4]
 80045a4:	f103 0208 	add.w	r2, r3, #8
 80045a8:	687b      	ldr	r3, [r7, #4]
 80045aa:	60da      	str	r2, [r3, #12]
 80045ac:	687b      	ldr	r3, [r7, #4]
 80045ae:	f103 0208 	add.w	r2, r3, #8
 80045b2:	687b      	ldr	r3, [r7, #4]
 80045b4:	611a      	str	r2, [r3, #16]
 80045b6:	687b      	ldr	r3, [r7, #4]
 80045b8:	2200      	movs	r2, #0
 80045ba:	601a      	str	r2, [r3, #0]
 80045bc:	370c      	adds	r7, #12
 80045be:	46bd      	mov	sp, r7
 80045c0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80045c4:	4770      	bx	lr
 80045c6:	bf00      	nop

080045c8 <vListInitialiseItem>:
 80045c8:	b480      	push	{r7}
 80045ca:	b083      	sub	sp, #12
 80045cc:	af00      	add	r7, sp, #0
 80045ce:	6078      	str	r0, [r7, #4]
 80045d0:	687b      	ldr	r3, [r7, #4]
 80045d2:	2200      	movs	r2, #0
 80045d4:	611a      	str	r2, [r3, #16]
 80045d6:	370c      	adds	r7, #12
 80045d8:	46bd      	mov	sp, r7
 80045da:	f85d 7b04 	ldr.w	r7, [sp], #4
 80045de:	4770      	bx	lr

080045e0 <vListInsertEnd>:
 80045e0:	b480      	push	{r7}
 80045e2:	b085      	sub	sp, #20
 80045e4:	af00      	add	r7, sp, #0
 80045e6:	6078      	str	r0, [r7, #4]
 80045e8:	6039      	str	r1, [r7, #0]
 80045ea:	687b      	ldr	r3, [r7, #4]
 80045ec:	685b      	ldr	r3, [r3, #4]
 80045ee:	60fb      	str	r3, [r7, #12]
 80045f0:	683b      	ldr	r3, [r7, #0]
 80045f2:	68fa      	ldr	r2, [r7, #12]
 80045f4:	605a      	str	r2, [r3, #4]
 80045f6:	68fb      	ldr	r3, [r7, #12]
 80045f8:	689a      	ldr	r2, [r3, #8]
 80045fa:	683b      	ldr	r3, [r7, #0]
 80045fc:	609a      	str	r2, [r3, #8]
 80045fe:	68fb      	ldr	r3, [r7, #12]
 8004600:	689b      	ldr	r3, [r3, #8]
 8004602:	683a      	ldr	r2, [r7, #0]
 8004604:	605a      	str	r2, [r3, #4]
 8004606:	68fb      	ldr	r3, [r7, #12]
 8004608:	683a      	ldr	r2, [r7, #0]
 800460a:	609a      	str	r2, [r3, #8]
 800460c:	683b      	ldr	r3, [r7, #0]
 800460e:	687a      	ldr	r2, [r7, #4]
 8004610:	611a      	str	r2, [r3, #16]
 8004612:	687b      	ldr	r3, [r7, #4]
 8004614:	681b      	ldr	r3, [r3, #0]
 8004616:	1c5a      	adds	r2, r3, #1
 8004618:	687b      	ldr	r3, [r7, #4]
 800461a:	601a      	str	r2, [r3, #0]
 800461c:	3714      	adds	r7, #20
 800461e:	46bd      	mov	sp, r7
 8004620:	f85d 7b04 	ldr.w	r7, [sp], #4
 8004624:	4770      	bx	lr
 8004626:	bf00      	nop

08004628 <vListInsert>:
 8004628:	b480      	push	{r7}
 800462a:	b085      	sub	sp, #20
 800462c:	af00      	add	r7, sp, #0
 800462e:	6078      	str	r0, [r7, #4]
 8004630:	6039      	str	r1, [r7, #0]
 8004632:	683b      	ldr	r3, [r7, #0]
 8004634:	681b      	ldr	r3, [r3, #0]
 8004636:	60bb      	str	r3, [r7, #8]
 8004638:	68bb      	ldr	r3, [r7, #8]
 800463a:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 800463e:	d103      	bne.n	8004648 <vListInsert+0x20>
 8004640:	687b      	ldr	r3, [r7, #4]
 8004642:	691b      	ldr	r3, [r3, #16]
 8004644:	60fb      	str	r3, [r7, #12]
 8004646:	e00c      	b.n	8004662 <vListInsert+0x3a>
 8004648:	687b      	ldr	r3, [r7, #4]
 800464a:	3308      	adds	r3, #8
 800464c:	60fb      	str	r3, [r7, #12]
 800464e:	e002      	b.n	8004656 <vListInsert+0x2e>
 8004650:	68fb      	ldr	r3, [r7, #12]
 8004652:	685b      	ldr	r3, [r3, #4]
 8004654:	60fb      	str	r3, [r7, #12]
 8004656:	68fb      	ldr	r3, [r7, #12]
 8004658:	685b      	ldr	r3, [r3, #4]
 800465a:	681a      	ldr	r2, [r3, #0]
 800465c:	68bb      	ldr	r3, [r7, #8]
 800465e:	429a      	cmp	r2, r3
 8004660:	d9f6      	bls.n	8004650 <vListInsert+0x28>
 8004662:	68fb      	ldr	r3, [r7, #12]
 8004664:	685a      	ldr	r2, [r3, #4]
 8004666:	683b      	ldr	r3, [r7, #0]
 8004668:	605a      	str	r2, [r3, #4]
 800466a:	683b      	ldr	r3, [r7, #0]
 800466c:	685b      	ldr	r3, [r3, #4]
 800466e:	683a      	ldr	r2, [r7, #0]
 8004670:	609a      	str	r2, [r3, #8]
 8004672:	683b      	ldr	r3, [r7, #0]
 8004674:	68fa      	ldr	r2, [r7, #12]
 8004676:	609a      	str	r2, [r3, #8]
 8004678:	68fb      	ldr	r3, [r7, #12]
 800467a:	683a      	ldr	r2, [r7, #0]
 800467c:	605a      	str	r2, [r3, #4]
 800467e:	683b      	ldr	r3, [r7, #0]
 8004680:	687a      	ldr	r2, [r7, #4]
 8004682:	611a      	str	r2, [r3, #16]
 8004684:	687b      	ldr	r3, [r7, #4]
 8004686:	681b      	ldr	r3, [r3, #0]
 8004688:	1c5a      	adds	r2, r3, #1
 800468a:	687b      	ldr	r3, [r7, #4]
 800468c:	601a      	str	r2, [r3, #0]
 800468e:	3714      	adds	r7, #20
 8004690:	46bd      	mov	sp, r7
 8004692:	f85d 7b04 	ldr.w	r7, [sp], #4
 8004696:	4770      	bx	lr

08004698 <uxListRemove>:
 8004698:	b480      	push	{r7}
 800469a:	b085      	sub	sp, #20
 800469c:	af00      	add	r7, sp, #0
 800469e:	6078      	str	r0, [r7, #4]
 80046a0:	687b      	ldr	r3, [r7, #4]
 80046a2:	691b      	ldr	r3, [r3, #16]
 80046a4:	60fb      	str	r3, [r7, #12]
 80046a6:	687b      	ldr	r3, [r7, #4]
 80046a8:	685b      	ldr	r3, [r3, #4]
 80046aa:	687a      	ldr	r2, [r7, #4]
 80046ac:	6892      	ldr	r2, [r2, #8]
 80046ae:	609a      	str	r2, [r3, #8]
 80046b0:	687b      	ldr	r3, [r7, #4]
 80046b2:	689b      	ldr	r3, [r3, #8]
 80046b4:	687a      	ldr	r2, [r7, #4]
 80046b6:	6852      	ldr	r2, [r2, #4]
 80046b8:	605a      	str	r2, [r3, #4]
 80046ba:	68fb      	ldr	r3, [r7, #12]
 80046bc:	685a      	ldr	r2, [r3, #4]
 80046be:	687b      	ldr	r3, [r7, #4]
 80046c0:	429a      	cmp	r2, r3
 80046c2:	d103      	bne.n	80046cc <uxListRemove+0x34>
 80046c4:	687b      	ldr	r3, [r7, #4]
 80046c6:	689a      	ldr	r2, [r3, #8]
 80046c8:	68fb      	ldr	r3, [r7, #12]
 80046ca:	605a      	str	r2, [r3, #4]
 80046cc:	687b      	ldr	r3, [r7, #4]
 80046ce:	2200      	movs	r2, #0
 80046d0:	611a      	str	r2, [r3, #16]
 80046d2:	68fb      	ldr	r3, [r7, #12]
 80046d4:	681b      	ldr	r3, [r3, #0]
 80046d6:	1e5a      	subs	r2, r3, #1
 80046d8:	68fb      	ldr	r3, [r7, #12]
 80046da:	601a      	str	r2, [r3, #0]
 80046dc:	68fb      	ldr	r3, [r7, #12]
 80046de:	681b      	ldr	r3, [r3, #0]
 80046e0:	4618      	mov	r0, r3
 80046e2:	3714      	adds	r7, #20
 80046e4:	46bd      	mov	sp, r7
 80046e6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80046ea:	4770      	bx	lr

080046ec <xQueueGenericReset>:
 80046ec:	b580      	push	{r7, lr}
 80046ee:	b084      	sub	sp, #16
 80046f0:	af00      	add	r7, sp, #0
 80046f2:	6078      	str	r0, [r7, #4]
 80046f4:	6039      	str	r1, [r7, #0]
 80046f6:	687b      	ldr	r3, [r7, #4]
 80046f8:	60fb      	str	r3, [r7, #12]
 80046fa:	68fb      	ldr	r3, [r7, #12]
 80046fc:	2b00      	cmp	r3, #0
 80046fe:	d109      	bne.n	8004714 <xQueueGenericReset+0x28>
 8004700:	f04f 0350 	mov.w	r3, #80	; 0x50
 8004704:	f383 8811 	msr	BASEPRI, r3
 8004708:	f3bf 8f6f 	isb	sy
 800470c:	f3bf 8f4f 	dsb	sy
 8004710:	60bb      	str	r3, [r7, #8]
 8004712:	e7fe      	b.n	8004712 <xQueueGenericReset+0x26>
 8004714:	f002 f836 	bl	8006784 <vPortEnterCritical>
 8004718:	68fb      	ldr	r3, [r7, #12]
 800471a:	681a      	ldr	r2, [r3, #0]
 800471c:	68fb      	ldr	r3, [r7, #12]
 800471e:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8004720:	68f9      	ldr	r1, [r7, #12]
 8004722:	6c09      	ldr	r1, [r1, #64]	; 0x40
 8004724:	fb01 f303 	mul.w	r3, r1, r3
 8004728:	441a      	add	r2, r3
 800472a:	68fb      	ldr	r3, [r7, #12]
 800472c:	609a      	str	r2, [r3, #8]
 800472e:	68fb      	ldr	r3, [r7, #12]
 8004730:	2200      	movs	r2, #0
 8004732:	639a      	str	r2, [r3, #56]	; 0x38
 8004734:	68fb      	ldr	r3, [r7, #12]
 8004736:	681a      	ldr	r2, [r3, #0]
 8004738:	68fb      	ldr	r3, [r7, #12]
 800473a:	605a      	str	r2, [r3, #4]
 800473c:	68fb      	ldr	r3, [r7, #12]
 800473e:	681a      	ldr	r2, [r3, #0]
 8004740:	68fb      	ldr	r3, [r7, #12]
 8004742:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8004744:	3b01      	subs	r3, #1
 8004746:	68f9      	ldr	r1, [r7, #12]
 8004748:	6c09      	ldr	r1, [r1, #64]	; 0x40
 800474a:	fb01 f303 	mul.w	r3, r1, r3
 800474e:	441a      	add	r2, r3
 8004750:	68fb      	ldr	r3, [r7, #12]
 8004752:	60da      	str	r2, [r3, #12]
 8004754:	68fb      	ldr	r3, [r7, #12]
 8004756:	22ff      	movs	r2, #255	; 0xff
 8004758:	f883 2044 	strb.w	r2, [r3, #68]	; 0x44
 800475c:	68fb      	ldr	r3, [r7, #12]
 800475e:	22ff      	movs	r2, #255	; 0xff
 8004760:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 8004764:	683b      	ldr	r3, [r7, #0]
 8004766:	2b00      	cmp	r3, #0
 8004768:	d114      	bne.n	8004794 <xQueueGenericReset+0xa8>
 800476a:	68fb      	ldr	r3, [r7, #12]
 800476c:	691b      	ldr	r3, [r3, #16]
 800476e:	2b00      	cmp	r3, #0
 8004770:	d01a      	beq.n	80047a8 <xQueueGenericReset+0xbc>
 8004772:	68fb      	ldr	r3, [r7, #12]
 8004774:	3310      	adds	r3, #16
 8004776:	4618      	mov	r0, r3
 8004778:	f001 f924 	bl	80059c4 <xTaskRemoveFromEventList>
 800477c:	4603      	mov	r3, r0
 800477e:	2b00      	cmp	r3, #0
 8004780:	d012      	beq.n	80047a8 <xQueueGenericReset+0xbc>
 8004782:	4b0d      	ldr	r3, [pc, #52]	; (80047b8 <xQueueGenericReset+0xcc>)
 8004784:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 8004788:	601a      	str	r2, [r3, #0]
 800478a:	f3bf 8f4f 	dsb	sy
 800478e:	f3bf 8f6f 	isb	sy
 8004792:	e009      	b.n	80047a8 <xQueueGenericReset+0xbc>
 8004794:	68fb      	ldr	r3, [r7, #12]
 8004796:	3310      	adds	r3, #16
 8004798:	4618      	mov	r0, r3
 800479a:	f7ff fef5 	bl	8004588 <vListInitialise>
 800479e:	68fb      	ldr	r3, [r7, #12]
 80047a0:	3324      	adds	r3, #36	; 0x24
 80047a2:	4618      	mov	r0, r3
 80047a4:	f7ff fef0 	bl	8004588 <vListInitialise>
 80047a8:	f002 f81a 	bl	80067e0 <vPortExitCritical>
 80047ac:	2301      	movs	r3, #1
 80047ae:	4618      	mov	r0, r3
 80047b0:	3710      	adds	r7, #16
 80047b2:	46bd      	mov	sp, r7
 80047b4:	bd80      	pop	{r7, pc}
 80047b6:	bf00      	nop
 80047b8:	e000ed04 	.word	0xe000ed04

080047bc <xQueueGenericCreateStatic>:
 80047bc:	b580      	push	{r7, lr}
 80047be:	b08e      	sub	sp, #56	; 0x38
 80047c0:	af02      	add	r7, sp, #8
 80047c2:	60f8      	str	r0, [r7, #12]
 80047c4:	60b9      	str	r1, [r7, #8]
 80047c6:	607a      	str	r2, [r7, #4]
 80047c8:	603b      	str	r3, [r7, #0]
 80047ca:	68fb      	ldr	r3, [r7, #12]
 80047cc:	2b00      	cmp	r3, #0
 80047ce:	d109      	bne.n	80047e4 <xQueueGenericCreateStatic+0x28>
 80047d0:	f04f 0350 	mov.w	r3, #80	; 0x50
 80047d4:	f383 8811 	msr	BASEPRI, r3
 80047d8:	f3bf 8f6f 	isb	sy
 80047dc:	f3bf 8f4f 	dsb	sy
 80047e0:	62bb      	str	r3, [r7, #40]	; 0x28
 80047e2:	e7fe      	b.n	80047e2 <xQueueGenericCreateStatic+0x26>
 80047e4:	683b      	ldr	r3, [r7, #0]
 80047e6:	2b00      	cmp	r3, #0
 80047e8:	d109      	bne.n	80047fe <xQueueGenericCreateStatic+0x42>
 80047ea:	f04f 0350 	mov.w	r3, #80	; 0x50
 80047ee:	f383 8811 	msr	BASEPRI, r3
 80047f2:	f3bf 8f6f 	isb	sy
 80047f6:	f3bf 8f4f 	dsb	sy
 80047fa:	627b      	str	r3, [r7, #36]	; 0x24
 80047fc:	e7fe      	b.n	80047fc <xQueueGenericCreateStatic+0x40>
 80047fe:	687b      	ldr	r3, [r7, #4]
 8004800:	2b00      	cmp	r3, #0
 8004802:	d002      	beq.n	800480a <xQueueGenericCreateStatic+0x4e>
 8004804:	68bb      	ldr	r3, [r7, #8]
 8004806:	2b00      	cmp	r3, #0
 8004808:	d001      	beq.n	800480e <xQueueGenericCreateStatic+0x52>
 800480a:	2301      	movs	r3, #1
 800480c:	e000      	b.n	8004810 <xQueueGenericCreateStatic+0x54>
 800480e:	2300      	movs	r3, #0
 8004810:	2b00      	cmp	r3, #0
 8004812:	d109      	bne.n	8004828 <xQueueGenericCreateStatic+0x6c>
 8004814:	f04f 0350 	mov.w	r3, #80	; 0x50
 8004818:	f383 8811 	msr	BASEPRI, r3
 800481c:	f3bf 8f6f 	isb	sy
 8004820:	f3bf 8f4f 	dsb	sy
 8004824:	623b      	str	r3, [r7, #32]
 8004826:	e7fe      	b.n	8004826 <xQueueGenericCreateStatic+0x6a>
 8004828:	687b      	ldr	r3, [r7, #4]
 800482a:	2b00      	cmp	r3, #0
 800482c:	d102      	bne.n	8004834 <xQueueGenericCreateStatic+0x78>
 800482e:	68bb      	ldr	r3, [r7, #8]
 8004830:	2b00      	cmp	r3, #0
 8004832:	d101      	bne.n	8004838 <xQueueGenericCreateStatic+0x7c>
 8004834:	2301      	movs	r3, #1
 8004836:	e000      	b.n	800483a <xQueueGenericCreateStatic+0x7e>
 8004838:	2300      	movs	r3, #0
 800483a:	2b00      	cmp	r3, #0
 800483c:	d109      	bne.n	8004852 <xQueueGenericCreateStatic+0x96>
 800483e:	f04f 0350 	mov.w	r3, #80	; 0x50
 8004842:	f383 8811 	msr	BASEPRI, r3
 8004846:	f3bf 8f6f 	isb	sy
 800484a:	f3bf 8f4f 	dsb	sy
 800484e:	61fb      	str	r3, [r7, #28]
 8004850:	e7fe      	b.n	8004850 <xQueueGenericCreateStatic+0x94>
 8004852:	2350      	movs	r3, #80	; 0x50
 8004854:	617b      	str	r3, [r7, #20]
 8004856:	697b      	ldr	r3, [r7, #20]
 8004858:	2b50      	cmp	r3, #80	; 0x50
 800485a:	d009      	beq.n	8004870 <xQueueGenericCreateStatic+0xb4>
 800485c:	f04f 0350 	mov.w	r3, #80	; 0x50
 8004860:	f383 8811 	msr	BASEPRI, r3
 8004864:	f3bf 8f6f 	isb	sy
 8004868:	f3bf 8f4f 	dsb	sy
 800486c:	61bb      	str	r3, [r7, #24]
 800486e:	e7fe      	b.n	800486e <xQueueGenericCreateStatic+0xb2>
 8004870:	697b      	ldr	r3, [r7, #20]
 8004872:	683b      	ldr	r3, [r7, #0]
 8004874:	62fb      	str	r3, [r7, #44]	; 0x2c
 8004876:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8004878:	2b00      	cmp	r3, #0
 800487a:	d00c      	beq.n	8004896 <xQueueGenericCreateStatic+0xda>
 800487c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800487e:	2201      	movs	r2, #1
 8004880:	f883 2046 	strb.w	r2, [r3, #70]	; 0x46
 8004884:	f897 3038 	ldrb.w	r3, [r7, #56]	; 0x38
 8004888:	6afa      	ldr	r2, [r7, #44]	; 0x2c
 800488a:	9200      	str	r2, [sp, #0]
 800488c:	68f8      	ldr	r0, [r7, #12]
 800488e:	68b9      	ldr	r1, [r7, #8]
 8004890:	687a      	ldr	r2, [r7, #4]
 8004892:	f000 f805 	bl	80048a0 <prvInitialiseNewQueue>
 8004896:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8004898:	4618      	mov	r0, r3
 800489a:	3730      	adds	r7, #48	; 0x30
 800489c:	46bd      	mov	sp, r7
 800489e:	bd80      	pop	{r7, pc}

080048a0 <prvInitialiseNewQueue>:
 80048a0:	b580      	push	{r7, lr}
 80048a2:	b084      	sub	sp, #16
 80048a4:	af00      	add	r7, sp, #0
 80048a6:	60f8      	str	r0, [r7, #12]
 80048a8:	60b9      	str	r1, [r7, #8]
 80048aa:	607a      	str	r2, [r7, #4]
 80048ac:	70fb      	strb	r3, [r7, #3]
 80048ae:	68bb      	ldr	r3, [r7, #8]
 80048b0:	2b00      	cmp	r3, #0
 80048b2:	d103      	bne.n	80048bc <prvInitialiseNewQueue+0x1c>
 80048b4:	69bb      	ldr	r3, [r7, #24]
 80048b6:	69ba      	ldr	r2, [r7, #24]
 80048b8:	601a      	str	r2, [r3, #0]
 80048ba:	e002      	b.n	80048c2 <prvInitialiseNewQueue+0x22>
 80048bc:	69bb      	ldr	r3, [r7, #24]
 80048be:	687a      	ldr	r2, [r7, #4]
 80048c0:	601a      	str	r2, [r3, #0]
 80048c2:	69bb      	ldr	r3, [r7, #24]
 80048c4:	68fa      	ldr	r2, [r7, #12]
 80048c6:	63da      	str	r2, [r3, #60]	; 0x3c
 80048c8:	69bb      	ldr	r3, [r7, #24]
 80048ca:	68ba      	ldr	r2, [r7, #8]
 80048cc:	641a      	str	r2, [r3, #64]	; 0x40
 80048ce:	69b8      	ldr	r0, [r7, #24]
 80048d0:	2101      	movs	r1, #1
 80048d2:	f7ff ff0b 	bl	80046ec <xQueueGenericReset>
 80048d6:	69bb      	ldr	r3, [r7, #24]
 80048d8:	78fa      	ldrb	r2, [r7, #3]
 80048da:	f883 204c 	strb.w	r2, [r3, #76]	; 0x4c
 80048de:	3710      	adds	r7, #16
 80048e0:	46bd      	mov	sp, r7
 80048e2:	bd80      	pop	{r7, pc}

080048e4 <xQueueGenericSend>:
 80048e4:	b580      	push	{r7, lr}
 80048e6:	b08e      	sub	sp, #56	; 0x38
 80048e8:	af00      	add	r7, sp, #0
 80048ea:	60f8      	str	r0, [r7, #12]
 80048ec:	60b9      	str	r1, [r7, #8]
 80048ee:	607a      	str	r2, [r7, #4]
 80048f0:	603b      	str	r3, [r7, #0]
 80048f2:	2300      	movs	r3, #0
 80048f4:	637b      	str	r3, [r7, #52]	; 0x34
 80048f6:	68fb      	ldr	r3, [r7, #12]
 80048f8:	633b      	str	r3, [r7, #48]	; 0x30
 80048fa:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80048fc:	2b00      	cmp	r3, #0
 80048fe:	d109      	bne.n	8004914 <xQueueGenericSend+0x30>
 8004900:	f04f 0350 	mov.w	r3, #80	; 0x50
 8004904:	f383 8811 	msr	BASEPRI, r3
 8004908:	f3bf 8f6f 	isb	sy
 800490c:	f3bf 8f4f 	dsb	sy
 8004910:	62bb      	str	r3, [r7, #40]	; 0x28
 8004912:	e7fe      	b.n	8004912 <xQueueGenericSend+0x2e>
 8004914:	68bb      	ldr	r3, [r7, #8]
 8004916:	2b00      	cmp	r3, #0
 8004918:	d103      	bne.n	8004922 <xQueueGenericSend+0x3e>
 800491a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800491c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800491e:	2b00      	cmp	r3, #0
 8004920:	d101      	bne.n	8004926 <xQueueGenericSend+0x42>
 8004922:	2301      	movs	r3, #1
 8004924:	e000      	b.n	8004928 <xQueueGenericSend+0x44>
 8004926:	2300      	movs	r3, #0
 8004928:	2b00      	cmp	r3, #0
 800492a:	d109      	bne.n	8004940 <xQueueGenericSend+0x5c>
 800492c:	f04f 0350 	mov.w	r3, #80	; 0x50
 8004930:	f383 8811 	msr	BASEPRI, r3
 8004934:	f3bf 8f6f 	isb	sy
 8004938:	f3bf 8f4f 	dsb	sy
 800493c:	627b      	str	r3, [r7, #36]	; 0x24
 800493e:	e7fe      	b.n	800493e <xQueueGenericSend+0x5a>
 8004940:	683b      	ldr	r3, [r7, #0]
 8004942:	2b02      	cmp	r3, #2
 8004944:	d103      	bne.n	800494e <xQueueGenericSend+0x6a>
 8004946:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8004948:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 800494a:	2b01      	cmp	r3, #1
 800494c:	d101      	bne.n	8004952 <xQueueGenericSend+0x6e>
 800494e:	2301      	movs	r3, #1
 8004950:	e000      	b.n	8004954 <xQueueGenericSend+0x70>
 8004952:	2300      	movs	r3, #0
 8004954:	2b00      	cmp	r3, #0
 8004956:	d109      	bne.n	800496c <xQueueGenericSend+0x88>
 8004958:	f04f 0350 	mov.w	r3, #80	; 0x50
 800495c:	f383 8811 	msr	BASEPRI, r3
 8004960:	f3bf 8f6f 	isb	sy
 8004964:	f3bf 8f4f 	dsb	sy
 8004968:	623b      	str	r3, [r7, #32]
 800496a:	e7fe      	b.n	800496a <xQueueGenericSend+0x86>
 800496c:	f001 f9e4 	bl	8005d38 <xTaskGetSchedulerState>
 8004970:	4603      	mov	r3, r0
 8004972:	2b00      	cmp	r3, #0
 8004974:	d102      	bne.n	800497c <xQueueGenericSend+0x98>
 8004976:	687b      	ldr	r3, [r7, #4]
 8004978:	2b00      	cmp	r3, #0
 800497a:	d101      	bne.n	8004980 <xQueueGenericSend+0x9c>
 800497c:	2301      	movs	r3, #1
 800497e:	e000      	b.n	8004982 <xQueueGenericSend+0x9e>
 8004980:	2300      	movs	r3, #0
 8004982:	2b00      	cmp	r3, #0
 8004984:	d109      	bne.n	800499a <xQueueGenericSend+0xb6>
 8004986:	f04f 0350 	mov.w	r3, #80	; 0x50
 800498a:	f383 8811 	msr	BASEPRI, r3
 800498e:	f3bf 8f6f 	isb	sy
 8004992:	f3bf 8f4f 	dsb	sy
 8004996:	61fb      	str	r3, [r7, #28]
 8004998:	e7fe      	b.n	8004998 <xQueueGenericSend+0xb4>
 800499a:	f001 fef3 	bl	8006784 <vPortEnterCritical>
 800499e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80049a0:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 80049a2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80049a4:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 80049a6:	429a      	cmp	r2, r3
 80049a8:	d302      	bcc.n	80049b0 <xQueueGenericSend+0xcc>
 80049aa:	683b      	ldr	r3, [r7, #0]
 80049ac:	2b02      	cmp	r3, #2
 80049ae:	d129      	bne.n	8004a04 <xQueueGenericSend+0x120>
 80049b0:	6b38      	ldr	r0, [r7, #48]	; 0x30
 80049b2:	68b9      	ldr	r1, [r7, #8]
 80049b4:	683a      	ldr	r2, [r7, #0]
 80049b6:	f000 fa07 	bl	8004dc8 <prvCopyDataToQueue>
 80049ba:	62f8      	str	r0, [r7, #44]	; 0x2c
 80049bc:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80049be:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80049c0:	2b00      	cmp	r3, #0
 80049c2:	d010      	beq.n	80049e6 <xQueueGenericSend+0x102>
 80049c4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80049c6:	3324      	adds	r3, #36	; 0x24
 80049c8:	4618      	mov	r0, r3
 80049ca:	f000 fffb 	bl	80059c4 <xTaskRemoveFromEventList>
 80049ce:	4603      	mov	r3, r0
 80049d0:	2b00      	cmp	r3, #0
 80049d2:	d013      	beq.n	80049fc <xQueueGenericSend+0x118>
 80049d4:	4b41      	ldr	r3, [pc, #260]	; (8004adc <xQueueGenericSend+0x1f8>)
 80049d6:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 80049da:	601a      	str	r2, [r3, #0]
 80049dc:	f3bf 8f4f 	dsb	sy
 80049e0:	f3bf 8f6f 	isb	sy
 80049e4:	e00a      	b.n	80049fc <xQueueGenericSend+0x118>
 80049e6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80049e8:	2b00      	cmp	r3, #0
 80049ea:	d007      	beq.n	80049fc <xQueueGenericSend+0x118>
 80049ec:	4b3b      	ldr	r3, [pc, #236]	; (8004adc <xQueueGenericSend+0x1f8>)
 80049ee:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 80049f2:	601a      	str	r2, [r3, #0]
 80049f4:	f3bf 8f4f 	dsb	sy
 80049f8:	f3bf 8f6f 	isb	sy
 80049fc:	f001 fef0 	bl	80067e0 <vPortExitCritical>
 8004a00:	2301      	movs	r3, #1
 8004a02:	e067      	b.n	8004ad4 <xQueueGenericSend+0x1f0>
 8004a04:	687b      	ldr	r3, [r7, #4]
 8004a06:	2b00      	cmp	r3, #0
 8004a08:	d103      	bne.n	8004a12 <xQueueGenericSend+0x12e>
 8004a0a:	f001 fee9 	bl	80067e0 <vPortExitCritical>
 8004a0e:	2300      	movs	r3, #0
 8004a10:	e060      	b.n	8004ad4 <xQueueGenericSend+0x1f0>
 8004a12:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8004a14:	2b00      	cmp	r3, #0
 8004a16:	d106      	bne.n	8004a26 <xQueueGenericSend+0x142>
 8004a18:	f107 0314 	add.w	r3, r7, #20
 8004a1c:	4618      	mov	r0, r3
 8004a1e:	f001 f833 	bl	8005a88 <vTaskInternalSetTimeOutState>
 8004a22:	2301      	movs	r3, #1
 8004a24:	637b      	str	r3, [r7, #52]	; 0x34
 8004a26:	f001 fedb 	bl	80067e0 <vPortExitCritical>
 8004a2a:	f000 fd7f 	bl	800552c <vTaskSuspendAll>
 8004a2e:	f001 fea9 	bl	8006784 <vPortEnterCritical>
 8004a32:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8004a34:	f893 3044 	ldrb.w	r3, [r3, #68]	; 0x44
 8004a38:	b2db      	uxtb	r3, r3
 8004a3a:	b25b      	sxtb	r3, r3
 8004a3c:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8004a40:	d103      	bne.n	8004a4a <xQueueGenericSend+0x166>
 8004a42:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8004a44:	2200      	movs	r2, #0
 8004a46:	f883 2044 	strb.w	r2, [r3, #68]	; 0x44
 8004a4a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8004a4c:	f893 3045 	ldrb.w	r3, [r3, #69]	; 0x45
 8004a50:	b2db      	uxtb	r3, r3
 8004a52:	b25b      	sxtb	r3, r3
 8004a54:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8004a58:	d103      	bne.n	8004a62 <xQueueGenericSend+0x17e>
 8004a5a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8004a5c:	2200      	movs	r2, #0
 8004a5e:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 8004a62:	f001 febd 	bl	80067e0 <vPortExitCritical>
 8004a66:	f107 0214 	add.w	r2, r7, #20
 8004a6a:	1d3b      	adds	r3, r7, #4
 8004a6c:	4610      	mov	r0, r2
 8004a6e:	4619      	mov	r1, r3
 8004a70:	f001 f820 	bl	8005ab4 <xTaskCheckForTimeOut>
 8004a74:	4603      	mov	r3, r0
 8004a76:	2b00      	cmp	r3, #0
 8004a78:	d124      	bne.n	8004ac4 <xQueueGenericSend+0x1e0>
 8004a7a:	6b38      	ldr	r0, [r7, #48]	; 0x30
 8004a7c:	f000 fa9c 	bl	8004fb8 <prvIsQueueFull>
 8004a80:	4603      	mov	r3, r0
 8004a82:	2b00      	cmp	r3, #0
 8004a84:	d018      	beq.n	8004ab8 <xQueueGenericSend+0x1d4>
 8004a86:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8004a88:	f103 0210 	add.w	r2, r3, #16
 8004a8c:	687b      	ldr	r3, [r7, #4]
 8004a8e:	4610      	mov	r0, r2
 8004a90:	4619      	mov	r1, r3
 8004a92:	f000 ff4b 	bl	800592c <vTaskPlaceOnEventList>
 8004a96:	6b38      	ldr	r0, [r7, #48]	; 0x30
 8004a98:	f000 fa28 	bl	8004eec <prvUnlockQueue>
 8004a9c:	f000 fd54 	bl	8005548 <xTaskResumeAll>
 8004aa0:	4603      	mov	r3, r0
 8004aa2:	2b00      	cmp	r3, #0
 8004aa4:	d115      	bne.n	8004ad2 <xQueueGenericSend+0x1ee>
 8004aa6:	4b0d      	ldr	r3, [pc, #52]	; (8004adc <xQueueGenericSend+0x1f8>)
 8004aa8:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 8004aac:	601a      	str	r2, [r3, #0]
 8004aae:	f3bf 8f4f 	dsb	sy
 8004ab2:	f3bf 8f6f 	isb	sy
 8004ab6:	e00c      	b.n	8004ad2 <xQueueGenericSend+0x1ee>
 8004ab8:	6b38      	ldr	r0, [r7, #48]	; 0x30
 8004aba:	f000 fa17 	bl	8004eec <prvUnlockQueue>
 8004abe:	f000 fd43 	bl	8005548 <xTaskResumeAll>
 8004ac2:	e76a      	b.n	800499a <xQueueGenericSend+0xb6>
 8004ac4:	6b38      	ldr	r0, [r7, #48]	; 0x30
 8004ac6:	f000 fa11 	bl	8004eec <prvUnlockQueue>
 8004aca:	f000 fd3d 	bl	8005548 <xTaskResumeAll>
 8004ace:	2300      	movs	r3, #0
 8004ad0:	e000      	b.n	8004ad4 <xQueueGenericSend+0x1f0>
 8004ad2:	e762      	b.n	800499a <xQueueGenericSend+0xb6>
 8004ad4:	4618      	mov	r0, r3
 8004ad6:	3738      	adds	r7, #56	; 0x38
 8004ad8:	46bd      	mov	sp, r7
 8004ada:	bd80      	pop	{r7, pc}
 8004adc:	e000ed04 	.word	0xe000ed04

08004ae0 <xQueueGenericSendFromISR>:
 8004ae0:	b580      	push	{r7, lr}
 8004ae2:	b08e      	sub	sp, #56	; 0x38
 8004ae4:	af00      	add	r7, sp, #0
 8004ae6:	60f8      	str	r0, [r7, #12]
 8004ae8:	60b9      	str	r1, [r7, #8]
 8004aea:	607a      	str	r2, [r7, #4]
 8004aec:	603b      	str	r3, [r7, #0]
 8004aee:	68fb      	ldr	r3, [r7, #12]
 8004af0:	633b      	str	r3, [r7, #48]	; 0x30
 8004af2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8004af4:	2b00      	cmp	r3, #0
 8004af6:	d109      	bne.n	8004b0c <xQueueGenericSendFromISR+0x2c>
 8004af8:	f04f 0350 	mov.w	r3, #80	; 0x50
 8004afc:	f383 8811 	msr	BASEPRI, r3
 8004b00:	f3bf 8f6f 	isb	sy
 8004b04:	f3bf 8f4f 	dsb	sy
 8004b08:	627b      	str	r3, [r7, #36]	; 0x24
 8004b0a:	e7fe      	b.n	8004b0a <xQueueGenericSendFromISR+0x2a>
 8004b0c:	68bb      	ldr	r3, [r7, #8]
 8004b0e:	2b00      	cmp	r3, #0
 8004b10:	d103      	bne.n	8004b1a <xQueueGenericSendFromISR+0x3a>
 8004b12:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8004b14:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8004b16:	2b00      	cmp	r3, #0
 8004b18:	d101      	bne.n	8004b1e <xQueueGenericSendFromISR+0x3e>
 8004b1a:	2301      	movs	r3, #1
 8004b1c:	e000      	b.n	8004b20 <xQueueGenericSendFromISR+0x40>
 8004b1e:	2300      	movs	r3, #0
 8004b20:	2b00      	cmp	r3, #0
 8004b22:	d109      	bne.n	8004b38 <xQueueGenericSendFromISR+0x58>
 8004b24:	f04f 0350 	mov.w	r3, #80	; 0x50
 8004b28:	f383 8811 	msr	BASEPRI, r3
 8004b2c:	f3bf 8f6f 	isb	sy
 8004b30:	f3bf 8f4f 	dsb	sy
 8004b34:	623b      	str	r3, [r7, #32]
 8004b36:	e7fe      	b.n	8004b36 <xQueueGenericSendFromISR+0x56>
 8004b38:	683b      	ldr	r3, [r7, #0]
 8004b3a:	2b02      	cmp	r3, #2
 8004b3c:	d103      	bne.n	8004b46 <xQueueGenericSendFromISR+0x66>
 8004b3e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8004b40:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8004b42:	2b01      	cmp	r3, #1
 8004b44:	d101      	bne.n	8004b4a <xQueueGenericSendFromISR+0x6a>
 8004b46:	2301      	movs	r3, #1
 8004b48:	e000      	b.n	8004b4c <xQueueGenericSendFromISR+0x6c>
 8004b4a:	2300      	movs	r3, #0
 8004b4c:	2b00      	cmp	r3, #0
 8004b4e:	d109      	bne.n	8004b64 <xQueueGenericSendFromISR+0x84>
 8004b50:	f04f 0350 	mov.w	r3, #80	; 0x50
 8004b54:	f383 8811 	msr	BASEPRI, r3
 8004b58:	f3bf 8f6f 	isb	sy
 8004b5c:	f3bf 8f4f 	dsb	sy
 8004b60:	61fb      	str	r3, [r7, #28]
 8004b62:	e7fe      	b.n	8004b62 <xQueueGenericSendFromISR+0x82>
 8004b64:	f001 fee8 	bl	8006938 <vPortValidateInterruptPriority>
 8004b68:	f3ef 8211 	mrs	r2, BASEPRI
 8004b6c:	f04f 0350 	mov.w	r3, #80	; 0x50
 8004b70:	f383 8811 	msr	BASEPRI, r3
 8004b74:	f3bf 8f6f 	isb	sy
 8004b78:	f3bf 8f4f 	dsb	sy
 8004b7c:	61ba      	str	r2, [r7, #24]
 8004b7e:	617b      	str	r3, [r7, #20]
 8004b80:	69bb      	ldr	r3, [r7, #24]
 8004b82:	62fb      	str	r3, [r7, #44]	; 0x2c
 8004b84:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8004b86:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004b88:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8004b8a:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8004b8c:	429a      	cmp	r2, r3
 8004b8e:	d302      	bcc.n	8004b96 <xQueueGenericSendFromISR+0xb6>
 8004b90:	683b      	ldr	r3, [r7, #0]
 8004b92:	2b02      	cmp	r3, #2
 8004b94:	d12c      	bne.n	8004bf0 <xQueueGenericSendFromISR+0x110>
 8004b96:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8004b98:	f893 3045 	ldrb.w	r3, [r3, #69]	; 0x45
 8004b9c:	f887 302b 	strb.w	r3, [r7, #43]	; 0x2b
 8004ba0:	6b38      	ldr	r0, [r7, #48]	; 0x30
 8004ba2:	68b9      	ldr	r1, [r7, #8]
 8004ba4:	683a      	ldr	r2, [r7, #0]
 8004ba6:	f000 f90f 	bl	8004dc8 <prvCopyDataToQueue>
 8004baa:	f997 302b 	ldrsb.w	r3, [r7, #43]	; 0x2b
 8004bae:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8004bb2:	d112      	bne.n	8004bda <xQueueGenericSendFromISR+0xfa>
 8004bb4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8004bb6:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8004bb8:	2b00      	cmp	r3, #0
 8004bba:	d016      	beq.n	8004bea <xQueueGenericSendFromISR+0x10a>
 8004bbc:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8004bbe:	3324      	adds	r3, #36	; 0x24
 8004bc0:	4618      	mov	r0, r3
 8004bc2:	f000 feff 	bl	80059c4 <xTaskRemoveFromEventList>
 8004bc6:	4603      	mov	r3, r0
 8004bc8:	2b00      	cmp	r3, #0
 8004bca:	d00e      	beq.n	8004bea <xQueueGenericSendFromISR+0x10a>
 8004bcc:	687b      	ldr	r3, [r7, #4]
 8004bce:	2b00      	cmp	r3, #0
 8004bd0:	d00b      	beq.n	8004bea <xQueueGenericSendFromISR+0x10a>
 8004bd2:	687b      	ldr	r3, [r7, #4]
 8004bd4:	2201      	movs	r2, #1
 8004bd6:	601a      	str	r2, [r3, #0]
 8004bd8:	e007      	b.n	8004bea <xQueueGenericSendFromISR+0x10a>
 8004bda:	f897 302b 	ldrb.w	r3, [r7, #43]	; 0x2b
 8004bde:	3301      	adds	r3, #1
 8004be0:	b2db      	uxtb	r3, r3
 8004be2:	b2da      	uxtb	r2, r3
 8004be4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8004be6:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 8004bea:	2301      	movs	r3, #1
 8004bec:	637b      	str	r3, [r7, #52]	; 0x34
 8004bee:	e001      	b.n	8004bf4 <xQueueGenericSendFromISR+0x114>
 8004bf0:	2300      	movs	r3, #0
 8004bf2:	637b      	str	r3, [r7, #52]	; 0x34
 8004bf4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8004bf6:	613b      	str	r3, [r7, #16]
 8004bf8:	693b      	ldr	r3, [r7, #16]
 8004bfa:	f383 8811 	msr	BASEPRI, r3
 8004bfe:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8004c00:	4618      	mov	r0, r3
 8004c02:	3738      	adds	r7, #56	; 0x38
 8004c04:	46bd      	mov	sp, r7
 8004c06:	bd80      	pop	{r7, pc}

08004c08 <xQueueReceive>:
 8004c08:	b580      	push	{r7, lr}
 8004c0a:	b08c      	sub	sp, #48	; 0x30
 8004c0c:	af00      	add	r7, sp, #0
 8004c0e:	60f8      	str	r0, [r7, #12]
 8004c10:	60b9      	str	r1, [r7, #8]
 8004c12:	607a      	str	r2, [r7, #4]
 8004c14:	2300      	movs	r3, #0
 8004c16:	62fb      	str	r3, [r7, #44]	; 0x2c
 8004c18:	68fb      	ldr	r3, [r7, #12]
 8004c1a:	62bb      	str	r3, [r7, #40]	; 0x28
 8004c1c:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8004c1e:	2b00      	cmp	r3, #0
 8004c20:	d109      	bne.n	8004c36 <xQueueReceive+0x2e>
 8004c22:	f04f 0350 	mov.w	r3, #80	; 0x50
 8004c26:	f383 8811 	msr	BASEPRI, r3
 8004c2a:	f3bf 8f6f 	isb	sy
 8004c2e:	f3bf 8f4f 	dsb	sy
 8004c32:	623b      	str	r3, [r7, #32]
 8004c34:	e7fe      	b.n	8004c34 <xQueueReceive+0x2c>
 8004c36:	68bb      	ldr	r3, [r7, #8]
 8004c38:	2b00      	cmp	r3, #0
 8004c3a:	d103      	bne.n	8004c44 <xQueueReceive+0x3c>
 8004c3c:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8004c3e:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8004c40:	2b00      	cmp	r3, #0
 8004c42:	d101      	bne.n	8004c48 <xQueueReceive+0x40>
 8004c44:	2301      	movs	r3, #1
 8004c46:	e000      	b.n	8004c4a <xQueueReceive+0x42>
 8004c48:	2300      	movs	r3, #0
 8004c4a:	2b00      	cmp	r3, #0
 8004c4c:	d109      	bne.n	8004c62 <xQueueReceive+0x5a>
 8004c4e:	f04f 0350 	mov.w	r3, #80	; 0x50
 8004c52:	f383 8811 	msr	BASEPRI, r3
 8004c56:	f3bf 8f6f 	isb	sy
 8004c5a:	f3bf 8f4f 	dsb	sy
 8004c5e:	61fb      	str	r3, [r7, #28]
 8004c60:	e7fe      	b.n	8004c60 <xQueueReceive+0x58>
 8004c62:	f001 f869 	bl	8005d38 <xTaskGetSchedulerState>
 8004c66:	4603      	mov	r3, r0
 8004c68:	2b00      	cmp	r3, #0
 8004c6a:	d102      	bne.n	8004c72 <xQueueReceive+0x6a>
 8004c6c:	687b      	ldr	r3, [r7, #4]
 8004c6e:	2b00      	cmp	r3, #0
 8004c70:	d101      	bne.n	8004c76 <xQueueReceive+0x6e>
 8004c72:	2301      	movs	r3, #1
 8004c74:	e000      	b.n	8004c78 <xQueueReceive+0x70>
 8004c76:	2300      	movs	r3, #0
 8004c78:	2b00      	cmp	r3, #0
 8004c7a:	d109      	bne.n	8004c90 <xQueueReceive+0x88>
 8004c7c:	f04f 0350 	mov.w	r3, #80	; 0x50
 8004c80:	f383 8811 	msr	BASEPRI, r3
 8004c84:	f3bf 8f6f 	isb	sy
 8004c88:	f3bf 8f4f 	dsb	sy
 8004c8c:	61bb      	str	r3, [r7, #24]
 8004c8e:	e7fe      	b.n	8004c8e <xQueueReceive+0x86>
 8004c90:	f001 fd78 	bl	8006784 <vPortEnterCritical>
 8004c94:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8004c96:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8004c98:	627b      	str	r3, [r7, #36]	; 0x24
 8004c9a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8004c9c:	2b00      	cmp	r3, #0
 8004c9e:	d01f      	beq.n	8004ce0 <xQueueReceive+0xd8>
 8004ca0:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 8004ca2:	68b9      	ldr	r1, [r7, #8]
 8004ca4:	f000 f8fc 	bl	8004ea0 <prvCopyDataFromQueue>
 8004ca8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8004caa:	1e5a      	subs	r2, r3, #1
 8004cac:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8004cae:	639a      	str	r2, [r3, #56]	; 0x38
 8004cb0:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8004cb2:	691b      	ldr	r3, [r3, #16]
 8004cb4:	2b00      	cmp	r3, #0
 8004cb6:	d00f      	beq.n	8004cd8 <xQueueReceive+0xd0>
 8004cb8:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8004cba:	3310      	adds	r3, #16
 8004cbc:	4618      	mov	r0, r3
 8004cbe:	f000 fe81 	bl	80059c4 <xTaskRemoveFromEventList>
 8004cc2:	4603      	mov	r3, r0
 8004cc4:	2b00      	cmp	r3, #0
 8004cc6:	d007      	beq.n	8004cd8 <xQueueReceive+0xd0>
 8004cc8:	4b3e      	ldr	r3, [pc, #248]	; (8004dc4 <xQueueReceive+0x1bc>)
 8004cca:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 8004cce:	601a      	str	r2, [r3, #0]
 8004cd0:	f3bf 8f4f 	dsb	sy
 8004cd4:	f3bf 8f6f 	isb	sy
 8004cd8:	f001 fd82 	bl	80067e0 <vPortExitCritical>
 8004cdc:	2301      	movs	r3, #1
 8004cde:	e06d      	b.n	8004dbc <xQueueReceive+0x1b4>
 8004ce0:	687b      	ldr	r3, [r7, #4]
 8004ce2:	2b00      	cmp	r3, #0
 8004ce4:	d103      	bne.n	8004cee <xQueueReceive+0xe6>
 8004ce6:	f001 fd7b 	bl	80067e0 <vPortExitCritical>
 8004cea:	2300      	movs	r3, #0
 8004cec:	e066      	b.n	8004dbc <xQueueReceive+0x1b4>
 8004cee:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8004cf0:	2b00      	cmp	r3, #0
 8004cf2:	d106      	bne.n	8004d02 <xQueueReceive+0xfa>
 8004cf4:	f107 0310 	add.w	r3, r7, #16
 8004cf8:	4618      	mov	r0, r3
 8004cfa:	f000 fec5 	bl	8005a88 <vTaskInternalSetTimeOutState>
 8004cfe:	2301      	movs	r3, #1
 8004d00:	62fb      	str	r3, [r7, #44]	; 0x2c
 8004d02:	f001 fd6d 	bl	80067e0 <vPortExitCritical>
 8004d06:	f000 fc11 	bl	800552c <vTaskSuspendAll>
 8004d0a:	f001 fd3b 	bl	8006784 <vPortEnterCritical>
 8004d0e:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8004d10:	f893 3044 	ldrb.w	r3, [r3, #68]	; 0x44
 8004d14:	b2db      	uxtb	r3, r3
 8004d16:	b25b      	sxtb	r3, r3
 8004d18:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8004d1c:	d103      	bne.n	8004d26 <xQueueReceive+0x11e>
 8004d1e:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8004d20:	2200      	movs	r2, #0
 8004d22:	f883 2044 	strb.w	r2, [r3, #68]	; 0x44
 8004d26:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8004d28:	f893 3045 	ldrb.w	r3, [r3, #69]	; 0x45
 8004d2c:	b2db      	uxtb	r3, r3
 8004d2e:	b25b      	sxtb	r3, r3
 8004d30:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8004d34:	d103      	bne.n	8004d3e <xQueueReceive+0x136>
 8004d36:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8004d38:	2200      	movs	r2, #0
 8004d3a:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 8004d3e:	f001 fd4f 	bl	80067e0 <vPortExitCritical>
 8004d42:	f107 0210 	add.w	r2, r7, #16
 8004d46:	1d3b      	adds	r3, r7, #4
 8004d48:	4610      	mov	r0, r2
 8004d4a:	4619      	mov	r1, r3
 8004d4c:	f000 feb2 	bl	8005ab4 <xTaskCheckForTimeOut>
 8004d50:	4603      	mov	r3, r0
 8004d52:	2b00      	cmp	r3, #0
 8004d54:	d124      	bne.n	8004da0 <xQueueReceive+0x198>
 8004d56:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 8004d58:	f000 f918 	bl	8004f8c <prvIsQueueEmpty>
 8004d5c:	4603      	mov	r3, r0
 8004d5e:	2b00      	cmp	r3, #0
 8004d60:	d018      	beq.n	8004d94 <xQueueReceive+0x18c>
 8004d62:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8004d64:	f103 0224 	add.w	r2, r3, #36	; 0x24
 8004d68:	687b      	ldr	r3, [r7, #4]
 8004d6a:	4610      	mov	r0, r2
 8004d6c:	4619      	mov	r1, r3
 8004d6e:	f000 fddd 	bl	800592c <vTaskPlaceOnEventList>
 8004d72:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 8004d74:	f000 f8ba 	bl	8004eec <prvUnlockQueue>
 8004d78:	f000 fbe6 	bl	8005548 <xTaskResumeAll>
 8004d7c:	4603      	mov	r3, r0
 8004d7e:	2b00      	cmp	r3, #0
 8004d80:	d11b      	bne.n	8004dba <xQueueReceive+0x1b2>
 8004d82:	4b10      	ldr	r3, [pc, #64]	; (8004dc4 <xQueueReceive+0x1bc>)
 8004d84:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 8004d88:	601a      	str	r2, [r3, #0]
 8004d8a:	f3bf 8f4f 	dsb	sy
 8004d8e:	f3bf 8f6f 	isb	sy
 8004d92:	e012      	b.n	8004dba <xQueueReceive+0x1b2>
 8004d94:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 8004d96:	f000 f8a9 	bl	8004eec <prvUnlockQueue>
 8004d9a:	f000 fbd5 	bl	8005548 <xTaskResumeAll>
 8004d9e:	e777      	b.n	8004c90 <xQueueReceive+0x88>
 8004da0:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 8004da2:	f000 f8a3 	bl	8004eec <prvUnlockQueue>
 8004da6:	f000 fbcf 	bl	8005548 <xTaskResumeAll>
 8004daa:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 8004dac:	f000 f8ee 	bl	8004f8c <prvIsQueueEmpty>
 8004db0:	4603      	mov	r3, r0
 8004db2:	2b00      	cmp	r3, #0
 8004db4:	d001      	beq.n	8004dba <xQueueReceive+0x1b2>
 8004db6:	2300      	movs	r3, #0
 8004db8:	e000      	b.n	8004dbc <xQueueReceive+0x1b4>
 8004dba:	e769      	b.n	8004c90 <xQueueReceive+0x88>
 8004dbc:	4618      	mov	r0, r3
 8004dbe:	3730      	adds	r7, #48	; 0x30
 8004dc0:	46bd      	mov	sp, r7
 8004dc2:	bd80      	pop	{r7, pc}
 8004dc4:	e000ed04 	.word	0xe000ed04

08004dc8 <prvCopyDataToQueue>:
 8004dc8:	b580      	push	{r7, lr}
 8004dca:	b086      	sub	sp, #24
 8004dcc:	af00      	add	r7, sp, #0
 8004dce:	60f8      	str	r0, [r7, #12]
 8004dd0:	60b9      	str	r1, [r7, #8]
 8004dd2:	607a      	str	r2, [r7, #4]
 8004dd4:	2300      	movs	r3, #0
 8004dd6:	617b      	str	r3, [r7, #20]
 8004dd8:	68fb      	ldr	r3, [r7, #12]
 8004dda:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8004ddc:	613b      	str	r3, [r7, #16]
 8004dde:	68fb      	ldr	r3, [r7, #12]
 8004de0:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8004de2:	2b00      	cmp	r3, #0
 8004de4:	d10d      	bne.n	8004e02 <prvCopyDataToQueue+0x3a>
 8004de6:	68fb      	ldr	r3, [r7, #12]
 8004de8:	681b      	ldr	r3, [r3, #0]
 8004dea:	2b00      	cmp	r3, #0
 8004dec:	d14f      	bne.n	8004e8e <prvCopyDataToQueue+0xc6>
 8004dee:	68fb      	ldr	r3, [r7, #12]
 8004df0:	689b      	ldr	r3, [r3, #8]
 8004df2:	4618      	mov	r0, r3
 8004df4:	f000 ffbe 	bl	8005d74 <xTaskPriorityDisinherit>
 8004df8:	6178      	str	r0, [r7, #20]
 8004dfa:	68fb      	ldr	r3, [r7, #12]
 8004dfc:	2200      	movs	r2, #0
 8004dfe:	609a      	str	r2, [r3, #8]
 8004e00:	e045      	b.n	8004e8e <prvCopyDataToQueue+0xc6>
 8004e02:	687b      	ldr	r3, [r7, #4]
 8004e04:	2b00      	cmp	r3, #0
 8004e06:	d11a      	bne.n	8004e3e <prvCopyDataToQueue+0x76>
 8004e08:	68fb      	ldr	r3, [r7, #12]
 8004e0a:	685a      	ldr	r2, [r3, #4]
 8004e0c:	68fb      	ldr	r3, [r7, #12]
 8004e0e:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8004e10:	4610      	mov	r0, r2
 8004e12:	68b9      	ldr	r1, [r7, #8]
 8004e14:	461a      	mov	r2, r3
 8004e16:	f001 ffc9 	bl	8006dac <memcpy>
 8004e1a:	68fb      	ldr	r3, [r7, #12]
 8004e1c:	685a      	ldr	r2, [r3, #4]
 8004e1e:	68fb      	ldr	r3, [r7, #12]
 8004e20:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8004e22:	441a      	add	r2, r3
 8004e24:	68fb      	ldr	r3, [r7, #12]
 8004e26:	605a      	str	r2, [r3, #4]
 8004e28:	68fb      	ldr	r3, [r7, #12]
 8004e2a:	685a      	ldr	r2, [r3, #4]
 8004e2c:	68fb      	ldr	r3, [r7, #12]
 8004e2e:	689b      	ldr	r3, [r3, #8]
 8004e30:	429a      	cmp	r2, r3
 8004e32:	d32c      	bcc.n	8004e8e <prvCopyDataToQueue+0xc6>
 8004e34:	68fb      	ldr	r3, [r7, #12]
 8004e36:	681a      	ldr	r2, [r3, #0]
 8004e38:	68fb      	ldr	r3, [r7, #12]
 8004e3a:	605a      	str	r2, [r3, #4]
 8004e3c:	e027      	b.n	8004e8e <prvCopyDataToQueue+0xc6>
 8004e3e:	68fb      	ldr	r3, [r7, #12]
 8004e40:	68da      	ldr	r2, [r3, #12]
 8004e42:	68fb      	ldr	r3, [r7, #12]
 8004e44:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8004e46:	4610      	mov	r0, r2
 8004e48:	68b9      	ldr	r1, [r7, #8]
 8004e4a:	461a      	mov	r2, r3
 8004e4c:	f001 ffae 	bl	8006dac <memcpy>
 8004e50:	68fb      	ldr	r3, [r7, #12]
 8004e52:	68da      	ldr	r2, [r3, #12]
 8004e54:	68fb      	ldr	r3, [r7, #12]
 8004e56:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8004e58:	425b      	negs	r3, r3
 8004e5a:	441a      	add	r2, r3
 8004e5c:	68fb      	ldr	r3, [r7, #12]
 8004e5e:	60da      	str	r2, [r3, #12]
 8004e60:	68fb      	ldr	r3, [r7, #12]
 8004e62:	68da      	ldr	r2, [r3, #12]
 8004e64:	68fb      	ldr	r3, [r7, #12]
 8004e66:	681b      	ldr	r3, [r3, #0]
 8004e68:	429a      	cmp	r2, r3
 8004e6a:	d207      	bcs.n	8004e7c <prvCopyDataToQueue+0xb4>
 8004e6c:	68fb      	ldr	r3, [r7, #12]
 8004e6e:	689a      	ldr	r2, [r3, #8]
 8004e70:	68fb      	ldr	r3, [r7, #12]
 8004e72:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8004e74:	425b      	negs	r3, r3
 8004e76:	441a      	add	r2, r3
 8004e78:	68fb      	ldr	r3, [r7, #12]
 8004e7a:	60da      	str	r2, [r3, #12]
 8004e7c:	687b      	ldr	r3, [r7, #4]
 8004e7e:	2b02      	cmp	r3, #2
 8004e80:	d105      	bne.n	8004e8e <prvCopyDataToQueue+0xc6>
 8004e82:	693b      	ldr	r3, [r7, #16]
 8004e84:	2b00      	cmp	r3, #0
 8004e86:	d002      	beq.n	8004e8e <prvCopyDataToQueue+0xc6>
 8004e88:	693b      	ldr	r3, [r7, #16]
 8004e8a:	3b01      	subs	r3, #1
 8004e8c:	613b      	str	r3, [r7, #16]
 8004e8e:	693b      	ldr	r3, [r7, #16]
 8004e90:	1c5a      	adds	r2, r3, #1
 8004e92:	68fb      	ldr	r3, [r7, #12]
 8004e94:	639a      	str	r2, [r3, #56]	; 0x38
 8004e96:	697b      	ldr	r3, [r7, #20]
 8004e98:	4618      	mov	r0, r3
 8004e9a:	3718      	adds	r7, #24
 8004e9c:	46bd      	mov	sp, r7
 8004e9e:	bd80      	pop	{r7, pc}

08004ea0 <prvCopyDataFromQueue>:
 8004ea0:	b580      	push	{r7, lr}
 8004ea2:	b082      	sub	sp, #8
 8004ea4:	af00      	add	r7, sp, #0
 8004ea6:	6078      	str	r0, [r7, #4]
 8004ea8:	6039      	str	r1, [r7, #0]
 8004eaa:	687b      	ldr	r3, [r7, #4]
 8004eac:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8004eae:	2b00      	cmp	r3, #0
 8004eb0:	d019      	beq.n	8004ee6 <prvCopyDataFromQueue+0x46>
 8004eb2:	687b      	ldr	r3, [r7, #4]
 8004eb4:	68da      	ldr	r2, [r3, #12]
 8004eb6:	687b      	ldr	r3, [r7, #4]
 8004eb8:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8004eba:	441a      	add	r2, r3
 8004ebc:	687b      	ldr	r3, [r7, #4]
 8004ebe:	60da      	str	r2, [r3, #12]
 8004ec0:	687b      	ldr	r3, [r7, #4]
 8004ec2:	68da      	ldr	r2, [r3, #12]
 8004ec4:	687b      	ldr	r3, [r7, #4]
 8004ec6:	689b      	ldr	r3, [r3, #8]
 8004ec8:	429a      	cmp	r2, r3
 8004eca:	d303      	bcc.n	8004ed4 <prvCopyDataFromQueue+0x34>
 8004ecc:	687b      	ldr	r3, [r7, #4]
 8004ece:	681a      	ldr	r2, [r3, #0]
 8004ed0:	687b      	ldr	r3, [r7, #4]
 8004ed2:	60da      	str	r2, [r3, #12]
 8004ed4:	687b      	ldr	r3, [r7, #4]
 8004ed6:	68da      	ldr	r2, [r3, #12]
 8004ed8:	687b      	ldr	r3, [r7, #4]
 8004eda:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8004edc:	6838      	ldr	r0, [r7, #0]
 8004ede:	4611      	mov	r1, r2
 8004ee0:	461a      	mov	r2, r3
 8004ee2:	f001 ff63 	bl	8006dac <memcpy>
 8004ee6:	3708      	adds	r7, #8
 8004ee8:	46bd      	mov	sp, r7
 8004eea:	bd80      	pop	{r7, pc}

08004eec <prvUnlockQueue>:
 8004eec:	b580      	push	{r7, lr}
 8004eee:	b084      	sub	sp, #16
 8004ef0:	af00      	add	r7, sp, #0
 8004ef2:	6078      	str	r0, [r7, #4]
 8004ef4:	f001 fc46 	bl	8006784 <vPortEnterCritical>
 8004ef8:	687b      	ldr	r3, [r7, #4]
 8004efa:	f893 3045 	ldrb.w	r3, [r3, #69]	; 0x45
 8004efe:	73fb      	strb	r3, [r7, #15]
 8004f00:	e012      	b.n	8004f28 <prvUnlockQueue+0x3c>
 8004f02:	687b      	ldr	r3, [r7, #4]
 8004f04:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8004f06:	2b00      	cmp	r3, #0
 8004f08:	d00a      	beq.n	8004f20 <prvUnlockQueue+0x34>
 8004f0a:	687b      	ldr	r3, [r7, #4]
 8004f0c:	3324      	adds	r3, #36	; 0x24
 8004f0e:	4618      	mov	r0, r3
 8004f10:	f000 fd58 	bl	80059c4 <xTaskRemoveFromEventList>
 8004f14:	4603      	mov	r3, r0
 8004f16:	2b00      	cmp	r3, #0
 8004f18:	d003      	beq.n	8004f22 <prvUnlockQueue+0x36>
 8004f1a:	f000 fe2b 	bl	8005b74 <vTaskMissedYield>
 8004f1e:	e000      	b.n	8004f22 <prvUnlockQueue+0x36>
 8004f20:	e006      	b.n	8004f30 <prvUnlockQueue+0x44>
 8004f22:	7bfb      	ldrb	r3, [r7, #15]
 8004f24:	3b01      	subs	r3, #1
 8004f26:	73fb      	strb	r3, [r7, #15]
 8004f28:	f997 300f 	ldrsb.w	r3, [r7, #15]
 8004f2c:	2b00      	cmp	r3, #0
 8004f2e:	dce8      	bgt.n	8004f02 <prvUnlockQueue+0x16>
 8004f30:	687b      	ldr	r3, [r7, #4]
 8004f32:	22ff      	movs	r2, #255	; 0xff
 8004f34:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 8004f38:	f001 fc52 	bl	80067e0 <vPortExitCritical>
 8004f3c:	f001 fc22 	bl	8006784 <vPortEnterCritical>
 8004f40:	687b      	ldr	r3, [r7, #4]
 8004f42:	f893 3044 	ldrb.w	r3, [r3, #68]	; 0x44
 8004f46:	73bb      	strb	r3, [r7, #14]
 8004f48:	e012      	b.n	8004f70 <prvUnlockQueue+0x84>
 8004f4a:	687b      	ldr	r3, [r7, #4]
 8004f4c:	691b      	ldr	r3, [r3, #16]
 8004f4e:	2b00      	cmp	r3, #0
 8004f50:	d00d      	beq.n	8004f6e <prvUnlockQueue+0x82>
 8004f52:	687b      	ldr	r3, [r7, #4]
 8004f54:	3310      	adds	r3, #16
 8004f56:	4618      	mov	r0, r3
 8004f58:	f000 fd34 	bl	80059c4 <xTaskRemoveFromEventList>
 8004f5c:	4603      	mov	r3, r0
 8004f5e:	2b00      	cmp	r3, #0
 8004f60:	d001      	beq.n	8004f66 <prvUnlockQueue+0x7a>
 8004f62:	f000 fe07 	bl	8005b74 <vTaskMissedYield>
 8004f66:	7bbb      	ldrb	r3, [r7, #14]
 8004f68:	3b01      	subs	r3, #1
 8004f6a:	73bb      	strb	r3, [r7, #14]
 8004f6c:	e000      	b.n	8004f70 <prvUnlockQueue+0x84>
 8004f6e:	e003      	b.n	8004f78 <prvUnlockQueue+0x8c>
 8004f70:	f997 300e 	ldrsb.w	r3, [r7, #14]
 8004f74:	2b00      	cmp	r3, #0
 8004f76:	dce8      	bgt.n	8004f4a <prvUnlockQueue+0x5e>
 8004f78:	687b      	ldr	r3, [r7, #4]
 8004f7a:	22ff      	movs	r2, #255	; 0xff
 8004f7c:	f883 2044 	strb.w	r2, [r3, #68]	; 0x44
 8004f80:	f001 fc2e 	bl	80067e0 <vPortExitCritical>
 8004f84:	3710      	adds	r7, #16
 8004f86:	46bd      	mov	sp, r7
 8004f88:	bd80      	pop	{r7, pc}
 8004f8a:	bf00      	nop

08004f8c <prvIsQueueEmpty>:
 8004f8c:	b580      	push	{r7, lr}
 8004f8e:	b084      	sub	sp, #16
 8004f90:	af00      	add	r7, sp, #0
 8004f92:	6078      	str	r0, [r7, #4]
 8004f94:	f001 fbf6 	bl	8006784 <vPortEnterCritical>
 8004f98:	687b      	ldr	r3, [r7, #4]
 8004f9a:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8004f9c:	2b00      	cmp	r3, #0
 8004f9e:	d102      	bne.n	8004fa6 <prvIsQueueEmpty+0x1a>
 8004fa0:	2301      	movs	r3, #1
 8004fa2:	60fb      	str	r3, [r7, #12]
 8004fa4:	e001      	b.n	8004faa <prvIsQueueEmpty+0x1e>
 8004fa6:	2300      	movs	r3, #0
 8004fa8:	60fb      	str	r3, [r7, #12]
 8004faa:	f001 fc19 	bl	80067e0 <vPortExitCritical>
 8004fae:	68fb      	ldr	r3, [r7, #12]
 8004fb0:	4618      	mov	r0, r3
 8004fb2:	3710      	adds	r7, #16
 8004fb4:	46bd      	mov	sp, r7
 8004fb6:	bd80      	pop	{r7, pc}

08004fb8 <prvIsQueueFull>:
 8004fb8:	b580      	push	{r7, lr}
 8004fba:	b084      	sub	sp, #16
 8004fbc:	af00      	add	r7, sp, #0
 8004fbe:	6078      	str	r0, [r7, #4]
 8004fc0:	f001 fbe0 	bl	8006784 <vPortEnterCritical>
 8004fc4:	687b      	ldr	r3, [r7, #4]
 8004fc6:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004fc8:	687b      	ldr	r3, [r7, #4]
 8004fca:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8004fcc:	429a      	cmp	r2, r3
 8004fce:	d102      	bne.n	8004fd6 <prvIsQueueFull+0x1e>
 8004fd0:	2301      	movs	r3, #1
 8004fd2:	60fb      	str	r3, [r7, #12]
 8004fd4:	e001      	b.n	8004fda <prvIsQueueFull+0x22>
 8004fd6:	2300      	movs	r3, #0
 8004fd8:	60fb      	str	r3, [r7, #12]
 8004fda:	f001 fc01 	bl	80067e0 <vPortExitCritical>
 8004fde:	68fb      	ldr	r3, [r7, #12]
 8004fe0:	4618      	mov	r0, r3
 8004fe2:	3710      	adds	r7, #16
 8004fe4:	46bd      	mov	sp, r7
 8004fe6:	bd80      	pop	{r7, pc}

08004fe8 <vQueueAddToRegistry>:
 8004fe8:	b480      	push	{r7}
 8004fea:	b085      	sub	sp, #20
 8004fec:	af00      	add	r7, sp, #0
 8004fee:	6078      	str	r0, [r7, #4]
 8004ff0:	6039      	str	r1, [r7, #0]
 8004ff2:	2300      	movs	r3, #0
 8004ff4:	60fb      	str	r3, [r7, #12]
 8004ff6:	e014      	b.n	8005022 <vQueueAddToRegistry+0x3a>
 8004ff8:	4b0e      	ldr	r3, [pc, #56]	; (8005034 <vQueueAddToRegistry+0x4c>)
 8004ffa:	68fa      	ldr	r2, [r7, #12]
 8004ffc:	f853 3032 	ldr.w	r3, [r3, r2, lsl #3]
 8005000:	2b00      	cmp	r3, #0
 8005002:	d10b      	bne.n	800501c <vQueueAddToRegistry+0x34>
 8005004:	4b0b      	ldr	r3, [pc, #44]	; (8005034 <vQueueAddToRegistry+0x4c>)
 8005006:	68fa      	ldr	r2, [r7, #12]
 8005008:	6839      	ldr	r1, [r7, #0]
 800500a:	f843 1032 	str.w	r1, [r3, r2, lsl #3]
 800500e:	4a09      	ldr	r2, [pc, #36]	; (8005034 <vQueueAddToRegistry+0x4c>)
 8005010:	68fb      	ldr	r3, [r7, #12]
 8005012:	00db      	lsls	r3, r3, #3
 8005014:	4413      	add	r3, r2
 8005016:	687a      	ldr	r2, [r7, #4]
 8005018:	605a      	str	r2, [r3, #4]
 800501a:	e005      	b.n	8005028 <vQueueAddToRegistry+0x40>
 800501c:	68fb      	ldr	r3, [r7, #12]
 800501e:	3301      	adds	r3, #1
 8005020:	60fb      	str	r3, [r7, #12]
 8005022:	68fb      	ldr	r3, [r7, #12]
 8005024:	2b07      	cmp	r3, #7
 8005026:	d9e7      	bls.n	8004ff8 <vQueueAddToRegistry+0x10>
 8005028:	3714      	adds	r7, #20
 800502a:	46bd      	mov	sp, r7
 800502c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8005030:	4770      	bx	lr
 8005032:	bf00      	nop
 8005034:	20015730 	.word	0x20015730

08005038 <vQueueWaitForMessageRestricted>:
 8005038:	b580      	push	{r7, lr}
 800503a:	b086      	sub	sp, #24
 800503c:	af00      	add	r7, sp, #0
 800503e:	60f8      	str	r0, [r7, #12]
 8005040:	60b9      	str	r1, [r7, #8]
 8005042:	607a      	str	r2, [r7, #4]
 8005044:	68fb      	ldr	r3, [r7, #12]
 8005046:	617b      	str	r3, [r7, #20]
 8005048:	f001 fb9c 	bl	8006784 <vPortEnterCritical>
 800504c:	697b      	ldr	r3, [r7, #20]
 800504e:	f893 3044 	ldrb.w	r3, [r3, #68]	; 0x44
 8005052:	b2db      	uxtb	r3, r3
 8005054:	b25b      	sxtb	r3, r3
 8005056:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 800505a:	d103      	bne.n	8005064 <vQueueWaitForMessageRestricted+0x2c>
 800505c:	697b      	ldr	r3, [r7, #20]
 800505e:	2200      	movs	r2, #0
 8005060:	f883 2044 	strb.w	r2, [r3, #68]	; 0x44
 8005064:	697b      	ldr	r3, [r7, #20]
 8005066:	f893 3045 	ldrb.w	r3, [r3, #69]	; 0x45
 800506a:	b2db      	uxtb	r3, r3
 800506c:	b25b      	sxtb	r3, r3
 800506e:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8005072:	d103      	bne.n	800507c <vQueueWaitForMessageRestricted+0x44>
 8005074:	697b      	ldr	r3, [r7, #20]
 8005076:	2200      	movs	r2, #0
 8005078:	f883 2045 	strb.w	r2, [r3, #69]	; 0x45
 800507c:	f001 fbb0 	bl	80067e0 <vPortExitCritical>
 8005080:	697b      	ldr	r3, [r7, #20]
 8005082:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8005084:	2b00      	cmp	r3, #0
 8005086:	d106      	bne.n	8005096 <vQueueWaitForMessageRestricted+0x5e>
 8005088:	697b      	ldr	r3, [r7, #20]
 800508a:	3324      	adds	r3, #36	; 0x24
 800508c:	4618      	mov	r0, r3
 800508e:	68b9      	ldr	r1, [r7, #8]
 8005090:	687a      	ldr	r2, [r7, #4]
 8005092:	f000 fc6d 	bl	8005970 <vTaskPlaceOnEventListRestricted>
 8005096:	6978      	ldr	r0, [r7, #20]
 8005098:	f7ff ff28 	bl	8004eec <prvUnlockQueue>
 800509c:	3718      	adds	r7, #24
 800509e:	46bd      	mov	sp, r7
 80050a0:	bd80      	pop	{r7, pc}
 80050a2:	bf00      	nop

080050a4 <xTaskCreateStatic>:
 80050a4:	b580      	push	{r7, lr}
 80050a6:	b08e      	sub	sp, #56	; 0x38
 80050a8:	af04      	add	r7, sp, #16
 80050aa:	60f8      	str	r0, [r7, #12]
 80050ac:	60b9      	str	r1, [r7, #8]
 80050ae:	607a      	str	r2, [r7, #4]
 80050b0:	603b      	str	r3, [r7, #0]
 80050b2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80050b4:	2b00      	cmp	r3, #0
 80050b6:	d109      	bne.n	80050cc <xTaskCreateStatic+0x28>
 80050b8:	f04f 0350 	mov.w	r3, #80	; 0x50
 80050bc:	f383 8811 	msr	BASEPRI, r3
 80050c0:	f3bf 8f6f 	isb	sy
 80050c4:	f3bf 8f4f 	dsb	sy
 80050c8:	623b      	str	r3, [r7, #32]
 80050ca:	e7fe      	b.n	80050ca <xTaskCreateStatic+0x26>
 80050cc:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 80050ce:	2b00      	cmp	r3, #0
 80050d0:	d109      	bne.n	80050e6 <xTaskCreateStatic+0x42>
 80050d2:	f04f 0350 	mov.w	r3, #80	; 0x50
 80050d6:	f383 8811 	msr	BASEPRI, r3
 80050da:	f3bf 8f6f 	isb	sy
 80050de:	f3bf 8f4f 	dsb	sy
 80050e2:	61fb      	str	r3, [r7, #28]
 80050e4:	e7fe      	b.n	80050e4 <xTaskCreateStatic+0x40>
 80050e6:	f44f 6390 	mov.w	r3, #1152	; 0x480
 80050ea:	613b      	str	r3, [r7, #16]
 80050ec:	693b      	ldr	r3, [r7, #16]
 80050ee:	f5b3 6f90 	cmp.w	r3, #1152	; 0x480
 80050f2:	d009      	beq.n	8005108 <xTaskCreateStatic+0x64>
 80050f4:	f04f 0350 	mov.w	r3, #80	; 0x50
 80050f8:	f383 8811 	msr	BASEPRI, r3
 80050fc:	f3bf 8f6f 	isb	sy
 8005100:	f3bf 8f4f 	dsb	sy
 8005104:	61bb      	str	r3, [r7, #24]
 8005106:	e7fe      	b.n	8005106 <xTaskCreateStatic+0x62>
 8005108:	693b      	ldr	r3, [r7, #16]
 800510a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 800510c:	2b00      	cmp	r3, #0
 800510e:	d01e      	beq.n	800514e <xTaskCreateStatic+0xaa>
 8005110:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8005112:	2b00      	cmp	r3, #0
 8005114:	d01b      	beq.n	800514e <xTaskCreateStatic+0xaa>
 8005116:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8005118:	627b      	str	r3, [r7, #36]	; 0x24
 800511a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800511c:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 800511e:	631a      	str	r2, [r3, #48]	; 0x30
 8005120:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8005122:	2202      	movs	r2, #2
 8005124:	f883 247d 	strb.w	r2, [r3, #1149]	; 0x47d
 8005128:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800512a:	9300      	str	r3, [sp, #0]
 800512c:	f107 0314 	add.w	r3, r7, #20
 8005130:	9301      	str	r3, [sp, #4]
 8005132:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8005134:	9302      	str	r3, [sp, #8]
 8005136:	2300      	movs	r3, #0
 8005138:	9303      	str	r3, [sp, #12]
 800513a:	68f8      	ldr	r0, [r7, #12]
 800513c:	68b9      	ldr	r1, [r7, #8]
 800513e:	687a      	ldr	r2, [r7, #4]
 8005140:	683b      	ldr	r3, [r7, #0]
 8005142:	f000 f80b 	bl	800515c <prvInitialiseNewTask>
 8005146:	6a78      	ldr	r0, [r7, #36]	; 0x24
 8005148:	f000 f8e0 	bl	800530c <prvAddNewTaskToReadyList>
 800514c:	e001      	b.n	8005152 <xTaskCreateStatic+0xae>
 800514e:	2300      	movs	r3, #0
 8005150:	617b      	str	r3, [r7, #20]
 8005152:	697b      	ldr	r3, [r7, #20]
 8005154:	4618      	mov	r0, r3
 8005156:	3728      	adds	r7, #40	; 0x28
 8005158:	46bd      	mov	sp, r7
 800515a:	bd80      	pop	{r7, pc}

0800515c <prvInitialiseNewTask>:
 800515c:	b580      	push	{r7, lr}
 800515e:	b088      	sub	sp, #32
 8005160:	af00      	add	r7, sp, #0
 8005162:	60f8      	str	r0, [r7, #12]
 8005164:	60b9      	str	r1, [r7, #8]
 8005166:	607a      	str	r2, [r7, #4]
 8005168:	603b      	str	r3, [r7, #0]
 800516a:	68bb      	ldr	r3, [r7, #8]
 800516c:	2b00      	cmp	r3, #0
 800516e:	d109      	bne.n	8005184 <prvInitialiseNewTask+0x28>
 8005170:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005174:	f383 8811 	msr	BASEPRI, r3
 8005178:	f3bf 8f6f 	isb	sy
 800517c:	f3bf 8f4f 	dsb	sy
 8005180:	617b      	str	r3, [r7, #20]
 8005182:	e7fe      	b.n	8005182 <prvInitialiseNewTask+0x26>
 8005184:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005186:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8005188:	687b      	ldr	r3, [r7, #4]
 800518a:	009b      	lsls	r3, r3, #2
 800518c:	4610      	mov	r0, r2
 800518e:	21a5      	movs	r1, #165	; 0xa5
 8005190:	461a      	mov	r2, r3
 8005192:	f001 fe14 	bl	8006dbe <memset>
 8005196:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005198:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 800519a:	687b      	ldr	r3, [r7, #4]
 800519c:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 80051a0:	3b01      	subs	r3, #1
 80051a2:	009b      	lsls	r3, r3, #2
 80051a4:	4413      	add	r3, r2
 80051a6:	61bb      	str	r3, [r7, #24]
 80051a8:	69bb      	ldr	r3, [r7, #24]
 80051aa:	f023 0307 	bic.w	r3, r3, #7
 80051ae:	61bb      	str	r3, [r7, #24]
 80051b0:	69bb      	ldr	r3, [r7, #24]
 80051b2:	f003 0307 	and.w	r3, r3, #7
 80051b6:	2b00      	cmp	r3, #0
 80051b8:	d009      	beq.n	80051ce <prvInitialiseNewTask+0x72>
 80051ba:	f04f 0350 	mov.w	r3, #80	; 0x50
 80051be:	f383 8811 	msr	BASEPRI, r3
 80051c2:	f3bf 8f6f 	isb	sy
 80051c6:	f3bf 8f4f 	dsb	sy
 80051ca:	613b      	str	r3, [r7, #16]
 80051cc:	e7fe      	b.n	80051cc <prvInitialiseNewTask+0x70>
 80051ce:	2300      	movs	r3, #0
 80051d0:	61fb      	str	r3, [r7, #28]
 80051d2:	e012      	b.n	80051fa <prvInitialiseNewTask+0x9e>
 80051d4:	68ba      	ldr	r2, [r7, #8]
 80051d6:	69fb      	ldr	r3, [r7, #28]
 80051d8:	4413      	add	r3, r2
 80051da:	781a      	ldrb	r2, [r3, #0]
 80051dc:	6b39      	ldr	r1, [r7, #48]	; 0x30
 80051de:	69fb      	ldr	r3, [r7, #28]
 80051e0:	440b      	add	r3, r1
 80051e2:	3330      	adds	r3, #48	; 0x30
 80051e4:	711a      	strb	r2, [r3, #4]
 80051e6:	68ba      	ldr	r2, [r7, #8]
 80051e8:	69fb      	ldr	r3, [r7, #28]
 80051ea:	4413      	add	r3, r2
 80051ec:	781b      	ldrb	r3, [r3, #0]
 80051ee:	2b00      	cmp	r3, #0
 80051f0:	d100      	bne.n	80051f4 <prvInitialiseNewTask+0x98>
 80051f2:	e005      	b.n	8005200 <prvInitialiseNewTask+0xa4>
 80051f4:	69fb      	ldr	r3, [r7, #28]
 80051f6:	3301      	adds	r3, #1
 80051f8:	61fb      	str	r3, [r7, #28]
 80051fa:	69fb      	ldr	r3, [r7, #28]
 80051fc:	2b09      	cmp	r3, #9
 80051fe:	d9e9      	bls.n	80051d4 <prvInitialiseNewTask+0x78>
 8005200:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005202:	2200      	movs	r2, #0
 8005204:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d
 8005208:	6abb      	ldr	r3, [r7, #40]	; 0x28
 800520a:	2b04      	cmp	r3, #4
 800520c:	d901      	bls.n	8005212 <prvInitialiseNewTask+0xb6>
 800520e:	2304      	movs	r3, #4
 8005210:	62bb      	str	r3, [r7, #40]	; 0x28
 8005212:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005214:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8005216:	62da      	str	r2, [r3, #44]	; 0x2c
 8005218:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800521a:	6aba      	ldr	r2, [r7, #40]	; 0x28
 800521c:	649a      	str	r2, [r3, #72]	; 0x48
 800521e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005220:	2200      	movs	r2, #0
 8005222:	64da      	str	r2, [r3, #76]	; 0x4c
 8005224:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005226:	3304      	adds	r3, #4
 8005228:	4618      	mov	r0, r3
 800522a:	f7ff f9cd 	bl	80045c8 <vListInitialiseItem>
 800522e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005230:	3318      	adds	r3, #24
 8005232:	4618      	mov	r0, r3
 8005234:	f7ff f9c8 	bl	80045c8 <vListInitialiseItem>
 8005238:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800523a:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 800523c:	611a      	str	r2, [r3, #16]
 800523e:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8005240:	f1c3 0205 	rsb	r2, r3, #5
 8005244:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005246:	619a      	str	r2, [r3, #24]
 8005248:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800524a:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 800524c:	625a      	str	r2, [r3, #36]	; 0x24
 800524e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005250:	2200      	movs	r2, #0
 8005252:	f8c3 2478 	str.w	r2, [r3, #1144]	; 0x478
 8005256:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005258:	2200      	movs	r2, #0
 800525a:	f883 247c 	strb.w	r2, [r3, #1148]	; 0x47c
 800525e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005260:	3350      	adds	r3, #80	; 0x50
 8005262:	4618      	mov	r0, r3
 8005264:	2100      	movs	r1, #0
 8005266:	f44f 6285 	mov.w	r2, #1064	; 0x428
 800526a:	f001 fda8 	bl	8006dbe <memset>
 800526e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005270:	f503 724f 	add.w	r2, r3, #828	; 0x33c
 8005274:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005276:	655a      	str	r2, [r3, #84]	; 0x54
 8005278:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800527a:	f503 7269 	add.w	r2, r3, #932	; 0x3a4
 800527e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005280:	659a      	str	r2, [r3, #88]	; 0x58
 8005282:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8005284:	f203 420c 	addw	r2, r3, #1036	; 0x40c
 8005288:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800528a:	65da      	str	r2, [r3, #92]	; 0x5c
 800528c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800528e:	4a1e      	ldr	r2, [pc, #120]	; (8005308 <prvInitialiseNewTask+0x1ac>)
 8005290:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
 8005294:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8005296:	f04f 0201 	mov.w	r2, #1
 800529a:	f04f 0300 	mov.w	r3, #0
 800529e:	e9c1 233e 	strd	r2, r3, [r1, #248]	; 0xf8
 80052a2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80052a4:	f243 320e 	movw	r2, #13070	; 0x330e
 80052a8:	f8a3 2100 	strh.w	r2, [r3, #256]	; 0x100
 80052ac:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80052ae:	f64a 32cd 	movw	r2, #43981	; 0xabcd
 80052b2:	f8a3 2102 	strh.w	r2, [r3, #258]	; 0x102
 80052b6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80052b8:	f241 2234 	movw	r2, #4660	; 0x1234
 80052bc:	f8a3 2104 	strh.w	r2, [r3, #260]	; 0x104
 80052c0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80052c2:	f24e 626d 	movw	r2, #58989	; 0xe66d
 80052c6:	f8a3 2106 	strh.w	r2, [r3, #262]	; 0x106
 80052ca:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80052cc:	f64d 62ec 	movw	r2, #57068	; 0xdeec
 80052d0:	f8a3 2108 	strh.w	r2, [r3, #264]	; 0x108
 80052d4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80052d6:	2205      	movs	r2, #5
 80052d8:	f8a3 210a 	strh.w	r2, [r3, #266]	; 0x10a
 80052dc:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80052de:	220b      	movs	r2, #11
 80052e0:	f8a3 210c 	strh.w	r2, [r3, #268]	; 0x10c
 80052e4:	69b8      	ldr	r0, [r7, #24]
 80052e6:	68f9      	ldr	r1, [r7, #12]
 80052e8:	683a      	ldr	r2, [r7, #0]
 80052ea:	f001 f925 	bl	8006538 <pxPortInitialiseStack>
 80052ee:	4602      	mov	r2, r0
 80052f0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80052f2:	601a      	str	r2, [r3, #0]
 80052f4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80052f6:	2b00      	cmp	r3, #0
 80052f8:	d002      	beq.n	8005300 <prvInitialiseNewTask+0x1a4>
 80052fa:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80052fc:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 80052fe:	601a      	str	r2, [r3, #0]
 8005300:	3720      	adds	r7, #32
 8005302:	46bd      	mov	sp, r7
 8005304:	bd80      	pop	{r7, pc}
 8005306:	bf00      	nop
 8005308:	08009500 	.word	0x08009500

0800530c <prvAddNewTaskToReadyList>:
 800530c:	b580      	push	{r7, lr}
 800530e:	b082      	sub	sp, #8
 8005310:	af00      	add	r7, sp, #0
 8005312:	6078      	str	r0, [r7, #4]
 8005314:	f001 fa36 	bl	8006784 <vPortEnterCritical>
 8005318:	4b2c      	ldr	r3, [pc, #176]	; (80053cc <prvAddNewTaskToReadyList+0xc0>)
 800531a:	681b      	ldr	r3, [r3, #0]
 800531c:	1c5a      	adds	r2, r3, #1
 800531e:	4b2b      	ldr	r3, [pc, #172]	; (80053cc <prvAddNewTaskToReadyList+0xc0>)
 8005320:	601a      	str	r2, [r3, #0]
 8005322:	4b2b      	ldr	r3, [pc, #172]	; (80053d0 <prvAddNewTaskToReadyList+0xc4>)
 8005324:	681b      	ldr	r3, [r3, #0]
 8005326:	2b00      	cmp	r3, #0
 8005328:	d109      	bne.n	800533e <prvAddNewTaskToReadyList+0x32>
 800532a:	4b29      	ldr	r3, [pc, #164]	; (80053d0 <prvAddNewTaskToReadyList+0xc4>)
 800532c:	687a      	ldr	r2, [r7, #4]
 800532e:	601a      	str	r2, [r3, #0]
 8005330:	4b26      	ldr	r3, [pc, #152]	; (80053cc <prvAddNewTaskToReadyList+0xc0>)
 8005332:	681b      	ldr	r3, [r3, #0]
 8005334:	2b01      	cmp	r3, #1
 8005336:	d110      	bne.n	800535a <prvAddNewTaskToReadyList+0x4e>
 8005338:	f000 fc42 	bl	8005bc0 <prvInitialiseTaskLists>
 800533c:	e00d      	b.n	800535a <prvAddNewTaskToReadyList+0x4e>
 800533e:	4b25      	ldr	r3, [pc, #148]	; (80053d4 <prvAddNewTaskToReadyList+0xc8>)
 8005340:	681b      	ldr	r3, [r3, #0]
 8005342:	2b00      	cmp	r3, #0
 8005344:	d109      	bne.n	800535a <prvAddNewTaskToReadyList+0x4e>
 8005346:	4b22      	ldr	r3, [pc, #136]	; (80053d0 <prvAddNewTaskToReadyList+0xc4>)
 8005348:	681b      	ldr	r3, [r3, #0]
 800534a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800534c:	687b      	ldr	r3, [r7, #4]
 800534e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8005350:	429a      	cmp	r2, r3
 8005352:	d802      	bhi.n	800535a <prvAddNewTaskToReadyList+0x4e>
 8005354:	4b1e      	ldr	r3, [pc, #120]	; (80053d0 <prvAddNewTaskToReadyList+0xc4>)
 8005356:	687a      	ldr	r2, [r7, #4]
 8005358:	601a      	str	r2, [r3, #0]
 800535a:	4b1f      	ldr	r3, [pc, #124]	; (80053d8 <prvAddNewTaskToReadyList+0xcc>)
 800535c:	681b      	ldr	r3, [r3, #0]
 800535e:	1c5a      	adds	r2, r3, #1
 8005360:	4b1d      	ldr	r3, [pc, #116]	; (80053d8 <prvAddNewTaskToReadyList+0xcc>)
 8005362:	601a      	str	r2, [r3, #0]
 8005364:	4b1c      	ldr	r3, [pc, #112]	; (80053d8 <prvAddNewTaskToReadyList+0xcc>)
 8005366:	681a      	ldr	r2, [r3, #0]
 8005368:	687b      	ldr	r3, [r7, #4]
 800536a:	641a      	str	r2, [r3, #64]	; 0x40
 800536c:	687b      	ldr	r3, [r7, #4]
 800536e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8005370:	2201      	movs	r2, #1
 8005372:	409a      	lsls	r2, r3
 8005374:	4b19      	ldr	r3, [pc, #100]	; (80053dc <prvAddNewTaskToReadyList+0xd0>)
 8005376:	681b      	ldr	r3, [r3, #0]
 8005378:	431a      	orrs	r2, r3
 800537a:	4b18      	ldr	r3, [pc, #96]	; (80053dc <prvAddNewTaskToReadyList+0xd0>)
 800537c:	601a      	str	r2, [r3, #0]
 800537e:	687b      	ldr	r3, [r7, #4]
 8005380:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8005382:	4613      	mov	r3, r2
 8005384:	009b      	lsls	r3, r3, #2
 8005386:	4413      	add	r3, r2
 8005388:	009b      	lsls	r3, r3, #2
 800538a:	4a15      	ldr	r2, [pc, #84]	; (80053e0 <prvAddNewTaskToReadyList+0xd4>)
 800538c:	441a      	add	r2, r3
 800538e:	687b      	ldr	r3, [r7, #4]
 8005390:	3304      	adds	r3, #4
 8005392:	4610      	mov	r0, r2
 8005394:	4619      	mov	r1, r3
 8005396:	f7ff f923 	bl	80045e0 <vListInsertEnd>
 800539a:	f001 fa21 	bl	80067e0 <vPortExitCritical>
 800539e:	4b0d      	ldr	r3, [pc, #52]	; (80053d4 <prvAddNewTaskToReadyList+0xc8>)
 80053a0:	681b      	ldr	r3, [r3, #0]
 80053a2:	2b00      	cmp	r3, #0
 80053a4:	d00e      	beq.n	80053c4 <prvAddNewTaskToReadyList+0xb8>
 80053a6:	4b0a      	ldr	r3, [pc, #40]	; (80053d0 <prvAddNewTaskToReadyList+0xc4>)
 80053a8:	681b      	ldr	r3, [r3, #0]
 80053aa:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80053ac:	687b      	ldr	r3, [r7, #4]
 80053ae:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80053b0:	429a      	cmp	r2, r3
 80053b2:	d207      	bcs.n	80053c4 <prvAddNewTaskToReadyList+0xb8>
 80053b4:	4b0b      	ldr	r3, [pc, #44]	; (80053e4 <prvAddNewTaskToReadyList+0xd8>)
 80053b6:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 80053ba:	601a      	str	r2, [r3, #0]
 80053bc:	f3bf 8f4f 	dsb	sy
 80053c0:	f3bf 8f6f 	isb	sy
 80053c4:	3708      	adds	r7, #8
 80053c6:	46bd      	mov	sp, r7
 80053c8:	bd80      	pop	{r7, pc}
 80053ca:	bf00      	nop
 80053cc:	20000bb0 	.word	0x20000bb0
 80053d0:	20000ad8 	.word	0x20000ad8
 80053d4:	20000bbc 	.word	0x20000bbc
 80053d8:	20000bcc 	.word	0x20000bcc
 80053dc:	20000bb8 	.word	0x20000bb8
 80053e0:	20000adc 	.word	0x20000adc
 80053e4:	e000ed04 	.word	0xe000ed04

080053e8 <vTaskDelay>:
 80053e8:	b580      	push	{r7, lr}
 80053ea:	b084      	sub	sp, #16
 80053ec:	af00      	add	r7, sp, #0
 80053ee:	6078      	str	r0, [r7, #4]
 80053f0:	2300      	movs	r3, #0
 80053f2:	60fb      	str	r3, [r7, #12]
 80053f4:	687b      	ldr	r3, [r7, #4]
 80053f6:	2b00      	cmp	r3, #0
 80053f8:	d016      	beq.n	8005428 <vTaskDelay+0x40>
 80053fa:	4b12      	ldr	r3, [pc, #72]	; (8005444 <vTaskDelay+0x5c>)
 80053fc:	681b      	ldr	r3, [r3, #0]
 80053fe:	2b00      	cmp	r3, #0
 8005400:	d009      	beq.n	8005416 <vTaskDelay+0x2e>
 8005402:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005406:	f383 8811 	msr	BASEPRI, r3
 800540a:	f3bf 8f6f 	isb	sy
 800540e:	f3bf 8f4f 	dsb	sy
 8005412:	60bb      	str	r3, [r7, #8]
 8005414:	e7fe      	b.n	8005414 <vTaskDelay+0x2c>
 8005416:	f000 f889 	bl	800552c <vTaskSuspendAll>
 800541a:	6878      	ldr	r0, [r7, #4]
 800541c:	2100      	movs	r1, #0
 800541e:	f000 fd2d 	bl	8005e7c <prvAddCurrentTaskToDelayedList>
 8005422:	f000 f891 	bl	8005548 <xTaskResumeAll>
 8005426:	60f8      	str	r0, [r7, #12]
 8005428:	68fb      	ldr	r3, [r7, #12]
 800542a:	2b00      	cmp	r3, #0
 800542c:	d107      	bne.n	800543e <vTaskDelay+0x56>
 800542e:	4b06      	ldr	r3, [pc, #24]	; (8005448 <vTaskDelay+0x60>)
 8005430:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 8005434:	601a      	str	r2, [r3, #0]
 8005436:	f3bf 8f4f 	dsb	sy
 800543a:	f3bf 8f6f 	isb	sy
 800543e:	3710      	adds	r7, #16
 8005440:	46bd      	mov	sp, r7
 8005442:	bd80      	pop	{r7, pc}
 8005444:	20000bd8 	.word	0x20000bd8
 8005448:	e000ed04 	.word	0xe000ed04

0800544c <vTaskStartScheduler>:
 800544c:	b580      	push	{r7, lr}
 800544e:	b08a      	sub	sp, #40	; 0x28
 8005450:	af04      	add	r7, sp, #16
 8005452:	2300      	movs	r3, #0
 8005454:	60bb      	str	r3, [r7, #8]
 8005456:	2300      	movs	r3, #0
 8005458:	607b      	str	r3, [r7, #4]
 800545a:	f107 0108 	add.w	r1, r7, #8
 800545e:	1d3a      	adds	r2, r7, #4
 8005460:	463b      	mov	r3, r7
 8005462:	4608      	mov	r0, r1
 8005464:	4611      	mov	r1, r2
 8005466:	461a      	mov	r2, r3
 8005468:	f7ff f85c 	bl	8004524 <vApplicationGetIdleTaskMemory>
 800546c:	683b      	ldr	r3, [r7, #0]
 800546e:	6879      	ldr	r1, [r7, #4]
 8005470:	68ba      	ldr	r2, [r7, #8]
 8005472:	2000      	movs	r0, #0
 8005474:	9000      	str	r0, [sp, #0]
 8005476:	9101      	str	r1, [sp, #4]
 8005478:	9202      	str	r2, [sp, #8]
 800547a:	4824      	ldr	r0, [pc, #144]	; (800550c <vTaskStartScheduler+0xc0>)
 800547c:	4924      	ldr	r1, [pc, #144]	; (8005510 <vTaskStartScheduler+0xc4>)
 800547e:	461a      	mov	r2, r3
 8005480:	2300      	movs	r3, #0
 8005482:	f7ff fe0f 	bl	80050a4 <xTaskCreateStatic>
 8005486:	4602      	mov	r2, r0
 8005488:	4b22      	ldr	r3, [pc, #136]	; (8005514 <vTaskStartScheduler+0xc8>)
 800548a:	601a      	str	r2, [r3, #0]
 800548c:	4b21      	ldr	r3, [pc, #132]	; (8005514 <vTaskStartScheduler+0xc8>)
 800548e:	681b      	ldr	r3, [r3, #0]
 8005490:	2b00      	cmp	r3, #0
 8005492:	d002      	beq.n	800549a <vTaskStartScheduler+0x4e>
 8005494:	2301      	movs	r3, #1
 8005496:	617b      	str	r3, [r7, #20]
 8005498:	e001      	b.n	800549e <vTaskStartScheduler+0x52>
 800549a:	2300      	movs	r3, #0
 800549c:	617b      	str	r3, [r7, #20]
 800549e:	697b      	ldr	r3, [r7, #20]
 80054a0:	2b01      	cmp	r3, #1
 80054a2:	d102      	bne.n	80054aa <vTaskStartScheduler+0x5e>
 80054a4:	f000 fd4e 	bl	8005f44 <xTimerCreateTimerTask>
 80054a8:	6178      	str	r0, [r7, #20]
 80054aa:	697b      	ldr	r3, [r7, #20]
 80054ac:	2b01      	cmp	r3, #1
 80054ae:	d11b      	bne.n	80054e8 <vTaskStartScheduler+0x9c>
 80054b0:	f04f 0350 	mov.w	r3, #80	; 0x50
 80054b4:	f383 8811 	msr	BASEPRI, r3
 80054b8:	f3bf 8f6f 	isb	sy
 80054bc:	f3bf 8f4f 	dsb	sy
 80054c0:	613b      	str	r3, [r7, #16]
 80054c2:	4b15      	ldr	r3, [pc, #84]	; (8005518 <vTaskStartScheduler+0xcc>)
 80054c4:	681b      	ldr	r3, [r3, #0]
 80054c6:	f103 0250 	add.w	r2, r3, #80	; 0x50
 80054ca:	4b14      	ldr	r3, [pc, #80]	; (800551c <vTaskStartScheduler+0xd0>)
 80054cc:	601a      	str	r2, [r3, #0]
 80054ce:	4b14      	ldr	r3, [pc, #80]	; (8005520 <vTaskStartScheduler+0xd4>)
 80054d0:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80054d4:	601a      	str	r2, [r3, #0]
 80054d6:	4b13      	ldr	r3, [pc, #76]	; (8005524 <vTaskStartScheduler+0xd8>)
 80054d8:	2201      	movs	r2, #1
 80054da:	601a      	str	r2, [r3, #0]
 80054dc:	4b12      	ldr	r3, [pc, #72]	; (8005528 <vTaskStartScheduler+0xdc>)
 80054de:	2200      	movs	r2, #0
 80054e0:	601a      	str	r2, [r3, #0]
 80054e2:	f001 f8b1 	bl	8006648 <xPortStartScheduler>
 80054e6:	e00d      	b.n	8005504 <vTaskStartScheduler+0xb8>
 80054e8:	697b      	ldr	r3, [r7, #20]
 80054ea:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 80054ee:	d109      	bne.n	8005504 <vTaskStartScheduler+0xb8>
 80054f0:	f04f 0350 	mov.w	r3, #80	; 0x50
 80054f4:	f383 8811 	msr	BASEPRI, r3
 80054f8:	f3bf 8f6f 	isb	sy
 80054fc:	f3bf 8f4f 	dsb	sy
 8005500:	60fb      	str	r3, [r7, #12]
 8005502:	e7fe      	b.n	8005502 <vTaskStartScheduler+0xb6>
 8005504:	3718      	adds	r7, #24
 8005506:	46bd      	mov	sp, r7
 8005508:	bd80      	pop	{r7, pc}
 800550a:	bf00      	nop
 800550c:	08005b8d 	.word	0x08005b8d
 8005510:	08009504 	.word	0x08009504
 8005514:	20000bd4 	.word	0x20000bd4
 8005518:	20000ad8 	.word	0x20000ad8
 800551c:	200001e0 	.word	0x200001e0
 8005520:	20000bd0 	.word	0x20000bd0
 8005524:	20000bbc 	.word	0x20000bbc
 8005528:	20000bb4 	.word	0x20000bb4

0800552c <vTaskSuspendAll>:
 800552c:	b480      	push	{r7}
 800552e:	af00      	add	r7, sp, #0
 8005530:	4b04      	ldr	r3, [pc, #16]	; (8005544 <vTaskSuspendAll+0x18>)
 8005532:	681b      	ldr	r3, [r3, #0]
 8005534:	1c5a      	adds	r2, r3, #1
 8005536:	4b03      	ldr	r3, [pc, #12]	; (8005544 <vTaskSuspendAll+0x18>)
 8005538:	601a      	str	r2, [r3, #0]
 800553a:	46bd      	mov	sp, r7
 800553c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8005540:	4770      	bx	lr
 8005542:	bf00      	nop
 8005544:	20000bd8 	.word	0x20000bd8

08005548 <xTaskResumeAll>:
 8005548:	b580      	push	{r7, lr}
 800554a:	b084      	sub	sp, #16
 800554c:	af00      	add	r7, sp, #0
 800554e:	2300      	movs	r3, #0
 8005550:	60fb      	str	r3, [r7, #12]
 8005552:	2300      	movs	r3, #0
 8005554:	60bb      	str	r3, [r7, #8]
 8005556:	4b41      	ldr	r3, [pc, #260]	; (800565c <xTaskResumeAll+0x114>)
 8005558:	681b      	ldr	r3, [r3, #0]
 800555a:	2b00      	cmp	r3, #0
 800555c:	d109      	bne.n	8005572 <xTaskResumeAll+0x2a>
 800555e:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005562:	f383 8811 	msr	BASEPRI, r3
 8005566:	f3bf 8f6f 	isb	sy
 800556a:	f3bf 8f4f 	dsb	sy
 800556e:	603b      	str	r3, [r7, #0]
 8005570:	e7fe      	b.n	8005570 <xTaskResumeAll+0x28>
 8005572:	f001 f907 	bl	8006784 <vPortEnterCritical>
 8005576:	4b39      	ldr	r3, [pc, #228]	; (800565c <xTaskResumeAll+0x114>)
 8005578:	681b      	ldr	r3, [r3, #0]
 800557a:	1e5a      	subs	r2, r3, #1
 800557c:	4b37      	ldr	r3, [pc, #220]	; (800565c <xTaskResumeAll+0x114>)
 800557e:	601a      	str	r2, [r3, #0]
 8005580:	4b36      	ldr	r3, [pc, #216]	; (800565c <xTaskResumeAll+0x114>)
 8005582:	681b      	ldr	r3, [r3, #0]
 8005584:	2b00      	cmp	r3, #0
 8005586:	d161      	bne.n	800564c <xTaskResumeAll+0x104>
 8005588:	4b35      	ldr	r3, [pc, #212]	; (8005660 <xTaskResumeAll+0x118>)
 800558a:	681b      	ldr	r3, [r3, #0]
 800558c:	2b00      	cmp	r3, #0
 800558e:	d05d      	beq.n	800564c <xTaskResumeAll+0x104>
 8005590:	e02e      	b.n	80055f0 <xTaskResumeAll+0xa8>
 8005592:	4b34      	ldr	r3, [pc, #208]	; (8005664 <xTaskResumeAll+0x11c>)
 8005594:	68db      	ldr	r3, [r3, #12]
 8005596:	68db      	ldr	r3, [r3, #12]
 8005598:	60fb      	str	r3, [r7, #12]
 800559a:	68fb      	ldr	r3, [r7, #12]
 800559c:	3318      	adds	r3, #24
 800559e:	4618      	mov	r0, r3
 80055a0:	f7ff f87a 	bl	8004698 <uxListRemove>
 80055a4:	68fb      	ldr	r3, [r7, #12]
 80055a6:	3304      	adds	r3, #4
 80055a8:	4618      	mov	r0, r3
 80055aa:	f7ff f875 	bl	8004698 <uxListRemove>
 80055ae:	68fb      	ldr	r3, [r7, #12]
 80055b0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80055b2:	2201      	movs	r2, #1
 80055b4:	409a      	lsls	r2, r3
 80055b6:	4b2c      	ldr	r3, [pc, #176]	; (8005668 <xTaskResumeAll+0x120>)
 80055b8:	681b      	ldr	r3, [r3, #0]
 80055ba:	431a      	orrs	r2, r3
 80055bc:	4b2a      	ldr	r3, [pc, #168]	; (8005668 <xTaskResumeAll+0x120>)
 80055be:	601a      	str	r2, [r3, #0]
 80055c0:	68fb      	ldr	r3, [r7, #12]
 80055c2:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80055c4:	4613      	mov	r3, r2
 80055c6:	009b      	lsls	r3, r3, #2
 80055c8:	4413      	add	r3, r2
 80055ca:	009b      	lsls	r3, r3, #2
 80055cc:	4a27      	ldr	r2, [pc, #156]	; (800566c <xTaskResumeAll+0x124>)
 80055ce:	441a      	add	r2, r3
 80055d0:	68fb      	ldr	r3, [r7, #12]
 80055d2:	3304      	adds	r3, #4
 80055d4:	4610      	mov	r0, r2
 80055d6:	4619      	mov	r1, r3
 80055d8:	f7ff f802 	bl	80045e0 <vListInsertEnd>
 80055dc:	68fb      	ldr	r3, [r7, #12]
 80055de:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80055e0:	4b23      	ldr	r3, [pc, #140]	; (8005670 <xTaskResumeAll+0x128>)
 80055e2:	681b      	ldr	r3, [r3, #0]
 80055e4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80055e6:	429a      	cmp	r2, r3
 80055e8:	d302      	bcc.n	80055f0 <xTaskResumeAll+0xa8>
 80055ea:	4b22      	ldr	r3, [pc, #136]	; (8005674 <xTaskResumeAll+0x12c>)
 80055ec:	2201      	movs	r2, #1
 80055ee:	601a      	str	r2, [r3, #0]
 80055f0:	4b1c      	ldr	r3, [pc, #112]	; (8005664 <xTaskResumeAll+0x11c>)
 80055f2:	681b      	ldr	r3, [r3, #0]
 80055f4:	2b00      	cmp	r3, #0
 80055f6:	d1cc      	bne.n	8005592 <xTaskResumeAll+0x4a>
 80055f8:	68fb      	ldr	r3, [r7, #12]
 80055fa:	2b00      	cmp	r3, #0
 80055fc:	d001      	beq.n	8005602 <xTaskResumeAll+0xba>
 80055fe:	f000 fb7b 	bl	8005cf8 <prvResetNextTaskUnblockTime>
 8005602:	4b1d      	ldr	r3, [pc, #116]	; (8005678 <xTaskResumeAll+0x130>)
 8005604:	681b      	ldr	r3, [r3, #0]
 8005606:	607b      	str	r3, [r7, #4]
 8005608:	687b      	ldr	r3, [r7, #4]
 800560a:	2b00      	cmp	r3, #0
 800560c:	d010      	beq.n	8005630 <xTaskResumeAll+0xe8>
 800560e:	f000 f847 	bl	80056a0 <xTaskIncrementTick>
 8005612:	4603      	mov	r3, r0
 8005614:	2b00      	cmp	r3, #0
 8005616:	d002      	beq.n	800561e <xTaskResumeAll+0xd6>
 8005618:	4b16      	ldr	r3, [pc, #88]	; (8005674 <xTaskResumeAll+0x12c>)
 800561a:	2201      	movs	r2, #1
 800561c:	601a      	str	r2, [r3, #0]
 800561e:	687b      	ldr	r3, [r7, #4]
 8005620:	3b01      	subs	r3, #1
 8005622:	607b      	str	r3, [r7, #4]
 8005624:	687b      	ldr	r3, [r7, #4]
 8005626:	2b00      	cmp	r3, #0
 8005628:	d1f1      	bne.n	800560e <xTaskResumeAll+0xc6>
 800562a:	4b13      	ldr	r3, [pc, #76]	; (8005678 <xTaskResumeAll+0x130>)
 800562c:	2200      	movs	r2, #0
 800562e:	601a      	str	r2, [r3, #0]
 8005630:	4b10      	ldr	r3, [pc, #64]	; (8005674 <xTaskResumeAll+0x12c>)
 8005632:	681b      	ldr	r3, [r3, #0]
 8005634:	2b00      	cmp	r3, #0
 8005636:	d009      	beq.n	800564c <xTaskResumeAll+0x104>
 8005638:	2301      	movs	r3, #1
 800563a:	60bb      	str	r3, [r7, #8]
 800563c:	4b0f      	ldr	r3, [pc, #60]	; (800567c <xTaskResumeAll+0x134>)
 800563e:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 8005642:	601a      	str	r2, [r3, #0]
 8005644:	f3bf 8f4f 	dsb	sy
 8005648:	f3bf 8f6f 	isb	sy
 800564c:	f001 f8c8 	bl	80067e0 <vPortExitCritical>
 8005650:	68bb      	ldr	r3, [r7, #8]
 8005652:	4618      	mov	r0, r3
 8005654:	3710      	adds	r7, #16
 8005656:	46bd      	mov	sp, r7
 8005658:	bd80      	pop	{r7, pc}
 800565a:	bf00      	nop
 800565c:	20000bd8 	.word	0x20000bd8
 8005660:	20000bb0 	.word	0x20000bb0
 8005664:	20000b70 	.word	0x20000b70
 8005668:	20000bb8 	.word	0x20000bb8
 800566c:	20000adc 	.word	0x20000adc
 8005670:	20000ad8 	.word	0x20000ad8
 8005674:	20000bc4 	.word	0x20000bc4
 8005678:	20000bc0 	.word	0x20000bc0
 800567c:	e000ed04 	.word	0xe000ed04

08005680 <xTaskGetTickCount>:
 8005680:	b480      	push	{r7}
 8005682:	b083      	sub	sp, #12
 8005684:	af00      	add	r7, sp, #0
 8005686:	4b05      	ldr	r3, [pc, #20]	; (800569c <xTaskGetTickCount+0x1c>)
 8005688:	681b      	ldr	r3, [r3, #0]
 800568a:	607b      	str	r3, [r7, #4]
 800568c:	687b      	ldr	r3, [r7, #4]
 800568e:	4618      	mov	r0, r3
 8005690:	370c      	adds	r7, #12
 8005692:	46bd      	mov	sp, r7
 8005694:	f85d 7b04 	ldr.w	r7, [sp], #4
 8005698:	4770      	bx	lr
 800569a:	bf00      	nop
 800569c:	20000bb4 	.word	0x20000bb4

080056a0 <xTaskIncrementTick>:
 80056a0:	b580      	push	{r7, lr}
 80056a2:	b086      	sub	sp, #24
 80056a4:	af00      	add	r7, sp, #0
 80056a6:	2300      	movs	r3, #0
 80056a8:	617b      	str	r3, [r7, #20]
 80056aa:	4b52      	ldr	r3, [pc, #328]	; (80057f4 <xTaskIncrementTick+0x154>)
 80056ac:	681b      	ldr	r3, [r3, #0]
 80056ae:	2b00      	cmp	r3, #0
 80056b0:	f040 808d 	bne.w	80057ce <xTaskIncrementTick+0x12e>
 80056b4:	4b50      	ldr	r3, [pc, #320]	; (80057f8 <xTaskIncrementTick+0x158>)
 80056b6:	681b      	ldr	r3, [r3, #0]
 80056b8:	3301      	adds	r3, #1
 80056ba:	613b      	str	r3, [r7, #16]
 80056bc:	4b4e      	ldr	r3, [pc, #312]	; (80057f8 <xTaskIncrementTick+0x158>)
 80056be:	693a      	ldr	r2, [r7, #16]
 80056c0:	601a      	str	r2, [r3, #0]
 80056c2:	693b      	ldr	r3, [r7, #16]
 80056c4:	2b00      	cmp	r3, #0
 80056c6:	d11f      	bne.n	8005708 <xTaskIncrementTick+0x68>
 80056c8:	4b4c      	ldr	r3, [pc, #304]	; (80057fc <xTaskIncrementTick+0x15c>)
 80056ca:	681b      	ldr	r3, [r3, #0]
 80056cc:	681b      	ldr	r3, [r3, #0]
 80056ce:	2b00      	cmp	r3, #0
 80056d0:	d009      	beq.n	80056e6 <xTaskIncrementTick+0x46>
 80056d2:	f04f 0350 	mov.w	r3, #80	; 0x50
 80056d6:	f383 8811 	msr	BASEPRI, r3
 80056da:	f3bf 8f6f 	isb	sy
 80056de:	f3bf 8f4f 	dsb	sy
 80056e2:	603b      	str	r3, [r7, #0]
 80056e4:	e7fe      	b.n	80056e4 <xTaskIncrementTick+0x44>
 80056e6:	4b45      	ldr	r3, [pc, #276]	; (80057fc <xTaskIncrementTick+0x15c>)
 80056e8:	681b      	ldr	r3, [r3, #0]
 80056ea:	60fb      	str	r3, [r7, #12]
 80056ec:	4b44      	ldr	r3, [pc, #272]	; (8005800 <xTaskIncrementTick+0x160>)
 80056ee:	681a      	ldr	r2, [r3, #0]
 80056f0:	4b42      	ldr	r3, [pc, #264]	; (80057fc <xTaskIncrementTick+0x15c>)
 80056f2:	601a      	str	r2, [r3, #0]
 80056f4:	4b42      	ldr	r3, [pc, #264]	; (8005800 <xTaskIncrementTick+0x160>)
 80056f6:	68fa      	ldr	r2, [r7, #12]
 80056f8:	601a      	str	r2, [r3, #0]
 80056fa:	4b42      	ldr	r3, [pc, #264]	; (8005804 <xTaskIncrementTick+0x164>)
 80056fc:	681b      	ldr	r3, [r3, #0]
 80056fe:	1c5a      	adds	r2, r3, #1
 8005700:	4b40      	ldr	r3, [pc, #256]	; (8005804 <xTaskIncrementTick+0x164>)
 8005702:	601a      	str	r2, [r3, #0]
 8005704:	f000 faf8 	bl	8005cf8 <prvResetNextTaskUnblockTime>
 8005708:	4b3f      	ldr	r3, [pc, #252]	; (8005808 <xTaskIncrementTick+0x168>)
 800570a:	681b      	ldr	r3, [r3, #0]
 800570c:	693a      	ldr	r2, [r7, #16]
 800570e:	429a      	cmp	r2, r3
 8005710:	d348      	bcc.n	80057a4 <xTaskIncrementTick+0x104>
 8005712:	4b3a      	ldr	r3, [pc, #232]	; (80057fc <xTaskIncrementTick+0x15c>)
 8005714:	681b      	ldr	r3, [r3, #0]
 8005716:	681b      	ldr	r3, [r3, #0]
 8005718:	2b00      	cmp	r3, #0
 800571a:	d104      	bne.n	8005726 <xTaskIncrementTick+0x86>
 800571c:	4b3a      	ldr	r3, [pc, #232]	; (8005808 <xTaskIncrementTick+0x168>)
 800571e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8005722:	601a      	str	r2, [r3, #0]
 8005724:	e03e      	b.n	80057a4 <xTaskIncrementTick+0x104>
 8005726:	4b35      	ldr	r3, [pc, #212]	; (80057fc <xTaskIncrementTick+0x15c>)
 8005728:	681b      	ldr	r3, [r3, #0]
 800572a:	68db      	ldr	r3, [r3, #12]
 800572c:	68db      	ldr	r3, [r3, #12]
 800572e:	60bb      	str	r3, [r7, #8]
 8005730:	68bb      	ldr	r3, [r7, #8]
 8005732:	685b      	ldr	r3, [r3, #4]
 8005734:	607b      	str	r3, [r7, #4]
 8005736:	693a      	ldr	r2, [r7, #16]
 8005738:	687b      	ldr	r3, [r7, #4]
 800573a:	429a      	cmp	r2, r3
 800573c:	d203      	bcs.n	8005746 <xTaskIncrementTick+0xa6>
 800573e:	4b32      	ldr	r3, [pc, #200]	; (8005808 <xTaskIncrementTick+0x168>)
 8005740:	687a      	ldr	r2, [r7, #4]
 8005742:	601a      	str	r2, [r3, #0]
 8005744:	e02e      	b.n	80057a4 <xTaskIncrementTick+0x104>
 8005746:	68bb      	ldr	r3, [r7, #8]
 8005748:	3304      	adds	r3, #4
 800574a:	4618      	mov	r0, r3
 800574c:	f7fe ffa4 	bl	8004698 <uxListRemove>
 8005750:	68bb      	ldr	r3, [r7, #8]
 8005752:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8005754:	2b00      	cmp	r3, #0
 8005756:	d004      	beq.n	8005762 <xTaskIncrementTick+0xc2>
 8005758:	68bb      	ldr	r3, [r7, #8]
 800575a:	3318      	adds	r3, #24
 800575c:	4618      	mov	r0, r3
 800575e:	f7fe ff9b 	bl	8004698 <uxListRemove>
 8005762:	68bb      	ldr	r3, [r7, #8]
 8005764:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8005766:	2201      	movs	r2, #1
 8005768:	409a      	lsls	r2, r3
 800576a:	4b28      	ldr	r3, [pc, #160]	; (800580c <xTaskIncrementTick+0x16c>)
 800576c:	681b      	ldr	r3, [r3, #0]
 800576e:	431a      	orrs	r2, r3
 8005770:	4b26      	ldr	r3, [pc, #152]	; (800580c <xTaskIncrementTick+0x16c>)
 8005772:	601a      	str	r2, [r3, #0]
 8005774:	68bb      	ldr	r3, [r7, #8]
 8005776:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8005778:	4613      	mov	r3, r2
 800577a:	009b      	lsls	r3, r3, #2
 800577c:	4413      	add	r3, r2
 800577e:	009b      	lsls	r3, r3, #2
 8005780:	4a23      	ldr	r2, [pc, #140]	; (8005810 <xTaskIncrementTick+0x170>)
 8005782:	441a      	add	r2, r3
 8005784:	68bb      	ldr	r3, [r7, #8]
 8005786:	3304      	adds	r3, #4
 8005788:	4610      	mov	r0, r2
 800578a:	4619      	mov	r1, r3
 800578c:	f7fe ff28 	bl	80045e0 <vListInsertEnd>
 8005790:	68bb      	ldr	r3, [r7, #8]
 8005792:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8005794:	4b1f      	ldr	r3, [pc, #124]	; (8005814 <xTaskIncrementTick+0x174>)
 8005796:	681b      	ldr	r3, [r3, #0]
 8005798:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800579a:	429a      	cmp	r2, r3
 800579c:	d301      	bcc.n	80057a2 <xTaskIncrementTick+0x102>
 800579e:	2301      	movs	r3, #1
 80057a0:	617b      	str	r3, [r7, #20]
 80057a2:	e7b6      	b.n	8005712 <xTaskIncrementTick+0x72>
 80057a4:	4b1b      	ldr	r3, [pc, #108]	; (8005814 <xTaskIncrementTick+0x174>)
 80057a6:	681b      	ldr	r3, [r3, #0]
 80057a8:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80057aa:	4919      	ldr	r1, [pc, #100]	; (8005810 <xTaskIncrementTick+0x170>)
 80057ac:	4613      	mov	r3, r2
 80057ae:	009b      	lsls	r3, r3, #2
 80057b0:	4413      	add	r3, r2
 80057b2:	009b      	lsls	r3, r3, #2
 80057b4:	440b      	add	r3, r1
 80057b6:	681b      	ldr	r3, [r3, #0]
 80057b8:	2b01      	cmp	r3, #1
 80057ba:	d901      	bls.n	80057c0 <xTaskIncrementTick+0x120>
 80057bc:	2301      	movs	r3, #1
 80057be:	617b      	str	r3, [r7, #20]
 80057c0:	4b15      	ldr	r3, [pc, #84]	; (8005818 <xTaskIncrementTick+0x178>)
 80057c2:	681b      	ldr	r3, [r3, #0]
 80057c4:	2b00      	cmp	r3, #0
 80057c6:	d101      	bne.n	80057cc <xTaskIncrementTick+0x12c>
 80057c8:	f7fe fe96 	bl	80044f8 <vApplicationTickHook>
 80057cc:	e006      	b.n	80057dc <xTaskIncrementTick+0x13c>
 80057ce:	4b12      	ldr	r3, [pc, #72]	; (8005818 <xTaskIncrementTick+0x178>)
 80057d0:	681b      	ldr	r3, [r3, #0]
 80057d2:	1c5a      	adds	r2, r3, #1
 80057d4:	4b10      	ldr	r3, [pc, #64]	; (8005818 <xTaskIncrementTick+0x178>)
 80057d6:	601a      	str	r2, [r3, #0]
 80057d8:	f7fe fe8e 	bl	80044f8 <vApplicationTickHook>
 80057dc:	4b0f      	ldr	r3, [pc, #60]	; (800581c <xTaskIncrementTick+0x17c>)
 80057de:	681b      	ldr	r3, [r3, #0]
 80057e0:	2b00      	cmp	r3, #0
 80057e2:	d001      	beq.n	80057e8 <xTaskIncrementTick+0x148>
 80057e4:	2301      	movs	r3, #1
 80057e6:	617b      	str	r3, [r7, #20]
 80057e8:	697b      	ldr	r3, [r7, #20]
 80057ea:	4618      	mov	r0, r3
 80057ec:	3718      	adds	r7, #24
 80057ee:	46bd      	mov	sp, r7
 80057f0:	bd80      	pop	{r7, pc}
 80057f2:	bf00      	nop
 80057f4:	20000bd8 	.word	0x20000bd8
 80057f8:	20000bb4 	.word	0x20000bb4
 80057fc:	20000b68 	.word	0x20000b68
 8005800:	20000b6c 	.word	0x20000b6c
 8005804:	20000bc8 	.word	0x20000bc8
 8005808:	20000bd0 	.word	0x20000bd0
 800580c:	20000bb8 	.word	0x20000bb8
 8005810:	20000adc 	.word	0x20000adc
 8005814:	20000ad8 	.word	0x20000ad8
 8005818:	20000bc0 	.word	0x20000bc0
 800581c:	20000bc4 	.word	0x20000bc4

08005820 <vTaskSwitchContext>:
 8005820:	b580      	push	{r7, lr}
 8005822:	b088      	sub	sp, #32
 8005824:	af00      	add	r7, sp, #0
 8005826:	4b3b      	ldr	r3, [pc, #236]	; (8005914 <vTaskSwitchContext+0xf4>)
 8005828:	681b      	ldr	r3, [r3, #0]
 800582a:	2b00      	cmp	r3, #0
 800582c:	d003      	beq.n	8005836 <vTaskSwitchContext+0x16>
 800582e:	4b3a      	ldr	r3, [pc, #232]	; (8005918 <vTaskSwitchContext+0xf8>)
 8005830:	2201      	movs	r2, #1
 8005832:	601a      	str	r2, [r3, #0]
 8005834:	e06b      	b.n	800590e <vTaskSwitchContext+0xee>
 8005836:	4b38      	ldr	r3, [pc, #224]	; (8005918 <vTaskSwitchContext+0xf8>)
 8005838:	2200      	movs	r2, #0
 800583a:	601a      	str	r2, [r3, #0]
 800583c:	4b37      	ldr	r3, [pc, #220]	; (800591c <vTaskSwitchContext+0xfc>)
 800583e:	681b      	ldr	r3, [r3, #0]
 8005840:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8005842:	61fb      	str	r3, [r7, #28]
 8005844:	f04f 33a5 	mov.w	r3, #2779096485	; 0xa5a5a5a5
 8005848:	61bb      	str	r3, [r7, #24]
 800584a:	69fb      	ldr	r3, [r7, #28]
 800584c:	681a      	ldr	r2, [r3, #0]
 800584e:	69bb      	ldr	r3, [r7, #24]
 8005850:	429a      	cmp	r2, r3
 8005852:	d111      	bne.n	8005878 <vTaskSwitchContext+0x58>
 8005854:	69fb      	ldr	r3, [r7, #28]
 8005856:	3304      	adds	r3, #4
 8005858:	681a      	ldr	r2, [r3, #0]
 800585a:	69bb      	ldr	r3, [r7, #24]
 800585c:	429a      	cmp	r2, r3
 800585e:	d10b      	bne.n	8005878 <vTaskSwitchContext+0x58>
 8005860:	69fb      	ldr	r3, [r7, #28]
 8005862:	3308      	adds	r3, #8
 8005864:	681a      	ldr	r2, [r3, #0]
 8005866:	69bb      	ldr	r3, [r7, #24]
 8005868:	429a      	cmp	r2, r3
 800586a:	d105      	bne.n	8005878 <vTaskSwitchContext+0x58>
 800586c:	69fb      	ldr	r3, [r7, #28]
 800586e:	330c      	adds	r3, #12
 8005870:	681a      	ldr	r2, [r3, #0]
 8005872:	69bb      	ldr	r3, [r7, #24]
 8005874:	429a      	cmp	r2, r3
 8005876:	d008      	beq.n	800588a <vTaskSwitchContext+0x6a>
 8005878:	4b28      	ldr	r3, [pc, #160]	; (800591c <vTaskSwitchContext+0xfc>)
 800587a:	681a      	ldr	r2, [r3, #0]
 800587c:	4b27      	ldr	r3, [pc, #156]	; (800591c <vTaskSwitchContext+0xfc>)
 800587e:	681b      	ldr	r3, [r3, #0]
 8005880:	3334      	adds	r3, #52	; 0x34
 8005882:	4610      	mov	r0, r2
 8005884:	4619      	mov	r1, r3
 8005886:	f7fe fe3d 	bl	8004504 <vApplicationStackOverflowHook>
 800588a:	4b25      	ldr	r3, [pc, #148]	; (8005920 <vTaskSwitchContext+0x100>)
 800588c:	681b      	ldr	r3, [r3, #0]
 800588e:	60fb      	str	r3, [r7, #12]
 8005890:	68fb      	ldr	r3, [r7, #12]
 8005892:	fab3 f383 	clz	r3, r3
 8005896:	72fb      	strb	r3, [r7, #11]
 8005898:	7afb      	ldrb	r3, [r7, #11]
 800589a:	f1c3 031f 	rsb	r3, r3, #31
 800589e:	617b      	str	r3, [r7, #20]
 80058a0:	4920      	ldr	r1, [pc, #128]	; (8005924 <vTaskSwitchContext+0x104>)
 80058a2:	697a      	ldr	r2, [r7, #20]
 80058a4:	4613      	mov	r3, r2
 80058a6:	009b      	lsls	r3, r3, #2
 80058a8:	4413      	add	r3, r2
 80058aa:	009b      	lsls	r3, r3, #2
 80058ac:	440b      	add	r3, r1
 80058ae:	681b      	ldr	r3, [r3, #0]
 80058b0:	2b00      	cmp	r3, #0
 80058b2:	d109      	bne.n	80058c8 <vTaskSwitchContext+0xa8>
 80058b4:	f04f 0350 	mov.w	r3, #80	; 0x50
 80058b8:	f383 8811 	msr	BASEPRI, r3
 80058bc:	f3bf 8f6f 	isb	sy
 80058c0:	f3bf 8f4f 	dsb	sy
 80058c4:	607b      	str	r3, [r7, #4]
 80058c6:	e7fe      	b.n	80058c6 <vTaskSwitchContext+0xa6>
 80058c8:	697a      	ldr	r2, [r7, #20]
 80058ca:	4613      	mov	r3, r2
 80058cc:	009b      	lsls	r3, r3, #2
 80058ce:	4413      	add	r3, r2
 80058d0:	009b      	lsls	r3, r3, #2
 80058d2:	4a14      	ldr	r2, [pc, #80]	; (8005924 <vTaskSwitchContext+0x104>)
 80058d4:	4413      	add	r3, r2
 80058d6:	613b      	str	r3, [r7, #16]
 80058d8:	693b      	ldr	r3, [r7, #16]
 80058da:	685b      	ldr	r3, [r3, #4]
 80058dc:	685a      	ldr	r2, [r3, #4]
 80058de:	693b      	ldr	r3, [r7, #16]
 80058e0:	605a      	str	r2, [r3, #4]
 80058e2:	693b      	ldr	r3, [r7, #16]
 80058e4:	685a      	ldr	r2, [r3, #4]
 80058e6:	693b      	ldr	r3, [r7, #16]
 80058e8:	3308      	adds	r3, #8
 80058ea:	429a      	cmp	r2, r3
 80058ec:	d104      	bne.n	80058f8 <vTaskSwitchContext+0xd8>
 80058ee:	693b      	ldr	r3, [r7, #16]
 80058f0:	685b      	ldr	r3, [r3, #4]
 80058f2:	685a      	ldr	r2, [r3, #4]
 80058f4:	693b      	ldr	r3, [r7, #16]
 80058f6:	605a      	str	r2, [r3, #4]
 80058f8:	693b      	ldr	r3, [r7, #16]
 80058fa:	685b      	ldr	r3, [r3, #4]
 80058fc:	68da      	ldr	r2, [r3, #12]
 80058fe:	4b07      	ldr	r3, [pc, #28]	; (800591c <vTaskSwitchContext+0xfc>)
 8005900:	601a      	str	r2, [r3, #0]
 8005902:	4b06      	ldr	r3, [pc, #24]	; (800591c <vTaskSwitchContext+0xfc>)
 8005904:	681b      	ldr	r3, [r3, #0]
 8005906:	f103 0250 	add.w	r2, r3, #80	; 0x50
 800590a:	4b07      	ldr	r3, [pc, #28]	; (8005928 <vTaskSwitchContext+0x108>)
 800590c:	601a      	str	r2, [r3, #0]
 800590e:	3720      	adds	r7, #32
 8005910:	46bd      	mov	sp, r7
 8005912:	bd80      	pop	{r7, pc}
 8005914:	20000bd8 	.word	0x20000bd8
 8005918:	20000bc4 	.word	0x20000bc4
 800591c:	20000ad8 	.word	0x20000ad8
 8005920:	20000bb8 	.word	0x20000bb8
 8005924:	20000adc 	.word	0x20000adc
 8005928:	200001e0 	.word	0x200001e0

0800592c <vTaskPlaceOnEventList>:
 800592c:	b580      	push	{r7, lr}
 800592e:	b084      	sub	sp, #16
 8005930:	af00      	add	r7, sp, #0
 8005932:	6078      	str	r0, [r7, #4]
 8005934:	6039      	str	r1, [r7, #0]
 8005936:	687b      	ldr	r3, [r7, #4]
 8005938:	2b00      	cmp	r3, #0
 800593a:	d109      	bne.n	8005950 <vTaskPlaceOnEventList+0x24>
 800593c:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005940:	f383 8811 	msr	BASEPRI, r3
 8005944:	f3bf 8f6f 	isb	sy
 8005948:	f3bf 8f4f 	dsb	sy
 800594c:	60fb      	str	r3, [r7, #12]
 800594e:	e7fe      	b.n	800594e <vTaskPlaceOnEventList+0x22>
 8005950:	4b06      	ldr	r3, [pc, #24]	; (800596c <vTaskPlaceOnEventList+0x40>)
 8005952:	681b      	ldr	r3, [r3, #0]
 8005954:	3318      	adds	r3, #24
 8005956:	6878      	ldr	r0, [r7, #4]
 8005958:	4619      	mov	r1, r3
 800595a:	f7fe fe65 	bl	8004628 <vListInsert>
 800595e:	6838      	ldr	r0, [r7, #0]
 8005960:	2101      	movs	r1, #1
 8005962:	f000 fa8b 	bl	8005e7c <prvAddCurrentTaskToDelayedList>
 8005966:	3710      	adds	r7, #16
 8005968:	46bd      	mov	sp, r7
 800596a:	bd80      	pop	{r7, pc}
 800596c:	20000ad8 	.word	0x20000ad8

08005970 <vTaskPlaceOnEventListRestricted>:
 8005970:	b580      	push	{r7, lr}
 8005972:	b086      	sub	sp, #24
 8005974:	af00      	add	r7, sp, #0
 8005976:	60f8      	str	r0, [r7, #12]
 8005978:	60b9      	str	r1, [r7, #8]
 800597a:	607a      	str	r2, [r7, #4]
 800597c:	68fb      	ldr	r3, [r7, #12]
 800597e:	2b00      	cmp	r3, #0
 8005980:	d109      	bne.n	8005996 <vTaskPlaceOnEventListRestricted+0x26>
 8005982:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005986:	f383 8811 	msr	BASEPRI, r3
 800598a:	f3bf 8f6f 	isb	sy
 800598e:	f3bf 8f4f 	dsb	sy
 8005992:	617b      	str	r3, [r7, #20]
 8005994:	e7fe      	b.n	8005994 <vTaskPlaceOnEventListRestricted+0x24>
 8005996:	4b0a      	ldr	r3, [pc, #40]	; (80059c0 <vTaskPlaceOnEventListRestricted+0x50>)
 8005998:	681b      	ldr	r3, [r3, #0]
 800599a:	3318      	adds	r3, #24
 800599c:	68f8      	ldr	r0, [r7, #12]
 800599e:	4619      	mov	r1, r3
 80059a0:	f7fe fe1e 	bl	80045e0 <vListInsertEnd>
 80059a4:	687b      	ldr	r3, [r7, #4]
 80059a6:	2b00      	cmp	r3, #0
 80059a8:	d002      	beq.n	80059b0 <vTaskPlaceOnEventListRestricted+0x40>
 80059aa:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80059ae:	60bb      	str	r3, [r7, #8]
 80059b0:	68b8      	ldr	r0, [r7, #8]
 80059b2:	6879      	ldr	r1, [r7, #4]
 80059b4:	f000 fa62 	bl	8005e7c <prvAddCurrentTaskToDelayedList>
 80059b8:	3718      	adds	r7, #24
 80059ba:	46bd      	mov	sp, r7
 80059bc:	bd80      	pop	{r7, pc}
 80059be:	bf00      	nop
 80059c0:	20000ad8 	.word	0x20000ad8

080059c4 <xTaskRemoveFromEventList>:
 80059c4:	b580      	push	{r7, lr}
 80059c6:	b086      	sub	sp, #24
 80059c8:	af00      	add	r7, sp, #0
 80059ca:	6078      	str	r0, [r7, #4]
 80059cc:	687b      	ldr	r3, [r7, #4]
 80059ce:	68db      	ldr	r3, [r3, #12]
 80059d0:	68db      	ldr	r3, [r3, #12]
 80059d2:	613b      	str	r3, [r7, #16]
 80059d4:	693b      	ldr	r3, [r7, #16]
 80059d6:	2b00      	cmp	r3, #0
 80059d8:	d109      	bne.n	80059ee <xTaskRemoveFromEventList+0x2a>
 80059da:	f04f 0350 	mov.w	r3, #80	; 0x50
 80059de:	f383 8811 	msr	BASEPRI, r3
 80059e2:	f3bf 8f6f 	isb	sy
 80059e6:	f3bf 8f4f 	dsb	sy
 80059ea:	60fb      	str	r3, [r7, #12]
 80059ec:	e7fe      	b.n	80059ec <xTaskRemoveFromEventList+0x28>
 80059ee:	693b      	ldr	r3, [r7, #16]
 80059f0:	3318      	adds	r3, #24
 80059f2:	4618      	mov	r0, r3
 80059f4:	f7fe fe50 	bl	8004698 <uxListRemove>
 80059f8:	4b1d      	ldr	r3, [pc, #116]	; (8005a70 <xTaskRemoveFromEventList+0xac>)
 80059fa:	681b      	ldr	r3, [r3, #0]
 80059fc:	2b00      	cmp	r3, #0
 80059fe:	d11c      	bne.n	8005a3a <xTaskRemoveFromEventList+0x76>
 8005a00:	693b      	ldr	r3, [r7, #16]
 8005a02:	3304      	adds	r3, #4
 8005a04:	4618      	mov	r0, r3
 8005a06:	f7fe fe47 	bl	8004698 <uxListRemove>
 8005a0a:	693b      	ldr	r3, [r7, #16]
 8005a0c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8005a0e:	2201      	movs	r2, #1
 8005a10:	409a      	lsls	r2, r3
 8005a12:	4b18      	ldr	r3, [pc, #96]	; (8005a74 <xTaskRemoveFromEventList+0xb0>)
 8005a14:	681b      	ldr	r3, [r3, #0]
 8005a16:	431a      	orrs	r2, r3
 8005a18:	4b16      	ldr	r3, [pc, #88]	; (8005a74 <xTaskRemoveFromEventList+0xb0>)
 8005a1a:	601a      	str	r2, [r3, #0]
 8005a1c:	693b      	ldr	r3, [r7, #16]
 8005a1e:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8005a20:	4613      	mov	r3, r2
 8005a22:	009b      	lsls	r3, r3, #2
 8005a24:	4413      	add	r3, r2
 8005a26:	009b      	lsls	r3, r3, #2
 8005a28:	4a13      	ldr	r2, [pc, #76]	; (8005a78 <xTaskRemoveFromEventList+0xb4>)
 8005a2a:	441a      	add	r2, r3
 8005a2c:	693b      	ldr	r3, [r7, #16]
 8005a2e:	3304      	adds	r3, #4
 8005a30:	4610      	mov	r0, r2
 8005a32:	4619      	mov	r1, r3
 8005a34:	f7fe fdd4 	bl	80045e0 <vListInsertEnd>
 8005a38:	e005      	b.n	8005a46 <xTaskRemoveFromEventList+0x82>
 8005a3a:	693b      	ldr	r3, [r7, #16]
 8005a3c:	3318      	adds	r3, #24
 8005a3e:	480f      	ldr	r0, [pc, #60]	; (8005a7c <xTaskRemoveFromEventList+0xb8>)
 8005a40:	4619      	mov	r1, r3
 8005a42:	f7fe fdcd 	bl	80045e0 <vListInsertEnd>
 8005a46:	693b      	ldr	r3, [r7, #16]
 8005a48:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8005a4a:	4b0d      	ldr	r3, [pc, #52]	; (8005a80 <xTaskRemoveFromEventList+0xbc>)
 8005a4c:	681b      	ldr	r3, [r3, #0]
 8005a4e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8005a50:	429a      	cmp	r2, r3
 8005a52:	d905      	bls.n	8005a60 <xTaskRemoveFromEventList+0x9c>
 8005a54:	2301      	movs	r3, #1
 8005a56:	617b      	str	r3, [r7, #20]
 8005a58:	4b0a      	ldr	r3, [pc, #40]	; (8005a84 <xTaskRemoveFromEventList+0xc0>)
 8005a5a:	2201      	movs	r2, #1
 8005a5c:	601a      	str	r2, [r3, #0]
 8005a5e:	e001      	b.n	8005a64 <xTaskRemoveFromEventList+0xa0>
 8005a60:	2300      	movs	r3, #0
 8005a62:	617b      	str	r3, [r7, #20]
 8005a64:	697b      	ldr	r3, [r7, #20]
 8005a66:	4618      	mov	r0, r3
 8005a68:	3718      	adds	r7, #24
 8005a6a:	46bd      	mov	sp, r7
 8005a6c:	bd80      	pop	{r7, pc}
 8005a6e:	bf00      	nop
 8005a70:	20000bd8 	.word	0x20000bd8
 8005a74:	20000bb8 	.word	0x20000bb8
 8005a78:	20000adc 	.word	0x20000adc
 8005a7c:	20000b70 	.word	0x20000b70
 8005a80:	20000ad8 	.word	0x20000ad8
 8005a84:	20000bc4 	.word	0x20000bc4

08005a88 <vTaskInternalSetTimeOutState>:
 8005a88:	b480      	push	{r7}
 8005a8a:	b083      	sub	sp, #12
 8005a8c:	af00      	add	r7, sp, #0
 8005a8e:	6078      	str	r0, [r7, #4]
 8005a90:	4b06      	ldr	r3, [pc, #24]	; (8005aac <vTaskInternalSetTimeOutState+0x24>)
 8005a92:	681a      	ldr	r2, [r3, #0]
 8005a94:	687b      	ldr	r3, [r7, #4]
 8005a96:	601a      	str	r2, [r3, #0]
 8005a98:	4b05      	ldr	r3, [pc, #20]	; (8005ab0 <vTaskInternalSetTimeOutState+0x28>)
 8005a9a:	681a      	ldr	r2, [r3, #0]
 8005a9c:	687b      	ldr	r3, [r7, #4]
 8005a9e:	605a      	str	r2, [r3, #4]
 8005aa0:	370c      	adds	r7, #12
 8005aa2:	46bd      	mov	sp, r7
 8005aa4:	f85d 7b04 	ldr.w	r7, [sp], #4
 8005aa8:	4770      	bx	lr
 8005aaa:	bf00      	nop
 8005aac:	20000bc8 	.word	0x20000bc8
 8005ab0:	20000bb4 	.word	0x20000bb4

08005ab4 <xTaskCheckForTimeOut>:
 8005ab4:	b580      	push	{r7, lr}
 8005ab6:	b088      	sub	sp, #32
 8005ab8:	af00      	add	r7, sp, #0
 8005aba:	6078      	str	r0, [r7, #4]
 8005abc:	6039      	str	r1, [r7, #0]
 8005abe:	687b      	ldr	r3, [r7, #4]
 8005ac0:	2b00      	cmp	r3, #0
 8005ac2:	d109      	bne.n	8005ad8 <xTaskCheckForTimeOut+0x24>
 8005ac4:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005ac8:	f383 8811 	msr	BASEPRI, r3
 8005acc:	f3bf 8f6f 	isb	sy
 8005ad0:	f3bf 8f4f 	dsb	sy
 8005ad4:	613b      	str	r3, [r7, #16]
 8005ad6:	e7fe      	b.n	8005ad6 <xTaskCheckForTimeOut+0x22>
 8005ad8:	683b      	ldr	r3, [r7, #0]
 8005ada:	2b00      	cmp	r3, #0
 8005adc:	d109      	bne.n	8005af2 <xTaskCheckForTimeOut+0x3e>
 8005ade:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005ae2:	f383 8811 	msr	BASEPRI, r3
 8005ae6:	f3bf 8f6f 	isb	sy
 8005aea:	f3bf 8f4f 	dsb	sy
 8005aee:	60fb      	str	r3, [r7, #12]
 8005af0:	e7fe      	b.n	8005af0 <xTaskCheckForTimeOut+0x3c>
 8005af2:	f000 fe47 	bl	8006784 <vPortEnterCritical>
 8005af6:	4b1d      	ldr	r3, [pc, #116]	; (8005b6c <xTaskCheckForTimeOut+0xb8>)
 8005af8:	681b      	ldr	r3, [r3, #0]
 8005afa:	61bb      	str	r3, [r7, #24]
 8005afc:	687b      	ldr	r3, [r7, #4]
 8005afe:	685b      	ldr	r3, [r3, #4]
 8005b00:	69ba      	ldr	r2, [r7, #24]
 8005b02:	1ad3      	subs	r3, r2, r3
 8005b04:	617b      	str	r3, [r7, #20]
 8005b06:	683b      	ldr	r3, [r7, #0]
 8005b08:	681b      	ldr	r3, [r3, #0]
 8005b0a:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8005b0e:	d102      	bne.n	8005b16 <xTaskCheckForTimeOut+0x62>
 8005b10:	2300      	movs	r3, #0
 8005b12:	61fb      	str	r3, [r7, #28]
 8005b14:	e023      	b.n	8005b5e <xTaskCheckForTimeOut+0xaa>
 8005b16:	687b      	ldr	r3, [r7, #4]
 8005b18:	681a      	ldr	r2, [r3, #0]
 8005b1a:	4b15      	ldr	r3, [pc, #84]	; (8005b70 <xTaskCheckForTimeOut+0xbc>)
 8005b1c:	681b      	ldr	r3, [r3, #0]
 8005b1e:	429a      	cmp	r2, r3
 8005b20:	d007      	beq.n	8005b32 <xTaskCheckForTimeOut+0x7e>
 8005b22:	687b      	ldr	r3, [r7, #4]
 8005b24:	685a      	ldr	r2, [r3, #4]
 8005b26:	69bb      	ldr	r3, [r7, #24]
 8005b28:	429a      	cmp	r2, r3
 8005b2a:	d802      	bhi.n	8005b32 <xTaskCheckForTimeOut+0x7e>
 8005b2c:	2301      	movs	r3, #1
 8005b2e:	61fb      	str	r3, [r7, #28]
 8005b30:	e015      	b.n	8005b5e <xTaskCheckForTimeOut+0xaa>
 8005b32:	683b      	ldr	r3, [r7, #0]
 8005b34:	681a      	ldr	r2, [r3, #0]
 8005b36:	697b      	ldr	r3, [r7, #20]
 8005b38:	429a      	cmp	r2, r3
 8005b3a:	d90b      	bls.n	8005b54 <xTaskCheckForTimeOut+0xa0>
 8005b3c:	683b      	ldr	r3, [r7, #0]
 8005b3e:	681a      	ldr	r2, [r3, #0]
 8005b40:	697b      	ldr	r3, [r7, #20]
 8005b42:	1ad2      	subs	r2, r2, r3
 8005b44:	683b      	ldr	r3, [r7, #0]
 8005b46:	601a      	str	r2, [r3, #0]
 8005b48:	6878      	ldr	r0, [r7, #4]
 8005b4a:	f7ff ff9d 	bl	8005a88 <vTaskInternalSetTimeOutState>
 8005b4e:	2300      	movs	r3, #0
 8005b50:	61fb      	str	r3, [r7, #28]
 8005b52:	e004      	b.n	8005b5e <xTaskCheckForTimeOut+0xaa>
 8005b54:	683b      	ldr	r3, [r7, #0]
 8005b56:	2200      	movs	r2, #0
 8005b58:	601a      	str	r2, [r3, #0]
 8005b5a:	2301      	movs	r3, #1
 8005b5c:	61fb      	str	r3, [r7, #28]
 8005b5e:	f000 fe3f 	bl	80067e0 <vPortExitCritical>
 8005b62:	69fb      	ldr	r3, [r7, #28]
 8005b64:	4618      	mov	r0, r3
 8005b66:	3720      	adds	r7, #32
 8005b68:	46bd      	mov	sp, r7
 8005b6a:	bd80      	pop	{r7, pc}
 8005b6c:	20000bb4 	.word	0x20000bb4
 8005b70:	20000bc8 	.word	0x20000bc8

08005b74 <vTaskMissedYield>:
 8005b74:	b480      	push	{r7}
 8005b76:	af00      	add	r7, sp, #0
 8005b78:	4b03      	ldr	r3, [pc, #12]	; (8005b88 <vTaskMissedYield+0x14>)
 8005b7a:	2201      	movs	r2, #1
 8005b7c:	601a      	str	r2, [r3, #0]
 8005b7e:	46bd      	mov	sp, r7
 8005b80:	f85d 7b04 	ldr.w	r7, [sp], #4
 8005b84:	4770      	bx	lr
 8005b86:	bf00      	nop
 8005b88:	20000bc4 	.word	0x20000bc4

08005b8c <prvIdleTask>:
 8005b8c:	b580      	push	{r7, lr}
 8005b8e:	b082      	sub	sp, #8
 8005b90:	af00      	add	r7, sp, #0
 8005b92:	6078      	str	r0, [r7, #4]
 8005b94:	f000 f852 	bl	8005c3c <prvCheckTasksWaitingTermination>
 8005b98:	4b07      	ldr	r3, [pc, #28]	; (8005bb8 <prvIdleTask+0x2c>)
 8005b9a:	681b      	ldr	r3, [r3, #0]
 8005b9c:	2b01      	cmp	r3, #1
 8005b9e:	d907      	bls.n	8005bb0 <prvIdleTask+0x24>
 8005ba0:	4b06      	ldr	r3, [pc, #24]	; (8005bbc <prvIdleTask+0x30>)
 8005ba2:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 8005ba6:	601a      	str	r2, [r3, #0]
 8005ba8:	f3bf 8f4f 	dsb	sy
 8005bac:	f3bf 8f6f 	isb	sy
 8005bb0:	f7fe fc9c 	bl	80044ec <vApplicationIdleHook>
 8005bb4:	e7ee      	b.n	8005b94 <prvIdleTask+0x8>
 8005bb6:	bf00      	nop
 8005bb8:	20000adc 	.word	0x20000adc
 8005bbc:	e000ed04 	.word	0xe000ed04

08005bc0 <prvInitialiseTaskLists>:
 8005bc0:	b580      	push	{r7, lr}
 8005bc2:	b082      	sub	sp, #8
 8005bc4:	af00      	add	r7, sp, #0
 8005bc6:	2300      	movs	r3, #0
 8005bc8:	607b      	str	r3, [r7, #4]
 8005bca:	e00c      	b.n	8005be6 <prvInitialiseTaskLists+0x26>
 8005bcc:	687a      	ldr	r2, [r7, #4]
 8005bce:	4613      	mov	r3, r2
 8005bd0:	009b      	lsls	r3, r3, #2
 8005bd2:	4413      	add	r3, r2
 8005bd4:	009b      	lsls	r3, r3, #2
 8005bd6:	4a11      	ldr	r2, [pc, #68]	; (8005c1c <prvInitialiseTaskLists+0x5c>)
 8005bd8:	4413      	add	r3, r2
 8005bda:	4618      	mov	r0, r3
 8005bdc:	f7fe fcd4 	bl	8004588 <vListInitialise>
 8005be0:	687b      	ldr	r3, [r7, #4]
 8005be2:	3301      	adds	r3, #1
 8005be4:	607b      	str	r3, [r7, #4]
 8005be6:	687b      	ldr	r3, [r7, #4]
 8005be8:	2b04      	cmp	r3, #4
 8005bea:	d9ef      	bls.n	8005bcc <prvInitialiseTaskLists+0xc>
 8005bec:	480c      	ldr	r0, [pc, #48]	; (8005c20 <prvInitialiseTaskLists+0x60>)
 8005bee:	f7fe fccb 	bl	8004588 <vListInitialise>
 8005bf2:	480c      	ldr	r0, [pc, #48]	; (8005c24 <prvInitialiseTaskLists+0x64>)
 8005bf4:	f7fe fcc8 	bl	8004588 <vListInitialise>
 8005bf8:	480b      	ldr	r0, [pc, #44]	; (8005c28 <prvInitialiseTaskLists+0x68>)
 8005bfa:	f7fe fcc5 	bl	8004588 <vListInitialise>
 8005bfe:	480b      	ldr	r0, [pc, #44]	; (8005c2c <prvInitialiseTaskLists+0x6c>)
 8005c00:	f7fe fcc2 	bl	8004588 <vListInitialise>
 8005c04:	480a      	ldr	r0, [pc, #40]	; (8005c30 <prvInitialiseTaskLists+0x70>)
 8005c06:	f7fe fcbf 	bl	8004588 <vListInitialise>
 8005c0a:	4b0a      	ldr	r3, [pc, #40]	; (8005c34 <prvInitialiseTaskLists+0x74>)
 8005c0c:	4a04      	ldr	r2, [pc, #16]	; (8005c20 <prvInitialiseTaskLists+0x60>)
 8005c0e:	601a      	str	r2, [r3, #0]
 8005c10:	4b09      	ldr	r3, [pc, #36]	; (8005c38 <prvInitialiseTaskLists+0x78>)
 8005c12:	4a04      	ldr	r2, [pc, #16]	; (8005c24 <prvInitialiseTaskLists+0x64>)
 8005c14:	601a      	str	r2, [r3, #0]
 8005c16:	3708      	adds	r7, #8
 8005c18:	46bd      	mov	sp, r7
 8005c1a:	bd80      	pop	{r7, pc}
 8005c1c:	20000adc 	.word	0x20000adc
 8005c20:	20000b40 	.word	0x20000b40
 8005c24:	20000b54 	.word	0x20000b54
 8005c28:	20000b70 	.word	0x20000b70
 8005c2c:	20000b84 	.word	0x20000b84
 8005c30:	20000b9c 	.word	0x20000b9c
 8005c34:	20000b68 	.word	0x20000b68
 8005c38:	20000b6c 	.word	0x20000b6c

08005c3c <prvCheckTasksWaitingTermination>:
 8005c3c:	b580      	push	{r7, lr}
 8005c3e:	b082      	sub	sp, #8
 8005c40:	af00      	add	r7, sp, #0
 8005c42:	e019      	b.n	8005c78 <prvCheckTasksWaitingTermination+0x3c>
 8005c44:	f000 fd9e 	bl	8006784 <vPortEnterCritical>
 8005c48:	4b0f      	ldr	r3, [pc, #60]	; (8005c88 <prvCheckTasksWaitingTermination+0x4c>)
 8005c4a:	68db      	ldr	r3, [r3, #12]
 8005c4c:	68db      	ldr	r3, [r3, #12]
 8005c4e:	607b      	str	r3, [r7, #4]
 8005c50:	687b      	ldr	r3, [r7, #4]
 8005c52:	3304      	adds	r3, #4
 8005c54:	4618      	mov	r0, r3
 8005c56:	f7fe fd1f 	bl	8004698 <uxListRemove>
 8005c5a:	4b0c      	ldr	r3, [pc, #48]	; (8005c8c <prvCheckTasksWaitingTermination+0x50>)
 8005c5c:	681b      	ldr	r3, [r3, #0]
 8005c5e:	1e5a      	subs	r2, r3, #1
 8005c60:	4b0a      	ldr	r3, [pc, #40]	; (8005c8c <prvCheckTasksWaitingTermination+0x50>)
 8005c62:	601a      	str	r2, [r3, #0]
 8005c64:	4b0a      	ldr	r3, [pc, #40]	; (8005c90 <prvCheckTasksWaitingTermination+0x54>)
 8005c66:	681b      	ldr	r3, [r3, #0]
 8005c68:	1e5a      	subs	r2, r3, #1
 8005c6a:	4b09      	ldr	r3, [pc, #36]	; (8005c90 <prvCheckTasksWaitingTermination+0x54>)
 8005c6c:	601a      	str	r2, [r3, #0]
 8005c6e:	f000 fdb7 	bl	80067e0 <vPortExitCritical>
 8005c72:	6878      	ldr	r0, [r7, #4]
 8005c74:	f000 f80e 	bl	8005c94 <prvDeleteTCB>
 8005c78:	4b05      	ldr	r3, [pc, #20]	; (8005c90 <prvCheckTasksWaitingTermination+0x54>)
 8005c7a:	681b      	ldr	r3, [r3, #0]
 8005c7c:	2b00      	cmp	r3, #0
 8005c7e:	d1e1      	bne.n	8005c44 <prvCheckTasksWaitingTermination+0x8>
 8005c80:	3708      	adds	r7, #8
 8005c82:	46bd      	mov	sp, r7
 8005c84:	bd80      	pop	{r7, pc}
 8005c86:	bf00      	nop
 8005c88:	20000b84 	.word	0x20000b84
 8005c8c:	20000bb0 	.word	0x20000bb0
 8005c90:	20000b98 	.word	0x20000b98

08005c94 <prvDeleteTCB>:
 8005c94:	b580      	push	{r7, lr}
 8005c96:	b084      	sub	sp, #16
 8005c98:	af00      	add	r7, sp, #0
 8005c9a:	6078      	str	r0, [r7, #4]
 8005c9c:	687b      	ldr	r3, [r7, #4]
 8005c9e:	3350      	adds	r3, #80	; 0x50
 8005ca0:	4618      	mov	r0, r3
 8005ca2:	f001 f8a1 	bl	8006de8 <_reclaim_reent>
 8005ca6:	687b      	ldr	r3, [r7, #4]
 8005ca8:	f893 347d 	ldrb.w	r3, [r3, #1149]	; 0x47d
 8005cac:	2b00      	cmp	r3, #0
 8005cae:	d108      	bne.n	8005cc2 <prvDeleteTCB+0x2e>
 8005cb0:	687b      	ldr	r3, [r7, #4]
 8005cb2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8005cb4:	4618      	mov	r0, r3
 8005cb6:	f000 ff41 	bl	8006b3c <vPortFree>
 8005cba:	6878      	ldr	r0, [r7, #4]
 8005cbc:	f000 ff3e 	bl	8006b3c <vPortFree>
 8005cc0:	e017      	b.n	8005cf2 <prvDeleteTCB+0x5e>
 8005cc2:	687b      	ldr	r3, [r7, #4]
 8005cc4:	f893 347d 	ldrb.w	r3, [r3, #1149]	; 0x47d
 8005cc8:	2b01      	cmp	r3, #1
 8005cca:	d103      	bne.n	8005cd4 <prvDeleteTCB+0x40>
 8005ccc:	6878      	ldr	r0, [r7, #4]
 8005cce:	f000 ff35 	bl	8006b3c <vPortFree>
 8005cd2:	e00e      	b.n	8005cf2 <prvDeleteTCB+0x5e>
 8005cd4:	687b      	ldr	r3, [r7, #4]
 8005cd6:	f893 347d 	ldrb.w	r3, [r3, #1149]	; 0x47d
 8005cda:	2b02      	cmp	r3, #2
 8005cdc:	d009      	beq.n	8005cf2 <prvDeleteTCB+0x5e>
 8005cde:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005ce2:	f383 8811 	msr	BASEPRI, r3
 8005ce6:	f3bf 8f6f 	isb	sy
 8005cea:	f3bf 8f4f 	dsb	sy
 8005cee:	60fb      	str	r3, [r7, #12]
 8005cf0:	e7fe      	b.n	8005cf0 <prvDeleteTCB+0x5c>
 8005cf2:	3710      	adds	r7, #16
 8005cf4:	46bd      	mov	sp, r7
 8005cf6:	bd80      	pop	{r7, pc}

08005cf8 <prvResetNextTaskUnblockTime>:
 8005cf8:	b480      	push	{r7}
 8005cfa:	b083      	sub	sp, #12
 8005cfc:	af00      	add	r7, sp, #0
 8005cfe:	4b0c      	ldr	r3, [pc, #48]	; (8005d30 <prvResetNextTaskUnblockTime+0x38>)
 8005d00:	681b      	ldr	r3, [r3, #0]
 8005d02:	681b      	ldr	r3, [r3, #0]
 8005d04:	2b00      	cmp	r3, #0
 8005d06:	d104      	bne.n	8005d12 <prvResetNextTaskUnblockTime+0x1a>
 8005d08:	4b0a      	ldr	r3, [pc, #40]	; (8005d34 <prvResetNextTaskUnblockTime+0x3c>)
 8005d0a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8005d0e:	601a      	str	r2, [r3, #0]
 8005d10:	e008      	b.n	8005d24 <prvResetNextTaskUnblockTime+0x2c>
 8005d12:	4b07      	ldr	r3, [pc, #28]	; (8005d30 <prvResetNextTaskUnblockTime+0x38>)
 8005d14:	681b      	ldr	r3, [r3, #0]
 8005d16:	68db      	ldr	r3, [r3, #12]
 8005d18:	68db      	ldr	r3, [r3, #12]
 8005d1a:	607b      	str	r3, [r7, #4]
 8005d1c:	687b      	ldr	r3, [r7, #4]
 8005d1e:	685a      	ldr	r2, [r3, #4]
 8005d20:	4b04      	ldr	r3, [pc, #16]	; (8005d34 <prvResetNextTaskUnblockTime+0x3c>)
 8005d22:	601a      	str	r2, [r3, #0]
 8005d24:	370c      	adds	r7, #12
 8005d26:	46bd      	mov	sp, r7
 8005d28:	f85d 7b04 	ldr.w	r7, [sp], #4
 8005d2c:	4770      	bx	lr
 8005d2e:	bf00      	nop
 8005d30:	20000b68 	.word	0x20000b68
 8005d34:	20000bd0 	.word	0x20000bd0

08005d38 <xTaskGetSchedulerState>:
 8005d38:	b480      	push	{r7}
 8005d3a:	b083      	sub	sp, #12
 8005d3c:	af00      	add	r7, sp, #0
 8005d3e:	4b0b      	ldr	r3, [pc, #44]	; (8005d6c <xTaskGetSchedulerState+0x34>)
 8005d40:	681b      	ldr	r3, [r3, #0]
 8005d42:	2b00      	cmp	r3, #0
 8005d44:	d102      	bne.n	8005d4c <xTaskGetSchedulerState+0x14>
 8005d46:	2301      	movs	r3, #1
 8005d48:	607b      	str	r3, [r7, #4]
 8005d4a:	e008      	b.n	8005d5e <xTaskGetSchedulerState+0x26>
 8005d4c:	4b08      	ldr	r3, [pc, #32]	; (8005d70 <xTaskGetSchedulerState+0x38>)
 8005d4e:	681b      	ldr	r3, [r3, #0]
 8005d50:	2b00      	cmp	r3, #0
 8005d52:	d102      	bne.n	8005d5a <xTaskGetSchedulerState+0x22>
 8005d54:	2302      	movs	r3, #2
 8005d56:	607b      	str	r3, [r7, #4]
 8005d58:	e001      	b.n	8005d5e <xTaskGetSchedulerState+0x26>
 8005d5a:	2300      	movs	r3, #0
 8005d5c:	607b      	str	r3, [r7, #4]
 8005d5e:	687b      	ldr	r3, [r7, #4]
 8005d60:	4618      	mov	r0, r3
 8005d62:	370c      	adds	r7, #12
 8005d64:	46bd      	mov	sp, r7
 8005d66:	f85d 7b04 	ldr.w	r7, [sp], #4
 8005d6a:	4770      	bx	lr
 8005d6c:	20000bbc 	.word	0x20000bbc
 8005d70:	20000bd8 	.word	0x20000bd8

08005d74 <xTaskPriorityDisinherit>:
 8005d74:	b580      	push	{r7, lr}
 8005d76:	b086      	sub	sp, #24
 8005d78:	af00      	add	r7, sp, #0
 8005d7a:	6078      	str	r0, [r7, #4]
 8005d7c:	687b      	ldr	r3, [r7, #4]
 8005d7e:	613b      	str	r3, [r7, #16]
 8005d80:	2300      	movs	r3, #0
 8005d82:	617b      	str	r3, [r7, #20]
 8005d84:	687b      	ldr	r3, [r7, #4]
 8005d86:	2b00      	cmp	r3, #0
 8005d88:	d06c      	beq.n	8005e64 <xTaskPriorityDisinherit+0xf0>
 8005d8a:	4b39      	ldr	r3, [pc, #228]	; (8005e70 <xTaskPriorityDisinherit+0xfc>)
 8005d8c:	681b      	ldr	r3, [r3, #0]
 8005d8e:	693a      	ldr	r2, [r7, #16]
 8005d90:	429a      	cmp	r2, r3
 8005d92:	d009      	beq.n	8005da8 <xTaskPriorityDisinherit+0x34>
 8005d94:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005d98:	f383 8811 	msr	BASEPRI, r3
 8005d9c:	f3bf 8f6f 	isb	sy
 8005da0:	f3bf 8f4f 	dsb	sy
 8005da4:	60fb      	str	r3, [r7, #12]
 8005da6:	e7fe      	b.n	8005da6 <xTaskPriorityDisinherit+0x32>
 8005da8:	693b      	ldr	r3, [r7, #16]
 8005daa:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8005dac:	2b00      	cmp	r3, #0
 8005dae:	d109      	bne.n	8005dc4 <xTaskPriorityDisinherit+0x50>
 8005db0:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005db4:	f383 8811 	msr	BASEPRI, r3
 8005db8:	f3bf 8f6f 	isb	sy
 8005dbc:	f3bf 8f4f 	dsb	sy
 8005dc0:	60bb      	str	r3, [r7, #8]
 8005dc2:	e7fe      	b.n	8005dc2 <xTaskPriorityDisinherit+0x4e>
 8005dc4:	693b      	ldr	r3, [r7, #16]
 8005dc6:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8005dc8:	1e5a      	subs	r2, r3, #1
 8005dca:	693b      	ldr	r3, [r7, #16]
 8005dcc:	64da      	str	r2, [r3, #76]	; 0x4c
 8005dce:	693b      	ldr	r3, [r7, #16]
 8005dd0:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8005dd2:	693b      	ldr	r3, [r7, #16]
 8005dd4:	6c9b      	ldr	r3, [r3, #72]	; 0x48
 8005dd6:	429a      	cmp	r2, r3
 8005dd8:	d044      	beq.n	8005e64 <xTaskPriorityDisinherit+0xf0>
 8005dda:	693b      	ldr	r3, [r7, #16]
 8005ddc:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8005dde:	2b00      	cmp	r3, #0
 8005de0:	d140      	bne.n	8005e64 <xTaskPriorityDisinherit+0xf0>
 8005de2:	693b      	ldr	r3, [r7, #16]
 8005de4:	3304      	adds	r3, #4
 8005de6:	4618      	mov	r0, r3
 8005de8:	f7fe fc56 	bl	8004698 <uxListRemove>
 8005dec:	4603      	mov	r3, r0
 8005dee:	2b00      	cmp	r3, #0
 8005df0:	d115      	bne.n	8005e1e <xTaskPriorityDisinherit+0xaa>
 8005df2:	693b      	ldr	r3, [r7, #16]
 8005df4:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8005df6:	491f      	ldr	r1, [pc, #124]	; (8005e74 <xTaskPriorityDisinherit+0x100>)
 8005df8:	4613      	mov	r3, r2
 8005dfa:	009b      	lsls	r3, r3, #2
 8005dfc:	4413      	add	r3, r2
 8005dfe:	009b      	lsls	r3, r3, #2
 8005e00:	440b      	add	r3, r1
 8005e02:	681b      	ldr	r3, [r3, #0]
 8005e04:	2b00      	cmp	r3, #0
 8005e06:	d10a      	bne.n	8005e1e <xTaskPriorityDisinherit+0xaa>
 8005e08:	693b      	ldr	r3, [r7, #16]
 8005e0a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8005e0c:	2201      	movs	r2, #1
 8005e0e:	fa02 f303 	lsl.w	r3, r2, r3
 8005e12:	43da      	mvns	r2, r3
 8005e14:	4b18      	ldr	r3, [pc, #96]	; (8005e78 <xTaskPriorityDisinherit+0x104>)
 8005e16:	681b      	ldr	r3, [r3, #0]
 8005e18:	401a      	ands	r2, r3
 8005e1a:	4b17      	ldr	r3, [pc, #92]	; (8005e78 <xTaskPriorityDisinherit+0x104>)
 8005e1c:	601a      	str	r2, [r3, #0]
 8005e1e:	693b      	ldr	r3, [r7, #16]
 8005e20:	6c9a      	ldr	r2, [r3, #72]	; 0x48
 8005e22:	693b      	ldr	r3, [r7, #16]
 8005e24:	62da      	str	r2, [r3, #44]	; 0x2c
 8005e26:	693b      	ldr	r3, [r7, #16]
 8005e28:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8005e2a:	f1c3 0205 	rsb	r2, r3, #5
 8005e2e:	693b      	ldr	r3, [r7, #16]
 8005e30:	619a      	str	r2, [r3, #24]
 8005e32:	693b      	ldr	r3, [r7, #16]
 8005e34:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8005e36:	2201      	movs	r2, #1
 8005e38:	409a      	lsls	r2, r3
 8005e3a:	4b0f      	ldr	r3, [pc, #60]	; (8005e78 <xTaskPriorityDisinherit+0x104>)
 8005e3c:	681b      	ldr	r3, [r3, #0]
 8005e3e:	431a      	orrs	r2, r3
 8005e40:	4b0d      	ldr	r3, [pc, #52]	; (8005e78 <xTaskPriorityDisinherit+0x104>)
 8005e42:	601a      	str	r2, [r3, #0]
 8005e44:	693b      	ldr	r3, [r7, #16]
 8005e46:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8005e48:	4613      	mov	r3, r2
 8005e4a:	009b      	lsls	r3, r3, #2
 8005e4c:	4413      	add	r3, r2
 8005e4e:	009b      	lsls	r3, r3, #2
 8005e50:	4a08      	ldr	r2, [pc, #32]	; (8005e74 <xTaskPriorityDisinherit+0x100>)
 8005e52:	441a      	add	r2, r3
 8005e54:	693b      	ldr	r3, [r7, #16]
 8005e56:	3304      	adds	r3, #4
 8005e58:	4610      	mov	r0, r2
 8005e5a:	4619      	mov	r1, r3
 8005e5c:	f7fe fbc0 	bl	80045e0 <vListInsertEnd>
 8005e60:	2301      	movs	r3, #1
 8005e62:	617b      	str	r3, [r7, #20]
 8005e64:	697b      	ldr	r3, [r7, #20]
 8005e66:	4618      	mov	r0, r3
 8005e68:	3718      	adds	r7, #24
 8005e6a:	46bd      	mov	sp, r7
 8005e6c:	bd80      	pop	{r7, pc}
 8005e6e:	bf00      	nop
 8005e70:	20000ad8 	.word	0x20000ad8
 8005e74:	20000adc 	.word	0x20000adc
 8005e78:	20000bb8 	.word	0x20000bb8

08005e7c <prvAddCurrentTaskToDelayedList>:
 8005e7c:	b580      	push	{r7, lr}
 8005e7e:	b084      	sub	sp, #16
 8005e80:	af00      	add	r7, sp, #0
 8005e82:	6078      	str	r0, [r7, #4]
 8005e84:	6039      	str	r1, [r7, #0]
 8005e86:	4b28      	ldr	r3, [pc, #160]	; (8005f28 <prvAddCurrentTaskToDelayedList+0xac>)
 8005e88:	681b      	ldr	r3, [r3, #0]
 8005e8a:	60fb      	str	r3, [r7, #12]
 8005e8c:	4b27      	ldr	r3, [pc, #156]	; (8005f2c <prvAddCurrentTaskToDelayedList+0xb0>)
 8005e8e:	681b      	ldr	r3, [r3, #0]
 8005e90:	3304      	adds	r3, #4
 8005e92:	4618      	mov	r0, r3
 8005e94:	f7fe fc00 	bl	8004698 <uxListRemove>
 8005e98:	4603      	mov	r3, r0
 8005e9a:	2b00      	cmp	r3, #0
 8005e9c:	d10b      	bne.n	8005eb6 <prvAddCurrentTaskToDelayedList+0x3a>
 8005e9e:	4b23      	ldr	r3, [pc, #140]	; (8005f2c <prvAddCurrentTaskToDelayedList+0xb0>)
 8005ea0:	681b      	ldr	r3, [r3, #0]
 8005ea2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8005ea4:	2201      	movs	r2, #1
 8005ea6:	fa02 f303 	lsl.w	r3, r2, r3
 8005eaa:	43da      	mvns	r2, r3
 8005eac:	4b20      	ldr	r3, [pc, #128]	; (8005f30 <prvAddCurrentTaskToDelayedList+0xb4>)
 8005eae:	681b      	ldr	r3, [r3, #0]
 8005eb0:	401a      	ands	r2, r3
 8005eb2:	4b1f      	ldr	r3, [pc, #124]	; (8005f30 <prvAddCurrentTaskToDelayedList+0xb4>)
 8005eb4:	601a      	str	r2, [r3, #0]
 8005eb6:	687b      	ldr	r3, [r7, #4]
 8005eb8:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8005ebc:	d10a      	bne.n	8005ed4 <prvAddCurrentTaskToDelayedList+0x58>
 8005ebe:	683b      	ldr	r3, [r7, #0]
 8005ec0:	2b00      	cmp	r3, #0
 8005ec2:	d007      	beq.n	8005ed4 <prvAddCurrentTaskToDelayedList+0x58>
 8005ec4:	4b19      	ldr	r3, [pc, #100]	; (8005f2c <prvAddCurrentTaskToDelayedList+0xb0>)
 8005ec6:	681b      	ldr	r3, [r3, #0]
 8005ec8:	3304      	adds	r3, #4
 8005eca:	481a      	ldr	r0, [pc, #104]	; (8005f34 <prvAddCurrentTaskToDelayedList+0xb8>)
 8005ecc:	4619      	mov	r1, r3
 8005ece:	f7fe fb87 	bl	80045e0 <vListInsertEnd>
 8005ed2:	e026      	b.n	8005f22 <prvAddCurrentTaskToDelayedList+0xa6>
 8005ed4:	68fa      	ldr	r2, [r7, #12]
 8005ed6:	687b      	ldr	r3, [r7, #4]
 8005ed8:	4413      	add	r3, r2
 8005eda:	60bb      	str	r3, [r7, #8]
 8005edc:	4b13      	ldr	r3, [pc, #76]	; (8005f2c <prvAddCurrentTaskToDelayedList+0xb0>)
 8005ede:	681b      	ldr	r3, [r3, #0]
 8005ee0:	68ba      	ldr	r2, [r7, #8]
 8005ee2:	605a      	str	r2, [r3, #4]
 8005ee4:	68ba      	ldr	r2, [r7, #8]
 8005ee6:	68fb      	ldr	r3, [r7, #12]
 8005ee8:	429a      	cmp	r2, r3
 8005eea:	d209      	bcs.n	8005f00 <prvAddCurrentTaskToDelayedList+0x84>
 8005eec:	4b12      	ldr	r3, [pc, #72]	; (8005f38 <prvAddCurrentTaskToDelayedList+0xbc>)
 8005eee:	681a      	ldr	r2, [r3, #0]
 8005ef0:	4b0e      	ldr	r3, [pc, #56]	; (8005f2c <prvAddCurrentTaskToDelayedList+0xb0>)
 8005ef2:	681b      	ldr	r3, [r3, #0]
 8005ef4:	3304      	adds	r3, #4
 8005ef6:	4610      	mov	r0, r2
 8005ef8:	4619      	mov	r1, r3
 8005efa:	f7fe fb95 	bl	8004628 <vListInsert>
 8005efe:	e010      	b.n	8005f22 <prvAddCurrentTaskToDelayedList+0xa6>
 8005f00:	4b0e      	ldr	r3, [pc, #56]	; (8005f3c <prvAddCurrentTaskToDelayedList+0xc0>)
 8005f02:	681a      	ldr	r2, [r3, #0]
 8005f04:	4b09      	ldr	r3, [pc, #36]	; (8005f2c <prvAddCurrentTaskToDelayedList+0xb0>)
 8005f06:	681b      	ldr	r3, [r3, #0]
 8005f08:	3304      	adds	r3, #4
 8005f0a:	4610      	mov	r0, r2
 8005f0c:	4619      	mov	r1, r3
 8005f0e:	f7fe fb8b 	bl	8004628 <vListInsert>
 8005f12:	4b0b      	ldr	r3, [pc, #44]	; (8005f40 <prvAddCurrentTaskToDelayedList+0xc4>)
 8005f14:	681b      	ldr	r3, [r3, #0]
 8005f16:	68ba      	ldr	r2, [r7, #8]
 8005f18:	429a      	cmp	r2, r3
 8005f1a:	d202      	bcs.n	8005f22 <prvAddCurrentTaskToDelayedList+0xa6>
 8005f1c:	4b08      	ldr	r3, [pc, #32]	; (8005f40 <prvAddCurrentTaskToDelayedList+0xc4>)
 8005f1e:	68ba      	ldr	r2, [r7, #8]
 8005f20:	601a      	str	r2, [r3, #0]
 8005f22:	3710      	adds	r7, #16
 8005f24:	46bd      	mov	sp, r7
 8005f26:	bd80      	pop	{r7, pc}
 8005f28:	20000bb4 	.word	0x20000bb4
 8005f2c:	20000ad8 	.word	0x20000ad8
 8005f30:	20000bb8 	.word	0x20000bb8
 8005f34:	20000b9c 	.word	0x20000b9c
 8005f38:	20000b6c 	.word	0x20000b6c
 8005f3c:	20000b68 	.word	0x20000b68
 8005f40:	20000bd0 	.word	0x20000bd0

08005f44 <xTimerCreateTimerTask>:
 8005f44:	b580      	push	{r7, lr}
 8005f46:	b08a      	sub	sp, #40	; 0x28
 8005f48:	af04      	add	r7, sp, #16
 8005f4a:	2300      	movs	r3, #0
 8005f4c:	617b      	str	r3, [r7, #20]
 8005f4e:	f000 fab5 	bl	80064bc <prvCheckForValidListAndQueue>
 8005f52:	4b1d      	ldr	r3, [pc, #116]	; (8005fc8 <xTimerCreateTimerTask+0x84>)
 8005f54:	681b      	ldr	r3, [r3, #0]
 8005f56:	2b00      	cmp	r3, #0
 8005f58:	d024      	beq.n	8005fa4 <xTimerCreateTimerTask+0x60>
 8005f5a:	2300      	movs	r3, #0
 8005f5c:	60fb      	str	r3, [r7, #12]
 8005f5e:	2300      	movs	r3, #0
 8005f60:	60bb      	str	r3, [r7, #8]
 8005f62:	f107 010c 	add.w	r1, r7, #12
 8005f66:	f107 0208 	add.w	r2, r7, #8
 8005f6a:	1d3b      	adds	r3, r7, #4
 8005f6c:	4608      	mov	r0, r1
 8005f6e:	4611      	mov	r1, r2
 8005f70:	461a      	mov	r2, r3
 8005f72:	f7fe faef 	bl	8004554 <vApplicationGetTimerTaskMemory>
 8005f76:	687b      	ldr	r3, [r7, #4]
 8005f78:	68b9      	ldr	r1, [r7, #8]
 8005f7a:	68fa      	ldr	r2, [r7, #12]
 8005f7c:	2002      	movs	r0, #2
 8005f7e:	9000      	str	r0, [sp, #0]
 8005f80:	9101      	str	r1, [sp, #4]
 8005f82:	9202      	str	r2, [sp, #8]
 8005f84:	4811      	ldr	r0, [pc, #68]	; (8005fcc <xTimerCreateTimerTask+0x88>)
 8005f86:	4912      	ldr	r1, [pc, #72]	; (8005fd0 <xTimerCreateTimerTask+0x8c>)
 8005f88:	461a      	mov	r2, r3
 8005f8a:	2300      	movs	r3, #0
 8005f8c:	f7ff f88a 	bl	80050a4 <xTaskCreateStatic>
 8005f90:	4602      	mov	r2, r0
 8005f92:	4b10      	ldr	r3, [pc, #64]	; (8005fd4 <xTimerCreateTimerTask+0x90>)
 8005f94:	601a      	str	r2, [r3, #0]
 8005f96:	4b0f      	ldr	r3, [pc, #60]	; (8005fd4 <xTimerCreateTimerTask+0x90>)
 8005f98:	681b      	ldr	r3, [r3, #0]
 8005f9a:	2b00      	cmp	r3, #0
 8005f9c:	d002      	beq.n	8005fa4 <xTimerCreateTimerTask+0x60>
 8005f9e:	2301      	movs	r3, #1
 8005fa0:	617b      	str	r3, [r7, #20]
 8005fa2:	e7ff      	b.n	8005fa4 <xTimerCreateTimerTask+0x60>
 8005fa4:	697b      	ldr	r3, [r7, #20]
 8005fa6:	2b00      	cmp	r3, #0
 8005fa8:	d109      	bne.n	8005fbe <xTimerCreateTimerTask+0x7a>
 8005faa:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005fae:	f383 8811 	msr	BASEPRI, r3
 8005fb2:	f3bf 8f6f 	isb	sy
 8005fb6:	f3bf 8f4f 	dsb	sy
 8005fba:	613b      	str	r3, [r7, #16]
 8005fbc:	e7fe      	b.n	8005fbc <xTimerCreateTimerTask+0x78>
 8005fbe:	697b      	ldr	r3, [r7, #20]
 8005fc0:	4618      	mov	r0, r3
 8005fc2:	3718      	adds	r7, #24
 8005fc4:	46bd      	mov	sp, r7
 8005fc6:	bd80      	pop	{r7, pc}
 8005fc8:	20000c0c 	.word	0x20000c0c
 8005fcc:	080060fd 	.word	0x080060fd
 8005fd0:	0800950c 	.word	0x0800950c
 8005fd4:	20000c10 	.word	0x20000c10

08005fd8 <xTimerGenericCommand>:
 8005fd8:	b580      	push	{r7, lr}
 8005fda:	b08a      	sub	sp, #40	; 0x28
 8005fdc:	af00      	add	r7, sp, #0
 8005fde:	60f8      	str	r0, [r7, #12]
 8005fe0:	60b9      	str	r1, [r7, #8]
 8005fe2:	607a      	str	r2, [r7, #4]
 8005fe4:	603b      	str	r3, [r7, #0]
 8005fe6:	2300      	movs	r3, #0
 8005fe8:	627b      	str	r3, [r7, #36]	; 0x24
 8005fea:	68fb      	ldr	r3, [r7, #12]
 8005fec:	2b00      	cmp	r3, #0
 8005fee:	d109      	bne.n	8006004 <xTimerGenericCommand+0x2c>
 8005ff0:	f04f 0350 	mov.w	r3, #80	; 0x50
 8005ff4:	f383 8811 	msr	BASEPRI, r3
 8005ff8:	f3bf 8f6f 	isb	sy
 8005ffc:	f3bf 8f4f 	dsb	sy
 8006000:	623b      	str	r3, [r7, #32]
 8006002:	e7fe      	b.n	8006002 <xTimerGenericCommand+0x2a>
 8006004:	4b1c      	ldr	r3, [pc, #112]	; (8006078 <xTimerGenericCommand+0xa0>)
 8006006:	681b      	ldr	r3, [r3, #0]
 8006008:	2b00      	cmp	r3, #0
 800600a:	d030      	beq.n	800606e <xTimerGenericCommand+0x96>
 800600c:	68bb      	ldr	r3, [r7, #8]
 800600e:	617b      	str	r3, [r7, #20]
 8006010:	687b      	ldr	r3, [r7, #4]
 8006012:	61bb      	str	r3, [r7, #24]
 8006014:	68fb      	ldr	r3, [r7, #12]
 8006016:	61fb      	str	r3, [r7, #28]
 8006018:	68bb      	ldr	r3, [r7, #8]
 800601a:	2b05      	cmp	r3, #5
 800601c:	dc1c      	bgt.n	8006058 <xTimerGenericCommand+0x80>
 800601e:	f7ff fe8b 	bl	8005d38 <xTaskGetSchedulerState>
 8006022:	4603      	mov	r3, r0
 8006024:	2b02      	cmp	r3, #2
 8006026:	d10b      	bne.n	8006040 <xTimerGenericCommand+0x68>
 8006028:	4b13      	ldr	r3, [pc, #76]	; (8006078 <xTimerGenericCommand+0xa0>)
 800602a:	681a      	ldr	r2, [r3, #0]
 800602c:	f107 0314 	add.w	r3, r7, #20
 8006030:	4610      	mov	r0, r2
 8006032:	4619      	mov	r1, r3
 8006034:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8006036:	2300      	movs	r3, #0
 8006038:	f7fe fc54 	bl	80048e4 <xQueueGenericSend>
 800603c:	6278      	str	r0, [r7, #36]	; 0x24
 800603e:	e016      	b.n	800606e <xTimerGenericCommand+0x96>
 8006040:	4b0d      	ldr	r3, [pc, #52]	; (8006078 <xTimerGenericCommand+0xa0>)
 8006042:	681a      	ldr	r2, [r3, #0]
 8006044:	f107 0314 	add.w	r3, r7, #20
 8006048:	4610      	mov	r0, r2
 800604a:	4619      	mov	r1, r3
 800604c:	2200      	movs	r2, #0
 800604e:	2300      	movs	r3, #0
 8006050:	f7fe fc48 	bl	80048e4 <xQueueGenericSend>
 8006054:	6278      	str	r0, [r7, #36]	; 0x24
 8006056:	e00a      	b.n	800606e <xTimerGenericCommand+0x96>
 8006058:	4b07      	ldr	r3, [pc, #28]	; (8006078 <xTimerGenericCommand+0xa0>)
 800605a:	681a      	ldr	r2, [r3, #0]
 800605c:	f107 0314 	add.w	r3, r7, #20
 8006060:	4610      	mov	r0, r2
 8006062:	4619      	mov	r1, r3
 8006064:	683a      	ldr	r2, [r7, #0]
 8006066:	2300      	movs	r3, #0
 8006068:	f7fe fd3a 	bl	8004ae0 <xQueueGenericSendFromISR>
 800606c:	6278      	str	r0, [r7, #36]	; 0x24
 800606e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006070:	4618      	mov	r0, r3
 8006072:	3728      	adds	r7, #40	; 0x28
 8006074:	46bd      	mov	sp, r7
 8006076:	bd80      	pop	{r7, pc}
 8006078:	20000c0c 	.word	0x20000c0c

0800607c <prvProcessExpiredTimer>:
 800607c:	b580      	push	{r7, lr}
 800607e:	b088      	sub	sp, #32
 8006080:	af02      	add	r7, sp, #8
 8006082:	6078      	str	r0, [r7, #4]
 8006084:	6039      	str	r1, [r7, #0]
 8006086:	4b1c      	ldr	r3, [pc, #112]	; (80060f8 <prvProcessExpiredTimer+0x7c>)
 8006088:	681b      	ldr	r3, [r3, #0]
 800608a:	68db      	ldr	r3, [r3, #12]
 800608c:	68db      	ldr	r3, [r3, #12]
 800608e:	617b      	str	r3, [r7, #20]
 8006090:	697b      	ldr	r3, [r7, #20]
 8006092:	3304      	adds	r3, #4
 8006094:	4618      	mov	r0, r3
 8006096:	f7fe faff 	bl	8004698 <uxListRemove>
 800609a:	697b      	ldr	r3, [r7, #20]
 800609c:	69db      	ldr	r3, [r3, #28]
 800609e:	2b01      	cmp	r3, #1
 80060a0:	d122      	bne.n	80060e8 <prvProcessExpiredTimer+0x6c>
 80060a2:	697b      	ldr	r3, [r7, #20]
 80060a4:	699a      	ldr	r2, [r3, #24]
 80060a6:	687b      	ldr	r3, [r7, #4]
 80060a8:	4413      	add	r3, r2
 80060aa:	6978      	ldr	r0, [r7, #20]
 80060ac:	4619      	mov	r1, r3
 80060ae:	683a      	ldr	r2, [r7, #0]
 80060b0:	687b      	ldr	r3, [r7, #4]
 80060b2:	f000 f8c7 	bl	8006244 <prvInsertTimerInActiveList>
 80060b6:	4603      	mov	r3, r0
 80060b8:	2b00      	cmp	r3, #0
 80060ba:	d015      	beq.n	80060e8 <prvProcessExpiredTimer+0x6c>
 80060bc:	2300      	movs	r3, #0
 80060be:	9300      	str	r3, [sp, #0]
 80060c0:	6978      	ldr	r0, [r7, #20]
 80060c2:	2100      	movs	r1, #0
 80060c4:	687a      	ldr	r2, [r7, #4]
 80060c6:	2300      	movs	r3, #0
 80060c8:	f7ff ff86 	bl	8005fd8 <xTimerGenericCommand>
 80060cc:	6138      	str	r0, [r7, #16]
 80060ce:	693b      	ldr	r3, [r7, #16]
 80060d0:	2b00      	cmp	r3, #0
 80060d2:	d109      	bne.n	80060e8 <prvProcessExpiredTimer+0x6c>
 80060d4:	f04f 0350 	mov.w	r3, #80	; 0x50
 80060d8:	f383 8811 	msr	BASEPRI, r3
 80060dc:	f3bf 8f6f 	isb	sy
 80060e0:	f3bf 8f4f 	dsb	sy
 80060e4:	60fb      	str	r3, [r7, #12]
 80060e6:	e7fe      	b.n	80060e6 <prvProcessExpiredTimer+0x6a>
 80060e8:	697b      	ldr	r3, [r7, #20]
 80060ea:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80060ec:	6978      	ldr	r0, [r7, #20]
 80060ee:	4798      	blx	r3
 80060f0:	3718      	adds	r7, #24
 80060f2:	46bd      	mov	sp, r7
 80060f4:	bd80      	pop	{r7, pc}
 80060f6:	bf00      	nop
 80060f8:	20000c04 	.word	0x20000c04

080060fc <prvTimerTask>:
 80060fc:	b580      	push	{r7, lr}
 80060fe:	b084      	sub	sp, #16
 8006100:	af00      	add	r7, sp, #0
 8006102:	6078      	str	r0, [r7, #4]
 8006104:	f107 0308 	add.w	r3, r7, #8
 8006108:	4618      	mov	r0, r3
 800610a:	f000 f857 	bl	80061bc <prvGetNextExpireTime>
 800610e:	60f8      	str	r0, [r7, #12]
 8006110:	68bb      	ldr	r3, [r7, #8]
 8006112:	68f8      	ldr	r0, [r7, #12]
 8006114:	4619      	mov	r1, r3
 8006116:	f000 f803 	bl	8006120 <prvProcessTimerOrBlockTask>
 800611a:	f000 f8d5 	bl	80062c8 <prvProcessReceivedCommands>
 800611e:	e7f1      	b.n	8006104 <prvTimerTask+0x8>

08006120 <prvProcessTimerOrBlockTask>:
 8006120:	b580      	push	{r7, lr}
 8006122:	b084      	sub	sp, #16
 8006124:	af00      	add	r7, sp, #0
 8006126:	6078      	str	r0, [r7, #4]
 8006128:	6039      	str	r1, [r7, #0]
 800612a:	f7ff f9ff 	bl	800552c <vTaskSuspendAll>
 800612e:	f107 0308 	add.w	r3, r7, #8
 8006132:	4618      	mov	r0, r3
 8006134:	f000 f866 	bl	8006204 <prvSampleTimeNow>
 8006138:	60f8      	str	r0, [r7, #12]
 800613a:	68bb      	ldr	r3, [r7, #8]
 800613c:	2b00      	cmp	r3, #0
 800613e:	d131      	bne.n	80061a4 <prvProcessTimerOrBlockTask+0x84>
 8006140:	683b      	ldr	r3, [r7, #0]
 8006142:	2b00      	cmp	r3, #0
 8006144:	d10a      	bne.n	800615c <prvProcessTimerOrBlockTask+0x3c>
 8006146:	687a      	ldr	r2, [r7, #4]
 8006148:	68fb      	ldr	r3, [r7, #12]
 800614a:	429a      	cmp	r2, r3
 800614c:	d806      	bhi.n	800615c <prvProcessTimerOrBlockTask+0x3c>
 800614e:	f7ff f9fb 	bl	8005548 <xTaskResumeAll>
 8006152:	6878      	ldr	r0, [r7, #4]
 8006154:	68f9      	ldr	r1, [r7, #12]
 8006156:	f7ff ff91 	bl	800607c <prvProcessExpiredTimer>
 800615a:	e025      	b.n	80061a8 <prvProcessTimerOrBlockTask+0x88>
 800615c:	683b      	ldr	r3, [r7, #0]
 800615e:	2b00      	cmp	r3, #0
 8006160:	d008      	beq.n	8006174 <prvProcessTimerOrBlockTask+0x54>
 8006162:	4b13      	ldr	r3, [pc, #76]	; (80061b0 <prvProcessTimerOrBlockTask+0x90>)
 8006164:	681b      	ldr	r3, [r3, #0]
 8006166:	681b      	ldr	r3, [r3, #0]
 8006168:	2b00      	cmp	r3, #0
 800616a:	d101      	bne.n	8006170 <prvProcessTimerOrBlockTask+0x50>
 800616c:	2301      	movs	r3, #1
 800616e:	e000      	b.n	8006172 <prvProcessTimerOrBlockTask+0x52>
 8006170:	2300      	movs	r3, #0
 8006172:	603b      	str	r3, [r7, #0]
 8006174:	4b0f      	ldr	r3, [pc, #60]	; (80061b4 <prvProcessTimerOrBlockTask+0x94>)
 8006176:	681a      	ldr	r2, [r3, #0]
 8006178:	6879      	ldr	r1, [r7, #4]
 800617a:	68fb      	ldr	r3, [r7, #12]
 800617c:	1acb      	subs	r3, r1, r3
 800617e:	4610      	mov	r0, r2
 8006180:	4619      	mov	r1, r3
 8006182:	683a      	ldr	r2, [r7, #0]
 8006184:	f7fe ff58 	bl	8005038 <vQueueWaitForMessageRestricted>
 8006188:	f7ff f9de 	bl	8005548 <xTaskResumeAll>
 800618c:	4603      	mov	r3, r0
 800618e:	2b00      	cmp	r3, #0
 8006190:	d10a      	bne.n	80061a8 <prvProcessTimerOrBlockTask+0x88>
 8006192:	4b09      	ldr	r3, [pc, #36]	; (80061b8 <prvProcessTimerOrBlockTask+0x98>)
 8006194:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 8006198:	601a      	str	r2, [r3, #0]
 800619a:	f3bf 8f4f 	dsb	sy
 800619e:	f3bf 8f6f 	isb	sy
 80061a2:	e001      	b.n	80061a8 <prvProcessTimerOrBlockTask+0x88>
 80061a4:	f7ff f9d0 	bl	8005548 <xTaskResumeAll>
 80061a8:	3710      	adds	r7, #16
 80061aa:	46bd      	mov	sp, r7
 80061ac:	bd80      	pop	{r7, pc}
 80061ae:	bf00      	nop
 80061b0:	20000c08 	.word	0x20000c08
 80061b4:	20000c0c 	.word	0x20000c0c
 80061b8:	e000ed04 	.word	0xe000ed04

080061bc <prvGetNextExpireTime>:
 80061bc:	b480      	push	{r7}
 80061be:	b085      	sub	sp, #20
 80061c0:	af00      	add	r7, sp, #0
 80061c2:	6078      	str	r0, [r7, #4]
 80061c4:	4b0e      	ldr	r3, [pc, #56]	; (8006200 <prvGetNextExpireTime+0x44>)
 80061c6:	681b      	ldr	r3, [r3, #0]
 80061c8:	681b      	ldr	r3, [r3, #0]
 80061ca:	2b00      	cmp	r3, #0
 80061cc:	d101      	bne.n	80061d2 <prvGetNextExpireTime+0x16>
 80061ce:	2301      	movs	r3, #1
 80061d0:	e000      	b.n	80061d4 <prvGetNextExpireTime+0x18>
 80061d2:	2300      	movs	r3, #0
 80061d4:	687a      	ldr	r2, [r7, #4]
 80061d6:	6013      	str	r3, [r2, #0]
 80061d8:	687b      	ldr	r3, [r7, #4]
 80061da:	681b      	ldr	r3, [r3, #0]
 80061dc:	2b00      	cmp	r3, #0
 80061de:	d105      	bne.n	80061ec <prvGetNextExpireTime+0x30>
 80061e0:	4b07      	ldr	r3, [pc, #28]	; (8006200 <prvGetNextExpireTime+0x44>)
 80061e2:	681b      	ldr	r3, [r3, #0]
 80061e4:	68db      	ldr	r3, [r3, #12]
 80061e6:	681b      	ldr	r3, [r3, #0]
 80061e8:	60fb      	str	r3, [r7, #12]
 80061ea:	e001      	b.n	80061f0 <prvGetNextExpireTime+0x34>
 80061ec:	2300      	movs	r3, #0
 80061ee:	60fb      	str	r3, [r7, #12]
 80061f0:	68fb      	ldr	r3, [r7, #12]
 80061f2:	4618      	mov	r0, r3
 80061f4:	3714      	adds	r7, #20
 80061f6:	46bd      	mov	sp, r7
 80061f8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80061fc:	4770      	bx	lr
 80061fe:	bf00      	nop
 8006200:	20000c04 	.word	0x20000c04

08006204 <prvSampleTimeNow>:
 8006204:	b580      	push	{r7, lr}
 8006206:	b084      	sub	sp, #16
 8006208:	af00      	add	r7, sp, #0
 800620a:	6078      	str	r0, [r7, #4]
 800620c:	f7ff fa38 	bl	8005680 <xTaskGetTickCount>
 8006210:	60f8      	str	r0, [r7, #12]
 8006212:	4b0b      	ldr	r3, [pc, #44]	; (8006240 <prvSampleTimeNow+0x3c>)
 8006214:	681b      	ldr	r3, [r3, #0]
 8006216:	68fa      	ldr	r2, [r7, #12]
 8006218:	429a      	cmp	r2, r3
 800621a:	d205      	bcs.n	8006228 <prvSampleTimeNow+0x24>
 800621c:	f000 f8ee 	bl	80063fc <prvSwitchTimerLists>
 8006220:	687b      	ldr	r3, [r7, #4]
 8006222:	2201      	movs	r2, #1
 8006224:	601a      	str	r2, [r3, #0]
 8006226:	e002      	b.n	800622e <prvSampleTimeNow+0x2a>
 8006228:	687b      	ldr	r3, [r7, #4]
 800622a:	2200      	movs	r2, #0
 800622c:	601a      	str	r2, [r3, #0]
 800622e:	4b04      	ldr	r3, [pc, #16]	; (8006240 <prvSampleTimeNow+0x3c>)
 8006230:	68fa      	ldr	r2, [r7, #12]
 8006232:	601a      	str	r2, [r3, #0]
 8006234:	68fb      	ldr	r3, [r7, #12]
 8006236:	4618      	mov	r0, r3
 8006238:	3710      	adds	r7, #16
 800623a:	46bd      	mov	sp, r7
 800623c:	bd80      	pop	{r7, pc}
 800623e:	bf00      	nop
 8006240:	20000c14 	.word	0x20000c14

08006244 <prvInsertTimerInActiveList>:
 8006244:	b580      	push	{r7, lr}
 8006246:	b086      	sub	sp, #24
 8006248:	af00      	add	r7, sp, #0
 800624a:	60f8      	str	r0, [r7, #12]
 800624c:	60b9      	str	r1, [r7, #8]
 800624e:	607a      	str	r2, [r7, #4]
 8006250:	603b      	str	r3, [r7, #0]
 8006252:	2300      	movs	r3, #0
 8006254:	617b      	str	r3, [r7, #20]
 8006256:	68fb      	ldr	r3, [r7, #12]
 8006258:	68ba      	ldr	r2, [r7, #8]
 800625a:	605a      	str	r2, [r3, #4]
 800625c:	68fb      	ldr	r3, [r7, #12]
 800625e:	68fa      	ldr	r2, [r7, #12]
 8006260:	611a      	str	r2, [r3, #16]
 8006262:	68ba      	ldr	r2, [r7, #8]
 8006264:	687b      	ldr	r3, [r7, #4]
 8006266:	429a      	cmp	r2, r3
 8006268:	d812      	bhi.n	8006290 <prvInsertTimerInActiveList+0x4c>
 800626a:	687a      	ldr	r2, [r7, #4]
 800626c:	683b      	ldr	r3, [r7, #0]
 800626e:	1ad2      	subs	r2, r2, r3
 8006270:	68fb      	ldr	r3, [r7, #12]
 8006272:	699b      	ldr	r3, [r3, #24]
 8006274:	429a      	cmp	r2, r3
 8006276:	d302      	bcc.n	800627e <prvInsertTimerInActiveList+0x3a>
 8006278:	2301      	movs	r3, #1
 800627a:	617b      	str	r3, [r7, #20]
 800627c:	e01b      	b.n	80062b6 <prvInsertTimerInActiveList+0x72>
 800627e:	4b10      	ldr	r3, [pc, #64]	; (80062c0 <prvInsertTimerInActiveList+0x7c>)
 8006280:	681a      	ldr	r2, [r3, #0]
 8006282:	68fb      	ldr	r3, [r7, #12]
 8006284:	3304      	adds	r3, #4
 8006286:	4610      	mov	r0, r2
 8006288:	4619      	mov	r1, r3
 800628a:	f7fe f9cd 	bl	8004628 <vListInsert>
 800628e:	e012      	b.n	80062b6 <prvInsertTimerInActiveList+0x72>
 8006290:	687a      	ldr	r2, [r7, #4]
 8006292:	683b      	ldr	r3, [r7, #0]
 8006294:	429a      	cmp	r2, r3
 8006296:	d206      	bcs.n	80062a6 <prvInsertTimerInActiveList+0x62>
 8006298:	68ba      	ldr	r2, [r7, #8]
 800629a:	683b      	ldr	r3, [r7, #0]
 800629c:	429a      	cmp	r2, r3
 800629e:	d302      	bcc.n	80062a6 <prvInsertTimerInActiveList+0x62>
 80062a0:	2301      	movs	r3, #1
 80062a2:	617b      	str	r3, [r7, #20]
 80062a4:	e007      	b.n	80062b6 <prvInsertTimerInActiveList+0x72>
 80062a6:	4b07      	ldr	r3, [pc, #28]	; (80062c4 <prvInsertTimerInActiveList+0x80>)
 80062a8:	681a      	ldr	r2, [r3, #0]
 80062aa:	68fb      	ldr	r3, [r7, #12]
 80062ac:	3304      	adds	r3, #4
 80062ae:	4610      	mov	r0, r2
 80062b0:	4619      	mov	r1, r3
 80062b2:	f7fe f9b9 	bl	8004628 <vListInsert>
 80062b6:	697b      	ldr	r3, [r7, #20]
 80062b8:	4618      	mov	r0, r3
 80062ba:	3718      	adds	r7, #24
 80062bc:	46bd      	mov	sp, r7
 80062be:	bd80      	pop	{r7, pc}
 80062c0:	20000c08 	.word	0x20000c08
 80062c4:	20000c04 	.word	0x20000c04

080062c8 <prvProcessReceivedCommands>:
 80062c8:	b580      	push	{r7, lr}
 80062ca:	b08c      	sub	sp, #48	; 0x30
 80062cc:	af02      	add	r7, sp, #8
 80062ce:	e083      	b.n	80063d8 <prvProcessReceivedCommands+0x110>
 80062d0:	68bb      	ldr	r3, [r7, #8]
 80062d2:	2b00      	cmp	r3, #0
 80062d4:	f2c0 8080 	blt.w	80063d8 <prvProcessReceivedCommands+0x110>
 80062d8:	693b      	ldr	r3, [r7, #16]
 80062da:	627b      	str	r3, [r7, #36]	; 0x24
 80062dc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80062de:	695b      	ldr	r3, [r3, #20]
 80062e0:	2b00      	cmp	r3, #0
 80062e2:	d004      	beq.n	80062ee <prvProcessReceivedCommands+0x26>
 80062e4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80062e6:	3304      	adds	r3, #4
 80062e8:	4618      	mov	r0, r3
 80062ea:	f7fe f9d5 	bl	8004698 <uxListRemove>
 80062ee:	1d3b      	adds	r3, r7, #4
 80062f0:	4618      	mov	r0, r3
 80062f2:	f7ff ff87 	bl	8006204 <prvSampleTimeNow>
 80062f6:	6238      	str	r0, [r7, #32]
 80062f8:	68bb      	ldr	r3, [r7, #8]
 80062fa:	2b09      	cmp	r3, #9
 80062fc:	d86b      	bhi.n	80063d6 <prvProcessReceivedCommands+0x10e>
 80062fe:	a201      	add	r2, pc, #4	; (adr r2, 8006304 <prvProcessReceivedCommands+0x3c>)
 8006300:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8006304:	0800632d 	.word	0x0800632d
 8006308:	0800632d 	.word	0x0800632d
 800630c:	0800632d 	.word	0x0800632d
 8006310:	080063d7 	.word	0x080063d7
 8006314:	0800638d 	.word	0x0800638d
 8006318:	080063c5 	.word	0x080063c5
 800631c:	0800632d 	.word	0x0800632d
 8006320:	0800632d 	.word	0x0800632d
 8006324:	080063d7 	.word	0x080063d7
 8006328:	0800638d 	.word	0x0800638d
 800632c:	68fa      	ldr	r2, [r7, #12]
 800632e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006330:	699b      	ldr	r3, [r3, #24]
 8006332:	441a      	add	r2, r3
 8006334:	68fb      	ldr	r3, [r7, #12]
 8006336:	6a78      	ldr	r0, [r7, #36]	; 0x24
 8006338:	4611      	mov	r1, r2
 800633a:	6a3a      	ldr	r2, [r7, #32]
 800633c:	f7ff ff82 	bl	8006244 <prvInsertTimerInActiveList>
 8006340:	4603      	mov	r3, r0
 8006342:	2b00      	cmp	r3, #0
 8006344:	d021      	beq.n	800638a <prvProcessReceivedCommands+0xc2>
 8006346:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006348:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 800634a:	6a78      	ldr	r0, [r7, #36]	; 0x24
 800634c:	4798      	blx	r3
 800634e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006350:	69db      	ldr	r3, [r3, #28]
 8006352:	2b01      	cmp	r3, #1
 8006354:	d119      	bne.n	800638a <prvProcessReceivedCommands+0xc2>
 8006356:	68fa      	ldr	r2, [r7, #12]
 8006358:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800635a:	699b      	ldr	r3, [r3, #24]
 800635c:	4413      	add	r3, r2
 800635e:	2200      	movs	r2, #0
 8006360:	9200      	str	r2, [sp, #0]
 8006362:	6a78      	ldr	r0, [r7, #36]	; 0x24
 8006364:	2100      	movs	r1, #0
 8006366:	461a      	mov	r2, r3
 8006368:	2300      	movs	r3, #0
 800636a:	f7ff fe35 	bl	8005fd8 <xTimerGenericCommand>
 800636e:	61f8      	str	r0, [r7, #28]
 8006370:	69fb      	ldr	r3, [r7, #28]
 8006372:	2b00      	cmp	r3, #0
 8006374:	d109      	bne.n	800638a <prvProcessReceivedCommands+0xc2>
 8006376:	f04f 0350 	mov.w	r3, #80	; 0x50
 800637a:	f383 8811 	msr	BASEPRI, r3
 800637e:	f3bf 8f6f 	isb	sy
 8006382:	f3bf 8f4f 	dsb	sy
 8006386:	61bb      	str	r3, [r7, #24]
 8006388:	e7fe      	b.n	8006388 <prvProcessReceivedCommands+0xc0>
 800638a:	e025      	b.n	80063d8 <prvProcessReceivedCommands+0x110>
 800638c:	68fa      	ldr	r2, [r7, #12]
 800638e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006390:	619a      	str	r2, [r3, #24]
 8006392:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006394:	699b      	ldr	r3, [r3, #24]
 8006396:	2b00      	cmp	r3, #0
 8006398:	d109      	bne.n	80063ae <prvProcessReceivedCommands+0xe6>
 800639a:	f04f 0350 	mov.w	r3, #80	; 0x50
 800639e:	f383 8811 	msr	BASEPRI, r3
 80063a2:	f3bf 8f6f 	isb	sy
 80063a6:	f3bf 8f4f 	dsb	sy
 80063aa:	617b      	str	r3, [r7, #20]
 80063ac:	e7fe      	b.n	80063ac <prvProcessReceivedCommands+0xe4>
 80063ae:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80063b0:	699a      	ldr	r2, [r3, #24]
 80063b2:	6a3b      	ldr	r3, [r7, #32]
 80063b4:	4413      	add	r3, r2
 80063b6:	6a78      	ldr	r0, [r7, #36]	; 0x24
 80063b8:	4619      	mov	r1, r3
 80063ba:	6a3a      	ldr	r2, [r7, #32]
 80063bc:	6a3b      	ldr	r3, [r7, #32]
 80063be:	f7ff ff41 	bl	8006244 <prvInsertTimerInActiveList>
 80063c2:	e009      	b.n	80063d8 <prvProcessReceivedCommands+0x110>
 80063c4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80063c6:	f893 302c 	ldrb.w	r3, [r3, #44]	; 0x2c
 80063ca:	2b00      	cmp	r3, #0
 80063cc:	d102      	bne.n	80063d4 <prvProcessReceivedCommands+0x10c>
 80063ce:	6a78      	ldr	r0, [r7, #36]	; 0x24
 80063d0:	f000 fbb4 	bl	8006b3c <vPortFree>
 80063d4:	e000      	b.n	80063d8 <prvProcessReceivedCommands+0x110>
 80063d6:	bf00      	nop
 80063d8:	4b07      	ldr	r3, [pc, #28]	; (80063f8 <prvProcessReceivedCommands+0x130>)
 80063da:	681a      	ldr	r2, [r3, #0]
 80063dc:	f107 0308 	add.w	r3, r7, #8
 80063e0:	4610      	mov	r0, r2
 80063e2:	4619      	mov	r1, r3
 80063e4:	2200      	movs	r2, #0
 80063e6:	f7fe fc0f 	bl	8004c08 <xQueueReceive>
 80063ea:	4603      	mov	r3, r0
 80063ec:	2b00      	cmp	r3, #0
 80063ee:	f47f af6f 	bne.w	80062d0 <prvProcessReceivedCommands+0x8>
 80063f2:	3728      	adds	r7, #40	; 0x28
 80063f4:	46bd      	mov	sp, r7
 80063f6:	bd80      	pop	{r7, pc}
 80063f8:	20000c0c 	.word	0x20000c0c

080063fc <prvSwitchTimerLists>:
 80063fc:	b580      	push	{r7, lr}
 80063fe:	b088      	sub	sp, #32
 8006400:	af02      	add	r7, sp, #8
 8006402:	e044      	b.n	800648e <prvSwitchTimerLists+0x92>
 8006404:	4b2b      	ldr	r3, [pc, #172]	; (80064b4 <prvSwitchTimerLists+0xb8>)
 8006406:	681b      	ldr	r3, [r3, #0]
 8006408:	68db      	ldr	r3, [r3, #12]
 800640a:	681b      	ldr	r3, [r3, #0]
 800640c:	617b      	str	r3, [r7, #20]
 800640e:	4b29      	ldr	r3, [pc, #164]	; (80064b4 <prvSwitchTimerLists+0xb8>)
 8006410:	681b      	ldr	r3, [r3, #0]
 8006412:	68db      	ldr	r3, [r3, #12]
 8006414:	68db      	ldr	r3, [r3, #12]
 8006416:	613b      	str	r3, [r7, #16]
 8006418:	693b      	ldr	r3, [r7, #16]
 800641a:	3304      	adds	r3, #4
 800641c:	4618      	mov	r0, r3
 800641e:	f7fe f93b 	bl	8004698 <uxListRemove>
 8006422:	693b      	ldr	r3, [r7, #16]
 8006424:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8006426:	6938      	ldr	r0, [r7, #16]
 8006428:	4798      	blx	r3
 800642a:	693b      	ldr	r3, [r7, #16]
 800642c:	69db      	ldr	r3, [r3, #28]
 800642e:	2b01      	cmp	r3, #1
 8006430:	d12d      	bne.n	800648e <prvSwitchTimerLists+0x92>
 8006432:	693b      	ldr	r3, [r7, #16]
 8006434:	699a      	ldr	r2, [r3, #24]
 8006436:	697b      	ldr	r3, [r7, #20]
 8006438:	4413      	add	r3, r2
 800643a:	60fb      	str	r3, [r7, #12]
 800643c:	68fa      	ldr	r2, [r7, #12]
 800643e:	697b      	ldr	r3, [r7, #20]
 8006440:	429a      	cmp	r2, r3
 8006442:	d90e      	bls.n	8006462 <prvSwitchTimerLists+0x66>
 8006444:	693b      	ldr	r3, [r7, #16]
 8006446:	68fa      	ldr	r2, [r7, #12]
 8006448:	605a      	str	r2, [r3, #4]
 800644a:	693b      	ldr	r3, [r7, #16]
 800644c:	693a      	ldr	r2, [r7, #16]
 800644e:	611a      	str	r2, [r3, #16]
 8006450:	4b18      	ldr	r3, [pc, #96]	; (80064b4 <prvSwitchTimerLists+0xb8>)
 8006452:	681a      	ldr	r2, [r3, #0]
 8006454:	693b      	ldr	r3, [r7, #16]
 8006456:	3304      	adds	r3, #4
 8006458:	4610      	mov	r0, r2
 800645a:	4619      	mov	r1, r3
 800645c:	f7fe f8e4 	bl	8004628 <vListInsert>
 8006460:	e015      	b.n	800648e <prvSwitchTimerLists+0x92>
 8006462:	2300      	movs	r3, #0
 8006464:	9300      	str	r3, [sp, #0]
 8006466:	6938      	ldr	r0, [r7, #16]
 8006468:	2100      	movs	r1, #0
 800646a:	697a      	ldr	r2, [r7, #20]
 800646c:	2300      	movs	r3, #0
 800646e:	f7ff fdb3 	bl	8005fd8 <xTimerGenericCommand>
 8006472:	60b8      	str	r0, [r7, #8]
 8006474:	68bb      	ldr	r3, [r7, #8]
 8006476:	2b00      	cmp	r3, #0
 8006478:	d109      	bne.n	800648e <prvSwitchTimerLists+0x92>
 800647a:	f04f 0350 	mov.w	r3, #80	; 0x50
 800647e:	f383 8811 	msr	BASEPRI, r3
 8006482:	f3bf 8f6f 	isb	sy
 8006486:	f3bf 8f4f 	dsb	sy
 800648a:	603b      	str	r3, [r7, #0]
 800648c:	e7fe      	b.n	800648c <prvSwitchTimerLists+0x90>
 800648e:	4b09      	ldr	r3, [pc, #36]	; (80064b4 <prvSwitchTimerLists+0xb8>)
 8006490:	681b      	ldr	r3, [r3, #0]
 8006492:	681b      	ldr	r3, [r3, #0]
 8006494:	2b00      	cmp	r3, #0
 8006496:	d1b5      	bne.n	8006404 <prvSwitchTimerLists+0x8>
 8006498:	4b06      	ldr	r3, [pc, #24]	; (80064b4 <prvSwitchTimerLists+0xb8>)
 800649a:	681b      	ldr	r3, [r3, #0]
 800649c:	607b      	str	r3, [r7, #4]
 800649e:	4b06      	ldr	r3, [pc, #24]	; (80064b8 <prvSwitchTimerLists+0xbc>)
 80064a0:	681a      	ldr	r2, [r3, #0]
 80064a2:	4b04      	ldr	r3, [pc, #16]	; (80064b4 <prvSwitchTimerLists+0xb8>)
 80064a4:	601a      	str	r2, [r3, #0]
 80064a6:	4b04      	ldr	r3, [pc, #16]	; (80064b8 <prvSwitchTimerLists+0xbc>)
 80064a8:	687a      	ldr	r2, [r7, #4]
 80064aa:	601a      	str	r2, [r3, #0]
 80064ac:	3718      	adds	r7, #24
 80064ae:	46bd      	mov	sp, r7
 80064b0:	bd80      	pop	{r7, pc}
 80064b2:	bf00      	nop
 80064b4:	20000c04 	.word	0x20000c04
 80064b8:	20000c08 	.word	0x20000c08

080064bc <prvCheckForValidListAndQueue>:
 80064bc:	b580      	push	{r7, lr}
 80064be:	b082      	sub	sp, #8
 80064c0:	af02      	add	r7, sp, #8
 80064c2:	f000 f95f 	bl	8006784 <vPortEnterCritical>
 80064c6:	4b14      	ldr	r3, [pc, #80]	; (8006518 <prvCheckForValidListAndQueue+0x5c>)
 80064c8:	681b      	ldr	r3, [r3, #0]
 80064ca:	2b00      	cmp	r3, #0
 80064cc:	d120      	bne.n	8006510 <prvCheckForValidListAndQueue+0x54>
 80064ce:	4813      	ldr	r0, [pc, #76]	; (800651c <prvCheckForValidListAndQueue+0x60>)
 80064d0:	f7fe f85a 	bl	8004588 <vListInitialise>
 80064d4:	4812      	ldr	r0, [pc, #72]	; (8006520 <prvCheckForValidListAndQueue+0x64>)
 80064d6:	f7fe f857 	bl	8004588 <vListInitialise>
 80064da:	4b12      	ldr	r3, [pc, #72]	; (8006524 <prvCheckForValidListAndQueue+0x68>)
 80064dc:	4a0f      	ldr	r2, [pc, #60]	; (800651c <prvCheckForValidListAndQueue+0x60>)
 80064de:	601a      	str	r2, [r3, #0]
 80064e0:	4b11      	ldr	r3, [pc, #68]	; (8006528 <prvCheckForValidListAndQueue+0x6c>)
 80064e2:	4a0f      	ldr	r2, [pc, #60]	; (8006520 <prvCheckForValidListAndQueue+0x64>)
 80064e4:	601a      	str	r2, [r3, #0]
 80064e6:	2300      	movs	r3, #0
 80064e8:	9300      	str	r3, [sp, #0]
 80064ea:	200a      	movs	r0, #10
 80064ec:	210c      	movs	r1, #12
 80064ee:	4a0f      	ldr	r2, [pc, #60]	; (800652c <prvCheckForValidListAndQueue+0x70>)
 80064f0:	4b0f      	ldr	r3, [pc, #60]	; (8006530 <prvCheckForValidListAndQueue+0x74>)
 80064f2:	f7fe f963 	bl	80047bc <xQueueGenericCreateStatic>
 80064f6:	4602      	mov	r2, r0
 80064f8:	4b07      	ldr	r3, [pc, #28]	; (8006518 <prvCheckForValidListAndQueue+0x5c>)
 80064fa:	601a      	str	r2, [r3, #0]
 80064fc:	4b06      	ldr	r3, [pc, #24]	; (8006518 <prvCheckForValidListAndQueue+0x5c>)
 80064fe:	681b      	ldr	r3, [r3, #0]
 8006500:	2b00      	cmp	r3, #0
 8006502:	d005      	beq.n	8006510 <prvCheckForValidListAndQueue+0x54>
 8006504:	4b04      	ldr	r3, [pc, #16]	; (8006518 <prvCheckForValidListAndQueue+0x5c>)
 8006506:	681b      	ldr	r3, [r3, #0]
 8006508:	4618      	mov	r0, r3
 800650a:	490a      	ldr	r1, [pc, #40]	; (8006534 <prvCheckForValidListAndQueue+0x78>)
 800650c:	f7fe fd6c 	bl	8004fe8 <vQueueAddToRegistry>
 8006510:	f000 f966 	bl	80067e0 <vPortExitCritical>
 8006514:	46bd      	mov	sp, r7
 8006516:	bd80      	pop	{r7, pc}
 8006518:	20000c0c 	.word	0x20000c0c
 800651c:	20000bdc 	.word	0x20000bdc
 8006520:	20000bf0 	.word	0x20000bf0
 8006524:	20000c04 	.word	0x20000c04
 8006528:	20000c08 	.word	0x20000c08
 800652c:	20000c18 	.word	0x20000c18
 8006530:	20000c90 	.word	0x20000c90
 8006534:	08009514 	.word	0x08009514

08006538 <pxPortInitialiseStack>:
 8006538:	b480      	push	{r7}
 800653a:	b085      	sub	sp, #20
 800653c:	af00      	add	r7, sp, #0
 800653e:	60f8      	str	r0, [r7, #12]
 8006540:	60b9      	str	r1, [r7, #8]
 8006542:	607a      	str	r2, [r7, #4]
 8006544:	68fb      	ldr	r3, [r7, #12]
 8006546:	3b04      	subs	r3, #4
 8006548:	60fb      	str	r3, [r7, #12]
 800654a:	68fb      	ldr	r3, [r7, #12]
 800654c:	f04f 7280 	mov.w	r2, #16777216	; 0x1000000
 8006550:	601a      	str	r2, [r3, #0]
 8006552:	68fb      	ldr	r3, [r7, #12]
 8006554:	3b04      	subs	r3, #4
 8006556:	60fb      	str	r3, [r7, #12]
 8006558:	68bb      	ldr	r3, [r7, #8]
 800655a:	f023 0201 	bic.w	r2, r3, #1
 800655e:	68fb      	ldr	r3, [r7, #12]
 8006560:	601a      	str	r2, [r3, #0]
 8006562:	68fb      	ldr	r3, [r7, #12]
 8006564:	3b04      	subs	r3, #4
 8006566:	60fb      	str	r3, [r7, #12]
 8006568:	4a0c      	ldr	r2, [pc, #48]	; (800659c <pxPortInitialiseStack+0x64>)
 800656a:	68fb      	ldr	r3, [r7, #12]
 800656c:	601a      	str	r2, [r3, #0]
 800656e:	68fb      	ldr	r3, [r7, #12]
 8006570:	3b14      	subs	r3, #20
 8006572:	60fb      	str	r3, [r7, #12]
 8006574:	687a      	ldr	r2, [r7, #4]
 8006576:	68fb      	ldr	r3, [r7, #12]
 8006578:	601a      	str	r2, [r3, #0]
 800657a:	68fb      	ldr	r3, [r7, #12]
 800657c:	3b04      	subs	r3, #4
 800657e:	60fb      	str	r3, [r7, #12]
 8006580:	68fb      	ldr	r3, [r7, #12]
 8006582:	f06f 0202 	mvn.w	r2, #2
 8006586:	601a      	str	r2, [r3, #0]
 8006588:	68fb      	ldr	r3, [r7, #12]
 800658a:	3b20      	subs	r3, #32
 800658c:	60fb      	str	r3, [r7, #12]
 800658e:	68fb      	ldr	r3, [r7, #12]
 8006590:	4618      	mov	r0, r3
 8006592:	3714      	adds	r7, #20
 8006594:	46bd      	mov	sp, r7
 8006596:	f85d 7b04 	ldr.w	r7, [sp], #4
 800659a:	4770      	bx	lr
 800659c:	080065a1 	.word	0x080065a1

080065a0 <prvTaskExitError>:
 80065a0:	b480      	push	{r7}
 80065a2:	b085      	sub	sp, #20
 80065a4:	af00      	add	r7, sp, #0
 80065a6:	2300      	movs	r3, #0
 80065a8:	607b      	str	r3, [r7, #4]
 80065aa:	4b10      	ldr	r3, [pc, #64]	; (80065ec <prvTaskExitError+0x4c>)
 80065ac:	681b      	ldr	r3, [r3, #0]
 80065ae:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 80065b2:	d009      	beq.n	80065c8 <prvTaskExitError+0x28>
 80065b4:	f04f 0350 	mov.w	r3, #80	; 0x50
 80065b8:	f383 8811 	msr	BASEPRI, r3
 80065bc:	f3bf 8f6f 	isb	sy
 80065c0:	f3bf 8f4f 	dsb	sy
 80065c4:	60fb      	str	r3, [r7, #12]
 80065c6:	e7fe      	b.n	80065c6 <prvTaskExitError+0x26>
 80065c8:	f04f 0350 	mov.w	r3, #80	; 0x50
 80065cc:	f383 8811 	msr	BASEPRI, r3
 80065d0:	f3bf 8f6f 	isb	sy
 80065d4:	f3bf 8f4f 	dsb	sy
 80065d8:	60bb      	str	r3, [r7, #8]
 80065da:	bf00      	nop
 80065dc:	687b      	ldr	r3, [r7, #4]
 80065de:	2b00      	cmp	r3, #0
 80065e0:	d0fc      	beq.n	80065dc <prvTaskExitError+0x3c>
 80065e2:	3714      	adds	r7, #20
 80065e4:	46bd      	mov	sp, r7
 80065e6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80065ea:	4770      	bx	lr
 80065ec:	2000017c 	.word	0x2000017c

080065f0 <SVC_Handler>:
 80065f0:	4b07      	ldr	r3, [pc, #28]	; (8006610 <pxCurrentTCBConst2>)
 80065f2:	6819      	ldr	r1, [r3, #0]
 80065f4:	6808      	ldr	r0, [r1, #0]
 80065f6:	e8b0 4ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80065fa:	f380 8809 	msr	PSP, r0
 80065fe:	f3bf 8f6f 	isb	sy
 8006602:	f04f 0000 	mov.w	r0, #0
 8006606:	f380 8811 	msr	BASEPRI, r0
 800660a:	4770      	bx	lr
 800660c:	f3af 8000 	nop.w

08006610 <pxCurrentTCBConst2>:
 8006610:	20000ad8 	.word	0x20000ad8
 8006614:	f3af 8000 	nop.w
 8006618:	f3af 8000 	nop.w
 800661c:	f3af 8000 	nop.w

08006620 <prvPortStartFirstTask>:
 8006620:	4808      	ldr	r0, [pc, #32]	; (8006644 <prvPortStartFirstTask+0x24>)
 8006622:	6800      	ldr	r0, [r0, #0]
 8006624:	6800      	ldr	r0, [r0, #0]
 8006626:	f380 8808 	msr	MSP, r0
 800662a:	f04f 0000 	mov.w	r0, #0
 800662e:	f380 8814 	msr	CONTROL, r0
 8006632:	b662      	cpsie	i
 8006634:	b661      	cpsie	f
 8006636:	f3bf 8f4f 	dsb	sy
 800663a:	f3bf 8f6f 	isb	sy
 800663e:	df00      	svc	0
 8006640:	bf00      	nop
 8006642:	0000      	.short	0x0000
 8006644:	e000ed08 	.word	0xe000ed08

08006648 <xPortStartScheduler>:
 8006648:	b580      	push	{r7, lr}
 800664a:	b086      	sub	sp, #24
 800664c:	af00      	add	r7, sp, #0
 800664e:	4b44      	ldr	r3, [pc, #272]	; (8006760 <xPortStartScheduler+0x118>)
 8006650:	681a      	ldr	r2, [r3, #0]
 8006652:	4b44      	ldr	r3, [pc, #272]	; (8006764 <xPortStartScheduler+0x11c>)
 8006654:	429a      	cmp	r2, r3
 8006656:	d109      	bne.n	800666c <xPortStartScheduler+0x24>
 8006658:	f04f 0350 	mov.w	r3, #80	; 0x50
 800665c:	f383 8811 	msr	BASEPRI, r3
 8006660:	f3bf 8f6f 	isb	sy
 8006664:	f3bf 8f4f 	dsb	sy
 8006668:	613b      	str	r3, [r7, #16]
 800666a:	e7fe      	b.n	800666a <xPortStartScheduler+0x22>
 800666c:	4b3c      	ldr	r3, [pc, #240]	; (8006760 <xPortStartScheduler+0x118>)
 800666e:	681a      	ldr	r2, [r3, #0]
 8006670:	4b3d      	ldr	r3, [pc, #244]	; (8006768 <xPortStartScheduler+0x120>)
 8006672:	429a      	cmp	r2, r3
 8006674:	d109      	bne.n	800668a <xPortStartScheduler+0x42>
 8006676:	f04f 0350 	mov.w	r3, #80	; 0x50
 800667a:	f383 8811 	msr	BASEPRI, r3
 800667e:	f3bf 8f6f 	isb	sy
 8006682:	f3bf 8f4f 	dsb	sy
 8006686:	60fb      	str	r3, [r7, #12]
 8006688:	e7fe      	b.n	8006688 <xPortStartScheduler+0x40>
 800668a:	4b38      	ldr	r3, [pc, #224]	; (800676c <xPortStartScheduler+0x124>)
 800668c:	617b      	str	r3, [r7, #20]
 800668e:	697b      	ldr	r3, [r7, #20]
 8006690:	781b      	ldrb	r3, [r3, #0]
 8006692:	b2db      	uxtb	r3, r3
 8006694:	607b      	str	r3, [r7, #4]
 8006696:	697b      	ldr	r3, [r7, #20]
 8006698:	22ff      	movs	r2, #255	; 0xff
 800669a:	701a      	strb	r2, [r3, #0]
 800669c:	697b      	ldr	r3, [r7, #20]
 800669e:	781b      	ldrb	r3, [r3, #0]
 80066a0:	b2db      	uxtb	r3, r3
 80066a2:	70fb      	strb	r3, [r7, #3]
 80066a4:	78fb      	ldrb	r3, [r7, #3]
 80066a6:	b2db      	uxtb	r3, r3
 80066a8:	f003 0350 	and.w	r3, r3, #80	; 0x50
 80066ac:	b2da      	uxtb	r2, r3
 80066ae:	4b30      	ldr	r3, [pc, #192]	; (8006770 <xPortStartScheduler+0x128>)
 80066b0:	701a      	strb	r2, [r3, #0]
 80066b2:	4b30      	ldr	r3, [pc, #192]	; (8006774 <xPortStartScheduler+0x12c>)
 80066b4:	2207      	movs	r2, #7
 80066b6:	601a      	str	r2, [r3, #0]
 80066b8:	e009      	b.n	80066ce <xPortStartScheduler+0x86>
 80066ba:	4b2e      	ldr	r3, [pc, #184]	; (8006774 <xPortStartScheduler+0x12c>)
 80066bc:	681b      	ldr	r3, [r3, #0]
 80066be:	1e5a      	subs	r2, r3, #1
 80066c0:	4b2c      	ldr	r3, [pc, #176]	; (8006774 <xPortStartScheduler+0x12c>)
 80066c2:	601a      	str	r2, [r3, #0]
 80066c4:	78fb      	ldrb	r3, [r7, #3]
 80066c6:	b2db      	uxtb	r3, r3
 80066c8:	005b      	lsls	r3, r3, #1
 80066ca:	b2db      	uxtb	r3, r3
 80066cc:	70fb      	strb	r3, [r7, #3]
 80066ce:	78fb      	ldrb	r3, [r7, #3]
 80066d0:	b2db      	uxtb	r3, r3
 80066d2:	b2db      	uxtb	r3, r3
 80066d4:	b25b      	sxtb	r3, r3
 80066d6:	2b00      	cmp	r3, #0
 80066d8:	dbef      	blt.n	80066ba <xPortStartScheduler+0x72>
 80066da:	4b26      	ldr	r3, [pc, #152]	; (8006774 <xPortStartScheduler+0x12c>)
 80066dc:	681b      	ldr	r3, [r3, #0]
 80066de:	f1c3 0307 	rsb	r3, r3, #7
 80066e2:	2b04      	cmp	r3, #4
 80066e4:	d009      	beq.n	80066fa <xPortStartScheduler+0xb2>
 80066e6:	f04f 0350 	mov.w	r3, #80	; 0x50
 80066ea:	f383 8811 	msr	BASEPRI, r3
 80066ee:	f3bf 8f6f 	isb	sy
 80066f2:	f3bf 8f4f 	dsb	sy
 80066f6:	60bb      	str	r3, [r7, #8]
 80066f8:	e7fe      	b.n	80066f8 <xPortStartScheduler+0xb0>
 80066fa:	4b1e      	ldr	r3, [pc, #120]	; (8006774 <xPortStartScheduler+0x12c>)
 80066fc:	681b      	ldr	r3, [r3, #0]
 80066fe:	021a      	lsls	r2, r3, #8
 8006700:	4b1c      	ldr	r3, [pc, #112]	; (8006774 <xPortStartScheduler+0x12c>)
 8006702:	601a      	str	r2, [r3, #0]
 8006704:	4b1b      	ldr	r3, [pc, #108]	; (8006774 <xPortStartScheduler+0x12c>)
 8006706:	681b      	ldr	r3, [r3, #0]
 8006708:	f403 62e0 	and.w	r2, r3, #1792	; 0x700
 800670c:	4b19      	ldr	r3, [pc, #100]	; (8006774 <xPortStartScheduler+0x12c>)
 800670e:	601a      	str	r2, [r3, #0]
 8006710:	687b      	ldr	r3, [r7, #4]
 8006712:	b2da      	uxtb	r2, r3
 8006714:	697b      	ldr	r3, [r7, #20]
 8006716:	701a      	strb	r2, [r3, #0]
 8006718:	4b17      	ldr	r3, [pc, #92]	; (8006778 <xPortStartScheduler+0x130>)
 800671a:	4a17      	ldr	r2, [pc, #92]	; (8006778 <xPortStartScheduler+0x130>)
 800671c:	6812      	ldr	r2, [r2, #0]
 800671e:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 8006722:	601a      	str	r2, [r3, #0]
 8006724:	4b14      	ldr	r3, [pc, #80]	; (8006778 <xPortStartScheduler+0x130>)
 8006726:	4a14      	ldr	r2, [pc, #80]	; (8006778 <xPortStartScheduler+0x130>)
 8006728:	6812      	ldr	r2, [r2, #0]
 800672a:	f042 4270 	orr.w	r2, r2, #4026531840	; 0xf0000000
 800672e:	601a      	str	r2, [r3, #0]
 8006730:	f000 f8d6 	bl	80068e0 <vPortSetupTimerInterrupt>
 8006734:	4b11      	ldr	r3, [pc, #68]	; (800677c <xPortStartScheduler+0x134>)
 8006736:	2200      	movs	r2, #0
 8006738:	601a      	str	r2, [r3, #0]
 800673a:	f000 f8f3 	bl	8006924 <vPortEnableVFP>
 800673e:	4b10      	ldr	r3, [pc, #64]	; (8006780 <xPortStartScheduler+0x138>)
 8006740:	4a0f      	ldr	r2, [pc, #60]	; (8006780 <xPortStartScheduler+0x138>)
 8006742:	6812      	ldr	r2, [r2, #0]
 8006744:	f042 4240 	orr.w	r2, r2, #3221225472	; 0xc0000000
 8006748:	601a      	str	r2, [r3, #0]
 800674a:	f7ff ff69 	bl	8006620 <prvPortStartFirstTask>
 800674e:	f7ff f867 	bl	8005820 <vTaskSwitchContext>
 8006752:	f7ff ff25 	bl	80065a0 <prvTaskExitError>
 8006756:	2300      	movs	r3, #0
 8006758:	4618      	mov	r0, r3
 800675a:	3718      	adds	r7, #24
 800675c:	46bd      	mov	sp, r7
 800675e:	bd80      	pop	{r7, pc}
 8006760:	e000ed00 	.word	0xe000ed00
 8006764:	410fc271 	.word	0x410fc271
 8006768:	410fc270 	.word	0x410fc270
 800676c:	e000e400 	.word	0xe000e400
 8006770:	20000ce0 	.word	0x20000ce0
 8006774:	20000ce4 	.word	0x20000ce4
 8006778:	e000ed20 	.word	0xe000ed20
 800677c:	2000017c 	.word	0x2000017c
 8006780:	e000ef34 	.word	0xe000ef34

08006784 <vPortEnterCritical>:
 8006784:	b480      	push	{r7}
 8006786:	b083      	sub	sp, #12
 8006788:	af00      	add	r7, sp, #0
 800678a:	f04f 0350 	mov.w	r3, #80	; 0x50
 800678e:	f383 8811 	msr	BASEPRI, r3
 8006792:	f3bf 8f6f 	isb	sy
 8006796:	f3bf 8f4f 	dsb	sy
 800679a:	607b      	str	r3, [r7, #4]
 800679c:	4b0e      	ldr	r3, [pc, #56]	; (80067d8 <vPortEnterCritical+0x54>)
 800679e:	681b      	ldr	r3, [r3, #0]
 80067a0:	1c5a      	adds	r2, r3, #1
 80067a2:	4b0d      	ldr	r3, [pc, #52]	; (80067d8 <vPortEnterCritical+0x54>)
 80067a4:	601a      	str	r2, [r3, #0]
 80067a6:	4b0c      	ldr	r3, [pc, #48]	; (80067d8 <vPortEnterCritical+0x54>)
 80067a8:	681b      	ldr	r3, [r3, #0]
 80067aa:	2b01      	cmp	r3, #1
 80067ac:	d10e      	bne.n	80067cc <vPortEnterCritical+0x48>
 80067ae:	4b0b      	ldr	r3, [pc, #44]	; (80067dc <vPortEnterCritical+0x58>)
 80067b0:	681b      	ldr	r3, [r3, #0]
 80067b2:	b2db      	uxtb	r3, r3
 80067b4:	2b00      	cmp	r3, #0
 80067b6:	d009      	beq.n	80067cc <vPortEnterCritical+0x48>
 80067b8:	f04f 0350 	mov.w	r3, #80	; 0x50
 80067bc:	f383 8811 	msr	BASEPRI, r3
 80067c0:	f3bf 8f6f 	isb	sy
 80067c4:	f3bf 8f4f 	dsb	sy
 80067c8:	603b      	str	r3, [r7, #0]
 80067ca:	e7fe      	b.n	80067ca <vPortEnterCritical+0x46>
 80067cc:	370c      	adds	r7, #12
 80067ce:	46bd      	mov	sp, r7
 80067d0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80067d4:	4770      	bx	lr
 80067d6:	bf00      	nop
 80067d8:	2000017c 	.word	0x2000017c
 80067dc:	e000ed04 	.word	0xe000ed04

080067e0 <vPortExitCritical>:
 80067e0:	b480      	push	{r7}
 80067e2:	b083      	sub	sp, #12
 80067e4:	af00      	add	r7, sp, #0
 80067e6:	4b10      	ldr	r3, [pc, #64]	; (8006828 <vPortExitCritical+0x48>)
 80067e8:	681b      	ldr	r3, [r3, #0]
 80067ea:	2b00      	cmp	r3, #0
 80067ec:	d109      	bne.n	8006802 <vPortExitCritical+0x22>
 80067ee:	f04f 0350 	mov.w	r3, #80	; 0x50
 80067f2:	f383 8811 	msr	BASEPRI, r3
 80067f6:	f3bf 8f6f 	isb	sy
 80067fa:	f3bf 8f4f 	dsb	sy
 80067fe:	607b      	str	r3, [r7, #4]
 8006800:	e7fe      	b.n	8006800 <vPortExitCritical+0x20>
 8006802:	4b09      	ldr	r3, [pc, #36]	; (8006828 <vPortExitCritical+0x48>)
 8006804:	681b      	ldr	r3, [r3, #0]
 8006806:	1e5a      	subs	r2, r3, #1
 8006808:	4b07      	ldr	r3, [pc, #28]	; (8006828 <vPortExitCritical+0x48>)
 800680a:	601a      	str	r2, [r3, #0]
 800680c:	4b06      	ldr	r3, [pc, #24]	; (8006828 <vPortExitCritical+0x48>)
 800680e:	681b      	ldr	r3, [r3, #0]
 8006810:	2b00      	cmp	r3, #0
 8006812:	d104      	bne.n	800681e <vPortExitCritical+0x3e>
 8006814:	2300      	movs	r3, #0
 8006816:	603b      	str	r3, [r7, #0]
 8006818:	683b      	ldr	r3, [r7, #0]
 800681a:	f383 8811 	msr	BASEPRI, r3
 800681e:	370c      	adds	r7, #12
 8006820:	46bd      	mov	sp, r7
 8006822:	f85d 7b04 	ldr.w	r7, [sp], #4
 8006826:	4770      	bx	lr
 8006828:	2000017c 	.word	0x2000017c
 800682c:	00000000 	.word	0x00000000

08006830 <PendSV_Handler>:
 8006830:	f3ef 8009 	mrs	r0, PSP
 8006834:	f3bf 8f6f 	isb	sy
 8006838:	4b15      	ldr	r3, [pc, #84]	; (8006890 <pxCurrentTCBConst>)
 800683a:	681a      	ldr	r2, [r3, #0]
 800683c:	f01e 0f10 	tst.w	lr, #16
 8006840:	bf08      	it	eq
 8006842:	ed20 8a10 	vstmdbeq	r0!, {s16-s31}
 8006846:	e920 4ff0 	stmdb	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800684a:	6010      	str	r0, [r2, #0]
 800684c:	e92d 0009 	stmdb	sp!, {r0, r3}
 8006850:	f04f 0050 	mov.w	r0, #80	; 0x50
 8006854:	f380 8811 	msr	BASEPRI, r0
 8006858:	f3bf 8f4f 	dsb	sy
 800685c:	f3bf 8f6f 	isb	sy
 8006860:	f7fe ffde 	bl	8005820 <vTaskSwitchContext>
 8006864:	f04f 0000 	mov.w	r0, #0
 8006868:	f380 8811 	msr	BASEPRI, r0
 800686c:	bc09      	pop	{r0, r3}
 800686e:	6819      	ldr	r1, [r3, #0]
 8006870:	6808      	ldr	r0, [r1, #0]
 8006872:	e8b0 4ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006876:	f01e 0f10 	tst.w	lr, #16
 800687a:	bf08      	it	eq
 800687c:	ecb0 8a10 	vldmiaeq	r0!, {s16-s31}
 8006880:	f380 8809 	msr	PSP, r0
 8006884:	f3bf 8f6f 	isb	sy
 8006888:	4770      	bx	lr
 800688a:	bf00      	nop
 800688c:	f3af 8000 	nop.w

08006890 <pxCurrentTCBConst>:
 8006890:	20000ad8 	.word	0x20000ad8
 8006894:	f3af 8000 	nop.w
 8006898:	f3af 8000 	nop.w
 800689c:	f3af 8000 	nop.w

080068a0 <SysTick_Handler>:
 80068a0:	b580      	push	{r7, lr}
 80068a2:	b082      	sub	sp, #8
 80068a4:	af00      	add	r7, sp, #0
 80068a6:	f04f 0350 	mov.w	r3, #80	; 0x50
 80068aa:	f383 8811 	msr	BASEPRI, r3
 80068ae:	f3bf 8f6f 	isb	sy
 80068b2:	f3bf 8f4f 	dsb	sy
 80068b6:	607b      	str	r3, [r7, #4]
 80068b8:	f7fe fef2 	bl	80056a0 <xTaskIncrementTick>
 80068bc:	4603      	mov	r3, r0
 80068be:	2b00      	cmp	r3, #0
 80068c0:	d003      	beq.n	80068ca <SysTick_Handler+0x2a>
 80068c2:	4b06      	ldr	r3, [pc, #24]	; (80068dc <SysTick_Handler+0x3c>)
 80068c4:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 80068c8:	601a      	str	r2, [r3, #0]
 80068ca:	2300      	movs	r3, #0
 80068cc:	603b      	str	r3, [r7, #0]
 80068ce:	683b      	ldr	r3, [r7, #0]
 80068d0:	f383 8811 	msr	BASEPRI, r3
 80068d4:	3708      	adds	r7, #8
 80068d6:	46bd      	mov	sp, r7
 80068d8:	bd80      	pop	{r7, pc}
 80068da:	bf00      	nop
 80068dc:	e000ed04 	.word	0xe000ed04

080068e0 <vPortSetupTimerInterrupt>:
 80068e0:	b480      	push	{r7}
 80068e2:	af00      	add	r7, sp, #0
 80068e4:	4b0a      	ldr	r3, [pc, #40]	; (8006910 <vPortSetupTimerInterrupt+0x30>)
 80068e6:	2200      	movs	r2, #0
 80068e8:	601a      	str	r2, [r3, #0]
 80068ea:	4b0a      	ldr	r3, [pc, #40]	; (8006914 <vPortSetupTimerInterrupt+0x34>)
 80068ec:	2200      	movs	r2, #0
 80068ee:	601a      	str	r2, [r3, #0]
 80068f0:	4b09      	ldr	r3, [pc, #36]	; (8006918 <vPortSetupTimerInterrupt+0x38>)
 80068f2:	4a0a      	ldr	r2, [pc, #40]	; (800691c <vPortSetupTimerInterrupt+0x3c>)
 80068f4:	6811      	ldr	r1, [r2, #0]
 80068f6:	4a0a      	ldr	r2, [pc, #40]	; (8006920 <vPortSetupTimerInterrupt+0x40>)
 80068f8:	fba2 0201 	umull	r0, r2, r2, r1
 80068fc:	0992      	lsrs	r2, r2, #6
 80068fe:	3a01      	subs	r2, #1
 8006900:	601a      	str	r2, [r3, #0]
 8006902:	4b03      	ldr	r3, [pc, #12]	; (8006910 <vPortSetupTimerInterrupt+0x30>)
 8006904:	2207      	movs	r2, #7
 8006906:	601a      	str	r2, [r3, #0]
 8006908:	46bd      	mov	sp, r7
 800690a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800690e:	4770      	bx	lr
 8006910:	e000e010 	.word	0xe000e010
 8006914:	e000e018 	.word	0xe000e018
 8006918:	e000e014 	.word	0xe000e014
 800691c:	20000000 	.word	0x20000000
 8006920:	10624dd3 	.word	0x10624dd3

08006924 <vPortEnableVFP>:
 8006924:	f8df 000c 	ldr.w	r0, [pc, #12]	; 8006934 <vPortEnableVFP+0x10>
 8006928:	6801      	ldr	r1, [r0, #0]
 800692a:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 800692e:	6001      	str	r1, [r0, #0]
 8006930:	4770      	bx	lr
 8006932:	0000      	.short	0x0000
 8006934:	e000ed88 	.word	0xe000ed88

08006938 <vPortValidateInterruptPriority>:
 8006938:	b480      	push	{r7}
 800693a:	b085      	sub	sp, #20
 800693c:	af00      	add	r7, sp, #0
 800693e:	f3ef 8305 	mrs	r3, IPSR
 8006942:	60fb      	str	r3, [r7, #12]
 8006944:	68fb      	ldr	r3, [r7, #12]
 8006946:	2b0f      	cmp	r3, #15
 8006948:	d913      	bls.n	8006972 <vPortValidateInterruptPriority+0x3a>
 800694a:	4a15      	ldr	r2, [pc, #84]	; (80069a0 <vPortValidateInterruptPriority+0x68>)
 800694c:	68fb      	ldr	r3, [r7, #12]
 800694e:	4413      	add	r3, r2
 8006950:	781b      	ldrb	r3, [r3, #0]
 8006952:	72fb      	strb	r3, [r7, #11]
 8006954:	4b13      	ldr	r3, [pc, #76]	; (80069a4 <vPortValidateInterruptPriority+0x6c>)
 8006956:	781b      	ldrb	r3, [r3, #0]
 8006958:	7afa      	ldrb	r2, [r7, #11]
 800695a:	429a      	cmp	r2, r3
 800695c:	d209      	bcs.n	8006972 <vPortValidateInterruptPriority+0x3a>
 800695e:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006962:	f383 8811 	msr	BASEPRI, r3
 8006966:	f3bf 8f6f 	isb	sy
 800696a:	f3bf 8f4f 	dsb	sy
 800696e:	607b      	str	r3, [r7, #4]
 8006970:	e7fe      	b.n	8006970 <vPortValidateInterruptPriority+0x38>
 8006972:	4b0d      	ldr	r3, [pc, #52]	; (80069a8 <vPortValidateInterruptPriority+0x70>)
 8006974:	681b      	ldr	r3, [r3, #0]
 8006976:	f403 62e0 	and.w	r2, r3, #1792	; 0x700
 800697a:	4b0c      	ldr	r3, [pc, #48]	; (80069ac <vPortValidateInterruptPriority+0x74>)
 800697c:	681b      	ldr	r3, [r3, #0]
 800697e:	429a      	cmp	r2, r3
 8006980:	d909      	bls.n	8006996 <vPortValidateInterruptPriority+0x5e>
 8006982:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006986:	f383 8811 	msr	BASEPRI, r3
 800698a:	f3bf 8f6f 	isb	sy
 800698e:	f3bf 8f4f 	dsb	sy
 8006992:	603b      	str	r3, [r7, #0]
 8006994:	e7fe      	b.n	8006994 <vPortValidateInterruptPriority+0x5c>
 8006996:	3714      	adds	r7, #20
 8006998:	46bd      	mov	sp, r7
 800699a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800699e:	4770      	bx	lr
 80069a0:	e000e3f0 	.word	0xe000e3f0
 80069a4:	20000ce0 	.word	0x20000ce0
 80069a8:	e000ed0c 	.word	0xe000ed0c
 80069ac:	20000ce4 	.word	0x20000ce4

080069b0 <pvPortMalloc>:
 80069b0:	b580      	push	{r7, lr}
 80069b2:	b08a      	sub	sp, #40	; 0x28
 80069b4:	af00      	add	r7, sp, #0
 80069b6:	6078      	str	r0, [r7, #4]
 80069b8:	2300      	movs	r3, #0
 80069ba:	61fb      	str	r3, [r7, #28]
 80069bc:	f7fe fdb6 	bl	800552c <vTaskSuspendAll>
 80069c0:	4b59      	ldr	r3, [pc, #356]	; (8006b28 <pvPortMalloc+0x178>)
 80069c2:	681b      	ldr	r3, [r3, #0]
 80069c4:	2b00      	cmp	r3, #0
 80069c6:	d101      	bne.n	80069cc <pvPortMalloc+0x1c>
 80069c8:	f000 f910 	bl	8006bec <prvHeapInit>
 80069cc:	4b57      	ldr	r3, [pc, #348]	; (8006b2c <pvPortMalloc+0x17c>)
 80069ce:	681a      	ldr	r2, [r3, #0]
 80069d0:	687b      	ldr	r3, [r7, #4]
 80069d2:	4013      	ands	r3, r2
 80069d4:	2b00      	cmp	r3, #0
 80069d6:	f040 808c 	bne.w	8006af2 <pvPortMalloc+0x142>
 80069da:	687b      	ldr	r3, [r7, #4]
 80069dc:	2b00      	cmp	r3, #0
 80069de:	d01c      	beq.n	8006a1a <pvPortMalloc+0x6a>
 80069e0:	2308      	movs	r3, #8
 80069e2:	687a      	ldr	r2, [r7, #4]
 80069e4:	4413      	add	r3, r2
 80069e6:	607b      	str	r3, [r7, #4]
 80069e8:	687b      	ldr	r3, [r7, #4]
 80069ea:	f003 0307 	and.w	r3, r3, #7
 80069ee:	2b00      	cmp	r3, #0
 80069f0:	d013      	beq.n	8006a1a <pvPortMalloc+0x6a>
 80069f2:	687b      	ldr	r3, [r7, #4]
 80069f4:	f023 0307 	bic.w	r3, r3, #7
 80069f8:	3308      	adds	r3, #8
 80069fa:	607b      	str	r3, [r7, #4]
 80069fc:	687b      	ldr	r3, [r7, #4]
 80069fe:	f003 0307 	and.w	r3, r3, #7
 8006a02:	2b00      	cmp	r3, #0
 8006a04:	d009      	beq.n	8006a1a <pvPortMalloc+0x6a>
 8006a06:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006a0a:	f383 8811 	msr	BASEPRI, r3
 8006a0e:	f3bf 8f6f 	isb	sy
 8006a12:	f3bf 8f4f 	dsb	sy
 8006a16:	617b      	str	r3, [r7, #20]
 8006a18:	e7fe      	b.n	8006a18 <pvPortMalloc+0x68>
 8006a1a:	687b      	ldr	r3, [r7, #4]
 8006a1c:	2b00      	cmp	r3, #0
 8006a1e:	d068      	beq.n	8006af2 <pvPortMalloc+0x142>
 8006a20:	4b43      	ldr	r3, [pc, #268]	; (8006b30 <pvPortMalloc+0x180>)
 8006a22:	681b      	ldr	r3, [r3, #0]
 8006a24:	687a      	ldr	r2, [r7, #4]
 8006a26:	429a      	cmp	r2, r3
 8006a28:	d863      	bhi.n	8006af2 <pvPortMalloc+0x142>
 8006a2a:	4b42      	ldr	r3, [pc, #264]	; (8006b34 <pvPortMalloc+0x184>)
 8006a2c:	623b      	str	r3, [r7, #32]
 8006a2e:	4b41      	ldr	r3, [pc, #260]	; (8006b34 <pvPortMalloc+0x184>)
 8006a30:	681b      	ldr	r3, [r3, #0]
 8006a32:	627b      	str	r3, [r7, #36]	; 0x24
 8006a34:	e004      	b.n	8006a40 <pvPortMalloc+0x90>
 8006a36:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006a38:	623b      	str	r3, [r7, #32]
 8006a3a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006a3c:	681b      	ldr	r3, [r3, #0]
 8006a3e:	627b      	str	r3, [r7, #36]	; 0x24
 8006a40:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006a42:	685a      	ldr	r2, [r3, #4]
 8006a44:	687b      	ldr	r3, [r7, #4]
 8006a46:	429a      	cmp	r2, r3
 8006a48:	d203      	bcs.n	8006a52 <pvPortMalloc+0xa2>
 8006a4a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006a4c:	681b      	ldr	r3, [r3, #0]
 8006a4e:	2b00      	cmp	r3, #0
 8006a50:	d1f1      	bne.n	8006a36 <pvPortMalloc+0x86>
 8006a52:	4b35      	ldr	r3, [pc, #212]	; (8006b28 <pvPortMalloc+0x178>)
 8006a54:	681b      	ldr	r3, [r3, #0]
 8006a56:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8006a58:	429a      	cmp	r2, r3
 8006a5a:	d04a      	beq.n	8006af2 <pvPortMalloc+0x142>
 8006a5c:	6a3b      	ldr	r3, [r7, #32]
 8006a5e:	681a      	ldr	r2, [r3, #0]
 8006a60:	2308      	movs	r3, #8
 8006a62:	4413      	add	r3, r2
 8006a64:	61fb      	str	r3, [r7, #28]
 8006a66:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006a68:	681a      	ldr	r2, [r3, #0]
 8006a6a:	6a3b      	ldr	r3, [r7, #32]
 8006a6c:	601a      	str	r2, [r3, #0]
 8006a6e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006a70:	685a      	ldr	r2, [r3, #4]
 8006a72:	687b      	ldr	r3, [r7, #4]
 8006a74:	1ad2      	subs	r2, r2, r3
 8006a76:	2308      	movs	r3, #8
 8006a78:	005b      	lsls	r3, r3, #1
 8006a7a:	429a      	cmp	r2, r3
 8006a7c:	d91e      	bls.n	8006abc <pvPortMalloc+0x10c>
 8006a7e:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8006a80:	687b      	ldr	r3, [r7, #4]
 8006a82:	4413      	add	r3, r2
 8006a84:	61bb      	str	r3, [r7, #24]
 8006a86:	69bb      	ldr	r3, [r7, #24]
 8006a88:	f003 0307 	and.w	r3, r3, #7
 8006a8c:	2b00      	cmp	r3, #0
 8006a8e:	d009      	beq.n	8006aa4 <pvPortMalloc+0xf4>
 8006a90:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006a94:	f383 8811 	msr	BASEPRI, r3
 8006a98:	f3bf 8f6f 	isb	sy
 8006a9c:	f3bf 8f4f 	dsb	sy
 8006aa0:	613b      	str	r3, [r7, #16]
 8006aa2:	e7fe      	b.n	8006aa2 <pvPortMalloc+0xf2>
 8006aa4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006aa6:	685a      	ldr	r2, [r3, #4]
 8006aa8:	687b      	ldr	r3, [r7, #4]
 8006aaa:	1ad2      	subs	r2, r2, r3
 8006aac:	69bb      	ldr	r3, [r7, #24]
 8006aae:	605a      	str	r2, [r3, #4]
 8006ab0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006ab2:	687a      	ldr	r2, [r7, #4]
 8006ab4:	605a      	str	r2, [r3, #4]
 8006ab6:	69b8      	ldr	r0, [r7, #24]
 8006ab8:	f000 f8fa 	bl	8006cb0 <prvInsertBlockIntoFreeList>
 8006abc:	4b1c      	ldr	r3, [pc, #112]	; (8006b30 <pvPortMalloc+0x180>)
 8006abe:	681a      	ldr	r2, [r3, #0]
 8006ac0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006ac2:	685b      	ldr	r3, [r3, #4]
 8006ac4:	1ad2      	subs	r2, r2, r3
 8006ac6:	4b1a      	ldr	r3, [pc, #104]	; (8006b30 <pvPortMalloc+0x180>)
 8006ac8:	601a      	str	r2, [r3, #0]
 8006aca:	4b19      	ldr	r3, [pc, #100]	; (8006b30 <pvPortMalloc+0x180>)
 8006acc:	681a      	ldr	r2, [r3, #0]
 8006ace:	4b1a      	ldr	r3, [pc, #104]	; (8006b38 <pvPortMalloc+0x188>)
 8006ad0:	681b      	ldr	r3, [r3, #0]
 8006ad2:	429a      	cmp	r2, r3
 8006ad4:	d203      	bcs.n	8006ade <pvPortMalloc+0x12e>
 8006ad6:	4b16      	ldr	r3, [pc, #88]	; (8006b30 <pvPortMalloc+0x180>)
 8006ad8:	681a      	ldr	r2, [r3, #0]
 8006ada:	4b17      	ldr	r3, [pc, #92]	; (8006b38 <pvPortMalloc+0x188>)
 8006adc:	601a      	str	r2, [r3, #0]
 8006ade:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006ae0:	685a      	ldr	r2, [r3, #4]
 8006ae2:	4b12      	ldr	r3, [pc, #72]	; (8006b2c <pvPortMalloc+0x17c>)
 8006ae4:	681b      	ldr	r3, [r3, #0]
 8006ae6:	431a      	orrs	r2, r3
 8006ae8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006aea:	605a      	str	r2, [r3, #4]
 8006aec:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006aee:	2200      	movs	r2, #0
 8006af0:	601a      	str	r2, [r3, #0]
 8006af2:	f7fe fd29 	bl	8005548 <xTaskResumeAll>
 8006af6:	69fb      	ldr	r3, [r7, #28]
 8006af8:	2b00      	cmp	r3, #0
 8006afa:	d101      	bne.n	8006b00 <pvPortMalloc+0x150>
 8006afc:	f7fd fcf0 	bl	80044e0 <vApplicationMallocFailedHook>
 8006b00:	69fb      	ldr	r3, [r7, #28]
 8006b02:	f003 0307 	and.w	r3, r3, #7
 8006b06:	2b00      	cmp	r3, #0
 8006b08:	d009      	beq.n	8006b1e <pvPortMalloc+0x16e>
 8006b0a:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006b0e:	f383 8811 	msr	BASEPRI, r3
 8006b12:	f3bf 8f6f 	isb	sy
 8006b16:	f3bf 8f4f 	dsb	sy
 8006b1a:	60fb      	str	r3, [r7, #12]
 8006b1c:	e7fe      	b.n	8006b1c <pvPortMalloc+0x16c>
 8006b1e:	69fb      	ldr	r3, [r7, #28]
 8006b20:	4618      	mov	r0, r3
 8006b22:	3728      	adds	r7, #40	; 0x28
 8006b24:	46bd      	mov	sp, r7
 8006b26:	bd80      	pop	{r7, pc}
 8006b28:	200138f0 	.word	0x200138f0
 8006b2c:	200138fc 	.word	0x200138fc
 8006b30:	200138f4 	.word	0x200138f4
 8006b34:	200138e8 	.word	0x200138e8
 8006b38:	200138f8 	.word	0x200138f8

08006b3c <vPortFree>:
 8006b3c:	b580      	push	{r7, lr}
 8006b3e:	b086      	sub	sp, #24
 8006b40:	af00      	add	r7, sp, #0
 8006b42:	6078      	str	r0, [r7, #4]
 8006b44:	687b      	ldr	r3, [r7, #4]
 8006b46:	617b      	str	r3, [r7, #20]
 8006b48:	687b      	ldr	r3, [r7, #4]
 8006b4a:	2b00      	cmp	r3, #0
 8006b4c:	d046      	beq.n	8006bdc <vPortFree+0xa0>
 8006b4e:	2308      	movs	r3, #8
 8006b50:	425b      	negs	r3, r3
 8006b52:	697a      	ldr	r2, [r7, #20]
 8006b54:	4413      	add	r3, r2
 8006b56:	617b      	str	r3, [r7, #20]
 8006b58:	697b      	ldr	r3, [r7, #20]
 8006b5a:	613b      	str	r3, [r7, #16]
 8006b5c:	693b      	ldr	r3, [r7, #16]
 8006b5e:	685a      	ldr	r2, [r3, #4]
 8006b60:	4b20      	ldr	r3, [pc, #128]	; (8006be4 <vPortFree+0xa8>)
 8006b62:	681b      	ldr	r3, [r3, #0]
 8006b64:	4013      	ands	r3, r2
 8006b66:	2b00      	cmp	r3, #0
 8006b68:	d109      	bne.n	8006b7e <vPortFree+0x42>
 8006b6a:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006b6e:	f383 8811 	msr	BASEPRI, r3
 8006b72:	f3bf 8f6f 	isb	sy
 8006b76:	f3bf 8f4f 	dsb	sy
 8006b7a:	60fb      	str	r3, [r7, #12]
 8006b7c:	e7fe      	b.n	8006b7c <vPortFree+0x40>
 8006b7e:	693b      	ldr	r3, [r7, #16]
 8006b80:	681b      	ldr	r3, [r3, #0]
 8006b82:	2b00      	cmp	r3, #0
 8006b84:	d009      	beq.n	8006b9a <vPortFree+0x5e>
 8006b86:	f04f 0350 	mov.w	r3, #80	; 0x50
 8006b8a:	f383 8811 	msr	BASEPRI, r3
 8006b8e:	f3bf 8f6f 	isb	sy
 8006b92:	f3bf 8f4f 	dsb	sy
 8006b96:	60bb      	str	r3, [r7, #8]
 8006b98:	e7fe      	b.n	8006b98 <vPortFree+0x5c>
 8006b9a:	693b      	ldr	r3, [r7, #16]
 8006b9c:	685a      	ldr	r2, [r3, #4]
 8006b9e:	4b11      	ldr	r3, [pc, #68]	; (8006be4 <vPortFree+0xa8>)
 8006ba0:	681b      	ldr	r3, [r3, #0]
 8006ba2:	4013      	ands	r3, r2
 8006ba4:	2b00      	cmp	r3, #0
 8006ba6:	d019      	beq.n	8006bdc <vPortFree+0xa0>
 8006ba8:	693b      	ldr	r3, [r7, #16]
 8006baa:	681b      	ldr	r3, [r3, #0]
 8006bac:	2b00      	cmp	r3, #0
 8006bae:	d115      	bne.n	8006bdc <vPortFree+0xa0>
 8006bb0:	693b      	ldr	r3, [r7, #16]
 8006bb2:	685a      	ldr	r2, [r3, #4]
 8006bb4:	4b0b      	ldr	r3, [pc, #44]	; (8006be4 <vPortFree+0xa8>)
 8006bb6:	681b      	ldr	r3, [r3, #0]
 8006bb8:	43db      	mvns	r3, r3
 8006bba:	401a      	ands	r2, r3
 8006bbc:	693b      	ldr	r3, [r7, #16]
 8006bbe:	605a      	str	r2, [r3, #4]
 8006bc0:	f7fe fcb4 	bl	800552c <vTaskSuspendAll>
 8006bc4:	693b      	ldr	r3, [r7, #16]
 8006bc6:	685a      	ldr	r2, [r3, #4]
 8006bc8:	4b07      	ldr	r3, [pc, #28]	; (8006be8 <vPortFree+0xac>)
 8006bca:	681b      	ldr	r3, [r3, #0]
 8006bcc:	441a      	add	r2, r3
 8006bce:	4b06      	ldr	r3, [pc, #24]	; (8006be8 <vPortFree+0xac>)
 8006bd0:	601a      	str	r2, [r3, #0]
 8006bd2:	6938      	ldr	r0, [r7, #16]
 8006bd4:	f000 f86c 	bl	8006cb0 <prvInsertBlockIntoFreeList>
 8006bd8:	f7fe fcb6 	bl	8005548 <xTaskResumeAll>
 8006bdc:	3718      	adds	r7, #24
 8006bde:	46bd      	mov	sp, r7
 8006be0:	bd80      	pop	{r7, pc}
 8006be2:	bf00      	nop
 8006be4:	200138fc 	.word	0x200138fc
 8006be8:	200138f4 	.word	0x200138f4

08006bec <prvHeapInit>:
 8006bec:	b480      	push	{r7}
 8006bee:	b085      	sub	sp, #20
 8006bf0:	af00      	add	r7, sp, #0
 8006bf2:	f44f 3396 	mov.w	r3, #76800	; 0x12c00
 8006bf6:	60bb      	str	r3, [r7, #8]
 8006bf8:	4b27      	ldr	r3, [pc, #156]	; (8006c98 <prvHeapInit+0xac>)
 8006bfa:	60fb      	str	r3, [r7, #12]
 8006bfc:	68fb      	ldr	r3, [r7, #12]
 8006bfe:	f003 0307 	and.w	r3, r3, #7
 8006c02:	2b00      	cmp	r3, #0
 8006c04:	d00c      	beq.n	8006c20 <prvHeapInit+0x34>
 8006c06:	68fb      	ldr	r3, [r7, #12]
 8006c08:	3307      	adds	r3, #7
 8006c0a:	60fb      	str	r3, [r7, #12]
 8006c0c:	68fb      	ldr	r3, [r7, #12]
 8006c0e:	f023 0307 	bic.w	r3, r3, #7
 8006c12:	60fb      	str	r3, [r7, #12]
 8006c14:	68ba      	ldr	r2, [r7, #8]
 8006c16:	68fb      	ldr	r3, [r7, #12]
 8006c18:	1ad2      	subs	r2, r2, r3
 8006c1a:	4b1f      	ldr	r3, [pc, #124]	; (8006c98 <prvHeapInit+0xac>)
 8006c1c:	4413      	add	r3, r2
 8006c1e:	60bb      	str	r3, [r7, #8]
 8006c20:	68fb      	ldr	r3, [r7, #12]
 8006c22:	607b      	str	r3, [r7, #4]
 8006c24:	4b1d      	ldr	r3, [pc, #116]	; (8006c9c <prvHeapInit+0xb0>)
 8006c26:	687a      	ldr	r2, [r7, #4]
 8006c28:	601a      	str	r2, [r3, #0]
 8006c2a:	4b1c      	ldr	r3, [pc, #112]	; (8006c9c <prvHeapInit+0xb0>)
 8006c2c:	2200      	movs	r2, #0
 8006c2e:	605a      	str	r2, [r3, #4]
 8006c30:	687a      	ldr	r2, [r7, #4]
 8006c32:	68bb      	ldr	r3, [r7, #8]
 8006c34:	4413      	add	r3, r2
 8006c36:	60fb      	str	r3, [r7, #12]
 8006c38:	2308      	movs	r3, #8
 8006c3a:	68fa      	ldr	r2, [r7, #12]
 8006c3c:	1ad3      	subs	r3, r2, r3
 8006c3e:	60fb      	str	r3, [r7, #12]
 8006c40:	68fb      	ldr	r3, [r7, #12]
 8006c42:	f023 0307 	bic.w	r3, r3, #7
 8006c46:	60fb      	str	r3, [r7, #12]
 8006c48:	68fa      	ldr	r2, [r7, #12]
 8006c4a:	4b15      	ldr	r3, [pc, #84]	; (8006ca0 <prvHeapInit+0xb4>)
 8006c4c:	601a      	str	r2, [r3, #0]
 8006c4e:	4b14      	ldr	r3, [pc, #80]	; (8006ca0 <prvHeapInit+0xb4>)
 8006c50:	681b      	ldr	r3, [r3, #0]
 8006c52:	2200      	movs	r2, #0
 8006c54:	605a      	str	r2, [r3, #4]
 8006c56:	4b12      	ldr	r3, [pc, #72]	; (8006ca0 <prvHeapInit+0xb4>)
 8006c58:	681b      	ldr	r3, [r3, #0]
 8006c5a:	2200      	movs	r2, #0
 8006c5c:	601a      	str	r2, [r3, #0]
 8006c5e:	687b      	ldr	r3, [r7, #4]
 8006c60:	603b      	str	r3, [r7, #0]
 8006c62:	683b      	ldr	r3, [r7, #0]
 8006c64:	68fa      	ldr	r2, [r7, #12]
 8006c66:	1ad2      	subs	r2, r2, r3
 8006c68:	683b      	ldr	r3, [r7, #0]
 8006c6a:	605a      	str	r2, [r3, #4]
 8006c6c:	4b0c      	ldr	r3, [pc, #48]	; (8006ca0 <prvHeapInit+0xb4>)
 8006c6e:	681a      	ldr	r2, [r3, #0]
 8006c70:	683b      	ldr	r3, [r7, #0]
 8006c72:	601a      	str	r2, [r3, #0]
 8006c74:	683b      	ldr	r3, [r7, #0]
 8006c76:	685a      	ldr	r2, [r3, #4]
 8006c78:	4b0a      	ldr	r3, [pc, #40]	; (8006ca4 <prvHeapInit+0xb8>)
 8006c7a:	601a      	str	r2, [r3, #0]
 8006c7c:	683b      	ldr	r3, [r7, #0]
 8006c7e:	685a      	ldr	r2, [r3, #4]
 8006c80:	4b09      	ldr	r3, [pc, #36]	; (8006ca8 <prvHeapInit+0xbc>)
 8006c82:	601a      	str	r2, [r3, #0]
 8006c84:	4b09      	ldr	r3, [pc, #36]	; (8006cac <prvHeapInit+0xc0>)
 8006c86:	f04f 4200 	mov.w	r2, #2147483648	; 0x80000000
 8006c8a:	601a      	str	r2, [r3, #0]
 8006c8c:	3714      	adds	r7, #20
 8006c8e:	46bd      	mov	sp, r7
 8006c90:	f85d 7b04 	ldr.w	r7, [sp], #4
 8006c94:	4770      	bx	lr
 8006c96:	bf00      	nop
 8006c98:	20000ce8 	.word	0x20000ce8
 8006c9c:	200138e8 	.word	0x200138e8
 8006ca0:	200138f0 	.word	0x200138f0
 8006ca4:	200138f8 	.word	0x200138f8
 8006ca8:	200138f4 	.word	0x200138f4
 8006cac:	200138fc 	.word	0x200138fc

08006cb0 <prvInsertBlockIntoFreeList>:
 8006cb0:	b480      	push	{r7}
 8006cb2:	b085      	sub	sp, #20
 8006cb4:	af00      	add	r7, sp, #0
 8006cb6:	6078      	str	r0, [r7, #4]
 8006cb8:	4b27      	ldr	r3, [pc, #156]	; (8006d58 <prvInsertBlockIntoFreeList+0xa8>)
 8006cba:	60fb      	str	r3, [r7, #12]
 8006cbc:	e002      	b.n	8006cc4 <prvInsertBlockIntoFreeList+0x14>
 8006cbe:	68fb      	ldr	r3, [r7, #12]
 8006cc0:	681b      	ldr	r3, [r3, #0]
 8006cc2:	60fb      	str	r3, [r7, #12]
 8006cc4:	68fb      	ldr	r3, [r7, #12]
 8006cc6:	681a      	ldr	r2, [r3, #0]
 8006cc8:	687b      	ldr	r3, [r7, #4]
 8006cca:	429a      	cmp	r2, r3
 8006ccc:	d3f7      	bcc.n	8006cbe <prvInsertBlockIntoFreeList+0xe>
 8006cce:	68fb      	ldr	r3, [r7, #12]
 8006cd0:	60bb      	str	r3, [r7, #8]
 8006cd2:	68fb      	ldr	r3, [r7, #12]
 8006cd4:	685b      	ldr	r3, [r3, #4]
 8006cd6:	68ba      	ldr	r2, [r7, #8]
 8006cd8:	441a      	add	r2, r3
 8006cda:	687b      	ldr	r3, [r7, #4]
 8006cdc:	429a      	cmp	r2, r3
 8006cde:	d108      	bne.n	8006cf2 <prvInsertBlockIntoFreeList+0x42>
 8006ce0:	68fb      	ldr	r3, [r7, #12]
 8006ce2:	685a      	ldr	r2, [r3, #4]
 8006ce4:	687b      	ldr	r3, [r7, #4]
 8006ce6:	685b      	ldr	r3, [r3, #4]
 8006ce8:	441a      	add	r2, r3
 8006cea:	68fb      	ldr	r3, [r7, #12]
 8006cec:	605a      	str	r2, [r3, #4]
 8006cee:	68fb      	ldr	r3, [r7, #12]
 8006cf0:	607b      	str	r3, [r7, #4]
 8006cf2:	687b      	ldr	r3, [r7, #4]
 8006cf4:	60bb      	str	r3, [r7, #8]
 8006cf6:	687b      	ldr	r3, [r7, #4]
 8006cf8:	685b      	ldr	r3, [r3, #4]
 8006cfa:	68ba      	ldr	r2, [r7, #8]
 8006cfc:	441a      	add	r2, r3
 8006cfe:	68fb      	ldr	r3, [r7, #12]
 8006d00:	681b      	ldr	r3, [r3, #0]
 8006d02:	429a      	cmp	r2, r3
 8006d04:	d118      	bne.n	8006d38 <prvInsertBlockIntoFreeList+0x88>
 8006d06:	68fb      	ldr	r3, [r7, #12]
 8006d08:	681a      	ldr	r2, [r3, #0]
 8006d0a:	4b14      	ldr	r3, [pc, #80]	; (8006d5c <prvInsertBlockIntoFreeList+0xac>)
 8006d0c:	681b      	ldr	r3, [r3, #0]
 8006d0e:	429a      	cmp	r2, r3
 8006d10:	d00d      	beq.n	8006d2e <prvInsertBlockIntoFreeList+0x7e>
 8006d12:	687b      	ldr	r3, [r7, #4]
 8006d14:	685a      	ldr	r2, [r3, #4]
 8006d16:	68fb      	ldr	r3, [r7, #12]
 8006d18:	681b      	ldr	r3, [r3, #0]
 8006d1a:	685b      	ldr	r3, [r3, #4]
 8006d1c:	441a      	add	r2, r3
 8006d1e:	687b      	ldr	r3, [r7, #4]
 8006d20:	605a      	str	r2, [r3, #4]
 8006d22:	68fb      	ldr	r3, [r7, #12]
 8006d24:	681b      	ldr	r3, [r3, #0]
 8006d26:	681a      	ldr	r2, [r3, #0]
 8006d28:	687b      	ldr	r3, [r7, #4]
 8006d2a:	601a      	str	r2, [r3, #0]
 8006d2c:	e008      	b.n	8006d40 <prvInsertBlockIntoFreeList+0x90>
 8006d2e:	4b0b      	ldr	r3, [pc, #44]	; (8006d5c <prvInsertBlockIntoFreeList+0xac>)
 8006d30:	681a      	ldr	r2, [r3, #0]
 8006d32:	687b      	ldr	r3, [r7, #4]
 8006d34:	601a      	str	r2, [r3, #0]
 8006d36:	e003      	b.n	8006d40 <prvInsertBlockIntoFreeList+0x90>
 8006d38:	68fb      	ldr	r3, [r7, #12]
 8006d3a:	681a      	ldr	r2, [r3, #0]
 8006d3c:	687b      	ldr	r3, [r7, #4]
 8006d3e:	601a      	str	r2, [r3, #0]
 8006d40:	68fa      	ldr	r2, [r7, #12]
 8006d42:	687b      	ldr	r3, [r7, #4]
 8006d44:	429a      	cmp	r2, r3
 8006d46:	d002      	beq.n	8006d4e <prvInsertBlockIntoFreeList+0x9e>
 8006d48:	68fb      	ldr	r3, [r7, #12]
 8006d4a:	687a      	ldr	r2, [r7, #4]
 8006d4c:	601a      	str	r2, [r3, #0]
 8006d4e:	3714      	adds	r7, #20
 8006d50:	46bd      	mov	sp, r7
 8006d52:	f85d 7b04 	ldr.w	r7, [sp], #4
 8006d56:	4770      	bx	lr
 8006d58:	200138e8 	.word	0x200138e8
 8006d5c:	200138f0 	.word	0x200138f0

08006d60 <__libc_init_array>:
 8006d60:	b570      	push	{r4, r5, r6, lr}
 8006d62:	4b0e      	ldr	r3, [pc, #56]	; (8006d9c <__libc_init_array+0x3c>)
 8006d64:	4d0e      	ldr	r5, [pc, #56]	; (8006da0 <__libc_init_array+0x40>)
 8006d66:	1aed      	subs	r5, r5, r3
 8006d68:	10ad      	asrs	r5, r5, #2
 8006d6a:	2400      	movs	r4, #0
 8006d6c:	461e      	mov	r6, r3
 8006d6e:	42ac      	cmp	r4, r5
 8006d70:	d004      	beq.n	8006d7c <__libc_init_array+0x1c>
 8006d72:	f856 2024 	ldr.w	r2, [r6, r4, lsl #2]
 8006d76:	4790      	blx	r2
 8006d78:	3401      	adds	r4, #1
 8006d7a:	e7f8      	b.n	8006d6e <__libc_init_array+0xe>
 8006d7c:	f002 fba6 	bl	80094cc <_init>
 8006d80:	4d08      	ldr	r5, [pc, #32]	; (8006da4 <__libc_init_array+0x44>)
 8006d82:	4b09      	ldr	r3, [pc, #36]	; (8006da8 <__libc_init_array+0x48>)
 8006d84:	1aed      	subs	r5, r5, r3
 8006d86:	10ad      	asrs	r5, r5, #2
 8006d88:	2400      	movs	r4, #0
 8006d8a:	461e      	mov	r6, r3
 8006d8c:	42ac      	cmp	r4, r5
 8006d8e:	d004      	beq.n	8006d9a <__libc_init_array+0x3a>
 8006d90:	f856 2024 	ldr.w	r2, [r6, r4, lsl #2]
 8006d94:	4790      	blx	r2
 8006d96:	3401      	adds	r4, #1
 8006d98:	e7f8      	b.n	8006d8c <__libc_init_array+0x2c>
 8006d9a:	bd70      	pop	{r4, r5, r6, pc}
 8006d9c:	08009a84 	.word	0x08009a84
 8006da0:	08009a84 	.word	0x08009a84
 8006da4:	08009a88 	.word	0x08009a88
 8006da8:	08009a84 	.word	0x08009a84

08006dac <memcpy>:
 8006dac:	b510      	push	{r4, lr}
 8006dae:	2300      	movs	r3, #0
 8006db0:	4293      	cmp	r3, r2
 8006db2:	d003      	beq.n	8006dbc <memcpy+0x10>
 8006db4:	5ccc      	ldrb	r4, [r1, r3]
 8006db6:	54c4      	strb	r4, [r0, r3]
 8006db8:	3301      	adds	r3, #1
 8006dba:	e7f9      	b.n	8006db0 <memcpy+0x4>
 8006dbc:	bd10      	pop	{r4, pc}

08006dbe <memset>:
 8006dbe:	4402      	add	r2, r0
 8006dc0:	4603      	mov	r3, r0
 8006dc2:	4293      	cmp	r3, r2
 8006dc4:	d002      	beq.n	8006dcc <memset+0xe>
 8006dc6:	f803 1b01 	strb.w	r1, [r3], #1
 8006dca:	e7fa      	b.n	8006dc2 <memset+0x4>
 8006dcc:	4770      	bx	lr

08006dce <cleanup_glue>:
 8006dce:	b538      	push	{r3, r4, r5, lr}
 8006dd0:	460c      	mov	r4, r1
 8006dd2:	6809      	ldr	r1, [r1, #0]
 8006dd4:	4605      	mov	r5, r0
 8006dd6:	b109      	cbz	r1, 8006ddc <cleanup_glue+0xe>
 8006dd8:	f7ff fff9 	bl	8006dce <cleanup_glue>
 8006ddc:	4628      	mov	r0, r5
 8006dde:	4621      	mov	r1, r4
 8006de0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8006de4:	f7fd ba42 	b.w	800426c <_free_r>

08006de8 <_reclaim_reent>:
 8006de8:	4b2d      	ldr	r3, [pc, #180]	; (8006ea0 <_reclaim_reent+0xb8>)
 8006dea:	681b      	ldr	r3, [r3, #0]
 8006dec:	4298      	cmp	r0, r3
 8006dee:	b570      	push	{r4, r5, r6, lr}
 8006df0:	4604      	mov	r4, r0
 8006df2:	d053      	beq.n	8006e9c <_reclaim_reent+0xb4>
 8006df4:	6a43      	ldr	r3, [r0, #36]	; 0x24
 8006df6:	b18b      	cbz	r3, 8006e1c <_reclaim_reent+0x34>
 8006df8:	68db      	ldr	r3, [r3, #12]
 8006dfa:	2b00      	cmp	r3, #0
 8006dfc:	d142      	bne.n	8006e84 <_reclaim_reent+0x9c>
 8006dfe:	e007      	b.n	8006e10 <_reclaim_reent+0x28>
 8006e00:	3504      	adds	r5, #4
 8006e02:	2d80      	cmp	r5, #128	; 0x80
 8006e04:	d13f      	bne.n	8006e86 <_reclaim_reent+0x9e>
 8006e06:	6a63      	ldr	r3, [r4, #36]	; 0x24
 8006e08:	4620      	mov	r0, r4
 8006e0a:	68d9      	ldr	r1, [r3, #12]
 8006e0c:	f7fd fa2e 	bl	800426c <_free_r>
 8006e10:	6a63      	ldr	r3, [r4, #36]	; 0x24
 8006e12:	6819      	ldr	r1, [r3, #0]
 8006e14:	b111      	cbz	r1, 8006e1c <_reclaim_reent+0x34>
 8006e16:	4620      	mov	r0, r4
 8006e18:	f7fd fa28 	bl	800426c <_free_r>
 8006e1c:	6961      	ldr	r1, [r4, #20]
 8006e1e:	b111      	cbz	r1, 8006e26 <_reclaim_reent+0x3e>
 8006e20:	4620      	mov	r0, r4
 8006e22:	f7fd fa23 	bl	800426c <_free_r>
 8006e26:	6a61      	ldr	r1, [r4, #36]	; 0x24
 8006e28:	b111      	cbz	r1, 8006e30 <_reclaim_reent+0x48>
 8006e2a:	4620      	mov	r0, r4
 8006e2c:	f7fd fa1e 	bl	800426c <_free_r>
 8006e30:	6ba1      	ldr	r1, [r4, #56]	; 0x38
 8006e32:	b111      	cbz	r1, 8006e3a <_reclaim_reent+0x52>
 8006e34:	4620      	mov	r0, r4
 8006e36:	f7fd fa19 	bl	800426c <_free_r>
 8006e3a:	6be1      	ldr	r1, [r4, #60]	; 0x3c
 8006e3c:	b111      	cbz	r1, 8006e44 <_reclaim_reent+0x5c>
 8006e3e:	4620      	mov	r0, r4
 8006e40:	f7fd fa14 	bl	800426c <_free_r>
 8006e44:	6c21      	ldr	r1, [r4, #64]	; 0x40
 8006e46:	b111      	cbz	r1, 8006e4e <_reclaim_reent+0x66>
 8006e48:	4620      	mov	r0, r4
 8006e4a:	f7fd fa0f 	bl	800426c <_free_r>
 8006e4e:	6de1      	ldr	r1, [r4, #92]	; 0x5c
 8006e50:	b111      	cbz	r1, 8006e58 <_reclaim_reent+0x70>
 8006e52:	4620      	mov	r0, r4
 8006e54:	f7fd fa0a 	bl	800426c <_free_r>
 8006e58:	6da1      	ldr	r1, [r4, #88]	; 0x58
 8006e5a:	b111      	cbz	r1, 8006e62 <_reclaim_reent+0x7a>
 8006e5c:	4620      	mov	r0, r4
 8006e5e:	f7fd fa05 	bl	800426c <_free_r>
 8006e62:	6b61      	ldr	r1, [r4, #52]	; 0x34
 8006e64:	b111      	cbz	r1, 8006e6c <_reclaim_reent+0x84>
 8006e66:	4620      	mov	r0, r4
 8006e68:	f7fd fa00 	bl	800426c <_free_r>
 8006e6c:	69a3      	ldr	r3, [r4, #24]
 8006e6e:	b1ab      	cbz	r3, 8006e9c <_reclaim_reent+0xb4>
 8006e70:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 8006e72:	4620      	mov	r0, r4
 8006e74:	4798      	blx	r3
 8006e76:	6ca1      	ldr	r1, [r4, #72]	; 0x48
 8006e78:	b181      	cbz	r1, 8006e9c <_reclaim_reent+0xb4>
 8006e7a:	4620      	mov	r0, r4
 8006e7c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8006e80:	f7ff bfa5 	b.w	8006dce <cleanup_glue>
 8006e84:	2500      	movs	r5, #0
 8006e86:	6a63      	ldr	r3, [r4, #36]	; 0x24
 8006e88:	68db      	ldr	r3, [r3, #12]
 8006e8a:	5959      	ldr	r1, [r3, r5]
 8006e8c:	2900      	cmp	r1, #0
 8006e8e:	d0b7      	beq.n	8006e00 <_reclaim_reent+0x18>
 8006e90:	680e      	ldr	r6, [r1, #0]
 8006e92:	4620      	mov	r0, r4
 8006e94:	f7fd f9ea 	bl	800426c <_free_r>
 8006e98:	4631      	mov	r1, r6
 8006e9a:	e7f7      	b.n	8006e8c <_reclaim_reent+0xa4>
 8006e9c:	bd70      	pop	{r4, r5, r6, pc}
 8006e9e:	bf00      	nop
 8006ea0:	200001e0 	.word	0x200001e0

08006ea4 <__cvt>:
 8006ea4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006ea8:	ec55 4b10 	vmov	r4, r5, d0
 8006eac:	b085      	sub	sp, #20
 8006eae:	2d00      	cmp	r5, #0
 8006eb0:	4688      	mov	r8, r1
 8006eb2:	4692      	mov	sl, r2
 8006eb4:	f8dd 9038 	ldr.w	r9, [sp, #56]	; 0x38
 8006eb8:	da04      	bge.n	8006ec4 <__cvt+0x20>
 8006eba:	f105 4700 	add.w	r7, r5, #2147483648	; 0x80000000
 8006ebe:	463d      	mov	r5, r7
 8006ec0:	222d      	movs	r2, #45	; 0x2d
 8006ec2:	e000      	b.n	8006ec6 <__cvt+0x22>
 8006ec4:	2200      	movs	r2, #0
 8006ec6:	701a      	strb	r2, [r3, #0]
 8006ec8:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8006eca:	f023 0b20 	bic.w	fp, r3, #32
 8006ece:	f1bb 0f46 	cmp.w	fp, #70	; 0x46
 8006ed2:	d005      	beq.n	8006ee0 <__cvt+0x3c>
 8006ed4:	f1bb 0f45 	cmp.w	fp, #69	; 0x45
 8006ed8:	d104      	bne.n	8006ee4 <__cvt+0x40>
 8006eda:	f108 0801 	add.w	r8, r8, #1
 8006ede:	e001      	b.n	8006ee4 <__cvt+0x40>
 8006ee0:	2103      	movs	r1, #3
 8006ee2:	e000      	b.n	8006ee6 <__cvt+0x42>
 8006ee4:	2102      	movs	r1, #2
 8006ee6:	ab02      	add	r3, sp, #8
 8006ee8:	9300      	str	r3, [sp, #0]
 8006eea:	ab03      	add	r3, sp, #12
 8006eec:	9301      	str	r3, [sp, #4]
 8006eee:	ec45 4b10 	vmov	d0, r4, r5
 8006ef2:	4642      	mov	r2, r8
 8006ef4:	464b      	mov	r3, r9
 8006ef6:	f000 fb7b 	bl	80075f0 <_dtoa_r>
 8006efa:	f1bb 0f47 	cmp.w	fp, #71	; 0x47
 8006efe:	4606      	mov	r6, r0
 8006f00:	d102      	bne.n	8006f08 <__cvt+0x64>
 8006f02:	f01a 0f01 	tst.w	sl, #1
 8006f06:	d025      	beq.n	8006f54 <__cvt+0xb0>
 8006f08:	f1bb 0f46 	cmp.w	fp, #70	; 0x46
 8006f0c:	eb06 0708 	add.w	r7, r6, r8
 8006f10:	d110      	bne.n	8006f34 <__cvt+0x90>
 8006f12:	7833      	ldrb	r3, [r6, #0]
 8006f14:	2b30      	cmp	r3, #48	; 0x30
 8006f16:	d10a      	bne.n	8006f2e <__cvt+0x8a>
 8006f18:	4620      	mov	r0, r4
 8006f1a:	4629      	mov	r1, r5
 8006f1c:	2200      	movs	r2, #0
 8006f1e:	2300      	movs	r3, #0
 8006f20:	f7f9 fda8 	bl	8000a74 <__aeabi_dcmpeq>
 8006f24:	b918      	cbnz	r0, 8006f2e <__cvt+0x8a>
 8006f26:	f1c8 0301 	rsb	r3, r8, #1
 8006f2a:	f8c9 3000 	str.w	r3, [r9]
 8006f2e:	f8d9 3000 	ldr.w	r3, [r9]
 8006f32:	441f      	add	r7, r3
 8006f34:	4620      	mov	r0, r4
 8006f36:	4629      	mov	r1, r5
 8006f38:	2200      	movs	r2, #0
 8006f3a:	2300      	movs	r3, #0
 8006f3c:	f7f9 fd9a 	bl	8000a74 <__aeabi_dcmpeq>
 8006f40:	b100      	cbz	r0, 8006f44 <__cvt+0xa0>
 8006f42:	9703      	str	r7, [sp, #12]
 8006f44:	9b03      	ldr	r3, [sp, #12]
 8006f46:	42bb      	cmp	r3, r7
 8006f48:	d204      	bcs.n	8006f54 <__cvt+0xb0>
 8006f4a:	1c5a      	adds	r2, r3, #1
 8006f4c:	9203      	str	r2, [sp, #12]
 8006f4e:	2230      	movs	r2, #48	; 0x30
 8006f50:	701a      	strb	r2, [r3, #0]
 8006f52:	e7f7      	b.n	8006f44 <__cvt+0xa0>
 8006f54:	9b03      	ldr	r3, [sp, #12]
 8006f56:	1b9a      	subs	r2, r3, r6
 8006f58:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006f5a:	4630      	mov	r0, r6
 8006f5c:	601a      	str	r2, [r3, #0]
 8006f5e:	b005      	add	sp, #20
 8006f60:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08006f64 <__exponent>:
 8006f64:	4603      	mov	r3, r0
 8006f66:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8006f68:	2900      	cmp	r1, #0
 8006f6a:	f803 2b02 	strb.w	r2, [r3], #2
 8006f6e:	da03      	bge.n	8006f78 <__exponent+0x14>
 8006f70:	4249      	negs	r1, r1
 8006f72:	461a      	mov	r2, r3
 8006f74:	242d      	movs	r4, #45	; 0x2d
 8006f76:	e001      	b.n	8006f7c <__exponent+0x18>
 8006f78:	461a      	mov	r2, r3
 8006f7a:	242b      	movs	r4, #43	; 0x2b
 8006f7c:	2909      	cmp	r1, #9
 8006f7e:	7044      	strb	r4, [r0, #1]
 8006f80:	dd1a      	ble.n	8006fb8 <__exponent+0x54>
 8006f82:	f10d 0406 	add.w	r4, sp, #6
 8006f86:	260a      	movs	r6, #10
 8006f88:	fb91 f5f6 	sdiv	r5, r1, r6
 8006f8c:	fb06 1115 	mls	r1, r6, r5, r1
 8006f90:	3130      	adds	r1, #48	; 0x30
 8006f92:	2d09      	cmp	r5, #9
 8006f94:	4623      	mov	r3, r4
 8006f96:	f804 1901 	strb.w	r1, [r4], #-1
 8006f9a:	4629      	mov	r1, r5
 8006f9c:	dcf3      	bgt.n	8006f86 <__exponent+0x22>
 8006f9e:	f105 0130 	add.w	r1, r5, #48	; 0x30
 8006fa2:	f803 1d01 	strb.w	r1, [r3, #-1]!
 8006fa6:	f10d 0107 	add.w	r1, sp, #7
 8006faa:	428b      	cmp	r3, r1
 8006fac:	d20a      	bcs.n	8006fc4 <__exponent+0x60>
 8006fae:	f813 1b01 	ldrb.w	r1, [r3], #1
 8006fb2:	f802 1b01 	strb.w	r1, [r2], #1
 8006fb6:	e7f6      	b.n	8006fa6 <__exponent+0x42>
 8006fb8:	2430      	movs	r4, #48	; 0x30
 8006fba:	461a      	mov	r2, r3
 8006fbc:	4421      	add	r1, r4
 8006fbe:	f802 4b02 	strb.w	r4, [r2], #2
 8006fc2:	7059      	strb	r1, [r3, #1]
 8006fc4:	1a10      	subs	r0, r2, r0
 8006fc6:	b002      	add	sp, #8
 8006fc8:	bd70      	pop	{r4, r5, r6, pc}
	...

08006fcc <_printf_float>:
 8006fcc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006fd0:	b08b      	sub	sp, #44	; 0x2c
 8006fd2:	460c      	mov	r4, r1
 8006fd4:	4616      	mov	r6, r2
 8006fd6:	461f      	mov	r7, r3
 8006fd8:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8006fdc:	4605      	mov	r5, r0
 8006fde:	f001 f8bf 	bl	8008160 <_localeconv_r>
 8006fe2:	f8d0 a000 	ldr.w	sl, [r0]
 8006fe6:	4650      	mov	r0, sl
 8006fe8:	f001 fbd8 	bl	800879c <strlen>
 8006fec:	2300      	movs	r3, #0
 8006fee:	9308      	str	r3, [sp, #32]
 8006ff0:	f8d9 3000 	ldr.w	r3, [r9]
 8006ff4:	f894 8018 	ldrb.w	r8, [r4, #24]
 8006ff8:	9005      	str	r0, [sp, #20]
 8006ffa:	3307      	adds	r3, #7
 8006ffc:	f023 0307 	bic.w	r3, r3, #7
 8007000:	ed93 0b00 	vldr	d0, [r3]
 8007004:	f103 0208 	add.w	r2, r3, #8
 8007008:	f8c9 2000 	str.w	r2, [r9]
 800700c:	ed84 0b12 	vstr	d0, [r4, #72]	; 0x48
 8007010:	f001 fba0 	bl	8008754 <__fpclassifyd>
 8007014:	2801      	cmp	r0, #1
 8007016:	d119      	bne.n	800704c <_printf_float+0x80>
 8007018:	e9d4 0112 	ldrd	r0, r1, [r4, #72]	; 0x48
 800701c:	2200      	movs	r2, #0
 800701e:	2300      	movs	r3, #0
 8007020:	f7f9 fd32 	bl	8000a88 <__aeabi_dcmplt>
 8007024:	b110      	cbz	r0, 800702c <_printf_float+0x60>
 8007026:	232d      	movs	r3, #45	; 0x2d
 8007028:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
 800702c:	4b91      	ldr	r3, [pc, #580]	; (8007274 <_printf_float+0x2a8>)
 800702e:	4a92      	ldr	r2, [pc, #584]	; (8007278 <_printf_float+0x2ac>)
 8007030:	f1b8 0f47 	cmp.w	r8, #71	; 0x47
 8007034:	bf8c      	ite	hi
 8007036:	4691      	movhi	r9, r2
 8007038:	4699      	movls	r9, r3
 800703a:	2303      	movs	r3, #3
 800703c:	6123      	str	r3, [r4, #16]
 800703e:	6823      	ldr	r3, [r4, #0]
 8007040:	f023 0304 	bic.w	r3, r3, #4
 8007044:	6023      	str	r3, [r4, #0]
 8007046:	f04f 0b00 	mov.w	fp, #0
 800704a:	e087      	b.n	800715c <_printf_float+0x190>
 800704c:	ed94 0b12 	vldr	d0, [r4, #72]	; 0x48
 8007050:	f001 fb80 	bl	8008754 <__fpclassifyd>
 8007054:	6822      	ldr	r2, [r4, #0]
 8007056:	b960      	cbnz	r0, 8007072 <_printf_float+0xa6>
 8007058:	4b88      	ldr	r3, [pc, #544]	; (800727c <_printf_float+0x2b0>)
 800705a:	4989      	ldr	r1, [pc, #548]	; (8007280 <_printf_float+0x2b4>)
 800705c:	f022 0204 	bic.w	r2, r2, #4
 8007060:	f1b8 0f47 	cmp.w	r8, #71	; 0x47
 8007064:	bf8c      	ite	hi
 8007066:	4689      	movhi	r9, r1
 8007068:	4699      	movls	r9, r3
 800706a:	2303      	movs	r3, #3
 800706c:	6123      	str	r3, [r4, #16]
 800706e:	6022      	str	r2, [r4, #0]
 8007070:	e7e9      	b.n	8007046 <_printf_float+0x7a>
 8007072:	6863      	ldr	r3, [r4, #4]
 8007074:	1c59      	adds	r1, r3, #1
 8007076:	f028 0b20 	bic.w	fp, r8, #32
 800707a:	d101      	bne.n	8007080 <_printf_float+0xb4>
 800707c:	2306      	movs	r3, #6
 800707e:	e004      	b.n	800708a <_printf_float+0xbe>
 8007080:	f1bb 0f47 	cmp.w	fp, #71	; 0x47
 8007084:	d102      	bne.n	800708c <_printf_float+0xc0>
 8007086:	b90b      	cbnz	r3, 800708c <_printf_float+0xc0>
 8007088:	2301      	movs	r3, #1
 800708a:	6063      	str	r3, [r4, #4]
 800708c:	ab07      	add	r3, sp, #28
 800708e:	e88d 0108 	stmia.w	sp, {r3, r8}
 8007092:	ab08      	add	r3, sp, #32
 8007094:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8007098:	9302      	str	r3, [sp, #8]
 800709a:	2300      	movs	r3, #0
 800709c:	9303      	str	r3, [sp, #12]
 800709e:	6861      	ldr	r1, [r4, #4]
 80070a0:	6022      	str	r2, [r4, #0]
 80070a2:	ed94 0b12 	vldr	d0, [r4, #72]	; 0x48
 80070a6:	4628      	mov	r0, r5
 80070a8:	f10d 031b 	add.w	r3, sp, #27
 80070ac:	f7ff fefa 	bl	8006ea4 <__cvt>
 80070b0:	f1bb 0f47 	cmp.w	fp, #71	; 0x47
 80070b4:	4681      	mov	r9, r0
 80070b6:	9907      	ldr	r1, [sp, #28]
 80070b8:	d109      	bne.n	80070ce <_printf_float+0x102>
 80070ba:	1cc8      	adds	r0, r1, #3
 80070bc:	db02      	blt.n	80070c4 <_printf_float+0xf8>
 80070be:	6863      	ldr	r3, [r4, #4]
 80070c0:	4299      	cmp	r1, r3
 80070c2:	dd30      	ble.n	8007126 <_printf_float+0x15a>
 80070c4:	f1a8 0802 	sub.w	r8, r8, #2
 80070c8:	fa5f f888 	uxtb.w	r8, r8
 80070cc:	e002      	b.n	80070d4 <_printf_float+0x108>
 80070ce:	f1b8 0f65 	cmp.w	r8, #101	; 0x65
 80070d2:	d812      	bhi.n	80070fa <_printf_float+0x12e>
 80070d4:	3901      	subs	r1, #1
 80070d6:	4642      	mov	r2, r8
 80070d8:	f104 0050 	add.w	r0, r4, #80	; 0x50
 80070dc:	9107      	str	r1, [sp, #28]
 80070de:	f7ff ff41 	bl	8006f64 <__exponent>
 80070e2:	9a08      	ldr	r2, [sp, #32]
 80070e4:	1883      	adds	r3, r0, r2
 80070e6:	2a01      	cmp	r2, #1
 80070e8:	4683      	mov	fp, r0
 80070ea:	6123      	str	r3, [r4, #16]
 80070ec:	dc02      	bgt.n	80070f4 <_printf_float+0x128>
 80070ee:	6822      	ldr	r2, [r4, #0]
 80070f0:	07d2      	lsls	r2, r2, #31
 80070f2:	d52d      	bpl.n	8007150 <_printf_float+0x184>
 80070f4:	3301      	adds	r3, #1
 80070f6:	6123      	str	r3, [r4, #16]
 80070f8:	e02a      	b.n	8007150 <_printf_float+0x184>
 80070fa:	f1b8 0f66 	cmp.w	r8, #102	; 0x66
 80070fe:	d114      	bne.n	800712a <_printf_float+0x15e>
 8007100:	2900      	cmp	r1, #0
 8007102:	6863      	ldr	r3, [r4, #4]
 8007104:	dd07      	ble.n	8007116 <_printf_float+0x14a>
 8007106:	6121      	str	r1, [r4, #16]
 8007108:	b913      	cbnz	r3, 8007110 <_printf_float+0x144>
 800710a:	6822      	ldr	r2, [r4, #0]
 800710c:	07d0      	lsls	r0, r2, #31
 800710e:	d51c      	bpl.n	800714a <_printf_float+0x17e>
 8007110:	3301      	adds	r3, #1
 8007112:	440b      	add	r3, r1
 8007114:	e018      	b.n	8007148 <_printf_float+0x17c>
 8007116:	b913      	cbnz	r3, 800711e <_printf_float+0x152>
 8007118:	6822      	ldr	r2, [r4, #0]
 800711a:	07d2      	lsls	r2, r2, #31
 800711c:	d501      	bpl.n	8007122 <_printf_float+0x156>
 800711e:	3302      	adds	r3, #2
 8007120:	e012      	b.n	8007148 <_printf_float+0x17c>
 8007122:	2301      	movs	r3, #1
 8007124:	e010      	b.n	8007148 <_printf_float+0x17c>
 8007126:	f04f 0867 	mov.w	r8, #103	; 0x67
 800712a:	9a08      	ldr	r2, [sp, #32]
 800712c:	4291      	cmp	r1, r2
 800712e:	db05      	blt.n	800713c <_printf_float+0x170>
 8007130:	6823      	ldr	r3, [r4, #0]
 8007132:	6121      	str	r1, [r4, #16]
 8007134:	07d8      	lsls	r0, r3, #31
 8007136:	d508      	bpl.n	800714a <_printf_float+0x17e>
 8007138:	1c4b      	adds	r3, r1, #1
 800713a:	e005      	b.n	8007148 <_printf_float+0x17c>
 800713c:	2900      	cmp	r1, #0
 800713e:	bfd4      	ite	le
 8007140:	f1c1 0302 	rsble	r3, r1, #2
 8007144:	2301      	movgt	r3, #1
 8007146:	4413      	add	r3, r2
 8007148:	6123      	str	r3, [r4, #16]
 800714a:	65a1      	str	r1, [r4, #88]	; 0x58
 800714c:	f04f 0b00 	mov.w	fp, #0
 8007150:	f89d 301b 	ldrb.w	r3, [sp, #27]
 8007154:	b113      	cbz	r3, 800715c <_printf_float+0x190>
 8007156:	232d      	movs	r3, #45	; 0x2d
 8007158:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
 800715c:	9700      	str	r7, [sp, #0]
 800715e:	4628      	mov	r0, r5
 8007160:	4621      	mov	r1, r4
 8007162:	aa09      	add	r2, sp, #36	; 0x24
 8007164:	4633      	mov	r3, r6
 8007166:	f000 f941 	bl	80073ec <_printf_common>
 800716a:	3001      	adds	r0, #1
 800716c:	d102      	bne.n	8007174 <_printf_float+0x1a8>
 800716e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007172:	e137      	b.n	80073e4 <_printf_float+0x418>
 8007174:	6823      	ldr	r3, [r4, #0]
 8007176:	055a      	lsls	r2, r3, #21
 8007178:	d404      	bmi.n	8007184 <_printf_float+0x1b8>
 800717a:	4628      	mov	r0, r5
 800717c:	4631      	mov	r1, r6
 800717e:	464a      	mov	r2, r9
 8007180:	6923      	ldr	r3, [r4, #16]
 8007182:	e109      	b.n	8007398 <_printf_float+0x3cc>
 8007184:	f1b8 0f65 	cmp.w	r8, #101	; 0x65
 8007188:	f240 80cc 	bls.w	8007324 <_printf_float+0x358>
 800718c:	e9d4 0112 	ldrd	r0, r1, [r4, #72]	; 0x48
 8007190:	2200      	movs	r2, #0
 8007192:	2300      	movs	r3, #0
 8007194:	f7f9 fc6e 	bl	8000a74 <__aeabi_dcmpeq>
 8007198:	2800      	cmp	r0, #0
 800719a:	d02a      	beq.n	80071f2 <_printf_float+0x226>
 800719c:	4628      	mov	r0, r5
 800719e:	4631      	mov	r1, r6
 80071a0:	4a38      	ldr	r2, [pc, #224]	; (8007284 <_printf_float+0x2b8>)
 80071a2:	2301      	movs	r3, #1
 80071a4:	47b8      	blx	r7
 80071a6:	3001      	adds	r0, #1
 80071a8:	d0e1      	beq.n	800716e <_printf_float+0x1a2>
 80071aa:	9b08      	ldr	r3, [sp, #32]
 80071ac:	9a07      	ldr	r2, [sp, #28]
 80071ae:	429a      	cmp	r2, r3
 80071b0:	db07      	blt.n	80071c2 <_printf_float+0x1f6>
 80071b2:	6823      	ldr	r3, [r4, #0]
 80071b4:	07d8      	lsls	r0, r3, #31
 80071b6:	d404      	bmi.n	80071c2 <_printf_float+0x1f6>
 80071b8:	6823      	ldr	r3, [r4, #0]
 80071ba:	079b      	lsls	r3, r3, #30
 80071bc:	f100 80f9 	bmi.w	80073b2 <_printf_float+0x3e6>
 80071c0:	e0fe      	b.n	80073c0 <_printf_float+0x3f4>
 80071c2:	4628      	mov	r0, r5
 80071c4:	4631      	mov	r1, r6
 80071c6:	4652      	mov	r2, sl
 80071c8:	9b05      	ldr	r3, [sp, #20]
 80071ca:	47b8      	blx	r7
 80071cc:	3001      	adds	r0, #1
 80071ce:	d0ce      	beq.n	800716e <_printf_float+0x1a2>
 80071d0:	f04f 0800 	mov.w	r8, #0
 80071d4:	9b08      	ldr	r3, [sp, #32]
 80071d6:	3b01      	subs	r3, #1
 80071d8:	4598      	cmp	r8, r3
 80071da:	daed      	bge.n	80071b8 <_printf_float+0x1ec>
 80071dc:	4628      	mov	r0, r5
 80071de:	4631      	mov	r1, r6
 80071e0:	f104 021a 	add.w	r2, r4, #26
 80071e4:	2301      	movs	r3, #1
 80071e6:	47b8      	blx	r7
 80071e8:	3001      	adds	r0, #1
 80071ea:	d0c0      	beq.n	800716e <_printf_float+0x1a2>
 80071ec:	f108 0801 	add.w	r8, r8, #1
 80071f0:	e7f0      	b.n	80071d4 <_printf_float+0x208>
 80071f2:	9b07      	ldr	r3, [sp, #28]
 80071f4:	2b00      	cmp	r3, #0
 80071f6:	dc28      	bgt.n	800724a <_printf_float+0x27e>
 80071f8:	4628      	mov	r0, r5
 80071fa:	4631      	mov	r1, r6
 80071fc:	4a21      	ldr	r2, [pc, #132]	; (8007284 <_printf_float+0x2b8>)
 80071fe:	2301      	movs	r3, #1
 8007200:	47b8      	blx	r7
 8007202:	3001      	adds	r0, #1
 8007204:	d0b3      	beq.n	800716e <_printf_float+0x1a2>
 8007206:	9b07      	ldr	r3, [sp, #28]
 8007208:	b923      	cbnz	r3, 8007214 <_printf_float+0x248>
 800720a:	9b08      	ldr	r3, [sp, #32]
 800720c:	b913      	cbnz	r3, 8007214 <_printf_float+0x248>
 800720e:	6823      	ldr	r3, [r4, #0]
 8007210:	07d9      	lsls	r1, r3, #31
 8007212:	d5d1      	bpl.n	80071b8 <_printf_float+0x1ec>
 8007214:	4628      	mov	r0, r5
 8007216:	4631      	mov	r1, r6
 8007218:	4652      	mov	r2, sl
 800721a:	9b05      	ldr	r3, [sp, #20]
 800721c:	47b8      	blx	r7
 800721e:	3001      	adds	r0, #1
 8007220:	d0a5      	beq.n	800716e <_printf_float+0x1a2>
 8007222:	f04f 0800 	mov.w	r8, #0
 8007226:	9b07      	ldr	r3, [sp, #28]
 8007228:	425b      	negs	r3, r3
 800722a:	4598      	cmp	r8, r3
 800722c:	4628      	mov	r0, r5
 800722e:	4631      	mov	r1, r6
 8007230:	da08      	bge.n	8007244 <_printf_float+0x278>
 8007232:	f104 021a 	add.w	r2, r4, #26
 8007236:	2301      	movs	r3, #1
 8007238:	47b8      	blx	r7
 800723a:	3001      	adds	r0, #1
 800723c:	d097      	beq.n	800716e <_printf_float+0x1a2>
 800723e:	f108 0801 	add.w	r8, r8, #1
 8007242:	e7f0      	b.n	8007226 <_printf_float+0x25a>
 8007244:	464a      	mov	r2, r9
 8007246:	9b08      	ldr	r3, [sp, #32]
 8007248:	e0a6      	b.n	8007398 <_printf_float+0x3cc>
 800724a:	6da3      	ldr	r3, [r4, #88]	; 0x58
 800724c:	9a08      	ldr	r2, [sp, #32]
 800724e:	429a      	cmp	r2, r3
 8007250:	bfb4      	ite	lt
 8007252:	4693      	movlt	fp, r2
 8007254:	469b      	movge	fp, r3
 8007256:	f1bb 0f00 	cmp.w	fp, #0
 800725a:	dc02      	bgt.n	8007262 <_printf_float+0x296>
 800725c:	f04f 0800 	mov.w	r8, #0
 8007260:	e01d      	b.n	800729e <_printf_float+0x2d2>
 8007262:	4628      	mov	r0, r5
 8007264:	4631      	mov	r1, r6
 8007266:	464a      	mov	r2, r9
 8007268:	465b      	mov	r3, fp
 800726a:	47b8      	blx	r7
 800726c:	3001      	adds	r0, #1
 800726e:	d1f5      	bne.n	800725c <_printf_float+0x290>
 8007270:	e77d      	b.n	800716e <_printf_float+0x1a2>
 8007272:	bf00      	nop
 8007274:	0800952a 	.word	0x0800952a
 8007278:	0800952e 	.word	0x0800952e
 800727c:	08009532 	.word	0x08009532
 8007280:	08009536 	.word	0x08009536
 8007284:	0800953a 	.word	0x0800953a
 8007288:	4628      	mov	r0, r5
 800728a:	4631      	mov	r1, r6
 800728c:	f104 021a 	add.w	r2, r4, #26
 8007290:	2301      	movs	r3, #1
 8007292:	47b8      	blx	r7
 8007294:	3001      	adds	r0, #1
 8007296:	f43f af6a 	beq.w	800716e <_printf_float+0x1a2>
 800729a:	f108 0801 	add.w	r8, r8, #1
 800729e:	6da3      	ldr	r3, [r4, #88]	; 0x58
 80072a0:	ea2b 72eb 	bic.w	r2, fp, fp, asr #31
 80072a4:	1a9a      	subs	r2, r3, r2
 80072a6:	4590      	cmp	r8, r2
 80072a8:	dbee      	blt.n	8007288 <_printf_float+0x2bc>
 80072aa:	eb09 0803 	add.w	r8, r9, r3
 80072ae:	9a07      	ldr	r2, [sp, #28]
 80072b0:	9b08      	ldr	r3, [sp, #32]
 80072b2:	429a      	cmp	r2, r3
 80072b4:	db0f      	blt.n	80072d6 <_printf_float+0x30a>
 80072b6:	6823      	ldr	r3, [r4, #0]
 80072b8:	07da      	lsls	r2, r3, #31
 80072ba:	d40c      	bmi.n	80072d6 <_printf_float+0x30a>
 80072bc:	9b08      	ldr	r3, [sp, #32]
 80072be:	9a07      	ldr	r2, [sp, #28]
 80072c0:	4499      	add	r9, r3
 80072c2:	ebc8 0909 	rsb	r9, r8, r9
 80072c6:	1a9b      	subs	r3, r3, r2
 80072c8:	4599      	cmp	r9, r3
 80072ca:	bfa8      	it	ge
 80072cc:	4699      	movge	r9, r3
 80072ce:	f1b9 0f00 	cmp.w	r9, #0
 80072d2:	dc08      	bgt.n	80072e6 <_printf_float+0x31a>
 80072d4:	e00f      	b.n	80072f6 <_printf_float+0x32a>
 80072d6:	4628      	mov	r0, r5
 80072d8:	4631      	mov	r1, r6
 80072da:	4652      	mov	r2, sl
 80072dc:	9b05      	ldr	r3, [sp, #20]
 80072de:	47b8      	blx	r7
 80072e0:	3001      	adds	r0, #1
 80072e2:	d1eb      	bne.n	80072bc <_printf_float+0x2f0>
 80072e4:	e743      	b.n	800716e <_printf_float+0x1a2>
 80072e6:	4628      	mov	r0, r5
 80072e8:	4631      	mov	r1, r6
 80072ea:	4642      	mov	r2, r8
 80072ec:	464b      	mov	r3, r9
 80072ee:	47b8      	blx	r7
 80072f0:	3001      	adds	r0, #1
 80072f2:	f43f af3c 	beq.w	800716e <_printf_float+0x1a2>
 80072f6:	f04f 0800 	mov.w	r8, #0
 80072fa:	e00a      	b.n	8007312 <_printf_float+0x346>
 80072fc:	4628      	mov	r0, r5
 80072fe:	4631      	mov	r1, r6
 8007300:	f104 021a 	add.w	r2, r4, #26
 8007304:	2301      	movs	r3, #1
 8007306:	47b8      	blx	r7
 8007308:	3001      	adds	r0, #1
 800730a:	f43f af30 	beq.w	800716e <_printf_float+0x1a2>
 800730e:	f108 0801 	add.w	r8, r8, #1
 8007312:	9b07      	ldr	r3, [sp, #28]
 8007314:	9a08      	ldr	r2, [sp, #32]
 8007316:	ea29 71e9 	bic.w	r1, r9, r9, asr #31
 800731a:	1ad3      	subs	r3, r2, r3
 800731c:	1a5b      	subs	r3, r3, r1
 800731e:	4598      	cmp	r8, r3
 8007320:	dbec      	blt.n	80072fc <_printf_float+0x330>
 8007322:	e749      	b.n	80071b8 <_printf_float+0x1ec>
 8007324:	9a08      	ldr	r2, [sp, #32]
 8007326:	2a01      	cmp	r2, #1
 8007328:	dc01      	bgt.n	800732e <_printf_float+0x362>
 800732a:	07db      	lsls	r3, r3, #31
 800732c:	d539      	bpl.n	80073a2 <_printf_float+0x3d6>
 800732e:	4628      	mov	r0, r5
 8007330:	4631      	mov	r1, r6
 8007332:	464a      	mov	r2, r9
 8007334:	2301      	movs	r3, #1
 8007336:	47b8      	blx	r7
 8007338:	3001      	adds	r0, #1
 800733a:	f43f af18 	beq.w	800716e <_printf_float+0x1a2>
 800733e:	4628      	mov	r0, r5
 8007340:	4631      	mov	r1, r6
 8007342:	4652      	mov	r2, sl
 8007344:	9b05      	ldr	r3, [sp, #20]
 8007346:	47b8      	blx	r7
 8007348:	3001      	adds	r0, #1
 800734a:	f43f af10 	beq.w	800716e <_printf_float+0x1a2>
 800734e:	e9d4 0112 	ldrd	r0, r1, [r4, #72]	; 0x48
 8007352:	2200      	movs	r2, #0
 8007354:	2300      	movs	r3, #0
 8007356:	f7f9 fb8d 	bl	8000a74 <__aeabi_dcmpeq>
 800735a:	b110      	cbz	r0, 8007362 <_printf_float+0x396>
 800735c:	f04f 0800 	mov.w	r8, #0
 8007360:	e011      	b.n	8007386 <_printf_float+0x3ba>
 8007362:	9b08      	ldr	r3, [sp, #32]
 8007364:	4628      	mov	r0, r5
 8007366:	4631      	mov	r1, r6
 8007368:	f109 0201 	add.w	r2, r9, #1
 800736c:	3b01      	subs	r3, #1
 800736e:	e01c      	b.n	80073aa <_printf_float+0x3de>
 8007370:	4628      	mov	r0, r5
 8007372:	4631      	mov	r1, r6
 8007374:	f104 021a 	add.w	r2, r4, #26
 8007378:	2301      	movs	r3, #1
 800737a:	47b8      	blx	r7
 800737c:	3001      	adds	r0, #1
 800737e:	f43f aef6 	beq.w	800716e <_printf_float+0x1a2>
 8007382:	f108 0801 	add.w	r8, r8, #1
 8007386:	9b08      	ldr	r3, [sp, #32]
 8007388:	3b01      	subs	r3, #1
 800738a:	4598      	cmp	r8, r3
 800738c:	dbf0      	blt.n	8007370 <_printf_float+0x3a4>
 800738e:	4628      	mov	r0, r5
 8007390:	4631      	mov	r1, r6
 8007392:	f104 0250 	add.w	r2, r4, #80	; 0x50
 8007396:	465b      	mov	r3, fp
 8007398:	47b8      	blx	r7
 800739a:	3001      	adds	r0, #1
 800739c:	f47f af0c 	bne.w	80071b8 <_printf_float+0x1ec>
 80073a0:	e6e5      	b.n	800716e <_printf_float+0x1a2>
 80073a2:	4628      	mov	r0, r5
 80073a4:	4631      	mov	r1, r6
 80073a6:	464a      	mov	r2, r9
 80073a8:	2301      	movs	r3, #1
 80073aa:	47b8      	blx	r7
 80073ac:	3001      	adds	r0, #1
 80073ae:	d1ee      	bne.n	800738e <_printf_float+0x3c2>
 80073b0:	e6dd      	b.n	800716e <_printf_float+0x1a2>
 80073b2:	f04f 0800 	mov.w	r8, #0
 80073b6:	68e2      	ldr	r2, [r4, #12]
 80073b8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80073ba:	1ad3      	subs	r3, r2, r3
 80073bc:	4598      	cmp	r8, r3
 80073be:	db05      	blt.n	80073cc <_printf_float+0x400>
 80073c0:	68e0      	ldr	r0, [r4, #12]
 80073c2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80073c4:	4298      	cmp	r0, r3
 80073c6:	bfb8      	it	lt
 80073c8:	4618      	movlt	r0, r3
 80073ca:	e00b      	b.n	80073e4 <_printf_float+0x418>
 80073cc:	4628      	mov	r0, r5
 80073ce:	4631      	mov	r1, r6
 80073d0:	f104 0219 	add.w	r2, r4, #25
 80073d4:	2301      	movs	r3, #1
 80073d6:	47b8      	blx	r7
 80073d8:	3001      	adds	r0, #1
 80073da:	f43f aec8 	beq.w	800716e <_printf_float+0x1a2>
 80073de:	f108 0801 	add.w	r8, r8, #1
 80073e2:	e7e8      	b.n	80073b6 <_printf_float+0x3ea>
 80073e4:	b00b      	add	sp, #44	; 0x2c
 80073e6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80073ea:	bf00      	nop

080073ec <_printf_common>:
 80073ec:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80073f0:	4615      	mov	r5, r2
 80073f2:	461f      	mov	r7, r3
 80073f4:	688a      	ldr	r2, [r1, #8]
 80073f6:	690b      	ldr	r3, [r1, #16]
 80073f8:	f8dd 8020 	ldr.w	r8, [sp, #32]
 80073fc:	429a      	cmp	r2, r3
 80073fe:	bfa8      	it	ge
 8007400:	4613      	movge	r3, r2
 8007402:	602b      	str	r3, [r5, #0]
 8007404:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
 8007408:	4606      	mov	r6, r0
 800740a:	460c      	mov	r4, r1
 800740c:	b10a      	cbz	r2, 8007412 <_printf_common+0x26>
 800740e:	3301      	adds	r3, #1
 8007410:	602b      	str	r3, [r5, #0]
 8007412:	6823      	ldr	r3, [r4, #0]
 8007414:	0699      	lsls	r1, r3, #26
 8007416:	d502      	bpl.n	800741e <_printf_common+0x32>
 8007418:	682b      	ldr	r3, [r5, #0]
 800741a:	3302      	adds	r3, #2
 800741c:	602b      	str	r3, [r5, #0]
 800741e:	6823      	ldr	r3, [r4, #0]
 8007420:	f013 0906 	ands.w	r9, r3, #6
 8007424:	d01d      	beq.n	8007462 <_printf_common+0x76>
 8007426:	f894 3043 	ldrb.w	r3, [r4, #67]	; 0x43
 800742a:	6822      	ldr	r2, [r4, #0]
 800742c:	3300      	adds	r3, #0
 800742e:	bf18      	it	ne
 8007430:	2301      	movne	r3, #1
 8007432:	0692      	lsls	r2, r2, #26
 8007434:	d51f      	bpl.n	8007476 <_printf_common+0x8a>
 8007436:	18e1      	adds	r1, r4, r3
 8007438:	1c5a      	adds	r2, r3, #1
 800743a:	2030      	movs	r0, #48	; 0x30
 800743c:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
 8007440:	4422      	add	r2, r4
 8007442:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
 8007446:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
 800744a:	3302      	adds	r3, #2
 800744c:	e013      	b.n	8007476 <_printf_common+0x8a>
 800744e:	4630      	mov	r0, r6
 8007450:	4639      	mov	r1, r7
 8007452:	f104 0219 	add.w	r2, r4, #25
 8007456:	2301      	movs	r3, #1
 8007458:	47c0      	blx	r8
 800745a:	3001      	adds	r0, #1
 800745c:	d007      	beq.n	800746e <_printf_common+0x82>
 800745e:	f109 0901 	add.w	r9, r9, #1
 8007462:	68e2      	ldr	r2, [r4, #12]
 8007464:	682b      	ldr	r3, [r5, #0]
 8007466:	1ad3      	subs	r3, r2, r3
 8007468:	4599      	cmp	r9, r3
 800746a:	dbf0      	blt.n	800744e <_printf_common+0x62>
 800746c:	e7db      	b.n	8007426 <_printf_common+0x3a>
 800746e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007472:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8007476:	4630      	mov	r0, r6
 8007478:	4639      	mov	r1, r7
 800747a:	f104 0243 	add.w	r2, r4, #67	; 0x43
 800747e:	47c0      	blx	r8
 8007480:	3001      	adds	r0, #1
 8007482:	d0f4      	beq.n	800746e <_printf_common+0x82>
 8007484:	6823      	ldr	r3, [r4, #0]
 8007486:	682a      	ldr	r2, [r5, #0]
 8007488:	68e1      	ldr	r1, [r4, #12]
 800748a:	f003 0306 	and.w	r3, r3, #6
 800748e:	2b04      	cmp	r3, #4
 8007490:	bf08      	it	eq
 8007492:	ebc2 0501 	rsbeq	r5, r2, r1
 8007496:	6923      	ldr	r3, [r4, #16]
 8007498:	68a2      	ldr	r2, [r4, #8]
 800749a:	bf0c      	ite	eq
 800749c:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
 80074a0:	2500      	movne	r5, #0
 80074a2:	429a      	cmp	r2, r3
 80074a4:	bfc4      	itt	gt
 80074a6:	ebc3 0302 	rsbgt	r3, r3, r2
 80074aa:	18ed      	addgt	r5, r5, r3
 80074ac:	f04f 0900 	mov.w	r9, #0
 80074b0:	45a9      	cmp	r9, r5
 80074b2:	da0a      	bge.n	80074ca <_printf_common+0xde>
 80074b4:	4630      	mov	r0, r6
 80074b6:	4639      	mov	r1, r7
 80074b8:	f104 021a 	add.w	r2, r4, #26
 80074bc:	2301      	movs	r3, #1
 80074be:	47c0      	blx	r8
 80074c0:	3001      	adds	r0, #1
 80074c2:	d0d4      	beq.n	800746e <_printf_common+0x82>
 80074c4:	f109 0901 	add.w	r9, r9, #1
 80074c8:	e7f2      	b.n	80074b0 <_printf_common+0xc4>
 80074ca:	2000      	movs	r0, #0
 80074cc:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

080074d0 <quorem>:
 80074d0:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80074d4:	6903      	ldr	r3, [r0, #16]
 80074d6:	690c      	ldr	r4, [r1, #16]
 80074d8:	42a3      	cmp	r3, r4
 80074da:	4680      	mov	r8, r0
 80074dc:	f2c0 8081 	blt.w	80075e2 <quorem+0x112>
 80074e0:	3c01      	subs	r4, #1
 80074e2:	f101 0714 	add.w	r7, r1, #20
 80074e6:	00a2      	lsls	r2, r4, #2
 80074e8:	f100 0514 	add.w	r5, r0, #20
 80074ec:	4691      	mov	r9, r2
 80074ee:	9200      	str	r2, [sp, #0]
 80074f0:	f857 6024 	ldr.w	r6, [r7, r4, lsl #2]
 80074f4:	442a      	add	r2, r5
 80074f6:	9201      	str	r2, [sp, #4]
 80074f8:	f855 2024 	ldr.w	r2, [r5, r4, lsl #2]
 80074fc:	3601      	adds	r6, #1
 80074fe:	fbb2 f6f6 	udiv	r6, r2, r6
 8007502:	44b9      	add	r9, r7
 8007504:	2e00      	cmp	r6, #0
 8007506:	d03a      	beq.n	800757e <quorem+0xae>
 8007508:	f04f 0e00 	mov.w	lr, #0
 800750c:	463a      	mov	r2, r7
 800750e:	4628      	mov	r0, r5
 8007510:	46f3      	mov	fp, lr
 8007512:	f852 cb04 	ldr.w	ip, [r2], #4
 8007516:	6803      	ldr	r3, [r0, #0]
 8007518:	fa1f fa8c 	uxth.w	sl, ip
 800751c:	ea4f 4c1c 	mov.w	ip, ip, lsr #16
 8007520:	fb0a ea06 	mla	sl, sl, r6, lr
 8007524:	fb0c fc06 	mul.w	ip, ip, r6
 8007528:	eb0c 4c1a 	add.w	ip, ip, sl, lsr #16
 800752c:	fa1f fa8a 	uxth.w	sl, sl
 8007530:	ebca 0a0b 	rsb	sl, sl, fp
 8007534:	ea4f 4e1c 	mov.w	lr, ip, lsr #16
 8007538:	fa1f fc8c 	uxth.w	ip, ip
 800753c:	fa1a fa83 	uxtah	sl, sl, r3
 8007540:	ebcc 4c13 	rsb	ip, ip, r3, lsr #16
 8007544:	eb0c 4c2a 	add.w	ip, ip, sl, asr #16
 8007548:	fa1f fa8a 	uxth.w	sl, sl
 800754c:	ea4a 4a0c 	orr.w	sl, sl, ip, lsl #16
 8007550:	454a      	cmp	r2, r9
 8007552:	ea4f 4b2c 	mov.w	fp, ip, asr #16
 8007556:	f840 ab04 	str.w	sl, [r0], #4
 800755a:	d9da      	bls.n	8007512 <quorem+0x42>
 800755c:	9a00      	ldr	r2, [sp, #0]
 800755e:	58ab      	ldr	r3, [r5, r2]
 8007560:	b96b      	cbnz	r3, 800757e <quorem+0xae>
 8007562:	9a01      	ldr	r2, [sp, #4]
 8007564:	1f13      	subs	r3, r2, #4
 8007566:	42ab      	cmp	r3, r5
 8007568:	461a      	mov	r2, r3
 800756a:	d802      	bhi.n	8007572 <quorem+0xa2>
 800756c:	f8c8 4010 	str.w	r4, [r8, #16]
 8007570:	e005      	b.n	800757e <quorem+0xae>
 8007572:	6812      	ldr	r2, [r2, #0]
 8007574:	3b04      	subs	r3, #4
 8007576:	2a00      	cmp	r2, #0
 8007578:	d1f8      	bne.n	800756c <quorem+0x9c>
 800757a:	3c01      	subs	r4, #1
 800757c:	e7f3      	b.n	8007566 <quorem+0x96>
 800757e:	4640      	mov	r0, r8
 8007580:	f001 f80f 	bl	80085a2 <__mcmp>
 8007584:	2800      	cmp	r0, #0
 8007586:	db2a      	blt.n	80075de <quorem+0x10e>
 8007588:	3601      	adds	r6, #1
 800758a:	462b      	mov	r3, r5
 800758c:	2000      	movs	r0, #0
 800758e:	f857 cb04 	ldr.w	ip, [r7], #4
 8007592:	681a      	ldr	r2, [r3, #0]
 8007594:	fa1f f18c 	uxth.w	r1, ip
 8007598:	1a41      	subs	r1, r0, r1
 800759a:	ea4f 4c1c 	mov.w	ip, ip, lsr #16
 800759e:	fa11 f182 	uxtah	r1, r1, r2
 80075a2:	ebcc 4212 	rsb	r2, ip, r2, lsr #16
 80075a6:	eb02 4221 	add.w	r2, r2, r1, asr #16
 80075aa:	b289      	uxth	r1, r1
 80075ac:	1410      	asrs	r0, r2, #16
 80075ae:	454f      	cmp	r7, r9
 80075b0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
 80075b4:	f843 2b04 	str.w	r2, [r3], #4
 80075b8:	d9e9      	bls.n	800758e <quorem+0xbe>
 80075ba:	f855 2024 	ldr.w	r2, [r5, r4, lsl #2]
 80075be:	eb05 0384 	add.w	r3, r5, r4, lsl #2
 80075c2:	b962      	cbnz	r2, 80075de <quorem+0x10e>
 80075c4:	3b04      	subs	r3, #4
 80075c6:	42ab      	cmp	r3, r5
 80075c8:	461a      	mov	r2, r3
 80075ca:	d802      	bhi.n	80075d2 <quorem+0x102>
 80075cc:	f8c8 4010 	str.w	r4, [r8, #16]
 80075d0:	e005      	b.n	80075de <quorem+0x10e>
 80075d2:	6812      	ldr	r2, [r2, #0]
 80075d4:	3b04      	subs	r3, #4
 80075d6:	2a00      	cmp	r2, #0
 80075d8:	d1f8      	bne.n	80075cc <quorem+0xfc>
 80075da:	3c01      	subs	r4, #1
 80075dc:	e7f3      	b.n	80075c6 <quorem+0xf6>
 80075de:	4630      	mov	r0, r6
 80075e0:	e000      	b.n	80075e4 <quorem+0x114>
 80075e2:	2000      	movs	r0, #0
 80075e4:	b003      	add	sp, #12
 80075e6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80075ea:	0000      	movs	r0, r0
 80075ec:	0000      	movs	r0, r0
	...

080075f0 <_dtoa_r>:
 80075f0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80075f4:	6a45      	ldr	r5, [r0, #36]	; 0x24
 80075f6:	b09b      	sub	sp, #108	; 0x6c
 80075f8:	4682      	mov	sl, r0
 80075fa:	910d      	str	r1, [sp, #52]	; 0x34
 80075fc:	920e      	str	r2, [sp, #56]	; 0x38
 80075fe:	9314      	str	r3, [sp, #80]	; 0x50
 8007600:	9c24      	ldr	r4, [sp, #144]	; 0x90
 8007602:	ed8d 0b02 	vstr	d0, [sp, #8]
 8007606:	b945      	cbnz	r5, 800761a <_dtoa_r+0x2a>
 8007608:	2010      	movs	r0, #16
 800760a:	f000 fdad 	bl	8008168 <malloc>
 800760e:	f8ca 0024 	str.w	r0, [sl, #36]	; 0x24
 8007612:	6045      	str	r5, [r0, #4]
 8007614:	6085      	str	r5, [r0, #8]
 8007616:	6005      	str	r5, [r0, #0]
 8007618:	60c5      	str	r5, [r0, #12]
 800761a:	f8da 3024 	ldr.w	r3, [sl, #36]	; 0x24
 800761e:	6819      	ldr	r1, [r3, #0]
 8007620:	b161      	cbz	r1, 800763c <_dtoa_r+0x4c>
 8007622:	685b      	ldr	r3, [r3, #4]
 8007624:	604b      	str	r3, [r1, #4]
 8007626:	2201      	movs	r2, #1
 8007628:	fa02 f303 	lsl.w	r3, r2, r3
 800762c:	608b      	str	r3, [r1, #8]
 800762e:	4650      	mov	r0, sl
 8007630:	f000 fdd7 	bl	80081e2 <_Bfree>
 8007634:	f8da 3024 	ldr.w	r3, [sl, #36]	; 0x24
 8007638:	2200      	movs	r2, #0
 800763a:	601a      	str	r2, [r3, #0]
 800763c:	9903      	ldr	r1, [sp, #12]
 800763e:	2900      	cmp	r1, #0
 8007640:	da05      	bge.n	800764e <_dtoa_r+0x5e>
 8007642:	2301      	movs	r3, #1
 8007644:	f021 4200 	bic.w	r2, r1, #2147483648	; 0x80000000
 8007648:	6023      	str	r3, [r4, #0]
 800764a:	9203      	str	r2, [sp, #12]
 800764c:	e001      	b.n	8007652 <_dtoa_r+0x62>
 800764e:	2300      	movs	r3, #0
 8007650:	6023      	str	r3, [r4, #0]
 8007652:	9c03      	ldr	r4, [sp, #12]
 8007654:	4a9a      	ldr	r2, [pc, #616]	; (80078c0 <_dtoa_r+0x2d0>)
 8007656:	f024 4300 	bic.w	r3, r4, #2147483648	; 0x80000000
 800765a:	0d1b      	lsrs	r3, r3, #20
 800765c:	051b      	lsls	r3, r3, #20
 800765e:	4293      	cmp	r3, r2
 8007660:	d11d      	bne.n	800769e <_dtoa_r+0xae>
 8007662:	9f14      	ldr	r7, [sp, #80]	; 0x50
 8007664:	9902      	ldr	r1, [sp, #8]
 8007666:	f242 730f 	movw	r3, #9999	; 0x270f
 800766a:	603b      	str	r3, [r7, #0]
 800766c:	b941      	cbnz	r1, 8007680 <_dtoa_r+0x90>
 800766e:	4b95      	ldr	r3, [pc, #596]	; (80078c4 <_dtoa_r+0x2d4>)
 8007670:	4a95      	ldr	r2, [pc, #596]	; (80078c8 <_dtoa_r+0x2d8>)
 8007672:	f3c4 0013 	ubfx	r0, r4, #0, #20
 8007676:	2800      	cmp	r0, #0
 8007678:	bf0c      	ite	eq
 800767a:	4610      	moveq	r0, r2
 800767c:	4618      	movne	r0, r3
 800767e:	e000      	b.n	8007682 <_dtoa_r+0x92>
 8007680:	4890      	ldr	r0, [pc, #576]	; (80078c4 <_dtoa_r+0x2d4>)
 8007682:	9f25      	ldr	r7, [sp, #148]	; 0x94
 8007684:	2f00      	cmp	r7, #0
 8007686:	f000 8565 	beq.w	8008154 <_dtoa_r+0xb64>
 800768a:	78c3      	ldrb	r3, [r0, #3]
 800768c:	b113      	cbz	r3, 8007694 <_dtoa_r+0xa4>
 800768e:	f100 0308 	add.w	r3, r0, #8
 8007692:	e000      	b.n	8007696 <_dtoa_r+0xa6>
 8007694:	1cc3      	adds	r3, r0, #3
 8007696:	9f25      	ldr	r7, [sp, #148]	; 0x94
 8007698:	603b      	str	r3, [r7, #0]
 800769a:	f000 bd5b 	b.w	8008154 <_dtoa_r+0xb64>
 800769e:	e9dd 8902 	ldrd	r8, r9, [sp, #8]
 80076a2:	2200      	movs	r2, #0
 80076a4:	4640      	mov	r0, r8
 80076a6:	4649      	mov	r1, r9
 80076a8:	2300      	movs	r3, #0
 80076aa:	f7f9 f9e3 	bl	8000a74 <__aeabi_dcmpeq>
 80076ae:	4605      	mov	r5, r0
 80076b0:	b158      	cbz	r0, 80076ca <_dtoa_r+0xda>
 80076b2:	9f14      	ldr	r7, [sp, #80]	; 0x50
 80076b4:	2301      	movs	r3, #1
 80076b6:	603b      	str	r3, [r7, #0]
 80076b8:	9f25      	ldr	r7, [sp, #148]	; 0x94
 80076ba:	2f00      	cmp	r7, #0
 80076bc:	f000 8547 	beq.w	800814e <_dtoa_r+0xb5e>
 80076c0:	4882      	ldr	r0, [pc, #520]	; (80078cc <_dtoa_r+0x2dc>)
 80076c2:	6038      	str	r0, [r7, #0]
 80076c4:	3801      	subs	r0, #1
 80076c6:	f000 bd45 	b.w	8008154 <_dtoa_r+0xb64>
 80076ca:	4650      	mov	r0, sl
 80076cc:	ec49 8b10 	vmov	d0, r8, r9
 80076d0:	a919      	add	r1, sp, #100	; 0x64
 80076d2:	aa18      	add	r2, sp, #96	; 0x60
 80076d4:	f000 ffe0 	bl	8008698 <__d2b>
 80076d8:	f3c4 560a 	ubfx	r6, r4, #20, #11
 80076dc:	4683      	mov	fp, r0
 80076de:	b156      	cbz	r6, 80076f6 <_dtoa_r+0x106>
 80076e0:	f3c9 0313 	ubfx	r3, r9, #0, #20
 80076e4:	f043 517f 	orr.w	r1, r3, #1069547520	; 0x3fc00000
 80076e8:	4640      	mov	r0, r8
 80076ea:	f441 1140 	orr.w	r1, r1, #3145728	; 0x300000
 80076ee:	f2a6 36ff 	subw	r6, r6, #1023	; 0x3ff
 80076f2:	9515      	str	r5, [sp, #84]	; 0x54
 80076f4:	e01c      	b.n	8007730 <_dtoa_r+0x140>
 80076f6:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80076f8:	9e18      	ldr	r6, [sp, #96]	; 0x60
 80076fa:	441e      	add	r6, r3
 80076fc:	f46f 6382 	mvn.w	r3, #1040	; 0x410
 8007700:	429e      	cmp	r6, r3
 8007702:	db09      	blt.n	8007718 <_dtoa_r+0x128>
 8007704:	9902      	ldr	r1, [sp, #8]
 8007706:	331f      	adds	r3, #31
 8007708:	f206 4012 	addw	r0, r6, #1042	; 0x412
 800770c:	1b9b      	subs	r3, r3, r6
 800770e:	fa21 f000 	lsr.w	r0, r1, r0
 8007712:	409c      	lsls	r4, r3
 8007714:	4320      	orrs	r0, r4
 8007716:	e004      	b.n	8007722 <_dtoa_r+0x132>
 8007718:	486d      	ldr	r0, [pc, #436]	; (80078d0 <_dtoa_r+0x2e0>)
 800771a:	9a02      	ldr	r2, [sp, #8]
 800771c:	1b80      	subs	r0, r0, r6
 800771e:	fa02 f000 	lsl.w	r0, r2, r0
 8007722:	f7f8 fea1 	bl	8000468 <__aeabi_ui2d>
 8007726:	2701      	movs	r7, #1
 8007728:	f1a1 71f8 	sub.w	r1, r1, #32505856	; 0x1f00000
 800772c:	3e01      	subs	r6, #1
 800772e:	9715      	str	r7, [sp, #84]	; 0x54
 8007730:	2200      	movs	r2, #0
 8007732:	4b68      	ldr	r3, [pc, #416]	; (80078d4 <_dtoa_r+0x2e4>)
 8007734:	f7f8 fd5a 	bl	80001ec <__aeabi_dsub>
 8007738:	a35b      	add	r3, pc, #364	; (adr r3, 80078a8 <_dtoa_r+0x2b8>)
 800773a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800773e:	f7f8 ff09 	bl	8000554 <__aeabi_dmul>
 8007742:	a35b      	add	r3, pc, #364	; (adr r3, 80078b0 <_dtoa_r+0x2c0>)
 8007744:	e9d3 2300 	ldrd	r2, r3, [r3]
 8007748:	f7f8 fd52 	bl	80001f0 <__adddf3>
 800774c:	4604      	mov	r4, r0
 800774e:	4630      	mov	r0, r6
 8007750:	460d      	mov	r5, r1
 8007752:	f7f8 fe99 	bl	8000488 <__aeabi_i2d>
 8007756:	a358      	add	r3, pc, #352	; (adr r3, 80078b8 <_dtoa_r+0x2c8>)
 8007758:	e9d3 2300 	ldrd	r2, r3, [r3]
 800775c:	f7f8 fefa 	bl	8000554 <__aeabi_dmul>
 8007760:	4602      	mov	r2, r0
 8007762:	460b      	mov	r3, r1
 8007764:	4620      	mov	r0, r4
 8007766:	4629      	mov	r1, r5
 8007768:	f7f8 fd42 	bl	80001f0 <__adddf3>
 800776c:	4604      	mov	r4, r0
 800776e:	460d      	mov	r5, r1
 8007770:	f7f9 f902 	bl	8000978 <__aeabi_d2iz>
 8007774:	4629      	mov	r1, r5
 8007776:	4681      	mov	r9, r0
 8007778:	2200      	movs	r2, #0
 800777a:	4620      	mov	r0, r4
 800777c:	2300      	movs	r3, #0
 800777e:	f7f9 f983 	bl	8000a88 <__aeabi_dcmplt>
 8007782:	b158      	cbz	r0, 800779c <_dtoa_r+0x1ac>
 8007784:	4648      	mov	r0, r9
 8007786:	f7f8 fe7f 	bl	8000488 <__aeabi_i2d>
 800778a:	4602      	mov	r2, r0
 800778c:	460b      	mov	r3, r1
 800778e:	4620      	mov	r0, r4
 8007790:	4629      	mov	r1, r5
 8007792:	f7f9 f96f 	bl	8000a74 <__aeabi_dcmpeq>
 8007796:	b908      	cbnz	r0, 800779c <_dtoa_r+0x1ac>
 8007798:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
 800779c:	f1b9 0f16 	cmp.w	r9, #22
 80077a0:	d80d      	bhi.n	80077be <_dtoa_r+0x1ce>
 80077a2:	4b4d      	ldr	r3, [pc, #308]	; (80078d8 <_dtoa_r+0x2e8>)
 80077a4:	eb03 03c9 	add.w	r3, r3, r9, lsl #3
 80077a8:	e9d3 0100 	ldrd	r0, r1, [r3]
 80077ac:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80077b0:	f7f9 f988 	bl	8000ac4 <__aeabi_dcmpgt>
 80077b4:	b130      	cbz	r0, 80077c4 <_dtoa_r+0x1d4>
 80077b6:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
 80077ba:	2700      	movs	r7, #0
 80077bc:	e000      	b.n	80077c0 <_dtoa_r+0x1d0>
 80077be:	2701      	movs	r7, #1
 80077c0:	9711      	str	r7, [sp, #68]	; 0x44
 80077c2:	e000      	b.n	80077c6 <_dtoa_r+0x1d6>
 80077c4:	9011      	str	r0, [sp, #68]	; 0x44
 80077c6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 80077c8:	1b9e      	subs	r6, r3, r6
 80077ca:	3e01      	subs	r6, #1
 80077cc:	9606      	str	r6, [sp, #24]
 80077ce:	d504      	bpl.n	80077da <_dtoa_r+0x1ea>
 80077d0:	4277      	negs	r7, r6
 80077d2:	9705      	str	r7, [sp, #20]
 80077d4:	2700      	movs	r7, #0
 80077d6:	9706      	str	r7, [sp, #24]
 80077d8:	e001      	b.n	80077de <_dtoa_r+0x1ee>
 80077da:	2700      	movs	r7, #0
 80077dc:	9705      	str	r7, [sp, #20]
 80077de:	f1b9 0f00 	cmp.w	r9, #0
 80077e2:	db07      	blt.n	80077f4 <_dtoa_r+0x204>
 80077e4:	9f06      	ldr	r7, [sp, #24]
 80077e6:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 80077ea:	444f      	add	r7, r9
 80077ec:	9706      	str	r7, [sp, #24]
 80077ee:	2700      	movs	r7, #0
 80077f0:	970b      	str	r7, [sp, #44]	; 0x2c
 80077f2:	e008      	b.n	8007806 <_dtoa_r+0x216>
 80077f4:	9f05      	ldr	r7, [sp, #20]
 80077f6:	ebc9 0707 	rsb	r7, r9, r7
 80077fa:	9705      	str	r7, [sp, #20]
 80077fc:	f1c9 0700 	rsb	r7, r9, #0
 8007800:	970b      	str	r7, [sp, #44]	; 0x2c
 8007802:	2700      	movs	r7, #0
 8007804:	9710      	str	r7, [sp, #64]	; 0x40
 8007806:	9f0d      	ldr	r7, [sp, #52]	; 0x34
 8007808:	2f09      	cmp	r7, #9
 800780a:	d828      	bhi.n	800785e <_dtoa_r+0x26e>
 800780c:	2f05      	cmp	r7, #5
 800780e:	bfc4      	itt	gt
 8007810:	3f04      	subgt	r7, #4
 8007812:	970d      	strgt	r7, [sp, #52]	; 0x34
 8007814:	9f0d      	ldr	r7, [sp, #52]	; 0x34
 8007816:	f1a7 0302 	sub.w	r3, r7, #2
 800781a:	bfcc      	ite	gt
 800781c:	2500      	movgt	r5, #0
 800781e:	2501      	movle	r5, #1
 8007820:	2b03      	cmp	r3, #3
 8007822:	d821      	bhi.n	8007868 <_dtoa_r+0x278>
 8007824:	e8df f003 	tbb	[pc, r3]
 8007828:	04020f06 	.word	0x04020f06
 800782c:	2701      	movs	r7, #1
 800782e:	e002      	b.n	8007836 <_dtoa_r+0x246>
 8007830:	2701      	movs	r7, #1
 8007832:	e009      	b.n	8007848 <_dtoa_r+0x258>
 8007834:	2700      	movs	r7, #0
 8007836:	970c      	str	r7, [sp, #48]	; 0x30
 8007838:	9f0e      	ldr	r7, [sp, #56]	; 0x38
 800783a:	2f00      	cmp	r7, #0
 800783c:	dd1e      	ble.n	800787c <_dtoa_r+0x28c>
 800783e:	970a      	str	r7, [sp, #40]	; 0x28
 8007840:	9704      	str	r7, [sp, #16]
 8007842:	463b      	mov	r3, r7
 8007844:	e01f      	b.n	8007886 <_dtoa_r+0x296>
 8007846:	2700      	movs	r7, #0
 8007848:	970c      	str	r7, [sp, #48]	; 0x30
 800784a:	9f0e      	ldr	r7, [sp, #56]	; 0x38
 800784c:	444f      	add	r7, r9
 800784e:	970a      	str	r7, [sp, #40]	; 0x28
 8007850:	3701      	adds	r7, #1
 8007852:	463b      	mov	r3, r7
 8007854:	9704      	str	r7, [sp, #16]
 8007856:	2b01      	cmp	r3, #1
 8007858:	bfb8      	it	lt
 800785a:	2301      	movlt	r3, #1
 800785c:	e013      	b.n	8007886 <_dtoa_r+0x296>
 800785e:	2501      	movs	r5, #1
 8007860:	2700      	movs	r7, #0
 8007862:	970d      	str	r7, [sp, #52]	; 0x34
 8007864:	950c      	str	r5, [sp, #48]	; 0x30
 8007866:	e001      	b.n	800786c <_dtoa_r+0x27c>
 8007868:	2701      	movs	r7, #1
 800786a:	970c      	str	r7, [sp, #48]	; 0x30
 800786c:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8007870:	970a      	str	r7, [sp, #40]	; 0x28
 8007872:	9704      	str	r7, [sp, #16]
 8007874:	2700      	movs	r7, #0
 8007876:	2312      	movs	r3, #18
 8007878:	970e      	str	r7, [sp, #56]	; 0x38
 800787a:	e004      	b.n	8007886 <_dtoa_r+0x296>
 800787c:	2701      	movs	r7, #1
 800787e:	970a      	str	r7, [sp, #40]	; 0x28
 8007880:	9704      	str	r7, [sp, #16]
 8007882:	463b      	mov	r3, r7
 8007884:	970e      	str	r7, [sp, #56]	; 0x38
 8007886:	f8da 4024 	ldr.w	r4, [sl, #36]	; 0x24
 800788a:	2200      	movs	r2, #0
 800788c:	6062      	str	r2, [r4, #4]
 800788e:	2104      	movs	r1, #4
 8007890:	f101 0214 	add.w	r2, r1, #20
 8007894:	429a      	cmp	r2, r3
 8007896:	d821      	bhi.n	80078dc <_dtoa_r+0x2ec>
 8007898:	6862      	ldr	r2, [r4, #4]
 800789a:	3201      	adds	r2, #1
 800789c:	6062      	str	r2, [r4, #4]
 800789e:	0049      	lsls	r1, r1, #1
 80078a0:	e7f6      	b.n	8007890 <_dtoa_r+0x2a0>
 80078a2:	bf00      	nop
 80078a4:	f3af 8000 	nop.w
 80078a8:	636f4361 	.word	0x636f4361
 80078ac:	3fd287a7 	.word	0x3fd287a7
 80078b0:	8b60c8b3 	.word	0x8b60c8b3
 80078b4:	3fc68a28 	.word	0x3fc68a28
 80078b8:	509f79fb 	.word	0x509f79fb
 80078bc:	3fd34413 	.word	0x3fd34413
 80078c0:	7ff00000 	.word	0x7ff00000
 80078c4:	08009545 	.word	0x08009545
 80078c8:	0800953c 	.word	0x0800953c
 80078cc:	0800953b 	.word	0x0800953b
 80078d0:	fffffbee 	.word	0xfffffbee
 80078d4:	3ff80000 	.word	0x3ff80000
 80078d8:	080095b8 	.word	0x080095b8
 80078dc:	4650      	mov	r0, sl
 80078de:	6861      	ldr	r1, [r4, #4]
 80078e0:	f000 fc4a 	bl	8008178 <_Balloc>
 80078e4:	f8da 3024 	ldr.w	r3, [sl, #36]	; 0x24
 80078e8:	9f04      	ldr	r7, [sp, #16]
 80078ea:	6020      	str	r0, [r4, #0]
 80078ec:	681b      	ldr	r3, [r3, #0]
 80078ee:	9307      	str	r3, [sp, #28]
 80078f0:	2f0e      	cmp	r7, #14
 80078f2:	f200 8169 	bhi.w	8007bc8 <_dtoa_r+0x5d8>
 80078f6:	2d00      	cmp	r5, #0
 80078f8:	f000 8166 	beq.w	8007bc8 <_dtoa_r+0x5d8>
 80078fc:	ed9d 7b02 	vldr	d7, [sp, #8]
 8007900:	f1b9 0f00 	cmp.w	r9, #0
 8007904:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8007908:	dd31      	ble.n	800796e <_dtoa_r+0x37e>
 800790a:	4a80      	ldr	r2, [pc, #512]	; (8007b0c <_dtoa_r+0x51c>)
 800790c:	f009 030f 	and.w	r3, r9, #15
 8007910:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
 8007914:	ed93 7b00 	vldr	d7, [r3]
 8007918:	ea4f 1429 	mov.w	r4, r9, asr #4
 800791c:	06e0      	lsls	r0, r4, #27
 800791e:	ed8d 7b08 	vstr	d7, [sp, #32]
 8007922:	d50c      	bpl.n	800793e <_dtoa_r+0x34e>
 8007924:	4b7a      	ldr	r3, [pc, #488]	; (8007b10 <_dtoa_r+0x520>)
 8007926:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800792a:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 800792e:	f7f8 ff3b 	bl	80007a8 <__aeabi_ddiv>
 8007932:	f004 040f 	and.w	r4, r4, #15
 8007936:	e9cd 0102 	strd	r0, r1, [sp, #8]
 800793a:	2703      	movs	r7, #3
 800793c:	e000      	b.n	8007940 <_dtoa_r+0x350>
 800793e:	2702      	movs	r7, #2
 8007940:	4d73      	ldr	r5, [pc, #460]	; (8007b10 <_dtoa_r+0x520>)
 8007942:	b16c      	cbz	r4, 8007960 <_dtoa_r+0x370>
 8007944:	07e1      	lsls	r1, r4, #31
 8007946:	d508      	bpl.n	800795a <_dtoa_r+0x36a>
 8007948:	e9dd 0108 	ldrd	r0, r1, [sp, #32]
 800794c:	e9d5 2300 	ldrd	r2, r3, [r5]
 8007950:	f7f8 fe00 	bl	8000554 <__aeabi_dmul>
 8007954:	e9cd 0108 	strd	r0, r1, [sp, #32]
 8007958:	3701      	adds	r7, #1
 800795a:	1064      	asrs	r4, r4, #1
 800795c:	3508      	adds	r5, #8
 800795e:	e7f0      	b.n	8007942 <_dtoa_r+0x352>
 8007960:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 8007964:	e9dd 2308 	ldrd	r2, r3, [sp, #32]
 8007968:	f7f8 ff1e 	bl	80007a8 <__aeabi_ddiv>
 800796c:	e01b      	b.n	80079a6 <_dtoa_r+0x3b6>
 800796e:	f1c9 0400 	rsb	r4, r9, #0
 8007972:	b1dc      	cbz	r4, 80079ac <_dtoa_r+0x3bc>
 8007974:	4b65      	ldr	r3, [pc, #404]	; (8007b0c <_dtoa_r+0x51c>)
 8007976:	4d66      	ldr	r5, [pc, #408]	; (8007b10 <_dtoa_r+0x520>)
 8007978:	f004 020f 	and.w	r2, r4, #15
 800797c:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8007980:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8007984:	e9d3 2300 	ldrd	r2, r3, [r3]
 8007988:	f7f8 fde4 	bl	8000554 <__aeabi_dmul>
 800798c:	1124      	asrs	r4, r4, #4
 800798e:	2702      	movs	r7, #2
 8007990:	b14c      	cbz	r4, 80079a6 <_dtoa_r+0x3b6>
 8007992:	07e2      	lsls	r2, r4, #31
 8007994:	d504      	bpl.n	80079a0 <_dtoa_r+0x3b0>
 8007996:	e9d5 2300 	ldrd	r2, r3, [r5]
 800799a:	3701      	adds	r7, #1
 800799c:	f7f8 fdda 	bl	8000554 <__aeabi_dmul>
 80079a0:	1064      	asrs	r4, r4, #1
 80079a2:	3508      	adds	r5, #8
 80079a4:	e7f4      	b.n	8007990 <_dtoa_r+0x3a0>
 80079a6:	e9cd 0102 	strd	r0, r1, [sp, #8]
 80079aa:	e000      	b.n	80079ae <_dtoa_r+0x3be>
 80079ac:	2702      	movs	r7, #2
 80079ae:	9911      	ldr	r1, [sp, #68]	; 0x44
 80079b0:	b1e1      	cbz	r1, 80079ec <_dtoa_r+0x3fc>
 80079b2:	e9dd 4502 	ldrd	r4, r5, [sp, #8]
 80079b6:	2200      	movs	r2, #0
 80079b8:	4620      	mov	r0, r4
 80079ba:	4629      	mov	r1, r5
 80079bc:	4b55      	ldr	r3, [pc, #340]	; (8007b14 <_dtoa_r+0x524>)
 80079be:	f7f9 f863 	bl	8000a88 <__aeabi_dcmplt>
 80079c2:	b1c0      	cbz	r0, 80079f6 <_dtoa_r+0x406>
 80079c4:	9a04      	ldr	r2, [sp, #16]
 80079c6:	b1da      	cbz	r2, 8007a00 <_dtoa_r+0x410>
 80079c8:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80079ca:	2b00      	cmp	r3, #0
 80079cc:	f340 80f8 	ble.w	8007bc0 <_dtoa_r+0x5d0>
 80079d0:	f109 31ff 	add.w	r1, r9, #4294967295	; 0xffffffff
 80079d4:	910f      	str	r1, [sp, #60]	; 0x3c
 80079d6:	2200      	movs	r2, #0
 80079d8:	4620      	mov	r0, r4
 80079da:	4629      	mov	r1, r5
 80079dc:	4b4e      	ldr	r3, [pc, #312]	; (8007b18 <_dtoa_r+0x528>)
 80079de:	f7f8 fdb9 	bl	8000554 <__aeabi_dmul>
 80079e2:	3701      	adds	r7, #1
 80079e4:	e9cd 0102 	strd	r0, r1, [sp, #8]
 80079e8:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80079ea:	e00c      	b.n	8007a06 <_dtoa_r+0x416>
 80079ec:	9b04      	ldr	r3, [sp, #16]
 80079ee:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 80079f2:	9308      	str	r3, [sp, #32]
 80079f4:	e008      	b.n	8007a08 <_dtoa_r+0x418>
 80079f6:	9904      	ldr	r1, [sp, #16]
 80079f8:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 80079fc:	9108      	str	r1, [sp, #32]
 80079fe:	e003      	b.n	8007a08 <_dtoa_r+0x418>
 8007a00:	9a04      	ldr	r2, [sp, #16]
 8007a02:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8007a06:	9208      	str	r2, [sp, #32]
 8007a08:	4638      	mov	r0, r7
 8007a0a:	f7f8 fd3d 	bl	8000488 <__aeabi_i2d>
 8007a0e:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8007a12:	f7f8 fd9f 	bl	8000554 <__aeabi_dmul>
 8007a16:	2200      	movs	r2, #0
 8007a18:	4b40      	ldr	r3, [pc, #256]	; (8007b1c <_dtoa_r+0x52c>)
 8007a1a:	f7f8 fbe9 	bl	80001f0 <__adddf3>
 8007a1e:	9f08      	ldr	r7, [sp, #32]
 8007a20:	4604      	mov	r4, r0
 8007a22:	f1a1 7550 	sub.w	r5, r1, #54525952	; 0x3400000
 8007a26:	b9cf      	cbnz	r7, 8007a5c <_dtoa_r+0x46c>
 8007a28:	2200      	movs	r2, #0
 8007a2a:	4b3d      	ldr	r3, [pc, #244]	; (8007b20 <_dtoa_r+0x530>)
 8007a2c:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 8007a30:	f7f8 fbdc 	bl	80001ec <__aeabi_dsub>
 8007a34:	4622      	mov	r2, r4
 8007a36:	462b      	mov	r3, r5
 8007a38:	4606      	mov	r6, r0
 8007a3a:	460f      	mov	r7, r1
 8007a3c:	f7f9 f842 	bl	8000ac4 <__aeabi_dcmpgt>
 8007a40:	2800      	cmp	r0, #0
 8007a42:	f040 824b 	bne.w	8007edc <_dtoa_r+0x8ec>
 8007a46:	4622      	mov	r2, r4
 8007a48:	f105 4300 	add.w	r3, r5, #2147483648	; 0x80000000
 8007a4c:	4630      	mov	r0, r6
 8007a4e:	4639      	mov	r1, r7
 8007a50:	f7f9 f81a 	bl	8000a88 <__aeabi_dcmplt>
 8007a54:	2800      	cmp	r0, #0
 8007a56:	f040 8237 	bne.w	8007ec8 <_dtoa_r+0x8d8>
 8007a5a:	e0b1      	b.n	8007bc0 <_dtoa_r+0x5d0>
 8007a5c:	9f08      	ldr	r7, [sp, #32]
 8007a5e:	4b2b      	ldr	r3, [pc, #172]	; (8007b0c <_dtoa_r+0x51c>)
 8007a60:	1e7a      	subs	r2, r7, #1
 8007a62:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8007a64:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8007a68:	2f00      	cmp	r7, #0
 8007a6a:	d05d      	beq.n	8007b28 <_dtoa_r+0x538>
 8007a6c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8007a70:	2000      	movs	r0, #0
 8007a72:	492c      	ldr	r1, [pc, #176]	; (8007b24 <_dtoa_r+0x534>)
 8007a74:	f7f8 fe98 	bl	80007a8 <__aeabi_ddiv>
 8007a78:	4622      	mov	r2, r4
 8007a7a:	462b      	mov	r3, r5
 8007a7c:	f7f8 fbb6 	bl	80001ec <__aeabi_dsub>
 8007a80:	e9dd 6702 	ldrd	r6, r7, [sp, #8]
 8007a84:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8007a88:	4604      	mov	r4, r0
 8007a8a:	460d      	mov	r5, r1
 8007a8c:	4639      	mov	r1, r7
 8007a8e:	4630      	mov	r0, r6
 8007a90:	f7f8 ff72 	bl	8000978 <__aeabi_d2iz>
 8007a94:	9000      	str	r0, [sp, #0]
 8007a96:	f7f8 fcf7 	bl	8000488 <__aeabi_i2d>
 8007a9a:	4602      	mov	r2, r0
 8007a9c:	460b      	mov	r3, r1
 8007a9e:	4630      	mov	r0, r6
 8007aa0:	4639      	mov	r1, r7
 8007aa2:	f7f8 fba3 	bl	80001ec <__aeabi_dsub>
 8007aa6:	f8dd c000 	ldr.w	ip, [sp]
 8007aaa:	f10c 0330 	add.w	r3, ip, #48	; 0x30
 8007aae:	f808 3b01 	strb.w	r3, [r8], #1
 8007ab2:	4622      	mov	r2, r4
 8007ab4:	462b      	mov	r3, r5
 8007ab6:	4606      	mov	r6, r0
 8007ab8:	460f      	mov	r7, r1
 8007aba:	f7f8 ffe5 	bl	8000a88 <__aeabi_dcmplt>
 8007abe:	2800      	cmp	r0, #0
 8007ac0:	f040 8333 	bne.w	800812a <_dtoa_r+0xb3a>
 8007ac4:	4632      	mov	r2, r6
 8007ac6:	463b      	mov	r3, r7
 8007ac8:	2000      	movs	r0, #0
 8007aca:	4912      	ldr	r1, [pc, #72]	; (8007b14 <_dtoa_r+0x524>)
 8007acc:	f7f8 fb8e 	bl	80001ec <__aeabi_dsub>
 8007ad0:	4622      	mov	r2, r4
 8007ad2:	462b      	mov	r3, r5
 8007ad4:	f7f8 ffd8 	bl	8000a88 <__aeabi_dcmplt>
 8007ad8:	2800      	cmp	r0, #0
 8007ada:	f040 80d4 	bne.w	8007c86 <_dtoa_r+0x696>
 8007ade:	9907      	ldr	r1, [sp, #28]
 8007ae0:	9a08      	ldr	r2, [sp, #32]
 8007ae2:	ebc1 0308 	rsb	r3, r1, r8
 8007ae6:	4293      	cmp	r3, r2
 8007ae8:	da6a      	bge.n	8007bc0 <_dtoa_r+0x5d0>
 8007aea:	4620      	mov	r0, r4
 8007aec:	4629      	mov	r1, r5
 8007aee:	2200      	movs	r2, #0
 8007af0:	4b09      	ldr	r3, [pc, #36]	; (8007b18 <_dtoa_r+0x528>)
 8007af2:	f7f8 fd2f 	bl	8000554 <__aeabi_dmul>
 8007af6:	2200      	movs	r2, #0
 8007af8:	4604      	mov	r4, r0
 8007afa:	460d      	mov	r5, r1
 8007afc:	4630      	mov	r0, r6
 8007afe:	4639      	mov	r1, r7
 8007b00:	4b05      	ldr	r3, [pc, #20]	; (8007b18 <_dtoa_r+0x528>)
 8007b02:	f7f8 fd27 	bl	8000554 <__aeabi_dmul>
 8007b06:	4606      	mov	r6, r0
 8007b08:	460f      	mov	r7, r1
 8007b0a:	e7bf      	b.n	8007a8c <_dtoa_r+0x49c>
 8007b0c:	080095b8 	.word	0x080095b8
 8007b10:	08009680 	.word	0x08009680
 8007b14:	3ff00000 	.word	0x3ff00000
 8007b18:	40240000 	.word	0x40240000
 8007b1c:	401c0000 	.word	0x401c0000
 8007b20:	40140000 	.word	0x40140000
 8007b24:	3fe00000 	.word	0x3fe00000
 8007b28:	e9d3 0100 	ldrd	r0, r1, [r3]
 8007b2c:	4622      	mov	r2, r4
 8007b2e:	462b      	mov	r3, r5
 8007b30:	f7f8 fd10 	bl	8000554 <__aeabi_dmul>
 8007b34:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8007b38:	9b08      	ldr	r3, [sp, #32]
 8007b3a:	9c07      	ldr	r4, [sp, #28]
 8007b3c:	e9cd 0116 	strd	r0, r1, [sp, #88]	; 0x58
 8007b40:	e9dd 6702 	ldrd	r6, r7, [sp, #8]
 8007b44:	4498      	add	r8, r3
 8007b46:	4639      	mov	r1, r7
 8007b48:	4630      	mov	r0, r6
 8007b4a:	f7f8 ff15 	bl	8000978 <__aeabi_d2iz>
 8007b4e:	4605      	mov	r5, r0
 8007b50:	f7f8 fc9a 	bl	8000488 <__aeabi_i2d>
 8007b54:	3530      	adds	r5, #48	; 0x30
 8007b56:	4602      	mov	r2, r0
 8007b58:	460b      	mov	r3, r1
 8007b5a:	4630      	mov	r0, r6
 8007b5c:	4639      	mov	r1, r7
 8007b5e:	f7f8 fb45 	bl	80001ec <__aeabi_dsub>
 8007b62:	f804 5b01 	strb.w	r5, [r4], #1
 8007b66:	4544      	cmp	r4, r8
 8007b68:	4606      	mov	r6, r0
 8007b6a:	460f      	mov	r7, r1
 8007b6c:	d121      	bne.n	8007bb2 <_dtoa_r+0x5c2>
 8007b6e:	2200      	movs	r2, #0
 8007b70:	4b87      	ldr	r3, [pc, #540]	; (8007d90 <_dtoa_r+0x7a0>)
 8007b72:	e9dd 0116 	ldrd	r0, r1, [sp, #88]	; 0x58
 8007b76:	f7f8 fb3b 	bl	80001f0 <__adddf3>
 8007b7a:	4602      	mov	r2, r0
 8007b7c:	460b      	mov	r3, r1
 8007b7e:	4630      	mov	r0, r6
 8007b80:	4639      	mov	r1, r7
 8007b82:	f7f8 ff9f 	bl	8000ac4 <__aeabi_dcmpgt>
 8007b86:	2800      	cmp	r0, #0
 8007b88:	d17d      	bne.n	8007c86 <_dtoa_r+0x696>
 8007b8a:	e9dd 2316 	ldrd	r2, r3, [sp, #88]	; 0x58
 8007b8e:	2000      	movs	r0, #0
 8007b90:	497f      	ldr	r1, [pc, #508]	; (8007d90 <_dtoa_r+0x7a0>)
 8007b92:	f7f8 fb2b 	bl	80001ec <__aeabi_dsub>
 8007b96:	4602      	mov	r2, r0
 8007b98:	460b      	mov	r3, r1
 8007b9a:	4630      	mov	r0, r6
 8007b9c:	4639      	mov	r1, r7
 8007b9e:	f7f8 ff73 	bl	8000a88 <__aeabi_dcmplt>
 8007ba2:	b168      	cbz	r0, 8007bc0 <_dtoa_r+0x5d0>
 8007ba4:	46a0      	mov	r8, r4
 8007ba6:	3c01      	subs	r4, #1
 8007ba8:	f818 3c01 	ldrb.w	r3, [r8, #-1]
 8007bac:	2b30      	cmp	r3, #48	; 0x30
 8007bae:	d0f9      	beq.n	8007ba4 <_dtoa_r+0x5b4>
 8007bb0:	e2bb      	b.n	800812a <_dtoa_r+0xb3a>
 8007bb2:	2200      	movs	r2, #0
 8007bb4:	4b77      	ldr	r3, [pc, #476]	; (8007d94 <_dtoa_r+0x7a4>)
 8007bb6:	f7f8 fccd 	bl	8000554 <__aeabi_dmul>
 8007bba:	4606      	mov	r6, r0
 8007bbc:	460f      	mov	r7, r1
 8007bbe:	e7c2      	b.n	8007b46 <_dtoa_r+0x556>
 8007bc0:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8007bc4:	ed8d 7b02 	vstr	d7, [sp, #8]
 8007bc8:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8007bca:	2b00      	cmp	r3, #0
 8007bcc:	db7c      	blt.n	8007cc8 <_dtoa_r+0x6d8>
 8007bce:	f1b9 0f0e 	cmp.w	r9, #14
 8007bd2:	dc79      	bgt.n	8007cc8 <_dtoa_r+0x6d8>
 8007bd4:	4b70      	ldr	r3, [pc, #448]	; (8007d98 <_dtoa_r+0x7a8>)
 8007bd6:	9f0e      	ldr	r7, [sp, #56]	; 0x38
 8007bd8:	eb03 03c9 	add.w	r3, r3, r9, lsl #3
 8007bdc:	2f00      	cmp	r7, #0
 8007bde:	e9d3 4500 	ldrd	r4, r5, [r3]
 8007be2:	da14      	bge.n	8007c0e <_dtoa_r+0x61e>
 8007be4:	9f04      	ldr	r7, [sp, #16]
 8007be6:	2f00      	cmp	r7, #0
 8007be8:	dc11      	bgt.n	8007c0e <_dtoa_r+0x61e>
 8007bea:	f040 816f 	bne.w	8007ecc <_dtoa_r+0x8dc>
 8007bee:	4620      	mov	r0, r4
 8007bf0:	4629      	mov	r1, r5
 8007bf2:	2200      	movs	r2, #0
 8007bf4:	4b69      	ldr	r3, [pc, #420]	; (8007d9c <_dtoa_r+0x7ac>)
 8007bf6:	f7f8 fcad 	bl	8000554 <__aeabi_dmul>
 8007bfa:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8007bfe:	f7f8 ff57 	bl	8000ab0 <__aeabi_dcmpge>
 8007c02:	9d04      	ldr	r5, [sp, #16]
 8007c04:	462c      	mov	r4, r5
 8007c06:	2800      	cmp	r0, #0
 8007c08:	f040 8162 	bne.w	8007ed0 <_dtoa_r+0x8e0>
 8007c0c:	e16a      	b.n	8007ee4 <_dtoa_r+0x8f4>
 8007c0e:	e9dd 6702 	ldrd	r6, r7, [sp, #8]
 8007c12:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8007c16:	4622      	mov	r2, r4
 8007c18:	462b      	mov	r3, r5
 8007c1a:	4630      	mov	r0, r6
 8007c1c:	4639      	mov	r1, r7
 8007c1e:	f7f8 fdc3 	bl	80007a8 <__aeabi_ddiv>
 8007c22:	f7f8 fea9 	bl	8000978 <__aeabi_d2iz>
 8007c26:	9002      	str	r0, [sp, #8]
 8007c28:	f7f8 fc2e 	bl	8000488 <__aeabi_i2d>
 8007c2c:	4622      	mov	r2, r4
 8007c2e:	462b      	mov	r3, r5
 8007c30:	f7f8 fc90 	bl	8000554 <__aeabi_dmul>
 8007c34:	4602      	mov	r2, r0
 8007c36:	460b      	mov	r3, r1
 8007c38:	4630      	mov	r0, r6
 8007c3a:	4639      	mov	r1, r7
 8007c3c:	f7f8 fad6 	bl	80001ec <__aeabi_dsub>
 8007c40:	9f02      	ldr	r7, [sp, #8]
 8007c42:	f107 0630 	add.w	r6, r7, #48	; 0x30
 8007c46:	f808 6b01 	strb.w	r6, [r8], #1
 8007c4a:	9f07      	ldr	r7, [sp, #28]
 8007c4c:	ebc7 0608 	rsb	r6, r7, r8
 8007c50:	9f04      	ldr	r7, [sp, #16]
 8007c52:	42be      	cmp	r6, r7
 8007c54:	4602      	mov	r2, r0
 8007c56:	460b      	mov	r3, r1
 8007c58:	d129      	bne.n	8007cae <_dtoa_r+0x6be>
 8007c5a:	f7f8 fac9 	bl	80001f0 <__adddf3>
 8007c5e:	4622      	mov	r2, r4
 8007c60:	462b      	mov	r3, r5
 8007c62:	4606      	mov	r6, r0
 8007c64:	460f      	mov	r7, r1
 8007c66:	f7f8 ff2d 	bl	8000ac4 <__aeabi_dcmpgt>
 8007c6a:	b970      	cbnz	r0, 8007c8a <_dtoa_r+0x69a>
 8007c6c:	4630      	mov	r0, r6
 8007c6e:	4639      	mov	r1, r7
 8007c70:	4622      	mov	r2, r4
 8007c72:	462b      	mov	r3, r5
 8007c74:	f7f8 fefe 	bl	8000a74 <__aeabi_dcmpeq>
 8007c78:	2800      	cmp	r0, #0
 8007c7a:	f000 8258 	beq.w	800812e <_dtoa_r+0xb3e>
 8007c7e:	9f02      	ldr	r7, [sp, #8]
 8007c80:	07fb      	lsls	r3, r7, #31
 8007c82:	d402      	bmi.n	8007c8a <_dtoa_r+0x69a>
 8007c84:	e253      	b.n	800812e <_dtoa_r+0xb3e>
 8007c86:	f8dd 903c 	ldr.w	r9, [sp, #60]	; 0x3c
 8007c8a:	4643      	mov	r3, r8
 8007c8c:	4698      	mov	r8, r3
 8007c8e:	3b01      	subs	r3, #1
 8007c90:	f818 2c01 	ldrb.w	r2, [r8, #-1]
 8007c94:	2a39      	cmp	r2, #57	; 0x39
 8007c96:	d106      	bne.n	8007ca6 <_dtoa_r+0x6b6>
 8007c98:	9f07      	ldr	r7, [sp, #28]
 8007c9a:	429f      	cmp	r7, r3
 8007c9c:	d1f6      	bne.n	8007c8c <_dtoa_r+0x69c>
 8007c9e:	2230      	movs	r2, #48	; 0x30
 8007ca0:	f109 0901 	add.w	r9, r9, #1
 8007ca4:	703a      	strb	r2, [r7, #0]
 8007ca6:	781a      	ldrb	r2, [r3, #0]
 8007ca8:	3201      	adds	r2, #1
 8007caa:	701a      	strb	r2, [r3, #0]
 8007cac:	e23f      	b.n	800812e <_dtoa_r+0xb3e>
 8007cae:	2200      	movs	r2, #0
 8007cb0:	4b38      	ldr	r3, [pc, #224]	; (8007d94 <_dtoa_r+0x7a4>)
 8007cb2:	f7f8 fc4f 	bl	8000554 <__aeabi_dmul>
 8007cb6:	2200      	movs	r2, #0
 8007cb8:	2300      	movs	r3, #0
 8007cba:	4606      	mov	r6, r0
 8007cbc:	460f      	mov	r7, r1
 8007cbe:	f7f8 fed9 	bl	8000a74 <__aeabi_dcmpeq>
 8007cc2:	2800      	cmp	r0, #0
 8007cc4:	d0a7      	beq.n	8007c16 <_dtoa_r+0x626>
 8007cc6:	e232      	b.n	800812e <_dtoa_r+0xb3e>
 8007cc8:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8007cca:	2f00      	cmp	r7, #0
 8007ccc:	d030      	beq.n	8007d30 <_dtoa_r+0x740>
 8007cce:	9f0d      	ldr	r7, [sp, #52]	; 0x34
 8007cd0:	2f01      	cmp	r7, #1
 8007cd2:	dc0a      	bgt.n	8007cea <_dtoa_r+0x6fa>
 8007cd4:	9f15      	ldr	r7, [sp, #84]	; 0x54
 8007cd6:	b117      	cbz	r7, 8007cde <_dtoa_r+0x6ee>
 8007cd8:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8007cdc:	e002      	b.n	8007ce4 <_dtoa_r+0x6f4>
 8007cde:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8007ce0:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8007ce4:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
 8007ce6:	9e05      	ldr	r6, [sp, #20]
 8007ce8:	e016      	b.n	8007d18 <_dtoa_r+0x728>
 8007cea:	9f04      	ldr	r7, [sp, #16]
 8007cec:	1e7d      	subs	r5, r7, #1
 8007cee:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8007cf0:	42af      	cmp	r7, r5
 8007cf2:	db01      	blt.n	8007cf8 <_dtoa_r+0x708>
 8007cf4:	1b7d      	subs	r5, r7, r5
 8007cf6:	e006      	b.n	8007d06 <_dtoa_r+0x716>
 8007cf8:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8007cfa:	950b      	str	r5, [sp, #44]	; 0x2c
 8007cfc:	1beb      	subs	r3, r5, r7
 8007cfe:	9f10      	ldr	r7, [sp, #64]	; 0x40
 8007d00:	441f      	add	r7, r3
 8007d02:	9710      	str	r7, [sp, #64]	; 0x40
 8007d04:	2500      	movs	r5, #0
 8007d06:	9f04      	ldr	r7, [sp, #16]
 8007d08:	2f00      	cmp	r7, #0
 8007d0a:	da03      	bge.n	8007d14 <_dtoa_r+0x724>
 8007d0c:	9905      	ldr	r1, [sp, #20]
 8007d0e:	2300      	movs	r3, #0
 8007d10:	1bce      	subs	r6, r1, r7
 8007d12:	e001      	b.n	8007d18 <_dtoa_r+0x728>
 8007d14:	9e05      	ldr	r6, [sp, #20]
 8007d16:	9b04      	ldr	r3, [sp, #16]
 8007d18:	9f05      	ldr	r7, [sp, #20]
 8007d1a:	441f      	add	r7, r3
 8007d1c:	9705      	str	r7, [sp, #20]
 8007d1e:	9f06      	ldr	r7, [sp, #24]
 8007d20:	4650      	mov	r0, sl
 8007d22:	441f      	add	r7, r3
 8007d24:	2101      	movs	r1, #1
 8007d26:	9706      	str	r7, [sp, #24]
 8007d28:	f000 faf9 	bl	800831e <__i2b>
 8007d2c:	4604      	mov	r4, r0
 8007d2e:	e002      	b.n	8007d36 <_dtoa_r+0x746>
 8007d30:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
 8007d32:	9e05      	ldr	r6, [sp, #20]
 8007d34:	9c0c      	ldr	r4, [sp, #48]	; 0x30
 8007d36:	b16e      	cbz	r6, 8007d54 <_dtoa_r+0x764>
 8007d38:	9f06      	ldr	r7, [sp, #24]
 8007d3a:	2f00      	cmp	r7, #0
 8007d3c:	dd0a      	ble.n	8007d54 <_dtoa_r+0x764>
 8007d3e:	463b      	mov	r3, r7
 8007d40:	9f05      	ldr	r7, [sp, #20]
 8007d42:	42b3      	cmp	r3, r6
 8007d44:	bfa8      	it	ge
 8007d46:	4633      	movge	r3, r6
 8007d48:	1aff      	subs	r7, r7, r3
 8007d4a:	9705      	str	r7, [sp, #20]
 8007d4c:	9f06      	ldr	r7, [sp, #24]
 8007d4e:	1aff      	subs	r7, r7, r3
 8007d50:	1af6      	subs	r6, r6, r3
 8007d52:	9706      	str	r7, [sp, #24]
 8007d54:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8007d56:	2f00      	cmp	r7, #0
 8007d58:	dd28      	ble.n	8007dac <_dtoa_r+0x7bc>
 8007d5a:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8007d5c:	b307      	cbz	r7, 8007da0 <_dtoa_r+0x7b0>
 8007d5e:	2d00      	cmp	r5, #0
 8007d60:	dd10      	ble.n	8007d84 <_dtoa_r+0x794>
 8007d62:	4621      	mov	r1, r4
 8007d64:	462a      	mov	r2, r5
 8007d66:	4650      	mov	r0, sl
 8007d68:	f000 fb7a 	bl	8008460 <__pow5mult>
 8007d6c:	4604      	mov	r4, r0
 8007d6e:	465a      	mov	r2, fp
 8007d70:	4621      	mov	r1, r4
 8007d72:	4650      	mov	r0, sl
 8007d74:	f000 fadc 	bl	8008330 <__multiply>
 8007d78:	4659      	mov	r1, fp
 8007d7a:	4607      	mov	r7, r0
 8007d7c:	4650      	mov	r0, sl
 8007d7e:	f000 fa30 	bl	80081e2 <_Bfree>
 8007d82:	46bb      	mov	fp, r7
 8007d84:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8007d86:	1b7a      	subs	r2, r7, r5
 8007d88:	d010      	beq.n	8007dac <_dtoa_r+0x7bc>
 8007d8a:	4650      	mov	r0, sl
 8007d8c:	4659      	mov	r1, fp
 8007d8e:	e00a      	b.n	8007da6 <_dtoa_r+0x7b6>
 8007d90:	3fe00000 	.word	0x3fe00000
 8007d94:	40240000 	.word	0x40240000
 8007d98:	080095b8 	.word	0x080095b8
 8007d9c:	40140000 	.word	0x40140000
 8007da0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8007da2:	4650      	mov	r0, sl
 8007da4:	4659      	mov	r1, fp
 8007da6:	f000 fb5b 	bl	8008460 <__pow5mult>
 8007daa:	4683      	mov	fp, r0
 8007dac:	4650      	mov	r0, sl
 8007dae:	2101      	movs	r1, #1
 8007db0:	f000 fab5 	bl	800831e <__i2b>
 8007db4:	9f10      	ldr	r7, [sp, #64]	; 0x40
 8007db6:	2f00      	cmp	r7, #0
 8007db8:	4605      	mov	r5, r0
 8007dba:	dd05      	ble.n	8007dc8 <_dtoa_r+0x7d8>
 8007dbc:	4629      	mov	r1, r5
 8007dbe:	4650      	mov	r0, sl
 8007dc0:	463a      	mov	r2, r7
 8007dc2:	f000 fb4d 	bl	8008460 <__pow5mult>
 8007dc6:	4605      	mov	r5, r0
 8007dc8:	9f0d      	ldr	r7, [sp, #52]	; 0x34
 8007dca:	2f01      	cmp	r7, #1
 8007dcc:	dc12      	bgt.n	8007df4 <_dtoa_r+0x804>
 8007dce:	9902      	ldr	r1, [sp, #8]
 8007dd0:	b981      	cbnz	r1, 8007df4 <_dtoa_r+0x804>
 8007dd2:	9a03      	ldr	r2, [sp, #12]
 8007dd4:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8007dd8:	b973      	cbnz	r3, 8007df8 <_dtoa_r+0x808>
 8007dda:	f022 4700 	bic.w	r7, r2, #2147483648	; 0x80000000
 8007dde:	0d3f      	lsrs	r7, r7, #20
 8007de0:	053f      	lsls	r7, r7, #20
 8007de2:	b157      	cbz	r7, 8007dfa <_dtoa_r+0x80a>
 8007de4:	9f05      	ldr	r7, [sp, #20]
 8007de6:	3701      	adds	r7, #1
 8007de8:	9705      	str	r7, [sp, #20]
 8007dea:	9f06      	ldr	r7, [sp, #24]
 8007dec:	3701      	adds	r7, #1
 8007dee:	9706      	str	r7, [sp, #24]
 8007df0:	2701      	movs	r7, #1
 8007df2:	e002      	b.n	8007dfa <_dtoa_r+0x80a>
 8007df4:	2700      	movs	r7, #0
 8007df6:	e000      	b.n	8007dfa <_dtoa_r+0x80a>
 8007df8:	9f02      	ldr	r7, [sp, #8]
 8007dfa:	9910      	ldr	r1, [sp, #64]	; 0x40
 8007dfc:	b141      	cbz	r1, 8007e10 <_dtoa_r+0x820>
 8007dfe:	692b      	ldr	r3, [r5, #16]
 8007e00:	eb05 0383 	add.w	r3, r5, r3, lsl #2
 8007e04:	6918      	ldr	r0, [r3, #16]
 8007e06:	f000 fa3d 	bl	8008284 <__hi0bits>
 8007e0a:	f1c0 0020 	rsb	r0, r0, #32
 8007e0e:	e000      	b.n	8007e12 <_dtoa_r+0x822>
 8007e10:	2001      	movs	r0, #1
 8007e12:	9b06      	ldr	r3, [sp, #24]
 8007e14:	4403      	add	r3, r0
 8007e16:	f013 031f 	ands.w	r3, r3, #31
 8007e1a:	d008      	beq.n	8007e2e <_dtoa_r+0x83e>
 8007e1c:	f1c3 0220 	rsb	r2, r3, #32
 8007e20:	2a04      	cmp	r2, #4
 8007e22:	dd02      	ble.n	8007e2a <_dtoa_r+0x83a>
 8007e24:	f1c3 031c 	rsb	r3, r3, #28
 8007e28:	e002      	b.n	8007e30 <_dtoa_r+0x840>
 8007e2a:	d008      	beq.n	8007e3e <_dtoa_r+0x84e>
 8007e2c:	4613      	mov	r3, r2
 8007e2e:	331c      	adds	r3, #28
 8007e30:	9a05      	ldr	r2, [sp, #20]
 8007e32:	9906      	ldr	r1, [sp, #24]
 8007e34:	441a      	add	r2, r3
 8007e36:	4419      	add	r1, r3
 8007e38:	9205      	str	r2, [sp, #20]
 8007e3a:	441e      	add	r6, r3
 8007e3c:	9106      	str	r1, [sp, #24]
 8007e3e:	9a05      	ldr	r2, [sp, #20]
 8007e40:	2a00      	cmp	r2, #0
 8007e42:	dd04      	ble.n	8007e4e <_dtoa_r+0x85e>
 8007e44:	4659      	mov	r1, fp
 8007e46:	4650      	mov	r0, sl
 8007e48:	f000 fb58 	bl	80084fc <__lshift>
 8007e4c:	4683      	mov	fp, r0
 8007e4e:	9b06      	ldr	r3, [sp, #24]
 8007e50:	2b00      	cmp	r3, #0
 8007e52:	dd05      	ble.n	8007e60 <_dtoa_r+0x870>
 8007e54:	4629      	mov	r1, r5
 8007e56:	4650      	mov	r0, sl
 8007e58:	461a      	mov	r2, r3
 8007e5a:	f000 fb4f 	bl	80084fc <__lshift>
 8007e5e:	4605      	mov	r5, r0
 8007e60:	9911      	ldr	r1, [sp, #68]	; 0x44
 8007e62:	b1e1      	cbz	r1, 8007e9e <_dtoa_r+0x8ae>
 8007e64:	4658      	mov	r0, fp
 8007e66:	4629      	mov	r1, r5
 8007e68:	f000 fb9b 	bl	80085a2 <__mcmp>
 8007e6c:	2800      	cmp	r0, #0
 8007e6e:	da16      	bge.n	8007e9e <_dtoa_r+0x8ae>
 8007e70:	4659      	mov	r1, fp
 8007e72:	220a      	movs	r2, #10
 8007e74:	4650      	mov	r0, sl
 8007e76:	2300      	movs	r3, #0
 8007e78:	f000 f9ca 	bl	8008210 <__multadd>
 8007e7c:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8007e7e:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
 8007e82:	4683      	mov	fp, r0
 8007e84:	b14a      	cbz	r2, 8007e9a <_dtoa_r+0x8aa>
 8007e86:	4621      	mov	r1, r4
 8007e88:	2300      	movs	r3, #0
 8007e8a:	4650      	mov	r0, sl
 8007e8c:	220a      	movs	r2, #10
 8007e8e:	f000 f9bf 	bl	8008210 <__multadd>
 8007e92:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8007e94:	9304      	str	r3, [sp, #16]
 8007e96:	4604      	mov	r4, r0
 8007e98:	e001      	b.n	8007e9e <_dtoa_r+0x8ae>
 8007e9a:	990a      	ldr	r1, [sp, #40]	; 0x28
 8007e9c:	9104      	str	r1, [sp, #16]
 8007e9e:	9a04      	ldr	r2, [sp, #16]
 8007ea0:	2a00      	cmp	r2, #0
 8007ea2:	dc29      	bgt.n	8007ef8 <_dtoa_r+0x908>
 8007ea4:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8007ea6:	2b02      	cmp	r3, #2
 8007ea8:	dd26      	ble.n	8007ef8 <_dtoa_r+0x908>
 8007eaa:	b98a      	cbnz	r2, 8007ed0 <_dtoa_r+0x8e0>
 8007eac:	4629      	mov	r1, r5
 8007eae:	2205      	movs	r2, #5
 8007eb0:	9b04      	ldr	r3, [sp, #16]
 8007eb2:	4650      	mov	r0, sl
 8007eb4:	f000 f9ac 	bl	8008210 <__multadd>
 8007eb8:	4605      	mov	r5, r0
 8007eba:	4629      	mov	r1, r5
 8007ebc:	4658      	mov	r0, fp
 8007ebe:	f000 fb70 	bl	80085a2 <__mcmp>
 8007ec2:	2800      	cmp	r0, #0
 8007ec4:	dc0e      	bgt.n	8007ee4 <_dtoa_r+0x8f4>
 8007ec6:	e003      	b.n	8007ed0 <_dtoa_r+0x8e0>
 8007ec8:	9d08      	ldr	r5, [sp, #32]
 8007eca:	e000      	b.n	8007ece <_dtoa_r+0x8de>
 8007ecc:	2500      	movs	r5, #0
 8007ece:	462c      	mov	r4, r5
 8007ed0:	9f0e      	ldr	r7, [sp, #56]	; 0x38
 8007ed2:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8007ed6:	ea6f 0907 	mvn.w	r9, r7
 8007eda:	e00a      	b.n	8007ef2 <_dtoa_r+0x902>
 8007edc:	9d08      	ldr	r5, [sp, #32]
 8007ede:	f8dd 903c 	ldr.w	r9, [sp, #60]	; 0x3c
 8007ee2:	462c      	mov	r4, r5
 8007ee4:	9f07      	ldr	r7, [sp, #28]
 8007ee6:	2331      	movs	r3, #49	; 0x31
 8007ee8:	f107 0801 	add.w	r8, r7, #1
 8007eec:	703b      	strb	r3, [r7, #0]
 8007eee:	f109 0901 	add.w	r9, r9, #1
 8007ef2:	4627      	mov	r7, r4
 8007ef4:	2400      	movs	r4, #0
 8007ef6:	e107      	b.n	8008108 <_dtoa_r+0xb18>
 8007ef8:	990c      	ldr	r1, [sp, #48]	; 0x30
 8007efa:	2900      	cmp	r1, #0
 8007efc:	f000 80bb 	beq.w	8008076 <_dtoa_r+0xa86>
 8007f00:	2e00      	cmp	r6, #0
 8007f02:	dd05      	ble.n	8007f10 <_dtoa_r+0x920>
 8007f04:	4621      	mov	r1, r4
 8007f06:	4650      	mov	r0, sl
 8007f08:	4632      	mov	r2, r6
 8007f0a:	f000 faf7 	bl	80084fc <__lshift>
 8007f0e:	4604      	mov	r4, r0
 8007f10:	b19f      	cbz	r7, 8007f3a <_dtoa_r+0x94a>
 8007f12:	6861      	ldr	r1, [r4, #4]
 8007f14:	4650      	mov	r0, sl
 8007f16:	f000 f92f 	bl	8008178 <_Balloc>
 8007f1a:	6922      	ldr	r2, [r4, #16]
 8007f1c:	3202      	adds	r2, #2
 8007f1e:	4606      	mov	r6, r0
 8007f20:	f104 010c 	add.w	r1, r4, #12
 8007f24:	0092      	lsls	r2, r2, #2
 8007f26:	300c      	adds	r0, #12
 8007f28:	f7fe ff40 	bl	8006dac <memcpy>
 8007f2c:	4650      	mov	r0, sl
 8007f2e:	4631      	mov	r1, r6
 8007f30:	2201      	movs	r2, #1
 8007f32:	f000 fae3 	bl	80084fc <__lshift>
 8007f36:	4607      	mov	r7, r0
 8007f38:	e000      	b.n	8007f3c <_dtoa_r+0x94c>
 8007f3a:	4627      	mov	r7, r4
 8007f3c:	9e07      	ldr	r6, [sp, #28]
 8007f3e:	4629      	mov	r1, r5
 8007f40:	4658      	mov	r0, fp
 8007f42:	f7ff fac5 	bl	80074d0 <quorem>
 8007f46:	4621      	mov	r1, r4
 8007f48:	f100 0c30 	add.w	ip, r0, #48	; 0x30
 8007f4c:	4680      	mov	r8, r0
 8007f4e:	4658      	mov	r0, fp
 8007f50:	f8cd c000 	str.w	ip, [sp]
 8007f54:	f000 fb25 	bl	80085a2 <__mcmp>
 8007f58:	463a      	mov	r2, r7
 8007f5a:	9005      	str	r0, [sp, #20]
 8007f5c:	4629      	mov	r1, r5
 8007f5e:	4650      	mov	r0, sl
 8007f60:	f000 fb3c 	bl	80085dc <__mdiff>
 8007f64:	68c3      	ldr	r3, [r0, #12]
 8007f66:	f8dd c000 	ldr.w	ip, [sp]
 8007f6a:	4602      	mov	r2, r0
 8007f6c:	b94b      	cbnz	r3, 8007f82 <_dtoa_r+0x992>
 8007f6e:	4611      	mov	r1, r2
 8007f70:	4658      	mov	r0, fp
 8007f72:	9201      	str	r2, [sp, #4]
 8007f74:	f000 fb15 	bl	80085a2 <__mcmp>
 8007f78:	9a01      	ldr	r2, [sp, #4]
 8007f7a:	f8dd c000 	ldr.w	ip, [sp]
 8007f7e:	4603      	mov	r3, r0
 8007f80:	e000      	b.n	8007f84 <_dtoa_r+0x994>
 8007f82:	2301      	movs	r3, #1
 8007f84:	4650      	mov	r0, sl
 8007f86:	4611      	mov	r1, r2
 8007f88:	9301      	str	r3, [sp, #4]
 8007f8a:	f8cd c000 	str.w	ip, [sp]
 8007f8e:	f000 f928 	bl	80081e2 <_Bfree>
 8007f92:	9b01      	ldr	r3, [sp, #4]
 8007f94:	f8dd c000 	ldr.w	ip, [sp]
 8007f98:	b963      	cbnz	r3, 8007fb4 <_dtoa_r+0x9c4>
 8007f9a:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 8007f9c:	b952      	cbnz	r2, 8007fb4 <_dtoa_r+0x9c4>
 8007f9e:	9902      	ldr	r1, [sp, #8]
 8007fa0:	f001 0201 	and.w	r2, r1, #1
 8007fa4:	b932      	cbnz	r2, 8007fb4 <_dtoa_r+0x9c4>
 8007fa6:	f1bc 0f39 	cmp.w	ip, #57	; 0x39
 8007faa:	d035      	beq.n	8008018 <_dtoa_r+0xa28>
 8007fac:	9b05      	ldr	r3, [sp, #20]
 8007fae:	2b00      	cmp	r3, #0
 8007fb0:	dc24      	bgt.n	8007ffc <_dtoa_r+0xa0c>
 8007fb2:	e025      	b.n	8008000 <_dtoa_r+0xa10>
 8007fb4:	9905      	ldr	r1, [sp, #20]
 8007fb6:	2900      	cmp	r1, #0
 8007fb8:	da02      	bge.n	8007fc0 <_dtoa_r+0x9d0>
 8007fba:	2b00      	cmp	r3, #0
 8007fbc:	dc08      	bgt.n	8007fd0 <_dtoa_r+0x9e0>
 8007fbe:	e01f      	b.n	8008000 <_dtoa_r+0xa10>
 8007fc0:	d123      	bne.n	800800a <_dtoa_r+0xa1a>
 8007fc2:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 8007fc4:	bb0a      	cbnz	r2, 800800a <_dtoa_r+0xa1a>
 8007fc6:	9902      	ldr	r1, [sp, #8]
 8007fc8:	f001 0201 	and.w	r2, r1, #1
 8007fcc:	b9ea      	cbnz	r2, 800800a <_dtoa_r+0xa1a>
 8007fce:	e7f4      	b.n	8007fba <_dtoa_r+0x9ca>
 8007fd0:	4659      	mov	r1, fp
 8007fd2:	2201      	movs	r2, #1
 8007fd4:	4650      	mov	r0, sl
 8007fd6:	f8cd c000 	str.w	ip, [sp]
 8007fda:	f000 fa8f 	bl	80084fc <__lshift>
 8007fde:	4629      	mov	r1, r5
 8007fe0:	4683      	mov	fp, r0
 8007fe2:	f000 fade 	bl	80085a2 <__mcmp>
 8007fe6:	2800      	cmp	r0, #0
 8007fe8:	f8dd c000 	ldr.w	ip, [sp]
 8007fec:	dc03      	bgt.n	8007ff6 <_dtoa_r+0xa06>
 8007fee:	d107      	bne.n	8008000 <_dtoa_r+0xa10>
 8007ff0:	f01c 0f01 	tst.w	ip, #1
 8007ff4:	d004      	beq.n	8008000 <_dtoa_r+0xa10>
 8007ff6:	f1bc 0f39 	cmp.w	ip, #57	; 0x39
 8007ffa:	d00d      	beq.n	8008018 <_dtoa_r+0xa28>
 8007ffc:	f108 0c31 	add.w	ip, r8, #49	; 0x31
 8008000:	f106 0801 	add.w	r8, r6, #1
 8008004:	f886 c000 	strb.w	ip, [r6]
 8008008:	e07e      	b.n	8008108 <_dtoa_r+0xb18>
 800800a:	2b00      	cmp	r3, #0
 800800c:	f106 0801 	add.w	r8, r6, #1
 8008010:	dd09      	ble.n	8008026 <_dtoa_r+0xa36>
 8008012:	f1bc 0f39 	cmp.w	ip, #57	; 0x39
 8008016:	d103      	bne.n	8008020 <_dtoa_r+0xa30>
 8008018:	2339      	movs	r3, #57	; 0x39
 800801a:	7033      	strb	r3, [r6, #0]
 800801c:	3601      	adds	r6, #1
 800801e:	e05b      	b.n	80080d8 <_dtoa_r+0xae8>
 8008020:	f10c 0301 	add.w	r3, ip, #1
 8008024:	e068      	b.n	80080f8 <_dtoa_r+0xb08>
 8008026:	9a07      	ldr	r2, [sp, #28]
 8008028:	9904      	ldr	r1, [sp, #16]
 800802a:	4646      	mov	r6, r8
 800802c:	ebc2 0308 	rsb	r3, r2, r8
 8008030:	428b      	cmp	r3, r1
 8008032:	f806 cc01 	strb.w	ip, [r6, #-1]
 8008036:	d03c      	beq.n	80080b2 <_dtoa_r+0xac2>
 8008038:	4659      	mov	r1, fp
 800803a:	220a      	movs	r2, #10
 800803c:	2300      	movs	r3, #0
 800803e:	4650      	mov	r0, sl
 8008040:	f000 f8e6 	bl	8008210 <__multadd>
 8008044:	42bc      	cmp	r4, r7
 8008046:	4683      	mov	fp, r0
 8008048:	4621      	mov	r1, r4
 800804a:	4650      	mov	r0, sl
 800804c:	f04f 020a 	mov.w	r2, #10
 8008050:	f04f 0300 	mov.w	r3, #0
 8008054:	d104      	bne.n	8008060 <_dtoa_r+0xa70>
 8008056:	f000 f8db 	bl	8008210 <__multadd>
 800805a:	4604      	mov	r4, r0
 800805c:	4607      	mov	r7, r0
 800805e:	e76e      	b.n	8007f3e <_dtoa_r+0x94e>
 8008060:	f000 f8d6 	bl	8008210 <__multadd>
 8008064:	4639      	mov	r1, r7
 8008066:	4604      	mov	r4, r0
 8008068:	220a      	movs	r2, #10
 800806a:	4650      	mov	r0, sl
 800806c:	2300      	movs	r3, #0
 800806e:	f000 f8cf 	bl	8008210 <__multadd>
 8008072:	4607      	mov	r7, r0
 8008074:	e763      	b.n	8007f3e <_dtoa_r+0x94e>
 8008076:	9e0c      	ldr	r6, [sp, #48]	; 0x30
 8008078:	4658      	mov	r0, fp
 800807a:	4629      	mov	r1, r5
 800807c:	f7ff fa28 	bl	80074d0 <quorem>
 8008080:	9f07      	ldr	r7, [sp, #28]
 8008082:	f100 0c30 	add.w	ip, r0, #48	; 0x30
 8008086:	f807 c006 	strb.w	ip, [r7, r6]
 800808a:	9f04      	ldr	r7, [sp, #16]
 800808c:	3601      	adds	r6, #1
 800808e:	42be      	cmp	r6, r7
 8008090:	db07      	blt.n	80080a2 <_dtoa_r+0xab2>
 8008092:	9e07      	ldr	r6, [sp, #28]
 8008094:	2f01      	cmp	r7, #1
 8008096:	bfac      	ite	ge
 8008098:	19f6      	addge	r6, r6, r7
 800809a:	3601      	addlt	r6, #1
 800809c:	4627      	mov	r7, r4
 800809e:	2400      	movs	r4, #0
 80080a0:	e007      	b.n	80080b2 <_dtoa_r+0xac2>
 80080a2:	4659      	mov	r1, fp
 80080a4:	4650      	mov	r0, sl
 80080a6:	220a      	movs	r2, #10
 80080a8:	2300      	movs	r3, #0
 80080aa:	f000 f8b1 	bl	8008210 <__multadd>
 80080ae:	4683      	mov	fp, r0
 80080b0:	e7e2      	b.n	8008078 <_dtoa_r+0xa88>
 80080b2:	4659      	mov	r1, fp
 80080b4:	2201      	movs	r2, #1
 80080b6:	4650      	mov	r0, sl
 80080b8:	f8cd c000 	str.w	ip, [sp]
 80080bc:	f000 fa1e 	bl	80084fc <__lshift>
 80080c0:	4629      	mov	r1, r5
 80080c2:	4683      	mov	fp, r0
 80080c4:	f000 fa6d 	bl	80085a2 <__mcmp>
 80080c8:	2800      	cmp	r0, #0
 80080ca:	f8dd c000 	ldr.w	ip, [sp]
 80080ce:	dc03      	bgt.n	80080d8 <_dtoa_r+0xae8>
 80080d0:	d114      	bne.n	80080fc <_dtoa_r+0xb0c>
 80080d2:	f01c 0f01 	tst.w	ip, #1
 80080d6:	d011      	beq.n	80080fc <_dtoa_r+0xb0c>
 80080d8:	f816 3c01 	ldrb.w	r3, [r6, #-1]
 80080dc:	2b39      	cmp	r3, #57	; 0x39
 80080de:	46b0      	mov	r8, r6
 80080e0:	f106 36ff 	add.w	r6, r6, #4294967295	; 0xffffffff
 80080e4:	d107      	bne.n	80080f6 <_dtoa_r+0xb06>
 80080e6:	9907      	ldr	r1, [sp, #28]
 80080e8:	42b1      	cmp	r1, r6
 80080ea:	d1f5      	bne.n	80080d8 <_dtoa_r+0xae8>
 80080ec:	2331      	movs	r3, #49	; 0x31
 80080ee:	f109 0901 	add.w	r9, r9, #1
 80080f2:	700b      	strb	r3, [r1, #0]
 80080f4:	e008      	b.n	8008108 <_dtoa_r+0xb18>
 80080f6:	3301      	adds	r3, #1
 80080f8:	7033      	strb	r3, [r6, #0]
 80080fa:	e005      	b.n	8008108 <_dtoa_r+0xb18>
 80080fc:	46b0      	mov	r8, r6
 80080fe:	3e01      	subs	r6, #1
 8008100:	f818 3c01 	ldrb.w	r3, [r8, #-1]
 8008104:	2b30      	cmp	r3, #48	; 0x30
 8008106:	d0f9      	beq.n	80080fc <_dtoa_r+0xb0c>
 8008108:	4650      	mov	r0, sl
 800810a:	4629      	mov	r1, r5
 800810c:	f000 f869 	bl	80081e2 <_Bfree>
 8008110:	b16f      	cbz	r7, 800812e <_dtoa_r+0xb3e>
 8008112:	b12c      	cbz	r4, 8008120 <_dtoa_r+0xb30>
 8008114:	42bc      	cmp	r4, r7
 8008116:	d003      	beq.n	8008120 <_dtoa_r+0xb30>
 8008118:	4650      	mov	r0, sl
 800811a:	4621      	mov	r1, r4
 800811c:	f000 f861 	bl	80081e2 <_Bfree>
 8008120:	4650      	mov	r0, sl
 8008122:	4639      	mov	r1, r7
 8008124:	f000 f85d 	bl	80081e2 <_Bfree>
 8008128:	e001      	b.n	800812e <_dtoa_r+0xb3e>
 800812a:	f8dd 903c 	ldr.w	r9, [sp, #60]	; 0x3c
 800812e:	4650      	mov	r0, sl
 8008130:	4659      	mov	r1, fp
 8008132:	f000 f856 	bl	80081e2 <_Bfree>
 8008136:	2300      	movs	r3, #0
 8008138:	9f14      	ldr	r7, [sp, #80]	; 0x50
 800813a:	f888 3000 	strb.w	r3, [r8]
 800813e:	f109 0301 	add.w	r3, r9, #1
 8008142:	603b      	str	r3, [r7, #0]
 8008144:	9f25      	ldr	r7, [sp, #148]	; 0x94
 8008146:	b127      	cbz	r7, 8008152 <_dtoa_r+0xb62>
 8008148:	f8c7 8000 	str.w	r8, [r7]
 800814c:	e001      	b.n	8008152 <_dtoa_r+0xb62>
 800814e:	4803      	ldr	r0, [pc, #12]	; (800815c <_dtoa_r+0xb6c>)
 8008150:	e000      	b.n	8008154 <_dtoa_r+0xb64>
 8008152:	9807      	ldr	r0, [sp, #28]
 8008154:	b01b      	add	sp, #108	; 0x6c
 8008156:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800815a:	bf00      	nop
 800815c:	0800953a 	.word	0x0800953a

08008160 <_localeconv_r>:
 8008160:	4800      	ldr	r0, [pc, #0]	; (8008164 <_localeconv_r+0x4>)
 8008162:	4770      	bx	lr
 8008164:	200001e4 	.word	0x200001e4

08008168 <malloc>:
 8008168:	4b02      	ldr	r3, [pc, #8]	; (8008174 <malloc+0xc>)
 800816a:	4601      	mov	r1, r0
 800816c:	6818      	ldr	r0, [r3, #0]
 800816e:	f7fc b86f 	b.w	8004250 <_malloc_r>
 8008172:	bf00      	nop
 8008174:	200001e0 	.word	0x200001e0

08008178 <_Balloc>:
 8008178:	b570      	push	{r4, r5, r6, lr}
 800817a:	6a45      	ldr	r5, [r0, #36]	; 0x24
 800817c:	4604      	mov	r4, r0
 800817e:	460e      	mov	r6, r1
 8008180:	b93d      	cbnz	r5, 8008192 <_Balloc+0x1a>
 8008182:	2010      	movs	r0, #16
 8008184:	f7ff fff0 	bl	8008168 <malloc>
 8008188:	6260      	str	r0, [r4, #36]	; 0x24
 800818a:	6045      	str	r5, [r0, #4]
 800818c:	6085      	str	r5, [r0, #8]
 800818e:	6005      	str	r5, [r0, #0]
 8008190:	60c5      	str	r5, [r0, #12]
 8008192:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8008194:	68eb      	ldr	r3, [r5, #12]
 8008196:	b143      	cbz	r3, 80081aa <_Balloc+0x32>
 8008198:	6a63      	ldr	r3, [r4, #36]	; 0x24
 800819a:	68da      	ldr	r2, [r3, #12]
 800819c:	f852 0026 	ldr.w	r0, [r2, r6, lsl #2]
 80081a0:	b178      	cbz	r0, 80081c2 <_Balloc+0x4a>
 80081a2:	6801      	ldr	r1, [r0, #0]
 80081a4:	f842 1026 	str.w	r1, [r2, r6, lsl #2]
 80081a8:	e017      	b.n	80081da <_Balloc+0x62>
 80081aa:	4620      	mov	r0, r4
 80081ac:	2104      	movs	r1, #4
 80081ae:	2221      	movs	r2, #33	; 0x21
 80081b0:	f000 fac2 	bl	8008738 <_calloc_r>
 80081b4:	6a63      	ldr	r3, [r4, #36]	; 0x24
 80081b6:	60e8      	str	r0, [r5, #12]
 80081b8:	68db      	ldr	r3, [r3, #12]
 80081ba:	2b00      	cmp	r3, #0
 80081bc:	d1ec      	bne.n	8008198 <_Balloc+0x20>
 80081be:	2000      	movs	r0, #0
 80081c0:	bd70      	pop	{r4, r5, r6, pc}
 80081c2:	2101      	movs	r1, #1
 80081c4:	fa01 f506 	lsl.w	r5, r1, r6
 80081c8:	1d6a      	adds	r2, r5, #5
 80081ca:	4620      	mov	r0, r4
 80081cc:	0092      	lsls	r2, r2, #2
 80081ce:	f000 fab3 	bl	8008738 <_calloc_r>
 80081d2:	2800      	cmp	r0, #0
 80081d4:	d0f3      	beq.n	80081be <_Balloc+0x46>
 80081d6:	6046      	str	r6, [r0, #4]
 80081d8:	6085      	str	r5, [r0, #8]
 80081da:	2200      	movs	r2, #0
 80081dc:	6102      	str	r2, [r0, #16]
 80081de:	60c2      	str	r2, [r0, #12]
 80081e0:	bd70      	pop	{r4, r5, r6, pc}

080081e2 <_Bfree>:
 80081e2:	b570      	push	{r4, r5, r6, lr}
 80081e4:	6a44      	ldr	r4, [r0, #36]	; 0x24
 80081e6:	4606      	mov	r6, r0
 80081e8:	460d      	mov	r5, r1
 80081ea:	b93c      	cbnz	r4, 80081fc <_Bfree+0x1a>
 80081ec:	2010      	movs	r0, #16
 80081ee:	f7ff ffbb 	bl	8008168 <malloc>
 80081f2:	6270      	str	r0, [r6, #36]	; 0x24
 80081f4:	6044      	str	r4, [r0, #4]
 80081f6:	6084      	str	r4, [r0, #8]
 80081f8:	6004      	str	r4, [r0, #0]
 80081fa:	60c4      	str	r4, [r0, #12]
 80081fc:	b13d      	cbz	r5, 800820e <_Bfree+0x2c>
 80081fe:	6a73      	ldr	r3, [r6, #36]	; 0x24
 8008200:	686a      	ldr	r2, [r5, #4]
 8008202:	68db      	ldr	r3, [r3, #12]
 8008204:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8008208:	6029      	str	r1, [r5, #0]
 800820a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800820e:	bd70      	pop	{r4, r5, r6, pc}

08008210 <__multadd>:
 8008210:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8008214:	460c      	mov	r4, r1
 8008216:	461e      	mov	r6, r3
 8008218:	690d      	ldr	r5, [r1, #16]
 800821a:	4607      	mov	r7, r0
 800821c:	3114      	adds	r1, #20
 800821e:	2300      	movs	r3, #0
 8008220:	6808      	ldr	r0, [r1, #0]
 8008222:	fa1f fc80 	uxth.w	ip, r0
 8008226:	0c00      	lsrs	r0, r0, #16
 8008228:	fb02 6c0c 	mla	ip, r2, ip, r6
 800822c:	4350      	muls	r0, r2
 800822e:	eb00 401c 	add.w	r0, r0, ip, lsr #16
 8008232:	3301      	adds	r3, #1
 8008234:	fa1f fc8c 	uxth.w	ip, ip
 8008238:	0c06      	lsrs	r6, r0, #16
 800823a:	42ab      	cmp	r3, r5
 800823c:	eb0c 4000 	add.w	r0, ip, r0, lsl #16
 8008240:	f841 0b04 	str.w	r0, [r1], #4
 8008244:	dbec      	blt.n	8008220 <__multadd+0x10>
 8008246:	b1d6      	cbz	r6, 800827e <__multadd+0x6e>
 8008248:	68a3      	ldr	r3, [r4, #8]
 800824a:	429d      	cmp	r5, r3
 800824c:	db12      	blt.n	8008274 <__multadd+0x64>
 800824e:	6861      	ldr	r1, [r4, #4]
 8008250:	4638      	mov	r0, r7
 8008252:	3101      	adds	r1, #1
 8008254:	f7ff ff90 	bl	8008178 <_Balloc>
 8008258:	6922      	ldr	r2, [r4, #16]
 800825a:	3202      	adds	r2, #2
 800825c:	f104 010c 	add.w	r1, r4, #12
 8008260:	4680      	mov	r8, r0
 8008262:	0092      	lsls	r2, r2, #2
 8008264:	300c      	adds	r0, #12
 8008266:	f7fe fda1 	bl	8006dac <memcpy>
 800826a:	4621      	mov	r1, r4
 800826c:	4638      	mov	r0, r7
 800826e:	f7ff ffb8 	bl	80081e2 <_Bfree>
 8008272:	4644      	mov	r4, r8
 8008274:	eb04 0385 	add.w	r3, r4, r5, lsl #2
 8008278:	3501      	adds	r5, #1
 800827a:	615e      	str	r6, [r3, #20]
 800827c:	6125      	str	r5, [r4, #16]
 800827e:	4620      	mov	r0, r4
 8008280:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08008284 <__hi0bits>:
 8008284:	0c03      	lsrs	r3, r0, #16
 8008286:	041b      	lsls	r3, r3, #16
 8008288:	b913      	cbnz	r3, 8008290 <__hi0bits+0xc>
 800828a:	0400      	lsls	r0, r0, #16
 800828c:	2310      	movs	r3, #16
 800828e:	e000      	b.n	8008292 <__hi0bits+0xe>
 8008290:	2300      	movs	r3, #0
 8008292:	f010 4f7f 	tst.w	r0, #4278190080	; 0xff000000
 8008296:	bf04      	itt	eq
 8008298:	0200      	lsleq	r0, r0, #8
 800829a:	3308      	addeq	r3, #8
 800829c:	f010 4f70 	tst.w	r0, #4026531840	; 0xf0000000
 80082a0:	bf04      	itt	eq
 80082a2:	0100      	lsleq	r0, r0, #4
 80082a4:	3304      	addeq	r3, #4
 80082a6:	f010 4f40 	tst.w	r0, #3221225472	; 0xc0000000
 80082aa:	bf04      	itt	eq
 80082ac:	0080      	lsleq	r0, r0, #2
 80082ae:	3302      	addeq	r3, #2
 80082b0:	2800      	cmp	r0, #0
 80082b2:	db03      	blt.n	80082bc <__hi0bits+0x38>
 80082b4:	0042      	lsls	r2, r0, #1
 80082b6:	d503      	bpl.n	80082c0 <__hi0bits+0x3c>
 80082b8:	1c58      	adds	r0, r3, #1
 80082ba:	4770      	bx	lr
 80082bc:	4618      	mov	r0, r3
 80082be:	4770      	bx	lr
 80082c0:	2020      	movs	r0, #32
 80082c2:	4770      	bx	lr

080082c4 <__lo0bits>:
 80082c4:	6803      	ldr	r3, [r0, #0]
 80082c6:	f013 0207 	ands.w	r2, r3, #7
 80082ca:	d00b      	beq.n	80082e4 <__lo0bits+0x20>
 80082cc:	07d9      	lsls	r1, r3, #31
 80082ce:	d422      	bmi.n	8008316 <__lo0bits+0x52>
 80082d0:	079a      	lsls	r2, r3, #30
 80082d2:	d503      	bpl.n	80082dc <__lo0bits+0x18>
 80082d4:	085b      	lsrs	r3, r3, #1
 80082d6:	6003      	str	r3, [r0, #0]
 80082d8:	2001      	movs	r0, #1
 80082da:	4770      	bx	lr
 80082dc:	089b      	lsrs	r3, r3, #2
 80082de:	6003      	str	r3, [r0, #0]
 80082e0:	2002      	movs	r0, #2
 80082e2:	4770      	bx	lr
 80082e4:	b299      	uxth	r1, r3
 80082e6:	b909      	cbnz	r1, 80082ec <__lo0bits+0x28>
 80082e8:	0c1b      	lsrs	r3, r3, #16
 80082ea:	2210      	movs	r2, #16
 80082ec:	f013 0fff 	tst.w	r3, #255	; 0xff
 80082f0:	bf04      	itt	eq
 80082f2:	0a1b      	lsreq	r3, r3, #8
 80082f4:	3208      	addeq	r2, #8
 80082f6:	0719      	lsls	r1, r3, #28
 80082f8:	bf04      	itt	eq
 80082fa:	091b      	lsreq	r3, r3, #4
 80082fc:	3204      	addeq	r2, #4
 80082fe:	0799      	lsls	r1, r3, #30
 8008300:	bf04      	itt	eq
 8008302:	089b      	lsreq	r3, r3, #2
 8008304:	3202      	addeq	r2, #2
 8008306:	07d9      	lsls	r1, r3, #31
 8008308:	d402      	bmi.n	8008310 <__lo0bits+0x4c>
 800830a:	085b      	lsrs	r3, r3, #1
 800830c:	d005      	beq.n	800831a <__lo0bits+0x56>
 800830e:	3201      	adds	r2, #1
 8008310:	6003      	str	r3, [r0, #0]
 8008312:	4610      	mov	r0, r2
 8008314:	4770      	bx	lr
 8008316:	2000      	movs	r0, #0
 8008318:	4770      	bx	lr
 800831a:	2020      	movs	r0, #32
 800831c:	4770      	bx	lr

0800831e <__i2b>:
 800831e:	b510      	push	{r4, lr}
 8008320:	460c      	mov	r4, r1
 8008322:	2101      	movs	r1, #1
 8008324:	f7ff ff28 	bl	8008178 <_Balloc>
 8008328:	2201      	movs	r2, #1
 800832a:	6144      	str	r4, [r0, #20]
 800832c:	6102      	str	r2, [r0, #16]
 800832e:	bd10      	pop	{r4, pc}

08008330 <__multiply>:
 8008330:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008334:	4616      	mov	r6, r2
 8008336:	690a      	ldr	r2, [r1, #16]
 8008338:	6933      	ldr	r3, [r6, #16]
 800833a:	429a      	cmp	r2, r3
 800833c:	b085      	sub	sp, #20
 800833e:	460d      	mov	r5, r1
 8008340:	da01      	bge.n	8008346 <__multiply+0x16>
 8008342:	4635      	mov	r5, r6
 8008344:	460e      	mov	r6, r1
 8008346:	f8d5 8010 	ldr.w	r8, [r5, #16]
 800834a:	6937      	ldr	r7, [r6, #16]
 800834c:	68ab      	ldr	r3, [r5, #8]
 800834e:	6869      	ldr	r1, [r5, #4]
 8008350:	eb08 0407 	add.w	r4, r8, r7
 8008354:	429c      	cmp	r4, r3
 8008356:	bfc8      	it	gt
 8008358:	3101      	addgt	r1, #1
 800835a:	f7ff ff0d 	bl	8008178 <_Balloc>
 800835e:	f100 0314 	add.w	r3, r0, #20
 8008362:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8008366:	9101      	str	r1, [sp, #4]
 8008368:	461a      	mov	r2, r3
 800836a:	f8dd a004 	ldr.w	sl, [sp, #4]
 800836e:	4552      	cmp	r2, sl
 8008370:	d203      	bcs.n	800837a <__multiply+0x4a>
 8008372:	2100      	movs	r1, #0
 8008374:	f842 1b04 	str.w	r1, [r2], #4
 8008378:	e7f7      	b.n	800836a <__multiply+0x3a>
 800837a:	f105 0114 	add.w	r1, r5, #20
 800837e:	f106 0214 	add.w	r2, r6, #20
 8008382:	eb01 0888 	add.w	r8, r1, r8, lsl #2
 8008386:	eb02 0787 	add.w	r7, r2, r7, lsl #2
 800838a:	f8cd 8008 	str.w	r8, [sp, #8]
 800838e:	9703      	str	r7, [sp, #12]
 8008390:	9e03      	ldr	r6, [sp, #12]
 8008392:	42b2      	cmp	r2, r6
 8008394:	4615      	mov	r5, r2
 8008396:	d256      	bcs.n	8008446 <__multiply+0x116>
 8008398:	f8b5 c000 	ldrh.w	ip, [r5]
 800839c:	3204      	adds	r2, #4
 800839e:	f1bc 0f00 	cmp.w	ip, #0
 80083a2:	d025      	beq.n	80083f0 <__multiply+0xc0>
 80083a4:	460f      	mov	r7, r1
 80083a6:	461d      	mov	r5, r3
 80083a8:	2600      	movs	r6, #0
 80083aa:	f857 9b04 	ldr.w	r9, [r7], #4
 80083ae:	f8d5 8000 	ldr.w	r8, [r5]
 80083b2:	fa1f fb89 	uxth.w	fp, r9
 80083b6:	fa1f fa88 	uxth.w	sl, r8
 80083ba:	fb0c aa0b 	mla	sl, ip, fp, sl
 80083be:	ea4f 4919 	mov.w	r9, r9, lsr #16
 80083c2:	ea4f 4818 	mov.w	r8, r8, lsr #16
 80083c6:	44b2      	add	sl, r6
 80083c8:	fb0c 8809 	mla	r8, ip, r9, r8
 80083cc:	eb08 481a 	add.w	r8, r8, sl, lsr #16
 80083d0:	fa1f fa8a 	uxth.w	sl, sl
 80083d4:	ea4a 4a08 	orr.w	sl, sl, r8, lsl #16
 80083d8:	ea4f 4618 	mov.w	r6, r8, lsr #16
 80083dc:	f8dd 8008 	ldr.w	r8, [sp, #8]
 80083e0:	46ab      	mov	fp, r5
 80083e2:	45b8      	cmp	r8, r7
 80083e4:	f84b ab04 	str.w	sl, [fp], #4
 80083e8:	d901      	bls.n	80083ee <__multiply+0xbe>
 80083ea:	465d      	mov	r5, fp
 80083ec:	e7dd      	b.n	80083aa <__multiply+0x7a>
 80083ee:	606e      	str	r6, [r5, #4]
 80083f0:	f832 8c02 	ldrh.w	r8, [r2, #-2]
 80083f4:	f1b8 0f00 	cmp.w	r8, #0
 80083f8:	d023      	beq.n	8008442 <__multiply+0x112>
 80083fa:	681e      	ldr	r6, [r3, #0]
 80083fc:	460f      	mov	r7, r1
 80083fe:	461d      	mov	r5, r3
 8008400:	f04f 0900 	mov.w	r9, #0
 8008404:	f8b7 a000 	ldrh.w	sl, [r7]
 8008408:	f8b5 c002 	ldrh.w	ip, [r5, #2]
 800840c:	fb08 cc0a 	mla	ip, r8, sl, ip
 8008410:	44e1      	add	r9, ip
 8008412:	b2b6      	uxth	r6, r6
 8008414:	46ac      	mov	ip, r5
 8008416:	ea46 4609 	orr.w	r6, r6, r9, lsl #16
 800841a:	f84c 6b04 	str.w	r6, [ip], #4
 800841e:	f857 6b04 	ldr.w	r6, [r7], #4
 8008422:	f8b5 a004 	ldrh.w	sl, [r5, #4]
 8008426:	0c36      	lsrs	r6, r6, #16
 8008428:	fb08 a606 	mla	r6, r8, r6, sl
 800842c:	f8dd a008 	ldr.w	sl, [sp, #8]
 8008430:	eb06 4619 	add.w	r6, r6, r9, lsr #16
 8008434:	4557      	cmp	r7, sl
 8008436:	ea4f 4916 	mov.w	r9, r6, lsr #16
 800843a:	d201      	bcs.n	8008440 <__multiply+0x110>
 800843c:	4665      	mov	r5, ip
 800843e:	e7e1      	b.n	8008404 <__multiply+0xd4>
 8008440:	606e      	str	r6, [r5, #4]
 8008442:	3304      	adds	r3, #4
 8008444:	e7a4      	b.n	8008390 <__multiply+0x60>
 8008446:	9b01      	ldr	r3, [sp, #4]
 8008448:	2c00      	cmp	r4, #0
 800844a:	dc03      	bgt.n	8008454 <__multiply+0x124>
 800844c:	6104      	str	r4, [r0, #16]
 800844e:	b005      	add	sp, #20
 8008450:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008454:	f853 2d04 	ldr.w	r2, [r3, #-4]!
 8008458:	2a00      	cmp	r2, #0
 800845a:	d1f7      	bne.n	800844c <__multiply+0x11c>
 800845c:	3c01      	subs	r4, #1
 800845e:	e7f3      	b.n	8008448 <__multiply+0x118>

08008460 <__pow5mult>:
 8008460:	f012 0303 	ands.w	r3, r2, #3
 8008464:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8008468:	4605      	mov	r5, r0
 800846a:	460e      	mov	r6, r1
 800846c:	4617      	mov	r7, r2
 800846e:	d007      	beq.n	8008480 <__pow5mult+0x20>
 8008470:	3b01      	subs	r3, #1
 8008472:	4a21      	ldr	r2, [pc, #132]	; (80084f8 <__pow5mult+0x98>)
 8008474:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8008478:	2300      	movs	r3, #0
 800847a:	f7ff fec9 	bl	8008210 <__multadd>
 800847e:	4606      	mov	r6, r0
 8008480:	10bf      	asrs	r7, r7, #2
 8008482:	d035      	beq.n	80084f0 <__pow5mult+0x90>
 8008484:	6a6c      	ldr	r4, [r5, #36]	; 0x24
 8008486:	b93c      	cbnz	r4, 8008498 <__pow5mult+0x38>
 8008488:	2010      	movs	r0, #16
 800848a:	f7ff fe6d 	bl	8008168 <malloc>
 800848e:	6268      	str	r0, [r5, #36]	; 0x24
 8008490:	6044      	str	r4, [r0, #4]
 8008492:	6084      	str	r4, [r0, #8]
 8008494:	6004      	str	r4, [r0, #0]
 8008496:	60c4      	str	r4, [r0, #12]
 8008498:	f8d5 8024 	ldr.w	r8, [r5, #36]	; 0x24
 800849c:	f8d8 4008 	ldr.w	r4, [r8, #8]
 80084a0:	b97c      	cbnz	r4, 80084c2 <__pow5mult+0x62>
 80084a2:	4628      	mov	r0, r5
 80084a4:	f240 2171 	movw	r1, #625	; 0x271
 80084a8:	f7ff ff39 	bl	800831e <__i2b>
 80084ac:	2300      	movs	r3, #0
 80084ae:	f8c8 0008 	str.w	r0, [r8, #8]
 80084b2:	4604      	mov	r4, r0
 80084b4:	6003      	str	r3, [r0, #0]
 80084b6:	e004      	b.n	80084c2 <__pow5mult+0x62>
 80084b8:	107f      	asrs	r7, r7, #1
 80084ba:	d019      	beq.n	80084f0 <__pow5mult+0x90>
 80084bc:	6820      	ldr	r0, [r4, #0]
 80084be:	b170      	cbz	r0, 80084de <__pow5mult+0x7e>
 80084c0:	4604      	mov	r4, r0
 80084c2:	07fb      	lsls	r3, r7, #31
 80084c4:	d5f8      	bpl.n	80084b8 <__pow5mult+0x58>
 80084c6:	4631      	mov	r1, r6
 80084c8:	4622      	mov	r2, r4
 80084ca:	4628      	mov	r0, r5
 80084cc:	f7ff ff30 	bl	8008330 <__multiply>
 80084d0:	4631      	mov	r1, r6
 80084d2:	4680      	mov	r8, r0
 80084d4:	4628      	mov	r0, r5
 80084d6:	f7ff fe84 	bl	80081e2 <_Bfree>
 80084da:	4646      	mov	r6, r8
 80084dc:	e7ec      	b.n	80084b8 <__pow5mult+0x58>
 80084de:	4628      	mov	r0, r5
 80084e0:	4621      	mov	r1, r4
 80084e2:	4622      	mov	r2, r4
 80084e4:	f7ff ff24 	bl	8008330 <__multiply>
 80084e8:	2300      	movs	r3, #0
 80084ea:	6020      	str	r0, [r4, #0]
 80084ec:	6003      	str	r3, [r0, #0]
 80084ee:	e7e7      	b.n	80084c0 <__pow5mult+0x60>
 80084f0:	4630      	mov	r0, r6
 80084f2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80084f6:	bf00      	nop
 80084f8:	080096a8 	.word	0x080096a8

080084fc <__lshift>:
 80084fc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8008500:	460c      	mov	r4, r1
 8008502:	ea4f 1a62 	mov.w	sl, r2, asr #5
 8008506:	6923      	ldr	r3, [r4, #16]
 8008508:	6849      	ldr	r1, [r1, #4]
 800850a:	eb0a 0903 	add.w	r9, sl, r3
 800850e:	68a3      	ldr	r3, [r4, #8]
 8008510:	4680      	mov	r8, r0
 8008512:	4615      	mov	r5, r2
 8008514:	f109 0701 	add.w	r7, r9, #1
 8008518:	429f      	cmp	r7, r3
 800851a:	dd02      	ble.n	8008522 <__lshift+0x26>
 800851c:	3101      	adds	r1, #1
 800851e:	005b      	lsls	r3, r3, #1
 8008520:	e7fa      	b.n	8008518 <__lshift+0x1c>
 8008522:	4640      	mov	r0, r8
 8008524:	f7ff fe28 	bl	8008178 <_Balloc>
 8008528:	2300      	movs	r3, #0
 800852a:	4606      	mov	r6, r0
 800852c:	f100 0214 	add.w	r2, r0, #20
 8008530:	4553      	cmp	r3, sl
 8008532:	da04      	bge.n	800853e <__lshift+0x42>
 8008534:	2100      	movs	r1, #0
 8008536:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 800853a:	3301      	adds	r3, #1
 800853c:	e7f8      	b.n	8008530 <__lshift+0x34>
 800853e:	6920      	ldr	r0, [r4, #16]
 8008540:	ea2a 71ea 	bic.w	r1, sl, sl, asr #31
 8008544:	f104 0314 	add.w	r3, r4, #20
 8008548:	f015 0c1f 	ands.w	ip, r5, #31
 800854c:	eb02 0181 	add.w	r1, r2, r1, lsl #2
 8008550:	eb03 0e80 	add.w	lr, r3, r0, lsl #2
 8008554:	d016      	beq.n	8008584 <__lshift+0x88>
 8008556:	f1cc 0a20 	rsb	sl, ip, #32
 800855a:	2500      	movs	r5, #0
 800855c:	6818      	ldr	r0, [r3, #0]
 800855e:	460a      	mov	r2, r1
 8008560:	fa00 f00c 	lsl.w	r0, r0, ip
 8008564:	4305      	orrs	r5, r0
 8008566:	f842 5b04 	str.w	r5, [r2], #4
 800856a:	f853 5b04 	ldr.w	r5, [r3], #4
 800856e:	4573      	cmp	r3, lr
 8008570:	fa25 f50a 	lsr.w	r5, r5, sl
 8008574:	d201      	bcs.n	800857a <__lshift+0x7e>
 8008576:	4611      	mov	r1, r2
 8008578:	e7f0      	b.n	800855c <__lshift+0x60>
 800857a:	604d      	str	r5, [r1, #4]
 800857c:	b145      	cbz	r5, 8008590 <__lshift+0x94>
 800857e:	f109 0702 	add.w	r7, r9, #2
 8008582:	e005      	b.n	8008590 <__lshift+0x94>
 8008584:	f853 2b04 	ldr.w	r2, [r3], #4
 8008588:	f841 2b04 	str.w	r2, [r1], #4
 800858c:	4573      	cmp	r3, lr
 800858e:	d3f9      	bcc.n	8008584 <__lshift+0x88>
 8008590:	3f01      	subs	r7, #1
 8008592:	4640      	mov	r0, r8
 8008594:	6137      	str	r7, [r6, #16]
 8008596:	4621      	mov	r1, r4
 8008598:	f7ff fe23 	bl	80081e2 <_Bfree>
 800859c:	4630      	mov	r0, r6
 800859e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

080085a2 <__mcmp>:
 80085a2:	6902      	ldr	r2, [r0, #16]
 80085a4:	690b      	ldr	r3, [r1, #16]
 80085a6:	1ad2      	subs	r2, r2, r3
 80085a8:	b510      	push	{r4, lr}
 80085aa:	d113      	bne.n	80085d4 <__mcmp+0x32>
 80085ac:	009c      	lsls	r4, r3, #2
 80085ae:	3014      	adds	r0, #20
 80085b0:	f101 0214 	add.w	r2, r1, #20
 80085b4:	1903      	adds	r3, r0, r4
 80085b6:	4422      	add	r2, r4
 80085b8:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 80085bc:	f852 1d04 	ldr.w	r1, [r2, #-4]!
 80085c0:	428c      	cmp	r4, r1
 80085c2:	d003      	beq.n	80085cc <__mcmp+0x2a>
 80085c4:	d208      	bcs.n	80085d8 <__mcmp+0x36>
 80085c6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80085ca:	bd10      	pop	{r4, pc}
 80085cc:	4298      	cmp	r0, r3
 80085ce:	d3f3      	bcc.n	80085b8 <__mcmp+0x16>
 80085d0:	2000      	movs	r0, #0
 80085d2:	bd10      	pop	{r4, pc}
 80085d4:	4610      	mov	r0, r2
 80085d6:	bd10      	pop	{r4, pc}
 80085d8:	2001      	movs	r0, #1
 80085da:	bd10      	pop	{r4, pc}

080085dc <__mdiff>:
 80085dc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80085e0:	4606      	mov	r6, r0
 80085e2:	460c      	mov	r4, r1
 80085e4:	4608      	mov	r0, r1
 80085e6:	4611      	mov	r1, r2
 80085e8:	4615      	mov	r5, r2
 80085ea:	f7ff ffda 	bl	80085a2 <__mcmp>
 80085ee:	1e07      	subs	r7, r0, #0
 80085f0:	d108      	bne.n	8008604 <__mdiff+0x28>
 80085f2:	4630      	mov	r0, r6
 80085f4:	4639      	mov	r1, r7
 80085f6:	f7ff fdbf 	bl	8008178 <_Balloc>
 80085fa:	2301      	movs	r3, #1
 80085fc:	6103      	str	r3, [r0, #16]
 80085fe:	6147      	str	r7, [r0, #20]
 8008600:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8008604:	db01      	blt.n	800860a <__mdiff+0x2e>
 8008606:	2700      	movs	r7, #0
 8008608:	e003      	b.n	8008612 <__mdiff+0x36>
 800860a:	4623      	mov	r3, r4
 800860c:	2701      	movs	r7, #1
 800860e:	462c      	mov	r4, r5
 8008610:	461d      	mov	r5, r3
 8008612:	6861      	ldr	r1, [r4, #4]
 8008614:	4630      	mov	r0, r6
 8008616:	f7ff fdaf 	bl	8008178 <_Balloc>
 800861a:	6922      	ldr	r2, [r4, #16]
 800861c:	692b      	ldr	r3, [r5, #16]
 800861e:	60c7      	str	r7, [r0, #12]
 8008620:	3414      	adds	r4, #20
 8008622:	f105 0614 	add.w	r6, r5, #20
 8008626:	eb06 0a83 	add.w	sl, r6, r3, lsl #2
 800862a:	eb04 0c82 	add.w	ip, r4, r2, lsl #2
 800862e:	f100 0314 	add.w	r3, r0, #20
 8008632:	2100      	movs	r1, #0
 8008634:	f854 7b04 	ldr.w	r7, [r4], #4
 8008638:	f856 9b04 	ldr.w	r9, [r6], #4
 800863c:	fa11 f187 	uxtah	r1, r1, r7
 8008640:	fa1f f589 	uxth.w	r5, r9
 8008644:	ea4f 4919 	mov.w	r9, r9, lsr #16
 8008648:	ebc5 0801 	rsb	r8, r5, r1
 800864c:	ebc9 4717 	rsb	r7, r9, r7, lsr #16
 8008650:	eb07 4728 	add.w	r7, r7, r8, asr #16
 8008654:	fa1f f888 	uxth.w	r8, r8
 8008658:	1439      	asrs	r1, r7, #16
 800865a:	45b2      	cmp	sl, r6
 800865c:	ea48 4707 	orr.w	r7, r8, r7, lsl #16
 8008660:	4625      	mov	r5, r4
 8008662:	f843 7b04 	str.w	r7, [r3], #4
 8008666:	d8e5      	bhi.n	8008634 <__mdiff+0x58>
 8008668:	4565      	cmp	r5, ip
 800866a:	d20d      	bcs.n	8008688 <__mdiff+0xac>
 800866c:	f855 4b04 	ldr.w	r4, [r5], #4
 8008670:	fa11 f684 	uxtah	r6, r1, r4
 8008674:	0c24      	lsrs	r4, r4, #16
 8008676:	eb04 4426 	add.w	r4, r4, r6, asr #16
 800867a:	b2b6      	uxth	r6, r6
 800867c:	1421      	asrs	r1, r4, #16
 800867e:	ea46 4404 	orr.w	r4, r6, r4, lsl #16
 8008682:	f843 4b04 	str.w	r4, [r3], #4
 8008686:	e7ef      	b.n	8008668 <__mdiff+0x8c>
 8008688:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 800868c:	b909      	cbnz	r1, 8008692 <__mdiff+0xb6>
 800868e:	3a01      	subs	r2, #1
 8008690:	e7fa      	b.n	8008688 <__mdiff+0xac>
 8008692:	6102      	str	r2, [r0, #16]
 8008694:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

08008698 <__d2b>:
 8008698:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
 800869c:	4689      	mov	r9, r1
 800869e:	2101      	movs	r1, #1
 80086a0:	ec55 4b10 	vmov	r4, r5, d0
 80086a4:	4690      	mov	r8, r2
 80086a6:	f7ff fd67 	bl	8008178 <_Balloc>
 80086aa:	f3c5 570a 	ubfx	r7, r5, #20, #11
 80086ae:	4606      	mov	r6, r0
 80086b0:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80086b4:	b10f      	cbz	r7, 80086ba <__d2b+0x22>
 80086b6:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80086ba:	9301      	str	r3, [sp, #4]
 80086bc:	b1d4      	cbz	r4, 80086f4 <__d2b+0x5c>
 80086be:	a802      	add	r0, sp, #8
 80086c0:	f840 4d08 	str.w	r4, [r0, #-8]!
 80086c4:	4668      	mov	r0, sp
 80086c6:	f7ff fdfd 	bl	80082c4 <__lo0bits>
 80086ca:	9b00      	ldr	r3, [sp, #0]
 80086cc:	b148      	cbz	r0, 80086e2 <__d2b+0x4a>
 80086ce:	9a01      	ldr	r2, [sp, #4]
 80086d0:	f1c0 0120 	rsb	r1, r0, #32
 80086d4:	fa02 f101 	lsl.w	r1, r2, r1
 80086d8:	430b      	orrs	r3, r1
 80086da:	40c2      	lsrs	r2, r0
 80086dc:	6173      	str	r3, [r6, #20]
 80086de:	9201      	str	r2, [sp, #4]
 80086e0:	e000      	b.n	80086e4 <__d2b+0x4c>
 80086e2:	6173      	str	r3, [r6, #20]
 80086e4:	9b01      	ldr	r3, [sp, #4]
 80086e6:	61b3      	str	r3, [r6, #24]
 80086e8:	2b00      	cmp	r3, #0
 80086ea:	bf0c      	ite	eq
 80086ec:	2401      	moveq	r4, #1
 80086ee:	2402      	movne	r4, #2
 80086f0:	6134      	str	r4, [r6, #16]
 80086f2:	e007      	b.n	8008704 <__d2b+0x6c>
 80086f4:	a801      	add	r0, sp, #4
 80086f6:	f7ff fde5 	bl	80082c4 <__lo0bits>
 80086fa:	2401      	movs	r4, #1
 80086fc:	9b01      	ldr	r3, [sp, #4]
 80086fe:	6173      	str	r3, [r6, #20]
 8008700:	6134      	str	r4, [r6, #16]
 8008702:	3020      	adds	r0, #32
 8008704:	b13f      	cbz	r7, 8008716 <__d2b+0x7e>
 8008706:	f2a7 4733 	subw	r7, r7, #1075	; 0x433
 800870a:	4407      	add	r7, r0
 800870c:	f8c9 7000 	str.w	r7, [r9]
 8008710:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8008714:	e00a      	b.n	800872c <__d2b+0x94>
 8008716:	eb06 0384 	add.w	r3, r6, r4, lsl #2
 800871a:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 800871e:	f8c9 0000 	str.w	r0, [r9]
 8008722:	6918      	ldr	r0, [r3, #16]
 8008724:	f7ff fdae 	bl	8008284 <__hi0bits>
 8008728:	ebc0 1044 	rsb	r0, r0, r4, lsl #5
 800872c:	f8c8 0000 	str.w	r0, [r8]
 8008730:	4630      	mov	r0, r6
 8008732:	b003      	add	sp, #12
 8008734:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}

08008738 <_calloc_r>:
 8008738:	b538      	push	{r3, r4, r5, lr}
 800873a:	fb02 f401 	mul.w	r4, r2, r1
 800873e:	4621      	mov	r1, r4
 8008740:	f7fb fd86 	bl	8004250 <_malloc_r>
 8008744:	4605      	mov	r5, r0
 8008746:	b118      	cbz	r0, 8008750 <_calloc_r+0x18>
 8008748:	2100      	movs	r1, #0
 800874a:	4622      	mov	r2, r4
 800874c:	f7fe fb37 	bl	8006dbe <memset>
 8008750:	4628      	mov	r0, r5
 8008752:	bd38      	pop	{r3, r4, r5, pc}

08008754 <__fpclassifyd>:
 8008754:	ec51 0b10 	vmov	r0, r1, d0
 8008758:	f031 4300 	bics.w	r3, r1, #2147483648	; 0x80000000
 800875c:	b510      	push	{r4, lr}
 800875e:	d100      	bne.n	8008762 <__fpclassifyd+0xe>
 8008760:	b178      	cbz	r0, 8008782 <__fpclassifyd+0x2e>
 8008762:	4a0c      	ldr	r2, [pc, #48]	; (8008794 <__fpclassifyd+0x40>)
 8008764:	f5a3 1480 	sub.w	r4, r3, #1048576	; 0x100000
 8008768:	4294      	cmp	r4, r2
 800876a:	d90c      	bls.n	8008786 <__fpclassifyd+0x32>
 800876c:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8008770:	d30b      	bcc.n	800878a <__fpclassifyd+0x36>
 8008772:	4a09      	ldr	r2, [pc, #36]	; (8008798 <__fpclassifyd+0x44>)
 8008774:	4293      	cmp	r3, r2
 8008776:	d10a      	bne.n	800878e <__fpclassifyd+0x3a>
 8008778:	f1d0 0001 	rsbs	r0, r0, #1
 800877c:	bf38      	it	cc
 800877e:	2000      	movcc	r0, #0
 8008780:	bd10      	pop	{r4, pc}
 8008782:	2002      	movs	r0, #2
 8008784:	bd10      	pop	{r4, pc}
 8008786:	2004      	movs	r0, #4
 8008788:	bd10      	pop	{r4, pc}
 800878a:	2003      	movs	r0, #3
 800878c:	bd10      	pop	{r4, pc}
 800878e:	2000      	movs	r0, #0
 8008790:	bd10      	pop	{r4, pc}
 8008792:	bf00      	nop
 8008794:	7fdfffff 	.word	0x7fdfffff
 8008798:	7ff00000 	.word	0x7ff00000

0800879c <strlen>:
 800879c:	4603      	mov	r3, r0
 800879e:	f813 2b01 	ldrb.w	r2, [r3], #1
 80087a2:	2a00      	cmp	r2, #0
 80087a4:	d1fb      	bne.n	800879e <strlen+0x2>
 80087a6:	1a18      	subs	r0, r3, r0
 80087a8:	3801      	subs	r0, #1
 80087aa:	4770      	bx	lr

080087ac <ceilf>:
 80087ac:	ee10 3a10 	vmov	r3, s0
 80087b0:	f023 4000 	bic.w	r0, r3, #2147483648	; 0x80000000
 80087b4:	0dc2      	lsrs	r2, r0, #23
 80087b6:	3a7f      	subs	r2, #127	; 0x7f
 80087b8:	2a16      	cmp	r2, #22
 80087ba:	b410      	push	{r4}
 80087bc:	dc1d      	bgt.n	80087fa <ceilf+0x4e>
 80087be:	2a00      	cmp	r2, #0
 80087c0:	461c      	mov	r4, r3
 80087c2:	db27      	blt.n	8008814 <ceilf+0x68>
 80087c4:	481e      	ldr	r0, [pc, #120]	; (8008840 <ceilf+0x94>)
 80087c6:	4110      	asrs	r0, r2
 80087c8:	4218      	tst	r0, r3
 80087ca:	d019      	beq.n	8008800 <ceilf+0x54>
 80087cc:	eddf 7a1d 	vldr	s15, [pc, #116]	; 8008844 <ceilf+0x98>
 80087d0:	ee70 7a27 	vadd.f32	s15, s0, s15
 80087d4:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 80087d8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80087dc:	dd10      	ble.n	8008800 <ceilf+0x54>
 80087de:	2b00      	cmp	r3, #0
 80087e0:	dd04      	ble.n	80087ec <ceilf+0x40>
 80087e2:	f44f 0300 	mov.w	r3, #8388608	; 0x800000
 80087e6:	fa43 f202 	asr.w	r2, r3, r2
 80087ea:	4414      	add	r4, r2
 80087ec:	ea24 0000 	bic.w	r0, r4, r0
 80087f0:	ee00 0a10 	vmov	s0, r0
 80087f4:	f85d 4b04 	ldr.w	r4, [sp], #4
 80087f8:	4770      	bx	lr
 80087fa:	f1b0 4fff 	cmp.w	r0, #2139095040	; 0x7f800000
 80087fe:	d204      	bcs.n	800880a <ceilf+0x5e>
 8008800:	ee00 3a10 	vmov	s0, r3
 8008804:	f85d 4b04 	ldr.w	r4, [sp], #4
 8008808:	4770      	bx	lr
 800880a:	ee30 0a00 	vadd.f32	s0, s0, s0
 800880e:	f85d 4b04 	ldr.w	r4, [sp], #4
 8008812:	4770      	bx	lr
 8008814:	eddf 7a0b 	vldr	s15, [pc, #44]	; 8008844 <ceilf+0x98>
 8008818:	ee70 7a27 	vadd.f32	s15, s0, s15
 800881c:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8008820:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8008824:	ddec      	ble.n	8008800 <ceilf+0x54>
 8008826:	2b00      	cmp	r3, #0
 8008828:	db06      	blt.n	8008838 <ceilf+0x8c>
 800882a:	2800      	cmp	r0, #0
 800882c:	eeb7 0a00 	vmov.f32	s0, #112	; 0x70
 8008830:	bf08      	it	eq
 8008832:	ee00 3a10 	vmoveq	s0, r3
 8008836:	e7e5      	b.n	8008804 <ceilf+0x58>
 8008838:	ed9f 0a03 	vldr	s0, [pc, #12]	; 8008848 <ceilf+0x9c>
 800883c:	e7e2      	b.n	8008804 <ceilf+0x58>
 800883e:	bf00      	nop
 8008840:	007fffff 	.word	0x007fffff
 8008844:	7149f2ca 	.word	0x7149f2ca
 8008848:	80000000 	.word	0x80000000

0800884c <cosf>:
 800884c:	b500      	push	{lr}
 800884e:	ee10 3a10 	vmov	r3, s0
 8008852:	4a1a      	ldr	r2, [pc, #104]	; (80088bc <cosf+0x70>)
 8008854:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
 8008858:	4293      	cmp	r3, r2
 800885a:	b083      	sub	sp, #12
 800885c:	dd19      	ble.n	8008892 <cosf+0x46>
 800885e:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
 8008862:	db04      	blt.n	800886e <cosf+0x22>
 8008864:	ee30 0a40 	vsub.f32	s0, s0, s0
 8008868:	b003      	add	sp, #12
 800886a:	f85d fb04 	ldr.w	pc, [sp], #4
 800886e:	4668      	mov	r0, sp
 8008870:	f000 f866 	bl	8008940 <__ieee754_rem_pio2f>
 8008874:	f000 0003 	and.w	r0, r0, #3
 8008878:	2801      	cmp	r0, #1
 800887a:	ed9d 0a00 	vldr	s0, [sp]
 800887e:	eddd 0a01 	vldr	s1, [sp, #4]
 8008882:	d012      	beq.n	80088aa <cosf+0x5e>
 8008884:	2802      	cmp	r0, #2
 8008886:	d00b      	beq.n	80088a0 <cosf+0x54>
 8008888:	b1a0      	cbz	r0, 80088b4 <cosf+0x68>
 800888a:	2001      	movs	r0, #1
 800888c:	f000 fd06 	bl	800929c <__kernel_sinf>
 8008890:	e7ea      	b.n	8008868 <cosf+0x1c>
 8008892:	eddf 0a0b 	vldr	s1, [pc, #44]	; 80088c0 <cosf+0x74>
 8008896:	f000 f999 	bl	8008bcc <__kernel_cosf>
 800889a:	b003      	add	sp, #12
 800889c:	f85d fb04 	ldr.w	pc, [sp], #4
 80088a0:	f000 f994 	bl	8008bcc <__kernel_cosf>
 80088a4:	eeb1 0a40 	vneg.f32	s0, s0
 80088a8:	e7de      	b.n	8008868 <cosf+0x1c>
 80088aa:	f000 fcf7 	bl	800929c <__kernel_sinf>
 80088ae:	eeb1 0a40 	vneg.f32	s0, s0
 80088b2:	e7d9      	b.n	8008868 <cosf+0x1c>
 80088b4:	f000 f98a 	bl	8008bcc <__kernel_cosf>
 80088b8:	e7d6      	b.n	8008868 <cosf+0x1c>
 80088ba:	bf00      	nop
 80088bc:	3f490fd8 	.word	0x3f490fd8
 80088c0:	00000000 	.word	0x00000000

080088c4 <sinf>:
 80088c4:	b500      	push	{lr}
 80088c6:	ee10 3a10 	vmov	r3, s0
 80088ca:	4a1b      	ldr	r2, [pc, #108]	; (8008938 <sinf+0x74>)
 80088cc:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
 80088d0:	4293      	cmp	r3, r2
 80088d2:	b083      	sub	sp, #12
 80088d4:	dd1a      	ble.n	800890c <sinf+0x48>
 80088d6:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
 80088da:	db04      	blt.n	80088e6 <sinf+0x22>
 80088dc:	ee30 0a40 	vsub.f32	s0, s0, s0
 80088e0:	b003      	add	sp, #12
 80088e2:	f85d fb04 	ldr.w	pc, [sp], #4
 80088e6:	4668      	mov	r0, sp
 80088e8:	f000 f82a 	bl	8008940 <__ieee754_rem_pio2f>
 80088ec:	f000 0003 	and.w	r0, r0, #3
 80088f0:	2801      	cmp	r0, #1
 80088f2:	ed9d 0a00 	vldr	s0, [sp]
 80088f6:	eddd 0a01 	vldr	s1, [sp, #4]
 80088fa:	d015      	beq.n	8008928 <sinf+0x64>
 80088fc:	2802      	cmp	r0, #2
 80088fe:	d00d      	beq.n	800891c <sinf+0x58>
 8008900:	b1a8      	cbz	r0, 800892e <sinf+0x6a>
 8008902:	f000 f963 	bl	8008bcc <__kernel_cosf>
 8008906:	eeb1 0a40 	vneg.f32	s0, s0
 800890a:	e7e9      	b.n	80088e0 <sinf+0x1c>
 800890c:	eddf 0a0b 	vldr	s1, [pc, #44]	; 800893c <sinf+0x78>
 8008910:	2000      	movs	r0, #0
 8008912:	f000 fcc3 	bl	800929c <__kernel_sinf>
 8008916:	b003      	add	sp, #12
 8008918:	f85d fb04 	ldr.w	pc, [sp], #4
 800891c:	2001      	movs	r0, #1
 800891e:	f000 fcbd 	bl	800929c <__kernel_sinf>
 8008922:	eeb1 0a40 	vneg.f32	s0, s0
 8008926:	e7db      	b.n	80088e0 <sinf+0x1c>
 8008928:	f000 f950 	bl	8008bcc <__kernel_cosf>
 800892c:	e7d8      	b.n	80088e0 <sinf+0x1c>
 800892e:	2001      	movs	r0, #1
 8008930:	f000 fcb4 	bl	800929c <__kernel_sinf>
 8008934:	e7d4      	b.n	80088e0 <sinf+0x1c>
 8008936:	bf00      	nop
 8008938:	3f490fd8 	.word	0x3f490fd8
 800893c:	00000000 	.word	0x00000000

08008940 <__ieee754_rem_pio2f>:
 8008940:	b570      	push	{r4, r5, r6, lr}
 8008942:	ee10 3a10 	vmov	r3, s0
 8008946:	4a93      	ldr	r2, [pc, #588]	; (8008b94 <__ieee754_rem_pio2f+0x254>)
 8008948:	f023 4400 	bic.w	r4, r3, #2147483648	; 0x80000000
 800894c:	4294      	cmp	r4, r2
 800894e:	b086      	sub	sp, #24
 8008950:	ee10 6a10 	vmov	r6, s0
 8008954:	4605      	mov	r5, r0
 8008956:	dd66      	ble.n	8008a26 <__ieee754_rem_pio2f+0xe6>
 8008958:	4a8f      	ldr	r2, [pc, #572]	; (8008b98 <__ieee754_rem_pio2f+0x258>)
 800895a:	4294      	cmp	r4, r2
 800895c:	dc1a      	bgt.n	8008994 <__ieee754_rem_pio2f+0x54>
 800895e:	2b00      	cmp	r3, #0
 8008960:	eddf 7a8e 	vldr	s15, [pc, #568]	; 8008b9c <__ieee754_rem_pio2f+0x25c>
 8008964:	4a8e      	ldr	r2, [pc, #568]	; (8008ba0 <__ieee754_rem_pio2f+0x260>)
 8008966:	f024 040f 	bic.w	r4, r4, #15
 800896a:	f340 80db 	ble.w	8008b24 <__ieee754_rem_pio2f+0x1e4>
 800896e:	4294      	cmp	r4, r2
 8008970:	ee70 7a67 	vsub.f32	s15, s0, s15
 8008974:	d066      	beq.n	8008a44 <__ieee754_rem_pio2f+0x104>
 8008976:	ed9f 7a8b 	vldr	s14, [pc, #556]	; 8008ba4 <__ieee754_rem_pio2f+0x264>
 800897a:	ee77 6ac7 	vsub.f32	s13, s15, s14
 800897e:	2001      	movs	r0, #1
 8008980:	ee77 7ae6 	vsub.f32	s15, s15, s13
 8008984:	edc5 6a00 	vstr	s13, [r5]
 8008988:	ee37 7ac7 	vsub.f32	s14, s15, s14
 800898c:	ed85 7a01 	vstr	s14, [r5, #4]
 8008990:	b006      	add	sp, #24
 8008992:	bd70      	pop	{r4, r5, r6, pc}
 8008994:	4a84      	ldr	r2, [pc, #528]	; (8008ba8 <__ieee754_rem_pio2f+0x268>)
 8008996:	4294      	cmp	r4, r2
 8008998:	dd66      	ble.n	8008a68 <__ieee754_rem_pio2f+0x128>
 800899a:	f1b4 4fff 	cmp.w	r4, #2139095040	; 0x7f800000
 800899e:	da49      	bge.n	8008a34 <__ieee754_rem_pio2f+0xf4>
 80089a0:	15e2      	asrs	r2, r4, #23
 80089a2:	3a86      	subs	r2, #134	; 0x86
 80089a4:	eba4 54c2 	sub.w	r4, r4, r2, lsl #23
 80089a8:	ee07 4a10 	vmov	s14, r4
 80089ac:	eefd 7ac7 	vcvt.s32.f32	s15, s14
 80089b0:	eddf 6a7e 	vldr	s13, [pc, #504]	; 8008bac <__ieee754_rem_pio2f+0x26c>
 80089b4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 80089b8:	ee37 7a67 	vsub.f32	s14, s14, s15
 80089bc:	edcd 7a03 	vstr	s15, [sp, #12]
 80089c0:	ee27 7a26 	vmul.f32	s14, s14, s13
 80089c4:	eefd 7ac7 	vcvt.s32.f32	s15, s14
 80089c8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 80089cc:	ee37 7a67 	vsub.f32	s14, s14, s15
 80089d0:	edcd 7a04 	vstr	s15, [sp, #16]
 80089d4:	ee27 7a26 	vmul.f32	s14, s14, s13
 80089d8:	eeb5 7a40 	vcmp.f32	s14, #0.0
 80089dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80089e0:	ed8d 7a05 	vstr	s14, [sp, #20]
 80089e4:	f040 80b1 	bne.w	8008b4a <__ieee754_rem_pio2f+0x20a>
 80089e8:	eef5 7a40 	vcmp.f32	s15, #0.0
 80089ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80089f0:	bf0c      	ite	eq
 80089f2:	2301      	moveq	r3, #1
 80089f4:	2302      	movne	r3, #2
 80089f6:	496e      	ldr	r1, [pc, #440]	; (8008bb0 <__ieee754_rem_pio2f+0x270>)
 80089f8:	2002      	movs	r0, #2
 80089fa:	e88d 0003 	stmia.w	sp, {r0, r1}
 80089fe:	a803      	add	r0, sp, #12
 8008a00:	4629      	mov	r1, r5
 8008a02:	f000 f965 	bl	8008cd0 <__kernel_rem_pio2f>
 8008a06:	2e00      	cmp	r6, #0
 8008a08:	da12      	bge.n	8008a30 <__ieee754_rem_pio2f+0xf0>
 8008a0a:	ed95 7a00 	vldr	s14, [r5]
 8008a0e:	edd5 7a01 	vldr	s15, [r5, #4]
 8008a12:	eeb1 7a47 	vneg.f32	s14, s14
 8008a16:	eef1 7a67 	vneg.f32	s15, s15
 8008a1a:	4240      	negs	r0, r0
 8008a1c:	ed85 7a00 	vstr	s14, [r5]
 8008a20:	edc5 7a01 	vstr	s15, [r5, #4]
 8008a24:	e004      	b.n	8008a30 <__ieee754_rem_pio2f+0xf0>
 8008a26:	2200      	movs	r2, #0
 8008a28:	ed85 0a00 	vstr	s0, [r5]
 8008a2c:	6042      	str	r2, [r0, #4]
 8008a2e:	2000      	movs	r0, #0
 8008a30:	b006      	add	sp, #24
 8008a32:	bd70      	pop	{r4, r5, r6, pc}
 8008a34:	ee70 7a40 	vsub.f32	s15, s0, s0
 8008a38:	2000      	movs	r0, #0
 8008a3a:	edc5 7a01 	vstr	s15, [r5, #4]
 8008a3e:	edc5 7a00 	vstr	s15, [r5]
 8008a42:	e7f5      	b.n	8008a30 <__ieee754_rem_pio2f+0xf0>
 8008a44:	eddf 6a5b 	vldr	s13, [pc, #364]	; 8008bb4 <__ieee754_rem_pio2f+0x274>
 8008a48:	ed9f 7a5b 	vldr	s14, [pc, #364]	; 8008bb8 <__ieee754_rem_pio2f+0x278>
 8008a4c:	ee77 7ae6 	vsub.f32	s15, s15, s13
 8008a50:	2001      	movs	r0, #1
 8008a52:	ee77 6ac7 	vsub.f32	s13, s15, s14
 8008a56:	ee77 7ae6 	vsub.f32	s15, s15, s13
 8008a5a:	edc5 6a00 	vstr	s13, [r5]
 8008a5e:	ee37 7ac7 	vsub.f32	s14, s15, s14
 8008a62:	ed85 7a01 	vstr	s14, [r5, #4]
 8008a66:	e7e3      	b.n	8008a30 <__ieee754_rem_pio2f+0xf0>
 8008a68:	f000 fc60 	bl	800932c <fabsf>
 8008a6c:	eddf 6a53 	vldr	s13, [pc, #332]	; 8008bbc <__ieee754_rem_pio2f+0x27c>
 8008a70:	eddf 5a4a 	vldr	s11, [pc, #296]	; 8008b9c <__ieee754_rem_pio2f+0x25c>
 8008a74:	eddf 7a4b 	vldr	s15, [pc, #300]	; 8008ba4 <__ieee754_rem_pio2f+0x264>
 8008a78:	eeb6 7a00 	vmov.f32	s14, #96	; 0x60
 8008a7c:	eea0 7a26 	vfma.f32	s14, s0, s13
 8008a80:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 8008a84:	eef8 6ac7 	vcvt.f32.s32	s13, s14
 8008a88:	ee17 0a10 	vmov	r0, s14
 8008a8c:	eeb1 6a66 	vneg.f32	s12, s13
 8008a90:	281f      	cmp	r0, #31
 8008a92:	eea6 0a25 	vfma.f32	s0, s12, s11
 8008a96:	ee66 7aa7 	vmul.f32	s15, s13, s15
 8008a9a:	dc1d      	bgt.n	8008ad8 <__ieee754_rem_pio2f+0x198>
 8008a9c:	4b48      	ldr	r3, [pc, #288]	; (8008bc0 <__ieee754_rem_pio2f+0x280>)
 8008a9e:	1e41      	subs	r1, r0, #1
 8008aa0:	f024 02ff 	bic.w	r2, r4, #255	; 0xff
 8008aa4:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
 8008aa8:	429a      	cmp	r2, r3
 8008aaa:	d015      	beq.n	8008ad8 <__ieee754_rem_pio2f+0x198>
 8008aac:	ee30 7a67 	vsub.f32	s14, s0, s15
 8008ab0:	ed85 7a00 	vstr	s14, [r5]
 8008ab4:	ee30 0a47 	vsub.f32	s0, s0, s14
 8008ab8:	2e00      	cmp	r6, #0
 8008aba:	ee70 7a67 	vsub.f32	s15, s0, s15
 8008abe:	edc5 7a01 	vstr	s15, [r5, #4]
 8008ac2:	dab5      	bge.n	8008a30 <__ieee754_rem_pio2f+0xf0>
 8008ac4:	eeb1 7a47 	vneg.f32	s14, s14
 8008ac8:	eef1 7a67 	vneg.f32	s15, s15
 8008acc:	ed85 7a00 	vstr	s14, [r5]
 8008ad0:	edc5 7a01 	vstr	s15, [r5, #4]
 8008ad4:	4240      	negs	r0, r0
 8008ad6:	e7ab      	b.n	8008a30 <__ieee754_rem_pio2f+0xf0>
 8008ad8:	ee30 7a67 	vsub.f32	s14, s0, s15
 8008adc:	15e4      	asrs	r4, r4, #23
 8008ade:	ee17 2a10 	vmov	r2, s14
 8008ae2:	f3c2 53c7 	ubfx	r3, r2, #23, #8
 8008ae6:	1ae3      	subs	r3, r4, r3
 8008ae8:	2b08      	cmp	r3, #8
 8008aea:	dde1      	ble.n	8008ab0 <__ieee754_rem_pio2f+0x170>
 8008aec:	ed9f 7a31 	vldr	s14, [pc, #196]	; 8008bb4 <__ieee754_rem_pio2f+0x274>
 8008af0:	ed9f 5a31 	vldr	s10, [pc, #196]	; 8008bb8 <__ieee754_rem_pio2f+0x278>
 8008af4:	eef0 5a40 	vmov.f32	s11, s0
 8008af8:	eee6 5a07 	vfma.f32	s11, s12, s14
 8008afc:	ee70 7a65 	vsub.f32	s15, s0, s11
 8008b00:	eee6 7a07 	vfma.f32	s15, s12, s14
 8008b04:	eed6 7a85 	vfnms.f32	s15, s13, s10
 8008b08:	ee35 7ae7 	vsub.f32	s14, s11, s15
 8008b0c:	ee17 2a10 	vmov	r2, s14
 8008b10:	f3c2 53c7 	ubfx	r3, r2, #23, #8
 8008b14:	1ae4      	subs	r4, r4, r3
 8008b16:	2c19      	cmp	r4, #25
 8008b18:	dc2c      	bgt.n	8008b74 <__ieee754_rem_pio2f+0x234>
 8008b1a:	ed85 7a00 	vstr	s14, [r5]
 8008b1e:	eeb0 0a65 	vmov.f32	s0, s11
 8008b22:	e7c7      	b.n	8008ab4 <__ieee754_rem_pio2f+0x174>
 8008b24:	4294      	cmp	r4, r2
 8008b26:	ee70 7a27 	vadd.f32	s15, s0, s15
 8008b2a:	d010      	beq.n	8008b4e <__ieee754_rem_pio2f+0x20e>
 8008b2c:	ed9f 7a1d 	vldr	s14, [pc, #116]	; 8008ba4 <__ieee754_rem_pio2f+0x264>
 8008b30:	ee77 6a87 	vadd.f32	s13, s15, s14
 8008b34:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008b38:	ee77 7ae6 	vsub.f32	s15, s15, s13
 8008b3c:	edc5 6a00 	vstr	s13, [r5]
 8008b40:	ee37 7a87 	vadd.f32	s14, s15, s14
 8008b44:	ed85 7a01 	vstr	s14, [r5, #4]
 8008b48:	e772      	b.n	8008a30 <__ieee754_rem_pio2f+0xf0>
 8008b4a:	2303      	movs	r3, #3
 8008b4c:	e753      	b.n	80089f6 <__ieee754_rem_pio2f+0xb6>
 8008b4e:	eddf 6a19 	vldr	s13, [pc, #100]	; 8008bb4 <__ieee754_rem_pio2f+0x274>
 8008b52:	ed9f 7a19 	vldr	s14, [pc, #100]	; 8008bb8 <__ieee754_rem_pio2f+0x278>
 8008b56:	ee77 7aa6 	vadd.f32	s15, s15, s13
 8008b5a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008b5e:	ee77 6a87 	vadd.f32	s13, s15, s14
 8008b62:	ee77 7ae6 	vsub.f32	s15, s15, s13
 8008b66:	edc5 6a00 	vstr	s13, [r5]
 8008b6a:	ee37 7a87 	vadd.f32	s14, s15, s14
 8008b6e:	ed85 7a01 	vstr	s14, [r5, #4]
 8008b72:	e75d      	b.n	8008a30 <__ieee754_rem_pio2f+0xf0>
 8008b74:	ed9f 7a13 	vldr	s14, [pc, #76]	; 8008bc4 <__ieee754_rem_pio2f+0x284>
 8008b78:	ed9f 5a13 	vldr	s10, [pc, #76]	; 8008bc8 <__ieee754_rem_pio2f+0x288>
 8008b7c:	eeb0 0a65 	vmov.f32	s0, s11
 8008b80:	eea6 0a07 	vfma.f32	s0, s12, s14
 8008b84:	ee75 7ac0 	vsub.f32	s15, s11, s0
 8008b88:	eee6 7a07 	vfma.f32	s15, s12, s14
 8008b8c:	eed6 7a85 	vfnms.f32	s15, s13, s10
 8008b90:	e78c      	b.n	8008aac <__ieee754_rem_pio2f+0x16c>
 8008b92:	bf00      	nop
 8008b94:	3f490fd8 	.word	0x3f490fd8
 8008b98:	4016cbe3 	.word	0x4016cbe3
 8008b9c:	3fc90f80 	.word	0x3fc90f80
 8008ba0:	3fc90fd0 	.word	0x3fc90fd0
 8008ba4:	37354443 	.word	0x37354443
 8008ba8:	43490f80 	.word	0x43490f80
 8008bac:	43800000 	.word	0x43800000
 8008bb0:	08009734 	.word	0x08009734
 8008bb4:	37354400 	.word	0x37354400
 8008bb8:	2e85a308 	.word	0x2e85a308
 8008bbc:	3f22f984 	.word	0x3f22f984
 8008bc0:	080096b4 	.word	0x080096b4
 8008bc4:	2e85a300 	.word	0x2e85a300
 8008bc8:	248d3132 	.word	0x248d3132

08008bcc <__kernel_cosf>:
 8008bcc:	ee10 3a10 	vmov	r3, s0
 8008bd0:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
 8008bd4:	f1b3 5f48 	cmp.w	r3, #838860800	; 0x32000000
 8008bd8:	da2c      	bge.n	8008c34 <__kernel_cosf+0x68>
 8008bda:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8008bde:	ee17 3a90 	vmov	r3, s15
 8008be2:	2b00      	cmp	r3, #0
 8008be4:	d060      	beq.n	8008ca8 <__kernel_cosf+0xdc>
 8008be6:	ee60 7a00 	vmul.f32	s15, s0, s0
 8008bea:	eddf 4a31 	vldr	s9, [pc, #196]	; 8008cb0 <__kernel_cosf+0xe4>
 8008bee:	ed9f 5a31 	vldr	s10, [pc, #196]	; 8008cb4 <__kernel_cosf+0xe8>
 8008bf2:	eddf 5a31 	vldr	s11, [pc, #196]	; 8008cb8 <__kernel_cosf+0xec>
 8008bf6:	ed9f 6a31 	vldr	s12, [pc, #196]	; 8008cbc <__kernel_cosf+0xf0>
 8008bfa:	eddf 6a31 	vldr	s13, [pc, #196]	; 8008cc0 <__kernel_cosf+0xf4>
 8008bfe:	ed9f 7a31 	vldr	s14, [pc, #196]	; 8008cc4 <__kernel_cosf+0xf8>
 8008c02:	eea7 5aa4 	vfma.f32	s10, s15, s9
 8008c06:	eee5 5a27 	vfma.f32	s11, s10, s15
 8008c0a:	eea5 6aa7 	vfma.f32	s12, s11, s15
 8008c0e:	eee6 6a27 	vfma.f32	s13, s12, s15
 8008c12:	eea6 7aa7 	vfma.f32	s14, s13, s15
 8008c16:	ee27 7a27 	vmul.f32	s14, s14, s15
 8008c1a:	ee20 0ac0 	vnmul.f32	s0, s1, s0
 8008c1e:	eef6 6a00 	vmov.f32	s13, #96	; 0x60
 8008c22:	eea7 0a87 	vfma.f32	s0, s15, s14
 8008c26:	eeb7 7a00 	vmov.f32	s14, #112	; 0x70
 8008c2a:	ee97 0aa6 	vfnms.f32	s0, s15, s13
 8008c2e:	ee37 0a40 	vsub.f32	s0, s14, s0
 8008c32:	4770      	bx	lr
 8008c34:	ee60 7a00 	vmul.f32	s15, s0, s0
 8008c38:	eddf 4a1d 	vldr	s9, [pc, #116]	; 8008cb0 <__kernel_cosf+0xe4>
 8008c3c:	ed9f 5a1d 	vldr	s10, [pc, #116]	; 8008cb4 <__kernel_cosf+0xe8>
 8008c40:	eddf 5a1d 	vldr	s11, [pc, #116]	; 8008cb8 <__kernel_cosf+0xec>
 8008c44:	ed9f 6a1d 	vldr	s12, [pc, #116]	; 8008cbc <__kernel_cosf+0xf0>
 8008c48:	eddf 6a1d 	vldr	s13, [pc, #116]	; 8008cc0 <__kernel_cosf+0xf4>
 8008c4c:	ed9f 7a1d 	vldr	s14, [pc, #116]	; 8008cc4 <__kernel_cosf+0xf8>
 8008c50:	4a1d      	ldr	r2, [pc, #116]	; (8008cc8 <__kernel_cosf+0xfc>)
 8008c52:	eea7 5aa4 	vfma.f32	s10, s15, s9
 8008c56:	4293      	cmp	r3, r2
 8008c58:	eee5 5a27 	vfma.f32	s11, s10, s15
 8008c5c:	eea5 6aa7 	vfma.f32	s12, s11, s15
 8008c60:	eee6 6a27 	vfma.f32	s13, s12, s15
 8008c64:	eea6 7aa7 	vfma.f32	s14, s13, s15
 8008c68:	ee27 7a27 	vmul.f32	s14, s14, s15
 8008c6c:	ddd5      	ble.n	8008c1a <__kernel_cosf+0x4e>
 8008c6e:	4a17      	ldr	r2, [pc, #92]	; (8008ccc <__kernel_cosf+0x100>)
 8008c70:	4293      	cmp	r3, r2
 8008c72:	dc14      	bgt.n	8008c9e <__kernel_cosf+0xd2>
 8008c74:	f103 437f 	add.w	r3, r3, #4278190080	; 0xff000000
 8008c78:	ee06 3a90 	vmov	s13, r3
 8008c7c:	eef7 5a00 	vmov.f32	s11, #112	; 0x70
 8008c80:	ee75 5ae6 	vsub.f32	s11, s11, s13
 8008c84:	ee60 0ac0 	vnmul.f32	s1, s1, s0
 8008c88:	eeb6 6a00 	vmov.f32	s12, #96	; 0x60
 8008c8c:	eee7 0a87 	vfma.f32	s1, s15, s14
 8008c90:	eed7 6a86 	vfnms.f32	s13, s15, s12
 8008c94:	ee76 0ae0 	vsub.f32	s1, s13, s1
 8008c98:	ee35 0ae0 	vsub.f32	s0, s11, s1
 8008c9c:	4770      	bx	lr
 8008c9e:	eef6 5a07 	vmov.f32	s11, #103	; 0x67
 8008ca2:	eef5 6a02 	vmov.f32	s13, #82	; 0x52
 8008ca6:	e7ed      	b.n	8008c84 <__kernel_cosf+0xb8>
 8008ca8:	eeb7 0a00 	vmov.f32	s0, #112	; 0x70
 8008cac:	4770      	bx	lr
 8008cae:	bf00      	nop
 8008cb0:	ad47d74e 	.word	0xad47d74e
 8008cb4:	310f74f6 	.word	0x310f74f6
 8008cb8:	b493f27c 	.word	0xb493f27c
 8008cbc:	37d00d01 	.word	0x37d00d01
 8008cc0:	bab60b61 	.word	0xbab60b61
 8008cc4:	3d2aaaab 	.word	0x3d2aaaab
 8008cc8:	3e999999 	.word	0x3e999999
 8008ccc:	3f480000 	.word	0x3f480000

08008cd0 <__kernel_rem_pio2f>:
 8008cd0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008cd4:	ed2d 8b04 	vpush	{d8-d9}
 8008cd8:	b0d7      	sub	sp, #348	; 0x15c
 8008cda:	4ca5      	ldr	r4, [pc, #660]	; (8008f70 <__kernel_rem_pio2f+0x2a0>)
 8008cdc:	9d64      	ldr	r5, [sp, #400]	; 0x190
 8008cde:	9103      	str	r1, [sp, #12]
 8008ce0:	f103 39ff 	add.w	r9, r3, #4294967295	; 0xffffffff
 8008ce4:	f854 8025 	ldr.w	r8, [r4, r5, lsl #2]
 8008ce8:	461d      	mov	r5, r3
 8008cea:	1ed3      	subs	r3, r2, #3
 8008cec:	bf48      	it	mi
 8008cee:	1d13      	addmi	r3, r2, #4
 8008cf0:	10db      	asrs	r3, r3, #3
 8008cf2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8008cf6:	9304      	str	r3, [sp, #16]
 8008cf8:	9e04      	ldr	r6, [sp, #16]
 8008cfa:	43db      	mvns	r3, r3
 8008cfc:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
 8008d00:	4682      	mov	sl, r0
 8008d02:	eb19 0008 	adds.w	r0, r9, r8
 8008d06:	9302      	str	r3, [sp, #8]
 8008d08:	ebc9 0306 	rsb	r3, r9, r6
 8008d0c:	d418      	bmi.n	8008d40 <__kernel_rem_pio2f+0x70>
 8008d0e:	9e65      	ldr	r6, [sp, #404]	; 0x194
 8008d10:	4418      	add	r0, r3
 8008d12:	3001      	adds	r0, #1
 8008d14:	a91a      	add	r1, sp, #104	; 0x68
 8008d16:	eb06 0483 	add.w	r4, r6, r3, lsl #2
 8008d1a:	2200      	movs	r2, #0
 8008d1c:	2b00      	cmp	r3, #0
 8008d1e:	bfaa      	itet	ge
 8008d20:	58a6      	ldrge	r6, [r4, r2]
 8008d22:	eddf 7a94 	vldrlt	s15, [pc, #592]	; 8008f74 <__kernel_rem_pio2f+0x2a4>
 8008d26:	ee07 6a10 	vmovge	s14, r6
 8008d2a:	f103 0301 	add.w	r3, r3, #1
 8008d2e:	bfa8      	it	ge
 8008d30:	eef8 7ac7 	vcvtge.f32.s32	s15, s14
 8008d34:	4283      	cmp	r3, r0
 8008d36:	ece1 7a01 	vstmia	r1!, {s15}
 8008d3a:	f102 0204 	add.w	r2, r2, #4
 8008d3e:	d1ed      	bne.n	8008d1c <__kernel_rem_pio2f+0x4c>
 8008d40:	f1b8 0f00 	cmp.w	r8, #0
 8008d44:	ea4f 0b88 	mov.w	fp, r8, lsl #2
 8008d48:	db1d      	blt.n	8008d86 <__kernel_rem_pio2f+0xb6>
 8008d4a:	a81a      	add	r0, sp, #104	; 0x68
 8008d4c:	ae43      	add	r6, sp, #268	; 0x10c
 8008d4e:	eb00 0485 	add.w	r4, r0, r5, lsl #2
 8008d52:	445e      	add	r6, fp
 8008d54:	a842      	add	r0, sp, #264	; 0x108
 8008d56:	f1b9 0f00 	cmp.w	r9, #0
 8008d5a:	f2c0 81ae 	blt.w	80090ba <__kernel_rem_pio2f+0x3ea>
 8008d5e:	eddf 7a85 	vldr	s15, [pc, #532]	; 8008f74 <__kernel_rem_pio2f+0x2a4>
 8008d62:	4651      	mov	r1, sl
 8008d64:	4622      	mov	r2, r4
 8008d66:	2300      	movs	r3, #0
 8008d68:	ecf1 6a01 	vldmia	r1!, {s13}
 8008d6c:	ed32 7a01 	vldmdb	r2!, {s14}
 8008d70:	3301      	adds	r3, #1
 8008d72:	42ab      	cmp	r3, r5
 8008d74:	eee6 7a87 	vfma.f32	s15, s13, s14
 8008d78:	d1f6      	bne.n	8008d68 <__kernel_rem_pio2f+0x98>
 8008d7a:	ece0 7a01 	vstmia	r0!, {s15}
 8008d7e:	42b0      	cmp	r0, r6
 8008d80:	f104 0404 	add.w	r4, r4, #4
 8008d84:	d1e7      	bne.n	8008d56 <__kernel_rem_pio2f+0x86>
 8008d86:	f10d 0c18 	add.w	ip, sp, #24
 8008d8a:	4644      	mov	r4, r8
 8008d8c:	f8cd 8014 	str.w	r8, [sp, #20]
 8008d90:	eddf 8a7a 	vldr	s17, [pc, #488]	; 8008f7c <__kernel_rem_pio2f+0x2ac>
 8008d94:	ed9f 8a78 	vldr	s16, [pc, #480]	; 8008f78 <__kernel_rem_pio2f+0x2a8>
 8008d98:	f8dd 8008 	ldr.w	r8, [sp, #8]
 8008d9c:	44e3      	add	fp, ip
 8008d9e:	00a6      	lsls	r6, r4, #2
 8008da0:	ab56      	add	r3, sp, #344	; 0x158
 8008da2:	4433      	add	r3, r6
 8008da4:	2c00      	cmp	r4, #0
 8008da6:	ed13 0a14 	vldr	s0, [r3, #-80]	; 0xffffffb0
 8008daa:	dd1b      	ble.n	8008de4 <__kernel_rem_pio2f+0x114>
 8008dac:	f1ac 0104 	sub.w	r1, ip, #4
 8008db0:	aa42      	add	r2, sp, #264	; 0x108
 8008db2:	4432      	add	r2, r6
 8008db4:	4431      	add	r1, r6
 8008db6:	ab05      	add	r3, sp, #20
 8008db8:	ee60 7a28 	vmul.f32	s15, s0, s17
 8008dbc:	eeb0 7a40 	vmov.f32	s14, s0
 8008dc0:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8008dc4:	ed72 6a01 	vldmdb	r2!, {s13}
 8008dc8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8008dcc:	eea7 7ac8 	vfms.f32	s14, s15, s16
 8008dd0:	ee37 0aa6 	vadd.f32	s0, s15, s13
 8008dd4:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 8008dd8:	ee17 0a10 	vmov	r0, s14
 8008ddc:	f843 0f04 	str.w	r0, [r3, #4]!
 8008de0:	428b      	cmp	r3, r1
 8008de2:	d1e9      	bne.n	8008db8 <__kernel_rem_pio2f+0xe8>
 8008de4:	4640      	mov	r0, r8
 8008de6:	f8cd c000 	str.w	ip, [sp]
 8008dea:	f000 faf7 	bl	80093dc <scalbnf>
 8008dee:	eeb0 9a40 	vmov.f32	s18, s0
 8008df2:	eeb4 0a00 	vmov.f32	s0, #64	; 0x40
 8008df6:	ee29 0a00 	vmul.f32	s0, s18, s0
 8008dfa:	f000 fa9f 	bl	800933c <floorf>
 8008dfe:	eef2 7a00 	vmov.f32	s15, #32
 8008e02:	eea0 9a67 	vfms.f32	s18, s0, s15
 8008e06:	f1b8 0f00 	cmp.w	r8, #0
 8008e0a:	f8dd c000 	ldr.w	ip, [sp]
 8008e0e:	eefd 9ac9 	vcvt.s32.f32	s19, s18
 8008e12:	eef8 7ae9 	vcvt.f32.s32	s15, s19
 8008e16:	ee39 9a67 	vsub.f32	s18, s18, s15
 8008e1a:	f340 80a1 	ble.w	8008f60 <__kernel_rem_pio2f+0x290>
 8008e1e:	1e61      	subs	r1, r4, #1
 8008e20:	f1c8 0008 	rsb	r0, r8, #8
 8008e24:	f85c 3021 	ldr.w	r3, [ip, r1, lsl #2]
 8008e28:	fa43 f200 	asr.w	r2, r3, r0
 8008e2c:	fa02 f000 	lsl.w	r0, r2, r0
 8008e30:	1a1b      	subs	r3, r3, r0
 8008e32:	f84c 3021 	str.w	r3, [ip, r1, lsl #2]
 8008e36:	ee19 1a90 	vmov	r1, s19
 8008e3a:	f1c8 0007 	rsb	r0, r8, #7
 8008e3e:	4411      	add	r1, r2
 8008e40:	fa43 f000 	asr.w	r0, r3, r0
 8008e44:	ee09 1a90 	vmov	s19, r1
 8008e48:	9001      	str	r0, [sp, #4]
 8008e4a:	9b01      	ldr	r3, [sp, #4]
 8008e4c:	2b00      	cmp	r3, #0
 8008e4e:	dd2d      	ble.n	8008eac <__kernel_rem_pio2f+0x1dc>
 8008e50:	ee19 2a90 	vmov	r2, s19
 8008e54:	2c00      	cmp	r4, #0
 8008e56:	f102 0201 	add.w	r2, r2, #1
 8008e5a:	ee09 2a90 	vmov	s19, r2
 8008e5e:	f340 8140 	ble.w	80090e2 <__kernel_rem_pio2f+0x412>
 8008e62:	4663      	mov	r3, ip
 8008e64:	eb0c 0706 	add.w	r7, ip, r6
 8008e68:	2100      	movs	r1, #0
 8008e6a:	f853 2b04 	ldr.w	r2, [r3], #4
 8008e6e:	f1c2 00ff 	rsb	r0, r2, #255	; 0xff
 8008e72:	b911      	cbnz	r1, 8008e7a <__kernel_rem_pio2f+0x1aa>
 8008e74:	f5c2 7080 	rsb	r0, r2, #256	; 0x100
 8008e78:	b112      	cbz	r2, 8008e80 <__kernel_rem_pio2f+0x1b0>
 8008e7a:	f843 0c04 	str.w	r0, [r3, #-4]
 8008e7e:	2101      	movs	r1, #1
 8008e80:	42bb      	cmp	r3, r7
 8008e82:	d1f2      	bne.n	8008e6a <__kernel_rem_pio2f+0x19a>
 8008e84:	f1b8 0f00 	cmp.w	r8, #0
 8008e88:	dd0d      	ble.n	8008ea6 <__kernel_rem_pio2f+0x1d6>
 8008e8a:	f1b8 0f01 	cmp.w	r8, #1
 8008e8e:	f000 8102 	beq.w	8009096 <__kernel_rem_pio2f+0x3c6>
 8008e92:	f1b8 0f02 	cmp.w	r8, #2
 8008e96:	d106      	bne.n	8008ea6 <__kernel_rem_pio2f+0x1d6>
 8008e98:	1e62      	subs	r2, r4, #1
 8008e9a:	f85c 3022 	ldr.w	r3, [ip, r2, lsl #2]
 8008e9e:	f003 033f 	and.w	r3, r3, #63	; 0x3f
 8008ea2:	f84c 3022 	str.w	r3, [ip, r2, lsl #2]
 8008ea6:	9b01      	ldr	r3, [sp, #4]
 8008ea8:	2b02      	cmp	r3, #2
 8008eaa:	d069      	beq.n	8008f80 <__kernel_rem_pio2f+0x2b0>
 8008eac:	eeb5 9a40 	vcmp.f32	s18, #0.0
 8008eb0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8008eb4:	d178      	bne.n	8008fa8 <__kernel_rem_pio2f+0x2d8>
 8008eb6:	9905      	ldr	r1, [sp, #20]
 8008eb8:	1e67      	subs	r7, r4, #1
 8008eba:	42b9      	cmp	r1, r7
 8008ebc:	dc0a      	bgt.n	8008ed4 <__kernel_rem_pio2f+0x204>
 8008ebe:	4466      	add	r6, ip
 8008ec0:	2300      	movs	r3, #0
 8008ec2:	f856 2d04 	ldr.w	r2, [r6, #-4]!
 8008ec6:	455e      	cmp	r6, fp
 8008ec8:	ea43 0302 	orr.w	r3, r3, r2
 8008ecc:	d1f9      	bne.n	8008ec2 <__kernel_rem_pio2f+0x1f2>
 8008ece:	2b00      	cmp	r3, #0
 8008ed0:	f040 81b1 	bne.w	8009236 <__kernel_rem_pio2f+0x566>
 8008ed4:	9a05      	ldr	r2, [sp, #20]
 8008ed6:	1e53      	subs	r3, r2, #1
 8008ed8:	f85c 2023 	ldr.w	r2, [ip, r3, lsl #2]
 8008edc:	2a00      	cmp	r2, #0
 8008ede:	f040 81a7 	bne.w	8009230 <__kernel_rem_pio2f+0x560>
 8008ee2:	eb0c 0383 	add.w	r3, ip, r3, lsl #2
 8008ee6:	f04f 0e01 	mov.w	lr, #1
 8008eea:	f853 2d04 	ldr.w	r2, [r3, #-4]!
 8008eee:	f10e 0e01 	add.w	lr, lr, #1
 8008ef2:	2a00      	cmp	r2, #0
 8008ef4:	d0f9      	beq.n	8008eea <__kernel_rem_pio2f+0x21a>
 8008ef6:	44a6      	add	lr, r4
 8008ef8:	1c66      	adds	r6, r4, #1
 8008efa:	4576      	cmp	r6, lr
 8008efc:	dc2e      	bgt.n	8008f5c <__kernel_rem_pio2f+0x28c>
 8008efe:	9804      	ldr	r0, [sp, #16]
 8008f00:	9f04      	ldr	r7, [sp, #16]
 8008f02:	4420      	add	r0, r4
 8008f04:	9c65      	ldr	r4, [sp, #404]	; 0x194
 8008f06:	eb09 0306 	add.w	r3, r9, r6
 8008f0a:	a91a      	add	r1, sp, #104	; 0x68
 8008f0c:	eb04 0080 	add.w	r0, r4, r0, lsl #2
 8008f10:	eb01 0483 	add.w	r4, r1, r3, lsl #2
 8008f14:	9b65      	ldr	r3, [sp, #404]	; 0x194
 8008f16:	4477      	add	r7, lr
 8008f18:	aa42      	add	r2, sp, #264	; 0x108
 8008f1a:	eb02 0686 	add.w	r6, r2, r6, lsl #2
 8008f1e:	eb03 0787 	add.w	r7, r3, r7, lsl #2
 8008f22:	f850 1f04 	ldr.w	r1, [r0, #4]!
 8008f26:	ee07 1a90 	vmov	s15, r1
 8008f2a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8008f2e:	f1b9 0f00 	cmp.w	r9, #0
 8008f32:	ece4 7a01 	vstmia	r4!, {s15}
 8008f36:	eddf 7a0f 	vldr	s15, [pc, #60]	; 8008f74 <__kernel_rem_pio2f+0x2a4>
 8008f3a:	db0b      	blt.n	8008f54 <__kernel_rem_pio2f+0x284>
 8008f3c:	4651      	mov	r1, sl
 8008f3e:	4622      	mov	r2, r4
 8008f40:	2300      	movs	r3, #0
 8008f42:	ecf1 6a01 	vldmia	r1!, {s13}
 8008f46:	ed32 7a01 	vldmdb	r2!, {s14}
 8008f4a:	3301      	adds	r3, #1
 8008f4c:	42ab      	cmp	r3, r5
 8008f4e:	eee6 7a87 	vfma.f32	s15, s13, s14
 8008f52:	d1f6      	bne.n	8008f42 <__kernel_rem_pio2f+0x272>
 8008f54:	42b8      	cmp	r0, r7
 8008f56:	ece6 7a01 	vstmia	r6!, {s15}
 8008f5a:	d1e2      	bne.n	8008f22 <__kernel_rem_pio2f+0x252>
 8008f5c:	4674      	mov	r4, lr
 8008f5e:	e71e      	b.n	8008d9e <__kernel_rem_pio2f+0xce>
 8008f60:	f040 80a1 	bne.w	80090a6 <__kernel_rem_pio2f+0x3d6>
 8008f64:	1e63      	subs	r3, r4, #1
 8008f66:	f85c 3023 	ldr.w	r3, [ip, r3, lsl #2]
 8008f6a:	121b      	asrs	r3, r3, #8
 8008f6c:	9301      	str	r3, [sp, #4]
 8008f6e:	e76c      	b.n	8008e4a <__kernel_rem_pio2f+0x17a>
 8008f70:	08009a4c 	.word	0x08009a4c
 8008f74:	00000000 	.word	0x00000000
 8008f78:	43800000 	.word	0x43800000
 8008f7c:	3b800000 	.word	0x3b800000
 8008f80:	eeb7 0a00 	vmov.f32	s0, #112	; 0x70
 8008f84:	ee30 9a49 	vsub.f32	s18, s0, s18
 8008f88:	2900      	cmp	r1, #0
 8008f8a:	d08f      	beq.n	8008eac <__kernel_rem_pio2f+0x1dc>
 8008f8c:	4640      	mov	r0, r8
 8008f8e:	f8cd c000 	str.w	ip, [sp]
 8008f92:	f000 fa23 	bl	80093dc <scalbnf>
 8008f96:	ee39 9a40 	vsub.f32	s18, s18, s0
 8008f9a:	f8dd c000 	ldr.w	ip, [sp]
 8008f9e:	eeb5 9a40 	vcmp.f32	s18, #0.0
 8008fa2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8008fa6:	d086      	beq.n	8008eb6 <__kernel_rem_pio2f+0x1e6>
 8008fa8:	9b02      	ldr	r3, [sp, #8]
 8008faa:	f8cd c000 	str.w	ip, [sp]
 8008fae:	eeb0 0a49 	vmov.f32	s0, s18
 8008fb2:	4258      	negs	r0, r3
 8008fb4:	f8dd 8014 	ldr.w	r8, [sp, #20]
 8008fb8:	f000 fa10 	bl	80093dc <scalbnf>
 8008fbc:	ed5f 7a12 	vldr	s15, [pc, #-72]	; 8008f78 <__kernel_rem_pio2f+0x2a8>
 8008fc0:	f8dd c000 	ldr.w	ip, [sp]
 8008fc4:	eeb4 0ae7 	vcmpe.f32	s0, s15
 8008fc8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8008fcc:	f2c0 8154 	blt.w	8009278 <__kernel_rem_pio2f+0x5a8>
 8008fd0:	ed1f 7a16 	vldr	s14, [pc, #-88]	; 8008f7c <__kernel_rem_pio2f+0x2ac>
 8008fd4:	9a02      	ldr	r2, [sp, #8]
 8008fd6:	ee20 7a07 	vmul.f32	s14, s0, s14
 8008fda:	1c67      	adds	r7, r4, #1
 8008fdc:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 8008fe0:	3208      	adds	r2, #8
 8008fe2:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8008fe6:	9202      	str	r2, [sp, #8]
 8008fe8:	eea7 0a67 	vfms.f32	s0, s14, s15
 8008fec:	eebd 7ac7 	vcvt.s32.f32	s14, s14
 8008ff0:	eebd 0ac0 	vcvt.s32.f32	s0, s0
 8008ff4:	ee10 3a10 	vmov	r3, s0
 8008ff8:	f84c 3024 	str.w	r3, [ip, r4, lsl #2]
 8008ffc:	ee17 4a10 	vmov	r4, s14
 8009000:	f84c 4027 	str.w	r4, [ip, r7, lsl #2]
 8009004:	9802      	ldr	r0, [sp, #8]
 8009006:	f8cd c000 	str.w	ip, [sp]
 800900a:	eeb7 0a00 	vmov.f32	s0, #112	; 0x70
 800900e:	f000 f9e5 	bl	80093dc <scalbnf>
 8009012:	2f00      	cmp	r7, #0
 8009014:	f8dd c000 	ldr.w	ip, [sp]
 8009018:	db36      	blt.n	8009088 <__kernel_rem_pio2f+0x3b8>
 800901a:	1c7d      	adds	r5, r7, #1
 800901c:	00aa      	lsls	r2, r5, #2
 800901e:	ae42      	add	r6, sp, #264	; 0x108
 8009020:	ed1f 7a2a 	vldr	s14, [pc, #-168]	; 8008f7c <__kernel_rem_pio2f+0x2ac>
 8009024:	eb0c 0302 	add.w	r3, ip, r2
 8009028:	4432      	add	r2, r6
 800902a:	ed73 7a01 	vldmdb	r3!, {s15}
 800902e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8009032:	4563      	cmp	r3, ip
 8009034:	ee67 7a80 	vmul.f32	s15, s15, s0
 8009038:	ee20 0a07 	vmul.f32	s0, s0, s14
 800903c:	ed62 7a01 	vstmdb	r2!, {s15}
 8009040:	d1f3      	bne.n	800902a <__kernel_rem_pio2f+0x35a>
 8009042:	a842      	add	r0, sp, #264	; 0x108
 8009044:	eb00 0487 	add.w	r4, r0, r7, lsl #2
 8009048:	2000      	movs	r0, #0
 800904a:	f1b8 0f00 	cmp.w	r8, #0
 800904e:	f2c0 80e9 	blt.w	8009224 <__kernel_rem_pio2f+0x554>
 8009052:	4990      	ldr	r1, [pc, #576]	; (8009294 <__kernel_rem_pio2f+0x5c4>)
 8009054:	eddf 7a90 	vldr	s15, [pc, #576]	; 8009298 <__kernel_rem_pio2f+0x5c8>
 8009058:	4622      	mov	r2, r4
 800905a:	2300      	movs	r3, #0
 800905c:	e001      	b.n	8009062 <__kernel_rem_pio2f+0x392>
 800905e:	4283      	cmp	r3, r0
 8009060:	dc08      	bgt.n	8009074 <__kernel_rem_pio2f+0x3a4>
 8009062:	ecf1 6a01 	vldmia	r1!, {s13}
 8009066:	ecb2 7a01 	vldmia	r2!, {s14}
 800906a:	3301      	adds	r3, #1
 800906c:	4598      	cmp	r8, r3
 800906e:	eee6 7a87 	vfma.f32	s15, s13, s14
 8009072:	daf4      	bge.n	800905e <__kernel_rem_pio2f+0x38e>
 8009074:	a956      	add	r1, sp, #344	; 0x158
 8009076:	eb01 0380 	add.w	r3, r1, r0, lsl #2
 800907a:	3001      	adds	r0, #1
 800907c:	4285      	cmp	r5, r0
 800907e:	f1a4 0404 	sub.w	r4, r4, #4
 8009082:	ed43 7a28 	vstr	s15, [r3, #-160]	; 0xffffff60
 8009086:	d1e0      	bne.n	800904a <__kernel_rem_pio2f+0x37a>
 8009088:	9c64      	ldr	r4, [sp, #400]	; 0x190
 800908a:	2c03      	cmp	r4, #3
 800908c:	d87f      	bhi.n	800918e <__kernel_rem_pio2f+0x4be>
 800908e:	e8df f004 	tbb	[pc, r4]
 8009092:	87b3      	.short	0x87b3
 8009094:	2a87      	.short	0x2a87
 8009096:	1e62      	subs	r2, r4, #1
 8009098:	f85c 3022 	ldr.w	r3, [ip, r2, lsl #2]
 800909c:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 80090a0:	f84c 3022 	str.w	r3, [ip, r2, lsl #2]
 80090a4:	e6ff      	b.n	8008ea6 <__kernel_rem_pio2f+0x1d6>
 80090a6:	eef6 7a00 	vmov.f32	s15, #96	; 0x60
 80090aa:	eeb4 9ae7 	vcmpe.f32	s18, s15
 80090ae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80090b2:	da0c      	bge.n	80090ce <__kernel_rem_pio2f+0x3fe>
 80090b4:	2200      	movs	r2, #0
 80090b6:	9201      	str	r2, [sp, #4]
 80090b8:	e6f8      	b.n	8008eac <__kernel_rem_pio2f+0x1dc>
 80090ba:	eddf 7a77 	vldr	s15, [pc, #476]	; 8009298 <__kernel_rem_pio2f+0x5c8>
 80090be:	ece0 7a01 	vstmia	r0!, {s15}
 80090c2:	42b0      	cmp	r0, r6
 80090c4:	f104 0404 	add.w	r4, r4, #4
 80090c8:	f47f ae45 	bne.w	8008d56 <__kernel_rem_pio2f+0x86>
 80090cc:	e65b      	b.n	8008d86 <__kernel_rem_pio2f+0xb6>
 80090ce:	ee19 2a90 	vmov	r2, s19
 80090d2:	2102      	movs	r1, #2
 80090d4:	3201      	adds	r2, #1
 80090d6:	2c00      	cmp	r4, #0
 80090d8:	9101      	str	r1, [sp, #4]
 80090da:	ee09 2a90 	vmov	s19, r2
 80090de:	f73f aec0 	bgt.w	8008e62 <__kernel_rem_pio2f+0x192>
 80090e2:	2100      	movs	r1, #0
 80090e4:	e6ce      	b.n	8008e84 <__kernel_rem_pio2f+0x1b4>
 80090e6:	2f00      	cmp	r7, #0
 80090e8:	f340 80b9 	ble.w	800925e <__kernel_rem_pio2f+0x58e>
 80090ec:	00b9      	lsls	r1, r7, #2
 80090ee:	ab56      	add	r3, sp, #344	; 0x158
 80090f0:	1c7a      	adds	r2, r7, #1
 80090f2:	ae2e      	add	r6, sp, #184	; 0xb8
 80090f4:	440b      	add	r3, r1
 80090f6:	eb06 0282 	add.w	r2, r6, r2, lsl #2
 80090fa:	ed53 7a28 	vldr	s15, [r3, #-160]	; 0xffffff60
 80090fe:	a82f      	add	r0, sp, #188	; 0xbc
 8009100:	4613      	mov	r3, r2
 8009102:	ed53 6a02 	vldr	s13, [r3, #-8]
 8009106:	ee36 7aa7 	vadd.f32	s14, s13, s15
 800910a:	ee76 6ac7 	vsub.f32	s13, s13, s14
 800910e:	ee76 6aa7 	vadd.f32	s13, s13, s15
 8009112:	eef0 7a47 	vmov.f32	s15, s14
 8009116:	ed63 6a01 	vstmdb	r3!, {s13}
 800911a:	4283      	cmp	r3, r0
 800911c:	ed03 7a01 	vstr	s14, [r3, #-4]
 8009120:	d1ef      	bne.n	8009102 <__kernel_rem_pio2f+0x432>
 8009122:	2f01      	cmp	r7, #1
 8009124:	f340 809b 	ble.w	800925e <__kernel_rem_pio2f+0x58e>
 8009128:	a856      	add	r0, sp, #344	; 0x158
 800912a:	4401      	add	r1, r0
 800912c:	ed51 7a28 	vldr	s15, [r1, #-160]	; 0xffffff60
 8009130:	4613      	mov	r3, r2
 8009132:	a930      	add	r1, sp, #192	; 0xc0
 8009134:	ed53 6a02 	vldr	s13, [r3, #-8]
 8009138:	ee36 7aa7 	vadd.f32	s14, s13, s15
 800913c:	ee76 6ac7 	vsub.f32	s13, s13, s14
 8009140:	ee76 6aa7 	vadd.f32	s13, s13, s15
 8009144:	eef0 7a47 	vmov.f32	s15, s14
 8009148:	ed63 6a01 	vstmdb	r3!, {s13}
 800914c:	428b      	cmp	r3, r1
 800914e:	ed03 7a01 	vstr	s14, [r3, #-4]
 8009152:	d1ef      	bne.n	8009134 <__kernel_rem_pio2f+0x464>
 8009154:	eddf 7a50 	vldr	s15, [pc, #320]	; 8009298 <__kernel_rem_pio2f+0x5c8>
 8009158:	4613      	mov	r3, r2
 800915a:	ed33 7a01 	vldmdb	r3!, {s14}
 800915e:	4299      	cmp	r1, r3
 8009160:	ee77 7a87 	vadd.f32	s15, s15, s14
 8009164:	d1f9      	bne.n	800915a <__kernel_rem_pio2f+0x48a>
 8009166:	9c01      	ldr	r4, [sp, #4]
 8009168:	2c00      	cmp	r4, #0
 800916a:	d07d      	beq.n	8009268 <__kernel_rem_pio2f+0x598>
 800916c:	eddd 6a2e 	vldr	s13, [sp, #184]	; 0xb8
 8009170:	ed9d 7a2f 	vldr	s14, [sp, #188]	; 0xbc
 8009174:	9e03      	ldr	r6, [sp, #12]
 8009176:	eef1 7a67 	vneg.f32	s15, s15
 800917a:	eef1 6a66 	vneg.f32	s13, s13
 800917e:	eeb1 7a47 	vneg.f32	s14, s14
 8009182:	edc6 7a02 	vstr	s15, [r6, #8]
 8009186:	edc6 6a00 	vstr	s13, [r6]
 800918a:	ed86 7a01 	vstr	s14, [r6, #4]
 800918e:	ee19 1a90 	vmov	r1, s19
 8009192:	f001 0007 	and.w	r0, r1, #7
 8009196:	b057      	add	sp, #348	; 0x15c
 8009198:	ecbd 8b04 	vpop	{d8-d9}
 800919c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80091a0:	2f00      	cmp	r7, #0
 80091a2:	db74      	blt.n	800928e <__kernel_rem_pio2f+0x5be>
 80091a4:	aa2e      	add	r2, sp, #184	; 0xb8
 80091a6:	1c7b      	adds	r3, r7, #1
 80091a8:	eddf 7a3b 	vldr	s15, [pc, #236]	; 8009298 <__kernel_rem_pio2f+0x5c8>
 80091ac:	eb02 0383 	add.w	r3, r2, r3, lsl #2
 80091b0:	ed33 7a01 	vldmdb	r3!, {s14}
 80091b4:	4293      	cmp	r3, r2
 80091b6:	ee77 7a87 	vadd.f32	s15, s15, s14
 80091ba:	d1f9      	bne.n	80091b0 <__kernel_rem_pio2f+0x4e0>
 80091bc:	9a01      	ldr	r2, [sp, #4]
 80091be:	b3a2      	cbz	r2, 800922a <__kernel_rem_pio2f+0x55a>
 80091c0:	eeb1 7a67 	vneg.f32	s14, s15
 80091c4:	eddd 6a2e 	vldr	s13, [sp, #184]	; 0xb8
 80091c8:	9b03      	ldr	r3, [sp, #12]
 80091ca:	2f00      	cmp	r7, #0
 80091cc:	ed83 7a00 	vstr	s14, [r3]
 80091d0:	ee76 7ae7 	vsub.f32	s15, s13, s15
 80091d4:	dd08      	ble.n	80091e8 <__kernel_rem_pio2f+0x518>
 80091d6:	ab2f      	add	r3, sp, #188	; 0xbc
 80091d8:	eb03 0787 	add.w	r7, r3, r7, lsl #2
 80091dc:	ecb3 7a01 	vldmia	r3!, {s14}
 80091e0:	42bb      	cmp	r3, r7
 80091e2:	ee77 7a87 	vadd.f32	s15, s15, s14
 80091e6:	d1f9      	bne.n	80091dc <__kernel_rem_pio2f+0x50c>
 80091e8:	9c01      	ldr	r4, [sp, #4]
 80091ea:	b10c      	cbz	r4, 80091f0 <__kernel_rem_pio2f+0x520>
 80091ec:	eef1 7a67 	vneg.f32	s15, s15
 80091f0:	9d03      	ldr	r5, [sp, #12]
 80091f2:	edc5 7a01 	vstr	s15, [r5, #4]
 80091f6:	e7ca      	b.n	800918e <__kernel_rem_pio2f+0x4be>
 80091f8:	2f00      	cmp	r7, #0
 80091fa:	db45      	blt.n	8009288 <__kernel_rem_pio2f+0x5b8>
 80091fc:	1c7b      	adds	r3, r7, #1
 80091fe:	aa2e      	add	r2, sp, #184	; 0xb8
 8009200:	eddf 7a25 	vldr	s15, [pc, #148]	; 8009298 <__kernel_rem_pio2f+0x5c8>
 8009204:	eb02 0383 	add.w	r3, r2, r3, lsl #2
 8009208:	ed33 7a01 	vldmdb	r3!, {s14}
 800920c:	4293      	cmp	r3, r2
 800920e:	ee77 7a87 	vadd.f32	s15, s15, s14
 8009212:	d1f9      	bne.n	8009208 <__kernel_rem_pio2f+0x538>
 8009214:	9e01      	ldr	r6, [sp, #4]
 8009216:	b10e      	cbz	r6, 800921c <__kernel_rem_pio2f+0x54c>
 8009218:	eef1 7a67 	vneg.f32	s15, s15
 800921c:	9903      	ldr	r1, [sp, #12]
 800921e:	edc1 7a00 	vstr	s15, [r1]
 8009222:	e7b4      	b.n	800918e <__kernel_rem_pio2f+0x4be>
 8009224:	eddf 7a1c 	vldr	s15, [pc, #112]	; 8009298 <__kernel_rem_pio2f+0x5c8>
 8009228:	e724      	b.n	8009074 <__kernel_rem_pio2f+0x3a4>
 800922a:	eeb0 7a67 	vmov.f32	s14, s15
 800922e:	e7c9      	b.n	80091c4 <__kernel_rem_pio2f+0x4f4>
 8009230:	f04f 0e01 	mov.w	lr, #1
 8009234:	e65f      	b.n	8008ef6 <__kernel_rem_pio2f+0x226>
 8009236:	9a02      	ldr	r2, [sp, #8]
 8009238:	f85c 3027 	ldr.w	r3, [ip, r7, lsl #2]
 800923c:	f8dd 8014 	ldr.w	r8, [sp, #20]
 8009240:	3a08      	subs	r2, #8
 8009242:	9202      	str	r2, [sp, #8]
 8009244:	2b00      	cmp	r3, #0
 8009246:	f47f aedd 	bne.w	8009004 <__kernel_rem_pio2f+0x334>
 800924a:	eb0c 0387 	add.w	r3, ip, r7, lsl #2
 800924e:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8009252:	3f01      	subs	r7, #1
 8009254:	3a08      	subs	r2, #8
 8009256:	2900      	cmp	r1, #0
 8009258:	d0f9      	beq.n	800924e <__kernel_rem_pio2f+0x57e>
 800925a:	9202      	str	r2, [sp, #8]
 800925c:	e6d2      	b.n	8009004 <__kernel_rem_pio2f+0x334>
 800925e:	9c01      	ldr	r4, [sp, #4]
 8009260:	eddf 7a0d 	vldr	s15, [pc, #52]	; 8009298 <__kernel_rem_pio2f+0x5c8>
 8009264:	2c00      	cmp	r4, #0
 8009266:	d181      	bne.n	800916c <__kernel_rem_pio2f+0x49c>
 8009268:	9d03      	ldr	r5, [sp, #12]
 800926a:	9a2e      	ldr	r2, [sp, #184]	; 0xb8
 800926c:	9b2f      	ldr	r3, [sp, #188]	; 0xbc
 800926e:	edc5 7a02 	vstr	s15, [r5, #8]
 8009272:	602a      	str	r2, [r5, #0]
 8009274:	606b      	str	r3, [r5, #4]
 8009276:	e78a      	b.n	800918e <__kernel_rem_pio2f+0x4be>
 8009278:	eebd 0ac0 	vcvt.s32.f32	s0, s0
 800927c:	4627      	mov	r7, r4
 800927e:	ee10 5a10 	vmov	r5, s0
 8009282:	f84c 5024 	str.w	r5, [ip, r4, lsl #2]
 8009286:	e6bd      	b.n	8009004 <__kernel_rem_pio2f+0x334>
 8009288:	eddf 7a03 	vldr	s15, [pc, #12]	; 8009298 <__kernel_rem_pio2f+0x5c8>
 800928c:	e7c2      	b.n	8009214 <__kernel_rem_pio2f+0x544>
 800928e:	eddf 7a02 	vldr	s15, [pc, #8]	; 8009298 <__kernel_rem_pio2f+0x5c8>
 8009292:	e793      	b.n	80091bc <__kernel_rem_pio2f+0x4ec>
 8009294:	08009a58 	.word	0x08009a58
 8009298:	00000000 	.word	0x00000000

0800929c <__kernel_sinf>:
 800929c:	ee10 3a10 	vmov	r3, s0
 80092a0:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
 80092a4:	f1b3 5f48 	cmp.w	r3, #838860800	; 0x32000000
 80092a8:	da04      	bge.n	80092b4 <__kernel_sinf+0x18>
 80092aa:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 80092ae:	ee17 3a90 	vmov	r3, s15
 80092b2:	b323      	cbz	r3, 80092fe <__kernel_sinf+0x62>
 80092b4:	ee60 7a00 	vmul.f32	s15, s0, s0
 80092b8:	ed9f 5a15 	vldr	s10, [pc, #84]	; 8009310 <__kernel_sinf+0x74>
 80092bc:	ed9f 6a15 	vldr	s12, [pc, #84]	; 8009314 <__kernel_sinf+0x78>
 80092c0:	eddf 6a15 	vldr	s13, [pc, #84]	; 8009318 <__kernel_sinf+0x7c>
 80092c4:	ed9f 7a15 	vldr	s14, [pc, #84]	; 800931c <__kernel_sinf+0x80>
 80092c8:	eddf 5a15 	vldr	s11, [pc, #84]	; 8009320 <__kernel_sinf+0x84>
 80092cc:	eea7 6a85 	vfma.f32	s12, s15, s10
 80092d0:	ee27 5a80 	vmul.f32	s10, s15, s0
 80092d4:	eee6 6a27 	vfma.f32	s13, s12, s15
 80092d8:	eea6 7aa7 	vfma.f32	s14, s13, s15
 80092dc:	eee7 5a27 	vfma.f32	s11, s14, s15
 80092e0:	b170      	cbz	r0, 8009300 <__kernel_sinf+0x64>
 80092e2:	ee65 5ac5 	vnmul.f32	s11, s11, s10
 80092e6:	eeb6 7a00 	vmov.f32	s14, #96	; 0x60
 80092ea:	eee0 5a87 	vfma.f32	s11, s1, s14
 80092ee:	ed9f 7a0d 	vldr	s14, [pc, #52]	; 8009324 <__kernel_sinf+0x88>
 80092f2:	eed5 0aa7 	vfnms.f32	s1, s11, s15
 80092f6:	eee5 0a07 	vfma.f32	s1, s10, s14
 80092fa:	ee30 0a60 	vsub.f32	s0, s0, s1
 80092fe:	4770      	bx	lr
 8009300:	ed9f 7a09 	vldr	s14, [pc, #36]	; 8009328 <__kernel_sinf+0x8c>
 8009304:	eea7 7aa5 	vfma.f32	s14, s15, s11
 8009308:	eea7 0a05 	vfma.f32	s0, s14, s10
 800930c:	4770      	bx	lr
 800930e:	bf00      	nop
 8009310:	2f2ec9d3 	.word	0x2f2ec9d3
 8009314:	b2d72f34 	.word	0xb2d72f34
 8009318:	3638ef1b 	.word	0x3638ef1b
 800931c:	b9500d01 	.word	0xb9500d01
 8009320:	3c088889 	.word	0x3c088889
 8009324:	3e2aaaab 	.word	0x3e2aaaab
 8009328:	be2aaaab 	.word	0xbe2aaaab

0800932c <fabsf>:
 800932c:	ee10 2a10 	vmov	r2, s0
 8009330:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8009334:	ee00 3a10 	vmov	s0, r3
 8009338:	4770      	bx	lr
 800933a:	bf00      	nop

0800933c <floorf>:
 800933c:	ee10 3a10 	vmov	r3, s0
 8009340:	f023 4000 	bic.w	r0, r3, #2147483648	; 0x80000000
 8009344:	0dc1      	lsrs	r1, r0, #23
 8009346:	397f      	subs	r1, #127	; 0x7f
 8009348:	2916      	cmp	r1, #22
 800934a:	b410      	push	{r4}
 800934c:	dc18      	bgt.n	8009380 <floorf+0x44>
 800934e:	2900      	cmp	r1, #0
 8009350:	461c      	mov	r4, r3
 8009352:	db22      	blt.n	800939a <floorf+0x5e>
 8009354:	481e      	ldr	r0, [pc, #120]	; (80093d0 <floorf+0x94>)
 8009356:	4108      	asrs	r0, r1
 8009358:	4218      	tst	r0, r3
 800935a:	d014      	beq.n	8009386 <floorf+0x4a>
 800935c:	eddf 7a1d 	vldr	s15, [pc, #116]	; 80093d4 <floorf+0x98>
 8009360:	ee70 7a27 	vadd.f32	s15, s0, s15
 8009364:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 8009368:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800936c:	dd0b      	ble.n	8009386 <floorf+0x4a>
 800936e:	2b00      	cmp	r3, #0
 8009370:	db21      	blt.n	80093b6 <floorf+0x7a>
 8009372:	ea24 0000 	bic.w	r0, r4, r0
 8009376:	ee00 0a10 	vmov	s0, r0
 800937a:	f85d 4b04 	ldr.w	r4, [sp], #4
 800937e:	4770      	bx	lr
 8009380:	f1b0 4fff 	cmp.w	r0, #2139095040	; 0x7f800000
 8009384:	d204      	bcs.n	8009390 <floorf+0x54>
 8009386:	ee00 3a10 	vmov	s0, r3
 800938a:	f85d 4b04 	ldr.w	r4, [sp], #4
 800938e:	4770      	bx	lr
 8009390:	ee30 0a00 	vadd.f32	s0, s0, s0
 8009394:	f85d 4b04 	ldr.w	r4, [sp], #4
 8009398:	4770      	bx	lr
 800939a:	eddf 7a0e 	vldr	s15, [pc, #56]	; 80093d4 <floorf+0x98>
 800939e:	ee70 7a27 	vadd.f32	s15, s0, s15
 80093a2:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 80093a6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80093aa:	ddec      	ble.n	8009386 <floorf+0x4a>
 80093ac:	2b00      	cmp	r3, #0
 80093ae:	db08      	blt.n	80093c2 <floorf+0x86>
 80093b0:	ed9f 0a09 	vldr	s0, [pc, #36]	; 80093d8 <floorf+0x9c>
 80093b4:	e7e9      	b.n	800938a <floorf+0x4e>
 80093b6:	f44f 0300 	mov.w	r3, #8388608	; 0x800000
 80093ba:	fa43 f101 	asr.w	r1, r3, r1
 80093be:	440c      	add	r4, r1
 80093c0:	e7d7      	b.n	8009372 <floorf+0x36>
 80093c2:	2800      	cmp	r0, #0
 80093c4:	eebf 0a00 	vmov.f32	s0, #240	; 0xf0
 80093c8:	bf08      	it	eq
 80093ca:	ee00 3a10 	vmoveq	s0, r3
 80093ce:	e7dc      	b.n	800938a <floorf+0x4e>
 80093d0:	007fffff 	.word	0x007fffff
 80093d4:	7149f2ca 	.word	0x7149f2ca
 80093d8:	00000000 	.word	0x00000000

080093dc <scalbnf>:
 80093dc:	b508      	push	{r3, lr}
 80093de:	ee10 3a10 	vmov	r3, s0
 80093e2:	f033 4100 	bics.w	r1, r3, #2147483648	; 0x80000000
 80093e6:	ed2d 8b02 	vpush	{d8}
 80093ea:	ee10 2a10 	vmov	r2, s0
 80093ee:	d011      	beq.n	8009414 <scalbnf+0x38>
 80093f0:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
 80093f4:	d211      	bcs.n	800941a <scalbnf+0x3e>
 80093f6:	f5b1 0f00 	cmp.w	r1, #8388608	; 0x800000
 80093fa:	d313      	bcc.n	8009424 <scalbnf+0x48>
 80093fc:	0dc9      	lsrs	r1, r1, #23
 80093fe:	4401      	add	r1, r0
 8009400:	29fe      	cmp	r1, #254	; 0xfe
 8009402:	dc30      	bgt.n	8009466 <scalbnf+0x8a>
 8009404:	2900      	cmp	r1, #0
 8009406:	dd1c      	ble.n	8009442 <scalbnf+0x66>
 8009408:	f022 42ff 	bic.w	r2, r2, #2139095040	; 0x7f800000
 800940c:	ea42 52c1 	orr.w	r2, r2, r1, lsl #23
 8009410:	ee00 2a10 	vmov	s0, r2
 8009414:	ecbd 8b02 	vpop	{d8}
 8009418:	bd08      	pop	{r3, pc}
 800941a:	ecbd 8b02 	vpop	{d8}
 800941e:	ee30 0a00 	vadd.f32	s0, s0, s0
 8009422:	bd08      	pop	{r3, pc}
 8009424:	eddf 7a1e 	vldr	s15, [pc, #120]	; 80094a0 <scalbnf+0xc4>
 8009428:	4a1e      	ldr	r2, [pc, #120]	; (80094a4 <scalbnf+0xc8>)
 800942a:	ee20 7a27 	vmul.f32	s14, s0, s15
 800942e:	4290      	cmp	r0, r2
 8009430:	ee17 3a10 	vmov	r3, s14
 8009434:	db22      	blt.n	800947c <scalbnf+0xa0>
 8009436:	f3c3 51c7 	ubfx	r1, r3, #23, #8
 800943a:	ee17 2a10 	vmov	r2, s14
 800943e:	3919      	subs	r1, #25
 8009440:	e7dd      	b.n	80093fe <scalbnf+0x22>
 8009442:	f111 0f16 	cmn.w	r1, #22
 8009446:	da1e      	bge.n	8009486 <scalbnf+0xaa>
 8009448:	f24c 3250 	movw	r2, #50000	; 0xc350
 800944c:	4290      	cmp	r0, r2
 800944e:	dc0a      	bgt.n	8009466 <scalbnf+0x8a>
 8009450:	ed9f 8a15 	vldr	s16, [pc, #84]	; 80094a8 <scalbnf+0xcc>
 8009454:	ee00 3a90 	vmov	s1, r3
 8009458:	eeb0 0a48 	vmov.f32	s0, s16
 800945c:	f000 f82a 	bl	80094b4 <copysignf>
 8009460:	ee20 0a08 	vmul.f32	s0, s0, s16
 8009464:	e7d6      	b.n	8009414 <scalbnf+0x38>
 8009466:	ed9f 8a11 	vldr	s16, [pc, #68]	; 80094ac <scalbnf+0xd0>
 800946a:	ee00 3a90 	vmov	s1, r3
 800946e:	eeb0 0a48 	vmov.f32	s0, s16
 8009472:	f000 f81f 	bl	80094b4 <copysignf>
 8009476:	ee20 0a08 	vmul.f32	s0, s0, s16
 800947a:	e7cb      	b.n	8009414 <scalbnf+0x38>
 800947c:	ed9f 0a0a 	vldr	s0, [pc, #40]	; 80094a8 <scalbnf+0xcc>
 8009480:	ee27 0a00 	vmul.f32	s0, s14, s0
 8009484:	e7c6      	b.n	8009414 <scalbnf+0x38>
 8009486:	3119      	adds	r1, #25
 8009488:	f022 42ff 	bic.w	r2, r2, #2139095040	; 0x7f800000
 800948c:	ea42 52c1 	orr.w	r2, r2, r1, lsl #23
 8009490:	eddf 7a07 	vldr	s15, [pc, #28]	; 80094b0 <scalbnf+0xd4>
 8009494:	ee07 2a10 	vmov	s14, r2
 8009498:	ee27 0a27 	vmul.f32	s0, s14, s15
 800949c:	e7ba      	b.n	8009414 <scalbnf+0x38>
 800949e:	bf00      	nop
 80094a0:	4c000000 	.word	0x4c000000
 80094a4:	ffff3cb0 	.word	0xffff3cb0
 80094a8:	0da24260 	.word	0x0da24260
 80094ac:	7149f2ca 	.word	0x7149f2ca
 80094b0:	33000000 	.word	0x33000000

080094b4 <copysignf>:
 80094b4:	ee10 1a10 	vmov	r1, s0
 80094b8:	f021 4200 	bic.w	r2, r1, #2147483648	; 0x80000000
 80094bc:	ee10 1a90 	vmov	r1, s1
 80094c0:	f001 4300 	and.w	r3, r1, #2147483648	; 0x80000000
 80094c4:	4313      	orrs	r3, r2
 80094c6:	ee00 3a10 	vmov	s0, r3
 80094ca:	4770      	bx	lr

080094cc <_init>:
 80094cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80094ce:	bf00      	nop
 80094d0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80094d2:	bc08      	pop	{r3}
 80094d4:	469e      	mov	lr, r3
 80094d6:	4770      	bx	lr

080094d8 <_fini>:
 80094d8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80094da:	bf00      	nop
 80094dc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80094de:	bc08      	pop	{r3}
 80094e0:	469e      	mov	lr, r3
 80094e2:	4770      	bx	lr
