{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.CertificateInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.CertificateInfo where

import Network.AWS.DirectoryService.Types.CertificateState
import Network.AWS.DirectoryService.Types.CertificateType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains general information about a certificate.
--
--
--
-- /See:/ 'certificateInfo' smart constructor.
data CertificateInfo = CertificateInfo'
  { _ciCommonName ::
      !(Maybe Text),
    _ciState :: !(Maybe CertificateState),
    _ciExpiryDateTime :: !(Maybe POSIX),
    _ciType :: !(Maybe CertificateType),
    _ciCertificateId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CertificateInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciCommonName' - The common name for the certificate.
--
-- * 'ciState' - The state of the certificate.
--
-- * 'ciExpiryDateTime' - The date and time when the certificate will expire.
--
-- * 'ciType' - The function that the registered certificate performs. Valid values include @ClientLDAPS@ or @ClientCertAuth@ . The default value is @ClientLDAPS@ .
--
-- * 'ciCertificateId' - The identifier of the certificate.
certificateInfo ::
  CertificateInfo
certificateInfo =
  CertificateInfo'
    { _ciCommonName = Nothing,
      _ciState = Nothing,
      _ciExpiryDateTime = Nothing,
      _ciType = Nothing,
      _ciCertificateId = Nothing
    }

-- | The common name for the certificate.
ciCommonName :: Lens' CertificateInfo (Maybe Text)
ciCommonName = lens _ciCommonName (\s a -> s {_ciCommonName = a})

-- | The state of the certificate.
ciState :: Lens' CertificateInfo (Maybe CertificateState)
ciState = lens _ciState (\s a -> s {_ciState = a})

-- | The date and time when the certificate will expire.
ciExpiryDateTime :: Lens' CertificateInfo (Maybe UTCTime)
ciExpiryDateTime = lens _ciExpiryDateTime (\s a -> s {_ciExpiryDateTime = a}) . mapping _Time

-- | The function that the registered certificate performs. Valid values include @ClientLDAPS@ or @ClientCertAuth@ . The default value is @ClientLDAPS@ .
ciType :: Lens' CertificateInfo (Maybe CertificateType)
ciType = lens _ciType (\s a -> s {_ciType = a})

-- | The identifier of the certificate.
ciCertificateId :: Lens' CertificateInfo (Maybe Text)
ciCertificateId = lens _ciCertificateId (\s a -> s {_ciCertificateId = a})

instance FromJSON CertificateInfo where
  parseJSON =
    withObject
      "CertificateInfo"
      ( \x ->
          CertificateInfo'
            <$> (x .:? "CommonName")
            <*> (x .:? "State")
            <*> (x .:? "ExpiryDateTime")
            <*> (x .:? "Type")
            <*> (x .:? "CertificateId")
      )

instance Hashable CertificateInfo

instance NFData CertificateInfo
