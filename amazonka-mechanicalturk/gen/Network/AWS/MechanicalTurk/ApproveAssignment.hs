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
-- Module      : Network.AWS.MechanicalTurk.ApproveAssignment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @ApproveAssignment@ operation approves the results of a completed assignment.
--
--
-- Approving an assignment initiates two payments from the Requester's Amazon.com account
--
--     * The Worker who submitted the results is paid the reward specified in the HIT.
--
--     * Amazon Mechanical Turk fees are debited.
--
--
--
-- If the Requester's account does not have adequate funds for these payments, the call to ApproveAssignment returns an exception, and the approval is not processed. You can include an optional feedback message with the approval, which the Worker can see in the Status section of the web site.
--
-- You can also call this operation for assignments that were previous rejected and approve them by explicitly overriding the previous rejection. This only works on rejected assignments that were submitted within the previous 30 days and only if the assignment's related HIT has not been deleted.
module Network.AWS.MechanicalTurk.ApproveAssignment
  ( -- * Creating a Request
    approveAssignment,
    ApproveAssignment,

    -- * Request Lenses
    aaRequesterFeedback,
    aaOverrideRejection,
    aaAssignmentId,

    -- * Destructuring the Response
    approveAssignmentResponse,
    ApproveAssignmentResponse,

    -- * Response Lenses
    aarrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MechanicalTurk.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'approveAssignment' smart constructor.
data ApproveAssignment = ApproveAssignment'
  { _aaRequesterFeedback ::
      !(Maybe Text),
    _aaOverrideRejection ::
      !(Maybe Bool),
    _aaAssignmentId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ApproveAssignment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaRequesterFeedback' - A message for the Worker, which the Worker can see in the Status section of the web site.
--
-- * 'aaOverrideRejection' - A flag indicating that an assignment should be approved even if it was previously rejected. Defaults to @False@ .
--
-- * 'aaAssignmentId' - The ID of the assignment. The assignment must correspond to a HIT created by the Requester.
approveAssignment ::
  -- | 'aaAssignmentId'
  Text ->
  ApproveAssignment
approveAssignment pAssignmentId_ =
  ApproveAssignment'
    { _aaRequesterFeedback = Nothing,
      _aaOverrideRejection = Nothing,
      _aaAssignmentId = pAssignmentId_
    }

-- | A message for the Worker, which the Worker can see in the Status section of the web site.
aaRequesterFeedback :: Lens' ApproveAssignment (Maybe Text)
aaRequesterFeedback = lens _aaRequesterFeedback (\s a -> s {_aaRequesterFeedback = a})

-- | A flag indicating that an assignment should be approved even if it was previously rejected. Defaults to @False@ .
aaOverrideRejection :: Lens' ApproveAssignment (Maybe Bool)
aaOverrideRejection = lens _aaOverrideRejection (\s a -> s {_aaOverrideRejection = a})

-- | The ID of the assignment. The assignment must correspond to a HIT created by the Requester.
aaAssignmentId :: Lens' ApproveAssignment Text
aaAssignmentId = lens _aaAssignmentId (\s a -> s {_aaAssignmentId = a})

instance AWSRequest ApproveAssignment where
  type Rs ApproveAssignment = ApproveAssignmentResponse
  request = postJSON mechanicalTurk
  response =
    receiveEmpty
      ( \s h x ->
          ApproveAssignmentResponse' <$> (pure (fromEnum s))
      )

instance Hashable ApproveAssignment

instance NFData ApproveAssignment

instance ToHeaders ApproveAssignment where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MTurkRequesterServiceV20170117.ApproveAssignment" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ApproveAssignment where
  toJSON ApproveAssignment' {..} =
    object
      ( catMaybes
          [ ("RequesterFeedback" .=) <$> _aaRequesterFeedback,
            ("OverrideRejection" .=) <$> _aaOverrideRejection,
            Just ("AssignmentId" .= _aaAssignmentId)
          ]
      )

instance ToPath ApproveAssignment where
  toPath = const "/"

instance ToQuery ApproveAssignment where
  toQuery = const mempty

-- | /See:/ 'approveAssignmentResponse' smart constructor.
newtype ApproveAssignmentResponse = ApproveAssignmentResponse'
  { _aarrsResponseStatus ::
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

-- | Creates a value of 'ApproveAssignmentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aarrsResponseStatus' - -- | The response status code.
approveAssignmentResponse ::
  -- | 'aarrsResponseStatus'
  Int ->
  ApproveAssignmentResponse
approveAssignmentResponse pResponseStatus_ =
  ApproveAssignmentResponse'
    { _aarrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
aarrsResponseStatus :: Lens' ApproveAssignmentResponse Int
aarrsResponseStatus = lens _aarrsResponseStatus (\s a -> s {_aarrsResponseStatus = a})

instance NFData ApproveAssignmentResponse
