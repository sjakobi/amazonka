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
-- Module      : Network.AWS.IoT.AssociateTargetsWithJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates a group with a continuous job. The following criteria must be met:
--
--
--     * The job must have been created with the @targetSelection@ field set to "CONTINUOUS".
--
--     * The job status must currently be "IN_PROGRESS".
--
--     * The total number of targets associated with a job must not exceed 100.
module Network.AWS.IoT.AssociateTargetsWithJob
  ( -- * Creating a Request
    associateTargetsWithJob,
    AssociateTargetsWithJob,

    -- * Request Lenses
    atwjNamespaceId,
    atwjComment,
    atwjTargets,
    atwjJobId,

    -- * Destructuring the Response
    associateTargetsWithJobResponse,
    AssociateTargetsWithJobResponse,

    -- * Response Lenses
    atwjrrsJobARN,
    atwjrrsDescription,
    atwjrrsJobId,
    atwjrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'associateTargetsWithJob' smart constructor.
data AssociateTargetsWithJob = AssociateTargetsWithJob'
  { _atwjNamespaceId ::
      !(Maybe Text),
    _atwjComment ::
      !(Maybe Text),
    _atwjTargets ::
      !(List1 Text),
    _atwjJobId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AssociateTargetsWithJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atwjNamespaceId' - The namespace used to indicate that a job is a customer-managed job. When you specify a value for this parameter, AWS IoT Core sends jobs notifications to MQTT topics that contain the value in the following format. @> aws/things//THING_NAME/ /jobs//JOB_ID/ /notify-namespace-/NAMESPACE_ID/ /@
--
-- * 'atwjComment' - An optional comment string describing why the job was associated with the targets.
--
-- * 'atwjTargets' - A list of thing group ARNs that define the targets of the job.
--
-- * 'atwjJobId' - The unique identifier you assigned to this job when it was created.
associateTargetsWithJob ::
  -- | 'atwjTargets'
  NonEmpty Text ->
  -- | 'atwjJobId'
  Text ->
  AssociateTargetsWithJob
associateTargetsWithJob pTargets_ pJobId_ =
  AssociateTargetsWithJob'
    { _atwjNamespaceId =
        Nothing,
      _atwjComment = Nothing,
      _atwjTargets = _List1 # pTargets_,
      _atwjJobId = pJobId_
    }

-- | The namespace used to indicate that a job is a customer-managed job. When you specify a value for this parameter, AWS IoT Core sends jobs notifications to MQTT topics that contain the value in the following format. @> aws/things//THING_NAME/ /jobs//JOB_ID/ /notify-namespace-/NAMESPACE_ID/ /@
atwjNamespaceId :: Lens' AssociateTargetsWithJob (Maybe Text)
atwjNamespaceId = lens _atwjNamespaceId (\s a -> s {_atwjNamespaceId = a})

-- | An optional comment string describing why the job was associated with the targets.
atwjComment :: Lens' AssociateTargetsWithJob (Maybe Text)
atwjComment = lens _atwjComment (\s a -> s {_atwjComment = a})

-- | A list of thing group ARNs that define the targets of the job.
atwjTargets :: Lens' AssociateTargetsWithJob (NonEmpty Text)
atwjTargets = lens _atwjTargets (\s a -> s {_atwjTargets = a}) . _List1

-- | The unique identifier you assigned to this job when it was created.
atwjJobId :: Lens' AssociateTargetsWithJob Text
atwjJobId = lens _atwjJobId (\s a -> s {_atwjJobId = a})

instance AWSRequest AssociateTargetsWithJob where
  type
    Rs AssociateTargetsWithJob =
      AssociateTargetsWithJobResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          AssociateTargetsWithJobResponse'
            <$> (x .?> "jobArn")
            <*> (x .?> "description")
            <*> (x .?> "jobId")
            <*> (pure (fromEnum s))
      )

instance Hashable AssociateTargetsWithJob

instance NFData AssociateTargetsWithJob

instance ToHeaders AssociateTargetsWithJob where
  toHeaders = const mempty

instance ToJSON AssociateTargetsWithJob where
  toJSON AssociateTargetsWithJob' {..} =
    object
      ( catMaybes
          [ ("comment" .=) <$> _atwjComment,
            Just ("targets" .= _atwjTargets)
          ]
      )

instance ToPath AssociateTargetsWithJob where
  toPath AssociateTargetsWithJob' {..} =
    mconcat ["/jobs/", toBS _atwjJobId, "/targets"]

instance ToQuery AssociateTargetsWithJob where
  toQuery AssociateTargetsWithJob' {..} =
    mconcat ["namespaceId" =: _atwjNamespaceId]

-- | /See:/ 'associateTargetsWithJobResponse' smart constructor.
data AssociateTargetsWithJobResponse = AssociateTargetsWithJobResponse'
  { _atwjrrsJobARN ::
      !( Maybe
           Text
       ),
    _atwjrrsDescription ::
      !( Maybe
           Text
       ),
    _atwjrrsJobId ::
      !( Maybe
           Text
       ),
    _atwjrrsResponseStatus ::
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

-- | Creates a value of 'AssociateTargetsWithJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atwjrrsJobARN' - An ARN identifying the job.
--
-- * 'atwjrrsDescription' - A short text description of the job.
--
-- * 'atwjrrsJobId' - The unique identifier you assigned to this job when it was created.
--
-- * 'atwjrrsResponseStatus' - -- | The response status code.
associateTargetsWithJobResponse ::
  -- | 'atwjrrsResponseStatus'
  Int ->
  AssociateTargetsWithJobResponse
associateTargetsWithJobResponse pResponseStatus_ =
  AssociateTargetsWithJobResponse'
    { _atwjrrsJobARN =
        Nothing,
      _atwjrrsDescription = Nothing,
      _atwjrrsJobId = Nothing,
      _atwjrrsResponseStatus = pResponseStatus_
    }

-- | An ARN identifying the job.
atwjrrsJobARN :: Lens' AssociateTargetsWithJobResponse (Maybe Text)
atwjrrsJobARN = lens _atwjrrsJobARN (\s a -> s {_atwjrrsJobARN = a})

-- | A short text description of the job.
atwjrrsDescription :: Lens' AssociateTargetsWithJobResponse (Maybe Text)
atwjrrsDescription = lens _atwjrrsDescription (\s a -> s {_atwjrrsDescription = a})

-- | The unique identifier you assigned to this job when it was created.
atwjrrsJobId :: Lens' AssociateTargetsWithJobResponse (Maybe Text)
atwjrrsJobId = lens _atwjrrsJobId (\s a -> s {_atwjrrsJobId = a})

-- | -- | The response status code.
atwjrrsResponseStatus :: Lens' AssociateTargetsWithJobResponse Int
atwjrrsResponseStatus = lens _atwjrrsResponseStatus (\s a -> s {_atwjrrsResponseStatus = a})

instance NFData AssociateTargetsWithJobResponse
