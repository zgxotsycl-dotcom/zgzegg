.class Lcom/google/android/gms/b/uz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/u;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Lcom/google/android/gms/common/api/a;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/us;Lcom/google/android/gms/common/api/a;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/b/uz;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/google/android/gms/b/uz;->b:Lcom/google/android/gms/common/api/a;

    iput p3, p0, Lcom/google/android/gms/b/uz;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/b/uz;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/us;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/b/us;->d(Lcom/google/android/gms/b/us;)Lcom/google/android/gms/b/vq;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/b/vq;->g:Lcom/google/android/gms/b/vh;

    invoke-virtual {v3}, Lcom/google/android/gms/b/vh;->a()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string v2, "onReportServiceBinding must be called on the GoogleApiClient handler thread"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/av;->a(ZLjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/gms/b/us;->c(Lcom/google/android/gms/b/us;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Lcom/google/android/gms/b/us;->a(Lcom/google/android/gms/b/us;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/b/us;->c(Lcom/google/android/gms/b/us;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/b/uz;->b:Lcom/google/android/gms/common/api/a;

    iget v2, p0, Lcom/google/android/gms/b/uz;->c:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/b/us;->a(Lcom/google/android/gms/b/us;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/b/us;->k(Lcom/google/android/gms/b/us;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/google/android/gms/b/us;->l(Lcom/google/android/gms/b/us;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    invoke-static {v0}, Lcom/google/android/gms/b/us;->c(Lcom/google/android/gms/b/us;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/android/gms/b/us;->c(Lcom/google/android/gms/b/us;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/b/uz;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/us;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/b/us;->d(Lcom/google/android/gms/b/us;)Lcom/google/android/gms/b/vq;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/b/vq;->g:Lcom/google/android/gms/b/vh;

    invoke-virtual {v3}, Lcom/google/android/gms/b/vh;->a()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    :goto_1
    const-string v2, "onReportAccountValidation must be called on the GoogleApiClient handler thread"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/av;->a(ZLjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/gms/b/us;->c(Lcom/google/android/gms/b/us;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lcom/google/android/gms/b/us;->a(Lcom/google/android/gms/b/us;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/b/us;->c(Lcom/google/android/gms/b/us;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/b/uz;->b:Lcom/google/android/gms/common/api/a;

    iget v2, p0, Lcom/google/android/gms/b/uz;->c:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/b/us;->a(Lcom/google/android/gms/b/us;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/b/us;->k(Lcom/google/android/gms/b/us;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/google/android/gms/b/us;->m(Lcom/google/android/gms/b/us;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    invoke-static {v0}, Lcom/google/android/gms/b/us;->c(Lcom/google/android/gms/b/us;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/android/gms/b/us;->c(Lcom/google/android/gms/b/us;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
