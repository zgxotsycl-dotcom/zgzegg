.class Lcom/google/android/gms/ads/internal/u;
.super Lcom/google/android/gms/b/ps;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/t;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/t;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/u;->a:Lcom/google/android/gms/ads/internal/t;

    invoke-direct {p0}, Lcom/google/android/gms/b/ps;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/u;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->e()Lcom/google/android/gms/b/qk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/u;->a:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ah;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/b/qk;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
