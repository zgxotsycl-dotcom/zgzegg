.class Lcom/google/android/gms/b/hs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/ht;

.field final synthetic b:Lcom/google/android/gms/b/hu;

.field final synthetic c:Lcom/google/android/gms/b/hd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/hd;Lcom/google/android/gms/b/ht;Lcom/google/android/gms/b/hu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/hs;->c:Lcom/google/android/gms/b/hd;

    iput-object p2, p0, Lcom/google/android/gms/b/hs;->a:Lcom/google/android/gms/b/ht;

    iput-object p3, p0, Lcom/google/android/gms/b/hs;->b:Lcom/google/android/gms/b/hu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/hs;->a:Lcom/google/android/gms/b/ht;

    iget-object v1, p0, Lcom/google/android/gms/b/hs;->b:Lcom/google/android/gms/b/hu;

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/ht;->a(Lcom/google/android/gms/b/hu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not propagate interstitial ad event."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
