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
-- Module      : Network.AWS.Lightsail.StartInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a specific Amazon Lightsail instance from a stopped state. To restart an instance, use the @reboot instance@ operation.
--
--
-- The @start instance@ operation supports tag-based access control via resource tags applied to the resource identified by @instance name@ . For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide> .
module Network.AWS.Lightsail.StartInstance
  ( -- * Creating a Request
    startInstance,
    StartInstance,

    -- * Request Lenses
    siInstanceName,

    -- * Destructuring the Response
    startInstanceResponse,
    StartInstanceResponse,

    -- * Response Lenses
    sirrsOperations,
    sirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startInstance' smart constructor.
newtype StartInstance = StartInstance'
  { _siInstanceName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siInstanceName' - The name of the instance (a virtual private server) to start.
startInstance ::
  -- | 'siInstanceName'
  Text ->
  StartInstance
startInstance pInstanceName_ =
  StartInstance' {_siInstanceName = pInstanceName_}

-- | The name of the instance (a virtual private server) to start.
siInstanceName :: Lens' StartInstance Text
siInstanceName = lens _siInstanceName (\s a -> s {_siInstanceName = a})

instance AWSRequest StartInstance where
  type Rs StartInstance = StartInstanceResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          StartInstanceResponse'
            <$> (x .?> "operations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable StartInstance

instance NFData StartInstance

instance ToHeaders StartInstance where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Lightsail_20161128.StartInstance" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartInstance where
  toJSON StartInstance' {..} =
    object
      ( catMaybes
          [Just ("instanceName" .= _siInstanceName)]
      )

instance ToPath StartInstance where
  toPath = const "/"

instance ToQuery StartInstance where
  toQuery = const mempty

-- | /See:/ 'startInstanceResponse' smart constructor.
data StartInstanceResponse = StartInstanceResponse'
  { _sirrsOperations ::
      !(Maybe [Operation]),
    _sirrsResponseStatus ::
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

-- | Creates a value of 'StartInstanceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sirrsOperations' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'sirrsResponseStatus' - -- | The response status code.
startInstanceResponse ::
  -- | 'sirrsResponseStatus'
  Int ->
  StartInstanceResponse
startInstanceResponse pResponseStatus_ =
  StartInstanceResponse'
    { _sirrsOperations = Nothing,
      _sirrsResponseStatus = pResponseStatus_
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
sirrsOperations :: Lens' StartInstanceResponse [Operation]
sirrsOperations = lens _sirrsOperations (\s a -> s {_sirrsOperations = a}) . _Default . _Coerce

-- | -- | The response status code.
sirrsResponseStatus :: Lens' StartInstanceResponse Int
sirrsResponseStatus = lens _sirrsResponseStatus (\s a -> s {_sirrsResponseStatus = a})

instance NFData StartInstanceResponse
