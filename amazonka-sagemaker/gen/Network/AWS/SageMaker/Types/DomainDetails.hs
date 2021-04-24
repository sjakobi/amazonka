{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.DomainDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.DomainDetails where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.DomainStatus

-- | The domain's details.
--
--
--
-- /See:/ 'domainDetails' smart constructor.
data DomainDetails = DomainDetails'
  { _ddsStatus ::
      !(Maybe DomainStatus),
    _ddsCreationTime :: !(Maybe POSIX),
    _ddsDomainId :: !(Maybe Text),
    _ddsDomainARN :: !(Maybe Text),
    _ddsDomainName :: !(Maybe Text),
    _ddsLastModifiedTime :: !(Maybe POSIX),
    _ddsURL :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DomainDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddsStatus' - The status.
--
-- * 'ddsCreationTime' - The creation time.
--
-- * 'ddsDomainId' - The domain ID.
--
-- * 'ddsDomainARN' - The domain's Amazon Resource Name (ARN).
--
-- * 'ddsDomainName' - The domain name.
--
-- * 'ddsLastModifiedTime' - The last modified time.
--
-- * 'ddsURL' - The domain's URL.
domainDetails ::
  DomainDetails
domainDetails =
  DomainDetails'
    { _ddsStatus = Nothing,
      _ddsCreationTime = Nothing,
      _ddsDomainId = Nothing,
      _ddsDomainARN = Nothing,
      _ddsDomainName = Nothing,
      _ddsLastModifiedTime = Nothing,
      _ddsURL = Nothing
    }

-- | The status.
ddsStatus :: Lens' DomainDetails (Maybe DomainStatus)
ddsStatus = lens _ddsStatus (\s a -> s {_ddsStatus = a})

-- | The creation time.
ddsCreationTime :: Lens' DomainDetails (Maybe UTCTime)
ddsCreationTime = lens _ddsCreationTime (\s a -> s {_ddsCreationTime = a}) . mapping _Time

-- | The domain ID.
ddsDomainId :: Lens' DomainDetails (Maybe Text)
ddsDomainId = lens _ddsDomainId (\s a -> s {_ddsDomainId = a})

-- | The domain's Amazon Resource Name (ARN).
ddsDomainARN :: Lens' DomainDetails (Maybe Text)
ddsDomainARN = lens _ddsDomainARN (\s a -> s {_ddsDomainARN = a})

-- | The domain name.
ddsDomainName :: Lens' DomainDetails (Maybe Text)
ddsDomainName = lens _ddsDomainName (\s a -> s {_ddsDomainName = a})

-- | The last modified time.
ddsLastModifiedTime :: Lens' DomainDetails (Maybe UTCTime)
ddsLastModifiedTime = lens _ddsLastModifiedTime (\s a -> s {_ddsLastModifiedTime = a}) . mapping _Time

-- | The domain's URL.
ddsURL :: Lens' DomainDetails (Maybe Text)
ddsURL = lens _ddsURL (\s a -> s {_ddsURL = a})

instance FromJSON DomainDetails where
  parseJSON =
    withObject
      "DomainDetails"
      ( \x ->
          DomainDetails'
            <$> (x .:? "Status")
            <*> (x .:? "CreationTime")
            <*> (x .:? "DomainId")
            <*> (x .:? "DomainArn")
            <*> (x .:? "DomainName")
            <*> (x .:? "LastModifiedTime")
            <*> (x .:? "Url")
      )

instance Hashable DomainDetails

instance NFData DomainDetails
