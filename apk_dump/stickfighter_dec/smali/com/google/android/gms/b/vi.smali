.class Lcom/google/android/gms/b/vi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/vn;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/vh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/vh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/vi;->a:Lcom/google/android/gms/b/vh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/vo;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/vi;->a:Lcom/google/android/gms/b/vh;

    iget-object v0, v0, Lcom/google/android/gms/b/vh;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/google/android/gms/b/vo;->a()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/vi;->a:Lcom/google/android/gms/b/vh;

    invoke-static {v0}, Lcom/google/android/gms/b/vh;->a(Lcom/google/android/gms/b/vh;)Lcom/google/android/gms/common/api/ab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/vi;->a:Lcom/google/android/gms/b/vh;

    invoke-static {v0}, Lcom/google/android/gms/b/vh;->a(Lcom/google/android/gms/b/vh;)Lcom/google/android/gms/common/api/ab;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/b/vo;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/ab;->a(I)V

    :cond_0
    return-void
.end method
