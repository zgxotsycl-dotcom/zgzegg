.class Lcom/google/android/gms/b/hi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/ht;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/he;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/he;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/hi;->a:Lcom/google/android/gms/b/he;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/hu;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/b/hu;->a:Lcom/google/android/gms/ads/internal/client/t;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/b/hu;->a:Lcom/google/android/gms/ads/internal/client/t;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/t;->c()V

    :cond_0
    return-void
.end method
