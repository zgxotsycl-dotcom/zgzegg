.class public abstract Lcom/google/android/gms/b/cs;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Object;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/b/cs;->a:I

    iput-object p2, p0, Lcom/google/android/gms/b/cs;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/b/cs;->c:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->m()Lcom/google/android/gms/b/cx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/b/cx;->a(Lcom/google/android/gms/b/cs;)V

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/b/ct;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/b/cs;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(ILjava/lang/String;)Lcom/google/android/gms/b/cs;
    .locals 2

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/b/cs;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/cs;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->m()Lcom/google/android/gms/b/cx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/b/cx;->b(Lcom/google/android/gms/b/cs;)V

    return-object v0
.end method

.method public static a(ILjava/lang/String;I)Lcom/google/android/gms/b/cs;
    .locals 2

    new-instance v0, Lcom/google/android/gms/b/cu;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/b/cu;-><init>(ILjava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static a(ILjava/lang/String;J)Lcom/google/android/gms/b/cs;
    .locals 2

    new-instance v0, Lcom/google/android/gms/b/cv;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/b/cv;-><init>(ILjava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/b/cs;
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/ct;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/b/ct;-><init>(ILjava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/cs;
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/cw;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/b/cw;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(ILjava/lang/String;)Lcom/google/android/gms/b/cs;
    .locals 2

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/b/cs;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/cs;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->m()Lcom/google/android/gms/b/cx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/b/cx;->c(Lcom/google/android/gms/b/cs;)V

    return-object v0
.end method


# virtual methods
.method protected abstract a(Landroid/content/SharedPreferences;)Ljava/lang/Object;
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/cs;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/cs;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/ag;->n()Lcom/google/android/gms/b/cz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/b/cz;->a(Lcom/google/android/gms/b/cs;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
