.class Lcom/google/android/gms/b/hg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/ht;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/gms/b/he;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/he;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/hg;->b:Lcom/google/android/gms/b/he;

    iput p2, p0, Lcom/google/android/gms/b/hg;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/hu;)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/b/hu;->a:Lcom/google/android/gms/ads/internal/client/t;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/b/hu;->a:Lcom/google/android/gms/ads/internal/client/t;

    iget v1, p0, Lcom/google/android/gms/b/hg;->a:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/t;->a(I)V

    :cond_0
    return-void
.end method
