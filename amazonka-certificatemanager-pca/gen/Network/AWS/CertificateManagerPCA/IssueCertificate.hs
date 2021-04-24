{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.IssueCertificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uses your private certificate authority (CA), or one that has been shared with you, to issue a client certificate. This action returns the Amazon Resource Name (ARN) of the certificate. You can retrieve the certificate by calling the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_GetCertificate.html GetCertificate> action and specifying the ARN.
module Network.AWS.CertificateManagerPCA.IssueCertificate
  ( -- * Creating a Request
    issueCertificate,
    IssueCertificate,

    -- * Request Lenses
    icIdempotencyToken,
    icValidityNotBefore,
    icTemplateARN,
    icAPIPassthrough,
    icCertificateAuthorityARN,
    icCSR,
    icSigningAlgorithm,
    icValidity,

    -- * Destructuring the Response
    issueCertificateResponse,
    IssueCertificateResponse,

    -- * Response Lenses
    icrrsCertificateARN,
    icrrsResponseStatus,
  )
where

import Network.AWS.CertificateManagerPCA.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'issueCertificate' smart constructor.
data IssueCertificate = IssueCertificate'
  { _icIdempotencyToken ::
      !(Maybe Text),
    _icValidityNotBefore ::
      !(Maybe Validity),
    _icTemplateARN :: !(Maybe Text),
    _icAPIPassthrough ::
      !(Maybe APIPassthrough),
    _icCertificateAuthorityARN :: !Text,
    _icCSR :: !Base64,
    _icSigningAlgorithm ::
      !SigningAlgorithm,
    _icValidity :: !Validity
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'IssueCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icIdempotencyToken' - Alphanumeric string that can be used to distinguish between calls to the __IssueCertificate__ action. Idempotency tokens for __IssueCertificate__ time out after one minute. Therefore, if you call __IssueCertificate__ multiple times with the same idempotency token within one minute, ACM Private CA recognizes that you are requesting only one certificate and will issue only one. If you change the idempotency token for each call, PCA recognizes that you are requesting multiple certificates.
--
-- * 'icValidityNotBefore' - Information describing the start of the validity period of the certificate. This parameter sets the “Not Before" date for the certificate. By default, when issuing a certificate, ACM Private CA sets the "Not Before" date to the issuance time minus 60 minutes. This compensates for clock inconsistencies across computer systems. The @ValidityNotBefore@ parameter can be used to customize the “Not Before” value.  Unlike the @Validity@ parameter, the @ValidityNotBefore@ parameter is optional. The @ValidityNotBefore@ value is expressed as an explicit date and time, using the @Validity@ type value @ABSOLUTE@ . For more information, see <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_Validity.html Validity> in this API reference and <https://tools.ietf.org/html/rfc5280#section-4.1.2.5 Validity> in RFC 5280.
--
-- * 'icTemplateARN' - Specifies a custom configuration template to use when issuing a certificate. If this parameter is not provided, ACM Private CA defaults to the @EndEntityCertificate/V1@ template. For CA certificates, you should choose the shortest path length that meets your needs. The path length is indicated by the PathLen/N/ portion of the ARN, where /N/ is the <https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaTerms.html#terms-cadepth CA depth> . Note: The CA depth configured on a subordinate CA certificate must not exceed the limit set by its parents in the CA hierarchy. For a list of @TemplateArn@ values supported by ACM Private CA, see <https://docs.aws.amazon.com/acm-pca/latest/userguide/UsingTemplates.html Understanding Certificate Templates> .
--
-- * 'icAPIPassthrough' - Specifies X.509 certificate information to be included in the issued certificate. An @APIPassthrough@ or @APICSRPassthrough@ template variant must be selected, or else this parameter is ignored. For more information about using these templates, see <https://docs.aws.amazon.com/acm-pca/latest/userguide/UsingTemplates.html Understanding Certificate Templates> . If conflicting or duplicate certificate information is supplied during certificate issuance, ACM Private CA applies <xxxxx order of operation rules> to determine what information is used.
--
-- * 'icCertificateAuthorityARN' - The Amazon Resource Name (ARN) that was returned when you called <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html CreateCertificateAuthority> . This must be of the form: @arn:aws:acm-pca:/region/ :/account/ :certificate-authority//12345678-1234-1234-1234-123456789012/ @
--
-- * 'icCSR' - The certificate signing request (CSR) for the certificate you want to issue. As an example, you can use the following OpenSSL command to create the CSR and a 2048 bit RSA private key.  @openssl req -new -newkey rsa:2048 -days 365 -keyout private/test_cert_priv_key.pem -out csr/test_cert_.csr@  If you have a configuration file, you can then use the following OpenSSL command. The @usr_cert@ block in the configuration file contains your X509 version 3 extensions.  @openssl req -new -config openssl_rsa.cnf -extensions usr_cert -newkey rsa:2048 -days -365 -keyout private/test_cert_priv_key.pem -out csr/test_cert_.csr@  Note: A CSR must provide either a /subject name/ or a /subject alternative name/ or the request will be rejected. -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'icSigningAlgorithm' - The name of the algorithm that will be used to sign the certificate to be issued.  This parameter should not be confused with the @SigningAlgorithm@ parameter used to sign a CSR in the @CreateCertificateAuthority@ action.
--
-- * 'icValidity' - Information describing the end of the validity period of the certificate. This parameter sets the “Not After” date for the certificate. Certificate validity is the period of time during which a certificate is valid. Validity can be expressed as an explicit date and time when the certificate expires, or as a span of time after issuance, stated in days, months, or years. For more information, see <https://tools.ietf.org/html/rfc5280#section-4.1.2.5 Validity> in RFC 5280.  This value is unaffected when @ValidityNotBefore@ is also specified. For example, if @Validity@ is set to 20 days in the future, the certificate will expire 20 days from issuance time regardless of the @ValidityNotBefore@ value. The end of the validity period configured on a certificate must not exceed the limit set on its parents in the CA hierarchy.
issueCertificate ::
  -- | 'icCertificateAuthorityARN'
  Text ->
  -- | 'icCSR'
  ByteString ->
  -- | 'icSigningAlgorithm'
  SigningAlgorithm ->
  -- | 'icValidity'
  Validity ->
  IssueCertificate
issueCertificate
  pCertificateAuthorityARN_
  pCSR_
  pSigningAlgorithm_
  pValidity_ =
    IssueCertificate'
      { _icIdempotencyToken = Nothing,
        _icValidityNotBefore = Nothing,
        _icTemplateARN = Nothing,
        _icAPIPassthrough = Nothing,
        _icCertificateAuthorityARN =
          pCertificateAuthorityARN_,
        _icCSR = _Base64 # pCSR_,
        _icSigningAlgorithm = pSigningAlgorithm_,
        _icValidity = pValidity_
      }

-- | Alphanumeric string that can be used to distinguish between calls to the __IssueCertificate__ action. Idempotency tokens for __IssueCertificate__ time out after one minute. Therefore, if you call __IssueCertificate__ multiple times with the same idempotency token within one minute, ACM Private CA recognizes that you are requesting only one certificate and will issue only one. If you change the idempotency token for each call, PCA recognizes that you are requesting multiple certificates.
icIdempotencyToken :: Lens' IssueCertificate (Maybe Text)
icIdempotencyToken = lens _icIdempotencyToken (\s a -> s {_icIdempotencyToken = a})

-- | Information describing the start of the validity period of the certificate. This parameter sets the “Not Before" date for the certificate. By default, when issuing a certificate, ACM Private CA sets the "Not Before" date to the issuance time minus 60 minutes. This compensates for clock inconsistencies across computer systems. The @ValidityNotBefore@ parameter can be used to customize the “Not Before” value.  Unlike the @Validity@ parameter, the @ValidityNotBefore@ parameter is optional. The @ValidityNotBefore@ value is expressed as an explicit date and time, using the @Validity@ type value @ABSOLUTE@ . For more information, see <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_Validity.html Validity> in this API reference and <https://tools.ietf.org/html/rfc5280#section-4.1.2.5 Validity> in RFC 5280.
icValidityNotBefore :: Lens' IssueCertificate (Maybe Validity)
icValidityNotBefore = lens _icValidityNotBefore (\s a -> s {_icValidityNotBefore = a})

-- | Specifies a custom configuration template to use when issuing a certificate. If this parameter is not provided, ACM Private CA defaults to the @EndEntityCertificate/V1@ template. For CA certificates, you should choose the shortest path length that meets your needs. The path length is indicated by the PathLen/N/ portion of the ARN, where /N/ is the <https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaTerms.html#terms-cadepth CA depth> . Note: The CA depth configured on a subordinate CA certificate must not exceed the limit set by its parents in the CA hierarchy. For a list of @TemplateArn@ values supported by ACM Private CA, see <https://docs.aws.amazon.com/acm-pca/latest/userguide/UsingTemplates.html Understanding Certificate Templates> .
icTemplateARN :: Lens' IssueCertificate (Maybe Text)
icTemplateARN = lens _icTemplateARN (\s a -> s {_icTemplateARN = a})

-- | Specifies X.509 certificate information to be included in the issued certificate. An @APIPassthrough@ or @APICSRPassthrough@ template variant must be selected, or else this parameter is ignored. For more information about using these templates, see <https://docs.aws.amazon.com/acm-pca/latest/userguide/UsingTemplates.html Understanding Certificate Templates> . If conflicting or duplicate certificate information is supplied during certificate issuance, ACM Private CA applies <xxxxx order of operation rules> to determine what information is used.
icAPIPassthrough :: Lens' IssueCertificate (Maybe APIPassthrough)
icAPIPassthrough = lens _icAPIPassthrough (\s a -> s {_icAPIPassthrough = a})

-- | The Amazon Resource Name (ARN) that was returned when you called <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html CreateCertificateAuthority> . This must be of the form: @arn:aws:acm-pca:/region/ :/account/ :certificate-authority//12345678-1234-1234-1234-123456789012/ @
icCertificateAuthorityARN :: Lens' IssueCertificate Text
icCertificateAuthorityARN = lens _icCertificateAuthorityARN (\s a -> s {_icCertificateAuthorityARN = a})

-- | The certificate signing request (CSR) for the certificate you want to issue. As an example, you can use the following OpenSSL command to create the CSR and a 2048 bit RSA private key.  @openssl req -new -newkey rsa:2048 -days 365 -keyout private/test_cert_priv_key.pem -out csr/test_cert_.csr@  If you have a configuration file, you can then use the following OpenSSL command. The @usr_cert@ block in the configuration file contains your X509 version 3 extensions.  @openssl req -new -config openssl_rsa.cnf -extensions usr_cert -newkey rsa:2048 -days -365 -keyout private/test_cert_priv_key.pem -out csr/test_cert_.csr@  Note: A CSR must provide either a /subject name/ or a /subject alternative name/ or the request will be rejected. -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
icCSR :: Lens' IssueCertificate ByteString
icCSR = lens _icCSR (\s a -> s {_icCSR = a}) . _Base64

-- | The name of the algorithm that will be used to sign the certificate to be issued.  This parameter should not be confused with the @SigningAlgorithm@ parameter used to sign a CSR in the @CreateCertificateAuthority@ action.
icSigningAlgorithm :: Lens' IssueCertificate SigningAlgorithm
icSigningAlgorithm = lens _icSigningAlgorithm (\s a -> s {_icSigningAlgorithm = a})

-- | Information describing the end of the validity period of the certificate. This parameter sets the “Not After” date for the certificate. Certificate validity is the period of time during which a certificate is valid. Validity can be expressed as an explicit date and time when the certificate expires, or as a span of time after issuance, stated in days, months, or years. For more information, see <https://tools.ietf.org/html/rfc5280#section-4.1.2.5 Validity> in RFC 5280.  This value is unaffected when @ValidityNotBefore@ is also specified. For example, if @Validity@ is set to 20 days in the future, the certificate will expire 20 days from issuance time regardless of the @ValidityNotBefore@ value. The end of the validity period configured on a certificate must not exceed the limit set on its parents in the CA hierarchy.
icValidity :: Lens' IssueCertificate Validity
icValidity = lens _icValidity (\s a -> s {_icValidity = a})

instance AWSRequest IssueCertificate where
  type Rs IssueCertificate = IssueCertificateResponse
  request = postJSON certificateManagerPCA
  response =
    receiveJSON
      ( \s h x ->
          IssueCertificateResponse'
            <$> (x .?> "CertificateArn") <*> (pure (fromEnum s))
      )

instance Hashable IssueCertificate

instance NFData IssueCertificate

instance ToHeaders IssueCertificate where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("ACMPrivateCA.IssueCertificate" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON IssueCertificate where
  toJSON IssueCertificate' {..} =
    object
      ( catMaybes
          [ ("IdempotencyToken" .=) <$> _icIdempotencyToken,
            ("ValidityNotBefore" .=) <$> _icValidityNotBefore,
            ("TemplateArn" .=) <$> _icTemplateARN,
            ("ApiPassthrough" .=) <$> _icAPIPassthrough,
            Just
              ( "CertificateAuthorityArn"
                  .= _icCertificateAuthorityARN
              ),
            Just ("Csr" .= _icCSR),
            Just ("SigningAlgorithm" .= _icSigningAlgorithm),
            Just ("Validity" .= _icValidity)
          ]
      )

instance ToPath IssueCertificate where
  toPath = const "/"

instance ToQuery IssueCertificate where
  toQuery = const mempty

-- | /See:/ 'issueCertificateResponse' smart constructor.
data IssueCertificateResponse = IssueCertificateResponse'
  { _icrrsCertificateARN ::
      !(Maybe Text),
    _icrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'IssueCertificateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icrrsCertificateARN' - The Amazon Resource Name (ARN) of the issued certificate and the certificate serial number. This is of the form: @arn:aws:acm-pca:/region/ :/account/ :certificate-authority//12345678-1234-1234-1234-123456789012/ /certificate//286535153982981100925020015808220737245/ @
--
-- * 'icrrsResponseStatus' - -- | The response status code.
issueCertificateResponse ::
  -- | 'icrrsResponseStatus'
  Int ->
  IssueCertificateResponse
issueCertificateResponse pResponseStatus_ =
  IssueCertificateResponse'
    { _icrrsCertificateARN =
        Nothing,
      _icrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the issued certificate and the certificate serial number. This is of the form: @arn:aws:acm-pca:/region/ :/account/ :certificate-authority//12345678-1234-1234-1234-123456789012/ /certificate//286535153982981100925020015808220737245/ @
icrrsCertificateARN :: Lens' IssueCertificateResponse (Maybe Text)
icrrsCertificateARN = lens _icrrsCertificateARN (\s a -> s {_icrrsCertificateARN = a})

-- | -- | The response status code.
icrrsResponseStatus :: Lens' IssueCertificateResponse Int
icrrsResponseStatus = lens _icrrsResponseStatus (\s a -> s {_icrrsResponseStatus = a})

instance NFData IssueCertificateResponse
