.class final Lcom/google/android/gms/b/oe;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/ic;

.field final synthetic b:Lcom/google/android/gms/b/on;

.field final synthetic c:Lcom/google/android/gms/b/dq;

.field final synthetic d:Lcom/google/android/gms/b/do;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/ic;Lcom/google/android/gms/b/on;Lcom/google/android/gms/b/dq;Lcom/google/android/gms/b/do;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/oe;->a:Lcom/google/android/gms/b/ic;

    iput-object p2, p0, Lcom/google/android/gms/b/oe;->b:Lcom/google/android/gms/b/on;

    iput-object p3, p0, Lcom/google/android/gms/b/oe;->c:Lcom/google/android/gms/b/dq;

    iput-object p4, p0, Lcom/google/android/gms/b/oe;->d:Lcom/google/android/gms/b/do;

    iput-object p5, p0, Lcom/google/android/gms/b/oe;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/b/oe;->a:Lcom/google/android/gms/b/ic;

    invoke-virtual {v0}, Lcom/google/android/gms/b/ic;->b()Lcom/google/android/gms/b/iq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/oe;->b:Lcom/google/android/gms/b/on;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/b/on;->a(Lcom/google/android/gms/b/iq;)V

    iget-object v1, p0, Lcom/google/android/gms/b/oe;->c:Lcom/google/android/gms/b/dq;

    iget-object v2, p0, Lcom/google/android/gms/b/oe;->d:Lcom/google/android/gms/b/do;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "rwc"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/b/dq;->a(Lcom/google/android/gms/b/do;[Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/android/gms/b/oe;->c:Lcom/google/android/gms/b/dq;

    invoke-virtual {v1}, Lcom/google/android/gms/b/dq;->a()Lcom/google/android/gms/b/do;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/b/of;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/b/of;-><init>(Lcom/google/android/gms/b/oe;Lcom/google/android/gms/b/do;)V

    new-instance v1, Lcom/google/android/gms/b/og;

    invoke-direct {v1, p0}, Lcom/google/android/gms/b/og;-><init>(Lcom/google/android/gms/b/oe;)V

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/b/iq;->a(Lcom/google/android/gms/b/sg;Lcom/google/android/gms/b/se;)V

    return-void
.end method
