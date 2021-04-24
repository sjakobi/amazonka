{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.UserProfileDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.UserProfileDetails where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.UserProfileStatus

-- | The user profile details.
--
--
--
-- /See:/ 'userProfileDetails' smart constructor.
data UserProfileDetails = UserProfileDetails'
  { _updStatus ::
      !(Maybe UserProfileStatus),
    _updCreationTime ::
      !(Maybe POSIX),
    _updUserProfileName ::
      !(Maybe Text),
    _updDomainId :: !(Maybe Text),
    _updLastModifiedTime ::
      !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UserProfileDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'updStatus' - The status.
--
-- * 'updCreationTime' - The creation time.
--
-- * 'updUserProfileName' - The user profile name.
--
-- * 'updDomainId' - The domain ID.
--
-- * 'updLastModifiedTime' - The last modified time.
userProfileDetails ::
  UserProfileDetails
userProfileDetails =
  UserProfileDetails'
    { _updStatus = Nothing,
      _updCreationTime = Nothing,
      _updUserProfileName = Nothing,
      _updDomainId = Nothing,
      _updLastModifiedTime = Nothing
    }

-- | The status.
updStatus :: Lens' UserProfileDetails (Maybe UserProfileStatus)
updStatus = lens _updStatus (\s a -> s {_updStatus = a})

-- | The creation time.
updCreationTime :: Lens' UserProfileDetails (Maybe UTCTime)
updCreationTime = lens _updCreationTime (\s a -> s {_updCreationTime = a}) . mapping _Time

-- | The user profile name.
updUserProfileName :: Lens' UserProfileDetails (Maybe Text)
updUserProfileName = lens _updUserProfileName (\s a -> s {_updUserProfileName = a})

-- | The domain ID.
updDomainId :: Lens' UserProfileDetails (Maybe Text)
updDomainId = lens _updDomainId (\s a -> s {_updDomainId = a})

-- | The last modified time.
updLastModifiedTime :: Lens' UserProfileDetails (Maybe UTCTime)
updLastModifiedTime = lens _updLastModifiedTime (\s a -> s {_updLastModifiedTime = a}) . mapping _Time

instance FromJSON UserProfileDetails where
  parseJSON =
    withObject
      "UserProfileDetails"
      ( \x ->
          UserProfileDetails'
            <$> (x .:? "Status")
            <*> (x .:? "CreationTime")
            <*> (x .:? "UserProfileName")
            <*> (x .:? "DomainId")
            <*> (x .:? "LastModifiedTime")
      )

instance Hashable UserProfileDetails

instance NFData UserProfileDetails
