.class Lcom/google/android/gms/b/ge;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/oa;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/fz;

.field private final b:Lcom/google/android/gms/b/gf;

.field private final c:Z

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/fz;ZLcom/google/android/gms/b/gf;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/ge;->a:Lcom/google/android/gms/b/fz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/android/gms/b/ge;->c:Z

    iput-object p3, p0, Lcom/google/android/gms/b/ge;->b:Lcom/google/android/gms/b/gf;

    iput-object p4, p0, Lcom/google/android/gms/b/ge;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ge;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/google/android/gms/b/gf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ge;->b:Lcom/google/android/gms/b/gf;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/b/ge;->c:Z

    return v0
.end method
