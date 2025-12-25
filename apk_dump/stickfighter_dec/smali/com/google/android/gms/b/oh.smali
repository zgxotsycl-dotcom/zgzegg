.class final Lcom/google/android/gms/b/oh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field final synthetic c:Lcom/google/android/gms/b/on;

.field final synthetic d:Lcom/google/android/gms/b/dq;

.field final synthetic e:Lcom/google/android/gms/b/do;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/google/android/gms/b/cp;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/b/on;Lcom/google/android/gms/b/dq;Lcom/google/android/gms/b/do;Ljava/lang/String;Lcom/google/android/gms/b/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/oh;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/b/oh;->b:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/b/oh;->c:Lcom/google/android/gms/b/on;

    iput-object p4, p0, Lcom/google/android/gms/b/oh;->d:Lcom/google/android/gms/b/dq;

    iput-object p5, p0, Lcom/google/android/gms/b/oh;->e:Lcom/google/android/gms/b/do;

    iput-object p6, p0, Lcom/google/android/gms/b/oh;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/b/oh;->g:Lcom/google/android/gms/b/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->f()Lcom/google/android/gms/b/sr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/oh;->a:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>()V

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/google/android/gms/b/oh;->b:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/b/sr;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/b/ab;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/b/sk;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->h()Lcom/google/android/gms/b/pn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/b/pn;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v7}, Lcom/google/android/gms/b/sk;->clearCache(Z)V

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->a()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    iget-object v1, p0, Lcom/google/android/gms/b/oh;->c:Lcom/google/android/gms/b/on;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/b/on;->a(Lcom/google/android/gms/b/sk;)V

    iget-object v1, p0, Lcom/google/android/gms/b/oh;->d:Lcom/google/android/gms/b/dq;

    iget-object v2, p0, Lcom/google/android/gms/b/oh;->e:Lcom/google/android/gms/b/do;

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "rwc"

    aput-object v5, v4, v3

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/b/dq;->a(Lcom/google/android/gms/b/do;[Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/android/gms/b/oh;->d:Lcom/google/android/gms/b/dq;

    invoke-virtual {v1}, Lcom/google/android/gms/b/dq;->a()Lcom/google/android/gms/b/do;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/b/oh;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/b/oh;->d:Lcom/google/android/gms/b/dq;

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/b/oc;->a(Ljava/lang/String;Lcom/google/android/gms/b/dq;Lcom/google/android/gms/b/do;)Lcom/google/android/gms/b/sn;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->k()Lcom/google/android/gms/b/sl;

    move-result-object v2

    const-string v3, "/invalidRequest"

    iget-object v4, p0, Lcom/google/android/gms/b/oh;->c:Lcom/google/android/gms/b/on;

    iget-object v4, v4, Lcom/google/android/gms/b/on;->c:Lcom/google/android/gms/b/fy;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/b/sl;->a(Ljava/lang/String;Lcom/google/android/gms/b/fy;)V

    const-string v3, "/loadAdURL"

    iget-object v4, p0, Lcom/google/android/gms/b/oh;->c:Lcom/google/android/gms/b/on;

    iget-object v4, v4, Lcom/google/android/gms/b/on;->d:Lcom/google/android/gms/b/fy;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/b/sl;->a(Ljava/lang/String;Lcom/google/android/gms/b/fy;)V

    const-string v3, "/log"

    sget-object v4, Lcom/google/android/gms/b/fn;->h:Lcom/google/android/gms/b/fy;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/b/sl;->a(Ljava/lang/String;Lcom/google/android/gms/b/fy;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/b/sl;->a(Lcom/google/android/gms/b/sn;)V

    const-string v1, "Loading the JS library."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/b/oh;->g:Lcom/google/android/gms/b/cp;

    invoke-virtual {v1}, Lcom/google/android/gms/b/cp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/sk;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
