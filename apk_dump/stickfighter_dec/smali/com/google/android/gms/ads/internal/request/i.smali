.class public final Lcom/google/android/gms/ads/internal/request/i;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/sd;Lcom/google/android/gms/ads/internal/request/k;)Lcom/google/android/gms/b/qx;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/request/j;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/request/j;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/gms/ads/internal/request/i;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/sd;Lcom/google/android/gms/ads/internal/request/k;Lcom/google/android/gms/ads/internal/request/l;)Lcom/google/android/gms/b/qx;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/sd;Lcom/google/android/gms/ads/internal/request/k;Lcom/google/android/gms/ads/internal/request/l;)Lcom/google/android/gms/b/qx;
    .locals 1

    invoke-interface {p4, p1}, Lcom/google/android/gms/ads/internal/request/l;->a(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2, p3}, Lcom/google/android/gms/ads/internal/request/i;->a(Landroid/content/Context;Lcom/google/android/gms/b/sd;Lcom/google/android/gms/ads/internal/request/k;)Lcom/google/android/gms/b/qx;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/request/i;->b(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/sd;Lcom/google/android/gms/ads/internal/request/k;)Lcom/google/android/gms/b/qx;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/gms/b/sd;Lcom/google/android/gms/ads/internal/request/k;)Lcom/google/android/gms/b/qx;
    .locals 1

    const-string v0, "Fetching ad response from local ad request service."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/request/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/ads/internal/request/p;-><init>(Landroid/content/Context;Lcom/google/android/gms/b/sd;Lcom/google/android/gms/ads/internal/request/k;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/p;->c()Ljava/lang/Void;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/sd;Lcom/google/android/gms/ads/internal/request/k;)Lcom/google/android/gms/b/qx;
    .locals 1

    const-string v0, "Fetching ad response from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/o;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Failed to connect to remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/internal/request/q;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/request/q;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/sd;Lcom/google/android/gms/ads/internal/request/k;)V

    goto :goto_0
.end method
