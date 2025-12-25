.class Lcom/google/android/gms/b/up;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/vw;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/un;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/un;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/up;->a:Lcom/google/android/gms/b/un;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/up;->a:Lcom/google/android/gms/b/un;

    invoke-static {v0}, Lcom/google/android/gms/b/un;->a(Lcom/google/android/gms/b/un;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/up;->a:Lcom/google/android/gms/b/un;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/b/un;->b(Lcom/google/android/gms/b/un;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/b/up;->a:Lcom/google/android/gms/b/un;

    invoke-static {v0}, Lcom/google/android/gms/b/un;->b(Lcom/google/android/gms/b/un;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/b/up;->a:Lcom/google/android/gms/b/un;

    invoke-static {v0}, Lcom/google/android/gms/b/un;->a(Lcom/google/android/gms/b/un;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/b/up;->a:Lcom/google/android/gms/b/un;

    invoke-static {v1}, Lcom/google/android/gms/b/un;->a(Lcom/google/android/gms/b/un;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/up;->a:Lcom/google/android/gms/b/un;

    invoke-static {v0}, Lcom/google/android/gms/b/un;->a(Lcom/google/android/gms/b/un;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/up;->a:Lcom/google/android/gms/b/un;

    invoke-static {v0, p1}, Lcom/google/android/gms/b/un;->b(Lcom/google/android/gms/b/un;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/b/up;->a:Lcom/google/android/gms/b/un;

    invoke-static {v0}, Lcom/google/android/gms/b/un;->b(Lcom/google/android/gms/b/un;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/b/up;->a:Lcom/google/android/gms/b/un;

    invoke-static {v0}, Lcom/google/android/gms/b/un;->a(Lcom/google/android/gms/b/un;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/b/up;->a:Lcom/google/android/gms/b/un;

    invoke-static {v1}, Lcom/google/android/gms/b/un;->a(Lcom/google/android/gms/b/un;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a_(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/up;->a:Lcom/google/android/gms/b/un;

    invoke-static {v0}, Lcom/google/android/gms/b/un;->a(Lcom/google/android/gms/b/un;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/up;->a:Lcom/google/android/gms/b/un;

    iget-object v1, p0, Lcom/google/android/gms/b/up;->a:Lcom/google/android/gms/b/un;

    invoke-static {v1}, Lcom/google/android/gms/b/un;->d(Lcom/google/android/gms/b/un;)Lcom/google/android/gms/b/vq;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/b/un;->a(Lcom/google/android/gms/b/un;Lcom/google/android/gms/b/vq;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/b/up;->a:Lcom/google/android/gms/b/un;

    invoke-static {v0}, Lcom/google/android/gms/b/un;->a(Lcom/google/android/gms/b/un;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/b/up;->a:Lcom/google/android/gms/b/un;

    invoke-static {v1}, Lcom/google/android/gms/b/un;->a(Lcom/google/android/gms/b/un;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
