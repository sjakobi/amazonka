{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.AccessKeyMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.AccessKeyMetadata where

import Network.AWS.IAM.Types.StatusType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about an AWS access key, without its secret key.
--
--
-- This data type is used as a response element in the 'ListAccessKeys' operation.
--
--
-- /See:/ 'accessKeyMetadata' smart constructor.
data AccessKeyMetadata = AccessKeyMetadata'
  { _akmStatus ::
      !(Maybe StatusType),
    _akmCreateDate :: !(Maybe ISO8601),
    _akmAccessKeyId ::
      !(Maybe AccessKey),
    _akmUserName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccessKeyMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'akmStatus' - The status of the access key. @Active@ means that the key is valid for API calls; @Inactive@ means it is not.
--
-- * 'akmCreateDate' - The date when the access key was created.
--
-- * 'akmAccessKeyId' - The ID for this access key.
--
-- * 'akmUserName' - The name of the IAM user that the key is associated with.
accessKeyMetadata ::
  AccessKeyMetadata
accessKeyMetadata =
  AccessKeyMetadata'
    { _akmStatus = Nothing,
      _akmCreateDate = Nothing,
      _akmAccessKeyId = Nothing,
      _akmUserName = Nothing
    }

-- | The status of the access key. @Active@ means that the key is valid for API calls; @Inactive@ means it is not.
akmStatus :: Lens' AccessKeyMetadata (Maybe StatusType)
akmStatus = lens _akmStatus (\s a -> s {_akmStatus = a})

-- | The date when the access key was created.
akmCreateDate :: Lens' AccessKeyMetadata (Maybe UTCTime)
akmCreateDate = lens _akmCreateDate (\s a -> s {_akmCreateDate = a}) . mapping _Time

-- | The ID for this access key.
akmAccessKeyId :: Lens' AccessKeyMetadata (Maybe AccessKey)
akmAccessKeyId = lens _akmAccessKeyId (\s a -> s {_akmAccessKeyId = a})

-- | The name of the IAM user that the key is associated with.
akmUserName :: Lens' AccessKeyMetadata (Maybe Text)
akmUserName = lens _akmUserName (\s a -> s {_akmUserName = a})

instance FromXML AccessKeyMetadata where
  parseXML x =
    AccessKeyMetadata'
      <$> (x .@? "Status")
      <*> (x .@? "CreateDate")
      <*> (x .@? "AccessKeyId")
      <*> (x .@? "UserName")

instance Hashable AccessKeyMetadata

instance NFData AccessKeyMetadata
