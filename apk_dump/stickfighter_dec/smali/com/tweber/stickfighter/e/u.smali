.class Lcom/tweber/stickfighter/e/u;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/e/q;

.field private final b:J


# direct methods
.method public constructor <init>(Lcom/tweber/stickfighter/e/q;J)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/e/u;->a:Lcom/tweber/stickfighter/e/q;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-wide p2, p0, Lcom/tweber/stickfighter/e/u;->b:J

    return-void
.end method

.method private a(Lcom/tweber/stickfighter/h/v;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tweber/stickfighter/c/a;->a()I

    move-result v2

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/v;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_backup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Animation_backup"

    const-string v5, ".xml"

    invoke-static {v0, v3, v4, v5}, Lcom/tweber/stickfighter/j/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tweber/stickfighter/e/u;->a:Lcom/tweber/stickfighter/e/q;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/tweber/stickfighter/e/q;->a(Lcom/tweber/stickfighter/e/q;Ljava/io/File;)Ljava/io/File;

    iget-object v0, p0, Lcom/tweber/stickfighter/e/u;->a:Lcom/tweber/stickfighter/e/q;

    invoke-static {v0}, Lcom/tweber/stickfighter/e/q;->c(Lcom/tweber/stickfighter/e/q;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/tweber/stickfighter/e/u;->a:Lcom/tweber/stickfighter/e/q;

    invoke-static {v0}, Lcom/tweber/stickfighter/e/q;->c(Lcom/tweber/stickfighter/e/q;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    const-string v0, "<Sequence Name=\""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/v;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tweber/stickfighter/j/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    const-string v0, "\" HeightWidthRatio=\""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/v;->d()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    const-string v0, "\" FrameCount=\""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    const-string v0, "\" BackgroundColor=\""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/v;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    const-string v0, "\">"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/u;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, p0, Lcom/tweber/stickfighter/e/u;->a:Lcom/tweber/stickfighter/e/q;

    invoke-static {v0}, Lcom/tweber/stickfighter/e/q;->c(Lcom/tweber/stickfighter/e/q;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/tweber/stickfighter/c/a;->a(I)Lcom/tweber/stickfighter/h/p;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tweber/stickfighter/h/p;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    int-to-float v4, v0

    int-to-float v5, v2

    div-float/2addr v4, v5

    const/high16 v5, 0x42480000    # 50.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    invoke-virtual {p0, v5}, Lcom/tweber/stickfighter/e/u;->publishProgress([Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "</Sequence>"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1
.end method

.method private a(Lcom/tweber/stickfighter/h/v;Ljava/io/File;)V
    .locals 13

    const/high16 v12, 0x42480000    # 50.0f

    const/16 v11, 0x800

    const/4 v10, 0x0

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/v;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_backup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Animation_backup"

    const-string v3, ".sfa"

    invoke-static {v0, v1, v2, v3}, Lcom/tweber/stickfighter/j/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/e/u;->a:Lcom/tweber/stickfighter/e/q;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tweber/stickfighter/e/q;->b(Lcom/tweber/stickfighter/e/q;Ljava/io/File;)Ljava/io/File;

    iget-object v0, p0, Lcom/tweber/stickfighter/e/u;->a:Lcom/tweber/stickfighter/e/q;

    invoke-static {v0}, Lcom/tweber/stickfighter/e/q;->b(Lcom/tweber/stickfighter/e/q;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/tweber/stickfighter/e/u;->a:Lcom/tweber/stickfighter/e/q;

    invoke-static {v1}, Lcom/tweber/stickfighter/e/q;->b(Lcom/tweber/stickfighter/e/q;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-array v5, v11, [B

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v0, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {v6, v5, v10, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/u;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    iget-object v0, p0, Lcom/tweber/stickfighter/e/u;->a:Lcom/tweber/stickfighter/e/q;

    invoke-static {v0}, Lcom/tweber/stickfighter/e/q;->c(Lcom/tweber/stickfighter/e/q;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/tweber/stickfighter/e/u;->a:Lcom/tweber/stickfighter/e/q;

    invoke-static {v0}, Lcom/tweber/stickfighter/e/q;->b(Lcom/tweber/stickfighter/e/q;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v4, v5, v10, v7}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    int-to-long v8, v7

    add-long/2addr v0, v8

    long-to-float v7, v0

    long-to-float v8, v2

    div-float/2addr v7, v8

    mul-float/2addr v7, v12

    add-float/2addr v7, v12

    float-to-int v7, v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v10

    invoke-virtual {p0, v8}, Lcom/tweber/stickfighter/e/u;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    iget-object v0, p0, Lcom/tweber/stickfighter/e/u;->a:Lcom/tweber/stickfighter/e/q;

    invoke-static {v0}, Lcom/tweber/stickfighter/e/q;->c(Lcom/tweber/stickfighter/e/q;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v0

    iget-wide v2, p0, Lcom/tweber/stickfighter/e/u;->b:J

    invoke-interface {v0, v2, v3}, Lcom/tweber/stickfighter/d/b;->a(J)Lcom/tweber/stickfighter/h/v;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/tweber/stickfighter/e/u;->a(Lcom/tweber/stickfighter/h/v;)V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/u;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tweber/stickfighter/e/u;->a:Lcom/tweber/stickfighter/e/q;

    invoke-static {v1}, Lcom/tweber/stickfighter/e/q;->c(Lcom/tweber/stickfighter/e/q;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tweber/stickfighter/e/u;->a(Lcom/tweber/stickfighter/h/v;Ljava/io/File;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/e/u;->a:Lcom/tweber/stickfighter/e/q;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/e/q;->a(Lcom/tweber/stickfighter/e/q;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ERROR"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 3

    iget-object v0, p0, Lcom/tweber/stickfighter/e/u;->a:Lcom/tweber/stickfighter/e/q;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/e/q;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0c0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0c0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tweber/stickfighter/e/u;->a:Lcom/tweber/stickfighter/e/q;

    invoke-static {v1}, Lcom/tweber/stickfighter/e/q;->b(Lcom/tweber/stickfighter/e/q;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/tweber/stickfighter/e/u;->a:Lcom/tweber/stickfighter/e/q;

    invoke-static {v1}, Lcom/tweber/stickfighter/e/q;->d(Lcom/tweber/stickfighter/e/q;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/e/u;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/e/u;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/e/u;->a([Ljava/lang/Integer;)V

    return-void
.end method
