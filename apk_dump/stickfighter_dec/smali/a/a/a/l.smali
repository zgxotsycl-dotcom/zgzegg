.class final La/a/a/l;
.super Ljava/lang/Object;


# instance fields
.field private a:La/a/a/k;

.field private b:La/a/a/k;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized a()La/a/a/k;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/a/l;->a:La/a/a/k;

    iget-object v1, p0, La/a/a/l;->a:La/a/a/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, La/a/a/l;->a:La/a/a/k;

    iget-object v1, v1, La/a/a/k;->c:La/a/a/k;

    iput-object v1, p0, La/a/a/l;->a:La/a/a/k;

    iget-object v1, p0, La/a/a/l;->a:La/a/a/k;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, La/a/a/l;->b:La/a/a/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(I)La/a/a/k;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/a/l;->a:La/a/a/k;

    if-nez v0, :cond_0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    :cond_0
    invoke-virtual {p0}, La/a/a/l;->a()La/a/a/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(La/a/a/k;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be enqueued"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, La/a/a/l;->b:La/a/a/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/l;->b:La/a/a/k;

    iput-object p1, v0, La/a/a/k;->c:La/a/a/k;

    iput-object p1, p0, La/a/a/l;->b:La/a/a/k;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, La/a/a/l;->a:La/a/a/k;

    if-nez v0, :cond_2

    iput-object p1, p0, La/a/a/l;->b:La/a/a/k;

    iput-object p1, p0, La/a/a/l;->a:La/a/a/k;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Head present, but no tail"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
