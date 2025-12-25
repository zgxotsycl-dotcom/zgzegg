.class Lcom/google/android/gms/b/hm;
.super Lcom/google/android/gms/b/md;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/hd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/hd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/hm;->a:Lcom/google/android/gms/b/hd;

    invoke-direct {p0}, Lcom/google/android/gms/b/md;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/lz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/hm;->a:Lcom/google/android/gms/b/hd;

    invoke-static {v0}, Lcom/google/android/gms/b/hd;->a(Lcom/google/android/gms/b/hd;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/b/hn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/b/hn;-><init>(Lcom/google/android/gms/b/hm;Lcom/google/android/gms/b/lz;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
