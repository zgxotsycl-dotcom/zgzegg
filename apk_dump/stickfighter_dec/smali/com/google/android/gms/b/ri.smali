.class Lcom/google/android/gms/b/ri;
.super Lcom/google/android/gms/b/c;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/google/android/gms/b/rf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/rf;Ljava/lang/String;Lcom/google/android/gms/b/um;Lcom/google/android/gms/b/ul;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/ri;->b:Lcom/google/android/gms/b/rf;

    iput-object p5, p0, Lcom/google/android/gms/b/ri;->a:Ljava/util/Map;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/b/c;-><init>(Ljava/lang/String;Lcom/google/android/gms/b/um;Lcom/google/android/gms/b/ul;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ri;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/b/c;->a()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/ri;->a:Ljava/util/Map;

    goto :goto_0
.end method
