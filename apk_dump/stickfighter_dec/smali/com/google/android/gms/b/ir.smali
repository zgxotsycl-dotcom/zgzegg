.class Lcom/google/android/gms/b/ir;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/sg;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/iq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/iq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/ir;->a:Lcom/google/android/gms/b/iq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/bt;)V
    .locals 1

    const-string v0, "Ending javascript session."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/gms/b/bu;

    invoke-interface {p1}, Lcom/google/android/gms/b/bu;->a()V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/b/bt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/ir;->a(Lcom/google/android/gms/b/bt;)V

    return-void
.end method
