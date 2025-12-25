.class public Lcom/google/android/gms/b/bi;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/bl;Lcom/google/android/gms/b/ab;)Lcom/google/android/gms/b/bg;
    .locals 2

    new-instance v0, Lcom/google/android/gms/b/bm;

    invoke-direct {v0, p1, p2, p4}, Lcom/google/android/gms/b/bm;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/ab;)V

    iput-object v0, p3, Lcom/google/android/gms/b/bl;->a:Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/b/bk;

    invoke-direct {v1, p0, p3, v0}, Lcom/google/android/gms/b/bk;-><init>(Lcom/google/android/gms/b/bi;Lcom/google/android/gms/b/bl;Lcom/google/android/gms/b/bg;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/bg;->a(Lcom/google/android/gms/b/bh;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/b/bi;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/bl;Lcom/google/android/gms/b/ab;)Lcom/google/android/gms/b/bg;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/b/bi;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/bl;Lcom/google/android/gms/b/ab;)Lcom/google/android/gms/b/bg;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/b/ab;)Ljava/util/concurrent/Future;
    .locals 8

    new-instance v4, Lcom/google/android/gms/b/bl;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/google/android/gms/b/bl;-><init>(Lcom/google/android/gms/b/bj;)V

    sget-object v7, Lcom/google/android/gms/b/qk;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/b/bj;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/b/bj;-><init>(Lcom/google/android/gms/b/bi;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/bl;Lcom/google/android/gms/b/ab;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v4
.end method
