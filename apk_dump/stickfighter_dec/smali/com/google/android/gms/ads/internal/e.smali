.class Lcom/google/android/gms/ads/internal/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/pk;

.field final synthetic b:Lcom/google/android/gms/ads/internal/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/d;Lcom/google/android/gms/b/pk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/e;->b:Lcom/google/android/gms/ads/internal/d;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/e;->a:Lcom/google/android/gms/b/pk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/e;->b:Lcom/google/android/gms/ads/internal/d;

    new-instance v0, Lcom/google/android/gms/b/pj;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/e;->a:Lcom/google/android/gms/b/pk;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/b/pj;-><init>(Lcom/google/android/gms/b/pk;Lcom/google/android/gms/b/sk;Lcom/google/android/gms/b/jc;Lcom/google/android/gms/b/jv;Ljava/lang/String;Lcom/google/android/gms/b/jf;Lcom/google/android/gms/ads/internal/formats/h;)V

    invoke-virtual {v8, v0}, Lcom/google/android/gms/ads/internal/d;->b(Lcom/google/android/gms/b/pj;)V

    return-void
.end method
