{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.AppDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AppDetails where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.AppStatus
import Network.AWS.SageMaker.Types.AppType

-- | Details about an Amazon SageMaker app.
--
--
--
-- /See:/ 'appDetails' smart constructor.
data AppDetails = AppDetails'
  { _adStatus ::
      !(Maybe AppStatus),
    _adCreationTime :: !(Maybe POSIX),
    _adAppType :: !(Maybe AppType),
    _adAppName :: !(Maybe Text),
    _adUserProfileName :: !(Maybe Text),
    _adDomainId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AppDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adStatus' - The status.
--
-- * 'adCreationTime' - The creation time.
--
-- * 'adAppType' - The type of app.
--
-- * 'adAppName' - The name of the app.
--
-- * 'adUserProfileName' - The user profile name.
--
-- * 'adDomainId' - The domain ID.
appDetails ::
  AppDetails
appDetails =
  AppDetails'
    { _adStatus = Nothing,
      _adCreationTime = Nothing,
      _adAppType = Nothing,
      _adAppName = Nothing,
      _adUserProfileName = Nothing,
      _adDomainId = Nothing
    }

-- | The status.
adStatus :: Lens' AppDetails (Maybe AppStatus)
adStatus = lens _adStatus (\s a -> s {_adStatus = a})

-- | The creation time.
adCreationTime :: Lens' AppDetails (Maybe UTCTime)
adCreationTime = lens _adCreationTime (\s a -> s {_adCreationTime = a}) . mapping _Time

-- | The type of app.
adAppType :: Lens' AppDetails (Maybe AppType)
adAppType = lens _adAppType (\s a -> s {_adAppType = a})

-- | The name of the app.
adAppName :: Lens' AppDetails (Maybe Text)
adAppName = lens _adAppName (\s a -> s {_adAppName = a})

-- | The user profile name.
adUserProfileName :: Lens' AppDetails (Maybe Text)
adUserProfileName = lens _adUserProfileName (\s a -> s {_adUserProfileName = a})

-- | The domain ID.
adDomainId :: Lens' AppDetails (Maybe Text)
adDomainId = lens _adDomainId (\s a -> s {_adDomainId = a})

instance FromJSON AppDetails where
  parseJSON =
    withObject
      "AppDetails"
      ( \x ->
          AppDetails'
            <$> (x .:? "Status")
            <*> (x .:? "CreationTime")
            <*> (x .:? "AppType")
            <*> (x .:? "AppName")
            <*> (x .:? "UserProfileName")
            <*> (x .:? "DomainId")
      )

instance Hashable AppDetails

instance NFData AppDetails
