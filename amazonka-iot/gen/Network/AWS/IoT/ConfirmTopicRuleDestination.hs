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
-- Module      : Network.AWS.IoT.ConfirmTopicRuleDestination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Confirms a topic rule destination. When you create a rule requiring a destination, AWS IoT sends a confirmation message to the endpoint or base address you specify. The message includes a token which you pass back when calling @ConfirmTopicRuleDestination@ to confirm that you own or have access to the endpoint.
module Network.AWS.IoT.ConfirmTopicRuleDestination
  ( -- * Creating a Request
    confirmTopicRuleDestination,
    ConfirmTopicRuleDestination,

    -- * Request Lenses
    ctrdConfirmationToken,

    -- * Destructuring the Response
    confirmTopicRuleDestinationResponse,
    ConfirmTopicRuleDestinationResponse,

    -- * Response Lenses
    conrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'confirmTopicRuleDestination' smart constructor.
newtype ConfirmTopicRuleDestination = ConfirmTopicRuleDestination'
  { _ctrdConfirmationToken ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ConfirmTopicRuleDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctrdConfirmationToken' - The token used to confirm ownership or access to the topic rule confirmation URL.
confirmTopicRuleDestination ::
  -- | 'ctrdConfirmationToken'
  Text ->
  ConfirmTopicRuleDestination
confirmTopicRuleDestination pConfirmationToken_ =
  ConfirmTopicRuleDestination'
    { _ctrdConfirmationToken =
        pConfirmationToken_
    }

-- | The token used to confirm ownership or access to the topic rule confirmation URL.
ctrdConfirmationToken :: Lens' ConfirmTopicRuleDestination Text
ctrdConfirmationToken = lens _ctrdConfirmationToken (\s a -> s {_ctrdConfirmationToken = a})

instance AWSRequest ConfirmTopicRuleDestination where
  type
    Rs ConfirmTopicRuleDestination =
      ConfirmTopicRuleDestinationResponse
  request = get ioT
  response =
    receiveEmpty
      ( \s h x ->
          ConfirmTopicRuleDestinationResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable ConfirmTopicRuleDestination

instance NFData ConfirmTopicRuleDestination

instance ToHeaders ConfirmTopicRuleDestination where
  toHeaders = const mempty

instance ToPath ConfirmTopicRuleDestination where
  toPath ConfirmTopicRuleDestination' {..} =
    mconcat
      ["/confirmdestination/", toBS _ctrdConfirmationToken]

instance ToQuery ConfirmTopicRuleDestination where
  toQuery = const mempty

-- | /See:/ 'confirmTopicRuleDestinationResponse' smart constructor.
newtype ConfirmTopicRuleDestinationResponse = ConfirmTopicRuleDestinationResponse'
  { _conrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ConfirmTopicRuleDestinationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'conrsResponseStatus' - -- | The response status code.
confirmTopicRuleDestinationResponse ::
  -- | 'conrsResponseStatus'
  Int ->
  ConfirmTopicRuleDestinationResponse
confirmTopicRuleDestinationResponse pResponseStatus_ =
  ConfirmTopicRuleDestinationResponse'
    { _conrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
conrsResponseStatus :: Lens' ConfirmTopicRuleDestinationResponse Int
conrsResponseStatus = lens _conrsResponseStatus (\s a -> s {_conrsResponseStatus = a})

instance NFData ConfirmTopicRuleDestinationResponse
