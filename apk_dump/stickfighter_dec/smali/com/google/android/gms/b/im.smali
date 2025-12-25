.class Lcom/google/android/gms/b/im;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/se;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/iu;

.field final synthetic b:Lcom/google/android/gms/b/ic;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/ic;Lcom/google/android/gms/b/iu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/im;->b:Lcom/google/android/gms/b/ic;

    iput-object p2, p0, Lcom/google/android/gms/b/im;->a:Lcom/google/android/gms/b/iu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/im;->b:Lcom/google/android/gms/b/ic;

    invoke-static {v0}, Lcom/google/android/gms/b/ic;->c(Lcom/google/android/gms/b/ic;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/im;->b:Lcom/google/android/gms/b/ic;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/b/ic;->a(Lcom/google/android/gms/b/ic;I)I

    const-string v0, "Failed loading new engine. Marking new engine destroyable."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/im;->a:Lcom/google/android/gms/b/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/b/iu;->c()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
