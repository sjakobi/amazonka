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
-- Module      : Network.AWS.Route53AutoNaming.GetInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a specified instance.
module Network.AWS.Route53AutoNaming.GetInstance
  ( -- * Creating a Request
    getInstance,
    GetInstance,

    -- * Request Lenses
    giServiceId,
    giInstanceId,

    -- * Destructuring the Response
    getInstanceResponse,
    GetInstanceResponse,

    -- * Response Lenses
    girrsInstance,
    girrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53AutoNaming.Types

-- | /See:/ 'getInstance' smart constructor.
data GetInstance = GetInstance'
  { _giServiceId ::
      !Text,
    _giInstanceId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giServiceId' - The ID of the service that the instance is associated with.
--
-- * 'giInstanceId' - The ID of the instance that you want to get information about.
getInstance ::
  -- | 'giServiceId'
  Text ->
  -- | 'giInstanceId'
  Text ->
  GetInstance
getInstance pServiceId_ pInstanceId_ =
  GetInstance'
    { _giServiceId = pServiceId_,
      _giInstanceId = pInstanceId_
    }

-- | The ID of the service that the instance is associated with.
giServiceId :: Lens' GetInstance Text
giServiceId = lens _giServiceId (\s a -> s {_giServiceId = a})

-- | The ID of the instance that you want to get information about.
giInstanceId :: Lens' GetInstance Text
giInstanceId = lens _giInstanceId (\s a -> s {_giInstanceId = a})

instance AWSRequest GetInstance where
  type Rs GetInstance = GetInstanceResponse
  request = postJSON route53AutoNaming
  response =
    receiveJSON
      ( \s h x ->
          GetInstanceResponse'
            <$> (x .?> "Instance") <*> (pure (fromEnum s))
      )

instance Hashable GetInstance

instance NFData GetInstance

instance ToHeaders GetInstance where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Route53AutoNaming_v20170314.GetInstance" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetInstance where
  toJSON GetInstance' {..} =
    object
      ( catMaybes
          [ Just ("ServiceId" .= _giServiceId),
            Just ("InstanceId" .= _giInstanceId)
          ]
      )

instance ToPath GetInstance where
  toPath = const "/"

instance ToQuery GetInstance where
  toQuery = const mempty

-- | /See:/ 'getInstanceResponse' smart constructor.
data GetInstanceResponse = GetInstanceResponse'
  { _girrsInstance ::
      !(Maybe Instance),
    _girrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetInstanceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'girrsInstance' - A complex type that contains information about a specified instance.
--
-- * 'girrsResponseStatus' - -- | The response status code.
getInstanceResponse ::
  -- | 'girrsResponseStatus'
  Int ->
  GetInstanceResponse
getInstanceResponse pResponseStatus_ =
  GetInstanceResponse'
    { _girrsInstance = Nothing,
      _girrsResponseStatus = pResponseStatus_
    }

-- | A complex type that contains information about a specified instance.
girrsInstance :: Lens' GetInstanceResponse (Maybe Instance)
girrsInstance = lens _girrsInstance (\s a -> s {_girrsInstance = a})

-- | -- | The response status code.
girrsResponseStatus :: Lens' GetInstanceResponse Int
girrsResponseStatus = lens _girrsResponseStatus (\s a -> s {_girrsResponseStatus = a})

instance NFData GetInstanceResponse
