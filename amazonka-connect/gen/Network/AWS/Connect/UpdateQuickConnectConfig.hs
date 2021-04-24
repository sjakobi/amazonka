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
-- Module      : Network.AWS.Connect.UpdateQuickConnectConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Updates the configuration settings for the specified quick connect.
module Network.AWS.Connect.UpdateQuickConnectConfig
  ( -- * Creating a Request
    updateQuickConnectConfig,
    UpdateQuickConnectConfig,

    -- * Request Lenses
    uqccInstanceId,
    uqccQuickConnectId,
    uqccQuickConnectConfig,

    -- * Destructuring the Response
    updateQuickConnectConfigResponse,
    UpdateQuickConnectConfigResponse,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateQuickConnectConfig' smart constructor.
data UpdateQuickConnectConfig = UpdateQuickConnectConfig'
  { _uqccInstanceId ::
      !Text,
    _uqccQuickConnectId ::
      !Text,
    _uqccQuickConnectConfig ::
      !QuickConnectConfig
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateQuickConnectConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uqccInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'uqccQuickConnectId' - The identifier for the quick connect.
--
-- * 'uqccQuickConnectConfig' - Information about the configuration settings for the quick connect.
updateQuickConnectConfig ::
  -- | 'uqccInstanceId'
  Text ->
  -- | 'uqccQuickConnectId'
  Text ->
  -- | 'uqccQuickConnectConfig'
  QuickConnectConfig ->
  UpdateQuickConnectConfig
updateQuickConnectConfig
  pInstanceId_
  pQuickConnectId_
  pQuickConnectConfig_ =
    UpdateQuickConnectConfig'
      { _uqccInstanceId =
          pInstanceId_,
        _uqccQuickConnectId = pQuickConnectId_,
        _uqccQuickConnectConfig = pQuickConnectConfig_
      }

-- | The identifier of the Amazon Connect instance.
uqccInstanceId :: Lens' UpdateQuickConnectConfig Text
uqccInstanceId = lens _uqccInstanceId (\s a -> s {_uqccInstanceId = a})

-- | The identifier for the quick connect.
uqccQuickConnectId :: Lens' UpdateQuickConnectConfig Text
uqccQuickConnectId = lens _uqccQuickConnectId (\s a -> s {_uqccQuickConnectId = a})

-- | Information about the configuration settings for the quick connect.
uqccQuickConnectConfig :: Lens' UpdateQuickConnectConfig QuickConnectConfig
uqccQuickConnectConfig = lens _uqccQuickConnectConfig (\s a -> s {_uqccQuickConnectConfig = a})

instance AWSRequest UpdateQuickConnectConfig where
  type
    Rs UpdateQuickConnectConfig =
      UpdateQuickConnectConfigResponse
  request = postJSON connect
  response =
    receiveNull UpdateQuickConnectConfigResponse'

instance Hashable UpdateQuickConnectConfig

instance NFData UpdateQuickConnectConfig

instance ToHeaders UpdateQuickConnectConfig where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateQuickConnectConfig where
  toJSON UpdateQuickConnectConfig' {..} =
    object
      ( catMaybes
          [ Just
              ("QuickConnectConfig" .= _uqccQuickConnectConfig)
          ]
      )

instance ToPath UpdateQuickConnectConfig where
  toPath UpdateQuickConnectConfig' {..} =
    mconcat
      [ "/quick-connects/",
        toBS _uqccInstanceId,
        "/",
        toBS _uqccQuickConnectId,
        "/config"
      ]

instance ToQuery UpdateQuickConnectConfig where
  toQuery = const mempty

-- | /See:/ 'updateQuickConnectConfigResponse' smart constructor.
data UpdateQuickConnectConfigResponse = UpdateQuickConnectConfigResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateQuickConnectConfigResponse' with the minimum fields required to make a request.
updateQuickConnectConfigResponse ::
  UpdateQuickConnectConfigResponse
updateQuickConnectConfigResponse =
  UpdateQuickConnectConfigResponse'

instance NFData UpdateQuickConnectConfigResponse
