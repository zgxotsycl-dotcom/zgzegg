.class public Lcom/google/android/gms/b/bm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/bg;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/b/sk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/ab;)V
    .locals 7

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->f()Lcom/google/android/gms/b/sr;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>()V

    move-object v1, p1

    move v4, v3

    move-object v5, p3

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/b/sr;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/b/ab;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/b/sk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/bm;->a:Lcom/google/android/gms/b/sk;

    iget-object v0, p0, Lcom/google/android/gms/b/bm;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->a()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/b/bm;)Lcom/google/android/gms/b/sk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/bm;->a:Lcom/google/android/gms/b/sk;

    return-object v0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/o;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/b/qk;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/bm;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->destroy()V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/t;Lcom/google/android/gms/b/fk;Lcom/google/android/gms/ads/internal/overlay/aa;ZLcom/google/android/gms/b/gg;Lcom/google/android/gms/b/gi;Lcom/google/android/gms/ads/internal/j;Lcom/google/android/gms/b/li;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/b/bm;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->k()Lcom/google/android/gms/b/sl;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/ads/internal/j;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Lcom/google/android/gms/ads/internal/j;-><init>(Z)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/b/sl;->a(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/t;Lcom/google/android/gms/b/fk;Lcom/google/android/gms/ads/internal/overlay/aa;ZLcom/google/android/gms/b/gg;Lcom/google/android/gms/b/gi;Lcom/google/android/gms/ads/internal/j;Lcom/google/android/gms/b/li;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/b/bh;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/bm;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->k()Lcom/google/android/gms/b/sl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/b/bs;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/b/bs;-><init>(Lcom/google/android/gms/b/bm;Lcom/google/android/gms/b/bh;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/sl;->a(Lcom/google/android/gms/b/sn;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/b/bp;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/b/bp;-><init>(Lcom/google/android/gms/b/bm;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/b/bm;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/b/fy;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/bm;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->k()Lcom/google/android/gms/b/sl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/b/sl;->a(Ljava/lang/String;Lcom/google/android/gms/b/fy;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/bo;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/b/bo;-><init>(Lcom/google/android/gms/b/bm;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/b/bm;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/bn;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/b/bn;-><init>(Lcom/google/android/gms/b/bm;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/b/bm;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Lcom/google/android/gms/b/bu;
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/bv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/bv;-><init>(Lcom/google/android/gms/b/bt;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/br;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/b/br;-><init>(Lcom/google/android/gms/b/bm;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/b/bm;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/google/android/gms/b/fy;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/bm;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->k()Lcom/google/android/gms/b/sl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/b/sl;->b(Ljava/lang/String;Lcom/google/android/gms/b/fy;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/bq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/b/bq;-><init>(Lcom/google/android/gms/b/bm;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/b/bm;->a(Ljava/lang/Runnable;)V

    return-void
.end method
