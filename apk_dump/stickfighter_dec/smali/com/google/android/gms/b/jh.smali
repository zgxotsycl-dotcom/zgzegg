.class Lcom/google/android/gms/b/jh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/jf;

.field final synthetic b:Lcom/google/android/gms/b/jg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/jg;Lcom/google/android/gms/b/jf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/jh;->b:Lcom/google/android/gms/b/jg;

    iput-object p2, p0, Lcom/google/android/gms/b/jh;->a:Lcom/google/android/gms/b/jf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/jh;->b:Lcom/google/android/gms/b/jg;

    invoke-static {v0}, Lcom/google/android/gms/b/jg;->a(Lcom/google/android/gms/b/jg;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/jh;->b:Lcom/google/android/gms/b/jg;

    invoke-static {v0}, Lcom/google/android/gms/b/jg;->b(Lcom/google/android/gms/b/jg;)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/jh;->b:Lcom/google/android/gms/b/jg;

    iget-object v2, p0, Lcom/google/android/gms/b/jh;->b:Lcom/google/android/gms/b/jg;

    invoke-static {v2}, Lcom/google/android/gms/b/jg;->c(Lcom/google/android/gms/b/jg;)Lcom/google/android/gms/b/jv;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/b/jg;->a(Lcom/google/android/gms/b/jg;Lcom/google/android/gms/b/jv;)Lcom/google/android/gms/b/jv;

    iget-object v0, p0, Lcom/google/android/gms/b/jh;->b:Lcom/google/android/gms/b/jg;

    invoke-static {v0}, Lcom/google/android/gms/b/jg;->d(Lcom/google/android/gms/b/jg;)Lcom/google/android/gms/b/jv;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/jh;->b:Lcom/google/android/gms/b/jg;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/b/jg;->a(I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/b/jh;->b:Lcom/google/android/gms/b/jg;

    invoke-static {v0}, Lcom/google/android/gms/b/jg;->e(Lcom/google/android/gms/b/jg;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/b/jh;->b:Lcom/google/android/gms/b/jg;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/b/jg;->a(Lcom/google/android/gms/b/jg;I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring adapter "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/b/jh;->b:Lcom/google/android/gms/b/jg;

    invoke-static {v2}, Lcom/google/android/gms/b/jg;->f(Lcom/google/android/gms/b/jg;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " as delayed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " impression is not supported"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/jh;->b:Lcom/google/android/gms/b/jg;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/b/jg;->a(I)V

    monitor-exit v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/b/jh;->a:Lcom/google/android/gms/b/jf;

    iget-object v2, p0, Lcom/google/android/gms/b/jh;->b:Lcom/google/android/gms/b/jg;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/b/jf;->a(Lcom/google/android/gms/b/jk;)V

    iget-object v0, p0, Lcom/google/android/gms/b/jh;->b:Lcom/google/android/gms/b/jg;

    iget-object v2, p0, Lcom/google/android/gms/b/jh;->a:Lcom/google/android/gms/b/jf;

    invoke-static {v0, v2}, Lcom/google/android/gms/b/jg;->a(Lcom/google/android/gms/b/jg;Lcom/google/android/gms/b/jf;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
