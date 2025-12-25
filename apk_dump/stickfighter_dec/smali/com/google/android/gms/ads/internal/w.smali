.class Lcom/google/android/gms/ads/internal/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field final synthetic b:Lcom/google/android/gms/ads/internal/v;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/v;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/w;->b:Lcom/google/android/gms/ads/internal/v;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/w;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->c()Lcom/google/android/gms/ads/internal/overlay/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/w;->b:Lcom/google/android/gms/ads/internal/v;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/v;->a:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ah;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/w;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/r;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method
