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
-- Module      : Network.AWS.Lightsail.GetContainerServicePowers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of powers that can be specified for your Amazon Lightsail container services.
--
--
-- The power specifies the amount of memory, the number of vCPUs, and the base price of the container service.
module Network.AWS.Lightsail.GetContainerServicePowers
  ( -- * Creating a Request
    getContainerServicePowers,
    GetContainerServicePowers,

    -- * Destructuring the Response
    getContainerServicePowersResponse,
    GetContainerServicePowersResponse,

    -- * Response Lenses
    gcsprrsPowers,
    gcsprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getContainerServicePowers' smart constructor.
data GetContainerServicePowers = GetContainerServicePowers'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetContainerServicePowers' with the minimum fields required to make a request.
getContainerServicePowers ::
  GetContainerServicePowers
getContainerServicePowers =
  GetContainerServicePowers'

instance AWSRequest GetContainerServicePowers where
  type
    Rs GetContainerServicePowers =
      GetContainerServicePowersResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetContainerServicePowersResponse'
            <$> (x .?> "powers" .!@ mempty) <*> (pure (fromEnum s))
      )

instance Hashable GetContainerServicePowers

instance NFData GetContainerServicePowers

instance ToHeaders GetContainerServicePowers where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.GetContainerServicePowers" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetContainerServicePowers where
  toJSON = const (Object mempty)

instance ToPath GetContainerServicePowers where
  toPath = const "/"

instance ToQuery GetContainerServicePowers where
  toQuery = const mempty

-- | /See:/ 'getContainerServicePowersResponse' smart constructor.
data GetContainerServicePowersResponse = GetContainerServicePowersResponse'
  { _gcsprrsPowers ::
      !( Maybe
           [ContainerServicePower]
       ),
    _gcsprrsResponseStatus ::
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

-- | Creates a value of 'GetContainerServicePowersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsprrsPowers' - An array of objects that describe the powers that can be specified for a container service.
--
-- * 'gcsprrsResponseStatus' - -- | The response status code.
getContainerServicePowersResponse ::
  -- | 'gcsprrsResponseStatus'
  Int ->
  GetContainerServicePowersResponse
getContainerServicePowersResponse pResponseStatus_ =
  GetContainerServicePowersResponse'
    { _gcsprrsPowers =
        Nothing,
      _gcsprrsResponseStatus =
        pResponseStatus_
    }

-- | An array of objects that describe the powers that can be specified for a container service.
gcsprrsPowers :: Lens' GetContainerServicePowersResponse [ContainerServicePower]
gcsprrsPowers = lens _gcsprrsPowers (\s a -> s {_gcsprrsPowers = a}) . _Default . _Coerce

-- | -- | The response status code.
gcsprrsResponseStatus :: Lens' GetContainerServicePowersResponse Int
gcsprrsResponseStatus = lens _gcsprrsResponseStatus (\s a -> s {_gcsprrsResponseStatus = a})

instance NFData GetContainerServicePowersResponse
