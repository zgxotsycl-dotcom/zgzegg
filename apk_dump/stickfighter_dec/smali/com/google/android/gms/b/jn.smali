.class Lcom/google/android/gms/b/jn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/jg;

.field final synthetic b:Lcom/google/android/gms/b/jm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/jm;Lcom/google/android/gms/b/jg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/jn;->b:Lcom/google/android/gms/b/jm;

    iput-object p2, p0, Lcom/google/android/gms/b/jn;->a:Lcom/google/android/gms/b/jg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/b/jj;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/b/jn;->b:Lcom/google/android/gms/b/jm;

    invoke-static {v0}, Lcom/google/android/gms/b/jm;->a(Lcom/google/android/gms/b/jm;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/jn;->b:Lcom/google/android/gms/b/jm;

    invoke-static {v0}, Lcom/google/android/gms/b/jm;->b(Lcom/google/android/gms/b/jm;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/b/jn;->a:Lcom/google/android/gms/b/jg;

    iget-object v1, p0, Lcom/google/android/gms/b/jn;->b:Lcom/google/android/gms/b/jm;

    invoke-static {v1}, Lcom/google/android/gms/b/jm;->c(Lcom/google/android/gms/b/jm;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/b/jn;->b:Lcom/google/android/gms/b/jm;

    invoke-static {v1}, Lcom/google/android/gms/b/jm;->d(Lcom/google/android/gms/b/jm;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/b/jg;->a(JJ)Lcom/google/android/gms/b/jj;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/b/jn;->a()Lcom/google/android/gms/b/jj;

    move-result-object v0

    return-object v0
.end method
