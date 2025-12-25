.class Lcom/google/android/gms/b/rl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/ul;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/um;

.field final synthetic b:Lcom/google/android/gms/b/rj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/um;Lcom/google/android/gms/b/rj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/rl;->a:Lcom/google/android/gms/b/um;

    iput-object p2, p0, Lcom/google/android/gms/b/rl;->b:Lcom/google/android/gms/b/rj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/xa;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/rl;->a:Lcom/google/android/gms/b/um;

    iget-object v1, p0, Lcom/google/android/gms/b/rl;->b:Lcom/google/android/gms/b/rj;

    invoke-interface {v1}, Lcom/google/android/gms/b/rj;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/um;->a(Ljava/lang/Object;)V

    return-void
.end method
