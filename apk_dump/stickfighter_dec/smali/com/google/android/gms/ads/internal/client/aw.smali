.class public Lcom/google/android/gms/ads/internal/client/aw;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/b/jr;

.field private final b:Lcom/google/android/gms/ads/internal/client/k;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Lcom/google/android/gms/ads/a;

.field private e:Lcom/google/android/gms/ads/internal/client/a;

.field private f:Lcom/google/android/gms/ads/internal/client/af;

.field private g:[Lcom/google/android/gms/ads/g;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/view/ViewGroup;

.field private k:Lcom/google/android/gms/ads/a/a;

.field private l:Lcom/google/android/gms/ads/purchase/b;

.field private m:Lcom/google/android/gms/ads/purchase/d;

.field private n:Lcom/google/android/gms/ads/a/c;

.field private o:Z

.field private p:Lcom/google/android/gms/ads/j;

.field private q:Z


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/k;Lcom/google/android/gms/ads/internal/client/af;Z)V
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/b/jr;

    invoke-direct {v0}, Lcom/google/android/gms/b/jr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->a:Lcom/google/android/gms/b/jr;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/aw;->j:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/client/aw;->b:Lcom/google/android/gms/ads/internal/client/k;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean p6, p0, Lcom/google/android/gms/ads/internal/client/aw;->q:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/internal/client/n;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/ads/internal/client/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/ads/internal/client/n;->a(Z)[Lcom/google/android/gms/ads/g;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/aw;->g:[Lcom/google/android/gms/ads/g;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/n;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/o;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/aw;->g:[Lcom/google/android/gms/ads/g;

    aget-object v2, v2, v3

    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/aw;->q:Z

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/internal/client/aw;->a(Landroid/content/Context;Lcom/google/android/gms/ads/g;Z)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    const-string v2, "Ads by Google"

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/a;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/o;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    sget-object v4, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/ads/g;

    invoke-direct {v3, v1, v4}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/g;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v3, v1, v0}, Lcom/google/android/gms/ads/internal/util/client/a;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/k;Z)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/client/aw;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/k;Lcom/google/android/gms/ads/internal/client/af;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Z)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/k;->a()Lcom/google/android/gms/ads/internal/client/k;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/aw;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/k;Z)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/gms/ads/g;Z)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/g;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->a(Z)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;[Lcom/google/android/gms/ads/g;Z)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/g;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->a(Z)V

    return-object v0
.end method

.method private n()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/af;->a()Lcom/google/android/gms/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/aw;->j:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/a/d;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get an ad frame."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/af;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to destroy AdView."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/a/a;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/aw;->k:Lcom/google/android/gms/ads/a/a;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/m;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/m;-><init>(Lcom/google/android/gms/ads/a/a;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/af;->a(Lcom/google/android/gms/ads/internal/client/al;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AppEventListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/ads/a/c;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/aw;->n:Lcom/google/android/gms/ads/a/c;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/b/dz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/b/dz;-><init>(Lcom/google/android/gms/ads/a/c;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/af;->a(Lcom/google/android/gms/b/dw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the onCustomRenderedAdLoadedListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/ads/a;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/aw;->d:Lcom/google/android/gms/ads/a;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/f;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/f;-><init>(Lcom/google/android/gms/ads/a;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/af;->a(Lcom/google/android/gms/ads/internal/client/t;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AdListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/a;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/aw;->e:Lcom/google/android/gms/ads/internal/client/a;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/e;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/e;-><init>(Lcom/google/android/gms/ads/internal/client/a;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/af;->a(Lcom/google/android/gms/ads/internal/client/q;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AdClickListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/au;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/aw;->l()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/aw;->b:Lcom/google/android/gms/ads/internal/client/k;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/aw;->j:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/ads/internal/client/k;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/au;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/af;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->a:Lcom/google/android/gms/b/jr;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/au;->j()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/jr;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/j;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/aw;->p:Lcom/google/android/gms/ads/j;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->p:Lcom/google/android/gms/ads/j;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/af;->a(Lcom/google/android/gms/ads/internal/client/ao;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->p:Lcom/google/android/gms/ads/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/j;->a()Lcom/google/android/gms/ads/internal/client/p;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set correlator."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/ads/purchase/b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->m:Lcom/google/android/gms/ads/purchase/d;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Play store purchase parameter has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/aw;->l:Lcom/google/android/gms/ads/purchase/b;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/android/gms/b/mr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/b/mr;-><init>(Lcom/google/android/gms/ads/purchase/b;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/af;->a(Lcom/google/android/gms/b/mc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the InAppPurchaseListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/aw;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/client/aw;->o:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/client/aw;->o:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/af;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to set manual impressions."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public varargs a([Lcom/google/android/gms/ads/g;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->g:[Lcom/google/android/gms/ads/g;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/aw;->b([Lcom/google/android/gms/ads/g;)V

    return-void
.end method

.method public b()Lcom/google/android/gms/ads/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->d:Lcom/google/android/gms/ads/a;

    return-object v0
.end method

.method public varargs b([Lcom/google/android/gms/ads/g;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/aw;->g:[Lcom/google/android/gms/ads/g;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/aw;->j:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/aw;->g:[Lcom/google/android/gms/ads/g;

    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/aw;->q:Z

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/internal/client/aw;->a(Landroid/content/Context;[Lcom/google/android/gms/ads/g;Z)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/af;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the ad size."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public c()Lcom/google/android/gms/ads/g;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/af;->j()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->a()Lcom/google/android/gms/ads/g;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get the current AdSize."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->g:[Lcom/google/android/gms/ads/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->g:[Lcom/google/android/gms/ads/g;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()[Lcom/google/android/gms/ads/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->g:[Lcom/google/android/gms/ads/g;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/google/android/gms/ads/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->k:Lcom/google/android/gms/ads/a/a;

    return-object v0
.end method

.method public g()Lcom/google/android/gms/ads/purchase/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->l:Lcom/google/android/gms/ads/purchase/b;

    return-object v0
.end method

.method public h()Lcom/google/android/gms/ads/a/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->n:Lcom/google/android/gms/ads/a/c;

    return-object v0
.end method

.method public i()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/af;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call pause."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public j()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/af;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call resume."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/af;->k()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get the mediation adapter class name."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method l()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->g:[Lcom/google/android/gms/ads/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/aw;->m()Lcom/google/android/gms/ads/internal/client/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->d:Lcom/google/android/gms/ads/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/f;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/aw;->d:Lcom/google/android/gms/ads/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/f;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/af;->a(Lcom/google/android/gms/ads/internal/client/t;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->e:Lcom/google/android/gms/ads/internal/client/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/e;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/aw;->e:Lcom/google/android/gms/ads/internal/client/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/e;-><init>(Lcom/google/android/gms/ads/internal/client/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/af;->a(Lcom/google/android/gms/ads/internal/client/q;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->k:Lcom/google/android/gms/ads/a/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/m;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/aw;->k:Lcom/google/android/gms/ads/a/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/m;-><init>(Lcom/google/android/gms/ads/a/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/af;->a(Lcom/google/android/gms/ads/internal/client/al;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->l:Lcom/google/android/gms/ads/purchase/b;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    new-instance v1, Lcom/google/android/gms/b/mr;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/aw;->l:Lcom/google/android/gms/ads/purchase/b;

    invoke-direct {v1, v2}, Lcom/google/android/gms/b/mr;-><init>(Lcom/google/android/gms/ads/purchase/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/af;->a(Lcom/google/android/gms/b/mc;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->m:Lcom/google/android/gms/ads/purchase/d;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    new-instance v1, Lcom/google/android/gms/b/mw;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/aw;->m:Lcom/google/android/gms/ads/purchase/d;

    invoke-direct {v1, v2}, Lcom/google/android/gms/b/mw;-><init>(Lcom/google/android/gms/ads/purchase/d;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/aw;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/af;->a(Lcom/google/android/gms/b/mo;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->n:Lcom/google/android/gms/ads/a/c;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    new-instance v1, Lcom/google/android/gms/b/dz;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/aw;->n:Lcom/google/android/gms/ads/a/c;

    invoke-direct {v1, v2}, Lcom/google/android/gms/b/dz;-><init>(Lcom/google/android/gms/ads/a/c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/af;->a(Lcom/google/android/gms/b/dw;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->p:Lcom/google/android/gms/ads/j;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/aw;->p:Lcom/google/android/gms/ads/j;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/j;->a()Lcom/google/android/gms/ads/internal/client/p;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/af;->a(Lcom/google/android/gms/ads/internal/client/ao;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->f:Lcom/google/android/gms/ads/internal/client/af;

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/client/aw;->o:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/af;->a(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/aw;->n()V

    return-void
.end method

.method protected m()Lcom/google/android/gms/ads/internal/client/af;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aw;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/o;->b()Lcom/google/android/gms/ads/internal/client/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/aw;->g:[Lcom/google/android/gms/ads/g;

    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/aw;->q:Z

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/ads/internal/client/aw;->a(Landroid/content/Context;[Lcom/google/android/gms/ads/g;Z)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/aw;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/client/aw;->a:Lcom/google/android/gms/b/jr;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/gms/ads/internal/client/h;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/b/jr;)Lcom/google/android/gms/ads/internal/client/af;

    move-result-object v0

    return-object v0
.end method
