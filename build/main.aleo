program temperatureconverter.aleo;

struct Conversion:
    initial_value as i64;
    direction as u8;


function convert:
    input r0 as Conversion.private;
    is.eq r0.direction 1u8 into r1;
    mul r0.initial_value 1000i64 into r2;
    mul r2 9000i64 into r3;
    div r3 5000i64 into r4;
    add r4 32000i64 into r5;
    div r5 1000i64 into r6;
    is.eq r0.direction 2u8 into r7;
    mul r0.initial_value 1000i64 into r8;
    sub r8 32000i64 into r9;
    mul r9 5000i64 into r10;
    div r10 9000i64 into r11;
    div r11 1000i64 into r12;
    is.eq r0.direction 3u8 into r13;
    mul r0.initial_value 1000i64 into r14;
    add r14 273150i64 into r15;
    div r15 1000i64 into r16;
    is.eq r0.direction 4u8 into r17;
    mul r0.initial_value 1000i64 into r18;
    sub r18 273150i64 into r19;
    div r19 1000i64 into r20;
    is.eq r0.direction 5u8 into r21;
    mul r0.initial_value 1000i64 into r22;
    sub r22 32000i64 into r23;
    mul r23 5000i64 into r24;
    div r24 9000i64 into r25;
    add r25 273150i64 into r26;
    div r26 1000i64 into r27;
    is.eq r0.direction 6u8 into r28;
    mul r0.initial_value 1000i64 into r29;
    sub r29 273150i64 into r30;
    mul r30 9000i64 into r31;
    div r31 5000i64 into r32;
    add r32 32000i64 into r33;
    div r33 1000i64 into r34;
    ternary r28 r34 0i64 into r35;
    ternary r21 r27 r35 into r36;
    ternary r17 r20 r36 into r37;
    ternary r13 r16 r37 into r38;
    ternary r7 r12 r38 into r39;
    ternary r1 r6 r39 into r40;
    output r40 as i64.private;
