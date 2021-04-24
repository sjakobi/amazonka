{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.TagMFADevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds one or more tags to an IAM virtual multi-factor authentication (MFA) device. If a tag with the same key name already exists, then that tag is overwritten with the new value.
--
--
-- A tag consists of a key name and an associated value. By assigning tags to your resources, you can do the following:
--
--     * __Administrative grouping and discovery__ - Attach tags to resources to aid in organization and search. For example, you could search for all resources with the key name /Project/ and the value /MyImportantProject/ . Or search for all resources with the key name /Cost Center/ and the value /41200/ .
--
--     * __Access control__ - Include tags in IAM user-based and resource-based policies. You can use tags to restrict access to only an IAM virtual MFA device that has a specified tag attached. For examples of policies that show how to use tags to control access, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html Control access using IAM tags> in the /IAM User Guide/ .
module Network.AWS.IAM.TagMFADevice
  ( -- * Creating a Request
    tagMFADevice,
    TagMFADevice,

    -- * Request Lenses
    tmdSerialNumber,
    tmdTags,

    -- * Destructuring the Response
    tagMFADeviceResponse,
    TagMFADeviceResponse,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'tagMFADevice' smart constructor.
data TagMFADevice = TagMFADevice'
  { _tmdSerialNumber ::
      !Text,
    _tmdTags :: ![Tag]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TagMFADevice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmdSerialNumber' - The unique identifier for the IAM virtual MFA device to which you want to add tags. For virtual MFA devices, the serial number is the same as the ARN. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
--
-- * 'tmdTags' - The list of tags that you want to attach to the IAM virtual MFA device. Each tag consists of a key name and an associated value.
tagMFADevice ::
  -- | 'tmdSerialNumber'
  Text ->
  TagMFADevice
tagMFADevice pSerialNumber_ =
  TagMFADevice'
    { _tmdSerialNumber = pSerialNumber_,
      _tmdTags = mempty
    }

-- | The unique identifier for the IAM virtual MFA device to which you want to add tags. For virtual MFA devices, the serial number is the same as the ARN. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
tmdSerialNumber :: Lens' TagMFADevice Text
tmdSerialNumber = lens _tmdSerialNumber (\s a -> s {_tmdSerialNumber = a})

-- | The list of tags that you want to attach to the IAM virtual MFA device. Each tag consists of a key name and an associated value.
tmdTags :: Lens' TagMFADevice [Tag]
tmdTags = lens _tmdTags (\s a -> s {_tmdTags = a}) . _Coerce

instance AWSRequest TagMFADevice where
  type Rs TagMFADevice = TagMFADeviceResponse
  request = postQuery iam
  response = receiveNull TagMFADeviceResponse'

instance Hashable TagMFADevice

instance NFData TagMFADevice

instance ToHeaders TagMFADevice where
  toHeaders = const mempty

instance ToPath TagMFADevice where
  toPath = const "/"

instance ToQuery TagMFADevice where
  toQuery TagMFADevice' {..} =
    mconcat
      [ "Action" =: ("TagMFADevice" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "SerialNumber" =: _tmdSerialNumber,
        "Tags" =: toQueryList "member" _tmdTags
      ]

-- | /See:/ 'tagMFADeviceResponse' smart constructor.
data TagMFADeviceResponse = TagMFADeviceResponse'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TagMFADeviceResponse' with the minimum fields required to make a request.
tagMFADeviceResponse ::
  TagMFADeviceResponse
tagMFADeviceResponse = TagMFADeviceResponse'

instance NFData TagMFADeviceResponse
