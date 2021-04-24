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
-- Module      : Network.AWS.AutoScaling.CancelInstanceRefresh
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels an instance refresh operation in progress. Cancellation does not roll back any replacements that have already been completed, but it prevents new replacements from being started.
--
--
-- For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html Replacing Auto Scaling Instances Based on an Instance Refresh> .
module Network.AWS.AutoScaling.CancelInstanceRefresh
  ( -- * Creating a Request
    cancelInstanceRefresh,
    CancelInstanceRefresh,

    -- * Request Lenses
    cirAutoScalingGroupName,

    -- * Destructuring the Response
    cancelInstanceRefreshResponse,
    CancelInstanceRefreshResponse,

    -- * Response Lenses
    cirrrsInstanceRefreshId,
    cirrrsResponseStatus,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'cancelInstanceRefresh' smart constructor.
newtype CancelInstanceRefresh = CancelInstanceRefresh'
  { _cirAutoScalingGroupName ::
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

-- | Creates a value of 'CancelInstanceRefresh' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirAutoScalingGroupName' - The name of the Auto Scaling group.
cancelInstanceRefresh ::
  -- | 'cirAutoScalingGroupName'
  Text ->
  CancelInstanceRefresh
cancelInstanceRefresh pAutoScalingGroupName_ =
  CancelInstanceRefresh'
    { _cirAutoScalingGroupName =
        pAutoScalingGroupName_
    }

-- | The name of the Auto Scaling group.
cirAutoScalingGroupName :: Lens' CancelInstanceRefresh Text
cirAutoScalingGroupName = lens _cirAutoScalingGroupName (\s a -> s {_cirAutoScalingGroupName = a})

instance AWSRequest CancelInstanceRefresh where
  type
    Rs CancelInstanceRefresh =
      CancelInstanceRefreshResponse
  request = postQuery autoScaling
  response =
    receiveXMLWrapper
      "CancelInstanceRefreshResult"
      ( \s h x ->
          CancelInstanceRefreshResponse'
            <$> (x .@? "InstanceRefreshId") <*> (pure (fromEnum s))
      )

instance Hashable CancelInstanceRefresh

instance NFData CancelInstanceRefresh

instance ToHeaders CancelInstanceRefresh where
  toHeaders = const mempty

instance ToPath CancelInstanceRefresh where
  toPath = const "/"

instance ToQuery CancelInstanceRefresh where
  toQuery CancelInstanceRefresh' {..} =
    mconcat
      [ "Action" =: ("CancelInstanceRefresh" :: ByteString),
        "Version" =: ("2011-01-01" :: ByteString),
        "AutoScalingGroupName" =: _cirAutoScalingGroupName
      ]

-- | /See:/ 'cancelInstanceRefreshResponse' smart constructor.
data CancelInstanceRefreshResponse = CancelInstanceRefreshResponse'
  { _cirrrsInstanceRefreshId ::
      !( Maybe
           Text
       ),
    _cirrrsResponseStatus ::
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

-- | Creates a value of 'CancelInstanceRefreshResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirrrsInstanceRefreshId' - The instance refresh ID.
--
-- * 'cirrrsResponseStatus' - -- | The response status code.
cancelInstanceRefreshResponse ::
  -- | 'cirrrsResponseStatus'
  Int ->
  CancelInstanceRefreshResponse
cancelInstanceRefreshResponse pResponseStatus_ =
  CancelInstanceRefreshResponse'
    { _cirrrsInstanceRefreshId =
        Nothing,
      _cirrrsResponseStatus = pResponseStatus_
    }

-- | The instance refresh ID.
cirrrsInstanceRefreshId :: Lens' CancelInstanceRefreshResponse (Maybe Text)
cirrrsInstanceRefreshId = lens _cirrrsInstanceRefreshId (\s a -> s {_cirrrsInstanceRefreshId = a})

-- | -- | The response status code.
cirrrsResponseStatus :: Lens' CancelInstanceRefreshResponse Int
cirrrsResponseStatus = lens _cirrrsResponseStatus (\s a -> s {_cirrrsResponseStatus = a})

instance NFData CancelInstanceRefreshResponse
