.class Lcom/google/android/gms/b/sq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/fy;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/sl;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/b/sl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/sq;->a:Lcom/google/android/gms/b/sl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/b/sl;Lcom/google/android/gms/b/sm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/b/sq;-><init>(Lcom/google/android/gms/b/sl;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/sk;Ljava/util/Map;)V
    .locals 2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "start"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/sq;->a:Lcom/google/android/gms/b/sl;

    invoke-static {v0}, Lcom/google/android/gms/b/sl;->a(Lcom/google/android/gms/b/sl;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "stop"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/b/sq;->a:Lcom/google/android/gms/b/sl;

    invoke-static {v0}, Lcom/google/android/gms/b/sl;->b(Lcom/google/android/gms/b/sl;)V

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "cancel"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/sq;->a:Lcom/google/android/gms/b/sl;

    invoke-static {v0}, Lcom/google/android/gms/b/sl;->c(Lcom/google/android/gms/b/sl;)V

    goto :goto_0
.end method
