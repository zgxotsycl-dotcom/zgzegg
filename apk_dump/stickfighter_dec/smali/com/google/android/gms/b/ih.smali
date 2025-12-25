.class Lcom/google/android/gms/b/ih;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/fy;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/bg;

.field final synthetic b:Lcom/google/android/gms/b/id;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/id;Lcom/google/android/gms/b/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/ih;->b:Lcom/google/android/gms/b/id;

    iput-object p2, p0, Lcom/google/android/gms/b/ih;->a:Lcom/google/android/gms/b/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/sk;Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/ih;->b:Lcom/google/android/gms/b/id;

    iget-object v0, v0, Lcom/google/android/gms/b/id;->b:Lcom/google/android/gms/b/ic;

    invoke-static {v0}, Lcom/google/android/gms/b/ic;->c(Lcom/google/android/gms/b/ic;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/ih;->b:Lcom/google/android/gms/b/id;

    iget-object v0, v0, Lcom/google/android/gms/b/id;->a:Lcom/google/android/gms/b/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/b/iu;->f()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/ih;->b:Lcom/google/android/gms/b/id;

    iget-object v0, v0, Lcom/google/android/gms/b/id;->a:Lcom/google/android/gms/b/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/b/iu;->f()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/b/ih;->b:Lcom/google/android/gms/b/id;

    iget-object v0, v0, Lcom/google/android/gms/b/id;->b:Lcom/google/android/gms/b/ic;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/b/ic;->a(Lcom/google/android/gms/b/ic;I)I

    iget-object v0, p0, Lcom/google/android/gms/b/ih;->b:Lcom/google/android/gms/b/id;

    iget-object v0, v0, Lcom/google/android/gms/b/id;->b:Lcom/google/android/gms/b/ic;

    invoke-static {v0}, Lcom/google/android/gms/b/ic;->d(Lcom/google/android/gms/b/ic;)Lcom/google/android/gms/b/io;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/b/ih;->a:Lcom/google/android/gms/b/bg;

    invoke-interface {v0, v2}, Lcom/google/android/gms/b/io;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/b/ih;->b:Lcom/google/android/gms/b/id;

    iget-object v0, v0, Lcom/google/android/gms/b/id;->a:Lcom/google/android/gms/b/iu;

    iget-object v2, p0, Lcom/google/android/gms/b/ih;->a:Lcom/google/android/gms/b/bg;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/b/iu;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/b/ih;->b:Lcom/google/android/gms/b/id;

    iget-object v0, v0, Lcom/google/android/gms/b/id;->b:Lcom/google/android/gms/b/ic;

    iget-object v2, p0, Lcom/google/android/gms/b/ih;->b:Lcom/google/android/gms/b/id;

    iget-object v2, v2, Lcom/google/android/gms/b/id;->a:Lcom/google/android/gms/b/iu;

    invoke-static {v0, v2}, Lcom/google/android/gms/b/ic;->a(Lcom/google/android/gms/b/ic;Lcom/google/android/gms/b/iu;)Lcom/google/android/gms/b/iu;

    const-string v0, "Successfully loaded JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
