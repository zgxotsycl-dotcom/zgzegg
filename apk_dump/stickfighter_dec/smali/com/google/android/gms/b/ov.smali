.class public final Lcom/google/android/gms/b/ov;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# instance fields
.field private a:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/ov;->a:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/google/android/gms/b/ot;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/ov;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/ow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/b/ow;->a()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gms/b/db;->al:Lcom/google/android/gms/b/cs;

    invoke-virtual {v1}, Lcom/google/android/gms/b/cs;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/b/ou;

    iget-object v0, v0, Lcom/google/android/gms/b/ow;->b:Lcom/google/android/gms/b/ot;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/b/ou;-><init>(Landroid/content/Context;Lcom/google/android/gms/b/ot;)V

    invoke-virtual {v1}, Lcom/google/android/gms/b/ou;->a()Lcom/google/android/gms/b/ot;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/b/ov;->a:Ljava/util/WeakHashMap;

    new-instance v2, Lcom/google/android/gms/b/ow;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/b/ow;-><init>(Lcom/google/android/gms/b/ov;Lcom/google/android/gms/b/ot;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/b/ou;

    invoke-direct {v0, p1}, Lcom/google/android/gms/b/ou;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/b/ou;->a()Lcom/google/android/gms/b/ot;

    move-result-object v0

    goto :goto_0
.end method
