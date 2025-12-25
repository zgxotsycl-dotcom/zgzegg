.class Lcom/google/android/gms/ads/internal/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/so;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/pj;

.field final synthetic b:Lcom/google/android/gms/ads/internal/m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/m;Lcom/google/android/gms/b/pj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/n;->b:Lcom/google/android/gms/ads/internal/m;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/n;->a:Lcom/google/android/gms/b/pj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/n;->b:Lcom/google/android/gms/ads/internal/m;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/m;->h:Lcom/google/android/gms/b/ao;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/n;->b:Lcom/google/android/gms/ads/internal/m;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ah;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/n;->a:Lcom/google/android/gms/b/pj;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/b/ao;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/b/pj;)Lcom/google/android/gms/b/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/n;->a:Lcom/google/android/gms/b/pj;

    iget-object v1, v1, Lcom/google/android/gms/b/pj;->b:Lcom/google/android/gms/b/sk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/ap;->a(Lcom/google/android/gms/b/am;)V

    return-void
.end method
