.class public Lcom/google/android/gms/b/nl;
.super Lcom/google/android/gms/b/ps;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/b/nh;

.field private final b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

.field private final c:Lcom/google/android/gms/b/pk;

.field private final d:Lcom/google/android/gms/b/nn;

.field private final e:Ljava/lang/Object;

.field private f:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/y;Lcom/google/android/gms/b/bi;Lcom/google/android/gms/b/pk;Lcom/google/android/gms/b/ab;Lcom/google/android/gms/b/nh;)V
    .locals 7

    new-instance v0, Lcom/google/android/gms/b/nn;

    new-instance v4, Lcom/google/android/gms/b/rf;

    invoke-direct {v4, p1}, Lcom/google/android/gms/b/rf;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/b/nn;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/y;Lcom/google/android/gms/b/bi;Lcom/google/android/gms/b/rf;Lcom/google/android/gms/b/ab;Lcom/google/android/gms/b/pk;)V

    invoke-direct {p0, p4, p6, v0}, Lcom/google/android/gms/b/nl;-><init>(Lcom/google/android/gms/b/pk;Lcom/google/android/gms/b/nh;Lcom/google/android/gms/b/nn;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/b/pk;Lcom/google/android/gms/b/nh;Lcom/google/android/gms/b/nn;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/b/ps;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/nl;->e:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/b/nl;->c:Lcom/google/android/gms/b/pk;

    iget-object v0, p1, Lcom/google/android/gms/b/pk;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object v0, p0, Lcom/google/android/gms/b/nl;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object p2, p0, Lcom/google/android/gms/b/nl;->a:Lcom/google/android/gms/b/nh;

    iput-object p3, p0, Lcom/google/android/gms/b/nl;->d:Lcom/google/android/gms/b/nn;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/b/nl;)Lcom/google/android/gms/b/nh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/nl;->a:Lcom/google/android/gms/b/nh;

    return-object v0
.end method

.method private a(I)Lcom/google/android/gms/b/pj;
    .locals 31

    new-instance v2, Lcom/google/android/gms/b/pj;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/b/nl;->c:Lcom/google/android/gms/b/pk;

    iget-object v3, v3, Lcom/google/android/gms/b/pk;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->c:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nl;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->l:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nl;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->k:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nl;->c:Lcom/google/android/gms/b/pk;

    iget-object v6, v6, Lcom/google/android/gms/b/pk;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v12, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->i:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nl;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->i:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nl;->c:Lcom/google/android/gms/b/pk;

    iget-object v0, v6, Lcom/google/android/gms/b/pk;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nl;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->g:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nl;->c:Lcom/google/android/gms/b/pk;

    iget-wide v0, v6, Lcom/google/android/gms/b/pk;->f:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nl;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->n:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nl;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->o:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/b/nl;->c:Lcom/google/android/gms/b/pk;

    iget-object v0, v6, Lcom/google/android/gms/b/pk;->h:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/b/pj;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/b/sk;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/b/jc;Lcom/google/android/gms/b/jv;Ljava/lang/String;Lcom/google/android/gms/b/jd;Lcom/google/android/gms/b/jf;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/h;)V

    return-object v2
.end method


# virtual methods
.method public a()V
    .locals 8

    const/4 v3, -0x1

    const/4 v2, -0x2

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/b/nl;->e:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/b/nl;->d:Lcom/google/android/gms/b/nn;

    invoke-static {v0}, Lcom/google/android/gms/b/qe;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/b/sb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/nl;->f:Ljava/util/concurrent/Future;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/b/nl;->f:Ljava/util/concurrent/Future;

    const-wide/32 v4, 0xea60

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/pj;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3

    move v1, v2

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    sget-object v1, Lcom/google/android/gms/b/qk;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/b/nm;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/b/nm;-><init>(Lcom/google/android/gms/b/nl;Lcom/google/android/gms/b/pj;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_0
    move-exception v0

    const-string v0, "Timed out waiting for native ad."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/b/nl;->f:Ljava/util/concurrent/Future;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    move v1, v3

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/b/nl;->a(I)Lcom/google/android/gms/b/pj;

    move-result-object v0

    goto :goto_1
.end method

.method public b()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/b/nl;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/nl;->f:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/nl;->f:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
