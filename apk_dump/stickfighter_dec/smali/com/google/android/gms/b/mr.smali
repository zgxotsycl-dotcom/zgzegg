.class public final Lcom/google/android/gms/b/mr;
.super Lcom/google/android/gms/b/md;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/purchase/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/purchase/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/b/md;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/b/mr;->a:Lcom/google/android/gms/ads/purchase/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/lz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/mr;->a:Lcom/google/android/gms/ads/purchase/b;

    new-instance v1, Lcom/google/android/gms/b/mv;

    invoke-direct {v1, p1}, Lcom/google/android/gms/b/mv;-><init>(Lcom/google/android/gms/b/lz;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/purchase/b;->a(Lcom/google/android/gms/ads/purchase/a;)V

    return-void
.end method
