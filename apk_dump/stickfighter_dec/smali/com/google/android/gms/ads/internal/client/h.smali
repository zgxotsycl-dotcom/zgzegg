.class public Lcom/google/android/gms/ads/internal/client/h;
.super Lcom/google/android/gms/a/e;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.AdManagerCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/a/e;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/b/jr;I)Lcom/google/android/gms/ads/internal/client/af;
    .locals 7

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/a/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/h;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/ai;

    const v5, 0x7e9e10

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/client/ai;->a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/b/js;II)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/ag;->a(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/af;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/a/f; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "Could not create remote AdManager."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/b/jr;)Lcom/google/android/gms/ads/internal/client/af;
    .locals 8

    const v6, 0x7e9e10

    const/4 v5, 0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/o;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/h;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/b/jr;I)Lcom/google/android/gms/ads/internal/client/af;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Using BannerAdManager from the client jar."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    new-instance v7, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct {v7, v6, v6, v5}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>(IIZ)V

    new-instance v0, Lcom/google/android/gms/ads/internal/m;

    invoke-static {}, Lcom/google/android/gms/ads/internal/i;->a()Lcom/google/android/gms/ads/internal/i;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/m;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/b/js;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/i;)V

    :cond_1
    return-object v0
.end method

.method protected a(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/ai;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/aj;->a(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/ai;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/b/jr;)Lcom/google/android/gms/ads/internal/client/af;
    .locals 12

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/o;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/h;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/b/jr;I)Lcom/google/android/gms/ads/internal/client/af;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Using InterstitialAdManager from the client jar."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const v0, 0x7e9e10

    const v1, 0x7e9e10

    const/4 v2, 0x1

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>(IIZ)V

    sget-object v0, Lcom/google/android/gms/b/db;->ae:Lcom/google/android/gms/b/cs;

    invoke-virtual {v0}, Lcom/google/android/gms/b/cs;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/b/ia;

    invoke-static {}, Lcom/google/android/gms/ads/internal/i;->a()Lcom/google/android/gms/ads/internal/i;

    move-result-object v5

    move-object v1, p1

    move-object v2, p3

    move-object/from16 v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/b/ia;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/b/js;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/i;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v5, Lcom/google/android/gms/ads/internal/t;

    invoke-static {}, Lcom/google/android/gms/ads/internal/i;->a()Lcom/google/android/gms/ads/internal/i;

    move-result-object v11

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object v10, v4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/ads/internal/t;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/b/js;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/i;)V

    move-object v0, v5

    goto :goto_0
.end method

.method protected synthetic b(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/h;->a(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/ai;

    move-result-object v0

    return-object v0
.end method
