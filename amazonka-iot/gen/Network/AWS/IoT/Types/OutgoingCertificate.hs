{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.OutgoingCertificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.OutgoingCertificate where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A certificate that has been transferred but not yet accepted.
--
--
--
-- /See:/ 'outgoingCertificate' smart constructor.
data OutgoingCertificate = OutgoingCertificate'
  { _ocTransferDate ::
      !(Maybe POSIX),
    _ocCertificateARN ::
      !(Maybe Text),
    _ocTransferMessage ::
      !(Maybe Text),
    _ocCreationDate ::
      !(Maybe POSIX),
    _ocTransferredTo ::
      !(Maybe Text),
    _ocCertificateId ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OutgoingCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocTransferDate' - The date the transfer was initiated.
--
-- * 'ocCertificateARN' - The certificate ARN.
--
-- * 'ocTransferMessage' - The transfer message.
--
-- * 'ocCreationDate' - The certificate creation date.
--
-- * 'ocTransferredTo' - The AWS account to which the transfer was made.
--
-- * 'ocCertificateId' - The certificate ID.
outgoingCertificate ::
  OutgoingCertificate
outgoingCertificate =
  OutgoingCertificate'
    { _ocTransferDate = Nothing,
      _ocCertificateARN = Nothing,
      _ocTransferMessage = Nothing,
      _ocCreationDate = Nothing,
      _ocTransferredTo = Nothing,
      _ocCertificateId = Nothing
    }

-- | The date the transfer was initiated.
ocTransferDate :: Lens' OutgoingCertificate (Maybe UTCTime)
ocTransferDate = lens _ocTransferDate (\s a -> s {_ocTransferDate = a}) . mapping _Time

-- | The certificate ARN.
ocCertificateARN :: Lens' OutgoingCertificate (Maybe Text)
ocCertificateARN = lens _ocCertificateARN (\s a -> s {_ocCertificateARN = a})

-- | The transfer message.
ocTransferMessage :: Lens' OutgoingCertificate (Maybe Text)
ocTransferMessage = lens _ocTransferMessage (\s a -> s {_ocTransferMessage = a})

-- | The certificate creation date.
ocCreationDate :: Lens' OutgoingCertificate (Maybe UTCTime)
ocCreationDate = lens _ocCreationDate (\s a -> s {_ocCreationDate = a}) . mapping _Time

-- | The AWS account to which the transfer was made.
ocTransferredTo :: Lens' OutgoingCertificate (Maybe Text)
ocTransferredTo = lens _ocTransferredTo (\s a -> s {_ocTransferredTo = a})

-- | The certificate ID.
ocCertificateId :: Lens' OutgoingCertificate (Maybe Text)
ocCertificateId = lens _ocCertificateId (\s a -> s {_ocCertificateId = a})

instance FromJSON OutgoingCertificate where
  parseJSON =
    withObject
      "OutgoingCertificate"
      ( \x ->
          OutgoingCertificate'
            <$> (x .:? "transferDate")
            <*> (x .:? "certificateArn")
            <*> (x .:? "transferMessage")
            <*> (x .:? "creationDate")
            <*> (x .:? "transferredTo")
            <*> (x .:? "certificateId")
      )

instance Hashable OutgoingCertificate

instance NFData OutgoingCertificate
