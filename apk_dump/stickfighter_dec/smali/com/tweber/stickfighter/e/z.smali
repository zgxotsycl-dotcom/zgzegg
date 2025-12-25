.class Lcom/tweber/stickfighter/e/z;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/e/v;

.field private b:Landroid/net/Uri;

.field private c:Lcom/tweber/stickfighter/d/b;


# direct methods
.method public constructor <init>(Lcom/tweber/stickfighter/e/v;Landroid/net/Uri;)V
    .locals 1

    iput-object p1, p0, Lcom/tweber/stickfighter/e/z;->a:Lcom/tweber/stickfighter/e/v;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/tweber/stickfighter/e/z;->b:Landroid/net/Uri;

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/e/z;->c:Lcom/tweber/stickfighter/d/b;

    return-void
.end method

.method static synthetic a(Lcom/tweber/stickfighter/e/z;)Lcom/tweber/stickfighter/d/b;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/e/z;->c:Lcom/tweber/stickfighter/d/b;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)Lcom/tweber/stickfighter/h/v;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tweber/stickfighter/e/z;->c:Lcom/tweber/stickfighter/d/b;

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->c()V

    new-instance v1, Lcom/tweber/stickfighter/e/aa;

    invoke-direct {v1, p0, v0}, Lcom/tweber/stickfighter/e/aa;-><init>(Lcom/tweber/stickfighter/e/z;Lcom/tweber/stickfighter/e/w;)V

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/e/z;->c:Lcom/tweber/stickfighter/d/b;

    invoke-interface {v0}, Lcom/tweber/stickfighter/d/b;->d()V

    invoke-virtual {v1}, Lcom/tweber/stickfighter/e/aa;->a()Lcom/tweber/stickfighter/h/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/e/z;->c:Lcom/tweber/stickfighter/d/b;

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->e()V

    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tweber/stickfighter/e/z;->c:Lcom/tweber/stickfighter/d/b;

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->e()V

    throw v0
.end method

.method static synthetic a(Lcom/tweber/stickfighter/e/z;[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/e/z;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/tweber/stickfighter/h/v;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/tweber/stickfighter/e/z;->b:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/tweber/stickfighter/e/z;->a(Landroid/net/Uri;)Lcom/tweber/stickfighter/h/v;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/tweber/stickfighter/e/z;->a:Lcom/tweber/stickfighter/e/v;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tweber/stickfighter/e/v;->a(Lcom/tweber/stickfighter/e/v;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1
    const-string v2, "ERROR"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected a(Lcom/tweber/stickfighter/h/v;)V
    .locals 4

    iget-object v0, p0, Lcom/tweber/stickfighter/e/z;->a:Lcom/tweber/stickfighter/e/v;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/e/v;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0c0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/tweber/stickfighter/e/z;->a:Lcom/tweber/stickfighter/e/v;

    invoke-static {v1, p1}, Lcom/tweber/stickfighter/e/v;->a(Lcom/tweber/stickfighter/e/v;Lcom/tweber/stickfighter/h/v;)Lcom/tweber/stickfighter/h/v;

    const v1, 0x7f0c0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/v;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/tweber/stickfighter/f/k;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/tweber/stickfighter/f/k;-><init>(Lcom/tweber/stickfighter/h/v;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, La/a/a/c;->c(Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/tweber/stickfighter/e/z;->a:Lcom/tweber/stickfighter/e/v;

    invoke-static {v1}, Lcom/tweber/stickfighter/e/v;->b(Lcom/tweber/stickfighter/e/v;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/e/z;->a([Ljava/lang/Void;)Lcom/tweber/stickfighter/h/v;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/tweber/stickfighter/h/v;

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/e/z;->a(Lcom/tweber/stickfighter/h/v;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/e/z;->a([Ljava/lang/Integer;)V

    return-void
.end method
