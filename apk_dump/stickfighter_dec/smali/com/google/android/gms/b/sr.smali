.class public Lcom/google/android/gms/b/sr;
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


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/b/ab;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/b/sk;
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/b/sr;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/b/ab;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/dq;Lcom/google/android/gms/ads/internal/i;)Lcom/google/android/gms/b/sk;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/b/ab;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/dq;Lcom/google/android/gms/ads/internal/i;)Lcom/google/android/gms/b/sk;
    .locals 2

    new-instance v0, Lcom/google/android/gms/b/ss;

    invoke-static/range {p1 .. p8}, Lcom/google/android/gms/b/st;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/b/ab;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/dq;Lcom/google/android/gms/ads/internal/i;)Lcom/google/android/gms/b/st;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/b/ss;-><init>(Lcom/google/android/gms/b/sk;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->g()Lcom/google/android/gms/b/qn;

    move-result-object v1

    invoke-virtual {v1, v0, p4}, Lcom/google/android/gms/b/qn;->a(Lcom/google/android/gms/b/sk;Z)Lcom/google/android/gms/b/sl;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/sk;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->g()Lcom/google/android/gms/b/qn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/b/qn;->c(Lcom/google/android/gms/b/sk;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/sk;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object v0
.end method
