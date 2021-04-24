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
-- Module      : Network.AWS.Connect.UpdateQuickConnectName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Updates the name and description of a quick connect. The request accepts the following data in JSON format. At least @Name@ or @Description@ must be provided.
module Network.AWS.Connect.UpdateQuickConnectName
  ( -- * Creating a Request
    updateQuickConnectName,
    UpdateQuickConnectName,

    -- * Request Lenses
    uqcnName,
    uqcnDescription,
    uqcnInstanceId,
    uqcnQuickConnectId,

    -- * Destructuring the Response
    updateQuickConnectNameResponse,
    UpdateQuickConnectNameResponse,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateQuickConnectName' smart constructor.
data UpdateQuickConnectName = UpdateQuickConnectName'
  { _uqcnName ::
      !(Maybe Text),
    _uqcnDescription ::
      !(Maybe Text),
    _uqcnInstanceId :: !Text,
    _uqcnQuickConnectId ::
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

-- | Creates a value of 'UpdateQuickConnectName' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uqcnName' - The name of the quick connect.
--
-- * 'uqcnDescription' - The description of the quick connect.
--
-- * 'uqcnInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'uqcnQuickConnectId' - The identifier for the quick connect.
updateQuickConnectName ::
  -- | 'uqcnInstanceId'
  Text ->
  -- | 'uqcnQuickConnectId'
  Text ->
  UpdateQuickConnectName
updateQuickConnectName pInstanceId_ pQuickConnectId_ =
  UpdateQuickConnectName'
    { _uqcnName = Nothing,
      _uqcnDescription = Nothing,
      _uqcnInstanceId = pInstanceId_,
      _uqcnQuickConnectId = pQuickConnectId_
    }

-- | The name of the quick connect.
uqcnName :: Lens' UpdateQuickConnectName (Maybe Text)
uqcnName = lens _uqcnName (\s a -> s {_uqcnName = a})

-- | The description of the quick connect.
uqcnDescription :: Lens' UpdateQuickConnectName (Maybe Text)
uqcnDescription = lens _uqcnDescription (\s a -> s {_uqcnDescription = a})

-- | The identifier of the Amazon Connect instance.
uqcnInstanceId :: Lens' UpdateQuickConnectName Text
uqcnInstanceId = lens _uqcnInstanceId (\s a -> s {_uqcnInstanceId = a})

-- | The identifier for the quick connect.
uqcnQuickConnectId :: Lens' UpdateQuickConnectName Text
uqcnQuickConnectId = lens _uqcnQuickConnectId (\s a -> s {_uqcnQuickConnectId = a})

instance AWSRequest UpdateQuickConnectName where
  type
    Rs UpdateQuickConnectName =
      UpdateQuickConnectNameResponse
  request = postJSON connect
  response =
    receiveNull UpdateQuickConnectNameResponse'

instance Hashable UpdateQuickConnectName

instance NFData UpdateQuickConnectName

instance ToHeaders UpdateQuickConnectName where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateQuickConnectName where
  toJSON UpdateQuickConnectName' {..} =
    object
      ( catMaybes
          [ ("Name" .=) <$> _uqcnName,
            ("Description" .=) <$> _uqcnDescription
          ]
      )

instance ToPath UpdateQuickConnectName where
  toPath UpdateQuickConnectName' {..} =
    mconcat
      [ "/quick-connects/",
        toBS _uqcnInstanceId,
        "/",
        toBS _uqcnQuickConnectId,
        "/name"
      ]

instance ToQuery UpdateQuickConnectName where
  toQuery = const mempty

-- | /See:/ 'updateQuickConnectNameResponse' smart constructor.
data UpdateQuickConnectNameResponse = UpdateQuickConnectNameResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateQuickConnectNameResponse' with the minimum fields required to make a request.
updateQuickConnectNameResponse ::
  UpdateQuickConnectNameResponse
updateQuickConnectNameResponse =
  UpdateQuickConnectNameResponse'

instance NFData UpdateQuickConnectNameResponse
