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
-- Module      : Network.AWS.MechanicalTurk.GetAssignment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @GetAssignment@ operation retrieves the details of the specified Assignment.
module Network.AWS.MechanicalTurk.GetAssignment
  ( -- * Creating a Request
    getAssignment,
    GetAssignment,

    -- * Request Lenses
    gaAssignmentId,

    -- * Destructuring the Response
    getAssignmentResponse,
    GetAssignmentResponse,

    -- * Response Lenses
    garrsHIT,
    garrsAssignment,
    garrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MechanicalTurk.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getAssignment' smart constructor.
newtype GetAssignment = GetAssignment'
  { _gaAssignmentId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetAssignment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaAssignmentId' - The ID of the Assignment to be retrieved.
getAssignment ::
  -- | 'gaAssignmentId'
  Text ->
  GetAssignment
getAssignment pAssignmentId_ =
  GetAssignment' {_gaAssignmentId = pAssignmentId_}

-- | The ID of the Assignment to be retrieved.
gaAssignmentId :: Lens' GetAssignment Text
gaAssignmentId = lens _gaAssignmentId (\s a -> s {_gaAssignmentId = a})

instance AWSRequest GetAssignment where
  type Rs GetAssignment = GetAssignmentResponse
  request = postJSON mechanicalTurk
  response =
    receiveJSON
      ( \s h x ->
          GetAssignmentResponse'
            <$> (x .?> "HIT")
            <*> (x .?> "Assignment")
            <*> (pure (fromEnum s))
      )

instance Hashable GetAssignment

instance NFData GetAssignment

instance ToHeaders GetAssignment where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MTurkRequesterServiceV20170117.GetAssignment" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetAssignment where
  toJSON GetAssignment' {..} =
    object
      ( catMaybes
          [Just ("AssignmentId" .= _gaAssignmentId)]
      )

instance ToPath GetAssignment where
  toPath = const "/"

instance ToQuery GetAssignment where
  toQuery = const mempty

-- | /See:/ 'getAssignmentResponse' smart constructor.
data GetAssignmentResponse = GetAssignmentResponse'
  { _garrsHIT ::
      !(Maybe HIT),
    _garrsAssignment ::
      !(Maybe Assignment),
    _garrsResponseStatus ::
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

-- | Creates a value of 'GetAssignmentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'garrsHIT' - The HIT associated with this assignment. The response includes one HIT element.
--
-- * 'garrsAssignment' - The assignment. The response includes one Assignment element.
--
-- * 'garrsResponseStatus' - -- | The response status code.
getAssignmentResponse ::
  -- | 'garrsResponseStatus'
  Int ->
  GetAssignmentResponse
getAssignmentResponse pResponseStatus_ =
  GetAssignmentResponse'
    { _garrsHIT = Nothing,
      _garrsAssignment = Nothing,
      _garrsResponseStatus = pResponseStatus_
    }

-- | The HIT associated with this assignment. The response includes one HIT element.
garrsHIT :: Lens' GetAssignmentResponse (Maybe HIT)
garrsHIT = lens _garrsHIT (\s a -> s {_garrsHIT = a})

-- | The assignment. The response includes one Assignment element.
garrsAssignment :: Lens' GetAssignmentResponse (Maybe Assignment)
garrsAssignment = lens _garrsAssignment (\s a -> s {_garrsAssignment = a})

-- | -- | The response status code.
garrsResponseStatus :: Lens' GetAssignmentResponse Int
garrsResponseStatus = lens _garrsResponseStatus (\s a -> s {_garrsResponseStatus = a})

instance NFData GetAssignmentResponse
