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
-- Module      : Network.AWS.Config.BatchGetResourceConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the current configuration for one or more requested resources. The operation also returns a list of resources that are not processed in the current request. If there are no unprocessed resources, the operation returns an empty unprocessedResourceKeys list.
module Network.AWS.Config.BatchGetResourceConfig
  ( -- * Creating a Request
    batchGetResourceConfig,
    BatchGetResourceConfig,

    -- * Request Lenses
    bgrcResourceKeys,

    -- * Destructuring the Response
    batchGetResourceConfigResponse,
    BatchGetResourceConfigResponse,

    -- * Response Lenses
    bgrcrrsUnprocessedResourceKeys,
    bgrcrrsBaseConfigurationItems,
    bgrcrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'batchGetResourceConfig' smart constructor.
newtype BatchGetResourceConfig = BatchGetResourceConfig'
  { _bgrcResourceKeys ::
      List1 ResourceKey
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchGetResourceConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgrcResourceKeys' - A list of resource keys to be processed with the current request. Each element in the list consists of the resource type and resource ID.
batchGetResourceConfig ::
  -- | 'bgrcResourceKeys'
  NonEmpty ResourceKey ->
  BatchGetResourceConfig
batchGetResourceConfig pResourceKeys_ =
  BatchGetResourceConfig'
    { _bgrcResourceKeys =
        _List1 # pResourceKeys_
    }

-- | A list of resource keys to be processed with the current request. Each element in the list consists of the resource type and resource ID.
bgrcResourceKeys :: Lens' BatchGetResourceConfig (NonEmpty ResourceKey)
bgrcResourceKeys = lens _bgrcResourceKeys (\s a -> s {_bgrcResourceKeys = a}) . _List1

instance AWSRequest BatchGetResourceConfig where
  type
    Rs BatchGetResourceConfig =
      BatchGetResourceConfigResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          BatchGetResourceConfigResponse'
            <$> (x .?> "unprocessedResourceKeys")
            <*> (x .?> "baseConfigurationItems" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable BatchGetResourceConfig

instance NFData BatchGetResourceConfig

instance ToHeaders BatchGetResourceConfig where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.BatchGetResourceConfig" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON BatchGetResourceConfig where
  toJSON BatchGetResourceConfig' {..} =
    object
      ( catMaybes
          [Just ("resourceKeys" .= _bgrcResourceKeys)]
      )

instance ToPath BatchGetResourceConfig where
  toPath = const "/"

instance ToQuery BatchGetResourceConfig where
  toQuery = const mempty

-- | /See:/ 'batchGetResourceConfigResponse' smart constructor.
data BatchGetResourceConfigResponse = BatchGetResourceConfigResponse'
  { _bgrcrrsUnprocessedResourceKeys ::
      !( Maybe
           ( List1
               ResourceKey
           )
       ),
    _bgrcrrsBaseConfigurationItems ::
      !( Maybe
           [BaseConfigurationItem]
       ),
    _bgrcrrsResponseStatus ::
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

-- | Creates a value of 'BatchGetResourceConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgrcrrsUnprocessedResourceKeys' - A list of resource keys that were not processed with the current response. The unprocessesResourceKeys value is in the same form as ResourceKeys, so the value can be directly provided to a subsequent BatchGetResourceConfig operation. If there are no unprocessed resource keys, the response contains an empty unprocessedResourceKeys list.
--
-- * 'bgrcrrsBaseConfigurationItems' - A list that contains the current configuration of one or more resources.
--
-- * 'bgrcrrsResponseStatus' - -- | The response status code.
batchGetResourceConfigResponse ::
  -- | 'bgrcrrsResponseStatus'
  Int ->
  BatchGetResourceConfigResponse
batchGetResourceConfigResponse pResponseStatus_ =
  BatchGetResourceConfigResponse'
    { _bgrcrrsUnprocessedResourceKeys =
        Nothing,
      _bgrcrrsBaseConfigurationItems = Nothing,
      _bgrcrrsResponseStatus = pResponseStatus_
    }

-- | A list of resource keys that were not processed with the current response. The unprocessesResourceKeys value is in the same form as ResourceKeys, so the value can be directly provided to a subsequent BatchGetResourceConfig operation. If there are no unprocessed resource keys, the response contains an empty unprocessedResourceKeys list.
bgrcrrsUnprocessedResourceKeys :: Lens' BatchGetResourceConfigResponse (Maybe (NonEmpty ResourceKey))
bgrcrrsUnprocessedResourceKeys = lens _bgrcrrsUnprocessedResourceKeys (\s a -> s {_bgrcrrsUnprocessedResourceKeys = a}) . mapping _List1

-- | A list that contains the current configuration of one or more resources.
bgrcrrsBaseConfigurationItems :: Lens' BatchGetResourceConfigResponse [BaseConfigurationItem]
bgrcrrsBaseConfigurationItems = lens _bgrcrrsBaseConfigurationItems (\s a -> s {_bgrcrrsBaseConfigurationItems = a}) . _Default . _Coerce

-- | -- | The response status code.
bgrcrrsResponseStatus :: Lens' BatchGetResourceConfigResponse Int
bgrcrrsResponseStatus = lens _bgrcrrsResponseStatus (\s a -> s {_bgrcrrsResponseStatus = a})

instance NFData BatchGetResourceConfigResponse
