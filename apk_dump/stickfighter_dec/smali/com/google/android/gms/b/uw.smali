.class Lcom/google/android/gms/b/uw;
.super Lcom/google/android/gms/common/internal/ap;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/us;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/ap;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/b/uw;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/uw;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/us;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/b/us;->d(Lcom/google/android/gms/b/us;)Lcom/google/android/gms/b/vq;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/b/ux;

    invoke-direct {v2, p0, v0, v0, p1}, Lcom/google/android/gms/b/ux;-><init>(Lcom/google/android/gms/b/uw;Lcom/google/android/gms/b/vp;Lcom/google/android/gms/b/us;Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/b/vq;->a(Lcom/google/android/gms/b/vr;)V

    goto :goto_0
.end method
