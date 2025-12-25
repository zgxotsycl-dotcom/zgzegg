.class public Lcom/google/android/gms/b/uq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/vp;


# instance fields
.field private final a:Lcom/google/android/gms/b/vq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/vq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/b/uq;->a:Lcom/google/android/gms/b/vq;

    return-void
.end method

.method private a(Lcom/google/android/gms/b/vo;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/uq;->a:Lcom/google/android/gms/b/vq;

    iget-object v0, v0, Lcom/google/android/gms/b/vq;->g:Lcom/google/android/gms/b/vh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/b/vh;->a(Lcom/google/android/gms/b/vo;)V

    iget-object v0, p0, Lcom/google/android/gms/b/uq;->a:Lcom/google/android/gms/b/vq;

    iget-object v0, v0, Lcom/google/android/gms/b/vq;->g:Lcom/google/android/gms/b/vh;

    invoke-interface {p1}, Lcom/google/android/gms/b/vo;->b()Lcom/google/android/gms/common/api/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/vh;->a(Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/h;->e()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/b/uq;->a:Lcom/google/android/gms/b/vq;

    iget-object v1, v1, Lcom/google/android/gms/b/vq;->b:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/gms/b/vo;->b()Lcom/google/android/gms/common/api/i;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/b/vo;->c(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/b/vo;->b(Lcom/google/android/gms/common/api/h;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/ug;)Lcom/google/android/gms/b/ug;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/uq;->b(Lcom/google/android/gms/b/ug;)Lcom/google/android/gms/b/ug;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/uq;->a:Lcom/google/android/gms/b/vq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/vq;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/b/uq;->a:Lcom/google/android/gms/b/vq;

    iget-object v0, v0, Lcom/google/android/gms/b/vq;->h:Lcom/google/android/gms/b/vw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/vw;->a_(I)V

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

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/b/uq;->a(Lcom/google/android/gms/b/vo;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/b/uq;->a:Lcom/google/android/gms/b/vq;

    new-instance v1, Lcom/google/android/gms/b/ur;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/b/ur;-><init>(Lcom/google/android/gms/b/uq;Lcom/google/android/gms/b/vp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/vq;->a(Lcom/google/android/gms/b/vr;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/uq;->a:Lcom/google/android/gms/b/vq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/vq;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
