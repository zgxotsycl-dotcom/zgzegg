.class public abstract Lcom/google/android/gms/ads/internal/d;
.super Lcom/google/android/gms/ads/internal/b;

# interfaces
.implements Lcom/google/android/gms/ads/internal/o;
.implements Lcom/google/android/gms/b/li;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/b/js;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/i;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/b/js;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/i;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/b/pk;Lcom/google/android/gms/ads/internal/j;)Lcom/google/android/gms/b/sk;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ah;->f:Lcom/google/android/gms/ads/internal/ai;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ai;->getNextView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/b/sk;

    if-eqz v1, :cond_0

    const-string v1, "Reusing webview..."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/gms/b/sk;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ah;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ah;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/d;->a:Lcom/google/android/gms/b/dq;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/b/sk;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/b/dq;)V

    move-object v10, v0

    :goto_0
    invoke-interface {v10}, Lcom/google/android/gms/b/sk;->k()Lcom/google/android/gms/b/sl;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v6, p0

    move-object v8, p2

    move-object v9, p0

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/b/sl;->a(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/t;Lcom/google/android/gms/b/fk;Lcom/google/android/gms/ads/internal/overlay/aa;ZLcom/google/android/gms/b/gg;Lcom/google/android/gms/b/gi;Lcom/google/android/gms/ads/internal/j;Lcom/google/android/gms/b/li;)V

    iget-object v0, p1, Lcom/google/android/gms/b/pk;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->w:Ljava/lang/String;

    invoke-interface {v10, v0}, Lcom/google/android/gms/b/sk;->b(Ljava/lang/String;)V

    return-object v10

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ah;->f:Lcom/google/android/gms/ads/internal/ai;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/ai;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->f()Lcom/google/android/gms/b/sr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ah;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ah;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/ah;->d:Lcom/google/android/gms/b/ab;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/ah;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/d;->a:Lcom/google/android/gms/b/dq;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/d;->i:Lcom/google/android/gms/ads/internal/i;

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/b/sr;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/b/ab;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/dq;Lcom/google/android/gms/ads/internal/i;)Lcom/google/android/gms/b/sk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ah;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->h:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/d;->a(Landroid/view/View;)V

    :cond_2
    move-object v10, v0

    goto :goto_0
.end method

.method public a(IIII)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/d;->p()Z

    return-void
.end method

.method public a(Lcom/google/android/gms/b/dw;)V
    .locals 1

    const-string v0, "setOnCustomRenderedAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/av;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/ah;->x:Lcom/google/android/gms/b/dw;

    return-void
.end method

.method protected a(Lcom/google/android/gms/b/pk;Lcom/google/android/gms/b/dq;)V
    .locals 10

    iget v0, p1, Lcom/google/android/gms/b/pk;->e:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/b/qk;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/e;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/e;-><init>(Lcom/google/android/gms/ads/internal/d;Lcom/google/android/gms/b/pk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/b/pk;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v1, p1, Lcom/google/android/gms/b/pk;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/ah;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/b/pk;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/ah;->C:I

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->d()Lcom/google/android/gms/b/ng;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ah;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v4, v2, Lcom/google/android/gms/ads/internal/ah;->d:Lcom/google/android/gms/b/ab;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/d;->j:Lcom/google/android/gms/b/js;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p0

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/b/ng;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/b/pk;Lcom/google/android/gms/b/ab;Lcom/google/android/gms/b/sk;Lcom/google/android/gms/b/js;Lcom/google/android/gms/b/nh;Lcom/google/android/gms/b/dq;)Lcom/google/android/gms/b/qx;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/ah;->h:Lcom/google/android/gms/b/qx;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/b/qk;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/f;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/ads/internal/f;-><init>(Lcom/google/android/gms/ads/internal/d;Lcom/google/android/gms/b/pk;Lcom/google/android/gms/b/dq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/b/pj;Lcom/google/android/gms/b/pj;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ah;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ah;->f:Lcom/google/android/gms/ads/internal/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ah;->f:Lcom/google/android/gms/ads/internal/ai;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ai;->a()Lcom/google/android/gms/b/qy;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/b/pj;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/qy;->a(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/b;->a(Lcom/google/android/gms/b/pj;Lcom/google/android/gms/b/pj;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;)V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/ah;->B:Landroid/view/View;

    new-instance v0, Lcom/google/android/gms/b/pj;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ah;->k:Lcom/google/android/gms/b/pk;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/b/pj;-><init>(Lcom/google/android/gms/b/pk;Lcom/google/android/gms/b/sk;Lcom/google/android/gms/b/jc;Lcom/google/android/gms/b/jv;Ljava/lang/String;Lcom/google/android/gms/b/jf;Lcom/google/android/gms/ads/internal/formats/h;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/d;->b(Lcom/google/android/gms/b/pj;)V

    return-void
.end method

.method public r()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/d;->a(Lcom/google/android/gms/b/pj;Z)V

    return-void
.end method

.method public y()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/d;->e()V

    return-void
.end method

.method public z()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/d;->o()Z

    return-void
.end method
