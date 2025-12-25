.class public final Lcom/google/android/gms/b/yd;
.super Lcom/google/android/gms/b/xr;


# instance fields
.field public c:[B

.field public d:[[B

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/b/xr;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/b/yd;->f()Lcom/google/android/gms/b/yd;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/xp;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/yd;->c:[B

    sget-object v1, Lcom/google/android/gms/b/xz;->h:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/b/yd;->c:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/b/xp;->a(I[B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/yd;->d:[[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/b/yd;->d:[[B

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/b/yd;->d:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/b/yd;->d:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/b/xp;->a(I[B)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/b/yd;->e:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/b/yd;->e:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/b/xp;->a(IZ)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/b/xr;->a(Lcom/google/android/gms/b/xp;)V

    return-void
.end method

.method protected b()I
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/b/xr;->b()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/b/yd;->c:[B

    sget-object v3, Lcom/google/android/gms/b/xz;->h:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/b/yd;->c:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/b/xp;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/b/yd;->d:[[B

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/b/yd;->d:[[B

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/b/yd;->d:[[B

    array-length v4, v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/b/yd;->d:[[B

    aget-object v4, v4, v1

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/b/xp;->c([B)I

    move-result v4

    add-int/2addr v2, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/b/yd;->e:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/b/yd;->e:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/b/xp;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
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
    instance-of v2, p1, Lcom/google/android/gms/b/yd;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/b/yd;

    iget-object v2, p0, Lcom/google/android/gms/b/yd;->c:[B

    iget-object v3, p1, Lcom/google/android/gms/b/yd;->c:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/b/yd;->d:[[B

    iget-object v3, p1, Lcom/google/android/gms/b/yd;->d:[[B

    invoke-static {v2, v3}, Lcom/google/android/gms/b/xv;->a([[B[[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/b/yd;->e:Z

    iget-boolean v3, p1, Lcom/google/android/gms/b/yd;->e:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/b/yd;->a:Lcom/google/android/gms/b/xt;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/b/yd;->a:Lcom/google/android/gms/b/xt;

    invoke-virtual {v2}, Lcom/google/android/gms/b/xt;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/b/yd;->a:Lcom/google/android/gms/b/xt;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/b/yd;->a:Lcom/google/android/gms/b/xt;

    invoke-virtual {v2}, Lcom/google/android/gms/b/xt;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/b/yd;->a:Lcom/google/android/gms/b/xt;

    iget-object v1, p1, Lcom/google/android/gms/b/yd;->a:Lcom/google/android/gms/b/xt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/xt;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Lcom/google/android/gms/b/yd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/b/xz;->h:[B

    iput-object v0, p0, Lcom/google/android/gms/b/yd;->c:[B

    sget-object v0, Lcom/google/android/gms/b/xz;->g:[[B

    iput-object v0, p0, Lcom/google/android/gms/b/yd;->d:[[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/b/yd;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/b/yd;->a:Lcom/google/android/gms/b/xt;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/b/yd;->b:I

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

    iget-object v1, p0, Lcom/google/android/gms/b/yd;->c:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/b/yd;->d:[[B

    invoke-static {v1}, Lcom/google/android/gms/b/xv;->a([[B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/b/yd;->e:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/b/yd;->a:Lcom/google/android/gms/b/xt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/yd;->a:Lcom/google/android/gms/b/xt;

    invoke-virtual {v0}, Lcom/google/android/gms/b/xt;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_1
    const/16 v0, 0x4d5

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/b/yd;->a:Lcom/google/android/gms/b/xt;

    invoke-virtual {v0}, Lcom/google/android/gms/b/xt;->hashCode()I

    move-result v0

    goto :goto_1
.end method
