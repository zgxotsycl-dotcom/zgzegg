.class Lcom/google/android/gms/ads/internal/request/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/ads/internal/request/ad;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/ad;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/af;->c:Lcom/google/android/gms/ads/internal/request/ad;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/af;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/af;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/af;->c:Lcom/google/android/gms/ads/internal/request/ad;

    invoke-static {}, Lcom/google/android/gms/ads/internal/request/ad;->f()Lcom/google/android/gms/b/ic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/b/ic;->b()Lcom/google/android/gms/b/iq;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/request/ad;->a(Lcom/google/android/gms/ads/internal/request/ad;Lcom/google/android/gms/b/iq;)Lcom/google/android/gms/b/iq;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/af;->c:Lcom/google/android/gms/ads/internal/request/ad;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/request/ad;->b(Lcom/google/android/gms/ads/internal/request/ad;)Lcom/google/android/gms/b/iq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/request/ag;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/request/ag;-><init>(Lcom/google/android/gms/ads/internal/request/af;)V

    new-instance v2, Lcom/google/android/gms/ads/internal/request/ah;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/request/ah;-><init>(Lcom/google/android/gms/ads/internal/request/af;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/b/iq;->a(Lcom/google/android/gms/b/sg;Lcom/google/android/gms/b/se;)V

    return-void
.end method
