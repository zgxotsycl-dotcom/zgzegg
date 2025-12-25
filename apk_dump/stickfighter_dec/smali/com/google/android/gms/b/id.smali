.class Lcom/google/android/gms/b/id;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/iu;

.field final synthetic b:Lcom/google/android/gms/b/ic;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/ic;Lcom/google/android/gms/b/iu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/id;->b:Lcom/google/android/gms/b/ic;

    iput-object p2, p0, Lcom/google/android/gms/b/id;->a:Lcom/google/android/gms/b/iu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/b/id;->b:Lcom/google/android/gms/b/ic;

    iget-object v1, p0, Lcom/google/android/gms/b/id;->b:Lcom/google/android/gms/b/ic;

    invoke-static {v1}, Lcom/google/android/gms/b/ic;->a(Lcom/google/android/gms/b/ic;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/b/id;->b:Lcom/google/android/gms/b/ic;

    invoke-static {v2}, Lcom/google/android/gms/b/ic;->b(Lcom/google/android/gms/b/ic;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/b/ic;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/b/bg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/b/ie;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/b/ie;-><init>(Lcom/google/android/gms/b/id;Lcom/google/android/gms/b/bg;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/bg;->a(Lcom/google/android/gms/b/bh;)V

    const-string v1, "/jsLoaded"

    new-instance v2, Lcom/google/android/gms/b/ih;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/b/ih;-><init>(Lcom/google/android/gms/b/id;Lcom/google/android/gms/b/bg;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/b/bg;->a(Ljava/lang/String;Lcom/google/android/gms/b/fy;)V

    new-instance v1, Lcom/google/android/gms/b/rr;

    invoke-direct {v1}, Lcom/google/android/gms/b/rr;-><init>()V

    new-instance v2, Lcom/google/android/gms/b/ii;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/b/ii;-><init>(Lcom/google/android/gms/b/id;Lcom/google/android/gms/b/bg;Lcom/google/android/gms/b/rr;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/b/rr;->a(Ljava/lang/Object;)V

    const-string v1, "/requestReload"

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/b/bg;->a(Ljava/lang/String;Lcom/google/android/gms/b/fy;)V

    iget-object v1, p0, Lcom/google/android/gms/b/id;->b:Lcom/google/android/gms/b/ic;

    invoke-static {v1}, Lcom/google/android/gms/b/ic;->f(Lcom/google/android/gms/b/ic;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".js"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/b/id;->b:Lcom/google/android/gms/b/ic;

    invoke-static {v1}, Lcom/google/android/gms/b/ic;->f(Lcom/google/android/gms/b/ic;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/bg;->a(Ljava/lang/String;)V

    :goto_0
    sget-object v1, Lcom/google/android/gms/b/qk;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/b/ij;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/b/ij;-><init>(Lcom/google/android/gms/b/id;Lcom/google/android/gms/b/bg;)V

    sget v0, Lcom/google/android/gms/b/in;->a:I

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/b/id;->b:Lcom/google/android/gms/b/ic;

    invoke-static {v1}, Lcom/google/android/gms/b/ic;->f(Lcom/google/android/gms/b/ic;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<html>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/b/id;->b:Lcom/google/android/gms/b/ic;

    invoke-static {v1}, Lcom/google/android/gms/b/ic;->f(Lcom/google/android/gms/b/ic;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/bg;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/b/id;->b:Lcom/google/android/gms/b/ic;

    invoke-static {v1}, Lcom/google/android/gms/b/ic;->f(Lcom/google/android/gms/b/ic;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/bg;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
