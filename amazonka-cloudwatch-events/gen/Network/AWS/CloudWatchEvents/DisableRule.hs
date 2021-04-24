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
-- Module      : Network.AWS.CloudWatchEvents.DisableRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables the specified rule. A disabled rule won't match any events, and won't self-trigger if it has a schedule expression.
--
--
-- When you disable a rule, incoming events might continue to match to the disabled rule. Allow a short period of time for changes to take effect.
module Network.AWS.CloudWatchEvents.DisableRule
  ( -- * Creating a Request
    disableRule,
    DisableRule,

    -- * Request Lenses
    disEventBusName,
    disName,

    -- * Destructuring the Response
    disableRuleResponse,
    DisableRuleResponse,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'disableRule' smart constructor.
data DisableRule = DisableRule'
  { _disEventBusName ::
      !(Maybe Text),
    _disName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DisableRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'disEventBusName' - The name or ARN of the event bus associated with the rule. If you omit this, the default event bus is used.
--
-- * 'disName' - The name of the rule.
disableRule ::
  -- | 'disName'
  Text ->
  DisableRule
disableRule pName_ =
  DisableRule'
    { _disEventBusName = Nothing,
      _disName = pName_
    }

-- | The name or ARN of the event bus associated with the rule. If you omit this, the default event bus is used.
disEventBusName :: Lens' DisableRule (Maybe Text)
disEventBusName = lens _disEventBusName (\s a -> s {_disEventBusName = a})

-- | The name of the rule.
disName :: Lens' DisableRule Text
disName = lens _disName (\s a -> s {_disName = a})

instance AWSRequest DisableRule where
  type Rs DisableRule = DisableRuleResponse
  request = postJSON cloudWatchEvents
  response = receiveNull DisableRuleResponse'

instance Hashable DisableRule

instance NFData DisableRule

instance ToHeaders DisableRule where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.DisableRule" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DisableRule where
  toJSON DisableRule' {..} =
    object
      ( catMaybes
          [ ("EventBusName" .=) <$> _disEventBusName,
            Just ("Name" .= _disName)
          ]
      )

instance ToPath DisableRule where
  toPath = const "/"

instance ToQuery DisableRule where
  toQuery = const mempty

-- | /See:/ 'disableRuleResponse' smart constructor.
data DisableRuleResponse = DisableRuleResponse'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DisableRuleResponse' with the minimum fields required to make a request.
disableRuleResponse ::
  DisableRuleResponse
disableRuleResponse = DisableRuleResponse'

instance NFData DisableRuleResponse
