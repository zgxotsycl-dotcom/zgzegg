.class Lcom/tweber/stickfighter/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/e/a;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/e/b;->a:Lcom/tweber/stickfighter/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/e/b;->a:Lcom/tweber/stickfighter/e/a;

    invoke-static {v0}, Lcom/tweber/stickfighter/e/a;->a(Lcom/tweber/stickfighter/e/a;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/e/b;->a:Lcom/tweber/stickfighter/e/a;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/e/a;->dismiss()V

    return-void
.end method
