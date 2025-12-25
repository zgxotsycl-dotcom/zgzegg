.class public Lcom/google/android/gms/b/ia;
.super Lcom/google/android/gms/ads/internal/client/ag;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/android/gms/b/hc;

.field private c:Lcom/google/android/gms/ads/internal/t;

.field private d:Lcom/google/android/gms/b/hu;

.field private e:Lcom/google/android/gms/b/mo;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/b/js;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/i;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/b/hc;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3, p4, p5}, Lcom/google/android/gms/b/hc;-><init>(Landroid/content/Context;Lcom/google/android/gms/b/js;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/i;)V

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/b/ia;-><init>(Ljava/lang/String;Lcom/google/android/gms/b/hc;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/b/hc;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/ag;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/b/ia;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/b/ia;->b:Lcom/google/android/gms/b/hc;

    new-instance v0, Lcom/google/android/gms/b/hu;

    invoke-direct {v0}, Lcom/google/android/gms/b/hu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/ia;->d:Lcom/google/android/gms/b/hu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->p()Lcom/google/android/gms/b/hw;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/b/hw;->a(Lcom/google/android/gms/b/hc;)V

    return-void
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->e:Lcom/google/android/gms/b/mo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, p0, Lcom/google/android/gms/b/ia;->e:Lcom/google/android/gms/b/mo;

    iget-object v2, p0, Lcom/google/android/gms/b/ia;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/b/mo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t;->a()Lcom/google/android/gms/a/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/al;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->d:Lcom/google/android/gms/b/hu;

    iput-object p1, v0, Lcom/google/android/gms/b/hu;->b:Lcom/google/android/gms/ads/internal/client/al;

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->d:Lcom/google/android/gms/b/hu;

    iget-object v1, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/hu;->a(Lcom/google/android/gms/ads/internal/t;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/ao;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/b/ia;->e()V

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/ads/internal/client/ao;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/q;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->d:Lcom/google/android/gms/b/hu;

    iput-object p1, v0, Lcom/google/android/gms/b/hu;->e:Lcom/google/android/gms/ads/internal/client/q;

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->d:Lcom/google/android/gms/b/hu;

    iget-object v1, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/hu;->a(Lcom/google/android/gms/ads/internal/t;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/t;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->d:Lcom/google/android/gms/b/hu;

    iput-object p1, v0, Lcom/google/android/gms/b/hu;->a:Lcom/google/android/gms/ads/internal/client/t;

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->d:Lcom/google/android/gms/b/hu;

    iget-object v1, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/hu;->a(Lcom/google/android/gms/ads/internal/t;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/b/dw;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->d:Lcom/google/android/gms/b/hu;

    iput-object p1, v0, Lcom/google/android/gms/b/hu;->d:Lcom/google/android/gms/b/dw;

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->d:Lcom/google/android/gms/b/hu;

    iget-object v1, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/hu;->a(Lcom/google/android/gms/ads/internal/t;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/b/mc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->d:Lcom/google/android/gms/b/hu;

    iput-object p1, v0, Lcom/google/android/gms/b/hu;->c:Lcom/google/android/gms/b/mc;

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->d:Lcom/google/android/gms/b/hu;

    iget-object v1, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/hu;->a(Lcom/google/android/gms/ads/internal/t;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/b/mo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/ia;->e:Lcom/google/android/gms/b/mo;

    iput-object p2, p0, Lcom/google/android/gms/b/ia;->f:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/b/ia;->m()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/b/ia;->e()V

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/t;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .locals 3

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->j:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/b/ia;->e()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->p()Lcom/google/android/gms/b/hw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/ia;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/b/hw;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;)Lcom/google/android/gms/b/hz;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/google/android/gms/b/hz;->e:Z

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/android/gms/b/hz;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/b/hz;->a:Lcom/google/android/gms/ads/internal/t;

    iput-object v1, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, p0, Lcom/google/android/gms/b/ia;->b:Lcom/google/android/gms/b/hc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/hz;->a(Lcom/google/android/gms/b/hc;)V

    iget-object v1, v0, Lcom/google/android/gms/b/hz;->c:Lcom/google/android/gms/b/hd;

    iget-object v2, p0, Lcom/google/android/gms/b/ia;->d:Lcom/google/android/gms/b/hu;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/b/hd;->a(Lcom/google/android/gms/b/hu;)V

    iget-object v1, p0, Lcom/google/android/gms/b/ia;->d:Lcom/google/android/gms/b/hu;

    iget-object v2, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/b/hu;->a(Lcom/google/android/gms/ads/internal/t;)V

    invoke-direct {p0}, Lcom/google/android/gms/b/ia;->m()V

    iget-boolean v0, v0, Lcom/google/android/gms/b/hz;->f:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/b/ia;->b:Lcom/google/android/gms/b/hc;

    iget-object v1, p0, Lcom/google/android/gms/b/ia;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/hc;->a(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->d:Lcom/google/android/gms/b/hu;

    iget-object v1, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/hu;->a(Lcom/google/android/gms/ads/internal/t;)V

    invoke-direct {p0}, Lcom/google/android/gms/b/ia;->m()V

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t;->b()V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t;->d()V

    :cond_0
    return-void
.end method

.method e()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/ia;->b:Lcom/google/android/gms/b/hc;

    iget-object v1, p0, Lcom/google/android/gms/b/ia;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/hc;->a(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->d:Lcom/google/android/gms/b/hu;

    iget-object v1, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/hu;->a(Lcom/google/android/gms/ads/internal/t;)V

    invoke-direct {p0}, Lcom/google/android/gms/b/ia;->m()V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t;->f()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t;->g()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Interstitial ad must be loaded before showInterstitial()."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t;->h()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t;->i()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Interstitial ad must be loaded before pingManualTrackingUrl()."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public j()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t;->j()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t;->k()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/ia;->c:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
