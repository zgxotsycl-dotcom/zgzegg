.class Lcom/google/android/gms/b/hd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/hd;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/b/hd;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hd;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method a(Lcom/google/android/gms/ads/internal/t;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/he;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/he;-><init>(Lcom/google/android/gms/b/hd;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/ads/internal/client/t;)V

    new-instance v0, Lcom/google/android/gms/b/hk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/hk;-><init>(Lcom/google/android/gms/b/hd;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/ads/internal/client/al;)V

    new-instance v0, Lcom/google/android/gms/b/hm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/hm;-><init>(Lcom/google/android/gms/b/hd;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/b/mc;)V

    new-instance v0, Lcom/google/android/gms/b/ho;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/ho;-><init>(Lcom/google/android/gms/b/hd;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/b/dw;)V

    new-instance v0, Lcom/google/android/gms/b/hq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/hq;-><init>(Lcom/google/android/gms/b/hd;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/t;->a(Lcom/google/android/gms/ads/internal/client/q;)V

    return-void
.end method

.method a(Lcom/google/android/gms/b/hu;)V
    .locals 4

    sget-object v1, Lcom/google/android/gms/b/qk;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/b/hd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/ht;

    new-instance v3, Lcom/google/android/gms/b/hs;

    invoke-direct {v3, p0, v0, p1}, Lcom/google/android/gms/b/hs;-><init>(Lcom/google/android/gms/b/hd;Lcom/google/android/gms/b/ht;Lcom/google/android/gms/b/hu;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
