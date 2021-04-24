{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManager.Types.CertificateDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManager.Types.CertificateDetail where

import Network.AWS.CertificateManager.Types.CertificateOptions
import Network.AWS.CertificateManager.Types.CertificateStatus
import Network.AWS.CertificateManager.Types.CertificateType
import Network.AWS.CertificateManager.Types.DomainValidation
import Network.AWS.CertificateManager.Types.ExtendedKeyUsage
import Network.AWS.CertificateManager.Types.FailureReason
import Network.AWS.CertificateManager.Types.KeyAlgorithm
import Network.AWS.CertificateManager.Types.KeyUsage
import Network.AWS.CertificateManager.Types.RenewalEligibility
import Network.AWS.CertificateManager.Types.RenewalSummary
import Network.AWS.CertificateManager.Types.RevocationReason
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains metadata about an ACM certificate. This structure is returned in the response to a 'DescribeCertificate' request.
--
--
--
-- /See:/ 'certificateDetail' smart constructor.
data CertificateDetail = CertificateDetail'
  { _cdStatus ::
      !(Maybe CertificateStatus),
    _cdNotBefore :: !(Maybe POSIX),
    _cdCertificateAuthorityARN ::
      !(Maybe Text),
    _cdImportedAt :: !(Maybe POSIX),
    _cdExtendedKeyUsages ::
      !(Maybe [ExtendedKeyUsage]),
    _cdDomainValidationOptions ::
      !(Maybe (List1 DomainValidation)),
    _cdRenewalEligibility ::
      !(Maybe RenewalEligibility),
    _cdOptions ::
      !(Maybe CertificateOptions),
    _cdSerial :: !(Maybe Text),
    _cdCertificateARN :: !(Maybe Text),
    _cdCreatedAt :: !(Maybe POSIX),
    _cdInUseBy :: !(Maybe [Text]),
    _cdSubjectAlternativeNames ::
      !(Maybe (List1 Text)),
    _cdDomainName :: !(Maybe Text),
    _cdRevocationReason ::
      !(Maybe RevocationReason),
    _cdSubject :: !(Maybe Text),
    _cdFailureReason ::
      !(Maybe FailureReason),
    _cdKeyUsages :: !(Maybe [KeyUsage]),
    _cdRevokedAt :: !(Maybe POSIX),
    _cdNotAfter :: !(Maybe POSIX),
    _cdSignatureAlgorithm ::
      !(Maybe Text),
    _cdIssuer :: !(Maybe Text),
    _cdType :: !(Maybe CertificateType),
    _cdKeyAlgorithm ::
      !(Maybe KeyAlgorithm),
    _cdIssuedAt :: !(Maybe POSIX),
    _cdRenewalSummary ::
      !(Maybe RenewalSummary)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CertificateDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdStatus' - The status of the certificate.
--
-- * 'cdNotBefore' - The time before which the certificate is not valid.
--
-- * 'cdCertificateAuthorityARN' - The Amazon Resource Name (ARN) of the ACM PCA private certificate authority (CA) that issued the certificate. This has the following format:  @arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012@
--
-- * 'cdImportedAt' - The date and time at which the certificate was imported. This value exists only when the certificate type is @IMPORTED@ .
--
-- * 'cdExtendedKeyUsages' - Contains a list of Extended Key Usage X.509 v3 extension objects. Each object specifies a purpose for which the certificate public key can be used and consists of a name and an object identifier (OID).
--
-- * 'cdDomainValidationOptions' - Contains information about the initial validation of each domain name that occurs as a result of the 'RequestCertificate' request. This field exists only when the certificate type is @AMAZON_ISSUED@ .
--
-- * 'cdRenewalEligibility' - Specifies whether the certificate is eligible for renewal. At this time, only exported private certificates can be renewed with the 'RenewCertificate' command.
--
-- * 'cdOptions' - Value that specifies whether to add the certificate to a transparency log. Certificate transparency makes it possible to detect SSL certificates that have been mistakenly or maliciously issued. A browser might respond to certificate that has not been logged by showing an error message. The logs are cryptographically secure.
--
-- * 'cdSerial' - The serial number of the certificate.
--
-- * 'cdCertificateARN' - The Amazon Resource Name (ARN) of the certificate. For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)> in the /AWS General Reference/ .
--
-- * 'cdCreatedAt' - The time at which the certificate was requested.
--
-- * 'cdInUseBy' - A list of ARNs for the AWS resources that are using the certificate. A certificate can be used by multiple AWS resources.
--
-- * 'cdSubjectAlternativeNames' - One or more domain names (subject alternative names) included in the certificate. This list contains the domain names that are bound to the public key that is contained in the certificate. The subject alternative names include the canonical domain name (CN) of the certificate and additional domain names that can be used to connect to the website.
--
-- * 'cdDomainName' - The fully qualified domain name for the certificate, such as www.example.com or example.com.
--
-- * 'cdRevocationReason' - The reason the certificate was revoked. This value exists only when the certificate status is @REVOKED@ .
--
-- * 'cdSubject' - The name of the entity that is associated with the public key contained in the certificate.
--
-- * 'cdFailureReason' - The reason the certificate request failed. This value exists only when the certificate status is @FAILED@ . For more information, see <https://docs.aws.amazon.com/acm/latest/userguide/troubleshooting.html#troubleshooting-failed Certificate Request Failed> in the /AWS Certificate Manager User Guide/ .
--
-- * 'cdKeyUsages' - A list of Key Usage X.509 v3 extension objects. Each object is a string value that identifies the purpose of the public key contained in the certificate. Possible extension values include DIGITAL_SIGNATURE, KEY_ENCHIPHERMENT, NON_REPUDIATION, and more.
--
-- * 'cdRevokedAt' - The time at which the certificate was revoked. This value exists only when the certificate status is @REVOKED@ .
--
-- * 'cdNotAfter' - The time after which the certificate is not valid.
--
-- * 'cdSignatureAlgorithm' - The algorithm that was used to sign the certificate.
--
-- * 'cdIssuer' - The name of the certificate authority that issued and signed the certificate.
--
-- * 'cdType' - The source of the certificate. For certificates provided by ACM, this value is @AMAZON_ISSUED@ . For certificates that you imported with 'ImportCertificate' , this value is @IMPORTED@ . ACM does not provide <https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html managed renewal> for imported certificates. For more information about the differences between certificates that you import and those that ACM provides, see <https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html Importing Certificates> in the /AWS Certificate Manager User Guide/ .
--
-- * 'cdKeyAlgorithm' - The algorithm that was used to generate the public-private key pair.
--
-- * 'cdIssuedAt' - The time at which the certificate was issued. This value exists only when the certificate type is @AMAZON_ISSUED@ .
--
-- * 'cdRenewalSummary' - Contains information about the status of ACM's <https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html managed renewal> for the certificate. This field exists only when the certificate type is @AMAZON_ISSUED@ .
certificateDetail ::
  CertificateDetail
certificateDetail =
  CertificateDetail'
    { _cdStatus = Nothing,
      _cdNotBefore = Nothing,
      _cdCertificateAuthorityARN = Nothing,
      _cdImportedAt = Nothing,
      _cdExtendedKeyUsages = Nothing,
      _cdDomainValidationOptions = Nothing,
      _cdRenewalEligibility = Nothing,
      _cdOptions = Nothing,
      _cdSerial = Nothing,
      _cdCertificateARN = Nothing,
      _cdCreatedAt = Nothing,
      _cdInUseBy = Nothing,
      _cdSubjectAlternativeNames = Nothing,
      _cdDomainName = Nothing,
      _cdRevocationReason = Nothing,
      _cdSubject = Nothing,
      _cdFailureReason = Nothing,
      _cdKeyUsages = Nothing,
      _cdRevokedAt = Nothing,
      _cdNotAfter = Nothing,
      _cdSignatureAlgorithm = Nothing,
      _cdIssuer = Nothing,
      _cdType = Nothing,
      _cdKeyAlgorithm = Nothing,
      _cdIssuedAt = Nothing,
      _cdRenewalSummary = Nothing
    }

-- | The status of the certificate.
cdStatus :: Lens' CertificateDetail (Maybe CertificateStatus)
cdStatus = lens _cdStatus (\s a -> s {_cdStatus = a})

-- | The time before which the certificate is not valid.
cdNotBefore :: Lens' CertificateDetail (Maybe UTCTime)
cdNotBefore = lens _cdNotBefore (\s a -> s {_cdNotBefore = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the ACM PCA private certificate authority (CA) that issued the certificate. This has the following format:  @arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012@
cdCertificateAuthorityARN :: Lens' CertificateDetail (Maybe Text)
cdCertificateAuthorityARN = lens _cdCertificateAuthorityARN (\s a -> s {_cdCertificateAuthorityARN = a})

-- | The date and time at which the certificate was imported. This value exists only when the certificate type is @IMPORTED@ .
cdImportedAt :: Lens' CertificateDetail (Maybe UTCTime)
cdImportedAt = lens _cdImportedAt (\s a -> s {_cdImportedAt = a}) . mapping _Time

-- | Contains a list of Extended Key Usage X.509 v3 extension objects. Each object specifies a purpose for which the certificate public key can be used and consists of a name and an object identifier (OID).
cdExtendedKeyUsages :: Lens' CertificateDetail [ExtendedKeyUsage]
cdExtendedKeyUsages = lens _cdExtendedKeyUsages (\s a -> s {_cdExtendedKeyUsages = a}) . _Default . _Coerce

-- | Contains information about the initial validation of each domain name that occurs as a result of the 'RequestCertificate' request. This field exists only when the certificate type is @AMAZON_ISSUED@ .
cdDomainValidationOptions :: Lens' CertificateDetail (Maybe (NonEmpty DomainValidation))
cdDomainValidationOptions = lens _cdDomainValidationOptions (\s a -> s {_cdDomainValidationOptions = a}) . mapping _List1

-- | Specifies whether the certificate is eligible for renewal. At this time, only exported private certificates can be renewed with the 'RenewCertificate' command.
cdRenewalEligibility :: Lens' CertificateDetail (Maybe RenewalEligibility)
cdRenewalEligibility = lens _cdRenewalEligibility (\s a -> s {_cdRenewalEligibility = a})

-- | Value that specifies whether to add the certificate to a transparency log. Certificate transparency makes it possible to detect SSL certificates that have been mistakenly or maliciously issued. A browser might respond to certificate that has not been logged by showing an error message. The logs are cryptographically secure.
cdOptions :: Lens' CertificateDetail (Maybe CertificateOptions)
cdOptions = lens _cdOptions (\s a -> s {_cdOptions = a})

-- | The serial number of the certificate.
cdSerial :: Lens' CertificateDetail (Maybe Text)
cdSerial = lens _cdSerial (\s a -> s {_cdSerial = a})

-- | The Amazon Resource Name (ARN) of the certificate. For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)> in the /AWS General Reference/ .
cdCertificateARN :: Lens' CertificateDetail (Maybe Text)
cdCertificateARN = lens _cdCertificateARN (\s a -> s {_cdCertificateARN = a})

-- | The time at which the certificate was requested.
cdCreatedAt :: Lens' CertificateDetail (Maybe UTCTime)
cdCreatedAt = lens _cdCreatedAt (\s a -> s {_cdCreatedAt = a}) . mapping _Time

-- | A list of ARNs for the AWS resources that are using the certificate. A certificate can be used by multiple AWS resources.
cdInUseBy :: Lens' CertificateDetail [Text]
cdInUseBy = lens _cdInUseBy (\s a -> s {_cdInUseBy = a}) . _Default . _Coerce

-- | One or more domain names (subject alternative names) included in the certificate. This list contains the domain names that are bound to the public key that is contained in the certificate. The subject alternative names include the canonical domain name (CN) of the certificate and additional domain names that can be used to connect to the website.
cdSubjectAlternativeNames :: Lens' CertificateDetail (Maybe (NonEmpty Text))
cdSubjectAlternativeNames = lens _cdSubjectAlternativeNames (\s a -> s {_cdSubjectAlternativeNames = a}) . mapping _List1

-- | The fully qualified domain name for the certificate, such as www.example.com or example.com.
cdDomainName :: Lens' CertificateDetail (Maybe Text)
cdDomainName = lens _cdDomainName (\s a -> s {_cdDomainName = a})

-- | The reason the certificate was revoked. This value exists only when the certificate status is @REVOKED@ .
cdRevocationReason :: Lens' CertificateDetail (Maybe RevocationReason)
cdRevocationReason = lens _cdRevocationReason (\s a -> s {_cdRevocationReason = a})

-- | The name of the entity that is associated with the public key contained in the certificate.
cdSubject :: Lens' CertificateDetail (Maybe Text)
cdSubject = lens _cdSubject (\s a -> s {_cdSubject = a})

-- | The reason the certificate request failed. This value exists only when the certificate status is @FAILED@ . For more information, see <https://docs.aws.amazon.com/acm/latest/userguide/troubleshooting.html#troubleshooting-failed Certificate Request Failed> in the /AWS Certificate Manager User Guide/ .
cdFailureReason :: Lens' CertificateDetail (Maybe FailureReason)
cdFailureReason = lens _cdFailureReason (\s a -> s {_cdFailureReason = a})

-- | A list of Key Usage X.509 v3 extension objects. Each object is a string value that identifies the purpose of the public key contained in the certificate. Possible extension values include DIGITAL_SIGNATURE, KEY_ENCHIPHERMENT, NON_REPUDIATION, and more.
cdKeyUsages :: Lens' CertificateDetail [KeyUsage]
cdKeyUsages = lens _cdKeyUsages (\s a -> s {_cdKeyUsages = a}) . _Default . _Coerce

-- | The time at which the certificate was revoked. This value exists only when the certificate status is @REVOKED@ .
cdRevokedAt :: Lens' CertificateDetail (Maybe UTCTime)
cdRevokedAt = lens _cdRevokedAt (\s a -> s {_cdRevokedAt = a}) . mapping _Time

-- | The time after which the certificate is not valid.
cdNotAfter :: Lens' CertificateDetail (Maybe UTCTime)
cdNotAfter = lens _cdNotAfter (\s a -> s {_cdNotAfter = a}) . mapping _Time

-- | The algorithm that was used to sign the certificate.
cdSignatureAlgorithm :: Lens' CertificateDetail (Maybe Text)
cdSignatureAlgorithm = lens _cdSignatureAlgorithm (\s a -> s {_cdSignatureAlgorithm = a})

-- | The name of the certificate authority that issued and signed the certificate.
cdIssuer :: Lens' CertificateDetail (Maybe Text)
cdIssuer = lens _cdIssuer (\s a -> s {_cdIssuer = a})

-- | The source of the certificate. For certificates provided by ACM, this value is @AMAZON_ISSUED@ . For certificates that you imported with 'ImportCertificate' , this value is @IMPORTED@ . ACM does not provide <https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html managed renewal> for imported certificates. For more information about the differences between certificates that you import and those that ACM provides, see <https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html Importing Certificates> in the /AWS Certificate Manager User Guide/ .
cdType :: Lens' CertificateDetail (Maybe CertificateType)
cdType = lens _cdType (\s a -> s {_cdType = a})

-- | The algorithm that was used to generate the public-private key pair.
cdKeyAlgorithm :: Lens' CertificateDetail (Maybe KeyAlgorithm)
cdKeyAlgorithm = lens _cdKeyAlgorithm (\s a -> s {_cdKeyAlgorithm = a})

-- | The time at which the certificate was issued. This value exists only when the certificate type is @AMAZON_ISSUED@ .
cdIssuedAt :: Lens' CertificateDetail (Maybe UTCTime)
cdIssuedAt = lens _cdIssuedAt (\s a -> s {_cdIssuedAt = a}) . mapping _Time

-- | Contains information about the status of ACM's <https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html managed renewal> for the certificate. This field exists only when the certificate type is @AMAZON_ISSUED@ .
cdRenewalSummary :: Lens' CertificateDetail (Maybe RenewalSummary)
cdRenewalSummary = lens _cdRenewalSummary (\s a -> s {_cdRenewalSummary = a})

instance FromJSON CertificateDetail where
  parseJSON =
    withObject
      "CertificateDetail"
      ( \x ->
          CertificateDetail'
            <$> (x .:? "Status")
            <*> (x .:? "NotBefore")
            <*> (x .:? "CertificateAuthorityArn")
            <*> (x .:? "ImportedAt")
            <*> (x .:? "ExtendedKeyUsages" .!= mempty)
            <*> (x .:? "DomainValidationOptions")
            <*> (x .:? "RenewalEligibility")
            <*> (x .:? "Options")
            <*> (x .:? "Serial")
            <*> (x .:? "CertificateArn")
            <*> (x .:? "CreatedAt")
            <*> (x .:? "InUseBy" .!= mempty)
            <*> (x .:? "SubjectAlternativeNames")
            <*> (x .:? "DomainName")
            <*> (x .:? "RevocationReason")
            <*> (x .:? "Subject")
            <*> (x .:? "FailureReason")
            <*> (x .:? "KeyUsages" .!= mempty)
            <*> (x .:? "RevokedAt")
            <*> (x .:? "NotAfter")
            <*> (x .:? "SignatureAlgorithm")
            <*> (x .:? "Issuer")
            <*> (x .:? "Type")
            <*> (x .:? "KeyAlgorithm")
            <*> (x .:? "IssuedAt")
            <*> (x .:? "RenewalSummary")
      )

instance Hashable CertificateDetail

instance NFData CertificateDetail
