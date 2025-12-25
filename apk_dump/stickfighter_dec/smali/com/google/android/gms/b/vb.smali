.class Lcom/google/android/gms/b/vb;
.super Lcom/google/android/gms/b/vr;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic b:Lcom/google/android/gms/b/va;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/va;Lcom/google/android/gms/b/vp;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/vb;->b:Lcom/google/android/gms/b/va;

    iput-object p3, p0, Lcom/google/android/gms/b/vb;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/b/vr;-><init>(Lcom/google/android/gms/b/vp;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/vb;->b:Lcom/google/android/gms/b/va;

    iget-object v0, v0, Lcom/google/android/gms/b/va;->a:Lcom/google/android/gms/b/us;

    iget-object v1, p0, Lcom/google/android/gms/b/vb;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/b/us;->a(Lcom/google/android/gms/b/us;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
