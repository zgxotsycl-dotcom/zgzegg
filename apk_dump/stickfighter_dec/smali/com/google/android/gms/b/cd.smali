.class Lcom/google/android/gms/b/cd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/cc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/cc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/cd;->a:Lcom/google/android/gms/b/cc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/cd;->a:Lcom/google/android/gms/b/cc;

    iget-object v0, v0, Lcom/google/android/gms/b/cc;->d:Lcom/google/android/gms/b/ca;

    iget-object v1, p0, Lcom/google/android/gms/b/cd;->a:Lcom/google/android/gms/b/cc;

    iget-object v1, v1, Lcom/google/android/gms/b/cc;->b:Lcom/google/android/gms/b/bx;

    iget-object v2, p0, Lcom/google/android/gms/b/cd;->a:Lcom/google/android/gms/b/cc;

    iget-object v2, v2, Lcom/google/android/gms/b/cc;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/b/ca;->a(Lcom/google/android/gms/b/bx;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/cd;->a(Ljava/lang/String;)V

    return-void
.end method
