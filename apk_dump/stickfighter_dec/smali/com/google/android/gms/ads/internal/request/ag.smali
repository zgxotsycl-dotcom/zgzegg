.class Lcom/google/android/gms/ads/internal/request/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/sg;


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/request/af;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/af;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/ag;->a:Lcom/google/android/gms/ads/internal/request/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/bt;)V
    .locals 2

    :try_start_0
    const-string v0, "AFMA_getAdapterLessMediationAd"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/ag;->a:Lcom/google/android/gms/ads/internal/request/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/af;->a:Lorg/json/JSONObject;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/b/bt;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error requesting an ad url"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/request/ad;->c()Lcom/google/android/gms/b/gj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/ag;->a:Lcom/google/android/gms/ads/internal/request/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/af;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/gj;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/b/bt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/request/ag;->a(Lcom/google/android/gms/b/bt;)V

    return-void
.end method
