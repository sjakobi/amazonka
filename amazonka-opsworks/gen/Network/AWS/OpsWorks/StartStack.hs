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
-- Module      : Network.AWS.OpsWorks.StartStack
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a stack's instances.
--
--
-- __Required Permissions__ : To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions> .
module Network.AWS.OpsWorks.StartStack
  ( -- * Creating a Request
    startStack,
    StartStack,

    -- * Request Lenses
    ssStackId,

    -- * Destructuring the Response
    startStackResponse,
    StartStackResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorks.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startStack' smart constructor.
newtype StartStack = StartStack' {_ssStackId :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartStack' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssStackId' - The stack ID.
startStack ::
  -- | 'ssStackId'
  Text ->
  StartStack
startStack pStackId_ =
  StartStack' {_ssStackId = pStackId_}

-- | The stack ID.
ssStackId :: Lens' StartStack Text
ssStackId = lens _ssStackId (\s a -> s {_ssStackId = a})

instance AWSRequest StartStack where
  type Rs StartStack = StartStackResponse
  request = postJSON opsWorks
  response = receiveNull StartStackResponse'

instance Hashable StartStack

instance NFData StartStack

instance ToHeaders StartStack where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("OpsWorks_20130218.StartStack" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartStack where
  toJSON StartStack' {..} =
    object (catMaybes [Just ("StackId" .= _ssStackId)])

instance ToPath StartStack where
  toPath = const "/"

instance ToQuery StartStack where
  toQuery = const mempty

-- | /See:/ 'startStackResponse' smart constructor.
data StartStackResponse = StartStackResponse'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartStackResponse' with the minimum fields required to make a request.
startStackResponse ::
  StartStackResponse
startStackResponse = StartStackResponse'

instance NFData StartStackResponse
