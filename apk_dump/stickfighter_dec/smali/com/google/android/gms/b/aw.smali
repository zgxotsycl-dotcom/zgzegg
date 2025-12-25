.class Lcom/google/android/gms/b/aw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/fy;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/ap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/aw;->a:Lcom/google/android/gms/b/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/sk;Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->a:Lcom/google/android/gms/b/ap;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/b/ap;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received request to untrack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/aw;->a:Lcom/google/android/gms/b/ap;

    invoke-static {v1}, Lcom/google/android/gms/b/ap;->a(Lcom/google/android/gms/b/ap;)Lcom/google/android/gms/b/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/b/an;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/aw;->a:Lcom/google/android/gms/b/ap;

    invoke-virtual {v0}, Lcom/google/android/gms/b/ap;->c()V

    goto :goto_0
.end method
