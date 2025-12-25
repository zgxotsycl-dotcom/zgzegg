.class public Lcom/google/android/gms/ads/internal/client/b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/b/jr;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/ads/internal/client/k;

.field private d:Lcom/google/android/gms/ads/a;

.field private e:Lcom/google/android/gms/ads/internal/client/a;

.field private f:Lcom/google/android/gms/ads/internal/client/af;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/google/android/gms/ads/a/a;

.field private j:Lcom/google/android/gms/ads/purchase/d;

.field private k:Lcom/google/android/gms/ads/purchase/b;

.field private l:Lcom/google/android/gms/ads/a/e;

.field private m:Lcom/google/android/gms/ads/a/c;

.field private n:Lcom/google/android/gms/ads/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/k;->a()Lcom/google/android/gms/ads/internal/client/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/ads/internal/client/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/k;Lcom/google/android/gms/ads/a/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/k;Lcom/google/android/gms/ads/a/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/b/jr;

    invoke-direct {v0}, Lcom/google/android/gms/b/jr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->a:Lcom/google/android/gms/b/jr;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/b;->c:Lcom/google/android/gms/ads/internal/client/k;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/b;->l:Lcom/google/android/gms/ads/a/e;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/client/b;->c(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/o;->b()Lcom/google/android/gms/ads/internal/client/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/b;->b:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/b;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/client/b;->a:Lcom/google/android/gms/b/jr;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/client/h;->b(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/b/jr;)Lcom/google/android/gms/ads/internal/client/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->f:Lcom/google/android/gms/ads/internal/client/af;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->d:Lcom/google/android/gms/ads/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->f:Lcom/google/android/gms/ads/internal/client/af;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/f;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/b;->d:Lcom/google/android/gms/ads/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/f;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/af;->a(Lcom/google/android/gms/ads/internal/client/t;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->e:Lcom/google/android/gms/ads/internal/client/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->f:Lcom/google/android/gms/ads/internal/client/af;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/e;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/b;->e:Lcom/google/android/gms/ads/internal/client/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/e;-><init>(Lcom/google/android/gms/ads/internal/client/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/af;->a(Lcom/google/android/gms/ads/internal/client/q;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->i:Lcom/google/android/gms/ads/a/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->f:Lcom/google/android/gms/ads/internal/client/af;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/m;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/b;->i:Lcom/google/android/gms/ads/a/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/m;-><init>(Lcom/google/android/gms/ads/a/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/af;->a(Lcom/google/android/gms/ads/internal/client/al;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->k:Lcom/google/android/gms/ads/purchase/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->f:Lcom/google/android/gms/ads/internal/client/af;

    new-instance v1, Lcom/google/android/gms/b/mr;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/b;->k:Lcom/google/android/gms/ads/purchase/b;

    invoke-direct {v1, v2}, Lcom/google/android/gms/b/mr;-><init>(Lcom/google/android/gms/ads/purchase/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/af;->a(Lcom/google/android/gms/b/mc;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->j:Lcom/google/android/gms/ads/purchase/d;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->f:Lcom/google/android/gms/ads/internal/client/af;

    new-instance v1, Lcom/google/android/gms/b/mw;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/b;->j:Lcom/google/android/gms/ads/purchase/d;

    invoke-direct {v1, v2}, Lcom/google/android/gms/b/mw;-><init>(Lcom/google/android/gms/ads/purchase/d;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/b;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/af;->a(Lcom/google/android/gms/b/mo;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->m:Lcom/google/android/gms/ads/a/c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->f:Lcom/google/android/gms/ads/internal/client/af;

    new-instance v1, Lcom/google/android/gms/b/dz;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/b;->m:Lcom/google/android/gms/ads/a/c;

    invoke-direct {v1, v2}, Lcom/google/android/gms/b/dz;-><init>(Lcom/google/android/gms/ads/a/c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/af;->a(Lcom/google/android/gms/b/dw;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->n:Lcom/google/android/gms/ads/j;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->f:Lcom/google/android/gms/ads/internal/client/af;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/b;->n:Lcom/google/android/gms/ads/j;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/j;->a()Lcom/google/android/gms/ads/internal/client/p;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/af;->a(Lcom/google/android/gms/ads/internal/client/ao;)V

    :cond_7
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The ad unit ID must be set on InterstitialAd before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/a;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/b;->d:Lcom/google/android/gms/ads/a;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/b;->f:Lcom/google/android/gms/ads/internal/client/af;

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
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/b;->e:Lcom/google/android/gms/ads/internal/client/a;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/b;->f:Lcom/google/android/gms/ads/internal/client/af;

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
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-nez v0, :cond_0

    const-string v0, "loadAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/client/b;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->f:Lcom/google/android/gms/ads/internal/client/af;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/b;->c:Lcom/google/android/gms/ads/internal/client/k;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/b;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/ads/internal/client/k;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/au;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/af;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->a:Lcom/google/android/gms/b/jr;

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

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on InterstitialAd."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/b;->g:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/b;->f:Lcom/google/android/gms/ads/internal/client/af;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/b;->f:Lcom/google/android/gms/ads/internal/client/af;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/af;->c()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to check if ad is ready."

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    :try_start_0
    const-string v0, "show"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/client/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->f:Lcom/google/android/gms/ads/internal/client/af;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/af;->g()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to show interstitial."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
