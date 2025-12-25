.class Lcom/google/android/gms/b/il;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/sg;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/iu;

.field final synthetic b:Lcom/google/android/gms/b/ic;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/ic;Lcom/google/android/gms/b/iu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/il;->b:Lcom/google/android/gms/b/ic;

    iput-object p2, p0, Lcom/google/android/gms/b/il;->a:Lcom/google/android/gms/b/iu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/bg;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/il;->b:Lcom/google/android/gms/b/ic;

    invoke-static {v0}, Lcom/google/android/gms/b/ic;->c(Lcom/google/android/gms/b/ic;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/il;->b:Lcom/google/android/gms/b/ic;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/b/ic;->a(Lcom/google/android/gms/b/ic;I)I

    iget-object v0, p0, Lcom/google/android/gms/b/il;->b:Lcom/google/android/gms/b/ic;

    invoke-static {v0}, Lcom/google/android/gms/b/ic;->g(Lcom/google/android/gms/b/ic;)Lcom/google/android/gms/b/iu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/il;->a:Lcom/google/android/gms/b/iu;

    iget-object v2, p0, Lcom/google/android/gms/b/il;->b:Lcom/google/android/gms/b/ic;

    invoke-static {v2}, Lcom/google/android/gms/b/ic;->g(Lcom/google/android/gms/b/ic;)Lcom/google/android/gms/b/iu;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/il;->b:Lcom/google/android/gms/b/ic;

    invoke-static {v0}, Lcom/google/android/gms/b/ic;->g(Lcom/google/android/gms/b/ic;)Lcom/google/android/gms/b/iu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/b/iu;->c()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/il;->b:Lcom/google/android/gms/b/ic;

    iget-object v2, p0, Lcom/google/android/gms/b/il;->a:Lcom/google/android/gms/b/iu;

    invoke-static {v0, v2}, Lcom/google/android/gms/b/ic;->a(Lcom/google/android/gms/b/ic;Lcom/google/android/gms/b/iu;)Lcom/google/android/gms/b/iu;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/b/bg;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/il;->a(Lcom/google/android/gms/b/bg;)V

    return-void
.end method
