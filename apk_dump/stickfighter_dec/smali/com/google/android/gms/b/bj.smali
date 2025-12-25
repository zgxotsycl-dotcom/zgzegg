.class Lcom/google/android/gms/b/bj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field final synthetic c:Lcom/google/android/gms/b/bl;

.field final synthetic d:Lcom/google/android/gms/b/ab;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/google/android/gms/b/bi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/bi;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/bl;Lcom/google/android/gms/b/ab;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/bj;->f:Lcom/google/android/gms/b/bi;

    iput-object p2, p0, Lcom/google/android/gms/b/bj;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/b/bj;->b:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p4, p0, Lcom/google/android/gms/b/bj;->c:Lcom/google/android/gms/b/bl;

    iput-object p5, p0, Lcom/google/android/gms/b/bj;->d:Lcom/google/android/gms/b/ab;

    iput-object p6, p0, Lcom/google/android/gms/b/bj;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/b/bj;->f:Lcom/google/android/gms/b/bi;

    iget-object v1, p0, Lcom/google/android/gms/b/bj;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/b/bj;->b:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/b/bj;->c:Lcom/google/android/gms/b/bl;

    iget-object v4, p0, Lcom/google/android/gms/b/bj;->d:Lcom/google/android/gms/b/ab;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/b/bi;->a(Lcom/google/android/gms/b/bi;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/bl;Lcom/google/android/gms/b/ab;)Lcom/google/android/gms/b/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/bj;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/bg;->b(Ljava/lang/String;)V

    return-void
.end method
