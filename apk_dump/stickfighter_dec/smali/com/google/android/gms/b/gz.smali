.class public Lcom/google/android/gms/b/gz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/wj;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/b/ha;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/b/ha;-><init>(Lcom/google/android/gms/b/gz;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/b/gz;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/tk;Lcom/google/android/gms/b/uk;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/b/gz;->a(Lcom/google/android/gms/b/tk;Lcom/google/android/gms/b/uk;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/b/tk;Lcom/google/android/gms/b/uk;Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/b/tk;->t()V

    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/b/tk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/gz;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/b/hb;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/b/hb;-><init>(Lcom/google/android/gms/b/gz;Lcom/google/android/gms/b/tk;Lcom/google/android/gms/b/uk;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/b/tk;Lcom/google/android/gms/b/xa;)V
    .locals 4

    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/b/tk;->b(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/android/gms/b/uk;->a(Lcom/google/android/gms/b/xa;)Lcom/google/android/gms/b/uk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/gz;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/b/hb;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/google/android/gms/b/hb;-><init>(Lcom/google/android/gms/b/gz;Lcom/google/android/gms/b/tk;Lcom/google/android/gms/b/uk;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
