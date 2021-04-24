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
-- Module      : Network.AWS.Lambda.AddPermission
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Grants an AWS service or another account permission to use a function. You can apply the policy at the function level, or specify a qualifier to restrict access to a single version or alias. If you use a qualifier, the invoker must use the full Amazon Resource Name (ARN) of that version or alias to invoke the function.
--
--
-- To grant permission to another account, specify the account ID as the @Principal@ . For AWS services, the principal is a domain-style identifier defined by the service, like @s3.amazonaws.com@ or @sns.amazonaws.com@ . For AWS services, you can also specify the ARN of the associated resource as the @SourceArn@ . If you grant permission to a service principal without specifying the source, other accounts could potentially configure resources in their account to invoke your Lambda function.
--
-- This action adds a statement to a resource-based permissions policy for the function. For more information about function policies, see <https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html Lambda Function Policies> .
module Network.AWS.Lambda.AddPermission
  ( -- * Creating a Request
    addPermission,
    AddPermission,

    -- * Request Lenses
    apRevisionId,
    apQualifier,
    apEventSourceToken,
    apSourceAccount,
    apSourceARN,
    apFunctionName,
    apStatementId,
    apAction,
    apPrincipal,

    -- * Destructuring the Response
    addPermissionResponse,
    AddPermissionResponse,

    -- * Response Lenses
    aprrsStatement,
    aprrsResponseStatus,
  )
where

import Network.AWS.Lambda.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'addPermission' smart constructor.
data AddPermission = AddPermission'
  { _apRevisionId ::
      !(Maybe Text),
    _apQualifier :: !(Maybe Text),
    _apEventSourceToken :: !(Maybe Text),
    _apSourceAccount :: !(Maybe Text),
    _apSourceARN :: !(Maybe Text),
    _apFunctionName :: !Text,
    _apStatementId :: !Text,
    _apAction :: !Text,
    _apPrincipal :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AddPermission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apRevisionId' - Only update the policy if the revision ID matches the ID that's specified. Use this option to avoid modifying a policy that has changed since you last read it.
--
-- * 'apQualifier' - Specify a version or alias to add permissions to a published version of the function.
--
-- * 'apEventSourceToken' - For Alexa Smart Home functions, a token that must be supplied by the invoker.
--
-- * 'apSourceAccount' - For Amazon S3, the ID of the account that owns the resource. Use this together with @SourceArn@ to ensure that the resource is owned by the specified account. It is possible for an Amazon S3 bucket to be deleted by its owner and recreated by another account.
--
-- * 'apSourceARN' - For AWS services, the ARN of the AWS resource that invokes the function. For example, an Amazon S3 bucket or Amazon SNS topic.
--
-- * 'apFunctionName' - The name of the Lambda function, version, or alias. __Name formats__      * __Function name__ - @my-function@ (name-only), @my-function:v1@ (with alias).     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:my-function@ .     * __Partial ARN__ - @123456789012:function:my-function@ . You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
--
-- * 'apStatementId' - A statement identifier that differentiates the statement from others in the same policy.
--
-- * 'apAction' - The action that the principal can use on the function. For example, @lambda:InvokeFunction@ or @lambda:GetFunction@ .
--
-- * 'apPrincipal' - The AWS service or account that invokes the function. If you specify a service, use @SourceArn@ or @SourceAccount@ to limit who can invoke the function through that service.
addPermission ::
  -- | 'apFunctionName'
  Text ->
  -- | 'apStatementId'
  Text ->
  -- | 'apAction'
  Text ->
  -- | 'apPrincipal'
  Text ->
  AddPermission
addPermission
  pFunctionName_
  pStatementId_
  pAction_
  pPrincipal_ =
    AddPermission'
      { _apRevisionId = Nothing,
        _apQualifier = Nothing,
        _apEventSourceToken = Nothing,
        _apSourceAccount = Nothing,
        _apSourceARN = Nothing,
        _apFunctionName = pFunctionName_,
        _apStatementId = pStatementId_,
        _apAction = pAction_,
        _apPrincipal = pPrincipal_
      }

-- | Only update the policy if the revision ID matches the ID that's specified. Use this option to avoid modifying a policy that has changed since you last read it.
apRevisionId :: Lens' AddPermission (Maybe Text)
apRevisionId = lens _apRevisionId (\s a -> s {_apRevisionId = a})

-- | Specify a version or alias to add permissions to a published version of the function.
apQualifier :: Lens' AddPermission (Maybe Text)
apQualifier = lens _apQualifier (\s a -> s {_apQualifier = a})

-- | For Alexa Smart Home functions, a token that must be supplied by the invoker.
apEventSourceToken :: Lens' AddPermission (Maybe Text)
apEventSourceToken = lens _apEventSourceToken (\s a -> s {_apEventSourceToken = a})

-- | For Amazon S3, the ID of the account that owns the resource. Use this together with @SourceArn@ to ensure that the resource is owned by the specified account. It is possible for an Amazon S3 bucket to be deleted by its owner and recreated by another account.
apSourceAccount :: Lens' AddPermission (Maybe Text)
apSourceAccount = lens _apSourceAccount (\s a -> s {_apSourceAccount = a})

-- | For AWS services, the ARN of the AWS resource that invokes the function. For example, an Amazon S3 bucket or Amazon SNS topic.
apSourceARN :: Lens' AddPermission (Maybe Text)
apSourceARN = lens _apSourceARN (\s a -> s {_apSourceARN = a})

-- | The name of the Lambda function, version, or alias. __Name formats__      * __Function name__ - @my-function@ (name-only), @my-function:v1@ (with alias).     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:my-function@ .     * __Partial ARN__ - @123456789012:function:my-function@ . You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
apFunctionName :: Lens' AddPermission Text
apFunctionName = lens _apFunctionName (\s a -> s {_apFunctionName = a})

-- | A statement identifier that differentiates the statement from others in the same policy.
apStatementId :: Lens' AddPermission Text
apStatementId = lens _apStatementId (\s a -> s {_apStatementId = a})

-- | The action that the principal can use on the function. For example, @lambda:InvokeFunction@ or @lambda:GetFunction@ .
apAction :: Lens' AddPermission Text
apAction = lens _apAction (\s a -> s {_apAction = a})

-- | The AWS service or account that invokes the function. If you specify a service, use @SourceArn@ or @SourceAccount@ to limit who can invoke the function through that service.
apPrincipal :: Lens' AddPermission Text
apPrincipal = lens _apPrincipal (\s a -> s {_apPrincipal = a})

instance AWSRequest AddPermission where
  type Rs AddPermission = AddPermissionResponse
  request = postJSON lambda
  response =
    receiveJSON
      ( \s h x ->
          AddPermissionResponse'
            <$> (x .?> "Statement") <*> (pure (fromEnum s))
      )

instance Hashable AddPermission

instance NFData AddPermission

instance ToHeaders AddPermission where
  toHeaders = const mempty

instance ToJSON AddPermission where
  toJSON AddPermission' {..} =
    object
      ( catMaybes
          [ ("RevisionId" .=) <$> _apRevisionId,
            ("EventSourceToken" .=) <$> _apEventSourceToken,
            ("SourceAccount" .=) <$> _apSourceAccount,
            ("SourceArn" .=) <$> _apSourceARN,
            Just ("StatementId" .= _apStatementId),
            Just ("Action" .= _apAction),
            Just ("Principal" .= _apPrincipal)
          ]
      )

instance ToPath AddPermission where
  toPath AddPermission' {..} =
    mconcat
      [ "/2015-03-31/functions/",
        toBS _apFunctionName,
        "/policy"
      ]

instance ToQuery AddPermission where
  toQuery AddPermission' {..} =
    mconcat ["Qualifier" =: _apQualifier]

-- | /See:/ 'addPermissionResponse' smart constructor.
data AddPermissionResponse = AddPermissionResponse'
  { _aprrsStatement ::
      !(Maybe Text),
    _aprrsResponseStatus ::
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

-- | Creates a value of 'AddPermissionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aprrsStatement' - The permission statement that's added to the function policy.
--
-- * 'aprrsResponseStatus' - -- | The response status code.
addPermissionResponse ::
  -- | 'aprrsResponseStatus'
  Int ->
  AddPermissionResponse
addPermissionResponse pResponseStatus_ =
  AddPermissionResponse'
    { _aprrsStatement = Nothing,
      _aprrsResponseStatus = pResponseStatus_
    }

-- | The permission statement that's added to the function policy.
aprrsStatement :: Lens' AddPermissionResponse (Maybe Text)
aprrsStatement = lens _aprrsStatement (\s a -> s {_aprrsStatement = a})

-- | -- | The response status code.
aprrsResponseStatus :: Lens' AddPermissionResponse Int
aprrsResponseStatus = lens _aprrsResponseStatus (\s a -> s {_aprrsResponseStatus = a})

instance NFData AddPermissionResponse
