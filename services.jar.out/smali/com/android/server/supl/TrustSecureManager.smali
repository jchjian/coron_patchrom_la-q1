.class public Lcom/android/server/supl/TrustSecureManager;
.super Lcom/android/server/supl/SecureManagerBase;
.source "TrustSecureManager.java"


# instance fields
.field private kmf:Ljavax/net/ssl/TrustManagerFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/server/supl/SecureManagerBase;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/supl/TrustSecureManager;->kmf:Ljavax/net/ssl/TrustManagerFactory;

    .line 22
    return-void
.end method


# virtual methods
.method public getKetManagers()[Ljavax/net/ssl/TrustManager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/supl/TrustSecureManager;->kmf:Ljavax/net/ssl/TrustManagerFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    return-object v0
.end method

.method protected initManagerFactory(Ljava/security/KeyStore;[C)V
    .locals 1
    .parameter "ks"
    .parameter "passphrase"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 28
    const-string v0, "X509"

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/supl/TrustSecureManager;->kmf:Ljavax/net/ssl/TrustManagerFactory;

    .line 29
    iget-object v0, p0, Lcom/android/server/supl/TrustSecureManager;->kmf:Ljavax/net/ssl/TrustManagerFactory;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 30
    return-void
.end method
