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
-- Module      : Network.AWS.EC2.DeleteTrafficMirrorTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Traffic Mirror target.
--
--
-- You cannot delete a Traffic Mirror target that is in use by a Traffic Mirror session.
module Network.AWS.EC2.DeleteTrafficMirrorTarget
  ( -- * Creating a Request
    deleteTrafficMirrorTarget,
    DeleteTrafficMirrorTarget,

    -- * Request Lenses
    dtmtDryRun,
    dtmtTrafficMirrorTargetId,

    -- * Destructuring the Response
    deleteTrafficMirrorTargetResponse,
    DeleteTrafficMirrorTargetResponse,

    -- * Response Lenses
    dtmtrrsTrafficMirrorTargetId,
    dtmtrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteTrafficMirrorTarget' smart constructor.
data DeleteTrafficMirrorTarget = DeleteTrafficMirrorTarget'
  { _dtmtDryRun ::
      !(Maybe Bool),
    _dtmtTrafficMirrorTargetId ::
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

-- | Creates a value of 'DeleteTrafficMirrorTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtmtDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtmtTrafficMirrorTargetId' - The ID of the Traffic Mirror target.
deleteTrafficMirrorTarget ::
  -- | 'dtmtTrafficMirrorTargetId'
  Text ->
  DeleteTrafficMirrorTarget
deleteTrafficMirrorTarget pTrafficMirrorTargetId_ =
  DeleteTrafficMirrorTarget'
    { _dtmtDryRun = Nothing,
      _dtmtTrafficMirrorTargetId =
        pTrafficMirrorTargetId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtmtDryRun :: Lens' DeleteTrafficMirrorTarget (Maybe Bool)
dtmtDryRun = lens _dtmtDryRun (\s a -> s {_dtmtDryRun = a})

-- | The ID of the Traffic Mirror target.
dtmtTrafficMirrorTargetId :: Lens' DeleteTrafficMirrorTarget Text
dtmtTrafficMirrorTargetId = lens _dtmtTrafficMirrorTargetId (\s a -> s {_dtmtTrafficMirrorTargetId = a})

instance AWSRequest DeleteTrafficMirrorTarget where
  type
    Rs DeleteTrafficMirrorTarget =
      DeleteTrafficMirrorTargetResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeleteTrafficMirrorTargetResponse'
            <$> (x .@? "trafficMirrorTargetId")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteTrafficMirrorTarget

instance NFData DeleteTrafficMirrorTarget

instance ToHeaders DeleteTrafficMirrorTarget where
  toHeaders = const mempty

instance ToPath DeleteTrafficMirrorTarget where
  toPath = const "/"

instance ToQuery DeleteTrafficMirrorTarget where
  toQuery DeleteTrafficMirrorTarget' {..} =
    mconcat
      [ "Action"
          =: ("DeleteTrafficMirrorTarget" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dtmtDryRun,
        "TrafficMirrorTargetId"
          =: _dtmtTrafficMirrorTargetId
      ]

-- | /See:/ 'deleteTrafficMirrorTargetResponse' smart constructor.
data DeleteTrafficMirrorTargetResponse = DeleteTrafficMirrorTargetResponse'
  { _dtmtrrsTrafficMirrorTargetId ::
      !( Maybe
           Text
       ),
    _dtmtrrsResponseStatus ::
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

-- | Creates a value of 'DeleteTrafficMirrorTargetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtmtrrsTrafficMirrorTargetId' - The ID of the deleted Traffic Mirror target.
--
-- * 'dtmtrrsResponseStatus' - -- | The response status code.
deleteTrafficMirrorTargetResponse ::
  -- | 'dtmtrrsResponseStatus'
  Int ->
  DeleteTrafficMirrorTargetResponse
deleteTrafficMirrorTargetResponse pResponseStatus_ =
  DeleteTrafficMirrorTargetResponse'
    { _dtmtrrsTrafficMirrorTargetId =
        Nothing,
      _dtmtrrsResponseStatus =
        pResponseStatus_
    }

-- | The ID of the deleted Traffic Mirror target.
dtmtrrsTrafficMirrorTargetId :: Lens' DeleteTrafficMirrorTargetResponse (Maybe Text)
dtmtrrsTrafficMirrorTargetId = lens _dtmtrrsTrafficMirrorTargetId (\s a -> s {_dtmtrrsTrafficMirrorTargetId = a})

-- | -- | The response status code.
dtmtrrsResponseStatus :: Lens' DeleteTrafficMirrorTargetResponse Int
dtmtrrsResponseStatus = lens _dtmtrrsResponseStatus (\s a -> s {_dtmtrrsResponseStatus = a})

instance NFData DeleteTrafficMirrorTargetResponse
