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
-- Module      : Network.AWS.ECS.SubmitContainerStateChange
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sent to acknowledge that a container changed states.
module Network.AWS.ECS.SubmitContainerStateChange
  ( -- * Creating a Request
    submitContainerStateChange,
    SubmitContainerStateChange,

    -- * Request Lenses
    scscStatus,
    scscRuntimeId,
    scscTask,
    scscExitCode,
    scscNetworkBindings,
    scscReason,
    scscContainerName,
    scscCluster,

    -- * Destructuring the Response
    submitContainerStateChangeResponse,
    SubmitContainerStateChangeResponse,

    -- * Response Lenses
    scscrrsAcknowledgment,
    scscrrsResponseStatus,
  )
where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'submitContainerStateChange' smart constructor.
data SubmitContainerStateChange = SubmitContainerStateChange'
  { _scscStatus ::
      !(Maybe Text),
    _scscRuntimeId ::
      !(Maybe Text),
    _scscTask ::
      !(Maybe Text),
    _scscExitCode ::
      !(Maybe Int),
    _scscNetworkBindings ::
      !( Maybe
           [NetworkBinding]
       ),
    _scscReason ::
      !(Maybe Text),
    _scscContainerName ::
      !(Maybe Text),
    _scscCluster ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SubmitContainerStateChange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scscStatus' - The status of the state change request.
--
-- * 'scscRuntimeId' - The ID of the Docker container.
--
-- * 'scscTask' - The task ID or full Amazon Resource Name (ARN) of the task that hosts the container.
--
-- * 'scscExitCode' - The exit code returned for the state change request.
--
-- * 'scscNetworkBindings' - The network bindings of the container.
--
-- * 'scscReason' - The reason for the state change request.
--
-- * 'scscContainerName' - The name of the container.
--
-- * 'scscCluster' - The short name or full ARN of the cluster that hosts the container.
submitContainerStateChange ::
  SubmitContainerStateChange
submitContainerStateChange =
  SubmitContainerStateChange'
    { _scscStatus = Nothing,
      _scscRuntimeId = Nothing,
      _scscTask = Nothing,
      _scscExitCode = Nothing,
      _scscNetworkBindings = Nothing,
      _scscReason = Nothing,
      _scscContainerName = Nothing,
      _scscCluster = Nothing
    }

-- | The status of the state change request.
scscStatus :: Lens' SubmitContainerStateChange (Maybe Text)
scscStatus = lens _scscStatus (\s a -> s {_scscStatus = a})

-- | The ID of the Docker container.
scscRuntimeId :: Lens' SubmitContainerStateChange (Maybe Text)
scscRuntimeId = lens _scscRuntimeId (\s a -> s {_scscRuntimeId = a})

-- | The task ID or full Amazon Resource Name (ARN) of the task that hosts the container.
scscTask :: Lens' SubmitContainerStateChange (Maybe Text)
scscTask = lens _scscTask (\s a -> s {_scscTask = a})

-- | The exit code returned for the state change request.
scscExitCode :: Lens' SubmitContainerStateChange (Maybe Int)
scscExitCode = lens _scscExitCode (\s a -> s {_scscExitCode = a})

-- | The network bindings of the container.
scscNetworkBindings :: Lens' SubmitContainerStateChange [NetworkBinding]
scscNetworkBindings = lens _scscNetworkBindings (\s a -> s {_scscNetworkBindings = a}) . _Default . _Coerce

-- | The reason for the state change request.
scscReason :: Lens' SubmitContainerStateChange (Maybe Text)
scscReason = lens _scscReason (\s a -> s {_scscReason = a})

-- | The name of the container.
scscContainerName :: Lens' SubmitContainerStateChange (Maybe Text)
scscContainerName = lens _scscContainerName (\s a -> s {_scscContainerName = a})

-- | The short name or full ARN of the cluster that hosts the container.
scscCluster :: Lens' SubmitContainerStateChange (Maybe Text)
scscCluster = lens _scscCluster (\s a -> s {_scscCluster = a})

instance AWSRequest SubmitContainerStateChange where
  type
    Rs SubmitContainerStateChange =
      SubmitContainerStateChangeResponse
  request = postJSON ecs
  response =
    receiveJSON
      ( \s h x ->
          SubmitContainerStateChangeResponse'
            <$> (x .?> "acknowledgment") <*> (pure (fromEnum s))
      )

instance Hashable SubmitContainerStateChange

instance NFData SubmitContainerStateChange

instance ToHeaders SubmitContainerStateChange where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerServiceV20141113.SubmitContainerStateChange" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SubmitContainerStateChange where
  toJSON SubmitContainerStateChange' {..} =
    object
      ( catMaybes
          [ ("status" .=) <$> _scscStatus,
            ("runtimeId" .=) <$> _scscRuntimeId,
            ("task" .=) <$> _scscTask,
            ("exitCode" .=) <$> _scscExitCode,
            ("networkBindings" .=) <$> _scscNetworkBindings,
            ("reason" .=) <$> _scscReason,
            ("containerName" .=) <$> _scscContainerName,
            ("cluster" .=) <$> _scscCluster
          ]
      )

instance ToPath SubmitContainerStateChange where
  toPath = const "/"

instance ToQuery SubmitContainerStateChange where
  toQuery = const mempty

-- | /See:/ 'submitContainerStateChangeResponse' smart constructor.
data SubmitContainerStateChangeResponse = SubmitContainerStateChangeResponse'
  { _scscrrsAcknowledgment ::
      !( Maybe
           Text
       ),
    _scscrrsResponseStatus ::
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

-- | Creates a value of 'SubmitContainerStateChangeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scscrrsAcknowledgment' - Acknowledgement of the state change.
--
-- * 'scscrrsResponseStatus' - -- | The response status code.
submitContainerStateChangeResponse ::
  -- | 'scscrrsResponseStatus'
  Int ->
  SubmitContainerStateChangeResponse
submitContainerStateChangeResponse pResponseStatus_ =
  SubmitContainerStateChangeResponse'
    { _scscrrsAcknowledgment =
        Nothing,
      _scscrrsResponseStatus =
        pResponseStatus_
    }

-- | Acknowledgement of the state change.
scscrrsAcknowledgment :: Lens' SubmitContainerStateChangeResponse (Maybe Text)
scscrrsAcknowledgment = lens _scscrrsAcknowledgment (\s a -> s {_scscrrsAcknowledgment = a})

-- | -- | The response status code.
scscrrsResponseStatus :: Lens' SubmitContainerStateChangeResponse Int
scscrrsResponseStatus = lens _scscrrsResponseStatus (\s a -> s {_scscrrsResponseStatus = a})

instance NFData SubmitContainerStateChangeResponse
