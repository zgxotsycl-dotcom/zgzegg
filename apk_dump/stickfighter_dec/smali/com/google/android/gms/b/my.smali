.class Lcom/google/android/gms/b/my;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/mx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/mx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/my;->a:Lcom/google/android/gms/b/mx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/my;->a:Lcom/google/android/gms/b/mx;

    invoke-static {v0}, Lcom/google/android/gms/b/mx;->a(Lcom/google/android/gms/b/mx;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Timed out waiting for WebView to finish loading."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/my;->a:Lcom/google/android/gms/b/mx;

    invoke-virtual {v0}, Lcom/google/android/gms/b/mx;->d()V

    goto :goto_0
.end method
