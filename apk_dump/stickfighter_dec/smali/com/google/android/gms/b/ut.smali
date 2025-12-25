.class Lcom/google/android/gms/b/ut;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/us;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/us;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/ut;->a:Lcom/google/android/gms/b/us;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/ut;->a:Lcom/google/android/gms/b/us;

    invoke-static {v0}, Lcom/google/android/gms/b/us;->b(Lcom/google/android/gms/b/us;)Lcom/google/android/gms/common/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/ut;->a:Lcom/google/android/gms/b/us;

    invoke-static {v1}, Lcom/google/android/gms/b/us;->a(Lcom/google/android/gms/b/us;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/b;->b(Landroid/content/Context;)V

    return-void
.end method
