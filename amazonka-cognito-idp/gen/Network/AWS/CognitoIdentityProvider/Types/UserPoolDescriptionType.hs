{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.UserPoolDescriptionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.UserPoolDescriptionType where

import Network.AWS.CognitoIdentityProvider.Types.LambdaConfigType
import Network.AWS.CognitoIdentityProvider.Types.StatusType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A user pool description.
--
--
--
-- /See:/ 'userPoolDescriptionType' smart constructor.
data UserPoolDescriptionType = UserPoolDescriptionType'
  { _updtLastModifiedDate ::
      !(Maybe POSIX),
    _updtStatus ::
      !(Maybe StatusType),
    _updtId ::
      !(Maybe Text),
    _updtCreationDate ::
      !(Maybe POSIX),
    _updtLambdaConfig ::
      !( Maybe
           LambdaConfigType
       ),
    _updtName ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UserPoolDescriptionType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'updtLastModifiedDate' - The date the user pool description was last modified.
--
-- * 'updtStatus' - The user pool status in a user pool description.
--
-- * 'updtId' - The ID in a user pool description.
--
-- * 'updtCreationDate' - The date the user pool description was created.
--
-- * 'updtLambdaConfig' - The AWS Lambda configuration information in a user pool description.
--
-- * 'updtName' - The name in a user pool description.
userPoolDescriptionType ::
  UserPoolDescriptionType
userPoolDescriptionType =
  UserPoolDescriptionType'
    { _updtLastModifiedDate =
        Nothing,
      _updtStatus = Nothing,
      _updtId = Nothing,
      _updtCreationDate = Nothing,
      _updtLambdaConfig = Nothing,
      _updtName = Nothing
    }

-- | The date the user pool description was last modified.
updtLastModifiedDate :: Lens' UserPoolDescriptionType (Maybe UTCTime)
updtLastModifiedDate = lens _updtLastModifiedDate (\s a -> s {_updtLastModifiedDate = a}) . mapping _Time

-- | The user pool status in a user pool description.
updtStatus :: Lens' UserPoolDescriptionType (Maybe StatusType)
updtStatus = lens _updtStatus (\s a -> s {_updtStatus = a})

-- | The ID in a user pool description.
updtId :: Lens' UserPoolDescriptionType (Maybe Text)
updtId = lens _updtId (\s a -> s {_updtId = a})

-- | The date the user pool description was created.
updtCreationDate :: Lens' UserPoolDescriptionType (Maybe UTCTime)
updtCreationDate = lens _updtCreationDate (\s a -> s {_updtCreationDate = a}) . mapping _Time

-- | The AWS Lambda configuration information in a user pool description.
updtLambdaConfig :: Lens' UserPoolDescriptionType (Maybe LambdaConfigType)
updtLambdaConfig = lens _updtLambdaConfig (\s a -> s {_updtLambdaConfig = a})

-- | The name in a user pool description.
updtName :: Lens' UserPoolDescriptionType (Maybe Text)
updtName = lens _updtName (\s a -> s {_updtName = a})

instance FromJSON UserPoolDescriptionType where
  parseJSON =
    withObject
      "UserPoolDescriptionType"
      ( \x ->
          UserPoolDescriptionType'
            <$> (x .:? "LastModifiedDate")
            <*> (x .:? "Status")
            <*> (x .:? "Id")
            <*> (x .:? "CreationDate")
            <*> (x .:? "LambdaConfig")
            <*> (x .:? "Name")
      )

instance Hashable UserPoolDescriptionType

instance NFData UserPoolDescriptionType
