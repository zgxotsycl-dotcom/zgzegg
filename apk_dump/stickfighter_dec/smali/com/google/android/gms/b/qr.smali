.class Lcom/google/android/gms/b/qr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/b/qq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/qq;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/qr;->b:Lcom/google/android/gms/b/qq;

    iput-object p2, p0, Lcom/google/android/gms/b/qr;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/qr;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/b/qr;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
