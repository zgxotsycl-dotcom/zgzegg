.class public final Lcom/google/android/gms/b/mw;
.super Lcom/google/android/gms/b/mp;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/purchase/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/purchase/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/b/mp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/b/mw;->a:Lcom/google/android/gms/ads/purchase/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/ml;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/mw;->a:Lcom/google/android/gms/ads/purchase/d;

    new-instance v1, Lcom/google/android/gms/b/mu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/b/mu;-><init>(Lcom/google/android/gms/b/ml;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/purchase/d;->a(Lcom/google/android/gms/ads/purchase/c;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/mw;->a:Lcom/google/android/gms/ads/purchase/d;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/purchase/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
