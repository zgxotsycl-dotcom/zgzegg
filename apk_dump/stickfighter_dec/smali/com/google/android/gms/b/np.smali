.class Lcom/google/android/gms/b/np;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/rv;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/b/nn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/nn;Lcom/google/android/gms/b/rv;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/np;->c:Lcom/google/android/gms/b/nn;

    iput-object p2, p0, Lcom/google/android/gms/b/np;->a:Lcom/google/android/gms/b/rv;

    iput-object p3, p0, Lcom/google/android/gms/b/np;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/np;->a:Lcom/google/android/gms/b/rv;

    iget-object v1, p0, Lcom/google/android/gms/b/np;->c:Lcom/google/android/gms/b/nn;

    invoke-static {v1}, Lcom/google/android/gms/b/nn;->a(Lcom/google/android/gms/b/nn;)Lcom/google/android/gms/ads/internal/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/y;->y()Landroid/support/v4/g/q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/b/np;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/g/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/rv;->b(Ljava/lang/Object;)V

    return-void
.end method
