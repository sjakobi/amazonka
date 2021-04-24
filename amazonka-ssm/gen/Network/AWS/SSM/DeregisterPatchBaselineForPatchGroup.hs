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
-- Module      : Network.AWS.SSM.DeregisterPatchBaselineForPatchGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a patch group from a patch baseline.
module Network.AWS.SSM.DeregisterPatchBaselineForPatchGroup
  ( -- * Creating a Request
    deregisterPatchBaselineForPatchGroup,
    DeregisterPatchBaselineForPatchGroup,

    -- * Request Lenses
    dpbfpgBaselineId,
    dpbfpgPatchGroup,

    -- * Destructuring the Response
    deregisterPatchBaselineForPatchGroupResponse,
    DeregisterPatchBaselineForPatchGroupResponse,

    -- * Response Lenses
    dpbfpgrrsBaselineId,
    dpbfpgrrsPatchGroup,
    dpbfpgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'deregisterPatchBaselineForPatchGroup' smart constructor.
data DeregisterPatchBaselineForPatchGroup = DeregisterPatchBaselineForPatchGroup'
  { _dpbfpgBaselineId ::
      !Text,
    _dpbfpgPatchGroup ::
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

-- | Creates a value of 'DeregisterPatchBaselineForPatchGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpbfpgBaselineId' - The ID of the patch baseline to deregister the patch group from.
--
-- * 'dpbfpgPatchGroup' - The name of the patch group that should be deregistered from the patch baseline.
deregisterPatchBaselineForPatchGroup ::
  -- | 'dpbfpgBaselineId'
  Text ->
  -- | 'dpbfpgPatchGroup'
  Text ->
  DeregisterPatchBaselineForPatchGroup
deregisterPatchBaselineForPatchGroup
  pBaselineId_
  pPatchGroup_ =
    DeregisterPatchBaselineForPatchGroup'
      { _dpbfpgBaselineId =
          pBaselineId_,
        _dpbfpgPatchGroup = pPatchGroup_
      }

-- | The ID of the patch baseline to deregister the patch group from.
dpbfpgBaselineId :: Lens' DeregisterPatchBaselineForPatchGroup Text
dpbfpgBaselineId = lens _dpbfpgBaselineId (\s a -> s {_dpbfpgBaselineId = a})

-- | The name of the patch group that should be deregistered from the patch baseline.
dpbfpgPatchGroup :: Lens' DeregisterPatchBaselineForPatchGroup Text
dpbfpgPatchGroup = lens _dpbfpgPatchGroup (\s a -> s {_dpbfpgPatchGroup = a})

instance
  AWSRequest
    DeregisterPatchBaselineForPatchGroup
  where
  type
    Rs DeregisterPatchBaselineForPatchGroup =
      DeregisterPatchBaselineForPatchGroupResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DeregisterPatchBaselineForPatchGroupResponse'
            <$> (x .?> "BaselineId")
            <*> (x .?> "PatchGroup")
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DeregisterPatchBaselineForPatchGroup

instance NFData DeregisterPatchBaselineForPatchGroup

instance
  ToHeaders
    DeregisterPatchBaselineForPatchGroup
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.DeregisterPatchBaselineForPatchGroup" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeregisterPatchBaselineForPatchGroup where
  toJSON DeregisterPatchBaselineForPatchGroup' {..} =
    object
      ( catMaybes
          [ Just ("BaselineId" .= _dpbfpgBaselineId),
            Just ("PatchGroup" .= _dpbfpgPatchGroup)
          ]
      )

instance ToPath DeregisterPatchBaselineForPatchGroup where
  toPath = const "/"

instance ToQuery DeregisterPatchBaselineForPatchGroup where
  toQuery = const mempty

-- | /See:/ 'deregisterPatchBaselineForPatchGroupResponse' smart constructor.
data DeregisterPatchBaselineForPatchGroupResponse = DeregisterPatchBaselineForPatchGroupResponse'
  { _dpbfpgrrsBaselineId ::
      !( Maybe
           Text
       ),
    _dpbfpgrrsPatchGroup ::
      !( Maybe
           Text
       ),
    _dpbfpgrrsResponseStatus ::
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

-- | Creates a value of 'DeregisterPatchBaselineForPatchGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpbfpgrrsBaselineId' - The ID of the patch baseline the patch group was deregistered from.
--
-- * 'dpbfpgrrsPatchGroup' - The name of the patch group deregistered from the patch baseline.
--
-- * 'dpbfpgrrsResponseStatus' - -- | The response status code.
deregisterPatchBaselineForPatchGroupResponse ::
  -- | 'dpbfpgrrsResponseStatus'
  Int ->
  DeregisterPatchBaselineForPatchGroupResponse
deregisterPatchBaselineForPatchGroupResponse
  pResponseStatus_ =
    DeregisterPatchBaselineForPatchGroupResponse'
      { _dpbfpgrrsBaselineId =
          Nothing,
        _dpbfpgrrsPatchGroup =
          Nothing,
        _dpbfpgrrsResponseStatus =
          pResponseStatus_
      }

-- | The ID of the patch baseline the patch group was deregistered from.
dpbfpgrrsBaselineId :: Lens' DeregisterPatchBaselineForPatchGroupResponse (Maybe Text)
dpbfpgrrsBaselineId = lens _dpbfpgrrsBaselineId (\s a -> s {_dpbfpgrrsBaselineId = a})

-- | The name of the patch group deregistered from the patch baseline.
dpbfpgrrsPatchGroup :: Lens' DeregisterPatchBaselineForPatchGroupResponse (Maybe Text)
dpbfpgrrsPatchGroup = lens _dpbfpgrrsPatchGroup (\s a -> s {_dpbfpgrrsPatchGroup = a})

-- | -- | The response status code.
dpbfpgrrsResponseStatus :: Lens' DeregisterPatchBaselineForPatchGroupResponse Int
dpbfpgrrsResponseStatus = lens _dpbfpgrrsResponseStatus (\s a -> s {_dpbfpgrrsResponseStatus = a})

instance
  NFData
    DeregisterPatchBaselineForPatchGroupResponse
