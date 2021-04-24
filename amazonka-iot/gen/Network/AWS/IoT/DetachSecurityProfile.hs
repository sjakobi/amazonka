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
-- Module      : Network.AWS.IoT.DetachSecurityProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates a Device Defender security profile from a thing group or from this account.
module Network.AWS.IoT.DetachSecurityProfile
  ( -- * Creating a Request
    detachSecurityProfile,
    DetachSecurityProfile,

    -- * Request Lenses
    dspSecurityProfileName,
    dspSecurityProfileTargetARN,

    -- * Destructuring the Response
    detachSecurityProfileResponse,
    DetachSecurityProfileResponse,

    -- * Response Lenses
    dsprrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'detachSecurityProfile' smart constructor.
data DetachSecurityProfile = DetachSecurityProfile'
  { _dspSecurityProfileName ::
      !Text,
    _dspSecurityProfileTargetARN ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DetachSecurityProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dspSecurityProfileName' - The security profile that is detached.
--
-- * 'dspSecurityProfileTargetARN' - The ARN of the thing group from which the security profile is detached.
detachSecurityProfile ::
  -- | 'dspSecurityProfileName'
  Text ->
  -- | 'dspSecurityProfileTargetARN'
  Text ->
  DetachSecurityProfile
detachSecurityProfile
  pSecurityProfileName_
  pSecurityProfileTargetARN_ =
    DetachSecurityProfile'
      { _dspSecurityProfileName =
          pSecurityProfileName_,
        _dspSecurityProfileTargetARN =
          pSecurityProfileTargetARN_
      }

-- | The security profile that is detached.
dspSecurityProfileName :: Lens' DetachSecurityProfile Text
dspSecurityProfileName = lens _dspSecurityProfileName (\s a -> s {_dspSecurityProfileName = a})

-- | The ARN of the thing group from which the security profile is detached.
dspSecurityProfileTargetARN :: Lens' DetachSecurityProfile Text
dspSecurityProfileTargetARN = lens _dspSecurityProfileTargetARN (\s a -> s {_dspSecurityProfileTargetARN = a})

instance AWSRequest DetachSecurityProfile where
  type
    Rs DetachSecurityProfile =
      DetachSecurityProfileResponse
  request = delete ioT
  response =
    receiveEmpty
      ( \s h x ->
          DetachSecurityProfileResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DetachSecurityProfile

instance NFData DetachSecurityProfile

instance ToHeaders DetachSecurityProfile where
  toHeaders = const mempty

instance ToPath DetachSecurityProfile where
  toPath DetachSecurityProfile' {..} =
    mconcat
      [ "/security-profiles/",
        toBS _dspSecurityProfileName,
        "/targets"
      ]

instance ToQuery DetachSecurityProfile where
  toQuery DetachSecurityProfile' {..} =
    mconcat
      [ "securityProfileTargetArn"
          =: _dspSecurityProfileTargetARN
      ]

-- | /See:/ 'detachSecurityProfileResponse' smart constructor.
newtype DetachSecurityProfileResponse = DetachSecurityProfileResponse'
  { _dsprrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DetachSecurityProfileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsprrsResponseStatus' - -- | The response status code.
detachSecurityProfileResponse ::
  -- | 'dsprrsResponseStatus'
  Int ->
  DetachSecurityProfileResponse
detachSecurityProfileResponse pResponseStatus_ =
  DetachSecurityProfileResponse'
    { _dsprrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dsprrsResponseStatus :: Lens' DetachSecurityProfileResponse Int
dsprrsResponseStatus = lens _dsprrsResponseStatus (\s a -> s {_dsprrsResponseStatus = a})

instance NFData DetachSecurityProfileResponse
