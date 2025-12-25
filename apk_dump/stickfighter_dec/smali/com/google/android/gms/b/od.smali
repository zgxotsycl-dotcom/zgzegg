.class final Lcom/google/android/gms/b/od;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/ob;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field final synthetic d:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/ob;Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/od;->a:Lcom/google/android/gms/b/ob;

    iput-object p2, p0, Lcom/google/android/gms/b/od;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/b/od;->c:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p4, p0, Lcom/google/android/gms/b/od;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/b/od;->a:Lcom/google/android/gms/b/ob;

    iget-object v0, v0, Lcom/google/android/gms/b/ob;->i:Lcom/google/android/gms/b/or;

    iget-object v1, p0, Lcom/google/android/gms/b/od;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/b/od;->c:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->g:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/b/od;->d:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/b/or;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/b/od;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
