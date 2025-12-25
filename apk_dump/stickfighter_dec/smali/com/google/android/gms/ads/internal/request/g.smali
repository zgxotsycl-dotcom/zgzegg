.class Lcom/google/android/gms/ads/internal/request/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/sd;

.field final synthetic b:Lcom/google/android/gms/ads/internal/request/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/e;Lcom/google/android/gms/b/sd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/g;->b:Lcom/google/android/gms/ads/internal/request/e;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/g;->a:Lcom/google/android/gms/b/sd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/g;->b:Lcom/google/android/gms/ads/internal/request/e;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/request/e;->a(Lcom/google/android/gms/ads/internal/request/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/g;->b:Lcom/google/android/gms/ads/internal/request/e;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/g;->b:Lcom/google/android/gms/ads/internal/request/e;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/g;->b:Lcom/google/android/gms/ads/internal/request/e;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/request/e;->b(Lcom/google/android/gms/ads/internal/request/e;)Lcom/google/android/gms/ads/internal/request/a;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/a;->j:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/request/g;->a:Lcom/google/android/gms/b/sd;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/ads/internal/request/e;->a(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/sd;)Lcom/google/android/gms/b/qx;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/request/e;->a:Lcom/google/android/gms/b/qx;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/g;->b:Lcom/google/android/gms/ads/internal/request/e;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/e;->a:Lcom/google/android/gms/b/qx;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/g;->b:Lcom/google/android/gms/ads/internal/request/e;

    const/4 v2, 0x0

    const-string v3, "Could not start the ad request service."

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/ads/internal/request/e;->a(Lcom/google/android/gms/ads/internal/request/e;ILjava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/b/qk;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/g;->b:Lcom/google/android/gms/ads/internal/request/e;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/request/e;->c(Lcom/google/android/gms/ads/internal/request/e;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
