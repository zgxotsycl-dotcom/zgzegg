.class public final Lcom/google/android/gms/ads/internal/request/p;
.super Lcom/google/android/gms/ads/internal/request/m;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/b/sd;Lcom/google/android/gms/ads/internal/request/k;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/ads/internal/request/m;-><init>(Lcom/google/android/gms/b/sd;Lcom/google/android/gms/ads/internal/request/k;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/p;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()Lcom/google/android/gms/ads/internal/request/w;
    .locals 3

    new-instance v1, Lcom/google/android/gms/b/cp;

    sget-object v0, Lcom/google/android/gms/b/db;->b:Lcom/google/android/gms/b/cs;

    invoke-virtual {v0}, Lcom/google/android/gms/b/cs;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/android/gms/b/cp;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/p;->a:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/b/ob;->a()Lcom/google/android/gms/b/ob;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/b/oc;->a(Landroid/content/Context;Lcom/google/android/gms/b/cp;Lcom/google/android/gms/b/ob;)Lcom/google/android/gms/b/oc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/request/m;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
