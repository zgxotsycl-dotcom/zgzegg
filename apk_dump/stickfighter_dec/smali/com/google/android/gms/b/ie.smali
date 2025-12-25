.class Lcom/google/android/gms/b/ie;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/bh;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/bg;

.field final synthetic b:Lcom/google/android/gms/b/id;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/id;Lcom/google/android/gms/b/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/ie;->b:Lcom/google/android/gms/b/id;

    iput-object p2, p0, Lcom/google/android/gms/b/ie;->a:Lcom/google/android/gms/b/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/b/qk;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/b/if;

    invoke-direct {v1, p0}, Lcom/google/android/gms/b/if;-><init>(Lcom/google/android/gms/b/ie;)V

    sget v2, Lcom/google/android/gms/b/in;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
