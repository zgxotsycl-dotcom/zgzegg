.class Lcom/google/android/gms/ads/internal/request/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/se;


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/request/af;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/af;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/ah;->a:Lcom/google/android/gms/ads/internal/request/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/request/ad;->c()Lcom/google/android/gms/b/gj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/ah;->a:Lcom/google/android/gms/ads/internal/request/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/af;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/gj;->b(Ljava/lang/String;)V

    return-void
.end method
