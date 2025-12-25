.class Lcom/google/android/gms/b/uy;
.super Lcom/google/android/gms/b/vf;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/us;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/b/us;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/b/uy;->a:Lcom/google/android/gms/b/us;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/b/vf;-><init>(Lcom/google/android/gms/b/us;Lcom/google/android/gms/b/ut;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/b/us;Lcom/google/android/gms/b/ut;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/b/uy;-><init>(Lcom/google/android/gms/b/us;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/b/uy;->a:Lcom/google/android/gms/b/us;

    invoke-static {v0}, Lcom/google/android/gms/b/us;->f(Lcom/google/android/gms/b/us;)Lcom/google/android/gms/b/xj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/uy;->a:Lcom/google/android/gms/b/us;

    invoke-static {v1}, Lcom/google/android/gms/b/us;->g(Lcom/google/android/gms/b/us;)Lcom/google/android/gms/common/internal/ae;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/b/uy;->a:Lcom/google/android/gms/b/us;

    invoke-static {v2}, Lcom/google/android/gms/b/us;->d(Lcom/google/android/gms/b/us;)Lcom/google/android/gms/b/vq;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/b/vq;->g:Lcom/google/android/gms/b/vh;

    iget-object v2, v2, Lcom/google/android/gms/b/vh;->d:Ljava/util/Set;

    new-instance v3, Lcom/google/android/gms/b/uu;

    iget-object v4, p0, Lcom/google/android/gms/b/uy;->a:Lcom/google/android/gms/b/us;

    invoke-direct {v3, v4}, Lcom/google/android/gms/b/uu;-><init>(Lcom/google/android/gms/b/us;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/b/xj;->a(Lcom/google/android/gms/common/internal/ae;Ljava/util/Set;Lcom/google/android/gms/signin/internal/f;)V

    return-void
.end method
