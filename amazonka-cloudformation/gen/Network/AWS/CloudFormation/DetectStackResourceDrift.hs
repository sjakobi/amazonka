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
-- Module      : Network.AWS.CloudFormation.DetectStackResourceDrift
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about whether a resource's actual configuration differs, or has /drifted/ , from it's expected configuration, as defined in the stack template and any values specified as template parameters. This information includes actual and expected property values for resources in which AWS CloudFormation detects drift. Only resource properties explicitly defined in the stack template are checked for drift. For more information about stack and resource drift, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html Detecting Unregulated Configuration Changes to Stacks and Resources> .
--
--
-- Use @DetectStackResourceDrift@ to detect drift on individual resources, or 'DetectStackDrift' to detect drift on all resources in a given stack that support drift detection.
--
-- Resources that do not currently support drift detection cannot be checked. For a list of resources that support drift detection, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html Resources that Support Drift Detection> .
module Network.AWS.CloudFormation.DetectStackResourceDrift
  ( -- * Creating a Request
    detectStackResourceDrift,
    DetectStackResourceDrift,

    -- * Request Lenses
    dStackName,
    dLogicalResourceId,

    -- * Destructuring the Response
    detectStackResourceDriftResponse,
    DetectStackResourceDriftResponse,

    -- * Response Lenses
    detrsResponseStatus,
    detrsStackResourceDrift,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'detectStackResourceDrift' smart constructor.
data DetectStackResourceDrift = DetectStackResourceDrift'
  { _dStackName ::
      !Text,
    _dLogicalResourceId ::
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

-- | Creates a value of 'DetectStackResourceDrift' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dStackName' - The name of the stack to which the resource belongs.
--
-- * 'dLogicalResourceId' - The logical name of the resource for which to return drift information.
detectStackResourceDrift ::
  -- | 'dStackName'
  Text ->
  -- | 'dLogicalResourceId'
  Text ->
  DetectStackResourceDrift
detectStackResourceDrift
  pStackName_
  pLogicalResourceId_ =
    DetectStackResourceDrift'
      { _dStackName =
          pStackName_,
        _dLogicalResourceId = pLogicalResourceId_
      }

-- | The name of the stack to which the resource belongs.
dStackName :: Lens' DetectStackResourceDrift Text
dStackName = lens _dStackName (\s a -> s {_dStackName = a})

-- | The logical name of the resource for which to return drift information.
dLogicalResourceId :: Lens' DetectStackResourceDrift Text
dLogicalResourceId = lens _dLogicalResourceId (\s a -> s {_dLogicalResourceId = a})

instance AWSRequest DetectStackResourceDrift where
  type
    Rs DetectStackResourceDrift =
      DetectStackResourceDriftResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "DetectStackResourceDriftResult"
      ( \s h x ->
          DetectStackResourceDriftResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "StackResourceDrift")
      )

instance Hashable DetectStackResourceDrift

instance NFData DetectStackResourceDrift

instance ToHeaders DetectStackResourceDrift where
  toHeaders = const mempty

instance ToPath DetectStackResourceDrift where
  toPath = const "/"

instance ToQuery DetectStackResourceDrift where
  toQuery DetectStackResourceDrift' {..} =
    mconcat
      [ "Action"
          =: ("DetectStackResourceDrift" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "StackName" =: _dStackName,
        "LogicalResourceId" =: _dLogicalResourceId
      ]

-- | /See:/ 'detectStackResourceDriftResponse' smart constructor.
data DetectStackResourceDriftResponse = DetectStackResourceDriftResponse'
  { _detrsResponseStatus ::
      !Int,
    _detrsStackResourceDrift ::
      !StackResourceDrift
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DetectStackResourceDriftResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'detrsResponseStatus' - -- | The response status code.
--
-- * 'detrsStackResourceDrift' - Information about whether the resource's actual configuration has drifted from its expected template configuration, including actual and expected property values and any differences detected.
detectStackResourceDriftResponse ::
  -- | 'detrsResponseStatus'
  Int ->
  -- | 'detrsStackResourceDrift'
  StackResourceDrift ->
  DetectStackResourceDriftResponse
detectStackResourceDriftResponse
  pResponseStatus_
  pStackResourceDrift_ =
    DetectStackResourceDriftResponse'
      { _detrsResponseStatus =
          pResponseStatus_,
        _detrsStackResourceDrift =
          pStackResourceDrift_
      }

-- | -- | The response status code.
detrsResponseStatus :: Lens' DetectStackResourceDriftResponse Int
detrsResponseStatus = lens _detrsResponseStatus (\s a -> s {_detrsResponseStatus = a})

-- | Information about whether the resource's actual configuration has drifted from its expected template configuration, including actual and expected property values and any differences detected.
detrsStackResourceDrift :: Lens' DetectStackResourceDriftResponse StackResourceDrift
detrsStackResourceDrift = lens _detrsStackResourceDrift (\s a -> s {_detrsStackResourceDrift = a})

instance NFData DetectStackResourceDriftResponse
