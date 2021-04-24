{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.CertificateAuthority
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.CertificateAuthority where

import Network.AWS.CertificateManagerPCA.Types.CertificateAuthorityConfiguration
import Network.AWS.CertificateManagerPCA.Types.CertificateAuthorityStatus
import Network.AWS.CertificateManagerPCA.Types.CertificateAuthorityType
import Network.AWS.CertificateManagerPCA.Types.FailureReason
import Network.AWS.CertificateManagerPCA.Types.RevocationConfiguration
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about your private certificate authority (CA). Your private CA can issue and revoke X.509 digital certificates. Digital certificates verify that the entity named in the certificate __Subject__ field owns or controls the public key contained in the __Subject Public Key Info__ field. Call the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html CreateCertificateAuthority> action to create your private CA. You must then call the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_GetCertificateAuthorityCertificate.html GetCertificateAuthorityCertificate> action to retrieve a private CA certificate signing request (CSR). Sign the CSR with your ACM Private CA-hosted or on-premises root or subordinate CA certificate. Call the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ImportCertificateAuthorityCertificate.html ImportCertificateAuthorityCertificate> action to import the signed certificate into AWS Certificate Manager (ACM).
--
--
--
-- /See:/ 'certificateAuthority' smart constructor.
data CertificateAuthority = CertificateAuthority'
  { _caStatus ::
      !( Maybe
           CertificateAuthorityStatus
       ),
    _caNotBefore ::
      !(Maybe POSIX),
    _caRevocationConfiguration ::
      !( Maybe
           RevocationConfiguration
       ),
    _caSerial :: !(Maybe Text),
    _caARN :: !(Maybe Text),
    _caCreatedAt ::
      !(Maybe POSIX),
    _caCertificateAuthorityConfiguration ::
      !( Maybe
           CertificateAuthorityConfiguration
       ),
    _caFailureReason ::
      !(Maybe FailureReason),
    _caNotAfter :: !(Maybe POSIX),
    _caLastStateChangeAt ::
      !(Maybe POSIX),
    _caType ::
      !( Maybe
           CertificateAuthorityType
       ),
    _caOwnerAccount ::
      !(Maybe Text),
    _caRestorableUntil ::
      !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CertificateAuthority' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caStatus' - Status of your private CA.
--
-- * 'caNotBefore' - Date and time before which your private CA certificate is not valid.
--
-- * 'caRevocationConfiguration' - Information about the certificate revocation list (CRL) created and maintained by your private CA.
--
-- * 'caSerial' - Serial number of your private CA.
--
-- * 'caARN' - Amazon Resource Name (ARN) for your private certificate authority (CA). The format is @/12345678-1234-1234-1234-123456789012/ @ .
--
-- * 'caCreatedAt' - Date and time at which your private CA was created.
--
-- * 'caCertificateAuthorityConfiguration' - Your private CA configuration.
--
-- * 'caFailureReason' - Reason the request to create your private CA failed.
--
-- * 'caNotAfter' - Date and time after which your private CA certificate is not valid.
--
-- * 'caLastStateChangeAt' - Date and time at which your private CA was last updated.
--
-- * 'caType' - Type of your private CA.
--
-- * 'caOwnerAccount' - The AWS account ID that owns the certificate authority.
--
-- * 'caRestorableUntil' - The period during which a deleted CA can be restored. For more information, see the @PermanentDeletionTimeInDays@ parameter of the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeleteCertificateAuthorityRequest.html DeleteCertificateAuthorityRequest> action.
certificateAuthority ::
  CertificateAuthority
certificateAuthority =
  CertificateAuthority'
    { _caStatus = Nothing,
      _caNotBefore = Nothing,
      _caRevocationConfiguration = Nothing,
      _caSerial = Nothing,
      _caARN = Nothing,
      _caCreatedAt = Nothing,
      _caCertificateAuthorityConfiguration = Nothing,
      _caFailureReason = Nothing,
      _caNotAfter = Nothing,
      _caLastStateChangeAt = Nothing,
      _caType = Nothing,
      _caOwnerAccount = Nothing,
      _caRestorableUntil = Nothing
    }

-- | Status of your private CA.
caStatus :: Lens' CertificateAuthority (Maybe CertificateAuthorityStatus)
caStatus = lens _caStatus (\s a -> s {_caStatus = a})

-- | Date and time before which your private CA certificate is not valid.
caNotBefore :: Lens' CertificateAuthority (Maybe UTCTime)
caNotBefore = lens _caNotBefore (\s a -> s {_caNotBefore = a}) . mapping _Time

-- | Information about the certificate revocation list (CRL) created and maintained by your private CA.
caRevocationConfiguration :: Lens' CertificateAuthority (Maybe RevocationConfiguration)
caRevocationConfiguration = lens _caRevocationConfiguration (\s a -> s {_caRevocationConfiguration = a})

-- | Serial number of your private CA.
caSerial :: Lens' CertificateAuthority (Maybe Text)
caSerial = lens _caSerial (\s a -> s {_caSerial = a})

-- | Amazon Resource Name (ARN) for your private certificate authority (CA). The format is @/12345678-1234-1234-1234-123456789012/ @ .
caARN :: Lens' CertificateAuthority (Maybe Text)
caARN = lens _caARN (\s a -> s {_caARN = a})

-- | Date and time at which your private CA was created.
caCreatedAt :: Lens' CertificateAuthority (Maybe UTCTime)
caCreatedAt = lens _caCreatedAt (\s a -> s {_caCreatedAt = a}) . mapping _Time

-- | Your private CA configuration.
caCertificateAuthorityConfiguration :: Lens' CertificateAuthority (Maybe CertificateAuthorityConfiguration)
caCertificateAuthorityConfiguration = lens _caCertificateAuthorityConfiguration (\s a -> s {_caCertificateAuthorityConfiguration = a})

-- | Reason the request to create your private CA failed.
caFailureReason :: Lens' CertificateAuthority (Maybe FailureReason)
caFailureReason = lens _caFailureReason (\s a -> s {_caFailureReason = a})

-- | Date and time after which your private CA certificate is not valid.
caNotAfter :: Lens' CertificateAuthority (Maybe UTCTime)
caNotAfter = lens _caNotAfter (\s a -> s {_caNotAfter = a}) . mapping _Time

-- | Date and time at which your private CA was last updated.
caLastStateChangeAt :: Lens' CertificateAuthority (Maybe UTCTime)
caLastStateChangeAt = lens _caLastStateChangeAt (\s a -> s {_caLastStateChangeAt = a}) . mapping _Time

-- | Type of your private CA.
caType :: Lens' CertificateAuthority (Maybe CertificateAuthorityType)
caType = lens _caType (\s a -> s {_caType = a})

-- | The AWS account ID that owns the certificate authority.
caOwnerAccount :: Lens' CertificateAuthority (Maybe Text)
caOwnerAccount = lens _caOwnerAccount (\s a -> s {_caOwnerAccount = a})

-- | The period during which a deleted CA can be restored. For more information, see the @PermanentDeletionTimeInDays@ parameter of the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeleteCertificateAuthorityRequest.html DeleteCertificateAuthorityRequest> action.
caRestorableUntil :: Lens' CertificateAuthority (Maybe UTCTime)
caRestorableUntil = lens _caRestorableUntil (\s a -> s {_caRestorableUntil = a}) . mapping _Time

instance FromJSON CertificateAuthority where
  parseJSON =
    withObject
      "CertificateAuthority"
      ( \x ->
          CertificateAuthority'
            <$> (x .:? "Status")
            <*> (x .:? "NotBefore")
            <*> (x .:? "RevocationConfiguration")
            <*> (x .:? "Serial")
            <*> (x .:? "Arn")
            <*> (x .:? "CreatedAt")
            <*> (x .:? "CertificateAuthorityConfiguration")
            <*> (x .:? "FailureReason")
            <*> (x .:? "NotAfter")
            <*> (x .:? "LastStateChangeAt")
            <*> (x .:? "Type")
            <*> (x .:? "OwnerAccount")
            <*> (x .:? "RestorableUntil")
      )

instance Hashable CertificateAuthority

instance NFData CertificateAuthority
