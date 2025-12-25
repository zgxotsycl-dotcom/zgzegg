.class Lcom/google/android/gms/b/ss;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/google/android/gms/b/sk;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/b/sk;

.field private final b:Lcom/google/android/gms/b/sj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/sk;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/android/gms/b/sk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    new-instance v0, Lcom/google/android/gms/b/sj;

    invoke-interface {p1}, Lcom/google/android/gms/b/sk;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/b/sj;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/b/sk;)V

    iput-object v0, p0, Lcom/google/android/gms/b/ss;->b:Lcom/google/android/gms/b/sj;

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->k()Lcom/google/android/gms/b/sl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/b/sl;->a(Lcom/google/android/gms/b/sk;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/ss;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->a()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/sk;->a(I)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/sk;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/b/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/b/sk;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/b/dq;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/sk;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/overlay/k;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/sk;->a(Lcom/google/android/gms/ads/internal/overlay/k;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/b/ap;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/b/sk;->a(Lcom/google/android/gms/b/ap;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/sk;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/b/sk;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/b/sk;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/b/sk;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/sk;->a(Z)V

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/sk;->b(I)V

    return-void
.end method

.method public b(Lcom/google/android/gms/ads/internal/overlay/k;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/sk;->b(Lcom/google/android/gms/ads/internal/overlay/k;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/sk;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/b/sk;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/sk;->b(Z)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->c()V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/sk;->c(Z)V

    return-void
.end method

.method public clearCache(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/sk;->clearCache(Z)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->d()V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->destroy()V

    return-void
.end method

.method public e()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->e()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->f()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/google/android/gms/ads/internal/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->g()Lcom/google/android/gms/ads/internal/i;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/google/android/gms/ads/internal/overlay/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->h()Lcom/google/android/gms/ads/internal/overlay/k;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/google/android/gms/ads/internal/overlay/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->i()Lcom/google/android/gms/ads/internal/overlay/k;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->j()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/google/android/gms/b/sl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->k()Lcom/google/android/gms/b/sl;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->l()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/b/sk;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/b/sk;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/sk;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public m()Lcom/google/android/gms/b/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->m()Lcom/google/android/gms/b/ab;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->n()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->o()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->b:Lcom/google/android/gms/b/sj;

    invoke-virtual {v0}, Lcom/google/android/gms/b/sj;->b()V

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->onResume()V

    return-void
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->p()I

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->q()Z

    move-result v0

    return v0
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->b:Lcom/google/android/gms/b/sj;

    invoke-virtual {v0}, Lcom/google/android/gms/b/sj;->c()V

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->r()V

    return-void
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->s()Z

    move-result v0

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/sk;->setBackgroundColor(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/sk;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/sk;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/sk;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/sk;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public stopLoading()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->stopLoading()V

    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/google/android/gms/b/sj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->b:Lcom/google/android/gms/b/sj;

    return-object v0
.end method

.method public v()Lcom/google/android/gms/b/do;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->v()Lcom/google/android/gms/b/do;

    move-result-object v0

    return-object v0
.end method

.method public w()Lcom/google/android/gms/b/dp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->w()Lcom/google/android/gms/b/dp;

    move-result-object v0

    return-object v0
.end method

.method public x()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->x()V

    return-void
.end method

.method public y()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ss;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->y()V

    return-void
.end method
