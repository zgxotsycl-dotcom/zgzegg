.class Lcom/google/android/gms/b/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/sg;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/google/android/gms/b/ap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/ap;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/aq;->b:Lcom/google/android/gms/b/ap;

    iput-object p2, p0, Lcom/google/android/gms/b/aq;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/bt;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/aq;->b:Lcom/google/android/gms/b/ap;

    iget-object v1, p0, Lcom/google/android/gms/b/aq;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/ap;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/b/bt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/aq;->a(Lcom/google/android/gms/b/bt;)V

    return-void
.end method
