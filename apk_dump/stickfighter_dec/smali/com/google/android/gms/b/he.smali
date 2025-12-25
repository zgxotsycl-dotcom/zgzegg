.class Lcom/google/android/gms/b/he;
.super Lcom/google/android/gms/ads/internal/client/u;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/hd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/hd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/he;->a:Lcom/google/android/gms/b/hd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/he;->a:Lcom/google/android/gms/b/hd;

    invoke-static {v0}, Lcom/google/android/gms/b/hd;->a(Lcom/google/android/gms/b/hd;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/b/hf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/b/hf;-><init>(Lcom/google/android/gms/b/he;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/he;->a:Lcom/google/android/gms/b/hd;

    invoke-static {v0}, Lcom/google/android/gms/b/hd;->a(Lcom/google/android/gms/b/hd;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/b/hg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/b/hg;-><init>(Lcom/google/android/gms/b/he;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Pooled interstitial failed to load."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/he;->a:Lcom/google/android/gms/b/hd;

    invoke-static {v0}, Lcom/google/android/gms/b/hd;->a(Lcom/google/android/gms/b/hd;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/b/hh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/b/hh;-><init>(Lcom/google/android/gms/b/he;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/he;->a:Lcom/google/android/gms/b/hd;

    invoke-static {v0}, Lcom/google/android/gms/b/hd;->a(Lcom/google/android/gms/b/hd;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/b/hi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/b/hi;-><init>(Lcom/google/android/gms/b/he;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Pooled interstitial loaded."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/he;->a:Lcom/google/android/gms/b/hd;

    invoke-static {v0}, Lcom/google/android/gms/b/hd;->a(Lcom/google/android/gms/b/hd;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/b/hj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/b/hj;-><init>(Lcom/google/android/gms/b/he;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
