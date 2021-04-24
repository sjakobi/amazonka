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
-- Module      : Network.AWS.CloudFormation.RecordHandlerProgress
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reports progress of a resource handler to CloudFormation.
--
--
-- Reserved for use by the <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html CloudFormation CLI> . Do not use this API in your code.
module Network.AWS.CloudFormation.RecordHandlerProgress
  ( -- * Creating a Request
    recordHandlerProgress,
    RecordHandlerProgress,

    -- * Request Lenses
    rhpStatusMessage,
    rhpResourceModel,
    rhpClientRequestToken,
    rhpCurrentOperationStatus,
    rhpErrorCode,
    rhpBearerToken,
    rhpOperationStatus,

    -- * Destructuring the Response
    recordHandlerProgressResponse,
    RecordHandlerProgressResponse,

    -- * Response Lenses
    rhprrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'recordHandlerProgress' smart constructor.
data RecordHandlerProgress = RecordHandlerProgress'
  { _rhpStatusMessage ::
      !(Maybe Text),
    _rhpResourceModel ::
      !(Maybe Text),
    _rhpClientRequestToken ::
      !(Maybe Text),
    _rhpCurrentOperationStatus ::
      !(Maybe OperationStatus),
    _rhpErrorCode ::
      !(Maybe HandlerErrorCode),
    _rhpBearerToken :: !Text,
    _rhpOperationStatus ::
      !OperationStatus
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RecordHandlerProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rhpStatusMessage' - Reserved for use by the <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html CloudFormation CLI> .
--
-- * 'rhpResourceModel' - Reserved for use by the <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html CloudFormation CLI> .
--
-- * 'rhpClientRequestToken' - Reserved for use by the <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html CloudFormation CLI> .
--
-- * 'rhpCurrentOperationStatus' - Reserved for use by the <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html CloudFormation CLI> .
--
-- * 'rhpErrorCode' - Reserved for use by the <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html CloudFormation CLI> .
--
-- * 'rhpBearerToken' - Reserved for use by the <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html CloudFormation CLI> .
--
-- * 'rhpOperationStatus' - Reserved for use by the <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html CloudFormation CLI> .
recordHandlerProgress ::
  -- | 'rhpBearerToken'
  Text ->
  -- | 'rhpOperationStatus'
  OperationStatus ->
  RecordHandlerProgress
recordHandlerProgress pBearerToken_ pOperationStatus_ =
  RecordHandlerProgress'
    { _rhpStatusMessage = Nothing,
      _rhpResourceModel = Nothing,
      _rhpClientRequestToken = Nothing,
      _rhpCurrentOperationStatus = Nothing,
      _rhpErrorCode = Nothing,
      _rhpBearerToken = pBearerToken_,
      _rhpOperationStatus = pOperationStatus_
    }

-- | Reserved for use by the <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html CloudFormation CLI> .
rhpStatusMessage :: Lens' RecordHandlerProgress (Maybe Text)
rhpStatusMessage = lens _rhpStatusMessage (\s a -> s {_rhpStatusMessage = a})

-- | Reserved for use by the <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html CloudFormation CLI> .
rhpResourceModel :: Lens' RecordHandlerProgress (Maybe Text)
rhpResourceModel = lens _rhpResourceModel (\s a -> s {_rhpResourceModel = a})

-- | Reserved for use by the <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html CloudFormation CLI> .
rhpClientRequestToken :: Lens' RecordHandlerProgress (Maybe Text)
rhpClientRequestToken = lens _rhpClientRequestToken (\s a -> s {_rhpClientRequestToken = a})

-- | Reserved for use by the <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html CloudFormation CLI> .
rhpCurrentOperationStatus :: Lens' RecordHandlerProgress (Maybe OperationStatus)
rhpCurrentOperationStatus = lens _rhpCurrentOperationStatus (\s a -> s {_rhpCurrentOperationStatus = a})

-- | Reserved for use by the <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html CloudFormation CLI> .
rhpErrorCode :: Lens' RecordHandlerProgress (Maybe HandlerErrorCode)
rhpErrorCode = lens _rhpErrorCode (\s a -> s {_rhpErrorCode = a})

-- | Reserved for use by the <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html CloudFormation CLI> .
rhpBearerToken :: Lens' RecordHandlerProgress Text
rhpBearerToken = lens _rhpBearerToken (\s a -> s {_rhpBearerToken = a})

-- | Reserved for use by the <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html CloudFormation CLI> .
rhpOperationStatus :: Lens' RecordHandlerProgress OperationStatus
rhpOperationStatus = lens _rhpOperationStatus (\s a -> s {_rhpOperationStatus = a})

instance AWSRequest RecordHandlerProgress where
  type
    Rs RecordHandlerProgress =
      RecordHandlerProgressResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "RecordHandlerProgressResult"
      ( \s h x ->
          RecordHandlerProgressResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable RecordHandlerProgress

instance NFData RecordHandlerProgress

instance ToHeaders RecordHandlerProgress where
  toHeaders = const mempty

instance ToPath RecordHandlerProgress where
  toPath = const "/"

instance ToQuery RecordHandlerProgress where
  toQuery RecordHandlerProgress' {..} =
    mconcat
      [ "Action" =: ("RecordHandlerProgress" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "StatusMessage" =: _rhpStatusMessage,
        "ResourceModel" =: _rhpResourceModel,
        "ClientRequestToken" =: _rhpClientRequestToken,
        "CurrentOperationStatus"
          =: _rhpCurrentOperationStatus,
        "ErrorCode" =: _rhpErrorCode,
        "BearerToken" =: _rhpBearerToken,
        "OperationStatus" =: _rhpOperationStatus
      ]

-- | /See:/ 'recordHandlerProgressResponse' smart constructor.
newtype RecordHandlerProgressResponse = RecordHandlerProgressResponse'
  { _rhprrsResponseStatus ::
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

-- | Creates a value of 'RecordHandlerProgressResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rhprrsResponseStatus' - -- | The response status code.
recordHandlerProgressResponse ::
  -- | 'rhprrsResponseStatus'
  Int ->
  RecordHandlerProgressResponse
recordHandlerProgressResponse pResponseStatus_ =
  RecordHandlerProgressResponse'
    { _rhprrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
rhprrsResponseStatus :: Lens' RecordHandlerProgressResponse Int
rhprrsResponseStatus = lens _rhprrsResponseStatus (\s a -> s {_rhprrsResponseStatus = a})

instance NFData RecordHandlerProgressResponse
