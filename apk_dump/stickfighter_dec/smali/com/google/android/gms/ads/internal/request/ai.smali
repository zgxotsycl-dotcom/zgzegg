.class Lcom/google/android/gms/ads/internal/request/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/request/ad;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/ai;->a:Lcom/google/android/gms/ads/internal/request/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/ai;->a:Lcom/google/android/gms/ads/internal/request/ad;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/request/ad;->b(Lcom/google/android/gms/ads/internal/request/ad;)Lcom/google/android/gms/b/iq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/ai;->a:Lcom/google/android/gms/ads/internal/request/ad;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/request/ad;->b(Lcom/google/android/gms/ads/internal/request/ad;)Lcom/google/android/gms/b/iq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/b/iq;->a()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/ai;->a:Lcom/google/android/gms/ads/internal/request/ad;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/request/ad;->a(Lcom/google/android/gms/ads/internal/request/ad;Lcom/google/android/gms/b/iq;)Lcom/google/android/gms/b/iq;

    :cond_0
    return-void
.end method
