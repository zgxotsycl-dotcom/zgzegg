.class Lcom/tweber/stickfighter/e/l;
.super Landroid/os/AsyncTask;


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final synthetic c:Lcom/tweber/stickfighter/e/e;

.field private final d:Lcom/tweber/stickfighter/h/v;

.field private e:I

.field private final f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/tweber/stickfighter/e/e;I)V
    .locals 1

    iput-object p1, p0, Lcom/tweber/stickfighter/e/l;->c:Lcom/tweber/stickfighter/e/e;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tweber/stickfighter/e/l;->a:I

    const-string v0, "video/avc"

    iput-object v0, p0, Lcom/tweber/stickfighter/e/l;->b:Ljava/lang/String;

    invoke-static {}, Lcom/tweber/stickfighter/h/v;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/e/l;->d:Lcom/tweber/stickfighter/h/v;

    iput p2, p0, Lcom/tweber/stickfighter/e/l;->f:I

    return-void
.end method

.method private a(Landroid/media/MediaCodec;)I
    .locals 10

    const v2, 0x7f000100

    const/16 v1, 0x27

    const/16 v0, 0x15

    const/16 v4, 0x14

    const/16 v3, 0x13

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v5

    const-string v6, "video/avc"

    invoke-virtual {v5, v6}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v5, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v8, v7

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v8, :cond_0

    aget v9, v7, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    return v0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not find a compatible encoder color format"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/media/MediaCodec;Landroid/media/MediaMuxer;[Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;Lcom/tweber/stickfighter/h/k;Lcom/tweber/stickfighter/h/j;JLandroid/graphics/Canvas;Landroid/graphics/Bitmap;)J
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/tweber/stickfighter/e/l;->d:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/v;->e()I

    move-result v7

    move-object v2, p5

    move-object v3, p6

    move-object/from16 v4, p9

    invoke-interface/range {v2 .. v7}, Lcom/tweber/stickfighter/h/k;->a(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;ZLcom/tweber/stickfighter/h/p;I)V

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    iget v2, p0, Lcom/tweber/stickfighter/e/l;->i:I

    invoke-static {v2}, Lcom/tweber/stickfighter/j/b;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/tweber/stickfighter/e/l;->g:I

    iget v4, p0, Lcom/tweber/stickfighter/e/l;->h:I

    move-object/from16 v0, p10

    invoke-static {v2, v4, v0}, Lcom/tweber/stickfighter/j/b;->a(IILandroid/graphics/Bitmap;)[B

    move-result-object v2

    :goto_0
    array-length v5, v2

    aget-object v4, p3, v3

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-wide/from16 v6, p7

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    move-wide/from16 v0, p7

    long-to-float v2, v0

    const v4, 0x49742400    # 1000000.0f

    iget v5, p0, Lcom/tweber/stickfighter/e/l;->e:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    float-to-long v4, v2

    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/16 v6, -0x1

    invoke-virtual {p1, v2, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    if-ltz v6, :cond_2

    const/4 v7, 0x0

    aget-object v8, p4, v6

    invoke-virtual {p2, v7, v8, v2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    aget-object v2, p4, v6

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v2, 0x0

    invoke-virtual {p1, v6, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_0
    :goto_1
    aget-object v2, p3, v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-wide v4

    :cond_1
    iget v2, p0, Lcom/tweber/stickfighter/e/l;->g:I

    iget v4, p0, Lcom/tweber/stickfighter/e/l;->h:I

    move-object/from16 v0, p10

    invoke-static {v2, v4, v0}, Lcom/tweber/stickfighter/j/b;->b(IILandroid/graphics/Bitmap;)[B

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, -0x2

    if-ne v6, v2, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    invoke-virtual {p2}, Landroid/media/MediaMuxer;->start()V

    goto :goto_1
.end method

.method private a()Landroid/media/MediaCodec;
    .locals 7

    const/4 v6, 0x0

    const/16 v3, 0x2d0

    const/4 v5, 0x1

    const/16 v2, 0x1e

    iget-object v0, p0, Lcom/tweber/stickfighter/e/l;->c:Lcom/tweber/stickfighter/e/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/e/e;->i(Lcom/tweber/stickfighter/e/e;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/b/y;

    iget v1, v0, Lcom/tweber/stickfighter/b/y;->a:I

    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v1

    if-nez v1, :cond_0

    iget v0, v0, Lcom/tweber/stickfighter/b/y;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This will never happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput v3, p0, Lcom/tweber/stickfighter/e/l;->g:I

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/tweber/stickfighter/e/l;->h:I

    iput v2, p0, Lcom/tweber/stickfighter/e/l;->e:I

    const v0, 0x5b8d80

    :goto_0
    const-string v1, "video/avc"

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tweber/stickfighter/e/l;->a(Landroid/media/MediaCodec;)I

    move-result v2

    iput v2, p0, Lcom/tweber/stickfighter/e/l;->i:I

    const-string v2, "video/avc"

    iget v3, p0, Lcom/tweber/stickfighter/e/l;->g:I

    iget v4, p0, Lcom/tweber/stickfighter/e/l;->h:I

    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "bitrate"

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "frame-rate"

    iget v3, p0, Lcom/tweber/stickfighter/e/l;->e:I

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "color-format"

    iget v3, p0, Lcom/tweber/stickfighter/e/l;->i:I

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "i-frame-interval"

    invoke-virtual {v2, v0, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v6, v6, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    return-object v1

    :pswitch_1
    const/16 v0, 0x500

    iput v0, p0, Lcom/tweber/stickfighter/e/l;->g:I

    iput v3, p0, Lcom/tweber/stickfighter/e/l;->h:I

    iput v2, p0, Lcom/tweber/stickfighter/e/l;->e:I

    const v0, 0xb71b00

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x780

    iput v0, p0, Lcom/tweber/stickfighter/e/l;->g:I

    const/16 v0, 0x438

    iput v0, p0, Lcom/tweber/stickfighter/e/l;->h:I

    iput v2, p0, Lcom/tweber/stickfighter/e/l;->e:I

    const v0, 0x1036640

    goto :goto_0

    :cond_0
    iget v0, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/tweber/stickfighter/e/l;->g:I

    iget v0, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/tweber/stickfighter/e/l;->h:I

    iget v0, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iput v0, p0, Lcom/tweber/stickfighter/e/l;->e:I

    iget v0, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/media/MediaCodec;Landroid/media/MediaMuxer;)V
    .locals 28

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tweber/stickfighter/e/l;->g:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tweber/stickfighter/e/l;->h:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v9, Lcom/tweber/stickfighter/h/j;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tweber/stickfighter/e/l;->d:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/v;->d()F

    move-result v2

    invoke-direct {v9, v2, v12}, Lcom/tweber/stickfighter/h/j;-><init>(FLandroid/graphics/Canvas;)V

    const-wide/16 v10, 0x0

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tweber/stickfighter/e/l;->d:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v3}, Lcom/tweber/stickfighter/h/v;->b()I

    move-result v3

    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, Lcom/tweber/stickfighter/d/b;->b(J)I

    move-result v26

    const/4 v2, 0x0

    move v14, v2

    :goto_0
    add-int/lit8 v2, v26, -0x1

    if-ge v14, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tweber/stickfighter/e/l;->d:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/tweber/stickfighter/c/a;->a(I)Lcom/tweber/stickfighter/h/p;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tweber/stickfighter/h/p;->c()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tweber/stickfighter/e/l;->d:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v2

    add-int/lit8 v3, v14, 0x1

    invoke-virtual {v2, v3}, Lcom/tweber/stickfighter/c/a;->a(I)Lcom/tweber/stickfighter/h/p;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/tweber/stickfighter/h/p;->c()V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v3 .. v13}, Lcom/tweber/stickfighter/e/l;->a(Landroid/media/MediaCodec;Landroid/media/MediaMuxer;[Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;Lcom/tweber/stickfighter/h/k;Lcom/tweber/stickfighter/h/j;JLandroid/graphics/Canvas;Landroid/graphics/Bitmap;)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tweber/stickfighter/e/l;->e:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tweber/stickfighter/e/l;->f:I

    div-int v3, v2, v3

    const/4 v2, 0x1

    :goto_1
    if-gt v2, v3, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    add-int/lit8 v5, v3, 0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v2

    mul-float/2addr v4, v5

    move-object/from16 v0, v27

    invoke-static {v8, v0, v4}, Lcom/tweber/stickfighter/h/p;->a(Lcom/tweber/stickfighter/h/p;Lcom/tweber/stickfighter/h/p;F)Lcom/tweber/stickfighter/h/k;

    move-result-object v20

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v21, v9

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    invoke-direct/range {v15 .. v25}, Lcom/tweber/stickfighter/e/l;->a(Landroid/media/MediaCodec;Landroid/media/MediaMuxer;[Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;Lcom/tweber/stickfighter/h/k;Lcom/tweber/stickfighter/h/j;JLandroid/graphics/Canvas;Landroid/graphics/Bitmap;)J

    move-result-wide v22

    invoke-virtual/range {p0 .. p0}, Lcom/tweber/stickfighter/e/l;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tweber/stickfighter/e/l;->c:Lcom/tweber/stickfighter/e/e;

    invoke-static {v2}, Lcom/tweber/stickfighter/e/e;->j(Lcom/tweber/stickfighter/e/e;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_2
    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v14, 0x1

    int-to-float v2, v2

    move/from16 v0, v26

    int-to-float v3, v0

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tweber/stickfighter/e/l;->publishProgress([Ljava/lang/Object;)V

    add-int/lit8 v2, v14, 0x1

    move v14, v2

    move-wide/from16 v10, v22

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tweber/stickfighter/e/l;->d:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v2

    add-int/lit8 v3, v26, -0x1

    invoke-virtual {v2, v3}, Lcom/tweber/stickfighter/c/a;->a(I)Lcom/tweber/stickfighter/h/p;

    move-result-object v8

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v3 .. v13}, Lcom/tweber/stickfighter/e/l;->a(Landroid/media/MediaCodec;Landroid/media/MediaMuxer;[Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;Lcom/tweber/stickfighter/h/k;Lcom/tweber/stickfighter/h/j;JLandroid/graphics/Canvas;Landroid/graphics/Bitmap;)J

    move-result-wide v12

    :goto_3
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/32 v4, 0xf4240

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    if-gez v3, :cond_3

    const-wide/16 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x4

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v2, v2, [B

    aget-object v4, v7, v3

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    aget-object v2, v6, v9

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    aget-object v2, v7, v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaCodec;->flush()V

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaCodec;->release()V

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaMuxer;->stop()V

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaMuxer;->release()V

    goto/16 :goto_2

    :cond_3
    const/4 v4, 0x0

    aget-object v5, v7, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    aget-object v2, v7, v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_3
.end method

.method private b()Landroid/media/MediaMuxer;
    .locals 3

    iget-object v0, p0, Lcom/tweber/stickfighter/e/l;->c:Lcom/tweber/stickfighter/e/e;

    invoke-direct {p0}, Lcom/tweber/stickfighter/e/l;->c()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/e/e;->a(Lcom/tweber/stickfighter/e/e;Ljava/io/File;)Ljava/io/File;

    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/tweber/stickfighter/e/l;->c:Lcom/tweber/stickfighter/e/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/e/e;->j(Lcom/tweber/stickfighter/e/e;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private c()Ljava/io/File;
    .locals 4

    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/e/l;->d:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/v;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Animation"

    const-string v3, ".mp4"

    invoke-static {v0, v1, v2, v3}, Lcom/tweber/stickfighter/j/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/tweber/stickfighter/e/l;->a()Landroid/media/MediaCodec;

    move-result-object v0

    invoke-direct {p0}, Lcom/tweber/stickfighter/e/l;->b()Landroid/media/MediaMuxer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tweber/stickfighter/e/l;->a(Landroid/media/MediaCodec;Landroid/media/MediaMuxer;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/e/l;->c:Lcom/tweber/stickfighter/e/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/e/e;->a(Lcom/tweber/stickfighter/e/e;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "Create video"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 5

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tweber/stickfighter/e/l;->c:Lcom/tweber/stickfighter/e/e;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/e/e;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0c008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0c0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/tweber/stickfighter/e/l;->c:Lcom/tweber/stickfighter/e/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/e/e;->j(Lcom/tweber/stickfighter/e/e;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tweber/stickfighter/e/l;->c:Lcom/tweber/stickfighter/e/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/e/e;->j(Lcom/tweber/stickfighter/e/e;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/e/l;->c:Lcom/tweber/stickfighter/e/e;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/e/e;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    iget-object v2, p0, Lcom/tweber/stickfighter/e/l;->c:Lcom/tweber/stickfighter/e/e;

    invoke-static {v2}, Lcom/tweber/stickfighter/e/e;->j(Lcom/tweber/stickfighter/e/e;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "video/mp4"

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :cond_0
    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/tweber/stickfighter/e/l;->c:Lcom/tweber/stickfighter/e/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/e/e;->k(Lcom/tweber/stickfighter/e/e;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/e/l;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/e/l;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/e/l;->a([Ljava/lang/Integer;)V

    return-void
.end method
