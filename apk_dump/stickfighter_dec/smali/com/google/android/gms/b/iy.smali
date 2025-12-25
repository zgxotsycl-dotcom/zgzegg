.class Lcom/google/android/gms/b/iy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/bg;

.field final synthetic b:Lcom/google/android/gms/b/ix;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/ix;Lcom/google/android/gms/b/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/iy;->b:Lcom/google/android/gms/b/ix;

    iput-object p2, p0, Lcom/google/android/gms/b/iy;->a:Lcom/google/android/gms/b/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/iy;->b:Lcom/google/android/gms/b/ix;

    iget-object v0, v0, Lcom/google/android/gms/b/ix;->a:Lcom/google/android/gms/b/iu;

    invoke-static {v0}, Lcom/google/android/gms/b/iu;->a(Lcom/google/android/gms/b/iu;)Lcom/google/android/gms/b/io;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/iy;->a:Lcom/google/android/gms/b/bg;

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/io;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/b/iy;->a:Lcom/google/android/gms/b/bg;

    invoke-interface {v0}, Lcom/google/android/gms/b/bg;->a()V

    return-void
.end method
