.class Lcom/google/android/gms/b/hn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/ht;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/lz;

.field final synthetic b:Lcom/google/android/gms/b/hm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/hm;Lcom/google/android/gms/b/lz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/hn;->b:Lcom/google/android/gms/b/hm;

    iput-object p2, p0, Lcom/google/android/gms/b/hn;->a:Lcom/google/android/gms/b/lz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/hu;)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/b/hu;->c:Lcom/google/android/gms/b/mc;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/b/hu;->c:Lcom/google/android/gms/b/mc;

    iget-object v1, p0, Lcom/google/android/gms/b/hn;->a:Lcom/google/android/gms/b/lz;

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/mc;->a(Lcom/google/android/gms/b/lz;)V

    :cond_0
    return-void
.end method
