.class public Lcom/google/android/gms/b/uj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/q;
.implements Lcom/google/android/gms/common/api/r;


# instance fields
.field public final a:Lcom/google/android/gms/common/api/a;

.field private final b:I

.field private c:Lcom/google/android/gms/b/vq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/b/uj;->a:Lcom/google/android/gms/common/api/a;

    iput p2, p0, Lcom/google/android/gms/b/uj;->b:I

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/uj;->c:Lcom/google/android/gms/b/vq;

    const-string v1, "Callbacks must be attached to a GoogleApiClient instance before connecting the client."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/av;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/b/uj;->a()V

    iget-object v0, p0, Lcom/google/android/gms/b/uj;->c:Lcom/google/android/gms/b/vq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/b/vq;->a(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/b/uj;->a()V

    iget-object v0, p0, Lcom/google/android/gms/b/uj;->c:Lcom/google/android/gms/b/vq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/b/vq;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/b/vq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/uj;->c:Lcom/google/android/gms/b/vq;

    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/b/uj;->a()V

    iget-object v0, p0, Lcom/google/android/gms/b/uj;->c:Lcom/google/android/gms/b/vq;

    iget-object v1, p0, Lcom/google/android/gms/b/uj;->a:Lcom/google/android/gms/common/api/a;

    iget v2, p0, Lcom/google/android/gms/b/uj;->b:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/b/vq;->a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V

    return-void
.end method
