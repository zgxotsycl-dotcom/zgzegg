.class final Lcom/google/android/gms/b/ry;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/rv;

.field final synthetic b:Lcom/google/android/gms/b/sa;

.field final synthetic c:Lcom/google/android/gms/b/sb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/rv;Lcom/google/android/gms/b/sa;Lcom/google/android/gms/b/sb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/ry;->a:Lcom/google/android/gms/b/rv;

    iput-object p2, p0, Lcom/google/android/gms/b/ry;->b:Lcom/google/android/gms/b/sa;

    iput-object p3, p0, Lcom/google/android/gms/b/ry;->c:Lcom/google/android/gms/b/sb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/ry;->a:Lcom/google/android/gms/b/rv;

    iget-object v1, p0, Lcom/google/android/gms/b/ry;->b:Lcom/google/android/gms/b/sa;

    iget-object v2, p0, Lcom/google/android/gms/b/ry;->c:Lcom/google/android/gms/b/sb;

    invoke-interface {v2}, Lcom/google/android/gms/b/sb;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/b/sa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/rv;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/b/ry;->a:Lcom/google/android/gms/b/rv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/rv;->cancel(Z)Z

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
