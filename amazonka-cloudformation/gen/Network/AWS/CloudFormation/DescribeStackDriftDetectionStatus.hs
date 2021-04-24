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
-- Module      : Network.AWS.CloudFormation.DescribeStackDriftDetectionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a stack drift detection operation. A stack drift detection operation detects whether a stack's actual configuration differs, or has /drifted/ , from it's expected configuration, as defined in the stack template and any values specified as template parameters. A stack is considered to have drifted if one or more of its resources have drifted. For more information on stack and resource drift, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html Detecting Unregulated Configuration Changes to Stacks and Resources> .
--
--
-- Use 'DetectStackDrift' to initiate a stack drift detection operation. @DetectStackDrift@ returns a @StackDriftDetectionId@ you can use to monitor the progress of the operation using @DescribeStackDriftDetectionStatus@ . Once the drift detection operation has completed, use 'DescribeStackResourceDrifts' to return drift information about the stack and its resources.
module Network.AWS.CloudFormation.DescribeStackDriftDetectionStatus
  ( -- * Creating a Request
    describeStackDriftDetectionStatus,
    DescribeStackDriftDetectionStatus,

    -- * Request Lenses
    dsddsStackDriftDetectionId,

    -- * Destructuring the Response
    describeStackDriftDetectionStatusResponse,
    DescribeStackDriftDetectionStatusResponse,

    -- * Response Lenses
    dsddsrrsStackDriftStatus,
    dsddsrrsDetectionStatusReason,
    dsddsrrsDriftedStackResourceCount,
    dsddsrrsResponseStatus,
    dsddsrrsStackId,
    dsddsrrsStackDriftDetectionId,
    dsddsrrsDetectionStatus,
    dsddsrrsTimestamp,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeStackDriftDetectionStatus' smart constructor.
newtype DescribeStackDriftDetectionStatus = DescribeStackDriftDetectionStatus'
  { _dsddsStackDriftDetectionId ::
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

-- | Creates a value of 'DescribeStackDriftDetectionStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsddsStackDriftDetectionId' - The ID of the drift detection results of this operation.  AWS CloudFormation generates new results, with a new drift detection ID, each time this operation is run. However, the number of drift results AWS CloudFormation retains for any given stack, and for how long, may vary.
describeStackDriftDetectionStatus ::
  -- | 'dsddsStackDriftDetectionId'
  Text ->
  DescribeStackDriftDetectionStatus
describeStackDriftDetectionStatus
  pStackDriftDetectionId_ =
    DescribeStackDriftDetectionStatus'
      { _dsddsStackDriftDetectionId =
          pStackDriftDetectionId_
      }

-- | The ID of the drift detection results of this operation.  AWS CloudFormation generates new results, with a new drift detection ID, each time this operation is run. However, the number of drift results AWS CloudFormation retains for any given stack, and for how long, may vary.
dsddsStackDriftDetectionId :: Lens' DescribeStackDriftDetectionStatus Text
dsddsStackDriftDetectionId = lens _dsddsStackDriftDetectionId (\s a -> s {_dsddsStackDriftDetectionId = a})

instance AWSRequest DescribeStackDriftDetectionStatus where
  type
    Rs DescribeStackDriftDetectionStatus =
      DescribeStackDriftDetectionStatusResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "DescribeStackDriftDetectionStatusResult"
      ( \s h x ->
          DescribeStackDriftDetectionStatusResponse'
            <$> (x .@? "StackDriftStatus")
            <*> (x .@? "DetectionStatusReason")
            <*> (x .@? "DriftedStackResourceCount")
            <*> (pure (fromEnum s))
            <*> (x .@ "StackId")
            <*> (x .@ "StackDriftDetectionId")
            <*> (x .@ "DetectionStatus")
            <*> (x .@ "Timestamp")
      )

instance Hashable DescribeStackDriftDetectionStatus

instance NFData DescribeStackDriftDetectionStatus

instance ToHeaders DescribeStackDriftDetectionStatus where
  toHeaders = const mempty

instance ToPath DescribeStackDriftDetectionStatus where
  toPath = const "/"

instance ToQuery DescribeStackDriftDetectionStatus where
  toQuery DescribeStackDriftDetectionStatus' {..} =
    mconcat
      [ "Action"
          =: ("DescribeStackDriftDetectionStatus" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "StackDriftDetectionId"
          =: _dsddsStackDriftDetectionId
      ]

-- | /See:/ 'describeStackDriftDetectionStatusResponse' smart constructor.
data DescribeStackDriftDetectionStatusResponse = DescribeStackDriftDetectionStatusResponse'
  { _dsddsrrsStackDriftStatus ::
      !( Maybe
           StackDriftStatus
       ),
    _dsddsrrsDetectionStatusReason ::
      !( Maybe
           Text
       ),
    _dsddsrrsDriftedStackResourceCount ::
      !( Maybe
           Int
       ),
    _dsddsrrsResponseStatus ::
      !Int,
    _dsddsrrsStackId ::
      !Text,
    _dsddsrrsStackDriftDetectionId ::
      !Text,
    _dsddsrrsDetectionStatus ::
      !StackDriftDetectionStatus,
    _dsddsrrsTimestamp ::
      !ISO8601
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeStackDriftDetectionStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsddsrrsStackDriftStatus' - Status of the stack's actual configuration compared to its expected configuration.      * @DRIFTED@ : The stack differs from its expected template configuration. A stack is considered to have drifted if one or more of its resources have drifted.     * @NOT_CHECKED@ : AWS CloudFormation has not checked if the stack differs from its expected template configuration.     * @IN_SYNC@ : The stack's actual configuration matches its expected template configuration.     * @UNKNOWN@ : This value is reserved for future use.
--
-- * 'dsddsrrsDetectionStatusReason' - The reason the stack drift detection operation has its current status.
--
-- * 'dsddsrrsDriftedStackResourceCount' - Total number of stack resources that have drifted. This is NULL until the drift detection operation reaches a status of @DETECTION_COMPLETE@ . This value will be 0 for stacks whose drift status is @IN_SYNC@ .
--
-- * 'dsddsrrsResponseStatus' - -- | The response status code.
--
-- * 'dsddsrrsStackId' - The ID of the stack.
--
-- * 'dsddsrrsStackDriftDetectionId' - The ID of the drift detection results of this operation.  AWS CloudFormation generates new results, with a new drift detection ID, each time this operation is run. However, the number of reports AWS CloudFormation retains for any given stack, and for how long, may vary.
--
-- * 'dsddsrrsDetectionStatus' - The status of the stack drift detection operation.     * @DETECTION_COMPLETE@ : The stack drift detection operation has successfully completed for all resources in the stack that support drift detection. (Resources that do not currently support stack detection remain unchecked.) If you specified logical resource IDs for AWS CloudFormation to use as a filter for the stack drift detection operation, only the resources with those logical IDs are checked for drift.     * @DETECTION_FAILED@ : The stack drift detection operation has failed for at least one resource in the stack. Results will be available for resources on which AWS CloudFormation successfully completed drift detection.     * @DETECTION_IN_PROGRESS@ : The stack drift detection operation is currently in progress.
--
-- * 'dsddsrrsTimestamp' - Time at which the stack drift detection operation was initiated.
describeStackDriftDetectionStatusResponse ::
  -- | 'dsddsrrsResponseStatus'
  Int ->
  -- | 'dsddsrrsStackId'
  Text ->
  -- | 'dsddsrrsStackDriftDetectionId'
  Text ->
  -- | 'dsddsrrsDetectionStatus'
  StackDriftDetectionStatus ->
  -- | 'dsddsrrsTimestamp'
  UTCTime ->
  DescribeStackDriftDetectionStatusResponse
describeStackDriftDetectionStatusResponse
  pResponseStatus_
  pStackId_
  pStackDriftDetectionId_
  pDetectionStatus_
  pTimestamp_ =
    DescribeStackDriftDetectionStatusResponse'
      { _dsddsrrsStackDriftStatus =
          Nothing,
        _dsddsrrsDetectionStatusReason =
          Nothing,
        _dsddsrrsDriftedStackResourceCount =
          Nothing,
        _dsddsrrsResponseStatus =
          pResponseStatus_,
        _dsddsrrsStackId = pStackId_,
        _dsddsrrsStackDriftDetectionId =
          pStackDriftDetectionId_,
        _dsddsrrsDetectionStatus =
          pDetectionStatus_,
        _dsddsrrsTimestamp =
          _Time # pTimestamp_
      }

-- | Status of the stack's actual configuration compared to its expected configuration.      * @DRIFTED@ : The stack differs from its expected template configuration. A stack is considered to have drifted if one or more of its resources have drifted.     * @NOT_CHECKED@ : AWS CloudFormation has not checked if the stack differs from its expected template configuration.     * @IN_SYNC@ : The stack's actual configuration matches its expected template configuration.     * @UNKNOWN@ : This value is reserved for future use.
dsddsrrsStackDriftStatus :: Lens' DescribeStackDriftDetectionStatusResponse (Maybe StackDriftStatus)
dsddsrrsStackDriftStatus = lens _dsddsrrsStackDriftStatus (\s a -> s {_dsddsrrsStackDriftStatus = a})

-- | The reason the stack drift detection operation has its current status.
dsddsrrsDetectionStatusReason :: Lens' DescribeStackDriftDetectionStatusResponse (Maybe Text)
dsddsrrsDetectionStatusReason = lens _dsddsrrsDetectionStatusReason (\s a -> s {_dsddsrrsDetectionStatusReason = a})

-- | Total number of stack resources that have drifted. This is NULL until the drift detection operation reaches a status of @DETECTION_COMPLETE@ . This value will be 0 for stacks whose drift status is @IN_SYNC@ .
dsddsrrsDriftedStackResourceCount :: Lens' DescribeStackDriftDetectionStatusResponse (Maybe Int)
dsddsrrsDriftedStackResourceCount = lens _dsddsrrsDriftedStackResourceCount (\s a -> s {_dsddsrrsDriftedStackResourceCount = a})

-- | -- | The response status code.
dsddsrrsResponseStatus :: Lens' DescribeStackDriftDetectionStatusResponse Int
dsddsrrsResponseStatus = lens _dsddsrrsResponseStatus (\s a -> s {_dsddsrrsResponseStatus = a})

-- | The ID of the stack.
dsddsrrsStackId :: Lens' DescribeStackDriftDetectionStatusResponse Text
dsddsrrsStackId = lens _dsddsrrsStackId (\s a -> s {_dsddsrrsStackId = a})

-- | The ID of the drift detection results of this operation.  AWS CloudFormation generates new results, with a new drift detection ID, each time this operation is run. However, the number of reports AWS CloudFormation retains for any given stack, and for how long, may vary.
dsddsrrsStackDriftDetectionId :: Lens' DescribeStackDriftDetectionStatusResponse Text
dsddsrrsStackDriftDetectionId = lens _dsddsrrsStackDriftDetectionId (\s a -> s {_dsddsrrsStackDriftDetectionId = a})

-- | The status of the stack drift detection operation.     * @DETECTION_COMPLETE@ : The stack drift detection operation has successfully completed for all resources in the stack that support drift detection. (Resources that do not currently support stack detection remain unchecked.) If you specified logical resource IDs for AWS CloudFormation to use as a filter for the stack drift detection operation, only the resources with those logical IDs are checked for drift.     * @DETECTION_FAILED@ : The stack drift detection operation has failed for at least one resource in the stack. Results will be available for resources on which AWS CloudFormation successfully completed drift detection.     * @DETECTION_IN_PROGRESS@ : The stack drift detection operation is currently in progress.
dsddsrrsDetectionStatus :: Lens' DescribeStackDriftDetectionStatusResponse StackDriftDetectionStatus
dsddsrrsDetectionStatus = lens _dsddsrrsDetectionStatus (\s a -> s {_dsddsrrsDetectionStatus = a})

-- | Time at which the stack drift detection operation was initiated.
dsddsrrsTimestamp :: Lens' DescribeStackDriftDetectionStatusResponse UTCTime
dsddsrrsTimestamp = lens _dsddsrrsTimestamp (\s a -> s {_dsddsrrsTimestamp = a}) . _Time

instance
  NFData
    DescribeStackDriftDetectionStatusResponse
