.class public Lcom/google/android/gms/b/ni;
.super Lcom/google/android/gms/b/mx;

# interfaces
.implements Lcom/google/android/gms/b/sn;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/b/pk;Lcom/google/android/gms/b/sk;Lcom/google/android/gms/b/nh;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/b/mx;-><init>(Landroid/content/Context;Lcom/google/android/gms/b/pk;Lcom/google/android/gms/b/sk;Lcom/google/android/gms/b/nh;)V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/b/ni;->e:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->e:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/ni;->c:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->k()Lcom/google/android/gms/b/sl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/b/sl;->a(Lcom/google/android/gms/b/sn;)V

    invoke-virtual {p0}, Lcom/google/android/gms/b/ni;->f()V

    const-string v0, "Loading HTML in WebView."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/ni;->c:Lcom/google/android/gms/b/sk;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->e()Lcom/google/android/gms/b/qk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/b/ni;->e:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/b/qk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/b/ni;->e:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->c:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/b/sk;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected f()V
    .locals 0

    return-void
.end method
