.class final Lcom/google/android/gms/b/oi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/ob;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/google/android/gms/b/on;

.field final synthetic d:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/ob;Landroid/content/Context;Lcom/google/android/gms/b/on;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/oi;->a:Lcom/google/android/gms/b/ob;

    iput-object p2, p0, Lcom/google/android/gms/b/oi;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/b/oi;->c:Lcom/google/android/gms/b/on;

    iput-object p4, p0, Lcom/google/android/gms/b/oi;->d:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/b/oi;->a:Lcom/google/android/gms/b/ob;

    iget-object v0, v0, Lcom/google/android/gms/b/ob;->c:Lcom/google/android/gms/b/ox;

    iget-object v1, p0, Lcom/google/android/gms/b/oi;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/b/oi;->c:Lcom/google/android/gms/b/on;

    iget-object v3, p0, Lcom/google/android/gms/b/oi;->d:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/b/ox;->a(Landroid/content/Context;Lcom/google/android/gms/b/on;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-void
.end method
