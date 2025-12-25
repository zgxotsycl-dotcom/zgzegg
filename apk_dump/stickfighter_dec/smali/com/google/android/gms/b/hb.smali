.class Lcom/google/android/gms/b/hb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/gz;

.field private final b:Lcom/google/android/gms/b/tk;

.field private final c:Lcom/google/android/gms/b/uk;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/gz;Lcom/google/android/gms/b/tk;Lcom/google/android/gms/b/uk;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/hb;->a:Lcom/google/android/gms/b/gz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/b/hb;->b:Lcom/google/android/gms/b/tk;

    iput-object p3, p0, Lcom/google/android/gms/b/hb;->c:Lcom/google/android/gms/b/uk;

    iput-object p4, p0, Lcom/google/android/gms/b/hb;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/hb;->b:Lcom/google/android/gms/b/tk;

    invoke-virtual {v0}, Lcom/google/android/gms/b/tk;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/hb;->b:Lcom/google/android/gms/b/tk;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/tk;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/b/hb;->c:Lcom/google/android/gms/b/uk;

    invoke-virtual {v0}, Lcom/google/android/gms/b/uk;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/b/hb;->b:Lcom/google/android/gms/b/tk;

    iget-object v1, p0, Lcom/google/android/gms/b/hb;->c:Lcom/google/android/gms/b/uk;

    iget-object v1, v1, Lcom/google/android/gms/b/uk;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/tk;->a(Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/b/hb;->c:Lcom/google/android/gms/b/uk;

    iget-boolean v0, v0, Lcom/google/android/gms/b/uk;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/b/hb;->b:Lcom/google/android/gms/b/tk;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/tk;->b(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/b/hb;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/hb;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/b/hb;->b:Lcom/google/android/gms/b/tk;

    iget-object v1, p0, Lcom/google/android/gms/b/hb;->c:Lcom/google/android/gms/b/uk;

    iget-object v1, v1, Lcom/google/android/gms/b/uk;->c:Lcom/google/android/gms/b/xa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/tk;->b(Lcom/google/android/gms/b/xa;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/b/hb;->b:Lcom/google/android/gms/b/tk;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/tk;->c(Ljava/lang/String;)V

    goto :goto_2
.end method
