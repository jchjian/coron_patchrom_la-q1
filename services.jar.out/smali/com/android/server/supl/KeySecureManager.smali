.class public Lcom/android/server/supl/KeySecureManager;
.super Lcom/android/server/supl/SecureManagerBase;
.source "KeySecureManager.java"


# instance fields
.field private kmf:Ljavax/net/ssl/KeyManagerFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/server/supl/SecureManagerBase;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/supl/KeySecureManager;->kmf:Ljavax/net/ssl/KeyManagerFactory;

    .line 24
    return-void
.end method


# virtual methods
.method public getKetManagers()[Ljavax/net/ssl/KeyManager;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/supl/KeySecureManager;->kmf:Ljavax/net/ssl/KeyManagerFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    return-object v0
.end method

.method protected initManagerFactory(Ljava/security/KeyStore;[C)V
    .locals 2
    .parameter "ks"
    .parameter "passphrase"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 29
    const-string v0, "CNet"

    const-string v1, "===>> Inside initManagerFactory <<==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v0, "X509"

    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/supl/KeySecureManager;->kmf:Ljavax/net/ssl/KeyManagerFactory;

    .line 31
    iget-object v0, p0, Lcom/android/server/supl/KeySecureManager;->kmf:Ljavax/net/ssl/KeyManagerFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 32
    return-void
.end method
