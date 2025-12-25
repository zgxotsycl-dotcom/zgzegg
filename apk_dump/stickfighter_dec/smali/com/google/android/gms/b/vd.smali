.class Lcom/google/android/gms/b/vd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/q;
.implements Lcom/google/android/gms/common/api/r;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/us;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/b/us;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/vd;->a:Lcom/google/android/gms/b/us;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/b/us;Lcom/google/android/gms/b/ut;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/b/vd;-><init>(Lcom/google/android/gms/b/us;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/vd;->a:Lcom/google/android/gms/b/us;

    invoke-static {v0}, Lcom/google/android/gms/b/us;->f(Lcom/google/android/gms/b/us;)Lcom/google/android/gms/b/xj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/b/uw;

    iget-object v2, p0, Lcom/google/android/gms/b/vd;->a:Lcom/google/android/gms/b/us;

    invoke-direct {v1, v2}, Lcom/google/android/gms/b/uw;-><init>(Lcom/google/android/gms/b/us;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/xj;->a(Lcom/google/android/gms/common/internal/ao;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/vd;->a:Lcom/google/android/gms/b/us;

    invoke-static {v0}, Lcom/google/android/gms/b/us;->c(Lcom/google/android/gms/b/us;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/vd;->a:Lcom/google/android/gms/b/us;

    invoke-static {v0, p1}, Lcom/google/android/gms/b/us;->b(Lcom/google/android/gms/b/us;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/vd;->a:Lcom/google/android/gms/b/us;

    invoke-static {v0}, Lcom/google/android/gms/b/us;->i(Lcom/google/android/gms/b/us;)V

    iget-object v0, p0, Lcom/google/android/gms/b/vd;->a:Lcom/google/android/gms/b/us;

    invoke-static {v0}, Lcom/google/android/gms/b/us;->j(Lcom/google/android/gms/b/us;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/b/vd;->a:Lcom/google/android/gms/b/us;

    invoke-static {v0}, Lcom/google/android/gms/b/us;->c(Lcom/google/android/gms/b/us;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/b/vd;->a:Lcom/google/android/gms/b/us;

    invoke-static {v0, p1}, Lcom/google/android/gms/b/us;->a(Lcom/google/android/gms/b/us;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/b/vd;->a:Lcom/google/android/gms/b/us;

    invoke-static {v1}, Lcom/google/android/gms/b/us;->c(Lcom/google/android/gms/b/us;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
