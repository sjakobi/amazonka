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
-- Module      : Network.AWS.WorkSpaces.DescribeConnectionAliasPermissions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the permissions that the owner of a connection alias has granted to another AWS account for the specified connection alias. For more information, see <https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html Cross-Region Redirection for Amazon WorkSpaces> .
module Network.AWS.WorkSpaces.DescribeConnectionAliasPermissions
  ( -- * Creating a Request
    describeConnectionAliasPermissions,
    DescribeConnectionAliasPermissions,

    -- * Request Lenses
    dcapNextToken,
    dcapMaxResults,
    dcapAliasId,

    -- * Destructuring the Response
    describeConnectionAliasPermissionsResponse,
    DescribeConnectionAliasPermissionsResponse,

    -- * Response Lenses
    dcaprrsNextToken,
    dcaprrsAliasId,
    dcaprrsConnectionAliasPermissions,
    dcaprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkSpaces.Types

-- | /See:/ 'describeConnectionAliasPermissions' smart constructor.
data DescribeConnectionAliasPermissions = DescribeConnectionAliasPermissions'
  { _dcapNextToken ::
      !( Maybe
           Text
       ),
    _dcapMaxResults ::
      !( Maybe
           Nat
       ),
    _dcapAliasId ::
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

-- | Creates a value of 'DescribeConnectionAliasPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcapNextToken' - If you received a @NextToken@ from a previous call that was paginated, provide this token to receive the next set of results.
--
-- * 'dcapMaxResults' - The maximum number of results to return.
--
-- * 'dcapAliasId' - The identifier of the connection alias.
describeConnectionAliasPermissions ::
  -- | 'dcapAliasId'
  Text ->
  DescribeConnectionAliasPermissions
describeConnectionAliasPermissions pAliasId_ =
  DescribeConnectionAliasPermissions'
    { _dcapNextToken =
        Nothing,
      _dcapMaxResults = Nothing,
      _dcapAliasId = pAliasId_
    }

-- | If you received a @NextToken@ from a previous call that was paginated, provide this token to receive the next set of results.
dcapNextToken :: Lens' DescribeConnectionAliasPermissions (Maybe Text)
dcapNextToken = lens _dcapNextToken (\s a -> s {_dcapNextToken = a})

-- | The maximum number of results to return.
dcapMaxResults :: Lens' DescribeConnectionAliasPermissions (Maybe Natural)
dcapMaxResults = lens _dcapMaxResults (\s a -> s {_dcapMaxResults = a}) . mapping _Nat

-- | The identifier of the connection alias.
dcapAliasId :: Lens' DescribeConnectionAliasPermissions Text
dcapAliasId = lens _dcapAliasId (\s a -> s {_dcapAliasId = a})

instance
  AWSRequest
    DescribeConnectionAliasPermissions
  where
  type
    Rs DescribeConnectionAliasPermissions =
      DescribeConnectionAliasPermissionsResponse
  request = postJSON workSpaces
  response =
    receiveJSON
      ( \s h x ->
          DescribeConnectionAliasPermissionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "AliasId")
            <*> (x .?> "ConnectionAliasPermissions")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeConnectionAliasPermissions

instance NFData DescribeConnectionAliasPermissions

instance ToHeaders DescribeConnectionAliasPermissions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "WorkspacesService.DescribeConnectionAliasPermissions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeConnectionAliasPermissions where
  toJSON DescribeConnectionAliasPermissions' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dcapNextToken,
            ("MaxResults" .=) <$> _dcapMaxResults,
            Just ("AliasId" .= _dcapAliasId)
          ]
      )

instance ToPath DescribeConnectionAliasPermissions where
  toPath = const "/"

instance ToQuery DescribeConnectionAliasPermissions where
  toQuery = const mempty

-- | /See:/ 'describeConnectionAliasPermissionsResponse' smart constructor.
data DescribeConnectionAliasPermissionsResponse = DescribeConnectionAliasPermissionsResponse'
  { _dcaprrsNextToken ::
      !( Maybe
           Text
       ),
    _dcaprrsAliasId ::
      !( Maybe
           Text
       ),
    _dcaprrsConnectionAliasPermissions ::
      !( Maybe
           ( List1
               ConnectionAliasPermission
           )
       ),
    _dcaprrsResponseStatus ::
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

-- | Creates a value of 'DescribeConnectionAliasPermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcaprrsNextToken' - The token to use to retrieve the next set of results, or null if no more results are available.
--
-- * 'dcaprrsAliasId' - The identifier of the connection alias.
--
-- * 'dcaprrsConnectionAliasPermissions' - The permissions associated with a connection alias.
--
-- * 'dcaprrsResponseStatus' - -- | The response status code.
describeConnectionAliasPermissionsResponse ::
  -- | 'dcaprrsResponseStatus'
  Int ->
  DescribeConnectionAliasPermissionsResponse
describeConnectionAliasPermissionsResponse
  pResponseStatus_ =
    DescribeConnectionAliasPermissionsResponse'
      { _dcaprrsNextToken =
          Nothing,
        _dcaprrsAliasId = Nothing,
        _dcaprrsConnectionAliasPermissions =
          Nothing,
        _dcaprrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next set of results, or null if no more results are available.
dcaprrsNextToken :: Lens' DescribeConnectionAliasPermissionsResponse (Maybe Text)
dcaprrsNextToken = lens _dcaprrsNextToken (\s a -> s {_dcaprrsNextToken = a})

-- | The identifier of the connection alias.
dcaprrsAliasId :: Lens' DescribeConnectionAliasPermissionsResponse (Maybe Text)
dcaprrsAliasId = lens _dcaprrsAliasId (\s a -> s {_dcaprrsAliasId = a})

-- | The permissions associated with a connection alias.
dcaprrsConnectionAliasPermissions :: Lens' DescribeConnectionAliasPermissionsResponse (Maybe (NonEmpty ConnectionAliasPermission))
dcaprrsConnectionAliasPermissions = lens _dcaprrsConnectionAliasPermissions (\s a -> s {_dcaprrsConnectionAliasPermissions = a}) . mapping _List1

-- | -- | The response status code.
dcaprrsResponseStatus :: Lens' DescribeConnectionAliasPermissionsResponse Int
dcaprrsResponseStatus = lens _dcaprrsResponseStatus (\s a -> s {_dcaprrsResponseStatus = a})

instance
  NFData
    DescribeConnectionAliasPermissionsResponse
