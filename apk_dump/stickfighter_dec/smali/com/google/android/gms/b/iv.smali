.class Lcom/google/android/gms/b/iv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/sg;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/iq;

.field final synthetic b:Lcom/google/android/gms/b/iu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/iu;Lcom/google/android/gms/b/iq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/iv;->b:Lcom/google/android/gms/b/iu;

    iput-object p2, p0, Lcom/google/android/gms/b/iv;->a:Lcom/google/android/gms/b/iq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/bg;)V
    .locals 2

    const-string v0, "Getting a new session for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/iv;->a:Lcom/google/android/gms/b/iq;

    invoke-interface {p1}, Lcom/google/android/gms/b/bg;->b()Lcom/google/android/gms/b/bu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/iq;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/b/bg;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/iv;->a(Lcom/google/android/gms/b/bg;)V

    return-void
.end method
