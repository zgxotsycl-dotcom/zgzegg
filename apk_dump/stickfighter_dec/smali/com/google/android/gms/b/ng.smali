.class public Lcom/google/android/gms/b/ng;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/b/pk;Lcom/google/android/gms/b/ab;Lcom/google/android/gms/b/sk;Lcom/google/android/gms/b/js;Lcom/google/android/gms/b/nh;Lcom/google/android/gms/b/dq;)Lcom/google/android/gms/b/qx;
    .locals 7

    iget-object v0, p3, Lcom/google/android/gms/b/pk;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->h:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/b/nk;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p6

    move-object v4, p7

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/b/nk;-><init>(Landroid/content/Context;Lcom/google/android/gms/b/pk;Lcom/google/android/gms/b/js;Lcom/google/android/gms/b/nh;Lcom/google/android/gms/b/dq;)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdRenderer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/android/gms/b/qx;->e()Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->t:Z

    if-eqz v1, :cond_3

    instance-of v0, p2, Lcom/google/android/gms/ads/internal/y;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/b/nl;

    move-object v2, p2

    check-cast v2, Lcom/google/android/gms/ads/internal/y;

    new-instance v3, Lcom/google/android/gms/b/bi;

    invoke-direct {v3}, Lcom/google/android/gms/b/bi;-><init>()V

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/b/nl;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/y;Lcom/google/android/gms/b/bi;Lcom/google/android/gms/b/pk;Lcom/google/android/gms/b/ab;Lcom/google/android/gms/b/nh;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid NativeAdManager type. Found: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; Required: NativeAdManager."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "null"

    goto :goto_1

    :cond_3
    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->p:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/android/gms/b/nb;

    invoke-direct {v0, p1, p3, p5, p7}, Lcom/google/android/gms/b/nb;-><init>(Landroid/content/Context;Lcom/google/android/gms/b/pk;Lcom/google/android/gms/b/sk;Lcom/google/android/gms/b/nh;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/google/android/gms/b/db;->U:Lcom/google/android/gms/b/cs;

    invoke-virtual {v0}, Lcom/google/android/gms/b/cs;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/google/android/gms/b/wt;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/google/android/gms/b/wt;->g()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p5}, Lcom/google/android/gms/b/sk;->j()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/android/gms/b/nj;

    invoke-direct {v0, p1, p3, p5, p7}, Lcom/google/android/gms/b/nj;-><init>(Landroid/content/Context;Lcom/google/android/gms/b/pk;Lcom/google/android/gms/b/sk;Lcom/google/android/gms/b/nh;)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/google/android/gms/b/ni;

    invoke-direct {v0, p1, p3, p5, p7}, Lcom/google/android/gms/b/ni;-><init>(Landroid/content/Context;Lcom/google/android/gms/b/pk;Lcom/google/android/gms/b/sk;Lcom/google/android/gms/b/nh;)V

    goto/16 :goto_0
.end method
