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
-- Module      : Network.AWS.IoT.GetIndexingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the indexing configuration.
module Network.AWS.IoT.GetIndexingConfiguration
  ( -- * Creating a Request
    getIndexingConfiguration,
    GetIndexingConfiguration,

    -- * Destructuring the Response
    getIndexingConfigurationResponse,
    GetIndexingConfigurationResponse,

    -- * Response Lenses
    gicrrsThingGroupIndexingConfiguration,
    gicrrsThingIndexingConfiguration,
    gicrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getIndexingConfiguration' smart constructor.
data GetIndexingConfiguration = GetIndexingConfiguration'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetIndexingConfiguration' with the minimum fields required to make a request.
getIndexingConfiguration ::
  GetIndexingConfiguration
getIndexingConfiguration = GetIndexingConfiguration'

instance AWSRequest GetIndexingConfiguration where
  type
    Rs GetIndexingConfiguration =
      GetIndexingConfigurationResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          GetIndexingConfigurationResponse'
            <$> (x .?> "thingGroupIndexingConfiguration")
            <*> (x .?> "thingIndexingConfiguration")
            <*> (pure (fromEnum s))
      )

instance Hashable GetIndexingConfiguration

instance NFData GetIndexingConfiguration

instance ToHeaders GetIndexingConfiguration where
  toHeaders = const mempty

instance ToPath GetIndexingConfiguration where
  toPath = const "/indexing/config"

instance ToQuery GetIndexingConfiguration where
  toQuery = const mempty

-- | /See:/ 'getIndexingConfigurationResponse' smart constructor.
data GetIndexingConfigurationResponse = GetIndexingConfigurationResponse'
  { _gicrrsThingGroupIndexingConfiguration ::
      !( Maybe
           ThingGroupIndexingConfiguration
       ),
    _gicrrsThingIndexingConfiguration ::
      !( Maybe
           ThingIndexingConfiguration
       ),
    _gicrrsResponseStatus ::
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

-- | Creates a value of 'GetIndexingConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gicrrsThingGroupIndexingConfiguration' - The index configuration.
--
-- * 'gicrrsThingIndexingConfiguration' - Thing indexing configuration.
--
-- * 'gicrrsResponseStatus' - -- | The response status code.
getIndexingConfigurationResponse ::
  -- | 'gicrrsResponseStatus'
  Int ->
  GetIndexingConfigurationResponse
getIndexingConfigurationResponse pResponseStatus_ =
  GetIndexingConfigurationResponse'
    { _gicrrsThingGroupIndexingConfiguration =
        Nothing,
      _gicrrsThingIndexingConfiguration =
        Nothing,
      _gicrrsResponseStatus = pResponseStatus_
    }

-- | The index configuration.
gicrrsThingGroupIndexingConfiguration :: Lens' GetIndexingConfigurationResponse (Maybe ThingGroupIndexingConfiguration)
gicrrsThingGroupIndexingConfiguration = lens _gicrrsThingGroupIndexingConfiguration (\s a -> s {_gicrrsThingGroupIndexingConfiguration = a})

-- | Thing indexing configuration.
gicrrsThingIndexingConfiguration :: Lens' GetIndexingConfigurationResponse (Maybe ThingIndexingConfiguration)
gicrrsThingIndexingConfiguration = lens _gicrrsThingIndexingConfiguration (\s a -> s {_gicrrsThingIndexingConfiguration = a})

-- | -- | The response status code.
gicrrsResponseStatus :: Lens' GetIndexingConfigurationResponse Int
gicrrsResponseStatus = lens _gicrrsResponseStatus (\s a -> s {_gicrrsResponseStatus = a})

instance NFData GetIndexingConfigurationResponse
