.class Lcom/google/android/gms/b/iw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/se;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/iq;

.field final synthetic b:Lcom/google/android/gms/b/iu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/iu;Lcom/google/android/gms/b/iq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/iw;->b:Lcom/google/android/gms/b/iu;

    iput-object p2, p0, Lcom/google/android/gms/b/iw;->a:Lcom/google/android/gms/b/iq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "Rejecting reference for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/iw;->a:Lcom/google/android/gms/b/iq;

    invoke-virtual {v0}, Lcom/google/android/gms/b/iq;->e()V

    return-void
.end method
