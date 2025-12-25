.class public Lcom/google/android/gms/b/vg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/vp;


# instance fields
.field private final a:Lcom/google/android/gms/b/vq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/vq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/b/vg;->a:Lcom/google/android/gms/b/vq;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/ug;)Lcom/google/android/gms/b/ug;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/vg;->a:Lcom/google/android/gms/b/vq;

    iget-object v0, v0, Lcom/google/android/gms/b/vq;->g:Lcom/google/android/gms/b/vh;

    iget-object v0, v0, Lcom/google/android/gms/b/vh;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/vg;->a:Lcom/google/android/gms/b/vq;

    invoke-virtual {v0}, Lcom/google/android/gms/b/vq;->f()V

    iget-object v0, p0, Lcom/google/android/gms/b/vg;->a:Lcom/google/android/gms/b/vq;

    iget-object v0, v0, Lcom/google/android/gms/b/vq;->g:Lcom/google/android/gms/b/vh;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/b/vh;->d:Ljava/util/Set;

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V
    .locals 0

    return-void
.end method

.method public b(Lcom/google/android/gms/b/ug;)Lcom/google/android/gms/b/ug;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/vg;->a:Lcom/google/android/gms/b/vq;

    iget-object v0, v0, Lcom/google/android/gms/b/vq;->g:Lcom/google/android/gms/b/vh;

    invoke-virtual {v0}, Lcom/google/android/gms/b/vh;->f()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/vg;->a:Lcom/google/android/gms/b/vq;

    invoke-virtual {v0}, Lcom/google/android/gms/b/vq;->d()V

    return-void
.end method
