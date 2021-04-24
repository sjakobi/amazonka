{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.CACertificateDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.CACertificateDescription where

import Network.AWS.IoT.Types.AutoRegistrationStatus
import Network.AWS.IoT.Types.CACertificateStatus
import Network.AWS.IoT.Types.CertificateValidity
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a CA certificate.
--
--
--
-- /See:/ 'cACertificateDescription' smart constructor.
data CACertificateDescription = CACertificateDescription'
  { _cacdLastModifiedDate ::
      !(Maybe POSIX),
    _cacdStatus ::
      !( Maybe
           CACertificateStatus
       ),
    _cacdCertificateARN ::
      !(Maybe Text),
    _cacdCreationDate ::
      !(Maybe POSIX),
    _cacdOwnedBy ::
      !(Maybe Text),
    _cacdCustomerVersion ::
      !(Maybe Nat),
    _cacdGenerationId ::
      !(Maybe Text),
    _cacdCertificateId ::
      !(Maybe Text),
    _cacdCertificatePem ::
      !(Maybe Text),
    _cacdValidity ::
      !( Maybe
           CertificateValidity
       ),
    _cacdAutoRegistrationStatus ::
      !( Maybe
           AutoRegistrationStatus
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CACertificateDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cacdLastModifiedDate' - The date the CA certificate was last modified.
--
-- * 'cacdStatus' - The status of a CA certificate.
--
-- * 'cacdCertificateARN' - The CA certificate ARN.
--
-- * 'cacdCreationDate' - The date the CA certificate was created.
--
-- * 'cacdOwnedBy' - The owner of the CA certificate.
--
-- * 'cacdCustomerVersion' - The customer version of the CA certificate.
--
-- * 'cacdGenerationId' - The generation ID of the CA certificate.
--
-- * 'cacdCertificateId' - The CA certificate ID.
--
-- * 'cacdCertificatePem' - The CA certificate data, in PEM format.
--
-- * 'cacdValidity' - When the CA certificate is valid.
--
-- * 'cacdAutoRegistrationStatus' - Whether the CA certificate configured for auto registration of device certificates. Valid values are "ENABLE" and "DISABLE"
cACertificateDescription ::
  CACertificateDescription
cACertificateDescription =
  CACertificateDescription'
    { _cacdLastModifiedDate =
        Nothing,
      _cacdStatus = Nothing,
      _cacdCertificateARN = Nothing,
      _cacdCreationDate = Nothing,
      _cacdOwnedBy = Nothing,
      _cacdCustomerVersion = Nothing,
      _cacdGenerationId = Nothing,
      _cacdCertificateId = Nothing,
      _cacdCertificatePem = Nothing,
      _cacdValidity = Nothing,
      _cacdAutoRegistrationStatus = Nothing
    }

-- | The date the CA certificate was last modified.
cacdLastModifiedDate :: Lens' CACertificateDescription (Maybe UTCTime)
cacdLastModifiedDate = lens _cacdLastModifiedDate (\s a -> s {_cacdLastModifiedDate = a}) . mapping _Time

-- | The status of a CA certificate.
cacdStatus :: Lens' CACertificateDescription (Maybe CACertificateStatus)
cacdStatus = lens _cacdStatus (\s a -> s {_cacdStatus = a})

-- | The CA certificate ARN.
cacdCertificateARN :: Lens' CACertificateDescription (Maybe Text)
cacdCertificateARN = lens _cacdCertificateARN (\s a -> s {_cacdCertificateARN = a})

-- | The date the CA certificate was created.
cacdCreationDate :: Lens' CACertificateDescription (Maybe UTCTime)
cacdCreationDate = lens _cacdCreationDate (\s a -> s {_cacdCreationDate = a}) . mapping _Time

-- | The owner of the CA certificate.
cacdOwnedBy :: Lens' CACertificateDescription (Maybe Text)
cacdOwnedBy = lens _cacdOwnedBy (\s a -> s {_cacdOwnedBy = a})

-- | The customer version of the CA certificate.
cacdCustomerVersion :: Lens' CACertificateDescription (Maybe Natural)
cacdCustomerVersion = lens _cacdCustomerVersion (\s a -> s {_cacdCustomerVersion = a}) . mapping _Nat

-- | The generation ID of the CA certificate.
cacdGenerationId :: Lens' CACertificateDescription (Maybe Text)
cacdGenerationId = lens _cacdGenerationId (\s a -> s {_cacdGenerationId = a})

-- | The CA certificate ID.
cacdCertificateId :: Lens' CACertificateDescription (Maybe Text)
cacdCertificateId = lens _cacdCertificateId (\s a -> s {_cacdCertificateId = a})

-- | The CA certificate data, in PEM format.
cacdCertificatePem :: Lens' CACertificateDescription (Maybe Text)
cacdCertificatePem = lens _cacdCertificatePem (\s a -> s {_cacdCertificatePem = a})

-- | When the CA certificate is valid.
cacdValidity :: Lens' CACertificateDescription (Maybe CertificateValidity)
cacdValidity = lens _cacdValidity (\s a -> s {_cacdValidity = a})

-- | Whether the CA certificate configured for auto registration of device certificates. Valid values are "ENABLE" and "DISABLE"
cacdAutoRegistrationStatus :: Lens' CACertificateDescription (Maybe AutoRegistrationStatus)
cacdAutoRegistrationStatus = lens _cacdAutoRegistrationStatus (\s a -> s {_cacdAutoRegistrationStatus = a})

instance FromJSON CACertificateDescription where
  parseJSON =
    withObject
      "CACertificateDescription"
      ( \x ->
          CACertificateDescription'
            <$> (x .:? "lastModifiedDate")
            <*> (x .:? "status")
            <*> (x .:? "certificateArn")
            <*> (x .:? "creationDate")
            <*> (x .:? "ownedBy")
            <*> (x .:? "customerVersion")
            <*> (x .:? "generationId")
            <*> (x .:? "certificateId")
            <*> (x .:? "certificatePem")
            <*> (x .:? "validity")
            <*> (x .:? "autoRegistrationStatus")
      )

instance Hashable CACertificateDescription

instance NFData CACertificateDescription
