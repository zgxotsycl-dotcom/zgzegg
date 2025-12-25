.class public Lcom/tweber/stickfighter/j/b;
.super Ljava/lang/Object;


# direct methods
.method private static a([B[III)V
    .locals 11

    mul-int v3, p2, p3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, p3, :cond_7

    const/4 v0, 0x0

    move v4, v0

    move v5, v1

    move v6, v2

    :goto_1
    if-ge v4, p2, :cond_6

    aget v0, p1, v5

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x10

    aget v0, p1, v5

    const v2, 0xff00

    and-int/2addr v0, v2

    shr-int/lit8 v7, v0, 0x8

    aget v0, p1, v5

    and-int/lit16 v9, v0, 0xff

    mul-int/lit8 v0, v9, 0x42

    mul-int/lit16 v2, v7, 0x81

    add-int/2addr v0, v2

    mul-int/lit8 v2, v1, 0x19

    add-int/2addr v0, v2

    add-int/lit16 v0, v0, 0x80

    shr-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v2, v9, -0x26

    mul-int/lit8 v10, v7, 0x4a

    sub-int/2addr v2, v10

    mul-int/lit8 v10, v1, 0x70

    add-int/2addr v2, v10

    add-int/lit16 v2, v2, 0x80

    shr-int/lit8 v2, v2, 0x8

    add-int/lit16 v2, v2, 0x80

    mul-int/lit8 v9, v9, 0x70

    mul-int/lit8 v7, v7, 0x5e

    sub-int v7, v9, v7

    mul-int/lit8 v1, v1, 0x12

    sub-int v1, v7, v1

    add-int/lit16 v1, v1, 0x80

    shr-int/lit8 v1, v1, 0x8

    add-int/lit16 v1, v1, 0x80

    add-int/lit8 v7, v6, 0x1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_2
    int-to-byte v0, v0

    aput-byte v0, p0, v6

    rem-int/lit8 v0, v8, 0x2

    if-nez v0, :cond_8

    rem-int/lit8 v0, v5, 0x2

    if-nez v0, :cond_8

    add-int/lit8 v6, v3, 0x1

    if-gez v1, :cond_2

    const/4 v0, 0x0

    :goto_3
    int-to-byte v0, v0

    aput-byte v0, p0, v3

    add-int/lit8 v1, v6, 0x1

    if-gez v2, :cond_4

    const/4 v0, 0x0

    :goto_4
    int-to-byte v0, v0

    aput-byte v0, p0, v6

    move v0, v1

    :goto_5
    add-int/lit8 v2, v5, 0x1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v5, v2

    move v3, v0

    move v6, v7

    goto :goto_1

    :cond_1
    const/16 v9, 0xff

    if-le v0, v9, :cond_0

    const/16 v0, 0xff

    goto :goto_2

    :cond_2
    const/16 v0, 0xff

    if-le v1, v0, :cond_3

    const/16 v0, 0xff

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    const/16 v0, 0xff

    if-le v2, v0, :cond_5

    const/16 v0, 0xff

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move v1, v5

    move v2, v6

    goto/16 :goto_0

    :cond_7
    return-void

    :cond_8
    move v0, v3

    goto :goto_5
.end method

.method public static a(I)Z
    .locals 3

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x27 -> :sswitch_1
        0x7f000100 -> :sswitch_1
    .end sparse-switch
.end method

.method public static a(IILandroid/graphics/Bitmap;)[B
    .locals 8

    const/4 v2, 0x0

    mul-int v0, p0, p1

    new-array v1, v0, [I

    move-object v0, p2

    move v3, p0

    move v4, v2

    move v5, v2

    move v6, p0

    move v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int v0, p0, p1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    invoke-static {v0, v1, p0, p1}, Lcom/tweber/stickfighter/j/b;->a([B[III)V

    return-object v0
.end method

.method public static b(IILandroid/graphics/Bitmap;)[B
    .locals 8

    const/4 v2, 0x0

    mul-int v0, p0, p1

    new-array v1, v0, [I

    move-object v0, p2

    move v3, p0

    move v4, v2

    move v5, v2

    move v6, p0

    move v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int v0, p0, p1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    invoke-static {v0, v1, p0, p1}, Lcom/tweber/stickfighter/j/b;->b([B[III)[B

    return-object v0
.end method

.method private static b([B[III)[B
    .locals 12

    mul-int v5, p2, p3

    div-int/lit8 v0, v5, 0x4

    const/4 v2, 0x0

    add-int v3, v5, v0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, p3, :cond_7

    const/4 v0, 0x0

    move v6, v0

    move v7, v1

    move v4, v2

    :goto_1
    if-ge v6, p2, :cond_6

    aget v0, p1, v7

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    shr-int/lit8 v2, v0, 0x10

    aget v0, p1, v7

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v8, v0, 0x8

    aget v0, p1, v7

    and-int/lit16 v10, v0, 0xff

    mul-int/lit8 v0, v2, 0x42

    mul-int/lit16 v1, v8, 0x81

    add-int/2addr v0, v1

    mul-int/lit8 v1, v10, 0x19

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x80

    shr-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v1, v2, -0x26

    mul-int/lit8 v11, v8, 0x4a

    sub-int/2addr v1, v11

    mul-int/lit8 v11, v10, 0x70

    add-int/2addr v1, v11

    add-int/lit16 v1, v1, 0x80

    shr-int/lit8 v1, v1, 0x8

    add-int/lit16 v1, v1, 0x80

    mul-int/lit8 v2, v2, 0x70

    mul-int/lit8 v8, v8, 0x5e

    sub-int/2addr v2, v8

    mul-int/lit8 v8, v10, 0x12

    sub-int/2addr v2, v8

    add-int/lit16 v2, v2, 0x80

    shr-int/lit8 v2, v2, 0x8

    add-int/lit16 v2, v2, 0x80

    add-int/lit8 v8, v4, 0x1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_2
    int-to-byte v0, v0

    aput-byte v0, p0, v4

    rem-int/lit8 v0, v9, 0x2

    if-nez v0, :cond_8

    rem-int/lit8 v0, v7, 0x2

    if-nez v0, :cond_8

    add-int/lit8 v4, v5, 0x1

    if-gez v1, :cond_2

    const/4 v0, 0x0

    :goto_3
    int-to-byte v0, v0

    aput-byte v0, p0, v5

    add-int/lit8 v1, v3, 0x1

    if-gez v2, :cond_4

    const/4 v0, 0x0

    :goto_4
    int-to-byte v0, v0

    aput-byte v0, p0, v3

    move v0, v1

    move v1, v4

    :goto_5
    add-int/lit8 v3, v7, 0x1

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v7, v3

    move v5, v1

    move v4, v8

    move v3, v0

    goto :goto_1

    :cond_1
    const/16 v10, 0xff

    if-le v0, v10, :cond_0

    const/16 v0, 0xff

    goto :goto_2

    :cond_2
    const/16 v0, 0xff

    if-le v1, v0, :cond_3

    const/16 v0, 0xff

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    const/16 v0, 0xff

    if-le v2, v0, :cond_5

    const/16 v0, 0xff

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    move v1, v7

    move v2, v4

    goto/16 :goto_0

    :cond_7
    return-object p0

    :cond_8
    move v0, v3

    move v1, v5

    goto :goto_5
.end method
