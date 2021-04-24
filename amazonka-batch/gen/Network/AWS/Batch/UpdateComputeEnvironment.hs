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
-- Module      : Network.AWS.Batch.UpdateComputeEnvironment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an AWS Batch compute environment.
module Network.AWS.Batch.UpdateComputeEnvironment
  ( -- * Creating a Request
    updateComputeEnvironment,
    UpdateComputeEnvironment,

    -- * Request Lenses
    uceServiceRole,
    uceState,
    uceComputeResources,
    uceComputeEnvironment,

    -- * Destructuring the Response
    updateComputeEnvironmentResponse,
    UpdateComputeEnvironmentResponse,

    -- * Response Lenses
    ucerrsComputeEnvironmentName,
    ucerrsComputeEnvironmentARN,
    ucerrsResponseStatus,
  )
where

import Network.AWS.Batch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for @UpdateComputeEnvironment@ .
--
--
--
-- /See:/ 'updateComputeEnvironment' smart constructor.
data UpdateComputeEnvironment = UpdateComputeEnvironment'
  { _uceServiceRole ::
      !(Maybe Text),
    _uceState ::
      !(Maybe CEState),
    _uceComputeResources ::
      !( Maybe
           ComputeResourceUpdate
       ),
    _uceComputeEnvironment ::
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

-- | Creates a value of 'UpdateComputeEnvironment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uceServiceRole' - The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/service_IAM_role.html AWS Batch service IAM role> in the /AWS Batch User Guide/ . If your specified role has a path other than @/@ , then you must either specify the full role ARN (this is recommended) or prefix the role name with the path.
--
-- * 'uceState' - The state of the compute environment. Compute environments in the @ENABLED@ state can accept jobs from a queue and scale in or out automatically based on the workload demand of its associated queues. If the state is @ENABLED@ , then the AWS Batch scheduler can attempt to place jobs from an associated job queue on the compute resources within the environment. If the compute environment is managed, then it can scale its instances out or in automatically, based on the job queue demand. If the state is @DISABLED@ , then the AWS Batch scheduler doesn't attempt to place jobs within the environment. Jobs in a @STARTING@ or @RUNNING@ state continue to progress normally. Managed compute environments in the @DISABLED@ state don't scale out. However, they scale in to @minvCpus@ value after instances become idle.
--
-- * 'uceComputeResources' - Details of the compute resources managed by the compute environment. Required for a managed compute environment. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html Compute Environments> in the /AWS Batch User Guide/ .
--
-- * 'uceComputeEnvironment' - The name or full Amazon Resource Name (ARN) of the compute environment to update.
updateComputeEnvironment ::
  -- | 'uceComputeEnvironment'
  Text ->
  UpdateComputeEnvironment
updateComputeEnvironment pComputeEnvironment_ =
  UpdateComputeEnvironment'
    { _uceServiceRole =
        Nothing,
      _uceState = Nothing,
      _uceComputeResources = Nothing,
      _uceComputeEnvironment = pComputeEnvironment_
    }

-- | The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/service_IAM_role.html AWS Batch service IAM role> in the /AWS Batch User Guide/ . If your specified role has a path other than @/@ , then you must either specify the full role ARN (this is recommended) or prefix the role name with the path.
uceServiceRole :: Lens' UpdateComputeEnvironment (Maybe Text)
uceServiceRole = lens _uceServiceRole (\s a -> s {_uceServiceRole = a})

-- | The state of the compute environment. Compute environments in the @ENABLED@ state can accept jobs from a queue and scale in or out automatically based on the workload demand of its associated queues. If the state is @ENABLED@ , then the AWS Batch scheduler can attempt to place jobs from an associated job queue on the compute resources within the environment. If the compute environment is managed, then it can scale its instances out or in automatically, based on the job queue demand. If the state is @DISABLED@ , then the AWS Batch scheduler doesn't attempt to place jobs within the environment. Jobs in a @STARTING@ or @RUNNING@ state continue to progress normally. Managed compute environments in the @DISABLED@ state don't scale out. However, they scale in to @minvCpus@ value after instances become idle.
uceState :: Lens' UpdateComputeEnvironment (Maybe CEState)
uceState = lens _uceState (\s a -> s {_uceState = a})

-- | Details of the compute resources managed by the compute environment. Required for a managed compute environment. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html Compute Environments> in the /AWS Batch User Guide/ .
uceComputeResources :: Lens' UpdateComputeEnvironment (Maybe ComputeResourceUpdate)
uceComputeResources = lens _uceComputeResources (\s a -> s {_uceComputeResources = a})

-- | The name or full Amazon Resource Name (ARN) of the compute environment to update.
uceComputeEnvironment :: Lens' UpdateComputeEnvironment Text
uceComputeEnvironment = lens _uceComputeEnvironment (\s a -> s {_uceComputeEnvironment = a})

instance AWSRequest UpdateComputeEnvironment where
  type
    Rs UpdateComputeEnvironment =
      UpdateComputeEnvironmentResponse
  request = postJSON batch
  response =
    receiveJSON
      ( \s h x ->
          UpdateComputeEnvironmentResponse'
            <$> (x .?> "computeEnvironmentName")
            <*> (x .?> "computeEnvironmentArn")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateComputeEnvironment

instance NFData UpdateComputeEnvironment

instance ToHeaders UpdateComputeEnvironment where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateComputeEnvironment where
  toJSON UpdateComputeEnvironment' {..} =
    object
      ( catMaybes
          [ ("serviceRole" .=) <$> _uceServiceRole,
            ("state" .=) <$> _uceState,
            ("computeResources" .=) <$> _uceComputeResources,
            Just
              ("computeEnvironment" .= _uceComputeEnvironment)
          ]
      )

instance ToPath UpdateComputeEnvironment where
  toPath = const "/v1/updatecomputeenvironment"

instance ToQuery UpdateComputeEnvironment where
  toQuery = const mempty

-- | /See:/ 'updateComputeEnvironmentResponse' smart constructor.
data UpdateComputeEnvironmentResponse = UpdateComputeEnvironmentResponse'
  { _ucerrsComputeEnvironmentName ::
      !( Maybe
           Text
       ),
    _ucerrsComputeEnvironmentARN ::
      !( Maybe
           Text
       ),
    _ucerrsResponseStatus ::
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

-- | Creates a value of 'UpdateComputeEnvironmentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucerrsComputeEnvironmentName' - The name of the compute environment. Up to 128 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.
--
-- * 'ucerrsComputeEnvironmentARN' - The Amazon Resource Name (ARN) of the compute environment.
--
-- * 'ucerrsResponseStatus' - -- | The response status code.
updateComputeEnvironmentResponse ::
  -- | 'ucerrsResponseStatus'
  Int ->
  UpdateComputeEnvironmentResponse
updateComputeEnvironmentResponse pResponseStatus_ =
  UpdateComputeEnvironmentResponse'
    { _ucerrsComputeEnvironmentName =
        Nothing,
      _ucerrsComputeEnvironmentARN = Nothing,
      _ucerrsResponseStatus = pResponseStatus_
    }

-- | The name of the compute environment. Up to 128 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.
ucerrsComputeEnvironmentName :: Lens' UpdateComputeEnvironmentResponse (Maybe Text)
ucerrsComputeEnvironmentName = lens _ucerrsComputeEnvironmentName (\s a -> s {_ucerrsComputeEnvironmentName = a})

-- | The Amazon Resource Name (ARN) of the compute environment.
ucerrsComputeEnvironmentARN :: Lens' UpdateComputeEnvironmentResponse (Maybe Text)
ucerrsComputeEnvironmentARN = lens _ucerrsComputeEnvironmentARN (\s a -> s {_ucerrsComputeEnvironmentARN = a})

-- | -- | The response status code.
ucerrsResponseStatus :: Lens' UpdateComputeEnvironmentResponse Int
ucerrsResponseStatus = lens _ucerrsResponseStatus (\s a -> s {_ucerrsResponseStatus = a})

instance NFData UpdateComputeEnvironmentResponse
