.class Lcom/google/android/gms/b/bn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcom/google/android/gms/b/bm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/bm;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/bn;->c:Lcom/google/android/gms/b/bm;

    iput-object p2, p0, Lcom/google/android/gms/b/bn;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/b/bn;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/bn;->c:Lcom/google/android/gms/b/bm;

    invoke-static {v0}, Lcom/google/android/gms/b/bm;->a(Lcom/google/android/gms/b/bm;)Lcom/google/android/gms/b/sk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/bn;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/b/bn;->b:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/b/sk;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
