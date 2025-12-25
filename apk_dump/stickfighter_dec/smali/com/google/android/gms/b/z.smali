.class Lcom/google/android/gms/b/z;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/y;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/y;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/z;->a:Lcom/google/android/gms/b/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/b/z;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/b/z;->c:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/z;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/b/z;->c:Z

    return v0
.end method
