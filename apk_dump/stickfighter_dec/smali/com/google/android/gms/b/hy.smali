.class Lcom/google/android/gms/b/hy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedList;

.field private b:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/av;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/av;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/hy;->a:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/google/android/gms/b/hy;->b:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p2, p0, Lcom/google/android/gms/b/hy;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/b/hy;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/hy;->b:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/b/hy;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hy;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/b/hy;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hy;->a:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/b/hy;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hy;->b:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    return-object v0
.end method


# virtual methods
.method a()Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hy;->b:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    return-object v0
.end method

.method a(Lcom/google/android/gms/b/hc;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/b/hz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/b/hz;-><init>(Lcom/google/android/gms/b/hy;Lcom/google/android/gms/b/hc;)V

    iget-object v1, p0, Lcom/google/android/gms/b/hy;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/b/hy;->b:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/hz;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hy;->c:Ljava/lang/String;

    return-object v0
.end method

.method c()Lcom/google/android/gms/b/hz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hy;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/hz;

    return-object v0
.end method

.method d()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hy;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
