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
-- Module      : Network.AWS.SWF.DescribeWorkflowType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the specified /workflow type/ . This includes configuration settings specified when the type was registered and other information such as creation date, current status, etc.
--
--
-- __Access Control__
--
-- You can use IAM policies to control this action's access to Amazon SWF resources as follows:
--
--     * Use a @Resource@ element with the domain name to limit the action to only specified domains.
--
--     * Use an @Action@ element to allow or deny permission to call this action.
--
--     * Constrain the following parameters by using a @Condition@ element with the appropriate keys.
--
--     * @workflowType.name@ : String constraint. The key is @swf:workflowType.name@ .
--
--     * @workflowType.version@ : String constraint. The key is @swf:workflowType.version@ .
--
--
--
--
--
-- If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's @cause@ parameter is set to @OPERATION_NOT_PERMITTED@ . For details and example IAM policies, see <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows> in the /Amazon SWF Developer Guide/ .
module Network.AWS.SWF.DescribeWorkflowType
  ( -- * Creating a Request
    describeWorkflowType,
    DescribeWorkflowType,

    -- * Request Lenses
    dDomain,
    dWorkflowType,

    -- * Destructuring the Response
    describeWorkflowTypeResponse,
    DescribeWorkflowTypeResponse,

    -- * Response Lenses
    dwtrrsResponseStatus,
    dwtrrsTypeInfo,
    dwtrrsConfiguration,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SWF.Types

-- | /See:/ 'describeWorkflowType' smart constructor.
data DescribeWorkflowType = DescribeWorkflowType'
  { _dDomain ::
      !Text,
    _dWorkflowType ::
      !WorkflowType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeWorkflowType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDomain' - The name of the domain in which this workflow type is registered.
--
-- * 'dWorkflowType' - The workflow type to describe.
describeWorkflowType ::
  -- | 'dDomain'
  Text ->
  -- | 'dWorkflowType'
  WorkflowType ->
  DescribeWorkflowType
describeWorkflowType pDomain_ pWorkflowType_ =
  DescribeWorkflowType'
    { _dDomain = pDomain_,
      _dWorkflowType = pWorkflowType_
    }

-- | The name of the domain in which this workflow type is registered.
dDomain :: Lens' DescribeWorkflowType Text
dDomain = lens _dDomain (\s a -> s {_dDomain = a})

-- | The workflow type to describe.
dWorkflowType :: Lens' DescribeWorkflowType WorkflowType
dWorkflowType = lens _dWorkflowType (\s a -> s {_dWorkflowType = a})

instance AWSRequest DescribeWorkflowType where
  type
    Rs DescribeWorkflowType =
      DescribeWorkflowTypeResponse
  request = postJSON swf
  response =
    receiveJSON
      ( \s h x ->
          DescribeWorkflowTypeResponse'
            <$> (pure (fromEnum s))
            <*> (x .:> "typeInfo")
            <*> (x .:> "configuration")
      )

instance Hashable DescribeWorkflowType

instance NFData DescribeWorkflowType

instance ToHeaders DescribeWorkflowType where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SimpleWorkflowService.DescribeWorkflowType" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON DescribeWorkflowType where
  toJSON DescribeWorkflowType' {..} =
    object
      ( catMaybes
          [ Just ("domain" .= _dDomain),
            Just ("workflowType" .= _dWorkflowType)
          ]
      )

instance ToPath DescribeWorkflowType where
  toPath = const "/"

instance ToQuery DescribeWorkflowType where
  toQuery = const mempty

-- | Contains details about a workflow type.
--
--
--
-- /See:/ 'describeWorkflowTypeResponse' smart constructor.
data DescribeWorkflowTypeResponse = DescribeWorkflowTypeResponse'
  { _dwtrrsResponseStatus ::
      !Int,
    _dwtrrsTypeInfo ::
      !WorkflowTypeInfo,
    _dwtrrsConfiguration ::
      !WorkflowTypeConfiguration
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeWorkflowTypeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dwtrrsResponseStatus' - -- | The response status code.
--
-- * 'dwtrrsTypeInfo' - General information about the workflow type. The status of the workflow type (returned in the WorkflowTypeInfo structure) can be one of the following.     * @REGISTERED@ – The type is registered and available. Workers supporting this type should be running.     * @DEPRECATED@ – The type was deprecated using 'DeprecateWorkflowType' , but is still in use. You should keep workers supporting this type running. You cannot create new workflow executions of this type.
--
-- * 'dwtrrsConfiguration' - Configuration settings of the workflow type registered through 'RegisterWorkflowType'
describeWorkflowTypeResponse ::
  -- | 'dwtrrsResponseStatus'
  Int ->
  -- | 'dwtrrsTypeInfo'
  WorkflowTypeInfo ->
  -- | 'dwtrrsConfiguration'
  WorkflowTypeConfiguration ->
  DescribeWorkflowTypeResponse
describeWorkflowTypeResponse
  pResponseStatus_
  pTypeInfo_
  pConfiguration_ =
    DescribeWorkflowTypeResponse'
      { _dwtrrsResponseStatus =
          pResponseStatus_,
        _dwtrrsTypeInfo = pTypeInfo_,
        _dwtrrsConfiguration = pConfiguration_
      }

-- | -- | The response status code.
dwtrrsResponseStatus :: Lens' DescribeWorkflowTypeResponse Int
dwtrrsResponseStatus = lens _dwtrrsResponseStatus (\s a -> s {_dwtrrsResponseStatus = a})

-- | General information about the workflow type. The status of the workflow type (returned in the WorkflowTypeInfo structure) can be one of the following.     * @REGISTERED@ – The type is registered and available. Workers supporting this type should be running.     * @DEPRECATED@ – The type was deprecated using 'DeprecateWorkflowType' , but is still in use. You should keep workers supporting this type running. You cannot create new workflow executions of this type.
dwtrrsTypeInfo :: Lens' DescribeWorkflowTypeResponse WorkflowTypeInfo
dwtrrsTypeInfo = lens _dwtrrsTypeInfo (\s a -> s {_dwtrrsTypeInfo = a})

-- | Configuration settings of the workflow type registered through 'RegisterWorkflowType'
dwtrrsConfiguration :: Lens' DescribeWorkflowTypeResponse WorkflowTypeConfiguration
dwtrrsConfiguration = lens _dwtrrsConfiguration (\s a -> s {_dwtrrsConfiguration = a})

instance NFData DescribeWorkflowTypeResponse
