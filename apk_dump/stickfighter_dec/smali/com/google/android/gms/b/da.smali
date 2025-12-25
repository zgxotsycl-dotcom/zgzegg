.class Lcom/google/android/gms/b/da;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/cs;

.field final synthetic b:Lcom/google/android/gms/b/cz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/cz;Lcom/google/android/gms/b/cs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/da;->b:Lcom/google/android/gms/b/cz;

    iput-object p2, p0, Lcom/google/android/gms/b/da;->a:Lcom/google/android/gms/b/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/da;->a:Lcom/google/android/gms/b/cs;

    iget-object v1, p0, Lcom/google/android/gms/b/da;->b:Lcom/google/android/gms/b/cz;

    invoke-static {v1}, Lcom/google/android/gms/b/cz;->a(Lcom/google/android/gms/b/cz;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/cs;->a(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
