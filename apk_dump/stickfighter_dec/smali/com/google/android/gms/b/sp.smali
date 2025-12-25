.class Lcom/google/android/gms/b/sp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/t;


# instance fields
.field private a:Lcom/google/android/gms/b/sk;

.field private b:Lcom/google/android/gms/ads/internal/overlay/t;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/sk;Lcom/google/android/gms/ads/internal/overlay/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/b/sp;->a:Lcom/google/android/gms/b/sk;

    iput-object p2, p0, Lcom/google/android/gms/b/sp;->b:Lcom/google/android/gms/ads/internal/overlay/t;

    return-void
.end method


# virtual methods
.method public a_()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/sp;->b:Lcom/google/android/gms/ads/internal/overlay/t;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/t;->a_()V

    iget-object v0, p0, Lcom/google/android/gms/b/sp;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->c()V

    return-void
.end method

.method public b_()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/sp;->b:Lcom/google/android/gms/ads/internal/overlay/t;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/t;->b_()V

    iget-object v0, p0, Lcom/google/android/gms/b/sp;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->d()V

    return-void
.end method
