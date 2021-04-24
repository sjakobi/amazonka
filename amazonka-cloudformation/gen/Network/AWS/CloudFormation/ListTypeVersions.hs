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
-- Module      : Network.AWS.CloudFormation.ListTypeVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns summary information about the versions of an extension.
module Network.AWS.CloudFormation.ListTypeVersions
  ( -- * Creating a Request
    listTypeVersions,
    ListTypeVersions,

    -- * Request Lenses
    ltvTypeName,
    ltvNextToken,
    ltvMaxResults,
    ltvARN,
    ltvDeprecatedStatus,
    ltvType,

    -- * Destructuring the Response
    listTypeVersionsResponse,
    ListTypeVersionsResponse,

    -- * Response Lenses
    ltvrrsNextToken,
    ltvrrsTypeVersionSummaries,
    ltvrrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTypeVersions' smart constructor.
data ListTypeVersions = ListTypeVersions'
  { _ltvTypeName ::
      !(Maybe Text),
    _ltvNextToken :: !(Maybe Text),
    _ltvMaxResults :: !(Maybe Nat),
    _ltvARN :: !(Maybe Text),
    _ltvDeprecatedStatus ::
      !(Maybe DeprecatedStatus),
    _ltvType :: !(Maybe RegistryType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTypeVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltvTypeName' - The name of the extension for which you want version summary information. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
--
-- * 'ltvNextToken' - If the previous paginated request didn't return all of the remaining results, the response object's @NextToken@ parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, the previous response object's @NextToken@ parameter is set to @null@ .
--
-- * 'ltvMaxResults' - The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a @NextToken@ value that you can assign to the @NextToken@ request parameter to get the next set of results.
--
-- * 'ltvARN' - The Amazon Resource Name (ARN) of the extension for which you want version summary information. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
--
-- * 'ltvDeprecatedStatus' - The deprecation status of the extension versions that you want to get summary information about. Valid values include:     * @LIVE@ : The extension version is registered and can be used in CloudFormation operations, dependent on its provisioning behavior and visibility scope.     * @DEPRECATED@ : The extension version has been deregistered and can no longer be used in CloudFormation operations.  The default is @LIVE@ .
--
-- * 'ltvType' - The kind of the extension. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
listTypeVersions ::
  ListTypeVersions
listTypeVersions =
  ListTypeVersions'
    { _ltvTypeName = Nothing,
      _ltvNextToken = Nothing,
      _ltvMaxResults = Nothing,
      _ltvARN = Nothing,
      _ltvDeprecatedStatus = Nothing,
      _ltvType = Nothing
    }

-- | The name of the extension for which you want version summary information. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
ltvTypeName :: Lens' ListTypeVersions (Maybe Text)
ltvTypeName = lens _ltvTypeName (\s a -> s {_ltvTypeName = a})

-- | If the previous paginated request didn't return all of the remaining results, the response object's @NextToken@ parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, the previous response object's @NextToken@ parameter is set to @null@ .
ltvNextToken :: Lens' ListTypeVersions (Maybe Text)
ltvNextToken = lens _ltvNextToken (\s a -> s {_ltvNextToken = a})

-- | The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a @NextToken@ value that you can assign to the @NextToken@ request parameter to get the next set of results.
ltvMaxResults :: Lens' ListTypeVersions (Maybe Natural)
ltvMaxResults = lens _ltvMaxResults (\s a -> s {_ltvMaxResults = a}) . mapping _Nat

-- | The Amazon Resource Name (ARN) of the extension for which you want version summary information. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
ltvARN :: Lens' ListTypeVersions (Maybe Text)
ltvARN = lens _ltvARN (\s a -> s {_ltvARN = a})

-- | The deprecation status of the extension versions that you want to get summary information about. Valid values include:     * @LIVE@ : The extension version is registered and can be used in CloudFormation operations, dependent on its provisioning behavior and visibility scope.     * @DEPRECATED@ : The extension version has been deregistered and can no longer be used in CloudFormation operations.  The default is @LIVE@ .
ltvDeprecatedStatus :: Lens' ListTypeVersions (Maybe DeprecatedStatus)
ltvDeprecatedStatus = lens _ltvDeprecatedStatus (\s a -> s {_ltvDeprecatedStatus = a})

-- | The kind of the extension. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
ltvType :: Lens' ListTypeVersions (Maybe RegistryType)
ltvType = lens _ltvType (\s a -> s {_ltvType = a})

instance AWSRequest ListTypeVersions where
  type Rs ListTypeVersions = ListTypeVersionsResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "ListTypeVersionsResult"
      ( \s h x ->
          ListTypeVersionsResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "TypeVersionSummaries" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListTypeVersions

instance NFData ListTypeVersions

instance ToHeaders ListTypeVersions where
  toHeaders = const mempty

instance ToPath ListTypeVersions where
  toPath = const "/"

instance ToQuery ListTypeVersions where
  toQuery ListTypeVersions' {..} =
    mconcat
      [ "Action" =: ("ListTypeVersions" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "TypeName" =: _ltvTypeName,
        "NextToken" =: _ltvNextToken,
        "MaxResults" =: _ltvMaxResults,
        "Arn" =: _ltvARN,
        "DeprecatedStatus" =: _ltvDeprecatedStatus,
        "Type" =: _ltvType
      ]

-- | /See:/ 'listTypeVersionsResponse' smart constructor.
data ListTypeVersionsResponse = ListTypeVersionsResponse'
  { _ltvrrsNextToken ::
      !(Maybe Text),
    _ltvrrsTypeVersionSummaries ::
      !( Maybe
           [TypeVersionSummary]
       ),
    _ltvrrsResponseStatus ::
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

-- | Creates a value of 'ListTypeVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltvrrsNextToken' - If the request doesn't return all of the remaining results, @NextToken@ is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's @NextToken@ parameter. If the request returns all results, @NextToken@ is set to @null@ .
--
-- * 'ltvrrsTypeVersionSummaries' - A list of @TypeVersionSummary@ structures that contain information about the specified extension's versions.
--
-- * 'ltvrrsResponseStatus' - -- | The response status code.
listTypeVersionsResponse ::
  -- | 'ltvrrsResponseStatus'
  Int ->
  ListTypeVersionsResponse
listTypeVersionsResponse pResponseStatus_ =
  ListTypeVersionsResponse'
    { _ltvrrsNextToken =
        Nothing,
      _ltvrrsTypeVersionSummaries = Nothing,
      _ltvrrsResponseStatus = pResponseStatus_
    }

-- | If the request doesn't return all of the remaining results, @NextToken@ is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's @NextToken@ parameter. If the request returns all results, @NextToken@ is set to @null@ .
ltvrrsNextToken :: Lens' ListTypeVersionsResponse (Maybe Text)
ltvrrsNextToken = lens _ltvrrsNextToken (\s a -> s {_ltvrrsNextToken = a})

-- | A list of @TypeVersionSummary@ structures that contain information about the specified extension's versions.
ltvrrsTypeVersionSummaries :: Lens' ListTypeVersionsResponse [TypeVersionSummary]
ltvrrsTypeVersionSummaries = lens _ltvrrsTypeVersionSummaries (\s a -> s {_ltvrrsTypeVersionSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
ltvrrsResponseStatus :: Lens' ListTypeVersionsResponse Int
ltvrrsResponseStatus = lens _ltvrrsResponseStatus (\s a -> s {_ltvrrsResponseStatus = a})

instance NFData ListTypeVersionsResponse
