.class public Lcom/google/android/gms/ads/internal/i;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/b/gx;

.field public final b:Lcom/google/android/gms/ads/internal/overlay/w;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/gx;Lcom/google/android/gms/ads/internal/overlay/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/i;->a:Lcom/google/android/gms/b/gx;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/i;->b:Lcom/google/android/gms/ads/internal/overlay/w;

    return-void
.end method

.method public static a()Lcom/google/android/gms/ads/internal/i;
    .locals 3

    new-instance v0, Lcom/google/android/gms/ads/internal/i;

    new-instance v1, Lcom/google/android/gms/b/fl;

    invoke-direct {v1}, Lcom/google/android/gms/b/fl;-><init>()V

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/y;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/overlay/y;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/i;-><init>(Lcom/google/android/gms/b/gx;Lcom/google/android/gms/ads/internal/overlay/w;)V

    return-object v0
.end method
