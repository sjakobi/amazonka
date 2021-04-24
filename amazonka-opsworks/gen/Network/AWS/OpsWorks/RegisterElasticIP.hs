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
-- Module      : Network.AWS.OpsWorks.RegisterElasticIP
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers an Elastic IP address with a specified stack. An address can be registered with only one stack at a time. If the address is already registered, you must first deregister it by calling 'DeregisterElasticIp' . For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html Resource Management> .
--
--
-- __Required Permissions__ : To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions> .
module Network.AWS.OpsWorks.RegisterElasticIP
  ( -- * Creating a Request
    registerElasticIP,
    RegisterElasticIP,

    -- * Request Lenses
    reiElasticIP,
    reiStackId,

    -- * Destructuring the Response
    registerElasticIPResponse,
    RegisterElasticIPResponse,

    -- * Response Lenses
    reirrsElasticIP,
    reirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorks.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'registerElasticIP' smart constructor.
data RegisterElasticIP = RegisterElasticIP'
  { _reiElasticIP ::
      !Text,
    _reiStackId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RegisterElasticIP' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reiElasticIP' - The Elastic IP address.
--
-- * 'reiStackId' - The stack ID.
registerElasticIP ::
  -- | 'reiElasticIP'
  Text ->
  -- | 'reiStackId'
  Text ->
  RegisterElasticIP
registerElasticIP pElasticIP_ pStackId_ =
  RegisterElasticIP'
    { _reiElasticIP = pElasticIP_,
      _reiStackId = pStackId_
    }

-- | The Elastic IP address.
reiElasticIP :: Lens' RegisterElasticIP Text
reiElasticIP = lens _reiElasticIP (\s a -> s {_reiElasticIP = a})

-- | The stack ID.
reiStackId :: Lens' RegisterElasticIP Text
reiStackId = lens _reiStackId (\s a -> s {_reiStackId = a})

instance AWSRequest RegisterElasticIP where
  type Rs RegisterElasticIP = RegisterElasticIPResponse
  request = postJSON opsWorks
  response =
    receiveJSON
      ( \s h x ->
          RegisterElasticIPResponse'
            <$> (x .?> "ElasticIp") <*> (pure (fromEnum s))
      )

instance Hashable RegisterElasticIP

instance NFData RegisterElasticIP

instance ToHeaders RegisterElasticIP where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OpsWorks_20130218.RegisterElasticIp" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RegisterElasticIP where
  toJSON RegisterElasticIP' {..} =
    object
      ( catMaybes
          [ Just ("ElasticIp" .= _reiElasticIP),
            Just ("StackId" .= _reiStackId)
          ]
      )

instance ToPath RegisterElasticIP where
  toPath = const "/"

instance ToQuery RegisterElasticIP where
  toQuery = const mempty

-- | Contains the response to a @RegisterElasticIp@ request.
--
--
--
-- /See:/ 'registerElasticIPResponse' smart constructor.
data RegisterElasticIPResponse = RegisterElasticIPResponse'
  { _reirrsElasticIP ::
      !(Maybe Text),
    _reirrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RegisterElasticIPResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reirrsElasticIP' - The Elastic IP address.
--
-- * 'reirrsResponseStatus' - -- | The response status code.
registerElasticIPResponse ::
  -- | 'reirrsResponseStatus'
  Int ->
  RegisterElasticIPResponse
registerElasticIPResponse pResponseStatus_ =
  RegisterElasticIPResponse'
    { _reirrsElasticIP =
        Nothing,
      _reirrsResponseStatus = pResponseStatus_
    }

-- | The Elastic IP address.
reirrsElasticIP :: Lens' RegisterElasticIPResponse (Maybe Text)
reirrsElasticIP = lens _reirrsElasticIP (\s a -> s {_reirrsElasticIP = a})

-- | -- | The response status code.
reirrsResponseStatus :: Lens' RegisterElasticIPResponse Int
reirrsResponseStatus = lens _reirrsResponseStatus (\s a -> s {_reirrsResponseStatus = a})

instance NFData RegisterElasticIPResponse
