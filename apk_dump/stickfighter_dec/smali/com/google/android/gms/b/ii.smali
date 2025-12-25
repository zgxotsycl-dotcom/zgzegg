.class Lcom/google/android/gms/b/ii;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/fy;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/bg;

.field final synthetic b:Lcom/google/android/gms/b/rr;

.field final synthetic c:Lcom/google/android/gms/b/id;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/id;Lcom/google/android/gms/b/bg;Lcom/google/android/gms/b/rr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/ii;->c:Lcom/google/android/gms/b/id;

    iput-object p2, p0, Lcom/google/android/gms/b/ii;->a:Lcom/google/android/gms/b/bg;

    iput-object p3, p0, Lcom/google/android/gms/b/ii;->b:Lcom/google/android/gms/b/rr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/sk;Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/b/ii;->c:Lcom/google/android/gms/b/id;

    iget-object v0, v0, Lcom/google/android/gms/b/id;->b:Lcom/google/android/gms/b/ic;

    invoke-static {v0}, Lcom/google/android/gms/b/ic;->c(Lcom/google/android/gms/b/ic;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "JS Engine is requesting an update"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/ii;->c:Lcom/google/android/gms/b/id;

    iget-object v0, v0, Lcom/google/android/gms/b/id;->b:Lcom/google/android/gms/b/ic;

    invoke-static {v0}, Lcom/google/android/gms/b/ic;->e(Lcom/google/android/gms/b/ic;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Starting reload."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/ii;->c:Lcom/google/android/gms/b/id;

    iget-object v0, v0, Lcom/google/android/gms/b/id;->b:Lcom/google/android/gms/b/ic;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/gms/b/ic;->a(Lcom/google/android/gms/b/ic;I)I

    iget-object v0, p0, Lcom/google/android/gms/b/ii;->c:Lcom/google/android/gms/b/id;

    iget-object v0, v0, Lcom/google/android/gms/b/id;->b:Lcom/google/android/gms/b/ic;

    invoke-virtual {v0}, Lcom/google/android/gms/b/ic;->a()Lcom/google/android/gms/b/iu;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/b/ii;->a:Lcom/google/android/gms/b/bg;

    const-string v3, "/requestReload"

    iget-object v0, p0, Lcom/google/android/gms/b/ii;->b:Lcom/google/android/gms/b/rr;

    invoke-virtual {v0}, Lcom/google/android/gms/b/rr;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/fy;

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/b/bg;->b(Ljava/lang/String;Lcom/google/android/gms/b/fy;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
