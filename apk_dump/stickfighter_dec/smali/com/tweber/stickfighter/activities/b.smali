.class public Lcom/tweber/stickfighter/activities/b;
.super Lcom/nononsenseapps/filepicker/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nononsenseapps/filepicker/k;-><init>()V

    return-void
.end method

.method private g(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected f(Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/activities/b;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/tweber/stickfighter/activities/b;->a:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/tweber/stickfighter/activities/b;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :cond_2
    const-string v0, ".sfa"

    invoke-direct {p0, p1}, Lcom/tweber/stickfighter/activities/b;->g(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
