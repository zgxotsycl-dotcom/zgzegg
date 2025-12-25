.class Lcom/google/android/gms/b/va;
.super Lcom/google/android/gms/b/vf;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/us;

.field private final c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/us;Ljava/util/Map;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/b/va;->a:Lcom/google/android/gms/b/us;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/b/vf;-><init>(Lcom/google/android/gms/b/us;Lcom/google/android/gms/b/ut;)V

    iput-object p2, p0, Lcom/google/android/gms/b/va;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/b/va;->a:Lcom/google/android/gms/b/us;

    invoke-static {v0}, Lcom/google/android/gms/b/us;->b(Lcom/google/android/gms/b/us;)Lcom/google/android/gms/common/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/va;->a:Lcom/google/android/gms/b/us;

    invoke-static {v1}, Lcom/google/android/gms/b/us;->a(Lcom/google/android/gms/b/us;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/b/va;->a:Lcom/google/android/gms/b/us;

    invoke-static {v0}, Lcom/google/android/gms/b/us;->d(Lcom/google/android/gms/b/us;)Lcom/google/android/gms/b/vq;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/b/vb;

    iget-object v3, p0, Lcom/google/android/gms/b/va;->a:Lcom/google/android/gms/b/us;

    invoke-direct {v2, p0, v3, v1}, Lcom/google/android/gms/b/vb;-><init>(Lcom/google/android/gms/b/va;Lcom/google/android/gms/b/vp;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/b/vq;->a(Lcom/google/android/gms/b/vr;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/b/va;->a:Lcom/google/android/gms/b/us;

    invoke-static {v0}, Lcom/google/android/gms/b/us;->e(Lcom/google/android/gms/b/us;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/b/va;->a:Lcom/google/android/gms/b/us;

    invoke-static {v0}, Lcom/google/android/gms/b/us;->f(Lcom/google/android/gms/b/us;)Lcom/google/android/gms/b/xj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/b/xj;->j()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/b/va;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/h;

    iget-object v1, p0, Lcom/google/android/gms/b/va;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/u;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/h;->a(Lcom/google/android/gms/common/api/u;)V

    goto :goto_0
.end method
