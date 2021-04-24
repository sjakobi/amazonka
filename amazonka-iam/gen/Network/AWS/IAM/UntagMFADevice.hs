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
-- Module      : Network.AWS.IAM.UntagMFADevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified tags from the IAM virtual multi-factor authentication (MFA) device. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
module Network.AWS.IAM.UntagMFADevice
  ( -- * Creating a Request
    untagMFADevice,
    UntagMFADevice,

    -- * Request Lenses
    umdSerialNumber,
    umdTagKeys,

    -- * Destructuring the Response
    untagMFADeviceResponse,
    UntagMFADeviceResponse,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'untagMFADevice' smart constructor.
data UntagMFADevice = UntagMFADevice'
  { _umdSerialNumber ::
      !Text,
    _umdTagKeys :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UntagMFADevice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umdSerialNumber' - The unique identifier for the IAM virtual MFA device from which you want to remove tags. For virtual MFA devices, the serial number is the same as the ARN. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
--
-- * 'umdTagKeys' - A list of key names as a simple array of strings. The tags with matching keys are removed from the specified instance profile.
untagMFADevice ::
  -- | 'umdSerialNumber'
  Text ->
  UntagMFADevice
untagMFADevice pSerialNumber_ =
  UntagMFADevice'
    { _umdSerialNumber = pSerialNumber_,
      _umdTagKeys = mempty
    }

-- | The unique identifier for the IAM virtual MFA device from which you want to remove tags. For virtual MFA devices, the serial number is the same as the ARN. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
umdSerialNumber :: Lens' UntagMFADevice Text
umdSerialNumber = lens _umdSerialNumber (\s a -> s {_umdSerialNumber = a})

-- | A list of key names as a simple array of strings. The tags with matching keys are removed from the specified instance profile.
umdTagKeys :: Lens' UntagMFADevice [Text]
umdTagKeys = lens _umdTagKeys (\s a -> s {_umdTagKeys = a}) . _Coerce

instance AWSRequest UntagMFADevice where
  type Rs UntagMFADevice = UntagMFADeviceResponse
  request = postQuery iam
  response = receiveNull UntagMFADeviceResponse'

instance Hashable UntagMFADevice

instance NFData UntagMFADevice

instance ToHeaders UntagMFADevice where
  toHeaders = const mempty

instance ToPath UntagMFADevice where
  toPath = const "/"

instance ToQuery UntagMFADevice where
  toQuery UntagMFADevice' {..} =
    mconcat
      [ "Action" =: ("UntagMFADevice" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "SerialNumber" =: _umdSerialNumber,
        "TagKeys" =: toQueryList "member" _umdTagKeys
      ]

-- | /See:/ 'untagMFADeviceResponse' smart constructor.
data UntagMFADeviceResponse = UntagMFADeviceResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UntagMFADeviceResponse' with the minimum fields required to make a request.
untagMFADeviceResponse ::
  UntagMFADeviceResponse
untagMFADeviceResponse = UntagMFADeviceResponse'

instance NFData UntagMFADeviceResponse
