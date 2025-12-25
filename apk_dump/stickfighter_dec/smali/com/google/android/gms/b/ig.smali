.class Lcom/google/android/gms/b/ig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/if;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/if;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/ig;->a:Lcom/google/android/gms/b/if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ig;->a:Lcom/google/android/gms/b/if;

    iget-object v0, v0, Lcom/google/android/gms/b/if;->a:Lcom/google/android/gms/b/ie;

    iget-object v0, v0, Lcom/google/android/gms/b/ie;->a:Lcom/google/android/gms/b/bg;

    invoke-interface {v0}, Lcom/google/android/gms/b/bg;->a()V

    return-void
.end method
