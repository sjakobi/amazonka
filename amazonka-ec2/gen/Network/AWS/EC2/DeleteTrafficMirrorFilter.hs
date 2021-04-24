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
-- Module      : Network.AWS.EC2.DeleteTrafficMirrorFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Traffic Mirror filter.
--
--
-- You cannot delete a Traffic Mirror filter that is in use by a Traffic Mirror session.
module Network.AWS.EC2.DeleteTrafficMirrorFilter
  ( -- * Creating a Request
    deleteTrafficMirrorFilter,
    DeleteTrafficMirrorFilter,

    -- * Request Lenses
    dtmfDryRun,
    dtmfTrafficMirrorFilterId,

    -- * Destructuring the Response
    deleteTrafficMirrorFilterResponse,
    DeleteTrafficMirrorFilterResponse,

    -- * Response Lenses
    dtmfrrsTrafficMirrorFilterId,
    dtmfrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteTrafficMirrorFilter' smart constructor.
data DeleteTrafficMirrorFilter = DeleteTrafficMirrorFilter'
  { _dtmfDryRun ::
      !(Maybe Bool),
    _dtmfTrafficMirrorFilterId ::
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

-- | Creates a value of 'DeleteTrafficMirrorFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtmfDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtmfTrafficMirrorFilterId' - The ID of the Traffic Mirror filter.
deleteTrafficMirrorFilter ::
  -- | 'dtmfTrafficMirrorFilterId'
  Text ->
  DeleteTrafficMirrorFilter
deleteTrafficMirrorFilter pTrafficMirrorFilterId_ =
  DeleteTrafficMirrorFilter'
    { _dtmfDryRun = Nothing,
      _dtmfTrafficMirrorFilterId =
        pTrafficMirrorFilterId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtmfDryRun :: Lens' DeleteTrafficMirrorFilter (Maybe Bool)
dtmfDryRun = lens _dtmfDryRun (\s a -> s {_dtmfDryRun = a})

-- | The ID of the Traffic Mirror filter.
dtmfTrafficMirrorFilterId :: Lens' DeleteTrafficMirrorFilter Text
dtmfTrafficMirrorFilterId = lens _dtmfTrafficMirrorFilterId (\s a -> s {_dtmfTrafficMirrorFilterId = a})

instance AWSRequest DeleteTrafficMirrorFilter where
  type
    Rs DeleteTrafficMirrorFilter =
      DeleteTrafficMirrorFilterResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeleteTrafficMirrorFilterResponse'
            <$> (x .@? "trafficMirrorFilterId")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteTrafficMirrorFilter

instance NFData DeleteTrafficMirrorFilter

instance ToHeaders DeleteTrafficMirrorFilter where
  toHeaders = const mempty

instance ToPath DeleteTrafficMirrorFilter where
  toPath = const "/"

instance ToQuery DeleteTrafficMirrorFilter where
  toQuery DeleteTrafficMirrorFilter' {..} =
    mconcat
      [ "Action"
          =: ("DeleteTrafficMirrorFilter" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dtmfDryRun,
        "TrafficMirrorFilterId"
          =: _dtmfTrafficMirrorFilterId
      ]

-- | /See:/ 'deleteTrafficMirrorFilterResponse' smart constructor.
data DeleteTrafficMirrorFilterResponse = DeleteTrafficMirrorFilterResponse'
  { _dtmfrrsTrafficMirrorFilterId ::
      !( Maybe
           Text
       ),
    _dtmfrrsResponseStatus ::
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

-- | Creates a value of 'DeleteTrafficMirrorFilterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtmfrrsTrafficMirrorFilterId' - The ID of the Traffic Mirror filter.
--
-- * 'dtmfrrsResponseStatus' - -- | The response status code.
deleteTrafficMirrorFilterResponse ::
  -- | 'dtmfrrsResponseStatus'
  Int ->
  DeleteTrafficMirrorFilterResponse
deleteTrafficMirrorFilterResponse pResponseStatus_ =
  DeleteTrafficMirrorFilterResponse'
    { _dtmfrrsTrafficMirrorFilterId =
        Nothing,
      _dtmfrrsResponseStatus =
        pResponseStatus_
    }

-- | The ID of the Traffic Mirror filter.
dtmfrrsTrafficMirrorFilterId :: Lens' DeleteTrafficMirrorFilterResponse (Maybe Text)
dtmfrrsTrafficMirrorFilterId = lens _dtmfrrsTrafficMirrorFilterId (\s a -> s {_dtmfrrsTrafficMirrorFilterId = a})

-- | -- | The response status code.
dtmfrrsResponseStatus :: Lens' DeleteTrafficMirrorFilterResponse Int
dtmfrrsResponseStatus = lens _dtmfrrsResponseStatus (\s a -> s {_dtmfrrsResponseStatus = a})

instance NFData DeleteTrafficMirrorFilterResponse
