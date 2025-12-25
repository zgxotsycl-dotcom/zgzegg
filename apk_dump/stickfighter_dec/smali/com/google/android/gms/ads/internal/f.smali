.class Lcom/google/android/gms/ads/internal/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/pk;

.field final synthetic b:Lcom/google/android/gms/b/dq;

.field final synthetic c:Lcom/google/android/gms/ads/internal/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/d;Lcom/google/android/gms/b/pk;Lcom/google/android/gms/b/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/f;->c:Lcom/google/android/gms/ads/internal/d;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/f;->a:Lcom/google/android/gms/b/pk;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/f;->b:Lcom/google/android/gms/b/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/f;->a:Lcom/google/android/gms/b/pk;

    iget-object v0, v0, Lcom/google/android/gms/b/pk;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/f;->c:Lcom/google/android/gms/ads/internal/d;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ah;->x:Lcom/google/android/gms/b/dw;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/f;->a:Lcom/google/android/gms/b/pk;

    iget-object v1, v1, Lcom/google/android/gms/b/pk;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->e()Lcom/google/android/gms/b/qk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/f;->a:Lcom/google/android/gms/b/pk;

    iget-object v1, v1, Lcom/google/android/gms/b/pk;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/qk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/b/dr;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/f;->c:Lcom/google/android/gms/ads/internal/d;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/f;->a:Lcom/google/android/gms/b/pk;

    iget-object v3, v3, Lcom/google/android/gms/b/pk;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/b/dr;-><init>(Lcom/google/android/gms/ads/internal/o;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/f;->c:Lcom/google/android/gms/ads/internal/d;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    const/4 v2, 0x1

    iput v2, v0, Lcom/google/android/gms/ads/internal/ah;->C:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/f;->c:Lcom/google/android/gms/ads/internal/d;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ah;->x:Lcom/google/android/gms/b/dw;

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/dw;->a(Lcom/google/android/gms/b/dt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call the onCustomRenderedAdLoadedListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/j;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/j;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/f;->c:Lcom/google/android/gms/ads/internal/d;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/f;->a:Lcom/google/android/gms/b/pk;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/ads/internal/d;->a(Lcom/google/android/gms/b/pk;Lcom/google/android/gms/ads/internal/j;)Lcom/google/android/gms/b/sk;

    move-result-object v5

    new-instance v1, Lcom/google/android/gms/ads/internal/l;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/f;->a:Lcom/google/android/gms/b/pk;

    invoke-direct {v1, v2, v5}, Lcom/google/android/gms/ads/internal/l;-><init>(Lcom/google/android/gms/b/pk;Lcom/google/android/gms/b/sk;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/j;->a(Lcom/google/android/gms/ads/internal/k;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/g;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/g;-><init>(Lcom/google/android/gms/ads/internal/f;Lcom/google/android/gms/ads/internal/j;)V

    invoke-interface {v5, v1}, Lcom/google/android/gms/b/sk;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/h;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/h;-><init>(Lcom/google/android/gms/ads/internal/f;Lcom/google/android/gms/ads/internal/j;)V

    invoke-interface {v5, v1}, Lcom/google/android/gms/b/sk;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/f;->c:Lcom/google/android/gms/ads/internal/d;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/ah;->C:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/f;->c:Lcom/google/android/gms/ads/internal/d;

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->d()Lcom/google/android/gms/b/ng;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/f;->c:Lcom/google/android/gms/ads/internal/d;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/ah;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/f;->c:Lcom/google/android/gms/ads/internal/d;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/f;->a:Lcom/google/android/gms/b/pk;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/f;->c:Lcom/google/android/gms/ads/internal/d;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/ah;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/ah;->d:Lcom/google/android/gms/b/ab;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/f;->c:Lcom/google/android/gms/ads/internal/d;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/d;->j:Lcom/google/android/gms/b/js;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/f;->c:Lcom/google/android/gms/ads/internal/d;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/f;->b:Lcom/google/android/gms/b/dq;

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/b/ng;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/b/pk;Lcom/google/android/gms/b/ab;Lcom/google/android/gms/b/sk;Lcom/google/android/gms/b/js;Lcom/google/android/gms/b/nh;Lcom/google/android/gms/b/dq;)Lcom/google/android/gms/b/qx;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/ah;->h:Lcom/google/android/gms/b/qx;

    goto :goto_0
.end method
