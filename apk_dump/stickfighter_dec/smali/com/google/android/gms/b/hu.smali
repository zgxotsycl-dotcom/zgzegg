.class Lcom/google/android/gms/b/hu;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# instance fields
.field a:Lcom/google/android/gms/ads/internal/client/t;

.field b:Lcom/google/android/gms/ads/internal/client/al;

.field c:Lcom/google/android/gms/b/mc;

.field d:Lcom/google/android/gms/b/dw;

.field e:Lcom/google/android/gms/ads/internal/client/q;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/google/android/gms/ads/internal/t;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/hu;->a:Lcom/google/android/gms/ads/internal/client/t;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/b/hv;

    iget-object v1, p0, Lcom/google/android/gms/b/hu;->a:Lcom/google/android/gms/ads/internal/client/t;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/b/hv;-><init>(Lcom/google/android/gms/b/hu;Lcom/google/android/gms/ads/internal/client/t;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/ads/internal/client/t;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/hu;->b:Lcom/google/android/gms/ads/internal/client/al;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/hu;->b:Lcom/google/android/gms/ads/internal/client/al;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/ads/internal/client/al;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/b/hu;->c:Lcom/google/android/gms/b/mc;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/b/hu;->c:Lcom/google/android/gms/b/mc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/b/mc;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/b/hu;->d:Lcom/google/android/gms/b/dw;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/b/hu;->d:Lcom/google/android/gms/b/dw;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/b/dw;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/b/hu;->e:Lcom/google/android/gms/ads/internal/client/q;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/b/hu;->e:Lcom/google/android/gms/ads/internal/client/q;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/ads/internal/client/q;)V

    :cond_4
    return-void
.end method
