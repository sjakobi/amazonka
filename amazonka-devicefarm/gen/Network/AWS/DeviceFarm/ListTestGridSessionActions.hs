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
-- Module      : Network.AWS.DeviceFarm.ListTestGridSessionActions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the actions taken in a 'TestGridSession' .
module Network.AWS.DeviceFarm.ListTestGridSessionActions
  ( -- * Creating a Request
    listTestGridSessionActions,
    ListTestGridSessionActions,

    -- * Request Lenses
    ltgsaNextToken,
    ltgsaMaxResult,
    ltgsaSessionARN,

    -- * Destructuring the Response
    listTestGridSessionActionsResponse,
    ListTestGridSessionActionsResponse,

    -- * Response Lenses
    ltgsarrsNextToken,
    ltgsarrsActions,
    ltgsarrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTestGridSessionActions' smart constructor.
data ListTestGridSessionActions = ListTestGridSessionActions'
  { _ltgsaNextToken ::
      !(Maybe Text),
    _ltgsaMaxResult ::
      !(Maybe Nat),
    _ltgsaSessionARN ::
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

-- | Creates a value of 'ListTestGridSessionActions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltgsaNextToken' - Pagination token.
--
-- * 'ltgsaMaxResult' - The maximum number of sessions to return per response.
--
-- * 'ltgsaSessionARN' - The ARN of the session to retrieve.
listTestGridSessionActions ::
  -- | 'ltgsaSessionARN'
  Text ->
  ListTestGridSessionActions
listTestGridSessionActions pSessionARN_ =
  ListTestGridSessionActions'
    { _ltgsaNextToken =
        Nothing,
      _ltgsaMaxResult = Nothing,
      _ltgsaSessionARN = pSessionARN_
    }

-- | Pagination token.
ltgsaNextToken :: Lens' ListTestGridSessionActions (Maybe Text)
ltgsaNextToken = lens _ltgsaNextToken (\s a -> s {_ltgsaNextToken = a})

-- | The maximum number of sessions to return per response.
ltgsaMaxResult :: Lens' ListTestGridSessionActions (Maybe Natural)
ltgsaMaxResult = lens _ltgsaMaxResult (\s a -> s {_ltgsaMaxResult = a}) . mapping _Nat

-- | The ARN of the session to retrieve.
ltgsaSessionARN :: Lens' ListTestGridSessionActions Text
ltgsaSessionARN = lens _ltgsaSessionARN (\s a -> s {_ltgsaSessionARN = a})

instance AWSRequest ListTestGridSessionActions where
  type
    Rs ListTestGridSessionActions =
      ListTestGridSessionActionsResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          ListTestGridSessionActionsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "actions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListTestGridSessionActions

instance NFData ListTestGridSessionActions

instance ToHeaders ListTestGridSessionActions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DeviceFarm_20150623.ListTestGridSessionActions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTestGridSessionActions where
  toJSON ListTestGridSessionActions' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _ltgsaNextToken,
            ("maxResult" .=) <$> _ltgsaMaxResult,
            Just ("sessionArn" .= _ltgsaSessionARN)
          ]
      )

instance ToPath ListTestGridSessionActions where
  toPath = const "/"

instance ToQuery ListTestGridSessionActions where
  toQuery = const mempty

-- | /See:/ 'listTestGridSessionActionsResponse' smart constructor.
data ListTestGridSessionActionsResponse = ListTestGridSessionActionsResponse'
  { _ltgsarrsNextToken ::
      !( Maybe
           Text
       ),
    _ltgsarrsActions ::
      !( Maybe
           [TestGridSessionAction]
       ),
    _ltgsarrsResponseStatus ::
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

-- | Creates a value of 'ListTestGridSessionActionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltgsarrsNextToken' - Pagination token.
--
-- * 'ltgsarrsActions' - The action taken by the session.
--
-- * 'ltgsarrsResponseStatus' - -- | The response status code.
listTestGridSessionActionsResponse ::
  -- | 'ltgsarrsResponseStatus'
  Int ->
  ListTestGridSessionActionsResponse
listTestGridSessionActionsResponse pResponseStatus_ =
  ListTestGridSessionActionsResponse'
    { _ltgsarrsNextToken =
        Nothing,
      _ltgsarrsActions = Nothing,
      _ltgsarrsResponseStatus =
        pResponseStatus_
    }

-- | Pagination token.
ltgsarrsNextToken :: Lens' ListTestGridSessionActionsResponse (Maybe Text)
ltgsarrsNextToken = lens _ltgsarrsNextToken (\s a -> s {_ltgsarrsNextToken = a})

-- | The action taken by the session.
ltgsarrsActions :: Lens' ListTestGridSessionActionsResponse [TestGridSessionAction]
ltgsarrsActions = lens _ltgsarrsActions (\s a -> s {_ltgsarrsActions = a}) . _Default . _Coerce

-- | -- | The response status code.
ltgsarrsResponseStatus :: Lens' ListTestGridSessionActionsResponse Int
ltgsarrsResponseStatus = lens _ltgsarrsResponseStatus (\s a -> s {_ltgsarrsResponseStatus = a})

instance NFData ListTestGridSessionActionsResponse
