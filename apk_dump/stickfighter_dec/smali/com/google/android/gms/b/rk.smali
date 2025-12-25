.class Lcom/google/android/gms/b/rk;
.super Lcom/google/android/gms/b/tk;


# instance fields
.field private final a:Lcom/google/android/gms/b/rj;

.field private final b:Lcom/google/android/gms/b/um;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/b/rj;Lcom/google/android/gms/b/um;)V
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/b/rl;

    invoke-direct {v1, p3, p2}, Lcom/google/android/gms/b/rl;-><init>(Lcom/google/android/gms/b/um;Lcom/google/android/gms/b/rj;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/b/tk;-><init>(ILjava/lang/String;Lcom/google/android/gms/b/ul;)V

    iput-object p2, p0, Lcom/google/android/gms/b/rk;->a:Lcom/google/android/gms/b/rj;

    iput-object p3, p0, Lcom/google/android/gms/b/rk;->b:Lcom/google/android/gms/b/um;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/b/pe;)Lcom/google/android/gms/b/uk;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p1, Lcom/google/android/gms/b/pe;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p1}, Lcom/google/android/gms/b/yo;->a(Lcom/google/android/gms/b/pe;)Lcom/google/android/gms/b/be;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/uk;->a(Ljava/lang/Object;Lcom/google/android/gms/b/be;)Lcom/google/android/gms/b/uk;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/io/InputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/rk;->b:Lcom/google/android/gms/b/um;

    iget-object v1, p0, Lcom/google/android/gms/b/rk;->a:Lcom/google/android/gms/b/rj;

    invoke-interface {v1, p1}, Lcom/google/android/gms/b/rj;->b(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/um;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/rk;->a(Ljava/io/InputStream;)V

    return-void
.end method
