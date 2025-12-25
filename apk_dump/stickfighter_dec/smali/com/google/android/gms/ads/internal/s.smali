.class public Lcom/google/android/gms/ads/internal/s;
.super Lcom/google/android/gms/ads/internal/client/aa;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/ads/internal/client/t;

.field private b:Lcom/google/android/gms/b/et;

.field private c:Lcom/google/android/gms/b/ew;

.field private d:Landroid/support/v4/g/q;

.field private e:Landroid/support/v4/g/q;

.field private f:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field private g:Lcom/google/android/gms/ads/internal/client/ao;

.field private final h:Landroid/content/Context;

.field private final i:Lcom/google/android/gms/b/js;

.field private final j:Ljava/lang/String;

.field private final k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/b/js;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/aa;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/s;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/s;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/s;->i:Lcom/google/android/gms/b/js;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/s;->k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v0, Landroid/support/v4/g/q;

    invoke-direct {v0}, Landroid/support/v4/g/q;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/s;->e:Landroid/support/v4/g/q;

    new-instance v0, Landroid/support/v4/g/q;

    invoke-direct {v0}, Landroid/support/v4/g/q;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/s;->d:Landroid/support/v4/g/q;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/ads/internal/client/w;
    .locals 12

    new-instance v0, Lcom/google/android/gms/ads/internal/q;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/s;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/s;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/s;->i:Lcom/google/android/gms/b/js;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/s;->k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/s;->a:Lcom/google/android/gms/ads/internal/client/t;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/s;->b:Lcom/google/android/gms/b/et;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/s;->c:Lcom/google/android/gms/b/ew;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/s;->e:Landroid/support/v4/g/q;

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/s;->d:Landroid/support/v4/g/q;

    iget-object v10, p0, Lcom/google/android/gms/ads/internal/s;->f:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-object v11, p0, Lcom/google/android/gms/ads/internal/s;->g:Lcom/google/android/gms/ads/internal/client/ao;

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/q;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/b/js;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/client/t;Lcom/google/android/gms/b/et;Lcom/google/android/gms/b/ew;Landroid/support/v4/g/q;Landroid/support/v4/g/q;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Lcom/google/android/gms/ads/internal/client/ao;)V

    return-object v0
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/s;->g:Lcom/google/android/gms/ads/internal/client/ao;

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/t;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/s;->a:Lcom/google/android/gms/ads/internal/client/t;

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/s;->f:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    return-void
.end method

.method public a(Lcom/google/android/gms/b/et;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/s;->b:Lcom/google/android/gms/b/et;

    return-void
.end method

.method public a(Lcom/google/android/gms/b/ew;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/s;->c:Lcom/google/android/gms/b/ew;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/b/fd;Lcom/google/android/gms/b/ez;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Custom template ID for native custom template ad is empty. Please provide a valid template id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/s;->e:Landroid/support/v4/g/q;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/s;->d:Landroid/support/v4/g/q;

    invoke-virtual {v0, p1, p3}, Landroid/support/v4/g/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
