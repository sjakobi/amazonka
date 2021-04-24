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
-- Module      : Network.AWS.CloudFormation.ListTypeRegistrations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of registration tokens for the specified extension(s).
module Network.AWS.CloudFormation.ListTypeRegistrations
  ( -- * Creating a Request
    listTypeRegistrations,
    ListTypeRegistrations,

    -- * Request Lenses
    ltrTypeName,
    ltrNextToken,
    ltrMaxResults,
    ltrType,
    ltrRegistrationStatusFilter,
    ltrTypeARN,

    -- * Destructuring the Response
    listTypeRegistrationsResponse,
    ListTypeRegistrationsResponse,

    -- * Response Lenses
    ltrrrsNextToken,
    ltrrrsRegistrationTokenList,
    ltrrrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTypeRegistrations' smart constructor.
data ListTypeRegistrations = ListTypeRegistrations'
  { _ltrTypeName ::
      !(Maybe Text),
    _ltrNextToken ::
      !(Maybe Text),
    _ltrMaxResults ::
      !(Maybe Nat),
    _ltrType ::
      !(Maybe RegistryType),
    _ltrRegistrationStatusFilter ::
      !(Maybe RegistrationStatus),
    _ltrTypeARN ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListTypeRegistrations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrTypeName' - The name of the extension. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
--
-- * 'ltrNextToken' - If the previous paginated request didn't return all of the remaining results, the response object's @NextToken@ parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, the previous response object's @NextToken@ parameter is set to @null@ .
--
-- * 'ltrMaxResults' - The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a @NextToken@ value that you can assign to the @NextToken@ request parameter to get the next set of results.
--
-- * 'ltrType' - The kind of extension. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
--
-- * 'ltrRegistrationStatusFilter' - The current status of the extension registration request. The default is @IN_PROGRESS@ .
--
-- * 'ltrTypeARN' - The Amazon Resource Name (ARN) of the extension. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
listTypeRegistrations ::
  ListTypeRegistrations
listTypeRegistrations =
  ListTypeRegistrations'
    { _ltrTypeName = Nothing,
      _ltrNextToken = Nothing,
      _ltrMaxResults = Nothing,
      _ltrType = Nothing,
      _ltrRegistrationStatusFilter = Nothing,
      _ltrTypeARN = Nothing
    }

-- | The name of the extension. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
ltrTypeName :: Lens' ListTypeRegistrations (Maybe Text)
ltrTypeName = lens _ltrTypeName (\s a -> s {_ltrTypeName = a})

-- | If the previous paginated request didn't return all of the remaining results, the response object's @NextToken@ parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, the previous response object's @NextToken@ parameter is set to @null@ .
ltrNextToken :: Lens' ListTypeRegistrations (Maybe Text)
ltrNextToken = lens _ltrNextToken (\s a -> s {_ltrNextToken = a})

-- | The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a @NextToken@ value that you can assign to the @NextToken@ request parameter to get the next set of results.
ltrMaxResults :: Lens' ListTypeRegistrations (Maybe Natural)
ltrMaxResults = lens _ltrMaxResults (\s a -> s {_ltrMaxResults = a}) . mapping _Nat

-- | The kind of extension. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
ltrType :: Lens' ListTypeRegistrations (Maybe RegistryType)
ltrType = lens _ltrType (\s a -> s {_ltrType = a})

-- | The current status of the extension registration request. The default is @IN_PROGRESS@ .
ltrRegistrationStatusFilter :: Lens' ListTypeRegistrations (Maybe RegistrationStatus)
ltrRegistrationStatusFilter = lens _ltrRegistrationStatusFilter (\s a -> s {_ltrRegistrationStatusFilter = a})

-- | The Amazon Resource Name (ARN) of the extension. Conditional: You must specify either @TypeName@ and @Type@ , or @Arn@ .
ltrTypeARN :: Lens' ListTypeRegistrations (Maybe Text)
ltrTypeARN = lens _ltrTypeARN (\s a -> s {_ltrTypeARN = a})

instance AWSRequest ListTypeRegistrations where
  type
    Rs ListTypeRegistrations =
      ListTypeRegistrationsResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "ListTypeRegistrationsResult"
      ( \s h x ->
          ListTypeRegistrationsResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "RegistrationTokenList" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListTypeRegistrations

instance NFData ListTypeRegistrations

instance ToHeaders ListTypeRegistrations where
  toHeaders = const mempty

instance ToPath ListTypeRegistrations where
  toPath = const "/"

instance ToQuery ListTypeRegistrations where
  toQuery ListTypeRegistrations' {..} =
    mconcat
      [ "Action" =: ("ListTypeRegistrations" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "TypeName" =: _ltrTypeName,
        "NextToken" =: _ltrNextToken,
        "MaxResults" =: _ltrMaxResults,
        "Type" =: _ltrType,
        "RegistrationStatusFilter"
          =: _ltrRegistrationStatusFilter,
        "TypeArn" =: _ltrTypeARN
      ]

-- | /See:/ 'listTypeRegistrationsResponse' smart constructor.
data ListTypeRegistrationsResponse = ListTypeRegistrationsResponse'
  { _ltrrrsNextToken ::
      !( Maybe
           Text
       ),
    _ltrrrsRegistrationTokenList ::
      !( Maybe
           [Text]
       ),
    _ltrrrsResponseStatus ::
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

-- | Creates a value of 'ListTypeRegistrationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrrrsNextToken' - If the request doesn't return all of the remaining results, @NextToken@ is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's @NextToken@ parameter. If the request returns all results, @NextToken@ is set to @null@ .
--
-- * 'ltrrrsRegistrationTokenList' - A list of extension registration tokens. Use @'DescribeTypeRegistration' @ to return detailed information about a type registration request.
--
-- * 'ltrrrsResponseStatus' - -- | The response status code.
listTypeRegistrationsResponse ::
  -- | 'ltrrrsResponseStatus'
  Int ->
  ListTypeRegistrationsResponse
listTypeRegistrationsResponse pResponseStatus_ =
  ListTypeRegistrationsResponse'
    { _ltrrrsNextToken =
        Nothing,
      _ltrrrsRegistrationTokenList = Nothing,
      _ltrrrsResponseStatus = pResponseStatus_
    }

-- | If the request doesn't return all of the remaining results, @NextToken@ is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's @NextToken@ parameter. If the request returns all results, @NextToken@ is set to @null@ .
ltrrrsNextToken :: Lens' ListTypeRegistrationsResponse (Maybe Text)
ltrrrsNextToken = lens _ltrrrsNextToken (\s a -> s {_ltrrrsNextToken = a})

-- | A list of extension registration tokens. Use @'DescribeTypeRegistration' @ to return detailed information about a type registration request.
ltrrrsRegistrationTokenList :: Lens' ListTypeRegistrationsResponse [Text]
ltrrrsRegistrationTokenList = lens _ltrrrsRegistrationTokenList (\s a -> s {_ltrrrsRegistrationTokenList = a}) . _Default . _Coerce

-- | -- | The response status code.
ltrrrsResponseStatus :: Lens' ListTypeRegistrationsResponse Int
ltrrrsResponseStatus = lens _ltrrrsResponseStatus (\s a -> s {_ltrrrsResponseStatus = a})

instance NFData ListTypeRegistrationsResponse
