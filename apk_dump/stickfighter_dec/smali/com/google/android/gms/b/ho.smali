.class Lcom/google/android/gms/b/ho;
.super Lcom/google/android/gms/b/dx;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/hd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/hd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/ho;->a:Lcom/google/android/gms/b/hd;

    invoke-direct {p0}, Lcom/google/android/gms/b/dx;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/dt;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/ho;->a:Lcom/google/android/gms/b/hd;

    invoke-static {v0}, Lcom/google/android/gms/b/hd;->a(Lcom/google/android/gms/b/hd;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/b/hp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/b/hp;-><init>(Lcom/google/android/gms/b/ho;Lcom/google/android/gms/b/dt;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
