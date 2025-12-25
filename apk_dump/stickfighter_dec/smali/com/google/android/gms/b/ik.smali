.class Lcom/google/android/gms/b/ik;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/ij;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/ij;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/ik;->a:Lcom/google/android/gms/b/ij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ik;->a:Lcom/google/android/gms/b/ij;

    iget-object v0, v0, Lcom/google/android/gms/b/ij;->a:Lcom/google/android/gms/b/bg;

    invoke-interface {v0}, Lcom/google/android/gms/b/bg;->a()V

    return-void
.end method
