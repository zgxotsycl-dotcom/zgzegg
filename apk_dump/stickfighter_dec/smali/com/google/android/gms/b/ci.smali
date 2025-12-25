.class Lcom/google/android/gms/b/ci;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/cg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/cg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/ci;->a:Lcom/google/android/gms/b/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/cn;Lcom/google/android/gms/b/cn;)I
    .locals 4

    iget-wide v0, p1, Lcom/google/android/gms/b/cn;->a:J

    iget-wide v2, p2, Lcom/google/android/gms/b/cn;->a:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/b/cn;

    check-cast p2, Lcom/google/android/gms/b/cn;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/b/ci;->a(Lcom/google/android/gms/b/cn;Lcom/google/android/gms/b/cn;)I

    move-result v0

    return v0
.end method
