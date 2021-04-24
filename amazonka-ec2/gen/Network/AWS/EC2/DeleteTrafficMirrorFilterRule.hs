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
-- Module      : Network.AWS.EC2.DeleteTrafficMirrorFilterRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Traffic Mirror rule.
module Network.AWS.EC2.DeleteTrafficMirrorFilterRule
  ( -- * Creating a Request
    deleteTrafficMirrorFilterRule,
    DeleteTrafficMirrorFilterRule,

    -- * Request Lenses
    dtmfrDryRun,
    dtmfrTrafficMirrorFilterRuleId,

    -- * Destructuring the Response
    deleteTrafficMirrorFilterRuleResponse,
    DeleteTrafficMirrorFilterRuleResponse,

    -- * Response Lenses
    dtmfrrrsTrafficMirrorFilterRuleId,
    dtmfrrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteTrafficMirrorFilterRule' smart constructor.
data DeleteTrafficMirrorFilterRule = DeleteTrafficMirrorFilterRule'
  { _dtmfrDryRun ::
      !( Maybe
           Bool
       ),
    _dtmfrTrafficMirrorFilterRuleId ::
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

-- | Creates a value of 'DeleteTrafficMirrorFilterRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtmfrDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtmfrTrafficMirrorFilterRuleId' - The ID of the Traffic Mirror rule.
deleteTrafficMirrorFilterRule ::
  -- | 'dtmfrTrafficMirrorFilterRuleId'
  Text ->
  DeleteTrafficMirrorFilterRule
deleteTrafficMirrorFilterRule
  pTrafficMirrorFilterRuleId_ =
    DeleteTrafficMirrorFilterRule'
      { _dtmfrDryRun =
          Nothing,
        _dtmfrTrafficMirrorFilterRuleId =
          pTrafficMirrorFilterRuleId_
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtmfrDryRun :: Lens' DeleteTrafficMirrorFilterRule (Maybe Bool)
dtmfrDryRun = lens _dtmfrDryRun (\s a -> s {_dtmfrDryRun = a})

-- | The ID of the Traffic Mirror rule.
dtmfrTrafficMirrorFilterRuleId :: Lens' DeleteTrafficMirrorFilterRule Text
dtmfrTrafficMirrorFilterRuleId = lens _dtmfrTrafficMirrorFilterRuleId (\s a -> s {_dtmfrTrafficMirrorFilterRuleId = a})

instance AWSRequest DeleteTrafficMirrorFilterRule where
  type
    Rs DeleteTrafficMirrorFilterRule =
      DeleteTrafficMirrorFilterRuleResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeleteTrafficMirrorFilterRuleResponse'
            <$> (x .@? "trafficMirrorFilterRuleId")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteTrafficMirrorFilterRule

instance NFData DeleteTrafficMirrorFilterRule

instance ToHeaders DeleteTrafficMirrorFilterRule where
  toHeaders = const mempty

instance ToPath DeleteTrafficMirrorFilterRule where
  toPath = const "/"

instance ToQuery DeleteTrafficMirrorFilterRule where
  toQuery DeleteTrafficMirrorFilterRule' {..} =
    mconcat
      [ "Action"
          =: ("DeleteTrafficMirrorFilterRule" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dtmfrDryRun,
        "TrafficMirrorFilterRuleId"
          =: _dtmfrTrafficMirrorFilterRuleId
      ]

-- | /See:/ 'deleteTrafficMirrorFilterRuleResponse' smart constructor.
data DeleteTrafficMirrorFilterRuleResponse = DeleteTrafficMirrorFilterRuleResponse'
  { _dtmfrrrsTrafficMirrorFilterRuleId ::
      !( Maybe
           Text
       ),
    _dtmfrrrsResponseStatus ::
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

-- | Creates a value of 'DeleteTrafficMirrorFilterRuleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtmfrrrsTrafficMirrorFilterRuleId' - The ID of the deleted Traffic Mirror rule.
--
-- * 'dtmfrrrsResponseStatus' - -- | The response status code.
deleteTrafficMirrorFilterRuleResponse ::
  -- | 'dtmfrrrsResponseStatus'
  Int ->
  DeleteTrafficMirrorFilterRuleResponse
deleteTrafficMirrorFilterRuleResponse
  pResponseStatus_ =
    DeleteTrafficMirrorFilterRuleResponse'
      { _dtmfrrrsTrafficMirrorFilterRuleId =
          Nothing,
        _dtmfrrrsResponseStatus =
          pResponseStatus_
      }

-- | The ID of the deleted Traffic Mirror rule.
dtmfrrrsTrafficMirrorFilterRuleId :: Lens' DeleteTrafficMirrorFilterRuleResponse (Maybe Text)
dtmfrrrsTrafficMirrorFilterRuleId = lens _dtmfrrrsTrafficMirrorFilterRuleId (\s a -> s {_dtmfrrrsTrafficMirrorFilterRuleId = a})

-- | -- | The response status code.
dtmfrrrsResponseStatus :: Lens' DeleteTrafficMirrorFilterRuleResponse Int
dtmfrrrsResponseStatus = lens _dtmfrrrsResponseStatus (\s a -> s {_dtmfrrrsResponseStatus = a})

instance NFData DeleteTrafficMirrorFilterRuleResponse
