.class public Lcom/google/android/gms/ads/internal/t;
.super Lcom/google/android/gms/ads/internal/d;

# interfaces
.implements Lcom/google/android/gms/b/gi;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# instance fields
.field protected transient l:Z

.field private m:Z

.field private n:F

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/b/js;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/i;)V
    .locals 2

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/d;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/b/js;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/i;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/t;->l:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "background"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/t;->o:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->e()Lcom/google/android/gms/b/qk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ah;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ah;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/b/qk;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/t;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/t;->m:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/ads/internal/t;)F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/t;->n:F

    return v0
.end method


# virtual methods
.method protected A()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ah;->c:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ah;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_2

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_2

    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v2, v3, Landroid/graphics/Rect;->top:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public B()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/ads/internal/u;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/t;->o:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/u;-><init>(Lcom/google/android/gms/ads/internal/t;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/u;->g()Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ah;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ah;->b()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iput-boolean v2, v0, Lcom/google/android/gms/ads/internal/ah;->E:Z

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/t;->l:Z

    :cond_0
    return-void
.end method

.method protected a(Lcom/google/android/gms/b/pk;Lcom/google/android/gms/ads/internal/j;)Lcom/google/android/gms/b/sk;
    .locals 12

    const/4 v11, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->f()Lcom/google/android/gms/b/sr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ah;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ah;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v5, v4, Lcom/google/android/gms/ads/internal/ah;->d:Lcom/google/android/gms/b/ab;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/ah;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/t;->a:Lcom/google/android/gms/b/dq;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/t;->i:Lcom/google/android/gms/ads/internal/i;

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/b/sr;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/b/ab;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/dq;Lcom/google/android/gms/ads/internal/i;)Lcom/google/android/gms/b/sk;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/android/gms/b/sk;->k()Lcom/google/android/gms/b/sl;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/b/db;->V:Lcom/google/android/gms/b/cs;

    invoke-virtual {v1}, Lcom/google/android/gms/b/cs;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v1, p0

    move-object v2, v11

    move-object v3, p0

    move-object v4, p0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p2

    move-object v9, v11

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/b/sl;->a(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/t;Lcom/google/android/gms/b/fk;Lcom/google/android/gms/ads/internal/overlay/aa;ZLcom/google/android/gms/b/gg;Lcom/google/android/gms/b/gi;Lcom/google/android/gms/ads/internal/j;Lcom/google/android/gms/b/li;)V

    iget-object v0, p1, Lcom/google/android/gms/b/pk;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->w:Ljava/lang/String;

    invoke-interface {v10, v0}, Lcom/google/android/gms/b/sk;->b(Ljava/lang/String;)V

    return-object v10
.end method

.method public a(ZF)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/t;->m:Z

    iput p2, p0, Lcom/google/android/gms/ads/internal/t;->n:F

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/b/dq;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    if-eqz v0, :cond_0

    const-string v0, "An interstitial is already loading. Aborting."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/d;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/b/dq;)Z

    move-result v0

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/b/pj;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ah;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/b/pj;->b:Lcom/google/android/gms/b/sk;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->g()Lcom/google/android/gms/b/qn;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/b/pj;->b:Lcom/google/android/gms/b/sk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/qn;->a(Lcom/google/android/gms/b/sk;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->e:Lcom/google/android/gms/ads/internal/ad;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ad;->d()Z

    move-result v0

    return v0
.end method

.method public a(Lcom/google/android/gms/b/pj;Lcom/google/android/gms/b/pj;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/d;->a(Lcom/google/android/gms/b/pj;Lcom/google/android/gms/b/pj;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ah;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ah;->B:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/google/android/gms/b/pj;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->h:Lcom/google/android/gms/b/ao;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ah;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ah;->B:Landroid/view/View;

    invoke-virtual {v0, v1, p2, v2}, Lcom/google/android/gms/b/ao;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/b/pj;Landroid/view/View;)Lcom/google/android/gms/b/ap;

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iput-boolean p1, v0, Lcom/google/android/gms/ads/internal/ah;->E:Z

    return-void
.end method

.method public b_()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/t;->r()V

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/d;->b_()V

    return-void
.end method

.method public g()V
    .locals 10

    const/4 v3, 0x0

    const-string v0, "showInterstitial must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/av;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    if-nez v0, :cond_1

    const-string v0, "The interstitial has not loaded."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/android/gms/b/db;->an:Lcom/google/android/gms/b/cs;

    invoke-virtual {v0}, Lcom/google/android/gms/b/cs;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ah;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ah;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/t;->l:Z

    if-nez v1, :cond_2

    const-string v1, "It is not recommended to show an interstitial before onAdLoaded completes."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "appid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "action"

    const-string v4, "show_interstitial_before_load_finish"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/t;->a(Landroid/os/Bundle;)V

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->e()Lcom/google/android/gms/b/qk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ah;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/b/qk;->g(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "It is not recommended to show an interstitial when app is not in foreground."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "appid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action"

    const-string v2, "show_interstitial_app_not_in_foreground"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/t;->a(Landroid/os/Bundle;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ah;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    iget-boolean v0, v0, Lcom/google/android/gms/b/pj;->k:Z

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    iget-object v0, v0, Lcom/google/android/gms/b/pj;->m:Lcom/google/android/gms/b/jv;

    invoke-interface {v0}, Lcom/google/android/gms/b/jv;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not show interstitial."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/t;->B()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ah;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    iget-object v0, v0, Lcom/google/android/gms/b/pj;->b:Lcom/google/android/gms/b/sk;

    if-nez v0, :cond_6

    const-string v0, "The interstitial failed to load."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    iget-object v0, v0, Lcom/google/android/gms/b/pj;->b:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "The interstitial is already showing."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    iget-object v0, v0, Lcom/google/android/gms/b/pj;->b:Lcom/google/android/gms/b/sk;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/sk;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    iget-object v0, v0, Lcom/google/android/gms/b/pj;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->h:Lcom/google/android/gms/b/ao;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ah;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/b/ao;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/b/pj;)Lcom/google/android/gms/b/ap;

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/ah;->E:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->e()Lcom/google/android/gms/b/qk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ah;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/qk;->h(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    :goto_2
    sget-object v0, Lcom/google/android/gms/b/db;->aD:Lcom/google/android/gms/b/cs;

    invoke-virtual {v0}, Lcom/google/android/gms/b/cs;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    new-instance v0, Lcom/google/android/gms/ads/internal/v;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/t;->o:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/ads/internal/v;-><init>(Lcom/google/android/gms/ads/internal/t;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/v;->g()Ljava/util/concurrent/Future;

    goto/16 :goto_0

    :cond_9
    move-object v1, v3

    goto :goto_2

    :cond_a
    new-instance v0, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/ah;->E:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/t;->A()Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;-><init>(ZZLjava/lang/String;ZF)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    iget-object v1, v1, Lcom/google/android/gms/b/pj;->b:Lcom/google/android/gms/b/sk;

    invoke-interface {v1}, Lcom/google/android/gms/b/sk;->p()I

    move-result v6

    const/4 v1, -0x1

    if-ne v6, v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    iget v6, v1, Lcom/google/android/gms/b/pj;->g:I

    :cond_b
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    iget-object v5, v2, Lcom/google/android/gms/b/pj;->b:Lcom/google/android/gms/b/sk;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/ah;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    iget-object v8, v2, Lcom/google/android/gms/b/pj;->v:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/t;Lcom/google/android/gms/ads/internal/overlay/aa;Lcom/google/android/gms/b/sk;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->c()Lcom/google/android/gms/ads/internal/overlay/r;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/ah;->c:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/internal/overlay/r;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    goto/16 :goto_0
.end method

.method protected o()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/t;->B()V

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/d;->o()Z

    move-result v0

    return v0
.end method

.method protected q()Z
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/d;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/t;->l:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
