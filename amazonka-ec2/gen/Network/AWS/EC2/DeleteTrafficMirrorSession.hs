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
-- Module      : Network.AWS.EC2.DeleteTrafficMirrorSession
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Traffic Mirror session.
module Network.AWS.EC2.DeleteTrafficMirrorSession
  ( -- * Creating a Request
    deleteTrafficMirrorSession,
    DeleteTrafficMirrorSession,

    -- * Request Lenses
    dtmstDryRun,
    dtmstTrafficMirrorSessionId,

    -- * Destructuring the Response
    deleteTrafficMirrorSessionResponse,
    DeleteTrafficMirrorSessionResponse,

    -- * Response Lenses
    dtmsrtrsTrafficMirrorSessionId,
    dtmsrtrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteTrafficMirrorSession' smart constructor.
data DeleteTrafficMirrorSession = DeleteTrafficMirrorSession'
  { _dtmstDryRun ::
      !(Maybe Bool),
    _dtmstTrafficMirrorSessionId ::
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

-- | Creates a value of 'DeleteTrafficMirrorSession' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtmstDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtmstTrafficMirrorSessionId' - The ID of the Traffic Mirror session.
deleteTrafficMirrorSession ::
  -- | 'dtmstTrafficMirrorSessionId'
  Text ->
  DeleteTrafficMirrorSession
deleteTrafficMirrorSession pTrafficMirrorSessionId_ =
  DeleteTrafficMirrorSession'
    { _dtmstDryRun = Nothing,
      _dtmstTrafficMirrorSessionId =
        pTrafficMirrorSessionId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtmstDryRun :: Lens' DeleteTrafficMirrorSession (Maybe Bool)
dtmstDryRun = lens _dtmstDryRun (\s a -> s {_dtmstDryRun = a})

-- | The ID of the Traffic Mirror session.
dtmstTrafficMirrorSessionId :: Lens' DeleteTrafficMirrorSession Text
dtmstTrafficMirrorSessionId = lens _dtmstTrafficMirrorSessionId (\s a -> s {_dtmstTrafficMirrorSessionId = a})

instance AWSRequest DeleteTrafficMirrorSession where
  type
    Rs DeleteTrafficMirrorSession =
      DeleteTrafficMirrorSessionResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeleteTrafficMirrorSessionResponse'
            <$> (x .@? "trafficMirrorSessionId")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteTrafficMirrorSession

instance NFData DeleteTrafficMirrorSession

instance ToHeaders DeleteTrafficMirrorSession where
  toHeaders = const mempty

instance ToPath DeleteTrafficMirrorSession where
  toPath = const "/"

instance ToQuery DeleteTrafficMirrorSession where
  toQuery DeleteTrafficMirrorSession' {..} =
    mconcat
      [ "Action"
          =: ("DeleteTrafficMirrorSession" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dtmstDryRun,
        "TrafficMirrorSessionId"
          =: _dtmstTrafficMirrorSessionId
      ]

-- | /See:/ 'deleteTrafficMirrorSessionResponse' smart constructor.
data DeleteTrafficMirrorSessionResponse = DeleteTrafficMirrorSessionResponse'
  { _dtmsrtrsTrafficMirrorSessionId ::
      !( Maybe
           Text
       ),
    _dtmsrtrsResponseStatus ::
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

-- | Creates a value of 'DeleteTrafficMirrorSessionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtmsrtrsTrafficMirrorSessionId' - The ID of the deleted Traffic Mirror session.
--
-- * 'dtmsrtrsResponseStatus' - -- | The response status code.
deleteTrafficMirrorSessionResponse ::
  -- | 'dtmsrtrsResponseStatus'
  Int ->
  DeleteTrafficMirrorSessionResponse
deleteTrafficMirrorSessionResponse pResponseStatus_ =
  DeleteTrafficMirrorSessionResponse'
    { _dtmsrtrsTrafficMirrorSessionId =
        Nothing,
      _dtmsrtrsResponseStatus =
        pResponseStatus_
    }

-- | The ID of the deleted Traffic Mirror session.
dtmsrtrsTrafficMirrorSessionId :: Lens' DeleteTrafficMirrorSessionResponse (Maybe Text)
dtmsrtrsTrafficMirrorSessionId = lens _dtmsrtrsTrafficMirrorSessionId (\s a -> s {_dtmsrtrsTrafficMirrorSessionId = a})

-- | -- | The response status code.
dtmsrtrsResponseStatus :: Lens' DeleteTrafficMirrorSessionResponse Int
dtmsrtrsResponseStatus = lens _dtmsrtrsResponseStatus (\s a -> s {_dtmsrtrsResponseStatus = a})

instance NFData DeleteTrafficMirrorSessionResponse
