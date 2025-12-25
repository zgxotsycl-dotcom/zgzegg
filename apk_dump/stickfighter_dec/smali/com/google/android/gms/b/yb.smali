.class public final Lcom/google/android/gms/b/yb;
.super Lcom/google/android/gms/b/xr;


# instance fields
.field public c:[Ljava/lang/String;

.field public d:[Ljava/lang/String;

.field public e:[I

.field public f:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/b/xr;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/b/yb;->f()Lcom/google/android/gms/b/yb;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/xp;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/b/yb;->c:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/yb;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/b/yb;->c:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/b/yb;->c:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/b/xp;->a(ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/b/yb;->d:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/b/yb;->d:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/b/yb;->d:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/b/yb;->d:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/b/xp;->a(ILjava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/b/yb;->e:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/b/yb;->e:[I

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/b/yb;->e:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/b/yb;->e:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/b/xp;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/b/yb;->f:[J

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/b/yb;->f:[J

    array-length v0, v0

    if-lez v0, :cond_5

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/b/yb;->f:[J

    array-length v0, v0

    if-ge v1, v0, :cond_5

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/b/yb;->f:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/b/xp;->a(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    invoke-super {p0, p1}, Lcom/google/android/gms/b/xr;->a(Lcom/google/android/gms/b/xp;)V

    return-void
.end method

.method protected b()I
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/b/xr;->b()I

    move-result v4

    iget-object v0, p0, Lcom/google/android/gms/b/yb;->c:[Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/b/yb;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_9

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/b/yb;->c:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Lcom/google/android/gms/b/yb;->c:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    invoke-static {v5}, Lcom/google/android/gms/b/xp;->b(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int v0, v4, v2

    mul-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v2

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/b/yb;->d:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/b/yb;->d:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_2
    iget-object v5, p0, Lcom/google/android/gms/b/yb;->d:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lcom/google/android/gms/b/yb;->d:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/b/xp;->b(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v0, v3

    mul-int/lit8 v2, v4, 0x1

    add-int/2addr v0, v2

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/b/yb;->e:[I

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/b/yb;->e:[I

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v1

    move v3, v1

    :goto_3
    iget-object v4, p0, Lcom/google/android/gms/b/yb;->e:[I

    array-length v4, v4

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/b/yb;->e:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/b/xp;->b(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/b/yb;->e:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/b/yb;->f:[J

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/b/yb;->f:[J

    array-length v2, v2

    if-lez v2, :cond_8

    move v2, v1

    :goto_4
    iget-object v3, p0, Lcom/google/android/gms/b/yb;->f:[J

    array-length v3, v3

    if-ge v1, v3, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/b/yb;->f:[J

    aget-wide v4, v3, v1

    invoke-static {v4, v5}, Lcom/google/android/gms/b/xp;->c(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/b/yb;->f:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_8
    return v0

    :cond_9
    move v0, v4

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/b/yb;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/b/yb;

    iget-object v2, p0, Lcom/google/android/gms/b/yb;->c:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/b/yb;->c:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/b/xv;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/b/yb;->d:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/b/yb;->d:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/b/xv;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/b/yb;->e:[I

    iget-object v3, p1, Lcom/google/android/gms/b/yb;->e:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/b/xv;->a([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/b/yb;->f:[J

    iget-object v3, p1, Lcom/google/android/gms/b/yb;->f:[J

    invoke-static {v2, v3}, Lcom/google/android/gms/b/xv;->a([J[J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/b/yb;->a:Lcom/google/android/gms/b/xt;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/b/yb;->a:Lcom/google/android/gms/b/xt;

    invoke-virtual {v2}, Lcom/google/android/gms/b/xt;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/b/yb;->a:Lcom/google/android/gms/b/xt;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/b/yb;->a:Lcom/google/android/gms/b/xt;

    invoke-virtual {v2}, Lcom/google/android/gms/b/xt;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/b/yb;->a:Lcom/google/android/gms/b/xt;

    iget-object v1, p1, Lcom/google/android/gms/b/yb;->a:Lcom/google/android/gms/b/xt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/xt;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Lcom/google/android/gms/b/yb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/b/xz;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/b/yb;->c:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/b/xz;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/b/yb;->d:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/b/xz;->a:[I

    iput-object v0, p0, Lcom/google/android/gms/b/yb;->e:[I

    sget-object v0, Lcom/google/android/gms/b/xz;->b:[J

    iput-object v0, p0, Lcom/google/android/gms/b/yb;->f:[J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/b/yb;->a:Lcom/google/android/gms/b/xt;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/b/yb;->b:I

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/b/yb;->c:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/b/xv;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/b/yb;->d:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/b/xv;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/b/yb;->e:[I

    invoke-static {v1}, Lcom/google/android/gms/b/xv;->a([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/b/yb;->f:[J

    invoke-static {v1}, Lcom/google/android/gms/b/xv;->a([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/b/yb;->a:Lcom/google/android/gms/b/xt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/yb;->a:Lcom/google/android/gms/b/xt;

    invoke-virtual {v0}, Lcom/google/android/gms/b/xt;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/b/yb;->a:Lcom/google/android/gms/b/xt;

    invoke-virtual {v0}, Lcom/google/android/gms/b/xt;->hashCode()I

    move-result v0

    goto :goto_0
.end method
