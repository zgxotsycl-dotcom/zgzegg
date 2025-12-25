.class public Lcom/google/android/gms/b/uk;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/google/android/gms/b/be;

.field public final c:Lcom/google/android/gms/b/xa;

.field public d:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/b/xa;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/b/uk;->d:Z

    iput-object v1, p0, Lcom/google/android/gms/b/uk;->a:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/b/uk;->b:Lcom/google/android/gms/b/be;

    iput-object p1, p0, Lcom/google/android/gms/b/uk;->c:Lcom/google/android/gms/b/xa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/b/be;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/b/uk;->d:Z

    iput-object p1, p0, Lcom/google/android/gms/b/uk;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/b/uk;->b:Lcom/google/android/gms/b/be;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/b/uk;->c:Lcom/google/android/gms/b/xa;

    return-void
.end method

.method public static a(Lcom/google/android/gms/b/xa;)Lcom/google/android/gms/b/uk;
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/uk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/uk;-><init>(Lcom/google/android/gms/b/xa;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/google/android/gms/b/be;)Lcom/google/android/gms/b/uk;
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/uk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/b/uk;-><init>(Ljava/lang/Object;Lcom/google/android/gms/b/be;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/uk;->c:Lcom/google/android/gms/b/xa;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
