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
-- Module      : Network.AWS.GameLift.DescribeGameSessionPlacement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves properties and current status of a game session placement request. To get game session placement details, specify the placement ID. If successful, a 'GameSessionPlacement' object is returned.
--
--
--     * 'CreateGameSession'
--
--     * 'DescribeGameSessions'
--
--     * 'DescribeGameSessionDetails'
--
--     * 'SearchGameSessions'
--
--     * 'UpdateGameSession'
--
--     * 'GetGameSessionLogUrl'
--
--     * Game session placements
--
--     * 'StartGameSessionPlacement'
--
--     * 'DescribeGameSessionPlacement'
--
--     * 'StopGameSessionPlacement'
module Network.AWS.GameLift.DescribeGameSessionPlacement
  ( -- * Creating a Request
    describeGameSessionPlacement,
    DescribeGameSessionPlacement,

    -- * Request Lenses
    dgspPlacementId,

    -- * Destructuring the Response
    describeGameSessionPlacementResponse,
    DescribeGameSessionPlacementResponse,

    -- * Response Lenses
    dgsprrsGameSessionPlacement,
    dgsprrsResponseStatus,
  )
where

import Network.AWS.GameLift.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input for a request operation.
--
--
--
-- /See:/ 'describeGameSessionPlacement' smart constructor.
newtype DescribeGameSessionPlacement = DescribeGameSessionPlacement'
  { _dgspPlacementId ::
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

-- | Creates a value of 'DescribeGameSessionPlacement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgspPlacementId' - A unique identifier for a game session placement to retrieve.
describeGameSessionPlacement ::
  -- | 'dgspPlacementId'
  Text ->
  DescribeGameSessionPlacement
describeGameSessionPlacement pPlacementId_ =
  DescribeGameSessionPlacement'
    { _dgspPlacementId =
        pPlacementId_
    }

-- | A unique identifier for a game session placement to retrieve.
dgspPlacementId :: Lens' DescribeGameSessionPlacement Text
dgspPlacementId = lens _dgspPlacementId (\s a -> s {_dgspPlacementId = a})

instance AWSRequest DescribeGameSessionPlacement where
  type
    Rs DescribeGameSessionPlacement =
      DescribeGameSessionPlacementResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          DescribeGameSessionPlacementResponse'
            <$> (x .?> "GameSessionPlacement")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeGameSessionPlacement

instance NFData DescribeGameSessionPlacement

instance ToHeaders DescribeGameSessionPlacement where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "GameLift.DescribeGameSessionPlacement" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeGameSessionPlacement where
  toJSON DescribeGameSessionPlacement' {..} =
    object
      ( catMaybes
          [Just ("PlacementId" .= _dgspPlacementId)]
      )

instance ToPath DescribeGameSessionPlacement where
  toPath = const "/"

instance ToQuery DescribeGameSessionPlacement where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'describeGameSessionPlacementResponse' smart constructor.
data DescribeGameSessionPlacementResponse = DescribeGameSessionPlacementResponse'
  { _dgsprrsGameSessionPlacement ::
      !( Maybe
           GameSessionPlacement
       ),
    _dgsprrsResponseStatus ::
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

-- | Creates a value of 'DescribeGameSessionPlacementResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgsprrsGameSessionPlacement' - Object that describes the requested game session placement.
--
-- * 'dgsprrsResponseStatus' - -- | The response status code.
describeGameSessionPlacementResponse ::
  -- | 'dgsprrsResponseStatus'
  Int ->
  DescribeGameSessionPlacementResponse
describeGameSessionPlacementResponse pResponseStatus_ =
  DescribeGameSessionPlacementResponse'
    { _dgsprrsGameSessionPlacement =
        Nothing,
      _dgsprrsResponseStatus =
        pResponseStatus_
    }

-- | Object that describes the requested game session placement.
dgsprrsGameSessionPlacement :: Lens' DescribeGameSessionPlacementResponse (Maybe GameSessionPlacement)
dgsprrsGameSessionPlacement = lens _dgsprrsGameSessionPlacement (\s a -> s {_dgsprrsGameSessionPlacement = a})

-- | -- | The response status code.
dgsprrsResponseStatus :: Lens' DescribeGameSessionPlacementResponse Int
dgsprrsResponseStatus = lens _dgsprrsResponseStatus (\s a -> s {_dgsprrsResponseStatus = a})

instance NFData DescribeGameSessionPlacementResponse
