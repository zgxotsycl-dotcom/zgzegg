.class public final Lcom/google/android/gms/ads/internal/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# instance fields
.field public A:Lcom/google/android/gms/b/pq;

.field B:Landroid/view/View;

.field public C:I

.field D:Z

.field E:Z

.field private F:Ljava/util/HashSet;

.field private G:I

.field private H:I

.field private I:Lcom/google/android/gms/b/rq;

.field private J:Z

.field private K:Z

.field private L:Z

.field final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field final d:Lcom/google/android/gms/b/ab;

.field public final e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field f:Lcom/google/android/gms/ads/internal/ai;

.field public g:Lcom/google/android/gms/b/ps;

.field public h:Lcom/google/android/gms/b/qx;

.field public i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field public j:Lcom/google/android/gms/b/pj;

.field public k:Lcom/google/android/gms/b/pk;

.field public l:Lcom/google/android/gms/b/pl;

.field m:Lcom/google/android/gms/ads/internal/client/q;

.field n:Lcom/google/android/gms/ads/internal/client/t;

.field o:Lcom/google/android/gms/ads/internal/client/al;

.field p:Lcom/google/android/gms/ads/internal/client/ao;

.field q:Lcom/google/android/gms/b/mc;

.field r:Lcom/google/android/gms/b/mo;

.field s:Lcom/google/android/gms/b/et;

.field t:Lcom/google/android/gms/b/ew;

.field u:Landroid/support/v4/g/q;

.field v:Landroid/support/v4/g/q;

.field w:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field x:Lcom/google/android/gms/b/dw;

.field y:Ljava/util/List;

.field z:Lcom/google/android/gms/ads/internal/purchase/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/ah;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/ab;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/ab;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/ah;->A:Lcom/google/android/gms/b/pq;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/ah;->B:Landroid/view/View;

    iput v0, p0, Lcom/google/android/gms/ads/internal/ah;->C:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/ah;->D:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/ah;->E:Z

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/ah;->F:Ljava/util/HashSet;

    iput v1, p0, Lcom/google/android/gms/ads/internal/ah;->G:I

    iput v1, p0, Lcom/google/android/gms/ads/internal/ah;->H:I

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/ah;->J:Z

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/ah;->K:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/ah;->L:Z

    invoke-static {p1}, Lcom/google/android/gms/b/db;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->h()Lcom/google/android/gms/b/pn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/b/pn;->e()Lcom/google/android/gms/b/dg;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/b/db;->a()Ljava/util/List;

    move-result-object v0

    iget v1, p4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->c:I

    if-eqz v1, :cond_0

    iget v1, p4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->h()Lcom/google/android/gms/b/pn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/b/pn;->e()Lcom/google/android/gms/b/dg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/b/dg;->a(Ljava/util/List;)V

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->a:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:Z

    if-nez v0, :cond_2

    iget-boolean v0, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->i:Z

    if-eqz v0, :cond_3

    :cond_2
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/ah;->f:Lcom/google/android/gms/ads/internal/ai;

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/ah;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/ah;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ah;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/ah;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    if-eqz p5, :cond_4

    :goto_1
    iput-object p5, p0, Lcom/google/android/gms/ads/internal/ah;->d:Lcom/google/android/gms/b/ab;

    new-instance v0, Lcom/google/android/gms/b/rq;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/b/rq;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->I:Lcom/google/android/gms/b/rq;

    new-instance v0, Landroid/support/v4/g/q;

    invoke-direct {v0}, Landroid/support/v4/g/q;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->v:Landroid/support/v4/g/q;

    return-void

    :cond_3
    new-instance v0, Lcom/google/android/gms/ads/internal/ai;

    invoke-direct {v0, p1, p0, p0}, Lcom/google/android/gms/ads/internal/ai;-><init>(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->f:Lcom/google/android/gms/ads/internal/ai;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->f:Lcom/google/android/gms/ads/internal/ai;

    iget v1, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->g:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/ai;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->f:Lcom/google/android/gms/ads/internal/ai;

    iget v1, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/ai;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->f:Lcom/google/android/gms/ads/internal/ai;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/ai;->setVisibility(I)V

    goto :goto_0

    :cond_4
    new-instance p5, Lcom/google/android/gms/b/ab;

    new-instance v0, Lcom/google/android/gms/ads/internal/p;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/p;-><init>(Lcom/google/android/gms/ads/internal/ah;)V

    invoke-direct {p5, v0}, Lcom/google/android/gms/b/ab;-><init>(Lcom/google/android/gms/b/u;)V

    goto :goto_1
.end method

.method private b(Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/ah;->f:Lcom/google/android/gms/ads/internal/ai;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    iget-object v2, v2, Lcom/google/android/gms/b/pj;->b:Lcom/google/android/gms/b/sk;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/ah;->I:Lcom/google/android/gms/b/rq;

    invoke-virtual {v2}, Lcom/google/android/gms/b/rq;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    iget-object v2, v2, Lcom/google/android/gms/b/pj;->b:Lcom/google/android/gms/b/sk;

    invoke-interface {v2}, Lcom/google/android/gms/b/sk;->k()Lcom/google/android/gms/b/sl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/b/sl;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/ah;->f:Lcom/google/android/gms/ads/internal/ai;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/ai;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/o;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/ah;->c:Landroid/content/Context;

    aget v5, v2, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/o;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/ah;->c:Landroid/content/Context;

    aget v2, v2, v0

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;I)I

    move-result v2

    iget v4, p0, Lcom/google/android/gms/ads/internal/ah;->G:I

    if-ne v3, v4, :cond_3

    iget v4, p0, Lcom/google/android/gms/ads/internal/ah;->H:I

    if-eq v2, v4, :cond_4

    :cond_3
    iput v3, p0, Lcom/google/android/gms/ads/internal/ah;->G:I

    iput v2, p0, Lcom/google/android/gms/ads/internal/ah;->H:I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    iget-object v2, v2, Lcom/google/android/gms/b/pj;->b:Lcom/google/android/gms/b/sk;

    invoke-interface {v2}, Lcom/google/android/gms/b/sk;->k()Lcom/google/android/gms/b/sl;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/ads/internal/ah;->G:I

    iget v4, p0, Lcom/google/android/gms/ads/internal/ah;->H:I

    if-nez p1, :cond_5

    :goto_1
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/b/sl;->a(IIZ)V

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/ah;->k()V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private k()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->f:Lcom/google/android/gms/ads/internal/ai;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ai;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/ah;->f:Lcom/google/android/gms/ads/internal/ai;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/ads/internal/ai;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq v0, v3, :cond_2

    iput-boolean v4, p0, Lcom/google/android/gms/ads/internal/ah;->J:Z

    :cond_2
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v1, :cond_0

    iput-boolean v4, p0, Lcom/google/android/gms/ads/internal/ah;->K:Z

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->F:Ljava/util/HashSet;

    return-object v0
.end method

.method public a(Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ah;->F:Ljava/util/HashSet;

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/ah;->C:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/ah;->c()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->g:Lcom/google/android/gms/b/ps;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->g:Lcom/google/android/gms/b/ps;

    invoke-virtual {v0}, Lcom/google/android/gms/b/ps;->d()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->h:Lcom/google/android/gms/b/qx;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->h:Lcom/google/android/gms/b/qx;

    invoke-interface {v0}, Lcom/google/android/gms/b/qx;->d()V

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    :cond_3
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    iget-object v0, v0, Lcom/google/android/gms/b/pj;->b:Lcom/google/android/gms/b/sk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    iget-object v0, v0, Lcom/google/android/gms/b/pj;->b:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->destroy()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    iget-object v0, v0, Lcom/google/android/gms/b/pj;->b:Lcom/google/android/gms/b/sk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    iget-object v0, v0, Lcom/google/android/gms/b/pj;->b:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->stopLoading()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    iget-object v0, v0, Lcom/google/android/gms/b/pj;->m:Lcom/google/android/gms/b/jv;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    iget-object v0, v0, Lcom/google/android/gms/b/pj;->m:Lcom/google/android/gms/b/jv;

    invoke-interface {v0}, Lcom/google/android/gms/b/jv;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not destroy mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/ah;->C:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/ads/internal/ah;->C:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->f:Lcom/google/android/gms/ads/internal/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->f:Lcom/google/android/gms/ads/internal/ai;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ai;->b()V

    :cond_0
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/ah;->J:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/ah;->K:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/ah;->J:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/ah;->L:Z

    if-eqz v0, :cond_1

    const-string v0, "top-scrollable"

    goto :goto_0

    :cond_1
    const-string v0, "top-locked"

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/ah;->K:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/ah;->L:Z

    if-eqz v0, :cond_3

    const-string v0, "bottom-scrollable"

    goto :goto_0

    :cond_3
    const-string v0, "bottom-locked"

    goto :goto_0

    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method public i()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->l:Lcom/google/android/gms/b/pl;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    iget-wide v2, v1, Lcom/google/android/gms/b/pj;->t:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/b/pl;->a(J)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->l:Lcom/google/android/gms/b/pl;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    iget-wide v2, v1, Lcom/google/android/gms/b/pj;->u:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/b/pl;->b(J)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->l:Lcom/google/android/gms/b/pl;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ah;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/pl;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->l:Lcom/google/android/gms/b/pl;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    iget-boolean v1, v1, Lcom/google/android/gms/b/pj;->k:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/pl;->b(Z)V

    return-void
.end method

.method public j()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/ah;->g()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/ah;->n:Lcom/google/android/gms/ads/internal/client/t;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/ah;->o:Lcom/google/android/gms/ads/internal/client/al;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/ah;->r:Lcom/google/android/gms/b/mo;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/ah;->q:Lcom/google/android/gms/b/mc;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/ah;->x:Lcom/google/android/gms/b/dw;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/ah;->p:Lcom/google/android/gms/ads/internal/client/ao;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/ah;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->f:Lcom/google/android/gms/ads/internal/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ah;->f:Lcom/google/android/gms/ads/internal/ai;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ai;->removeAllViews()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/ah;->b()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/ah;->d()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/ah;->j:Lcom/google/android/gms/b/pj;

    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/ah;->b(Z)V

    return-void
.end method

.method public onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/ah;->b(Z)V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/ah;->L:Z

    return-void
.end method
