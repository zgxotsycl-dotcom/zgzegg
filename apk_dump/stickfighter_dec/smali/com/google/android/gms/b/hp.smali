.class Lcom/google/android/gms/b/hp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/ht;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/dt;

.field final synthetic b:Lcom/google/android/gms/b/ho;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/ho;Lcom/google/android/gms/b/dt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/hp;->b:Lcom/google/android/gms/b/ho;

    iput-object p2, p0, Lcom/google/android/gms/b/hp;->a:Lcom/google/android/gms/b/dt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/hu;)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/b/hu;->d:Lcom/google/android/gms/b/dw;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/b/hu;->d:Lcom/google/android/gms/b/dw;

    iget-object v1, p0, Lcom/google/android/gms/b/hp;->a:Lcom/google/android/gms/b/dt;

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/dw;->a(Lcom/google/android/gms/b/dt;)V

    :cond_0
    return-void
.end method
