.class public Lcom/google/android/gms/b/pe;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:[B

.field public final c:Ljava/util/Map;

.field public final d:Z

.field public final e:J


# direct methods
.method public constructor <init>(I[BLjava/util/Map;ZJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/b/pe;->a:I

    iput-object p2, p0, Lcom/google/android/gms/b/pe;->b:[B

    iput-object p3, p0, Lcom/google/android/gms/b/pe;->c:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/google/android/gms/b/pe;->d:Z

    iput-wide p5, p0, Lcom/google/android/gms/b/pe;->e:J

    return-void
.end method

.method public constructor <init>([BLjava/util/Map;)V
    .locals 8

    const/16 v2, 0xc8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/b/pe;-><init>(I[BLjava/util/Map;ZJ)V

    return-void
.end method
