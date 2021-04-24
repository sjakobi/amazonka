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
-- Module      : Network.AWS.ELBv2.SetRulePriorities
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the priorities of the specified rules.
--
--
-- You can reorder the rules as long as there are no priority conflicts in the new order. Any existing rules that you do not specify retain their current priority.
module Network.AWS.ELBv2.SetRulePriorities
  ( -- * Creating a Request
    setRulePriorities,
    SetRulePriorities,

    -- * Request Lenses
    srpRulePriorities,

    -- * Destructuring the Response
    setRulePrioritiesResponse,
    SetRulePrioritiesResponse,

    -- * Response Lenses
    srprrsRules,
    srprrsResponseStatus,
  )
where

import Network.AWS.ELBv2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'setRulePriorities' smart constructor.
newtype SetRulePriorities = SetRulePriorities'
  { _srpRulePriorities ::
      [RulePriorityPair]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SetRulePriorities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srpRulePriorities' - The rule priorities.
setRulePriorities ::
  SetRulePriorities
setRulePriorities =
  SetRulePriorities' {_srpRulePriorities = mempty}

-- | The rule priorities.
srpRulePriorities :: Lens' SetRulePriorities [RulePriorityPair]
srpRulePriorities = lens _srpRulePriorities (\s a -> s {_srpRulePriorities = a}) . _Coerce

instance AWSRequest SetRulePriorities where
  type Rs SetRulePriorities = SetRulePrioritiesResponse
  request = postQuery eLBv2
  response =
    receiveXMLWrapper
      "SetRulePrioritiesResult"
      ( \s h x ->
          SetRulePrioritiesResponse'
            <$> ( x .@? "Rules" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable SetRulePriorities

instance NFData SetRulePriorities

instance ToHeaders SetRulePriorities where
  toHeaders = const mempty

instance ToPath SetRulePriorities where
  toPath = const "/"

instance ToQuery SetRulePriorities where
  toQuery SetRulePriorities' {..} =
    mconcat
      [ "Action" =: ("SetRulePriorities" :: ByteString),
        "Version" =: ("2015-12-01" :: ByteString),
        "RulePriorities"
          =: toQueryList "member" _srpRulePriorities
      ]

-- | /See:/ 'setRulePrioritiesResponse' smart constructor.
data SetRulePrioritiesResponse = SetRulePrioritiesResponse'
  { _srprrsRules ::
      !(Maybe [Rule]),
    _srprrsResponseStatus ::
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

-- | Creates a value of 'SetRulePrioritiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srprrsRules' - Information about the rules.
--
-- * 'srprrsResponseStatus' - -- | The response status code.
setRulePrioritiesResponse ::
  -- | 'srprrsResponseStatus'
  Int ->
  SetRulePrioritiesResponse
setRulePrioritiesResponse pResponseStatus_ =
  SetRulePrioritiesResponse'
    { _srprrsRules = Nothing,
      _srprrsResponseStatus = pResponseStatus_
    }

-- | Information about the rules.
srprrsRules :: Lens' SetRulePrioritiesResponse [Rule]
srprrsRules = lens _srprrsRules (\s a -> s {_srprrsRules = a}) . _Default . _Coerce

-- | -- | The response status code.
srprrsResponseStatus :: Lens' SetRulePrioritiesResponse Int
srprrsResponseStatus = lens _srprrsResponseStatus (\s a -> s {_srprrsResponseStatus = a})

instance NFData SetRulePrioritiesResponse
