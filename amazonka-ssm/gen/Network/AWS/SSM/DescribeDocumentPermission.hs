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
-- Module      : Network.AWS.SSM.DescribeDocumentPermission
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the permissions for a Systems Manager document. If you created the document, you are the owner. If a document is shared, it can either be shared privately (by specifying a user's AWS account ID) or publicly (/All/ ).
module Network.AWS.SSM.DescribeDocumentPermission
  ( -- * Creating a Request
    describeDocumentPermission,
    DescribeDocumentPermission,

    -- * Request Lenses
    ddpNextToken,
    ddpMaxResults,
    ddpName,
    ddpPermissionType,

    -- * Destructuring the Response
    describeDocumentPermissionResponse,
    DescribeDocumentPermissionResponse,

    -- * Response Lenses
    ddprrsAccountIds,
    ddprrsNextToken,
    ddprrsAccountSharingInfoList,
    ddprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describeDocumentPermission' smart constructor.
data DescribeDocumentPermission = DescribeDocumentPermission'
  { _ddpNextToken ::
      !(Maybe Text),
    _ddpMaxResults ::
      !(Maybe Nat),
    _ddpName :: !Text,
    _ddpPermissionType ::
      !DocumentPermissionType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeDocumentPermission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddpNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'ddpMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'ddpName' - The name of the document for which you are the owner.
--
-- * 'ddpPermissionType' - The permission type for the document. The permission type can be /Share/ .
describeDocumentPermission ::
  -- | 'ddpName'
  Text ->
  -- | 'ddpPermissionType'
  DocumentPermissionType ->
  DescribeDocumentPermission
describeDocumentPermission pName_ pPermissionType_ =
  DescribeDocumentPermission'
    { _ddpNextToken =
        Nothing,
      _ddpMaxResults = Nothing,
      _ddpName = pName_,
      _ddpPermissionType = pPermissionType_
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
ddpNextToken :: Lens' DescribeDocumentPermission (Maybe Text)
ddpNextToken = lens _ddpNextToken (\s a -> s {_ddpNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
ddpMaxResults :: Lens' DescribeDocumentPermission (Maybe Natural)
ddpMaxResults = lens _ddpMaxResults (\s a -> s {_ddpMaxResults = a}) . mapping _Nat

-- | The name of the document for which you are the owner.
ddpName :: Lens' DescribeDocumentPermission Text
ddpName = lens _ddpName (\s a -> s {_ddpName = a})

-- | The permission type for the document. The permission type can be /Share/ .
ddpPermissionType :: Lens' DescribeDocumentPermission DocumentPermissionType
ddpPermissionType = lens _ddpPermissionType (\s a -> s {_ddpPermissionType = a})

instance AWSRequest DescribeDocumentPermission where
  type
    Rs DescribeDocumentPermission =
      DescribeDocumentPermissionResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribeDocumentPermissionResponse'
            <$> (x .?> "AccountIds" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (x .?> "AccountSharingInfoList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDocumentPermission

instance NFData DescribeDocumentPermission

instance ToHeaders DescribeDocumentPermission where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.DescribeDocumentPermission" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeDocumentPermission where
  toJSON DescribeDocumentPermission' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ddpNextToken,
            ("MaxResults" .=) <$> _ddpMaxResults,
            Just ("Name" .= _ddpName),
            Just ("PermissionType" .= _ddpPermissionType)
          ]
      )

instance ToPath DescribeDocumentPermission where
  toPath = const "/"

instance ToQuery DescribeDocumentPermission where
  toQuery = const mempty

-- | /See:/ 'describeDocumentPermissionResponse' smart constructor.
data DescribeDocumentPermissionResponse = DescribeDocumentPermissionResponse'
  { _ddprrsAccountIds ::
      !( Maybe
           [Text]
       ),
    _ddprrsNextToken ::
      !( Maybe
           Text
       ),
    _ddprrsAccountSharingInfoList ::
      !( Maybe
           [AccountSharingInfo]
       ),
    _ddprrsResponseStatus ::
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

-- | Creates a value of 'DescribeDocumentPermissionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddprrsAccountIds' - The account IDs that have permission to use this document. The ID can be either an AWS account or /All/ .
--
-- * 'ddprrsNextToken' - The token for the next set of items to return. Use this token to get the next set of results.
--
-- * 'ddprrsAccountSharingInfoList' - A list of AWS accounts where the current document is shared and the version shared with each account.
--
-- * 'ddprrsResponseStatus' - -- | The response status code.
describeDocumentPermissionResponse ::
  -- | 'ddprrsResponseStatus'
  Int ->
  DescribeDocumentPermissionResponse
describeDocumentPermissionResponse pResponseStatus_ =
  DescribeDocumentPermissionResponse'
    { _ddprrsAccountIds =
        Nothing,
      _ddprrsNextToken = Nothing,
      _ddprrsAccountSharingInfoList = Nothing,
      _ddprrsResponseStatus =
        pResponseStatus_
    }

-- | The account IDs that have permission to use this document. The ID can be either an AWS account or /All/ .
ddprrsAccountIds :: Lens' DescribeDocumentPermissionResponse [Text]
ddprrsAccountIds = lens _ddprrsAccountIds (\s a -> s {_ddprrsAccountIds = a}) . _Default . _Coerce

-- | The token for the next set of items to return. Use this token to get the next set of results.
ddprrsNextToken :: Lens' DescribeDocumentPermissionResponse (Maybe Text)
ddprrsNextToken = lens _ddprrsNextToken (\s a -> s {_ddprrsNextToken = a})

-- | A list of AWS accounts where the current document is shared and the version shared with each account.
ddprrsAccountSharingInfoList :: Lens' DescribeDocumentPermissionResponse [AccountSharingInfo]
ddprrsAccountSharingInfoList = lens _ddprrsAccountSharingInfoList (\s a -> s {_ddprrsAccountSharingInfoList = a}) . _Default . _Coerce

-- | -- | The response status code.
ddprrsResponseStatus :: Lens' DescribeDocumentPermissionResponse Int
ddprrsResponseStatus = lens _ddprrsResponseStatus (\s a -> s {_ddprrsResponseStatus = a})

instance NFData DescribeDocumentPermissionResponse
