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
-- Module      : Network.AWS.CloudFormation.ListTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns summary information about extension that have been registered with CloudFormation.
module Network.AWS.CloudFormation.ListTypes
  ( -- * Creating a Request
    listTypes,
    ListTypes,

    -- * Request Lenses
    ltNextToken,
    ltMaxResults,
    ltDeprecatedStatus,
    ltProvisioningType,
    ltVisibility,
    ltType,

    -- * Destructuring the Response
    listTypesResponse,
    ListTypesResponse,

    -- * Response Lenses
    ltrrsNextToken,
    ltrrsTypeSummaries,
    ltrrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTypes' smart constructor.
data ListTypes = ListTypes'
  { _ltNextToken ::
      !(Maybe Text),
    _ltMaxResults :: !(Maybe Nat),
    _ltDeprecatedStatus :: !(Maybe DeprecatedStatus),
    _ltProvisioningType :: !(Maybe ProvisioningType),
    _ltVisibility :: !(Maybe Visibility),
    _ltType :: !(Maybe RegistryType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTypes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltNextToken' - If the previous paginated request didn't return all of the remaining results, the response object's @NextToken@ parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, the previous response object's @NextToken@ parameter is set to @null@ .
--
-- * 'ltMaxResults' - The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a @NextToken@ value that you can assign to the @NextToken@ request parameter to get the next set of results.
--
-- * 'ltDeprecatedStatus' - The deprecation status of the extension that you want to get summary information about. Valid values include:     * @LIVE@ : The extension is registered for use in CloudFormation operations.     * @DEPRECATED@ : The extension has been deregistered and can no longer be used in CloudFormation operations.
--
-- * 'ltProvisioningType' - The provisioning behavior of the type. AWS CloudFormation determines the provisioning type during registration, based on the types of handlers in the schema handler package submitted. Valid values include:     * @FULLY_MUTABLE@ : The extension includes an update handler to process updates to the extension during stack update operations.     * @IMMUTABLE@ : The extension does not include an update handler, so the extension cannot be updated and must instead be replaced during stack update operations.     * @NON_PROVISIONABLE@ : The extension does not include create, read, and delete handlers, and therefore cannot actually be provisioned.
--
-- * 'ltVisibility' - The scope at which the extension is visible and usable in CloudFormation operations. Valid values include:     * @PRIVATE@ : The extension is only visible and usable within the account in which it is registered. Currently, AWS CloudFormation marks any extension you create as @PRIVATE@ .     * @PUBLIC@ : The extension is publically visible and usable within any Amazon account. The default is @PRIVATE@ .
--
-- * 'ltType' - The type of extension.
listTypes ::
  ListTypes
listTypes =
  ListTypes'
    { _ltNextToken = Nothing,
      _ltMaxResults = Nothing,
      _ltDeprecatedStatus = Nothing,
      _ltProvisioningType = Nothing,
      _ltVisibility = Nothing,
      _ltType = Nothing
    }

-- | If the previous paginated request didn't return all of the remaining results, the response object's @NextToken@ parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, the previous response object's @NextToken@ parameter is set to @null@ .
ltNextToken :: Lens' ListTypes (Maybe Text)
ltNextToken = lens _ltNextToken (\s a -> s {_ltNextToken = a})

-- | The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a @NextToken@ value that you can assign to the @NextToken@ request parameter to get the next set of results.
ltMaxResults :: Lens' ListTypes (Maybe Natural)
ltMaxResults = lens _ltMaxResults (\s a -> s {_ltMaxResults = a}) . mapping _Nat

-- | The deprecation status of the extension that you want to get summary information about. Valid values include:     * @LIVE@ : The extension is registered for use in CloudFormation operations.     * @DEPRECATED@ : The extension has been deregistered and can no longer be used in CloudFormation operations.
ltDeprecatedStatus :: Lens' ListTypes (Maybe DeprecatedStatus)
ltDeprecatedStatus = lens _ltDeprecatedStatus (\s a -> s {_ltDeprecatedStatus = a})

-- | The provisioning behavior of the type. AWS CloudFormation determines the provisioning type during registration, based on the types of handlers in the schema handler package submitted. Valid values include:     * @FULLY_MUTABLE@ : The extension includes an update handler to process updates to the extension during stack update operations.     * @IMMUTABLE@ : The extension does not include an update handler, so the extension cannot be updated and must instead be replaced during stack update operations.     * @NON_PROVISIONABLE@ : The extension does not include create, read, and delete handlers, and therefore cannot actually be provisioned.
ltProvisioningType :: Lens' ListTypes (Maybe ProvisioningType)
ltProvisioningType = lens _ltProvisioningType (\s a -> s {_ltProvisioningType = a})

-- | The scope at which the extension is visible and usable in CloudFormation operations. Valid values include:     * @PRIVATE@ : The extension is only visible and usable within the account in which it is registered. Currently, AWS CloudFormation marks any extension you create as @PRIVATE@ .     * @PUBLIC@ : The extension is publically visible and usable within any Amazon account. The default is @PRIVATE@ .
ltVisibility :: Lens' ListTypes (Maybe Visibility)
ltVisibility = lens _ltVisibility (\s a -> s {_ltVisibility = a})

-- | The type of extension.
ltType :: Lens' ListTypes (Maybe RegistryType)
ltType = lens _ltType (\s a -> s {_ltType = a})

instance AWSRequest ListTypes where
  type Rs ListTypes = ListTypesResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "ListTypesResult"
      ( \s h x ->
          ListTypesResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "TypeSummaries" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListTypes

instance NFData ListTypes

instance ToHeaders ListTypes where
  toHeaders = const mempty

instance ToPath ListTypes where
  toPath = const "/"

instance ToQuery ListTypes where
  toQuery ListTypes' {..} =
    mconcat
      [ "Action" =: ("ListTypes" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "NextToken" =: _ltNextToken,
        "MaxResults" =: _ltMaxResults,
        "DeprecatedStatus" =: _ltDeprecatedStatus,
        "ProvisioningType" =: _ltProvisioningType,
        "Visibility" =: _ltVisibility,
        "Type" =: _ltType
      ]

-- | /See:/ 'listTypesResponse' smart constructor.
data ListTypesResponse = ListTypesResponse'
  { _ltrrsNextToken ::
      !(Maybe Text),
    _ltrrsTypeSummaries ::
      !(Maybe [TypeSummary]),
    _ltrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrrsNextToken' - If the request doesn't return all of the remaining results, @NextToken@ is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's @NextToken@ parameter. If the request returns all results, @NextToken@ is set to @null@ .
--
-- * 'ltrrsTypeSummaries' - A list of @TypeSummary@ structures that contain information about the specified extensions.
--
-- * 'ltrrsResponseStatus' - -- | The response status code.
listTypesResponse ::
  -- | 'ltrrsResponseStatus'
  Int ->
  ListTypesResponse
listTypesResponse pResponseStatus_ =
  ListTypesResponse'
    { _ltrrsNextToken = Nothing,
      _ltrrsTypeSummaries = Nothing,
      _ltrrsResponseStatus = pResponseStatus_
    }

-- | If the request doesn't return all of the remaining results, @NextToken@ is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's @NextToken@ parameter. If the request returns all results, @NextToken@ is set to @null@ .
ltrrsNextToken :: Lens' ListTypesResponse (Maybe Text)
ltrrsNextToken = lens _ltrrsNextToken (\s a -> s {_ltrrsNextToken = a})

-- | A list of @TypeSummary@ structures that contain information about the specified extensions.
ltrrsTypeSummaries :: Lens' ListTypesResponse [TypeSummary]
ltrrsTypeSummaries = lens _ltrrsTypeSummaries (\s a -> s {_ltrrsTypeSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
ltrrsResponseStatus :: Lens' ListTypesResponse Int
ltrrsResponseStatus = lens _ltrrsResponseStatus (\s a -> s {_ltrrsResponseStatus = a})

instance NFData ListTypesResponse
