{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.UserQuickConnectConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.UserQuickConnectConfig where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about the quick connect configuration settings for a user. The contact flow must be of type Transfer to Agent.
--
--
--
-- /See:/ 'userQuickConnectConfig' smart constructor.
data UserQuickConnectConfig = UserQuickConnectConfig'
  { _uqccUserId ::
      !Text,
    _uqccContactFlowId ::
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

-- | Creates a value of 'UserQuickConnectConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uqccUserId' - The identifier of the user.
--
-- * 'uqccContactFlowId' - The identifier of the contact flow.
userQuickConnectConfig ::
  -- | 'uqccUserId'
  Text ->
  -- | 'uqccContactFlowId'
  Text ->
  UserQuickConnectConfig
userQuickConnectConfig pUserId_ pContactFlowId_ =
  UserQuickConnectConfig'
    { _uqccUserId = pUserId_,
      _uqccContactFlowId = pContactFlowId_
    }

-- | The identifier of the user.
uqccUserId :: Lens' UserQuickConnectConfig Text
uqccUserId = lens _uqccUserId (\s a -> s {_uqccUserId = a})

-- | The identifier of the contact flow.
uqccContactFlowId :: Lens' UserQuickConnectConfig Text
uqccContactFlowId = lens _uqccContactFlowId (\s a -> s {_uqccContactFlowId = a})

instance FromJSON UserQuickConnectConfig where
  parseJSON =
    withObject
      "UserQuickConnectConfig"
      ( \x ->
          UserQuickConnectConfig'
            <$> (x .: "UserId") <*> (x .: "ContactFlowId")
      )

instance Hashable UserQuickConnectConfig

instance NFData UserQuickConnectConfig

instance ToJSON UserQuickConnectConfig where
  toJSON UserQuickConnectConfig' {..} =
    object
      ( catMaybes
          [ Just ("UserId" .= _uqccUserId),
            Just ("ContactFlowId" .= _uqccContactFlowId)
          ]
      )
