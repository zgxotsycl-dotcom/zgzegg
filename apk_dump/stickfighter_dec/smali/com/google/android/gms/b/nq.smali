.class Lcom/google/android/gms/b/nq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/fy;


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/formats/e;

.field final synthetic b:Lcom/google/android/gms/b/nn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/nn;Lcom/google/android/gms/ads/internal/formats/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/nq;->b:Lcom/google/android/gms/b/nn;

    iput-object p2, p0, Lcom/google/android/gms/b/nq;->a:Lcom/google/android/gms/ads/internal/formats/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/sk;Ljava/util/Map;)V
    .locals 3

    const-string v0, "asset"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/b/nq;->b:Lcom/google/android/gms/b/nn;

    iget-object v2, p0, Lcom/google/android/gms/b/nq;->a:Lcom/google/android/gms/ads/internal/formats/e;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/b/nn;->a(Lcom/google/android/gms/b/nn;Lcom/google/android/gms/b/eq;Ljava/lang/String;)V

    return-void
.end method
