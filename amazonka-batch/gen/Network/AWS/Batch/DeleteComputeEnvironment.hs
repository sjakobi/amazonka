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
-- Module      : Network.AWS.Batch.DeleteComputeEnvironment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an AWS Batch compute environment.
--
--
-- Before you can delete a compute environment, you must set its state to @DISABLED@ with the 'UpdateComputeEnvironment' API operation and disassociate it from any job queues with the 'UpdateJobQueue' API operation. Compute environments that use AWS Fargate resources must terminate all active jobs on that compute environment before deleting the compute environment. If this isn't done, the compute environment will end up in an invalid state.
module Network.AWS.Batch.DeleteComputeEnvironment
  ( -- * Creating a Request
    deleteComputeEnvironment,
    DeleteComputeEnvironment,

    -- * Request Lenses
    dceComputeEnvironment,

    -- * Destructuring the Response
    deleteComputeEnvironmentResponse,
    DeleteComputeEnvironmentResponse,

    -- * Response Lenses
    drsResponseStatus,
  )
where

import Network.AWS.Batch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for @DeleteComputeEnvironment@ .
--
--
--
-- /See:/ 'deleteComputeEnvironment' smart constructor.
newtype DeleteComputeEnvironment = DeleteComputeEnvironment'
  { _dceComputeEnvironment ::
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

-- | Creates a value of 'DeleteComputeEnvironment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dceComputeEnvironment' - The name or Amazon Resource Name (ARN) of the compute environment to delete.
deleteComputeEnvironment ::
  -- | 'dceComputeEnvironment'
  Text ->
  DeleteComputeEnvironment
deleteComputeEnvironment pComputeEnvironment_ =
  DeleteComputeEnvironment'
    { _dceComputeEnvironment =
        pComputeEnvironment_
    }

-- | The name or Amazon Resource Name (ARN) of the compute environment to delete.
dceComputeEnvironment :: Lens' DeleteComputeEnvironment Text
dceComputeEnvironment = lens _dceComputeEnvironment (\s a -> s {_dceComputeEnvironment = a})

instance AWSRequest DeleteComputeEnvironment where
  type
    Rs DeleteComputeEnvironment =
      DeleteComputeEnvironmentResponse
  request = postJSON batch
  response =
    receiveEmpty
      ( \s h x ->
          DeleteComputeEnvironmentResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeleteComputeEnvironment

instance NFData DeleteComputeEnvironment

instance ToHeaders DeleteComputeEnvironment where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteComputeEnvironment where
  toJSON DeleteComputeEnvironment' {..} =
    object
      ( catMaybes
          [ Just
              ("computeEnvironment" .= _dceComputeEnvironment)
          ]
      )

instance ToPath DeleteComputeEnvironment where
  toPath = const "/v1/deletecomputeenvironment"

instance ToQuery DeleteComputeEnvironment where
  toQuery = const mempty

-- | /See:/ 'deleteComputeEnvironmentResponse' smart constructor.
newtype DeleteComputeEnvironmentResponse = DeleteComputeEnvironmentResponse'
  { _drsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteComputeEnvironmentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsResponseStatus' - -- | The response status code.
deleteComputeEnvironmentResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DeleteComputeEnvironmentResponse
deleteComputeEnvironmentResponse pResponseStatus_ =
  DeleteComputeEnvironmentResponse'
    { _drsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
drsResponseStatus :: Lens' DeleteComputeEnvironmentResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DeleteComputeEnvironmentResponse
