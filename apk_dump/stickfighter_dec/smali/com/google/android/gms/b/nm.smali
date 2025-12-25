.class Lcom/google/android/gms/b/nm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/pj;

.field final synthetic b:Lcom/google/android/gms/b/nl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/nl;Lcom/google/android/gms/b/pj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/nm;->b:Lcom/google/android/gms/b/nl;

    iput-object p2, p0, Lcom/google/android/gms/b/nm;->a:Lcom/google/android/gms/b/pj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/nm;->b:Lcom/google/android/gms/b/nl;

    invoke-static {v0}, Lcom/google/android/gms/b/nl;->a(Lcom/google/android/gms/b/nl;)Lcom/google/android/gms/b/nh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/nm;->a:Lcom/google/android/gms/b/pj;

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/nh;->b(Lcom/google/android/gms/b/pj;)V

    return-void
.end method
