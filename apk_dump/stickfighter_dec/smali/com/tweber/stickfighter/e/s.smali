.class Lcom/tweber/stickfighter/e/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/e/q;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/e/q;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/e/s;->a:Lcom/tweber/stickfighter/e/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/tweber/stickfighter/e/s;->a:Lcom/tweber/stickfighter/e/q;

    invoke-static {v2}, Lcom/tweber/stickfighter/e/q;->b(Lcom/tweber/stickfighter/e/q;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "xml/sfa"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tweber/stickfighter/e/s;->a:Lcom/tweber/stickfighter/e/q;

    iget-object v2, p0, Lcom/tweber/stickfighter/e/s;->a:Lcom/tweber/stickfighter/e/q;

    invoke-virtual {v2}, Lcom/tweber/stickfighter/e/q;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tweber/stickfighter/e/q;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
