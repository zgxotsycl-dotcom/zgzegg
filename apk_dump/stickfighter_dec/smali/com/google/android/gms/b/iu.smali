.class public Lcom/google/android/gms/b/iu;
.super Lcom/google/android/gms/b/sh;


# instance fields
.field private final d:Ljava/lang/Object;

.field private e:Lcom/google/android/gms/b/io;

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/io;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/b/sh;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/iu;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/b/iu;->e:Lcom/google/android/gms/b/io;

    iput-boolean v1, p0, Lcom/google/android/gms/b/iu;->f:Z

    iput v1, p0, Lcom/google/android/gms/b/iu;->g:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/b/iu;)Lcom/google/android/gms/b/io;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/iu;->e:Lcom/google/android/gms/b/io;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/b/iq;
    .locals 4

    new-instance v1, Lcom/google/android/gms/b/iq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/b/iq;-><init>(Lcom/google/android/gms/b/iu;)V

    iget-object v2, p0, Lcom/google/android/gms/b/iu;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/b/iv;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/b/iv;-><init>(Lcom/google/android/gms/b/iu;Lcom/google/android/gms/b/iq;)V

    new-instance v3, Lcom/google/android/gms/b/iw;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/b/iw;-><init>(Lcom/google/android/gms/b/iu;Lcom/google/android/gms/b/iq;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/b/iu;->a(Lcom/google/android/gms/b/sg;Lcom/google/android/gms/b/se;)V

    iget v0, p0, Lcom/google/android/gms/b/iu;->g:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/av;->a(Z)V

    iget v0, p0, Lcom/google/android/gms/b/iu;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/b/iu;->g:I

    monitor-exit v2

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/b/iu;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/b/iu;->g:I

    if-lt v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/av;->a(Z)V

    const-string v0, "Releasing 1 reference for JS Engine"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/b/iu;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/b/iu;->g:I

    invoke-virtual {p0}, Lcom/google/android/gms/b/iu;->d()V

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/b/iu;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/b/iu;->g:I

    if-ltz v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/av;->a(Z)V

    const-string v0, "Releasing root reference. JS Engine will be destroyed once other references are released."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/b/iu;->f:Z

    invoke-virtual {p0}, Lcom/google/android/gms/b/iu;->d()V

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected d()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/b/iu;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/b/iu;->g:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/av;->a(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/b/iu;->f:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/b/iu;->g:I

    if-nez v0, :cond_1

    const-string v0, "No reference is left (including root). Cleaning up engine."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/b/ix;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/ix;-><init>(Lcom/google/android/gms/b/iu;)V

    new-instance v2, Lcom/google/android/gms/b/sf;

    invoke-direct {v2}, Lcom/google/android/gms/b/sf;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/b/iu;->a(Lcom/google/android/gms/b/sg;Lcom/google/android/gms/b/se;)V

    :goto_1
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "There are still references to the engine. Not destroying."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
