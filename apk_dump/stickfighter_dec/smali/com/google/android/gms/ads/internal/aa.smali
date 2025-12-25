.class Lcom/google/android/gms/ads/internal/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/formats/c;

.field final synthetic b:Lcom/google/android/gms/ads/internal/y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/y;Lcom/google/android/gms/ads/internal/formats/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/aa;->b:Lcom/google/android/gms/ads/internal/y;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/aa;->a:Lcom/google/android/gms/ads/internal/formats/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aa;->b:Lcom/google/android/gms/ads/internal/y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/y;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ah;->s:Lcom/google/android/gms/b/et;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/aa;->a:Lcom/google/android/gms/ads/internal/formats/c;

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/et;->a(Lcom/google/android/gms/b/ei;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call OnAppInstallAdLoadedListener.onAppInstallAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
