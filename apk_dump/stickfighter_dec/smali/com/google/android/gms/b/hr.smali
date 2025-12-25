.class Lcom/google/android/gms/b/hr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/ht;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/hq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/hq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/hr;->a:Lcom/google/android/gms/b/hq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/hu;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/b/hu;->e:Lcom/google/android/gms/ads/internal/client/q;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/b/hu;->e:Lcom/google/android/gms/ads/internal/client/q;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/q;->a()V

    :cond_0
    return-void
.end method
