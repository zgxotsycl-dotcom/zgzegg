.class public Lcom/google/android/gms/ads/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/client/k;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/ads/internal/client/w;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/w;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/k;->a()Lcom/google/android/gms/ads/internal/client/k;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/w;Lcom/google/android/gms/ads/internal/client/k;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/w;Lcom/google/android/gms/ads/internal/client/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/b;->c:Lcom/google/android/gms/ads/internal/client/w;

    iput-object p3, p0, Lcom/google/android/gms/ads/b;->a:Lcom/google/android/gms/ads/internal/client/k;

    return-void
.end method

.method private a(Lcom/google/android/gms/ads/internal/client/au;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b;->c:Lcom/google/android/gms/ads/internal/client/w;

    iget-object v1, p0, Lcom/google/android/gms/ads/b;->a:Lcom/google/android/gms/ads/internal/client/k;

    iget-object v2, p0, Lcom/google/android/gms/ads/b;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/ads/internal/client/k;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/au;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/w;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/d;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/d;->a()Lcom/google/android/gms/ads/internal/client/au;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/b;->a(Lcom/google/android/gms/ads/internal/client/au;)V

    return-void
.end method
