.class Lcom/google/android/gms/b/sm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/sl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/sl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/sm;->a:Lcom/google/android/gms/b/sl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/sm;->a:Lcom/google/android/gms/b/sl;

    iget-object v0, v0, Lcom/google/android/gms/b/sl;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->x()V

    iget-object v0, p0, Lcom/google/android/gms/b/sm;->a:Lcom/google/android/gms/b/sl;

    iget-object v0, v0, Lcom/google/android/gms/b/sl;->a:Lcom/google/android/gms/b/sk;

    invoke-interface {v0}, Lcom/google/android/gms/b/sk;->h()Lcom/google/android/gms/ads/internal/overlay/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/k;->m()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/sm;->a:Lcom/google/android/gms/b/sl;

    invoke-static {v0}, Lcom/google/android/gms/b/sl;->d(Lcom/google/android/gms/b/sl;)Lcom/google/android/gms/b/so;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/sm;->a:Lcom/google/android/gms/b/sl;

    invoke-static {v0}, Lcom/google/android/gms/b/sl;->d(Lcom/google/android/gms/b/sl;)Lcom/google/android/gms/b/so;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/b/so;->a()V

    iget-object v0, p0, Lcom/google/android/gms/b/sm;->a:Lcom/google/android/gms/b/sl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/b/sl;->a(Lcom/google/android/gms/b/sl;Lcom/google/android/gms/b/so;)Lcom/google/android/gms/b/so;

    :cond_1
    return-void
.end method
