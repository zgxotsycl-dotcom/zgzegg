.class Lcom/google/android/gms/b/kv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/ku;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/ku;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/kv;->a:Lcom/google/android/gms/b/ku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/kv;->a:Lcom/google/android/gms/b/ku;

    invoke-virtual {v0}, Lcom/google/android/gms/b/ku;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->e()Lcom/google/android/gms/b/qk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/b/kv;->a:Lcom/google/android/gms/b/ku;

    invoke-static {v2}, Lcom/google/android/gms/b/ku;->a(Lcom/google/android/gms/b/ku;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/b/qk;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
