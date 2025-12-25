.class public Lcom/google/android/gms/b/vq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/vv;


# instance fields
.field final a:Ljava/util/Map;

.field final b:Ljava/util/Map;

.field final c:Lcom/google/android/gms/common/internal/h;

.field final d:Ljava/util/Map;

.field final e:Lcom/google/android/gms/common/api/g;

.field f:I

.field final g:Lcom/google/android/gms/b/vh;

.field final h:Lcom/google/android/gms/b/vw;

.field private final i:Ljava/util/concurrent/locks/Lock;

.field private final j:Ljava/util/concurrent/locks/Condition;

.field private final k:Landroid/content/Context;

.field private final l:Lcom/google/android/gms/common/b;

.field private final m:Lcom/google/android/gms/b/vs;

.field private volatile n:Lcom/google/android/gms/b/vp;

.field private o:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/b/vh;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/b;Ljava/util/Map;Lcom/google/android/gms/common/internal/h;Ljava/util/Map;Lcom/google/android/gms/common/api/g;Ljava/util/ArrayList;Lcom/google/android/gms/b/vw;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/vq;->b:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/b/vq;->o:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, p0, Lcom/google/android/gms/b/vq;->k:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/b/vq;->i:Ljava/util/concurrent/locks/Lock;

    iput-object p5, p0, Lcom/google/android/gms/b/vq;->l:Lcom/google/android/gms/common/b;

    iput-object p6, p0, Lcom/google/android/gms/b/vq;->a:Ljava/util/Map;

    iput-object p7, p0, Lcom/google/android/gms/b/vq;->c:Lcom/google/android/gms/common/internal/h;

    iput-object p8, p0, Lcom/google/android/gms/b/vq;->d:Ljava/util/Map;

    iput-object p9, p0, Lcom/google/android/gms/b/vq;->e:Lcom/google/android/gms/common/api/g;

    iput-object p2, p0, Lcom/google/android/gms/b/vq;->g:Lcom/google/android/gms/b/vh;

    iput-object p11, p0, Lcom/google/android/gms/b/vq;->h:Lcom/google/android/gms/b/vw;

    invoke-virtual {p10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/uj;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/b/uj;->a(Lcom/google/android/gms/b/vq;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/b/vs;

    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/b/vs;-><init>(Lcom/google/android/gms/b/vq;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/b/vq;->m:Lcom/google/android/gms/b/vs;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/vq;->j:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Lcom/google/android/gms/b/vg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/vg;-><init>(Lcom/google/android/gms/b/vq;)V

    iput-object v0, p0, Lcom/google/android/gms/b/vq;->n:Lcom/google/android/gms/b/vp;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/b/vq;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->i:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/b/vq;)Lcom/google/android/gms/b/vp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->n:Lcom/google/android/gms/b/vp;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/ug;)Lcom/google/android/gms/b/ug;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->n:Lcom/google/android/gms/b/vp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/vp;->a(Lcom/google/android/gms/b/ug;)Lcom/google/android/gms/b/ug;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->n:Lcom/google/android/gms/b/vp;

    invoke-interface {v0}, Lcom/google/android/gms/b/vp;->c()V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/vq;->n:Lcom/google/android/gms/b/vp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/vp;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/b/vq;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/vq;->n:Lcom/google/android/gms/b/vp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/vp;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/b/vq;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method a(Lcom/google/android/gms/b/vr;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->m:Lcom/google/android/gms/b/vs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/b/vs;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/vq;->m:Lcom/google/android/gms/b/vs;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/b/vs;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/b/vq;->o:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Lcom/google/android/gms/b/vg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/vg;-><init>(Lcom/google/android/gms/b/vq;)V

    iput-object v0, p0, Lcom/google/android/gms/b/vq;->n:Lcom/google/android/gms/b/vp;

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->n:Lcom/google/android/gms/b/vp;

    invoke-interface {v0}, Lcom/google/android/gms/b/vp;->a()V

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->j:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/b/vq;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/vq;->n:Lcom/google/android/gms/b/vp;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/b/vp;->a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/b/vq;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method a(Ljava/lang/RuntimeException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->m:Lcom/google/android/gms/b/vs;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/b/vs;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/vq;->m:Lcom/google/android/gms/b/vs;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/b/vs;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/b/vq;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->c()Lcom/google/android/gms/common/api/i;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/h;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/h;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/gms/b/ug;)Lcom/google/android/gms/b/ug;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->n:Lcom/google/android/gms/b/vp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/vp;->b(Lcom/google/android/gms/b/ug;)Lcom/google/android/gms/b/ug;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->n:Lcom/google/android/gms/b/vp;

    invoke-interface {v0}, Lcom/google/android/gms/b/vp;->b()V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->n:Lcom/google/android/gms/b/vp;

    instance-of v0, v0, Lcom/google/android/gms/b/uq;

    return v0
.end method

.method d()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/b/us;

    iget-object v2, p0, Lcom/google/android/gms/b/vq;->c:Lcom/google/android/gms/common/internal/h;

    iget-object v3, p0, Lcom/google/android/gms/b/vq;->d:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/b/vq;->l:Lcom/google/android/gms/common/b;

    iget-object v5, p0, Lcom/google/android/gms/b/vq;->e:Lcom/google/android/gms/common/api/g;

    iget-object v6, p0, Lcom/google/android/gms/b/vq;->i:Ljava/util/concurrent/locks/Lock;

    iget-object v7, p0, Lcom/google/android/gms/b/vq;->k:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/b/us;-><init>(Lcom/google/android/gms/b/vq;Lcom/google/android/gms/common/internal/h;Ljava/util/Map;Lcom/google/android/gms/common/b;Lcom/google/android/gms/common/api/g;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/b/vq;->n:Lcom/google/android/gms/b/vp;

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->n:Lcom/google/android/gms/b/vp;

    invoke-interface {v0}, Lcom/google/android/gms/b/vp;->a()V

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->j:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/b/vq;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method e()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/vq;->g:Lcom/google/android/gms/b/vh;

    invoke-virtual {v0}, Lcom/google/android/gms/b/vh;->j()Z

    new-instance v0, Lcom/google/android/gms/b/uq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/uq;-><init>(Lcom/google/android/gms/b/vq;)V

    iput-object v0, p0, Lcom/google/android/gms/b/vq;->n:Lcom/google/android/gms/b/vp;

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->n:Lcom/google/android/gms/b/vp;

    invoke-interface {v0}, Lcom/google/android/gms/b/vp;->a()V

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->j:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/b/vq;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/vq;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/h;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/h;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method
