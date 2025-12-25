.class public Lcom/google/android/gms/b/wd;
.super Lcom/google/android/gms/common/api/af;

# interfaces
.implements Lcom/google/android/gms/common/api/z;


# instance fields
.field private a:Lcom/google/android/gms/common/api/ac;

.field private b:Lcom/google/android/gms/b/wd;

.field private c:Lcom/google/android/gms/common/api/aa;

.field private d:Lcom/google/android/gms/common/api/v;

.field private final e:Ljava/lang/Object;


# direct methods
.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/wd;->d:Lcom/google/android/gms/common/api/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/wd;->a:Lcom/google/android/gms/common/api/ac;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/wd;->c:Lcom/google/android/gms/common/api/aa;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/b/wd;->d:Lcom/google/android/gms/common/api/v;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/v;->a(Lcom/google/android/gms/common/api/z;)V

    goto :goto_0
.end method

.method private b(Lcom/google/android/gms/common/api/y;)V
    .locals 5

    instance-of v1, p1, Lcom/google/android/gms/common/api/x;

    if-eqz v1, :cond_0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/x;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/common/api/x;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "TransformedResultImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to release "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/b/wd;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/wd;->a:Lcom/google/android/gms/common/api/ac;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/wd;->a:Lcom/google/android/gms/common/api/ac;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/ac;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    const-string v2, "onFailure must not return null"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/av;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/b/wd;->b:Lcom/google/android/gms/b/wd;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/b/wd;->a(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/b/wd;->c:Lcom/google/android/gms/common/api/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/wd;->c:Lcom/google/android/gms/common/api/aa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/aa;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/common/api/v;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/b/wd;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/b/wd;->d:Lcom/google/android/gms/common/api/v;

    invoke-direct {p0}, Lcom/google/android/gms/b/wd;->a()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/common/api/y;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/b/wd;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/common/api/y;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/b/wd;->a:Lcom/google/android/gms/common/api/ac;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/b/wd;->a:Lcom/google/android/gms/common/api/ac;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/ac;->a(Lcom/google/android/gms/common/api/y;)Lcom/google/android/gms/common/api/v;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    const-string v3, "Transform returned null"

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/wd;->a(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/b/wd;->b(Lcom/google/android/gms/common/api/y;)V

    :cond_0
    :goto_1
    monitor-exit v1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/b/wd;->b:Lcom/google/android/gms/b/wd;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/b/wd;->a(Lcom/google/android/gms/common/api/v;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/b/wd;->c:Lcom/google/android/gms/common/api/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/wd;->c:Lcom/google/android/gms/common/api/aa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/aa;->b(Lcom/google/android/gms/common/api/y;)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/common/api/y;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/wd;->a(Lcom/google/android/gms/common/api/Status;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/b/wd;->b(Lcom/google/android/gms/common/api/y;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
