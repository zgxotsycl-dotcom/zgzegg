.class Lcom/google/android/gms/b/br;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/b/bm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/bm;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/br;->b:Lcom/google/android/gms/b/bm;

    iput-object p2, p0, Lcom/google/android/gms/b/br;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/br;->b:Lcom/google/android/gms/b/bm;

    invoke-static {v0}, Lcom/google/android/gms/b/bm;->a(Lcom/google/android/gms/b/bm;)Lcom/google/android/gms/b/sk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/br;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/sk;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
