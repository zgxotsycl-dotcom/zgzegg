.class Lcom/google/android/gms/b/hv;
.super Lcom/google/android/gms/ads/internal/client/u;


# instance fields
.field a:Lcom/google/android/gms/ads/internal/client/t;

.field final synthetic b:Lcom/google/android/gms/b/hu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/hu;Lcom/google/android/gms/ads/internal/client/t;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/hv;->b:Lcom/google/android/gms/b/hu;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/u;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/b/hv;->a:Lcom/google/android/gms/ads/internal/client/t;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hv;->a:Lcom/google/android/gms/ads/internal/client/t;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/t;->a()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->p()Lcom/google/android/gms/b/hw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/b/hw;->a()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hv;->a:Lcom/google/android/gms/ads/internal/client/t;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/client/t;->a(I)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hv;->a:Lcom/google/android/gms/ads/internal/client/t;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/t;->b()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hv;->a:Lcom/google/android/gms/ads/internal/client/t;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/t;->c()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hv;->a:Lcom/google/android/gms/ads/internal/client/t;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/t;->d()V

    return-void
.end method
