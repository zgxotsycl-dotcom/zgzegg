.class Lcom/google/android/gms/ads/internal/request/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/sg;


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/request/w;

.field final synthetic b:Lcom/google/android/gms/ads/internal/request/m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/m;Lcom/google/android/gms/ads/internal/request/w;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/n;->b:Lcom/google/android/gms/ads/internal/request/m;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/n;->a:Lcom/google/android/gms/ads/internal/request/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/n;->b:Lcom/google/android/gms/ads/internal/request/m;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/n;->a:Lcom/google/android/gms/ads/internal/request/w;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/request/m;->a(Lcom/google/android/gms/ads/internal/request/w;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/n;->b:Lcom/google/android/gms/ads/internal/request/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/m;->a()V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/request/n;->a(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    return-void
.end method
