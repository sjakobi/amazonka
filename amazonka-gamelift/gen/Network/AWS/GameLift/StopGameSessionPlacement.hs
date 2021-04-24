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
-- Module      : Network.AWS.GameLift.StopGameSessionPlacement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels a game session placement that is in @PENDING@ status. To stop a placement, provide the placement ID values. If successful, the placement is moved to @CANCELLED@ status.
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
module Network.AWS.GameLift.StopGameSessionPlacement
  ( -- * Creating a Request
    stopGameSessionPlacement,
    StopGameSessionPlacement,

    -- * Request Lenses
    sgspPlacementId,

    -- * Destructuring the Response
    stopGameSessionPlacementResponse,
    StopGameSessionPlacementResponse,

    -- * Response Lenses
    sgsprrsGameSessionPlacement,
    sgsprrsResponseStatus,
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
-- /See:/ 'stopGameSessionPlacement' smart constructor.
newtype StopGameSessionPlacement = StopGameSessionPlacement'
  { _sgspPlacementId ::
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

-- | Creates a value of 'StopGameSessionPlacement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgspPlacementId' - A unique identifier for a game session placement to cancel.
stopGameSessionPlacement ::
  -- | 'sgspPlacementId'
  Text ->
  StopGameSessionPlacement
stopGameSessionPlacement pPlacementId_ =
  StopGameSessionPlacement'
    { _sgspPlacementId =
        pPlacementId_
    }

-- | A unique identifier for a game session placement to cancel.
sgspPlacementId :: Lens' StopGameSessionPlacement Text
sgspPlacementId = lens _sgspPlacementId (\s a -> s {_sgspPlacementId = a})

instance AWSRequest StopGameSessionPlacement where
  type
    Rs StopGameSessionPlacement =
      StopGameSessionPlacementResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          StopGameSessionPlacementResponse'
            <$> (x .?> "GameSessionPlacement")
            <*> (pure (fromEnum s))
      )

instance Hashable StopGameSessionPlacement

instance NFData StopGameSessionPlacement

instance ToHeaders StopGameSessionPlacement where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.StopGameSessionPlacement" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StopGameSessionPlacement where
  toJSON StopGameSessionPlacement' {..} =
    object
      ( catMaybes
          [Just ("PlacementId" .= _sgspPlacementId)]
      )

instance ToPath StopGameSessionPlacement where
  toPath = const "/"

instance ToQuery StopGameSessionPlacement where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'stopGameSessionPlacementResponse' smart constructor.
data StopGameSessionPlacementResponse = StopGameSessionPlacementResponse'
  { _sgsprrsGameSessionPlacement ::
      !( Maybe
           GameSessionPlacement
       ),
    _sgsprrsResponseStatus ::
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

-- | Creates a value of 'StopGameSessionPlacementResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgsprrsGameSessionPlacement' - Object that describes the canceled game session placement, with @CANCELLED@ status and an end time stamp.
--
-- * 'sgsprrsResponseStatus' - -- | The response status code.
stopGameSessionPlacementResponse ::
  -- | 'sgsprrsResponseStatus'
  Int ->
  StopGameSessionPlacementResponse
stopGameSessionPlacementResponse pResponseStatus_ =
  StopGameSessionPlacementResponse'
    { _sgsprrsGameSessionPlacement =
        Nothing,
      _sgsprrsResponseStatus = pResponseStatus_
    }

-- | Object that describes the canceled game session placement, with @CANCELLED@ status and an end time stamp.
sgsprrsGameSessionPlacement :: Lens' StopGameSessionPlacementResponse (Maybe GameSessionPlacement)
sgsprrsGameSessionPlacement = lens _sgsprrsGameSessionPlacement (\s a -> s {_sgsprrsGameSessionPlacement = a})

-- | -- | The response status code.
sgsprrsResponseStatus :: Lens' StopGameSessionPlacementResponse Int
sgsprrsResponseStatus = lens _sgsprrsResponseStatus (\s a -> s {_sgsprrsResponseStatus = a})

instance NFData StopGameSessionPlacementResponse
