.class Lcom/google/android/gms/b/ne;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/pj;

.field final synthetic b:Lcom/google/android/gms/b/nc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/nc;Lcom/google/android/gms/b/pj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/ne;->b:Lcom/google/android/gms/b/nc;

    iput-object p2, p0, Lcom/google/android/gms/b/ne;->a:Lcom/google/android/gms/b/pj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/ne;->b:Lcom/google/android/gms/b/nc;

    iget-object v1, v0, Lcom/google/android/gms/b/nc;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/ne;->b:Lcom/google/android/gms/b/nc;

    iget-object v2, p0, Lcom/google/android/gms/b/ne;->a:Lcom/google/android/gms/b/pj;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/b/nc;->a(Lcom/google/android/gms/b/pj;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
