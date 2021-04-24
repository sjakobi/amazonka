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
-- Module      : Network.AWS.DMS.CancelReplicationTaskAssessmentRun
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels a single premigration assessment run.
--
--
-- This operation prevents any individual assessments from running if they haven't started running. It also attempts to cancel any individual assessments that are currently running.
module Network.AWS.DMS.CancelReplicationTaskAssessmentRun
  ( -- * Creating a Request
    cancelReplicationTaskAssessmentRun,
    CancelReplicationTaskAssessmentRun,

    -- * Request Lenses
    crtarReplicationTaskAssessmentRunARN,

    -- * Destructuring the Response
    cancelReplicationTaskAssessmentRunResponse,
    CancelReplicationTaskAssessmentRunResponse,

    -- * Response Lenses
    crtarrrsReplicationTaskAssessmentRun,
    crtarrrsResponseStatus,
  )
where

import Network.AWS.DMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'cancelReplicationTaskAssessmentRun' smart constructor.
newtype CancelReplicationTaskAssessmentRun = CancelReplicationTaskAssessmentRun'
  { _crtarReplicationTaskAssessmentRunARN ::
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

-- | Creates a value of 'CancelReplicationTaskAssessmentRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crtarReplicationTaskAssessmentRunARN' - Amazon Resource Name (ARN) of the premigration assessment run to be canceled.
cancelReplicationTaskAssessmentRun ::
  -- | 'crtarReplicationTaskAssessmentRunARN'
  Text ->
  CancelReplicationTaskAssessmentRun
cancelReplicationTaskAssessmentRun
  pReplicationTaskAssessmentRunARN_ =
    CancelReplicationTaskAssessmentRun'
      { _crtarReplicationTaskAssessmentRunARN =
          pReplicationTaskAssessmentRunARN_
      }

-- | Amazon Resource Name (ARN) of the premigration assessment run to be canceled.
crtarReplicationTaskAssessmentRunARN :: Lens' CancelReplicationTaskAssessmentRun Text
crtarReplicationTaskAssessmentRunARN = lens _crtarReplicationTaskAssessmentRunARN (\s a -> s {_crtarReplicationTaskAssessmentRunARN = a})

instance
  AWSRequest
    CancelReplicationTaskAssessmentRun
  where
  type
    Rs CancelReplicationTaskAssessmentRun =
      CancelReplicationTaskAssessmentRunResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          CancelReplicationTaskAssessmentRunResponse'
            <$> (x .?> "ReplicationTaskAssessmentRun")
            <*> (pure (fromEnum s))
      )

instance Hashable CancelReplicationTaskAssessmentRun

instance NFData CancelReplicationTaskAssessmentRun

instance ToHeaders CancelReplicationTaskAssessmentRun where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDMSv20160101.CancelReplicationTaskAssessmentRun" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CancelReplicationTaskAssessmentRun where
  toJSON CancelReplicationTaskAssessmentRun' {..} =
    object
      ( catMaybes
          [ Just
              ( "ReplicationTaskAssessmentRunArn"
                  .= _crtarReplicationTaskAssessmentRunARN
              )
          ]
      )

instance ToPath CancelReplicationTaskAssessmentRun where
  toPath = const "/"

instance ToQuery CancelReplicationTaskAssessmentRun where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'cancelReplicationTaskAssessmentRunResponse' smart constructor.
data CancelReplicationTaskAssessmentRunResponse = CancelReplicationTaskAssessmentRunResponse'
  { _crtarrrsReplicationTaskAssessmentRun ::
      !( Maybe
           ReplicationTaskAssessmentRun
       ),
    _crtarrrsResponseStatus ::
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

-- | Creates a value of 'CancelReplicationTaskAssessmentRunResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crtarrrsReplicationTaskAssessmentRun' - The @ReplicationTaskAssessmentRun@ object for the canceled assessment run.
--
-- * 'crtarrrsResponseStatus' - -- | The response status code.
cancelReplicationTaskAssessmentRunResponse ::
  -- | 'crtarrrsResponseStatus'
  Int ->
  CancelReplicationTaskAssessmentRunResponse
cancelReplicationTaskAssessmentRunResponse
  pResponseStatus_ =
    CancelReplicationTaskAssessmentRunResponse'
      { _crtarrrsReplicationTaskAssessmentRun =
          Nothing,
        _crtarrrsResponseStatus =
          pResponseStatus_
      }

-- | The @ReplicationTaskAssessmentRun@ object for the canceled assessment run.
crtarrrsReplicationTaskAssessmentRun :: Lens' CancelReplicationTaskAssessmentRunResponse (Maybe ReplicationTaskAssessmentRun)
crtarrrsReplicationTaskAssessmentRun = lens _crtarrrsReplicationTaskAssessmentRun (\s a -> s {_crtarrrsReplicationTaskAssessmentRun = a})

-- | -- | The response status code.
crtarrrsResponseStatus :: Lens' CancelReplicationTaskAssessmentRunResponse Int
crtarrrsResponseStatus = lens _crtarrrsResponseStatus (\s a -> s {_crtarrrsResponseStatus = a})

instance
  NFData
    CancelReplicationTaskAssessmentRunResponse
