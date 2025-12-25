.class Lcom/google/android/gms/b/tl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/gms/b/tk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/tk;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/b/tl;->c:Lcom/google/android/gms/b/tk;

    iput-object p2, p0, Lcom/google/android/gms/b/tl;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/b/tl;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/b/tl;->c:Lcom/google/android/gms/b/tk;

    invoke-static {v0}, Lcom/google/android/gms/b/tk;->b(Lcom/google/android/gms/b/tk;)Lcom/google/android/gms/b/xc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/tl;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/b/tl;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/b/xc;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/b/tl;->c:Lcom/google/android/gms/b/tk;

    invoke-static {v0}, Lcom/google/android/gms/b/tk;->b(Lcom/google/android/gms/b/tk;)Lcom/google/android/gms/b/xc;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/xc;->a(Ljava/lang/String;)V

    return-void
.end method
